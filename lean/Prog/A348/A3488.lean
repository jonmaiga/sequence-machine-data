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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.B012.C000
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
# A348802: a(n) = number of non-orientable genus 1 maps with n edges.

The programs for A348802, there is no canonical definition to state claims against.
-/

/-! ## A348802.P1227493893115281515

`∑[A105612(A328778(n))]`
-/

namespace A348802.P1227493893115281515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A328778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348802.P1227493893115281515

/-! ## A348802.P11891655618310195753

`A002265(3*A289312(n))`
-/

namespace A348802.P11891655618310195753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * A289312 n).toNat

end

end A348802.P11891655618310195753

/-!
# A348803: a(n) = number of non-orientable genus 2 maps with n edges.

The programs for A348803, there is no canonical definition to state claims against.
-/

/-! ## A348803.P12859450803349990408

`A380235(A152948(n+1))%A209626(2*n+1)`
-/

namespace A348803.P12859450803349990408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380235 (A152948 (n + 1)).toNat) (A209626 (2 * n + 1))

end

end A348803.P12859450803349990408

/-! ## A348803.P6601738609200949322

`A083920(A000307(n))`
-/

namespace A348803.P6601738609200949322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A000307 n).toNat

end

end A348803.P6601738609200949322

/-!
# A348804: a(n) = number of non-orientable genus 3 maps with n edges.

The programs for A348804, there is no canonical definition to state claims against.
-/

/-! ## A348804.P10538099083137014772

`A283979(abs(2-n)*A074017(n+1))`
-/

namespace A348804.P10538099083137014772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283979 (|2 - (n : ℤ)| * A074017 (n + 1)).toNat

end

end A348804.P10538099083137014772

/-! ## A348804.P16385727802976535652

`A056943(A145081(n)-A004273(n))`
-/

namespace A348804.P16385727802976535652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A145081 n - A004273 n).toNat

end

end A348804.P16385727802976535652

/-!
# A348805: a(n) = number of non-orientable genus 4 maps with n edges.

The programs for A348805, there is no canonical definition to state claims against.
-/

/-! ## A348805.P7919542442477476878

`A198255(∑[A221844(n+2)])`
-/

namespace A348805.P7919542442477476878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221844 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198255 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348805.P7919542442477476878

/-! ## A348805.P13392039096591921297

`∑{p}[A099740(n+1), A199220(#)]`
-/

namespace A348805.P13392039096591921297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A199220 p

end

end A348805.P13392039096591921297

/-!
# A348813: a(n) = number of chord labeled loopless diagrams by number of K_3.

The programs for A348813, there is no canonical definition to state claims against.
-/

/-! ## A348813.P10133182860553778841

`A369923(A167614(n+1))`
-/

namespace A348813.P10133182860553778841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (A167614 (n + 1)).toNat

end

end A348813.P10133182860553778841

/-! ## A348813.P18180508244960596995

`A369923(A167499(n)+n)`
-/

namespace A348813.P18180508244960596995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (A167499 n + (n : ℤ)).toNat

end

end A348813.P18180508244960596995

/-! ## A348813.P12365446939388840952

`A369923(A000217(n+2)+3)`
-/

namespace A348813.P12365446939388840952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (A000217 (n + 2) + 3).toNat

end

end A348813.P12365446939388840952

/-! ## A348813.P12009205277486795118

`A369923(A166136(n+1)-3)`
-/

namespace A348813.P12009205277486795118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (A166136 (n + 1) - 3).toNat

end

end A348813.P12009205277486795118

/-! ## A348813.P2413821806572750242

`A369923(A144786(2*n+5)+A000124(n))`
-/

namespace A348813.P2413821806572750242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (A144786 (2 * n + 5) + A000124 n).toNat

end

end A348813.P2413821806572750242

/-!
# A348815: a(n) = number of chord labeled loopless diagrams by number of K_4.

The programs for A348815, there is no canonical definition to state claims against.
-/

/-! ## A348815.P17199497882467389496

`A369923(∑[n+3]+7)`
-/

namespace A348815.P17199497882467389496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A348815.P17199497882467389496

/-!
# A348818: a(n) = number of chord labeled loopless diagrams by number of K_5.

The programs for A348818, there is no canonical definition to state claims against.
-/

/-! ## A348818.P2138725814241172300

`A369923(A000217(n+4)+5)`
-/

namespace A348818.P2138725814241172300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (A000217 (n + 4) + 5).toNat

end

end A348818.P2138725814241172300

/-!
# A348821: a(n) = number of chord labeled loopless diagrams by number of K_6.

The programs for A348821, there is no canonical definition to state claims against.
-/

/-! ## A348821.P7796788027650272549

`A369923(A167499(n+4)+1)`
-/

namespace A348821.P7796788027650272549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369923 (A167499 (n + 4) + 1).toNat

end

end A348821.P7796788027650272549

/-!
# A348824: Numbers in array A327259 that do not have a unique decomposition into numbers of A327261.

The programs for A348824, there is no canonical definition to state claims against.
-/

/-! ## A348824.P11795794783327757556

`A234344(A234313(n))+A048111(2*(n+1))`
-/

namespace A348824.P11795794783327757556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234344 (A234313 n).toNat + A048111 (2 * (n + 1))

end

end A348824.P11795794783327757556

/-!
# A348825: Numbers k such that the denominator of the harmonic mean of the divisors of k is larger than k.

The programs for A348825, the canonical program `A348825.P9957985684775902156` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348825 has offset 1).

The definition of A348825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348825.P9957985684775902156

`record[(n+2)%A099378(n+2)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A348825

/-- `record[(n+2)%A099378(n+2)]` -/
def P9957985684775902156.Spec : Prop :=
  ∀ n, P9957985684775902156.a n = A348825 (n + 1)

theorem P9957985684775902156.correct : P9957985684775902156.Spec := by
  intro n
  simp only [A348825, Nat.add_sub_cancel]

end A348825

/-! ## A348825.P11311815390132461607

`lt[n+1, A099378(n+1)]+1`
-/

namespace A348825.P11311815390132461607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348825.P11311815390132461607

namespace A348825

/-- `lt[n+1, A099378(n+1)]+1` -/
def P11311815390132461607.Spec : Prop :=
  ∀ n, (P11311815390132461607.a n : ℤ) = A348825 (n + 1)

end A348825

/-! ## A348825.P9263781824505225745

`lt[n+1, A324122(n+1)/A324121(n+1)+1]+1`
-/

namespace A348825.P9263781824505225745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324122 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A348825.P9263781824505225745

namespace A348825

/-- `lt[n+1, A324122(n+1)/A324121(n+1)+1]+1` -/
def P9263781824505225745.Spec : Prop :=
  ∀ n, (P9263781824505225745.a n : ℤ) = A348825 (n + 1)

end A348825

/-! ## A348825.P2687047687258420204

`lt[A028310(n), A099378(A028310(n))]`
-/

namespace A348825.P2687047687258420204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348825.P2687047687258420204

namespace A348825

/-- `lt[A028310(n), A099378(A028310(n))]` -/
def P2687047687258420204.Spec : Prop :=
  ∀ n, (P2687047687258420204.a n : ℤ) = A348825 (n + 1)

end A348825

/-! ## A348825.P16565395850643619319

`lt[n+1, A000203(n+1)/(A000203(n+1)-A324122(n+1))]+1`
-/

namespace A348825.P16565395850643619319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000203 (n + 1) - A324122 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A348825.P16565395850643619319

namespace A348825

/-- `lt[n+1, A000203(n+1)/(A000203(n+1)-A324122(n+1))]+1` -/
def P16565395850643619319.Spec : Prop :=
  ∀ n, (P16565395850643619319.a n : ℤ) = A348825 (n + 1)

end A348825

/-! ## A348825.P15001217297587321565

`lt[n+1, (A038040(n+1)-A094471(n+1))/A324121(n+1)]+1`
-/

namespace A348825.P15001217297587321565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) - A094471 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A348825.P15001217297587321565

namespace A348825

/-- `lt[n+1, (A038040(n+1)-A094471(n+1))/A324121(n+1)]+1` -/
def P15001217297587321565.Spec : Prop :=
  ∀ n, (P15001217297587321565.a n : ℤ) = A348825 (n + 1)

end A348825

/-!
# A348826: Numbers k such that the denominator of the harmonic mean of the divisors of k is larger than 2*k.

The programs for A348826, there is no canonical definition to state claims against.
-/

/-! ## A348826.P5338288868210141756

`∩[A083211(n+1), A330606(n+1)]`
-/

namespace A348826.P5338288868210141756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348826.P5338288868210141756

/-! ## A348826.P3566174564971713136

`∩[A330606(n+1), A390557(n+1)]`
-/

namespace A348826.P3566174564971713136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348826.P3566174564971713136

/-! ## A348826.P14591817972086059171

`filter[A330606(n+1), A378661(#)]`
-/

namespace A348826.P14591817972086059171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378661 (f1 j).toNat = 1) n)

end

end A348826.P14591817972086059171

/-! ## A348826.P8133939832751344876

`filter[A330606(n+1), A294936(#)]`
-/

namespace A348826.P8133939832751344876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A348826.P8133939832751344876

/-!
# A348829: Numerator of relativistic sum w(2n) of the velocities v = 1/p^(2n) over all primes p, in units where the speed of light c = 1.

The programs for A348829, there is no canonical definition to state claims against.
-/

/-! ## A348829.P6425373189523423280

`A010134(A033631(n+2))*A093597(n+1)`
-/

namespace A348829.P6425373189523423280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010134 (A033631 (n + 2)).toNat * A093597 (n + 1)

end

end A348829.P6425373189523423280

/-! ## A348829.P6406419266011697471

`A040531(A093622(n+3))*A093597(n+1)`
-/

namespace A348829.P6406419266011697471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040531 (A093622 (n + 3)).toNat * A093597 (n + 1)

end

end A348829.P6406419266011697471

/-!
# A348834: Zeroless numbers that have the largest possible remainder when divided by their digit product.

The programs for A348834, there is no canonical definition to state claims against.
-/

/-! ## A348834.P12690164435806192484

`A146664(C(n, 8)+1)+n`
-/

namespace A348834.P12690164435806192484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146664 (Nat.choose n 8 + 1) + (n : ℤ)

end

end A348834.P12690164435806192484

/-! ## A348834.P8422313377287121909

`A147140(a(n-1))+n` with `a(0)=1`
-/

namespace A348834.P8422313377287121909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147140 (a (n - 1)).toNat + (n : ℤ)

end

end A348834.P8422313377287121909

/-! ## A348834.P6657589241448081597

`record[A184955(n)+dr(1-n)]`
-/

namespace A348834.P6657589241448081597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348834.P6657589241448081597

/-! ## A348834.P10133692094350776346

`record[gcd(1-n^8, A257275(n+1))]`
-/

namespace A348834.P10133692094350776346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n ^ 8 : ℤ)) (A257275 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348834.P10133692094350776346

/-! ## A348834.P12597756021723724660

`A013938(A061805(n+1))`
-/

namespace A348834.P12597756021723724660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013938 (A061805 (n + 1)).toNat

end

end A348834.P12597756021723724660

/-!
# A348835: Triangle, read by rows, T(n, k) is the smallest term of A006005 strictly larger than abs(A006005(n) - A006005(k)).

The programs for A348835, there is no canonical definition to state claims against.
-/

/-! ## A348835.P4958657164861267942

`A284397(A324999(n+1))%A241210(2*n+5)`
-/

namespace A348835.P4958657164861267942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284397 (A324999 (n + 1)).toNat) (A241210 (2 * n + 5))

end

end A348835.P4958657164861267942

/-! ## A348835.P5752450775927273528

`A103359(A055249(n))`
-/

namespace A348835.P5752450775927273528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103359 (A055249 n).toNat

end

end A348835.P5752450775927273528

/-! ## A348835.P1785695199784004828

`or(1, A008481(A038303(n)))`
-/

namespace A348835.P1785695199784004828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008481 (A038303 n).toNat)

end

end A348835.P1785695199784004828

/-! ## A348835.P9390132797642010443

`or(1, A055778(A126454(n)))`
-/

namespace A348835.P9390132797642010443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055778 (A126454 n).toNat)

end

end A348835.P9390132797642010443

/-!
# A348836: a(n) is the number of primes <= prime(n)^2/2.

The programs for A348836, there is no canonical definition to state claims against.
-/

/-! ## A348836.P15178148842823392530

`A000720(floor(p?[n%3+n]²/2))`
-/

namespace A348836.P15178148842823392530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 2⌋.toNat

end

end A348836.P15178148842823392530

/-! ## A348836.P13157323368144919308

`A000720(floor(p?[round(8*n/7)]²/2))`
-/

namespace A348836.P13157323368144919308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℚ) / 2⌋.toNat

end

end A348836.P13157323368144919308

/-! ## A348836.P4847449376248519264

`A000720(ceil((p?[round(8*n/7)]²-1)/2))`
-/

namespace A348836.P4847449376248519264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1 : ℚ) / 2⌉.toNat

end

end A348836.P4847449376248519264

/-! ## A348836.P9413847921648539050

`A000720(A084921(n+1)-1)`
-/

namespace A348836.P9413847921648539050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084921 (n + 1) - 1).toNat

end

end A348836.P9413847921648539050

/-! ## A348836.P11543962766293567523

`A000720(A110494(n+1)-1)`
-/

namespace A348836.P11543962766293567523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A110494 (n + 1) - 1).toNat

end

end A348836.P11543962766293567523

/-! ## A348836.P14089320579191434034

`A000720(xor(1, A110494(n+1)))`
-/

namespace A348836.P14089320579191434034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A110494 (n + 1))).toNat

end

end A348836.P14089320579191434034

/-! ## A348836.P9192743775201899501

`A000720(A007590(p?[xor(1, n)+1]))`
-/

namespace A348836.P9192743775201899501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007590 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A348836.P9192743775201899501

/-! ## A348836.P1781561153922555959

`A000720(floor(A000040(n+1)²/2))`
-/

namespace A348836.P1781561153922555959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A000040 (n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A348836.P1781561153922555959

/-! ## A348836.P17829059618257078875

`A000720(floor(floor(A000040(n+1)^(4/2))/2))`
-/

namespace A348836.P17829059618257078875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(⌊(A000040 (n + 1) : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋ : ℚ) / 2⌋.toNat

end

end A348836.P17829059618257078875

/-! ## A348836.P6552333613971792655

`A000720(record[(n+2)²/A000005(n+1)-(n+1)]-1)`
-/

namespace A348836.P6552333613971792655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A000005 (n + 1) : ℚ) - (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)).toNat

end

end A348836.P6552333613971792655

/-!
# A348838: Number of 3-sided prudent polygons of area n.

The programs for A348838, there is no canonical definition to state claims against.
-/

/-! ## A348838.P256228585352231411

`A038567(Δ[A104745(n)]+1)+1`
-/

namespace A348838.P256228585352231411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (f1 (n + 1) - f1 n + 1).toNat + 1

end

end A348838.P256228585352231411

/-! ## A348838.P9759030095524854175

`A080606(A047026(n+2)-A162219(n+1))`
-/

namespace A348838.P9759030095524854175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (A047026 (n + 2) - A162219 (n + 1)).toNat

end

end A348838.P9759030095524854175

/-!
# A348839: Composite numbers all of whose prime factors are Mersenne primes.

The programs for A348839, there is no canonical definition to state claims against.
-/

/-! ## A348839.P16803806448034742238

`filter[A056652(n+1), A005171(#)]`
-/

namespace A348839.P16803806448034742238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A348839.P16803806448034742238

/-! ## A348839.P5962020436699493309

`filter[A056652(n+1), A066247(#)]`
-/

namespace A348839.P5962020436699493309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A348839.P5962020436699493309

/-! ## A348839.P11979214479968364083

`filter[A056652(n+1), A202238(#)]`
-/

namespace A348839.P11979214479968364083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A348839.P11979214479968364083

/-! ## A348839.P10837053077230858205

`filter[A056652(n+1), A292438(#)]`
-/

namespace A348839.P10837053077230858205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A348839.P10837053077230858205

/-! ## A348839.P2393684339386755916

`filter[A056652(n+1), A323162(#)]`
-/

namespace A348839.P2393684339386755916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A348839.P2393684339386755916

/-! ## A348839.P2584390506664332902

`filter[A345330(n+1), A364252(#)]`
-/

namespace A348839.P2584390506664332902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A348839.P2584390506664332902

/-! ## A348839.P10565971058105252248

`∩[A056652(n+1), A345330(n+1)]`
-/

namespace A348839.P10565971058105252248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348839.P10565971058105252248

/-! ## A348839.P3674063783589862505

`∩[A219174(n+1), A345330(n+1)]`
-/

namespace A348839.P3674063783589862505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348839.P3674063783589862505

/-! ## A348839.P12363380216249418556

`filter[A053795(n+1), A364252(#)]`
-/

namespace A348839.P12363380216249418556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A348839.P12363380216249418556

/-! ## A348839.P1134300729306327376

`filter[A100490(n+1), A364252(#)]`
-/

namespace A348839.P1134300729306327376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A348839.P1134300729306327376

/-!
# A348840: Triangle T(n,h) read by rows: The number of Motzkin Paths of n>=2 steps that start with an Up step and touch the horizontal axis h>=1 times afterwards.

The programs for A348840, there is no canonical definition to state claims against.
-/

/-! ## A348840.P5382514880626565693

`A379907(comp[∑[n]])`
-/

namespace A348840.P5382514880626565693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379907 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A348840.P5382514880626565693

/-! ## A348840.P13165556402232387321

`A337334(A329854(n))%A236065(A000096(n+1))`
-/

namespace A348840.P13165556402232387321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337334 (A329854 n).toNat) (A236065 (A000096 (n + 1)).toNat)

end

end A348840.P13165556402232387321

/-! ## A348840.P6317502241908734863

`A001221(A000079(n+1))*A337334(A329854(n))`
-/

namespace A348840.P6317502241908734863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 (n + 1)).toNat * A337334 (A329854 n).toNat

end

end A348840.P6317502241908734863

/-! ## A348840.P5614447028781563437

`A088519(A039797(n))`
-/

namespace A348840.P5614447028781563437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A039797 n).toNat

end

end A348840.P5614447028781563437

/-! ## A348840.P15034901096017708378

`A072644(A117260(n))`
-/

namespace A348840.P15034901096017708378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A117260 n).toNat

end

end A348840.P15034901096017708378

/-!
# A348841: Number of primes with even exponents >= 2 in the prime power factorization of n!, for n >= 1.

The programs for A348841, the canonical program `A348841.P490662357377440860` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348841 has offset 1).

The definition of A348841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055460, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348841.P490662357377440860

`A000720(n+1)-A055460(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348841

/-- `A000720(n+1)-A055460(n+1)` -/
def P490662357377440860.Spec : Prop :=
  ∀ n, P490662357377440860.a n = A348841 (n + 1)

theorem P490662357377440860.correct : P490662357377440860.Spec := by
  intro n
  simp only [A348841, Nat.add_sub_cancel]

end A348841

/-! ## A348841.P9735196553782930078

`∑[A010051(n+1)]-A055460(n+1)`
-/

namespace A348841.P9735196553782930078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055460 (n + 1)

end

end A348841.P9735196553782930078

namespace A348841

/-- `∑[A010051(n+1)]-A055460(n+1)` -/
def P9735196553782930078.Spec : Prop :=
  ∀ n, P9735196553782930078.a n = A348841 (n + 1)

end A348841

/-! ## A348841.P6859102985891186595

`A036234(n+1)-(A055460(n+1)+1)`
-/

namespace A348841.P6859102985891186595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - (A055460 (n + 1) + 1)

end

end A348841.P6859102985891186595

namespace A348841

/-- `A036234(n+1)-(A055460(n+1)+1)` -/
def P6859102985891186595.Spec : Prop :=
  ∀ n, P6859102985891186595.a n = A348841 (n + 1)

theorem P6859102985891186595.correct : P6859102985891186595.Spec := by
  intro n
  simp only [A348841, Nat.add_sub_cancel, A348841.P6859102985891186595.a, A348841.P490662357377440860.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A055460, A055460.P2633110437439138135.a, A001221, A001221.P10258181745752134128.a, A055204, A055204.P17370574123234970740.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A055071, A055071.P16321007213921378376.a, A059841, A059841.P7264174615531153985.a, A008833, A008833.P18388074464065390543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348841

/-! ## A348841.P18431886090931257897

`∑[char[A151800(n+1)-1]]-A055460(n+1)`
-/

namespace A348841.P18431886090931257897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A055460 (n + 1)

end

end A348841.P18431886090931257897

namespace A348841

/-- `∑[char[A151800(n+1)-1]]-A055460(n+1)` -/
def P18431886090931257897.Spec : Prop :=
  ∀ n, P18431886090931257897.a n = A348841 (n + 1)

end A348841

/-! ## A348841.P2160503716502079546

`A000720(n+1)-log2(A055077(n+1))`
-/

namespace A348841.P2160503716502079546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) : ℝ) - Real.logb 2 (A055077 (n + 1) : ℝ)

end

end A348841.P2160503716502079546

namespace A348841

/-- `A000720(n+1)-log2(A055077(n+1))` -/
def P2160503716502079546.Spec : Prop :=
  ∀ n, P2160503716502079546.a n = (A348841 (n + 1) : ℝ)

end A348841

/-! ## A348841.P8479274671579332520

`∑[A010051(n+1)]-log2(A055077(n+1))`
-/

namespace A348841.P8479274671579332520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - Real.logb 2 (A055077 (n + 1) : ℝ)

end

end A348841.P8479274671579332520

namespace A348841

/-- `∑[A010051(n+1)]-log2(A055077(n+1))` -/
def P8479274671579332520.Spec : Prop :=
  ∀ n, P8479274671579332520.a n = (A348841 (n + 1) : ℝ)

end A348841

/-! ## A348841.P10898458743658013094

`A055679(A103517(n))-log2(A055077(n+1))`
-/

namespace A348841.P10898458743658013094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055679 (A103517 n).toNat : ℝ) - Real.logb 2 (A055077 (n + 1) : ℝ)

end

end A348841.P10898458743658013094

namespace A348841

/-- `A055679(A103517(n))-log2(A055077(n+1))` -/
def P10898458743658013094.Spec : Prop :=
  ∀ n, P10898458743658013094.a n = (A348841 (n + 1) : ℝ)

end A348841

/-! ## A348841.P876818002958410285

`log2(A375187(n+1))`
-/

namespace A348841.P876818002958410285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A375187 (n + 1) : ℝ)

end

end A348841.P876818002958410285

namespace A348841

/-- `log2(A375187(n+1))` -/
def P876818002958410285.Spec : Prop :=
  ∀ n, P876818002958410285.a n = (A348841 (n + 1) : ℝ)

end A348841

/-! ## A348841.P11617843931826821190

`A036234(n+1)-A000005(A055077(n+1))`
-/

namespace A348841.P11617843931826821190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A000005 (A055077 (n + 1)).toNat

end

end A348841.P11617843931826821190

namespace A348841

/-- `A036234(n+1)-A000005(A055077(n+1))` -/
def P11617843931826821190.Spec : Prop :=
  ∀ n, P11617843931826821190.a n = A348841 (n + 1)

end A348841

/-!
# A348842: Number of Juniper Green games with n cards.

The programs for A348842, there is no canonical definition to state claims against.
-/

/-! ## A348842.P6392777913204015020

`A343862(A192387(n+1)+A046682(n))`
-/

namespace A348842.P6392777913204015020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343862 (A192387 (n + 1) + A046682 n).toNat

end

end A348842.P6392777913204015020

/-!
# A348843: Irregular triangle read by rows: row n gives for the Julian Green game with n cards labeled 1, 2, ..., n, for n >= 2, the number of games if the first removed card has label K = 2*k, for k = 1, 2, ..., floor(n/2).

The programs for A348843, there is no canonical definition to state claims against.
-/

/-! ## A348843.P4421300543070774928

`A348844(2*(n+1))+A348844(2*n+3)`
-/

namespace A348843.P4421300543070774928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348844 (2 * (n + 1)) + A348844 (2 * n + 3)

end

end A348843.P4421300543070774928

/-!
# A348844: Irregular triangle T(n,k) read by rows: row n gives the pairs of odd and even number of moves for the Juniper Green game JG(n) with n cards, for n >= 2, if the first card taken away is labeled K, for K = 2, 4, ..., 2*floor(n/2).

The programs for A348844, there is no canonical definition to state claims against.
-/

/-! ## A348844.P17932882038137153105

`A001222(A133684(n)+∏[A047969(n)])`
-/

namespace A348844.P17932882038137153105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133684 n + ∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348844.P17932882038137153105

/-! ## A348844.P3751080993408677149

`A081603(A077854(n)-A197475(n+1))`
-/

namespace A348844.P3751080993408677149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A077854 n - A197475 (n + 1)).toNat

end

end A348844.P3751080993408677149

/-! ## A348844.P1204741289983847652

`round(A267181(∑[n+2]-2)/2)`
-/

namespace A348844.P1204741289983847652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267181 (∑ j ∈ Finset.range (n + 1), f1 j - 2) : ℚ) / 2)

end

end A348844.P1204741289983847652

/-! ## A348844.P17804390156045964043

`A037821(n*(3*xor(3, n))²+1)`
-/

namespace A348844.P17804390156045964043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (n * (3 * Nat.xor 3 n) ^ 2 + 1)

end

end A348844.P17804390156045964043

/-! ## A348844.P9374352253444627279

`A304438(∏[n%2+2]-1)+floor(n/4)`
-/

namespace A348844.P9374352253444627279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (∏ j ∈ Finset.range (n + 1), f1 j - 1) + ⌊(n : ℚ) / 4⌋

end

end A348844.P9374352253444627279

/-!
# A348845: Part two of the trisection of A017101: a(n) = 11 + 24*n.

The programs for A348845, the canonical program `A348845.P252903479349709988` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348845 has offset 0).

The definition of A348845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11+24*n` (program `A348845.P252903479349709988`, by `A348845.P252903479349709988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348845.P252903479349709988

`11+24*n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A348845

/-- `11+24*n` -/
def P252903479349709988.Spec : Prop :=
  ∀ n, (P252903479349709988.a n : ℤ) = A348845 n

theorem P252903479349709988.correct : P252903479349709988.Spec := by
  intro n
  simp only [A348845]

end A348845

/-!
# A348846: a(1) = 1. For n >=2 the number k in n-th position becomes a(n) only if all terms a(1)..a(n-1) have already been defined, and if the smallest number m, greater than k, not already defined and sharing greatest prime factor (gpf) p with k is reduced to m/p.

The programs for A348846, there is no canonical definition to state claims against.
-/

/-! ## A348846.P13135127977178796451

`lcm(A141310(n), A203025(A290480(n+1)))`
-/

namespace A348846.P13135127977178796451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141310 n) (A203025 (A290480 (n + 1)).toNat)

end

end A348846.P13135127977178796451

/-! ## A348846.P3095598332267668246

`gcd(n+1, A001900(A306546(n+1)))`
-/

namespace A348846.P3095598332267668246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001900 (A306546 (n + 1)).toNat)

end

end A348846.P3095598332267668246

/-! ## A348846.P6423017625201378280

`gcd(n+1, A124108(A097331(n)))`
-/

namespace A348846.P6423017625201378280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A124108 (A097331 n).toNat)

end

end A348846.P6423017625201378280

/-! ## A348846.P10313005702335207900

`lcm(gcd(n, n%2)+1, A353391(A074761(n+1)))`
-/

namespace A348846.P10313005702335207900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd n (n % 2) + 1 : ℤ) (A353391 (A074761 (n + 1)).toNat)

end

end A348846.P10313005702335207900

/-! ## A348846.P9177349264396065804

`gcd(A000027(n+1), A229762(A221364(n)))`
-/

namespace A348846.P9177349264396065804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A229762 (A221364 n).toNat)

end

end A348846.P9177349264396065804

/-!
# A348847: Numbers k where the ratios A099378(k)/k reach a record value.

The programs for A348847, there is no canonical definition to state claims against.
-/

/-! ## A348847.P4505903002736978164

`A346644(record[A057021(n+1)])`
-/

namespace A348847.P4505903002736978164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346644 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348847.P4505903002736978164

/-! ## A348847.P10412176275357979066

`record[A017666(A323505(n))]`
-/

namespace A348847.P10412176275357979066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A323505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348847.P10412176275357979066

/-! ## A348847.P13027313216311592840

`A316856(∑[A004111(n)]+1)`
-/

namespace A348847.P13027313216311592840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A348847.P13027313216311592840

/-! ## A348847.P18057725332777269897

`∩[A084094(n+1), A188915(n)]`
-/

namespace A348847.P18057725332777269897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348847.P18057725332777269897

/-!
# A348848: Number of oriented polyominoes with 4n cells that have fourfold rotational symmetry centered at a vertex.

The programs for A348848, there is no canonical definition to state claims against.
-/

/-! ## A348848.P6294679171730953609

`2*A234007(n+1)+A346800(n+1)`
-/

namespace A348848.P6294679171730953609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234007 (n + 1) + A346800 (n + 1)

end

end A348848.P6294679171730953609

/-! ## A348848.P6043618799645462591

`A234007(A028310(n+1))+A346800(n+1)+A234007(n+1)`
-/

namespace A348848.P6043618799645462591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234007 (A028310 (n + 1)).toNat + (A346800 (n + 1) + A234007 (n + 1))

end

end A348848.P6043618799645462591

/-! ## A348848.P2580551434864872070

`A234007(n+1)+A182645(n+1)+A234007(n+1)-A351191(n+1)`
-/

namespace A348848.P2580551434864872070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234007 (n + 1) + (A182645 (n + 1) + (A234007 (n + 1) - A351191 (n + 1)))

end

end A348848.P2580551434864872070

/-! ## A348848.P7830859281219903783

`A234009(n+1)+A234007(n+1)`
-/

namespace A348848.P7830859281219903783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234009 (n + 1) + A234007 (n + 1)

end

end A348848.P7830859281219903783

/-! ## A348848.P14761204946600930712

`2*A234009(n+1)-A346800(n+1)`
-/

namespace A348848.P14761204946600930712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234009 (n + 1) - A346800 (n + 1)

end

end A348848.P14761204946600930712

/-!
# A348849: Number of fixed polyominoes with n cells that have fourfold rotational symmetry centered at the center of a cell.

The programs for A348849, there is no canonical definition to state claims against.
-/

/-! ## A348849.P17410304882522210884

`2*A351142(n+1)+A351127(n+1)`
-/

namespace A348849.P17410304882522210884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351142 (n + 1) + A351127 (n + 1)

end

end A348849.P17410304882522210884

/-! ## A348849.P13401363964291514541

`A351127(n+1)+A005843(A351142(n+1))`
-/

namespace A348849.P13401363964291514541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351127 (n + 1) + A005843 (A351142 (n + 1)).toNat

end

end A348849.P13401363964291514541

/-! ## A348849.P6458220546366559501

`Δ[A055570(A000045(A004525(n)))]`
-/

namespace A348849.P6458220546366559501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A000045 (A004525 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348849.P6458220546366559501

/-! ## A348849.P11149476775937244426

`C(A333755(n), A049710(A276087(n)))`
-/

namespace A348849.P11149476775937244426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333755 n).toNat (A049710 (A276087 n).toNat).toNat

end

end A348849.P11149476775937244426

/-! ## A348849.P7623454974446030654

`C(A333755(n), A000034(A354909(n)))`
-/

namespace A348849.P7623454974446030654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333755 n).toNat (A000034 (A354909 n).toNat).toNat

end

end A348849.P7623454974446030654

/-!
# A348851: a(n) is the number of labeled rooted ordered binary trees T where the nodes are labeled with distinct positive integers, the root has label n, each parent label equals the sum of its children labels, and T cannot be extended.

The programs for A348851, there is no canonical definition to state claims against.
-/

/-! ## A348851.P11506300506534966998

`A372971(A272064(n))`
-/

namespace A348851.P11506300506534966998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372971 (A272064 n).toNat

end

end A348851.P11506300506534966998

/-! ## A348851.P5767042648779122197

`A118363(ceil(sqrt(A368422(n))))`
-/

namespace A348851.P5767042648779122197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 ⌈Real.sqrt (A368422 n : ℝ)⌉.toNat

end

end A348851.P5767042648779122197

/-! ## A348851.P1014550468197119619

`A261904(∏[A067595(∑{d}[n+1, #])])`
-/

namespace A348851.P1014550468197119619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348851.P1014550468197119619

/-! ## A348851.P5978326731545801589

`A000196(∏[A050252(2*∑{d}[n+1, #])])`
-/

namespace A348851.P5978326731545801589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (2 * (∑ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348851.P5978326731545801589

/-! ## A348851.P15501400641978921790

`A000010(A210466(A000108(n)))`
-/

namespace A348851.P15501400641978921790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A210466 (A000108 n).toNat).toNat

end

end A348851.P15501400641978921790

/-!
# A348852: Numbers k such that the number of odd nonprimes <= k is equal to the number of primes <= k.

The programs for A348852, there is no canonical definition to state claims against.
-/

/-! ## A348852.P10365750512894831671

`eq[floor(n/2), A118777(n)]`
-/

namespace A348852.P10365750512894831671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348852.P10365750512894831671

/-! ## A348852.P15915536882562446255

`eq[A118777(n), A123621(n+1)]`
-/

namespace A348852.P15915536882562446255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348852.P15915536882562446255

/-! ## A348852.P8550991689252354896

`eq[A004526(n), A118777(n)]%(10*n+9)²`
-/

namespace A348852.P8550991689252354896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % (10 * n + 9) ^ 2

end

end A348852.P8550991689252354896

/-! ## A348852.P8334804917686541053

`A000027(eq[A004526(n), A118777(n)])`
-/

namespace A348852.P8334804917686541053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348852.P8334804917686541053

/-! ## A348852.P16386153830910123496

`A028310(eq[A004526(n), A118777(n)])`
-/

namespace A348852.P16386153830910123496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348852.P16386153830910123496

/-!
# A348853: Delete any least significant 0's from the Zeckendorf representation of n, leaving its "odd" part.

The programs for A348853, the canonical program `A348853.P9434139730407694544` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348853 has offset 1).

The definition of A348853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019586, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348853.P9434139730407694544

`A003622(A019586(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348853

/-- `A003622(A019586(n+1)+1)` -/
def P9434139730407694544.Spec : Prop :=
  ∀ n, P9434139730407694544.a n = A348853 (n + 1)

theorem P9434139730407694544.correct : P9434139730407694544.Spec := by
  intro n
  simp only [A348853, Nat.add_sub_cancel]

end A348853

/-! ## A348853.P17537575062146804843

`A003622(A003603(n+1))`
-/

namespace A348853.P17537575062146804843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003603 (n + 1)).toNat

end

end A348853.P17537575062146804843

namespace A348853

/-- `A003622(A003603(n+1))` -/
def P17537575062146804843.Spec : Prop :=
  ∀ n, P17537575062146804843.a n = A348853 (n + 1)

theorem P17537575062146804843.correct : P17537575062146804843.Spec := by
  intro n
  simp only [A348853, Nat.add_sub_cancel, A348853.P17537575062146804843.a, A348853.P9434139730407694544.a, A003603, A003603.P16957953193221149440.a, A003622, A003622.P18369330713868503528.a, A019586, A019586.P9515353254246126569.a, A000201, A000201.P2935798382643029248.a, A035612, A035612.P7106491847305260424.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348853

/-! ## A348853.P16259145747195961400

`A345201(A349238(n+1))`
-/

namespace A348853.P16259145747195961400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345201 (A349238 (n + 1)).toNat

end

end A348853.P16259145747195961400

namespace A348853

/-- `A345201(A349238(n+1))` -/
def P16259145747195961400.Spec : Prop :=
  ∀ n, P16259145747195961400.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P3437800670641573930

`A001950(A019586(n+1)+1)-1`
-/

namespace A348853.P3437800670641573930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A019586 (n + 1) + 1).toNat - 1

end

end A348853.P3437800670641573930

namespace A348853

/-- `A001950(A019586(n+1)+1)-1` -/
def P3437800670641573930.Spec : Prop :=
  ∀ n, P3437800670641573930.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P9628221118851646743

`A026352(A019586(n+1)+1)-2`
-/

namespace A348853.P9628221118851646743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (A019586 (n + 1) + 1).toNat - 2

end

end A348853.P9628221118851646743

namespace A348853

/-- `A026352(A019586(n+1)+1)-2` -/
def P9628221118851646743.Spec : Prop :=
  ∀ n, P9628221118851646743.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P12600038666754301417

`A019586(n+1)+A000201(A019586(n+1)+1)`
-/

namespace A348853.P12600038666754301417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (n + 1) + A000201 (A019586 (n + 1) + 1).toNat

end

end A348853.P12600038666754301417

namespace A348853

/-- `A019586(n+1)+A000201(A019586(n+1)+1)` -/
def P12600038666754301417.Spec : Prop :=
  ∀ n, P12600038666754301417.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P13663796958762762870

`A000201(A000201(A003603(A022342(n+2))))`
-/

namespace A348853.P13663796958762762870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (A003603 (A022342 (n + 2)).toNat).toNat).toNat

end

end A348853.P13663796958762762870

namespace A348853

/-- `A000201(A000201(A003603(A022342(n+2))))` -/
def P13663796958762762870.Spec : Prop :=
  ∀ n, P13663796958762762870.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P6821060204546833701

`A000201(A000201(A003603(A120873(A000201(n+1)))))`
-/

namespace A348853.P6821060204546833701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (A003603 (A120873 (A000201 (n + 1)).toNat).toNat).toNat).toNat

end

end A348853.P6821060204546833701

namespace A348853

/-- `A000201(A000201(A003603(A120873(A000201(n+1)))))` -/
def P6821060204546833701.Spec : Prop :=
  ∀ n, P6821060204546833701.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P5037136148961133587

`A048680(2*A304100(n+1)-1)`
-/

namespace A348853.P5037136148961133587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (2 * A304100 (n + 1) - 1).toNat

end

end A348853.P5037136148961133587

namespace A348853

/-- `A048680(2*A304100(n+1)-1)` -/
def P5037136148961133587.Spec : Prop :=
  ∀ n, P5037136148961133587.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P11294668316768905585

`A074049(2*A304100(n+1))-1`
-/

namespace A348853.P11294668316768905585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (2 * A304100 (n + 1)).toNat - 1

end

end A348853.P11294668316768905585

namespace A348853

/-- `A074049(2*A304100(n+1))-1` -/
def P11294668316768905585.Spec : Prop :=
  ∀ n, P11294668316768905585.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P985453961218922525

`A048680(A000265(A048679(n+1)))`
-/

namespace A348853.P985453961218922525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A000265 (A048679 (n + 1)).toNat).toNat

end

end A348853.P985453961218922525

namespace A348853

/-- `A048680(A000265(A048679(n+1)))` -/
def P985453961218922525.Spec : Prop :=
  ∀ n, P985453961218922525.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P5132613296436229289

`A048680(A304100(n+1)+A304100(n+1)-1)`
-/

namespace A348853.P5132613296436229289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A304100 (n + 1) + (A304100 (n + 1) - 1)).toNat

end

end A348853.P5132613296436229289

namespace A348853

/-- `A048680(A304100(n+1)+A304100(n+1)-1)` -/
def P5132613296436229289.Spec : Prop :=
  ∀ n, P5132613296436229289.a n = A348853 (n + 1)

end A348853

/-! ## A348853.P3907742390604761744

`A022290(A000265(A003714(n+1)))`
-/

namespace A348853.P3907742390604761744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A000265 (A003714 (n + 1)).toNat).toNat

end

end A348853.P3907742390604761744

namespace A348853

/-- `A022290(A000265(A003714(n+1)))` -/
def P3907742390604761744.Spec : Prop :=
  ∀ n, P3907742390604761744.a n = A348853 (n + 1)

end A348853

/-!
# A348854: a(n) is the total length of all line segments in an octant of the symmetric representation of sigma(n).

The programs for A348854, there is no canonical definition to state claims against.
-/

/-! ## A348854.P4645711513427051496

`A348705(n+1)/2`
-/

namespace A348854.P4645711513427051496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348705 (n + 1) : ℚ) / 2

end

end A348854.P4645711513427051496

/-! ## A348854.P11874459795692998350

`A244361(n+1)+1+n`
-/

namespace A348854.P11874459795692998350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (n + 1) + 1 + (n : ℤ)

end

end A348854.P11874459795692998350

/-! ## A348854.P4091026015453324058

`A244363(n+1)/2+1+n`
-/

namespace A348854.P4091026015453324058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244363 (n + 1) : ℚ) / 2 + 1 + (n : ℚ)

end

end A348854.P4091026015453324058

/-! ## A348854.P6136134906868531921

`A274919(n+1)/4+n+1`
-/

namespace A348854.P6136134906868531921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274919 (n + 1) : ℚ) / 4 + (n + 1 : ℚ)

end

end A348854.P6136134906868531921

/-! ## A348854.P10225764616857590426

`2*(n+1)-A279228(n+1)/2`
-/

namespace A348854.P10225764616857590426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) - (A279228 (n + 1) : ℚ) / 2

end

end A348854.P10225764616857590426

/-!
# A348856: a(n) = Sum_{d|n} (Stirling2(n,d) mod 2).

The programs for A348856, there is no canonical definition to state claims against.
-/

/-! ## A348856.P3017964640981106856

`A323436(A019426(n))+A001222(n+1)`
-/

namespace A348856.P3017964640981106856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A019426 n).toNat + A001222 (n + 1)

end

end A348856.P3017964640981106856

/-! ## A348856.P7793015580529832523

`A289849(n+1)-A261029(A046665(n+1))`
-/

namespace A348856.P7793015580529832523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A261029 (A046665 (n + 1)).toNat

end

end A348856.P7793015580529832523

/-! ## A348856.P5615105667791334302

`A286335(A095269(3*n+4))+A001222(n+1)`
-/

namespace A348856.P5615105667791334302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A095269 (3 * n + 4)).toNat + A001222 (n + 1)

end

end A348856.P5615105667791334302

/-! ## A348856.P8241222560663465240

`A010060(A095269(3*n+4))+A001222(3*(n+1))`
-/

namespace A348856.P8241222560663465240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A095269 (3 * n + 4)).toNat + A001222 (3 * (n + 1))

end

end A348856.P8241222560663465240

/-! ## A348856.P11184971824716390376

`A095407(A335458(3*n+4))+A001222(n+1)`
-/

namespace A348856.P11184971824716390376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A335458 (3 * n + 4)).toNat + A001222 (n + 1)

end

end A348856.P11184971824716390376

/-!
# A348857: G.f. A(x) satisfies: A(x) = 1 / ((1 - x) * (1 - x * A(2*x))).

The programs for A348857, there is no canonical definition to state claims against.
-/

/-! ## A348857.P17923450252584558742

`A039729(n²*a(n-1))+1` with `a(0)=1`
-/

namespace A348857.P17923450252584558742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039729 ((n ^ 2 : ℤ) * a (n - 1)).toNat + 1

end

end A348857.P17923450252584558742

/-!
# A348858: G.f. A(x) satisfies: A(x) = 1 / ((1 - x) * (1 - x * A(3*x))).

The programs for A348858, there is no canonical definition to state claims against.
-/

/-! ## A348858.P11748191095207748127

`∑[A056699(A066319(n+1))]`
-/

namespace A348858.P11748191095207748127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A066319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348858.P11748191095207748127

/-!
# A348860: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(2*x))).

The programs for A348860, there is no canonical definition to state claims against.
-/

/-! ## A348860.P1484821962216159356

`A323431(A099036(n))-n`
-/

namespace A348860.P1484821962216159356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323431 (A099036 n).toNat - (n : ℤ)

end

end A348860.P1484821962216159356

/-! ## A348860.P2123857574879945531

`A219660(A057164(n)+A006056(n))`
-/

namespace A348860.P2123857574879945531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219660 (A057164 n + A006056 n).toNat

end

end A348860.P2123857574879945531

/-!
# A348861: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(3*x))).

The programs for A348861, there is no canonical definition to state claims against.
-/

/-! ## A348861.P9247457210295610504

`A143570(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=9`
-/

namespace A348861.P9247457210295610504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 9] fun n a =>
  A143570 (a (n - 1)).toNat

end

end A348861.P9247457210295610504

/-!
# A348862: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(4*x))).

The programs for A348862, there is no canonical definition to state claims against.
-/

/-! ## A348862.P9225460724829659366

`A213541(C(∑[n]+or(1, n), n))`
-/

namespace A348862.P9225460724829659366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213541 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n) n)

end

end A348862.P9225460724829659366

/-!
# A348864: a(n) is the number of multiplications required to compute the permanent of general n X n matrices using trellis method with normalization.

The programs for A348864, the canonical program `A348864.P4966098583065803803` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348864 has offset 1).

The definition of A348864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348864.P4966098583065803803

`A001787(n+1)-A100071(n+1)+A002378(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A348864

/-- `A001787(n+1)-A100071(n+1)+A002378(n)` -/
def P4966098583065803803.Spec : Prop :=
  ∀ n, P4966098583065803803.a n = A348864 (n + 1)

theorem P4966098583065803803.correct : P4966098583065803803.Spec := by
  intro n
  simp only [A348864, Nat.add_sub_cancel]

end A348864

/-! ## A348864.P11728199074003473395

`(n+1)*2^n-ceil((n+1)/2)*C(n+1, floor((n+1)/2))+(n+1)²-(n+1)`
-/

namespace A348864.P11728199074003473395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ n : ℤ) - ⌈(n + 1 : ℚ) / 2⌉ * (Nat.choose (n + 1) ⌊(n + 1 : ℚ) / 2⌋.toNat : ℤ) + ((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A348864.P11728199074003473395

namespace A348864

/-- `(n+1)*2^n-ceil((n+1)/2)*C(n+1, floor((n+1)/2))+(n+1)²-(n+1)` -/
def P11728199074003473395.Spec : Prop :=
  ∀ n, P11728199074003473395.a n = A348864 (n + 1)

end A348864

/-! ## A348864.P738975861915086032

`2*(A130783(n)+∑[n])`
-/

namespace A348864.P738975861915086032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130783 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A348864.P738975861915086032

namespace A348864

/-- `2*(A130783(n)+∑[n])` -/
def P738975861915086032.Spec : Prop :=
  ∀ n, P738975861915086032.a n = A348864 (n + 1)

end A348864

/-! ## A348864.P9534319185468716701

`(n+1)*(A045621(n)+n)`
-/

namespace A348864.P9534319185468716701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A045621 n + (n : ℤ))

end

end A348864.P9534319185468716701

namespace A348864

/-- `(n+1)*(A045621(n)+n)` -/
def P9534319185468716701.Spec : Prop :=
  ∀ n, P9534319185468716701.a n = A348864 (n + 1)

end A348864

/-! ## A348864.P14334165917545985733

`(∑[A191391(n)]+n)*(n+1)`
-/

namespace A348864.P14334165917545985733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) * (n + 1 : ℤ)

end

end A348864.P14334165917545985733

namespace A348864

/-- `(∑[A191391(n)]+n)*(n+1)` -/
def P14334165917545985733.Spec : Prop :=
  ∀ n, P14334165917545985733.a n = A348864 (n + 1)

end A348864

/-! ## A348864.P15651015925191690072

`(n+1)*(A307768(n+1)/2+n)`
-/

namespace A348864.P15651015925191690072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A307768 (n + 1) : ℚ) / 2 + (n : ℚ))

end

end A348864.P15651015925191690072

namespace A348864

/-- `(n+1)*(A307768(n+1)/2+n)` -/
def P15651015925191690072.Spec : Prop :=
  ∀ n, P15651015925191690072.a n = (A348864 (n + 1) : ℚ)

end A348864

/-! ## A348864.P7301311319842563893

`A002378(n)+2*A130783(n)`
-/

namespace A348864.P7301311319842563893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + 2 * A130783 n

end

end A348864.P7301311319842563893

namespace A348864

/-- `A002378(n)+2*A130783(n)` -/
def P7301311319842563893.Spec : Prop :=
  ∀ n, P7301311319842563893.a n = A348864 (n + 1)

end A348864

/-!
# A348865: Numbers k such that A099378(k) | (A099377(k) - 1).

The programs for A348865, there is no canonical definition to state claims against.
-/

/-! ## A348865.P16076898228662044075

`lt[A349474(n+1), 3]+1`
-/

namespace A348865.P16076898228662044075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349474 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348865.P16076898228662044075

/-! ## A348865.P5476148613226218208

`record[A000027(n+1)/A054225(A349474(n+1))]`
-/

namespace A348865.P5476148613226218208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A054225 (A349474 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348865.P5476148613226218208

/-! ## A348865.P7812800174153137409

`record[A008619(2*n)/A054225(A349474(n+1))]`
-/

namespace A348865.P7812800174153137409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A054225 (A349474 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348865.P7812800174153137409

/-! ## A348865.P3303936749194706928

`record[A080513(2*n)/A054225(A349474(n+1))]`
-/

namespace A348865.P3303936749194706928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 (2 * n) : ℚ) / (A054225 (A349474 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348865.P3303936749194706928

/-! ## A348865.P12473682601909985238

`record[A065033(2*n+1)/A054225(A349474(n+1))]`
-/

namespace A348865.P12473682601909985238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n + 1) : ℚ) / (A054225 (A349474 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348865.P12473682601909985238

/-!
# A348867: Numbers whose numerator and denominator of the harmonic mean of their divisors are both 3-smooth numbers.

The programs for A348867, there is no canonical definition to state claims against.
-/

/-! ## A348867.P12065727376197910170

`filter[A336458(n+1), A122261(#)]`
-/

namespace A348867.P12065727376197910170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A348867.P12065727376197910170

/-! ## A348867.P11595594207661629854

`filter[A336458(n+1), A122255(#)]`
-/

namespace A348867.P11595594207661629854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A348867.P11595594207661629854

/-! ## A348867.P14584368072302546194

`record[gcd(A103278(n+1), A336458(n+1))]`
-/

namespace A348867.P14584368072302546194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103278 (n + 1)) (A336458 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348867.P14584368072302546194

/-! ## A348867.P1100987665379168110

`A336458(A357862(n+1)%A270929(3*n+2))`
-/

namespace A348867.P1100987665379168110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336458 (Int.tmod (A357862 (n + 1)) (A270929 (3 * n + 2))).toNat

end

end A348867.P1100987665379168110

/-!
# A348868: Numbers whose numerator and denominator of the harmonic mean of their divisors are both 5-smooth numbers.

The programs for A348868, there is no canonical definition to state claims against.
-/

/-! ## A348868.P18442218463557729241

`eq[A141256(A028594(n)), A141256(n)]`
-/

namespace A348868.P18442218463557729241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A028594 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348868.P18442218463557729241

/-! ## A348868.P17572317593346310371

`eq[A141256(n), A141256(A185699(n))]`
-/

namespace A348868.P17572317593346310371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A185699 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348868.P17572317593346310371

/-!
# A348871: After a(1) = 1, the sequence is always extended with the smallest divisor d (not yet present in the sequence) of the last term t. If d doesn't exist, we extend the sequence with tt (t concatenated to itself). If tt doesn't produce a new d, we extend the sequence with ttt, etc. See the Comments section for more details.

The programs for A348871, there is no canonical definition to state claims against.
-/

/-! ## A348871.P1382419981186804737

`A061493(∩[A093785(n+1), A215121(n+1)])`
-/

namespace A348871.P1382419981186804737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215121 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A348871.P1382419981186804737

/-!
# A348872: After a(1) = 1, the sequence is always extended with the smallest divisor d (not yet present in the sequence) of the last term t. If d doesn't exist, we extend the sequence with 2*t + 1 and repeat. See the Comments section for more details.

The programs for A348872, there is no canonical definition to state claims against.
-/

/-! ## A348872.P7938726879356917662

`A349183(A077168(n))`
-/

namespace A348872.P7938726879356917662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349183 (A077168 n).toNat

end

end A348872.P7938726879356917662

/-! ## A348872.P16640252363652503837

`A349183(A043319(n+1))`
-/

namespace A348872.P16640252363652503837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349183 (A043319 (n + 1)).toNat

end

end A348872.P16640252363652503837

/-! ## A348872.P13504950171846228973

`A349183(A044916(n+1))`
-/

namespace A348872.P13504950171846228973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349183 (A044916 (n + 1)).toNat

end

end A348872.P13504950171846228973

/-! ## A348872.P278474439019740990

`A349183(A055646(n+1))`
-/

namespace A348872.P278474439019740990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349183 (A055646 (n + 1)).toNat

end

end A348872.P278474439019740990

/-! ## A348872.P12525026999485369708

`A349183(A055647(n)+1)`
-/

namespace A348872.P12525026999485369708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349183 (A055647 n + 1).toNat

end

end A348872.P12525026999485369708

/-!
# A348873: After a(1) = 1, the sequence is always extended with the smallest divisor d (not yet present in the sequence) of the last term t. If d doesn't exist, we extend the sequence with 3*t + 1 and repeat. See the Comments section for more details.

The programs for A348873, there is no canonical definition to state claims against.
-/

/-! ## A348873.P16319561532846322583

`A128333((A061497(n+1)-n)*A061487(n+1))`
-/

namespace A348873.P16319561532846322583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128333 ((A061497 (n + 1) - (n : ℤ)) * A061487 (n + 1)).toNat

end

end A348873.P16319561532846322583

/-! ## A348873.P7886422571623937393

`A151933(A003410(n))+A128333(A061487(n+1))`
-/

namespace A348873.P7886422571623937393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A003410 n).toNat + A128333 (A061487 (n + 1)).toNat

end

end A348873.P7886422571623937393

/-! ## A348873.P6648644362636674587

`A151933(A061497(n+1))+A128333(A061487(n+1))`
-/

namespace A348873.P6648644362636674587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A061497 (n + 1)).toNat + A128333 (A061487 (n + 1)).toNat

end

end A348873.P6648644362636674587

/-! ## A348873.P278042026372321918

`A128333(A032555(n+1))`
-/

namespace A348873.P278042026372321918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128333 (A032555 (n + 1)).toNat

end

end A348873.P278042026372321918

/-! ## A348873.P2915673031686363261

`A128333(A032559(n+1))`
-/

namespace A348873.P2915673031686363261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128333 (A032559 (n + 1)).toNat

end

end A348873.P2915673031686363261

/-!
# A348874: Decimal expansion of Sum_{k>=0} (-1)^k / (k!)^3.

The programs for A348874, there is no canonical definition to state claims against.
-/

/-! ## A348874.P16350542468019952725

`A239849(A119480(n+5))%5`
-/

namespace A348874.P16350542468019952725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239849 (A119480 (n + 5)).toNat) 5

end

end A348874.P16350542468019952725

/-!
# A348875: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x * A(2*x)).

The programs for A348875, there is no canonical definition to state claims against.
-/

/-! ## A348875.P8162404373553892508

`A000079(n)*A276798(A143293(n))`
-/

namespace A348875.P8162404373553892508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A276798 (A143293 n).toNat

end

end A348875.P8162404373553892508

/-!
# A348876: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x * A(3*x)).

The programs for A348876, there is no canonical definition to state claims against.
-/

/-! ## A348876.P173381495116444376

`A253169(A008951(3^n))`
-/

namespace A348876.P173381495116444376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253169 (A008951 (3 ^ n)).toNat

end

end A348876.P173381495116444376

/-!
# A348877: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x * A(4*x)).

The programs for A348877, there is no canonical definition to state claims against.
-/

/-! ## A348877.P2141809043490622535

`A000010(A382806(n)+A000166(n))`
-/

namespace A348877.P2141809043490622535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A382806 n + A000166 n).toNat

end

end A348877.P2141809043490622535

/-!
# A348878: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x^2 * A(2*x)).

The programs for A348878, there is no canonical definition to state claims against.
-/

/-! ## A348878.P15283413322900023110

`A280502(6*A042685(n))`
-/

namespace A348878.P15283413322900023110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280502 (6 * A042685 n).toNat

end

end A348878.P15283413322900023110

/-! ## A348878.P2171731055342938873

`A100196(∑[∑[A052332(n)]])`
-/

namespace A348878.P2171731055342938873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348878.P2171731055342938873

/-! ## A348878.P11818530512696065906

`A287393(A352068(n+2))/4`
-/

namespace A348878.P11818530512696065906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287393 (A352068 (n + 2)).toNat : ℚ) / 4

end

end A348878.P11818530512696065906

/-!
# A348879: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x^2 * A(3*x)).

The programs for A348879, there is no canonical definition to state claims against.
-/

/-! ## A348879.P13623436442012360815

`A171762(a(n-1))/2` with `a(0)=1, a(1)=1`
-/

namespace A348879.P13623436442012360815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A171762 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A348879.P13623436442012360815

/-! ## A348879.P9851812339646245246

`ceil(xor(1, A023993(n^n))/6)`
-/

namespace A348879.P9851812339646245246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 (A023993 (n ^ n)) : ℚ) / 6⌉

end

end A348879.P9851812339646245246

/-!
# A348880: G.f. A(x) satisfies: A(x) = 1 / (1 - x - x^2 * A(4*x)).

The programs for A348880, there is no canonical definition to state claims against.
-/

/-! ## A348880.P952890693850224346

`A005374(A004102(n))`
-/

namespace A348880.P952890693850224346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A004102 n).toNat

end

end A348880.P952890693850224346

/-! ## A348880.P3768639953415396569

`A004181(A100290(n!))`
-/

namespace A348880.P3768639953415396569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A100290 (Nat.factorial n)).toNat

end

end A348880.P3768639953415396569

/-!
# A348882: Numbers that are expressible as the product of the number of distinct prime factors of preceding integers.

The programs for A348882, there is no canonical definition to state claims against.
-/

/-! ## A348882.P3520552030017696760

`A348949(A001358(n+1)^A327858(n))`
-/

namespace A348882.P3520552030017696760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 (SequenceMachineLib.roundAway ((A001358 (n + 1) : ℚ) ^ (A327858 n : ℤ))).toNat

end

end A348882.P3520552030017696760

/-! ## A348882.P11149395022715832827

`A101296(A008934(n+1))*A286195(n+1)`
-/

namespace A348882.P11149395022715832827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A008934 (n + 1)).toNat * A286195 (n + 1)

end

end A348882.P11149395022715832827

/-!
# A348883: Number of base-p digits for which the Apéry numbers support a Lucas congruence modulo p^2, where p is the n-th prime.

The programs for A348883, there is no canonical definition to state claims against.
-/

/-! ## A348883.P12114496236613655761

`p?[gcd(A063196(n+1), A137757(n+1))]`
-/

namespace A348883.P12114496236613655761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063196 (n + 1)) (A137757 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A348883.P12114496236613655761

/-! ## A348883.P17548929329147033451

`A117369(record[A181064(A196255(n+1))])`
-/

namespace A348883.P17548929329147033451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181064 (A196255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117369 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348883.P17548929329147033451

/-! ## A348883.P13237067331843275440

`p?[A123725(A235027(A087743(n+1)))]`
-/

namespace A348883.P13237067331843275440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 (A235027 (A087743 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348883.P13237067331843275440

/-! ## A348883.P15382135911366199198

`A295931(A003963(n+1)!)+A001227(A313693(n))`
-/

namespace A348883.P15382135911366199198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (Nat.factorial (A003963 (n + 1)).toNat) + A001227 (A313693 n).toNat

end

end A348883.P15382135911366199198

/-!
# A348885: Number of 3-tuples of nonnegative integers less than p for which 3-argument multinomial coefficients support a Lucas congruence modulo p^2, where p is the n-th prime.

The programs for A348885, there is no canonical definition to state claims against.
-/

/-! ## A348885.P2474507802569698443

`A109138(A323197(n+1))-A030494(n+1)`
-/

namespace A348885.P2474507802569698443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109138 (A323197 (n + 1)).toNat - A030494 (n + 1)

end

end A348885.P2474507802569698443

/-!
# A348888: Triangle read by rows: T(n,k) = number of basins of attraction of the multiplication by k in the integers modulo n, n >= 1, 0 <= k < n.

The programs for A348888, there is no canonical definition to state claims against.
-/

/-! ## A348888.P7085600482205311246

`gcd(A057058(n+1), A127322(A294746(n)))`
-/

namespace A348888.P7085600482205311246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057058 (n + 1)) (A127322 (A294746 n).toNat)

end

end A348888.P7085600482205311246

/-! ## A348888.P2770901954415567654

`A278703(A208921(n+1))`
-/

namespace A348888.P2770901954415567654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278703 (A208921 (n + 1)).toNat

end

end A348888.P2770901954415567654

/-! ## A348888.P8870424962703183026

`gcd(A071558(A016922(n)), A183917(n+1))`
-/

namespace A348888.P8870424962703183026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071558 (A016922 n).toNat) (A183917 (n + 1))

end

end A348888.P8870424962703183026

/-! ## A348888.P1854539974652246663

`A183917(n+1)%A182495(C(n, ceil(n/2)))`
-/

namespace A348888.P1854539974652246663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183917 (n + 1)) (A182495 (Nat.choose n ⌈(n : ℚ) / 2⌉.toNat))

end

end A348888.P1854539974652246663

/-! ## A348888.P14035223440042848142

`A057058(n+1)-A370813(A007774(3*(n+1)))`
-/

namespace A348888.P14035223440042848142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (n + 1) - A370813 (A007774 (3 * (n + 1))).toNat

end

end A348888.P14035223440042848142

/-!
# A348889: Numbers m such that there exists at least one integer k < m where m^2 + 2 and k^2 + 2 have the same prime factors.

The programs for A348889, there is no canonical definition to state claims against.
-/

/-! ## A348889.P15759398213379407364

`A331170(n+1)+A184422(A148504(n))`
-/

namespace A348889.P15759398213379407364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (n + 1) + A184422 (A148504 n).toNat

end

end A348889.P15759398213379407364

/-!
# A348893: a(n) = 840*(2*n)!/((n + 4)!*n!).

The programs for A348893, the canonical program `A348893.P3807632117592940655` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348893 has offset 0).

The definition of A348893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348893.P3807632117592940655

`14*A007272(n)/(n+4)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A348893

/-- `14*A007272(n)/(n+4)` -/
def P3807632117592940655.Spec : Prop :=
  ∀ n, P3807632117592940655.a n = (A348893 n : ℚ)

end A348893

/-! ## A348893.P1798892968204843757

`64*A000108(n)-48*A000108(n+1)+12*A000108(n+2)-A000108(n+3)`
-/

namespace A348893.P1798892968204843757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A000108 n - 48 * A000108 (n + 1) + 12 * A000108 (n + 2) - A000108 (n + 3)

end

end A348893.P1798892968204843757

namespace A348893

/-- `64*A000108(n)-48*A000108(n+1)+12*A000108(n+2)-A000108(n+3)` -/
def P1798892968204843757.Spec : Prop :=
  ∀ n, P1798892968204843757.a n = A348893 n

end A348893

/-! ## A348893.P2620696045366586794

`35*C(2*n, n)/C(n+4, 4)`
-/

namespace A348893.P2620696045366586794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (35 * Nat.choose (2 * n) n : ℚ) / (Nat.choose (n + 4) 4 : ℚ)

end

end A348893.P2620696045366586794

namespace A348893

/-- `35*C(2*n, n)/C(n+4, 4)` -/
def P2620696045366586794.Spec : Prop :=
  ∀ n, P2620696045366586794.a n = (A348893 n : ℚ)

end A348893

/-! ## A348893.P17323088839967378094

`840*(2*n)!/((n+4)!*n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348893.P17323088839967378094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (840 * Nat.factorial (2 * n) : ℚ) / (Nat.factorial (n + 4) * Nat.factorial n : ℚ)

end

end A348893.P17323088839967378094

namespace A348893

/-- `840*(2*n)!/((n+4)!*n!)` -/
def P17323088839967378094.Spec : Prop :=
  ∀ n, P17323088839967378094.a n = (A348893 n : ℚ)

end A348893

/-! ## A348893.P12645554653334001266

`A002423(n+4)/2`
-/

namespace A348893.P12645554653334001266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002423 (n + 4) : ℚ) / 2

end

end A348893.P12645554653334001266

namespace A348893

/-- `A002423(n+4)/2` -/
def P12645554653334001266.Spec : Prop :=
  ∀ n, P12645554653334001266.a n = (A348893 n : ℚ)

end A348893

/-! ## A348893.P17562072956031133418

`A078819(n)/∑[∑[n+1]]`
-/

namespace A348893.P17562072956031133418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078819 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A348893.P17562072956031133418

namespace A348893

/-- `A078819(n)/∑[∑[n+1]]` -/
def P17562072956031133418.Spec : Prop :=
  ∀ n, P17562072956031133418.a n = (A348893 n : ℚ)

end A348893

/-! ## A348893.P7037250523963571104

`A068555(A000096(n+3)+5)/2`
-/

namespace A348893.P7037250523963571104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A000096 (n + 3) + 5).toNat : ℚ) / 2

end

end A348893.P7037250523963571104

namespace A348893

/-- `A068555(A000096(n+3)+5)/2` -/
def P7037250523963571104.Spec : Prop :=
  ∀ n, P7037250523963571104.a n = (A348893 n : ℚ)

end A348893

/-! ## A348893.P4335896605286271182

`A068555(A000124(n+5)-6)/2`
-/

namespace A348893.P4335896605286271182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A000124 (n + 5) - 6).toNat : ℚ) / 2

end

end A348893.P4335896605286271182

namespace A348893

/-- `A068555(A000124(n+5)-6)/2` -/
def P4335896605286271182.Spec : Prop :=
  ∀ n, P4335896605286271182.a n = (A348893 n : ℚ)

end A348893

/-!
# A348894: Smallest n-digit number such that the remainder after dividing by sum of digits is A348730(n).

The programs for A348894, there is no canonical definition to state claims against.
-/

/-! ## A348894.P1936154705894598933

`A138791(A348730(n+1))`
-/

namespace A348894.P1936154705894598933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138791 (A348730 (n + 1)).toNat

end

end A348894.P1936154705894598933

/-! ## A348894.P1609144711814570474

`A138791(A348895(n+1)%∑{digits}[A348895(n+1), #])`
-/

namespace A348894.P1609144711814570474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138791 (Int.tmod (A348895 (n + 1)) ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A348894.P1609144711814570474

/-!
# A348897: Numbers of the form (x + y)*(x^2 + y^2).

The programs for A348897, there is no canonical definition to state claims against.
-/

/-! ## A348897.P5984787860560946248

`∪[A336607(n+1), n*n²]`
-/

namespace A348897.P5984787860560946248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A348897.P5984787860560946248

/-! ## A348897.P882505701025414794

`∪[A000578(n), A336607(n+1)]`
-/

namespace A348897.P882505701025414794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348897.P882505701025414794

/-! ## A348897.P6889585460391613315

`∪[A349201(n+1), A336607(n+1)]`
-/

namespace A348897.P6889585460391613315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348897.P6889585460391613315

/-!
# A348898: a(n) = 15120*(2*n)!/(n!*(n + 5)!); super ballot numbers, row 4 of A135573.

The programs for A348898, the canonical program `A348898.P13407656791515410538` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348898 has offset 0).

The definition of A348898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348898.P16950857297140565852

`256*A000108(n)-256*A000108(n+1)+96*A000108(n+2)-16*A000108(n+3)+A000108(n+4)`
-/

namespace A348898.P16950857297140565852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  256 * A000108 n - 256 * A000108 (n + 1) + 96 * A000108 (n + 2) - 16 * A000108 (n + 3) + A000108 (n + 4)

end

end A348898.P16950857297140565852

namespace A348898

/-- `256*A000108(n)-256*A000108(n+1)+96*A000108(n+2)-16*A000108(n+3)+A000108(n+4)` -/
def P16950857297140565852.Spec : Prop :=
  ∀ n, P16950857297140565852.a n = A348898 n

end A348898

/-! ## A348898.P13407656791515410538

`126*C(2*n, n)/C(n+5, 5)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A348898

/-- `126*C(2*n, n)/C(n+5, 5)` -/
def P13407656791515410538.Spec : Prop :=
  ∀ n, P13407656791515410538.a n = (A348898 n : ℚ)

end A348898

/-! ## A348898.P14212532346505736911

`A068555(A167499(n+4))/2`
-/

namespace A348898.P14212532346505736911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A167499 (n + 4)).toNat : ℚ) / 2

end

end A348898.P14212532346505736911

namespace A348898

/-- `A068555(A167499(n+4))/2` -/
def P14212532346505736911.Spec : Prop :=
  ∀ n, P14212532346505736911.a n = (A348898 n : ℚ)

end A348898

/-! ## A348898.P11116829915861993232

`A068555(A166136(n+4)-1)/2`
-/

namespace A348898.P11116829915861993232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A166136 (n + 4) - 1).toNat : ℚ) / 2

end

end A348898.P11116829915861993232

namespace A348898

/-- `A068555(A166136(n+4)-1)/2` -/
def P11116829915861993232.Spec : Prop :=
  ∀ n, P11116829915861993232.a n = (A348898 n : ℚ)

end A348898

/-! ## A348898.P12313442927969792942

`A068555(A000217(n+5)+5)/2`
-/

namespace A348898.P12313442927969792942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A000217 (n + 5) + 5).toNat : ℚ) / 2

end

end A348898.P12313442927969792942

namespace A348898

/-- `A068555(A000217(n+5)+5)/2` -/
def P12313442927969792942.Spec : Prop :=
  ∀ n, P12313442927969792942.a n = (A348898 n : ℚ)

end A348898

/-! ## A348898.P6681945251868121487

`A068555(eq[32, A130321(n)])/2`
-/

namespace A348898.P6681945251868121487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A348898.P6681945251868121487

namespace A348898

/-- `A068555(eq[32, A130321(n)])/2` -/
def P6681945251868121487.Spec : Prop :=
  ∀ n, P6681945251868121487.a n = (A348898 n : ℚ)

end A348898

/-!
# A348899: a(n) = 332640*4^n*Gamma(n + 1/2)/(sqrt(Pi)*Gamma(n + 7)); super ballot numbers, row 5 of A135573.

The programs for A348899, the canonical program `A348899.P2250712943153160686` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348899 has offset 0).

The definition of A348899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348899.P2250712943153160686

`A020923(n+6)/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A348899

/-- `A020923(n+6)/2` -/
def P2250712943153160686.Spec : Prop :=
  ∀ n, P2250712943153160686.a n = (A348899 n : ℚ)

end A348899

/-! ## A348899.P254473150369309932

`A135573(A055999(n+3))`
-/

namespace A348899.P254473150369309932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135573 (A055999 (n + 3)).toNat

end

end A348899.P254473150369309932

namespace A348899

/-- `A135573(A055999(n+3))` -/
def P254473150369309932.Spec : Prop :=
  ∀ n, P254473150369309932.a n = A348899 n

end A348899

/-! ## A348899.P2888499700304429156

`A135573(Δ[A023551(n+1)])`
-/

namespace A348899.P2888499700304429156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135573 (f1 (n + 1) - f1 n).toNat

end

end A348899.P2888499700304429156

namespace A348899

/-- `A135573(Δ[A023551(n+1)])` -/
def P2888499700304429156.Spec : Prop :=
  ∀ n, P2888499700304429156.a n = A348899 n

end A348899

/-! ## A348899.P4921258186585899907

`A135573(Δ[A026054(n+3)])`
-/

namespace A348899.P4921258186585899907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135573 (f1 (n + 1) - f1 n).toNat

end

end A348899.P4921258186585899907

namespace A348899

/-- `A135573(Δ[A026054(n+3)])` -/
def P4921258186585899907.Spec : Prop :=
  ∀ n, P4921258186585899907.a n = A348899 n

end A348899

/-! ## A348899.P12759178748029339039

`A135573(A000096(n+5)-5)`
-/

namespace A348899.P12759178748029339039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135573 (A000096 (n + 5) - 5).toNat

end

end A348899.P12759178748029339039

namespace A348899

/-- `A135573(A000096(n+5)-5)` -/
def P12759178748029339039.Spec : Prop :=
  ∀ n, P12759178748029339039.a n = A348899 n

end A348899

