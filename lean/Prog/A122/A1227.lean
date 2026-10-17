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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
# A122700: Numbers k such that the length of the continued fraction for (k/m) is maximized for a unique m (1 < m < k).

The programs for A122700, there is no canonical definition to state claims against.
-/

/-! ## A122700.P3744158289139933683

`floor(A089642(n+1)+acot(n))`
-/

namespace A122700.P3744158289139933683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089642 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A122700.P3744158289139933683

/-! ## A122700.P3013186044673193387

`A089642(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A122700.P3013186044673193387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A089642 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A122700.P3013186044673193387

/-! ## A122700.P9661406190201161061

`A089642(C(n+1, n))+C(2, n+2)`
-/

namespace A122700.P9661406190201161061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089642 (Nat.choose (n + 1) n) + (Nat.choose 2 (n + 2) : ℤ)

end

end A122700.P9661406190201161061

/-! ## A122700.P17763708003867541524

`A089642(n+1)+A000007(n)`
-/

namespace A122700.P17763708003867541524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089642 (n + 1) + A000007 n

end

end A122700.P17763708003867541524

/-! ## A122700.P18425200395745665879

`A054977(n)*A089642(n+1)`
-/

namespace A122700.P18425200395745665879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A089642 (n + 1)

end

end A122700.P18425200395745665879

/-! ## A122700.P15727001927030766791

`A014963(4*n+2)*A089642(n+1)`
-/

namespace A122700.P15727001927030766791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A089642 (n + 1)

end

end A122700.P15727001927030766791

/-! ## A122700.P8344645178925562319

`A089642(n+1)+A000045(C(2, n+2))`
-/

namespace A122700.P8344645178925562319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089642 (n + 1) + A000045 (Nat.choose 2 (n + 2))

end

end A122700.P8344645178925562319

/-! ## A122700.P15351420977251129445

`A000041(C(2, n+1))*A089642(n+1)`
-/

namespace A122700.P15351420977251129445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A089642 (n + 1)

end

end A122700.P15351420977251129445

/-! ## A122700.P10022136234397717704

`floor(A089642(n+1)+2/A000040(n+1))`
-/

namespace A122700.P10022136234397717704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089642 (n + 1) : ℚ) + 2 / (A000040 (n + 1) : ℚ)⌋

end

end A122700.P10022136234397717704

/-! ## A122700.P12105440751913154728

`A020639(ceil(2/(n+1)))*A089642(n+1)`
-/

namespace A122700.P12105440751913154728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈2 / (n + 1 : ℚ)⌉.toNat * A089642 (n + 1)

end

end A122700.P12105440751913154728

/-! ## A122700.P13437554757397987474

`or(A008683(8*a(n-1)), A089642(n+1))` with `a(0)=2`
-/

namespace A122700.P13437554757397987474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (A008683 (8 * a (n - 1)).toNat) (A089642 (n + 1))

end

end A122700.P13437554757397987474

/-! ## A122700.P1514586511649124285

`A181440(A089642(n+1))`
-/

namespace A122700.P1514586511649124285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A089642 (n + 1)).toNat

end

end A122700.P1514586511649124285

/-!
# A122701: a(0)=0, a(n) = 2*a(floor(n/2)) + n - 1 for n > 0.

The programs for A122701, the canonical program `A122701.P9654629828858029762` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122701 has offset 0).

The definition of A122701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122701.P9654629828858029762

`2*a(floor(n/2))+n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122701

/-- `2*a(floor(n/2))+n-1` -/
def P9654629828858029762.Spec : Prop :=
  ∀ n, P9654629828858029762.a n = A122701 n

theorem P9654629828858029762.correct : P9654629828858029762.Spec := by
  intro n
  simp only [A122701]

end A122701

/-! ## A122701.P14798253257954541853

`n-(1-a(floor(n/2))-a(floor(n/2)))` with `a(0)=0`
-/

namespace A122701.P14798253257954541853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (1 - a ⌊(n : ℚ) / 2⌋.toNat - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A122701.P14798253257954541853

namespace A122701

/-- `n-(1-a(floor(n/2))-a(floor(n/2)))` -/
def P14798253257954541853.Spec : Prop :=
  ∀ n, P14798253257954541853.a n = A122701 n

end A122701

/-! ## A122701.P17089919445032398938

`∑[xor(n, A153151(n))]`
-/

namespace A122701.P17089919445032398938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A153151 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122701.P17089919445032398938

namespace A122701

/-- `∑[xor(n, A153151(n))]` -/
def P17089919445032398938.Spec : Prop :=
  ∀ n, P17089919445032398938.a n = A122701 n

end A122701

/-! ## A122701.P13910376177059979105

`A023443(n)+2*a(floor(n/2))` with `a(0)=0`
-/

namespace A122701.P13910376177059979105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023443 n + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A122701.P13910376177059979105

namespace A122701

/-- `A023443(n)+2*a(floor(n/2))` -/
def P13910376177059979105.Spec : Prop :=
  ∀ n, P13910376177059979105.a n = A122701 n

end A122701

/-! ## A122701.P6514094039728675387

`A004273(n)-(n-2*a(floor(n/2)))` with `a(0)=0`
-/

namespace A122701.P6514094039728675387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004273 n - ((n : ℤ) - 2 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A122701.P6514094039728675387

namespace A122701

/-- `A004273(n)-(n-2*a(floor(n/2)))` -/
def P6514094039728675387.Spec : Prop :=
  ∀ n, P6514094039728675387.a n = A122701 n

end A122701

/-! ## A122701.P5596619586204367827

`∑[A135481(A261693(n))%A028310(n)]`
-/

namespace A122701.P5596619586204367827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135481 (A261693 n).toNat) (A028310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122701.P5596619586204367827

namespace A122701

/-- `∑[A135481(A261693(n))%A028310(n)]` -/
def P5596619586204367827.Spec : Prop :=
  ∀ n, P5596619586204367827.a n = A122701 n

end A122701

/-!
# A122704: a(n) = Sum_{k=0..n} 3^(n-k)*A123125(n, k).

The programs for A122704, there is no canonical definition to state claims against.
-/

/-! ## A122704.P1035080616885965266

`ceil(A190818(n)/2)`
-/

namespace A122704.P1035080616885965266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190818 n : ℚ) / 2⌉

end

end A122704.P1035080616885965266

/-! ## A122704.P7251489049210617926

`ceil(A123227(n)/3)`
-/

namespace A122704.P7251489049210617926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123227 n : ℚ) / 3⌉

end

end A122704.P7251489049210617926

/-! ## A122704.P689893795937224420

`A190818(A028310(n))/2`
-/

namespace A122704.P689893795937224420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190818 (A028310 n).toNat : ℚ) / 2

end

end A122704.P689893795937224420

/-! ## A122704.P8663118701813672040

`gcd(A123227(n), A190818(n))`
-/

namespace A122704.P8663118701813672040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123227 n) (A190818 n)

end

end A122704.P8663118701813672040

/-! ## A122704.P7823732395878066082

`A190818(n)/(A178334(n)+1)`
-/

namespace A122704.P7823732395878066082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190818 n : ℚ) / (A178334 n + 1 : ℚ)

end

end A122704.P7823732395878066082

/-! ## A122704.P6160385645244670954

`A190818(n)/A060135(A178334(n))`
-/

namespace A122704.P6160385645244670954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190818 n : ℚ) / (A060135 (A178334 n).toNat : ℚ)

end

end A122704.P6160385645244670954

/-! ## A122704.P14390148678591464023

`A123227(n)%A190818(A028310(n))`
-/

namespace A122704.P14390148678591464023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123227 n) (A190818 (A028310 n).toNat)

end

end A122704.P14390148678591464023

/-! ## A122704.P12765649325848480281

`A123227(n)/A123227(n/A028310(n))`
-/

namespace A122704.P12765649325848480281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123227 n : ℚ) / (A123227 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat : ℚ)

end

end A122704.P12765649325848480281

/-! ## A122704.P16974659792408832587

`A190818(n)/A072491(A322861(n+1)²)`
-/

namespace A122704.P16974659792408832587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190818 n : ℚ) / (A072491 (A322861 (n + 1) ^ 2).toNat : ℚ)

end

end A122704.P16974659792408832587

/-! ## A122704.P11598124542258886627

`A332700(A167614(n+2))`
-/

namespace A122704.P11598124542258886627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (A167614 (n + 2)).toNat

end

end A122704.P11598124542258886627

/-!
# A122705: Dimension of the space of totally primitive elements of degree n in the Hopf algebra of parking functions, regarded as a bidendriform algebra.

The programs for A122705, there is no canonical definition to state claims against.
-/

/-! ## A122705.P3384341190305110667

`A127287(A124566(n))`
-/

namespace A122705.P3384341190305110667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A124566 n).toNat

end

end A122705.P3384341190305110667

/-!
# A122708: Number of connected parking functions of length n. This is the number of independent algebraic generators in degree n of the Hopf algebra of parking functions.

The programs for A122708, there is no canonical definition to state claims against.
-/

/-! ## A122708.P11746352469219925739

`A141313(n+1)/2^(n+1)`
-/

namespace A122708.P11746352469219925739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141313 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A122708.P11746352469219925739

/-! ## A122708.P15348170460950949622

`floor(A141313(n+1)/2)/A000079(n)`
-/

namespace A122708.P15348170460950949622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A141313 (n + 1) : ℚ) / 2⌋ : ℚ) / (A000079 n : ℚ)

end

end A122708.P15348170460950949622

/-! ## A122708.P7786673006264228822

`floor(A141313(n+1)/A016116(2*(n+1)))`
-/

namespace A122708.P7786673006264228822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141313 (n + 1) : ℚ) / (A016116 (2 * (n + 1)) : ℚ)⌋

end

end A122708.P7786673006264228822

/-!
# A122709: a(0)=1; thereafter a(n) = 9*n - 3.

The programs for A122709, the canonical program `A122709.P10085587031026703332` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122709 has offset 0).

The definition of A122709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122709.P10085587031026703332

`a(n-1)+9` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122709

/-- `a(n-1)+9` -/
def P10085587031026703332.Spec : Prop :=
  ∀ n, (P10085587031026703332.a n : ℤ) = A122709 n

theorem P10085587031026703332.correct : P10085587031026703332.Spec := by
  intro n
  simp only [A122709]

end A122709

/-!
# A122710: Primes of the form p^2 + q^8 where p and q are primes.

The programs for A122710, there is no canonical definition to state claims against.
-/

/-! ## A122710.P6898154274120820484

`∩[A256776(n+1), A262340(n+1)]`
-/

namespace A122710.P6898154274120820484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122710.P6898154274120820484

/-! ## A122710.P17042831860685886813

`p?[256+p?[round(8*n/7)]²]`
-/

namespace A122710.P17042831860685886813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  256 + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122710.P17042831860685886813

/-! ## A122710.P2716288707050071776

`p?[A001248(n+1)+256]`
-/

namespace A122710.P2716288707050071776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 256

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122710.P2716288707050071776

/-! ## A122710.P6256709693844682013

`∩[A185086(n+1), A256776(n+1)]`
-/

namespace A122710.P6256709693844682013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122710.P6256709693844682013

/-!
# A122719: Primes p such that (2p)!! - 1 is prime.

The programs for A122719, there is no canonical definition to state claims against.
-/

/-! ## A122719.P2041450311430997628

`p?[A091415(n+1)]`
-/

namespace A122719.P2041450311430997628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122719.P2041450311430997628

/-! ## A122719.P2121889305767162983

`record[A006530(A007749(n+2))]`
-/

namespace A122719.P2121889305767162983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007749 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122719.P2121889305767162983

/-! ## A122719.P11524465123628959243

`filter[A091415(n+1), A010051(#)]`
-/

namespace A122719.P11524465123628959243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A122719.P11524465123628959243

/-! ## A122719.P8591267402020198489

`filter[A091415(n+1), A252233(#)]`
-/

namespace A122719.P8591267402020198489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A122719.P8591267402020198489

/-!
# A122720: Number of free generators of degree n of the primitive Lie algebra of the Hopf algebra of parking functions.

The programs for A122720, there is no canonical definition to state claims against.
-/

/-! ## A122720.P13908729012153608109

`∑[A000015(A002296(n))]`
-/

namespace A122720.P13908729012153608109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A002296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122720.P13908729012153608109

/-!
# A122723: Primes that are the sum of three distinct positive cubes.

The programs for A122723, there is no canonical definition to state claims against.
-/

/-! ## A122723.P7180220952828844322

`p?[A024975(n+1)]`
-/

namespace A122723.P7180220952828844322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122723.P7180220952828844322

/-! ## A122723.P13891737376638116288

`A024975(A024976(n+1))`
-/

namespace A122723.P13891737376638116288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (A024976 (n + 1)).toNat

end

end A122723.P13891737376638116288

/-! ## A122723.P6272453948744391413

`∩[A000040(n+1), A024975(n+1)]`
-/

namespace A122723.P6272453948744391413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P6272453948744391413

/-! ## A122723.P13196940038984116778

`∩[A004139(n+1), A024975(n+1)]`
-/

namespace A122723.P13196940038984116778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P13196940038984116778

/-! ## A122723.P14639031667177534189

`∩[A006005(n+1), A024975(n+1)]`
-/

namespace A122723.P14639031667177534189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P14639031667177534189

/-! ## A122723.P12622352284217862769

`∩[A007490(n+1), A024975(n+1)]`
-/

namespace A122723.P12622352284217862769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P12622352284217862769

/-! ## A122723.P8761764361376442250

`∩[A008578(n+1), A024975(n+1)]`
-/

namespace A122723.P8761764361376442250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P8761764361376442250

/-! ## A122723.P11139501119016627823

`∩[A024975(n+1), A033946(n+1)]`
-/

namespace A122723.P11139501119016627823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P11139501119016627823

/-! ## A122723.P16900252486266469193

`∩[A024975(n+1), A038672(n+1)]`
-/

namespace A122723.P16900252486266469193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P16900252486266469193

/-! ## A122723.P11698063606848113219

`∩[A024975(n+1), A045319(n+1)]`
-/

namespace A122723.P11698063606848113219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P11698063606848113219

/-! ## A122723.P17067530007713186806

`∩[A024975(n+1), A045344(n+1)]`
-/

namespace A122723.P17067530007713186806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P17067530007713186806

/-! ## A122723.P15230260695087685047

`∩[A024975(n+1), A046022(n+1)]`
-/

namespace A122723.P15230260695087685047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P15230260695087685047

/-! ## A122723.P15930478479428412501

`∩[A024975(n+1), A051948(n+1)]`
-/

namespace A122723.P15930478479428412501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P15930478479428412501

/-! ## A122723.P10698586767070916557

`∩[A024975(n+1), A053813(n+1)]`
-/

namespace A122723.P10698586767070916557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P10698586767070916557

/-! ## A122723.P9863423525022525660

`∩[A024975(n+1), A062972(n+1)]`
-/

namespace A122723.P9863423525022525660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P9863423525022525660

/-! ## A122723.P13065728542447003728

`∩[A024975(n+1), A064728(n+1)]`
-/

namespace A122723.P13065728542447003728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P13065728542447003728

/-! ## A122723.P13334647686433852140

`∩[A024975(n+1), A065091(n+1)]`
-/

namespace A122723.P13334647686433852140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P13334647686433852140

/-! ## A122723.P6045039299072035277

`∩[A024975(n+1), A065376(n+1)]`
-/

namespace A122723.P6045039299072035277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P6045039299072035277

/-! ## A122723.P11942392802415417043

`∩[A024975(n+1), A065396(n+1)]`
-/

namespace A122723.P11942392802415417043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P11942392802415417043

/-! ## A122723.P7964860353342852167

`∩[A024975(n+1), A066050(n+1)]`
-/

namespace A122723.P7964860353342852167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122723.P7964860353342852167

/-!
# A122724: Primes p such that (2p)! - 1 is also prime.

The programs for A122724, there is no canonical definition to state claims against.
-/

/-! ## A122724.P13887495287270803602

`p?[A001281(A002982(n+1))]`
-/

namespace A122724.P13887495287270803602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122724.P13887495287270803602

/-! ## A122724.P14427776048039299004

`p?[A006370(A088412(n+1))]`
-/

namespace A122724.P14427776048039299004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A088412 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122724.P14427776048039299004

/-! ## A122724.P3388111683671486496

`p?[A006370(A002982(n+2))]`
-/

namespace A122724.P3388111683671486496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A002982 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122724.P3388111683671486496

/-!
# A122725: a(n) = A000670(n)^2.

The programs for A122725, there is no canonical definition to state claims against.
-/

/-! ## A122725.P5692459659007454883

`A000670(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122725.P5692459659007454883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n ^ 2

end

end A122725.P5692459659007454883

/-! ## A122725.P7504101477442984410

`A073146(∑[n])²`
-/

namespace A122725.P7504101477442984410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A122725.P7504101477442984410

/-! ## A122725.P3374978771490361342

`A108694(∑[n])²`
-/

namespace A122725.P3374978771490361342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108694 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A122725.P3374978771490361342

/-! ## A122725.P4325821062452104757

`A122101(∑[n])²`
-/

namespace A122725.P4325821062452104757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A122725.P4325821062452104757

/-! ## A122725.P14090453641217839491

`A154921(∑[n])²`
-/

namespace A122725.P14090453641217839491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A122725.P14090453641217839491

/-!
# A122726: Conjectured list of sociable numbers.

The programs for A122726, there is no canonical definition to state claims against.
-/

/-! ## A122726.P3694404334585440839

`A347770((n+1)*A276126(n)+17)`
-/

namespace A122726.P3694404334585440839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347770 ((n + 1 : ℤ) * A276126 n + 17).toNat

end

end A122726.P3694404334585440839

/-!
# A122727: Numbers k such that abs(9^k - 2^11) is prime.

The programs for A122727, there is no canonical definition to state claims against.
-/

/-! ## A122727.P5373228130160907766

`record[gcd(9*n, A297496(n))]`
-/

namespace A122727.P5373228130160907766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * n : ℤ) (A297496 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122727.P5373228130160907766

/-! ## A122727.P9002294663834537112

`record[A353035(or(n, a(n-1)))]` with `a(0)=1, a(1)=0`
-/

namespace A122727.P9002294663834537112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A353035 (Int.lor (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122727.P9002294663834537112

/-!
# A122728: Primes that are the sum of 4 positive cubes.

The programs for A122728, there is no canonical definition to state claims against.
-/

/-! ## A122728.P11446833460455288312

`p?[A003327(n+1)]`
-/

namespace A122728.P11446833460455288312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122728.P11446833460455288312

/-! ## A122728.P8778846020823231284

`p?[record[A003327(A328396(n))]]`
-/

namespace A122728.P8778846020823231284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122728.P8778846020823231284

/-! ## A122728.P11684407979838139235

`p?[record[A003327(A328397(n))]]`
-/

namespace A122728.P11684407979838139235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122728.P11684407979838139235

/-! ## A122728.P12701721898379963619

`record[A006530(A003327(n+2))]`
-/

namespace A122728.P12701721898379963619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003327 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122728.P12701721898379963619

/-! ## A122728.P10360407134972012737

`filter[A003327(n+1), A010051(#)]`
-/

namespace A122728.P10360407134972012737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A122728.P10360407134972012737

/-! ## A122728.P11369428744008305634

`∩[A000040(n+1), A003327(n+1)]`
-/

namespace A122728.P11369428744008305634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P11369428744008305634

/-! ## A122728.P2389284493436898666

`∩[A003327(n+1), A004139(n+1)]`
-/

namespace A122728.P2389284493436898666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P2389284493436898666

/-! ## A122728.P2969687668406332849

`∩[A003327(n+1), A006005(n+1)]`
-/

namespace A122728.P2969687668406332849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P2969687668406332849

/-! ## A122728.P10476596600537436150

`∩[A003327(n+1), A008578(n+1)]`
-/

namespace A122728.P10476596600537436150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P10476596600537436150

/-! ## A122728.P1647339567352497105

`∩[A003327(n+1), A033946(n+1)]`
-/

namespace A122728.P1647339567352497105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P1647339567352497105

/-! ## A122728.P4118458560549199219

`∩[A003327(n+1), A045319(n+1)]`
-/

namespace A122728.P4118458560549199219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P4118458560549199219

/-! ## A122728.P15499715155232297183

`∩[A003327(n+1), A045344(n+1)]`
-/

namespace A122728.P15499715155232297183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P15499715155232297183

/-! ## A122728.P17700306450806886096

`∩[A003327(n+1), A065091(n+1)]`
-/

namespace A122728.P17700306450806886096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P17700306450806886096

/-! ## A122728.P5127838072481246806

`∩[A003327(n+1), A065396(n+1)]`
-/

namespace A122728.P5127838072481246806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P5127838072481246806

/-! ## A122728.P3410451410369119385

`∩[A003327(n+1), A083249(n+1)]`
-/

namespace A122728.P3410451410369119385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P3410451410369119385

/-! ## A122728.P16758679287370064036

`∩[A003327(n+1), A116974(n+1)]`
-/

namespace A122728.P16758679287370064036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P16758679287370064036

/-! ## A122728.P2383854632045055881

`∩[A003327(n+1), A157996(n+1)]`
-/

namespace A122728.P2383854632045055881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P2383854632045055881

/-! ## A122728.P3511296947674966820

`∩[A003327(n+1), A158611(n+1)]`
-/

namespace A122728.P3511296947674966820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P3511296947674966820

/-! ## A122728.P1905560907607313456

`∩[A003327(n+1), A162788(n+1)]`
-/

namespace A122728.P1905560907607313456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122728.P1905560907607313456

/-! ## A122728.P12860207383340949276

`p?[lt[A025447(n), A025448(n)]]`
-/

namespace A122728.P12860207383340949276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122728.P12860207383340949276

/-!
# A122729: Primes that are the sum of 5 positive cubes.

The programs for A122729, there is no canonical definition to state claims against.
-/

/-! ## A122729.P5654040357534862103

`p?[A003328(n+1)]`
-/

namespace A122729.P5654040357534862103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122729.P5654040357534862103

/-! ## A122729.P3085228408221469708

`filter[A003328(n+1), A010051(#)]`
-/

namespace A122729.P3085228408221469708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A122729.P3085228408221469708

/-! ## A122729.P7804117509594085651

`∩[A000040(n+1), A003328(n+1)]`
-/

namespace A122729.P7804117509594085651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P7804117509594085651

/-! ## A122729.P9453274177912923609

`∩[A003328(n+1), A006005(n+1)]`
-/

namespace A122729.P9453274177912923609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P9453274177912923609

/-! ## A122729.P4508239558522334466

`∩[A003328(n+1), A008578(n+1)]`
-/

namespace A122729.P4508239558522334466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P4508239558522334466

/-! ## A122729.P3585105956262376546

`∩[A003328(n+1), A033946(n+1)]`
-/

namespace A122729.P3585105956262376546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P3585105956262376546

/-! ## A122729.P3616311092978428987

`∩[A003328(n+1), A045344(n+1)]`
-/

namespace A122729.P3616311092978428987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P3616311092978428987

/-! ## A122729.P3441534545919143811

`∩[A003328(n+1), A046022(n+1)]`
-/

namespace A122729.P3441534545919143811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P3441534545919143811

/-! ## A122729.P12148754183352895066

`∩[A003328(n+1), A051948(n+1)]`
-/

namespace A122729.P12148754183352895066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P12148754183352895066

/-! ## A122729.P17015229743077986777

`∩[A003328(n+1), A065091(n+1)]`
-/

namespace A122729.P17015229743077986777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P17015229743077986777

/-! ## A122729.P16439245899699005007

`∩[A003328(n+1), A065396(n+1)]`
-/

namespace A122729.P16439245899699005007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P16439245899699005007

/-! ## A122729.P1644929696151112424

`∩[A003328(n+1), A066050(n+1)]`
-/

namespace A122729.P1644929696151112424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P1644929696151112424

/-! ## A122729.P1247219636556993238

`∩[A003328(n+1), A067126(n+1)]`
-/

namespace A122729.P1247219636556993238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P1247219636556993238

/-! ## A122729.P2506319671139935638

`∩[A003328(n+1), A083249(n+1)]`
-/

namespace A122729.P2506319671139935638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P2506319671139935638

/-! ## A122729.P15791734287810955693

`∩[A003328(n+1), A108719(n+1)]`
-/

namespace A122729.P15791734287810955693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P15791734287810955693

/-! ## A122729.P12675538138549718732

`∩[A003328(n+1), A116974(n+1)]`
-/

namespace A122729.P12675538138549718732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P12675538138549718732

/-! ## A122729.P15426213629556044665

`∩[A003328(n+1), A158611(n+1)]`
-/

namespace A122729.P15426213629556044665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P15426213629556044665

/-! ## A122729.P17848469178651233246

`∩[A003328(n+1), A161346(n+1)]`
-/

namespace A122729.P17848469178651233246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P17848469178651233246

/-! ## A122729.P12487497331493031338

`∩[A161428(n+1), A003328(n+1)]`
-/

namespace A122729.P12487497331493031338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P12487497331493031338

/-! ## A122729.P12477009925218170586

`∩[A003328(n+1), A182986(n+1)]`
-/

namespace A122729.P12477009925218170586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122729.P12477009925218170586

/-!
# A122730: Primes that are the sum of 6 positive cubes.

The programs for A122730, there is no canonical definition to state claims against.
-/

/-! ## A122730.P9393341297038929509

`p?[A003329(n+1)]`
-/

namespace A122730.P9393341297038929509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122730.P9393341297038929509

/-! ## A122730.P16627882809026610954

`p?[comp[A057907(n+1)]]`
-/

namespace A122730.P16627882809026610954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057907 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122730.P16627882809026610954

/-! ## A122730.P8959756275581791057

`p?[record[A003329(A328396(n))]]`
-/

namespace A122730.P8959756275581791057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122730.P8959756275581791057

/-! ## A122730.P15813168523735442922

`p?[record[A003329(A328397(n))]]`
-/

namespace A122730.P15813168523735442922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122730.P15813168523735442922

/-! ## A122730.P3969639410311007169

`record[A020639(A003329(n+2))]`
-/

namespace A122730.P3969639410311007169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003329 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122730.P3969639410311007169

/-! ## A122730.P16890605930893651512

`filter[A003329(n+1), A010051(#)]`
-/

namespace A122730.P16890605930893651512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A122730.P16890605930893651512

/-! ## A122730.P10186552764658704475

`∩[A000040(n+1), A003329(n+1)]`
-/

namespace A122730.P10186552764658704475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P10186552764658704475

/-! ## A122730.P12413144321687744701

`∩[A003329(n+1), A004139(n+1)]`
-/

namespace A122730.P12413144321687744701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P12413144321687744701

/-! ## A122730.P5612756280718579566

`∩[A003329(n+1), A006005(n+1)]`
-/

namespace A122730.P5612756280718579566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P5612756280718579566

/-! ## A122730.P6630993306760572423

`∩[A003329(n+1), A008578(n+1)]`
-/

namespace A122730.P6630993306760572423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P6630993306760572423

/-! ## A122730.P18148932007473858299

`∩[A003329(n+1), A045319(n+1)]`
-/

namespace A122730.P18148932007473858299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P18148932007473858299

/-! ## A122730.P8361305931046451532

`∩[A003329(n+1), A045344(n+1)]`
-/

namespace A122730.P8361305931046451532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P8361305931046451532

/-! ## A122730.P10639632713521230861

`∩[A003329(n+1), A046022(n+1)]`
-/

namespace A122730.P10639632713521230861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P10639632713521230861

/-! ## A122730.P6877133822741026463

`∩[A003329(n+1), A065091(n+1)]`
-/

namespace A122730.P6877133822741026463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P6877133822741026463

/-! ## A122730.P8528686511677649741

`∩[A003329(n+1), A065396(n+1)]`
-/

namespace A122730.P8528686511677649741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P8528686511677649741

/-! ## A122730.P7155881469169235234

`∩[A003329(n+1), A066050(n+1)]`
-/

namespace A122730.P7155881469169235234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P7155881469169235234

/-! ## A122730.P4342188437294018132

`∩[A003329(n+1), A067126(n+1)]`
-/

namespace A122730.P4342188437294018132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P4342188437294018132

/-! ## A122730.P14586375520929361450

`∩[A003329(n+1), A071621(n+1)]`
-/

namespace A122730.P14586375520929361450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P14586375520929361450

/-! ## A122730.P16559124142030968056

`∩[A003329(n+1), A083249(n+1)]`
-/

namespace A122730.P16559124142030968056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P16559124142030968056

/-! ## A122730.P568113850975094654

`∩[A003329(n+1), A162787(n+1)]`
-/

namespace A122730.P568113850975094654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122730.P568113850975094654

/-!
# A122731: Primes that are the sum of 7 positive cubes.

The programs for A122731, there is no canonical definition to state claims against.
-/

/-! ## A122731.P8503496799130483038

`p?[A003330(n+1)]`
-/

namespace A122731.P8503496799130483038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122731.P8503496799130483038

/-! ## A122731.P3792176452970737024

`filter[A003330(n+1), A010051(#)]`
-/

namespace A122731.P3792176452970737024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A122731.P3792176452970737024

/-! ## A122731.P18145030087124752011

`∩[A000040(n+1), A003330(n+1)]`
-/

namespace A122731.P18145030087124752011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P18145030087124752011

/-! ## A122731.P8704658908831355263

`∩[A003330(n+1), A004139(n+1)]`
-/

namespace A122731.P8704658908831355263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P8704658908831355263

/-! ## A122731.P17149279848151489877

`∩[A003330(n+1), A006005(n+1)]`
-/

namespace A122731.P17149279848151489877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P17149279848151489877

/-! ## A122731.P2033474409296021525

`∩[A003330(n+1), A008578(n+1)]`
-/

namespace A122731.P2033474409296021525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P2033474409296021525

/-! ## A122731.P3320195109933970595

`∩[A003330(n+1), A033946(n+1)]`
-/

namespace A122731.P3320195109933970595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P3320195109933970595

/-! ## A122731.P16586982108139184173

`∩[A003330(n+1), A045319(n+1)]`
-/

namespace A122731.P16586982108139184173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P16586982108139184173

/-! ## A122731.P572301376738296070

`∩[A003330(n+1), A045344(n+1)]`
-/

namespace A122731.P572301376738296070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P572301376738296070

/-! ## A122731.P14177244746122597926

`∩[A003330(n+1), A046022(n+1)]`
-/

namespace A122731.P14177244746122597926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P14177244746122597926

/-! ## A122731.P12297197067249770483

`∩[A003330(n+1), A051948(n+1)]`
-/

namespace A122731.P12297197067249770483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P12297197067249770483

/-! ## A122731.P8045491924298219232

`∩[A003330(n+1), A065091(n+1)]`
-/

namespace A122731.P8045491924298219232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P8045491924298219232

/-! ## A122731.P8231908735110594112

`∩[A003330(n+1), A066050(n+1)]`
-/

namespace A122731.P8231908735110594112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P8231908735110594112

/-! ## A122731.P2586798919884784616

`∩[A003330(n+1), A067126(n+1)]`
-/

namespace A122731.P2586798919884784616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P2586798919884784616

/-! ## A122731.P1053327276027338217

`∩[A003330(n+1), A083249(n+1)]`
-/

namespace A122731.P1053327276027338217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P1053327276027338217

/-! ## A122731.P1713077162158921872

`∩[A003330(n+1), A116974(n+1)]`
-/

namespace A122731.P1713077162158921872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P1713077162158921872

/-! ## A122731.P18312703401469885553

`∩[A003330(n+1), A158611(n+1)]`
-/

namespace A122731.P18312703401469885553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P18312703401469885553

/-! ## A122731.P12514127896907517924

`∩[A003330(n+1), A161346(n+1)]`
-/

namespace A122731.P12514127896907517924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P12514127896907517924

/-! ## A122731.P8179775164423687145

`∩[A161428(n+1), A003330(n+1)]`
-/

namespace A122731.P8179775164423687145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122731.P8179775164423687145

/-!
# A122732: 3-almost primes that are the sum of 2 positive cubes. Sums of 2 positive cubes, with the sums having exactly 3 prime divisors counted with multiplicity.

The programs for A122732, there is no canonical definition to state claims against.
-/

/-! ## A122732.P5394351434683154704

`∩[A003325(n+1), A014612(n+1)]`
-/

namespace A122732.P5394351434683154704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P5394351434683154704

/-! ## A122732.P8493122869827148582

`∩[A014612(n+1), A024670(n+1)]`
-/

namespace A122732.P8493122869827148582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P8493122869827148582

/-! ## A122732.P17128246351889695403

`∩[A014612(n+1), A202679(n+1)]`
-/

namespace A122732.P17128246351889695403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P17128246351889695403

/-! ## A122732.P57163672101951300

`∩[A003325(n+1), A217856(n+1)]`
-/

namespace A122732.P57163672101951300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P57163672101951300

/-! ## A122732.P6360416292234669238

`∩[A004999(n+1), A217856(n+1)]`
-/

namespace A122732.P6360416292234669238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P6360416292234669238

/-! ## A122732.P13069538597533839727

`∩[A024670(n+1), A217856(n+1)]`
-/

namespace A122732.P13069538597533839727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P13069538597533839727

/-! ## A122732.P14689715724685393341

`∩[A114090(n+1), A217856(n+1)]`
-/

namespace A122732.P14689715724685393341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P14689715724685393341

/-! ## A122732.P2379617843494882524

`∩[A202679(n+1), A217856(n+1)]`
-/

namespace A122732.P2379617843494882524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122732.P2379617843494882524

/-!
# A122734: a(n) = A121265(n) - A121263(n).

The programs for A122734, there is no canonical definition to state claims against.
-/

/-! ## A122734.P6969710477498611350

`A121265(n)-A121263(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122734.P6969710477498611350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121265 (n + 10) - A121263 (n + 10)

end

end A122734.P6969710477498611350

/-! ## A122734.P4435465773540634732

`A131011(n)+A127744(n)`
-/

namespace A122734.P4435465773540634732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131011 (n + 10) + A127744 (n + 10)

end

end A122734.P4435465773540634732

/-! ## A122734.P12474138421661303946

`A121265(n)-A121266(∑[n]+n)`
-/

namespace A122734.P12474138421661303946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121265 (n + 10) - A121266 (∑ j ∈ Finset.range (n + 1), f1 j + n + 10)

end

end A122734.P12474138421661303946

/-! ## A122734.P18366349237105518488

`A121265(n)-record[A121266(A316964(n))]`
-/

namespace A122734.P18366349237105518488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A316964 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121265 (n + 10) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122734.P18366349237105518488

/-! ## A122734.P15054818478333235429

`A121295(n)+A127744(n)-A121263(n)`
-/

namespace A122734.P15054818478333235429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10) + (A127744 (n + 10) - A121263 (n + 10))

end

end A122734.P15054818478333235429

/-!
# A122736: Number of benzenoids with 21 hexagons, C_(3h) symmetry and containing 61+2n carbon atoms.

The programs for A122736, there is no canonical definition to state claims against.
-/

/-! ## A122736.P11566490861488443369

`A124365(2^(n+1))-1`
-/

namespace A122736.P11566490861488443369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124365 (2 ^ (n + 1)) - 1

end

end A122736.P11566490861488443369

/-!
# A122737: Expansion of 1 - 3*x - sqrt(1 - 6*x + 5*x^2).

The programs for A122737, the canonical program `A122737.P5352890692816768516` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122737 has offset 1).

The definition of A122737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122737.P11488354195662405526

`Δ[2*A181768(n)]`
-/

namespace A122737.P11488354195662405526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122737.P11488354195662405526

namespace A122737

/-- `Δ[2*A181768(n)]` -/
def P11488354195662405526.Spec : Prop :=
  ∀ n, P11488354195662405526.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P7596870321960985926

`Δ[lcm(2, A360322(n))]`
-/

namespace A122737.P7596870321960985926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A360322 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A122737.P7596870321960985926

namespace A122737

/-- `Δ[lcm(2, A360322(n))]` -/
def P7596870321960985926.Spec : Prop :=
  ∀ n, P7596870321960985926.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P5352890692816768516

`record[Δ[2*A055879(n+1)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122737

/-- `record[Δ[2*A055879(n+1)]]` -/
def P5352890692816768516.Spec : Prop :=
  ∀ n, P5352890692816768516.a n = A122737 (n + 1)

theorem P5352890692816768516.correct : P5352890692816768516.Spec := by
  intro n
  simp only [A122737, Nat.add_sub_cancel]

end A122737

/-! ## A122737.P15736417859279521626

`or(1, A002215(2*n+1))-1`
-/

namespace A122737.P15736417859279521626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002215 (2 * n + 1)) - 1

end

end A122737.P15736417859279521626

namespace A122737

/-- `or(1, A002215(2*n+1))-1` -/
def P15736417859279521626.Spec : Prop :=
  ∀ n, P15736417859279521626.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P3332823642276453889

`record[Δ[A039658((n+1)%2+n)]]`
-/

namespace A122737.P3332823642276453889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039658 ((n + 1) % 2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122737.P3332823642276453889

namespace A122737

/-- `record[Δ[A039658((n+1)%2+n)]]` -/
def P3332823642276453889.Spec : Prop :=
  ∀ n, P3332823642276453889.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P11699903782903757448

`Δ[2*A055879(A004277(n))]`
-/

namespace A122737.P11699903782903757448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055879 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122737.P11699903782903757448

namespace A122737

/-- `Δ[2*A055879(A004277(n))]` -/
def P11699903782903757448.Spec : Prop :=
  ∀ n, P11699903782903757448.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P12286822219057124600

`2*(A002212(n)-A000007(n))`
-/

namespace A122737.P12286822219057124600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002212 n - A000007 n)

end

end A122737.P12286822219057124600

namespace A122737

/-- `2*(A002212(n)-A000007(n))` -/
def P12286822219057124600.Spec : Prop :=
  ∀ n, P12286822219057124600.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P7032549777135588753

`(2-A000038(n))*A002212(n)`
-/

namespace A122737.P7032549777135588753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000038 n) * A002212 n

end

end A122737.P7032549777135588753

namespace A122737

/-- `(2-A000038(n))*A002212(n)` -/
def P7032549777135588753.Spec : Prop :=
  ∀ n, P7032549777135588753.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P367364274536507033

`2*A002212(n)*A057427(n)`
-/

namespace A122737.P367364274536507033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002212 n * A057427 n)

end

end A122737.P367364274536507033

namespace A122737

/-- `2*A002212(n)*A057427(n)` -/
def P367364274536507033.Spec : Prop :=
  ∀ n, P367364274536507033.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P6009843095891796671

`2*A002212(n)%A045868(n)`
-/

namespace A122737.P6009843095891796671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A002212 n) (A045868 n)

end

end A122737.P6009843095891796671

namespace A122737

/-- `2*A002212(n)%A045868(n)` -/
def P6009843095891796671.Spec : Prop :=
  ∀ n, P6009843095891796671.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P12675228820992984842

`2*lcm(A002212(n), A165573(n))`
-/

namespace A122737.P12675228820992984842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A002212 n) (A165573 n)

end

end A122737.P12675228820992984842

namespace A122737

/-- `2*lcm(A002212(n), A165573(n))` -/
def P12675228820992984842.Spec : Prop :=
  ∀ n, (P12675228820992984842.a n : ℤ) = A122737 (n + 1)

end A122737

/-! ## A122737.P13130054177778622210

`(2-A000038(n))*A025238(n+1)`
-/

namespace A122737.P13130054177778622210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000038 n) * A025238 (n + 1)

end

end A122737.P13130054177778622210

namespace A122737

/-- `(2-A000038(n))*A025238(n+1)` -/
def P13130054177778622210.Spec : Prop :=
  ∀ n, P13130054177778622210.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P8037288585504618696

`2*(A044045(n)+A030529(n+2))`
-/

namespace A122737.P8037288585504618696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044045 n + A030529 (n + 2))

end

end A122737.P8037288585504618696

namespace A122737

/-- `2*(A044045(n)+A030529(n+2))` -/
def P8037288585504618696.Spec : Prop :=
  ∀ n, P8037288585504618696.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P9869429049440038366

`2*(A007317(n+1)-A181768(n))`
-/

namespace A122737.P9869429049440038366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007317 (n + 1) - A181768 n)

end

end A122737.P9869429049440038366

namespace A122737

/-- `2*(A007317(n+1)-A181768(n))` -/
def P9869429049440038366.Spec : Prop :=
  ∀ n, P9869429049440038366.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P3601028255644875502

`2*(A181768(n+1)-A181768(n))`
-/

namespace A122737.P3601028255644875502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181768 (n + 1) - A181768 n)

end

end A122737.P3601028255644875502

namespace A122737

/-- `2*(A181768(n+1)-A181768(n))` -/
def P3601028255644875502.Spec : Prop :=
  ∀ n, P3601028255644875502.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P6157485326974586597

`and(2, A083420(n))*A025238(n+1)`
-/

namespace A122737.P6157485326974586597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A083420 n) * A025238 (n + 1)

end

end A122737.P6157485326974586597

namespace A122737

/-- `and(2, A083420(n))*A025238(n+1)` -/
def P6157485326974586597.Spec : Prop :=
  ∀ n, P6157485326974586597.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P17190278633720904295

`and(2, A267941(n))*A025238(n+1)`
-/

namespace A122737.P17190278633720904295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A267941 n) * A025238 (n + 1)

end

end A122737.P17190278633720904295

namespace A122737

/-- `and(2, A267941(n))*A025238(n+1)` -/
def P17190278633720904295.Spec : Prop :=
  ∀ n, P17190278633720904295.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P6825143544609873614

`(1-A153881(n+1))*A025238(n+1)`
-/

namespace A122737.P6825143544609873614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A153881 (n + 1)) * A025238 (n + 1)

end

end A122737.P6825143544609873614

namespace A122737

/-- `(1-A153881(n+1))*A025238(n+1)` -/
def P6825143544609873614.Spec : Prop :=
  ∀ n, P6825143544609873614.a n = A122737 (n + 1)

end A122737

/-! ## A122737.P8755452557196474047

`A002215(2*n+1)-A000038(n)/2`
-/

namespace A122737.P8755452557196474047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002215 (2 * n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A122737.P8755452557196474047

namespace A122737

/-- `A002215(2*n+1)-A000038(n)/2` -/
def P8755452557196474047.Spec : Prop :=
  ∀ n, P8755452557196474047.a n = (A122737 (n + 1) : ℚ)

end A122737

/-! ## A122737.P10932473976113821284

`A000040(n+1)%2*A002215(2*n+1)`
-/

namespace A122737.P10932473976113821284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A002215 (2 * n + 1)

end

end A122737.P10932473976113821284

namespace A122737

/-- `A000040(n+1)%2*A002215(2*n+1)` -/
def P10932473976113821284.Spec : Prop :=
  ∀ n, P10932473976113821284.a n = A122737 (n + 1)

end A122737

/-!
# A122739: Numbers of perifusenes with one internal vertex (see Cyvin et al. for precise definition).

The programs for A122739, there is no canonical definition to state claims against.
-/

/-! ## A122739.P719125579149037884

`A038380(n+3)`
-/

namespace A122739.P719125579149037884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038380 (n + 3)

end

end A122739.P719125579149037884

/-! ## A122739.P3661693194211415361

`A122741(n+3)+A122740(n+3)`
-/

namespace A122739.P3661693194211415361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122741 (n + 3) + A122740 (n + 3)

end

end A122739.P3661693194211415361

/-! ## A122739.P16167808913258489286

`filter[A038380(n), A368905(#)]`
-/

namespace A122739.P16167808913258489286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368905 (f1 j).toNat = 1) n)

end

end A122739.P16167808913258489286

/-! ## A122739.P5021831803257671427

`filter[A038380(n), A022932(#)]`
-/

namespace A122739.P5021831803257671427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A122739.P5021831803257671427

/-!
# A122740: Numbers of benzenoids with one internal vertex made of n hexagons.

The programs for A122740, there is no canonical definition to state claims against.
-/

/-! ## A122740.P12143420567566228149

`A038380(n+3)-A122741(n+3)`
-/

namespace A122740.P12143420567566228149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038380 (n + 3) - A122741 (n + 3)

end

end A122740.P12143420567566228149

/-! ## A122740.P17690766369066219294

`A122739(n+3)-A122741(n+3)`
-/

namespace A122740.P17690766369066219294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122739 (n + 3) - A122741 (n + 3)

end

end A122740.P17690766369066219294

/-!
# A122741: Numbers of helicenes with one internal vertex made of n hexagons.

The programs for A122741, there is no canonical definition to state claims against.
-/

/-! ## A122741.P6151541676058425038

`A038380(n+3)-A122740(n+3)`
-/

namespace A122741.P6151541676058425038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038380 (n + 3) - A122740 (n + 3)

end

end A122741.P6151541676058425038

/-! ## A122741.P8245143848076194218

`A122739(n+3)-A122740(n+3)`
-/

namespace A122741.P8245143848076194218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122739 (n + 3) - A122740 (n + 3)

end

end A122741.P8245143848076194218

/-! ## A122741.P7453971148629343514

`(A122739(n+3)%A122740(n+3))%A000142(n)`
-/

namespace A122741.P7453971148629343514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A122739 (n + 3)) (A122740 (n + 3))) (A000142 n)

end

end A122741.P7453971148629343514

/-!
# A122742: Numbers of polypentagons with two connected internal vertices (see Cyvin et al. for precise definition).

The programs for A122742, the canonical program `A122742.P1240298282008171584` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122742 has offset 4).

The definition of A122742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122742.P1240298282008171584

`A121133(n+1)-A077957(A289207(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122742

/-- `A121133(n+1)-A077957(A289207(n))` -/
def P1240298282008171584.Spec : Prop :=
  ∀ n, P1240298282008171584.a n = A122742 (n + 4)

theorem P1240298282008171584.correct : P1240298282008171584.Spec := by
  intro n
  simp only [A122742, Nat.add_sub_cancel]

end A122742

/-! ## A122742.P8005411003950073804

`A084861(n)-A323936(n+1)`
-/

namespace A122742.P8005411003950073804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084861 n - A323936 (n + 1)

end

end A122742.P8005411003950073804

namespace A122742

/-- `A084861(n)-A323936(n+1)` -/
def P8005411003950073804.Spec : Prop :=
  ∀ n, P8005411003950073804.a n = A122742 (n + 4)

end A122742

/-! ## A122742.P391959584989585684

`A120652(∑[n+1]+1)-A077957(A289207(n))`
-/

namespace A122742.P391959584989585684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A077957 (A289207 n).toNat

end

end A122742.P391959584989585684

namespace A122742

/-- `A120652(∑[n+1]+1)-A077957(A289207(n))` -/
def P391959584989585684.Spec : Prop :=
  ∀ n, P391959584989585684.a n = A122742 (n + 4)

end A122742

/-! ## A122742.P17307554293168041720

`A132275(n+1)-A227481(A140824(n))`
-/

namespace A122742.P17307554293168041720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132275 (n + 1) - A227481 (A140824 n).toNat

end

end A122742.P17307554293168041720

namespace A122742

/-- `A132275(n+1)-A227481(A140824(n))` -/
def P17307554293168041720.Spec : Prop :=
  ∀ n, P17307554293168041720.a n = A122742 (n + 4)

end A122742

/-! ## A122742.P9286884880427538489

`A339158(n+1)-A193453(A096840(n))`
-/

namespace A122742.P9286884880427538489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339158 (n + 1) - A193453 (A096840 n).toNat

end

end A122742.P9286884880427538489

namespace A122742

/-- `A339158(n+1)-A193453(A096840(n))` -/
def P9286884880427538489.Spec : Prop :=
  ∀ n, P9286884880427538489.a n = A122742 (n + 4)

end A122742

/-!
# A122743: Number of normalized polynomials of degree n in GF(2)[x,y].

The programs for A122743, the canonical program `A122743.P12664448533369827454` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122743 has offset 0).

The definition of A122743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122743.P12664448533369827454

`2^(n*(1+n)/2)*(2^(1+n)-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122743

/-- `2^(n*(1+n)/2)*(2^(1+n)-1)` -/
def P12664448533369827454.Spec : Prop :=
  ∀ n, P12664448533369827454.a n = (A122743 n : ℝ)

end A122743

/-! ## A122743.P8876200361607404607

`Δ[∏[2*a(n-1)]]` with `a(0)=1`
-/

namespace A122743.P8876200361607404607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A122743.P8876200361607404607

namespace A122743

/-- `Δ[∏[2*a(n-1)]]` -/
def P8876200361607404607.Spec : Prop :=
  ∀ n, P8876200361607404607.a n = A122743 n

end A122743

/-! ## A122743.P13017854534348757720

`lcm(2^∑[n], ∑[2^n])`
-/

namespace A122743.P13017854534348757720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A122743.P13017854534348757720

namespace A122743

/-- `lcm(2^∑[n], ∑[2^n])` -/
def P13017854534348757720.Spec : Prop :=
  ∀ n, (P13017854534348757720.a n : ℤ) = A122743 n

end A122743

/-! ## A122743.P8854844730184267298

`-Δ[-2^C(n+1, 2)]`
-/

namespace A122743.P8854844730184267298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ Nat.choose (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A122743.P8854844730184267298

namespace A122743

/-- `-Δ[-2^C(n+1, 2)]` -/
def P8854844730184267298.Spec : Prop :=
  ∀ n, P8854844730184267298.a n = A122743 n

end A122743

/-! ## A122743.P13017234854755831286

`abs(Δ[∏[xor(1, 2^n)-1]])`
-/

namespace A122743.P13017234854755831286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 ^ n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A122743.P13017234854755831286

namespace A122743

/-- `abs(Δ[∏[xor(1, 2^n)-1]])` -/
def P13017234854755831286.Spec : Prop :=
  ∀ n, P13017234854755831286.a n = A122743 n

end A122743

/-!
# A122744: Numbers of polypentagons with one internal vertex (see Cyvin et al. for precise definition).

The programs for A122744, there is no canonical definition to state claims against.
-/

/-! ## A122744.P17223914663157392747

`A002524(n)-A205551(n!)`
-/

namespace A122744.P17223914663157392747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n - A205551 (Nat.factorial n)

end

end A122744.P17223914663157392747

/-! ## A122744.P15886964238730501983

`A026819(A032130(n+1))-1`
-/

namespace A122744.P15886964238730501983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A032130 (n + 1)).toNat - 1

end

end A122744.P15886964238730501983

/-! ## A122744.P12960255087620244443

`A000129(n)-A001221(A000774(n))`
-/

namespace A122744.P12960255087620244443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A001221 (A000774 n).toNat

end

end A122744.P12960255087620244443

/-! ## A122744.P6841400479333696162

`A000129(n)-A001221(A057857(n))`
-/

namespace A122744.P6841400479333696162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A001221 (A057857 n).toNat

end

end A122744.P6841400479333696162

/-!
# A122745: Numbers of polypentagons with one internal vertex (see Cyvin et al. for precise definition).

The programs for A122745, there is no canonical definition to state claims against.
-/

/-! ## A122745.P6981585108044234907

`A032539(A383479(n))`
-/

namespace A122745.P6981585108044234907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A383479 n).toNat

end

end A122745.P6981585108044234907

/-! ## A122745.P5155872722389059773

`A001462(A330641(∑[n]))`
-/

namespace A122745.P5155872722389059773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A330641 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A122745.P5155872722389059773

/-! ## A122745.P11240433935071737447

`A032539(A200753(n+1))`
-/

namespace A122745.P11240433935071737447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A200753 (n + 1)).toNat

end

end A122745.P11240433935071737447

/-! ## A122745.P9707545430826898797

`A108141(A320348(∑[n+1]))`
-/

namespace A122745.P9707545430826898797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A320348 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A122745.P9707545430826898797

/-!
# A122746: Expansion of o.g.f. 1/((1-2*x)*(1-2*x^2)).

The programs for A122746, the canonical program `A122746.P3262979960302126282` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122746 has offset 0).

The definition of A122746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122746.P3262979960302126282

`2^(n+1)-2^ceil(n/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122746

/-- `2^(n+1)-2^ceil(n/2)` -/
def P3262979960302126282.Spec : Prop :=
  ∀ n, P3262979960302126282.a n = (A122746 n : ℚ)

end A122746

/-! ## A122746.P11497783940405801272

`(A000918(n+2)-A056453(n+2))/2`
-/

namespace A122746.P11497783940405801272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 2) - A056453 (n + 2) : ℚ) / 2

end

end A122746.P11497783940405801272

namespace A122746

/-- `(A000918(n+2)-A056453(n+2))/2` -/
def P11497783940405801272.Spec : Prop :=
  ∀ n, P11497783940405801272.a n = (A122746 n : ℚ)

end A122746

/-! ## A122746.P5796360597741668447

`(A000079(n+2)-A060546(n+2))/2`
-/

namespace A122746.P5796360597741668447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 2) - A060546 (n + 2) : ℚ) / 2

end

end A122746.P5796360597741668447

namespace A122746

/-- `(A000079(n+2)-A060546(n+2))/2` -/
def P5796360597741668447.Spec : Prop :=
  ∀ n, P5796360597741668447.a n = (A122746 n : ℚ)

end A122746

/-! ## A122746.P16775855842773060268

`2*or(a(n-1), a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A122746.P16775855842773060268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * Nat.lor (a (n - 1)) (a (n - 2))

end

end A122746.P16775855842773060268

namespace A122746

/-- `2*or(a(n-1), a(n-2))` -/
def P16775855842773060268.Spec : Prop :=
  ∀ n, (P16775855842773060268.a n : ℤ) = A122746 n

end A122746

/-! ## A122746.P11818232329862408557

`floor(a(n-2)+a(n-2)+2^n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A122746.P11818232329862408557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 2 ^ n)

end

end A122746.P11818232329862408557

namespace A122746

/-- `floor(a(n-2)+a(n-2)+2^n)` -/
def P11818232329862408557.Spec : Prop :=
  ∀ n, (P11818232329862408557.a n : ℤ) = A122746 n

end A122746

/-! ## A122746.P14283159489258570154

`A032085(n+2)`
-/

namespace A122746.P14283159489258570154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032085 (n + 2)

end

end A122746.P14283159489258570154

namespace A122746

/-- `A032085(n+2)` -/
def P14283159489258570154.Spec : Prop :=
  ∀ n, P14283159489258570154.a n = A122746 n

end A122746

/-! ## A122746.P248347580965467978

`∑[A007179(n+1)]`
-/

namespace A122746.P248347580965467978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122746.P248347580965467978

namespace A122746

/-- `∑[A007179(n+1)]` -/
def P248347580965467978.Spec : Prop :=
  ∀ n, P248347580965467978.a n = A122746 n

end A122746

/-! ## A122746.P10171363214333851222

`∑[A274638(n)+1]`
-/

namespace A122746.P10171363214333851222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274638 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122746.P10171363214333851222

namespace A122746

/-- `∑[A274638(n)+1]` -/
def P10171363214333851222.Spec : Prop :=
  ∀ n, P10171363214333851222.a n = A122746 n

end A122746

/-! ## A122746.P14707116986704085942

`record[A060550(n+4)]`
-/

namespace A122746.P14707116986704085942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060550 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122746.P14707116986704085942

namespace A122746

/-- `record[A060550(n+4)]` -/
def P14707116986704085942.Spec : Prop :=
  ∀ n, P14707116986704085942.a n = A122746 n

end A122746

/-! ## A122746.P8711128759447212264

`A060550(3*(n+2))`
-/

namespace A122746.P8711128759447212264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060550 (3 * (n + 2))

end

end A122746.P8711128759447212264

namespace A122746

/-- `A060550(3*(n+2))` -/
def P8711128759447212264.Spec : Prop :=
  ∀ n, P8711128759447212264.a n = A122746 n

end A122746

/-! ## A122746.P9755821201803822103

`∑[∑[A113980(n+1)]]`
-/

namespace A122746.P9755821201803822103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122746.P9755821201803822103

namespace A122746

/-- `∑[∑[A113980(n+1)]]` -/
def P9755821201803822103.Spec : Prop :=
  ∀ n, P9755821201803822103.a n = A122746 n

end A122746

/-! ## A122746.P17477347790564227197

`∑[A014236(n+1)/2]`
-/

namespace A122746.P17477347790564227197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014236 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122746.P17477347790564227197

namespace A122746

/-- `∑[A014236(n+1)/2]` -/
def P17477347790564227197.Spec : Prop :=
  ∀ n, P17477347790564227197.a n = (A122746 n : ℚ)

end A122746

/-! ## A122746.P16111927101664405497

`or(2*a(n-1), A131575(n+1))` with `a(0)=1`
-/

namespace A122746.P16111927101664405497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A131575 (n + 1))

end

end A122746.P16111927101664405497

namespace A122746

/-- `or(2*a(n-1), A131575(n+1))` -/
def P16111927101664405497.Spec : Prop :=
  ∀ n, P16111927101664405497.a n = A122746 n

end A122746

/-! ## A122746.P14119255262747061149

`or(2*a(n-1), A164073(n+2))` with `a(0)=1`
-/

namespace A122746.P14119255262747061149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A164073 (n + 2))

end

end A122746.P14119255262747061149

namespace A122746

/-- `or(2*a(n-1), A164073(n+2))` -/
def P14119255262747061149.Spec : Prop :=
  ∀ n, P14119255262747061149.a n = A122746 n

end A122746

/-! ## A122746.P9706001568872321054

`A016116(n)*A075427(n)`
-/

namespace A122746.P9706001568872321054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A075427 n

end

end A122746.P9706001568872321054

namespace A122746

/-- `A016116(n)*A075427(n)` -/
def P9706001568872321054.Spec : Prop :=
  ∀ n, P9706001568872321054.a n = A122746 n

end A122746

/-! ## A122746.P14544126598766363574

`A052551(n)*A060546(n)`
-/

namespace A122746.P14544126598766363574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A060546 n

end

end A122746.P14544126598766363574

namespace A122746

/-- `A052551(n)*A060546(n)` -/
def P14544126598766363574.Spec : Prop :=
  ∀ n, P14544126598766363574.a n = A122746 n

end A122746

/-! ## A122746.P8774247412005359025

`A072345(n)*A282418(n)`
-/

namespace A122746.P8774247412005359025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n * A282418 n

end

end A122746.P8774247412005359025

namespace A122746

/-- `A072345(n)*A282418(n)` -/
def P8774247412005359025.Spec : Prop :=
  ∀ n, P8774247412005359025.a n = A122746 n

end A122746

/-! ## A122746.P15973904763342031328

`lcm(A075427(n), A152166(n))`
-/

namespace A122746.P15973904763342031328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075427 n) (A152166 n)

end

end A122746.P15973904763342031328

namespace A122746

/-- `lcm(A075427(n), A152166(n))` -/
def P15973904763342031328.Spec : Prop :=
  ∀ n, (P15973904763342031328.a n : ℤ) = A122746 n

end A122746

/-!
# A122747: Bishops on an n X n board (see Robinson paper for details).

The programs for A122747, the canonical program `A122747.P18064843382434901665` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122747 has offset 0).

The definition of A122747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122747.P18064843382434901665

`4*(2*n-1)²*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122747

/-- `4*(2*n-1)²*a(n-1)` -/
def P18064843382434901665.Spec : Prop :=
  ∀ n, P18064843382434901665.a n = A122747 n

theorem P18064843382434901665.correct : P18064843382434901665.Spec := by
  intro n
  simp only [A122747]

end A122747

/-! ## A122747.P2979413920886863651

`((2*n)!/n!)²`
-/

namespace A122747.P2979413920886863651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)) ^ 2

end

end A122747.P2979413920886863651

namespace A122747

/-- `((2*n)!/n!)²` -/
def P2979413920886863651.Spec : Prop :=
  ∀ n, P2979413920886863651.a n = (A122747 n : ℚ)

end A122747

/-! ## A122747.P17069727565362536039

`(∏[2-4*n]/2)²`
-/

namespace A122747.P17069727565362536039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2

end

end A122747.P17069727565362536039

namespace A122747

/-- `(∏[2-4*n]/2)²` -/
def P17069727565362536039.Spec : Prop :=
  ∀ n, P17069727565362536039.a n = (A122747 n : ℚ)

end A122747

/-! ## A122747.P11616849188786677514

`(2*n)!*C(2*n, n)`
-/

namespace A122747.P11616849188786677514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * Nat.choose (2 * n) n

end

end A122747.P11616849188786677514

namespace A122747

/-- `(2*n)!*C(2*n, n)` -/
def P11616849188786677514.Spec : Prop :=
  ∀ n, (P11616849188786677514.a n : ℤ) = A122747 n

end A122747

/-! ## A122747.P18275546871864265962

`(n!/(2*n)!)^-2`
-/

namespace A122747.P18275546871864265962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Nat.factorial (2 * n) : ℚ)) ^ (-2 : ℤ)

end

end A122747.P18275546871864265962

namespace A122747

/-- `(n!/(2*n)!)^-2` -/
def P18275546871864265962.Spec : Prop :=
  ∀ n, P18275546871864265962.a n = (A122747 n : ℚ)

end A122747

/-!
# A122748: Bishops on an n X n board (see Robinson paper for details).

The programs for A122748, there is no canonical definition to state claims against.
-/

/-! ## A122748.P8963610319322540504

`A000003(A150071(n))`
-/

namespace A122748.P8963610319322540504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A150071 n).toNat

end

end A122748.P8963610319322540504

/-! ## A122748.P16477703677767286533

`A279170(A026742(n))`
-/

namespace A122748.P16477703677767286533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279170 (A026742 n).toNat

end

end A122748.P16477703677767286533

/-! ## A122748.P5494205478050860856

`A279170(A121430(n))`
-/

namespace A122748.P5494205478050860856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279170 (A121430 n).toNat

end

end A122748.P5494205478050860856

/-! ## A122748.P17581047746003633285

`A000003(∑[A149054(n)])`
-/

namespace A122748.P17581047746003633285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122748.P17581047746003633285

/-! ## A122748.P17124952545012571150

`A000003(3*A115275(n))`
-/

namespace A122748.P17124952545012571150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (3 * A115275 n).toNat

end

end A122748.P17124952545012571150

/-!
# A122749: Number of arrangements of n non-attacking bishops on an n X n board such that every square of the board is controlled by at least one bishop.

The programs for A122749, there is no canonical definition to state claims against.
-/

/-! ## A122749.P12134569346957404443

`A098348(a(n-2)+7)` with `a(0)=4, a(1)=2`
-/

namespace A122749.P12134569346957404443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n a =>
  A098348 (a (n - 2) + 7).toNat

end

end A122749.P12134569346957404443

/-!
# A122750: Triangle T(n,k) = (-1)^(k+1) if n is odd, = (-1)^k if n and k are even, = 2*(-1)^k if n is even and k is odd, 0<=k<=n.

The programs for A122750, the canonical program `A122750.P11574992271671755602` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122750 has offset 0).

The definition of A122750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122750.P11574992271671755602

`A106465(n)-A010673(A025581(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A122750

/-- `A106465(n)-A010673(A025581(n))` -/
def P11574992271671755602.Spec : Prop :=
  ∀ n, P11574992271671755602.a n = A122750 n

theorem P11574992271671755602.correct : P11574992271671755602.Spec := by
  intro n
  simp only [A122750]

end A122750

/-! ## A122750.P9060136085246228326

`A062157(A004736(n+1))-A004247(n)%2`
-/

namespace A122750.P9060136085246228326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat - Int.tmod (A004247 n) 2

end

end A122750.P9060136085246228326

namespace A122750

/-- `A062157(A004736(n+1))-A004247(n)%2` -/
def P9060136085246228326.Spec : Prop :=
  ∀ n, P9060136085246228326.a n = A122750 n

end A122750

/-! ## A122750.P7699471420269046953

`A164677(A099375(n))-A000035(A324351(n))`
-/

namespace A122750.P7699471420269046953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A099375 n).toNat - A000035 (A324351 n).toNat

end

end A122750.P7699471420269046953

namespace A122750

/-- `A164677(A099375(n))-A000035(A324351(n))` -/
def P7699471420269046953.Spec : Prop :=
  ∀ n, P7699471420269046953.a n = A122750 n

end A122750

/-! ## A122750.P10854899429452652487

`A000034(A004198(n))*A034947(A099375(n))`
-/

namespace A122750.P10854899429452652487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004198 n).toNat * A034947 (A099375 n).toNat

end

end A122750.P10854899429452652487

namespace A122750

/-- `A000034(A004198(n))*A034947(A099375(n))` -/
def P10854899429452652487.Spec : Prop :=
  ∀ n, P10854899429452652487.a n = A122750 n

end A122750

/-! ## A122750.P10021314683923215938

`A000034(A004247(n))*A062157(A094727(n+1))`
-/

namespace A122750.P10021314683923215938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004247 n).toNat * A062157 (A094727 (n + 1)).toNat

end

end A122750.P10021314683923215938

namespace A122750

/-- `A000034(A004247(n))*A062157(A094727(n+1))` -/
def P10021314683923215938.Spec : Prop :=
  ∀ n, P10021314683923215938.a n = A122750 n

end A122750

/-! ## A122750.P3697051354998810852

`A009531(A099375(n))*A040001(A323956(n+1))`
-/

namespace A122750.P3697051354998810852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A040001 (A323956 (n + 1)).toNat

end

end A122750.P3697051354998810852

namespace A122750

/-- `A009531(A099375(n))*A040001(A323956(n+1))` -/
def P3697051354998810852.Spec : Prop :=
  ∀ n, P3697051354998810852.a n = A122750 n

end A122750

/-! ## A122750.P14808673973907482304

`A033999(A063656(n))-A000007(A319929(n+1))`
-/

namespace A122750.P14808673973907482304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat - A000007 (A319929 (n + 1)).toNat

end

end A122750.P14808673973907482304

namespace A122750

/-- `A033999(A063656(n))-A000007(A319929(n+1))` -/
def P14808673973907482304.Spec : Prop :=
  ∀ n, P14808673973907482304.a n = A122750 n

end A122750

/-! ## A122750.P7286125204456761715

`A106465(n)-A010673(A063656(n))`
-/

namespace A122750.P7286125204456761715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 n - A010673 (A063656 n).toNat

end

end A122750.P7286125204456761715

namespace A122750

/-- `A106465(n)-A010673(A063656(n))` -/
def P7286125204456761715.Spec : Prop :=
  ∀ n, P7286125204456761715.a n = A122750 n

end A122750

/-! ## A122750.P17124181935524462451

`A033999(A063656(n))*A054977(A051159(n))`
-/

namespace A122750.P17124181935524462451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A054977 (A051159 n).toNat

end

end A122750.P17124181935524462451

namespace A122750

/-- `A033999(A063656(n))*A054977(A051159(n))` -/
def P17124181935524462451.Spec : Prop :=
  ∀ n, P17124181935524462451.a n = A122750 n

end A122750

/-! ## A122750.P905738475806247849

`A001511(A113280(n+1))*A057077(A099375(n))`
-/

namespace A122750.P905738475806247849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A113280 (n + 1)).toNat * A057077 (A099375 n).toNat

end

end A122750.P905738475806247849

namespace A122750

/-- `A001511(A113280(n+1))*A057077(A099375(n))` -/
def P905738475806247849.Spec : Prop :=
  ∀ n, P905738475806247849.a n = A122750 n

end A122750

/-! ## A122750.P16003121188956580867

`A106465(n)-A000038(A108044(n))`
-/

namespace A122750.P16003121188956580867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 n - A000038 (A108044 n).toNat

end

end A122750.P16003121188956580867

namespace A122750

/-- `A106465(n)-A000038(A108044(n))` -/
def P16003121188956580867.Spec : Prop :=
  ∀ n, P16003121188956580867.a n = A122750 n

end A122750

/-!
# A122751: Number of essentially different semi-magic squares of order 3 with semimagic sum n.

The programs for A122751, the canonical program `A122751.P10125038466054384336` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122751 has offset 3).

The definition of A122751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122751.P2892721834452104614

`(A008733(n)+A007009(n+1))/2`
-/

namespace A122751.P2892721834452104614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008733 n + A007009 (n + 1) : ℚ) / 2

end

end A122751.P2892721834452104614

namespace A122751

/-- `(A008733(n)+A007009(n+1))/2` -/
def P2892721834452104614.Spec : Prop :=
  ∀ n, P2892721834452104614.a n = (A122751 (n + 3) : ℚ)

end A122751

/-! ## A122751.P10125038466054384336

`A105636(floor((n+1)/2))+A002817(A008619(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122751

/-- `A105636(floor((n+1)/2))+A002817(A008619(n))` -/
def P10125038466054384336.Spec : Prop :=
  ∀ n, P10125038466054384336.a n = A122751 (n + 3)

theorem P10125038466054384336.correct : P10125038466054384336.Spec := by
  intro n
  simp only [A122751, Nat.add_sub_cancel]

end A122751

/-! ## A122751.P2395049369105571745

`∑[∑[A008735(3*n)]]`
-/

namespace A122751.P2395049369105571745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008735 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122751.P2395049369105571745

namespace A122751

/-- `∑[∑[A008735(3*n)]]` -/
def P2395049369105571745.Spec : Prop :=
  ∀ n, P2395049369105571745.a n = A122751 (n + 3)

end A122751

/-! ## A122751.P18165388472896420364

`∑[∑[A008743(A004442(3*(n+1)))]]`
-/

namespace A122751.P18165388472896420364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A004442 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122751.P18165388472896420364

namespace A122751

/-- `∑[∑[A008743(A004442(3*(n+1)))]]` -/
def P18165388472896420364.Spec : Prop :=
  ∀ n, P18165388472896420364.a n = A122751 (n + 3)

end A122751

/-! ## A122751.P158982450963963590

`∑[∑[A005044(A165754(3*n+2))]]`
-/

namespace A122751.P158982450963963590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A165754 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122751.P158982450963963590

namespace A122751

/-- `∑[∑[A005044(A165754(3*n+2))]]` -/
def P158982450963963590.Spec : Prop :=
  ∀ n, P158982450963963590.a n = A122751 (n + 3)

end A122751

/-!
# A122752: a(0) = 1; a(1) = 1; a(2) = 1; a(n) = (n-1)*a(n-1) + (n-2)*a(n-2) + (n-3)*a(n-3) for n >= 3.

The programs for A122752, the canonical program `A122752.P8793971807914000308` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122752 has offset 0).

The definition of A122752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-1)+(n-2)*a(n-2)+(n-3)*a(n-3)` (program `A122752.P8793971807914000308`, by `A122752.P8793971807914000308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122752.P8793971807914000308

`(n-1)*a(n-1)+(n-2)*a(n-2)+(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122752

/-- `(n-1)*a(n-1)+(n-2)*a(n-2)+(n-3)*a(n-3)` -/
def P8793971807914000308.Spec : Prop :=
  ∀ n, P8793971807914000308.a n = A122752 n

theorem P8793971807914000308.correct : P8793971807914000308.Spec := by
  intro n
  simp only [A122752]

end A122752

/-! ## A122752.P16629254834715405586

`n*a((2*n)%(n+1))-A324518(A249155(n+1))` with `a(0)=1`
-/

namespace A122752.P16629254834715405586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (2 * n % (n + 1)) - A324518 (A249155 (n + 1)).toNat

end

end A122752.P16629254834715405586

namespace A122752

/-- `n*a((2*n)%(n+1))-A324518(A249155(n+1))` -/
def P16629254834715405586.Spec : Prop :=
  ∀ n, P16629254834715405586.a n = A122752 n

end A122752

/-! ## A122752.P8894472611079619756

`A006949(A202213(n)+A006926(n))`
-/

namespace A122752.P8894472611079619756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A202213 n + A006926 n).toNat

end

end A122752.P8894472611079619756

namespace A122752

/-- `A006949(A202213(n)+A006926(n))` -/
def P8894472611079619756.Spec : Prop :=
  ∀ n, P8894472611079619756.a n = A122752 n

end A122752

/-! ## A122752.P14928712695160888139

`A107876(n)+A097508(A186763(n))`
-/

namespace A122752.P14928712695160888139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 n + A097508 (A186763 n).toNat

end

end A122752.P14928712695160888139

namespace A122752

/-- `A107876(n)+A097508(A186763(n))` -/
def P14928712695160888139.Spec : Prop :=
  ∀ n, P14928712695160888139.a n = A122752 n

end A122752

/-!
# A122753: Triangle of coefficients of (1 - x)^n*B_n(x/(1 - x)), where B_n(x) is the n-th Bell polynomial.

The programs for A122753, there is no canonical definition to state claims against.
-/

/-! ## A122753.P7835054203456060186

`A325108(A361397(n))-A255327(n)`
-/

namespace A122753.P7835054203456060186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325108 (A361397 n).toNat - A255327 n

end

end A122753.P7835054203456060186

/-! ## A122753.P12828636772683931930

`A111941(and(A080861(n), A111835(n)))`
-/

namespace A122753.P12828636772683931930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111941 (Int.land (A080861 n) (A111835 n)).toNat

end

end A122753.P12828636772683931930

/-! ## A122753.P9157283697392737331

`A292900(A001009(n+1))+A058177(n)`
-/

namespace A122753.P9157283697392737331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (A001009 (n + 1)).toNat + A058177 n

end

end A122753.P9157283697392737331

/-! ## A122753.P1768510880842511060

`A266874(n+1)^A230103(A121577(n))`
-/

namespace A122753.P1768510880842511060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266874 (n + 1) : ℚ) ^ (A230103 (A121577 n).toNat : ℤ)

end

end A122753.P1768510880842511060

/-!
# A122754: a(n) = 10*n - A101306(n).

The programs for A122754, the canonical program `A122754.P6222509916538379196` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122754 has offset 1).

The definition of A122754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122754.P6222509916538379196

`∑[A072003(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122754

/-- `∑[A072003(n+1)]` -/
def P6222509916538379196.Spec : Prop :=
  ∀ n, P6222509916538379196.a n = A122754 (n + 1)

theorem P6222509916538379196.correct : P6222509916538379196.Spec := by
  intro n
  simp only [A122754, Nat.add_sub_cancel]

end A122754

/-! ## A122754.P4669041810330168056

`∑[A277097(n+1)+5]`
-/

namespace A122754.P4669041810330168056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277097 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P4669041810330168056

namespace A122754

/-- `∑[A277097(n+1)+5]` -/
def P4669041810330168056.Spec : Prop :=
  ∀ n, P4669041810330168056.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P16809147535084509733

`∑[10-A007652(n+1)]`
-/

namespace A122754.P16809147535084509733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P16809147535084509733

namespace A122754

/-- `∑[10-A007652(n+1)]` -/
def P16809147535084509733.Spec : Prop :=
  ∀ n, P16809147535084509733.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P5074334736542254150

`∑[(9*A000040(n+1))%10]`
-/

namespace A122754.P5074334736542254150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A000040 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P5074334736542254150

namespace A122754

/-- `∑[(9*A000040(n+1))%10]` -/
def P5074334736542254150.Spec : Prop :=
  ∀ n, P5074334736542254150.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P1284137705138879533

`∑[10-abs(Δ[A022837(n)]%10)]`
-/

namespace A122754.P1284137705138879533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - |Int.tmod (f2 (n + 1) - f2 n) 10|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P1284137705138879533

namespace A122754

/-- `∑[10-abs(Δ[A022837(n)]%10)]` -/
def P1284137705138879533.Spec : Prop :=
  ∀ n, P1284137705138879533.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P3308581516419553657

`A184593(n+1)+5*(n+1)`
-/

namespace A122754.P3308581516419553657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184593 (n + 1) + (5 * (n + 1) : ℤ)

end

end A122754.P3308581516419553657

namespace A122754

/-- `A184593(n+1)+5*(n+1)` -/
def P3308581516419553657.Spec : Prop :=
  ∀ n, P3308581516419553657.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P6637519223289962524

`∑[10-A000040((n+1)%A000040(n+1))%10]`
-/

namespace A122754.P6637519223289962524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - Int.tmod (A000040 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P6637519223289962524

namespace A122754

/-- `∑[10-A000040((n+1)%A000040(n+1))%10]` -/
def P6637519223289962524.Spec : Prop :=
  ∀ n, P6637519223289962524.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P5041783248013668728

`A101306(n+1)+A184593(n+1)+A184593(n+1)`
-/

namespace A122754.P5041783248013668728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101306 (n + 1) + (A184593 (n + 1) + A184593 (n + 1))

end

end A122754.P5041783248013668728

namespace A122754

/-- `A101306(n+1)+A184593(n+1)+A184593(n+1)` -/
def P5041783248013668728.Spec : Prop :=
  ∀ n, P5041783248013668728.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P15825420031102006229

`∑[9-record[A000010(n+1)]%10]`
-/

namespace A122754.P15825420031102006229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P15825420031102006229

namespace A122754

/-- `∑[9-record[A000010(n+1)]%10]` -/
def P15825420031102006229.Spec : Prop :=
  ∀ n, P15825420031102006229.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P8627503890177818462

`∑[record[9*A006530(n+2)]%10]`
-/

namespace A122754.P8627503890177818462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P8627503890177818462

namespace A122754

/-- `∑[record[9*A006530(n+2)]%10]` -/
def P8627503890177818462.Spec : Prop :=
  ∀ n, P8627503890177818462.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P15649576657869988324

`∑[record[9*A020639(n+2)]%10]`
-/

namespace A122754.P15649576657869988324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P15649576657869988324

namespace A122754

/-- `∑[record[9*A020639(n+2)]%10]` -/
def P15649576657869988324.Spec : Prop :=
  ∀ n, P15649576657869988324.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P3590745538388740020

`∑[record[9*A014963(n+2)]%10]`
-/

namespace A122754.P3590745538388740020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P3590745538388740020

namespace A122754

/-- `∑[record[9*A014963(n+2)]%10]` -/
def P3590745538388740020.Spec : Prop :=
  ∀ n, P3590745538388740020.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P7785270762618342011

`∑[A251984(A000040(n+1))]`
-/

namespace A122754.P7785270762618342011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P7785270762618342011

namespace A122754

/-- `∑[A251984(A000040(n+1))]` -/
def P7785270762618342011.Spec : Prop :=
  ∀ n, P7785270762618342011.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P14669484660861446921

`∑[A251984(record[A006530(n+2)])]`
-/

namespace A122754.P14669484660861446921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P14669484660861446921

namespace A122754

/-- `∑[A251984(record[A006530(n+2)])]` -/
def P14669484660861446921.Spec : Prop :=
  ∀ n, P14669484660861446921.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P4428713080021100086

`∑[A251984(record[A014963(n+2)])]`
-/

namespace A122754.P4428713080021100086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P4428713080021100086

namespace A122754

/-- `∑[A251984(record[A014963(n+2)])]` -/
def P4428713080021100086.Spec : Prop :=
  ∀ n, P4428713080021100086.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P7773776607227520160

`∑[A251984(A006093(n+1)+1)]`
-/

namespace A122754.P7773776607227520160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P7773776607227520160

namespace A122754

/-- `∑[A251984(A006093(n+1)+1)]` -/
def P7773776607227520160.Spec : Prop :=
  ∀ n, P7773776607227520160.a n = A122754 (n + 1)

end A122754

/-! ## A122754.P725092521121366411

`∑[A251984(record[A000010(n+1)+1])]`
-/

namespace A122754.P725092521121366411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P725092521121366411

namespace A122754

/-- `∑[A251984(record[A000010(n+1)+1])]` -/
def P725092521121366411.Spec : Prop :=
  ∀ n, P725092521121366411.a n = A122754 (n + 1)

end A122754

/-!
# A122755: Let f(m) = 10 - last digit of prime(m). Sequence gives numbers n such that (1/n)*Sum_{ m <= n } f(m) is <= 5.

The programs for A122755, there is no canonical definition to state claims against.
-/

/-! ## A122755.P7065262345651640967

`lt[A184593(n+1), 0]+1`
-/

namespace A122755.P7065262345651640967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184593 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122755.P7065262345651640967

/-! ## A122755.P17807758491804728599

`lt[5*(n+1)-A101306(n+1), 1]+1`
-/

namespace A122755.P17807758491804728599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A101306 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122755.P17807758491804728599

/-! ## A122755.P11246941628490188667

`lt[3, a(n-1)-A277097(n+1)]+1` with `a(0)=0`
-/

namespace A122755.P11246941628490188667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - A277097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122755.P11246941628490188667

/-! ## A122755.P1639913235691732668

`lt[A184593(A028310(n)), 0]`
-/

namespace A122755.P1639913235691732668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184593 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122755.P1639913235691732668

/-! ## A122755.P10223154850297561743

`lt[A122754(n+1)-5*(n+1), A277097(n+1)]`
-/

namespace A122755.P10223154850297561743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122754 (n + 1) - (5 * (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122755.P10223154850297561743

/-!
# A122756: Odd-indexed terms, a(n) = 2^n. Even-indexed terms, a(n) = floor(2^n+2^(n-1)).

The programs for A122756, the canonical program `A122756.P538582825866431459` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122756 has offset 0).

The definition of A122756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122756.P538582825866431459

`4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122756

/-- `4*a(n-2)` -/
def P538582825866431459.Spec : Prop :=
  ∀ n, (P538582825866431459.a n : ℤ) = A122756 n

theorem P538582825866431459.correct : P538582825866431459.Spec := by
  intro n
  simp only [A122756]

end A122756

/-! ## A122756.P15177037528467276194

`∏[4/a(n-1)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A122756.P15177037528467276194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122756.P15177037528467276194

namespace A122756

/-- `∏[4/a(n-1)]` -/
def P15177037528467276194.Spec : Prop :=
  ∀ n, P15177037528467276194.a n = (A122756 n : ℚ)

end A122756

/-! ## A122756.P5508968743539638594

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A122756.P5508968743539638594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A122756.P5508968743539638594

namespace A122756

/-- `a(n-2)/(1/2)²` -/
def P5508968743539638594.Spec : Prop :=
  ∀ n, P5508968743539638594.a n = (A122756 n : ℚ)

end A122756

/-! ## A122756.P14795213001739253143

`(char[2*(n+1)]+2)*2^(n-1)`
-/

namespace A122756.P14795213001739253143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A122756.P14795213001739253143

namespace A122756

/-- `(char[2*(n+1)]+2)*2^(n-1)` -/
def P14795213001739253143.Spec : Prop :=
  ∀ n, P14795213001739253143.a n = (A122756 n : ℚ)

end A122756

/-! ## A122756.P9716885449130985709

`∑[A011782(xor(1, n))]`
-/

namespace A122756.P9716885449130985709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122756.P9716885449130985709

namespace A122756

/-- `∑[A011782(xor(1, n))]` -/
def P9716885449130985709.Spec : Prop :=
  ∀ n, P9716885449130985709.a n = A122756 n

end A122756

/-! ## A122756.P13247089508985947732

`A282005(n)+n%2`
-/

namespace A122756.P13247089508985947732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 n + ((n % 2 : ℕ) : ℤ)

end

end A122756.P13247089508985947732

namespace A122756

/-- `A282005(n)+n%2` -/
def P13247089508985947732.Spec : Prop :=
  ∀ n, P13247089508985947732.a n = A122756 n

end A122756

/-! ## A122756.P18024832114358408644

`A029744(or(1, n)+n)`
-/

namespace A122756.P18024832114358408644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (Nat.lor 1 n + n)

end

end A122756.P18024832114358408644

namespace A122756

/-- `A029744(or(1, n)+n)` -/
def P18024832114358408644.Spec : Prop :=
  ∀ n, P18024832114358408644.a n = A122756 n

end A122756

/-! ## A122756.P8718945217964061149

`record[Δ[A173300(n+2)]]`
-/

namespace A122756.P8718945217964061149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173300 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122756.P8718945217964061149

namespace A122756

/-- `record[Δ[A173300(n+2)]]` -/
def P8718945217964061149.Spec : Prop :=
  ∀ n, P8718945217964061149.a n = A122756 n

end A122756

/-! ## A122756.P6503336078164186474

`floor(A084221(n+1)/2)`
-/

namespace A122756.P6503336078164186474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084221 (n + 1) : ℚ) / 2⌋

end

end A122756.P6503336078164186474

namespace A122756

/-- `floor(A084221(n+1)/2)` -/
def P6503336078164186474.Spec : Prop :=
  ∀ n, P6503336078164186474.a n = A122756 n

end A122756

/-! ## A122756.P7505044440123027722

`2^(n+1)-A158302(n)`
-/

namespace A122756.P7505044440123027722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A158302 n

end

end A122756.P7505044440123027722

namespace A122756

/-- `2^(n+1)-A158302(n)` -/
def P7505044440123027722.Spec : Prop :=
  ∀ n, P7505044440123027722.a n = A122756 n

end A122756

/-! ## A122756.P8093225386571449274

`A154383(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A122756.P8093225386571449274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A154383 n + a (n - 1)

end

end A122756.P8093225386571449274

namespace A122756

/-- `A154383(n)+a(n-1)` -/
def P8093225386571449274.Spec : Prop :=
  ∀ n, P8093225386571449274.a n = A122756 n

end A122756

/-! ## A122756.P3012137668165138567

`record[A164073(char[4*n+1]+n+1)]`
-/

namespace A122756.P3012137668165138567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 ((if ∃ j, f2 j = n then 1 else 0) + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122756.P3012137668165138567

namespace A122756

/-- `record[A164073(char[4*n+1]+n+1)]` -/
def P3012137668165138567.Spec : Prop :=
  ∀ n, P3012137668165138567.a n = A122756 n

end A122756

/-! ## A122756.P14401482198463815994

`A074323(A014601(n))`
-/

namespace A122756.P14401482198463815994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A014601 n).toNat

end

end A122756.P14401482198463815994

namespace A122756

/-- `A074323(A014601(n))` -/
def P14401482198463815994.Spec : Prop :=
  ∀ n, P14401482198463815994.a n = A122756 n

end A122756

/-! ## A122756.P10207449759411869996

`A029744(A042948(n)+1)`
-/

namespace A122756.P10207449759411869996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A042948 n + 1).toNat

end

end A122756.P10207449759411869996

namespace A122756

/-- `A029744(A042948(n)+1)` -/
def P10207449759411869996.Spec : Prop :=
  ∀ n, P10207449759411869996.a n = A122756 n

end A122756

/-! ## A122756.P15581247831569057656

`A029744(A042963(n+1))`
-/

namespace A122756.P15581247831569057656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A042963 (n + 1)).toNat

end

end A122756.P15581247831569057656

namespace A122756

/-- `A029744(A042963(n+1))` -/
def P15581247831569057656.Spec : Prop :=
  ∀ n, P15581247831569057656.a n = A122756 n

end A122756

/-! ## A122756.P5524311685456131301

`A029744(A109613(n)+n)`
-/

namespace A122756.P5524311685456131301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A109613 n + (n : ℤ)).toNat

end

end A122756.P5524311685456131301

namespace A122756

/-- `A029744(A109613(n)+n)` -/
def P5524311685456131301.Spec : Prop :=
  ∀ n, P5524311685456131301.a n = A122756 n

end A122756

/-! ## A122756.P16585456825751526743

`A094359(n)+A084214(n)`
-/

namespace A122756.P16585456825751526743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 n + A084214 n

end

end A122756.P16585456825751526743

namespace A122756

/-- `A094359(n)+A084214(n)` -/
def P16585456825751526743.Spec : Prop :=
  ∀ n, P16585456825751526743.a n = A122756 n

end A122756

/-! ## A122756.P7337096316262052703

`A282005(n)+A000035(n)`
-/

namespace A122756.P7337096316262052703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 n + A000035 n

end

end A122756.P7337096316262052703

namespace A122756

/-- `A282005(n)+A000035(n)` -/
def P7337096316262052703.Spec : Prop :=
  ∀ n, P7337096316262052703.a n = A122756 n

end A122756

/-!
# A122757: Process number as a vertex through put triangular product function: m (In)-> {n-states}->m (Out) T(n,m)=m^2*g(n): g(n)=A084221[n].

The programs for A122757, there is no canonical definition to state claims against.
-/

/-! ## A122757.P14518194708036839804

`A122758(n+1)/2`
-/

namespace A122757.P14518194708036839804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122758 (n + 1) : ℚ) / 2

end

end A122757.P14518194708036839804

/-! ## A122757.P2010695097725111518

`A014682(A122758(n+1))`
-/

namespace A122757.P2010695097725111518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A122758 (n + 1)).toNat

end

end A122757.P2010695097725111518

/-! ## A122757.P7390815424332434182

`(round(sqrt(2*n+1))-1)²*A163241(A059268(n))`
-/

namespace A122757.P7390815424332434182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - 1) ^ 2 * A163241 (A059268 n).toNat

end

end A122757.P7390815424332434182

/-! ## A122757.P12452241580204253559

`A003056(n)²*A122756(A002262(n)+1)/2`
-/

namespace A122757.P12452241580204253559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n ^ 2 * A122756 (A002262 n + 1).toNat : ℚ) / 2

end

end A122757.P12452241580204253559

/-! ## A122757.P11994341497937896589

`A003056(n)²*A163241(A059268(n))%(n+2)²`
-/

namespace A122757.P11994341497937896589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 * Int.tmod (A163241 (A059268 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A122757.P11994341497937896589

/-!
# A122758: Triangle read by rows: T(n,m) = 2*n^2*A084221(n) (n>=0, 0 <= m <= n).

The programs for A122758, the canonical program `A122758.P11142805967211740618` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122758 has offset 1).

The definition of A122758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122758.P11142805967211740618

`A003056(n)²*A122756(A002262(n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122758

/-- `A003056(n)²*A122756(A002262(n)+1)` -/
def P11142805967211740618.Spec : Prop :=
  ∀ n, P11142805967211740618.a n = A122758 (n + 1)

theorem P11142805967211740618.correct : P11142805967211740618.Spec := by
  intro n
  simp only [A122758, Nat.add_sub_cancel]

end A122758

/-! ## A122758.P11272781834504704532

`2*(round(sqrt(2*n+1))-1)²*A163241(A059268(n))`
-/

namespace A122758.P11272781834504704532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - 1) ^ 2 * A163241 (A059268 n).toNat)

end

end A122758.P11272781834504704532

namespace A122758

/-- `2*(round(sqrt(2*n+1))-1)²*A163241(A059268(n))` -/
def P11272781834504704532.Spec : Prop :=
  ∀ n, P11272781834504704532.a n = A122758 (n + 1)

end A122758

/-! ## A122758.P1897242339225388182

`2*2*2*A003056(n)²*A163241(A059268(n))/4`
-/

namespace A122758.P1897242339225388182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 * ((2 * (A003056 n ^ 2 * A163241 (A059268 n).toNat) : ℚ) / 4))

end

end A122758.P1897242339225388182

namespace A122758

/-- `2*2*2*A003056(n)²*A163241(A059268(n))/4` -/
def P1897242339225388182.Spec : Prop :=
  ∀ n, P1897242339225388182.a n = (A122758 (n + 1) : ℚ)

end A122758

/-! ## A122758.P14631178928369923797

`2*A122757(n+1)`
-/

namespace A122758.P14631178928369923797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122757 (n + 1)

end

end A122758.P14631178928369923797

namespace A122758

/-- `2*A122757(n+1)` -/
def P14631178928369923797.Spec : Prop :=
  ∀ n, P14631178928369923797.a n = A122758 (n + 1)

end A122758

/-! ## A122758.P3837933552260214759

`A122757(A000027(n+1))+A122757(n+1)`
-/

namespace A122758.P3837933552260214759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122757 (A000027 (n + 1)).toNat + A122757 (n + 1)

end

end A122758.P3837933552260214759

namespace A122758

/-- `A122757(A000027(n+1))+A122757(n+1)` -/
def P3837933552260214759.Spec : Prop :=
  ∀ n, P3837933552260214759.a n = A122758 (n + 1)

end A122758

/-! ## A122758.P13056205196938434171

`A122757(A090108(n+1))+A122757(n+1)`
-/

namespace A122758.P13056205196938434171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122757 (A090108 (n + 1)).toNat + A122757 (n + 1)

end

end A122758.P13056205196938434171

namespace A122758

/-- `A122757(A090108(n+1))+A122757(n+1)` -/
def P13056205196938434171.Spec : Prop :=
  ∀ n, P13056205196938434171.a n = A122758 (n + 1)

end A122758

/-! ## A122758.P10038203297556041219

`A122757(n+1)+A122757(A130446(n+1))`
-/

namespace A122758.P10038203297556041219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122757 (n + 1) + A122757 (A130446 (n + 1)).toNat

end

end A122758.P10038203297556041219

namespace A122758

/-- `A122757(n+1)+A122757(A130446(n+1))` -/
def P10038203297556041219.Spec : Prop :=
  ∀ n, P10038203297556041219.a n = A122758 (n + 1)

end A122758

/-! ## A122758.P17888957666539048731

`A122757(n+1)+A122757(n+1)+A025439(n)`
-/

namespace A122758.P17888957666539048731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122757 (n + 1) + (A122757 (n + 1) + A025439 n)

end

end A122758.P17888957666539048731

namespace A122758

/-- `A122757(n+1)+A122757(n+1)+A025439(n)` -/
def P17888957666539048731.Spec : Prop :=
  ∀ n, P17888957666539048731.a n = A122758 (n + 1)

end A122758

/-! ## A122758.P9085786540466585173

`A122757(n+1)+A122757(n+1)%A072074(n)`
-/

namespace A122758.P9085786540466585173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122757 (n + 1) + Int.tmod (A122757 (n + 1)) (A072074 n)

end

end A122758.P9085786540466585173

namespace A122758

/-- `A122757(n+1)+A122757(n+1)%A072074(n)` -/
def P9085786540466585173.Spec : Prop :=
  ∀ n, P9085786540466585173.a n = A122758 (n + 1)

end A122758

/-!
# A122759: Triangle T(n,m) read by rows: 3^n if m is odd, 0 if m is even.

The programs for A122759, the canonical program `A122759.P12807643020116895536` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122759 has offset 1).

The definition of A122759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122759.P11705608423757741407

`3^A002262(n)*∑[char[∑[n]]]²%2`
-/

namespace A122759.P11705608423757741407
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 2 : ℕ) : ℚ)

end

end A122759.P11705608423757741407

namespace A122759

/-- `3^A002262(n)*∑[char[∑[n]]]²%2` -/
def P11705608423757741407.Spec : Prop :=
  ∀ n, P11705608423757741407.a n = (A122759 (n + 1) : ℚ)

end A122759

/-! ## A122759.P10988934393521790352

`∑[char[∑[n]]]%2*A000244(n-C(∑[char[∑[n]]], 2))`
-/

namespace A122759.P10988934393521790352
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) * A000244 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2)

end

end A122759.P10988934393521790352

namespace A122759

/-- `∑[char[∑[n]]]%2*A000244(n-C(∑[char[∑[n]]], 2))` -/
def P10988934393521790352.Spec : Prop :=
  ∀ n, P10988934393521790352.a n = A122759 (n + 1)

end A122759

/-! ## A122759.P12807643020116895536

`A254006(A211197(n+1)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A122759

/-- `A254006(A211197(n+1)-1)` -/
def P12807643020116895536.Spec : Prop :=
  ∀ n, P12807643020116895536.a n = A122759 (n + 1)

theorem P12807643020116895536.correct : P12807643020116895536.Spec := by
  intro n
  simp only [A122759, Nat.add_sub_cancel]

end A122759

/-! ## A122759.P2048126616223231528

`A254006(xor(1, A211197(n+1)))`
-/

namespace A122759.P2048126616223231528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (Int.xor 1 (A211197 (n + 1))).toNat

end

end A122759.P2048126616223231528

namespace A122759

/-- `A254006(xor(1, A211197(n+1)))` -/
def P2048126616223231528.Spec : Prop :=
  ∀ n, P2048126616223231528.a n = A122759 (n + 1)

end A122759

/-! ## A122759.P9159714004833470440

`A122761(n)-A122760(n+1)`
-/

namespace A122759.P9159714004833470440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122761 n - A122760 (n + 1)

end

end A122759.P9159714004833470440

namespace A122759

/-- `A122761(n)-A122760(n+1)` -/
def P9159714004833470440.Spec : Prop :=
  ∀ n, P9159714004833470440.a n = A122759 (n + 1)

end A122759

/-! ## A122759.P8787526910474033436

`A057211(n+1)*A122761(n)`
-/

namespace A122759.P8787526910474033436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1) * A122761 n

end

end A122759.P8787526910474033436

namespace A122759

/-- `A057211(n+1)*A122761(n)` -/
def P8787526910474033436.Spec : Prop :=
  ∀ n, P8787526910474033436.a n = A122759 (n + 1)

end A122759

/-! ## A122759.P11766154624924431362

`3^A002262(n)*∑[A197870(n)]`
-/

namespace A122759.P11766154624924431362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A122759.P11766154624924431362

namespace A122759

/-- `3^A002262(n)*∑[A197870(n)]` -/
def P11766154624924431362.Spec : Prop :=
  ∀ n, P11766154624924431362.a n = (A122759 (n + 1) : ℚ)

end A122759

/-! ## A122759.P6959227450036121696

`(1-A057212(n+1))*A122761(n)`
-/

namespace A122759.P6959227450036121696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057212 (n + 1)) * A122761 n

end

end A122759.P6959227450036121696

namespace A122759

/-- `(1-A057212(n+1))*A122761(n)` -/
def P6959227450036121696.Spec : Prop :=
  ∀ n, P6959227450036121696.a n = A122759 (n + 1)

end A122759

/-! ## A122759.P1014746122986508238

`3^A002262(n)*A057211(n+1)`
-/

namespace A122759.P1014746122986508238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A057211 (n + 1) : ℚ)

end

end A122759.P1014746122986508238

namespace A122759

/-- `3^A002262(n)*A057211(n+1)` -/
def P1014746122986508238.Spec : Prop :=
  ∀ n, P1014746122986508238.a n = (A122759 (n + 1) : ℚ)

end A122759

/-! ## A122759.P5429517410673738272

`A084681(A122761(n))`
-/

namespace A122759.P5429517410673738272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A122761 n).toNat

end

end A122759.P5429517410673738272

namespace A122759

/-- `A084681(A122761(n))` -/
def P5429517410673738272.Spec : Prop :=
  ∀ n, P5429517410673738272.a n = A122759 (n + 1)

end A122759

/-!
# A122760: Triangle read by rows: t(n,m) = 2*3^m*(n mod 2).

The programs for A122760, the canonical program `A122760.P12700755839112312451` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122760 has offset 1).

The definition of A122760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122760.P18080860870403366723

`A122761(n)-A122759(n+1)`
-/

namespace A122760.P18080860870403366723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122761 n - A122759 (n + 1)

end

end A122760.P18080860870403366723

namespace A122760

/-- `A122761(n)-A122759(n+1)` -/
def P18080860870403366723.Spec : Prop :=
  ∀ n, P18080860870403366723.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P16786803108604628318

`A057212(n+1)*A122761(n)`
-/

namespace A122760.P16786803108604628318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1) * A122761 n

end

end A122760.P16786803108604628318

namespace A122760

/-- `A057212(n+1)*A122761(n)` -/
def P16786803108604628318.Spec : Prop :=
  ∀ n, P16786803108604628318.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P18292903021287854822

`(1-A057211(n+1))*A122761(n)`
-/

namespace A122760.P18292903021287854822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057211 (n + 1)) * A122761 n

end

end A122760.P18292903021287854822

namespace A122760

/-- `(1-A057211(n+1))*A122761(n)` -/
def P18292903021287854822.Spec : Prop :=
  ∀ n, P18292903021287854822.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P12700755839112312451

`A008776(A002262(n))*A057212(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122760

/-- `A008776(A002262(n))*A057212(n+1)` -/
def P12700755839112312451.Spec : Prop :=
  ∀ n, P12700755839112312451.a n = A122760 (n + 1)

theorem P12700755839112312451.correct : P12700755839112312451.Spec := by
  intro n
  simp only [A122760, Nat.add_sub_cancel]

end A122760

/-! ## A122760.P2423200240781083287

`xor(A122759(A000027(n+1)), A122761(n))`
-/

namespace A122760.P2423200240781083287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122759 (A000027 (n + 1)).toNat) (A122761 n)

end

end A122760.P2423200240781083287

namespace A122760

/-- `xor(A122759(A000027(n+1)), A122761(n))` -/
def P2423200240781083287.Spec : Prop :=
  ∀ n, P2423200240781083287.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P4251129844451286157

`A182522(A211197(n+1))-A122759(n+1)`
-/

namespace A122760.P4251129844451286157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A211197 (n + 1)).toNat - A122759 (n + 1)

end

end A122760.P4251129844451286157

namespace A122760

/-- `A182522(A211197(n+1))-A122759(n+1)` -/
def P4251129844451286157.Spec : Prop :=
  ∀ n, P4251129844451286157.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P8119755631607677980

`A057212(n+1)*A182522(A211197(n+1))`
-/

namespace A122760.P8119755631607677980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1) * A182522 (A211197 (n + 1)).toNat

end

end A122760.P8119755631607677980

namespace A122760

/-- `A057212(n+1)*A182522(A211197(n+1))` -/
def P8119755631607677980.Spec : Prop :=
  ∀ n, P8119755631607677980.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P7565544264741138857

`A038754(A211197(n+1)-1)-A122759(n+1)`
-/

namespace A122760.P7565544264741138857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A211197 (n + 1) - 1).toNat - A122759 (n + 1)

end

end A122760.P7565544264741138857

namespace A122760

/-- `A038754(A211197(n+1)-1)-A122759(n+1)` -/
def P7565544264741138857.Spec : Prop :=
  ∀ n, P7565544264741138857.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P9210805284380614250

`A038754(A211197(n+1)-1)*A057212(n+1)`
-/

namespace A122760.P9210805284380614250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A211197 (n + 1) - 1).toNat * A057212 (n + 1)

end

end A122760.P9210805284380614250

namespace A122760

/-- `A038754(A211197(n+1)-1)*A057212(n+1)` -/
def P9210805284380614250.Spec : Prop :=
  ∀ n, P9210805284380614250.a n = A122760 (n + 1)

end A122760

/-! ## A122760.P11397179362204645326

`∑{d}[A182522(A211197(n+1)), A300822(#)]`
-/

namespace A122760.P11397179362204645326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A211197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300822 d

end

end A122760.P11397179362204645326

namespace A122760

/-- `∑{d}[A182522(A211197(n+1)), A300822(#)]` -/
def P11397179362204645326.Spec : Prop :=
  ∀ n, P11397179362204645326.a n = A122760 (n + 1)

end A122760

/-!
# A122761: Triangular read by rows: T(n, k) = 3^k * (1 + (n mod 2)).

The programs for A122761, the canonical program `A122761.P412540581536329218` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122761 has offset 0).

The definition of A122761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122761.P412540581536329218

`A182522(A211197(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A122761

/-- `A182522(A211197(n+1))` -/
def P412540581536329218.Spec : Prop :=
  ∀ n, P412540581536329218.a n = A122761 n

theorem P412540581536329218.correct : P412540581536329218.Spec := by
  intro n
  simp only [A122761]

end A122761

/-! ## A122761.P13660300627414745975

`A038754(A211197(n+1)-1)`
-/

namespace A122761.P13660300627414745975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A211197 (n + 1) - 1).toNat

end

end A122761.P13660300627414745975

namespace A122761

/-- `A038754(A211197(n+1)-1)` -/
def P13660300627414745975.Spec : Prop :=
  ∀ n, P13660300627414745975.a n = A122761 n

end A122761

/-! ## A122761.P1790594458940365066

`A122760(n+1)+A122759(n+1)`
-/

namespace A122761.P1790594458940365066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122760 (n + 1) + A122759 (n + 1)

end

end A122761.P1790594458940365066

namespace A122761

/-- `A122760(n+1)+A122759(n+1)` -/
def P1790594458940365066.Spec : Prop :=
  ∀ n, P1790594458940365066.a n = A122761 n

end A122761

/-! ## A122761.P6639659584832110977

`(A057212(n+1)+1)*3^A002262(n)`
-/

namespace A122761.P6639659584832110977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057212 (n + 1) + 1 : ℚ) * (3 : ℚ) ^ (A002262 n : ℤ)

end

end A122761.P6639659584832110977

namespace A122761

/-- `(A057212(n+1)+1)*3^A002262(n)` -/
def P6639659584832110977.Spec : Prop :=
  ∀ n, P6639659584832110977.a n = (A122761 n : ℚ)

end A122761

/-! ## A122761.P15064773027034823172

`A000244(A002262(n))*A201208(n+1)`
-/

namespace A122761.P15064773027034823172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A201208 (n + 1)

end

end A122761.P15064773027034823172

namespace A122761

/-- `A000244(A002262(n))*A201208(n+1)` -/
def P15064773027034823172.Spec : Prop :=
  ∀ n, P15064773027034823172.a n = A122761 n

end A122761

/-! ## A122761.P14764675257438049054

`A100851(n)%(3^(A002262(n)+1))`
-/

namespace A122761.P14764675257438049054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100851 n) (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A002262 n + 1 : ℤ)))

end

end A122761.P14764675257438049054

namespace A122761

/-- `A100851(n)%(3^(A002262(n)+1))` -/
def P14764675257438049054.Spec : Prop :=
  ∀ n, P14764675257438049054.a n = A122761 n

end A122761

/-! ## A122761.P16897190329248470514

`A100851(n)%A000244(A002260(n+1))`
-/

namespace A122761.P16897190329248470514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100851 n) (A000244 (A002260 (n + 1)).toNat)

end

end A122761.P16897190329248470514

namespace A122761

/-- `A100851(n)%A000244(A002260(n+1))` -/
def P16897190329248470514.Spec : Prop :=
  ∀ n, P16897190329248470514.a n = A122761 n

end A122761

/-! ## A122761.P16802988003278263292

`gcd(2, ∑[char[∑[n]]])*A003961(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A122761.P16802988003278263292
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A003961 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A122761.P16802988003278263292

namespace A122761

/-- `gcd(2, ∑[char[∑[n]]])*A003961(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P16802988003278263292.Spec : Prop :=
  ∀ n, P16802988003278263292.a n = A122761 n

end A122761

/-! ## A122761.P9128833549183592313

`A003961(A059268(n))*A201208(n+1)`
-/

namespace A122761.P9128833549183592313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A059268 n).toNat * A201208 (n + 1)

end

end A122761.P9128833549183592313

namespace A122761

/-- `A003961(A059268(n))*A201208(n+1)` -/
def P9128833549183592313.Spec : Prop :=
  ∀ n, P9128833549183592313.a n = A122761 n

end A122761

/-! ## A122761.P2631861758043294289

`A000265(A036561(n))*A201208(n+1)`
-/

namespace A122761.P2631861758043294289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A201208 (n + 1)

end

end A122761.P2631861758043294289

namespace A122761

/-- `A000265(A036561(n))*A201208(n+1)` -/
def P2631861758043294289.Spec : Prop :=
  ∀ n, P2631861758043294289.a n = A122761 n

end A122761

/-!
# A122762: a(n) = a(n-2) + a(n-4) + a(n-5) + a(n-7) + a(n-8) + a(n-10) for n >= 10, with a(0) = ... = a(9) = 1.

The programs for A122762, the canonical program `A122762.P3827486472221282419` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122762 has offset 0).

The definition of A122762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-4)+a(n-5)+a(n-7)+a(n-8)+a(n-10)` (program `A122762.P3827486472221282419`, by `A122762.P3827486472221282419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122762.P3827486472221282419

`a(n-2)+a(n-4)+a(n-5)+a(n-7)+a(n-8)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122762

/-- `a(n-2)+a(n-4)+a(n-5)+a(n-7)+a(n-8)+a(n-10)` -/
def P3827486472221282419.Spec : Prop :=
  ∀ n, (P3827486472221282419.a n : ℤ) = A122762 n

theorem P3827486472221282419.correct : P3827486472221282419.Spec := by
  intro n
  simp only [A122762]

end A122762

/-!
# A122763: A093364 with duplicates removed.

The programs for A122763, there is no canonical definition to state claims against.
-/

/-! ## A122763.P4520080076035959630

`record[A093364(n+1)-char[4]]`
-/

namespace A122763.P4520080076035959630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093364 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122763.P4520080076035959630

/-! ## A122763.P2778163243973564006

`record[A093364(gcd(n, floor(ϕ*(n+1))))]`
-/

namespace A122763.P2778163243973564006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093364 (Int.gcd (n : ℤ) ⌊Real.goldenRatio * (n + 1 : ℝ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122763.P2778163243973564006

/-! ## A122763.P8503992350749822403

`record[A093364(n%floor(sqrt(n+1))+1)]`
-/

namespace A122763.P8503992350749822403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093364 (n % Nat.sqrt (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122763.P8503992350749822403

/-! ## A122763.P14460391499714200315

`record[A093364(floor((xor(1, n)+1)/4)+1)]`
-/

namespace A122763.P14460391499714200315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093364 (⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122763.P14460391499714200315

/-! ## A122763.P4972502588678700131

`record[A093364(A033930(n))]`
-/

namespace A122763.P4972502588678700131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093364 (A033930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122763.P4972502588678700131

/-!
# A122764: Initial terms of arithmetic progression of primes in A005115 with duplicates removed.

The programs for A122764, there is no canonical definition to state claims against.
-/

/-! ## A122764.P16721898102046136794

`A113827(A194391(n+1))`
-/

namespace A122764.P16721898102046136794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113827 (A194391 (n + 1)).toNat

end

end A122764.P16721898102046136794

/-! ## A122764.P10876719251175167421

`A113827(comp[n*A076241(2*(n+1))])`
-/

namespace A122764.P10876719251175167421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076241 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113827 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A122764.P10876719251175167421

/-! ## A122764.P8054566257505969473

`A113827(lt[1-2*n%2, A340035(n+1)])`
-/

namespace A122764.P8054566257505969473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (n % 2) : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113827 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122764.P8054566257505969473

/-! ## A122764.P11132117796593834860

`A113827(lt[A083365(n), A185314(n)])`
-/

namespace A122764.P11132117796593834860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083365 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113827 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122764.P11132117796593834860

/-!
# A122765: Triangle read by rows: Let p(k, x) = x*p(k-1, x) - p(k-2, x). Then T(k,x) = dp(k,x)/dx.

The programs for A122765, the canonical program `A122765.P16247163414762864933` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122765 has offset 1).

The definition of A122765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122765.P16247163414762864933

`A008619(A051162(n))*A130777(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A122765

/-- `A008619(A051162(n))*A130777(n)` -/
def P16247163414762864933.Spec : Prop :=
  ∀ n, P16247163414762864933.a n = A122765 (n + 1)

theorem P16247163414762864933.correct : P16247163414762864933.Spec := by
  intro n
  simp only [A122765, Nat.add_sub_cancel]

end A122765

/-! ## A122765.P6934329206345753908

`A008619(A134478(n))*A130777(n)`
-/

namespace A122765.P6934329206345753908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A134478 n).toNat * A130777 n

end

end A122765.P6934329206345753908

namespace A122765

/-- `A008619(A134478(n))*A130777(n)` -/
def P6934329206345753908.Spec : Prop :=
  ∀ n, P6934329206345753908.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P6167306999135611048

`A065033(A094727(n+1))*A130777(n)`
-/

namespace A122765.P6167306999135611048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A094727 (n + 1)).toNat * A130777 n

end

end A122765.P6167306999135611048

namespace A122765

/-- `A065033(A094727(n+1))*A130777(n)` -/
def P6167306999135611048.Spec : Prop :=
  ∀ n, P6167306999135611048.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P12178377322674572119

`A002260(n+1)*A130777(∑[A035214(n)])`
-/

namespace A122765.P12178377322674572119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122765.P12178377322674572119

namespace A122765

/-- `A002260(n+1)*A130777(∑[A035214(n)])` -/
def P12178377322674572119.Spec : Prop :=
  ∀ n, P12178377322674572119.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P8306717283190759242

`A002260(n+1)*A130777(A014132(n+1))`
-/

namespace A122765.P8306717283190759242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130777 (A014132 (n + 1)).toNat

end

end A122765.P8306717283190759242

namespace A122765

/-- `A002260(n+1)*A130777(A014132(n+1))` -/
def P8306717283190759242.Spec : Prop :=
  ∀ n, P8306717283190759242.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P5968373604913855407

`A001057(A094727(n+1))*A267482(n)`
-/

namespace A122765.P5968373604913855407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A094727 (n + 1)).toNat * A267482 n

end

end A122765.P5968373604913855407

namespace A122765

/-- `A001057(A094727(n+1))*A267482(n)` -/
def P5968373604913855407.Spec : Prop :=
  ∀ n, P5968373604913855407.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P18162956315015753254

`A140756(n+1)*A267482(A014132(n+1))`
-/

namespace A122765.P18162956315015753254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) * A267482 (A014132 (n + 1)).toNat

end

end A122765.P18162956315015753254

namespace A122765

/-- `A140756(n+1)*A267482(A014132(n+1))` -/
def P18162956315015753254.Spec : Prop :=
  ∀ n, P18162956315015753254.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P16462782260064518827

`A209279(n+1)*A267482(A007401(n+1))`
-/

namespace A122765.P16462782260064518827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) * A267482 (A007401 (n + 1)).toNat

end

end A122765.P16462782260064518827

namespace A122765

/-- `A209279(n+1)*A267482(A007401(n+1))` -/
def P16462782260064518827.Spec : Prop :=
  ∀ n, P16462782260064518827.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P15245360841107900177

`A000005(A059268(n))*A130777(A014132(n+1))`
-/

namespace A122765.P15245360841107900177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A130777 (A014132 (n + 1)).toNat

end

end A122765.P15245360841107900177

namespace A122765

/-- `A000005(A059268(n))*A130777(A014132(n+1))` -/
def P15245360841107900177.Spec : Prop :=
  ∀ n, P15245360841107900177.a n = A122765 (n + 1)

end A122765

/-! ## A122765.P4232026576139217598

`A000194(A194061(n+1))*A130777(n)`
-/

namespace A122765.P4232026576139217598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A194061 (n + 1)).toNat * A130777 n

end

end A122765.P4232026576139217598

namespace A122765

/-- `A000194(A194061(n+1))*A130777(n)` -/
def P4232026576139217598.Spec : Prop :=
  ∀ n, P4232026576139217598.a n = A122765 (n + 1)

end A122765

/-!
# A122766: Triangle read by rows: let p(n, x) = x*p(n-1, x) - p(n-2, x), then T(n, x) = d^2/dx^2 (p(n, x)).

The programs for A122766, the canonical program `A122766.P7340364842892422262` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122766 has offset 1).

The definition of A122766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122766.P7340364842892422262

`A008619(A108872(n+1))*A122765(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A122766

/-- `A008619(A108872(n+1))*A122765(n+1)` -/
def P7340364842892422262.Spec : Prop :=
  ∀ n, P7340364842892422262.a n = A122766 (n + 1)

theorem P7340364842892422262.correct : P7340364842892422262.Spec := by
  intro n
  simp only [A122766, Nat.add_sub_cancel]

end A122766

/-!
# A122767: Expansion of 2*x/(1-6*x-120*x^2+300*x^3).

The programs for A122767, there is no canonical definition to state claims against.
-/

/-! ## A122767.P711417848933005089

`A181830(∑[A222763(n+1)²])`
-/

namespace A122767.P711417848933005089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222763 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181830 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122767.P711417848933005089

/-!
# A122768: Number of combinations which can be taken from the integer partitions of n. Total number of cases in the (n,m)-fragmentation process.

The programs for A122768, there is no canonical definition to state claims against.
-/

/-! ## A122768.P8468683971364163763

`A000712(n)-A000041(n)`
-/

namespace A122768.P8468683971364163763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A000041 n

end

end A122768.P8468683971364163763

/-! ## A122768.P18402303723488709393

`∑[A000990(n)]-A000041(n)`
-/

namespace A122768.P18402303723488709393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000041 n

end

end A122768.P18402303723488709393

/-! ## A122768.P15118632818934206901

`A000712(n)-∑[A002865(n)]`
-/

namespace A122768.P15118632818934206901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122768.P15118632818934206901

/-! ## A122768.P4352718244339557581

`A000712(n)-(A000065(n)+1)`
-/

namespace A122768.P4352718244339557581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A000065 n + 1)

end

end A122768.P4352718244339557581

/-! ## A122768.P2472637684766410139

`A000712(n)-A035363(2*n)`
-/

namespace A122768.P2472637684766410139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A035363 (2 * n)

end

end A122768.P2472637684766410139

/-! ## A122768.P10669280584981829957

`A000712(n)-A139582(n)/2`
-/

namespace A122768.P10669280584981829957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000712 n : ℚ) - (A139582 n : ℚ) / 2

end

end A122768.P10669280584981829957

/-! ## A122768.P7715155781201634571

`A179906(n+1)-A000041(n+1)`
-/

namespace A122768.P7715155781201634571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179906 (n + 1) - A000041 (n + 1)

end

end A122768.P7715155781201634571

/-! ## A122768.P493107321007583907

`A000712(n)-(A047967(n)+A000009(n))`
-/

namespace A122768.P493107321007583907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A047967 n + A000009 n)

end

end A122768.P493107321007583907

/-! ## A122768.P1936178027131146628

`A000712(n)-(A027193(n)+A027187(n))`
-/

namespace A122768.P1936178027131146628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A027193 n + A027187 n)

end

end A122768.P1936178027131146628

/-! ## A122768.P16355881513922257424

`A000712(n)-(A086543(n)+A035363(n))`
-/

namespace A122768.P16355881513922257424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A086543 n + A035363 n)

end

end A122768.P16355881513922257424

/-! ## A122768.P9041942841813511062

`A000712(n)-(A295341(n)+A000726(n))`
-/

namespace A122768.P9041942841813511062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A295341 n + A000726 n)

end

end A122768.P9041942841813511062

/-! ## A122768.P11388185556218752378

`A000712(n)-(A239262(n)+A239260(n))`
-/

namespace A122768.P11388185556218752378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A239262 n + A239260 n)

end

end A122768.P11388185556218752378

/-! ## A122768.P18253124268148071587

`A000712(n)-(A239263(n)+A239259(n))`
-/

namespace A122768.P18253124268148071587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A239263 n + A239259 n)

end

end A122768.P18253124268148071587

/-! ## A122768.P4774025231137299665

`A182616(n)-A304710(n)`
-/

namespace A122768.P4774025231137299665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n - A304710 n

end

end A122768.P4774025231137299665

/-! ## A122768.P15993126352480010942

`A000712(n)+A182616(n)-A058696(n)`
-/

namespace A122768.P15993126352480010942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n + (A182616 n - A058696 n)

end

end A122768.P15993126352480010942

/-! ## A122768.P10013335441764314848

`A058696(n)-(A304710(n)+A000041(n))`
-/

namespace A122768.P10013335441764314848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - (A304710 n + A000041 n)

end

end A122768.P10013335441764314848

/-! ## A122768.P17225469107847351671

`A000712(n)-A143229(n)/A000070(n)`
-/

namespace A122768.P17225469107847351671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000712 n : ℚ) - (A143229 n : ℚ) / (A000070 n : ℚ)

end

end A122768.P17225469107847351671

/-! ## A122768.P5828169355218378232

`A000712(n)-(A241639(n)+A241636(n))`
-/

namespace A122768.P5828169355218378232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A241639 n + A241636 n)

end

end A122768.P5828169355218378232

/-! ## A122768.P8639669342841752838

`A000712(n)-(A241640(n)+A241637(n))`
-/

namespace A122768.P8639669342841752838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - (A241640 n + A241637 n)

end

end A122768.P8639669342841752838

/-! ## A122768.P14790502640201391850

`A000712(n)-A100824(2*n)`
-/

namespace A122768.P14790502640201391850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A100824 (2 * n)

end

end A122768.P14790502640201391850

/-!
# A122769: Numbers k such that k^2 is of the form 3*m^2 + 2*m + 1 (A056109).

The programs for A122769, the canonical program `A122769.P6537851562643021096` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122769 has offset 1).

The definition of A122769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122769.P6537851562643021096

`14*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122769

/-- `14*a(n-1)-a(n-2)` -/
def P6537851562643021096.Spec : Prop :=
  ∀ n, P6537851562643021096.a n = A122769 (n + 1)

theorem P6537851562643021096.correct : P6537851562643021096.Spec := by
  intro n
  simp only [A122769, Nat.add_sub_cancel]

end A122769

/-! ## A122769.P17010174108583477790

`record[round(a(n-1)/(sqrt(3)-2))]` with `a(0)=1, a(1)=11`
-/

namespace A122769.P17010174108583477790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122769.P17010174108583477790

namespace A122769

/-- `record[round(a(n-1)/(sqrt(3)-2))]` -/
def P17010174108583477790.Spec : Prop :=
  ∀ n, P17010174108583477790.a n = A122769 (n + 1)

end A122769

/-! ## A122769.P18008445280723555104

`Δ[A046174(n)]`
-/

namespace A122769.P18008445280723555104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122769.P18008445280723555104

namespace A122769

/-- `Δ[A046174(n)]` -/
def P18008445280723555104.Spec : Prop :=
  ∀ n, P18008445280723555104.a n = A122769 (n + 1)

end A122769

/-! ## A122769.P14625255193229320041

`A140827(6*n)`
-/

namespace A122769.P14625255193229320041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140827 (6 * n)

end

end A122769.P14625255193229320041

namespace A122769

/-- `A140827(6*n)` -/
def P14625255193229320041.Spec : Prop :=
  ∀ n, P14625255193229320041.a n = A122769 (n + 1)

end A122769

/-! ## A122769.P15424047243774174157

`A157126(6*n)`
-/

namespace A122769.P15424047243774174157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157126 (6 * n)

end

end A122769.P15424047243774174157

namespace A122769

/-- `A157126(6*n)` -/
def P15424047243774174157.Spec : Prop :=
  ∀ n, P15424047243774174157.a n = A122769 (n + 1)

end A122769

/-! ## A122769.P8983193504273098569

`A001835(Δ[n²])`
-/

namespace A122769.P8983193504273098569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122769.P8983193504273098569

namespace A122769

/-- `A001835(Δ[n²])` -/
def P8983193504273098569.Spec : Prop :=
  ∀ n, P8983193504273098569.a n = A122769 (n + 1)

end A122769

/-! ## A122769.P11029975487232933466

`A079935(Δ[n²])`
-/

namespace A122769.P11029975487232933466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122769.P11029975487232933466

namespace A122769

/-- `A079935(Δ[n²])` -/
def P11029975487232933466.Spec : Prop :=
  ∀ n, P11029975487232933466.a n = A122769 (n + 1)

end A122769

/-! ## A122769.P13869329398206165820

`A002530(4*n+1)`
-/

namespace A122769.P13869329398206165820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (4 * n + 1)

end

end A122769.P13869329398206165820

namespace A122769

/-- `A002530(4*n+1)` -/
def P13869329398206165820.Spec : Prop :=
  ∀ n, P13869329398206165820.a n = A122769 (n + 1)

end A122769

/-! ## A122769.P8688926095463874160

`A122573(4*(n+1))`
-/

namespace A122769.P8688926095463874160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (4 * (n + 1))

end

end A122769.P8688926095463874160

namespace A122769

/-- `A122573(4*(n+1))` -/
def P8688926095463874160.Spec : Prop :=
  ∀ n, P8688926095463874160.a n = A122769 (n + 1)

end A122769

/-!
# A122770: Numbers k such that A056109(k) is a square.

The programs for A122770, the canonical program `A122770.P6266035480450876959` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122770 has offset 0).

The definition of A122770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122770.P6266035480450876959

`14*a(n-1)-a(n-2)+4` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122770

/-- `14*a(n-1)-a(n-2)+4` -/
def P6266035480450876959.Spec : Prop :=
  ∀ n, P6266035480450876959.a n = A122770 n

theorem P6266035480450876959.correct : P6266035480450876959.Spec := by
  intro n
  simp only [A122770]

end A122770

/-! ## A122770.P4148647939763044448

`2*A011916(n)`
-/

namespace A122770.P4148647939763044448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011916 n

end

end A122770.P4148647939763044448

namespace A122770

/-- `2*A011916(n)` -/
def P4148647939763044448.Spec : Prop :=
  ∀ n, P4148647939763044448.a n = A122770 n

end A122770

/-! ## A122770.P16893337424051399170

`A217233(2*n)-1`
-/

namespace A122770.P16893337424051399170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 (2 * n) - 1

end

end A122770.P16893337424051399170

namespace A122770

/-- `A217233(2*n)-1` -/
def P16893337424051399170.Spec : Prop :=
  ∀ n, P16893337424051399170.a n = A122770 n

end A122770

/-! ## A122770.P10147712383538372825

`2*A109437(2*n)`
-/

namespace A122770.P10147712383538372825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109437 (2 * n)

end

end A122770.P10147712383538372825

namespace A122770

/-- `2*A109437(2*n)` -/
def P10147712383538372825.Spec : Prop :=
  ∀ n, P10147712383538372825.a n = A122770 n

end A122770

/-! ## A122770.P12850365655620665538

`floor(Δ[A046175(n)/3])`
-/

namespace A122770.P12850365655620665538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046175 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A122770.P12850365655620665538

namespace A122770

/-- `floor(Δ[A046175(n)/3])` -/
def P12850365655620665538.Spec : Prop :=
  ∀ n, P12850365655620665538.a n = A122770 n

end A122770

/-! ## A122770.P10781781262898116665

`floor(A001834(2*n)/3)`
-/

namespace A122770.P10781781262898116665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001834 (2 * n) : ℚ) / 3⌋

end

end A122770.P10781781262898116665

namespace A122770

/-- `floor(A001834(2*n)/3)` -/
def P10781781262898116665.Spec : Prop :=
  ∀ n, P10781781262898116665.a n = A122770 n

end A122770

/-! ## A122770.P3889576779410758695

`A001921(n)-A001353(n)²`
-/

namespace A122770.P3889576779410758695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001921 n - A001353 n ^ 2

end

end A122770.P3889576779410758695

namespace A122770

/-- `A001921(n)-A001353(n)²` -/
def P3889576779410758695.Spec : Prop :=
  ∀ n, P3889576779410758695.a n = A122770 n

end A122770

/-! ## A122770.P16542398247861785479

`record[A041017(n)-A242728(n)]`
-/

namespace A122770.P16542398247861785479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 n - A242728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122770.P16542398247861785479

namespace A122770

/-- `record[A041017(n)-A242728(n)]` -/
def P16542398247861785479.Spec : Prop :=
  ∀ n, P16542398247861785479.a n = A122770 n

end A122770

/-! ## A122770.P12814755435991213800

`lcm(Δ[A052530(n)], A052530(n))`
-/

namespace A122770.P12814755435991213800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A052530 n)

end

end A122770.P12814755435991213800

namespace A122770

/-- `lcm(Δ[A052530(n)], A052530(n))` -/
def P12814755435991213800.Spec : Prop :=
  ∀ n, (P12814755435991213800.a n : ℤ) = A122770 n

end A122770

/-! ## A122770.P4574275320239355835

`A001353(n)*A003699(n+1)`
-/

namespace A122770.P4574275320239355835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n * A003699 (n + 1)

end

end A122770.P4574275320239355835

namespace A122770

/-- `A001353(n)*A003699(n+1)` -/
def P4574275320239355835.Spec : Prop :=
  ∀ n, P4574275320239355835.a n = A122770 n

end A122770

/-!
# A122772: Numbers k, excluding powers of 2, such that a regular k-sided polygon can be constructed with a ruler and compass.

The programs for A122772, there is no canonical definition to state claims against.
-/

/-! ## A122772.P6707833820695344583

`A003401(comp[∑[n]]+1)`
-/

namespace A122772.P6707833820695344583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A122772.P6707833820695344583

/-! ## A122772.P11365531450109333436

`eq[1, A049115(n+1)]+1`
-/

namespace A122772.P11365531450109333436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122772.P11365531450109333436

/-! ## A122772.P13803541861456277814

`eq[1, A049115(A004277(n))]`
-/

namespace A122772.P13803541861456277814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122772.P13803541861456277814

/-! ## A122772.P423969908070027798

`eq[1, A049115(A008574(n))]`
-/

namespace A122772.P423969908070027798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122772.P423969908070027798

/-! ## A122772.P10049042116702146594

`eq[1, A049115(A028310(n))]`
-/

namespace A122772.P10049042116702146594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122772.P10049042116702146594

/-! ## A122772.P7469305565685073917

`record[A052410(A003401(n+3))]`
-/

namespace A122772.P7469305565685073917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A003401 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122772.P7469305565685073917

/-! ## A122772.P14076007649463872108

`lt[A010060(n), char[A099884(n)]]`
-/

namespace A122772.P14076007649463872108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122772.P14076007649463872108

/-! ## A122772.P15023358660509631365

`lt[A010060(n), char[A276618(n)]]`
-/

namespace A122772.P15023358660509631365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122772.P15023358660509631365

/-! ## A122772.P11459375707646526642

`lt[A268726(n), char[A099884(n)]]`
-/

namespace A122772.P11459375707646526642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122772.P11459375707646526642

/-! ## A122772.P8541017695235710340

`lt[A268726(n), char[A276618(n)]]`
-/

namespace A122772.P8541017695235710340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122772.P8541017695235710340

/-!
# A122774: Triangle of bifactorial numbers, n B m = (2(n-m)-1)!! (2(n-1))!! / (2(n-m))!!, read by rows.

The programs for A122774, there is no canonical definition to state claims against.
-/

/-! ## A122774.P3575737575012777863

`A059268(n)*A108032(n)`
-/

namespace A122774.P3575737575012777863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A108032 n

end

end A122774.P3575737575012777863

/-! ## A122774.P15816213416980636512

`A368235(n)/A007318(n)`
-/

namespace A122774.P15816213416980636512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368235 n : ℚ) / (A007318 n : ℚ)

end

end A122774.P15816213416980636512

/-! ## A122774.P6482997308703908999

`lcm(A108032(n), A138773(n))`
-/

namespace A122774.P6482997308703908999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108032 n) (A138773 n)

end

end A122774.P6482997308703908999

/-! ## A122774.P16112126477056226998

`2^A002262(n)*A108032(n)`
-/

namespace A122774.P16112126477056226998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A108032 n : ℚ)

end

end A122774.P16112126477056226998

/-! ## A122774.P1744336089560207861

`A000079(A002262(n))*A108032(n)`
-/

namespace A122774.P1744336089560207861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A108032 n

end

end A122774.P1744336089560207861

/-!
# A122776: Expansion of eta(q^3)eta(q^5)eta(q^6)eta(q^10) + eta(q)eta(q^2)eta(q^15)eta(q^30) in powers of q.

The programs for A122776, there is no canonical definition to state claims against.
-/

/-! ## A122776.P10100867436632980399

`A286137(n+1)+A030218(n+1)`
-/

namespace A122776.P10100867436632980399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (n + 1) + A030218 (n + 1)

end

end A122776.P10100867436632980399

/-! ## A122776.P4791055694501277146

`∑{d}[n+1, A030184(#)*A130706((n+1)/#-1)]`
-/

namespace A122776.P4791055694501277146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030184 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A122776.P4791055694501277146

/-! ## A122776.P12156528619617363273

`-A030184(2*(n+1))`
-/

namespace A122776.P12156528619617363273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030184 (2 * (n + 1))

end

end A122776.P12156528619617363273

/-! ## A122776.P7224555481005690395

`n*A130706(n+1)-A030184(2*(n+1))`
-/

namespace A122776.P7224555481005690395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130706 (n + 1) - A030184 (2 * (n + 1))

end

end A122776.P7224555481005690395

/-! ## A122776.P6632884965992234301

`2-(A030184(2*(n+1))+A020639(2*(n+1)))`
-/

namespace A122776.P6632884965992234301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A030184 (2 * (n + 1)) + A020639 (2 * (n + 1)))

end

end A122776.P6632884965992234301

/-! ## A122776.P9723166765827105849

`A030184(A020639(2*(n+1)))*A030184(2*(n+1))`
-/

namespace A122776.P9723166765827105849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A020639 (2 * (n + 1))).toNat * A030184 (2 * (n + 1))

end

end A122776.P9723166765827105849

/-! ## A122776.P535168659680794936

`A030218(n+1)-A030218(3*(n+1))`
-/

namespace A122776.P535168659680794936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (n + 1) - A030218 (3 * (n + 1))

end

end A122776.P535168659680794936

/-! ## A122776.P5286038743892679090

`A286137(n+1)-A286137(3*(n+1))`
-/

namespace A122776.P5286038743892679090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (n + 1) - A286137 (3 * (n + 1))

end

end A122776.P5286038743892679090

/-! ## A122776.P3664627710920319320

`A030184(A317312(n+1))`
-/

namespace A122776.P3664627710920319320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (A317312 (n + 1)).toNat

end

end A122776.P3664627710920319320

/-! ## A122776.P11401635147598517249

`A030184(6*(n+1))`
-/

namespace A122776.P11401635147598517249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (6 * (n + 1))

end

end A122776.P11401635147598517249

/-!
# A122777: Coefficients of L-series for elliptic curve "30a1": y^2 + x * y + y = x^3 + x + 2.

The programs for A122777, there is no canonical definition to state claims against.
-/

/-! ## A122777.P5933740774509454135

`A030218(n+1)-A286137(n+1)`
-/

namespace A122777.P5933740774509454135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (n + 1) - A286137 (n + 1)

end

end A122777.P5933740774509454135

/-! ## A122777.P2990014766789692271

`A030218(n+1)+A030218(n+1)-A122776(n+1)`
-/

namespace A122777.P2990014766789692271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (n + 1) + (A030218 (n + 1) - A122776 (n + 1))

end

end A122777.P2990014766789692271

/-! ## A122777.P10104372763488201369

`A122776(n+1)-(A286137(n+1)+A286137(n+1))`
-/

namespace A122777.P10104372763488201369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122776 (n + 1) - (A286137 (n + 1) + A286137 (n + 1))

end

end A122777.P10104372763488201369

/-! ## A122777.P5938902801622109249

`A122779(A068217(n+1))`
-/

namespace A122777.P5938902801622109249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122779 (A068217 (n + 1)).toNat

end

end A122777.P5938902801622109249

/-! ## A122777.P13965178316088315720

`A122779(2*(n+1))`
-/

namespace A122777.P13965178316088315720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122779 (2 * (n + 1))

end

end A122777.P13965178316088315720

/-! ## A122777.P1776119681865383986

`A286128(2*(n+1))-A286129(2*(n+1))`
-/

namespace A122777.P1776119681865383986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (2 * (n + 1)) - A286129 (2 * (n + 1))

end

end A122777.P1776119681865383986

/-! ## A122777.P11911125778843440948

`A030218(n+1)+A030218(3*(n+1))`
-/

namespace A122777.P11911125778843440948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (n + 1) + A030218 (3 * (n + 1))

end

end A122777.P11911125778843440948

/-! ## A122777.P16421335378748172446

`A286137(A008587(n+1))-A286137(n+1)`
-/

namespace A122777.P16421335378748172446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (A008587 (n + 1)).toNat - A286137 (n + 1)

end

end A122777.P16421335378748172446

/-! ## A122777.P13214227049142903667

`A286137(A008706(n+1))-A286137(n+1)`
-/

namespace A122777.P13214227049142903667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (A008706 (n + 1)).toNat - A286137 (n + 1)

end

end A122777.P13214227049142903667

/-! ## A122777.P506738136863502036

`A286137(A283442(n+1))-A286137(n+1)`
-/

namespace A122777.P506738136863502036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (A283442 (n + 1)).toNat - A286137 (n + 1)

end

end A122777.P506738136863502036

/-!
# A122778: a(n) = Sum_{k=0..n} A(n,k)*n^k where A(n,k) are Eulerian numbers.

The programs for A122778, there is no canonical definition to state claims against.
-/

/-! ## A122778.P6370450768806585309

`A326323(∑[4*n])`
-/

namespace A122778.P6370450768806585309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122778.P6370450768806585309

/-! ## A122778.P13478943987885235916

`A332700(∑[4*n])`
-/

namespace A122778.P13478943987885235916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122778.P13478943987885235916

/-! ## A122778.P15448767691082296545

`A122020(A028310(n))/A028310(n)`
-/

namespace A122778.P15448767691082296545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122020 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A122778.P15448767691082296545

/-! ## A122778.P6271811715549261449

`A122020(A085158(n))/A085158(n)`
-/

namespace A122778.P6271811715549261449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122020 (A085158 n).toNat : ℚ) / (A085158 n : ℚ)

end

end A122778.P6271811715549261449

/-!
# A122780: Nonprimes k such that 3^k == 3 (mod k).

The programs for A122780, there is no canonical definition to state claims against.
-/

/-! ## A122780.P15413728265275050323

`∪[A153514(n+1), A217465(n+1)]%A309284(n+1)`
-/

namespace A122780.P15413728265275050323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217465 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A309284 (n + 1))

end

end A122780.P15413728265275050323

/-! ## A122780.P18001822056255004139

`A153514(A292125(n+1))`
-/

namespace A122780.P18001822056255004139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153514 (A292125 (n + 1)).toNat

end

end A122780.P18001822056255004139

/-!
# A122782: Nonprimes n such that 5^n==5 (mod n).

The programs for A122782, there is no canonical definition to state claims against.
-/

/-! ## A122782.P824716395197940777

`∪[A002997(n+1), A153515(n+1)]`
-/

namespace A122782.P824716395197940777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122782.P824716395197940777

/-! ## A122782.P11946672036311342691

`filter[A123091(n+1), A005171(#)]`
-/

namespace A122782.P11946672036311342691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A122782.P11946672036311342691

/-! ## A122782.P9018886424653188957

`∩[A018252(n+1), A123091(n+1)]`
-/

namespace A122782.P9018886424653188957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122782.P9018886424653188957

/-! ## A122782.P11738324693858336153

`∩[A123091(n+1), A141468(n+1)]`
-/

namespace A122782.P11738324693858336153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122782.P11738324693858336153

/-! ## A122782.P12983878997622379257

`record[A144907(A123091(n+1))]`
-/

namespace A122782.P12983878997622379257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (A123091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122782.P12983878997622379257

/-!
# A122783: Nonprimes k > 0 such that 6^k==6 (mod k).

The programs for A122783, there is no canonical definition to state claims against.
-/

/-! ## A122783.P9469033791534581241

`record[A340679(record[A097621(n+1)²])]`
-/

namespace A122783.P9469033791534581241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122783.P9469033791534581241

/-! ## A122783.P6431981481012317130

`record[gcd(A191278(2*(n+2)), A318256(n))]`
-/

namespace A122783.P6431981481012317130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191278 (2 * (n + 2))) (A318256 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122783.P6431981481012317130

/-!
# A122785: Nonprimes m such that 8^m == 8 (mod m).

The programs for A122785, there is no canonical definition to state claims against.
-/

/-! ## A122785.P3956894046273184936

`A165412(lcm(A048098(n+1), A194838(n+1)))`
-/

namespace A122785.P3956894046273184936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (Int.lcm (A048098 (n + 1)) (A194838 (n + 1)))

end

end A122785.P3956894046273184936

/-!
# A122786: Nonprimes n such that 9^n == 9 (mod n).

The programs for A122786, there is no canonical definition to state claims against.
-/

/-! ## A122786.P208666198499490837

`∩[A211772(n+1), A246088(n+1)]`
-/

namespace A122786.P208666198499490837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122786.P208666198499490837

/-! ## A122786.P287641098496704996

`∩[A211772(n+1), A246092(n+1)]`
-/

namespace A122786.P287641098496704996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122786.P287641098496704996

/-!
# A122787: a(n) is the smallest prime p such that the multiplicative order of 10 modulo p is 3^n.

The programs for A122787, there is no canonical definition to state claims against.
-/

/-! ## A122787.P5479673902160325844

`A007138(3^n)`
-/

namespace A122787.P5479673902160325844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007138 (3 ^ n)

end

end A122787.P5479673902160325844

/-!
# A122788: (1,3)-entry of the 3 X 3 matrix M^n, where M = {{0, -1, 1}, {1, 1, 0}, {0, 1, 1}}.

The programs for A122788, the canonical program `A122788.P6107605111448105120` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122788 has offset 0).

The definition of A122788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122788.P6107605111448105120

`2*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122788

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P6107605111448105120.Spec : Prop :=
  ∀ n, P6107605111448105120.a n = A122788 n

theorem P6107605111448105120.correct : P6107605111448105120.Spec := by
  intro n
  simp only [A122788]

end A122788

/-! ## A122788.P6133542417797499307

`a(n-1)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A122788.P6133542417797499307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 1) + 2 * a (n - 4)

end

end A122788.P6133542417797499307

namespace A122788

/-- `a(n-1)+2*a(n-4)` -/
def P6133542417797499307.Spec : Prop :=
  ∀ n, (P6133542417797499307.a n : ℤ) = A122788 n

end A122788

/-! ## A122788.P5787074146719957853

`a(n-4)+a(n-1)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A122788.P5787074146719957853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 4) + (a (n - 1) + a (n - 4))

end

end A122788.P5787074146719957853

namespace A122788

/-- `a(n-4)+a(n-1)+a(n-4)` -/
def P5787074146719957853.Spec : Prop :=
  ∀ n, (P5787074146719957853.a n : ℤ) = A122788 n

end A122788

/-! ## A122788.P14340251372152307286

`2*(a(n-1)-(a(n-2)-a(n-3)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A122788.P14340251372152307286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * (a (n - 1) - (a (n - 2) - a (n - 3)))

end

end A122788.P14340251372152307286

namespace A122788

/-- `2*(a(n-1)-(a(n-2)-a(n-3)))` -/
def P14340251372152307286.Spec : Prop :=
  ∀ n, P14340251372152307286.a n = A122788 n

theorem P14340251372152307286.correct : P14340251372152307286.Spec := by
  intro n
  simp only [A122788, Nat.add_sub_cancel, A122788.P14340251372152307286.a, A122788.P6107605111448105120.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122788

/-! ## A122788.P9617216433447012808

`Δ[A078003(n+2)/2]`
-/

namespace A122788.P9617216433447012808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078003 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122788.P9617216433447012808

namespace A122788

/-- `Δ[A078003(n+2)/2]` -/
def P9617216433447012808.Spec : Prop :=
  ∀ n, P9617216433447012808.a n = (A122788 n : ℚ)

end A122788

/-! ## A122788.P8947510611940369094

`(∑[A078003(n)]-A078003(n+1))/2`
-/

namespace A122788.P8947510611940369094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A078003 (n + 1) : ℤ) : ℚ) / 2

end

end A122788.P8947510611940369094

namespace A122788

/-- `(∑[A078003(n)]-A078003(n+1))/2` -/
def P8947510611940369094.Spec : Prop :=
  ∀ n, P8947510611940369094.a n = (A122788 n : ℚ)

end A122788

/-! ## A122788.P1565538895324778776

`A077943(n+1)/2-A078003(n+1)`
-/

namespace A122788.P1565538895324778776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077943 (n + 1) : ℚ) / 2 - (A078003 (n + 1) : ℚ)

end

end A122788.P1565538895324778776

namespace A122788

/-- `A077943(n+1)/2-A078003(n+1)` -/
def P1565538895324778776.Spec : Prop :=
  ∀ n, P1565538895324778776.a n = (A122788 n : ℚ)

end A122788

/-! ## A122788.P13091066316821281012

`A104767(n+1)+A078003(n)-A077943(n+1)`
-/

namespace A122788.P13091066316821281012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 1) + (A078003 n - A077943 (n + 1))

end

end A122788.P13091066316821281012

namespace A122788

/-- `A104767(n+1)+A078003(n)-A077943(n+1)` -/
def P13091066316821281012.Spec : Prop :=
  ∀ n, P13091066316821281012.a n = A122788 n

end A122788

/-! ## A122788.P10075100669704215338

`Δ[Δ[A077943(n+1)/2]]`
-/

namespace A122788.P10075100669704215338
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077943 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122788.P10075100669704215338

namespace A122788

/-- `Δ[Δ[A077943(n+1)/2]]` -/
def P10075100669704215338.Spec : Prop :=
  ∀ n, P10075100669704215338.a n = (A122788 n : ℚ)

end A122788

/-! ## A122788.P15647938435007340777

`Δ[A077858(n)/2-A077943(n)]`
-/

namespace A122788.P15647938435007340777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077858 n : ℚ) / 2 - (A077943 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122788.P15647938435007340777

namespace A122788

/-- `Δ[A077858(n)/2-A077943(n)]` -/
def P15647938435007340777.Spec : Prop :=
  ∀ n, P15647938435007340777.a n = (A122788 n : ℚ)

end A122788

/-!
# A122789: The (1,4)-entry in the matrix M^n, where M is the 4 X 4 matrix {{0, -1, -1, 1}, {1, -1, 0, 0}, {0, 1, 1, 0}, {0, 0, 1, 1 }}.

The programs for A122789, the canonical program `A122789.P13175499221104242808` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122789 has offset 0).

The definition of A122789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122789.P13175499221104242808

`a(n-1)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122789

/-- `a(n-1)+a(n-4)` -/
def P13175499221104242808.Spec : Prop :=
  ∀ n, (P13175499221104242808.a n : ℤ) = A122789 n

theorem P13175499221104242808.correct : P13175499221104242808.Spec := by
  intro n
  simp only [A122789]

end A122789

/-! ## A122789.P18323807795697519148

`A003269(n)-A017898(n+1)`
-/

namespace A122789.P18323807795697519148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n - A017898 (n + 1)

end

end A122789.P18323807795697519148

namespace A122789

/-- `A003269(n)-A017898(n+1)` -/
def P18323807795697519148.Spec : Prop :=
  ∀ n, P18323807795697519148.a n = A122789 n

end A122789

/-! ## A122789.P9529713391159116951

`A017898(n+3)-A017898(n+1)`
-/

namespace A122789.P9529713391159116951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 3) - A017898 (n + 1)

end

end A122789.P9529713391159116951

namespace A122789

/-- `A017898(n+3)-A017898(n+1)` -/
def P9529713391159116951.Spec : Prop :=
  ∀ n, P9529713391159116951.a n = A122789 n

end A122789

/-! ## A122789.P11680992783621159872

`A003269(n)-A003269(A233583(n+1)-2)`
-/

namespace A122789.P11680992783621159872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n - A003269 (A233583 (n + 1) - 2).toNat

end

end A122789.P11680992783621159872

namespace A122789

/-- `A003269(n)-A003269(A233583(n+1)-2)` -/
def P11680992783621159872.Spec : Prop :=
  ∀ n, P11680992783621159872.a n = A122789 n

end A122789

/-! ## A122789.P15583754126485981222

`A003269(n)+A003269(n)-A103632(n+1)`
-/

namespace A122789.P15583754126485981222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n + (A003269 n - A103632 (n + 1))

end

end A122789.P15583754126485981222

namespace A122789

/-- `A003269(n)+A003269(n)-A103632(n+1)` -/
def P15583754126485981222.Spec : Prop :=
  ∀ n, P15583754126485981222.a n = A122789 n

end A122789

/-! ## A122789.P10392084492071574604

`A003269(n)-Δ[A003269(n+1)]`
-/

namespace A122789.P10392084492071574604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n - (f1 (n + 1) - f1 n)

end

end A122789.P10392084492071574604

namespace A122789

/-- `A003269(n)-Δ[A003269(n+1)]` -/
def P10392084492071574604.Spec : Prop :=
  ∀ n, P10392084492071574604.a n = A122789 n

end A122789

/-! ## A122789.P9716760424895732535

`Δ[A017898(n+1)+A017898(n+2)]`
-/

namespace A122789.P9716760424895732535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) + A017898 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122789.P9716760424895732535

namespace A122789

/-- `Δ[A017898(n+1)+A017898(n+2)]` -/
def P9716760424895732535.Spec : Prop :=
  ∀ n, P9716760424895732535.a n = A122789 n

end A122789

/-! ## A122789.P113346593709634334

`Δ[A078467(n)-A003269(n)]`
-/

namespace A122789.P113346593709634334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078467 n - A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122789.P113346593709634334

namespace A122789

/-- `Δ[A078467(n)-A003269(n)]` -/
def P113346593709634334.Spec : Prop :=
  ∀ n, P113346593709634334.a n = A122789 n

end A122789

/-! ## A122789.P17332599210046623785

`A078467(n+1)-A003269(n+3)`
-/

namespace A122789.P17332599210046623785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078467 (n + 1) - A003269 (n + 3)

end

end A122789.P17332599210046623785

namespace A122789

/-- `A078467(n+1)-A003269(n+3)` -/
def P17332599210046623785.Spec : Prop :=
  ∀ n, P17332599210046623785.a n = A122789 n

end A122789

/-! ## A122789.P11104581908593468103

`A078467(n+1)-(A103632(n+1)+A103632(n))`
-/

namespace A122789.P11104581908593468103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078467 (n + 1) - (A103632 (n + 1) + A103632 n)

end

end A122789.P11104581908593468103

namespace A122789

/-- `A078467(n+1)-(A103632(n+1)+A103632(n))` -/
def P11104581908593468103.Spec : Prop :=
  ∀ n, P11104581908593468103.a n = A122789 n

end A122789

/-! ## A122789.P3536155613381977103

`A003269(n)+A098578(n)-A168639(n)`
-/

namespace A122789.P3536155613381977103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n + (A098578 n - A168639 n)

end

end A122789.P3536155613381977103

namespace A122789

/-- `A003269(n)+A098578(n)-A168639(n)` -/
def P3536155613381977103.Spec : Prop :=
  ∀ n, P3536155613381977103.a n = A122789 n

end A122789

/-! ## A122789.P18008478332909007860

`A003269(n)-Δ[Δ[A098578(n)]]`
-/

namespace A122789.P18008478332909007860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n - (f1 (n + 1) - f1 n)

end

end A122789.P18008478332909007860

namespace A122789

/-- `A003269(n)-Δ[Δ[A098578(n)]]` -/
def P18008478332909007860.Spec : Prop :=
  ∀ n, P18008478332909007860.a n = A122789 n

end A122789

/-!
# A122792: Expansion of eta(q^2)^2/(eta(q)eta(q^3)) in powers of q.

The programs for A122792, there is no canonical definition to state claims against.
-/

/-! ## A122792.P17865728656801168299

`abs(A139136(n))`
-/

namespace A122792.P17865728656801168299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139136 n|

end

end A122792.P17865728656801168299

/-! ## A122792.P4026084980144803791

`A033999(n)*A139136(n)`
-/

namespace A122792.P4026084980144803791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139136 n

end

end A122792.P4026084980144803791

/-! ## A122792.P8726252023864720800

`A139137(n)/A057079(n)`
-/

namespace A122792.P8726252023864720800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 n : ℚ) / (A057079 n : ℚ)

end

end A122792.P8726252023864720800

/-! ## A122792.P15245696721423157193

`A139137(n)/A132954(n)`
-/

namespace A122792.P15245696721423157193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 n : ℚ) / (A132954 n : ℚ)

end

end A122792.P15245696721423157193

/-! ## A122792.P5099771758638928460

`A252706(n)/A131713(n)`
-/

namespace A122792.P5099771758638928460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252706 n : ℚ) / (A131713 n : ℚ)

end

end A122792.P5099771758638928460

/-! ## A122792.P5445032484021270371

`gcd(A000038(n), A139136(n))`
-/

namespace A122792.P5445032484021270371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A139136 n)

end

end A122792.P5445032484021270371

/-! ## A122792.P12802870368254438153

`lcm(A010892(n), A139136(n))`
-/

namespace A122792.P12802870368254438153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A139136 n)

end

end A122792.P12802870368254438153

/-! ## A122792.P4172441160493897834

`A252706(n)/(2-A057079(n)²)`
-/

namespace A122792.P4172441160493897834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252706 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A122792.P4172441160493897834

/-! ## A122792.P558009200681403972

`A252706(n)/(2-A132954(n)²)`
-/

namespace A122792.P558009200681403972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252706 n : ℚ) / (2 - A132954 n ^ 2 : ℚ)

end

end A122792.P558009200681403972

/-! ## A122792.P14653904782417824883

`gcd(A139137(n)+A139136(n), A139137(n))`
-/

namespace A122792.P14653904782417824883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139137 n + A139136 n) (A139137 n)

end

end A122792.P14653904782417824883

/-! ## A122792.P11303525897017740729

`A057079(n+2)*A139136(n)`
-/

namespace A122792.P11303525897017740729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A139136 n

end

end A122792.P11303525897017740729

/-! ## A122792.P2657962224726964238

`A097197(n)/A139135(n)*A139136(n)`
-/

namespace A122792.P2657962224726964238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097197 n : ℚ) / (A139135 n : ℚ) * (A139136 n : ℚ)

end

end A122792.P2657962224726964238

/-! ## A122792.P16663817544861205333

`A139136(n)*A293306(n)/A385520(n)`
-/

namespace A122792.P16663817544861205333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 n * A293306 n : ℚ) / (A385520 n : ℚ)

end

end A122792.P16663817544861205333

/-! ## A122792.P11477082594535965095

`A139136(n)/A320098(n)*A320968(n)`
-/

namespace A122792.P11477082594535965095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139136 n : ℚ) / (A320098 n : ℚ) * (A320968 n : ℚ)

end

end A122792.P11477082594535965095

/-! ## A122792.P12474508879598084751

`A252706(n)/A057079(4*n)`
-/

namespace A122792.P12474508879598084751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252706 n : ℚ) / (A057079 (4 * n) : ℚ)

end

end A122792.P12474508879598084751

/-!
# A122793: Connell sum sequence (partial sums of the Connell sequence).

The programs for A122793, the canonical program `A122793.P1326162538501970736` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122793 has offset 1).

The definition of A122793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122793.P13775673986069850929

`∑[∑[2-char[∑[n]]]]`
-/

namespace A122793.P13775673986069850929
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122793.P13775673986069850929

namespace A122793

/-- `∑[∑[2-char[∑[n]]]]` -/
def P13775673986069850929.Spec : Prop :=
  ∀ n, P13775673986069850929.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P13209961440651457935

`∑[3*(n+1)]-∑[comp[C(n, 2)]]`
-/

namespace A122793.P13209961440651457935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A122793.P13209961440651457935

namespace A122793

/-- `∑[3*(n+1)]-∑[comp[C(n, 2)]]` -/
def P13209961440651457935.Spec : Prop :=
  ∀ n, P13209961440651457935.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P10063201581501607135

`∑[comp[comp[C(n, 2)]+n]]+n+1`
-/

namespace A122793.P10063201581501607135
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A122793.P10063201581501607135

namespace A122793

/-- `∑[comp[comp[C(n, 2)]+n]]+n+1` -/
def P10063201581501607135.Spec : Prop :=
  ∀ n, (P10063201581501607135.a n : ℤ) = A122793 (n + 1)

end A122793

/-! ## A122793.P11293390314159539382

`(n+1)²-∑[comp[∑[n]]%(n+2)]`
-/

namespace A122793.P11293390314159539382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A122793.P11293390314159539382

namespace A122793

/-- `(n+1)²-∑[comp[∑[n]]%(n+2)]` -/
def P11293390314159539382.Spec : Prop :=
  ∀ n, P11293390314159539382.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P18399958089630759591

`∑[4*n+3]%∑[comp[∑[n]]+n]`
-/

namespace A122793.P18399958089630759591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A122793.P18399958089630759591

namespace A122793

/-- `∑[4*n+3]%∑[comp[∑[n]]+n]` -/
def P18399958089630759591.Spec : Prop :=
  ∀ n, (P18399958089630759591.a n : ℤ) = A122793 (n + 1)

end A122793

/-! ## A122793.P1755225150573770081

`a(n-1)+comp[comp[∑[n]]+n]+1` with `a(0)=1`
-/

namespace A122793.P1755225150573770081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A122793.P1755225150573770081

namespace A122793

/-- `a(n-1)+comp[comp[∑[n]]+n]+1` -/
def P1755225150573770081.Spec : Prop :=
  ∀ n, (P1755225150573770081.a n : ℤ) = A122793 (n + 1)

end A122793

/-! ## A122793.P714684631642852094

`lcm(n+1, n+2)-∑[round(sqrt(2*(n+1)))]`
-/

namespace A122793.P714684631642852094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122793.P714684631642852094

namespace A122793

/-- `lcm(n+1, n+2)-∑[round(sqrt(2*(n+1)))]` -/
def P714684631642852094.Spec : Prop :=
  ∀ n, P714684631642852094.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P1326162538501970736

`(n+1)²-∑[A003056(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122793

/-- `(n+1)²-∑[A003056(n)]` -/
def P1326162538501970736.Spec : Prop :=
  ∀ n, P1326162538501970736.a n = A122793 (n + 1)

theorem P1326162538501970736.correct : P1326162538501970736.Spec := by
  intro n
  simp only [A122793, Nat.add_sub_cancel]

end A122793

/-! ## A122793.P6794088426183637314

`(n+1)²-A006463(n+1)`
-/

namespace A122793.P6794088426183637314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A006463 (n + 1)

end

end A122793.P6794088426183637314

namespace A122793

/-- `(n+1)²-A006463(n+1)` -/
def P6794088426183637314.Spec : Prop :=
  ∀ n, P6794088426183637314.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P12900593938767190674

`A001614(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A122793.P12900593938767190674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001614 (n + 1) + a (n - 1)

end

end A122793.P12900593938767190674

namespace A122793

/-- `A001614(n+1)+a(n-1)` -/
def P12900593938767190674.Spec : Prop :=
  ∀ n, P12900593938767190674.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P10158542377759848537

`(n+1)*(n+2)-∑[A002024(n+1)]`
-/

namespace A122793.P10158542377759848537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122793.P10158542377759848537

namespace A122793

/-- `(n+1)*(n+2)-∑[A002024(n+1)]` -/
def P10158542377759848537.Spec : Prop :=
  ∀ n, P10158542377759848537.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P17040531185852903823

`A000217(n+1)+A000217(n)-A006463(n+1)`
-/

namespace A122793.P17040531185852903823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A006463 (n + 1))

end

end A122793.P17040531185852903823

namespace A122793

/-- `A000217(n+1)+A000217(n)-A006463(n+1)` -/
def P17040531185852903823.Spec : Prop :=
  ∀ n, P17040531185852903823.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P11777698635616491610

`A000217(n+1)+A000217(n+1)-A060432(n+1)`
-/

namespace A122793.P11777698635616491610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A060432 (n + 1))

end

end A122793.P11777698635616491610

namespace A122793

/-- `A000217(n+1)+A000217(n+1)-A060432(n+1)` -/
def P11777698635616491610.Spec : Prop :=
  ∀ n, P11777698635616491610.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P12250318194286968892

`∑[A001614(n+1)]*A060680(2*(n+2))`
-/

namespace A122793.P12250318194286968892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A060680 (2 * (n + 2))

end

end A122793.P12250318194286968892

namespace A122793

/-- `∑[A001614(n+1)]*A060680(2*(n+2))` -/
def P12250318194286968892.Spec : Prop :=
  ∀ n, P12250318194286968892.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P14318921989363556052

`record[A211343(n+1)²-n]`
-/

namespace A122793.P14318921989363556052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211343 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122793.P14318921989363556052

namespace A122793

/-- `record[A211343(n+1)²-n]` -/
def P14318921989363556052.Spec : Prop :=
  ∀ n, P14318921989363556052.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P638298602338327188

`record[A286013(n+1)²-n]`
-/

namespace A122793.P638298602338327188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286013 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122793.P638298602338327188

namespace A122793

/-- `record[A286013(n+1)²-n]` -/
def P638298602338327188.Spec : Prop :=
  ∀ n, P638298602338327188.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P1551117983054325106

`record[A236104(n+1)-n]`
-/

namespace A122793.P1551117983054325106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122793.P1551117983054325106

namespace A122793

/-- `record[A236104(n+1)-n]` -/
def P1551117983054325106.Spec : Prop :=
  ∀ n, P1551117983054325106.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P11624440832340165043

`record[A236630(n+1)-n]`
-/

namespace A122793.P11624440832340165043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236630 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122793.P11624440832340165043

namespace A122793

/-- `record[A236630(n+1)-n]` -/
def P11624440832340165043.Spec : Prop :=
  ∀ n, P11624440832340165043.a n = A122793 (n + 1)

end A122793

/-! ## A122793.P17229769950875766628

`record[A235791(n+1)²-n]`
-/

namespace A122793.P17229769950875766628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122793.P17229769950875766628

namespace A122793

/-- `record[A235791(n+1)²-n]` -/
def P17229769950875766628.Spec : Prop :=
  ∀ n, P17229769950875766628.a n = A122793 (n + 1)

end A122793

/-!
# A122794: Connell (3,2)-sum sequence (partial sums of the (3,2)-Connell sequence).

The programs for A122794, the canonical program `A122794.P6646855538255076634` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122794 has offset 1).

The definition of A122794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122794.P10855250903651370908

`∑[∑[3-2*char[n²]]]`
-/

namespace A122794.P10855250903651370908
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122794.P10855250903651370908

namespace A122794

/-- `∑[∑[3-2*char[n²]]]` -/
def P10855250903651370908.Spec : Prop :=
  ∀ n, P10855250903651370908.a n = A122794 (n + 1)

end A122794

/-! ## A122794.P6646855538255076634

`∑[2*(n-floor(sqrt(n)))]+C(n+2, 2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122794

/-- `∑[2*(n-floor(sqrt(n)))]+C(n+2, 2)` -/
def P6646855538255076634.Spec : Prop :=
  ∀ n, P6646855538255076634.a n = A122794 (n + 1)

theorem P6646855538255076634.correct : P6646855538255076634.Spec := by
  intro n
  simp only [A122794, Nat.add_sub_cancel]

end A122794

/-! ## A122794.P11582744079967798669

`a(n-1)+2*(n-floor(sqrt(n)))+n+1` with `a(0)=1`
-/

namespace A122794.P11582744079967798669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * ((n : ℤ) - (Nat.sqrt n : ℤ)) + (n + 1 : ℤ))

end

end A122794.P11582744079967798669

namespace A122794

/-- `a(n-1)+2*(n-floor(sqrt(n)))+n+1` -/
def P11582744079967798669.Spec : Prop :=
  ∀ n, P11582744079967798669.a n = A122794 (n + 1)

end A122794

/-! ## A122794.P18177826043878707741

`root(∑[A045928(n+1)], 2)²`
-/

namespace A122794.P18177826043878707741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045928 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A122794.P18177826043878707741

namespace A122794

/-- `root(∑[A045928(n+1)], 2)²` -/
def P18177826043878707741.Spec : Prop :=
  ∀ n, P18177826043878707741.a n = (A122794 (n + 1) : ℝ)

end A122794

/-! ## A122794.P6944634149204812012

`∑[A122800(n+1)]+∑[n]`
-/

namespace A122794.P6944634149204812012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122800 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A122794.P6944634149204812012

namespace A122794

/-- `∑[A122800(n+1)]+∑[n]` -/
def P6944634149204812012.Spec : Prop :=
  ∀ n, P6944634149204812012.a n = A122794 (n + 1)

end A122794

/-! ## A122794.P2050793541080735549

`∑[∑[3-A000122(n)]]-(n+1)`
-/

namespace A122794.P2050793541080735549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A122794.P2050793541080735549

namespace A122794

/-- `∑[∑[3-A000122(n)]]-(n+1)` -/
def P2050793541080735549.Spec : Prop :=
  ∀ n, P2050793541080735549.a n = A122794 (n + 1)

end A122794

/-! ## A122794.P3908881717867554787

`∑[3*n+2]-∑[A001650(n+1)]`
-/

namespace A122794.P3908881717867554787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A122794.P3908881717867554787

namespace A122794

/-- `∑[3*n+2]-∑[A001650(n+1)]` -/
def P3908881717867554787.Spec : Prop :=
  ∀ n, P3908881717867554787.a n = A122794 (n + 1)

end A122794

/-! ## A122794.P17323688460059487903

`A000217(n+1)+∑[2*(n-floor(sqrt(n)))]`
-/

namespace A122794.P17323688460059487903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.sqrt n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122794.P17323688460059487903

namespace A122794

/-- `A000217(n+1)+∑[2*(n-floor(sqrt(n)))]` -/
def P17323688460059487903.Spec : Prop :=
  ∀ n, P17323688460059487903.a n = A122794 (n + 1)

end A122794

/-! ## A122794.P1131567702464920280

`3*C(n+2, 2)-A005843(∑[A003059(n+1)])`
-/

namespace A122794.P1131567702464920280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 2 : ℤ) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122794.P1131567702464920280

namespace A122794

/-- `3*C(n+2, 2)-A005843(∑[A003059(n+1)])` -/
def P1131567702464920280.Spec : Prop :=
  ∀ n, P1131567702464920280.a n = A122794 (n + 1)

end A122794

/-!
# A122795: Connell (5,3)-sum sequence (partial sums of the (5,3)-Connell sequence).

The programs for A122795, the canonical program `A122795.P9852274582566200938` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122795 has offset 1).

The definition of A122795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122795.P9852274582566200938

`∑[A045929(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122795

/-- `∑[A045929(n+1)]` -/
def P9852274582566200938.Spec : Prop :=
  ∀ n, P9852274582566200938.a n = A122795 (n + 1)

theorem P9852274582566200938.correct : P9852274582566200938.Spec := by
  intro n
  simp only [A122795, Nat.add_sub_cancel]

end A122795

/-! ## A122795.P2418174703427370153

`∑[A122798(n+1)+n]`
-/

namespace A122795.P2418174703427370153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122798 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P2418174703427370153

namespace A122795

/-- `∑[A122798(n+1)+n]` -/
def P2418174703427370153.Spec : Prop :=
  ∀ n, P2418174703427370153.a n = A122795 (n + 1)

end A122795

/-! ## A122795.P4148801979398400676

`∑[4*A180446(n)+n+1]`
-/

namespace A122795.P4148801979398400676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A180446 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P4148801979398400676

namespace A122795

/-- `∑[4*A180446(n)+n+1]` -/
def P4148801979398400676.Spec : Prop :=
  ∀ n, P4148801979398400676.a n = A122795 (n + 1)

end A122795

/-! ## A122795.P10833812169452615959

`∑[∑[5^(1-char[A000326(n)])]]`
-/

namespace A122795.P10833812169452615959
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (1 - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P10833812169452615959

namespace A122795

/-- `∑[∑[5^(1-char[A000326(n)])]]` -/
def P10833812169452615959.Spec : Prop :=
  ∀ n, P10833812169452615959.a n = (A122795 (n + 1) : ℚ)

end A122795

/-! ## A122795.P1909742865667703246

`∑[4*(n-A180447(n))+n+1]`
-/

namespace A122795.P1909742865667703246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - A180447 n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P1909742865667703246

namespace A122795

/-- `∑[4*(n-A180447(n))+n+1]` -/
def P1909742865667703246.Spec : Prop :=
  ∀ n, P1909742865667703246.a n = A122795 (n + 1)

end A122795

/-! ## A122795.P16467823969475965337

`(ϕ²-ϕ)*∑[A045929(Δ[n²]-n)]`
-/

namespace A122795.P16467823969475965337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045929 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio ^ 2 - Real.goldenRatio) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A122795.P16467823969475965337

namespace A122795

/-- `(ϕ²-ϕ)*∑[A045929(Δ[n²]-n)]` -/
def P16467823969475965337.Spec : Prop :=
  ∀ n, P16467823969475965337.a n = (A122795 (n + 1) : ℝ)

end A122795

/-! ## A122795.P9564888237909771977

`∑[record[A045929(A331300(n))]]`
-/

namespace A122795.P9564888237909771977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045929 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P9564888237909771977

namespace A122795

/-- `∑[record[A045929(A331300(n))]]` -/
def P9564888237909771977.Spec : Prop :=
  ∀ n, P9564888237909771977.a n = A122795 (n + 1)

end A122795

/-! ## A122795.P12739754357408722723

`∑[A016813(A180446(n))+n]`
-/

namespace A122795.P12739754357408722723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A180446 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P12739754357408722723

namespace A122795

/-- `∑[A016813(A180446(n))+n]` -/
def P12739754357408722723.Spec : Prop :=
  ∀ n, P12739754357408722723.a n = A122795 (n + 1)

end A122795

/-! ## A122795.P6724036339306299841

`∑[record[A045929(A133310(n))]]`
-/

namespace A122795.P6724036339306299841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045929 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P6724036339306299841

namespace A122795

/-- `∑[record[A045929(A133310(n))]]` -/
def P6724036339306299841.Spec : Prop :=
  ∀ n, P6724036339306299841.a n = A122795 (n + 1)

end A122795

/-! ## A122795.P9256750101234420466

`∑[A005408(2*A180446(n))+n]`
-/

namespace A122795.P9256750101234420466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A180446 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122795.P9256750101234420466

namespace A122795

/-- `∑[A005408(2*A180446(n))+n]` -/
def P9256750101234420466.Spec : Prop :=
  ∀ n, P9256750101234420466.a n = A122795 (n + 1)

end A122795

/-!
# A122796: Connell (3,5)-sum sequence (partial sums of the (3,5)-Connell sequence).

The programs for A122796, the canonical program `A122796.P14610223443420944346` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122796 has offset 1).

The definition of A122796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122796.P14610223443420944346

`∑[A045930(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122796

/-- `∑[A045930(n+1)]` -/
def P14610223443420944346.Spec : Prop :=
  ∀ n, P14610223443420944346.a n = A122796 (n + 1)

theorem P14610223443420944346.correct : P14610223443420944346.Spec := by
  intro n
  simp only [A122796, Nat.add_sub_cancel]

end A122796

/-! ## A122796.P2899659841988335723

`∑[A122799(n+1)+n]`
-/

namespace A122796.P2899659841988335723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122799 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P2899659841988335723

namespace A122796

/-- `∑[A122799(n+1)+n]` -/
def P2899659841988335723.Spec : Prop :=
  ∀ n, P2899659841988335723.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P13127992134846409788

`∑[A045930(Δ[n²]-n)]-and(2, n²)`
-/

namespace A122796.P13127992134846409788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 2 (n ^ 2) : ℤ)

end

end A122796.P13127992134846409788

namespace A122796

/-- `∑[A045930(Δ[n²]-n)]-and(2, n²)` -/
def P13127992134846409788.Spec : Prop :=
  ∀ n, P13127992134846409788.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P8772941538297204791

`∑[record[A045930(A291766(n))]]`
-/

namespace A122796.P8772941538297204791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P8772941538297204791

namespace A122796

/-- `∑[record[A045930(A291766(n))]]` -/
def P8772941538297204791.Spec : Prop :=
  ∀ n, P8772941538297204791.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P8118963858357006831

`∑[A016885(n)-2*A183296(n+1)]`
-/

namespace A122796.P8118963858357006831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 2 * A183296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P8118963858357006831

namespace A122796

/-- `∑[A016885(n)-2*A183296(n+1)]` -/
def P8118963858357006831.Spec : Prop :=
  ∀ n, P8118963858357006831.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P6020850363332776832

`∑[A016885(n)-A005843(A183296(n+1))]`
-/

namespace A122796.P6020850363332776832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A005843 (A183296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P6020850363332776832

namespace A122796

/-- `∑[A016885(n)-A005843(A183296(n+1))]` -/
def P6020850363332776832.Spec : Prop :=
  ∀ n, P6020850363332776832.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P4054777362436623623

`∑[A131507(∑[1-A038569(n)+n])+n]`
-/

namespace A122796.P4054777362436623623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038569 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P4054777362436623623

namespace A122796

/-- `∑[A131507(∑[1-A038569(n)+n])+n]` -/
def P4054777362436623623.Spec : Prop :=
  ∀ n, P4054777362436623623.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P6772796929795733671

`A028310(∑[A045930(Δ[n²]-n)])`
-/

namespace A122796.P6772796929795733671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122796.P6772796929795733671

namespace A122796

/-- `A028310(∑[A045930(Δ[n²]-n)])` -/
def P6772796929795733671.Spec : Prop :=
  ∀ n, P6772796929795733671.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P2504814705924828238

`∑[∑[A176040(A332015(n))]]`
-/

namespace A122796.P2504814705924828238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 (A332015 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P2504814705924828238

namespace A122796

/-- `∑[∑[A176040(A332015(n))]]` -/
def P2504814705924828238.Spec : Prop :=
  ∀ n, P2504814705924828238.a n = A122796 (n + 1)

end A122796

/-! ## A122796.P2622516175216878836

`∑[∑[A010684(A332015(n)+1)]]`
-/

namespace A122796.P2622516175216878836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A332015 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122796.P2622516175216878836

namespace A122796

/-- `∑[∑[A010684(A332015(n)+1)]]` -/
def P2622516175216878836.Spec : Prop :=
  ∀ n, P2622516175216878836.a n = A122796 (n + 1)

end A122796

/-!
# A122797: A P_3-stuttered arithmetic progression with a(n+1) = a(n) if n is a triangular number, a(n+1) = a(n) + 1 otherwise.

The programs for A122797, the canonical program `A122797.P12059737121592676741` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122797 has offset 1).

The definition of A122797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122797.P12059737121592676741

`A001614(n+1)-n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122797

/-- `A001614(n+1)-n` -/
def P12059737121592676741.Spec : Prop :=
  ∀ n, P12059737121592676741.a n = A122797 (n + 1)

theorem P12059737121592676741.correct : P12059737121592676741.Spec := by
  intro n
  simp only [A122797, Nat.add_sub_cancel]

end A122797

/-! ## A122797.P4606134062899207870

`∑[char[comp[∑[n+1]]]]`
-/

namespace A122797.P4606134062899207870
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122797.P4606134062899207870

namespace A122797

/-- `∑[char[comp[∑[n+1]]]]` -/
def P4606134062899207870.Spec : Prop :=
  ∀ n, (P4606134062899207870.a n : ℤ) = A122797 (n + 1)

end A122797

/-! ## A122797.P12233403996377036378

`∑[xor(1, char[∑[n]])]+1`
-/

namespace A122797.P12233403996377036378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A122797.P12233403996377036378

namespace A122797

/-- `∑[xor(1, char[∑[n]])]+1` -/
def P12233403996377036378.Spec : Prop :=
  ∀ n, (P12233403996377036378.a n : ℤ) = A122797 (n + 1)

end A122797

/-! ## A122797.P4474017872880921419

`(2*n+3)%comp[∑[n]]`
-/

namespace A122797.P4474017872880921419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A122797.P4474017872880921419

namespace A122797

/-- `(2*n+3)%comp[∑[n]]` -/
def P4474017872880921419.Spec : Prop :=
  ∀ n, (P4474017872880921419.a n : ℤ) = A122797 (n + 1)

end A122797

/-! ## A122797.P12395192485348252254

`n+2-∑[char[C(n, 2)]]`
-/

namespace A122797.P12395192485348252254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A122797.P12395192485348252254

namespace A122797

/-- `n+2-∑[char[C(n, 2)]]` -/
def P12395192485348252254.Spec : Prop :=
  ∀ n, P12395192485348252254.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P407327218995633166

`∑[2-char[C(n, 2)]]-n`
-/

namespace A122797.P407327218995633166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A122797.P407327218995633166

namespace A122797

/-- `∑[2-char[C(n, 2)]]-n` -/
def P407327218995633166.Spec : Prop :=
  ∀ n, P407327218995633166.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P4440773869965101566

`∑[dr(11-char[∑[n]])]-n`
-/

namespace A122797.P4440773869965101566
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (11 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A122797.P4440773869965101566

namespace A122797

/-- `∑[dr(11-char[∑[n]])]-n` -/
def P4440773869965101566.Spec : Prop :=
  ∀ n, P4440773869965101566.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P13777027367249239074

`3-(comp[C(n, 2)]-n)+n`
-/

namespace A122797.P13777027367249239074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) + (n : ℤ)

end

end A122797.P13777027367249239074

namespace A122797

/-- `3-(comp[C(n, 2)]-n)+n` -/
def P13777027367249239074.Spec : Prop :=
  ∀ n, P13777027367249239074.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P17765139041741435178

`3-(comp[C(n, 2)]-n-n)`
-/

namespace A122797.P17765139041741435178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - (n : ℤ))

end

end A122797.P17765139041741435178

namespace A122797

/-- `3-(comp[C(n, 2)]-n-n)` -/
def P17765139041741435178.Spec : Prop :=
  ∀ n, P17765139041741435178.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P10615531847513641642

`a(n-1)+1-char[∑[n]]` with `a(0)=1`
-/

namespace A122797.P10615531847513641642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A122797.P10615531847513641642

namespace A122797

/-- `a(n-1)+1-char[∑[n]]` -/
def P10615531847513641642.Spec : Prop :=
  ∀ n, P10615531847513641642.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P13423941514684129175

`1-(char[∑[n]]-a(n-1))` with `a(0)=1`
-/

namespace A122797.P13423941514684129175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A122797.P13423941514684129175

namespace A122797

/-- `1-(char[∑[n]]-a(n-1))` -/
def P13423941514684129175.Spec : Prop :=
  ∀ n, P13423941514684129175.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P12172910437711130273

`n+1-∑[and(1, char[∑[n+1]])]`
-/

namespace A122797.P12172910437711130273
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A122797.P12172910437711130273

namespace A122797

/-- `n+1-∑[and(1, char[∑[n+1]])]` -/
def P12172910437711130273.Spec : Prop :=
  ∀ n, P12172910437711130273.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P8852949619132084904

`floor((a(a(n-2))+1+n)/2)` with `a(0)=1, a(1)=1`
-/

namespace A122797.P8852949619132084904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (a (n - 2)).toNat + 1 + (n : ℤ) : ℚ) / 2⌋

end

end A122797.P8852949619132084904

namespace A122797

/-- `floor((a(a(n-2))+1+n)/2)` -/
def P8852949619132084904.Spec : Prop :=
  ∀ n, P8852949619132084904.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P13360228153033175443

`n-floor((n-a(a(n-2)))/2)` with `a(0)=1, a(1)=1`
-/

namespace A122797.P13360228153033175443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - ⌊((n : ℤ) - a (a (n - 2)).toNat : ℚ) / 2⌋

end

end A122797.P13360228153033175443

namespace A122797

/-- `n-floor((n-a(a(n-2)))/2)` -/
def P13360228153033175443.Spec : Prop :=
  ∀ n, P13360228153033175443.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P9346125605289897975

`n+1-∑[char[∑[n+1]]]%(n+1)`
-/

namespace A122797.P9346125605289897975
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A122797.P9346125605289897975

namespace A122797

/-- `n+1-∑[char[∑[n+1]]]%(n+1)` -/
def P9346125605289897975.Spec : Prop :=
  ∀ n, P9346125605289897975.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P10650238922111653529

`a(a(n-1)-1)-a(n-1)+n` with `a(0)=1`
-/

namespace A122797.P10650238922111653529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (a (n - 1) - 1).toNat - a (n - 1) + (n : ℤ)

end

end A122797.P10650238922111653529

namespace A122797

/-- `a(a(n-1)-1)-a(n-1)+n` -/
def P10650238922111653529.Spec : Prop :=
  ∀ n, P10650238922111653529.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P8577982317201016727

`A083920(n)+1`
-/

namespace A122797.P8577982317201016727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + 1

end

end A122797.P8577982317201016727

namespace A122797

/-- `A083920(n)+1` -/
def P8577982317201016727.Spec : Prop :=
  ∀ n, P8577982317201016727.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P1279976925091671452

`∑[A238303(n)]-n`
-/

namespace A122797.P1279976925091671452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A122797.P1279976925091671452

namespace A122797

/-- `∑[A238303(n)]-n` -/
def P1279976925091671452.Spec : Prop :=
  ∀ n, P1279976925091671452.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P10542366239194840784

`1-A003056(n)+n`
-/

namespace A122797.P10542366239194840784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003056 n + (n : ℤ)

end

end A122797.P10542366239194840784

namespace A122797

/-- `1-A003056(n)+n` -/
def P10542366239194840784.Spec : Prop :=
  ∀ n, P10542366239194840784.a n = A122797 (n + 1)

end A122797

/-! ## A122797.P13161533759793786026

`A133280(n)+1-n`
-/

namespace A122797.P13161533759793786026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n + (1 - (n : ℤ))

end

end A122797.P13161533759793786026

namespace A122797

/-- `A133280(n)+1-n` -/
def P13161533759793786026.Spec : Prop :=
  ∀ n, P13161533759793786026.a n = A122797 (n + 1)

end A122797

/-!
# A122798: A P_5-stuttered arithmetic progression with a(n+1) = a(n) if n is a pentagonal number, a(n+1) = a(n)+4 otherwise.

The programs for A122798, the canonical program `A122798.P2287833048270803522` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122798 has offset 1).

The definition of A122798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122798.P2287833048270803522

`A045929(n+1)-n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122798

/-- `A045929(n+1)-n` -/
def P2287833048270803522.Spec : Prop :=
  ∀ n, P2287833048270803522.a n = A122798 (n + 1)

theorem P2287833048270803522.correct : P2287833048270803522.Spec := by
  intro n
  simp only [A122798, Nat.add_sub_cancel]

end A122798

/-! ## A122798.P7843736822784861988

`4*(n-∑[char[∑[3*n+1]]])+1`
-/

namespace A122798.P7843736822784861988
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + 1

end

end A122798.P7843736822784861988

namespace A122798

/-- `4*(n-∑[char[∑[3*n+1]]])+1` -/
def P7843736822784861988.Spec : Prop :=
  ∀ n, P7843736822784861988.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P16763895950031226382

`A016813(A180446(n))`
-/

namespace A122798.P16763895950031226382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A180446 n).toNat

end

end A122798.P16763895950031226382

namespace A122798

/-- `A016813(A180446(n))` -/
def P16763895950031226382.Spec : Prop :=
  ∀ n, P16763895950031226382.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P1899291461963767488

`A016813(n-A180447(n))`
-/

namespace A122798.P1899291461963767488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ((n : ℤ) - A180447 n).toNat

end

end A122798.P1899291461963767488

namespace A122798

/-- `A016813(n-A180447(n))` -/
def P1899291461963767488.Spec : Prop :=
  ∀ n, P1899291461963767488.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P445223308427676469

`A016813(-(A180447(n)+A001489(n)))`
-/

namespace A122798.P445223308427676469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (-(A180447 n + A001489 n)).toNat

end

end A122798.P445223308427676469

namespace A122798

/-- `A016813(-(A180447(n)+A001489(n)))` -/
def P445223308427676469.Spec : Prop :=
  ∀ n, P445223308427676469.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P2730346868159606256

`A005408(2*A180446(n))`
-/

namespace A122798.P2730346868159606256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A180446 n).toNat

end

end A122798.P2730346868159606256

namespace A122798

/-- `A005408(2*A180446(n))` -/
def P2730346868159606256.Spec : Prop :=
  ∀ n, P2730346868159606256.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P6465878460002392083

`A005408(2*(n-A180447(n)))`
-/

namespace A122798.P6465878460002392083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * ((n : ℤ) - A180447 n)).toNat

end

end A122798.P6465878460002392083

namespace A122798

/-- `A005408(2*(n-A180447(n)))` -/
def P6465878460002392083.Spec : Prop :=
  ∀ n, P6465878460002392083.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P9030846645333996914

`A005408(A005843(n-A180447(n)))`
-/

namespace A122798.P9030846645333996914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005843 ((n : ℤ) - A180447 n).toNat).toNat

end

end A122798.P9030846645333996914

namespace A122798

/-- `A005408(A005843(n-A180447(n)))` -/
def P9030846645333996914.Spec : Prop :=
  ∀ n, P9030846645333996914.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P14117721453304181218

`A005408(A005408(n)-A109613(A193832(n+1)))`
-/

namespace A122798.P14117721453304181218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n - A109613 (A193832 (n + 1)).toNat).toNat

end

end A122798.P14117721453304181218

namespace A122798

/-- `A005408(A005408(n)-A109613(A193832(n+1)))` -/
def P14117721453304181218.Spec : Prop :=
  ∀ n, P14117721453304181218.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P17344142747807880466

`A168277(∑[gcd(2, A000009(n))])`
-/

namespace A122798.P17344142747807880466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122798.P17344142747807880466

namespace A122798

/-- `A168277(∑[gcd(2, A000009(n))])` -/
def P17344142747807880466.Spec : Prop :=
  ∀ n, P17344142747807880466.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P10055485910524659949

`A004273(A005408(n-A180447(n)))`
-/

namespace A122798.P10055485910524659949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005408 ((n : ℤ) - A180447 n).toNat).toNat

end

end A122798.P10055485910524659949

namespace A122798

/-- `A004273(A005408(n-A180447(n)))` -/
def P10055485910524659949.Spec : Prop :=
  ∀ n, P10055485910524659949.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P8190559627573668488

`A168277(A005408(n)-A235963(n))`
-/

namespace A122798.P8190559627573668488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (A005408 n - A235963 n).toNat

end

end A122798.P8190559627573668488

namespace A122798

/-- `A168277(A005408(n)-A235963(n))` -/
def P8190559627573668488.Spec : Prop :=
  ∀ n, P8190559627573668488.a n = A122798 (n + 1)

end A122798

/-! ## A122798.P4900089992520526017

`A109613(eq[A003982(3*n+1), A166486(n)])`
-/

namespace A122798.P4900089992520526017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A122798.P4900089992520526017

namespace A122798

/-- `A109613(eq[A003982(3*n+1), A166486(n)])` -/
def P4900089992520526017.Spec : Prop :=
  ∀ n, P4900089992520526017.a n = A122798 (n + 1)

end A122798

/-!
# A122799: A P_7-stuttered arithmetic progression with a(n+1)=a(n) if n is not a heptagonal number, a(n+1)=a(n)+2 otherwise.

The programs for A122799, the canonical program `A122799.P10680246314926975861` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122799 has offset 1).

The definition of A122799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045930, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122799.P10680246314926975861

`A045930(n+1)-n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122799

/-- `A045930(n+1)-n` -/
def P10680246314926975861.Spec : Prop :=
  ∀ n, P10680246314926975861.a n = A122799 (n + 1)

theorem P10680246314926975861.correct : P10680246314926975861.Spec := by
  intro n
  simp only [A122799, Nat.add_sub_cancel]

end A122799

/-! ## A122799.P10963994668676903248

`record[A045930(A291766(n))]-n`
-/

namespace A122799.P10963994668676903248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045930 (A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A122799.P10963994668676903248

namespace A122799

/-- `record[A045930(A291766(n))]-n` -/
def P10963994668676903248.Spec : Prop :=
  ∀ n, P10963994668676903248.a n = A122799 (n + 1)

end A122799

/-! ## A122799.P9278463202136257839

`A005408(A005408(n)-A183296(n+1))`
-/

namespace A122799.P9278463202136257839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n - A183296 (n + 1)).toNat

end

end A122799.P9278463202136257839

namespace A122799

/-- `A005408(A005408(n)-A183296(n+1))` -/
def P9278463202136257839.Spec : Prop :=
  ∀ n, P9278463202136257839.a n = A122799 (n + 1)

end A122799

/-! ## A122799.P2629672699193432534

`A122797(n+1)+A045930(n+1)%A001614(n+1)`
-/

namespace A122799.P2629672699193432534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1) + Int.tmod (A045930 (n + 1)) (A001614 (n + 1))

end

end A122799.P2629672699193432534

namespace A122799

/-- `A122797(n+1)+A045930(n+1)%A001614(n+1)` -/
def P2629672699193432534.Spec : Prop :=
  ∀ n, P2629672699193432534.a n = A122799 (n + 1)

end A122799

/-! ## A122799.P17854514924099675247

`A017137(n)/2-A005843(A183296(n+1))`
-/

namespace A122799.P17854514924099675247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017137 n : ℚ) / 2 - (A005843 (A183296 (n + 1)).toNat : ℚ)

end

end A122799.P17854514924099675247

namespace A122799

/-- `A017137(n)/2-A005843(A183296(n+1))` -/
def P17854514924099675247.Spec : Prop :=
  ∀ n, P17854514924099675247.a n = (A122799 (n + 1) : ℚ)

end A122799

/-! ## A122799.P11315407755873136408

`A016885(n)-(A005843(A183296(n+1))+n)`
-/

namespace A122799.P11315407755873136408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - (A005843 (A183296 (n + 1)).toNat + (n : ℤ))

end

end A122799.P11315407755873136408

namespace A122799

/-- `A016885(n)-(A005843(A183296(n+1))+n)` -/
def P11315407755873136408.Spec : Prop :=
  ∀ n, P11315407755873136408.a n = A122799 (n + 1)

end A122799

/-! ## A122799.P7649667929685763252

`A016873(n)-(A060747(A183296(n+1))+n)`
-/

namespace A122799.P7649667929685763252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - (A060747 (A183296 (n + 1)).toNat + (n : ℤ))

end

end A122799.P7649667929685763252

namespace A122799

/-- `A016873(n)-(A060747(A183296(n+1))+n)` -/
def P7649667929685763252.Spec : Prop :=
  ∀ n, P7649667929685763252.a n = A122799 (n + 1)

end A122799

/-! ## A122799.P9290502490653961320

`A023449(A045930(Δ[n²]-n)-A023449(n))`
-/

namespace A122799.P9290502490653961320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A045930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - A023449 n).toNat

end

end A122799.P9290502490653961320

namespace A122799

/-- `A023449(A045930(Δ[n²]-n)-A023449(n))` -/
def P9290502490653961320.Spec : Prop :=
  ∀ n, P9290502490653961320.a n = A122799 (n + 1)

end A122799

/-! ## A122799.P15126971379085238851

`A110654(A017137(n))-A005843(A183296(n+1))`
-/

namespace A122799.P15126971379085238851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A017137 n).toNat - A005843 (A183296 (n + 1)).toNat

end

end A122799.P15126971379085238851

namespace A122799

/-- `A110654(A017137(n))-A005843(A183296(n+1))` -/
def P15126971379085238851.Spec : Prop :=
  ∀ n, P15126971379085238851.a n = A122799 (n + 1)

end A122799

/-! ## A122799.P1342067193565080757

`A131507(∑[1-A038569(n)+n])`
-/

namespace A122799.P1342067193565080757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038569 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122799.P1342067193565080757

namespace A122799

/-- `A131507(∑[1-A038569(n)+n])` -/
def P1342067193565080757.Spec : Prop :=
  ∀ n, P1342067193565080757.a n = A122799 (n + 1)

end A122799

