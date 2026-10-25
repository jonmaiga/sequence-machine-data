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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A076400: Number of divisors of n-th perfect power.

The programs for A076400, there is no canonical definition to state claims against.
-/

/-! ## A076400.P2860758302721566525

`A000005(A001597(n+1))`
-/

namespace A076400.P2860758302721566525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001597 (n + 1)).toNat

end

end A076400.P2860758302721566525

/-! ## A076400.P10185783139486002265

`A000005(∑[A076412(n)])`
-/

namespace A076400.P10185783139486002265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076400.P10185783139486002265

/-! ## A076400.P11743921974672205933

`A000005(abs(A157985(n+1)))`
-/

namespace A076400.P11743921974672205933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A157985 (n + 1)|.toNat

end

end A076400.P11743921974672205933

/-! ## A076400.P8204535815974003095

`A000005(sqrt(A340588(n+1)))`
-/

namespace A076400.P8204535815974003095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A076400.P8204535815974003095

/-! ## A076400.P14165979010502293549

`A000005(A377043(n+1)+A000961(n+1))`
-/

namespace A076400.P14165979010502293549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A377043 (n + 1) + A000961 (n + 1)).toNat

end

end A076400.P14165979010502293549

/-! ## A076400.P10472329666887066606

`A000005(A025478(n+1)^A025479(n+1))`
-/

namespace A076400.P10472329666887066606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A025478 (n + 1) : ℚ) ^ (A025479 (n + 1) : ℤ))).toNat

end

end A076400.P10472329666887066606

/-! ## A076400.P5473953250903455148

`A000005(lcm(A025478(n+1), A157985(n+1)))`
-/

namespace A076400.P5473953250903455148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A025478 (n + 1)) (A157985 (n + 1)))

end

end A076400.P5473953250903455148

/-! ## A076400.P13640558687159082793

`A000005(abs(A076405(n+1)/A157987(n+1)))`
-/

namespace A076400.P13640558687159082793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway |(A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)|).toNat

end

end A076400.P13640558687159082793

/-! ## A076400.P14055528231004356286

`∑{d}[A001597(n+1), A050336(A107286(#))]`
-/

namespace A076400.P14055528231004356286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050336 (A107286 d).toNat

end

end A076400.P14055528231004356286

/-! ## A076400.P3812186983704817459

`A000005(eq[1, A274459(n+1)]+1)`
-/

namespace A076400.P3812186983704817459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076400.P3812186983704817459

/-! ## A076400.P353565078748340054

`A000005(record[(n+1)*A075802(n+1)])`
-/

namespace A076400.P353565078748340054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076400.P353565078748340054

/-!
# A076401: Sum of divisors of n-th perfect power.

The programs for A076401, there is no canonical definition to state claims against.
-/

/-! ## A076401.P15632091891784523131

`A000203(A001597(n+1))`
-/

namespace A076401.P15632091891784523131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001597 (n + 1)).toNat

end

end A076401.P15632091891784523131

/-! ## A076401.P12408958736889767452

`∑{d}[A157985(n+1), #]`
-/

namespace A076401.P12408958736889767452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A076401.P12408958736889767452

/-! ## A076401.P5815576800472974732

`∑{d}[A053289(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A076401.P5815576800472974732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A076401.P5815576800472974732

/-! ## A076401.P12827504801358965131

`A000203(∑[A076412(n)])`
-/

namespace A076401.P12827504801358965131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076401.P12827504801358965131

/-! ## A076401.P12728816305151466629

`A000203(abs(A157985(n+1)))`
-/

namespace A076401.P12728816305151466629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 |A157985 (n + 1)|.toNat

end

end A076401.P12728816305151466629

/-! ## A076401.P5978834164512093290

`A000203(sqrt(A340588(n+1)))`
-/

namespace A076401.P5978834164512093290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A076401.P5978834164512093290

/-! ## A076401.P4325310352997396833

`A000203(A076405(n+1)/A025478(n+1))`
-/

namespace A076401.P4325310352997396833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A076405 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ))).toNat

end

end A076401.P4325310352997396833

/-! ## A076401.P10913641630469515166

`A000203(lcm(A157985(n+1), A157987(n+1)))`
-/

namespace A076401.P10913641630469515166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (A157985 (n + 1)) (A157987 (n + 1)))

end

end A076401.P10913641630469515166

/-! ## A076401.P14648465058094527645

`A000203(abs(A076405(n+1)/A157987(n+1)))`
-/

namespace A076401.P14648465058094527645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway |(A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)|).toNat

end

end A076401.P14648465058094527645

/-! ## A076401.P4097963125821719946

`A000203(∑[A053289(n*a(∏{d}[n, A236842(#)]))])` with `a(0)=1`
-/

namespace A076401.P4097963125821719946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 ((n : ℤ) * f1 (∏ d ∈ Nat.divisors (f2 n), A236842 d).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076401.P4097963125821719946

/-! ## A076401.P5188050905750392064

`A000203(record[(n+1)*A075802(n+1)])`
-/

namespace A076401.P5188050905750392064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076401.P5188050905750392064

/-! ## A076401.P10080064307763610586

`A000203(A081676(A045542(n+1)))`
-/

namespace A076401.P10080064307763610586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A081676 (A045542 (n + 1)).toNat).toNat

end

end A076401.P10080064307763610586

/-!
# A076402: Euler's totient of n-th perfect power.

The programs for A076402, there is no canonical definition to state claims against.
-/

/-! ## A076402.P8343748011284847530

`A000010(A001597(n+1))`
-/

namespace A076402.P8343748011284847530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001597 (n + 1)).toNat

end

end A076402.P8343748011284847530

/-! ## A076402.P6909980422508360341

`A000010(∑[A076412(n)])`
-/

namespace A076402.P6909980422508360341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076402.P6909980422508360341

/-! ## A076402.P12048448378409478655

`A000010(abs(A157985(n+1)))`
-/

namespace A076402.P12048448378409478655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A157985 (n + 1)|.toNat

end

end A076402.P12048448378409478655

/-! ## A076402.P7993232410242509967

`A000010(sqrt(A340588(n+1)))`
-/

namespace A076402.P7993232410242509967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A076402.P7993232410242509967

/-! ## A076402.P6401827459917586977

`A000010(∪[(n+1)², A076467(n+1)])`
-/

namespace A076402.P6401827459917586977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A076402.P6401827459917586977

/-! ## A076402.P12635195562719326725

`A000010(∑{d}[A157985(n+1), A000010(#)])`
-/

namespace A076402.P12635195562719326725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A076402.P12635195562719326725

/-! ## A076402.P14765297351779318306

`A000010(A076405(n+1)/A025478(n+1))`
-/

namespace A076402.P14765297351779318306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A076405 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ))).toNat

end

end A076402.P14765297351779318306

/-! ## A076402.P7657816709338115417

`A000010(lcm(A008836(n+1), A157985(n+1)))`
-/

namespace A076402.P7657816709338115417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A008836 (n + 1)) (A157985 (n + 1)))

end

end A076402.P7657816709338115417

/-! ## A076402.P8443215945734530305

`A000010(abs(A076405(n+1)/A157987(n+1)))`
-/

namespace A076402.P8443215945734530305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway |(A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)|).toNat

end

end A076402.P8443215945734530305

/-! ## A076402.P3234383853937111678

`A000010(∑[A053289(n*a(∏{d}[n, A236842(#)]))])` with `a(0)=1`
-/

namespace A076402.P3234383853937111678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 ((n : ℤ) * f1 (∏ d ∈ Nat.divisors (f2 n), A236842 d).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076402.P3234383853937111678

/-! ## A076402.P1379668134934279292

`A000010(lcm(2, A157985(n+1)))`
-/

namespace A076402.P1379668134934279292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (A157985 (n + 1)))

end

end A076402.P1379668134934279292

/-! ## A076402.P12513749598454029560

`A000010(A081676(A045542(n+1)))`
-/

namespace A076402.P12513749598454029560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A081676 (A045542 (n + 1)).toNat).toNat

end

end A076402.P12513749598454029560

/-!
# A076403: Squarefree kernel of n-th perfect power.

The programs for A076403, there is no canonical definition to state claims against.
-/

/-! ## A076403.P6702128948796874200

`A007947(A025478(n+1))`
-/

namespace A076403.P6702128948796874200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A025478 (n + 1)).toNat

end

end A076403.P6702128948796874200

/-! ## A076403.P15705605653849842473

`∏{p}[A072813(n+1), #]`
-/

namespace A076403.P15705605653849842473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P15705605653849842473

/-! ## A076403.P11477499813467020669

`∏{p}[A157987(n+1), #]`
-/

namespace A076403.P11477499813467020669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157987 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P11477499813467020669

/-! ## A076403.P3808277691878562619

`A007947(A072813(n+1))`
-/

namespace A076403.P3808277691878562619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A072813 (n + 1)).toNat

end

end A076403.P3808277691878562619

/-! ## A076403.P7598548844224789643

`∏{p}[∑[A076412(n)], #]`
-/

namespace A076403.P7598548844224789643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P7598548844224789643

/-! ## A076403.P6164488113899866232

`∏{p}[A001597(n+1), #]`
-/

namespace A076403.P6164488113899866232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P6164488113899866232

/-! ## A076403.P5255435007461826611

`∏{p}[A157985(n+1), #]`
-/

namespace A076403.P5255435007461826611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P5255435007461826611

/-! ## A076403.P2856273699981399987

`∏{p}[A053289(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A076403.P2856273699981399987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P2856273699981399987

/-! ## A076403.P10141356281689209446

`∏{p}[A392621(n+1), #]`
-/

namespace A076403.P10141356281689209446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P10141356281689209446

/-! ## A076403.P9139809442330441763

`A007947(A392621(n+1))`
-/

namespace A076403.P9139809442330441763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A392621 (n + 1)).toNat

end

end A076403.P9139809442330441763

/-! ## A076403.P10981072348523407871

`A007947(A001597(n+1))`
-/

namespace A076403.P10981072348523407871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001597 (n + 1)).toNat

end

end A076403.P10981072348523407871

/-! ## A076403.P17826084621796702075

`gcd(A025478(n+1), A068510(A025478(n+1)+2))`
-/

namespace A076403.P17826084621796702075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025478 (n + 1)) (A068510 (A025478 (n + 1) + 2).toNat)

end

end A076403.P17826084621796702075

/-! ## A076403.P1475075199207961206

`gcd(A001597(n+1), A186944(n+1))`
-/

namespace A076403.P1475075199207961206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001597 (n + 1)) (A186944 (n + 1))

end

end A076403.P1475075199207961206

/-! ## A076403.P4102918769235098464

`gcd(A025478(n+1), A068510(n+1))`
-/

namespace A076403.P4102918769235098464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025478 (n + 1)) (A068510 (n + 1))

end

end A076403.P4102918769235098464

/-! ## A076403.P5004732741475966411

`∏{p}[A076405(n+1), #]`
-/

namespace A076403.P5004732741475966411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076403.P5004732741475966411

/-!
# A076404: Odd/even-parity of n-th perfect power.

The programs for A076404, there is no canonical definition to state claims against.
-/

/-! ## A076404.P12085199755777834688

`∑[A076412(n)]%2`
-/

namespace A076404.P12085199755777834688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A076404.P12085199755777834688

/-! ## A076404.P4129661089634753771

`A001597(n+1)%2`
-/

namespace A076404.P4129661089634753771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (n + 1)) 2

end

end A076404.P4129661089634753771

/-! ## A076404.P16549153576547413906

`A025478(n+1)%2`
-/

namespace A076404.P16549153576547413906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025478 (n + 1)) 2

end

end A076404.P16549153576547413906

/-! ## A076404.P2921642033150447169

`A072813(n+1)%2`
-/

namespace A076404.P2921642033150447169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072813 (n + 1)) 2

end

end A076404.P2921642033150447169

/-! ## A076404.P18395119291104318915

`A076396(n+1)%2`
-/

namespace A076404.P18395119291104318915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076396 (n + 1)) 2

end

end A076404.P18395119291104318915

/-! ## A076404.P4719509233751501083

`A076403(n+1)%2`
-/

namespace A076404.P4719509233751501083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076403 (n + 1)) 2

end

end A076404.P4719509233751501083

/-! ## A076404.P16868751495807497230

`A076405(n+1)%2`
-/

namespace A076404.P16868751495807497230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076405 (n + 1)) 2

end

end A076404.P16868751495807497230

/-! ## A076404.P13978942416577314779

`A340588(n+1)%2`
-/

namespace A076404.P13978942416577314779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340588 (n + 1)) 2

end

end A076404.P13978942416577314779

/-! ## A076404.P1001514693375436647

`A392621(n+1)%2`
-/

namespace A076404.P1001514693375436647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392621 (n + 1)) 2

end

end A076404.P1001514693375436647

/-! ## A076404.P1314006904384271041

`and(1, A157985(n+1))`
-/

namespace A076404.P1314006904384271041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A157985 (n + 1))

end

end A076404.P1314006904384271041

/-! ## A076404.P8957797145752102869

`and(1, A157987(n+1))`
-/

namespace A076404.P8957797145752102869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A157987 (n + 1))

end

end A076404.P8957797145752102869

/-! ## A076404.P2019941172003529573

`(A053289(n)+a(n-1))%2` with `a(0)=1`
-/

namespace A076404.P2019941172003529573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A053289 n + a (n - 1)) 2

end

end A076404.P2019941172003529573

/-! ## A076404.P1483454936712127428

`A000035(A025478(n+1))`
-/

namespace A076404.P1483454936712127428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A025478 (n + 1)).toNat

end

end A076404.P1483454936712127428

/-! ## A076404.P10586421271928685132

`A000035(A072813(n+1))`
-/

namespace A076404.P10586421271928685132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072813 (n + 1)).toNat

end

end A076404.P10586421271928685132

/-! ## A076404.P10221142373801409330

`A000035(A076396(n+1))`
-/

namespace A076404.P10221142373801409330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A076396 (n + 1)).toNat

end

end A076404.P10221142373801409330

/-! ## A076404.P7216721966534995250

`A000035(A076403(n+1))`
-/

namespace A076404.P7216721966534995250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A076403 (n + 1)).toNat

end

end A076404.P7216721966534995250

/-! ## A076404.P8998633138694424876

`A060576(A076396(n+1)-1)`
-/

namespace A076404.P8998633138694424876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A076396 (n + 1) - 1).toNat

end

end A076404.P8998633138694424876

/-! ## A076404.P6611567572500570256

`and(1, A001597(A000027(n+1)))`
-/

namespace A076404.P6611567572500570256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001597 (A000027 (n + 1)).toNat)

end

end A076404.P6611567572500570256

/-! ## A076404.P11017975632138929302

`A048993(C(2, A076396(n+1)))`
-/

namespace A076404.P11017975632138929302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Nat.choose 2 (A076396 (n + 1)).toNat)

end

end A076404.P11017975632138929302

/-! ## A076404.P1367116908566330727

`and(A001597(n+1), A060576(n))`
-/

namespace A076404.P1367116908566330727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001597 (n + 1)) (A060576 n)

end

end A076404.P1367116908566330727

/-!
# A076405: Next perfect power having the same least root of n-th perfect power, A001597.

The programs for A076405, there is no canonical definition to state claims against.
-/

/-! ## A076405.P5234494988621094947

`∑[A076412(n)]*A025478(n+1)`
-/

namespace A076405.P5234494988621094947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A025478 (n + 1)

end

end A076405.P5234494988621094947

/-! ## A076405.P6046534642568619716

`A001597(n+1)*A025478(n+1)`
-/

namespace A076405.P6046534642568619716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) * A025478 (n + 1)

end

end A076405.P6046534642568619716

/-! ## A076405.P10343952853744946325

`A157985(n+1)*A157987(n+1)`
-/

namespace A076405.P10343952853744946325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1) * A157987 (n + 1)

end

end A076405.P10343952853744946325

/-! ## A076405.P4799657599000198467

`abs(A157987(n+1))*∑[A076412(n)]`
-/

namespace A076405.P4799657599000198467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157987 (n + 1)| * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076405.P4799657599000198467

/-! ## A076405.P14784886316499674996

`abs(A001597(n+1)*A157987(n+1))`
-/

namespace A076405.P14784886316499674996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001597 (n + 1) * A157987 (n + 1)|

end

end A076405.P14784886316499674996

/-! ## A076405.P490773716471098507

`abs(A025478(n+1)*A157985(n+1))`
-/

namespace A076405.P490773716471098507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025478 (n + 1) * A157985 (n + 1)|

end

end A076405.P490773716471098507

/-! ## A076405.P9833410303299357589

`sqrt(A340588(n+1))*A025478(n+1)`
-/

namespace A076405.P9833410303299357589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 1) : ℝ) * (A025478 (n + 1) : ℝ)

end

end A076405.P9833410303299357589

/-! ## A076405.P6701994630106403322

`A025478(n+1)^(A025479(n+1)+1)`
-/

namespace A076405.P6701994630106403322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) ^ (A025479 (n + 1) + 1 : ℤ)

end

end A076405.P6701994630106403322

/-! ## A076405.P4322734880140867623

`(A075146(n+1)+A000040(n+1))*A025478(n+1)`
-/

namespace A076405.P4322734880140867623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075146 (n + 1) + A000040 (n + 1)) * A025478 (n + 1)

end

end A076405.P4322734880140867623

/-! ## A076405.P795070288209113368

`root(A001597(n+1), A025479(n+1))*A001597(n+1)`
-/

namespace A076405.P795070288209113368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℝ) ^ (1 / (A025479 (n + 1) : ℝ)) * (A001597 (n + 1) : ℝ)

end

end A076405.P795070288209113368

/-!
# A076406: Numbers whose digital sum is equal to the sum of primes from their smallest to largest prime factor.

The programs for A076406, there is no canonical definition to state claims against.
-/

/-! ## A076406.P5976158813819059807

`A174669(A000051(n))+A006093(n+1)`
-/

namespace A076406.P5976158813819059807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174669 (A000051 n).toNat + A006093 (n + 1)

end

end A076406.P5976158813819059807

/-! ## A076406.P12249528200339744702

`A325248(A001710(n))+A000549(n+1)`
-/

namespace A076406.P12249528200339744702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325248 (A001710 n).toNat + A000549 (n + 1)

end

end A076406.P12249528200339744702

/-!
# A076407: Sum of perfect powers <= n.

The programs for A076407, the canonical program `A076407.P16447474876734789034` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076407 has offset 1).

The definition of A076407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076407.P16447474876734789034

`∑[(n+1)*A075802(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076407

/-- `∑[(n+1)*A075802(n+1)]` -/
def P16447474876734789034.Spec : Prop :=
  ∀ n, P16447474876734789034.a n = A076407 (n + 1)

theorem P16447474876734789034.correct : P16447474876734789034.Spec := by
  intro n
  simp only [A076407, Nat.add_sub_cancel]

end A076407

/-! ## A076407.P14602461837298727507

`A076408(A069623(n+1))`
-/

namespace A076407.P14602461837298727507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (A069623 (n + 1)).toNat

end

end A076407.P14602461837298727507

namespace A076407

/-- `A076408(A069623(n+1))` -/
def P14602461837298727507.Spec : Prop :=
  ∀ n, P14602461837298727507.a n = A076407 (n + 1)

end A076407

/-! ## A076407.P107664982893075040

`A076408(∑[char[A045542(n+1)]]+1)`
-/

namespace A076407.P107664982893075040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076407.P107664982893075040

namespace A076407

/-- `A076408(∑[char[A045542(n+1)]]+1)` -/
def P107664982893075040.Spec : Prop :=
  ∀ n, P107664982893075040.a n = A076407 (n + 1)

end A076407

/-! ## A076407.P11161208806533254292

`A076408(∑[char[A001597(n+1)-1]])`
-/

namespace A076407.P11161208806533254292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076407.P11161208806533254292

namespace A076407

/-- `A076408(∑[char[A001597(n+1)-1]])` -/
def P11161208806533254292.Spec : Prop :=
  ∀ n, P11161208806533254292.a n = A076407 (n + 1)

end A076407

/-! ## A076407.P15774636926527370373

`A076408(∑[1-A132350(n+1)]+1)`
-/

namespace A076407.P15774636926527370373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A076407.P15774636926527370373

namespace A076407

/-- `A076408(∑[1-A132350(n+1)]+1)` -/
def P15774636926527370373.Spec : Prop :=
  ∀ n, P15774636926527370373.a n = A076407 (n + 1)

end A076407

/-! ## A076407.P3845654506929760211

`A076408(A076411(n+2))`
-/

namespace A076407.P3845654506929760211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (A076411 (n + 2)).toNat

end

end A076407.P3845654506929760211

namespace A076407

/-- `A076408(A076411(n+2))` -/
def P3845654506929760211.Spec : Prop :=
  ∀ n, P3845654506929760211.a n = A076407 (n + 1)

end A076407

/-! ## A076407.P10822161018225090648

`A076408(∑[char[A087320(n+1)-1]])`
-/

namespace A076407.P10822161018225090648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087320 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076407.P10822161018225090648

namespace A076407

/-- `A076408(∑[char[A087320(n+1)-1]])` -/
def P10822161018225090648.Spec : Prop :=
  ∀ n, P10822161018225090648.a n = A076407 (n + 1)

end A076407

/-! ## A076407.P2207667145129054833

`∑[(n+1)%A378358(n+1)]`
-/

namespace A076407.P2207667145129054833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A378358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076407.P2207667145129054833

namespace A076407

/-- `∑[(n+1)%A378358(n+1)]` -/
def P2207667145129054833.Spec : Prop :=
  ∀ n, P2207667145129054833.a n = A076407 (n + 1)

end A076407

/-! ## A076407.P8240083698727113958

`∑[lcm(∏{e}[n+1, ((-1)^#)%#], A377468(n+1))]`
-/

namespace A076407.P8240083698727113958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f2 n), Int.tmod ((-1) ^ Nat.factorization (f2 n) p) (Nat.factorization (f2 n) p : ℤ)) (A377468 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076407.P8240083698727113958

namespace A076407

/-- `∑[lcm(∏{e}[n+1, ((-1)^#)%#], A377468(n+1))]` -/
def P8240083698727113958.Spec : Prop :=
  ∀ n, (P8240083698727113958.a n : ℤ) = A076407 (n + 1)

end A076407

/-! ## A076407.P14454213040302584409

`∑[lcm(A377468(n+1), A378357(n+1))]`
-/

namespace A076407.P14454213040302584409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A377468 (n + 1)) (A378357 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076407.P14454213040302584409

namespace A076407

/-- `∑[lcm(A377468(n+1), A378357(n+1))]` -/
def P14454213040302584409.Spec : Prop :=
  ∀ n, (P14454213040302584409.a n : ℤ) = A076407 (n + 1)

end A076407

/-!
# A076408: Sum of first n perfect powers.

The programs for A076408, there is no canonical definition to state claims against.
-/

/-! ## A076408.P15776357909187321706

`∑[∑[A076412(n)]]`
-/

namespace A076408.P15776357909187321706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P15776357909187321706

/-! ## A076408.P14515804818203761627

`∑[A001597(n+1)]`
-/

namespace A076408.P14515804818203761627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P14515804818203761627

/-! ## A076408.P14753247372415981291

`∑[abs(A157985(n+1))]`
-/

namespace A076408.P14753247372415981291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P14753247372415981291

/-! ## A076408.P14923639898973412738

`∑[sqrt(A340588(n+1))]`
-/

namespace A076408.P14923639898973412738
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P14923639898973412738

/-! ## A076408.P8685107590610246635

`∑[A053289(n)+a(n-1)]` with `a(0)=1`
-/

namespace A076408.P8685107590610246635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P8685107590610246635

/-! ## A076408.P10444528726144764485

`∑[A076405(n+1)/A025478(n+1)]`
-/

namespace A076408.P10444528726144764485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P10444528726144764485

/-! ## A076408.P14463807429166081300

`∑[A025478(n+1)^A025479(n+1)]`
-/

namespace A076408.P14463807429166081300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) ^ (A025479 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P14463807429166081300

/-! ## A076408.P6937269419066687443

`∑[lcm(A008836(n+1), A157985(n+1))]`
-/

namespace A076408.P6937269419066687443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A157985 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P6937269419066687443

/-! ## A076408.P1167166141731592402

`A001597(A000027(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A076408.P1167166141731592402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001597 (A000027 (n + 1)).toNat + a (n - 1)

end

end A076408.P1167166141731592402

/-! ## A076408.P11679103177566624418

`∑[abs(A076405(n+1)/A157987(n+1))]`
-/

namespace A076408.P11679103177566624418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P11679103177566624418

/-! ## A076408.P9807126545583281079

`∑[∑[A053289(n*a(∏{d}[n, A236842(#)]))]]` with `a(0)=1`
-/

namespace A076408.P9807126545583281079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A053289 ((n : ℤ) * f2 (∏ d ∈ Nat.divisors (f3 n), A236842 d).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P9807126545583281079

/-! ## A076408.P716134343740088451

`∑[A045542(n+1)+1]-A045542(n+1)`
-/

namespace A076408.P716134343740088451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A045542 (n + 1)

end

end A076408.P716134343740088451

/-! ## A076408.P16448654806419966837

`∑[A216765(n+1)-(A053289(n+1)+1)]`
-/

namespace A076408.P16448654806419966837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1) - (A053289 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P16448654806419966837

/-! ## A076408.P6477713749088521996

`∑[record[(n+1)*A075802(n+1)]]`
-/

namespace A076408.P6477713749088521996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P6477713749088521996

/-! ## A076408.P12029734512855073596

`A076407(A045542(n+1))`
-/

namespace A076408.P12029734512855073596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076407 (A045542 (n + 1)).toNat

end

end A076408.P12029734512855073596

/-! ## A076408.P5153747287210704480

`∑[A081676(∑[A053289(n+1)])]`
-/

namespace A076408.P5153747287210704480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076408.P5153747287210704480

/-!
# A076409: Sum of the quadratic residues of prime(n).

The programs for A076409, there is no canonical definition to state claims against.
-/

/-! ## A076409.P1678923425523765255

`A166100(A102781(n+1))`
-/

namespace A076409.P1678923425523765255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A102781 (n + 1)).toNat

end

end A076409.P1678923425523765255

/-! ## A076409.P16202343307104379505

`A166100(A130290(n+1))`
-/

namespace A076409.P16202343307104379505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A130290 (n + 1)).toNat

end

end A076409.P16202343307104379505

/-! ## A076409.P8350765552647688685

`A166100(A130291(n+1)-1)`
-/

namespace A076409.P8350765552647688685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A130291 (n + 1) - 1).toNat

end

end A076409.P8350765552647688685

/-! ## A076409.P9721924466853631403

`A165909(p?[comp[n²]])`
-/

namespace A076409.P9721924466853631403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A076409.P9721924466853631403

/-! ## A076409.P15027925493109073889

`A165909(A000040(n+1))`
-/

namespace A076409.P15027925493109073889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A000040 (n + 1)).toNat

end

end A076409.P15027925493109073889

/-! ## A076409.P5310373674177496598

`A165909(A008578(n+2))`
-/

namespace A076409.P5310373674177496598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A008578 (n + 2)).toNat

end

end A076409.P5310373674177496598

/-! ## A076409.P16330534833053681807

`A165909(A175787(n+2))`
-/

namespace A076409.P16330534833053681807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A175787 (n + 2)).toNat

end

end A076409.P16330534833053681807

/-! ## A076409.P11548770049120846624

`A165909(A182986(n+2))`
-/

namespace A076409.P11548770049120846624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A182986 (n + 2)).toNat

end

end A076409.P11548770049120846624

/-! ## A076409.P7999530135065647002

`A165909(record[A006530(n+2)])`
-/

namespace A076409.P7999530135065647002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076409.P7999530135065647002

/-! ## A076409.P13079454701515735952

`A165909(record[A014963(n+2)])`
-/

namespace A076409.P13079454701515735952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076409.P13079454701515735952

/-! ## A076409.P15000517451919814312

`A165909(record[A020639(n+2)])`
-/

namespace A076409.P15000517451919814312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076409.P15000517451919814312

/-! ## A076409.P12590981954667314229

`A165909(A007504(n+1)-A007504(n))`
-/

namespace A076409.P12590981954667314229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A007504 (n + 1) - A007504 n).toNat

end

end A076409.P12590981954667314229

/-! ## A076409.P17224416513015705912

`A008837(n+1)-A125615(n+1)`
-/

namespace A076409.P17224416513015705912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A125615 (n + 1)

end

end A076409.P17224416513015705912

/-! ## A076409.P3063698277390465240

`A125615(n+1)-A282038(n+1)`
-/

namespace A076409.P3063698277390465240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125615 (n + 1) - A282038 (n + 1)

end

end A076409.P3063698277390465240

/-! ## A076409.P1243542364199773084

`A228131(A000040(n+1))+A125615(n+1)`
-/

namespace A076409.P1243542364199773084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228131 (A000040 (n + 1)).toNat + A125615 (n + 1)

end

end A076409.P1243542364199773084

/-! ## A076409.P12548846663854391139

`A125615(n+1)-A166406(A102781(n+1))`
-/

namespace A076409.P12548846663854391139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125615 (n + 1) - A166406 (A102781 (n + 1)).toNat

end

end A076409.P12548846663854391139

/-!
# A076410: (Sum of the quadratic residues of prime(n)) / prime(n).

The programs for A076410, there is no canonical definition to state claims against.
-/

/-! ## A076410.P13518035272834762238

`A076409(n+3)/A045344(n+2)`
-/

namespace A076410.P13518035272834762238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076409 (n + 3) : ℚ) / (A045344 (n + 2) : ℚ)

end

end A076410.P13518035272834762238

/-! ## A076410.P3524448147986097967

`A076409(n+3)/A000040(n+3)`
-/

namespace A076410.P3524448147986097967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076409 (n + 3) : ℚ) / (A000040 (n + 3) : ℚ)

end

end A076410.P3524448147986097967

/-! ## A076410.P11597614476441354439

`A076409(n+3)%A005097(n+2)`
-/

namespace A076410.P11597614476441354439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076409 (n + 3)) (A005097 (n + 2))

end

end A076410.P11597614476441354439

/-! ## A076410.P12185587571290743567

`A076409(n+3)/A008578(n+4)`
-/

namespace A076410.P12185587571290743567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076409 (n + 3) : ℚ) / (A008578 (n + 4) : ℚ)

end

end A076410.P12185587571290743567

/-! ## A076410.P1654371903955831887

`A076409(n+3)/record[A020639(2*n+5)]`
-/

namespace A076410.P1654371903955831887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076409 (n + 3) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A076410.P1654371903955831887

/-! ## A076410.P2368310112375173409

`A005097(n+2)-A125616(n+3)`
-/

namespace A076410.P2368310112375173409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - A125616 (n + 3)

end

end A076410.P2368310112375173409

/-! ## A076410.P15493684393958967639

`A102781(n+3)-A125616(n+3)`
-/

namespace A076410.P15493684393958967639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 3) - A125616 (n + 3)

end

end A076410.P15493684393958967639

/-! ## A076410.P3858756973242996550

`A130290(n+3)-A125616(n+3)`
-/

namespace A076410.P3858756973242996550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 3) - A125616 (n + 3)

end

end A076410.P3858756973242996550

/-! ## A076410.P1752705268383543628

`A125616(n+3)-A165951(n+3)`
-/

namespace A076410.P1752705268383543628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125616 (n + 3) - A165951 (n + 3)

end

end A076410.P1752705268383543628

/-! ## A076410.P757243575613262314

`A199117(A181709(n+1))/2`
-/

namespace A076410.P757243575613262314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199117 (A181709 (n + 1)).toNat : ℚ) / 2

end

end A076410.P757243575613262314

/-!
# A076411: Number of perfect powers < n.

The programs for A076411, the canonical program `A076411.P17634982879801196163` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076411 has offset 1).

The definition of A076411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076411.P18366836708873382924

`∑[char[∑[A076412(n)]]]`
-/

namespace A076411.P18366836708873382924
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076411.P18366836708873382924

namespace A076411

/-- `∑[char[∑[A076412(n)]]]` -/
def P18366836708873382924.Spec : Prop :=
  ∀ n, (P18366836708873382924.a n : ℤ) = A076411 (n + 1)

end A076411

/-! ## A076411.P13223536117859927449

`∑[char[A001597(n+1)]]`
-/

namespace A076411.P13223536117859927449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076411.P13223536117859927449

namespace A076411

/-- `∑[char[A001597(n+1)]]` -/
def P13223536117859927449.Spec : Prop :=
  ∀ n, (P13223536117859927449.a n : ℤ) = A076411 (n + 1)

end A076411

/-! ## A076411.P6739001486624118358

`∑[char[A081676(n+1)]]`
-/

namespace A076411.P6739001486624118358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076411.P6739001486624118358

namespace A076411

/-- `∑[char[A081676(n+1)]]` -/
def P6739001486624118358.Spec : Prop :=
  ∀ n, (P6739001486624118358.a n : ℤ) = A076411 (n + 1)

end A076411

/-! ## A076411.P5424874822034513597

`A075802(n)+a(n-1)` with `a(0)=0`
-/

namespace A076411.P5424874822034513597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A075802 n + a (n - 1)

end

end A076411.P5424874822034513597

namespace A076411

/-- `A075802(n)+a(n-1)` -/
def P5424874822034513597.Spec : Prop :=
  ∀ n, P5424874822034513597.a n = A076411 (n + 1)

end A076411

/-! ## A076411.P12961403328352273786

`∑[A075802(abs(1-n)+1)]`
-/

namespace A076411.P12961403328352273786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076411.P12961403328352273786

namespace A076411

/-- `∑[A075802(abs(1-n)+1)]` -/
def P12961403328352273786.Spec : Prop :=
  ∀ n, P12961403328352273786.a n = A076411 (n + 1)

end A076411

/-! ## A076411.P17634982879801196163

`n-∑[char[A007916(n+1)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076411

/-- `n-∑[char[A007916(n+1)]]` -/
def P17634982879801196163.Spec : Prop :=
  ∀ n, P17634982879801196163.a n = A076411 (n + 1)

theorem P17634982879801196163.correct : P17634982879801196163.Spec := by
  intro n
  simp only [A076411, Nat.add_sub_cancel]

end A076411

/-! ## A076411.P15562714232290149179

`n-∑[char[A052410(n+2)]]`
-/

namespace A076411.P15562714232290149179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076411.P15562714232290149179

namespace A076411

/-- `n-∑[char[A052410(n+2)]]` -/
def P15562714232290149179.Spec : Prop :=
  ∀ n, P15562714232290149179.a n = A076411 (n + 1)

end A076411

/-! ## A076411.P11502939266262636575

`∑[A301573(A301573(n)²)]`
-/

namespace A076411.P11502939266262636575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A301573 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076411.P11502939266262636575

namespace A076411

/-- `∑[A301573(A301573(n)²)]` -/
def P11502939266262636575.Spec : Prop :=
  ∀ n, P11502939266262636575.a n = A076411 (n + 1)

end A076411

/-! ## A076411.P115875656440074643

`A069623(n+1)-A075802(n+1)`
-/

namespace A076411.P115875656440074643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (n + 1) - A075802 (n + 1)

end

end A076411.P115875656440074643

namespace A076411

/-- `A069623(n+1)-A075802(n+1)` -/
def P115875656440074643.Spec : Prop :=
  ∀ n, P115875656440074643.a n = A076411 (n + 1)

theorem P115875656440074643.correct : P115875656440074643.Spec := by
  intro n
  simp only [A076411, Nat.add_sub_cancel, A076411.P115875656440074643.a, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A069623, A069623.P16188465153472375596.a, A075802, A075802.P15418155707765850726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076411

/-! ## A076411.P14436961066193356026

`1+A072292(n+1)-A075802(n+1)`
-/

namespace A076411.P14436961066193356026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A072292 (n + 1) - A075802 (n + 1))

end

end A076411.P14436961066193356026

namespace A076411

/-- `1+A072292(n+1)-A075802(n+1)` -/
def P14436961066193356026.Spec : Prop :=
  ∀ n, P14436961066193356026.a n = A076411 (n + 1)

theorem P14436961066193356026.correct : P14436961066193356026.Spec := by
  intro n
  simp only [A076411, Nat.add_sub_cancel, A076411.P14436961066193356026.a, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A072292, A072292.P7243147247323871744.a, A075802, A075802.P15418155707765850726.a, A069623, A069623.P16188465153472375596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076411

/-! ## A076411.P5385334353484746867

`∑[char[A087320(n+1)]]`
-/

namespace A076411.P5385334353484746867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087320 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076411.P5385334353484746867

namespace A076411

/-- `∑[char[A087320(n+1)]]` -/
def P5385334353484746867.Spec : Prop :=
  ∀ n, (P5385334353484746867.a n : ℤ) = A076411 (n + 1)

end A076411

/-! ## A076411.P12861004025598917624

`∑[char[A240981(n+1)]]`
-/

namespace A076411.P12861004025598917624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240981 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076411.P12861004025598917624

namespace A076411

/-- `∑[char[A240981(n+1)]]` -/
def P12861004025598917624.Spec : Prop :=
  ∀ n, (P12861004025598917624.a n : ℤ) = A076411 (n + 1)

end A076411

/-!
# A076412: Number of n's in A076411.

The programs for A076412, there is no canonical definition to state claims against.
-/

/-! ## A076412.P10977999404156221376

`Δ[∪[A001597(n+1), n²]]`
-/

namespace A076412.P10977999404156221376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076412.P10977999404156221376

/-! ## A076412.P10235933572456903866

`Δ[∪[A076467(n+1), n²]]`
-/

namespace A076412.P10235933572456903866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076412.P10235933572456903866

/-! ## A076412.P601132194409152789

`Δ[∪[A097054(n+1), n²]]`
-/

namespace A076412.P601132194409152789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076412.P601132194409152789

/-! ## A076412.P14153310414176139760

`A053289(n*a(∏{d}[n, A236842(#)]))` with `a(0)=1`
-/

namespace A076412.P14153310414176139760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053289 ((n : ℤ) * a (∏ d ∈ Nat.divisors (f1 n), A236842 d).toNat).toNat

end

end A076412.P14153310414176139760

/-! ## A076412.P632300089332140620

`A053289(n+1-a(∏{d}[n, A236842(#)]))` with `a(0)=1`
-/

namespace A076412.P632300089332140620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053289 ((n + 1 : ℤ) - a (∏ d ∈ Nat.divisors (f1 n), A236842 d).toNat).toNat

end

end A076412.P632300089332140620

/-! ## A076412.P4089775786851129627

`a(A008683(A001694(n+1)))*A053289(n)` with `a(0)=1`
-/

namespace A076412.P4089775786851129627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A008683 (A001694 (n + 1)).toNat).toNat * A053289 n

end

end A076412.P4089775786851129627

/-! ## A076412.P4327835197692928907

`a(A008683(A072103(n+1)))*A053289(n)` with `a(0)=1`
-/

namespace A076412.P4327835197692928907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A008683 (A072103 (n + 1)).toNat).toNat * A053289 n

end

end A076412.P4327835197692928907

/-! ## A076412.P7392875850696037163

`a(A008683((n+1)²))*A053289(n)` with `a(0)=1`
-/

namespace A076412.P7392875850696037163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A008683 ((n + 1) ^ 2)).toNat * A053289 n

end

end A076412.P7392875850696037163

/-! ## A076412.P2960395112809088858

`Δ[record[(n+1)^(1-A301573(n))]]`
-/

namespace A076412.P2960395112809088858
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A301573 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076412.P2960395112809088858

/-!
# A076413: Number of ways n is expressible as the least common multiple of a nonempty set of positive integers not containing either 1 or n.

The programs for A076413, the canonical program `A076413.P15169787164116097640` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076413 has offset 1).

The definition of A076413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076413.P2289701350471685461

`(A076078(n+1)-A100577(n+1))/2`
-/

namespace A076413.P2289701350471685461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) - A100577 (n + 1) : ℚ) / 2

end

end A076413.P2289701350471685461

namespace A076413

/-- `(A076078(n+1)-A100577(n+1))/2` -/
def P2289701350471685461.Spec : Prop :=
  ∀ n, P2289701350471685461.a n = (A076413 (n + 1) : ℚ)

end A076413

/-! ## A076413.P15169787164116097640

`A069626(n+1)-A011782(A032741(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076413

/-- `A069626(n+1)-A011782(A032741(n+1))` -/
def P15169787164116097640.Spec : Prop :=
  ∀ n, P15169787164116097640.a n = A076413 (n + 1)

theorem P15169787164116097640.correct : P15169787164116097640.Spec := by
  intro n
  simp only [A076413, Nat.add_sub_cancel]

end A076413

/-! ## A076413.P16565937672700426499

`A069626(n+1)-A000079(A070824(n+1))`
-/

namespace A076413.P16565937672700426499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1) - A000079 (A070824 (n + 1)).toNat

end

end A076413.P16565937672700426499

namespace A076413

/-- `A069626(n+1)-A000079(A070824(n+1))` -/
def P16565937672700426499.Spec : Prop :=
  ∀ n, P16565937672700426499.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P3474586511575946785

`A069626(n+1)-A166444(A000005(n+1))`
-/

namespace A076413.P3474586511575946785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1) - A166444 (A000005 (n + 1)).toNat

end

end A076413.P3474586511575946785

namespace A076413

/-- `A069626(n+1)-A166444(A000005(n+1))` -/
def P3474586511575946785.Spec : Prop :=
  ∀ n, P3474586511575946785.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P2791308406674629508

`∑{d}[A069626(n+1), A300725(#)]`
-/

namespace A076413.P2791308406674629508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300725 d

end

end A076413.P2791308406674629508

namespace A076413

/-- `∑{d}[A069626(n+1), A300725(#)]` -/
def P2791308406674629508.Spec : Prop :=
  ∀ n, P2791308406674629508.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P5600253497770360328

`A069626(n+1)-A000010(A100577(n+1))`
-/

namespace A076413.P5600253497770360328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1) - A000010 (A100577 (n + 1)).toNat

end

end A076413.P5600253497770360328

namespace A076413

/-- `A069626(n+1)-A000010(A100577(n+1))` -/
def P5600253497770360328.Spec : Prop :=
  ∀ n, P5600253497770360328.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P9510622683471379762

`A053645(A069626(n+1))`
-/

namespace A076413.P9510622683471379762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A069626 (n + 1)).toNat

end

end A076413.P9510622683471379762

namespace A076413

/-- `A053645(A069626(n+1))` -/
def P9510622683471379762.Spec : Prop :=
  ∀ n, P9510622683471379762.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P16533380123656397282

`A164089(A076078(n+1))`
-/

namespace A076413.P16533380123656397282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A076078 (n + 1)).toNat

end

end A076413.P16533380123656397282

namespace A076413

/-- `A164089(A076078(n+1))` -/
def P16533380123656397282.Spec : Prop :=
  ∀ n, P16533380123656397282.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P5595899833744620580

`A164089(2*A069626(n+1))`
-/

namespace A076413.P5595899833744620580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * A069626 (n + 1)).toNat

end

end A076413.P5595899833744620580

namespace A076413

/-- `A164089(2*A069626(n+1))` -/
def P5595899833744620580.Spec : Prop :=
  ∀ n, P5595899833744620580.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P14985638929988026665

`A164089(A069626(n+1)+A069626(n+1)+1)`
-/

namespace A076413.P14985638929988026665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A069626 (n + 1) + (A069626 (n + 1) + 1)).toNat

end

end A076413.P14985638929988026665

namespace A076413

/-- `A164089(A069626(n+1)+A069626(n+1)+1)` -/
def P14985638929988026665.Spec : Prop :=
  ∀ n, P14985638929988026665.a n = A076413 (n + 1)

end A076413

/-! ## A076413.P9916972628991687661

`A318670(A064988(n+1))-1`
-/

namespace A076413.P9916972628991687661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318670 (A064988 (n + 1)).toNat - 1

end

end A076413.P9916972628991687661

namespace A076413

/-- `A318670(A064988(n+1))-1` -/
def P9916972628991687661.Spec : Prop :=
  ∀ n, P9916972628991687661.a n = A076413 (n + 1)

end A076413

/-!
# A076423: Number of iterations of the mapping k -> abs(reverse(lpd(k))-reverse(gpf(k))) to reach zero, or -1 if zero is never reached. lpd(k) is the largest proper divisor and gpf(k) is the greatest prime factor of k.

The programs for A076423, there is no canonical definition to state claims against.
-/

/-! ## A076423.P13847938281631814121

`A075660(A075660(n+1)^A141248(n+1))`
-/

namespace A076423.P13847938281631814121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075660 (SequenceMachineLib.roundAway ((A075660 (n + 1) : ℚ) ^ (A141248 (n + 1) : ℤ))).toNat

end

end A076423.P13847938281631814121

/-! ## A076423.P9033520332474781663

`A075660((n+1)^A333901(n))`
-/

namespace A076423.P9033520332474781663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A333901 n : ℤ))).toNat

end

end A076423.P9033520332474781663

/-! ## A076423.P17407035090789176884

`A075660(n+1)-A086016(A204978(n+1))`
-/

namespace A076423.P17407035090789176884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075660 (n + 1) - A086016 (A204978 (n + 1)).toNat

end

end A076423.P17407035090789176884

/-! ## A076423.P7194642097217897693

`A330061(A075660(n+1)%A271269(2*(n+1)))`
-/

namespace A076423.P7194642097217897693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (Int.tmod (A075660 (n + 1)) (A271269 (2 * (n + 1)))).toNat

end

end A076423.P7194642097217897693

/-! ## A076423.P17559679733566312025

`A075660((n+1)^A331461(n))`
-/

namespace A076423.P17559679733566312025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A331461 n : ℤ))).toNat

end

end A076423.P17559679733566312025

/-!
# A076431: Perfect powers for which the two closest perfect powers are smaller.

The programs for A076431, there is no canonical definition to state claims against.
-/

/-! ## A076431.P4021776099598485

`filter[A355062(n+3), A075897(#)]`
-/

namespace A076431.P4021776099598485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355062 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A076431.P4021776099598485

/-! ## A076431.P5366546035610823598

`A081676(A190339(n)+A052221(n+1))`
-/

namespace A076431.P5366546035610823598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A190339 n + A052221 (n + 1)).toNat

end

end A076431.P5366546035610823598

/-!
# A076432: Perfect powers for which the three closest perfect powers are smaller.

The programs for A076432, there is no canonical definition to state claims against.
-/

/-! ## A076432.P16943795380996077505

`(A097056(n+1)+1)²`
-/

namespace A076432.P16943795380996077505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097056 (n + 1) + 1) ^ 2

end

end A076432.P16943795380996077505

/-! ## A076432.P6127668050277725945

`ceil(sqrt(A117934(2*n+1)))²`
-/

namespace A076432.P6127668050277725945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A117934 (2 * n + 1) : ℝ)⌉ ^ 2

end

end A076432.P6127668050277725945

/-! ## A076432.P6913255013997241699

`(A124625(2*(n+3))+floor(sqrt(A117934(2*n+1))))²`
-/

namespace A076432.P6913255013997241699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124625 (2 * (n + 3)) + Int.sqrt (A117934 (2 * n + 1))) ^ 2

end

end A076432.P6913255013997241699

/-! ## A076432.P5405287923907130097

`(A339748(3*n+5)+floor(sqrt(A117934(2*n+1))))²`
-/

namespace A076432.P5405287923907130097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339748 (3 * n + 5) + Int.sqrt (A117934 (2 * n + 1))) ^ 2

end

end A076432.P5405287923907130097

/-!
# A076434: Number of weakly regular simple graphs on n nodes.

The programs for A076434, there is no canonical definition to state claims against.
-/

/-! ## A076434.P6182521658967524225

`A005176(n+1)-A076435(n+1)`
-/

namespace A076434.P6182521658967524225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 (n + 1) - A076435 (n + 1)

end

end A076434.P6182521658967524225

/-! ## A076434.P14004782145754705507

`A005176(n+1)-(A372917(n+1)+A337566(n+1))`
-/

namespace A076434.P14004782145754705507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 (n + 1) - (A372917 (n + 1) + A337566 (n + 1))

end

end A076434.P14004782145754705507

/-! ## A076434.P12167429149539679035

`A294405(n+1)+A165927(A000041(n))`
-/

namespace A076434.P12167429149539679035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294405 (n + 1) + A165927 (A000041 n).toNat

end

end A076434.P12167429149539679035

/-! ## A076434.P16431022993803608368

`A294405(n+1)+A241742(A241740(n))`
-/

namespace A076434.P16431022993803608368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294405 (n + 1) + A241742 (A241740 n).toNat

end

end A076434.P16431022993803608368

/-! ## A076434.P11127838341615568871

`A241742(A241740(n))+A005177(n+1)-A088741(n+1)`
-/

namespace A076434.P11127838341615568871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241742 (A241740 n).toNat + (A005177 (n + 1) - A088741 (n + 1))

end

end A076434.P11127838341615568871

/-!
# A076435: Number of strongly regular simple graphs on n nodes.

The programs for A076435, there is no canonical definition to state claims against.
-/

/-! ## A076435.P15406324913732267548

`A372917(n+1)+A337566(n+1)`
-/

namespace A076435.P15406324913732267548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372917 (n + 1) + A337566 (n + 1)

end

end A076435.P15406324913732267548

/-! ## A076435.P5604591643802915243

`A005176(n+1)-A076434(n+1)`
-/

namespace A076435.P5604591643802915243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 (n + 1) - A076434 (n + 1)

end

end A076435.P5604591643802915243

/-! ## A076435.P2170446541736827223

`∑{d}[n+1, A072491(#)*A279522((n+1)/#)]`
-/

namespace A076435.P2170446541736827223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072491 d * A279522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076435.P2170446541736827223

/-! ## A076435.P82300100941276558

`∑{d}[n+1, A163109(#)*A279522((n+1)/#)]`
-/

namespace A076435.P82300100941276558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A163109 d * A279522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076435.P82300100941276558

/-! ## A076435.P3371169354336502744

`∑{d}[n+1, A163377(#)*A279522((n+1)/#)]`
-/

namespace A076435.P3371169354336502744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A163377 d * A279522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076435.P3371169354336502744

/-!
# A076436: Square board sizes for which the lights-out problem has a unique solution (counting solutions differing only by rotation and reflection as distinct).

The programs for A076436, there is no canonical definition to state claims against.
-/

/-! ## A076436.P3689260480127888948

`lt[A159257(n+1), 1]+1`
-/

namespace A076436.P3689260480127888948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076436.P3689260480127888948

/-! ## A076436.P66252213110906788

`comp[A117870(n+1)-1]+1`
-/

namespace A076436.P66252213110906788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117870 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A076436.P66252213110906788

/-! ## A076436.P7296292055105725228

`eq[2, A035336(A159257(n+1)+1)]+1`
-/

namespace A076436.P7296292055105725228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A159257 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076436.P7296292055105725228

/-! ## A076436.P6894910927119148258

`eq[2, A050007(A159257(n+1)+1)]+1`
-/

namespace A076436.P6894910927119148258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050007 (A159257 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076436.P6894910927119148258

/-! ## A076436.P12032915471857532416

`eq[2, A347634(A159257(n+1)+1)]+1`
-/

namespace A076436.P12032915471857532416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (A159257 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076436.P12032915471857532416

/-! ## A076436.P15906632253869345234

`record[(n+1)/A003188(A159257(n+1)+1)]`
-/

namespace A076436.P15906632253869345234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003188 (A159257 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076436.P15906632253869345234

/-! ## A076436.P4698877482112767345

`record[(n+1)/A000124(A159257(n+1)/2)]`
-/

namespace A076436.P4698877482112767345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000124 (SequenceMachineLib.roundAway ((A159257 (n + 1) : ℚ) / 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076436.P4698877482112767345

/-! ## A076436.P18023183337314007035

`record[(n+1)/A179340(∑{digits}[A159257(n+1), #]+1)]`
-/

namespace A076436.P18023183337314007035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A179340 (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076436.P18023183337314007035

/-! ## A076436.P16402628046807525606

`record[(n+1)/∑{digits}[A159257(n+1), A214238(#+1)]]`
-/

namespace A076436.P16402628046807525606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A214238 (x + 1)).sum : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076436.P16402628046807525606

/-! ## A076436.P11514185023836782746

`record[(n+1)/A000213(A159257(n+1)+1)]`
-/

namespace A076436.P11514185023836782746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000213 (A159257 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076436.P11514185023836782746

/-! ## A076436.P12658038488752888781

`eq[1, A075462(n+1)]+1`
-/

namespace A076436.P12658038488752888781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076436.P12658038488752888781

/-!
# A076437: Square board sizes for which the lights out problem has a unique solution (counting solutions differing only by rotation and reflection as equivalent).

The programs for A076437, there is no canonical definition to state claims against.
-/

/-! ## A076437.P7398047531324980781

`eq[1, A075463(n+1)]+1`
-/

namespace A076437.P7398047531324980781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076437.P7398047531324980781

/-! ## A076437.P6940933330850106740

`lt[A159257(n+1), 3]+1`
-/

namespace A076437.P6940933330850106740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076437.P6940933330850106740

/-! ## A076437.P12843909704805409515

`eq[n, lcm(n, A075462(n+1))]+1`
-/

namespace A076437.P12843909704805409515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A075462 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076437.P12843909704805409515

/-! ## A076437.P17865540629825650619

`record[A000027(n+1)/A075463(n+1)]`
-/

namespace A076437.P17865540629825650619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A075463 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076437.P17865540629825650619

/-! ## A076437.P13852138584927113799

`eq[1, A046073(A159257(n+1)+1)]+1`
-/

namespace A076437.P13852138584927113799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A159257 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076437.P13852138584927113799

/-! ## A076437.P9459045635282946934

`record[(n+1)/A328301(A159257(n+1)+1)]`
-/

namespace A076437.P9459045635282946934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A328301 (A159257 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076437.P9459045635282946934

/-! ## A076437.P17274161116300593190

`record[(n+1)/A214238(A159257(n+1)/2+1)]`
-/

namespace A076437.P17274161116300593190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214238 (SequenceMachineLib.roundAway ((A159257 (n + 1) : ℚ) / 2 + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076437.P17274161116300593190

/-!
# A076438: Numbers k which appear to have a unique representation as the difference of two perfect powers; that is, there is only one solution to Pillai's equation a^x - b^y = k, with a > 0, b > 0, x > 1, y > 1.

The programs for A076438, there is no canonical definition to state claims against.
-/

/-! ## A076438.P7937581713172864718

`∪[A076439(n+1), A076440(n+1)]`
-/

namespace A076438.P7937581713172864718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076438.P7937581713172864718

/-! ## A076438.P16107064066773367838

`eq[1, A076427(n+1)]+1`
-/

namespace A076438.P16107064066773367838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076438.P16107064066773367838

/-! ## A076438.P2126958671888103607

`eq[A054977(n), A076427(A028310(n))]`
-/

namespace A076438.P2126958671888103607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076438.P2126958671888103607

/-! ## A076438.P10077974629443346570

`eq[A057427(n), A076427(A028310(n))]`
-/

namespace A076438.P10077974629443346570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076438.P10077974629443346570

/-!
# A076439: Numbers k which appear to have a unique representation as the difference of two perfect powers where those powers are both 2; that is, there is only one solution to Pillai's equation a^x - b^y = k, with a > 0, b > 0, x > 1, y > 1 and that solution has x = y = 2.

The programs for A076439, there is no canonical definition to state claims against.
-/

/-! ## A076439.P6365240823911568805

`filter[A076438(n+2), A035263(#)]`
-/

namespace A076439.P6365240823911568805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A076439.P6365240823911568805

/-! ## A076439.P5510297477968235262

`filter[A076438(n+2), A104106(#)]`
-/

namespace A076439.P5510297477968235262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A076439.P5510297477968235262

/-! ## A076439.P16929205925310548072

`filter[A076438(n+2), A152822(#)]`
-/

namespace A076439.P16929205925310548072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A076439.P16929205925310548072

/-! ## A076439.P5943859463906407194

`filter[A076438(n+2), A187074(#)]`
-/

namespace A076439.P5943859463906407194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A076439.P5943859463906407194

/-! ## A076439.P1394924870471386912

`filter[A076438(n+2), A209198(#)]`
-/

namespace A076439.P1394924870471386912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209198 (f1 j).toNat = 1) n)

end

end A076439.P1394924870471386912

/-!
# A076440: Numbers k which appear to have a unique representation as the difference of two perfect powers where one of those powers is odd; that is, there is only one solution to Pillai's equation a^x - b^y = k, with a > 0, b > 0, x > 1, y > 1 and that solution has odd x or odd y (or both odd).

The programs for A076440, there is no canonical definition to state claims against.
-/

/-! ## A076440.P2477195400404385133

`filter[A076438(n+1), A391844(#)]`
-/

namespace A076440.P2477195400404385133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A076440.P2477195400404385133

/-! ## A076440.P12458755129094845531

`∩[A076438(n+1), A111284(n+1)]`
-/

namespace A076440.P12458755129094845531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076440.P12458755129094845531

/-! ## A076440.P11064219924471206273

`∩[A076438(n+1), A139544(n+1)]`
-/

namespace A076440.P11064219924471206273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076440.P11064219924471206273

/-! ## A076440.P15930020112195397060

`∩[A076438(n+1), A391845(n+1)]`
-/

namespace A076440.P15930020112195397060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076440.P15930020112195397060

/-! ## A076440.P6619834141715574703

`∩[A076438(n+1), A325706(n+1)]`
-/

namespace A076440.P6619834141715574703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076440.P6619834141715574703

/-!
# A076441: Let u(1) = u(2) = u(3) = 1; u(n) = sign(u(n-1)-u(n-2))*u(n-3), then a(n) = 1+u(n).

The programs for A076441, the canonical program `A076441.P10633455028419172154` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076441 has offset 1).

The definition of A076441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076441.P10633455028419172154

`(dr(2*n)!+2*n+1)%3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076441

/-- `(dr(2*n)!+2*n+1)%3` -/
def P10633455028419172154.Spec : Prop :=
  ∀ n, (P10633455028419172154.a n : ℤ) = A076441 (n + 1)

theorem P10633455028419172154.correct : P10633455028419172154.Spec := by
  intro n
  simp only [A076441, Nat.add_sub_cancel]

end A076441

/-!
# A076442: Odd-digit perfect powers.

The programs for A076442, there is no canonical definition to state claims against.
-/

/-! ## A076442.P8285161758328116877

`A110449(2*n+1)^A020639(A110430(n))`
-/

namespace A076442.P8285161758328116877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110449 (2 * n + 1) : ℚ) ^ (A020639 (A110430 n).toNat : ℤ)

end

end A076442.P8285161758328116877

/-!
# A076444: Smallest powerful number (definition 1) such that a(n)+n is also powerful.

The programs for A076444, there is no canonical definition to state claims against.
-/

/-! ## A076444.P14853722077906181573

`A103952(n+1)-(n+1)`
-/

namespace A076444.P14853722077906181573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103952 (n + 1) - (n + 1 : ℤ)

end

end A076444.P14853722077906181573

/-! ## A076444.P14461001534268249130

`abs(2*n-(n-1)-A103952(2*n-(n-1)))`
-/

namespace A076444.P14461001534268249130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - ((n : ℤ) - 1) - A103952 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat|

end

end A076444.P14461001534268249130

/-! ## A076444.P15168311515269077443

`A103952(A029579(2*n))-n-1`
-/

namespace A076444.P15168311515269077443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103952 (A029579 (2 * n)).toNat - (n : ℤ) - 1

end

end A076444.P15168311515269077443

/-! ## A076444.P1067687741589878667

`(A103954(n+1)+A103952(n+1))%A103955(n+1)`
-/

namespace A076444.P1067687741589878667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103954 (n + 1) + A103952 (n + 1)) (A103955 (n + 1))

end

end A076444.P1067687741589878667

/-! ## A076444.P17084291440955023605

`A196838(A091823(n+1))+A103952(n+1)`
-/

namespace A076444.P17084291440955023605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (A091823 (n + 1)).toNat + A103952 (n + 1)

end

end A076444.P17084291440955023605

/-!
# A076445: The smaller of a pair of powerful numbers (A001694) that differ by 2.

The programs for A076445, there is no canonical definition to state claims against.
-/

/-! ## A076445.P10402526481980312652

`A365983(n+1)-1`
-/

namespace A076445.P10402526481980312652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365983 (n + 1) - 1

end

end A076445.P10402526481980312652

/-!
# A076446: Differences of consecutive powerful numbers (definition 1).

The programs for A076446, there is no canonical definition to state claims against.
-/

/-! ## A076446.P4826332651307604426

`A001694(n+2)-A001694(n+1)`
-/

namespace A076446.P4826332651307604426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 2) - A001694 (n + 1)

end

end A076446.P4826332651307604426

/-! ## A076446.P7669266067120519026

`Δ[∪[A001597(n+1), A216426(n+1)]]`
-/

namespace A076446.P7669266067120519026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P7669266067120519026

/-! ## A076446.P8029769992879585248

`Δ[∪[A001597(n+1), A216427(n+1)]]`
-/

namespace A076446.P8029769992879585248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P8029769992879585248

/-! ## A076446.P13192076719876750435

`Δ[A001694(n+1)]`
-/

namespace A076446.P13192076719876750435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076446.P13192076719876750435

/-! ## A076446.P17294417874688125277

`Δ[A224866(n+1)]`
-/

namespace A076446.P17294417874688125277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076446.P17294417874688125277

/-! ## A076446.P1267102534222221571

`Δ[sqrt(A374291(n+1))]`
-/

namespace A076446.P1267102534222221571
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374291 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076446.P1267102534222221571

/-! ## A076446.P4818533083374906358

`A224866(n+2)-A224866(n+1)`
-/

namespace A076446.P4818533083374906358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 2) - A224866 (n + 1)

end

end A076446.P4818533083374906358

/-! ## A076446.P7686093598081472299

`Δ[A084371(n+1)*A306458(n+1)]`
-/

namespace A076446.P7686093598081472299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076446.P7686093598081472299

/-! ## A076446.P15971438499960548391

`Δ[A064549(A306458(n+1))]`
-/

namespace A076446.P15971438499960548391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076446.P15971438499960548391

/-! ## A076446.P16948473293207358328

`Δ[eq[1, A055231(n+1)]]`
-/

namespace A076446.P16948473293207358328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P16948473293207358328

/-! ## A076446.P5953997904951804005

`Δ[lt[n, A183097(n+1)]]`
-/

namespace A076446.P5953997904951804005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P5953997904951804005

/-! ## A076446.P7616785336472583474

`Δ[record[A057521(n+1)]]`
-/

namespace A076446.P7616785336472583474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076446.P7616785336472583474

/-! ## A076446.P6820136315769505126

`Δ[eq[0, A056169(n+1)]]`
-/

namespace A076446.P6820136315769505126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P6820136315769505126

/-! ## A076446.P14740570947503407248

`Δ[eq[1, A134193(n+1)]]`
-/

namespace A076446.P14740570947503407248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134193 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P14740570947503407248

/-! ## A076446.P6466677685156882312

`Δ[lt[0, A188585(n+1)]]`
-/

namespace A076446.P6466677685156882312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P6466677685156882312

/-! ## A076446.P13097410039328675155

`Δ[lt[0, A332712(n+1)]]`
-/

namespace A076446.P13097410039328675155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076446.P13097410039328675155

/-! ## A076446.P16213873612958449005

`Δ[record[A379545(n+1)]]`
-/

namespace A076446.P16213873612958449005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076446.P16213873612958449005

/-!
# A076447: Let v(1)=v(2)=v(3)=1, v(n)=(-1)^n*sign(v(n-1)-v(n-2))*v(n-3), then a(n) =1+v(n).

The programs for A076447, there is no canonical definition to state claims against.
-/

/-! ## A076447.P6622953617938987809

`A076451(A004482(n)+n)`
-/

namespace A076447.P6622953617938987809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076451 (A004482 n + (n : ℤ)).toNat

end

end A076447.P6622953617938987809

/-!
# A076448: Numbers one more than a power of 2 which are the sum of n consecutive numbers one more than a power of 2.

The programs for A076448, the canonical program `A076448.P10962156617657268878` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076448 has offset 2).

The definition of A076448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076448.P10962156617657268878

`2^(2^n+n+2-1)+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076448

/-- `2^(2^n+n+2-1)+1` -/
def P10962156617657268878.Spec : Prop :=
  ∀ n, P10962156617657268878.a n = (A076448 (n + 2) : ℚ)

end A076448

/-! ## A076448.P8625748913619243727

`or(1, 2^∑[a(n-1)-(1-a(n-1))])` with `a(0)=2, a(1)=2`
-/

namespace A076448.P8625748913619243727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)))

end

end A076448.P8625748913619243727

namespace A076448

/-- `or(1, 2^∑[a(n-1)-(1-a(n-1))])` -/
def P8625748913619243727.Spec : Prop :=
  ∀ n, P8625748913619243727.a n = A076448 (n + 2)

end A076448

/-! ## A076448.P15582289484019517973

`xor(1, 2^∑[a(n-1)-(1-a(n-1))])` with `a(0)=2, a(1)=2`
-/

namespace A076448.P15582289484019517973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)))

end

end A076448.P15582289484019517973

namespace A076448

/-- `xor(1, 2^∑[a(n-1)-(1-a(n-1))])` -/
def P15582289484019517973.Spec : Prop :=
  ∀ n, P15582289484019517973.a n = A076448 (n + 2)

end A076448

/-! ## A076448.P8919716672149253593

`A000337(2^n+1)`
-/

namespace A076448.P8919716672149253593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (2 ^ n + 1)

end

end A076448.P8919716672149253593

namespace A076448

/-- `A000337(2^n+1)` -/
def P8919716672149253593.Spec : Prop :=
  ∀ n, P8919716672149253593.a n = A076448 (n + 2)

end A076448

/-! ## A076448.P12521671601274369980

`A000051(A005126(n))`
-/

namespace A076448.P12521671601274369980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A005126 n).toNat

end

end A076448.P12521671601274369980

namespace A076448

/-- `A000051(A005126(n))` -/
def P12521671601274369980.Spec : Prop :=
  ∀ n, P12521671601274369980.a n = A076448 (n + 2)

end A076448

/-!
# A076449: Least number whose digits can be used to form exactly n different primes (not necessarily using all digits).

The programs for A076449, there is no canonical definition to state claims against.
-/

/-! ## A076449.P2369208857639042358

`A171561(A054842(n))^A118914(n+2)`
-/

namespace A076449.P2369208857639042358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171561 (A054842 n).toNat : ℚ) ^ (A118914 (n + 2) : ℤ)

end

end A076449.P2369208857639042358

/-! ## A076449.P2896623818381051980

`A328867(A018003(n)^A008480(n+4))`
-/

namespace A076449.P2896623818381051980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (SequenceMachineLib.roundAway ((A018003 n : ℚ) ^ (A008480 (n + 4) : ℤ))).toNat

end

end A076449.P2896623818381051980

/-!
# A076450: Natural sculptures.

The programs for A076450, there is no canonical definition to state claims against.
-/

/-! ## A076450.P6501220764959685528

`∑[A076500(floor(acot(n)+n))]`
-/

namespace A076450.P6501220764959685528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076500 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076450.P6501220764959685528

/-! ## A076450.P11800279716087168546

`∑[A076500(n^floor(atan(n)))]`
-/

namespace A076450.P11800279716087168546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076500 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076450.P11800279716087168546

/-! ## A076450.P15382752907240236790

`A076500(n)+a(n-1)` with `a(0)=1`
-/

namespace A076450.P15382752907240236790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076500 n + a (n - 1)

end

end A076450.P15382752907240236790

/-! ## A076450.P3295665653914800466

`∑[A076500(round(sqrt(n²+1)))]`
-/

namespace A076450.P3295665653914800466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076500 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076450.P3295665653914800466

/-! ## A076450.P13569867636066134682

`∑[A076500(n+1)]+1-A076500(n+1)`
-/

namespace A076450.P13569867636066134682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A076500 (n + 1))

end

end A076450.P13569867636066134682

/-!
# A076451: Let w(1)=w(2)=w(3)=1, w(n) = (-1)^floor(n/2)*sign(w(n-1)-w(n-2))*w(n-3), then a(n) = 1+w(n).

The programs for A076451, there is no canonical definition to state claims against.
-/

/-! ## A076451.P10729431717128784081

`A284620(7*A299259(n))`
-/

namespace A076451.P10729431717128784081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (7 * A299259 n).toNat

end

end A076451.P10729431717128784081

/-!
# A076452: a(n+2) = abs(a(n+1)) - a(n), a(0)=0, a(1)=1.

The programs for A076452, the canonical program `A076452.P10690128447989856146` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076452 has offset 0).

The definition of A076452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076452.P10690128447989856146

`abs(a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076452

/-- `abs(a(n-1))-a(n-2)` -/
def P10690128447989856146.Spec : Prop :=
  ∀ n, P10690128447989856146.a n = A076452 n

theorem P10690128447989856146.correct : P10690128447989856146.Spec := by
  intro n
  simp only [A076452]

end A076452

/-!
# A076453: a(n+2) = abs(a(n+1)) - a(n), a(0)=1, a(1)=0.

The programs for A076453, the canonical program `A076453.P742944420815312404` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076453 has offset 0).

The definition of A076453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076453.P742944420815312404

`abs(a(n-1))-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076453

/-- `abs(a(n-1))-a(n-2)` -/
def P742944420815312404.Spec : Prop :=
  ∀ n, P742944420815312404.a n = A076453 n

theorem P742944420815312404.correct : P742944420815312404.Spec := by
  intro n
  simp only [A076453]

end A076453

/-!
# A076454: Sum of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly one way.

The programs for A076454, the canonical program `A076454.P16844295546395959144` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076454 has offset 1).

The definition of A076454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076454.P17184906874826895348

`(n+1)*(n+2)*(2*(n+1)²-1)/2`
-/

namespace A076454.P17184906874826895348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - 1) : ℚ) / 2

end

end A076454.P17184906874826895348

namespace A076454

/-- `(n+1)*(n+2)*(2*(n+1)²-1)/2` -/
def P17184906874826895348.Spec : Prop :=
  ∀ n, P17184906874826895348.a n = (A076454 (n + 1) : ℚ)

theorem P17184906874826895348.correct : P17184906874826895348.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A076454, Nat.add_sub_cancel, A076454.P17184906874826895348.a, A076454.P16844295546395959144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A076454, Nat.add_sub_cancel, A076454.P17184906874826895348.a, A076454.P16844295546395959144.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A076454

/-! ## A076454.P16844295546395959144

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=21, a(2)=102, a(3)=310, a(4)=735`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076454

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16844295546395959144.Spec : Prop :=
  ∀ n, P16844295546395959144.a n = A076454 (n + 1)

theorem P16844295546395959144.correct : P16844295546395959144.Spec := by
  intro n
  simp only [A076454, Nat.add_sub_cancel]

end A076454

/-! ## A076454.P3528509716773816461

`lcm(1-∑[4*n+2], ∑[n+1])`
-/

namespace A076454.P3528509716773816461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A076454.P3528509716773816461

namespace A076454

/-- `lcm(1-∑[4*n+2], ∑[n+1])` -/
def P3528509716773816461.Spec : Prop :=
  ∀ n, (P3528509716773816461.a n : ℤ) = A076454 (n + 1)

end A076454

/-! ## A076454.P5443247521770616041

`lcm(n+2, (n+1)^3)-∑[n+1]`
-/

namespace A076454.P5443247521770616041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ 3) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076454.P5443247521770616041

namespace A076454

/-- `lcm(n+2, (n+1)^3)-∑[n+1]` -/
def P5443247521770616041.Spec : Prop :=
  ∀ n, P5443247521770616041.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P503515102466903220

`((n+2)*2*n+1)*C(n+2, 2)`
-/

namespace A076454.P503515102466903220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (2 * n) + 1) * Nat.choose (n + 2) 2

end

end A076454.P503515102466903220

namespace A076454

/-- `((n+2)*2*n+1)*C(n+2, 2)` -/
def P503515102466903220.Spec : Prop :=
  ∀ n, (P503515102466903220.a n : ℤ) = A076454 (n + 1)

end A076454

/-! ## A076454.P381193559491782012

`(∑[a(n-1)+4]-1)*∑[n+1]` with `a(0)=2`
-/

namespace A076454.P381193559491782012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A076454.P381193559491782012

namespace A076454

/-- `(∑[a(n-1)+4]-1)*∑[n+1]` -/
def P381193559491782012.Spec : Prop :=
  ∀ n, P381193559491782012.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P8001245643957506428

`a(n-1)+((2*n+1)²+n)*(n+1)` with `a(0)=1`
-/

namespace A076454.P8001245643957506428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1) ^ 2 + n) * (n + 1)

end

end A076454.P8001245643957506428

namespace A076454

/-- `a(n-1)+((2*n+1)²+n)*(n+1)` -/
def P8001245643957506428.Spec : Prop :=
  ∀ n, (P8001245643957506428.a n : ℤ) = A076454 (n + 1)

end A076454

/-! ## A076454.P13706719407130081946

`∑[A103532(n)]`
-/

namespace A076454.P13706719407130081946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076454.P13706719407130081946

namespace A076454

/-- `∑[A103532(n)]` -/
def P13706719407130081946.Spec : Prop :=
  ∀ n, P13706719407130081946.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P15799010245717298735

`∑[(n+1)²*A016813(n)]`
-/

namespace A076454.P15799010245717298735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076454.P15799010245717298735

namespace A076454

/-- `∑[(n+1)²*A016813(n)]` -/
def P15799010245717298735.Spec : Prop :=
  ∀ n, P15799010245717298735.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P4213806498041044462

`A047929(n+2)+∑[n+1]`
-/

namespace A076454.P4213806498041044462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047929 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076454.P4213806498041044462

namespace A076454

/-- `A047929(n+2)+∑[n+1]` -/
def P4213806498041044462.Spec : Prop :=
  ∀ n, P4213806498041044462.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P16309936978096495081

`∑[n+1]*A056220(n+1)`
-/

namespace A076454.P16309936978096495081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056220 (n + 1)

end

end A076454.P16309936978096495081

namespace A076454

/-- `∑[n+1]*A056220(n+1)` -/
def P16309936978096495081.Spec : Prop :=
  ∀ n, P16309936978096495081.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P12624563523971700651

`A179824(n+2)-∑[n+1]`
-/

namespace A076454.P12624563523971700651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076454.P12624563523971700651

namespace A076454

/-- `A179824(n+2)-∑[n+1]` -/
def P12624563523971700651.Spec : Prop :=
  ∀ n, P12624563523971700651.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P4029202166528084853

`A277977(n+1)+n²+n`
-/

namespace A076454.P4029202166528084853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277977 (n + 1) + (n ^ 2 + n : ℤ)

end

end A076454.P4029202166528084853

namespace A076454

/-- `A277977(n+1)+n²+n` -/
def P4029202166528084853.Spec : Prop :=
  ∀ n, P4029202166528084853.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P15631321917945592059

`∑[A131464(n+1)]-(n+1)²`
-/

namespace A076454.P15631321917945592059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A076454.P15631321917945592059

namespace A076454

/-- `∑[A131464(n+1)]-(n+1)²` -/
def P15631321917945592059.Spec : Prop :=
  ∀ n, P15631321917945592059.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P12087129390718935900

`A126274(n)+A033487(n)`
-/

namespace A076454.P12087129390718935900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n + A033487 n

end

end A076454.P12087129390718935900

namespace A076454

/-- `A126274(n)+A033487(n)` -/
def P12087129390718935900.Spec : Prop :=
  ∀ n, P12087129390718935900.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P18185812439756605956

`A135712(n)+A085540(n)`
-/

namespace A076454.P18185812439756605956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135712 n + A085540 n

end

end A076454.P18185812439756605956

namespace A076454

/-- `A135712(n)+A085540(n)` -/
def P18185812439756605956.Spec : Prop :=
  ∀ n, P18185812439756605956.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P5667783192124739481

`A219086(n)+A100176(n+1)`
-/

namespace A076454.P5667783192124739481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n + A100176 (n + 1)

end

end A076454.P5667783192124739481

namespace A076454

/-- `A219086(n)+A100176(n+1)` -/
def P5667783192124739481.Spec : Prop :=
  ∀ n, P5667783192124739481.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P16419273383244853595

`A213843(n+1)+A162668(n)`
-/

namespace A076454.P16419273383244853595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) + A162668 n

end

end A076454.P16419273383244853595

namespace A076454

/-- `A213843(n+1)+A162668(n)` -/
def P16419273383244853595.Spec : Prop :=
  ∀ n, P16419273383244853595.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P16012670868556481272

`A035287(n+1)+A024215(n+1)`
-/

namespace A076454.P16012670868556481272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1) + A024215 (n + 1)

end

end A076454.P16012670868556481272

namespace A076454

/-- `A035287(n+1)+A024215(n+1)` -/
def P16012670868556481272.Spec : Prop :=
  ∀ n, P16012670868556481272.a n = A076454 (n + 1)

end A076454

/-! ## A076454.P355507433240303937

`A047928(n+2)+A002414(n+1)`
-/

namespace A076454.P355507433240303937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (n + 2) + A002414 (n + 1)

end

end A076454.P355507433240303937

namespace A076454

/-- `A047928(n+2)+A002414(n+1)` -/
def P355507433240303937.Spec : Prop :=
  ∀ n, P355507433240303937.a n = A076454 (n + 1)

end A076454

/-!
# A076455: Sum of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly two ways.

The programs for A076455, the canonical program `A076455.P14203828065982327920` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076455 has offset 1).

The definition of A076455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076455.P14203828065982327920

`(n+1)*(n+2)*(4*(n+1)²+2*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076455

/-- `(n+1)*(n+2)*(4*(n+1)²+2*(n+1)-1)/2` -/
def P14203828065982327920.Spec : Prop :=
  ∀ n, P14203828065982327920.a n = (A076455 (n + 1) : ℚ)

end A076455

/-! ## A076455.P3092284493005017581

`lcm((2*(n+1))²+2*n+1, ∑[n+1])`
-/

namespace A076455.P3092284493005017581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * (n + 1)) ^ 2 + (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076455.P3092284493005017581

namespace A076455

/-- `lcm((2*(n+1))²+2*n+1, ∑[n+1])` -/
def P3092284493005017581.Spec : Prop :=
  ∀ n, (P3092284493005017581.a n : ℤ) = A076455 (n + 1)

end A076455

/-! ## A076455.P7888393168710525088

`∑[A192418(n+1)+(n+1)²]`
-/

namespace A076455.P7888393168710525088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192418 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076455.P7888393168710525088

namespace A076455

/-- `∑[A192418(n+1)+(n+1)²]` -/
def P7888393168710525088.Spec : Prop :=
  ∀ n, P7888393168710525088.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P12571594985796873594

`∑[(n+1)²*A004770(n+1)]`
-/

namespace A076455.P12571594985796873594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076455.P12571594985796873594

namespace A076455

/-- `∑[(n+1)²*A004770(n+1)]` -/
def P12571594985796873594.Spec : Prop :=
  ∀ n, P12571594985796873594.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P16718503970933730422

`A100431(n)-A213846(n+1)`
-/

namespace A076455.P16718503970933730422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100431 n - A213846 (n + 1)

end

end A076455.P16718503970933730422

namespace A076455

/-- `A100431(n)-A213846(n+1)` -/
def P16718503970933730422.Spec : Prop :=
  ∀ n, P16718503970933730422.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P11324540063186557043

`A247112(n+1)-A014105(n+1)`
-/

namespace A076455.P11324540063186557043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247112 (n + 1) - A014105 (n + 1)

end

end A076455.P11324540063186557043

namespace A076455

/-- `A247112(n+1)-A014105(n+1)` -/
def P11324540063186557043.Spec : Prop :=
  ∀ n, P11324540063186557043.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P7323760811596555272

`2*A076456(n+1)-A076457(n+1)`
-/

namespace A076455.P7323760811596555272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076456 (n + 1) - A076457 (n + 1)

end

end A076455.P7323760811596555272

namespace A076455

/-- `2*A076456(n+1)-A076457(n+1)` -/
def P7323760811596555272.Spec : Prop :=
  ∀ n, P7323760811596555272.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P7564419076742492401

`A100431(n)-(A098077(n+1)+A000217(n+1))`
-/

namespace A076455.P7564419076742492401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100431 n - (A098077 (n + 1) + A000217 (n + 1))

end

end A076455.P7564419076742492401

namespace A076455

/-- `A100431(n)-(A098077(n+1)+A000217(n+1))` -/
def P7564419076742492401.Spec : Prop :=
  ∀ n, P7564419076742492401.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P1758182843622289687

`A076454(n+1)+A076457(n+1)-A076456(n+1)`
-/

namespace A076455.P1758182843622289687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) + (A076457 (n + 1) - A076456 (n + 1))

end

end A076455.P1758182843622289687

namespace A076455

/-- `A076454(n+1)+A076457(n+1)-A076456(n+1)` -/
def P1758182843622289687.Spec : Prop :=
  ∀ n, P1758182843622289687.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P3091893920592750342

`A076454(n+1)+A076458(n+1)-A076457(n+1)`
-/

namespace A076455.P3091893920592750342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) + (A076458 (n + 1) - A076457 (n + 1))

end

end A076455.P3091893920592750342

namespace A076455

/-- `A076454(n+1)+A076458(n+1)-A076457(n+1)` -/
def P3091893920592750342.Spec : Prop :=
  ∀ n, P3091893920592750342.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P12618836484035476916

`A076456(n+1)+A076457(n+1)-A076458(n+1)`
-/

namespace A076455.P12618836484035476916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076456 (n + 1) + (A076457 (n + 1) - A076458 (n + 1))

end

end A076455.P12618836484035476916

namespace A076455

/-- `A076456(n+1)+A076457(n+1)-A076458(n+1)` -/
def P12618836484035476916.Spec : Prop :=
  ∀ n, P12618836484035476916.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P7527429222816487957

`∑[(n+1)*A139273(n+1)]`
-/

namespace A076455.P7527429222816487957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076455.P7527429222816487957

namespace A076455

/-- `∑[(n+1)*A139273(n+1)]` -/
def P7527429222816487957.Spec : Prop :=
  ∀ n, P7527429222816487957.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P4697657346452493718

`A000217(n+1)*A125202(n+2)`
-/

namespace A076455.P4697657346452493718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A125202 (n + 2)

end

end A076455.P4697657346452493718

namespace A076455

/-- `A000217(n+1)*A125202(n+2)` -/
def P4697657346452493718.Spec : Prop :=
  ∀ n, P4697657346452493718.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P14175955924114927119

`A062392(n+1)+2*A213827(n+1)`
-/

namespace A076455.P14175955924114927119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 (n + 1) + 2 * A213827 (n + 1)

end

end A076455.P14175955924114927119

namespace A076455

/-- `A062392(n+1)+2*A213827(n+1)` -/
def P14175955924114927119.Spec : Prop :=
  ∀ n, P14175955924114927119.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P9914627394454020471

`A060300(n+1)/2-A059270(n+1)`
-/

namespace A076455.P9914627394454020471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060300 (n + 1) : ℚ) / 2 - (A059270 (n + 1) : ℚ)

end

end A076455.P9914627394454020471

namespace A076455

/-- `A060300(n+1)/2-A059270(n+1)` -/
def P9914627394454020471.Spec : Prop :=
  ∀ n, P9914627394454020471.a n = (A076455 (n + 1) : ℚ)

end A076455

/-! ## A076455.P18300430607874657932

`A000217(n)+(n+1)²*A014106(n+1)`
-/

namespace A076455.P18300430607874657932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n + 1) ^ 2 : ℤ) * A014106 (n + 1)

end

end A076455.P18300430607874657932

namespace A076455

/-- `A000217(n)+(n+1)²*A014106(n+1)` -/
def P18300430607874657932.Spec : Prop :=
  ∀ n, P18300430607874657932.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P294953278270713241

`(A014106(n+1)+A014106(n))*A000217(n+1)`
-/

namespace A076455.P294953278270713241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014106 (n + 1) + A014106 n) * A000217 (n + 1)

end

end A076455.P294953278270713241

namespace A076455

/-- `(A014106(n+1)+A014106(n))*A000217(n+1)` -/
def P294953278270713241.Spec : Prop :=
  ∀ n, P294953278270713241.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P8598348926010575152

`(A139273(n+1)-A033954(n))*A000217(n+1)`
-/

namespace A076455.P8598348926010575152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139273 (n + 1) - A033954 n) * A000217 (n + 1)

end

end A076455.P8598348926010575152

namespace A076455

/-- `(A139273(n+1)-A033954(n))*A000217(n+1)` -/
def P8598348926010575152.Spec : Prop :=
  ∀ n, P8598348926010575152.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P8404337573626257751

`A000217(n+1)*A002943(n+1)-A000217(n+1)`
-/

namespace A076455.P8404337573626257751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A002943 (n + 1) - A000217 (n + 1)

end

end A076455.P8404337573626257751

namespace A076455

/-- `A000217(n+1)*A002943(n+1)-A000217(n+1)` -/
def P8404337573626257751.Spec : Prop :=
  ∀ n, P8404337573626257751.a n = A076455 (n + 1)

end A076455

/-! ## A076455.P8274716188835595040

`A002378(n+1)*A014105(n+1)-A000217(n+1)`
-/

namespace A076455.P8274716188835595040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) * A014105 (n + 1) - A000217 (n + 1)

end

end A076455.P8274716188835595040

namespace A076455

/-- `A002378(n+1)*A014105(n+1)-A000217(n+1)` -/
def P8274716188835595040.Spec : Prop :=
  ∀ n, P8274716188835595040.a n = A076455 (n + 1)

end A076455

/-!
# A076456: Sum of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly three ways.

The programs for A076456, the canonical program `A076456.P9612482028960340948` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076456 has offset 1).

The definition of A076456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076456.P9612482028960340948

`(n+1)*(n+2)*(6*(n+1)²+4*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076456

/-- `(n+1)*(n+2)*(6*(n+1)²+4*(n+1)-1)/2` -/
def P9612482028960340948.Spec : Prop :=
  ∀ n, P9612482028960340948.a n = (A076456 (n + 1) : ℚ)

end A076456

/-! ## A076456.P2702083716112327459

`∑[n+1]*Δ[(n+2)*C(2*n+1, 2)]`
-/

namespace A076456.P2702083716112327459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A076456.P2702083716112327459

namespace A076456

/-- `∑[n+1]*Δ[(n+2)*C(2*n+1, 2)]` -/
def P2702083716112327459.Spec : Prop :=
  ∀ n, P2702083716112327459.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P5078373358555969627

`∑[(n+1)²*A017629(n)]`
-/

namespace A076456.P5078373358555969627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A017629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076456.P5078373358555969627

namespace A076456

/-- `∑[(n+1)²*A017629(n)]` -/
def P5078373358555969627.Spec : Prop :=
  ∀ n, P5078373358555969627.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P14062438296726814682

`2*A076455(n+1)-A076454(n+1)`
-/

namespace A076456.P14062438296726814682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076455 (n + 1) - A076454 (n + 1)

end

end A076456.P14062438296726814682

namespace A076456

/-- `2*A076455(n+1)-A076454(n+1)` -/
def P14062438296726814682.Spec : Prop :=
  ∀ n, P14062438296726814682.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P12370907429413291053

`2*A076457(n+1)-A076458(n+1)`
-/

namespace A076456.P12370907429413291053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076457 (n + 1) - A076458 (n + 1)

end

end A076456.P12370907429413291053

namespace A076456

/-- `2*A076457(n+1)-A076458(n+1)` -/
def P12370907429413291053.Spec : Prop :=
  ∀ n, P12370907429413291053.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P3271936712513631408

`A076454(n+1)+A076457(n+1)-A076455(n+1)`
-/

namespace A076456.P3271936712513631408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) + (A076457 (n + 1) - A076455 (n + 1))

end

end A076456.P3271936712513631408

namespace A076456

/-- `A076454(n+1)+A076457(n+1)-A076455(n+1)` -/
def P3271936712513631408.Spec : Prop :=
  ∀ n, P3271936712513631408.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P14496163530670828387

`A076455(n+1)+A076458(n+1)-A076457(n+1)`
-/

namespace A076456.P14496163530670828387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076455 (n + 1) + (A076458 (n + 1) - A076457 (n + 1))

end

end A076456.P14496163530670828387

namespace A076456

/-- `A076455(n+1)+A076458(n+1)-A076457(n+1)` -/
def P14496163530670828387.Spec : Prop :=
  ∀ n, P14496163530670828387.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P3127118221520322058

`∑[(n+1)*A062783(n+1)]`
-/

namespace A076456.P3127118221520322058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076456.P3127118221520322058

namespace A076456

/-- `∑[(n+1)*A062783(n+1)]` -/
def P3127118221520322058.Spec : Prop :=
  ∀ n, P3127118221520322058.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P9632246319996593242

`A000217(n)+(n+1)²*A144390(n+2)`
-/

namespace A076456.P9632246319996593242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n + 1) ^ 2 : ℤ) * A144390 (n + 2)

end

end A076456.P9632246319996593242

namespace A076456

/-- `A000217(n)+(n+1)²*A144390(n+2)` -/
def P9632246319996593242.Spec : Prop :=
  ∀ n, P9632246319996593242.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P5391920580231700563

`(A139275(n+1)-A014105(n))*A000217(n+1)`
-/

namespace A076456.P5391920580231700563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139275 (n + 1) - A014105 n) * A000217 (n + 1)

end

end A076456.P5391920580231700563

namespace A076456

/-- `(A139275(n+1)-A014105(n))*A000217(n+1)` -/
def P5391920580231700563.Spec : Prop :=
  ∀ n, P5391920580231700563.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P9049386436002886295

`A002378(n+1)*A045944(n+1)-A000217(n+1)`
-/

namespace A076456.P9049386436002886295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) * A045944 (n + 1) - A000217 (n + 1)

end

end A076456.P9049386436002886295

namespace A076456

/-- `A002378(n+1)*A045944(n+1)-A000217(n+1)` -/
def P9049386436002886295.Spec : Prop :=
  ∀ n, P9049386436002886295.a n = A076456 (n + 1)

end A076456

/-! ## A076456.P15272958658930578281

`A045943(n+1)*A046092(n+1)-A059270(n+1)`
-/

namespace A076456.P15272958658930578281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) * A046092 (n + 1) - A059270 (n + 1)

end

end A076456.P15272958658930578281

namespace A076456

/-- `A045943(n+1)*A046092(n+1)-A059270(n+1)` -/
def P15272958658930578281.Spec : Prop :=
  ∀ n, P15272958658930578281.a n = A076456 (n + 1)

end A076456

/-!
# A076457: Sum of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly four ways.

The programs for A076457, the canonical program `A076457.P10952953163635500562` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076457 has offset 1).

The definition of A076457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076457.P10952953163635500562

`(n+1)*(n+2)*(8*(n+1)²+6*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076457

/-- `(n+1)*(n+2)*(8*(n+1)²+6*(n+1)-1)/2` -/
def P10952953163635500562.Spec : Prop :=
  ∀ n, P10952953163635500562.a n = (A076457 (n + 1) : ℚ)

end A076457

/-! ## A076457.P11370879630423937207

`∑[(n+1)²*A082285(n)]`
-/

namespace A076457.P11370879630423937207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076457.P11370879630423937207

namespace A076457

/-- `∑[(n+1)²*A082285(n)]` -/
def P11370879630423937207.Spec : Prop :=
  ∀ n, P11370879630423937207.a n = A076457 (n + 1)

end A076457

/-! ## A076457.P5200046576654706767

`2*A076456(n+1)-A076455(n+1)`
-/

namespace A076457.P5200046576654706767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076456 (n + 1) - A076455 (n + 1)

end

end A076457.P5200046576654706767

namespace A076457

/-- `2*A076456(n+1)-A076455(n+1)` -/
def P5200046576654706767.Spec : Prop :=
  ∀ n, P5200046576654706767.a n = A076457 (n + 1)

end A076457

/-! ## A076457.P184095922917856641

`A076454(n+1)+A076458(n+1)-A076455(n+1)`
-/

namespace A076457.P184095922917856641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) + (A076458 (n + 1) - A076455 (n + 1))

end

end A076457.P184095922917856641

namespace A076457

/-- `A076454(n+1)+A076458(n+1)-A076455(n+1)` -/
def P184095922917856641.Spec : Prop :=
  ∀ n, P184095922917856641.a n = A076457 (n + 1)

end A076457

/-! ## A076457.P7607682121498978127

`A076455(n+1)+A076456(n+1)-A076454(n+1)`
-/

namespace A076457.P7607682121498978127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076455 (n + 1) + (A076456 (n + 1) - A076454 (n + 1))

end

end A076457.P7607682121498978127

namespace A076457

/-- `A076455(n+1)+A076456(n+1)-A076454(n+1)` -/
def P7607682121498978127.Spec : Prop :=
  ∀ n, P7607682121498978127.a n = A076457 (n + 1)

end A076457

/-! ## A076457.P13572518057343896370

`A076455(n+1)+A076458(n+1)-A076456(n+1)`
-/

namespace A076457.P13572518057343896370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076455 (n + 1) + (A076458 (n + 1) - A076456 (n + 1))

end

end A076457.P13572518057343896370

namespace A076457

/-- `A076455(n+1)+A076458(n+1)-A076456(n+1)` -/
def P13572518057343896370.Spec : Prop :=
  ∀ n, P13572518057343896370.a n = A076457 (n + 1)

end A076457

/-! ## A076457.P3888669945579405413

`∑[4*(n+1)]²-A059270(n+1)`
-/

namespace A076457.P3888669945579405413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A059270 (n + 1)

end

end A076457.P3888669945579405413

namespace A076457

/-- `∑[4*(n+1)]²-A059270(n+1)` -/
def P3888669945579405413.Spec : Prop :=
  ∀ n, P3888669945579405413.a n = A076457 (n + 1)

end A076457

/-! ## A076457.P10946024959918544282

`A000217(n+1)*A033587(n+1)-A000217(n+1)`
-/

namespace A076457.P10946024959918544282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A033587 (n + 1) - A000217 (n + 1)

end

end A076457.P10946024959918544282

namespace A076457

/-- `A000217(n+1)*A033587(n+1)-A000217(n+1)` -/
def P10946024959918544282.Spec : Prop :=
  ∀ n, P10946024959918544282.a n = A076457 (n + 1)

end A076457

/-! ## A076457.P18186206683702213137

`A002378(n+1)*A033954(n+1)-A000217(n+1)`
-/

namespace A076457.P18186206683702213137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) * A033954 (n + 1) - A000217 (n + 1)

end

end A076457.P18186206683702213137

namespace A076457

/-- `A002378(n+1)*A033954(n+1)-A000217(n+1)` -/
def P18186206683702213137.Spec : Prop :=
  ∀ n, P18186206683702213137.a n = A076457 (n + 1)

end A076457

/-!
# A076458: Sum of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly five ways.

The programs for A076458, the canonical program `A076458.P15819587514919186455` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076458 has offset 1).

The definition of A076458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076458.P15819587514919186455

`(n+1)*(n+2)*(10*(n+1)²+8*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076458

/-- `(n+1)*(n+2)*(10*(n+1)²+8*(n+1)-1)/2` -/
def P15819587514919186455.Spec : Prop :=
  ∀ n, P15819587514919186455.a n = (A076458 (n + 1) : ℚ)

end A076458

/-! ## A076458.P16750475048626213456

`2*A076456(n+1)-A076454(n+1)`
-/

namespace A076458.P16750475048626213456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076456 (n + 1) - A076454 (n + 1)

end

end A076458.P16750475048626213456

namespace A076458

/-- `2*A076456(n+1)-A076454(n+1)` -/
def P16750475048626213456.Spec : Prop :=
  ∀ n, P16750475048626213456.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P13871403119460864580

`2*A076457(n+1)-A076456(n+1)`
-/

namespace A076458.P13871403119460864580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076457 (n + 1) - A076456 (n + 1)

end

end A076458.P13871403119460864580

namespace A076458

/-- `2*A076457(n+1)-A076456(n+1)` -/
def P13871403119460864580.Spec : Prop :=
  ∀ n, P13871403119460864580.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P10114677412163248935

`A076454(n+1)+(1-A099776(n+1))²`
-/

namespace A076458.P10114677412163248935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) + (1 - A099776 (n + 1)) ^ 2

end

end A076458.P10114677412163248935

namespace A076458

/-- `A076454(n+1)+(1-A099776(n+1))²` -/
def P10114677412163248935.Spec : Prop :=
  ∀ n, P10114677412163248935.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P8479037151090747133

`A076455(n+1)+A076457(n+1)-A076454(n+1)`
-/

namespace A076458.P8479037151090747133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076455 (n + 1) + (A076457 (n + 1) - A076454 (n + 1))

end

end A076458.P8479037151090747133

namespace A076458

/-- `A076455(n+1)+A076457(n+1)-A076454(n+1)` -/
def P8479037151090747133.Spec : Prop :=
  ∀ n, P8479037151090747133.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P8146416146633870886

`A076456(n+1)+A076457(n+1)-A076455(n+1)`
-/

namespace A076458.P8146416146633870886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076456 (n + 1) + (A076457 (n + 1) - A076455 (n + 1))

end

end A076458.P8146416146633870886

namespace A076458

/-- `A076456(n+1)+A076457(n+1)-A076455(n+1)` -/
def P8146416146633870886.Spec : Prop :=
  ∀ n, P8146416146633870886.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P13620968523074808972

`∑[(n+1)²*Δ[A033571(n)]]`
-/

namespace A076458.P13620968523074808972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076458.P13620968523074808972

namespace A076458

/-- `∑[(n+1)²*Δ[A033571(n)]]` -/
def P13620968523074808972.Spec : Prop :=
  ∀ n, P13620968523074808972.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P16890095817638883929

`∑[(A008602(n+1)-3)*(n+1)²]`
-/

namespace A076458.P16890095817638883929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008602 (n + 1) - 3) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076458.P16890095817638883929

namespace A076458

/-- `∑[(A008602(n+1)-3)*(n+1)²]` -/
def P16890095817638883929.Spec : Prop :=
  ∀ n, P16890095817638883929.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P11482696573531279245

`∑[(n+1)²*A017353(2*n+1)]`
-/

namespace A076458.P11482696573531279245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A017353 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076458.P11482696573531279245

namespace A076458

/-- `∑[(n+1)²*A017353(2*n+1)]` -/
def P11482696573531279245.Spec : Prop :=
  ∀ n, P11482696573531279245.a n = A076458 (n + 1)

end A076458

/-! ## A076458.P464522866672662076

`∑[(n+1)²*A322490(2*(n+1))]`
-/

namespace A076458.P464522866672662076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A322490 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076458.P464522866672662076

namespace A076458

/-- `∑[(n+1)²*A322490(2*(n+1))]` -/
def P464522866672662076.Spec : Prop :=
  ∀ n, P464522866672662076.a n = A076458 (n + 1)

end A076458

/-!
# A076459: Sum of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly n ways.

The programs for A076459, the canonical program `A076459.P1582023740879920799` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076459 has offset 1).

The definition of A076459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076459.P1582023740879920799

`(n+1)*(n+2)*(2*(n+1)^3+2*(n+1)²-2*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076459

/-- `(n+1)*(n+2)*(2*(n+1)^3+2*(n+1)²-2*(n+1)-1)/2` -/
def P1582023740879920799.Spec : Prop :=
  ∀ n, P1582023740879920799.a n = (A076459 (n + 1) : ℚ)

end A076459

/-! ## A076459.P18110694094680724491

`A076454(n+1)+(n+1)*A047929(n+2)`
-/

namespace A076459.P18110694094680724491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) + (n + 1 : ℤ) * A047929 (n + 2)

end

end A076459.P18110694094680724491

namespace A076459

/-- `A076454(n+1)+(n+1)*A047929(n+2)` -/
def P18110694094680724491.Spec : Prop :=
  ∀ n, P18110694094680724491.a n = A076459 (n + 1)

end A076459

/-! ## A076459.P8591416297949546615

`A000217(n+1)+(n+2)*A047929(n+2)`
-/

namespace A076459.P8591416297949546615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (n + 2 : ℤ) * A047929 (n + 2)

end

end A076459.P8591416297949546615

namespace A076459

/-- `A000217(n+1)+(n+2)*A047929(n+2)` -/
def P8591416297949546615.Spec : Prop :=
  ∀ n, P8591416297949546615.a n = A076459 (n + 1)

end A076459

/-! ## A076459.P12294777395914291676

`∑[n+1]+n*A085540(n+1)`
-/

namespace A076459.P12294777395914291676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * A085540 (n + 1)

end

end A076459.P12294777395914291676

namespace A076459

/-- `∑[n+1]+n*A085540(n+1)` -/
def P12294777395914291676.Spec : Prop :=
  ∀ n, P12294777395914291676.a n = A076459 (n + 1)

end A076459

/-! ## A076459.P17664070241096376109

`∑[∑[A006597(2*n+1)+n]]`
-/

namespace A076459.P17664070241096376109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 (2 * n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076459.P17664070241096376109

namespace A076459

/-- `∑[∑[A006597(2*n+1)+n]]` -/
def P17664070241096376109.Spec : Prop :=
  ∀ n, P17664070241096376109.a n = A076459 (n + 1)

end A076459

/-!
# A076460: Sum of squares of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly one way.

The programs for A076460, the canonical program `A076460.P5594825273439837890` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076460 has offset 1).

The definition of A076460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076460.P5594825273439837890

`(n+1)*(n+2)*(7*(n+1)^4+2*(n+1)^3-6*(n+1)²-(n+1)+1)/6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076460

/-- `(n+1)*(n+2)*(7*(n+1)^4+2*(n+1)^3-6*(n+1)²-(n+1)+1)/6` -/
def P5594825273439837890.Spec : Prop :=
  ∀ n, P5594825273439837890.a n = (A076460 (n + 1) : ℚ)

end A076460

/-! ## A076460.P1722376079479969899

`A076463(n+1)%(A076461(n+1)-A076462(n+1))`
-/

namespace A076460.P1722376079479969899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076463 (n + 1)) (A076461 (n + 1) - A076462 (n + 1))

end

end A076460.P1722376079479969899

namespace A076460

/-- `A076463(n+1)%(A076461(n+1)-A076462(n+1))` -/
def P1722376079479969899.Spec : Prop :=
  ∀ n, P1722376079479969899.a n = A076460 (n + 1)

end A076460

/-! ## A076460.P10938793129742728204

`A076464(n+1)%(A076461(n+1)-A076463(n+1))`
-/

namespace A076460.P10938793129742728204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076464 (n + 1)) (A076461 (n + 1) - A076463 (n + 1))

end

end A076460.P10938793129742728204

namespace A076460

/-- `A076464(n+1)%(A076461(n+1)-A076463(n+1))` -/
def P10938793129742728204.Spec : Prop :=
  ∀ n, P10938793129742728204.a n = A076460 (n + 1)

end A076460

/-!
# A076461: Sum of squares of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly two ways.

The programs for A076461, the canonical program `A076461.P9272096456226611682` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076461 has offset 1).

The definition of A076461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076461.P9272096456226611682

`(n+1)*(n+2)*(25*(n+1)^4+26*(n+1)^3-6*(n+1)²-7*(n+1)+1)/6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076461

/-- `(n+1)*(n+2)*(25*(n+1)^4+26*(n+1)^3-6*(n+1)²-7*(n+1)+1)/6` -/
def P9272096456226611682.Spec : Prop :=
  ∀ n, P9272096456226611682.a n = (A076461 (n + 1) : ℚ)

end A076461

/-! ## A076461.P12128888872815948073

`A076464(n+1)%(A076462(n+1)-A076463(n+1))`
-/

namespace A076461.P12128888872815948073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076464 (n + 1)) (A076462 (n + 1) - A076463 (n + 1))

end

end A076461.P12128888872815948073

namespace A076461

/-- `A076464(n+1)%(A076462(n+1)-A076463(n+1))` -/
def P12128888872815948073.Spec : Prop :=
  ∀ n, P12128888872815948073.a n = A076461 (n + 1)

end A076461

/-!
# A076462: Sum of squares of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly three ways.

The programs for A076462, the canonical program `A076462.P11129996382294178322` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076462 has offset 1).

The definition of A076462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076462.P11129996382294178322

`1/6*(n+1)*(n+2)*(55*(n+1)^4+74*(n+1)^3+6*(n+1)²-13*(n+1)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076462

/-- `1/6*(n+1)*(n+2)*(55*(n+1)^4+74*(n+1)^3+6*(n+1)²-13*(n+1)+1)` -/
def P11129996382294178322.Spec : Prop :=
  ∀ n, P11129996382294178322.a n = (A076462 (n + 1) : ℚ)

end A076462

/-!
# A076463: Sum of squares of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly four ways.

The programs for A076463, the canonical program `A076463.P15978868828870424591` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076463 has offset 1).

The definition of A076463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076463.P15978868828870424591

`1/6*(n+1)*(n+2)*(97*(n+1)^4+146*(n+1)^3+30*(n+1)²-19*(n+1)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076463

/-- `1/6*(n+1)*(n+2)*(97*(n+1)^4+146*(n+1)^3+30*(n+1)²-19*(n+1)+1)` -/
def P15978868828870424591.Spec : Prop :=
  ∀ n, P15978868828870424591.a n = (A076463 (n + 1) : ℚ)

end A076463

/-!
# A076464: Sum of squares of numbers that can be written as t*n + u*(n+1) for nonnegative integers t,u in exactly five ways.

The programs for A076464, the canonical program `A076464.P11381851051843564675` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076464 has offset 1).

The definition of A076464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076464.P11381851051843564675

`(n+1)*(n+2)*(151*(n+1)^4+242*(n+1)^3+66*(n+1)²-25*(n+1)+1)/6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076464

/-- `(n+1)*(n+2)*(151*(n+1)^4+242*(n+1)^3+66*(n+1)²-25*(n+1)+1)/6` -/
def P11381851051843564675.Spec : Prop :=
  ∀ n, P11381851051843564675.a n = (A076464 (n + 1) : ℚ)

end A076464

/-!
# A076467: Perfect powers m^k where m is a positive integer and k >= 3.

The programs for A076467, there is no canonical definition to state claims against.
-/

/-! ## A076467.P16325574780799868989

`A377933(n)+a(n-1)` with `a(0)=1`
-/

namespace A076467.P16325574780799868989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377933 n + a (n - 1)

end

end A076467.P16325574780799868989

/-! ## A076467.P510963147252385968

`record[A245713(A304731(n+1))]`
-/

namespace A076467.P510963147252385968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A304731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P510963147252385968

/-! ## A076467.P12264333543696975591

`∪[A070265(n+1), A076468(n+1)]`
-/

namespace A076467.P12264333543696975591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P12264333543696975591

/-! ## A076467.P3249038402430906146

`∪[A076468(n+1), A097054(n+1)]`
-/

namespace A076467.P3249038402430906146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P3249038402430906146

/-! ## A076467.P11235790585386641308

`∪[A070265(n+1), A117453(n+1)]`
-/

namespace A076467.P11235790585386641308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P11235790585386641308

/-! ## A076467.P1187952791895849764

`∪[A097054(n+1), A117453(n+1)]`
-/

namespace A076467.P1187952791895849764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P1187952791895849764

/-! ## A076467.P6175004333778454673

`∪[A076468(n+1), A153147(n+1)]`
-/

namespace A076467.P6175004333778454673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P6175004333778454673

/-! ## A076467.P15902744985045467183

`∪[A076468(n+1), A179125(n+1)]`
-/

namespace A076467.P15902744985045467183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P15902744985045467183

/-! ## A076467.P1587840401258171551

`∪[A070265(n+1), A217261(n+1)]`
-/

namespace A076467.P1587840401258171551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P1587840401258171551

/-! ## A076467.P2311343077789671428

`∪[A070265(n+1), A277562(n+1)]`
-/

namespace A076467.P2311343077789671428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P2311343077789671428

/-! ## A076467.P1537179882161321088

`∪[A070265(n+1), A340588(n+1)]`
-/

namespace A076467.P1537179882161321088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P1537179882161321088

/-! ## A076467.P15581809935641351582

`∪[A097054(n+1), A340588(n+1)]`
-/

namespace A076467.P15581809935641351582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076467.P15581809935641351582

/-! ## A076467.P15230584821941004073

`record[A245713(n+1)%A245713(n+2)]`
-/

namespace A076467.P15230584821941004073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245713 (n + 1)) (A245713 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P15230584821941004073

/-! ## A076467.P11190162759670650957

`record[A245713(A032742(n+1))]`
-/

namespace A076467.P11190162759670650957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P11190162759670650957

/-! ## A076467.P16068401888716085513

`record[A245713(A154958(n))]`
-/

namespace A076467.P16068401888716085513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P16068401888716085513

/-! ## A076467.P9524599084516907331

`record[A245713(A141256(n))]`
-/

namespace A076467.P9524599084516907331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P9524599084516907331

/-! ## A076467.P7175387217985427505

`record[A245713(A003963(n+1))]`
-/

namespace A076467.P7175387217985427505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P7175387217985427505

/-! ## A076467.P10977484279030649972

`record[A245713(A237593(n+1))]`
-/

namespace A076467.P10977484279030649972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A237593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P10977484279030649972

/-! ## A076467.P14559059678221928010

`record[A245713(∑[A020985(n)])]`
-/

namespace A076467.P14559059678221928010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076467.P14559059678221928010

/-!
# A076468: Perfect powers m^k where k >= 4.

The programs for A076468, there is no canonical definition to state claims against.
-/

/-! ## A076468.P2924552424379519755

`∪[A076469(n+1), A117453(n+1)]`
-/

namespace A076468.P2924552424379519755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076468.P2924552424379519755

/-! ## A076468.P2204792586413083977

`∪[A076469(n+1), A153157(n+1)]`
-/

namespace A076468.P2204792586413083977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076468.P2204792586413083977

/-! ## A076468.P11007483496632596679

`∪[A076469(n+1), A217261(n+1)]`
-/

namespace A076468.P11007483496632596679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076468.P11007483496632596679

/-! ## A076468.P10375121502549216581

`∪[A076469(n+1), A277562(n+1)]`
-/

namespace A076468.P10375121502549216581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076468.P10375121502549216581

/-! ## A076468.P10397003474392385468

`∪[A076469(n+1), A340588(n+1)]`
-/

namespace A076468.P10397003474392385468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076468.P10397003474392385468

/-! ## A076468.P6060362346069497183

`∪[A001597(n+1)², A076469(n+1)]`
-/

namespace A076468.P6060362346069497183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076468.P6060362346069497183

/-! ## A076468.P15445364001456790390

`∪[A117453(n+1), A239728(n+1)]`
-/

namespace A076468.P15445364001456790390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076468.P15445364001456790390

/-!
# A076469: Perfect powers m^k where k >= 5.

The programs for A076469, there is no canonical definition to state claims against.
-/

/-! ## A076469.P3965621035717538397

`∪[A076470(n+1), A153159(n+1)]`
-/

namespace A076469.P3965621035717538397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076469.P3965621035717538397

/-! ## A076469.P12948584534420416785

`∪[A076470(n+1), A239728(n+1)]`
-/

namespace A076469.P12948584534420416785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076469.P12948584534420416785

/-! ## A076469.P4274427375011074906

`A069492(∑[∑[A172542(n)]])`
-/

namespace A076469.P4274427375011074906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076469.P4274427375011074906

/-!
# A076470: Perfect powers m^k where k >= 6.

The programs for A076470, there is no canonical definition to state claims against.
-/

/-! ## A076470.P14579430449407223067

`A069493(∑[A178688(n+1)!])`
-/

namespace A076470.P14579430449407223067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A178688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069493 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076470.P14579430449407223067

/-!
# A076471: Number of pairs (p,q) of successive primes with p+q<=n.

The programs for A076471, the canonical program `A076471.P3211783425861885313` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076471 has offset 1).

The definition of A076471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076471.P11577057539547139836

`A076472(n+1)+A076473(n+1)`
-/

namespace A076471.P11577057539547139836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076472 (n + 1) + A076473 (n + 1)

end

end A076471.P11577057539547139836

namespace A076471

/-- `A076472(n+1)+A076473(n+1)` -/
def P11577057539547139836.Spec : Prop :=
  ∀ n, P11577057539547139836.a n = A076471 (n + 1)

end A076471

/-! ## A076471.P3211783425861885313

`∑[char[A076273(n+2)]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076471

/-- `∑[char[A076273(n+2)]]` -/
def P3211783425861885313.Spec : Prop :=
  ∀ n, (P3211783425861885313.a n : ℤ) = A076471 (n + 1)

theorem P3211783425861885313.correct : P3211783425861885313.Spec := by
  intro n
  simp only [A076471, Nat.add_sub_cancel]

end A076471

/-! ## A076471.P10467265787115820790

`∑[char[Δ[A061802(n)]-1]]`
-/

namespace A076471.P10467265787115820790
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P10467265787115820790

namespace A076471

/-- `∑[char[Δ[A061802(n)]-1]]` -/
def P10467265787115820790.Spec : Prop :=
  ∀ n, (P10467265787115820790.a n : ℤ) = A076471 (n + 1)

end A076471

/-! ## A076471.P13300437848873332576

`∑[char[A001043(n+1)-1]]`
-/

namespace A076471.P13300437848873332576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P13300437848873332576

namespace A076471

/-- `∑[char[A001043(n+1)-1]]` -/
def P13300437848873332576.Spec : Prop :=
  ∀ n, (P13300437848873332576.a n : ℤ) = A076471 (n + 1)

end A076471

/-! ## A076471.P9612610614158119409

`∑[char[A011974(n+2)-1]]`
-/

namespace A076471.P9612610614158119409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P9612610614158119409

namespace A076471

/-- `∑[char[A011974(n+2)-1]]` -/
def P9612610614158119409.Spec : Prop :=
  ∀ n, (P9612610614158119409.a n : ℤ) = A076471 (n + 1)

end A076471

/-! ## A076471.P4934745099524238617

`∑[char[A092949(n+1)-2]]`
-/

namespace A076471.P4934745099524238617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P4934745099524238617

namespace A076471

/-- `∑[char[A092949(n+1)-2]]` -/
def P4934745099524238617.Spec : Prop :=
  ∀ n, (P4934745099524238617.a n : ℤ) = A076471 (n + 1)

end A076471

/-! ## A076471.P14785156808879603690

`∑[round(n/A247245(n+1))]`
-/

namespace A076471.P14785156808879603690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A247245 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P14785156808879603690

namespace A076471

/-- `∑[round(n/A247245(n+1))]` -/
def P14785156808879603690.Spec : Prop :=
  ∀ n, P14785156808879603690.a n = A076471 (n + 1)

end A076471

/-! ## A076471.P4250032065837554264

`∑[char[A347137(A000040(n+1))]]`
-/

namespace A076471.P4250032065837554264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (A000040 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P4250032065837554264

namespace A076471

/-- `∑[char[A347137(A000040(n+1))]]` -/
def P4250032065837554264.Spec : Prop :=
  ∀ n, (P4250032065837554264.a n : ℤ) = A076471 (n + 1)

end A076471

/-! ## A076471.P934628708374447894

`∑[char[A246165(A000040(n+2))]]`
-/

namespace A076471.P934628708374447894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246165 (A000040 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P934628708374447894

namespace A076471

/-- `∑[char[A246165(A000040(n+2))]]` -/
def P934628708374447894.Spec : Prop :=
  ∀ n, (P934628708374447894.a n : ℤ) = A076471 (n + 1)

end A076471

/-! ## A076471.P3132545921388418498

`∑[char[A347137(A006530(n+2))]]`
-/

namespace A076471.P3132545921388418498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (A006530 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076471.P3132545921388418498

namespace A076471

/-- `∑[char[A347137(A006530(n+2))]]` -/
def P3132545921388418498.Spec : Prop :=
  ∀ n, (P3132545921388418498.a n : ℤ) = A076471 (n + 1)

end A076471

/-! ## A076471.P1598972082658617627

`A252735(A180107(n+1))`
-/

namespace A076471.P1598972082658617627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A180107 (n + 1)).toNat

end

end A076471.P1598972082658617627

namespace A076471

/-- `A252735(A180107(n+1))` -/
def P1598972082658617627.Spec : Prop :=
  ∀ n, P1598972082658617627.a n = A076471 (n + 1)

end A076471

/-!
# A076472: Number of pairs (p,q) of successive primes with p+q<=n and gcd(p+q,n)>1.

The programs for A076472, there is no canonical definition to state claims against.
-/

/-! ## A076472.P18319499308101730735

`A076471(n+1)-A076473(n+1)`
-/

namespace A076472.P18319499308101730735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076471 (n + 1) - A076473 (n + 1)

end

end A076472.P18319499308101730735

/-! ## A076472.P10435142498873502156

`∑[char[A076273(n+2)]]-A076473(n+1)`
-/

namespace A076472.P10435142498873502156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076473 (n + 1)

end

end A076472.P10435142498873502156

/-! ## A076472.P9700766679796423653

`∑[char[A001043(n+1)-1]]-A076473(n+1)`
-/

namespace A076472.P9700766679796423653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076473 (n + 1)

end

end A076472.P9700766679796423653

/-! ## A076472.P4608005290413245691

`∑[char[A092949(n+1)-2]]-A076473(n+1)`
-/

namespace A076472.P4608005290413245691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076473 (n + 1)

end

end A076472.P4608005290413245691

/-! ## A076472.P17933628416528139459

`∑[round(n/A247245(n+1))]-A076473(n+1)`
-/

namespace A076472.P17933628416528139459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A247245 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A076473 (n + 1)

end

end A076472.P17933628416528139459

/-! ## A076472.P10404186664813532137

`A076471(n+1)+A057428(n)*A076473(n+1)`
-/

namespace A076472.P10404186664813532137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076471 (n + 1) + A057428 n * A076473 (n + 1)

end

end A076472.P10404186664813532137

/-! ## A076472.P14694896819283481383

`A252735(A180107(n+1))-A076473(n+1)`
-/

namespace A076472.P14694896819283481383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A180107 (n + 1)).toNat - A076473 (n + 1)

end

end A076472.P14694896819283481383

/-!
# A076473: Number of pairs (p,q) of successive primes with p+q<=n and gcd(p+q,n)=1.

The programs for A076473, there is no canonical definition to state claims against.
-/

/-! ## A076473.P6033345844593871570

`A076471(n+1)-A076472(n+1)`
-/

namespace A076473.P6033345844593871570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076471 (n + 1) - A076472 (n + 1)

end

end A076473.P6033345844593871570

/-! ## A076473.P9835919866433077779

`∑[char[A076273(n+2)]]-A076472(n+1)`
-/

namespace A076473.P9835919866433077779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076472 (n + 1)

end

end A076473.P9835919866433077779

/-! ## A076473.P2317094940139269466

`∑[char[A001043(n+1)-1]]-A076472(n+1)`
-/

namespace A076473.P2317094940139269466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076472 (n + 1)

end

end A076473.P2317094940139269466

/-! ## A076473.P5668092961085040549

`∑[char[A092949(n+1)-2]]-A076472(n+1)`
-/

namespace A076473.P5668092961085040549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076472 (n + 1)

end

end A076473.P5668092961085040549

/-! ## A076473.P8478881305624611826

`∑[round(n/A247245(n+1))]-A076472(n+1)`
-/

namespace A076473.P8478881305624611826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A247245 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A076472 (n + 1)

end

end A076473.P8478881305624611826

/-! ## A076473.P6404549198886762299

`A252735(A180107(n+1))-A076472(n+1)`
-/

namespace A076473.P6404549198886762299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A180107 (n + 1)).toNat - A076472 (n + 1)

end

end A076473.P6404549198886762299

/-!
# A076474: Denominators of the slowest decreasing sequence of unit fractions whose partial sums have a prime numerator.

The programs for A076474, there is no canonical definition to state claims against.
-/

/-! ## A076474.P15494776683431930596

`lt[A072883(A089001(3*n+4)), A303121(n+5)]`
-/

namespace A076474.P15494776683431930596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072883 (A089001 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303121 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076474.P15494776683431930596

/-!
# A076475: Primes in the numerator of the slowest decreasing sequence of unit fractions whose partial sums have a prime numerator.

The programs for A076475, there is no canonical definition to state claims against.
-/

/-! ## A076475.P15691003324062443174

`A006530(A094144(3*n+5)-A213998(n))`
-/

namespace A076475.P15691003324062443174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A094144 (3 * n + 5) - A213998 n).toNat

end

end A076475.P15691003324062443174

/-! ## A076475.P11376934565764901266

`A006530(xor(A094144(3*n+5), A213998(n)))`
-/

namespace A076475.P11376934565764901266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor (A094144 (3 * n + 5)) (A213998 n)).toNat

end

end A076475.P11376934565764901266

/-!
# A076476: Fractions a(n)/n are such that gcd(a(n),n)=1, a(n) > 0 and a(n) is as small as possible so that the partial sums of the fractions have prime numerator. Let a(1)=1.

The programs for A076476, there is no canonical definition to state claims against.
-/

/-! ## A076476.P12089710188406612198

`gcd(A000196((n+1)*Δ[n^3]), A095296(n+1))`
-/

namespace A076476.P12089710188406612198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A095296 (n + 1))

end

end A076476.P12089710188406612198

/-! ## A076476.P761891480173233111

`and(A122997(n), A183164(A183158(n)))`
-/

namespace A076476.P761891480173233111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122997 n) (A183164 (A183158 n).toNat)

end

end A076476.P761891480173233111

/-! ## A076476.P16698166556356894916

`A374470(A018910(n)*A158919(2*n+3))`
-/

namespace A076476.P16698166556356894916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374470 (A018910 n * A158919 (2 * n + 3)).toNat

end

end A076476.P16698166556356894916

/-!
# A076478: The binary Champernowne sequence: concatenate binary vectors of lengths 1, 2, 3, ... in numerical order.

The programs for A076478, there is no canonical definition to state claims against.
-/

/-! ## A076478.P17925837613970379225

`log2(A392106(n))`
-/

namespace A076478.P17925837613970379225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A392106 n : ℝ)

end

end A076478.P17925837613970379225

/-! ## A076478.P4690733294466202802

`(1-Δ[A277914(n)])/2`
-/

namespace A076478.P4690733294466202802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277914 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A076478.P4690733294466202802

/-! ## A076478.P6464944737331995062

`A319954(lt[A319954(n), 2])`
-/

namespace A076478.P6464944737331995062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A076478.P6464944737331995062

/-! ## A076478.P11984906312773566643

`A000328(n)%A392106(n)`
-/

namespace A076478.P11984906312773566643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A392106 n)

end

end A076478.P11984906312773566643

/-! ## A076478.P13175633064021786681

`A000466(n)%A392106(n)`
-/

namespace A076478.P13175633064021786681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A392106 n)

end

end A076478.P13175633064021786681

/-! ## A076478.P13844534476242605362

`A000605(n)%A392106(n)`
-/

namespace A076478.P13844534476242605362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A392106 n)

end

end A076478.P13844534476242605362

/-! ## A076478.P1676874528169155359

`A001148(n)%A392106(n)`
-/

namespace A076478.P1676874528169155359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A392106 n)

end

end A076478.P1676874528169155359

/-! ## A076478.P1105047980225611653

`A001218(n)%A392106(n)`
-/

namespace A076478.P1105047980225611653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A392106 n)

end

end A076478.P1105047980225611653

/-! ## A076478.P1248959482185959696

`A001513(n)%A392106(n)`
-/

namespace A076478.P1248959482185959696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A392106 n)

end

end A076478.P1248959482185959696

/-! ## A076478.P7178274354425057971

`A001520(n)%A392106(n)`
-/

namespace A076478.P7178274354425057971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A392106 n)

end

end A076478.P7178274354425057971

/-! ## A076478.P3856304216572542920

`A001533(n)%A392106(n)`
-/

namespace A076478.P3856304216572542920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A392106 n)

end

end A076478.P3856304216572542920

/-! ## A076478.P1392577893070874680

`A001535(n)%A392106(n)`
-/

namespace A076478.P1392577893070874680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A392106 n)

end

end A076478.P1392577893070874680

/-! ## A076478.P8680292367837459448

`A001538(n)%A392106(n)`
-/

namespace A076478.P8680292367837459448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A392106 n)

end

end A076478.P8680292367837459448

/-! ## A076478.P6676937588147433138

`A008379(n)%A392106(n)`
-/

namespace A076478.P6676937588147433138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A392106 n)

end

end A076478.P6676937588147433138

/-! ## A076478.P3177360501423479082

`A016760(n)%A392106(n)`
-/

namespace A076478.P3177360501423479082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A392106 n)

end

end A076478.P3177360501423479082

/-! ## A076478.P10538459789613431863

`A016761(n)%A392106(n)`
-/

namespace A076478.P10538459789613431863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A392106 n)

end

end A076478.P10538459789613431863

/-! ## A076478.P11404680707308123623

`A016819(n)%A392106(n)`
-/

namespace A076478.P11404680707308123623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A392106 n)

end

end A076478.P11404680707308123623

/-! ## A076478.P7704429471478392540

`A016820(n)%A392106(n)`
-/

namespace A076478.P7704429471478392540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016820 n) (A392106 n)

end

end A076478.P7704429471478392540

/-! ## A076478.P1497523464713282405

`A016843(n)%A392106(n)`
-/

namespace A076478.P1497523464713282405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016843 n) (A392106 n)

end

end A076478.P1497523464713282405

/-! ## A076478.P16914786331225321978

`A016927(n)%A392106(n)`
-/

namespace A076478.P16914786331225321978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016927 n) (A392106 n)

end

end A076478.P16914786331225321978

/-!
# A076479: a(n) = mu(rad(n)), where mu is the Moebius-function (A008683) and rad is the radical or squarefree kernel (A007947).

The programs for A076479, the canonical program `A076479.P10025313382514299279` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076479 has offset 1).

The definition of A076479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076479.P10025313382514299279

`(-1)^A001221(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076479

/-- `(-1)^A001221(n+1)` -/
def P10025313382514299279.Spec : Prop :=
  ∀ n, P10025313382514299279.a n = (A076479 (n + 1) : ℚ)

end A076479

/-! ## A076479.P18446228537952467876

`A008683(A007947(n+1))`
-/

namespace A076479.P18446228537952467876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007947 (n + 1)).toNat

end

end A076479.P18446228537952467876

namespace A076479

/-- `A008683(A007947(n+1))` -/
def P18446228537952467876.Spec : Prop :=
  ∀ n, P18446228537952467876.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P3383035591371858538

`(n+1)*A023900(n+1)/(A000010(n+1)*A007947(n+1))`
-/

namespace A076479.P3383035591371858538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A023900 (n + 1) : ℚ) / (A000010 (n + 1) * A007947 (n + 1) : ℚ)

end

end A076479.P3383035591371858538

namespace A076479

/-- `(n+1)*A023900(n+1)/(A000010(n+1)*A007947(n+1))` -/
def P3383035591371858538.Spec : Prop :=
  ∀ n, P3383035591371858538.a n = (A076479 (n + 1) : ℚ)

end A076479

/-! ## A076479.P10841119584018947134

`∏{p}[n+1, -1%#]`
-/

namespace A076479.P10841119584018947134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)

end

end A076479.P10841119584018947134

namespace A076479

/-- `∏{p}[n+1, -1%#]` -/
def P10841119584018947134.Spec : Prop :=
  ∀ n, P10841119584018947134.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P9125624365400790864

`∏{p}[n+1, or(#, -1)]`
-/

namespace A076479.P9125624365400790864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lor (p : ℤ) (-1)

end

end A076479.P9125624365400790864

namespace A076479

/-- `∏{p}[n+1, or(#, -1)]` -/
def P9125624365400790864.Spec : Prop :=
  ∀ n, P9125624365400790864.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P11439540834760723533

`∏{e}[n+1, or(#, -1)]`
-/

namespace A076479.P11439540834760723533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lor (Nat.factorization (f1 n) p : ℤ) (-1)

end

end A076479.P11439540834760723533

namespace A076479

/-- `∏{e}[n+1, or(#, -1)]` -/
def P11439540834760723533.Spec : Prop :=
  ∀ n, P11439540834760723533.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P17518524557538142455

`∏{e}[∏{p}[n+1, #], -#]`
-/

namespace A076479.P17518524557538142455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ))

end

end A076479.P17518524557538142455

namespace A076479

/-- `∏{e}[∏{p}[n+1, #], -#]` -/
def P17518524557538142455.Spec : Prop :=
  ∀ n, P17518524557538142455.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P15664302954808790367

`∏{p}[n+1, -floor(atan(#))]`
-/

namespace A076479.P15664302954808790367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊Real.arctan (p : ℝ)⌋)

end

end A076479.P15664302954808790367

namespace A076479

/-- `∏{p}[n+1, -floor(atan(#))]` -/
def P15664302954808790367.Spec : Prop :=
  ∀ n, P15664302954808790367.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P15905287812498842329

`∏{p}[n+1, ceil(atan(-#))]`
-/

namespace A076479.P15905287812498842329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (-(p : ℤ) : ℝ)⌉

end

end A076479.P15905287812498842329

namespace A076479

/-- `∏{p}[n+1, ceil(atan(-#))]` -/
def P15905287812498842329.Spec : Prop :=
  ∀ n, P15905287812498842329.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P18090158014741294370

`∏{e}[n+1, floor(tanh(-#))]`
-/

namespace A076479.P18090158014741294370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.tanh (-(Nat.factorization (f1 n) p : ℤ) : ℝ)⌋

end

end A076479.P18090158014741294370

namespace A076479

/-- `∏{e}[n+1, floor(tanh(-#))]` -/
def P18090158014741294370.Spec : Prop :=
  ∀ n, P18090158014741294370.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P17535732925426308095

`∏{p}[n+1, floor(acot(-#))]`
-/

namespace A076479.P17535732925426308095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊SequenceMachineLib.acot (-(p : ℤ) : ℝ)⌋

end

end A076479.P17535732925426308095

namespace A076479

/-- `∏{p}[n+1, floor(acot(-#))]` -/
def P17535732925426308095.Spec : Prop :=
  ∀ n, P17535732925426308095.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P10313210951945838374

`∏{e}[n+1, -ceil(tanh(#))]`
-/

namespace A076479.P10313210951945838374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌈Real.tanh (Nat.factorization (f1 n) p : ℝ)⌉)

end

end A076479.P10313210951945838374

namespace A076479

/-- `∏{e}[n+1, -ceil(tanh(#))]` -/
def P10313210951945838374.Spec : Prop :=
  ∀ n, P10313210951945838374.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P2439685792153248467

`∏{p}[n+1, -ceil(acot(#))]`
-/

namespace A076479.P2439685792153248467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌈SequenceMachineLib.acot (p : ℝ)⌉)

end

end A076479.P2439685792153248467

namespace A076479

/-- `∏{p}[n+1, -ceil(acot(#))]` -/
def P2439685792153248467.Spec : Prop :=
  ∀ n, P2439685792153248467.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P11581598819720408978

`round(tanh(∏{e}[n+1, -#]))`
-/

namespace A076479.P11581598819720408978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ))

end

end A076479.P11581598819720408978

namespace A076479

/-- `round(tanh(∏{e}[n+1, -#]))` -/
def P11581598819720408978.Spec : Prop :=
  ∀ n, P11581598819720408978.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P13429131019560200731

`∏{e}[n+1, floor(acot(-#))]`
-/

namespace A076479.P13429131019560200731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊SequenceMachineLib.acot (-(Nat.factorization (f1 n) p : ℤ) : ℝ)⌋

end

end A076479.P13429131019560200731

namespace A076479

/-- `∏{e}[n+1, floor(acot(-#))]` -/
def P13429131019560200731.Spec : Prop :=
  ∀ n, P13429131019560200731.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P16386046193159724283

`∏{e}[n+1, -ceil(acot(#))]`
-/

namespace A076479.P16386046193159724283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)⌉)

end

end A076479.P16386046193159724283

namespace A076479

/-- `∏{e}[n+1, -ceil(acot(#))]` -/
def P16386046193159724283.Spec : Prop :=
  ∀ n, P16386046193159724283.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P12379521373685960030

`∏{e}[n+1, floor(log(tanh(#)))]`
-/

namespace A076479.P12379521373685960030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.tanh (Nat.factorization (f1 n) p : ℝ))⌋

end

end A076479.P12379521373685960030

namespace A076479

/-- `∏{e}[n+1, floor(log(tanh(#)))]` -/
def P12379521373685960030.Spec : Prop :=
  ∀ n, P12379521373685960030.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P15704312504222086925

`∏{e}[n+1, floor(log2(tanh(#)))]`
-/

namespace A076479.P15704312504222086925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.logb 2 (Real.tanh (Nat.factorization (f1 n) p : ℝ))⌋

end

end A076479.P15704312504222086925

namespace A076479

/-- `∏{e}[n+1, floor(log2(tanh(#)))]` -/
def P15704312504222086925.Spec : Prop :=
  ∀ n, P15704312504222086925.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P12946615125327202011

`∏{p}[n+1, val(#, 4)-1]`
-/

namespace A076479.P12946615125327202011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation p 4 : ℤ) - 1)

end

end A076479.P12946615125327202011

namespace A076479

/-- `∏{p}[n+1, val(#, 4)-1]` -/
def P12946615125327202011.Spec : Prop :=
  ∀ n, P12946615125327202011.a n = A076479 (n + 1)

end A076479

/-! ## A076479.P17520481493618983913

`∏{p}[n+1, gcd(n, #)-2]`
-/

namespace A076479.P17520481493618983913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.gcd n p : ℤ) - 2)

end

end A076479.P17520481493618983913

namespace A076479

/-- `∏{p}[n+1, gcd(n, #)-2]` -/
def P17520481493618983913.Spec : Prop :=
  ∀ n, P17520481493618983913.a n = A076479 (n + 1)

end A076479

/-!
# A076480: a(n) = n + mu(rad(n)), where mu is the Moebius function (A008683) and rad is the squarefree kernel (A007947).

The programs for A076480, the canonical program `A076480.P9696198196575401842` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076480 has offset 1).

The definition of A076480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076480.P9696198196575401842

`n+1+A076479(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076480

/-- `n+1+A076479(n+1)` -/
def P9696198196575401842.Spec : Prop :=
  ∀ n, P9696198196575401842.a n = A076480 (n + 1)

theorem P9696198196575401842.correct : P9696198196575401842.Spec := by
  intro n
  simp only [A076480, Nat.add_sub_cancel]

end A076480

/-! ## A076480.P10424802180982606361

`n+1+A008683(A007947(n+1))`
-/

namespace A076480.P10424802180982606361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A008683 (A007947 (n + 1)).toNat

end

end A076480.P10424802180982606361

namespace A076480

/-- `n+1+A008683(A007947(n+1))` -/
def P10424802180982606361.Spec : Prop :=
  ∀ n, P10424802180982606361.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P1208807399013905205

`∏{p}[n+1, -1%#]+1+n`
-/

namespace A076480.P1208807399013905205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ) + 1 + (n : ℤ)

end

end A076480.P1208807399013905205

namespace A076480

/-- `∏{p}[n+1, -1%#]+1+n` -/
def P1208807399013905205.Spec : Prop :=
  ∀ n, P1208807399013905205.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P18238659360180603703

`∏{p}[n+1, or(#, -1)]+1+n`
-/

namespace A076480.P18238659360180603703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lor (p : ℤ) (-1) + 1 + (n : ℤ)

end

end A076480.P18238659360180603703

namespace A076480

/-- `∏{p}[n+1, or(#, -1)]+1+n` -/
def P18238659360180603703.Spec : Prop :=
  ∀ n, P18238659360180603703.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P6099457426761152076

`∏{e}[n+1, or(#, -1)]+1+n`
-/

namespace A076480.P6099457426761152076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lor (Nat.factorization (f1 n) p : ℤ) (-1) + 1 + (n : ℤ)

end

end A076480.P6099457426761152076

namespace A076480

/-- `∏{e}[n+1, or(#, -1)]+1+n` -/
def P6099457426761152076.Spec : Prop :=
  ∀ n, P6099457426761152076.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P108506583111730218

`∏{p}[n+1, -gcd(n, #)]+n+1`
-/

namespace A076480.P108506583111730218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.gcd n p : ℤ)) + (n + 1 : ℤ)

end

end A076480.P108506583111730218

namespace A076480

/-- `∏{p}[n+1, -gcd(n, #)]+n+1` -/
def P108506583111730218.Spec : Prop :=
  ∀ n, P108506583111730218.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P11291802796939995892

`∏{e}[∏{p}[n+1, #], -#]+n+1`
-/

namespace A076480.P11291802796939995892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) + (n + 1 : ℤ)

end

end A076480.P11291802796939995892

namespace A076480

/-- `∏{e}[∏{p}[n+1, #], -#]+n+1` -/
def P11291802796939995892.Spec : Prop :=
  ∀ n, P11291802796939995892.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P11000012239346910172

`∏{p}[n+1, ceil(atan(-#))]+1+n`
-/

namespace A076480.P11000012239346910172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (-(p : ℤ) : ℝ)⌉ + 1 + (n : ℤ)

end

end A076480.P11000012239346910172

namespace A076480

/-- `∏{p}[n+1, ceil(atan(-#))]+1+n` -/
def P11000012239346910172.Spec : Prop :=
  ∀ n, P11000012239346910172.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P10999572078239310820

`∏{e}[n+1, floor(tanh(-#))]+1+n`
-/

namespace A076480.P10999572078239310820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.tanh (-(Nat.factorization (f1 n) p : ℤ) : ℝ)⌋ + 1 + (n : ℤ)

end

end A076480.P10999572078239310820

namespace A076480

/-- `∏{e}[n+1, floor(tanh(-#))]+1+n` -/
def P10999572078239310820.Spec : Prop :=
  ∀ n, P10999572078239310820.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P1833460176525116575

`∏{p}[n+1, val(#, 4)-1]+1+n`
-/

namespace A076480.P1833460176525116575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation p 4 : ℤ) - 1) + 1 + (n : ℤ)

end

end A076480.P1833460176525116575

namespace A076480

/-- `∏{p}[n+1, val(#, 4)-1]+1+n` -/
def P1833460176525116575.Spec : Prop :=
  ∀ n, P1833460176525116575.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P13581115248223166202

`∏{p}[n+1, -#]/∏{p}[n+1, #]+1+n`
-/

namespace A076480.P13581115248223166202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) + 1 + (n : ℚ)

end

end A076480.P13581115248223166202

namespace A076480

/-- `∏{p}[n+1, -#]/∏{p}[n+1, #]+1+n` -/
def P13581115248223166202.Spec : Prop :=
  ∀ n, P13581115248223166202.a n = (A076480 (n + 1) : ℚ)

end A076480

/-! ## A076480.P7863952387292626729

`n+2-2*A092248(n+1)`
-/

namespace A076480.P7863952387292626729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - 2 * A092248 (n + 1)

end

end A076480.P7863952387292626729

namespace A076480

/-- `n+2-2*A092248(n+1)` -/
def P7863952387292626729.Spec : Prop :=
  ∀ n, P7863952387292626729.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P9995696659785696573

`A008836(A034444(n+1))+n+1`
-/

namespace A076480.P9995696659785696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A034444 (n + 1)).toNat + (n + 1 : ℤ)

end

end A076480.P9995696659785696573

namespace A076480

/-- `A008836(A034444(n+1))+n+1` -/
def P9995696659785696573.Spec : Prop :=
  ∀ n, P9995696659785696573.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P3909136331549580774

`A008836(A383863(n+1))+n+1`
-/

namespace A076480.P3909136331549580774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A383863 (n + 1)).toNat + (n + 1 : ℤ)

end

end A076480.P3909136331549580774

namespace A076480

/-- `A008836(A383863(n+1))+n+1` -/
def P3909136331549580774.Spec : Prop :=
  ∀ n, P3909136331549580774.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P8726236001687537755

`(A299822(n+1)+A023900(n+1))/A173557(n+1)`
-/

namespace A076480.P8726236001687537755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) + A023900 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A076480.P8726236001687537755

namespace A076480

/-- `(A299822(n+1)+A023900(n+1))/A173557(n+1)` -/
def P8726236001687537755.Spec : Prop :=
  ∀ n, P8726236001687537755.a n = (A076480 (n + 1) : ℚ)

end A076480

/-! ## A076480.P10042960946935732175

`A355683((n+1)²)+n+1`
-/

namespace A076480.P10042960946935732175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A076480.P10042960946935732175

namespace A076480

/-- `A355683((n+1)²)+n+1` -/
def P10042960946935732175.Spec : Prop :=
  ∀ n, P10042960946935732175.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P8707605559131317528

`A008836(A007947(A197863(n+1)))+n+1`
-/

namespace A076480.P8707605559131317528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A007947 (A197863 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A076480.P8707605559131317528

namespace A076480

/-- `A008836(A007947(A197863(n+1)))+n+1` -/
def P8707605559131317528.Spec : Prop :=
  ∀ n, P8707605559131317528.a n = A076480 (n + 1)

end A076480

/-! ## A076480.P1694094838382998449

`A162511((n+1)²)+n+1`
-/

namespace A076480.P1694094838382998449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A076480.P1694094838382998449

namespace A076480

/-- `A162511((n+1)²)+n+1` -/
def P1694094838382998449.Spec : Prop :=
  ∀ n, P1694094838382998449.a n = A076480 (n + 1)

end A076480

/-!
# A076481: 

The programs for A076481, there is no canonical definition to state claims against.
-/

/-! ## A076481.P5825336582217153626

`A272106(n+3)`
-/

namespace A076481.P5825336582217153626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272106 (n + 3)

end

end A076481.P5825336582217153626

/-!
# A076482: Triangle with T(n,k)=n!*(k-1)^k/k! where 1<=k<=n.

The programs for A076482, the canonical program `A076482.P17606031891566803029` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076482 has offset 1).

The definition of A076482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076482.P17606031891566803029

`A007778(A002262(n))*A173333(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A076482

/-- `A007778(A002262(n))*A173333(n+1)` -/
def P17606031891566803029.Spec : Prop :=
  ∀ n, P17606031891566803029.a n = A076482 (n + 1)

theorem P17606031891566803029.correct : P17606031891566803029.Spec := by
  intro n
  simp only [A076482, Nat.add_sub_cancel]

end A076482

/-! ## A076482.P12534456767614384731

`A002262(n)^A002260(n+1)*A173333(n+1)`
-/

namespace A076482.P12534456767614384731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A002260 (n + 1) : ℤ) * (A173333 (n + 1) : ℚ)

end

end A076482.P12534456767614384731

namespace A076482

/-- `A002262(n)^A002260(n+1)*A173333(n+1)` -/
def P12534456767614384731.Spec : Prop :=
  ∀ n, P12534456767614384731.a n = (A076482 (n + 1) : ℚ)

end A076482

/-! ## A076482.P14720782778557073123

`A002262(n)*A317588(A051033(n))`
-/

namespace A076482.P14720782778557073123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A317588 (A051033 n).toNat

end

end A076482.P14720782778557073123

namespace A076482

/-- `A002262(n)*A317588(A051033(n))` -/
def P14720782778557073123.Spec : Prop :=
  ∀ n, P14720782778557073123.a n = A076482 (n + 1)

end A076482

/-! ## A076482.P16816163835596359728

`A204016(A308694(n+1)^A057354(3*n+4))`
-/

namespace A076482.P16816163835596359728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (SequenceMachineLib.roundAway ((A308694 (n + 1) : ℚ) ^ (A057354 (3 * n + 4) : ℤ))).toNat

end

end A076482.P16816163835596359728

namespace A076482

/-- `A204016(A308694(n+1)^A057354(3*n+4))` -/
def P16816163835596359728.Spec : Prop :=
  ∀ n, P16816163835596359728.a n = A076482 (n + 1)

end A076482

/-!
# A076483: a(n) = n!*Sum_{k=1..n} (k-1)^k/k!.

The programs for A076483, there is no canonical definition to state claims against.
-/

/-! ## A076483.P9666254287713851527

`(n-1)^n+n*a(n-1)` with `a(0)=0`
-/

namespace A076483.P9666254287713851527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) ^ n + (n : ℤ) * a (n - 1)

end

end A076483.P9666254287713851527

/-! ## A076483.P7346426789442888473

`(n-1)^n+a(n-1)/n^-1` with `a(0)=0`
-/

namespace A076483.P7346426789442888473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (((n : ℤ) - 1) ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A076483.P7346426789442888473

/-! ## A076483.P8032563413081974534

`A065440(n)+floor(n*a(floor(n²/(n+1))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A076483.P8032563413081974534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A065440 n + (n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A076483.P8032563413081974534

/-!
# A076484: Balanced numbers k such that 2*k is not a balanced number (k is in A020492, 2*k is not).

The programs for A076484, there is no canonical definition to state claims against.
-/

/-! ## A076484.P8515906705852432262

`A103889(lt[A351114(2*(n+1)), A351114(n+1)])`
-/

namespace A076484.P8515906705852432262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351114 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076484.P8515906705852432262

/-! ## A076484.P15452633367907167973

`A020492(lt[A196028(n+1), A316428(3*n+4)])`
-/

namespace A076484.P15452633367907167973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076484.P15452633367907167973

/-!
# A076485: Solutions to gcd(sigma(x), phi(x)) > gcd(sigma(core(x)), phi(core(x))), i.e., when A009223(x) > A066086(x) or if A066087(x) > 0.

The programs for A076485, the canonical program `A076485.P11010209865824294629` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076485 has offset 1).

The definition of A076485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076485.P11010209865824294629

`lt[0, A066087(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076485

/-- `lt[0, A066087(n+1)]+1` -/
def P11010209865824294629.Spec : Prop :=
  ∀ n, (P11010209865824294629.a n : ℤ) = A076485 (n + 1)

theorem P11010209865824294629.correct : P11010209865824294629.Spec := by
  intro n
  simp only [A076485, Nat.add_sub_cancel]

end A076485

/-! ## A076485.P3499932437585306150

`lt[0, A066087(A028310(n))]`
-/

namespace A076485.P3499932437585306150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A076485.P3499932437585306150

namespace A076485

/-- `lt[0, A066087(A028310(n))]` -/
def P3499932437585306150.Spec : Prop :=
  ∀ n, (P3499932437585306150.a n : ℤ) = A076485 (n + 1)

end A076485

/-! ## A076485.P8471180575517499623

`A020725(lt[0, A066087(n+1)])`
-/

namespace A076485.P8471180575517499623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076485.P8471180575517499623

namespace A076485

/-- `A020725(lt[0, A066087(n+1)])` -/
def P8471180575517499623.Spec : Prop :=
  ∀ n, P8471180575517499623.a n = A076485 (n + 1)

end A076485

/-! ## A076485.P6048722175935410906

`lt[A066086(n+1), A009223(n+1)]+1`
-/

namespace A076485.P6048722175935410906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A076485.P6048722175935410906

namespace A076485

/-- `lt[A066086(n+1), A009223(n+1)]+1` -/
def P6048722175935410906.Spec : Prop :=
  ∀ n, (P6048722175935410906.a n : ℤ) = A076485 (n + 1)

end A076485

/-! ## A076485.P6655797160609733867

`lt[A066086(n+1), A062354(n+1)/A009286(n+1)]+1`
-/

namespace A076485.P6655797160609733867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A076485.P6655797160609733867

namespace A076485

/-- `lt[A066086(n+1), A062354(n+1)/A009286(n+1)]+1` -/
def P6655797160609733867.Spec : Prop :=
  ∀ n, (P6655797160609733867.a n : ℤ) = A076485 (n + 1)

end A076485

/-!
# A076486: Solutions to gcd(sigma(x), phi(x)) < gcd(sigma(core(x)), phi(core(x))), i.e., when A009223(x) < A066086(x) or if A066087(x) < 0.

The programs for A076486, the canonical program `A076486.P4890063333090486517` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076486 has offset 1).

The definition of A076486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076486.P4890063333090486517

`lt[A066087(n+1), 0]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076486

/-- `lt[A066087(n+1), 0]+1` -/
def P4890063333090486517.Spec : Prop :=
  ∀ n, (P4890063333090486517.a n : ℤ) = A076486 (n + 1)

theorem P4890063333090486517.correct : P4890063333090486517.Spec := by
  intro n
  simp only [A076486, Nat.add_sub_cancel]

end A076486

/-! ## A076486.P15245736598802701029

`lt[A066087(A028310(n)), 0]`
-/

namespace A076486.P15245736598802701029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076486.P15245736598802701029

namespace A076486

/-- `lt[A066087(A028310(n)), 0]` -/
def P15245736598802701029.Spec : Prop :=
  ∀ n, (P15245736598802701029.a n : ℤ) = A076486 (n + 1)

end A076486

/-! ## A076486.P3621186908741820748

`A020725(lt[A066087(n+1), 0])`
-/

namespace A076486.P3621186908741820748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A076486.P3621186908741820748

namespace A076486

/-- `A020725(lt[A066087(n+1), 0])` -/
def P3621186908741820748.Spec : Prop :=
  ∀ n, P3621186908741820748.a n = A076486 (n + 1)

end A076486

/-! ## A076486.P13139689051440597902

`lt[A009223(n+1), A066086(n+1)]+1`
-/

namespace A076486.P13139689051440597902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A076486.P13139689051440597902

namespace A076486

/-- `lt[A009223(n+1), A066086(n+1)]+1` -/
def P13139689051440597902.Spec : Prop :=
  ∀ n, (P13139689051440597902.a n : ℤ) = A076486 (n + 1)

end A076486

/-! ## A076486.P16509999344997820474

`lt[A066087(A000007(n)+n), 0]`
-/

namespace A076486.P16509999344997820474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076486.P16509999344997820474

namespace A076486

/-- `lt[A066087(A000007(n)+n), 0]` -/
def P16509999344997820474.Spec : Prop :=
  ∀ n, (P16509999344997820474.a n : ℤ) = A076486 (n + 1)

end A076486

/-!
# A076487: Solutions to gcd(sigma(x), phi(x)) = gcd(sigma(core(x)), phi(core(x))), i.e., when A009223(x) = A066086(x) or if A066087(x) = 0.

The programs for A076487, the canonical program `A076487.P6113147361711761600` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076487 has offset 1).

The definition of A076487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7060 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076487.P13515941494864378434

`∪[A005117(n+1), A076488(n+1)]`
-/

namespace A076487.P13515941494864378434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076487.P13515941494864378434

namespace A076487

/-- `∪[A005117(n+1), A076488(n+1)]` -/
def P13515941494864378434.Spec : Prop :=
  ∀ n, (P13515941494864378434.a n : ℤ) = A076487 (n + 1)

end A076487

/-! ## A076487.P6113147361711761600

`eq[0, A066087(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076487

/-- `eq[0, A066087(n+1)]+1` -/
def P6113147361711761600.Spec : Prop :=
  ∀ n, (P6113147361711761600.a n : ℤ) = A076487 (n + 1)

theorem P6113147361711761600.correct : P6113147361711761600.Spec := by
  intro n
  simp only [A076487, Nat.add_sub_cancel]

end A076487

/-! ## A076487.P9701837805359840747

`eq[A009223(n+1), A066086(n+1)]+1`
-/

namespace A076487.P9701837805359840747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076487.P9701837805359840747

namespace A076487

/-- `eq[A009223(n+1), A066086(n+1)]+1` -/
def P9701837805359840747.Spec : Prop :=
  ∀ n, (P9701837805359840747.a n : ℤ) = A076487 (n + 1)

end A076487

/-! ## A076487.P6315484707698223757

`record[n+1-∑{d}[A066087(n+1), A000203(#+1)]]`
-/

namespace A076487.P6315484707698223757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n).natAbs, A000203 (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076487.P6315484707698223757

namespace A076487

/-- `record[n+1-∑{d}[A066087(n+1), A000203(#+1)]]` -/
def P6315484707698223757.Spec : Prop :=
  ∀ n, P6315484707698223757.a n = A076487 (n + 1)

end A076487

/-! ## A076487.P10266385932724616665

`record[n+1-∑{d}[A066087(n+1), A001157(#+1)]]`
-/

namespace A076487.P10266385932724616665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n).natAbs, A001157 (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076487.P10266385932724616665

namespace A076487

/-- `record[n+1-∑{d}[A066087(n+1), A001157(#+1)]]` -/
def P10266385932724616665.Spec : Prop :=
  ∀ n, P10266385932724616665.a n = A076487 (n + 1)

end A076487

/-! ## A076487.P11964013364324767277

`record[n+1-∑{d}[A066087(n+1), A048250(#+1)]]`
-/

namespace A076487.P11964013364324767277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n).natAbs, A048250 (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076487.P11964013364324767277

namespace A076487

/-- `record[n+1-∑{d}[A066087(n+1), A048250(#+1)]]` -/
def P11964013364324767277.Spec : Prop :=
  ∀ n, P11964013364324767277.a n = A076487 (n + 1)

end A076487

/-!
# A076488: Nonsquarefree solutions to gcd(sigma(x), phi(x)) = gcd(sigma(core(x)), Phi(core(x))), i.e., when A009223(x) = A066086(x) or if A066087(x)=0 and mu(x)=0.

The programs for A076488, the canonical program `A076488.P10336001382820436641` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076488 has offset 1).

The definition of A076488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076488.P10336001382820436641

`record[A105570(A076487(n+4))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A076488

/-- `record[A105570(A076487(n+4))]` -/
def P10336001382820436641.Spec : Prop :=
  ∀ n, P10336001382820436641.a n = A076488 (n + 1)

theorem P10336001382820436641.correct : P10336001382820436641.Spec := by
  intro n
  simp only [A076488, Nat.add_sub_cancel]

end A076488

/-! ## A076488.P7769938482286079566

`filter[A076487(n+2), A087049(#)]`
-/

namespace A076488.P7769938482286079566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A076488.P7769938482286079566

namespace A076488

/-- `filter[A076487(n+2), A087049(#)]` -/
def P7769938482286079566.Spec : Prop :=
  ∀ n, P7769938482286079566.a n = A076488 (n + 1)

end A076488

/-! ## A076488.P3897596155841647358

`∩[A013929(n+1), A076487(n+1)]`
-/

namespace A076488.P3897596155841647358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076488.P3897596155841647358

namespace A076488

/-- `∩[A013929(n+1), A076487(n+1)]` -/
def P3897596155841647358.Spec : Prop :=
  ∀ n, (P3897596155841647358.a n : ℤ) = A076488 (n + 1)

end A076488

/-! ## A076488.P1241016028414113138

`filter[A076487(n+1), A107078(#)]`
-/

namespace A076488.P1241016028414113138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A076488.P1241016028414113138

namespace A076488

/-- `filter[A076487(n+1), A107078(#)]` -/
def P1241016028414113138.Spec : Prop :=
  ∀ n, P1241016028414113138.a n = A076488 (n + 1)

end A076488

/-! ## A076488.P9274163133557307441

`eq[A008966(n+1), A066087(n+1)]+1`
-/

namespace A076488.P9274163133557307441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076488.P9274163133557307441

namespace A076488

/-- `eq[A008966(n+1), A066087(n+1)]+1` -/
def P9274163133557307441.Spec : Prop :=
  ∀ n, (P9274163133557307441.a n : ℤ) = A076488 (n + 1)

end A076488

/-! ## A076488.P12158111747323083992

`eq[A066087(n+1), A097945(n+1)]+1`
-/

namespace A076488.P12158111747323083992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076488.P12158111747323083992

namespace A076488

/-- `eq[A066087(n+1), A097945(n+1)]+1` -/
def P12158111747323083992.Spec : Prop :=
  ∀ n, (P12158111747323083992.a n : ℤ) = A076488 (n + 1)

end A076488

/-! ## A076488.P16007143495438645600

`eq[cos(A066087(n+1)), A249442(n+1)]+1`
-/

namespace A076488.P16007143495438645600
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A066087 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A076488.P16007143495438645600

namespace A076488

/-- `eq[cos(A066087(n+1)), A249442(n+1)]+1` -/
def P16007143495438645600.Spec : Prop :=
  ∀ n, (P16007143495438645600.a n : ℤ) = A076488 (n + 1)

end A076488

/-! ## A076488.P8909494425404611880

`A113484(eq[A008966(n+1), A066087(n+1)])`
-/

namespace A076488.P8909494425404611880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076488.P8909494425404611880

namespace A076488

/-- `A113484(eq[A008966(n+1), A066087(n+1)])` -/
def P8909494425404611880.Spec : Prop :=
  ∀ n, P8909494425404611880.a n = A076488 (n + 1)

end A076488

/-!
# A076489: Number of common (distinct) digits of consecutive natural numbers.

The programs for A076489, there is no canonical definition to state claims against.
-/

/-! ## A076489.P13706729844078530516

`A000120(and(A086066(n+1), A086066(n)))`
-/

namespace A076489.P13706729844078530516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A086066 (n + 1)) (A086066 n)).toNat

end

end A076489.P13706729844078530516

/-! ## A076489.P10448176657370965576

`A207328(and(A086066(n+1), A086066(n)))`
-/

namespace A076489.P10448176657370965576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 (Int.land (A086066 (n + 1)) (A086066 n)).toNat

end

end A076489.P10448176657370965576

/-! ## A076489.P12030323403889943997

`A048881(2*and(A086066(n+1), A086066(n)))`
-/

namespace A076489.P12030323403889943997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * Int.land (A086066 (n + 1)) (A086066 n)).toNat

end

end A076489.P12030323403889943997

/-! ## A076489.P2205294752417671191

`A004216(or(A004151(n+1), A111616(n+1)))`
-/

namespace A076489.P2205294752417671191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.lor (A004151 (n + 1)) (A111616 (n + 1))).toNat

end

end A076489.P2205294752417671191

/-! ## A076489.P10470820856019193501

`A004216(or(A068636(n+1), A111616(n+1)))`
-/

namespace A076489.P10470820856019193501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.lor (A068636 (n + 1)) (A111616 (n + 1))).toNat

end

end A076489.P10470820856019193501

/-! ## A076489.P3991444396647415125

`A004216(A068636(n+1)+log2(A111616(n+1)))`
-/

namespace A076489.P3991444396647415125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (SequenceMachineLib.roundAway ((A068636 (n + 1) : ℝ) + Real.logb 2 (A111616 (n + 1) : ℝ))).toNat

end

end A076489.P3991444396647415125

/-! ## A076489.P14598241623799199040

`A004216(or(A004151(n+1), A088951(n)))`
-/

namespace A076489.P14598241623799199040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.lor (A004151 (n + 1)) (A088951 n)).toNat

end

end A076489.P14598241623799199040

/-! ## A076489.P8207614419767745525

`and(val(n+1, A063660(n)), A035152((n+1)²))`
-/

namespace A076489.P8207614419767745525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.valuation (n + 1) (A063660 n).toNat : ℤ) (A035152 ((n + 1) ^ 2))

end

end A076489.P8207614419767745525

/-! ## A076489.P6739555799104710425

`val(A137735(A002378(n)), A063660(n))`
-/

namespace A076489.P6739555799104710425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137735 (A002378 n).toNat).toNat (A063660 n).toNat

end

end A076489.P6739555799104710425

/-! ## A076489.P889449718725128682

`val(A137734(A027692(n)), A063660(n))`
-/

namespace A076489.P889449718725128682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137734 (A027692 n).toNat).toNat (A063660 n).toNat

end

end A076489.P889449718725128682

/-!
# A076490: Number of common (distinct) digits of consecutive prime numbers.

The programs for A076490, there is no canonical definition to state claims against.
-/

/-! ## A076490.P12434161939521771803

`A179081(A063008(n+4)/2)`
-/

namespace A076490.P12434161939521771803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (SequenceMachineLib.roundAway ((A063008 (n + 4) : ℚ) / 2)).toNat

end

end A076490.P12434161939521771803

/-! ## A076490.P12750022553626421271

`A130845(A182709(n+1))%2`
-/

namespace A076490.P12750022553626421271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130845 (A182709 (n + 1)).toNat) 2

end

end A076490.P12750022553626421271

/-! ## A076490.P13884241207569791338

`A007953(A063008(n+4)/2)%2`
-/

namespace A076490.P13884241207569791338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (SequenceMachineLib.roundAway ((A063008 (n + 4) : ℚ) / 2)).toNat) 2

end

end A076490.P13884241207569791338

/-! ## A076490.P1291997290108953125

`A092196(A063008(n+4)/2)%2`
-/

namespace A076490.P1291997290108953125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092196 (SequenceMachineLib.roundAway ((A063008 (n + 4) : ℚ) / 2)).toNat) 2

end

end A076490.P1291997290108953125

/-! ## A076490.P1406533506280363058

`A011673(A005900(n)-A011696(n))`
-/

namespace A076490.P1406533506280363058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011673 (A005900 n - A011696 n).toNat

end

end A076490.P1406533506280363058

/-!
# A076491: a(2*n), a(2*n+1) is the smallest consecutive prime pairs with at least n distinct common decimal digits.

The programs for A076491, there is no canonical definition to state claims against.
-/

/-! ## A076491.P12710492969456989886

`A085306(∑[A237765(n)!])`
-/

namespace A076491.P12710492969456989886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A237765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076491.P12710492969456989886

/-! ## A076491.P8945405682465562607

`p?[A061909(∑[A344912(n)])]`
-/

namespace A076491.P8945405682465562607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076491.P8945405682465562607

/-!
# A076492: Number of common decimal digits of n! and (n+1)!.

The programs for A076492, there is no canonical definition to state claims against.
-/

/-! ## A076492.P13509191454966884316

`A001222(lcm(A002596(n), A034871(n)))`
-/

namespace A076492.P13509191454966884316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A002596 n) (A034871 n))

end

end A076492.P13509191454966884316

/-!
# A076493: Number of common (distinct) decimal digits of n and n^2.

The programs for A076493, there is no canonical definition to state claims against.
-/

/-! ## A076493.P15504244609135976711

`A000120(and(A086066(n²), A086066(n)))`
-/

namespace A076493.P15504244609135976711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A086066 (n ^ 2)) (A086066 n)).toNat

end

end A076493.P15504244609135976711

/-! ## A076493.P991774031967557462

`A207328(and(A086066(n²), A086066(n)))`
-/

namespace A076493.P991774031967557462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 (Int.land (A086066 (n ^ 2)) (A086066 n)).toNat

end

end A076493.P991774031967557462

/-! ## A076493.P6417450306449805865

`A124768(and(A086066(n²), A086066(n)))`
-/

namespace A076493.P6417450306449805865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.land (A086066 (n ^ 2)) (A086066 n)).toNat

end

end A076493.P6417450306449805865

/-!
# A076497: Number of primes corresponding to n-th primeval number A072857(n).

The programs for A076497, there is no canonical definition to state claims against.
-/

/-! ## A076497.P6479252909900635317

`A039993(A072857(n+1))`
-/

namespace A076497.P6479252909900635317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A072857 (n + 1)).toNat

end

end A076497.P6479252909900635317

/-! ## A076497.P15514656359063746505

`record[A328516(n)]`
-/

namespace A076497.P15514656359063746505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076497.P15514656359063746505

/-! ## A076497.P15189919531635573256

`record[A039993(n+1)]`
-/

namespace A076497.P15189919531635573256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076497.P15189919531635573256

/-! ## A076497.P15304373017875151595

`A039993(∏{e}[A198633(n), A072857(#)])`
-/

namespace A076497.P15304373017875151595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072857 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A076497.P15304373017875151595

/-! ## A076497.P17285512671444661085

`record[A347337(n+1)%A052938(n)]`
-/

namespace A076497.P17285512671444661085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347337 (n + 1)) (A052938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076497.P17285512671444661085

/-!
# A076498: Class number h(p) of real quadratic field Q(sqrt(p)) where p is n-th prime == 1 mod 4.

The programs for A076498, there is no canonical definition to state claims against.
-/

/-! ## A076498.P10904029965762083721

`A355879(A080147(n+1))`
-/

namespace A076498.P10904029965762083721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355879 (A080147 (n + 1)).toNat

end

end A076498.P10904029965762083721

/-! ## A076498.P17792142476364522557

`A202053(p?[4*n+1])`
-/

namespace A076498.P17792142476364522557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A076498.P17792142476364522557

/-! ## A076498.P6261996583742144704

`A202053(A002144(n+1))`
-/

namespace A076498.P6261996583742144704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A002144 (n + 1)).toNat

end

end A076498.P6261996583742144704

/-! ## A076498.P10689275858625006308

`A202053(A192592(n+1))`
-/

namespace A076498.P10689275858625006308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A192592 (n + 1)).toNat

end

end A076498.P10689275858625006308

/-! ## A076498.P8306156436886571005

`A202053(A002313(n+2))`
-/

namespace A076498.P8306156436886571005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A002313 (n + 2)).toNat

end

end A076498.P8306156436886571005

/-! ## A076498.P504917366376463342

`A202053(A280084(n+2))`
-/

namespace A076498.P504917366376463342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A280084 (n + 2)).toNat

end

end A076498.P504917366376463342

/-! ## A076498.P10496108206758216570

`A202053(A152680(n+1)+1)`
-/

namespace A076498.P10496108206758216570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A152680 (n + 1) + 1).toNat

end

end A076498.P10496108206758216570

/-! ## A076498.P15820449644637650784

`abs(A039958(p?[A039955(n+1)]))`
-/

namespace A076498.P15820449644637650784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A076498.P15820449644637650784

/-!
# A076499: Partial sums of A076498.

The programs for A076499, there is no canonical definition to state claims against.
-/

/-! ## A076499.P10809376078206002427

`∑[A076498(n+1)]`
-/

namespace A076499.P10809376078206002427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076499.P10809376078206002427

/-! ## A076499.P6055237385975514113

`A076498(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A076499.P6055237385975514113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076498 (n + 1) + a (A023443 n).toNat

end

end A076499.P6055237385975514113

/-! ## A076499.P16847820348797302696

`A076498(n+1)+a(A289207(n+1))` with `a(0)=1`
-/

namespace A076499.P16847820348797302696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076498 (n + 1) + a (A289207 (n + 1)).toNat

end

end A076499.P16847820348797302696

/-! ## A076499.P735322359687483539

`A181762(2*a(n-1))+A076498(n+1)` with `a(0)=1`
-/

namespace A076499.P735322359687483539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181762 (2 * a (n - 1)).toNat + A076498 (n + 1)

end

end A076499.P735322359687483539

/-! ## A076499.P12132121405734706953

`a(n-1)+A089798(2*n+1)+A076498(n+1)` with `a(0)=1`
-/

namespace A076499.P12132121405734706953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A089798 (2 * n + 1) + A076498 (n + 1))

end

end A076499.P12132121405734706953

/-! ## A076499.P7588664171468972547

`∑[A202053(p?[4*n+1])]`
-/

namespace A076499.P7588664171468972547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076499.P7588664171468972547

/-! ## A076499.P10627122619082527029

`∑[A202053(A002144(n+1))]`
-/

namespace A076499.P10627122619082527029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A002144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076499.P10627122619082527029

/-! ## A076499.P943436906285963308

`∑[A202053(A152680(n+1)+1)]`
-/

namespace A076499.P943436906285963308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A152680 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076499.P943436906285963308

