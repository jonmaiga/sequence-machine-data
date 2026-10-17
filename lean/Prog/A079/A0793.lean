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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A079300: a(n) = number of shortest addition chains ending in n.

The programs for A079300, there is no canonical definition to state claims against.
-/

/-! ## A079300.P7487114230264054716

`A079301(n+1)+A079302(n+1)`
-/

namespace A079300.P7487114230264054716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (n + 1) + A079302 (n + 1)

end

end A079300.P7487114230264054716

/-! ## A079300.P9705000140175473833

`A079301(n+1)+A116882(A020948(n+1))%A288003(n+1)`
-/

namespace A079300.P9705000140175473833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (n + 1) + Int.tmod (A116882 (A020948 (n + 1)).toNat) (A288003 (n + 1))

end

end A079300.P9705000140175473833

/-! ## A079300.P4845227486925954170

`A079301(n+1)+A240668(n+1)%A147541(A213224(n+1))`
-/

namespace A079300.P4845227486925954170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (n + 1) + Int.tmod (A240668 (n + 1)) (A147541 (A213224 (n + 1)).toNat)

end

end A079300.P4845227486925954170

/-! ## A079300.P498323334514144368

`A079301(n+1)+A014707(A022171(n))`
-/

namespace A079300.P498323334514144368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (n + 1) + A014707 (A022171 n).toNat

end

end A079300.P498323334514144368

/-! ## A079300.P3363639546051815077

`A079301(n+1)-A008683(A237557(n+1))`
-/

namespace A079300.P3363639546051815077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (n + 1) - A008683 (A237557 (n + 1)).toNat

end

end A079300.P3363639546051815077

/-!
# A079301: a(n) = number of shortest addition chains for n that are Brauer chains.

The programs for A079301, there is no canonical definition to state claims against.
-/

/-! ## A079301.P11380258802849461297

`A079300(n+1)-A079302(n+1)`
-/

namespace A079301.P11380258802849461297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1) - A079302 (n + 1)

end

end A079301.P11380258802849461297

/-! ## A079301.P5500554558035601414

`A079300(n+1)-A116882(A020948(n+1))%A288003(n+1)`
-/

namespace A079301.P5500554558035601414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1) - Int.tmod (A116882 (A020948 (n + 1)).toNat) (A288003 (n + 1))

end

end A079301.P5500554558035601414

/-! ## A079301.P11251420860655681730

`A079300(n+1)-A240668(n+1)%A147541(A213224(n+1))`
-/

namespace A079301.P11251420860655681730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1) - Int.tmod (A240668 (n + 1)) (A147541 (A213224 (n + 1)).toNat)

end

end A079301.P11251420860655681730

/-! ## A079301.P3986742845181259940

`A003313(A003065(A079300(n+1)))+1`
-/

namespace A079301.P3986742845181259940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A003065 (A079300 (n + 1)).toNat).toNat + 1

end

end A079301.P3986742845181259940

/-! ## A079301.P7952882367262389575

`A079300(n+1)-A337196(A110618(3*n+4))`
-/

namespace A079301.P7952882367262389575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1) - A337196 (A110618 (3 * n + 4)).toNat

end

end A079301.P7952882367262389575

/-!
# A079302: a(n) = number of shortest addition chains for n that are non-Brauer chains.

The programs for A079302, there is no canonical definition to state claims against.
-/

/-! ## A079302.P18001692602759636355

`A079300(n+1)-A079301(n+1)`
-/

namespace A079302.P18001692602759636355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1) - A079301 (n + 1)

end

end A079302.P18001692602759636355

/-! ## A079302.P16541638339010249301

`A079300(A008611(3*n))%A079301(n+1)`
-/

namespace A079302.P16541638339010249301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079300 (A008611 (3 * n)).toNat) (A079301 (n + 1))

end

end A079302.P16541638339010249301

/-! ## A079302.P10243412090817980264

`(A079300(n+1)%A079301(n+1))%A079284(n)`
-/

namespace A079302.P10243412090817980264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A079300 (n + 1)) (A079301 (n + 1))) (A079284 n)

end

end A079302.P10243412090817980264

/-! ## A079302.P16757689202108246098

`A079300(A162319(∑[n+1]))%A079301(n+1)`
-/

namespace A079302.P16757689202108246098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079300 (A162319 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A079301 (n + 1))

end

end A079302.P16757689202108246098

/-! ## A079302.P11675965012779480276

`(A079300(A000027(n+1))%A079301(n+1))%A205753(n+1)`
-/

namespace A079302.P11675965012779480276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A079300 (A000027 (n + 1)).toNat) (A079301 (n + 1))) (A205753 (n + 1))

end

end A079302.P11675965012779480276

/-! ## A079302.P8664636854924461019

`A079300(A004736(∑[n]+1))%A079301(n+1)`
-/

namespace A079302.P8664636854924461019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079300 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat) (A079301 (n + 1))

end

end A079302.P8664636854924461019

/-! ## A079302.P7342676207172615057

`A118759(A079300(n+1)%A079301(n+1))`
-/

namespace A079302.P7342676207172615057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A079300 (n + 1)) (A079301 (n + 1))).toNat

end

end A079302.P7342676207172615057

/-!
# A079304: Near twin primes of order 18: twin primes (p, p+2) such that p+18 and p+20 are primes.

The programs for A079304, there is no canonical definition to state claims against.
-/

/-! ## A079304.P16181284912857918643

`A140567(4*n+1)`
-/

namespace A079304.P16181284912857918643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 (4 * n + 1)

end

end A079304.P16181284912857918643

/-! ## A079304.P10568375031469762881

`A140567(A016825(n))-2`
-/

namespace A079304.P10568375031469762881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 (A016825 n).toNat - 2

end

end A079304.P10568375031469762881

/-! ## A079304.P7048831705753535132

`record[A140567(A133090(n+1))]`
-/

namespace A079304.P7048831705753535132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 (A133090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079304.P7048831705753535132

/-! ## A079304.P5841803834775408740

`record[A140567(n+1)^A056594(n)]`
-/

namespace A079304.P5841803834775408740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140567 (n + 1) : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079304.P5841803834775408740

/-! ## A079304.P990374532465871301

`record[A140567(n+1)/A055975(n+1)]`
-/

namespace A079304.P990374532465871301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140567 (n + 1) : ℚ) / (A055975 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079304.P990374532465871301

/-! ## A079304.P16138149918293334036

`A140567(A016813(n))%Δ[64*A005286(n)]`
-/

namespace A079304.P16138149918293334036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140567 (A016813 n).toNat) (f1 (n + 1) - f1 n)

end

end A079304.P16138149918293334036

/-! ## A079304.P3688557505566746302

`p?[A140567(Δ[C(2*n, 2)])]`
-/

namespace A079304.P3688557505566746302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079304.P3688557505566746302

/-! ## A079304.P7103831448935259153

`p?[A140567(Δ[A000384(n)])]`
-/

namespace A079304.P7103831448935259153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079304.P7103831448935259153

/-! ## A079304.P2749725439382672603

`p?[A140567(A005408(2*n))]`
-/

namespace A079304.P2749725439382672603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 (A005408 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079304.P2749725439382672603

/-! ## A079304.P5490847862524876503

`p?[A140567(A133090(n+1))+A000035(n)]`
-/

namespace A079304.P5490847862524876503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140567 (A133090 (n + 1)).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079304.P5490847862524876503

/-! ## A079304.P2372966654576437145

`∩[A153418(n+1)-2, A153418(n+1)]`
-/

namespace A079304.P2372966654576437145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079304.P2372966654576437145

/-!
# A079306: Number of n-node labeled mating graphs whose complements are connected.

The programs for A079306, there is no canonical definition to state claims against.
-/

/-! ## A079306.P9213307670616419220

`A054429(n²*a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A079306.P9213307670616419220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  A054429 ((n ^ 2 : ℤ) * a (n - 1) + 1).toNat

end

end A079306.P9213307670616419220

/-!
# A079309: a(n) = C(1,1) + C(3,2) + C(5,3) + ... + C(2*n-1,n).

The programs for A079309, the canonical program `A079309.P2928815747845907027` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079309 has offset 1).

The definition of A079309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066796, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079309.P2928815747845907027

`A066796(n+1)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079309

/-- `A066796(n+1)/2` -/
def P2928815747845907027.Spec : Prop :=
  ∀ n, P2928815747845907027.a n = (A079309 (n + 1) : ℚ)

end A079309

/-! ## A079309.P1104381898316668898

`∑[∏[4-2/(n+1)]/2]`
-/

namespace A079309.P1104381898316668898
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079309.P1104381898316668898

namespace A079309

/-- `∑[∏[4-2/(n+1)]/2]` -/
def P1104381898316668898.Spec : Prop :=
  ∀ n, P1104381898316668898.a n = (A079309 (n + 1) : ℚ)

end A079309

/-! ## A079309.P4607883791482619574

`floor(∑[(4-n/∑[n])*a(n-1)])` with `a(0)=1`
-/

namespace A079309.P4607883791482619574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A079309.P4607883791482619574

namespace A079309

/-- `floor(∑[(4-n/∑[n])*a(n-1)])` -/
def P4607883791482619574.Spec : Prop :=
  ∀ n, P4607883791482619574.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P10898026303713766968

`ceil(∑[(4-n/∑[n])*a(n-1)])` with `a(0)=1`
-/

namespace A079309.P10898026303713766968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A079309.P10898026303713766968

namespace A079309

/-- `ceil(∑[(4-n/∑[n])*a(n-1)])` -/
def P10898026303713766968.Spec : Prop :=
  ∀ n, P10898026303713766968.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P199193090164740133

`round(∑[(4-n/∑[n])*a(n-1)])` with `a(0)=1`
-/

namespace A079309.P199193090164740133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079309.P199193090164740133

namespace A079309

/-- `round(∑[(4-n/∑[n])*a(n-1)])` -/
def P199193090164740133.Spec : Prop :=
  ∀ n, P199193090164740133.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P11274771632962889148

`a(n-1)+∏[4-2/(n+1)]/2` with `a(0)=1`
-/

namespace A079309.P11274771632962889148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A079309.P11274771632962889148

namespace A079309

/-- `a(n-1)+∏[4-2/(n+1)]/2` -/
def P11274771632962889148.Spec : Prop :=
  ∀ n, P11274771632962889148.a n = (A079309 (n + 1) : ℚ)

end A079309

/-! ## A079309.P17812153453755963237

`abs(∑[(2-1/(n+1))*2*a(n-1)])` with `a(0)=1`
-/

namespace A079309.P17812153453755963237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 - 1 / (n + 1 : ℚ)) * (2 * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A079309.P17812153453755963237

namespace A079309

/-- `abs(∑[(2-1/(n+1))*2*a(n-1)])` -/
def P17812153453755963237.Spec : Prop :=
  ∀ n, P17812153453755963237.a n = (A079309 (n + 1) : ℚ)

end A079309

/-! ## A079309.P12157916640485703200

`ceil(A054114(n)/2)`
-/

namespace A079309.P12157916640485703200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054114 n : ℚ) / 2⌉

end

end A079309.P12157916640485703200

namespace A079309

/-- `ceil(A054114(n)/2)` -/
def P12157916640485703200.Spec : Prop :=
  ∀ n, P12157916640485703200.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P13978043140354318236

`Δ[A143954(n+1)]`
-/

namespace A079309.P13978043140354318236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079309.P13978043140354318236

namespace A079309

/-- `Δ[A143954(n+1)]` -/
def P13978043140354318236.Spec : Prop :=
  ∀ n, P13978043140354318236.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P12276816313337068828

`A024718(n+1)-1`
-/

namespace A079309.P12276816313337068828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 (n + 1) - 1

end

end A079309.P12276816313337068828

namespace A079309

/-- `A024718(n+1)-1` -/
def P12276816313337068828.Spec : Prop :=
  ∀ n, P12276816313337068828.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P8909044662041726922

`A174783(2*(n+1))`
-/

namespace A079309.P8909044662041726922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (2 * (n + 1))

end

end A079309.P8909044662041726922

namespace A079309

/-- `A174783(2*(n+1))` -/
def P8909044662041726922.Spec : Prop :=
  ∀ n, P8909044662041726922.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P2731854871059582293

`A191790(2*(n+1))`
-/

namespace A079309.P2731854871059582293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (2 * (n + 1))

end

end A079309.P2731854871059582293

namespace A079309

/-- `A191790(2*(n+1))` -/
def P2731854871059582293.Spec : Prop :=
  ∀ n, P2731854871059582293.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P6578715728879017289

`A332754(2*n+3)`
-/

namespace A079309.P6578715728879017289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (2 * n + 3)

end

end A079309.P6578715728879017289

namespace A079309

/-- `A332754(2*n+3)` -/
def P6578715728879017289.Spec : Prop :=
  ∀ n, P6578715728879017289.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P5508705939549884297

`Δ[∑[A024718(n)]-n]`
-/

namespace A079309.P5508705939549884297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079309.P5508705939549884297

namespace A079309

/-- `Δ[∑[A024718(n)]-n]` -/
def P5508705939549884297.Spec : Prop :=
  ∀ n, P5508705939549884297.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P7652697526046514039

`floor(A006134(n+1)/2)`
-/

namespace A079309.P7652697526046514039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006134 (n + 1) : ℚ) / 2⌋

end

end A079309.P7652697526046514039

namespace A079309

/-- `floor(A006134(n+1)/2)` -/
def P7652697526046514039.Spec : Prop :=
  ∀ n, P7652697526046514039.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P10320099269139494165

`∑[A000984(n+1)]/2`
-/

namespace A079309.P10320099269139494165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A079309.P10320099269139494165

namespace A079309

/-- `∑[A000984(n+1)]/2` -/
def P10320099269139494165.Spec : Prop :=
  ∀ n, P10320099269139494165.a n = (A079309 (n + 1) : ℚ)

end A079309

/-! ## A079309.P14426408621105392674

`∑[2*A001700(n)]/2`
-/

namespace A079309.P14426408621105392674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A079309.P14426408621105392674

namespace A079309

/-- `∑[2*A001700(n)]/2` -/
def P14426408621105392674.Spec : Prop :=
  ∀ n, P14426408621105392674.a n = (A079309 (n + 1) : ℚ)

end A079309

/-! ## A079309.P7040902232073379248

`∑[A112849(n+1)]-n`
-/

namespace A079309.P7040902232073379248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A079309.P7040902232073379248

namespace A079309

/-- `∑[A112849(n+1)]-n` -/
def P7040902232073379248.Spec : Prop :=
  ∀ n, P7040902232073379248.a n = A079309 (n + 1)

end A079309

/-! ## A079309.P18144910920295678002

`∑[record[A081668(n+1)]]/2`
-/

namespace A079309.P18144910920295678002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A079309.P18144910920295678002

namespace A079309

/-- `∑[record[A081668(n+1)]]/2` -/
def P18144910920295678002.Spec : Prop :=
  ∀ n, P18144910920295678002.a n = (A079309 (n + 1) : ℚ)

end A079309

/-! ## A079309.P11257832265650754159

`∑[A007007(2*n+1)]+1`
-/

namespace A079309.P11257832265650754159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079309.P11257832265650754159

namespace A079309

/-- `∑[A007007(2*n+1)]+1` -/
def P11257832265650754159.Spec : Prop :=
  ∀ n, P11257832265650754159.a n = A079309 (n + 1)

end A079309

/-!
# A079310: Numbers k such that (6*phi(k)-1, 6*phi(k)+1) is a twin prime pair, where phi is Euler's totient function (A000010).

The programs for A079310, there is no canonical definition to state claims against.
-/

/-! ## A079310.P18048887245316857368

`eq[1, A182481(A000010(n+1))]+1`
-/

namespace A079310.P18048887245316857368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079310.P18048887245316857368

/-! ## A079310.P9524688321364817854

`record[A000027(n+1)/A135023(A000010(n+1))]`
-/

namespace A079310.P9524688321364817854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A135023 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079310.P9524688321364817854

/-! ## A079310.P11733334195552139556

`eq[1, A135023(A225530(n+1))]+1`
-/

namespace A079310.P11733334195552139556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (A225530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079310.P11733334195552139556

/-! ## A079310.P11024675242999079358

`eq[A054977(n), A135023(A225530(n))]`
-/

namespace A079310.P11024675242999079358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079310.P11024675242999079358

/-! ## A079310.P6170875933326000110

`eq[A057427(n), A135023(A225530(n))]`
-/

namespace A079310.P6170875933326000110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079310.P6170875933326000110

/-! ## A079310.P9707743325297038489

`eq[A000038(n)!, A135023(A225530(n))]`
-/

namespace A079310.P9707743325297038489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079310.P9707743325297038489

/-! ## A079310.P13638073806920946049

`eq[1, A135023(A225530(n))+A000007(n)]`
-/

namespace A079310.P13638073806920946049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (A225530 n).toNat + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079310.P13638073806920946049

/-! ## A079310.P5975350927452278674

`eq[A019425(2*n), A135023(A225530(n))]`
-/

namespace A079310.P5975350927452278674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079310.P5975350927452278674

/-!
# A079311: Integer part of length of diagonal of integral rectangle with area n and smallest semiperimeter.

The programs for A079311, there is no canonical definition to state claims against.
-/

/-! ## A079311.P12520390328265028509

`floor(sqrt(A323728(n+1)))`
-/

namespace A079311.P12520390328265028509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A323728 (n + 1))

end

end A079311.P12520390328265028509

/-! ## A079311.P13089228654584201117

`floor(sqrt(A162348(2*n+1)²+A162348(2*(n+1))²))`
-/

namespace A079311.P13089228654584201117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A162348 (2 * n + 1) ^ 2 + A162348 (2 * (n + 1)) ^ 2)

end

end A079311.P13089228654584201117

/-! ## A079311.P3922678462576112044

`A000196(A323728(n+1))`
-/

namespace A079311.P3922678462576112044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A323728 (n + 1)).toNat

end

end A079311.P3922678462576112044

/-! ## A079311.P13697755508811595411

`A003059(A323728(n+1)+1)-1`
-/

namespace A079311.P13697755508811595411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A323728 (n + 1) + 1).toNat - 1

end

end A079311.P13697755508811595411

/-! ## A079311.P14897680426938872109

`A000196(A056737(n+1)²+A005408(n)+1)`
-/

namespace A079311.P14897680426938872109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056737 (n + 1) ^ 2 + (A005408 n + 1)).toNat

end

end A079311.P14897680426938872109

/-! ## A079311.P15890258009333023249

`A000196(A033676(n+1)²+A033677(n+1)²)`
-/

namespace A079311.P15890258009333023249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033676 (n + 1) ^ 2 + A033677 (n + 1) ^ 2).toNat

end

end A079311.P15890258009333023249

/-!
# A079312: a(n) = 4 * A079137(n).

The programs for A079312, there is no canonical definition to state claims against.
-/

/-! ## A079312.P16535830692046837316

`4*A079137(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079312.P16535830692046837316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A079137 (n + 1)

end

end A079312.P16535830692046837316

/-! ## A079312.P11701103899644552892

`2*A123935(n+1)`
-/

namespace A079312.P11701103899644552892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123935 (n + 1)

end

end A079312.P11701103899644552892

/-! ## A079312.P13992519816210763997

`8*A123936(n+1)`
-/

namespace A079312.P13992519816210763997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A123936 (n + 1)

end

end A079312.P13992519816210763997

/-! ## A079312.P14522042935253091531

`∑[4*Δ[A079137(A028310(n))]]`
-/

namespace A079312.P14522042935253091531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079137 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079312.P14522042935253091531

/-! ## A079312.P8513545215451716318

`A079137(A028310(n+1))/(1/2)²`
-/

namespace A079312.P8513545215451716318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079137 (A028310 (n + 1)).toNat : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A079312.P8513545215451716318

/-!
# A079313: a(n) is taken to be the smallest positive integer not already present which is consistent with the condition "n is a member of the sequence if and only if a(n) is odd".

The programs for A079313, there is no canonical definition to state claims against.
-/

/-! ## A079313.P109589639268992662

`A080032(n)+1`
-/

namespace A079313.P109589639268992662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080032 n + 1

end

end A079313.P109589639268992662

/-! ## A079313.P6933737168279796161

`A328399(2*A080032(n))`
-/

namespace A079313.P6933737168279796161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A080032 n).toNat

end

end A079313.P6933737168279796161

/-! ## A079313.P12169671774992154234

`A008619(2*A080032(n))`
-/

namespace A079313.P12169671774992154234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A080032 n).toNat

end

end A079313.P12169671774992154234

/-! ## A079313.P1827152406440437584

`A052938(2*A080032(n))`
-/

namespace A079313.P1827152406440437584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A080032 n).toNat

end

end A079313.P1827152406440437584

/-! ## A079313.P3385430023418010844

`A028242(2*A080032(n))`
-/

namespace A079313.P3385430023418010844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A080032 n).toNat

end

end A079313.P3385430023418010844

/-! ## A079313.P1132725652518999086

`A080513(2*A080032(n))`
-/

namespace A079313.P1132725652518999086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A080032 n).toNat

end

end A079313.P1132725652518999086

/-! ## A079313.P15900863119619514196

`A110514(2*A080032(n))`
-/

namespace A079313.P15900863119619514196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * A080032 n).toNat

end

end A079313.P15900863119619514196

/-! ## A079313.P4457157662475298051

`A008611(3*A080032(n))`
-/

namespace A079313.P4457157662475298051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A080032 n).toNat

end

end A079313.P4457157662475298051

/-! ## A079313.P15429484843164054857

`A008620(3*A080032(n))`
-/

namespace A079313.P15429484843164054857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A080032 n).toNat

end

end A079313.P15429484843164054857

/-! ## A079313.P9713367411536312813

`A008621(4*A080032(n))`
-/

namespace A079313.P9713367411536312813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A080032 n).toNat

end

end A079313.P9713367411536312813

/-!
# A079314: Number of first-quadrant cells (including the two boundaries) born at stage n of the Holladay-Ulam cellular automaton.

The programs for A079314, the canonical program `A079314.P11771377517660270647` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079314 has offset 0).

The definition of A079314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079314.P11771377517660270647

`lcm(2, 2-3*a(and(n, n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079314

/-- `lcm(2, 2-3*a(and(n, n-1)))` -/
def P11771377517660270647.Spec : Prop :=
  ∀ n, (P11771377517660270647.a n : ℤ) = A079314 n

theorem P11771377517660270647.correct : P11771377517660270647.Spec := by
  intro n
  simp only [A079314]

end A079314

/-! ## A079314.P14397828281119630007

`ceil(3/acot(a(and(n, n-1))-1))` with `a(0)=1`
-/

namespace A079314.P14397828281119630007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈3 / SequenceMachineLib.acot (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1 : ℝ)⌉

end

end A079314.P14397828281119630007

namespace A079314

/-- `ceil(3/acot(a(and(n, n-1))-1))` -/
def P14397828281119630007.Spec : Prop :=
  ∀ n, P14397828281119630007.a n = A079314 n

end A079314

/-! ## A079314.P17900566004661980855

`and(3*a(and(n, n-1))-1, -2)` with `a(0)=1`
-/

namespace A079314.P17900566004661980855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1) (-2)

end

end A079314.P17900566004661980855

namespace A079314

/-- `and(3*a(and(n, n-1))-1, -2)` -/
def P17900566004661980855.Spec : Prop :=
  ∀ n, P17900566004661980855.a n = A079314 n

end A079314

/-! ## A079314.P13273263405095492360

`ceil(A151712(n)/3)`
-/

namespace A079314.P13273263405095492360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151712 n : ℚ) / 3⌉

end

end A079314.P13273263405095492360

namespace A079314

/-- `ceil(A151712(n)/3)` -/
def P13273263405095492360.Spec : Prop :=
  ∀ n, P13273263405095492360.a n = A079314 n

end A079314

/-! ## A079314.P11659748057627942336

`ceil(2*A162784(n)/3)`
-/

namespace A079314.P11659748057627942336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A162784 n : ℚ) / 3)⌉

end

end A079314.P11659748057627942336

namespace A079314

/-- `ceil(2*A162784(n)/3)` -/
def P11659748057627942336.Spec : Prop :=
  ∀ n, P11659748057627942336.a n = A079314 n

end A079314

/-! ## A079314.P1768418792452130873

`A094388(A000120(n))`
-/

namespace A079314.P1768418792452130873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (A000120 n).toNat

end

end A079314.P1768418792452130873

namespace A079314

/-- `A094388(A000120(n))` -/
def P1768418792452130873.Spec : Prop :=
  ∀ n, P1768418792452130873.a n = A079314 n

end A079314

/-! ## A079314.P10831770079661640223

`A094388(A063787(n+1)-1)`
-/

namespace A079314.P10831770079661640223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (A063787 (n + 1) - 1).toNat

end

end A079314.P10831770079661640223

namespace A079314

/-- `A094388(A063787(n+1)-1)` -/
def P10831770079661640223.Spec : Prop :=
  ∀ n, P10831770079661640223.a n = A079314 n

end A079314

/-! ## A079314.P9757487072229167299

`A162784(n)+1-A079318(n)`
-/

namespace A079314.P9757487072229167299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 n + (1 - A079318 n)

end

end A079314.P9757487072229167299

namespace A079314

/-- `A162784(n)+1-A079318(n)` -/
def P9757487072229167299.Spec : Prop :=
  ∀ n, P9757487072229167299.a n = A079314 n

end A079314

/-! ## A079314.P9153906810711146611

`A125292(A001316(n))`
-/

namespace A079314.P9153906810711146611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (A001316 n).toNat

end

end A079314.P9153906810711146611

namespace A079314

/-- `A125292(A001316(n))` -/
def P9153906810711146611.Spec : Prop :=
  ∀ n, P9153906810711146611.a n = A079314 n

end A079314

/-! ## A079314.P9705875166821976912

`(A183061(n+1)+1)/2`
-/

namespace A079314.P9705875166821976912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183061 (n + 1) + 1 : ℚ) / 2

end

end A079314.P9705875166821976912

namespace A079314

/-- `(A183061(n+1)+1)/2` -/
def P9705875166821976912.Spec : Prop :=
  ∀ n, P9705875166821976912.a n = (A079314 n : ℚ)

end A079314

/-! ## A079314.P16728647119661475797

`ceil(Δ[A183060(n)/2])`
-/

namespace A079314.P16728647119661475797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183060 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A079314.P16728647119661475797

namespace A079314

/-- `ceil(Δ[A183060(n)/2])` -/
def P16728647119661475797.Spec : Prop :=
  ∀ n, P16728647119661475797.a n = A079314 n

end A079314

/-! ## A079314.P11969250556059798116

`A047235(a(and(n, n-1)))` with `a(0)=1`
-/

namespace A079314.P11969250556059798116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047235 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A079314.P11969250556059798116

namespace A079314

/-- `A047235(a(and(n, n-1)))` -/
def P11969250556059798116.Spec : Prop :=
  ∀ n, P11969250556059798116.a n = A079314 n

end A079314

/-! ## A079314.P17265886244169940136

`A003417(A162784(n))`
-/

namespace A079314.P17265886244169940136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A162784 n).toNat

end

end A079314.P17265886244169940136

namespace A079314

/-- `A003417(A162784(n))` -/
def P17265886244169940136.Spec : Prop :=
  ∀ n, P17265886244169940136.a n = A079314 n

end A079314

/-! ## A079314.P15674753900150244362

`A004523(A162784(n)+1)`
-/

namespace A079314.P15674753900150244362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A162784 n + 1).toNat

end

end A079314.P15674753900150244362

namespace A079314

/-- `A004523(A162784(n)+1)` -/
def P15674753900150244362.Spec : Prop :=
  ∀ n, P15674753900150244362.a n = A079314 n

end A079314

/-! ## A079314.P12453873506188734657

`A009947(A162784(n)+1)`
-/

namespace A079314.P12453873506188734657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A162784 n + 1).toNat

end

end A079314.P12453873506188734657

namespace A079314

/-- `A009947(A162784(n)+1)` -/
def P12453873506188734657.Spec : Prop :=
  ∀ n, P12453873506188734657.a n = A079314 n

end A079314

/-! ## A079314.P1226429928354780301

`A026183(A162784(2*n))`
-/

namespace A079314.P1226429928354780301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (A162784 (2 * n)).toNat

end

end A079314.P1226429928354780301

namespace A079314

/-- `A026183(A162784(2*n))` -/
def P1226429928354780301.Spec : Prop :=
  ∀ n, P1226429928354780301.a n = A079314 n

end A079314

/-! ## A079314.P6476054548978754179

`A352502(A140429(A000523(A001316(2*n))))`
-/

namespace A079314.P6476054548978754179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352502 (A140429 (A000523 (A001316 (2 * n)).toNat).toNat).toNat

end

end A079314.P6476054548978754179

namespace A079314

/-- `A352502(A140429(A000523(A001316(2*n))))` -/
def P6476054548978754179.Spec : Prop :=
  ∀ n, P6476054548978754179.a n = A079314 n

end A079314

/-! ## A079314.P6337619476695078498

`A268674(A176893(n))`
-/

namespace A079314.P6337619476695078498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A176893 n).toNat

end

end A079314.P6337619476695078498

namespace A079314

/-- `A268674(A176893(n))` -/
def P6337619476695078498.Spec : Prop :=
  ∀ n, P6337619476695078498.a n = A079314 n

end A079314

/-! ## A079314.P9120963694100191486

`A125292(A206424(A005836(n+1)))`
-/

namespace A079314.P9120963694100191486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (A206424 (A005836 (n + 1)).toNat).toNat

end

end A079314.P9120963694100191486

namespace A079314

/-- `A125292(A206424(A005836(n+1)))` -/
def P9120963694100191486.Spec : Prop :=
  ∀ n, P9120963694100191486.a n = A079314 n

end A079314

/-!
# A079315: Number of cells that change from OFF to ON at stage n of the cellular automaton described in A079317.

The programs for A079315, the canonical program `A079315.P17008954990513052788` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079315 has offset 0).

The definition of A079315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079315.P17008954990513052788

`∑[A151921(n)]-A147562(A004526(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079315

/-- `∑[A151921(n)]-A147562(A004526(n))` -/
def P17008954990513052788.Spec : Prop :=
  ∀ n, P17008954990513052788.a n = A079315 n

theorem P17008954990513052788.correct : P17008954990513052788.Spec := by
  intro n
  simp only [A079315]

end A079315

/-! ## A079315.P6275841943578959343

`A151886(∑[A057711(n)])`
-/

namespace A079315.P6275841943578959343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079315.P6275841943578959343

namespace A079315

/-- `A151886(∑[A057711(n)])` -/
def P6275841943578959343.Spec : Prop :=
  ∀ n, P6275841943578959343.a n = A079315 n

end A079315

/-! ## A079315.P14708262780276377444

`A151886(lt[A282295(n), 2])`
-/

namespace A079315.P14708262780276377444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282295 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A079315.P14708262780276377444

namespace A079315

/-- `A151886(lt[A282295(n), 2])` -/
def P14708262780276377444.Spec : Prop :=
  ∀ n, P14708262780276377444.a n = A079315 n

end A079315

/-! ## A079315.P6159489066772801917

`A151886(log2(A000010(4^n)))`
-/

namespace A079315.P6159489066772801917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 (SequenceMachineLib.roundAway (Real.logb 2 (A000010 (4 ^ n) : ℝ))).toNat

end

end A079315.P6159489066772801917

namespace A079315

/-- `A151886(log2(A000010(4^n)))` -/
def P6159489066772801917.Spec : Prop :=
  ∀ n, P6159489066772801917.a n = A079315 n

end A079315

/-! ## A079315.P5716697770067402131

`A151886(eq[0, Δ[A151905(3*n)]])`
-/

namespace A079315.P5716697770067402131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151905 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079315.P5716697770067402131

namespace A079315

/-- `A151886(eq[0, Δ[A151905(3*n)]])` -/
def P5716697770067402131.Spec : Prop :=
  ∀ n, P5716697770067402131.a n = A079315 n

end A079315

/-!
# A079316: Number of first-quadrant cells (including the two boundaries) that are ON at stage n of the cellular automaton described in A079317.

The programs for A079316, the canonical program `A079316.P891099002037030476` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079316 has offset 0).

The definition of A079316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079316.P891099002037030476

`A079314(n)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079316

/-- `A079314(n)+a(n-2)` -/
def P891099002037030476.Spec : Prop :=
  ∀ n, P891099002037030476.a n = A079316 n

theorem P891099002037030476.correct : P891099002037030476.Spec := by
  intro n
  simp only [A079316]

end A079316

/-! ## A079316.P6669144780738606967

`A151922(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A079316.P6669144780738606967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151922 n + (1 - a (n - 1))

end

end A079316.P6669144780738606967

namespace A079316

/-- `A151922(n)+1-a(n-1)` -/
def P6669144780738606967.Spec : Prop :=
  ∀ n, P6669144780738606967.a n = A079316 n

end A079316

/-! ## A079316.P14940672378147260608

`a(n-2)+2*A079318(n)` with `a(0)=1, a(1)=3`
-/

namespace A079316.P14940672378147260608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 2 * A079318 n

end

end A079316.P14940672378147260608

namespace A079316

/-- `a(n-2)+2*A079318(n)` -/
def P14940672378147260608.Spec : Prop :=
  ∀ n, P14940672378147260608.a n = A079316 n

end A079316

/-! ## A079316.P13478770938710673419

`ceil(∑[(A151921(n+1)/2+1)/2])`
-/

namespace A079316.P13478770938710673419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A151921 (n + 1) : ℚ) / 2 + 1) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A079316.P13478770938710673419

namespace A079316

/-- `ceil(∑[(A151921(n+1)/2+1)/2])` -/
def P13478770938710673419.Spec : Prop :=
  ∀ n, P13478770938710673419.a n = A079316 n

end A079316

/-! ## A079316.P2817075454976106604

`A110657(A079317(n))+ceil(n/2)`
-/

namespace A079316.P2817075454976106604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A079317 n).toNat + ⌈(n : ℚ) / 2⌉

end

end A079316.P2817075454976106604

namespace A079316

/-- `A110657(A079317(n))+ceil(n/2)` -/
def P2817075454976106604.Spec : Prop :=
  ∀ n, P2817075454976106604.a n = A079316 n

end A079316

/-! ## A079316.P4404041115562896284

`A008619(A008619(A079317(n))+n)`
-/

namespace A079316.P4404041115562896284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (A079317 n).toNat + (n : ℤ)).toNat

end

end A079316.P4404041115562896284

namespace A079316

/-- `A008619(A008619(A079317(n))+n)` -/
def P4404041115562896284.Spec : Prop :=
  ∀ n, P4404041115562896284.a n = A079316 n

end A079316

/-! ## A079316.P1631248176248801571

`A008621(A079317(n)+2*n+1)`
-/

namespace A079316.P1631248176248801571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A079317 n + (2 * n + 1 : ℤ)).toNat

end

end A079316.P1631248176248801571

namespace A079316

/-- `A008621(A079317(n)+2*n+1)` -/
def P1631248176248801571.Spec : Prop :=
  ∀ n, P1631248176248801571.a n = A079316 n

end A079316

/-! ## A079316.P5317279099158416537

`A008624(A079317(n)+2*n+1)`
-/

namespace A079316.P5317279099158416537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A079317 n + (2 * n + 1 : ℤ)).toNat

end

end A079316.P5317279099158416537

namespace A079316

/-- `A008624(A079317(n)+2*n+1)` -/
def P5317279099158416537.Spec : Prop :=
  ∀ n, P5317279099158416537.a n = A079316 n

end A079316

/-! ## A079316.P16428660980189823361

`A110655(A079317(n)+2*(n+1))`
-/

namespace A079316.P16428660980189823361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A079317 n + (2 * (n + 1) : ℤ)).toNat

end

end A079316.P16428660980189823361

namespace A079316

/-- `A110655(A079317(n)+2*(n+1))` -/
def P16428660980189823361.Spec : Prop :=
  ∀ n, P16428660980189823361.a n = A079316 n

end A079316

/-! ## A079316.P9181433612716107105

`A002265(A079317(n)+2*(n+3))`
-/

namespace A079316.P9181433612716107105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A079317 n + (2 * (n + 3) : ℤ)).toNat

end

end A079316.P9181433612716107105

namespace A079316

/-- `A002265(A079317(n)+2*(n+3))` -/
def P9181433612716107105.Spec : Prop :=
  ∀ n, P9181433612716107105.a n = A079316 n

end A079316

/-!
# A079317: Number of ON cells after n generations of cellular automaton on square grid in which cells which share exactly one edge with an ON cell change their state.

The programs for A079317, the canonical program `A079317.P17612360631527221144` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079317 has offset 0).

The definition of A079317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079317.P3950283357385519186

`A147562(n+1)+1-a(n-1)` with `a(0)=1`
-/

namespace A079317.P3950283357385519186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147562 (n + 1) + (1 - a (n - 1))

end

end A079317.P3950283357385519186

namespace A079317

/-- `A147562(n+1)+1-a(n-1)` -/
def P3950283357385519186.Spec : Prop :=
  ∀ n, P3950283357385519186.a n = A079317 n

end A079317

/-! ## A079317.P17612360631527221144

`1-(a(n-1)-∑[A147582(n+1)])` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079317

/-- `1-(a(n-1)-∑[A147582(n+1)])` -/
def P17612360631527221144.Spec : Prop :=
  ∀ n, P17612360631527221144.a n = A079317 n

theorem P17612360631527221144.correct : P17612360631527221144.Spec := by
  intro n
  simp only [A079317]

end A079317

/-! ## A079317.P7141268915261084616

`A273409(n)-∑[∑[A151921(n)]]`
-/

namespace A079317.P7141268915261084616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273409 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079317.P7141268915261084616

namespace A079317

/-- `A273409(n)-∑[∑[A151921(n)]]` -/
def P7141268915261084616.Spec : Prop :=
  ∀ n, P7141268915261084616.a n = A079317 n

end A079317

/-! ## A079317.P8195845183703438512

`∑[A151921(n+1)]`
-/

namespace A079317.P8195845183703438512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079317.P8195845183703438512

namespace A079317

/-- `∑[A151921(n+1)]` -/
def P8195845183703438512.Spec : Prop :=
  ∀ n, P8195845183703438512.a n = A079317 n

end A079317

/-!
# A079318: a(0) = 1; for n > 0, a(n) = (3^(A000120(n)-1) + 1)/2.

The programs for A079318, the canonical program `A079318.P1413714621886899686` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079318 has offset 0).

The definition of A079318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079318.P15068507624560205253

`3*a(and(n, n-1))-1-char[2^n]` with `a(0)=1`
-/

namespace A079318.P15068507624560205253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A079318.P15068507624560205253

namespace A079318

/-- `3*a(and(n, n-1))-1-char[2^n]` -/
def P15068507624560205253.Spec : Prop :=
  ∀ n, P15068507624560205253.a n = A079318 n

end A079318

/-! ## A079318.P1413714621886899686

`ceil(A162784(n)/3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079318

/-- `ceil(A162784(n)/3)` -/
def P1413714621886899686.Spec : Prop :=
  ∀ n, P1413714621886899686.a n = A079318 n

theorem P1413714621886899686.correct : P1413714621886899686.Spec := by
  intro n
  simp only [A079318]

end A079318

/-! ## A079318.P12062755611069982513

`ceil(A048883(n)/6)`
-/

namespace A079318.P12062755611069982513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048883 n : ℚ) / 6⌉

end

end A079318.P12062755611069982513

namespace A079318

/-- `ceil(A048883(n)/6)` -/
def P12062755611069982513.Spec : Prop :=
  ∀ n, P12062755611069982513.a n = A079318 n

end A079318

/-! ## A079318.P14094468636855065951

`ceil(A151712(n)/6)`
-/

namespace A079318.P14094468636855065951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151712 n : ℚ) / 6⌉

end

end A079318.P14094468636855065951

namespace A079318

/-- `ceil(A151712(n)/6)` -/
def P14094468636855065951.Spec : Prop :=
  ∀ n, P14094468636855065951.a n = A079318 n

end A079318

/-! ## A079318.P9117443430344987747

`A162784(and(n, n-1))`
-/

namespace A079318.P9117443430344987747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A079318.P9117443430344987747

namespace A079318

/-- `A162784(and(n, n-1))` -/
def P9117443430344987747.Spec : Prop :=
  ∀ n, P9117443430344987747.a n = A079318 n

end A079318

/-! ## A079318.P2737636724482182469

`ceil(Δ[A151917(n)/4])`
-/

namespace A079318.P2737636724482182469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151917 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A079318.P2737636724482182469

namespace A079318

/-- `ceil(Δ[A151917(n)/4])` -/
def P2737636724482182469.Spec : Prop :=
  ∀ n, P2737636724482182469.a n = A079318 n

end A079318

/-! ## A079318.P5683597867203910569

`ceil(Δ[A147562(n)/8])`
-/

namespace A079318.P5683597867203910569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147562 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A079318.P5683597867203910569

namespace A079318

/-- `ceil(Δ[A147562(n)/8])` -/
def P5683597867203910569.Spec : Prop :=
  ∀ n, P5683597867203910569.a n = A079318 n

end A079318

/-! ## A079318.P4381512260163664892

`ceil(A147582(n+1)/8)`
-/

namespace A079318.P4381512260163664892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A147582 (n + 1) : ℚ) / 8⌉

end

end A079318.P4381512260163664892

namespace A079318

/-- `ceil(A147582(n+1)/8)` -/
def P4381512260163664892.Spec : Prop :=
  ∀ n, P4381512260163664892.a n = A079318 n

end A079318

/-! ## A079318.P6762623341973813134

`ceil(3^A000120(n)/6)`
-/

namespace A079318.P6762623341973813134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ (A000120 n : ℤ) / 6⌉

end

end A079318.P6762623341973813134

namespace A079318

/-- `ceil(3^A000120(n)/6)` -/
def P6762623341973813134.Spec : Prop :=
  ∀ n, P6762623341973813134.a n = A079318 n

end A079318

/-! ## A079318.P5170947214655603194

`ceil(A161411(n+1)/24)`
-/

namespace A079318.P5170947214655603194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161411 (n + 1) : ℚ) / 24⌉

end

end A079318.P5170947214655603194

namespace A079318

/-- `ceil(A161411(n+1)/24)` -/
def P5170947214655603194.Spec : Prop :=
  ∀ n, P5170947214655603194.a n = A079318 n

end A079318

/-! ## A079318.P5497889211397391177

`A007729(A088512(n))`
-/

namespace A079318.P5497889211397391177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 (A088512 n).toNat

end

end A079318.P5497889211397391177

namespace A079318

/-- `A007729(A088512(n))` -/
def P5497889211397391177.Spec : Prop :=
  ∀ n, P5497889211397391177.a n = A079318 n

end A079318

/-! ## A079318.P13401689452986103442

`A162784(A257697(n))`
-/

namespace A079318.P13401689452986103442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (A257697 n).toNat

end

end A079318.P13401689452986103442

namespace A079318

/-- `A162784(A257697(n))` -/
def P13401689452986103442.Spec : Prop :=
  ∀ n, P13401689452986103442.a n = A079318 n

end A079318

/-! ## A079318.P12947213451144861280

`A236313(A151787(n+1))`
-/

namespace A079318.P12947213451144861280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (A151787 (n + 1)).toNat

end

end A079318.P12947213451144861280

namespace A079318

/-- `A236313(A151787(n+1))` -/
def P12947213451144861280.Spec : Prop :=
  ∀ n, P12947213451144861280.a n = A079318 n

end A079318

/-! ## A079318.P13297900678656857082

`A079314(n)/A048896(A048896(2*n))`
-/

namespace A079318.P13297900678656857082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079314 n : ℚ) / (A048896 (A048896 (2 * n)).toNat : ℚ)

end

end A079318.P13297900678656857082

namespace A079318

/-- `A079314(n)/A048896(A048896(2*n))` -/
def P13297900678656857082.Spec : Prop :=
  ∀ n, P13297900678656857082.a n = (A079318 n : ℚ)

end A079318

/-! ## A079318.P14808932000818165089

`A162784(2*n+1)-A147582(n+1)`
-/

namespace A079318.P14808932000818165089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (2 * n + 1) - A147582 (n + 1)

end

end A079318.P14808932000818165089

namespace A079318

/-- `A162784(2*n+1)-A147582(n+1)` -/
def P14808932000818165089.Spec : Prop :=
  ∀ n, P14808932000818165089.a n = A079318 n

end A079318

/-! ## A079318.P15726542417186110072

`A079314(A160723(n+1))/2`
-/

namespace A079318.P15726542417186110072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079314 (A160723 (n + 1)).toNat : ℚ) / 2

end

end A079318.P15726542417186110072

namespace A079318

/-- `A079314(A160723(n+1))/2` -/
def P15726542417186110072.Spec : Prop :=
  ∀ n, P15726542417186110072.a n = (A079318 n : ℚ)

end A079318

/-! ## A079318.P12574732045792570401

`A079314(A256251(n))/2`
-/

namespace A079318.P12574732045792570401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079314 (A256251 n).toNat : ℚ) / 2

end

end A079318.P12574732045792570401

namespace A079318

/-- `A079314(A256251(n))/2` -/
def P12574732045792570401.Spec : Prop :=
  ∀ n, P12574732045792570401.a n = (A079318 n : ℚ)

end A079318

/-! ## A079318.P3249767700660806529

`A162784(2*n+1)-A079315(2*n+1)`
-/

namespace A079318.P3249767700660806529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (2 * n + 1) - A079315 (2 * n + 1)

end

end A079318.P3249767700660806529

namespace A079318

/-- `A162784(2*n+1)-A079315(2*n+1)` -/
def P3249767700660806529.Spec : Prop :=
  ∀ n, P3249767700660806529.a n = A079318 n

end A079318

/-! ## A079318.P12482321611028742192

`A004525(A079314(n))`
-/

namespace A079318.P12482321611028742192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A079314 n).toNat

end

end A079318.P12482321611028742192

namespace A079318

/-- `A004525(A079314(n))` -/
def P12482321611028742192.Spec : Prop :=
  ∀ n, P12482321611028742192.a n = A079318 n

end A079318

/-!
# A079319: a(0) = 1; for n >= 1, a(n) = 4*a(n-1) - (2^n - 1).

The programs for A079319, the canonical program `A079319.P8855879071629460173` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079319 has offset 0).

The definition of A079319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079319.P8855879071629460173

`2^n+(4^n-1)/3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079319

/-- `2^n+(4^n-1)/3` -/
def P8855879071629460173.Spec : Prop :=
  ∀ n, P8855879071629460173.a n = (A079319 n : ℚ)

end A079319

/-! ## A079319.P11766885785775292852

`∑[ceil(sqrt(a(n-1))*2^n)]` with `a(0)=1`
-/

namespace A079319.P11766885785775292852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈Real.sqrt (f1 (n - 1) : ℝ) * (2 ^ n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079319.P11766885785775292852

namespace A079319

/-- `∑[ceil(sqrt(a(n-1))*2^n)]` -/
def P11766885785775292852.Spec : Prop :=
  ∀ n, P11766885785775292852.a n = A079319 n

end A079319

/-! ## A079319.P16939408385998188359

`∑[round(sqrt(a(n-1))*2^n)]` with `a(0)=1`
-/

namespace A079319.P16939408385998188359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n - 1) : ℝ) * (2 ^ n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079319.P16939408385998188359

namespace A079319

/-- `∑[round(sqrt(a(n-1))*2^n)]` -/
def P16939408385998188359.Spec : Prop :=
  ∀ n, P16939408385998188359.a n = A079319 n

end A079319

/-! ## A079319.P10514836105936315961

`∑[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A079319.P10514836105936315961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079319.P10514836105936315961

namespace A079319

/-- `∑[2*(3*a(n-1)-4*a(n-2))]` -/
def P10514836105936315961.Spec : Prop :=
  ∀ n, P10514836105936315961.a n = A079319 n

end A079319

/-! ## A079319.P9965491888174136740

`∑[A113979(2*n)]`
-/

namespace A079319.P9965491888174136740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079319.P9965491888174136740

namespace A079319

/-- `∑[A113979(2*n)]` -/
def P9965491888174136740.Spec : Prop :=
  ∀ n, P9965491888174136740.a n = A079319 n

end A079319

/-! ## A079319.P6631050993440222555

`(A239679(n)-4)/3`
-/

namespace A079319.P6631050993440222555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239679 n - 4 : ℚ) / 3

end

end A079319.P6631050993440222555

namespace A079319

/-- `(A239679(n)-4)/3` -/
def P6631050993440222555.Spec : Prop :=
  ∀ n, P6631050993440222555.a n = (A079319 n : ℚ)

end A079319

/-! ## A079319.P14733852358399659302

`(∑[A343175(n)]-n)/2`
-/

namespace A079319.P14733852358399659302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A079319.P14733852358399659302

namespace A079319

/-- `(∑[A343175(n)]-n)/2` -/
def P14733852358399659302.Spec : Prop :=
  ∀ n, P14733852358399659302.a n = (A079319 n : ℚ)

end A079319

/-! ## A079319.P7596190997313934977

`∑[floor((A000051(n)/2)²)]`
-/

namespace A079319.P7596190997313934977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000051 n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079319.P7596190997313934977

namespace A079319

/-- `∑[floor((A000051(n)/2)²)]` -/
def P7596190997313934977.Spec : Prop :=
  ∀ n, P7596190997313934977.a n = A079319 n

end A079319

/-! ## A079319.P2677158013950996116

`A170938(n)%A321358(n)`
-/

namespace A079319.P2677158013950996116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170938 n) (A321358 n)

end

end A079319.P2677158013950996116

namespace A079319

/-- `A170938(n)%A321358(n)` -/
def P2677158013950996116.Spec : Prop :=
  ∀ n, P2677158013950996116.a n = A079319 n

end A079319

/-! ## A079319.P12912748865214599882

`A330246(n)%A171499(n)`
-/

namespace A079319.P12912748865214599882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330246 n) (A171499 n)

end

end A079319.P12912748865214599882

namespace A079319

/-- `A330246(n)%A171499(n)` -/
def P12912748865214599882.Spec : Prop :=
  ∀ n, P12912748865214599882.a n = A079319 n

end A079319

/-! ## A079319.P4642558122365145348

`A164051(n+1)%A199210(n)`
-/

namespace A079319.P4642558122365145348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164051 (n + 1)) (A199210 n)

end

end A079319.P4642558122365145348

namespace A079319

/-- `A164051(n+1)%A199210(n)` -/
def P4642558122365145348.Spec : Prop :=
  ∀ n, P4642558122365145348.a n = A079319 n

end A079319

/-! ## A079319.P15900550864933545204

`∑[A175381(n²+1)]`
-/

namespace A079319.P15900550864933545204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079319.P15900550864933545204

namespace A079319

/-- `∑[A175381(n²+1)]` -/
def P15900550864933545204.Spec : Prop :=
  ∀ n, P15900550864933545204.a n = A079319 n

end A079319

/-!
# A079320: CATS sequence: cube-add-then-sort variation of RATS (reverse, add then sort) sequence.

The programs for A079320, there is no canonical definition to state claims against.
-/

/-! ## A079320.P3960825413540091460

`A004185((n+2)^3+n+2)`
-/

namespace A079320.P3960825413540091460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((n + 2) ^ 3 + (n + 2))

end

end A079320.P3960825413540091460

/-! ## A079320.P17605805432552247063

`A049347(3*n+2)+A004185(A034262(n+2))`
-/

namespace A079320.P17605805432552247063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 2) + A004185 (A034262 (n + 2)).toNat

end

end A079320.P17605805432552247063

/-!
# A079321: 

The programs for A079321, there is no canonical definition to state claims against.
-/

/-! ## A079321.P9384732651430694961

`A002109(n+4)+1`
-/

namespace A079321.P9384732651430694961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002109 (n + 4) + 1

end

end A079321.P9384732651430694961

/-!
# A079322: Composite numbers of the form 1^1 * 2^2 * 3^3 * 4^4 * ... * n^n + 11.

The programs for A079322, there is no canonical definition to state claims against.
-/

/-! ## A079322.P1488478660674614509

`∏[(n+1)^(n+1)]+11`
-/

namespace A079322.P1488478660674614509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 11

end

end A079322.P1488478660674614509

/-!
# A079324: k such that 2kp+1 is the first factor of a nonprime Mersenne number M(p) = 2^p - 1.

The programs for A079324, there is no canonical definition to state claims against.
-/

/-! ## A079324.P7387092229453497371

`A186283(A054723(n+1))/2`
-/

namespace A079324.P7387092229453497371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (A054723 (n + 1)).toNat : ℚ) / 2

end

end A079324.P7387092229453497371

/-! ## A079324.P11161619049967044414

`A186283(p?[A045762(n+1)])/2`
-/

namespace A079324.P11161619049967044414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A079324.P11161619049967044414

/-! ## A079324.P4882231841669627812

`A186283(p?[A143584(n+1)])/2`
-/

namespace A079324.P4882231841669627812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143584 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A079324.P4882231841669627812

/-! ## A079324.P9915364363466581365

`A186283(p?[n%(A127587(n)+n)])/2`
-/

namespace A079324.P9915364363466581365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A127587 n + (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A079324.P9915364363466581365

/-! ## A079324.P5802089157012771668

`A186283(p?[xor(n, A332219(n+1))+1])/2`
-/

namespace A079324.P5802089157012771668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A332219 (n + 1)) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A079324.P5802089157012771668

/-!
# A079325: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is a member of A079000".

The programs for A079325, there is no canonical definition to state claims against.
-/

/-! ## A079325.P11373728715404886203

`eq[A228351(n+1), A284468(A283522(n+1)+2)]+1`
-/

namespace A079325.P11373728715404886203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (A283522 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A079325.P11373728715404886203

/-!
# A079326: a(n) = the largest number m such that if m monominoes are removed from an n X n square then an L-tromino must remain.

The programs for A079326, the canonical program `A079326.P427897942614432233` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079326 has offset 2).

The definition of A079326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079326.P427897942614432233

`floor((n+3)*or(1, n)/2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079326

/-- `floor((n+3)*or(1, n)/2)` -/
def P427897942614432233.Spec : Prop :=
  ∀ n, P427897942614432233.a n = A079326 (n + 2)

theorem P427897942614432233.correct : P427897942614432233.Spec := by
  intro n
  simp only [A079326, Nat.add_sub_cancel]

end A079326

/-! ## A079326.P14929943215276103044

`record[or(2, n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A079326.P14929943215276103044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A079326.P14929943215276103044

namespace A079326

/-- `record[or(2, n)]+a(n-2)` -/
def P14929943215276103044.Spec : Prop :=
  ∀ n, (P14929943215276103044.a n : ℤ) = A079326 (n + 2)

end A079326

/-! ## A079326.P11437394399634513028

`record[xor(2, n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A079326.P11437394399634513028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A079326.P11437394399634513028

namespace A079326

/-- `record[xor(2, n)]+a(n-2)` -/
def P11437394399634513028.Spec : Prop :=
  ∀ n, (P11437394399634513028.a n : ℤ) = A079326 (n + 2)

end A079326

/-! ## A079326.P15803594220278922916

`∑[lcm(3, ∑[gcd(2, n)])/3]-1`
-/

namespace A079326.P15803594220278922916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A079326.P15803594220278922916

namespace A079326

/-- `∑[lcm(3, ∑[gcd(2, n)])/3]-1` -/
def P15803594220278922916.Spec : Prop :=
  ∀ n, P15803594220278922916.a n = (A079326 (n + 2) : ℚ)

end A079326

/-! ## A079326.P11988967303330739711

`((n+2)*or(1, n)+n)/2`
-/

namespace A079326.P11988967303330739711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.lor 1 n + n : ℚ) / 2

end

end A079326.P11988967303330739711

namespace A079326

/-- `((n+2)*or(1, n)+n)/2` -/
def P11988967303330739711.Spec : Prop :=
  ∀ n, P11988967303330739711.a n = (A079326 (n + 2) : ℚ)

end A079326

/-! ## A079326.P2777705763222921351

`(n+2)*∑[char[2*n]]-1`
-/

namespace A079326.P2777705763222921351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A079326.P2777705763222921351

namespace A079326

/-- `(n+2)*∑[char[2*n]]-1` -/
def P2777705763222921351.Spec : Prop :=
  ∀ n, P2777705763222921351.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P15792566561727635329

`∑[lcm(2, (n+1)²)-1]/(n+1)`
-/

namespace A079326.P15792566561727635329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 1) ^ 2) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A079326.P15792566561727635329

namespace A079326

/-- `∑[lcm(2, (n+1)²)-1]/(n+1)` -/
def P15792566561727635329.Spec : Prop :=
  ∀ n, P15792566561727635329.a n = (A079326 (n + 2) : ℚ)

end A079326

/-! ## A079326.P6362928163063053849

`floor((n+3)*(n-a(n-1)/(n+2)))` with `a(0)=1`
-/

namespace A079326.P6362928163063053849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 3 : ℚ) * ((n : ℚ) - (a (n - 1) : ℚ) / (n + 2 : ℚ))⌋

end

end A079326.P6362928163063053849

namespace A079326

/-- `floor((n+3)*(n-a(n-1)/(n+2)))` -/
def P6362928163063053849.Spec : Prop :=
  ∀ n, P6362928163063053849.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P9248471234129486537

`A204557(n+1)/(n+1)`
-/

namespace A079326.P9248471234129486537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204557 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A079326.P9248471234129486537

namespace A079326

/-- `A204557(n+1)/(n+1)` -/
def P9248471234129486537.Spec : Prop :=
  ∀ n, P9248471234129486537.a n = (A079326 (n + 2) : ℚ)

end A079326

/-! ## A079326.P3949632565542333938

`floor(A093005(n+1)+n/2)`
-/

namespace A079326.P3949632565542333938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093005 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A079326.P3949632565542333938

namespace A079326

/-- `floor(A093005(n+1)+n/2)` -/
def P3949632565542333938.Spec : Prop :=
  ∀ n, P3949632565542333938.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P8374322897985122086

`∑[A085046(n+1)%(2*n+1)+1]`
-/

namespace A079326.P8374322897985122086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085046 (n + 1)) (2 * n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079326.P8374322897985122086

namespace A079326

/-- `∑[A085046(n+1)%(2*n+1)+1]` -/
def P8374322897985122086.Spec : Prop :=
  ∀ n, P8374322897985122086.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P5320572066263850208

`round(((n+1)*A109613(n)+2*n)/2)`
-/

namespace A079326.P5320572066263850208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * A109613 n + (2 * n : ℤ) : ℚ) / 2)

end

end A079326.P5320572066263850208

namespace A079326

/-- `round(((n+1)*A109613(n)+2*n)/2)` -/
def P5320572066263850208.Spec : Prop :=
  ∀ n, P5320572066263850208.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P9849326885045367141

`∑[A280193(n)+A266286(n)]`
-/

namespace A079326.P9849326885045367141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A266286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079326.P9849326885045367141

namespace A079326

/-- `∑[A280193(n)+A266286(n)]` -/
def P9849326885045367141.Spec : Prop :=
  ∀ n, P9849326885045367141.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P15370620202148279860

`abs(1-A093353(n+1))`
-/

namespace A079326.P15370620202148279860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A093353 (n + 1)|

end

end A079326.P15370620202148279860

namespace A079326

/-- `abs(1-A093353(n+1))` -/
def P15370620202148279860.Spec : Prop :=
  ∀ n, P15370620202148279860.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P6563635696035901942

`(A289870(n+1)+n)/2`
-/

namespace A079326.P6563635696035901942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289870 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A079326.P6563635696035901942

namespace A079326

/-- `(A289870(n+1)+n)/2` -/
def P6563635696035901942.Spec : Prop :=
  ∀ n, P6563635696035901942.a n = (A079326 (n + 2) : ℚ)

end A079326

/-! ## A079326.P3965141645020315226

`abs(A265225(n+1)-3-n)`
-/

namespace A079326.P3965141645020315226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A265225 (n + 1) - 3 - (n : ℤ)|

end

end A079326.P3965141645020315226

namespace A079326

/-- `abs(A265225(n+1)-3-n)` -/
def P3965141645020315226.Spec : Prop :=
  ∀ n, P3965141645020315226.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P12884180702686139227

`A069759(n+1)%A093353(n+1)`
-/

namespace A079326.P12884180702686139227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069759 (n + 1)) (A093353 (n + 1))

end

end A079326.P12884180702686139227

namespace A079326

/-- `A069759(n+1)%A093353(n+1)` -/
def P12884180702686139227.Spec : Prop :=
  ∀ n, P12884180702686139227.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P8464155184228825811

`abs((A002265(2*n)+1)*(n+2)-1)`
-/

namespace A079326.P8464155184228825811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002265 (2 * n) + 1) * (n + 2 : ℤ) - 1|

end

end A079326.P8464155184228825811

namespace A079326

/-- `abs((A002265(2*n)+1)*(n+2)-1)` -/
def P8464155184228825811.Spec : Prop :=
  ∀ n, P8464155184228825811.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P1362630318623986437

`A340448(A042964(n+1))`
-/

namespace A079326.P1362630318623986437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340448 (A042964 (n + 1)).toNat

end

end A079326.P1362630318623986437

namespace A079326

/-- `A340448(A042964(n+1))` -/
def P1362630318623986437.Spec : Prop :=
  ∀ n, P1362630318623986437.a n = A079326 (n + 2)

end A079326

/-! ## A079326.P8289364268341008512

`A340448(A053438(n+1))`
-/

namespace A079326.P8289364268341008512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340448 (A053438 (n + 1)).toNat

end

end A079326.P8289364268341008512

namespace A079326

/-- `A340448(A053438(n+1))` -/
def P8289364268341008512.Spec : Prop :=
  ∀ n, P8289364268341008512.a n = A079326 (n + 2)

end A079326

/-!
# A079327: Smallest nonnegative integer x such that b^(n-1) == b^x (mod n) for all b that are 0 < b < n.

The programs for A079327, there is no canonical definition to state claims against.
-/

/-! ## A079327.P6306299136458562631

`A330342(A005451(n+1))`
-/

namespace A079327.P6306299136458562631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330342 (A005451 (n + 1)).toNat

end

end A079327.P6306299136458562631

/-! ## A079327.P1450197432708225775

`A330342(1-A166260(n+1)+n)`
-/

namespace A079327.P1450197432708225775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330342 (1 - A166260 (n + 1) + (n : ℤ)).toNat

end

end A079327.P1450197432708225775

/-! ## A079327.P1395864571900120929

`A005171(n+1)*A330342(n+1)`
-/

namespace A079327.P1395864571900120929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A330342 (n + 1)

end

end A079327.P1395864571900120929

/-! ## A079327.P7230395357812183157

`A066247(n+1)*A330342(n+1)`
-/

namespace A079327.P7230395357812183157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A330342 (n + 1)

end

end A079327.P7230395357812183157

/-! ## A079327.P16865305063081070970

`A330342(n+1)%A117291(n+1)`
-/

namespace A079327.P16865305063081070970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330342 (n + 1)) (A117291 (n + 1))

end

end A079327.P16865305063081070970

/-! ## A079327.P12175641048817930702

`A330342(gcd(n+1, A014684(n+1)))`
-/

namespace A079327.P12175641048817930702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330342 (Int.gcd (n + 1 : ℤ) (A014684 (n + 1)))

end

end A079327.P12175641048817930702

/-! ## A079327.P12018956432829338100

`lcm(A055976(n+1), A330342(n+1))`
-/

namespace A079327.P12018956432829338100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055976 (n + 1)) (A330342 (n + 1))

end

end A079327.P12018956432829338100

/-! ## A079327.P11920133272821410750

`xor(A166260(n+1), A330342(n+1))`
-/

namespace A079327.P11920133272821410750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166260 (n + 1)) (A330342 (n + 1))

end

end A079327.P11920133272821410750

/-! ## A079327.P12081410836985228751

`(A014684(n+1)-n)*A330342(n+1)`
-/

namespace A079327.P12081410836985228751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) - (n : ℤ)) * A330342 (n + 1)

end

end A079327.P12081410836985228751

/-! ## A079327.P18141792648942312063

`char[A018252(n+1)-1]*A330342(n+1)`
-/

namespace A079327.P18141792648942312063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A330342 (n + 1)

end

end A079327.P18141792648942312063

/-!
# A079328: Let f(n)=A001359(n) be the smaller member of the n-th pair of twin primes. Then a(n) is the average of f(n) and f(n+1).

The programs for A079328, the canonical program `A079328.P1735777223986173812` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079328 has offset 1).

The definition of A079328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079328.P1735777223986173812

`A074953(n+1)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079328

/-- `A074953(n+1)-1` -/
def P1735777223986173812.Spec : Prop :=
  ∀ n, P1735777223986173812.a n = A079328 (n + 1)

theorem P1735777223986173812.correct : P1735777223986173812.Spec := by
  intro n
  simp only [A079328, Nat.add_sub_cancel]

end A079328

/-! ## A079328.P10975885845938886194

`A079329(n+1)-2`
-/

namespace A079328.P10975885845938886194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079329 (n + 1) - 2

end

end A079328.P10975885845938886194

namespace A079328

/-- `A079329(n+1)-2` -/
def P10975885845938886194.Spec : Prop :=
  ∀ n, P10975885845938886194.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P2477549313883629354

`record[A074953(A324344(n))-1]`
-/

namespace A079328.P2477549313883629354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074953 (A324344 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079328.P2477549313883629354

namespace A079328

/-- `record[A074953(A324344(n))-1]` -/
def P2477549313883629354.Spec : Prop :=
  ∀ n, P2477549313883629354.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P16913300111055969440

`A001359(n+1)+A040040(n+2)-A040040(n+1)`
-/

namespace A079328.P16913300111055969440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A040040 (n + 2) - A040040 (n + 1))

end

end A079328.P16913300111055969440

namespace A079328

/-- `A001359(n+1)+A040040(n+2)-A040040(n+1)` -/
def P16913300111055969440.Spec : Prop :=
  ∀ n, P16913300111055969440.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P5540806807740037708

`floor(sinh(log(A096281(2*(n+1)))))`
-/

namespace A079328.P5540806807740037708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A096281 (2 * (n + 1)) : ℝ))⌋

end

end A079328.P5540806807740037708

namespace A079328

/-- `floor(sinh(log(A096281(2*(n+1)))))` -/
def P5540806807740037708.Spec : Prop :=
  ∀ n, P5540806807740037708.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P16382956863557676483

`A163656(Δ[n²])-ceil(sin(n)²)`
-/

namespace A079328.P16382956863557676483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A079328.P16382956863557676483

namespace A079328

/-- `A163656(Δ[n²])-ceil(sin(n)²)` -/
def P16382956863557676483.Spec : Prop :=
  ∀ n, P16382956863557676483.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P18336155321730238701

`A096281(2*n+2)/2-1`
-/

namespace A079328.P18336155321730238701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (2 * n + 2) : ℚ) / 2 - 1

end

end A079328.P18336155321730238701

namespace A079328

/-- `A096281(2*n+2)/2-1` -/
def P18336155321730238701.Spec : Prop :=
  ∀ n, P18336155321730238701.a n = (A079328 (n + 1) : ℚ)

end A079328

/-! ## A079328.P4644257722126903301

`A258972(n+1)+A001097(2*n+1)`
-/

namespace A079328.P4644257722126903301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258972 (n + 1) + A001097 (2 * n + 1)

end

end A079328.P4644257722126903301

namespace A079328

/-- `A258972(n+1)+A001097(2*n+1)` -/
def P4644257722126903301.Spec : Prop :=
  ∀ n, P4644257722126903301.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P8702078458805465619

`A256262(2*n+1)+A001097(2*n+1)`
-/

namespace A079328.P8702078458805465619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1) + A001097 (2 * n + 1)

end

end A079328.P8702078458805465619

namespace A079328

/-- `A256262(2*n+1)+A001097(2*n+1)` -/
def P8702078458805465619.Spec : Prop :=
  ∀ n, P8702078458805465619.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P1927601632646229424

`A023443(A074953(n+1))`
-/

namespace A079328.P1927601632646229424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074953 (n + 1)).toNat

end

end A079328.P1927601632646229424

namespace A079328

/-- `A023443(A074953(n+1))` -/
def P1927601632646229424.Spec : Prop :=
  ∀ n, P1927601632646229424.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P8728315330871462952

`A023444(A079329(n+1))`
-/

namespace A079328.P8728315330871462952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A079329 (n + 1)).toNat

end

end A079328.P8728315330871462952

namespace A079328

/-- `A023444(A079329(n+1))` -/
def P8728315330871462952.Spec : Prop :=
  ∀ n, P8728315330871462952.a n = A079328 (n + 1)

end A079328

/-! ## A079328.P556781033709198288

`A300293(A096281(2*(n+1))-1)`
-/

namespace A079328.P556781033709198288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A096281 (2 * (n + 1)) - 1).toNat

end

end A079328.P556781033709198288

namespace A079328

/-- `A300293(A096281(2*(n+1))-1)` -/
def P556781033709198288.Spec : Prop :=
  ∀ n, P556781033709198288.a n = A079328 (n + 1)

end A079328

/-!
# A079329: Let g(n)=A006512(n) be the larger member of the n-th pair of twin primes. Then a(n) is the average of g(n) and g(n+1).

The programs for A079329, the canonical program `A079329.P5277754755357971054` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079329 has offset 1).

The definition of A079329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079329.P5277754755357971054

`A074953(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079329

/-- `A074953(n+1)+1` -/
def P5277754755357971054.Spec : Prop :=
  ∀ n, P5277754755357971054.a n = A079329 (n + 1)

theorem P5277754755357971054.correct : P5277754755357971054.Spec := by
  intro n
  simp only [A079329, Nat.add_sub_cancel]

end A079329

/-! ## A079329.P2865980808862216176

`A079328(n+1)+2`
-/

namespace A079329.P2865980808862216176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079328 (n + 1) + 2

end

end A079329.P2865980808862216176

namespace A079329

/-- `A079328(n+1)+2` -/
def P2865980808862216176.Spec : Prop :=
  ∀ n, P2865980808862216176.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P18145905806530085599

`A002822(n+1)+A177139(n+1)+A040040(n+1)`
-/

namespace A079329.P18145905806530085599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + (A177139 (n + 1) + A040040 (n + 1))

end

end A079329.P18145905806530085599

namespace A079329

/-- `A002822(n+1)+A177139(n+1)+A040040(n+1)` -/
def P18145905806530085599.Spec : Prop :=
  ∀ n, P18145905806530085599.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P10563112692107259806

`A006512(n+1)+A040040(n+2)-A040040(n+1)`
-/

namespace A079329.P10563112692107259806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + (A040040 (n + 2) - A040040 (n + 1))

end

end A079329.P10563112692107259806

namespace A079329

/-- `A006512(n+1)+A040040(n+2)-A040040(n+1)` -/
def P10563112692107259806.Spec : Prop :=
  ∀ n, P10563112692107259806.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P1382863347425790396

`A163059(n+1)+A163059(n+2)-A016813(n)`
-/

namespace A079329.P1382863347425790396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163059 (n + 1) + (A163059 (n + 2) - A016813 n)

end

end A079329.P1382863347425790396

namespace A079329

/-- `A163059(n+1)+A163059(n+2)-A016813(n)` -/
def P1382863347425790396.Spec : Prop :=
  ∀ n, P1382863347425790396.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P5941628126565714642

`A001359(n+1)+A163059(n+2)-A163059(n+1)`
-/

namespace A079329.P5941628126565714642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A163059 (n + 2) - A163059 (n + 1))

end

end A079329.P5941628126565714642

namespace A079329

/-- `A001359(n+1)+A163059(n+2)-A163059(n+1)` -/
def P5941628126565714642.Spec : Prop :=
  ∀ n, P5941628126565714642.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P7903389154214477266

`ceil(A163656(Δ[n²])+acot(n))`
-/

namespace A079329.P7903389154214477266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

end

end A079329.P7903389154214477266

namespace A079329

/-- `ceil(A163656(Δ[n²])+acot(n))` -/
def P7903389154214477266.Spec : Prop :=
  ∀ n, P7903389154214477266.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P3115709381879773775

`ceil(cosh(log(A096281(2*(n+1)))))`
-/

namespace A079329.P3115709381879773775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A096281 (2 * (n + 1)) : ℝ))⌉

end

end A079329.P3115709381879773775

namespace A079329

/-- `ceil(cosh(log(A096281(2*(n+1)))))` -/
def P3115709381879773775.Spec : Prop :=
  ∀ n, P3115709381879773775.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P10873877604403585686

`A096281(2*n+2)/2+1`
-/

namespace A079329.P10873877604403585686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (2 * n + 2) : ℚ) / 2 + 1

end

end A079329.P10873877604403585686

namespace A079329

/-- `A096281(2*n+2)/2+1` -/
def P10873877604403585686.Spec : Prop :=
  ∀ n, P10873877604403585686.a n = (A079329 (n + 1) : ℚ)

end A079329

/-! ## A079329.P16508910019925090656

`A009056(A079328(n+1))`
-/

namespace A079329.P16508910019925090656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A079328 (n + 1)).toNat

end

end A079329.P16508910019925090656

namespace A079329

/-- `A009056(A079328(n+1))` -/
def P16508910019925090656.Spec : Prop :=
  ∀ n, P16508910019925090656.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P1378549264625255734

`A020725(A074953(n+1))`
-/

namespace A079329.P1378549264625255734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A074953 (n + 1)).toNat

end

end A079329.P1378549264625255734

namespace A079329

/-- `A020725(A074953(n+1))` -/
def P1378549264625255734.Spec : Prop :=
  ∀ n, P1378549264625255734.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P2196001623114285521

`A052938(A096281(2*(n+1)))`
-/

namespace A079329.P2196001623114285521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A096281 (2 * (n + 1))).toNat

end

end A079329.P2196001623114285521

namespace A079329

/-- `A052938(A096281(2*(n+1)))` -/
def P2196001623114285521.Spec : Prop :=
  ∀ n, P2196001623114285521.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P1658781535857742094

`A003602(A096281(2*(n+1))+1)`
-/

namespace A079329.P1658781535857742094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A096281 (2 * (n + 1)) + 1).toNat

end

end A079329.P1658781535857742094

namespace A079329

/-- `A003602(A096281(2*(n+1))+1)` -/
def P1658781535857742094.Spec : Prop :=
  ∀ n, P1658781535857742094.a n = A079329 (n + 1)

end A079329

/-! ## A079329.P1111642912405317748

`A300293(A096281(2*(n+1))+2)`
-/

namespace A079329.P1111642912405317748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A096281 (2 * (n + 1)) + 2).toNat

end

end A079329.P1111642912405317748

namespace A079329

/-- `A300293(A096281(2*(n+1))+2)` -/
def P1111642912405317748.Spec : Prop :=
  ∀ n, P1111642912405317748.a n = A079329 (n + 1)

end A079329

/-!
# A079330: Numerators of coefficients of odd powers of 1/q in the solution series for tan(x)/x=1.

The programs for A079330, there is no canonical definition to state claims against.
-/

/-! ## A079330.P1391446532531863895

`lcm(3, A059367(n))/3`
-/

namespace A079330.P1391446532531863895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A059367 n) : ℚ) / 3

end

end A079330.P1391446532531863895

/-! ## A079330.P8862013374574338634

`A059367(n)/∑[A292496(n)]`
-/

namespace A079330.P8862013374574338634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292496 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059367 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A079330.P8862013374574338634

/-!
# A079332: Values of n at which successive maxima of tan(n)/n occur.

The programs for A079332, there is no canonical definition to state claims against.
-/

/-! ## A079332.P18181040287284554580

`A249836(comp[or(n, a(n-1))])` with `a(0)=8, a(1)=0`
-/

namespace A079332.P18181040287284554580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 0] fun n f1 =>
  Nat.lor n (f1 (n - 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249836 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079332.P18181040287284554580

/-!
# A079334: Numbers k such that k divides tau(k) and k+1 divides tau(k+1), where tau(k)=A000594(k) is Ramanujan's tau function; i.e., k and k+1 are in A063938.

The programs for A079334, there is no canonical definition to state claims against.
-/

/-! ## A079334.P15734350547718055985

`∩[A063938(n+1)-1, A063938(n+1)]`
-/

namespace A079334.P15734350547718055985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079334.P15734350547718055985

/-! ## A079334.P16715939453463227439

`A063938(eq[1, A063938(n+2)-A063938(n+1)]+1)`
-/

namespace A079334.P16715939453463227439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 2) - A063938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079334.P16715939453463227439

/-! ## A079334.P864117763948932545

`∩[eq[0, A273650(n+1)], A063938(n+1)]`
-/

namespace A079334.P864117763948932545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A079334.P864117763948932545

/-! ## A079334.P17469980047704216085

`∩[A063938(n+1), A023443(A063938(n+1))]`
-/

namespace A079334.P17469980047704216085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063938 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079334.P17469980047704216085

/-! ## A079334.P2793334146057577625

`eq[A259823(A273650(n+2)), A273650(n+1)]+1`
-/

namespace A079334.P2793334146057577625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 (A273650 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A079334.P2793334146057577625

/-!
# A079335: Positions of 1 in the repetition-resistant sequence A079101.

The programs for A079335, there is no canonical definition to state claims against.
-/

/-! ## A079335.P17811816233860188334

`filter[n+1, A079101(#)]`
-/

namespace A079335.P17811816233860188334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079101 (f1 j) = 1) n)

end

end A079335.P17811816233860188334

/-! ## A079335.P6726950621887583490

`lt[0, A079101(n+1)]+1`
-/

namespace A079335.P6726950621887583490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079335.P6726950621887583490

/-! ## A079335.P302363401251311177

`eq[1, A079101(n+2)]+2`
-/

namespace A079335.P302363401251311177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A079335.P302363401251311177

/-! ## A079335.P3787820125417561777

`lt[0, A079101(A028310(n))]`
-/

namespace A079335.P3787820125417561777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079335.P3787820125417561777

/-! ## A079335.P3591930187091448985

`A020725(lt[0, A079101(n+1)])`
-/

namespace A079335.P3591930187091448985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079335.P3591930187091448985

/-! ## A079335.P7305672607372506833

`A020725(eq[1, A079101(n+1)])`
-/

namespace A079335.P7305672607372506833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079335.P7305672607372506833

/-! ## A079335.P3103463643825602961

`eq[1, A079101(A000007(n)+n)]`
-/

namespace A079335.P3103463643825602961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079335.P3103463643825602961

/-! ## A079335.P4637403282597942223

`eq[1, A079101(A065033(2*n))]`
-/

namespace A079335.P4637403282597942223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079335.P4637403282597942223

/-! ## A079335.P693465460427178099

`A058933(p?[A000040(n+1)*A079101(n+1)])`
-/

namespace A079335.P693465460427178099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A079101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079335.P693465460427178099

/-!
# A079336: A repetition-resistant sequence.

The programs for A079336, there is no canonical definition to state claims against.
-/

/-! ## A079336.P3204063228279109913

`char[A079338(n+1)-1]`
-/

namespace A079336.P3204063228279109913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079338 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079336.P3204063228279109913

/-! ## A079336.P533566635702804549

`char[comp[A079337(n+1)-1]]`
-/

namespace A079336.P533566635702804549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079337 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079336.P533566635702804549

/-! ## A079336.P189831074150085002

`A043545(A142794(n+1))-char[A079337(n+1)-1]`
-/

namespace A079336.P189831074150085002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079337 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A142794 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A079336.P189831074150085002

/-! ## A079336.P14984929802549376867

`A177702(A005891(n))-char[A079337(n+1)-1]`
-/

namespace A079336.P14984929802549376867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079337 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A005891 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A079336.P14984929802549376867

/-! ## A079336.P7805907270202521355

`A127239(A065508(3*n+2)-A274923(n+1))`
-/

namespace A079336.P7805907270202521355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127239 (A065508 (3 * n + 2) - A274923 (n + 1)).toNat

end

end A079336.P7805907270202521355

/-!
# A079337: Positions of 0 in the repetition-resistant sequence A079336.

The programs for A079337, there is no canonical definition to state claims against.
-/

/-! ## A079337.P2649079104626610642

`eq[0, A079336(n+1)]+1`
-/

namespace A079337.P2649079104626610642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079337.P2649079104626610642

/-! ## A079337.P1701319981617090711

`lt[n*A079336(A028310(n)), n]`
-/

namespace A079337.P1701319981617090711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079336 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079337.P1701319981617090711

/-! ## A079337.P11541156833654600039

`eq[A000007(n), A079336(A028310(n))]`
-/

namespace A079337.P11541156833654600039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079337.P11541156833654600039

/-! ## A079337.P4413604864684764114

`lt[A079336(n+1)*A272577(n), 2]+1`
-/

namespace A079337.P4413604864684764114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (n + 1) * A272577 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A079337.P4413604864684764114

/-! ## A079337.P16002860404319163434

`record[1-A079336(n+1)*A122544(n+1)+n]`
-/

namespace A079337.P16002860404319163434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079336 (n + 1) * A122544 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079337.P16002860404319163434

/-!
# A079338: Positions of 1 in the repetition-resistant sequence A079336.

The programs for A079338, there is no canonical definition to state claims against.
-/

/-! ## A079338.P6090335511908712843

`comp[A079337(n+1)-1]+1`
-/

namespace A079338.P6090335511908712843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079337 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079338.P6090335511908712843

/-! ## A079338.P9325157667478570228

`filter[n+1, A079336(#)]`
-/

namespace A079338.P9325157667478570228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079336 (f1 j) = 1) n)

end

end A079338.P9325157667478570228

/-! ## A079338.P7892216545439350970

`lt[0, A079336(n+1)]+1`
-/

namespace A079338.P7892216545439350970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079338.P7892216545439350970

/-! ## A079338.P8378296430524146735

`eq[1, A079336(n+2)]+2`
-/

namespace A079338.P8378296430524146735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A079338.P8378296430524146735

/-! ## A079338.P1543430806516211538

`lt[0, A079336(A028310(n))]`
-/

namespace A079338.P1543430806516211538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079338.P1543430806516211538

/-! ## A079338.P9415414179388545625

`A020725(lt[0, A079336(n+1)])`
-/

namespace A079338.P9415414179388545625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079338.P9415414179388545625

/-! ## A079338.P10205698550506220950

`A020725(eq[1, A079336(n+1)])`
-/

namespace A079338.P10205698550506220950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079338.P10205698550506220950

/-! ## A079338.P6524354865255203689

`eq[1, A079336(A000007(n)+n)]`
-/

namespace A079338.P6524354865255203689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079338.P6524354865255203689

/-! ## A079338.P9423727806567160799

`eq[1, A079336(A065033(2*n))]`
-/

namespace A079338.P9423727806567160799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079338.P9423727806567160799

/-!
# A079339: Least k such that the decimal representation of k*n contains only 1's and 0's.

The programs for A079339, there is no canonical definition to state claims against.
-/

/-! ## A079339.P14314267243567737814

`A078242(n+1)/A078245(n+1)*A096681(n+1)`
-/

namespace A079339.P14314267243567737814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078242 (n + 1) : ℚ) / (A078245 (n + 1) : ℚ) * (A096681 (n + 1) : ℚ)

end

end A079339.P14314267243567737814

/-! ## A079339.P17289993681269332876

`A004290(n+1)/(n+1)`
-/

namespace A079339.P17289993681269332876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004290 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A079339.P17289993681269332876

/-! ## A079339.P2940729039756347029

`A096681(2*(n+1))`
-/

namespace A079339.P2940729039756347029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096681 (2 * (n + 1))

end

end A079339.P2940729039756347029

/-! ## A079339.P17961044414634493646

`A078241(2*(n+1))/(2*(n+1))`
-/

namespace A079339.P17961044414634493646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078241 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A079339.P17961044414634493646

/-! ## A079339.P3196103060900049300

`A096682(3*(n+1))`
-/

namespace A079339.P3196103060900049300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (3 * (n + 1))

end

end A079339.P3196103060900049300

/-! ## A079339.P8843025530126417972

`A096683(4*(n+1))`
-/

namespace A079339.P8843025530126417972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096683 (4 * (n + 1))

end

end A079339.P8843025530126417972

/-! ## A079339.P9237952540909485293

`A096686(7*(n+1))`
-/

namespace A079339.P9237952540909485293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096686 (7 * (n + 1))

end

end A079339.P9237952540909485293

/-! ## A079339.P11232524977428054019

`A096687(8*(n+1))`
-/

namespace A079339.P11232524977428054019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096687 (8 * (n + 1))

end

end A079339.P11232524977428054019

/-! ## A079339.P9819548382392197853

`A007088(A257345(n+1))/(n+1)`
-/

namespace A079339.P9819548382392197853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A257345 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A079339.P9819548382392197853

/-!
# A079340: Absolute value of determinant of n X n matrix whose entries are the integers from 1 to n^2 spiraling outward, ending in a corner.

The programs for A079340, there is no canonical definition to state claims against.
-/

/-! ## A079340.P6677448879059287395

`∑[A056107(n)]*A001761(n)`
-/

namespace A079340.P6677448879059287395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001761 n

end

end A079340.P6677448879059287395

/-! ## A079340.P3490241840407785526

`Δ[A006528(n)]*A001761(n)`
-/

namespace A079340.P3490241840407785526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001761 n

end

end A079340.P3490241840407785526

/-! ## A079340.P3620332257983341195

`n!*A000108(n)*Δ[A006528(n)]`
-/

namespace A079340.P3620332257983341195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000108 n * (f1 (n + 1) - f1 n)

end

end A079340.P3620332257983341195

/-! ## A079340.P10628841826459454728

`A001813(n)+A002691(n)-A000407(n)`
-/

namespace A079340.P10628841826459454728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n + (A002691 n - A000407 n)

end

end A079340.P10628841826459454728

/-!
# A079342: Integers k that divide LS(k), where LS is the "Look and Say" function (A045918).

The programs for A079342, there is no canonical definition to state claims against.
-/

/-! ## A079342.P7514430896026543755

`A110744(record[A034887(A089868(n))])`
-/

namespace A079342.P7514430896026543755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A089868 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110744 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079342.P7514430896026543755

/-! ## A079342.P7376819961922401445

`A110744(∑[A278657(n)²])`
-/

namespace A079342.P7376819961922401445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079342.P7376819961922401445

/-! ## A079342.P12184923168951590357

`A110744(A278657(n)²+n)`
-/

namespace A079342.P12184923168951590357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110744 (A278657 n ^ 2 + (n : ℤ)).toNat

end

end A079342.P12184923168951590357

/-! ## A079342.P5767875587863518110

`A000265(2^n)*A110744(n+1)`
-/

namespace A079342.P5767875587863518110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A110744 (n + 1)

end

end A079342.P5767875587863518110

/-! ## A079342.P2272994832024065454

`A110744(n+1)*A171435(2^n)`
-/

namespace A079342.P2272994832024065454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110744 (n + 1) * A171435 (2 ^ n)

end

end A079342.P2272994832024065454

/-!
# A079343: Period 6: repeat [0, 1, 1, 2, 3, 1]; also F(n) mod 4, where F(n) = A000045(n).

The programs for A079343, the canonical program `A079343.P12160133141572385813` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079343 has offset 0).

The definition of A079343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079343.P12160133141572385813

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079343

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P12160133141572385813.Spec : Prop :=
  ∀ n, P12160133141572385813.a n = A079343 n

theorem P12160133141572385813.correct : P12160133141572385813.Spec := by
  intro n
  simp only [A079343]

end A079343

/-!
# A079344: F(n) mod 8, where F(n) = A000045(n) is the n-th Fibonacci number.

The programs for A079344, the canonical program `A079344.P16268261134849340780` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079344 has offset 0).

The definition of A079344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079344.P16268261134849340780

`(a(n-1)+a(n-2))%8` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079344

/-- `(a(n-1)+a(n-2))%8` -/
def P16268261134849340780.Spec : Prop :=
  ∀ n, (P16268261134849340780.a n : ℤ) = A079344 n

theorem P16268261134849340780.correct : P16268261134849340780.Spec := by
  intro n
  simp only [A079344]

end A079344

/-!
# A079345: a(n) = Fibonacci(n) mod 16.

The programs for A079345, the canonical program `A079345.P18326577115320939216` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079345 has offset 0).

The definition of A079345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079345.P18326577115320939216

`(a(n-1)+a(n-2))%16` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079345

/-- `(a(n-1)+a(n-2))%16` -/
def P18326577115320939216.Spec : Prop :=
  ∀ n, (P18326577115320939216.a n : ℤ) = A079345 n

theorem P18326577115320939216.correct : P18326577115320939216.Spec := by
  intro n
  simp only [A079345]

end A079345

/-!
# A079346: Primes p such that F(p-(p/5)) is the first Fibonacci number that p divides.

The programs for A079346, there is no canonical definition to state claims against.
-/

/-! ## A079346.P13074784028202132966

`record[A000040(n+1)/A116514(n+1)]`
-/

namespace A079346.P13074784028202132966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A116514 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079346.P13074784028202132966

/-! ## A079346.P13053506843160194508

`A000040(lt[A080085(n+1), A001602(n+1)]+1)`
-/

namespace A079346.P13053506843160194508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A079346.P13053506843160194508

/-! ## A079346.P12571913485802280797

`A001578(A079347(n+1))`
-/

namespace A079346.P12571913485802280797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (A079347 (n + 1)).toNat

end

end A079346.P12571913485802280797

/-! ## A079346.P5479135402293302469

`A000040(lt[A027563(n+1), A001602(n+1)]+1)`
-/

namespace A079346.P5479135402293302469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A079346.P5479135402293302469

/-! ## A079346.P14451277143968697598

`∩[A092581(n+1), A324845(n+1)]`
-/

namespace A079346.P14451277143968697598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079346.P14451277143968697598

/-!
# A079347: Fibonacci(p-(p/5)) is the first Fibonacci number that p divides and this is p-(p/5).

The programs for A079347, there is no canonical definition to state claims against.
-/

/-! ## A079347.P3059684131898635403

`record[A001602(n+1)]`
-/

namespace A079347.P3059684131898635403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079347.P3059684131898635403

/-! ## A079347.P17712983673456052369

`record[A060305(n+1)/A116515(n+1)]`
-/

namespace A079347.P17712983673456052369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060305 (n + 1) : ℚ) / (A116515 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079347.P17712983673456052369

/-! ## A079347.P10372290714295023272

`A001177(A079346(n+1))`
-/

namespace A079347.P10372290714295023272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A079346 (n + 1)).toNat

end

end A079347.P10372290714295023272

/-! ## A079347.P1730708793005252485

`record[A001177(A006530(n+2))]`
-/

namespace A079347.P1730708793005252485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079347.P1730708793005252485

/-! ## A079347.P17181534048115003438

`record[A001177(A014963(n+2))]`
-/

namespace A079347.P17181534048115003438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079347.P17181534048115003438

/-! ## A079347.P8514677998611823332

`record[A001177(A020639(n+2))]`
-/

namespace A079347.P8514677998611823332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079347.P8514677998611823332

/-!
# A079348: Fibonacci(p-(p/5)) is the not the first Fibonacci number that p divides.

The programs for A079348, there is no canonical definition to state claims against.
-/

/-! ## A079348.P18307714133711855293

`A045344(lt[1, A116514(n+1)])`
-/

namespace A079348.P18307714133711855293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079348.P18307714133711855293

/-! ## A079348.P18041573360134210767

`A065091(lt[1, A116514(n+1)])`
-/

namespace A079348.P18041573360134210767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079348.P18041573360134210767

/-! ## A079348.P4173708229480754570

`A000040(lt[1, A116514(n+1)]+1)`
-/

namespace A079348.P4173708229480754570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A079348.P4173708229480754570

/-! ## A079348.P9576352815309196822

`A045344(lt[A001602(n+1), A014692(n+1)])`
-/

namespace A079348.P9576352815309196822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079348.P9576352815309196822

/-! ## A079348.P11213217836521227422

`A065091(lt[A001602(n+1), A006093(n+1)])`
-/

namespace A079348.P11213217836521227422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079348.P11213217836521227422

/-! ## A079348.P18169256470862621252

`A065091(lt[A001602(n+1), A014692(n+1)])`
-/

namespace A079348.P18169256470862621252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079348.P18169256470862621252

/-! ## A079348.P12111836218645742158

`A065091(lt[A001602(n+1), A104192(n+1)])`
-/

namespace A079348.P12111836218645742158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079348.P12111836218645742158

/-! ## A079348.P2376081812644863287

`A008578(lt[1, A116514(n+1)]+2)`
-/

namespace A079348.P2376081812644863287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A079348.P2376081812644863287

/-!
# A079349: p-(p/5) where Fibonacci(p-(p/5)) is not the first Fibonacci number that p divides.

The programs for A079349, there is no canonical definition to state claims against.
-/

/-! ## A079349.P12486875292375939778

`A079348(n+1)-A100047(A079348(n+1))`
-/

namespace A079349.P12486875292375939778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1) - A100047 (A079348 (n + 1)).toNat

end

end A079349.P12486875292375939778

/-! ## A079349.P4352617765415793331

`A055025(n+4)-A057077(A212684(3*n+2))`
-/

namespace A079349.P4352617765415793331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 4) - A057077 (A212684 (3 * n + 2)).toNat

end

end A079349.P4352617765415793331

/-!
# A079350: "Look and Say" (or LS) transform of A079342(n). These terms are such that A079342(n) divides a(n).

The programs for A079350, there is no canonical definition to state claims against.
-/

/-! ## A079350.P2820693363400363679

`A045918(A079342(n+1))`
-/

namespace A079350.P2820693363400363679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A079342 (n + 1)).toNat

end

end A079350.P2820693363400363679

/-! ## A079350.P7137825090294099390

`A045918(A110744(n+1)^A278657(n))`
-/

namespace A079350.P7137825090294099390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (SequenceMachineLib.roundAway ((A110744 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A079350.P7137825090294099390

/-! ## A079350.P2188716475751604463

`A045918(C(A110744(n+1), A278657(n)))`
-/

namespace A079350.P2188716475751604463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (Nat.choose (A110744 (n + 1)).toNat (A278657 n).toNat)

end

end A079350.P2188716475751604463

/-! ## A079350.P7945166479314536173

`A045918(A278657(n)²*A110744(n+1))`
-/

namespace A079350.P7945166479314536173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A278657 n ^ 2 * A110744 (n + 1)).toNat

end

end A079350.P7945166479314536173

/-! ## A079350.P7112763081250772127

`A045918(A000265(2^n)*A110744(n+1))`
-/

namespace A079350.P7112763081250772127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A000265 (2 ^ n) * A110744 (n + 1)).toNat

end

end A079350.P7112763081250772127

/-!
# A079351: a(1)=3; for n > 1, a(n) is the smallest integer greater than a(n-1) consistent with the condition "n is in the sequence if and only if a(n) is congruent to 0 (mod 5)".

The programs for A079351, there is no canonical definition to state claims against.
-/

/-! ## A079351.P9205342843972295165

`lt[A004515(lcm(n, A244895(n))), n]`
-/

namespace A079351.P9205342843972295165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (Int.lcm (n : ℤ) (A244895 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079351.P9205342843972295165

/-! ## A079351.P15429875279611469418

`lt[A309991(n), A027656(A250120(n))]`
-/

namespace A079351.P15429875279611469418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079351.P15429875279611469418

/-! ## A079351.P7408862788326666384

`a(n-1)+gcd(5, C(a(n-1), n))` with `a(0)=3`
-/

namespace A079351.P7408862788326666384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Nat.gcd 5 (Nat.choose (a (n - 1)) n)

end

end A079351.P7408862788326666384

/-! ## A079351.P5403642165393762743

`∑[A070846(A151970(n+1))%6]`
-/

namespace A079351.P5403642165393762743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070846 (A151970 (n + 1)).toNat) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079351.P5403642165393762743

/-! ## A079351.P4908777909496073141

`∑[A010875(A070846(A151970(n+1)))]`
-/

namespace A079351.P4908777909496073141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A070846 (A151970 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079351.P4908777909496073141

/-!
# A079352: a(1)=1, then a(n)=3*a(n-1) if n is already in the sequence, a(n)=2*a(n-1) otherwise.

The programs for A079352, there is no canonical definition to state claims against.
-/

/-! ## A079352.P7122891003434844656

`∏[A001227(A033948(∑{d}[n+1, #]²+1))]`
-/

namespace A079352.P7122891003434844656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A033948 ((∑ d ∈ Nat.divisors (f2 n), d) ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079352.P7122891003434844656

/-! ## A079352.P13120562278333585490

`∏[A100549(A109802(n+1)%A143718(3*n+1))]`
-/

namespace A079352.P13120562278333585490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100549 (Int.tmod (A109802 (n + 1)) (A143718 (3 * n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079352.P13120562278333585490

/-! ## A079352.P7355058756127527054

`∏[Δ[A359613(n+2)-n]]/2`
-/

namespace A079352.P7355058756127527054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359613 (n + 2) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A079352.P7355058756127527054

/-! ## A079352.P6884307391736882134

`∏[A020639(record[A135589(n)])]`
-/

namespace A079352.P6884307391736882134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135589 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079352.P6884307391736882134

/-! ## A079352.P9758000519235532378

`∏[A071187(∑[A370682(n+1)])]`
-/

namespace A079352.P9758000519235532378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079352.P9758000519235532378

/-!
# A079353: Numbers n such that the best rational approximation to H(n) with denominator <=n is an integer, where H(n) denotes the n-th harmonic number (A001008/A002805).

The programs for A079353, there is no canonical definition to state claims against.
-/

/-! ## A079353.P8245400760855333910

`A242654(n+1)+char[29]`
-/

namespace A079353.P8245400760855333910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242654 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A079353.P8245400760855333910

/-! ## A079353.P156135329172931763

`A242654(A348553(n))`
-/

namespace A079353.P156135329172931763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242654 (A348553 n).toNat

end

end A079353.P156135329172931763

/-! ## A079353.P9786747691928727151

`A242654(A387051(n))`
-/

namespace A079353.P9786747691928727151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242654 (A387051 n).toNat

end

end A079353.P9786747691928727151

/-! ## A079353.P14240171182481244470

`A242654(A387108(n))`
-/

namespace A079353.P14240171182481244470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242654 (A387108 n).toNat

end

end A079353.P14240171182481244470

/-! ## A079353.P16763728767492916388

`A242654(A387109(n))`
-/

namespace A079353.P16763728767492916388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242654 (A387109 n).toNat

end

end A079353.P16763728767492916388

/-!
# A079357: a(1)=1; a(n)=a(n-1)-1 if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A079357, there is no canonical definition to state claims against.
-/

/-! ## A079357.P10731721661605049395

`A141213(3*n+1)-A084964(A084964(n))`
-/

namespace A079357.P10731721661605049395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (3 * n + 1) - A084964 (A084964 n).toNat

end

end A079357.P10731721661605049395

/-!
# A079358: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is not a multiple of either 3 or 4.".

The programs for A079358, there is no canonical definition to state claims against.
-/

/-! ## A079358.P1119907508843655303

`∑[A087283(A315124(A001651(n+1)))]`
-/

namespace A079358.P1119907508843655303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087283 (A315124 (A001651 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079358.P1119907508843655303

/-! ## A079358.P16920395626603893781

`eq[A029440(n), A038189(n)]`
-/

namespace A079358.P16920395626603893781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079358.P16920395626603893781

/-! ## A079358.P797647547336542030

`∪[record[A082859(3*n+2)], A082845(n+1)]`
-/

namespace A079358.P797647547336542030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A079358.P797647547336542030

/-! ## A079358.P13831836931593546828

`∑[A248218(A294884(A018094(n)))]`
-/

namespace A079358.P13831836931593546828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A294884 (A018094 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079358.P13831836931593546828

/-! ## A079358.P10500542619384829530

`lt[A027750(A258656(n)), A076654(n+1)]`
-/

namespace A079358.P10500542619384829530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A258656 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079358.P10500542619384829530

/-!
# A079360: Sequence of sums of alternating increasing powers of 2.

The programs for A079360, the canonical program `A079360.P8254351751828332288` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079360 has offset 0).

The definition of A079360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079360.P739693300301211805

`(6-n%2)*2^ceil(n/2)-5`
-/

namespace A079360.P739693300301211805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - ((n % 2 : ℕ) : ℤ) : ℚ) * (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) - 5

end

end A079360.P739693300301211805

namespace A079360

/-- `(6-n%2)*2^ceil(n/2)-5` -/
def P739693300301211805.Spec : Prop :=
  ∀ n, P739693300301211805.a n = (A079360 n : ℚ)

end A079360

/-! ## A079360.P8254351751828332288

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079360

/-- `a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P8254351751828332288.Spec : Prop :=
  ∀ n, P8254351751828332288.a n = A079360 n

theorem P8254351751828332288.correct : P8254351751828332288.Spec := by
  intro n
  simp only [A079360]

end A079360

/-! ## A079360.P3019818973665529023

`∑[2*a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A079360.P3019818973665529023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P3019818973665529023

namespace A079360

/-- `∑[2*a(n-2)]` -/
def P3019818973665529023.Spec : Prop :=
  ∀ n, (P3019818973665529023.a n : ℤ) = A079360 n

end A079360

/-! ## A079360.P6690510545475962555

`2*a(n-2)+5` with `a(0)=1, a(1)=5`
-/

namespace A079360.P6690510545475962555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 2) + 5

end

end A079360.P6690510545475962555

namespace A079360

/-- `2*a(n-2)+5` -/
def P6690510545475962555.Spec : Prop :=
  ∀ n, (P6690510545475962555.a n : ℤ) = A079360 n

end A079360

/-! ## A079360.P13128274778035041330

`lcm(2, a(n-2))+5` with `a(0)=1, a(1)=5`
-/

namespace A079360.P13128274778035041330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 2 (a (n - 2)) + 5

end

end A079360.P13128274778035041330

namespace A079360

/-- `lcm(2, a(n-2))+5` -/
def P13128274778035041330.Spec : Prop :=
  ∀ n, (P13128274778035041330.a n : ℤ) = A079360 n

end A079360

/-! ## A079360.P15882327008352376037

`7-2*(1-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A079360.P15882327008352376037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  7 - 2 * (1 - a (n - 2))

end

end A079360.P15882327008352376037

namespace A079360

/-- `7-2*(1-a(n-2))` -/
def P15882327008352376037.Spec : Prop :=
  ∀ n, P15882327008352376037.a n = A079360 n

end A079360

/-! ## A079360.P1886083608241938424

`∑[2^∑[1-a(n-1)]]` with `a(0)=0, a(1)=2`
-/

namespace A079360.P1886083608241938424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P1886083608241938424

namespace A079360

/-- `∑[2^∑[1-a(n-1)]]` -/
def P1886083608241938424.Spec : Prop :=
  ∀ n, P1886083608241938424.a n = (A079360 n : ℚ)

end A079360

/-! ## A079360.P15791414465935684537

`∑[a(n-2)/(1-1/2)]` with `a(0)=1, a(1)=4`
-/

namespace A079360.P15791414465935684537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P15791414465935684537

namespace A079360

/-- `∑[a(n-2)/(1-1/2)]` -/
def P15791414465935684537.Spec : Prop :=
  ∀ n, P15791414465935684537.a n = (A079360 n : ℚ)

end A079360

/-! ## A079360.P8182105091157828881

`a(n-2)+a(n-2)+5` with `a(0)=1, a(1)=5`
-/

namespace A079360.P8182105091157828881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + (a (n - 2) + 5)

end

end A079360.P8182105091157828881

namespace A079360

/-- `a(n-2)+a(n-2)+5` -/
def P8182105091157828881.Spec : Prop :=
  ∀ n, (P8182105091157828881.a n : ℤ) = A079360 n

end A079360

/-! ## A079360.P16714277731679232184

`∑[A143095(n)]`
-/

namespace A079360.P16714277731679232184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P16714277731679232184

namespace A079360

/-- `∑[A143095(n)]` -/
def P16714277731679232184.Spec : Prop :=
  ∀ n, P16714277731679232184.a n = A079360 n

end A079360

/-! ## A079360.P3435371083068650878

`∑[A135530(n+1)]`
-/

namespace A079360.P3435371083068650878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P3435371083068650878

namespace A079360

/-- `∑[A135530(n+1)]` -/
def P3435371083068650878.Spec : Prop :=
  ∀ n, P3435371083068650878.a n = A079360 n

end A079360

/-! ## A079360.P9203817639852014466

`∑[A076736(n+5)]`
-/

namespace A079360.P9203817639852014466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P9203817639852014466

namespace A079360

/-- `∑[A076736(n+5)]` -/
def P9203817639852014466.Spec : Prop :=
  ∀ n, P9203817639852014466.a n = A079360 n

end A079360

/-! ## A079360.P9542008685772916103

`∑[2^A030451(n)]`
-/

namespace A079360.P9542008685772916103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A030451 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P9542008685772916103

namespace A079360

/-- `∑[2^A030451(n)]` -/
def P9542008685772916103.Spec : Prop :=
  ∀ n, P9542008685772916103.a n = (A079360 n : ℚ)

end A079360

/-! ## A079360.P771130779214394097

`A238549(n+2)-1`
-/

namespace A079360.P771130779214394097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238549 (n + 2) - 1

end

end A079360.P771130779214394097

namespace A079360

/-- `A238549(n+2)-1` -/
def P771130779214394097.Spec : Prop :=
  ∀ n, P771130779214394097.a n = A079360 n

end A079360

/-! ## A079360.P9896500352369852020

`A164095(n+2)-5`
-/

namespace A079360.P9896500352369852020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164095 (n + 2) - 5

end

end A079360.P9896500352369852020

namespace A079360

/-- `A164095(n+2)-5` -/
def P9896500352369852020.Spec : Prop :=
  ∀ n, P9896500352369852020.a n = A079360 n

end A079360

/-! ## A079360.P19536857993830720

`∑[abs(A137206(n+2))]`
-/

namespace A079360.P19536857993830720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137206 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P19536857993830720

namespace A079360

/-- `∑[abs(A137206(n+2))]` -/
def P19536857993830720.Spec : Prop :=
  ∀ n, P19536857993830720.a n = A079360 n

end A079360

/-! ## A079360.P7755847290027689459

`∑[A316742(n+1)+1]`
-/

namespace A079360.P7755847290027689459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P7755847290027689459

namespace A079360

/-- `∑[A316742(n+1)+1]` -/
def P7755847290027689459.Spec : Prop :=
  ∀ n, P7755847290027689459.a n = A079360 n

end A079360

/-! ## A079360.P15432833297516901289

`∑[2^A028242(n+1)]`
-/

namespace A079360.P15432833297516901289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A028242 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079360.P15432833297516901289

namespace A079360

/-- `∑[2^A028242(n+1)]` -/
def P15432833297516901289.Spec : Prop :=
  ∀ n, P15432833297516901289.a n = (A079360 n : ℚ)

end A079360

/-!
# A079361: Primes in the sequence of sums of alternating powers of 2.

The programs for A079361, there is no canonical definition to state claims against.
-/

/-! ## A079361.P2601647915948537412

`p?[∑[2*a(n-2)]]` with `a(0)=1, a(1)=4`
-/

namespace A079361.P2601647915948537412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079361.P2601647915948537412

/-! ## A079361.P5307692303476576964

`p?[2*a(n-2)+5]` with `a(0)=0, a(1)=1`
-/

namespace A079361.P5307692303476576964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079361.P5307692303476576964

/-! ## A079361.P13849599681857699622

`p?[lcm(2, a(n-2))+5]` with `a(0)=0, a(1)=1`
-/

namespace A079361.P13849599681857699622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 2)) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079361.P13849599681857699622

/-! ## A079361.P8630506097394403358

`p?[abs(5-6*round(2^(n-2)))]`
-/

namespace A079361.P8630506097394403358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - 6 * SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079361.P8630506097394403358

/-!
# A079362: Sequence of sums of alternating powers of 3.

The programs for A079362, the canonical program `A079362.P14841720760637881043` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079362 has offset 1).

The definition of A079362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079362.P14841720760637881043

`3*a(n-2)+2` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079362

/-- `3*a(n-2)+2` -/
def P14841720760637881043.Spec : Prop :=
  ∀ n, (P14841720760637881043.a n : ℤ) = A079362 (n + 1)

theorem P14841720760637881043.correct : P14841720760637881043.Spec := by
  intro n
  simp only [A079362, Nat.add_sub_cancel]

end A079362

/-! ## A079362.P7346996838703302672

`lcm(3, a(n-2))+2` with `a(0)=1, a(1)=4`
-/

namespace A079362.P7346996838703302672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lcm 3 (a (n - 2)) + 2

end

end A079362.P7346996838703302672

namespace A079362

/-- `lcm(3, a(n-2))+2` -/
def P7346996838703302672.Spec : Prop :=
  ∀ n, (P7346996838703302672.a n : ℤ) = A079362 (n + 1)

end A079362

/-! ## A079362.P18242448762801214600

`∑[3*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A079362.P18242448762801214600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079362.P18242448762801214600

namespace A079362

/-- `∑[3*a(n-2)]` -/
def P18242448762801214600.Spec : Prop :=
  ∀ n, (P18242448762801214600.a n : ℤ) = A079362 (n + 1)

end A079362

/-! ## A079362.P14371583534738256302

`5-3*(1-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A079362.P14371583534738256302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 - 3 * (1 - a (n - 2))

end

end A079362.P14371583534738256302

namespace A079362

/-- `5-3*(1-a(n-2))` -/
def P14371583534738256302.Spec : Prop :=
  ∀ n, P14371583534738256302.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P13881227568307524726

`∑[3^∑[1-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A079362.P13881227568307524726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079362.P13881227568307524726

namespace A079362

/-- `∑[3^∑[1-a(n-1)]]` -/
def P13881227568307524726.Spec : Prop :=
  ∀ n, P13881227568307524726.a n = (A079362 (n + 1) : ℚ)

end A079362

/-! ## A079362.P7003092491737393538

`a(n-2)/(1-2/3)+2` with `a(0)=1, a(1)=4`
-/

namespace A079362.P7003092491737393538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) + 2

end

end A079362.P7003092491737393538

namespace A079362

/-- `a(n-2)/(1-2/3)+2` -/
def P7003092491737393538.Spec : Prop :=
  ∀ n, P7003092491737393538.a n = (A079362 (n + 1) : ℚ)

end A079362

/-! ## A079362.P15164442592299606891

`2-a(n-2)/(2/3-1)` with `a(0)=1, a(1)=4`
-/

namespace A079362.P15164442592299606891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A079362.P15164442592299606891

namespace A079362

/-- `2-a(n-2)/(2/3-1)` -/
def P15164442592299606891.Spec : Prop :=
  ∀ n, P15164442592299606891.a n = (A079362 (n + 1) : ℚ)

end A079362

/-! ## A079362.P3340106945478551714

`∑[3^(∑[gcd(2, n+1)²]%(n+1))]`
-/

namespace A079362.P3340106945478551714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079362.P3340106945478551714

namespace A079362

/-- `∑[3^(∑[gcd(2, n+1)²]%(n+1))]` -/
def P3340106945478551714.Spec : Prop :=
  ∀ n, (P3340106945478551714.a n : ℤ) = A079362 (n + 1)

end A079362

/-! ## A079362.P14512542253624679850

`a(n-2)+a(n-2)+a(n-2)+2` with `a(0)=1, a(1)=4`
-/

namespace A079362.P14512542253624679850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + 2))

end

end A079362.P14512542253624679850

namespace A079362

/-- `a(n-2)+a(n-2)+a(n-2)+2` -/
def P14512542253624679850.Spec : Prop :=
  ∀ n, (P14512542253624679850.a n : ℤ) = A079362 (n + 1)

theorem P14512542253624679850.correct : P14512542253624679850.Spec := by
  intro n
  simp only [A079362, Nat.add_sub_cancel, A079362.P14512542253624679850.a, A079362.P14841720760637881043.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079362

/-! ## A079362.P13183456205344167377

`gcd(2, n)*A166465(n+1)-1`
-/

namespace A079362.P13183456205344167377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A166465 (n + 1) - 1

end

end A079362.P13183456205344167377

namespace A079362

/-- `gcd(2, n)*A166465(n+1)-1` -/
def P13183456205344167377.Spec : Prop :=
  ∀ n, P13183456205344167377.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P4462520442751393145

`∪[A048473(n), A198643(n)]`
-/

namespace A079362.P4462520442751393145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079362.P4462520442751393145

namespace A079362

/-- `∪[A048473(n), A198643(n)]` -/
def P4462520442751393145.Spec : Prop :=
  ∀ n, (P4462520442751393145.a n : ℤ) = A079362 (n + 1)

end A079362

/-! ## A079362.P7397694489750367251

`A062318(n+1)+A056449(n)`
-/

namespace A079362.P7397694489750367251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 1) + A056449 n

end

end A079362.P7397694489750367251

namespace A079362

/-- `A062318(n+1)+A056449(n)` -/
def P7397694489750367251.Spec : Prop :=
  ∀ n, P7397694489750367251.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P7182099299621425117

`A038754(n)+A056449(n)-1`
-/

namespace A079362.P7182099299621425117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (A056449 n - 1)

end

end A079362.P7182099299621425117

namespace A079362

/-- `A038754(n)+A056449(n)-1` -/
def P7182099299621425117.Spec : Prop :=
  ∀ n, P7182099299621425117.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P4890145072716352105

`Δ[A108411(n)]+∑[A108411(n)]`
-/

namespace A079362.P4890145072716352105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A079362.P4890145072716352105

namespace A079362

/-- `Δ[A108411(n)]+∑[A108411(n)]` -/
def P4890145072716352105.Spec : Prop :=
  ∀ n, P4890145072716352105.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P12858112718462937542

`A108411(n+1)+A062318(n+1)`
-/

namespace A079362.P12858112718462937542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 1) + A062318 (n + 1)

end

end A079362.P12858112718462937542

namespace A079362

/-- `A108411(n+1)+A062318(n+1)` -/
def P12858112718462937542.Spec : Prop :=
  ∀ n, P12858112718462937542.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P6213053509113418852

`A166552(n+1)+A108411(n)-1`
-/

namespace A079362.P6213053509113418852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 1) + (A108411 n - 1)

end

end A079362.P6213053509113418852

namespace A079362

/-- `A166552(n+1)+A108411(n)-1` -/
def P6213053509113418852.Spec : Prop :=
  ∀ n, P6213053509113418852.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P7097291076873980157

`A108411(n+1)+A182522(n+1)-1`
-/

namespace A079362.P7097291076873980157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 1) + (A182522 (n + 1) - 1)

end

end A079362.P7097291076873980157

namespace A079362

/-- `A108411(n+1)+A182522(n+1)-1` -/
def P7097291076873980157.Spec : Prop :=
  ∀ n, P7097291076873980157.a n = A079362 (n + 1)

end A079362

/-! ## A079362.P17499312924181570323

`A038754(n)+A087503(n)-A052993(n)`
-/

namespace A079362.P17499312924181570323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (A087503 n - A052993 n)

end

end A079362.P17499312924181570323

namespace A079362

/-- `A038754(n)+A087503(n)-A052993(n)` -/
def P17499312924181570323.Spec : Prop :=
  ∀ n, P17499312924181570323.a n = A079362 (n + 1)

end A079362

/-!
# A079363: Primes of the form 2*3^k - 1.

The programs for A079363, there is no canonical definition to state claims against.
-/

/-! ## A079363.P1880681831635224647

`A048473(A003307(n+1))`
-/

namespace A079363.P1880681831635224647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 (A003307 (n + 1)).toNat

end

end A079363.P1880681831635224647

/-! ## A079363.P10307304071694723351

`A154992(A003307(n+1)+2)`
-/

namespace A079363.P10307304071694723351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (A003307 (n + 1) + 2).toNat

end

end A079363.P10307304071694723351

/-! ## A079363.P15255954143522580621

`A060647(2*A003307(n+1))`
-/

namespace A079363.P15255954143522580621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 (2 * A003307 (n + 1)).toNat

end

end A079363.P15255954143522580621

/-! ## A079363.P15666529935066397641

`A062547(2*A003307(n+1))`
-/

namespace A079363.P15666529935066397641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (2 * A003307 (n + 1)).toNat

end

end A079363.P15666529935066397641

/-! ## A079363.P2908852330261157440

`∩[A234346(n+1), A062547(n)]`
-/

namespace A079363.P2908852330261157440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079363.P2908852330261157440

/-!
# A079364: Composite numbers having two composite neighbors.

The programs for A079364, the canonical program `A079364.P9923182531136201301` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079364 has offset 1).

The definition of A079364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079364.P9923182531136201301

`lt[3, A175851(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079364

/-- `lt[3, A175851(n+1)]` -/
def P9923182531136201301.Spec : Prop :=
  ∀ n, (P9923182531136201301.a n : ℤ) = A079364 (n + 1)

theorem P9923182531136201301.correct : P9923182531136201301.Spec := by
  intro n
  simp only [A079364, Nat.add_sub_cancel]

end A079364

/-! ## A079364.P1246388160705265582

`lt[4, A103509(n+2)]`
-/

namespace A079364.P1246388160705265582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079364.P1246388160705265582

namespace A079364

/-- `lt[4, A103509(n+2)]` -/
def P1246388160705265582.Spec : Prop :=
  ∀ n, (P1246388160705265582.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P3245607829179897608

`∪[A061673(n+1), A071904(n+1)]`
-/

namespace A079364.P3245607829179897608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079364.P3245607829179897608

namespace A079364

/-- `∪[A061673(n+1), A071904(n+1)]` -/
def P3245607829179897608.Spec : Prop :=
  ∀ n, (P3245607829179897608.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P17726966524630732082

`∪[A167705(n+1), A071904(n+1)]`
-/

namespace A079364.P17726966524630732082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079364.P17726966524630732082

namespace A079364

/-- `∪[A167705(n+1), A071904(n+1)]` -/
def P17726966524630732082.Spec : Prop :=
  ∀ n, (P17726966524630732082.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P7929251491940831669

`eq[A000720(abs(3-n)+1), A000720(n+1)]`
-/

namespace A079364.P7929251491940831669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (|3 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079364.P7929251491940831669

namespace A079364

/-- `eq[A000720(abs(3-n)+1), A000720(n+1)]` -/
def P7929251491940831669.Spec : Prop :=
  ∀ n, (P7929251491940831669.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P12622546273690792512

`filter[A171845(n+2), A292438(#)]`
-/

namespace A079364.P12622546273690792512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A079364.P12622546273690792512

namespace A079364

/-- `filter[A171845(n+2), A292438(#)]` -/
def P12622546273690792512.Spec : Prop :=
  ∀ n, P12622546273690792512.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P12630631188768387561

`filter[A171845(n+2), A323162(#)]`
-/

namespace A079364.P12630631188768387561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A079364.P12630631188768387561

namespace A079364

/-- `filter[A171845(n+2), A323162(#)]` -/
def P12630631188768387561.Spec : Prop :=
  ∀ n, P12630631188768387561.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P6892945612219432445

`filter[A068780(n+1), A323162(#)]`
-/

namespace A079364.P6892945612219432445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A079364.P6892945612219432445

namespace A079364

/-- `filter[A068780(n+1), A323162(#)]` -/
def P6892945612219432445.Spec : Prop :=
  ∀ n, P6892945612219432445.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P9797313319552619820

`∩[A005381(n+1), A068780(n+1)]`
-/

namespace A079364.P9797313319552619820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079364.P9797313319552619820

namespace A079364

/-- `∩[A005381(n+1), A068780(n+1)]` -/
def P9797313319552619820.Spec : Prop :=
  ∀ n, (P9797313319552619820.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P12260276880904029925

`∩[A005381(n+1), A171845(n+1)]`
-/

namespace A079364.P12260276880904029925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079364.P12260276880904029925

namespace A079364

/-- `∩[A005381(n+1), A171845(n+1)]` -/
def P12260276880904029925.Spec : Prop :=
  ∀ n, (P12260276880904029925.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P6830122687239373556

`∩[A068780(n+1), A171845(n+1)]`
-/

namespace A079364.P6830122687239373556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079364.P6830122687239373556

namespace A079364

/-- `∩[A068780(n+1), A171845(n+1)]` -/
def P6830122687239373556.Spec : Prop :=
  ∀ n, (P6830122687239373556.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P1618991790918450914

`record[A068780(n+2)*A323162(A068780(n+2))]`
-/

namespace A079364.P1618991790918450914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 2) * A323162 (A068780 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079364.P1618991790918450914

namespace A079364

/-- `record[A068780(n+2)*A323162(A068780(n+2))]` -/
def P1618991790918450914.Spec : Prop :=
  ∀ n, P1618991790918450914.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P17445453985903496252

`A005381(eq[1, A005381(n+2)-A005381(n+1)]+1)`
-/

namespace A079364.P17445453985903496252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 2) - A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079364.P17445453985903496252

namespace A079364

/-- `A005381(eq[1, A005381(n+2)-A005381(n+1)]+1)` -/
def P17445453985903496252.Spec : Prop :=
  ∀ n, P17445453985903496252.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P8074509694574059036

`filter[A099047(n+1), A005171(#)]`
-/

namespace A079364.P8074509694574059036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A079364.P8074509694574059036

namespace A079364

/-- `filter[A099047(n+1), A005171(#)]` -/
def P8074509694574059036.Spec : Prop :=
  ∀ n, P8074509694574059036.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P5011472234552007689

`filter[A099047(n+1), A066247(#)]`
-/

namespace A079364.P5011472234552007689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A079364.P5011472234552007689

namespace A079364

/-- `filter[A099047(n+1), A066247(#)]` -/
def P5011472234552007689.Spec : Prop :=
  ∀ n, P5011472234552007689.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P8642314452227294346

`filter[A099047(n+1), A292438(#)]`
-/

namespace A079364.P8642314452227294346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A079364.P8642314452227294346

namespace A079364

/-- `filter[A099047(n+1), A292438(#)]` -/
def P8642314452227294346.Spec : Prop :=
  ∀ n, P8642314452227294346.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P6097144976474673162

`filter[A099047(n+1), A323162(#)]`
-/

namespace A079364.P6097144976474673162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A079364.P6097144976474673162

namespace A079364

/-- `filter[A099047(n+1), A323162(#)]` -/
def P6097144976474673162.Spec : Prop :=
  ∀ n, P6097144976474673162.a n = A079364 (n + 1)

end A079364

/-! ## A079364.P17967746084441821430

`∩[A005381(n+1), A099047(n+1)]`
-/

namespace A079364.P17967746084441821430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079364.P17967746084441821430

namespace A079364

/-- `∩[A005381(n+1), A099047(n+1)]` -/
def P17967746084441821430.Spec : Prop :=
  ∀ n, (P17967746084441821430.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P13674477005725754984

`∩[A068780(n+1), A099047(n+1)]`
-/

namespace A079364.P13674477005725754984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079364.P13674477005725754984

namespace A079364

/-- `∩[A068780(n+1), A099047(n+1)]` -/
def P13674477005725754984.Spec : Prop :=
  ∀ n, (P13674477005725754984.a n : ℤ) = A079364 (n + 1)

end A079364

/-! ## A079364.P6842926191081959192

`filter[A099049(n+1), A292438(#)]`
-/

namespace A079364.P6842926191081959192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A079364.P6842926191081959192

namespace A079364

/-- `filter[A099049(n+1), A292438(#)]` -/
def P6842926191081959192.Spec : Prop :=
  ∀ n, P6842926191081959192.a n = A079364 (n + 1)

end A079364

/-!
# A079365: Binary expansion of a Chaitin Omega number Omega_U.

The programs for A079365, there is no canonical definition to state claims against.
-/

/-! ## A079365.P1631188363773932657

`char[A133249(n+1)-1]`
-/

namespace A079365.P1631188363773932657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133249 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079365.P1631188363773932657

/-! ## A079365.P18192840029730957804

`char[A023443(A133249(n+1))]`
-/

namespace A079365.P18192840029730957804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A133249 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079365.P18192840029730957804

/-! ## A079365.P5730189525907972427

`char[A057918(A133249(n+1)²)]`
-/

namespace A079365.P5730189525907972427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A133249 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079365.P5730189525907972427

/-! ## A079365.P17255857391386601920

`char[A259361(A133249(n+1)²)]`
-/

namespace A079365.P17255857391386601920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A133249 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079365.P17255857391386601920

/-! ## A079365.P15307660361035306053

`char[A307445(A031369(n+1))+A133249(n+1)]`
-/

namespace A079365.P15307660361035306053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A031369 (n + 1)).toNat + A133249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079365.P15307660361035306053

/-!
# A079367: Records in A079366.

The programs for A079367, there is no canonical definition to state claims against.
-/

/-! ## A079367.P15725258823005793494

`record[A079366(n)]`
-/

namespace A079367.P15725258823005793494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079367.P15725258823005793494

/-! ## A079367.P14776036852069043787

`A079366(A079368(n+1)-1)`
-/

namespace A079367.P14776036852069043787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079366 (A079368 (n + 1) - 1).toNat

end

end A079367.P14776036852069043787

/-! ## A079367.P14043926565622663183

`A079366(A321800(n)+A079368(n+1))`
-/

namespace A079367.P14043926565622663183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079366 (A321800 n + A079368 (n + 1)).toNat

end

end A079367.P14043926565622663183

/-! ## A079367.P15068201459511514124

`A079366(xor(A066839(n+1), A079368(n+1)))`
-/

namespace A079367.P15068201459511514124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079366 (Int.xor (A066839 (n + 1)) (A079368 (n + 1))).toNat

end

end A079367.P15068201459511514124

/-!
# A079369: Costé prime expansion of e - 2.

The programs for A079369, there is no canonical definition to state claims against.
-/

/-! ## A079369.P16928481189230924057

`p?[A247063(n+1)-A275744(2*n+1)]`
-/

namespace A079369.P16928481189230924057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (n + 1) - A275744 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079369.P16928481189230924057

/-!
# A079370: Records in A079369.

The programs for A079370, there is no canonical definition to state claims against.
-/

/-! ## A079370.P6224679328910749147

`record[A079369(n)]`
-/

namespace A079370.P6224679328910749147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079370.P6224679328910749147

/-! ## A079370.P1514804417043169989

`A079369(A079371(n+1)-1)`
-/

namespace A079370.P1514804417043169989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079369 (A079371 (n + 1) - 1).toNat

end

end A079370.P1514804417043169989

/-! ## A079370.P2672792948543797750

`record[A175264(A124944(n+1))]`
-/

namespace A079370.P2672792948543797750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175264 (A124944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079370.P2672792948543797750

/-! ## A079370.P12135304457809288749

`p?[∑[A227568(A060438(n+1))]]`
-/

namespace A079370.P12135304457809288749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A060438 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079370.P12135304457809288749

/-! ## A079370.P5336056715016694429

`p?[record[A002264(A051776(n+1))]]`
-/

namespace A079370.P5336056715016694429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A051776 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079370.P5336056715016694429

/-!
# A079371: Where records occur in A079369.

The programs for A079371, there is no canonical definition to state claims against.
-/

/-! ## A079371.P13033360109333902019

`lt[A360115(n+2), A360122(A360202(n+1))]`
-/

namespace A079371.P13033360109333902019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360115 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360122 (A360202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079371.P13033360109333902019

/-!
# A079373: Records in A079372.

The programs for A079373, there is no canonical definition to state claims against.
-/

/-! ## A079373.P17611134678201555177

`record[A079372(n)]`
-/

namespace A079373.P17611134678201555177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079373.P17611134678201555177

/-! ## A079373.P5296813088280534520

`A079372(A079374(n+1)-1)`
-/

namespace A079373.P5296813088280534520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079372 (A079374 (n + 1) - 1).toNat

end

end A079373.P5296813088280534520

/-! ## A079373.P17229427445304051223

`A079372(A082551(2*n+1)+A079374(n+1))`
-/

namespace A079373.P17229427445304051223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079372 (A082551 (2 * n + 1) + A079374 (n + 1)).toNat

end

end A079373.P17229427445304051223

/-!
# A079376: Records in A079375.

The programs for A079376, there is no canonical definition to state claims against.
-/

/-! ## A079376.P906844842521718621

`record[A079375(n)]`
-/

namespace A079376.P906844842521718621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079376.P906844842521718621

/-! ## A079376.P1003524740400568014

`A079375(A079377(n+1)-1)`
-/

namespace A079376.P1003524740400568014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079375 (A079377 (n + 1) - 1).toNat

end

end A079376.P1003524740400568014

/-! ## A079376.P7420515231302829154

`A079375(A321800(n)+A079377(n+1))`
-/

namespace A079376.P7420515231302829154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079375 (A321800 n + A079377 (n + 1)).toNat

end

end A079376.P7420515231302829154

/-!
# A079379: Records in A079378.

The programs for A079379, there is no canonical definition to state claims against.
-/

/-! ## A079379.P14052544890121939577

`record[A079378(n)]`
-/

namespace A079379.P14052544890121939577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079379.P14052544890121939577

/-! ## A079379.P13107155685604098446

`A079378(A079380(n+1)-1)`
-/

namespace A079379.P13107155685604098446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079378 (A079380 (n + 1) - 1).toNat

end

end A079379.P13107155685604098446

/-! ## A079379.P3120889312595503255

`A079378(A321800(n)+A079380(n+1))`
-/

namespace A079379.P3120889312595503255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079378 (A321800 n + A079380 (n + 1)).toNat

end

end A079379.P3120889312595503255

/-!
# A079382: Records in A079381.

The programs for A079382, there is no canonical definition to state claims against.
-/

/-! ## A079382.P12354061012099937245

`record[A079381(n)]`
-/

namespace A079382.P12354061012099937245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079382.P12354061012099937245

/-! ## A079382.P18138610261862310515

`A079381(A079383(n+1)-1)`
-/

namespace A079382.P18138610261862310515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079381 (A079383 (n + 1) - 1).toNat

end

end A079382.P18138610261862310515

/-! ## A079382.P5456771935985603038

`A079381(A321800(n)+A079383(n+1))`
-/

namespace A079382.P5456771935985603038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079381 (A321800 n + A079383 (n + 1)).toNat

end

end A079382.P5456771935985603038

/-!
# A079383: Where records occur in A079381.

The programs for A079383, there is no canonical definition to state claims against.
-/

/-! ## A079383.P8042396740132333721

`∑[A090706(A003431(n))]`
-/

namespace A079383.P8042396740132333721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A003431 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079383.P8042396740132333721

/-! ## A079383.P1540209565421941038

`∑[A263110(A262132(n))]`
-/

namespace A079383.P1540209565421941038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (A262132 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079383.P1540209565421941038

/-! ## A079383.P14922289591095400234

`A307824(A131023(n+1))`
-/

namespace A079383.P14922289591095400234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (A131023 (n + 1)).toNat

end

end A079383.P14922289591095400234

/-! ## A079383.P6252118970789430725

`A383099(A069514(n+1))`
-/

namespace A079383.P6252118970789430725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (A069514 (n + 1)).toNat

end

end A079383.P6252118970789430725

/-!
# A079385: Records in A079384.

The programs for A079385, there is no canonical definition to state claims against.
-/

/-! ## A079385.P305581036197538894

`record[A079384(n)]`
-/

namespace A079385.P305581036197538894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079385.P305581036197538894

/-! ## A079385.P16511786895057375420

`A079384(A079386(n+1)-1)`
-/

namespace A079385.P16511786895057375420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079384 (A079386 (n + 1) - 1).toNat

end

end A079385.P16511786895057375420

/-! ## A079385.P13344825747148394175

`A079384(A321800(n)+A079386(n+1))`
-/

namespace A079385.P13344825747148394175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079384 (A321800 n + A079386 (n + 1)).toNat

end

end A079385.P13344825747148394175

/-! ## A079385.P8651437417402760677

`A079384(A082551(2*n+1)+A079386(n+1))`
-/

namespace A079385.P8651437417402760677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079384 (A082551 (2 * n + 1) + A079386 (n + 1)).toNat

end

end A079385.P8651437417402760677

/-!
# A079386: Where records occur in A079384.

The programs for A079386, there is no canonical definition to state claims against.
-/

/-! ## A079386.P14937307379980138465

`∑[A203076(∑[A032532(n+1)])]`
-/

namespace A079386.P14937307379980138465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079386.P14937307379980138465

/-!
# A079388: Records in A079387.

The programs for A079388, there is no canonical definition to state claims against.
-/

/-! ## A079388.P8163925230472184595

`record[A079387(n)]`
-/

namespace A079388.P8163925230472184595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079388.P8163925230472184595

/-! ## A079388.P15015157360240378365

`A079387(A079389(n+1)-1)`
-/

namespace A079388.P15015157360240378365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079387 (A079389 (n + 1) - 1).toNat

end

end A079388.P15015157360240378365

/-! ## A079388.P13873863980916115494

`A079387(A082551(2*n+3)+A079389(n+1))`
-/

namespace A079388.P13873863980916115494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079387 (A082551 (2 * n + 3) + A079389 (n + 1)).toNat

end

end A079388.P13873863980916115494

/-!
# A079390: a(n) = lpf(n) * lpf(n+1) * lpf(n+2), where lpf(n) = A020639(n) is the least prime factor of n.

The programs for A079390, there is no canonical definition to state claims against.
-/

/-! ## A079390.P3102702133154097387

`2*A020639(n+1)*A020639(or(1, n+2))`
-/

namespace A079390.P3102702133154097387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 1) * A020639 (Nat.lor 1 (n + 2))

end

end A079390.P3102702133154097387

/-! ## A079390.P11351571199947754271

`A020639(n+1)*A020639(n+2)*A020639(n+3)`
-/

namespace A079390.P11351571199947754271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A020639 (n + 2) * A020639 (n + 3)

end

end A079390.P11351571199947754271

/-! ## A079390.P15814761189980408256

`2*A020639(n+1)*p?[A172170(n)]`
-/

namespace A079390.P15814761189980408256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020639 (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A079390.P15814761189980408256

/-! ## A079390.P1517253132733088341

`A020639(n+1)*A061228(p?[A172170(n)])`
-/

namespace A079390.P1517253132733088341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A061228 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079390.P1517253132733088341

/-! ## A079390.P9039921765249514014

`A020639(n+1)*A070229(p?[A172170(n)])`
-/

namespace A079390.P9039921765249514014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A070229 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079390.P9039921765249514014

/-! ## A079390.P9819390696347820324

`A020639(n+1)*A159475(p?[A172170(n)])`
-/

namespace A079390.P9819390696347820324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A159475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079390.P9819390696347820324

/-! ## A079390.P687370456561324876

`A020639(n+1)*A046666(A299143(n+2)-n)`
-/

namespace A079390.P687370456561324876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A046666 (A299143 (n + 2) - (n : ℤ)).toNat

end

end A079390.P687370456561324876

/-! ## A079390.P17984462512240602721

`A014673(2*(n+1))*A014673(2*(n+2))*A014673(2*(n+3))`
-/

namespace A079390.P17984462512240602721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (n + 1)) * A014673 (2 * (n + 2)) * A014673 (2 * (n + 3))

end

end A079390.P17984462512240602721

/-!
# A079391: Number of (simple, undirected, unlabeled, connected) graphs with n vertices which contain no induced subgraph isomorphic to C5 (cycle on 5 vertices), P5 (path on 5 vertices) or complement of P5.

The programs for A079391, there is no canonical definition to state claims against.
-/

/-! ## A079391.P1799081500634075804

`A110656(A010133(n)+A006139(n))`
-/

namespace A079391.P1799081500634075804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A010133 n + A006139 n).toNat

end

end A079391.P1799081500634075804

/-! ## A079391.P9940964129194534690

`A067760(n)+A067721(A006139(n))`
-/

namespace A079391.P9940964129194534690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n + A067721 (A006139 n).toNat

end

end A079391.P9940964129194534690

/-! ## A079391.P1066040066592164649

`A278950(A150551(n)+A001930(n))`
-/

namespace A079391.P1066040066592164649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278950 (A150551 n + A001930 n).toNat

end

end A079391.P1066040066592164649

/-!
# A079392: Numbers k such that A000594(k) > 0 (Ramanujan's tau function is positive).

The programs for A079392, there is no canonical definition to state claims against.
-/

/-! ## A079392.P4072691462120198425

`lt[0, A000594(n+1)]+1`
-/

namespace A079392.P4072691462120198425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079392.P4072691462120198425

/-! ## A079392.P7258976425138120611

`filter[n+1, A040053(#)]`
-/

namespace A079392.P7258976425138120611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040053 (f1 j) = 1) n)

end

end A079392.P7258976425138120611

/-! ## A079392.P10900318018391296718

`eq[1, A040053(n+1)]+1`
-/

namespace A079392.P10900318018391296718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079392.P10900318018391296718

/-! ## A079392.P7194728104372828923

`lt[0, A308492(n+1)]+1`
-/

namespace A079392.P7194728104372828923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308492 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079392.P7194728104372828923

/-! ## A079392.P459502754726694090

`record[(n+1)*A040053(n+2)+1]`
-/

namespace A079392.P459502754726694090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A040053 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079392.P459502754726694090

/-! ## A079392.P14198566751600291051

`eq[abs(A034777(n+1)), A034777(n+1)]+1`
-/

namespace A079392.P14198566751600291051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034777 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A079392.P14198566751600291051

/-! ## A079392.P6360402752905156359

`record[A008619(n)*A040053(A008619(n))]`
-/

namespace A079392.P6360402752905156359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A040053 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079392.P6360402752905156359

/-!
# A079393: Numbers for which Ramanujan's tau function is negative.

The programs for A079393, there is no canonical definition to state claims against.
-/

/-! ## A079393.P9230041133620806819

`comp[A079392(n+1)-1]+1`
-/

namespace A079393.P9230041133620806819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079392 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079393.P9230041133620806819

/-! ## A079393.P3128313937834035842

`lt[A000594(n+1), 0]+1`
-/

namespace A079393.P3128313937834035842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A079393.P3128313937834035842

/-! ## A079393.P5954795108135227884

`eq[abs(A289833(n+1)), A289833(n+1)]+2`
-/

namespace A079393.P5954795108135227884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289833 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A079393.P5954795108135227884

/-! ## A079393.P8758862877387246433

`eq[0, A040053(n+1)]+1`
-/

namespace A079393.P8758862877387246433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079393.P8758862877387246433

/-! ## A079393.P16957183740806523859

`lt[A308492(n+1), 0]+1`
-/

namespace A079393.P16957183740806523859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308492 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A079393.P16957183740806523859

/-! ## A079393.P3034235326712190218

`eq[A008691(n)%A008692(n), A008691(n)]`
-/

namespace A079393.P3034235326712190218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008691 n) (A008692 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P3034235326712190218

/-! ## A079393.P3682364269082201046

`eq[A008692(n)%A008693(n), A008692(n)]`
-/

namespace A079393.P3682364269082201046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008692 n) (A008693 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P3682364269082201046

/-! ## A079393.P6830509587962341070

`eq[A008700(n)%A008702(n), A008700(n)]`
-/

namespace A079393.P6830509587962341070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008700 n) (A008702 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P6830509587962341070

/-! ## A079393.P5653141621496332911

`eq[A008688(n)%A008689(n), A008688(n)]`
-/

namespace A079393.P5653141621496332911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008688 n) (A008689 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P5653141621496332911

/-! ## A079393.P9556119335034208427

`eq[A008693(n)%A008694(n), A008693(n)]`
-/

namespace A079393.P9556119335034208427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008693 n) (A008694 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P9556119335034208427

/-! ## A079393.P13168388628408940960

`eq[A008697(n)%A008698(n), A008697(n)]`
-/

namespace A079393.P13168388628408940960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008697 n) (A008698 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P13168388628408940960

/-! ## A079393.P7511857251043312686

`eq[A008689(n)%A008690(n), A008689(n)]`
-/

namespace A079393.P7511857251043312686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008689 n) (A008690 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P7511857251043312686

/-! ## A079393.P1223535529169131524

`eq[A008690(n)%A008691(n), A008690(n)]`
-/

namespace A079393.P1223535529169131524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008690 n) (A008691 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079393.P1223535529169131524

/-!
# A079395: a(n) = prime(n)^11.

The programs for A079395, the canonical program `A079395.P17956439094879696764` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079395 has offset 1).

The definition of A079395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079395.P17956439094879696764

`A000040(n+1)^11`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079395

/-- `A000040(n+1)^11` -/
def P17956439094879696764.Spec : Prop :=
  ∀ n, P17956439094879696764.a n = A079395 (n + 1)

theorem P17956439094879696764.correct : P17956439094879696764.Spec := by
  intro n
  simp only [A079395, Nat.add_sub_cancel]

end A079395

/-! ## A079395.P11468390026962986937

`A000040(n+1)*A030629(n+1)`
-/

namespace A079395.P11468390026962986937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A030629 (n + 1)

end

end A079395.P11468390026962986937

namespace A079395

/-- `A000040(n+1)*A030629(n+1)` -/
def P11468390026962986937.Spec : Prop :=
  ∀ n, P11468390026962986937.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P994987050177294104

`A030516(n+1)*A050997(n+1)`
-/

namespace A079395.P994987050177294104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) * A050997 (n + 1)

end

end A079395.P994987050177294104

namespace A079395

/-- `A030516(n+1)*A050997(n+1)` -/
def P994987050177294104.Spec : Prop :=
  ∀ n, P994987050177294104.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P1147673091924416889

`A030514(n+1)*A092759(n+1)`
-/

namespace A079395.P1147673091924416889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A092759 (n + 1)

end

end A079395.P1147673091924416889

namespace A079395

/-- `A030514(n+1)*A092759(n+1)` -/
def P1147673091924416889.Spec : Prop :=
  ∀ n, P1147673091924416889.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P15501810810740986540

`A001248(n+1)*A179665(n+1)`
-/

namespace A079395.P15501810810740986540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A179665 (n + 1)

end

end A079395.P15501810810740986540

namespace A079395

/-- `A001248(n+1)*A179665(n+1)` -/
def P15501810810740986540.Spec : Prop :=
  ∀ n, P15501810810740986540.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P14261001242616445006

`A030078(n+1)*A179645(n+1)`
-/

namespace A079395.P14261001242616445006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A179645 (n + 1)

end

end A079395.P14261001242616445006

namespace A079395

/-- `A030078(n+1)*A179645(n+1)` -/
def P14261001242616445006.Spec : Prop :=
  ∀ n, P14261001242616445006.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P7903312079070264108

`A030631(n+1)/A000040(n+1)`
-/

namespace A079395.P7903312079070264108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030631 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A079395.P7903312079070264108

namespace A079395

/-- `A030631(n+1)/A000040(n+1)` -/
def P7903312079070264108.Spec : Prop :=
  ∀ n, P7903312079070264108.a n = (A079395 (n + 1) : ℚ)

end A079395

/-! ## A079395.P1184168522726922776

`A138031(n+1)/A001248(n+1)`
-/

namespace A079395.P1184168522726922776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138031 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A079395.P1184168522726922776

namespace A079395

/-- `A138031(n+1)/A001248(n+1)` -/
def P1184168522726922776.Spec : Prop :=
  ∀ n, P1184168522726922776.a n = (A079395 (n + 1) : ℚ)

end A079395

/-! ## A079395.P2585763385110950147

`A050997(n+1)²*A000040(n+1)`
-/

namespace A079395.P2585763385110950147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 2 * A000040 (n + 1)

end

end A079395.P2585763385110950147

namespace A079395

/-- `A050997(n+1)²*A000040(n+1)` -/
def P2585763385110950147.Spec : Prop :=
  ∀ n, P2585763385110950147.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P5183585768450300156

`A030514(n+1)²*A030078(n+1)`
-/

namespace A079395.P5183585768450300156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 2 * A030078 (n + 1)

end

end A079395.P5183585768450300156

namespace A079395

/-- `A030514(n+1)²*A030078(n+1)` -/
def P5183585768450300156.Spec : Prop :=
  ∀ n, P5183585768450300156.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P13624327149680474824

`A030078(n+1)²*A050997(n+1)`
-/

namespace A079395.P13624327149680474824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 * A050997 (n + 1)

end

end A079395.P13624327149680474824

namespace A079395

/-- `A030078(n+1)²*A050997(n+1)` -/
def P13624327149680474824.Spec : Prop :=
  ∀ n, P13624327149680474824.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P8395271596215515281

`A001248(n+1)²*A092759(n+1)`
-/

namespace A079395.P8395271596215515281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A092759 (n + 1)

end

end A079395.P8395271596215515281

namespace A079395

/-- `A001248(n+1)²*A092759(n+1)` -/
def P8395271596215515281.Spec : Prop :=
  ∀ n, P8395271596215515281.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P1982131543507340941

`A000040(n+1)²*A179665(n+1)`
-/

namespace A079395.P1982131543507340941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A179665 (n + 1)

end

end A079395.P1982131543507340941

namespace A079395

/-- `A000040(n+1)²*A179665(n+1)` -/
def P1982131543507340941.Spec : Prop :=
  ∀ n, P1982131543507340941.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P13366990219215620495

`A030516(n+1)²/A000040(n+1)`
-/

namespace A079395.P13366990219215620495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A079395.P13366990219215620495

namespace A079395

/-- `A030516(n+1)²/A000040(n+1)` -/
def P13366990219215620495.Spec : Prop :=
  ∀ n, P13366990219215620495.a n = (A079395 (n + 1) : ℚ)

end A079395

/-! ## A079395.P17940863199669957143

`A092759(n+1)²/A030078(n+1)`
-/

namespace A079395.P17940863199669957143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092759 (n + 1) ^ 2 : ℚ) / (A030078 (n + 1) : ℚ)

end

end A079395.P17940863199669957143

namespace A079395

/-- `A092759(n+1)²/A030078(n+1)` -/
def P17940863199669957143.Spec : Prop :=
  ∀ n, P17940863199669957143.a n = (A079395 (n + 1) : ℚ)

end A079395

/-! ## A079395.P3763000505884968319

`A138031(n+1)/A000040(n+1)²`
-/

namespace A079395.P3763000505884968319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138031 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)

end

end A079395.P3763000505884968319

namespace A079395

/-- `A138031(n+1)/A000040(n+1)²` -/
def P3763000505884968319.Spec : Prop :=
  ∀ n, P3763000505884968319.a n = (A079395 (n + 1) : ℚ)

end A079395

/-! ## A079395.P16261342714284837230

`A001248(n+1)²²*A030078(n+1)`
-/

namespace A079395.P16261342714284837230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) ^ 2) ^ 2 * A030078 (n + 1)

end

end A079395.P16261342714284837230

namespace A079395

/-- `A001248(n+1)²²*A030078(n+1)` -/
def P16261342714284837230.Spec : Prop :=
  ∀ n, P16261342714284837230.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P6258109480247930206

`A000040(n+1)²²*A092759(n+1)`
-/

namespace A079395.P6258109480247930206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2 * A092759 (n + 1)

end

end A079395.P6258109480247930206

namespace A079395

/-- `A000040(n+1)²²*A092759(n+1)` -/
def P6258109480247930206.Spec : Prop :=
  ∀ n, P6258109480247930206.a n = A079395 (n + 1)

end A079395

/-! ## A079395.P8750583556644827863

`A030078(n+1)²²/A000040(n+1)`
-/

namespace A079395.P8750583556644827863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A030078 (n + 1) ^ 2) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A079395.P8750583556644827863

namespace A079395

/-- `A030078(n+1)²²/A000040(n+1)` -/
def P8750583556644827863.Spec : Prop :=
  ∀ n, P8750583556644827863.a n = (A079395 (n + 1) : ℚ)

end A079395

/-!
# A079396: Ramanujan's tau function squared applied to primes.

The programs for A079396, there is no canonical definition to state claims against.
-/

/-! ## A079396.P4124142188814683754

`A076847(n+1)²`
-/

namespace A079396.P4124142188814683754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076847 (n + 1) ^ 2

end

end A079396.P4124142188814683754

/-! ## A079396.P17794535610442512591

`A278577(A024620(n+1))²`
-/

namespace A079396.P17794535610442512591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278577 (A024620 (n + 1)).toNat ^ 2

end

end A079396.P17794535610442512591

/-! ## A079396.P10052972460036582513

`A278577(A027883(n+1)+1)²`
-/

namespace A079396.P10052972460036582513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278577 (A027883 (n + 1) + 1).toNat ^ 2

end

end A079396.P10052972460036582513

/-! ## A079396.P12873574510776168278

`A000594(p?[xor(1, n)+1])²`
-/

namespace A079396.P12873574510776168278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A079396.P12873574510776168278

/-! ## A079396.P8238017866038447432

`A000594(p?[round(sqrt(n)+n)])²`
-/

namespace A079396.P8238017866038447432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2

end

end A079396.P8238017866038447432

/-! ## A079396.P5060785380845806559

`A000594(A000040(n+1))²`
-/

namespace A079396.P5060785380845806559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A000040 (n + 1)).toNat ^ 2

end

end A079396.P5060785380845806559

/-! ## A079396.P17124276831911856005

`A000594(A008578(n+2))²`
-/

namespace A079396.P17124276831911856005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A008578 (n + 2)).toNat ^ 2

end

end A079396.P17124276831911856005

/-! ## A079396.P17116111732174374428

`A000594(A182986(n+2))²`
-/

namespace A079396.P17116111732174374428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A182986 (n + 2)).toNat ^ 2

end

end A079396.P17116111732174374428

/-! ## A079396.P11643074713654350487

`A000594(record[A006530(n+2)])²`
-/

namespace A079396.P11643074713654350487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A079396.P11643074713654350487

/-! ## A079396.P11674394416947005786

`A000594(record[A020639(n+2)])²`
-/

namespace A079396.P11674394416947005786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A079396.P11674394416947005786

/-! ## A079396.P2874953864932162972

`A000594(A006093(n+1)+1)²`
-/

namespace A079396.P2874953864932162972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A006093 (n + 1) + 1).toNat ^ 2

end

end A079396.P2874953864932162972

/-! ## A079396.P2985680823596827983

`A000594(A100484(n+1)/2)²`
-/

namespace A079396.P2985680823596827983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat ^ 2

end

end A079396.P2985680823596827983

/-! ## A079396.P18148284818291704495

`A000594(A272198(n+1)+A272197(n+1))²`
-/

namespace A079396.P18148284818291704495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A272198 (n + 1) + A272197 (n + 1)).toNat ^ 2

end

end A079396.P18148284818291704495

/-! ## A079396.P6544846901571993125

`A249688(A000040(n+1))`
-/

namespace A079396.P6544846901571993125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249688 (A000040 (n + 1)).toNat

end

end A079396.P6544846901571993125

/-! ## A079396.P6048828916323293512

`A000594(record[A014963(n+2)])²`
-/

namespace A079396.P6048828916323293512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A079396.P6048828916323293512

/-!
# A079397: Smallest prime with memory = n.

The programs for A079397, there is no canonical definition to state claims against.
-/

/-! ## A079397.P7158968885799912111

`A000040(A179908(n+1))`
-/

namespace A079397.P7158968885799912111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179908 (n + 1)).toNat

end

end A079397.P7158968885799912111

/-! ## A079397.P10681190913407977838

`A008578(A179908(n+1)+1)`
-/

namespace A079397.P10681190913407977838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A179908 (n + 1) + 1).toNat

end

end A079397.P10681190913407977838

/-! ## A079397.P6963826137376582857

`A182986(A179908(n+1)+1)`
-/

namespace A079397.P6963826137376582857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A179908 (n + 1) + 1).toNat

end

end A079397.P6963826137376582857

/-! ## A079397.P3501626850162355024

`A158611(A179908(n+1)+2)`
-/

namespace A079397.P3501626850162355024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A179908 (n + 1) + 2).toNat

end

end A079397.P3501626850162355024

/-! ## A079397.P17117850128419048176

`A073846(2*A179908(n+1))`
-/

namespace A079397.P17117850128419048176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A179908 (n + 1)).toNat

end

end A079397.P17117850128419048176

/-!
# A079398: a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(n) = a(n-3) + a(n-4) for n > 3.

The programs for A079398, the canonical program `A079398.P2434766597343284975` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079398 has offset 0).

The definition of A079398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-4)` (program `A079398.P2434766597343284975`, by `A079398.P2434766597343284975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079398.P2434766597343284975

`a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079398

/-- `a(n-3)+a(n-4)` -/
def P2434766597343284975.Spec : Prop :=
  ∀ n, (P2434766597343284975.a n : ℤ) = A079398 n

theorem P2434766597343284975.correct : P2434766597343284975.Spec := by
  intro n
  simp only [A079398]

end A079398

/-! ## A079398.P6176263442957686199

`a(n-1)-(a(n-5)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A079398.P6176263442957686199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 3))

end

end A079398.P6176263442957686199

namespace A079398

/-- `a(n-1)-(a(n-5)-a(n-3))` -/
def P6176263442957686199.Spec : Prop :=
  ∀ n, P6176263442957686199.a n = A079398 n

end A079398

/-! ## A079398.P299690178428741603

`A127838(n)+a(n-1)` with `a(0)=0`
-/

namespace A079398.P299690178428741603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A127838 n + a (n - 1)

end

end A079398.P299690178428741603

namespace A079398

/-- `A127838(n)+a(n-1)` -/
def P299690178428741603.Spec : Prop :=
  ∀ n, P299690178428741603.a n = A079398 n

end A079398

/-! ## A079398.P9330877351240411402

`∑[A127838(abs(1-n)+1)]`
-/

namespace A079398.P9330877351240411402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079398.P9330877351240411402

namespace A079398

/-- `∑[A127838(abs(1-n)+1)]` -/
def P9330877351240411402.Spec : Prop :=
  ∀ n, P9330877351240411402.a n = A079398 n

end A079398

/-! ## A079398.P10294834838746009363

`A017817(n+3)+Δ[A017817(n)]`
-/

namespace A079398.P10294834838746009363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (n + 3) + (f1 (n + 1) - f1 n)

end

end A079398.P10294834838746009363

namespace A079398

/-- `A017817(n+3)+Δ[A017817(n)]` -/
def P10294834838746009363.Spec : Prop :=
  ∀ n, P10294834838746009363.a n = A079398 n

end A079398

/-! ## A079398.P1705817076341783280

`A127838(n+2)+A017817(n+2)`
-/

namespace A079398.P1705817076341783280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (n + 2) + A017817 (n + 2)

end

end A079398.P1705817076341783280

namespace A079398

/-- `A127838(n+2)+A017817(n+2)` -/
def P1705817076341783280.Spec : Prop :=
  ∀ n, P1705817076341783280.a n = A079398 n

end A079398

/-! ## A079398.P13561754041241885412

`∑[A127838(n+1)]-A127838(n+1)`
-/

namespace A079398.P13561754041241885412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127838 (n + 1)

end

end A079398.P13561754041241885412

namespace A079398

/-- `∑[A127838(n+1)]-A127838(n+1)` -/
def P13561754041241885412.Spec : Prop :=
  ∀ n, P13561754041241885412.a n = A079398 n

end A079398

/-! ## A079398.P14444274889373793687

`A123015(n+1)-(A123015(n)+A017817(n))`
-/

namespace A079398.P14444274889373793687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123015 (n + 1) - (A123015 n + A017817 n)

end

end A079398.P14444274889373793687

namespace A079398

/-- `A123015(n+1)-(A123015(n)+A017817(n))` -/
def P14444274889373793687.Spec : Prop :=
  ∀ n, P14444274889373793687.a n = A079398 n

end A079398

/-!
# A079399: Number of dots in Braille representation of n.

The programs for A079399, the canonical program `A079399.P11744366608838967402` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079399 has offset 0).

The definition of A079399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079399.P11744366608838967402

`A000120(A121018(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079399

/-- `A000120(A121018(n))` -/
def P11744366608838967402.Spec : Prop :=
  ∀ n, P11744366608838967402.a n = A079399 n

theorem P11744366608838967402.correct : P11744366608838967402.Spec := by
  intro n
  simp only [A079399]

end A079399

/-! ## A079399.P1818971229588681477

`A000120(A121019(n))`
-/

namespace A079399.P1818971229588681477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A121019 n).toNat

end

end A079399.P1818971229588681477

namespace A079399

/-- `A000120(A121019(n))` -/
def P1818971229588681477.Spec : Prop :=
  ∀ n, P1818971229588681477.a n = A079399 n

end A079399

/-! ## A079399.P14592378270593755203

`A072283(n)-4`
-/

namespace A079399.P14592378270593755203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 n - 4

end

end A079399.P14592378270593755203

namespace A079399

/-- `A072283(n)-4` -/
def P14592378270593755203.Spec : Prop :=
  ∀ n, P14592378270593755203.a n = A079399 n

end A079399

/-! ## A079399.P887689466352705452

`A023446(A072283(n))`
-/

namespace A079399.P887689466352705452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A072283 n).toNat

end

end A079399.P887689466352705452

namespace A079399

/-- `A023446(A072283(n))` -/
def P887689466352705452.Spec : Prop :=
  ∀ n, P887689466352705452.a n = A079399 n

end A079399

/-! ## A079399.P3865881344885540803

`A023447(A072283(n)+1)`
-/

namespace A079399.P3865881344885540803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A072283 n + 1).toNat

end

end A079399.P3865881344885540803

namespace A079399

/-- `A023447(A072283(n)+1)` -/
def P3865881344885540803.Spec : Prop :=
  ∀ n, P3865881344885540803.a n = A079399 n

end A079399

