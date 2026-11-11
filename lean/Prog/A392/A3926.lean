import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

/-!
# A392600: a(n) = A327860(n) mod 360, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A392600, there is no canonical definition to state claims against.
-/

/-! ## A392600.P6052840119253966993

`A327860(n)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392600.P6052840119253966993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327860 n) 360

end

end A392600.P6052840119253966993

/-! ## A392600.P14656741660308686849

`A003415(A276086(n))%360`
-/

namespace A392600.P14656741660308686849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A276086 n).toNat) 360

end

end A392600.P14656741660308686849

/-! ## A392600.P3741771587345608793

`A003415(A373849(n)+A003415(n))%360`
-/

namespace A392600.P3741771587345608793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A373849 n + A003415 n).toNat) 360

end

end A392600.P3741771587345608793

/-! ## A392600.P4464026037991981365

`A003415(A358764(n)+A324895(n))%360`
-/

namespace A392600.P4464026037991981365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A358764 n + A324895 n).toNat) 360

end

end A392600.P4464026037991981365

/-! ## A392600.P11753793862801670648

`A003415(A328571(n)*A328572(n))%360`
-/

namespace A392600.P11753793862801670648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A328571 n * A328572 n).toNat) 360

end

end A392600.P11753793862801670648

/-!
# A392602: Numbers k such that A322582(k) <= A276086(k) <= A348507(k).

The programs for A392602, there is no canonical definition to state claims against.
-/

/-! ## A392602.P7436944722786243431

`A081611(5^(n+1)*A054977(row(n)-col(n))+1)`
-/

namespace A392602.P7436944722786243431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 ((5 ^ (n + 1) : ℤ) * A054977 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + 1).toNat

end

end A392602.P7436944722786243431

/-!
# A392603: Numbers k such that A380459(A276086(k)) has no divisors of the form p^p, for any prime p.

The programs for A392603, there is no canonical definition to state claims against.
-/

/-! ## A392603.P1781215686206376498

`A276156(A392604(n+1))`
-/

namespace A392603.P1781215686206376498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A392604 (n + 1)).toNat

end

end A392603.P1781215686206376498

/-! ## A392603.P4236162661742159644

`eq[A069290(n+1), A324895(n)]`
-/

namespace A392603.P4236162661742159644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P4236162661742159644

/-! ## A392603.P15440410026753128230

`eq[A293442(n+1), A342022(n)]`
-/

namespace A392603.P15440410026753128230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P15440410026753128230

/-! ## A392603.P802931484004077575

`eq[A324895(n), A340786(n+1)]`
-/

namespace A392603.P802931484004077575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P802931484004077575

/-! ## A392603.P5235563755994745979

`eq[A317836(n), A358235(n+1)]`
-/

namespace A392603.P5235563755994745979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392603.P5235563755994745979

/-!
# A392604: Numbers k such that A380459(A019565(k)) has no divisors of the form p^p, for any prime p.

The programs for A392604, there is no canonical definition to state claims against.
-/

/-! ## A392604.P15952437218687268127

`eq[A073575(n+1), A274473(n)]`
-/

namespace A392604.P15952437218687268127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392604.P15952437218687268127

/-! ## A392604.P249500870397877317

`lt[A283998(n), A050873(A336840(n+1))]`
-/

namespace A392604.P249500870397877317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A336840 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392604.P249500870397877317

/-! ## A392604.P1595472503757393639

`lt[A053737(A002620(n)), 3]`
-/

namespace A392604.P1595472503757393639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A002620 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392604.P1595472503757393639

/-! ## A392604.P16472173208606665503

`eq[A059841(A124774(n)), A124757(n)]`
-/

namespace A392604.P16472173208606665503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A124774 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392604.P16472173208606665503

/-! ## A392604.P16460451757818920830

`eq[1, A380467(A019565(n))]`
-/

namespace A392604.P16460451757818920830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380467 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392604.P16460451757818920830

/-!
# A392605: Numbers k such that A327860(k) <= k, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A392605, there is no canonical definition to state claims against.
-/

/-! ## A392605.P1113668333733084637

`comp[lt[n, A327860(n)]]`
-/

namespace A392605.P1113668333733084637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A392605.P1113668333733084637

/-! ## A392605.P11942273638687541516

`lt[A327860(n)², A027693(n)]`
-/

namespace A392605.P11942273638687541516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P11942273638687541516

/-! ## A392605.P6888537536628202469

`lt[A327860(n), A000027(n+1)]`
-/

namespace A392605.P6888537536628202469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P6888537536628202469

/-! ## A392605.P10205151227154155968

`lt[A327860(n), A020725(n+1)]`
-/

namespace A392605.P10205151227154155968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P10205151227154155968

/-! ## A392605.P13901794733193620599

`lt[A327860(n), A065475(n+1)]`
-/

namespace A392605.P13901794733193620599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P13901794733193620599

/-! ## A392605.P15543413134122526286

`lt[A327860(n)-A054977(n), n]`
-/

namespace A392605.P15543413134122526286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A054977 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392605.P15543413134122526286

/-! ## A392605.P9341780191445709355

`lt[A327860(n), sqrt(A000290(n+1))]`
-/

namespace A392605.P9341780191445709355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000290 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A392605.P9341780191445709355

/-! ## A392605.P14689510128339720181

`lt[A327860(n)-n, A084580(n+1)]`
-/

namespace A392605.P14689510128339720181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P14689510128339720181

/-! ## A392605.P5185882784393069325

`lt[A327860(n)-(n+1), A193238(n)]`
-/

namespace A392605.P5185882784393069325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P5185882784393069325

/-! ## A392605.P6726912123487302968

`lt[A327860(n)-(n+1), A318440(n+1)]`
-/

namespace A392605.P6726912123487302968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P6726912123487302968

/-! ## A392605.P13797782542513200333

`lt[A327860(n), A061395(A000040(n+1))]`
-/

namespace A392605.P13797782542513200333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392605.P13797782542513200333

/-!
# A392607: Squarefree numbers k such that A322582(k) <= A276085(k) <= A348507(k).

The programs for A392607, there is no canonical definition to state claims against.
-/

/-! ## A392607.P1044656510191965692

`∩[A002038(n+1), A392601(n+1)]`
-/

namespace A392607.P1044656510191965692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392607.P1044656510191965692

/-! ## A392607.P14357612640370577876

`∩[A087008(n+1), A392601(n+1)]`
-/

namespace A392607.P14357612640370577876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392607.P14357612640370577876

/-! ## A392607.P9399635548432793638

`filter[A392601(n+1), A008966(#)]`
-/

namespace A392607.P9399635548432793638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392607.P9399635548432793638

/-! ## A392607.P6691290852372969889

`filter[A392601(n+1), A323154(#)]`
-/

namespace A392607.P6691290852372969889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A392607.P6691290852372969889

/-! ## A392607.P15553883298842471286

`∩[A087007(n+1), A392601(n+1)]`
-/

namespace A392607.P15553883298842471286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392607.P15553883298842471286

/-!
# A392608: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime divides n.

The programs for A392608, there is no canonical definition to state claims against.
-/

/-! ## A392608.P7410428666246538221

`A001221(A324198(n))`
-/

namespace A392608.P7410428666246538221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324198 n).toNat

end

end A392608.P7410428666246538221

/-! ## A392608.P9128159970566578625

`A267263(n)-A392610(n)`
-/

namespace A392608.P9128159970566578625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A392610 n

end

end A392608.P9128159970566578625

/-! ## A392608.P3990655214886153440

`A001221(gcd(n, A276086(n)))`
-/

namespace A392608.P3990655214886153440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n : ℤ) (A276086 n))

end

end A392608.P3990655214886153440

/-! ## A392608.P10924292820600398046

`∑{d}[A324198(n), A010051(#)]`
-/

namespace A392608.P10924292820600398046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A392608.P10924292820600398046

/-! ## A392608.P14862292142342493177

`∑{p}[A324198(n), A000035(#)]`
-/

namespace A392608.P14862292142342493177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A392608.P14862292142342493177

/-! ## A392608.P2243823984097925974

`∑{p}[A324198(n), A001222(#)]`
-/

namespace A392608.P2243823984097925974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A392608.P2243823984097925974

/-! ## A392608.P12323811585988656660

`∑{e}[A324198(n), A007732(#)]`
-/

namespace A392608.P12323811585988656660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007732 (Nat.factorization (f1 n).natAbs p)

end

end A392608.P12323811585988656660

/-! ## A392608.P8232794992937862646

`∑{e}[A324198(n), A039754(#)]`
-/

namespace A392608.P8232794992937862646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A039754 (Nat.factorization (f1 n).natAbs p)

end

end A392608.P8232794992937862646

/-! ## A392608.P2400873017669166926

`A106404(2*A324198(n))`
-/

namespace A392608.P2400873017669166926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * A324198 n).toNat

end

end A392608.P2400873017669166926

/-! ## A392608.P12262800854889015326

`A064547(A324198(n)²)`
-/

namespace A392608.P12262800854889015326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A324198 n ^ 2).toNat

end

end A392608.P12262800854889015326

/-! ## A392608.P14699547815062397885

`A001222(A000005(A324198(n)²))`
-/

namespace A392608.P14699547815062397885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A324198 n ^ 2).toNat).toNat

end

end A392608.P14699547815062397885

/-!
# A392609: Number of prime factors of n that do not divide A276086(n), where A276086 is the primorial base exp-function.

The programs for A392609, there is no canonical definition to state claims against.
-/

/-! ## A392609.P5703285042212479298

`A001221(n+1)-A392608(n+1)`
-/

namespace A392609.P5703285042212479298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A392608 (n + 1)

end

end A392609.P5703285042212479298

/-! ## A392609.P2259278581626998027

`A001221(n+1)-A001221(A324198(n+1))`
-/

namespace A392609.P2259278581626998027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A324198 (n + 1)).toNat

end

end A392609.P2259278581626998027

/-! ## A392609.P17634658528646440681

`A257993(A007955(n+1))-A331281(2*n+2)`
-/

namespace A392609.P17634658528646440681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A007955 (n + 1)).toNat - A331281 (2 * n + 2)

end

end A392609.P17634658528646440681

/-! ## A392609.P4962584887080169493

`A250120(A045912(n+4))%A060130(n+4)`
-/

namespace A392609.P4962584887080169493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 (A045912 (n + 4)).toNat) (A060130 (n + 4))

end

end A392609.P4962584887080169493

/-! ## A392609.P285171903659054604

`A341675(A360138(3*n+1)+A002620(n))`
-/

namespace A392609.P285171903659054604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A360138 (3 * n + 1) + A002620 n).toNat

end

end A392609.P285171903659054604

/-!
# A392610: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime does not divide n.

The programs for A392610, there is no canonical definition to state claims against.
-/

/-! ## A392610.P420670172486878094

`A267263(n)-A392608(n)`
-/

namespace A392610.P420670172486878094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A392608 n

end

end A392610.P420670172486878094

/-! ## A392610.P6017386955196609474

`A267263(n)-A001221(A324198(n))`
-/

namespace A392610.P6017386955196609474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A001221 (A324198 n).toNat

end

end A392610.P6017386955196609474

/-! ## A392610.P2438336976604312786

`A001222(A328571(n)²)/2-A371090(A324198(n))`
-/

namespace A392610.P2438336976604312786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A328571 n ^ 2).toNat : ℚ) / 2 - (A371090 (A324198 n).toNat : ℚ)

end

end A392610.P2438336976604312786

/-! ## A392610.P13195863353515472177

`A055640(A049345(n))-A392608(n)`
-/

namespace A392610.P13195863353515472177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A049345 n).toNat - A392608 n

end

end A392610.P13195863353515472177

/-! ## A392610.P14948775226777706529

`A069010(A277022(n))-A371090(A324198(n))`
-/

namespace A392610.P14948775226777706529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A277022 n).toNat - A371090 (A324198 n).toNat

end

end A392610.P14948775226777706529

/-! ## A392610.P13990610290945605533

`A001221(A276086(n))-A392608(n)`
-/

namespace A392610.P13990610290945605533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276086 n).toNat - A392608 n

end

end A392610.P13990610290945605533

/-!
# A392611: Numbers whose least significant nonzero digit is 1 in the primorial base representation (A049345), and that have also a digit larger than 1.

The programs for A392611, there is no canonical definition to state claims against.
-/

/-! ## A392611.P15307594352259309545

`eq[A141044(A328572(n)), A276088(n)]`
-/

namespace A392611.P15307594352259309545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A328572 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392611.P15307594352259309545

/-!
# A392612: Numbers k such that all prime factors of A276086(k) divide k, except the least one of them, where A276086 is the primorial base exp-function.

The programs for A392612, there is no canonical definition to state claims against.
-/

/-! ## A392612.P10434685269929922003

`lt[A392610(n), 2]`
-/

namespace A392612.P10434685269929922003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392612.P10434685269929922003

/-! ## A392612.P10941020139287853907

`eq[A267084(n+1), A392610(n)]`
-/

namespace A392612.P10941020139287853907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392612.P10941020139287853907

/-! ## A392612.P15704788063489959547

`eq[1, A392610(A028310(n))]`
-/

namespace A392612.P15704788063489959547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392612.P15704788063489959547

/-! ## A392612.P14716247383399783602

`eq[A057427(n), A392610(n)]`
-/

namespace A392612.P14716247383399783602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392612.P14716247383399783602

/-! ## A392612.P14933552473035833271

`eq[A276398(n), A392610(n)]`
-/

namespace A392612.P14933552473035833271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276398 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392612.P14933552473035833271

/-!
# A392613: Numbers k such that A392858(k) divides k.

The programs for A392613, there is no canonical definition to state claims against.
-/

/-! ## A392613.P14345490156680756852

`eq[A324198(n), A392858(n)]`
-/

namespace A392613.P14345490156680756852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392613.P14345490156680756852

/-! ## A392613.P16492588494349447255

`eq[0, A276093(A351253(n))]`
-/

namespace A392613.P16492588494349447255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 (A351253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392613.P16492588494349447255

/-! ## A392613.P14957408786720966356

`eq[A276093(n), A351254(n)]`
-/

namespace A392613.P14957408786720966356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392613.P14957408786720966356

/-! ## A392613.P14038783262347751296

`eq[A276094(n), A351253(n)]`
-/

namespace A392613.P14038783262347751296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392613.P14038783262347751296

/-! ## A392613.P11799682823830718916

`lt[A276093(A351253(n)), A329656(n+2)]`
-/

namespace A392613.P11799682823830718916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 (A351253 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329656 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392613.P11799682823830718916

/-!
# A392614: The position of the first occurrence of n in A392610.

The programs for A392614, there is no canonical definition to state claims against.
-/

/-! ## A392614.P15805206041954954970

`∑[A002487(C(A005459(2*n+1), 4))]`
-/

namespace A392614.P15805206041954954970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose (A005459 (2 * n + 1)).toNat 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392614.P15805206041954954970

/-! ## A392614.P7624710119388531926

`(A147448(2*n+5)+4)%A027745(n)`
-/

namespace A392614.P7624710119388531926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147448 (2 * n + 5) + 4) (A027745 n)

end

end A392614.P7624710119388531926

/-!
# A392617: Main diagonal of A255741.

The programs for A392617, there is no canonical definition to state claims against.
-/

/-! ## A392617.P2117288350777311452

`A255741(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A392617.P2117288350777311452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255741 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A392617.P2117288350777311452

/-! ## A392617.P12818468913439352813

`A255741((1+n)²+n²)`
-/

namespace A392617.P12818468913439352813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255741 ((1 + n) ^ 2 + n ^ 2)

end

end A392617.P12818468913439352813

/-! ## A392617.P9427919756755516229

`A255741(A001844(n))%A296284(n+3)`
-/

namespace A392617.P9427919756755516229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255741 (A001844 n).toNat) (A296284 (n + 3))

end

end A392617.P9427919756755516229

/-! ## A392617.P9911357327444260889

`A255741(A001844(n))+A000007(2*(n+1))`
-/

namespace A392617.P9911357327444260889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255741 (A001844 n).toNat + A000007 (2 * (n + 1))

end

end A392617.P9911357327444260889

/-! ## A392617.P196299982102397538

`A255741(A001844(n))*A330942(A298931(n))`
-/

namespace A392617.P196299982102397538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255741 (A001844 n).toNat * A330942 (A298931 n).toNat

end

end A392617.P196299982102397538

/-! ## A392617.P2501386351853445965

`A391249(A001844(n+3))+A255741(A001844(n))`
-/

namespace A392617.P2501386351853445965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (A001844 (n + 3)).toNat + A255741 (A001844 n).toNat

end

end A392617.P2501386351853445965

/-! ## A392617.P8149937626381171190

`A298931(A001844(n))+A255741(A001844(n))`
-/

namespace A392617.P8149937626381171190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (A001844 n).toNat + A255741 (A001844 n).toNat

end

end A392617.P8149937626381171190

/-!
# A392619: a(n) = denominator((2^n*(n!)^2/(1+2*n)!)^2).

The programs for A392619, there is no canonical definition to state claims against.
-/

/-! ## A392619.P13139774146232590013

`((2*n+1)*gcd(C(2*n, n), a(n-1)))²` with `a(0)=1`
-/

namespace A392619.P13139774146232590013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) * Nat.gcd (Nat.choose (2 * n) n) (a (n - 1))) ^ 2

end

end A392619.P13139774146232590013

/-! ## A392619.P5333812480869813396

`record[a(n-1)*n^(-1)^(n+1)*2^val(n, 2)]²` with `a(0)=1`
-/

namespace A392619.P5333812480869813396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * (n : ℚ) ^ ((-1) ^ (n + 1) : ℤ) * (2 ^ SequenceMachineLib.valuation n 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A392619.P5333812480869813396

/-! ## A392619.P7594679139986342288

`A001803(n)²`
-/

namespace A392619.P7594679139986342288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n ^ 2

end

end A392619.P7594679139986342288

/-! ## A392619.P5799430015603035248

`A131440(∑[n])²`
-/

namespace A392619.P5799430015603035248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131440 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A392619.P5799430015603035248

/-! ## A392619.P5772771483336275910

`A144815(∑[n])²`
-/

namespace A392619.P5772771483336275910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144815 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A392619.P5772771483336275910

/-! ## A392619.P17716504625437601142

`record[A163590(n)²]`
-/

namespace A392619.P17716504625437601142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392619.P17716504625437601142

/-! ## A392619.P14099594677401498751

`A086116(Δ[n²])²`
-/

namespace A392619.P14099594677401498751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A392619.P14099594677401498751

/-! ## A392619.P2709858301538785026

`A163590(Δ[n²])²`
-/

namespace A392619.P2709858301538785026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A392619.P2709858301538785026

/-! ## A392619.P5889560245090707139

`A380909(Δ[n²])²`
-/

namespace A392619.P5889560245090707139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A392619.P5889560245090707139

/-! ## A392619.P16457311701368996482

`A356205(∑[n+3])²`
-/

namespace A392619.P16457311701368996482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356205 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A392619.P16457311701368996482

/-!
# A392620: Number of maximal independent vertex sets in the n-necklace graph.

The programs for A392620, the canonical program `A392620.P12808742823013400187` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392620 has offset 1).

The definition of A392620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392620.P4373130211704979801

`ogf((4-6x+6x^2)/(1-4x+3x^2-2x^3))`
-/

namespace A392620.P4373130211704979801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 6] [1, -4, 3, -2] n

end

end A392620.P4373130211704979801

namespace A392620

/-- `ogf((4-6x+6x^2)/(1-4x+3x^2-2x^3))` -/
def P4373130211704979801.Spec : Prop :=
  ∀ n, P4373130211704979801.a n = A392620 (n + 1)

end A392620

/-! ## A392620.P12808742823013400187

`4*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=10, a(2)=34`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392620

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P12808742823013400187.Spec : Prop :=
  ∀ n, P12808742823013400187.a n = A392620 (n + 1)

theorem P12808742823013400187.correct : P12808742823013400187.Spec := by
  intro n
  simp only [A392620, Nat.add_sub_cancel]

end A392620

/-!
# A392621: Product of distinct integer roots r such that A001597(n) = r^m for some m > 1.

The programs for A392621, there is no canonical definition to state claims against.
-/

/-! ## A392621.P3741382309886021516

`A175069(∑[A076412(n)])`
-/

namespace A392621.P3741382309886021516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392621.P3741382309886021516

/-! ## A392621.P1171448380541851583

`A175069(A001597(1+n))`
-/

namespace A392621.P1171448380541851583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (A001597 (1 + n)).toNat

end

end A392621.P1171448380541851583

/-! ## A392621.P10590220269703526914

`A175069(∪[(n+1)², A097054(n+1)])`
-/

namespace A392621.P10590220269703526914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A392621.P10590220269703526914

/-!
# A392622: Lexicographically least increasing sequence of positive integers so that no term is the sum of two consecutive terms, or except for the first term a partial sum of the sequence.

The programs for A392622, there is no canonical definition to state claims against.
-/

/-! ## A392622.P5355122245290482939

`lt[A247063(A347731(3*(n+1))), A248416(n+3)]`
-/

namespace A392622.P5355122245290482939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (A347731 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248416 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392622.P5355122245290482939

/-! ## A392622.P6493818747975795511

`lt[A036585(n+1)-1, A005679(A030097(3*(n+1)))]`
-/

namespace A392622.P6493818747975795511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (A030097 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392622.P6493818747975795511

/-! ## A392622.P5706902464387913194

`lt[A005679(n+1)%3, A005679(A030097(3*(n+1)))]`
-/

namespace A392622.P5706902464387913194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005679 (n + 1)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (A030097 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392622.P5706902464387913194

/-! ## A392622.P1205805028074561222

`lt[A105278(A078181(n+1)), A193676(3*n+4)]`
-/

namespace A392622.P1205805028074561222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A078181 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193676 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392622.P1205805028074561222

/-!
# A392628: The number of infinitary divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A392628, the canonical program `A392628.P6323033129836470467` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392628 has offset 1).

The definition of A392628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392628.P6323033129836470467

`∏{e}[n+1, val(#+1, 2)+1]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392628

/-- `∏{e}[n+1, val(#+1, 2)+1]` -/
def P6323033129836470467.Spec : Prop :=
  ∀ n, (P6323033129836470467.a n : ℤ) = A392628 (n + 1)

theorem P6323033129836470467.correct : P6323033129836470467.Spec := by
  intro n
  simp only [A392628, Nat.add_sub_cancel]

end A392628

/-! ## A392628.P5945030996707094607

`∏{e}[1+n, A001511(#+1)]`
-/

namespace A392628.P5945030996707094607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001511 (Nat.factorization (f1 n) p + 1)

end

end A392628.P5945030996707094607

namespace A392628

/-- `∏{e}[1+n, A001511(#+1)]` -/
def P5945030996707094607.Spec : Prop :=
  ∀ n, P5945030996707094607.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P9686662658609053844

`∏{e}[n+1, A007814(#+1)+1]`
-/

namespace A392628.P9686662658609053844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A007814 (Nat.factorization (f1 n) p + 1) + 1)

end

end A392628.P9686662658609053844

namespace A392628

/-- `∏{e}[n+1, A007814(#+1)+1]` -/
def P9686662658609053844.Spec : Prop :=
  ∀ n, P9686662658609053844.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P14454522765474661778

`A372380(A401425(1+n))`
-/

namespace A392628.P14454522765474661778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A401425 (1 + n)).toNat

end

end A392628.P14454522765474661778

namespace A392628

/-- `A372380(A401425(1+n))` -/
def P14454522765474661778.Spec : Prop :=
  ∀ n, P14454522765474661778.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P15734090800153713676

`∏{e}[(n+1)², val(#+2, 2)]`
-/

namespace A392628.P15734090800153713676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p + 2) 2

end

end A392628.P15734090800153713676

namespace A392628

/-- `∏{e}[(n+1)², val(#+2, 2)]` -/
def P15734090800153713676.Spec : Prop :=
  ∀ n, (P15734090800153713676.a n : ℤ) = A392628 (n + 1)

end A392628

/-! ## A392628.P1119111673583535219

`A392447(A011262(n+1))`
-/

namespace A392628.P1119111673583535219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A011262 (n + 1)).toNat

end

end A392628.P1119111673583535219

namespace A392628

/-- `A392447(A011262(n+1))` -/
def P1119111673583535219.Spec : Prop :=
  ∀ n, P1119111673583535219.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P8921524695732555007

`A392447(A064549(n+1))`
-/

namespace A392628.P8921524695732555007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A064549 (n + 1)).toNat

end

end A392628.P8921524695732555007

namespace A392628

/-- `A392447(A064549(n+1))` -/
def P8921524695732555007.Spec : Prop :=
  ∀ n, P8921524695732555007.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P16119196519467980508

`A392447((n+1)*A007947(n+1))`
-/

namespace A392628.P16119196519467980508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A392628.P16119196519467980508

namespace A392628

/-- `A392447((n+1)*A007947(n+1))` -/
def P16119196519467980508.Spec : Prop :=
  ∀ n, P16119196519467980508.a n = A392628 (n + 1)

end A392628

/-! ## A392628.P3155085543942408858

`A392447(A227324(n+1))`
-/

namespace A392628.P3155085543942408858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A227324 (n + 1)).toNat

end

end A392628.P3155085543942408858

namespace A392628

/-- `A392447(A227324(n+1))` -/
def P3155085543942408858.Spec : Prop :=
  ∀ n, P3155085543942408858.a n = A392628 (n + 1)

end A392628

/-!
# A392629: The number of coreful infinitary divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A392629, the canonical program `A392629.P12160566177699602507` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392629 has offset 1).

The definition of A392629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392629.P12160566177699602507

`∏{e}[1+n, val(#+1, 2)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392629

/-- `∏{e}[1+n, val(#+1, 2)]` -/
def P12160566177699602507.Spec : Prop :=
  ∀ n, (P12160566177699602507.a n : ℤ) = A392629 (n + 1)

theorem P12160566177699602507.correct : P12160566177699602507.Spec := by
  intro n
  simp only [A392629, Nat.add_sub_cancel]

end A392629

/-! ## A392629.P18330042556382266969

`∏{e}[1+n, A007814(#+1)]`
-/

namespace A392629.P18330042556382266969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007814 (Nat.factorization (f1 n) p + 1)

end

end A392629.P18330042556382266969

namespace A392629

/-- `∏{e}[1+n, A007814(#+1)]` -/
def P18330042556382266969.Spec : Prop :=
  ∀ n, P18330042556382266969.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P14749919037588796310

`∏{e}[(1+n)*∏{p}[1+n, #], A383005(#)]`
-/

namespace A392629.P14749919037588796310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A383005 (Nat.factorization (f1 n) p)

end

end A392629.P14749919037588796310

namespace A392629

/-- `∏{e}[(1+n)*∏{p}[1+n, #], A383005(#)]` -/
def P14749919037588796310.Spec : Prop :=
  ∀ n, P14749919037588796310.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P8157178267102989582

`A352515(∏{d}[∏{e}[1+n, #], #])`
-/

namespace A392629.P8157178267102989582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A392629.P8157178267102989582

namespace A392629

/-- `A352515(∏{d}[∏{e}[1+n, #], #])` -/
def P8157178267102989582.Spec : Prop :=
  ∀ n, P8157178267102989582.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P10234750486028624690

`A007814(A062234(n+1)*(A005361(n+1)+1))`
-/

namespace A392629.P10234750486028624690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A062234 (n + 1) * (A005361 (n + 1) + 1)).toNat

end

end A392629.P10234750486028624690

namespace A392629

/-- `A007814(A062234(n+1)*(A005361(n+1)+1))` -/
def P10234750486028624690.Spec : Prop :=
  ∀ n, P10234750486028624690.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P14791314058965379384

`A007814(A107181(n+1)+A005361(n+1))`
-/

namespace A392629.P14791314058965379384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A107181 (n + 1) + A005361 (n + 1)).toNat

end

end A392629.P14791314058965379384

namespace A392629

/-- `A007814(A107181(n+1)+A005361(n+1))` -/
def P14791314058965379384.Spec : Prop :=
  ∀ n, P14791314058965379384.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P4351257458893920684

`A007814((8*n+9)*(A005361(n+1)+1))`
-/

namespace A392629.P4351257458893920684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((8 * n + 9 : ℤ) * (A005361 (n + 1) + 1)).toNat

end

end A392629.P4351257458893920684

namespace A392629

/-- `A007814((8*n+9)*(A005361(n+1)+1))` -/
def P4351257458893920684.Spec : Prop :=
  ∀ n, P4351257458893920684.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P8892945157031754299

`A096271(A112622(n+1))`
-/

namespace A392629.P8892945157031754299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A112622 (n + 1)).toNat

end

end A392629.P8892945157031754299

namespace A392629

/-- `A096271(A112622(n+1))` -/
def P8892945157031754299.Spec : Prop :=
  ∀ n, P8892945157031754299.a n = A392629 (n + 1)

end A392629

/-! ## A392629.P7049195705520360629

`C(A135539(A256692(n+1)), A071974(n+1))`
-/

namespace A392629.P7049195705520360629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135539 (A256692 (n + 1)).toNat).toNat (A071974 (n + 1)).toNat

end

end A392629.P7049195705520360629

namespace A392629

/-- `C(A135539(A256692(n+1)), A071974(n+1))` -/
def P7049195705520360629.Spec : Prop :=
  ∀ n, (P7049195705520360629.a n : ℤ) = A392629 (n + 1)

end A392629

/-! ## A392629.P10407577843290449974

`C(A135539(A256692(n+1)), A350388(n+1))`
-/

namespace A392629.P10407577843290449974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135539 (A256692 (n + 1)).toNat).toNat (A350388 (n + 1)).toNat

end

end A392629.P10407577843290449974

namespace A392629

/-- `C(A135539(A256692(n+1)), A350388(n+1))` -/
def P10407577843290449974.Spec : Prop :=
  ∀ n, (P10407577843290449974.a n : ℤ) = A392629 (n + 1)

end A392629

/-!
# A392630: The number of exponential divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A392630, the canonical program `A392630.P18032150745144184290` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392630 has offset 1).

The definition of A392630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392630.P11389765535312542664

`∏{e}[1+n, A154402(#)]`
-/

namespace A392630.P11389765535312542664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A154402 (Nat.factorization (f1 n) p)

end

end A392630.P11389765535312542664

namespace A392630

/-- `∏{e}[1+n, A154402(#)]` -/
def P11389765535312542664.Spec : Prop :=
  ∀ n, P11389765535312542664.a n = A392630 (n + 1)

end A392630

/-! ## A392630.P18032150745144184290

`∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A392630

/-- `∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]` -/
def P18032150745144184290.Spec : Prop :=
  ∀ n, P18032150745144184290.a n = A392630 (n + 1)

theorem P18032150745144184290.correct : P18032150745144184290.Spec := by
  intro n
  simp only [A392630, Nat.add_sub_cancel]

end A392630

/-! ## A392630.P14366232888806552233

`∏{e}[(n+1)², A124767(#)]`
-/

namespace A392630.P14366232888806552233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A124767 (Nat.factorization (f1 n) p)

end

end A392630.P14366232888806552233

namespace A392630

/-- `∏{e}[(n+1)², A124767(#)]` -/
def P14366232888806552233.Spec : Prop :=
  ∀ n, P14366232888806552233.a n = A392630 (n + 1)

end A392630

/-! ## A392630.P6440843139421088299

`gcd(A007462(n), A318672(n+1))`
-/

namespace A392630.P6440843139421088299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007462 n) (A318672 (n + 1))

end

end A392630.P6440843139421088299

namespace A392630

/-- `gcd(A007462(n), A318672(n+1))` -/
def P6440843139421088299.Spec : Prop :=
  ∀ n, (P6440843139421088299.a n : ℤ) = A392630 (n + 1)

end A392630

/-! ## A392630.P3317484293676374752

`A007947(A318672(n+1)^A084311(n+1))`
-/

namespace A392630.P3317484293676374752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A318672 (n + 1) : ℚ) ^ (A084311 (n + 1) : ℤ))).toNat

end

end A392630.P3317484293676374752

namespace A392630

/-- `A007947(A318672(n+1)^A084311(n+1))` -/
def P3317484293676374752.Spec : Prop :=
  ∀ n, P3317484293676374752.a n = A392630 (n + 1)

end A392630

/-! ## A392630.P10770865856848390031

`dr(A134343(A052804(∏{e}[1+n, #])))`
-/

namespace A392630.P10770865856848390031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A134343 (A052804 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat)

end

end A392630.P10770865856848390031

namespace A392630

/-- `dr(A134343(A052804(∏{e}[1+n, #])))` -/
def P10770865856848390031.Spec : Prop :=
  ∀ n, (P10770865856848390031.a n : ℤ) = A392630 (n + 1)

end A392630

/-! ## A392630.P2187694264737806242

`A360457(A318672(n+1)^A399977(n+1))`
-/

namespace A392630.P2187694264737806242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (SequenceMachineLib.roundAway ((A318672 (n + 1) : ℚ) ^ (A399977 (n + 1) : ℤ))).toNat

end

end A392630.P2187694264737806242

namespace A392630

/-- `A360457(A318672(n+1)^A399977(n+1))` -/
def P2187694264737806242.Spec : Prop :=
  ∀ n, P2187694264737806242.a n = A392630 (n + 1)

end A392630

/-!
# A392632: Numbers k whose squarefree kernel is the only exponential divisor of k that is a number whose number of divisors is a power of 2.

The programs for A392632, the canonical program `A392632.P57096770616822519` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392632 has offset 1).

The definition of A392632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392632.P57096770616822519

`eq[1, A392630(1+n)]+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A392632

/-- `eq[1, A392630(1+n)]+1` -/
def P57096770616822519.Spec : Prop :=
  ∀ n, (P57096770616822519.a n : ℤ) = A392632 (n + 1)

theorem P57096770616822519.correct : P57096770616822519.Spec := by
  intro n
  simp only [A392632, Nat.add_sub_cancel]

end A392632

/-! ## A392632.P3650319506805573395

`lt[A392630(n+1), 2]+1`
-/

namespace A392632.P3650319506805573395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392630 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A392632.P3650319506805573395

namespace A392632

/-- `lt[A392630(n+1), 2]+1` -/
def P3650319506805573395.Spec : Prop :=
  ∀ n, (P3650319506805573395.a n : ℤ) = A392632 (n + 1)

end A392632

/-! ## A392632.P17735947813091780642

`lt[A104696(a(A392630(n)-1)), 2]` with `a(0)=9`
-/

namespace A392632.P17735947813091780642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A104696 (f1 (A392630 n - 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A392632.P17735947813091780642

namespace A392632

/-- `lt[A104696(a(A392630(n)-1)), 2]` -/
def P17735947813091780642.Spec : Prop :=
  ∀ n, (P17735947813091780642.a n : ℤ) = A392632 (n + 1)

end A392632

/-! ## A392632.P14390140553443651041

`record[A399737(n+1)/A392630(n+1)]`
-/

namespace A392632.P14390140553443651041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399737 (n + 1) : ℚ) / (A392630 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392632.P14390140553443651041

namespace A392632

/-- `record[A399737(n+1)/A392630(n+1)]` -/
def P14390140553443651041.Spec : Prop :=
  ∀ n, P14390140553443651041.a n = (A392632 (n + 1) : ℚ)

end A392632

/-!
# A392633: Totient numbers where a record gap appears in the list (A002202).

The programs for A392633, there is no canonical definition to state claims against.
-/

/-! ## A392633.P17536317165685772850

`A002202(A383890(n+1))`
-/

namespace A392633.P17536317165685772850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (A383890 (n + 1)).toNat

end

end A392633.P17536317165685772850

/-! ## A392633.P15356538683840085065

`A008330(C(A029950(n+1), n))`
-/

namespace A392633.P15356538683840085065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (Nat.choose (A029950 (n + 1)).toNat n)

end

end A392633.P15356538683840085065

/-!
# A392636: Number of graphs with n vertices that have no induced regular subgraph of order 6 or greater.

The programs for A392636, there is no canonical definition to state claims against.
-/

/-! ## A392636.P3060899760511044065

`A004482(A394462(n+1)-A055642(n+4))`
-/

namespace A392636.P3060899760511044065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A394462 (n + 1) - A055642 (n + 4)).toNat

end

end A392636.P3060899760511044065

/-! ## A392636.P5135569549726360853

`A394462(n+1)-A083892(A017994(2*(n+1)))`
-/

namespace A392636.P5135569549726360853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394462 (n + 1) - A083892 (A017994 (2 * (n + 1))).toNat

end

end A392636.P5135569549726360853

/-!
# A392637: Number of planar partitions of n with strictly decreasing columns and where parts decrease by at most 1 along each row.

The programs for A392637, there is no canonical definition to state claims against.
-/

/-! ## A392637.P12947151749759473467

`A214564(C(n+3, 4))`
-/

namespace A392637.P12947151749759473467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214564 (Nat.choose (n + 3) 4)

end

end A392637.P12947151749759473467

/-! ## A392637.P14470043031891059559

`A214564(A145126(n+1))`
-/

namespace A392637.P14470043031891059559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214564 (A145126 (n + 1)).toNat

end

end A392637.P14470043031891059559

/-! ## A392637.P11118005198820153946

`A210716(2*(n+2)+9)`
-/

namespace A392637.P11118005198820153946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (2 * (n + 2) + 9)

end

end A392637.P11118005198820153946

/-! ## A392637.P14280894193982045895

`A263846(A050344(n))`
-/

namespace A392637.P14280894193982045895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A050344 n).toNat

end

end A392637.P14280894193982045895

/-! ## A392637.P11253745427029484020

`A112318(A346634(n))`
-/

namespace A392637.P11253745427029484020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A346634 n).toNat

end

end A392637.P11253745427029484020

/-!
# A392638: Expansion of 1 / ((1-x)^4 - x^5)^2.

The programs for A392638, the canonical program `A392638.P10015609340432045962` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392638 has offset 0).

The definition of A392638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))` (program `A392638.P10015609340432045962`, by `A392638.P10015609340432045962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392638.P10015609340432045962

`ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392638

/-- `ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))` -/
def P10015609340432045962.Spec : Prop :=
  ∀ n, P10015609340432045962.a n = A392638 n

theorem P10015609340432045962.correct : P10015609340432045962.Spec := by
  intro n
  simp only [A392638]

end A392638

/-! ## A392638.P8626505923078571461

`∑{#}[floor(n/5), (#+1)*C(n-#+7, n-5*#)]`
-/

namespace A392638.P8626505923078571461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1) * Nat.choose ((n : ℤ) - (k : ℤ) + 7).toNat ((n : ℤ) - (5 * k : ℤ)).toNat

end

end A392638.P8626505923078571461

namespace A392638

/-- `∑{#}[floor(n/5), (#+1)*C(n-#+7, n-5*#)]` -/
def P8626505923078571461.Spec : Prop :=
  ∀ n, (P8626505923078571461.a n : ℤ) = A392638 n

end A392638

/-! ## A392638.P4218609924881948185

`∑{#}[n, A390044(#)*A390044(n-#)]`
-/

namespace A392638.P4218609924881948185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A390044 k * A390044 (n - k)

end

end A392638.P4218609924881948185

namespace A392638

/-- `∑{#}[n, A390044(#)*A390044(n-#)]` -/
def P4218609924881948185.Spec : Prop :=
  ∀ n, P4218609924881948185.a n = A392638 n

end A392638

/-!
# A392639: Expansion of 1 / ((1-x)^5 - x^5)^2.

The programs for A392639, the canonical program `A392639.P17039529702313068750` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392639 has offset 0).

The definition of A392639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392639.P17039529702313068750

`∑{#}[floor(n/5), (#+1)*C(n+9, n-5*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392639

/-- `∑{#}[floor(n/5), (#+1)*C(n+9, n-5*#)]` -/
def P17039529702313068750.Spec : Prop :=
  ∀ n, (P17039529702313068750.a n : ℤ) = A392639 n

theorem P17039529702313068750.correct : P17039529702313068750.Spec := by
  intro n
  simp only [A392639]

end A392639

/-! ## A392639.P11205908247363464570

`∑{#}[n, A049016(#)*A049016(n-#)]`
-/

namespace A392639.P11205908247363464570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A049016 k * A049016 (n - k)

end

end A392639.P11205908247363464570

namespace A392639

/-- `∑{#}[n, A049016(#)*A049016(n-#)]` -/
def P11205908247363464570.Spec : Prop :=
  ∀ n, P11205908247363464570.a n = A392639 n

end A392639

/-!
# A392640: Expansion of 1 / sqrt((1-x)^4 - 4*x^3).

The programs for A392640, the canonical program `A392640.P5392647721671546046` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392640 has offset 0).

The definition of A392640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392640.P5392647721671546046

`∑{#}[floor(n/3), C(2*#, #)*C(n+#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392640

/-- `∑{#}[floor(n/3), C(2*#, #)*C(n+#+1, n-3*#)]` -/
def P5392647721671546046.Spec : Prop :=
  ∀ n, (P5392647721671546046.a n : ℤ) = A392640 n

theorem P5392647721671546046.correct : P5392647721671546046.Spec := by
  intro n
  simp only [A392640]

end A392640

/-! ## A392640.P17755636070808565668

`∑[A179874(A007476(n))]`
-/

namespace A392640.P17755636070808565668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (A007476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392640.P17755636070808565668

namespace A392640

/-- `∑[A179874(A007476(n))]` -/
def P17755636070808565668.Spec : Prop :=
  ∀ n, P17755636070808565668.a n = A392640 n

end A392640

/-! ## A392640.P1692687928845163277

`A305759(A086514(n+1))`
-/

namespace A392640.P1692687928845163277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (A086514 (n + 1)).toNat

end

end A392640.P1692687928845163277

namespace A392640

/-- `A305759(A086514(n+1))` -/
def P1692687928845163277.Spec : Prop :=
  ∀ n, P1692687928845163277.a n = A392640 n

end A392640

/-!
# A392641: Expansion of 1 / sqrt((1-x)^6 - 4*x).

The programs for A392641, the canonical program `A392641.P6956186659486428912` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392641 has offset 0).

The definition of A392641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392641.P6956186659486428912

`∑{#}[n, C(2*#, #)*C(n+5*#+2, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392641

/-- `∑{#}[n, C(2*#, #)*C(n+5*#+2, n-#)]` -/
def P6956186659486428912.Spec : Prop :=
  ∀ n, (P6956186659486428912.a n : ℤ) = A392641 n

theorem P6956186659486428912.correct : P6956186659486428912.Spec := by
  intro n
  simp only [A392641]

end A392641

/-! ## A392641.P472286197617582094

`∑[∑[∑[A360132(n)]]]`
-/

namespace A392641.P472286197617582094
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392641.P472286197617582094

namespace A392641

/-- `∑[∑[∑[A360132(n)]]]` -/
def P472286197617582094.Spec : Prop :=
  ∀ n, P472286197617582094.a n = A392641 n

end A392641

/-!
# A392642: Expansion of 1 / sqrt((1-x)^6 - 4*x^2).

The programs for A392642, the canonical program `A392642.P9729174689907320710` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392642 has offset 0).

The definition of A392642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392642.P9729174689907320710

`∑{#}[floor(n/2), C(2*#, #)*C(n+4*#+2, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392642

/-- `∑{#}[floor(n/2), C(2*#, #)*C(n+4*#+2, n-2*#)]` -/
def P9729174689907320710.Spec : Prop :=
  ∀ n, (P9729174689907320710.a n : ℤ) = A392642 n

theorem P9729174689907320710.correct : P9729174689907320710.Spec := by
  intro n
  simp only [A392642]

end A392642

/-! ## A392642.P17541655587660058960

`A036234(5^n)-n`
-/

namespace A392642.P17541655587660058960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (5 ^ n) - (n : ℤ)

end

end A392642.P17541655587660058960

namespace A392642

/-- `A036234(5^n)-n` -/
def P17541655587660058960.Spec : Prop :=
  ∀ n, P17541655587660058960.a n = A392642 n

end A392642

/-!
# A392643: Expansion of 1 / sqrt((1-x)^6 - 4*x^3).

The programs for A392643, the canonical program `A392643.P9522534899783447384` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392643 has offset 0).

The definition of A392643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392643.P9522534899783447384

`∑{#}[floor(n/3), C(2*#, #)*C(n+3*#+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392643

/-- `∑{#}[floor(n/3), C(2*#, #)*C(n+3*#+2, n-3*#)]` -/
def P9522534899783447384.Spec : Prop :=
  ∀ n, (P9522534899783447384.a n : ℤ) = A392643 n

theorem P9522534899783447384.correct : P9522534899783447384.Spec := by
  intro n
  simp only [A392643]

end A392643

/-! ## A392643.P5389805611063248554

`3*A141472(a(n-1))` with `a(0)=1`
-/

namespace A392643.P5389805611063248554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A141472 (a (n - 1)).toNat

end

end A392643.P5389805611063248554

namespace A392643

/-- `3*A141472(a(n-1))` -/
def P5389805611063248554.Spec : Prop :=
  ∀ n, P5389805611063248554.a n = A392643 n

end A392643

/-!
# A392648: Numbers k such that there exist at least two distinct subsets s1 and s2 of {1 < d < k: d | k}, such that Sum(s1) = Sum(s2) = k.

The programs for A392648, there is no canonical definition to state claims against.
-/

/-! ## A392648.P6863675310680021713

`lt[1, A293814(n)]`
-/

namespace A392648.P6863675310680021713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392648.P6863675310680021713

/-! ## A392648.P4771640021846218447

`lt[2, A211111(n)]`
-/

namespace A392648.P4771640021846218447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392648.P4771640021846218447

/-! ## A392648.P5947871112566325926

`lt[A060118(n), A000081(A033630(n))]`
-/

namespace A392648.P5947871112566325926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392648.P5947871112566325926

/-! ## A392648.P13436784236362295479

`lt[A126305(n), A074971(n+1)]+1`
-/

namespace A392648.P13436784236362295479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A392648.P13436784236362295479

/-! ## A392648.P463690561289768415

`lt[A194980(n+1), A080014(A033630(n))]`
-/

namespace A392648.P463690561289768415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080014 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392648.P463690561289768415

/-!
# A392650: Sum-irreducible numbers. A number k > 0 is sum-irreducible if no subset of its nontrivial divisors {1 < d < k : d | k} can sum to k.

The programs for A392650, there is no canonical definition to state claims against.
-/

/-! ## A392650.P14425354976666454880

`eq[0, A293814(n)]`
-/

namespace A392650.P14425354976666454880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392650.P14425354976666454880

/-! ## A392650.P15735528589690092534

`lt[A293814(1+n), 1]+1`
-/

namespace A392650.P15735528589690092534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A392650.P15735528589690092534

/-! ## A392650.P15361840117417601328

`comp[A136446(1+n)-1]+1`
-/

namespace A392650.P15361840117417601328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A392650.P15361840117417601328

/-! ## A392650.P3980506216721618242

`eq[0, A331979(n)]`
-/

namespace A392650.P3980506216721618242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392650.P3980506216721618242

/-! ## A392650.P13904180901130643335

`lt[A211111(n+1), 2]+1`
-/

namespace A392650.P13904180901130643335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A392650.P13904180901130643335

/-! ## A392650.P4846982674297980315

`eq[A157928(n), A211111(n)]`
-/

namespace A392650.P4846982674297980315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392650.P4846982674297980315

/-! ## A392650.P12697836095764856324

`eq[A000007(n), A003415(A211111(n))]`
-/

namespace A392650.P12697836095764856324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A211111 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392650.P12697836095764856324

/-! ## A392650.P769150605364143239

`∪[A000984(n), A088725(n+1)]`
-/

namespace A392650.P769150605364143239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392650.P769150605364143239

/-! ## A392650.P11061368703538066138

`∪[A001307(n), A088725(n+1)]`
-/

namespace A392650.P11061368703538066138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392650.P11061368703538066138

/-! ## A392650.P17149253018911488904

`∪[A002361(n), A088725(n+1)]`
-/

namespace A392650.P17149253018911488904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392650.P17149253018911488904

/-!
# A392652: Numbers k for which there exists a subset of its even nontrivial divisors that sum to k.

The programs for A392652, there is no canonical definition to state claims against.
-/

/-! ## A392652.P1194135283987205843

`2*A005835(n+1)`
-/

namespace A392652.P1194135283987205843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005835 (n + 1)

end

end A392652.P1194135283987205843

/-! ## A392652.P5330881926570247033

`A005835(n+1)+A005835(-xor(n, -1))`
-/

namespace A392652.P5330881926570247033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1) + A005835 (-Int.xor (n : ℤ) (-1)).toNat

end

end A392652.P5330881926570247033

/-! ## A392652.P6947902876165651800

`A005835(A000027(n+1))+A005835(n+1)`
-/

namespace A392652.P6947902876165651800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (A000027 (n + 1)).toNat + A005835 (n + 1)

end

end A392652.P6947902876165651800

/-! ## A392652.P11454427564383573678

`2*(lt[1, A074971(1+n)]+1)`
-/

namespace A392652.P11454427564383573678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A392652.P11454427564383573678

/-! ## A392652.P16040282289962238158

`2*lt[1, A033630(n)]`
-/

namespace A392652.P16040282289962238158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392652.P16040282289962238158

/-! ## A392652.P10154736470885737783

`2*(lt[0, A065205(n+1)]+1)`
-/

namespace A392652.P10154736470885737783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A392652.P10154736470885737783

/-! ## A392652.P16205256659328341641

`2*(eq[1, A210455(n+1)]+1)`
-/

namespace A392652.P16205256659328341641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A392652.P16205256659328341641

/-! ## A392652.P1358731000270254084

`A004277(A005835(n+1))`
-/

namespace A392652.P1358731000270254084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005835 (n + 1)).toNat

end

end A392652.P1358731000270254084

/-! ## A392652.P14682137439717120343

`A004277(lt[1, A033630(n)])`
-/

namespace A392652.P14682137439717120343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A392652.P14682137439717120343

/-! ## A392652.P12491051136113847137

`A005843(lt[1, A033630(n)])`
-/

namespace A392652.P12491051136113847137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A392652.P12491051136113847137

/-! ## A392652.P72073111697367166

`A004277(lt[1, A331928(n)])`
-/

namespace A392652.P72073111697367166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A392652.P72073111697367166

/-! ## A392652.P13506283295894088738

`A317440(lt[1, A033630(n)])`
-/

namespace A392652.P13506283295894088738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A392652.P13506283295894088738

/-! ## A392652.P327051073712266541

`A004275(A005835(n+1)+1)`
-/

namespace A392652.P327051073712266541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A005835 (n + 1) + 1).toNat

end

end A392652.P327051073712266541

/-!
# A392654: Binary-encoded contents of pin 3, after n moves, when moving infinitely many disks in the Tower of Hanoi starting from pin 1, via the optimal algorithm.

The programs for A392654, there is no canonical definition to state claims against.
-/

/-! ## A392654.P660040091712274662

`A289814(A055661(n))`
-/

namespace A392654.P660040091712274662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A055661 n).toNat

end

end A392654.P660040091712274662

/-! ## A392654.P7589208948852899587

`A309952(A163359(∑[n]))`
-/

namespace A392654.P7589208948852899587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A163359 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A392654.P7589208948852899587

/-! ## A392654.P11581941118570396127

`A060586(A005823(1+n))-A289813(A055661(n))`
-/

namespace A392654.P11581941118570396127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A005823 (1 + n)).toNat - A289813 (A055661 n).toNat

end

end A392654.P11581941118570396127

/-! ## A392654.P11686368024236929966

`A391638(n)-A392655(n)`
-/

namespace A392654.P11686368024236929966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 n - A392655 n

end

end A392654.P11686368024236929966

/-! ## A392654.P4962246334333870681

`A289813(A128202(n+1))`
-/

namespace A392654.P4962246334333870681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A128202 (n + 1)).toNat

end

end A392654.P4962246334333870681

/-! ## A392654.P17497382002826990768

`A060586(A005823(n+1))-A289814(A128202(n+1))`
-/

namespace A392654.P17497382002826990768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A005823 (n + 1)).toNat - A289814 (A128202 (n + 1)).toNat

end

end A392654.P17497382002826990768

/-! ## A392654.P16137526328022694808

`A309952(A163483(n))`
-/

namespace A392654.P16137526328022694808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A163483 n).toNat

end

end A392654.P16137526328022694808

/-!
# A392655: Binary-encoded contents of pin 2, after n moves, when moving infinitely many disks in the Tower of Hanoi starting from pin 1, via the optimal algorithm.

The programs for A392655, there is no canonical definition to state claims against.
-/

/-! ## A392655.P5781929686543161613

`A289813(A055661(n))`
-/

namespace A392655.P5781929686543161613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A055661 n).toNat

end

end A392655.P5781929686543161613

/-! ## A392655.P8254272291041968862

`A060586(A005823(n+1))-A289814(A055661(n))`
-/

namespace A392655.P8254272291041968862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A005823 (n + 1)).toNat - A289814 (A055661 n).toNat

end

end A392655.P8254272291041968862

/-! ## A392655.P18426720719252438789

`A059253(A163355(A163355(A163355(A000695(n)))))`
-/

namespace A392655.P18426720719252438789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163355 (A163355 (A163355 (A000695 n).toNat).toNat).toNat).toNat

end

end A392655.P18426720719252438789

/-! ## A392655.P8072196032311625589

`A060586(A005823(n+1))-A392654(n)`
-/

namespace A392655.P8072196032311625589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A005823 (n + 1)).toNat - A392654 n

end

end A392655.P8072196032311625589

/-! ## A392655.P8977026728190643931

`A391638(n)-A392654(n)`
-/

namespace A392655.P8977026728190643931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391638 n - A392654 n

end

end A392655.P8977026728190643931

/-! ## A392655.P16890376564946801508

`A289814(A128202(n+1))`
-/

namespace A392655.P16890376564946801508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A128202 (n + 1)).toNat

end

end A392655.P16890376564946801508

/-! ## A392655.P1995992363139832287

`A060586(A005823(n+1))-A309952(A163483(n))`
-/

namespace A392655.P1995992363139832287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A005823 (n + 1)).toNat - A309952 (A163483 n).toNat

end

end A392655.P1995992363139832287

/-!
# A392656: Lower Wythoff partition sequence of the squares; see Comments.

The programs for A392656, there is no canonical definition to state claims against.
-/

/-! ## A392656.P12728528859623993814

`A392658(1+n)²`
-/

namespace A392656.P12728528859623993814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392658 (1 + n) ^ 2

end

end A392656.P12728528859623993814

/-! ## A392656.P10344275350358733713

`A392658(n+1)^2`
-/

namespace A392656.P10344275350358733713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392658 (n + 1) ^ 2

end

end A392656.P10344275350358733713

/-! ## A392656.P10993081137612872146

`(1+comp[A392659(n+1)-1])²`
-/

namespace A392656.P10993081137612872146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392659 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A392656.P10993081137612872146

/-! ## A392656.P11256175756202119800

`A000290(A392658(n+1))`
-/

namespace A392656.P11256175756202119800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A392658 (n + 1)).toNat

end

end A392656.P11256175756202119800

/-! ## A392656.P6107717839601983419

`A002620(2*A392658(n+1))`
-/

namespace A392656.P6107717839601983419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A392658 (n + 1)).toNat

end

end A392656.P6107717839601983419

/-!
# A392657: Upper Wythoff partition sequence of the squares; see A392656.

The programs for A392657, there is no canonical definition to state claims against.
-/

/-! ## A392657.P18258586426589180212

`A392659(1+n)²`
-/

namespace A392657.P18258586426589180212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392659 (1 + n) ^ 2

end

end A392657.P18258586426589180212

/-! ## A392657.P5988047591951411083

`A392659(n+1)^2`
-/

namespace A392657.P5988047591951411083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392659 (n + 1) ^ 2

end

end A392657.P5988047591951411083

/-! ## A392657.P4781974833415178683

`A392659(1+n)*A392659(n+1)`
-/

namespace A392657.P4781974833415178683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392659 (1 + n) * A392659 (n + 1)

end

end A392657.P4781974833415178683

/-! ## A392657.P14806099414511230646

`A000290(A392659(n+1))`
-/

namespace A392657.P14806099414511230646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A392659 (n + 1)).toNat

end

end A392657.P14806099414511230646

/-! ## A392657.P4764834427007910469

`eq[Δ[A058343(n)], A189219(n+1)]²`
-/

namespace A392657.P4764834427007910469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n ^ 2

end

end A392657.P4764834427007910469

/-!
# A392658: Indices of the lower Wythoff partition sequence of the squares; see A392657.

The programs for A392658, there is no canonical definition to state claims against.
-/

/-! ## A392658.P7358096214089400612

`sqrt(A392656(n+1))`
-/

namespace A392658.P7358096214089400612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392656 (n + 1) : ℝ)

end

end A392658.P7358096214089400612

/-! ## A392658.P9743645967470361704

`comp[A392659(1+n)-1]+1`
-/

namespace A392658.P9743645967470361704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392659 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A392658.P9743645967470361704

/-! ## A392658.P4306690835170152203

`root(A392656(n+1), A040000(n))`
-/

namespace A392658.P4306690835170152203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A392656 (n + 1) : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A392658.P4306690835170152203

/-! ## A392658.P13657861455586754110

`A000194(A392656(n+1)+1)`
-/

namespace A392658.P13657861455586754110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A392656 (n + 1) + 1).toNat

end

end A392658.P13657861455586754110

/-! ## A392658.P121104367917923574

`A000196(A392656(1+n)+1)`
-/

namespace A392658.P121104367917923574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A392656 (1 + n) + 1).toNat

end

end A392658.P121104367917923574

/-! ## A392658.P10766320791608797740

`A346704(A392656(n+1)+A019590(n+3))`
-/

namespace A392658.P10766320791608797740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (A392656 (n + 1) + A019590 (n + 3)).toNat

end

end A392658.P10766320791608797740

/-! ## A392658.P5688822265421934629

`A000188(A392656(n+1)+A000035(2*(n+2)))`
-/

namespace A392658.P5688822265421934629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A392656 (n + 1) + A000035 (2 * (n + 2))).toNat

end

end A392658.P5688822265421934629

/-!
# A392659: Indices of the upper Wythoff partition sequence of the squares; see A392656.

The programs for A392659, there is no canonical definition to state claims against.
-/

/-! ## A392659.P13612925250789113810

`sqrt(A392657(1+n))`
-/

namespace A392659.P13612925250789113810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392657 (1 + n) : ℝ)

end

end A392659.P13612925250789113810

/-! ## A392659.P181899828490996700

`A018851(A392657(n+1))`
-/

namespace A392659.P181899828490996700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A392657 (n + 1)).toNat

end

end A392659.P181899828490996700

/-! ## A392659.P10937451938552966280

`A000188(A392657(n+1))`
-/

namespace A392659.P10937451938552966280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A392657 (n + 1)).toNat

end

end A392659.P10937451938552966280

/-! ## A392659.P14455349249879307785

`A000196(A392657(n+1)+A000007(n))`
-/

namespace A392659.P14455349249879307785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A392657 (n + 1) + A000007 n).toNat

end

end A392659.P14455349249879307785

/-! ## A392659.P1803664464660651250

`A000196(A392657(n+1)+A386584(n))`
-/

namespace A392659.P1803664464660651250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A392657 (n + 1) + A386584 n).toNat

end

end A392659.P1803664464660651250

/-!
# A392660: Lower Wythoff partition sequence of the triangular numbers (A003086); see Comments.

The programs for A392660, there is no canonical definition to state claims against.
-/

/-! ## A392660.P11554261088908198391

`C(A392662(n+1)+1, 2)`
-/

namespace A392660.P11554261088908198391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A392662 (n + 1) + 1).toNat 2

end

end A392660.P11554261088908198391

/-! ## A392660.P13023325000962801435

`A000217(A392662(1+n))`
-/

namespace A392660.P13023325000962801435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A392662 (1 + n)).toNat

end

end A392660.P13023325000962801435

/-! ## A392660.P10205052097473843501

`∑{#}[A392662(n+1), #]`
-/

namespace A392660.P10205052097473843501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A392660.P10205052097473843501

/-! ## A392660.P12809527833510394485

`(2*n+1)*A198194(A117086(n+1))`
-/

namespace A392660.P12809527833510394485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A198194 (A117086 (n + 1)).toNat

end

end A392660.P12809527833510394485

/-! ## A392660.P2474847613572211918

`(2*n+1)*A062571(A028982(n+1))`
-/

namespace A392660.P2474847613572211918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A062571 (A028982 (n + 1)).toNat

end

end A392660.P2474847613572211918

/-!
# A392661: Upper Wythoff partition sequence of the triangular numbers (A003086); see A392660.

The programs for A392661, there is no canonical definition to state claims against.
-/

/-! ## A392661.P11064285909016697610

`C(1+A392663(1+n), 2)`
-/

namespace A392661.P11064285909016697610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + A392663 (1 + n)).toNat 2

end

end A392661.P11064285909016697610

/-! ## A392661.P15158261876017542496

`A000217(A392663(1+n))`
-/

namespace A392661.P15158261876017542496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A392663 (1 + n)).toNat

end

end A392661.P15158261876017542496

/-! ## A392661.P12837942666745330422

`∑{#}[A392663(n+1), #]`
-/

namespace A392661.P12837942666745330422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A392661.P12837942666745330422

/-! ## A392661.P9510972628662161882

`A000217(A184416(n+1)%A110713(3*n+2))`
-/

namespace A392661.P9510972628662161882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A184416 (n + 1)) (A110713 (3 * n + 2))).toNat

end

end A392661.P9510972628662161882

/-!
# A392662: Indices of the lower Wythoff partition sequence of the triangular numbers; see A392660.

The programs for A392662, there is no canonical definition to state claims against.
-/

/-! ## A392662.P1522368081684760327

`row(A392660(n+1))`
-/

namespace A392662.P1522368081684760327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A392660 (n + 1)).toNat

end

end A392662.P1522368081684760327

/-! ## A392662.P14904190232708593893

`comp[A392663(n+1)-1]+1`
-/

namespace A392662.P14904190232708593893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392663 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A392662.P14904190232708593893

/-! ## A392662.P16414730373402719354

`A341318(A392660(1+n)+1)`
-/

namespace A392662.P16414730373402719354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341318 (A392660 (1 + n) + 1).toNat

end

end A392662.P16414730373402719354

/-! ## A392662.P7627236181268271538

`A007318(A392660(n+1)+1)`
-/

namespace A392662.P7627236181268271538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A392660 (n + 1) + 1).toNat

end

end A392662.P7627236181268271538

/-! ## A392662.P17261341341376816625

`A399609(A392660(1+n))`
-/

namespace A392662.P17261341341376816625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399609 (A392660 (1 + n)).toNat

end

end A392662.P17261341341376816625

/-! ## A392662.P15159314153692413374

`A003056(A392660(n+1)+1)`
-/

namespace A392662.P15159314153692413374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A392660 (n + 1) + 1).toNat

end

end A392662.P15159314153692413374

/-! ## A392662.P18318476004568197618

`A004736(A392660(n+1)+2)`
-/

namespace A392662.P18318476004568197618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A392660 (n + 1) + 2).toNat

end

end A392662.P18318476004568197618

/-! ## A392662.P6563511423244687268

`A077592(A392660(n+1)+2)`
-/

namespace A392662.P6563511423244687268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A392660 (n + 1) + 2).toNat

end

end A392662.P6563511423244687268

/-! ## A392662.P10148833381077712752

`A033676(2*A392660(n+1))`
-/

namespace A392662.P10148833381077712752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (2 * A392660 (n + 1)).toNat

end

end A392662.P10148833381077712752

/-!
# A392663: Indices of the upper Wythoff partition sequence of the triangular numbers; see A392660.

The programs for A392663, there is no canonical definition to state claims against.
-/

/-! ## A392663.P12807584228091280856

`row(A392661(n+1))`
-/

namespace A392663.P12807584228091280856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A392661 (n + 1)).toNat

end

end A392663.P12807584228091280856

/-! ## A392663.P2494775154643485594

`comp[A392662(1+n)-1]+1`
-/

namespace A392663.P2494775154643485594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392662 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A392663.P2494775154643485594

/-! ## A392663.P9393782286163694637

`A356155(A392661(n+1))%A011538(n+1)`
-/

namespace A392663.P9393782286163694637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356155 (A392661 (n + 1)).toNat) (A011538 (n + 1))

end

end A392663.P9393782286163694637

/-! ## A392663.P11163226139844945244

`A356155(A392661(n+1))+A079978(3*n+4)`
-/

namespace A392663.P11163226139844945244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356155 (A392661 (n + 1)).toNat + A079978 (3 * n + 4)

end

end A392663.P11163226139844945244

/-! ## A392663.P11591435629385206959

`A048720(A392661(n+1)+1)+1`
-/

namespace A392663.P11591435629385206959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (A392661 (n + 1) + 1).toNat + 1

end

end A392663.P11591435629385206959

/-! ## A392663.P12930176762742962429

`A003056(A392661(n+1)+1)`
-/

namespace A392663.P12930176762742962429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A392661 (n + 1) + 1).toNat

end

end A392663.P12930176762742962429

/-! ## A392663.P9099990862742472308

`A004736(A392661(n+1)+2)`
-/

namespace A392663.P9099990862742472308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A392661 (n + 1) + 2).toNat

end

end A392663.P9099990862742472308

/-! ## A392663.P12651320963003948936

`A025581(A392661(n+1)+1)+1`
-/

namespace A392663.P12651320963003948936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A392661 (n + 1) + 1).toNat + 1

end

end A392663.P12651320963003948936

/-!
# A392665: Triangle read by rows: T(n,k) (1 <= k <= n) given by T(n,1) = T(n,n) = 1, otherwise T(n,k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = -4.

The programs for A392665, there is no canonical definition to state claims against.
-/

/-! ## A392665.P5397636210322700227

`A180262(A157272(n))-A157272(n)`
-/

namespace A392665.P5397636210322700227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180262 (A157272 n).toNat - A157272 n

end

end A392665.P5397636210322700227

/-!
# A392668: Numbers m such that sigma(m) = 2*m - omega(m), where omega(m) is the number of distinct prime divisors of m.

The programs for A392668, there is no canonical definition to state claims against.
-/

/-! ## A392668.P8721944669110207394

`∩[A177050(n+1), A390305(n+1)]`
-/

namespace A392668.P8721944669110207394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P8721944669110207394

/-! ## A392668.P15049220443306100073

`∩[A177050(n+1), A390306(n+1)]`
-/

namespace A392668.P15049220443306100073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P15049220443306100073

/-! ## A392668.P2558594037638775883

`∩[A177050(n+1), A390674(n+1)]`
-/

namespace A392668.P2558594037638775883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P2558594037638775883

/-! ## A392668.P16624391614762060474

`∩[A177050(n+1), A363235(n)]`
-/

namespace A392668.P16624391614762060474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363235 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P16624391614762060474

/-! ## A392668.P11362334657329053648

`∩[A177050(n+1), A243225(n+1)]`
-/

namespace A392668.P11362334657329053648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392668.P11362334657329053648

/-!
# A392670: Triangle read by rows where row n is the numerators of the node values in a preorder traversal of the Calkin-Wilf tree with n levels, columns 0 <= k < 2^n-1.

The programs for A392670, the canonical program `A392670.P14366886065038149397` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392670 has offset 1).

The definition of A392670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392670.P5115104254938582185

`A002487(∑[A079559(n)])`
-/

namespace A392670.P5115104254938582185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392670.P5115104254938582185

namespace A392670

/-- `A002487(∑[A079559(n)])` -/
def P5115104254938582185.Spec : Prop :=
  ∀ n, P5115104254938582185.a n = A392670 (n + 1)

end A392670

/-! ## A392670.P10155429157590266297

`A002487(A123390(1+n))`
-/

namespace A392670.P10155429157590266297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A123390 (1 + n)).toNat

end

end A392670.P10155429157590266297

namespace A392670

/-- `A002487(A123390(1+n))` -/
def P10155429157590266297.Spec : Prop :=
  ∀ n, P10155429157590266297.a n = A392670 (n + 1)

end A392670

/-! ## A392670.P14366886065038149397

`A002487(A046699(n+2))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A392670

/-- `A002487(A046699(n+2))` -/
def P14366886065038149397.Spec : Prop :=
  ∀ n, P14366886065038149397.a n = A392670 (n + 1)

theorem P14366886065038149397.correct : P14366886065038149397.Spec := by
  intro n
  simp only [A392670, Nat.add_sub_cancel]

end A392670

/-! ## A392670.P2079920093959818835

`A002487(A007843(n+1))`
-/

namespace A392670.P2079920093959818835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A007843 (n + 1)).toNat

end

end A392670.P2079920093959818835

namespace A392670

/-- `A002487(A007843(n+1))` -/
def P2079920093959818835.Spec : Prop :=
  ∀ n, P2079920093959818835.a n = A392670 (n + 1)

end A392670

/-! ## A392670.P8410441903644995196

`A002487(A254112(n+1))`
-/

namespace A392670.P8410441903644995196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A254112 (n + 1)).toNat

end

end A392670.P8410441903644995196

namespace A392670

/-- `A002487(A254112(n+1))` -/
def P8410441903644995196.Spec : Prop :=
  ∀ n, P8410441903644995196.a n = A392670 (n + 1)

end A392670

/-! ## A392670.P5866739977229195062

`A288003(A108918(n+1))`
-/

namespace A392670.P5866739977229195062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A108918 (n + 1)).toNat

end

end A392670.P5866739977229195062

namespace A392670

/-- `A288003(A108918(n+1))` -/
def P5866739977229195062.Spec : Prop :=
  ∀ n, P5866739977229195062.a n = A392670 (n + 1)

end A392670

/-!
# A392671: Triangle read by rows: the n-th row gives the denominators of the node values in a pre-order traversal of the Calkin-Wilf tree with n levels, 0 <= k < 2^n - 1.

The programs for A392671, there is no canonical definition to state claims against.
-/

/-! ## A392671.P8177544921390480791

`A002487(A254112(n+1)+1)`
-/

namespace A392671.P8177544921390480791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A254112 (n + 1) + 1).toNat

end

end A392671.P8177544921390480791

/-! ## A392671.P16367908986024147698

`A087283(A091847(n+1))`
-/

namespace A392671.P16367908986024147698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087283 (A091847 (n + 1)).toNat

end

end A392671.P16367908986024147698

/-! ## A392671.P14891375168706086658

`A126306(A205522(n+1))`
-/

namespace A392671.P14891375168706086658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A205522 (n + 1)).toNat

end

end A392671.P14891375168706086658

/-! ## A392671.P6029262740769687045

`A300649(A325238(n+1))`
-/

namespace A392671.P6029262740769687045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300649 (A325238 (n + 1)).toNat

end

end A392671.P6029262740769687045

/-! ## A392671.P18398848570761675288

`A300649(A344385(n+1))`
-/

namespace A392671.P18398848570761675288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300649 (A344385 (n + 1)).toNat

end

end A392671.P18398848570761675288

/-!
# A392672: Smallest number m such that m*(m+1)*(m+2) has exactly n distinct prime factors.

The programs for A392672, there is no canonical definition to state claims against.
-/

/-! ## A392672.P2815703390798269901

`∑[A306408((n+2)!)]`
-/

namespace A392672.P2815703390798269901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306408 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392672.P2815703390798269901

/-! ## A392672.P17861971802643164522

`A161329(A042695(n+1))`
-/

namespace A392672.P17861971802643164522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161329 (A042695 (n + 1)).toNat

end

end A392672.P17861971802643164522

/-!
# A392673: a(n) = Sum_{k=0..floor(n/2)} binomial(k+1,3*n-6*k+1).

The programs for A392673, the canonical program `A392673.P11556232002476771981` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392673 has offset 0).

The definition of A392673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(#+1, 3*n-6*#+1)]` (program `A392673.P11556232002476771981`, by `A392673.P11556232002476771981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392673.P13836576273104939616

`ogf((1-x^2)/(1-3x^2+3x^4-x^6-x^7))`
-/

namespace A392673.P13836576273104939616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, 0, -3, 0, 3, 0, -1, -1] n

end

end A392673.P13836576273104939616

namespace A392673

/-- `ogf((1-x^2)/(1-3x^2+3x^4-x^6-x^7))` -/
def P13836576273104939616.Spec : Prop :=
  ∀ n, P13836576273104939616.a n = A392673 n

end A392673

/-! ## A392673.P1285588607504056432

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=0, a(6)=4`
-/

namespace A392673.P1285588607504056432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3, 0, 4] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6) + a (n - 7)

end

end A392673.P1285588607504056432

namespace A392673

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` -/
def P1285588607504056432.Spec : Prop :=
  ∀ n, P1285588607504056432.a n = A392673 n

end A392673

/-! ## A392673.P11556232002476771981

`∑{#}[floor(n/2), C(#+1, 3*n-6*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392673

/-- `∑{#}[floor(n/2), C(#+1, 3*n-6*#+1)]` -/
def P11556232002476771981.Spec : Prop :=
  ∀ n, (P11556232002476771981.a n : ℤ) = A392673 n

theorem P11556232002476771981.correct : P11556232002476771981.Spec := by
  intro n
  simp only [A392673]

end A392673

/-! ## A392673.P14544118973141667002

`A017847(3*n+7)`
-/

namespace A392673.P14544118973141667002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (3 * n + 7)

end

end A392673.P14544118973141667002

namespace A392673

/-- `A017847(3*n+7)` -/
def P14544118973141667002.Spec : Prop :=
  ∀ n, P14544118973141667002.a n = A392673 n

end A392673

/-! ## A392673.P6937789273121401713

`A127841(A112414(n)+8)`
-/

namespace A392673.P6937789273121401713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A112414 n + 8).toNat

end

end A392673.P6937789273121401713

namespace A392673

/-- `A127841(A112414(n)+8)` -/
def P6937789273121401713.Spec : Prop :=
  ∀ n, P6937789273121401713.a n = A392673 n

end A392673

/-!
# A392674: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k+1,3*n-8*k).

The programs for A392674, the canonical program `A392674.P8466740983070971275` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392674 has offset 0).

The definition of A392674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/8), C(#+1, 3*n-8*#)]` (program `A392674.P8466740983070971275`, by `A392674.P8466740983070971275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392674.P17872631324515387789

`ogf((1-x^3)/(1-3x^3+3x^6-x^8-x^9))`
-/

namespace A392674.P17872631324515387789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, 0, 0, -3, 0, 0, 3, 0, -1, -1] n

end

end A392674.P17872631324515387789

namespace A392674

/-- `ogf((1-x^3)/(1-3x^3+3x^6-x^8-x^9))` -/
def P17872631324515387789.Spec : Prop :=
  ∀ n, P17872631324515387789.a n = A392674 n

end A392674

/-! ## A392674.P5425032225252229005

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3, a(7)=0, a(8)=1`
-/

namespace A392674.P5425032225252229005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 0, 3, 0, 1] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 8) + a (n - 9)

end

end A392674.P5425032225252229005

namespace A392674

/-- `3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` -/
def P5425032225252229005.Spec : Prop :=
  ∀ n, P5425032225252229005.a n = A392674 n

end A392674

/-! ## A392674.P8466740983070971275

`∑{#}[floor(3*n/8), C(#+1, 3*n-8*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392674

/-- `∑{#}[floor(3*n/8), C(#+1, 3*n-8*#)]` -/
def P8466740983070971275.Spec : Prop :=
  ∀ n, (P8466740983070971275.a n : ℤ) = A392674 n

theorem P8466740983070971275.correct : P8466740983070971275.Spec := by
  intro n
  simp only [A392674]

end A392674

/-! ## A392674.P14713340779477392784

`A127843(3*(n+6))`
-/

namespace A392674.P14713340779477392784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (3 * (n + 6))

end

end A392674.P14713340779477392784

namespace A392674

/-- `A127843(3*(n+6))` -/
def P14713340779477392784.Spec : Prop :=
  ∀ n, P14713340779477392784.a n = A392674 n

end A392674

/-! ## A392674.P12207103376041665661

`A017867(8+n+2*n)`
-/

namespace A392674.P12207103376041665661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (8 + n + 2 * n)

end

end A392674.P12207103376041665661

namespace A392674

/-- `A017867(8+n+2*n)` -/
def P12207103376041665661.Spec : Prop :=
  ∀ n, P12207103376041665661.a n = A392674 n

end A392674

/-!
# A392675: a(n) = Sum_{k=0..floor(n/3)} binomial(k+1,3*n-9*k+1).

The programs for A392675, the canonical program `A392675.P9539407073975298496` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392675 has offset 0).

The definition of A392675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(#+1, 3*n-9*#+1)]` (program `A392675.P9539407073975298496`, by `A392675.P9539407073975298496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392675.P16363928756359789969

`ogf((1-x^3)/(1-3x^3+3x^6-x^9-x^10))`
-/

namespace A392675.P16363928756359789969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1, -1] n

end

end A392675.P16363928756359789969

namespace A392675

/-- `ogf((1-x^3)/(1-3x^3+3x^6-x^9-x^10))` -/
def P16363928756359789969.Spec : Prop :=
  ∀ n, P16363928756359789969.a n = A392675 n

end A392675

/-! ## A392675.P3275726363782901375

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3, a(7)=0, a(8)=0, a(9)=4`
-/

namespace A392675.P3275726363782901375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 0, 3, 0, 0, 4] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9) + a (n - 10)

end

end A392675.P3275726363782901375

namespace A392675

/-- `3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` -/
def P3275726363782901375.Spec : Prop :=
  ∀ n, P3275726363782901375.a n = A392675 n

end A392675

/-! ## A392675.P9539407073975298496

`∑{#}[floor(n/3), C(#+1, 3*n-9*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392675

/-- `∑{#}[floor(n/3), C(#+1, 3*n-9*#+1)]` -/
def P9539407073975298496.Spec : Prop :=
  ∀ n, (P9539407073975298496.a n : ℤ) = A392675 n

theorem P9539407073975298496.correct : P9539407073975298496.Spec := by
  intro n
  simp only [A392675]

end A392675

/-! ## A392675.P7039463647744241136

`A017877(A112414(n+1))`
-/

namespace A392675.P7039463647744241136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (A112414 (n + 1)).toNat

end

end A392675.P7039463647744241136

namespace A392675

/-- `A017877(A112414(n+1))` -/
def P7039463647744241136.Spec : Prop :=
  ∀ n, P7039463647744241136.a n = A392675 n

end A392675

/-! ## A392675.P7359866568971399286

`A017877(A008585(n)+10)`
-/

namespace A392675.P7359866568971399286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (A008585 n + 10).toNat

end

end A392675.P7359866568971399286

namespace A392675

/-- `A017877(A008585(n)+10)` -/
def P7359866568971399286.Spec : Prop :=
  ∀ n, P7359866568971399286.a n = A392675 n

end A392675

/-! ## A392675.P18273279162061744518

`A017877(A016825(n+2)-n)`
-/

namespace A392675.P18273279162061744518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (A016825 (n + 2) - (n : ℤ)).toNat

end

end A392675.P18273279162061744518

namespace A392675

/-- `A017877(A016825(n+2)-n)` -/
def P18273279162061744518.Spec : Prop :=
  ∀ n, P18273279162061744518.a n = A392675 n

end A392675

/-! ## A392675.P9289554255434797984

`A017877(Δ[Δ[A064808(n+2)]])`
-/

namespace A392675.P9289554255434797984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (f1 (n + 1) - f1 n).toNat

end

end A392675.P9289554255434797984

namespace A392675

/-- `A017877(Δ[Δ[A064808(n+2)]])` -/
def P9289554255434797984.Spec : Prop :=
  ∀ n, P9289554255434797984.a n = A392675 n

end A392675

/-! ## A392675.P16814592177171734119

`A017877(A028310(3*n+1))+A017877(3*n)`
-/

namespace A392675.P16814592177171734119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (A028310 (3 * n + 1)).toNat + A017877 (3 * n)

end

end A392675.P16814592177171734119

namespace A392675

/-- `A017877(A028310(3*n+1))+A017877(3*n)` -/
def P16814592177171734119.Spec : Prop :=
  ∀ n, P16814592177171734119.a n = A392675 n

end A392675

/-!
# A392681: Square array read by upward antidiagonals: T(n,k) = sum of depths of leaves in a complete k-ary tree with n nodes; n >= 1, k >= 2.

The programs for A392681, there is no canonical definition to state claims against.
-/

/-! ## A392681.P5306435952473971067

`A318451(A120105(n))`
-/

namespace A392681.P5306435952473971067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A120105 n).toNat

end

end A392681.P5306435952473971067

/-! ## A392681.P4734025418769087965

`A004736(n+1)-A000035(A057004(n+4))`
-/

namespace A392681.P4734025418769087965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A000035 (A057004 (n + 4)).toNat

end

end A392681.P4734025418769087965

/-! ## A392681.P1077133840416613240

`A160094(A185214(n+4))-1+row(n)-col(n)`
-/

namespace A392681.P1077133840416613240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A185214 (n + 4)).toNat - 1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A392681.P1077133840416613240

/-! ## A392681.P15548065313365441324

`A004736(n+1)-A285421(A068374(n+1))`
-/

namespace A392681.P15548065313365441324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A285421 (A068374 (n + 1)).toNat

end

end A392681.P15548065313365441324

/-! ## A392681.P14078476110221971081

`A122200(n)+A080343(A000022(n))`
-/

namespace A392681.P14078476110221971081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 n + A080343 (A000022 n).toNat

end

end A392681.P14078476110221971081

/-!
# A392683: a(n) is the number of n-element families of nonempty subsets of {1, ..., n} in which every number in 1..n appears the same nonzero number of times.

The programs for A392683, there is no canonical definition to state claims against.
-/

/-! ## A392683.P17827864865437363669

`A145341((n²-n)*a(n-1)+1)` with `a(0)=1`
-/

namespace A392683.P17827864865437363669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145341 (((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 1) + 1).toNat

end

end A392683.P17827864865437363669

/-!
# A392684: Number of ways to write n as x + y + z with x >= y >= z >= 1 such that lcm(x,y,z) is a product of three consecutive integers.

The programs for A392684, there is no canonical definition to state claims against.
-/

/-! ## A392684.P2158452315673109884

`A001222(∑[A135665(n+1)^n])`
-/

namespace A392684.P2158452315673109884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392684.P2158452315673109884

/-!
# A392685: a(n) = numerator( (1/(4*n + 2))*Sum_{i=0..2*n} (-1)^i/(2*i+1) ).

The programs for A392685, there is no canonical definition to state claims against.
-/

/-! ## A392685.P13816216970100089643

`A007509(2*n)`
-/

namespace A392685.P13816216970100089643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007509 (2 * n)

end

end A392685.P13816216970100089643

/-! ## A392685.P3635458946811313417

`A215746(2*n)/4`
-/

namespace A392685.P3635458946811313417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215746 (2 * n) : ℚ) / 4

end

end A392685.P3635458946811313417

/-! ## A392685.P16157744712861166940

`or(1, A007509(A005843(n)))`
-/

namespace A392685.P16157744712861166940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007509 (A005843 n).toNat)

end

end A392685.P16157744712861166940

/-! ## A392685.P12479600335474907495

`A007509(A004277(n))-A000007(n)`
-/

namespace A392685.P12479600335474907495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007509 (A004277 n).toNat - A000007 n

end

end A392685.P12479600335474907495

/-! ## A392685.P7661877606790161307

`A007509(A005843(n))+A000007(n+4)`
-/

namespace A392685.P7661877606790161307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007509 (A005843 n).toNat + A000007 (n + 4)

end

end A392685.P7661877606790161307

/-!
# A392686: a(n) = denominator( (1/(4*n + 2))*Sum_{i=0..2*n} (-1)^i/(2*i+1) ).

The programs for A392686, there is no canonical definition to state claims against.
-/

/-! ## A392686.P12809399385415626981

`2*A390227(n)`
-/

namespace A392686.P12809399385415626981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390227 n

end

end A392686.P12809399385415626981

/-! ## A392686.P474680848672398500

`lcm(A000005(A022005(n+1)), A390227(n))`
-/

namespace A392686.P474680848672398500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A022005 (n + 1)).toNat) (A390227 n)

end

end A392686.P474680848672398500

/-! ## A392686.P18022004062545788922

`lcm(A280560(A317142(n)), A390227(n))`
-/

namespace A392686.P18022004062545788922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280560 (A317142 n).toNat) (A390227 n)

end

end A392686.P18022004062545788922

/-! ## A392686.P840786958937272007

`lcm(A280560(A000051(n)), A390227(n))`
-/

namespace A392686.P840786958937272007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280560 (A000051 n).toNat) (A390227 n)

end

end A392686.P840786958937272007

/-!
# A392690: a(n) = denominator( (-1)^(n-1)*H(2*n)/(2*n + 1) ), where H(n) is the n-th harmonic number.

The programs for A392690, there is no canonical definition to state claims against.
-/

/-! ## A392690.P11713452808991382446

`A002805(∑{e}[A038049(n+1), #])`
-/

namespace A392690.P11713452808991382446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A392690.P11713452808991382446

/-! ## A392690.P12366197719408547239

`A002805(A064413(n+1)*A168549(n))`
-/

namespace A392690.P12366197719408547239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (A064413 (n + 1) * A168549 n).toNat

end

end A392690.P12366197719408547239

/-! ## A392690.P6116815750287593711

`A002805(A064413(n+1)^A007318(n))`
-/

namespace A392690.P6116815750287593711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (SequenceMachineLib.roundAway ((A064413 (n + 1) : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A392690.P6116815750287593711

/-!
# A392694: Numbers whose weakly increasing prime indices are the 0-prepended first sums of some reversed integer partition.

The programs for A392694, there is no canonical definition to state claims against.
-/

/-! ## A392694.P17887578369580513526

`∪[A250198(n+1), A325396(n+1)]`
-/

namespace A392694.P17887578369580513526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392694.P17887578369580513526

/-! ## A392694.P5717173828451629232

`∪[A250198(n+1), A325362(n+1)]`
-/

namespace A392694.P5717173828451629232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392694.P5717173828451629232

/-! ## A392694.P12310148644270768358

`A336107(A390448(2*n+1))+A005117(n+1)`
-/

namespace A392694.P12310148644270768358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A390448 (2 * n + 1)).toNat + A005117 (n + 1)

end

end A392694.P12310148644270768358

/-! ## A392694.P2581933947302780508

`lt[A027623(n), A093517(A035093(n+3))]`
-/

namespace A392694.P2581933947302780508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (A035093 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392694.P2581933947302780508

/-! ## A392694.P10498110626661769682

`A005117(n+1)+A230533(3*n+1)%A036037(n+1)`
-/

namespace A392694.P10498110626661769682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + Int.tmod (A230533 (3 * n + 1)) (A036037 (n + 1))

end

end A392694.P10498110626661769682

/-!
# A392695: Numbers whose prime indices are the 0-prepended first sums of some finite sequence of distinct positive integers.

The programs for A392695, there is no canonical definition to state claims against.
-/

/-! ## A392695.P2722829909531483740

`record[A007913(A392697(n+1))]`
-/

namespace A392695.P2722829909531483740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A392697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392695.P2722829909531483740

/-! ## A392695.P10035131235573696224

`filter[A392697(1+n), A008966(#)]`
-/

namespace A392695.P10035131235573696224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A392695.P10035131235573696224

/-! ## A392695.P16476176888410948265

`filter[A392697(1+n), A181183(#)]`
-/

namespace A392695.P16476176888410948265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A392695.P16476176888410948265

/-! ## A392695.P13586496997020622990

`filter[A392697(1+n), A295316(#)]`
-/

namespace A392695.P13586496997020622990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A392695.P13586496997020622990

/-! ## A392695.P8261359996877739959

`filter[A392697(n+1), A323154(#)]`
-/

namespace A392695.P8261359996877739959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A392695.P8261359996877739959

/-! ## A392695.P9615987977549262103

`filter[A392697(n+1), A353519(#)]`
-/

namespace A392695.P9615987977549262103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A392695.P9615987977549262103

/-! ## A392695.P14460485716518457308

`filter[A392697(n+1), A353559(#)]`
-/

namespace A392695.P14460485716518457308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A392695.P14460485716518457308

/-! ## A392695.P8982190735361224781

`filter[A392697(n+1), A359473(#)]`
-/

namespace A392695.P8982190735361224781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A392695.P8982190735361224781

/-! ## A392695.P14220833895103803892

`∩[A005117(n+1), A392697(n+1)]`
-/

namespace A392695.P14220833895103803892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392695.P14220833895103803892

/-! ## A392695.P890069337032748754

`∩[A064594(n+1), A392697(n+1)]`
-/

namespace A392695.P890069337032748754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392695.P890069337032748754

/-! ## A392695.P313766228667244141

`∩[A197680(n+1), A392697(n+1)]`
-/

namespace A392695.P313766228667244141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392695.P313766228667244141

/-! ## A392695.P2800912269010001284

`∩[A274034(n+1), A392697(n+1)]`
-/

namespace A392695.P2800912269010001284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392695.P2800912269010001284

/-! ## A392695.P8925935017213095884

`∩[A036537(n+1), A392697(n+1)]`
-/

namespace A392695.P8925935017213095884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392695.P8925935017213095884

/-! ## A392695.P7092121921112699702

`∩[A000452(n+1), A392697(n+1)]`
-/

namespace A392695.P7092121921112699702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392695.P7092121921112699702

/-! ## A392695.P15138360573957902713

`∩[A162644(n+1), A392697(n+1)]`
-/

namespace A392695.P15138360573957902713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392695.P15138360573957902713

/-! ## A392695.P13062424556709365649

`filter[A392697(n+1), A307421(#)]`
-/

namespace A392695.P13062424556709365649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A392695.P13062424556709365649

/-!
# A392696: Numbers whose reversed prime indices are the 0-prepended first sums of some finite sequence of nonnegative integers.

The programs for A392696, the canonical program `A392696.P14874135894448349510` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392696 has offset 1).

The definition of A392696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392696.P14874135894448349510

`eq[n+1, n+1-A292377(A348717(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A392696

/-- `eq[n+1, n+1-A292377(A348717(n+1))]+1` -/
def P14874135894448349510.Spec : Prop :=
  ∀ n, (P14874135894448349510.a n : ℤ) = A392696 (n + 1)

theorem P14874135894448349510.correct : P14874135894448349510.Spec := by
  intro n
  simp only [A392696, Nat.add_sub_cancel]

end A392696

/-! ## A392696.P9868761326125238023

`lt[3%A335449(n+1), 1]+1`
-/

namespace A392696.P9868761326125238023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A335449 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A392696.P9868761326125238023

namespace A392696

/-- `lt[3%A335449(n+1), 1]+1` -/
def P9868761326125238023.Spec : Prop :=
  ∀ n, (P9868761326125238023.a n : ℤ) = A392696 (n + 1)

end A392696

/-!
# A392697: Numbers whose prime indices are the 0-prepended first sums of some finite sequence of distinct integers.

The programs for A392697, there is no canonical definition to state claims against.
-/

/-! ## A392697.P16917380980196489738

`∪[A325367(n+1), A325390(A352397(n))]`
-/

namespace A392697.P16917380980196489738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325390 (A352397 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392697.P16917380980196489738

/-! ## A392697.P4991214985399260382

`∪[A325367(n+1), A350097(A077788(n+1))]`
-/

namespace A392697.P4991214985399260382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350097 (A077788 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392697.P4991214985399260382

/-! ## A392697.P12044497745667150511

`lt[A323431(n), A318456(A014462(3*(n+1)))]`
-/

namespace A392697.P12044497745667150511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (A014462 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392697.P12044497745667150511

/-! ## A392697.P18439714989398427083

`lt[A000032(n), A001597(A008315(3*n+2))]`
-/

namespace A392697.P18439714989398427083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A008315 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392697.P18439714989398427083

/-! ## A392697.P6078380325793736136

`lt[A353850(n), A001597(A008315(3*n+2))]`
-/

namespace A392697.P6078380325793736136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A008315 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392697.P6078380325793736136

/-!
# A392698: Numbers whose reversed prime indices are the 0-prepended first sums of some finite sequence of distinct integers.

The programs for A392698, the canonical program `A392698.P11584319785320885768` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392698 has offset 1).

The definition of A392698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9780 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392698.P10249165730537782710

`filter[A065200(1+n), A212793(#)]`
-/

namespace A392698.P10249165730537782710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A392698.P10249165730537782710

namespace A392698

/-- `filter[A065200(1+n), A212793(#)]` -/
def P10249165730537782710.Spec : Prop :=
  ∀ n, P10249165730537782710.a n = A392698 (n + 1)

end A392698

/-! ## A392698.P10230630302352433109

`filter[A065200(1+n), A359471(#)]`
-/

namespace A392698.P10230630302352433109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A392698.P10230630302352433109

namespace A392698

/-- `filter[A065200(1+n), A359471(#)]` -/
def P10230630302352433109.Spec : Prop :=
  ∀ n, P10230630302352433109.a n = A392698 (n + 1)

end A392698

/-! ## A392698.P17689284524939628086

`filter[A304678(n+1), A359471(#)]`
-/

namespace A392698.P17689284524939628086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A392698.P17689284524939628086

namespace A392698

/-- `filter[A304678(n+1), A359471(#)]` -/
def P17689284524939628086.Spec : Prop :=
  ∀ n, P17689284524939628086.a n = A392698 (n + 1)

end A392698

/-! ## A392698.P11584319785320885768

`filter[A362619(n+1), A359471(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A392698

/-- `filter[A362619(n+1), A359471(#)]` -/
def P11584319785320885768.Spec : Prop :=
  ∀ n, P11584319785320885768.a n = A392698 (n + 1)

theorem P11584319785320885768.correct : P11584319785320885768.Spec := by
  intro n
  simp only [A392698, Nat.add_sub_cancel]

end A392698

/-! ## A392698.P15178788894584373088

`eq[1, A284345(A052126(n+1))]+1`
-/

namespace A392698.P15178788894584373088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392698.P15178788894584373088

namespace A392698

/-- `eq[1, A284345(A052126(n+1))]+1` -/
def P15178788894584373088.Spec : Prop :=
  ∀ n, (P15178788894584373088.a n : ℤ) = A392698 (n + 1)

end A392698

/-! ## A392698.P15515369333180983462

`eq[1, A008683(A253550(n+1))²]+1`
-/

namespace A392698.P15515369333180983462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A253550 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392698.P15515369333180983462

namespace A392698

/-- `eq[1, A008683(A253550(n+1))²]+1` -/
def P15515369333180983462.Spec : Prop :=
  ∀ n, (P15515369333180983462.a n : ℤ) = A392698 (n + 1)

end A392698

/-! ## A392698.P16346076639920347248

`lt[A006530(n+1)%A239062(n+1), 1]+1`
-/

namespace A392698.P16346076639920347248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (A239062 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A392698.P16346076639920347248

namespace A392698

/-- `lt[A006530(n+1)%A239062(n+1), 1]+1` -/
def P16346076639920347248.Spec : Prop :=
  ∀ n, (P16346076639920347248.a n : ℤ) = A392698 (n + 1)

end A392698

/-! ## A392698.P10662037304116002519

`comp[A075157(A136037(n+1))]+1`
-/

namespace A392698.P10662037304116002519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (A136037 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A392698.P10662037304116002519

namespace A392698

/-- `comp[A075157(A136037(n+1))]+1` -/
def P10662037304116002519.Spec : Prop :=
  ∀ n, (P10662037304116002519.a n : ℤ) = A392698 (n + 1)

end A392698

/-! ## A392698.P6445597247838449913

`record[A019554(A253560(n+1))]`
-/

namespace A392698.P6445597247838449913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A253560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392698.P6445597247838449913

namespace A392698

/-- `record[A019554(A253560(n+1))]` -/
def P6445597247838449913.Spec : Prop :=
  ∀ n, P6445597247838449913.a n = A392698 (n + 1)

end A392698

/-! ## A392698.P187915610213559110

`∪[A387177(n+1), A008021(n)]`
-/

namespace A392698.P187915610213559110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008021 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392698.P187915610213559110

namespace A392698

/-- `∪[A387177(n+1), A008021(n)]` -/
def P187915610213559110.Spec : Prop :=
  ∀ n, (P187915610213559110.a n : ℤ) = A392698 (n + 1)

end A392698

/-!
# A392699: Numbers whose prime indices are the first sums of some 0-prepended composition into parts > 1.

The programs for A392699, there is no canonical definition to state claims against.
-/

/-! ## A392699.P2823636162678683512

`∩[A175679(1+n), A325160(n+1)]`
-/

namespace A392699.P2823636162678683512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175679 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P2823636162678683512

/-! ## A392699.P3624635886056237624

`∩[A320056(n+1), A325160(n+1)]`
-/

namespace A392699.P3624635886056237624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P3624635886056237624

/-! ## A392699.P11563156492764446220

`∩[A325160(n+1), A352830(n+1)]`
-/

namespace A392699.P11563156492764446220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P11563156492764446220

/-! ## A392699.P8487762767452104925

`∩[A131899(A000217(2*n)), A325160(n+1)]`
-/

namespace A392699.P8487762767452104925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131899 (A000217 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P8487762767452104925

/-! ## A392699.P10247204412732779350

`∩[A325131(n+1), A325160(n+1)]`
-/

namespace A392699.P10247204412732779350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392699.P10247204412732779350

