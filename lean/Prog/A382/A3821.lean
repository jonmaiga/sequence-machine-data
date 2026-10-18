import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A382100: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of 1/(2 - B_k(x)), where B_k(x) = 1 + x*B_k(x)^k.

The programs for A382100, there is no canonical definition to state claims against.
-/

/-! ## A382100.P4089814766394780944

`ceil(A107027(n)/2)`
-/

namespace A382100.P4089814766394780944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107027 n : ℚ) / 2⌉

end

end A382100.P4089814766394780944

/-! ## A382100.P3054016061786562419

`A107027(n)/A238303(n)`
-/

namespace A382100.P3054016061786562419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107027 n : ℚ) / (A238303 n : ℚ)

end

end A382100.P3054016061786562419

/-! ## A382100.P6415521636620895506

`A000027(round(A107027(n)/2))`
-/

namespace A382100.P6415521636620895506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A107027 n : ℚ) / 2)).toNat

end

end A382100.P6415521636620895506

/-! ## A382100.P13060389944984851917

`round(A107027(n)/2)%A096479(n+1)`
-/

namespace A382100.P13060389944984851917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A107027 n : ℚ) / 2)) (A096479 (n + 1))

end

end A382100.P13060389944984851917

/-! ## A382100.P8350893264999793617

`round(A107027(A122841(3*n+4)+n)/2)`
-/

namespace A382100.P8350893264999793617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107027 (A122841 (3 * n + 4) + (n : ℤ)).toNat : ℚ) / 2)

end

end A382100.P8350893264999793617

/-! ## A382100.P13176285754707734765

`A004525(A107027(n))`
-/

namespace A382100.P13176285754707734765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A107027 n).toNat

end

end A382100.P13176285754707734765

/-! ## A382100.P11196743764507601588

`A004526(A107027(n)+1)`
-/

namespace A382100.P11196743764507601588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A107027 n + 1).toNat

end

end A382100.P11196743764507601588

/-! ## A382100.P8554570001390509662

`A008619(A107027(n)-1)`
-/

namespace A382100.P8554570001390509662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A107027 n - 1).toNat

end

end A382100.P8554570001390509662

/-! ## A382100.P2497548425426965550

`A032742(A107027(n)+A000007(n))`
-/

namespace A382100.P2497548425426965550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A107027 n + A000007 n).toNat

end

end A382100.P2497548425426965550

/-!
# A382101: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(B_k(x) - 1), where B_k(x) = 1 + x*B_k(x)^k.

The programs for A382101, there is no canonical definition to state claims against.
-/

/-! ## A382101.P11005207648003762749

`A094802(A274391(n))`
-/

namespace A382101.P11005207648003762749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A274391 n).toNat

end

end A382101.P11005207648003762749

/-! ## A382101.P15443818759554661518

`A258266(A341033(n))`
-/

namespace A382101.P15443818759554661518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A341033 n).toNat

end

end A382101.P15443818759554661518

/-! ## A382101.P3370317716302868532

`A380807(A293012(n))`
-/

namespace A382101.P3370317716302868532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380807 (A293012 n).toNat

end

end A382101.P3370317716302868532

/-! ## A382101.P5787039925495277282

`A351831(A259844(n))+A259844(n)`
-/

namespace A382101.P5787039925495277282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A259844 n).toNat + A259844 n

end

end A382101.P5787039925495277282

/-!
# A382103: Decimal expansion of the weight factor for Legendre-Gauss quadrature corresponding to abscissa A372267.

The programs for A382103, there is no canonical definition to state claims against.
-/

/-! ## A382103.P16789084956336477832

`9-A382104(n)`
-/

namespace A382103.P16789084956336477832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A382104 n

end

end A382103.P16789084956336477832

/-!
# A382104: Decimal expansion of the weight factor for Legendre-Gauss quadrature corresponding to abscissa A372268.

The programs for A382104, there is no canonical definition to state claims against.
-/

/-! ## A382104.P7972254839854870289

`9-A382103(n)`
-/

namespace A382104.P7972254839854870289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A382103 n

end

end A382104.P7972254839854870289

/-!
# A382109: a(n) is the index of the first Issai Schur additive sequence that will accept n.

The programs for A382109, there is no canonical definition to state claims against.
-/

/-! ## A382109.P16003430950357115936

`A322523(n+1)+1`
-/

namespace A382109.P16003430950357115936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (n + 1) + 1

end

end A382109.P16003430950357115936

/-! ## A382109.P15297055737931395337

`A322523(A008486(n+1))`
-/

namespace A382109.P15297055737931395337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (A008486 (n + 1)).toNat

end

end A382109.P15297055737931395337

/-! ## A382109.P401522774814888390

`A322523(A008585(n+1))`
-/

namespace A382109.P401522774814888390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (A008585 (n + 1)).toNat

end

end A382109.P401522774814888390

/-! ## A382109.P16919599604264839435

`A322523(A016777(n)+2)`
-/

namespace A382109.P16919599604264839435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (A016777 n + 2).toNat

end

end A382109.P16919599604264839435

/-! ## A382109.P1230167332573559833

`A322523(A004767(n)-n)`
-/

namespace A382109.P1230167332573559833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (A004767 n - (n : ℤ)).toNat

end

end A382109.P1230167332573559833

/-!
# A382111: Maximum number of moves required to transition from the initial configuration (all disks on the first peg) to any possible configuration in the Towers of Hanoi puzzle with 4 pegs and n disks.

The programs for A382111, there is no canonical definition to state claims against.
-/

/-! ## A382111.P2830698456475630326

`A331282(A000322(n+1))+A007664(n)`
-/

namespace A382111.P2830698456475630326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A000322 (n + 1)).toNat + A007664 n

end

end A382111.P2830698456475630326

/-! ## A382111.P2218302693871482051

`A199092(A349976(3*n+2))+A007664(n)`
-/

namespace A382111.P2218302693871482051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199092 (A349976 (3 * n + 2)).toNat + A007664 n

end

end A382111.P2218302693871482051

/-! ## A382111.P10485926139500522269

`A010052(A325611(3*n+5))+A007664(n)`
-/

namespace A382111.P10485926139500522269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A325611 (3 * n + 5)).toNat + A007664 n

end

end A382111.P10485926139500522269

/-! ## A382111.P14386967535901281659

`A010051(A119034(n+1))+A007664(n)`
-/

namespace A382111.P14386967535901281659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A119034 (n + 1)).toNat + A007664 n

end

end A382111.P14386967535901281659

/-!
# A382113: Gray code transformation of the Zeckendorf representation of n.

The programs for A382113, the canonical program `A382113.P6513657586340795000` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382113 has offset 0).

The definition of A382113 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A006068, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382113.P6513657586340795000

`A022290(A006068(A003714(n)))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A382113

/-- `A022290(A006068(A003714(n)))` -/
def P6513657586340795000.Spec : Prop :=
  ∀ n, P6513657586340795000.a n = A382113 n

theorem P6513657586340795000.correct : P6513657586340795000.Spec := by
  intro n
  simp only [A382113]

end A382113

/-! ## A382113.P10671715732192417106

`A382116(A343647(n))`
-/

namespace A382113.P10671715732192417106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 (A343647 n).toNat

end

end A382113.P10671715732192417106

namespace A382113

/-- `A382116(A343647(n))` -/
def P10671715732192417106.Spec : Prop :=
  ∀ n, P10671715732192417106.a n = A382113 n

end A382113

/-! ## A382113.P11726144014714220701

`A105774(A000201(n+1))-1`
-/

namespace A382113.P11726144014714220701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (A000201 (n + 1)).toNat - 1

end

end A382113.P11726144014714220701

namespace A382113

/-- `A105774(A000201(n+1))-1` -/
def P11726144014714220701.Spec : Prop :=
  ∀ n, P11726144014714220701.a n = A382113 n

end A382113

/-! ## A382113.P17265711399028558003

`A105774(A007067(n+1))-1`
-/

namespace A382113.P17265711399028558003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (A007067 (n + 1)).toNat - 1

end

end A382113.P17265711399028558003

namespace A382113

/-- `A105774(A007067(n+1))-1` -/
def P17265711399028558003.Spec : Prop :=
  ∀ n, P17265711399028558003.a n = A382113 n

end A382113

/-! ## A382113.P8069954346081799903

`A105774(A066096(n+1))-1`
-/

namespace A382113.P8069954346081799903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (A066096 (n + 1)).toNat - 1

end

end A382113.P8069954346081799903

namespace A382113

/-- `A105774(A066096(n+1))-1` -/
def P8069954346081799903.Spec : Prop :=
  ∀ n, P8069954346081799903.a n = A382113 n

end A382113

/-! ## A382113.P15837173129430290889

`A105774(A382116(n+1))-1`
-/

namespace A382113.P15837173129430290889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (A382116 (n + 1)).toNat - 1

end

end A382113.P15837173129430290889

namespace A382113

/-- `A105774(A382116(n+1))-1` -/
def P15837173129430290889.Spec : Prop :=
  ∀ n, P15837173129430290889.a n = A382113 n

end A382113

/-! ## A382113.P13659481812483650486

`A105774(A022342(n+2))-1`
-/

namespace A382113.P13659481812483650486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (A022342 (n + 2)).toNat - 1

end

end A382113.P13659481812483650486

namespace A382113

/-- `A105774(A022342(n+2))-1` -/
def P13659481812483650486.Spec : Prop :=
  ∀ n, P13659481812483650486.a n = A382113 n

end A382113

/-! ## A382113.P14431601638508113195

`A105774(A295282(n+1))-1`
-/

namespace A382113.P14431601638508113195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (A295282 (n + 1)).toNat - 1

end

end A382113.P14431601638508113195

namespace A382113

/-- `A105774(A295282(n+1))-1` -/
def P14431601638508113195.Spec : Prop :=
  ∀ n, P14431601638508113195.a n = A382113 n

end A382113

/-! ## A382113.P7690319720144915414

`A382112(n+1)-1`
-/

namespace A382113.P7690319720144915414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382112 (n + 1) - 1

end

end A382113.P7690319720144915414

namespace A382113

/-- `A382112(n+1)-1` -/
def P7690319720144915414.Spec : Prop :=
  ∀ n, P7690319720144915414.a n = A382113 n

end A382113

/-! ## A382113.P14794723908742618622

`A023443(A382112(n+1))`
-/

namespace A382113.P14794723908742618622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A382112 (n + 1)).toNat

end

end A382113.P14794723908742618622

namespace A382113

/-- `A023443(A382112(n+1))` -/
def P14794723908742618622.Spec : Prop :=
  ∀ n, P14794723908742618622.a n = A382113 n

end A382113

/-!
# A382114: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382114, the canonical program `A382114.P18285456847627497086` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382114 has offset 0).

The definition of A382114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382114.P18285456847627497086

`(A000108(n)+1)*(2*A000108(n)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382114

/-- `(A000108(n)+1)*(2*A000108(n)+1)` -/
def P18285456847627497086.Spec : Prop :=
  ∀ n, P18285456847627497086.a n = A382114 n

theorem P18285456847627497086.correct : P18285456847627497086.Spec := by
  intro n
  simp only [A382114]

end A382114

/-! ## A382114.P1387412426240935099

`A383957(n)-A000108(n)`
-/

namespace A382114.P1387412426240935099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383957 n - A000108 n

end

end A382114.P1387412426240935099

namespace A382114

/-- `A383957(n)-A000108(n)` -/
def P1387412426240935099.Spec : Prop :=
  ∀ n, P1387412426240935099.a n = A382114 n

end A382114

/-! ## A382114.P5420055407734267398

`(A000108(n)+1)*A383251(n)`
-/

namespace A382114.P5420055407734267398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n + 1) * A383251 n

end

end A382114.P5420055407734267398

namespace A382114

/-- `(A000108(n)+1)*A383251(n)` -/
def P5420055407734267398.Spec : Prop :=
  ∀ n, P5420055407734267398.a n = A382114 n

end A382114

/-! ## A382114.P554800114139911996

`A383251(n)+A386291(n)-A000108(n)`
-/

namespace A382114.P554800114139911996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 n + (A386291 n - A000108 n)

end

end A382114.P554800114139911996

namespace A382114

/-- `A383251(n)+A386291(n)-A000108(n)` -/
def P554800114139911996.Spec : Prop :=
  ∀ n, P554800114139911996.a n = A382114 n

end A382114

/-! ## A382114.P1895338791516872058

`C(abs(A002420(n+1)+1)+3, 2)`
-/

namespace A382114.P1895338791516872058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|A002420 (n + 1) + 1| + 3).toNat 2

end

end A382114.P1895338791516872058

namespace A382114

/-- `C(abs(A002420(n+1)+1)+3, 2)` -/
def P1895338791516872058.Spec : Prop :=
  ∀ n, (P1895338791516872058.a n : ℤ) = A382114 n

end A382114

/-! ## A382114.P1091280976106494727

`A381483(n)/A000108(n)`
-/

namespace A382114.P1091280976106494727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381483 n : ℚ) / (A000108 n : ℚ)

end

end A382114.P1091280976106494727

namespace A382114

/-- `A381483(n)/A000108(n)` -/
def P1091280976106494727.Spec : Prop :=
  ∀ n, P1091280976106494727.a n = (A382114 n : ℚ)

end A382114

/-!
# A382116: a(n) = floor(n*g+(g-1)/2), where g is the golden ratio.

The programs for A382116, the canonical program `A382116.P12069991739349171750` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382116 has offset 0).

The definition of A382116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382116.P12069991739349171750

`floor(n*ϕ+(ϕ-1)/2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A382116

/-- `floor(n*ϕ+(ϕ-1)/2)` -/
def P12069991739349171750.Spec : Prop :=
  ∀ n, P12069991739349171750.a n = A382116 n

theorem P12069991739349171750.correct : P12069991739349171750.Spec := by
  intro n
  simp only [A382116]

end A382116

/-! ## A382116.P3904998343600611596

`comp[A189379(n+1)]`
-/

namespace A382116.P3904998343600611596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382116.P3904998343600611596

namespace A382116

/-- `comp[A189379(n+1)]` -/
def P3904998343600611596.Spec : Prop :=
  ∀ n, (P3904998343600611596.a n : ℤ) = A382116 n

end A382116

/-! ## A382116.P1037466455099083981

`comp[A007067(n+1)+n]`
-/

namespace A382116.P1037466455099083981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382116.P1037466455099083981

namespace A382116

/-- `comp[A007067(n+1)+n]` -/
def P1037466455099083981.Spec : Prop :=
  ∀ n, (P1037466455099083981.a n : ℤ) = A382116 n

end A382116

/-! ## A382116.P17579495831076351282

`∪[A327218(n+1), A004937(n)]`
-/

namespace A382116.P17579495831076351282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382116.P17579495831076351282

namespace A382116

/-- `∪[A327218(n+1), A004937(n)]` -/
def P17579495831076351282.Spec : Prop :=
  ∀ n, (P17579495831076351282.a n : ℤ) = A382116 n

end A382116

/-! ## A382116.P14636745204093161700

`∪[A380804(n+1), A004937(n)]`
-/

namespace A382116.P14636745204093161700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382116.P14636745204093161700

namespace A382116

/-- `∪[A380804(n+1), A004937(n)]` -/
def P14636745204093161700.Spec : Prop :=
  ∀ n, (P14636745204093161700.a n : ℤ) = A382116 n

end A382116

/-! ## A382116.P3069799363986971351

`A382113(A343646(n))`
-/

namespace A382116.P3069799363986971351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382113 (A343646 n).toNat

end

end A382116.P3069799363986971351

namespace A382116

/-- `A382113(A343646(n))` -/
def P3069799363986971351.Spec : Prop :=
  ∀ n, P3069799363986971351.a n = A382116 n

end A382116

/-! ## A382116.P14896655370582025039

`A188222(Δ[n²])-(n+1)`
-/

namespace A382116.P14896655370582025039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A382116.P14896655370582025039

namespace A382116

/-- `A188222(Δ[n²])-(n+1)` -/
def P14896655370582025039.Spec : Prop :=
  ∀ n, P14896655370582025039.a n = A382116 n

end A382116

/-! ## A382116.P12088593711779299691

`A101803(A003622(n+1))-1`
-/

namespace A382116.P12088593711779299691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A003622 (n + 1)).toNat - 1

end

end A382116.P12088593711779299691

namespace A382116

/-- `A101803(A003622(n+1))-1` -/
def P12088593711779299691.Spec : Prop :=
  ∀ n, P12088593711779299691.a n = A382116 n

end A382116

/-! ## A382116.P8124711792743708144

`A101803(A007066(n+1))-1`
-/

namespace A382116.P8124711792743708144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A007066 (n + 1)).toNat - 1

end

end A382116.P8124711792743708144

namespace A382116

/-- `A101803(A007066(n+1))-1` -/
def P8124711792743708144.Spec : Prop :=
  ∀ n, P8124711792743708144.a n = A382116 n

end A382116

/-! ## A382116.P13945569090570309090

`A060144(A035336(2*n+1)/2)`
-/

namespace A382116.P13945569090570309090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (SequenceMachineLib.roundAway ((A035336 (2 * n + 1) : ℚ) / 2)).toNat

end

end A382116.P13945569090570309090

namespace A382116

/-- `A060144(A035336(2*n+1)/2)` -/
def P13945569090570309090.Spec : Prop :=
  ∀ n, P13945569090570309090.a n = A382116 n

end A382116

/-! ## A382116.P5688430032785006069

`A060144(A000201(2*n+1)+n)`
-/

namespace A382116.P5688430032785006069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A000201 (2 * n + 1) + (n : ℤ)).toNat

end

end A382116.P5688430032785006069

namespace A382116

/-- `A060144(A000201(2*n+1)+n)` -/
def P5688430032785006069.Spec : Prop :=
  ∀ n, P5688430032785006069.a n = A382116 n

end A382116

/-! ## A382116.P772159439117321480

`A060144(A066096(2*n+1)+n)`
-/

namespace A382116.P772159439117321480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A066096 (2 * n + 1) + (n : ℤ)).toNat

end

end A382116.P772159439117321480

namespace A382116

/-- `A060144(A066096(2*n+1)+n)` -/
def P772159439117321480.Spec : Prop :=
  ∀ n, P772159439117321480.a n = A382116 n

end A382116

/-! ## A382116.P2609168092282764670

`A060144(A001950(2*n+1)-(n+1))`
-/

namespace A382116.P2609168092282764670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A001950 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A382116.P2609168092282764670

namespace A382116

/-- `A060144(A001950(2*n+1)-(n+1))` -/
def P2609168092282764670.Spec : Prop :=
  ∀ n, P2609168092282764670.a n = A382116 n

end A382116

/-! ## A382116.P16418258163677933543

`A060144(A004957(2*n+1)-(n+2))`
-/

namespace A382116.P16418258163677933543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A004957 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A382116.P16418258163677933543

namespace A382116

/-- `A060144(A004957(2*n+1)-(n+2))` -/
def P16418258163677933543.Spec : Prop :=
  ∀ n, P16418258163677933543.a n = A382116 n

end A382116

/-!
# A382117: a(n) = sum (-1)^(((x - 1)*(y - 1))/4), where x and y are coprime positive integers, equidistant from n, such that x <= y.

The programs for A382117, there is no canonical definition to state claims against.
-/

/-! ## A382117.P3547602296681406013

`A055034(n+1)%A000040(A221074(n))`
-/

namespace A382117.P3547602296681406013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055034 (n + 1)) (A000040 (A221074 n).toNat)

end

end A382117.P3547602296681406013

/-! ## A382117.P17649643154094033198

`C(A000010(n+1), A168532(A000079(n)))`
-/

namespace A382117.P17649643154094033198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat (A168532 (A000079 n).toNat).toNat

end

end A382117.P17649643154094033198

/-! ## A382117.P8789719338079190678

`and(A038573(A051049(n)), A055034(n+1))`
-/

namespace A382117.P8789719338079190678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038573 (A051049 n).toNat) (A055034 (n + 1))

end

end A382117.P8789719338079190678

/-! ## A382117.P17691650028980144540

`and(A055034(n+1), A279384(A209721(n+1)))`
-/

namespace A382117.P17691650028980144540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055034 (n + 1)) (A279384 (A209721 (n + 1)).toNat)

end

end A382117.P17691650028980144540

/-! ## A382117.P16114886333152340023

`A140081(A324821(3*n+4))^A211262(n+1)`
-/

namespace A382117.P16114886333152340023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140081 (A324821 (3 * n + 4)).toNat : ℚ) ^ (A211262 (n + 1) : ℤ)

end

end A382117.P16114886333152340023

/-!
# A382118: Prime indices k such that prime(k) and prime(k) + 9 are anagrams.

The programs for A382118, the canonical program `A382118.P6433040917030261749` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382118 has offset 1).

The definition of A382118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382118.P6433040917030261749

`p?[A379208(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A382118

/-- `p?[A379208(n+1)]` -/
def P6433040917030261749.Spec : Prop :=
  ∀ n, P6433040917030261749.a n = A382118 (n + 1)

theorem P6433040917030261749.correct : P6433040917030261749.Spec := by
  intro n
  simp only [A382118, Nat.add_sub_cancel]

end A382118

/-! ## A382118.P10927886011305682293

`∩[A000040(n+1), A379208(n+1)]`
-/

namespace A382118.P10927886011305682293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P10927886011305682293

namespace A382118

/-- `∩[A000040(n+1), A379208(n+1)]` -/
def P10927886011305682293.Spec : Prop :=
  ∀ n, (P10927886011305682293.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P11191134311016941719

`∩[A004139(n+1), A379208(n+1)]`
-/

namespace A382118.P11191134311016941719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P11191134311016941719

namespace A382118

/-- `∩[A004139(n+1), A379208(n+1)]` -/
def P11191134311016941719.Spec : Prop :=
  ∀ n, (P11191134311016941719.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P9936253239869537768

`∩[A006005(n+1), A379208(n+1)]`
-/

namespace A382118.P9936253239869537768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P9936253239869537768

namespace A382118

/-- `∩[A006005(n+1), A379208(n+1)]` -/
def P9936253239869537768.Spec : Prop :=
  ∀ n, (P9936253239869537768.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P16698300552687908115

`∩[A008578(n+1), A379208(n+1)]`
-/

namespace A382118.P16698300552687908115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P16698300552687908115

namespace A382118

/-- `∩[A008578(n+1), A379208(n+1)]` -/
def P16698300552687908115.Spec : Prop :=
  ∀ n, (P16698300552687908115.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P11356684955613910197

`∩[A045319(n+1), A379208(n+1)]`
-/

namespace A382118.P11356684955613910197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P11356684955613910197

namespace A382118

/-- `∩[A045319(n+1), A379208(n+1)]` -/
def P11356684955613910197.Spec : Prop :=
  ∀ n, (P11356684955613910197.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P2230868677287746242

`∩[A045344(n+1), A379208(n+1)]`
-/

namespace A382118.P2230868677287746242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P2230868677287746242

namespace A382118

/-- `∩[A045344(n+1), A379208(n+1)]` -/
def P2230868677287746242.Spec : Prop :=
  ∀ n, (P2230868677287746242.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P4495048172301187863

`∩[A046022(n+1), A379208(n+1)]`
-/

namespace A382118.P4495048172301187863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P4495048172301187863

namespace A382118

/-- `∩[A046022(n+1), A379208(n+1)]` -/
def P4495048172301187863.Spec : Prop :=
  ∀ n, (P4495048172301187863.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P17284796373693208808

`∩[A051948(n+1), A379208(n+1)]`
-/

namespace A382118.P17284796373693208808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P17284796373693208808

namespace A382118

/-- `∩[A051948(n+1), A379208(n+1)]` -/
def P17284796373693208808.Spec : Prop :=
  ∀ n, (P17284796373693208808.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P1864752493227861350

`∩[A053813(n+1), A379208(n+1)]`
-/

namespace A382118.P1864752493227861350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P1864752493227861350

namespace A382118

/-- `∩[A053813(n+1), A379208(n+1)]` -/
def P1864752493227861350.Spec : Prop :=
  ∀ n, (P1864752493227861350.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P15722882250427728388

`∩[A060634(n+1), A379208(n+1)]`
-/

namespace A382118.P15722882250427728388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P15722882250427728388

namespace A382118

/-- `∩[A060634(n+1), A379208(n+1)]` -/
def P15722882250427728388.Spec : Prop :=
  ∀ n, (P15722882250427728388.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P7662110434734134379

`∩[A062972(n+1), A379208(n+1)]`
-/

namespace A382118.P7662110434734134379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P7662110434734134379

namespace A382118

/-- `∩[A062972(n+1), A379208(n+1)]` -/
def P7662110434734134379.Spec : Prop :=
  ∀ n, (P7662110434734134379.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P5235457552776767721

`∩[A064728(n+1), A379208(n+1)]`
-/

namespace A382118.P5235457552776767721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P5235457552776767721

namespace A382118

/-- `∩[A064728(n+1), A379208(n+1)]` -/
def P5235457552776767721.Spec : Prop :=
  ∀ n, (P5235457552776767721.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P16118851798524553973

`∩[A065091(n+1), A379208(n+1)]`
-/

namespace A382118.P16118851798524553973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P16118851798524553973

namespace A382118

/-- `∩[A065091(n+1), A379208(n+1)]` -/
def P16118851798524553973.Spec : Prop :=
  ∀ n, (P16118851798524553973.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P2943737799491229627

`∩[A065396(n+1), A379208(n+1)]`
-/

namespace A382118.P2943737799491229627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P2943737799491229627

namespace A382118

/-- `∩[A065396(n+1), A379208(n+1)]` -/
def P2943737799491229627.Spec : Prop :=
  ∀ n, (P2943737799491229627.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P2086045684930798443

`∩[A174090(n+1), A379208(n+1)]`
-/

namespace A382118.P2086045684930798443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382118.P2086045684930798443

namespace A382118

/-- `∩[A174090(n+1), A379208(n+1)]` -/
def P2086045684930798443.Spec : Prop :=
  ∀ n, (P2086045684930798443.a n : ℤ) = A382118 (n + 1)

end A382118

/-! ## A382118.P107917854349951030

`filter[A379208(n+1), A010051(#)]`
-/

namespace A382118.P107917854349951030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A382118.P107917854349951030

namespace A382118

/-- `filter[A379208(n+1), A010051(#)]` -/
def P107917854349951030.Spec : Prop :=
  ∀ n, P107917854349951030.a n = A382118 (n + 1)

end A382118

/-! ## A382118.P2648018631878968926

`filter[A379208(n+1), A323152(#)]`
-/

namespace A382118.P2648018631878968926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A382118.P2648018631878968926

namespace A382118

/-- `filter[A379208(n+1), A323152(#)]` -/
def P2648018631878968926.Spec : Prop :=
  ∀ n, P2648018631878968926.a n = A382118 (n + 1)

end A382118

/-! ## A382118.P809231008601250319

`filter[A379208(n+1), A323153(#)]`
-/

namespace A382118.P809231008601250319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A382118.P809231008601250319

namespace A382118

/-- `filter[A379208(n+1), A323153(#)]` -/
def P809231008601250319.Spec : Prop :=
  ∀ n, P809231008601250319.a n = A382118 (n + 1)

end A382118

/-! ## A382118.P15849920295945136544

`filter[A379208(n+1), A080339(#)]`
-/

namespace A382118.P15849920295945136544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A382118.P15849920295945136544

namespace A382118

/-- `filter[A379208(n+1), A080339(#)]` -/
def P15849920295945136544.Spec : Prop :=
  ∀ n, P15849920295945136544.a n = A382118 (n + 1)

end A382118

/-!
# A382119: Numbers k = x*y such that (x*2^k - 1)*(y*2^k - 1) is semiprime.

The programs for A382119, there is no canonical definition to state claims against.
-/

/-! ## A382119.P3173325620124328619

`a(n-1)²/2-2` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A382119.P3173325620124328619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (n - 1) ^ 2 / 2 - 2

end

end A382119.P3173325620124328619

/-!
# A382120: Numbers k in A024619 such that there exists a prime p | k for which p^(m+1) == r (mod k), where r is also in A024619, and a prime q | k for which q^(m+1) == r (mod k), where r is a prime power.

The programs for A382120, there is no canonical definition to state claims against.
-/

/-! ## A382120.P12674700068111684695

`A069209(comp[A300232(n+1)-A383973(3*(n+1))])`
-/

namespace A382120.P12674700068111684695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300232 (n + 1) - A383973 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A382120.P12674700068111684695

/-! ## A382120.P16845232693450069195

`lt[A207088(n+1), A372651(A000010(n+1))]`
-/

namespace A382120.P16845232693450069195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372651 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382120.P16845232693450069195

/-!
# A382122: G.f. satisfies Sum_{n>=0} x^n * abs(1/A(x)^n) = C(x), where C(x) = 1 + x*C(x)^2 and abs(F(x)) equals the series expansion formed by the unsigned coefficients in F(x).

The programs for A382122, there is no canonical definition to state claims against.
-/

/-! ## A382122.P10310551362226857226

`A112689(A263582(n+1))`
-/

namespace A382122.P10310551362226857226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A263582 (n + 1)).toNat

end

end A382122.P10310551362226857226

/-! ## A382122.P3273864676926870980

`A008620(A000079(n)²-A162551(n))`
-/

namespace A382122.P3273864676926870980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A000079 n ^ 2 - A162551 n).toNat

end

end A382122.P3273864676926870980

/-! ## A382122.P9422809316434324602

`A008620(A000079(2*n)-A162551(n))`
-/

namespace A382122.P9422809316434324602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A000079 (2 * n) - A162551 n).toNat

end

end A382122.P9422809316434324602

/-!
# A382123: a(n) = sigma(n)*sigma(2*n)/3 for n >= 1.

The programs for A382123, the canonical program `A382123.P171162339606438149` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382123 has offset 1).

The definition of A382123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382123.P171162339606438149

`A000203(n+1)*A062731(n+1)/3`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382123

/-- `A000203(n+1)*A062731(n+1)/3` -/
def P171162339606438149.Spec : Prop :=
  ∀ n, P171162339606438149.a n = (A382123 (n + 1) : ℚ)

end A382123

/-! ## A382123.P7855636891464248944

`∑{d}[n+1, #*A065766((n+1)/#)]`
-/

namespace A382123.P7855636891464248944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065766 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382123.P7855636891464248944

namespace A382123

/-- `∑{d}[n+1, #*A065766((n+1)/#)]` -/
def P7855636891464248944.Spec : Prop :=
  ∀ n, P7855636891464248944.a n = A382123 (n + 1)

end A382123

/-! ## A382123.P445512075545514038

`A000203(2*(n+1))/3*A000203(n+1)`
-/

namespace A382123.P445512075545514038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * (n + 1)) : ℚ) / 3 * (A000203 (n + 1) : ℚ)

end

end A382123.P445512075545514038

namespace A382123

/-- `A000203(2*(n+1))/3*A000203(n+1)` -/
def P445512075545514038.Spec : Prop :=
  ∀ n, P445512075545514038.a n = (A382123 (n + 1) : ℚ)

end A382123

/-! ## A382123.P11877425471066416697

`∑{d}[n+1, A064987(#)*A206787((n+1)/#)]`
-/

namespace A382123.P11877425471066416697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A206787 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382123.P11877425471066416697

namespace A382123

/-- `∑{d}[n+1, A064987(#)*A206787((n+1)/#)]` -/
def P11877425471066416697.Spec : Prop :=
  ∀ n, P11877425471066416697.a n = A382123 (n + 1)

end A382123

/-! ## A382123.P11817206181975202665

`A000203(n+1)*A000203(A005843(n+1))/3`
-/

namespace A382123.P11817206181975202665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A000203 (A005843 (n + 1)).toNat : ℚ) / 3

end

end A382123.P11817206181975202665

namespace A382123

/-- `A000203(n+1)*A000203(A005843(n+1))/3` -/
def P11817206181975202665.Spec : Prop :=
  ∀ n, P11817206181975202665.a n = (A382123 (n + 1) : ℚ)

end A382123

/-!
# A382124: G.f. A(x) = exp( Sum_{n>=1} sigma(n)*sigma(2*n)/3 * x^n/n ), where sigma(n) = A000203(n) is the sum of the divisors of n.

The programs for A382124, there is no canonical definition to state claims against.
-/

/-! ## A382124.P9588499597719888276

`A190899(A198785(n))`
-/

namespace A382124.P9588499597719888276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (A198785 n).toNat

end

end A382124.P9588499597719888276

/-! ## A382124.P4830535112306210522

`A371167(A000740(n+1))`
-/

namespace A382124.P4830535112306210522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371167 (A000740 (n + 1)).toNat

end

end A382124.P4830535112306210522

/-! ## A382124.P12416679618076947740

`A356720(A265385(n+1))`
-/

namespace A382124.P12416679618076947740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (A265385 (n + 1)).toNat

end

end A382124.P12416679618076947740

/-!
# A382125: G.f. A(x) = exp( Sum_{n>=1} sigma(n)*sigma(2*n) * x^n/n ), where sigma(n) = A000203(n) is the sum of the divisors of n.

The programs for A382125, there is no canonical definition to state claims against.
-/

/-! ## A382125.P16193476190154875160

`A000006(A133646(n))`
-/

namespace A382125.P16193476190154875160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A133646 n).toNat

end

end A382125.P16193476190154875160

/-!
# A382126: G.f. satisfies A(x) = A(x^2)*A(x^3) / (1-x).

The programs for A382126, there is no canonical definition to state claims against.
-/

/-! ## A382126.P4526427994328590820

`A333382(A078671(n+3))+A317256(n)`
-/

namespace A382126.P4526427994328590820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A078671 (n + 3)).toNat + A317256 n

end

end A382126.P4526427994328590820

/-! ## A382126.P15079977672577651290

`A375933(A100883(3*n+4))+A100883(n)`
-/

namespace A382126.P15079977672577651290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375933 (A100883 (3 * n + 4)).toNat + A100883 n

end

end A382126.P15079977672577651290

/-! ## A382126.P12171476957459716229

`A102683(A086880(n))+A100883(n)`
-/

namespace A382126.P12171476957459716229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A086880 n).toNat + A100883 n

end

end A382126.P12171476957459716229

/-! ## A382126.P631171554239578374

`A268310(A002426(n))+A100883(n)`
-/

namespace A382126.P631171554239578374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268310 (A002426 n).toNat + A100883 n

end

end A382126.P631171554239578374

/-! ## A382126.P7471899295066162259

`A317256(n)+A121262(A275424(n))`
-/

namespace A382126.P7471899295066162259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317256 n + A121262 (A275424 n).toNat

end

end A382126.P7471899295066162259

/-!
# A382128: Fractalization of the Recamán sequence.

The programs for A382128, there is no canonical definition to state claims against.
-/

/-! ## A382128.P12187891882714129204

`A005132(floor(n/(xor(n, n+1)+1)))`
-/

namespace A382128.P12187891882714129204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A382128.P12187891882714129204

/-! ## A382128.P5734121395403156859

`A005132(A025480(n))`
-/

namespace A382128.P5734121395403156859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A025480 n).toNat

end

end A382128.P5734121395403156859

/-! ## A382128.P12695906053573037183

`A005132(A110962(2*n))`
-/

namespace A382128.P12695906053573037183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A110962 (2 * n)).toNat

end

end A382128.P12695906053573037183

/-! ## A382128.P8321298231695844544

`A005132(A003602(n+1)-1)`
-/

namespace A382128.P8321298231695844544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A003602 (n + 1) - 1).toNat

end

end A382128.P8321298231695844544

/-! ## A382128.P2268023081833026738

`A005132(A084964((n+1)/2^val(n+1, 2)))`
-/

namespace A382128.P2268023081833026738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A084964 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A382128.P2268023081833026738

/-! ## A382128.P944477718796961179

`A334950(A000265(n+1))`
-/

namespace A382128.P944477718796961179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334950 (A000265 (n + 1)).toNat

end

end A382128.P944477718796961179

/-!
# A382129: Fractalization of the prime numbers.

The programs for A382129, the canonical program `A382129.P11262417196826873827` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382129 has offset 1).

The definition of A382129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382129.P11262417196826873827

`A000040(A003602(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A382129

/-- `A000040(A003602(n+1))` -/
def P11262417196826873827.Spec : Prop :=
  ∀ n, P11262417196826873827.a n = A382129 (n + 1)

theorem P11262417196826873827.correct : P11262417196826873827.Spec := by
  intro n
  simp only [A382129, Nat.add_sub_cancel]

end A382129

/-! ## A382129.P16834690865365871740

`A000040(A025480(n)+1)`
-/

namespace A382129.P16834690865365871740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025480 n + 1).toNat

end

end A382129.P16834690865365871740

namespace A382129

/-- `A000040(A025480(n)+1)` -/
def P16834690865365871740.Spec : Prop :=
  ∀ n, P16834690865365871740.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P14521279664771144184

`A067747(A000265(n+1))`
-/

namespace A382129.P14521279664771144184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A000265 (n + 1)).toNat

end

end A382129.P14521279664771144184

namespace A382129

/-- `A067747(A000265(n+1))` -/
def P14521279664771144184.Spec : Prop :=
  ∀ n, P14521279664771144184.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P8039972909357157421

`A008578(A025480(n)+2)`
-/

namespace A382129.P8039972909357157421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A025480 n + 2).toNat

end

end A382129.P8039972909357157421

namespace A382129

/-- `A008578(A025480(n)+2)` -/
def P8039972909357157421.Spec : Prop :=
  ∀ n, P8039972909357157421.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P4807986730899757371

`A008578(A003602(n+1)+1)`
-/

namespace A382129.P4807986730899757371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003602 (n + 1) + 1).toNat

end

end A382129.P4807986730899757371

namespace A382129

/-- `A008578(A003602(n+1)+1)` -/
def P4807986730899757371.Spec : Prop :=
  ∀ n, P4807986730899757371.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P1688622001669105016

`A000040(A103391(n+2)-1)`
-/

namespace A382129.P1688622001669105016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103391 (n + 2) - 1).toNat

end

end A382129.P1688622001669105016

namespace A382129

/-- `A000040(A103391(n+2)-1)` -/
def P1688622001669105016.Spec : Prop :=
  ∀ n, P1688622001669105016.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P1511768516634468138

`A000040(A110963(2*n+1))`
-/

namespace A382129.P1511768516634468138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A110963 (2 * n + 1)).toNat

end

end A382129.P1511768516634468138

namespace A382129

/-- `A000040(A110963(2*n+1))` -/
def P1511768516634468138.Spec : Prop :=
  ∀ n, P1511768516634468138.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P11266814659391513345

`A000040(A110962(2*n)+1)`
-/

namespace A382129.P11266814659391513345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A110962 (2 * n) + 1).toNat

end

end A382129.P11266814659391513345

namespace A382129

/-- `A000040(A110962(2*n)+1)` -/
def P11266814659391513345.Spec : Prop :=
  ∀ n, P11266814659391513345.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P12648936926068766485

`A109763(A003961(A064989(n+1)))`
-/

namespace A382129.P12648936926068766485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A003961 (A064989 (n + 1)).toNat).toNat

end

end A382129.P12648936926068766485

namespace A382129

/-- `A109763(A003961(A064989(n+1)))` -/
def P12648936926068766485.Spec : Prop :=
  ∀ n, P12648936926068766485.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P12381301463898213494

`A045965(A181363(n+1))`
-/

namespace A382129.P12381301463898213494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A181363 (n + 1)).toNat

end

end A382129.P12381301463898213494

namespace A382129

/-- `A045965(A181363(n+1))` -/
def P12381301463898213494.Spec : Prop :=
  ∀ n, P12381301463898213494.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P18129520046120701472

`A069577(A213642(n+1))`
-/

namespace A382129.P18129520046120701472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069577 (A213642 (n + 1)).toNat

end

end A382129.P18129520046120701472

namespace A382129

/-- `A069577(A213642(n+1))` -/
def P18129520046120701472.Spec : Prop :=
  ∀ n, P18129520046120701472.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P794438841893722863

`A104887(A249725(n+1))`
-/

namespace A382129.P794438841893722863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (A249725 (n + 1)).toNat

end

end A382129.P794438841893722863

namespace A382129

/-- `A104887(A249725(n+1))` -/
def P794438841893722863.Spec : Prop :=
  ∀ n, P794438841893722863.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P2732673358815033043

`A037126(A209268(n+1))`
-/

namespace A382129.P2732673358815033043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A209268 (n + 1)).toNat

end

end A382129.P2732673358815033043

namespace A382129

/-- `A037126(A209268(n+1))` -/
def P2732673358815033043.Spec : Prop :=
  ∀ n, P2732673358815033043.a n = A382129 (n + 1)

end A382129

/-! ## A382129.P6719900738502319344

`A071956(A191871(n+1))`
-/

namespace A382129.P6719900738502319344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071956 (A191871 (n + 1)).toNat

end

end A382129.P6719900738502319344

namespace A382129

/-- `A071956(A191871(n+1))` -/
def P6719900738502319344.Spec : Prop :=
  ∀ n, P6719900738502319344.a n = A382129 (n + 1)

end A382129

/-!
# A382130: Fractalization of the golden ratio.

The programs for A382130, there is no canonical definition to state claims against.
-/

/-! ## A382130.P15129174734461291826

`A001622(A003602(n+1)-1)`
-/

namespace A382130.P15129174734461291826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A003602 (n + 1) - 1).toNat + 1)

end

end A382130.P15129174734461291826

/-! ## A382130.P9669986238815104199

`A001622(A110963(2*n+1)-1)`
-/

namespace A382130.P9669986238815104199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A110963 (2 * n + 1) - 1).toNat + 1)

end

end A382130.P9669986238815104199

/-! ## A382130.P9082913548288465040

`A098369(C(floor(n/(xor(n, n+1)+1))+1, 2))`
-/

namespace A382130.P9082913548288465040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (Nat.choose (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat 2)

end

end A382130.P9082913548288465040

/-! ## A382130.P2696835376968004201

`A095713(A249725(n+1))`
-/

namespace A382130.P2696835376968004201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A249725 (n + 1)).toNat

end

end A382130.P2696835376968004201

/-! ## A382130.P7569746200682976337

`A138116(A209268(n+1))`
-/

namespace A382130.P7569746200682976337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A209268 (n + 1)).toNat

end

end A382130.P7569746200682976337

/-!
# A382131: Complement of A381767.

The programs for A382131, there is no canonical definition to state claims against.
-/

/-! ## A382131.P1260248208089323081

`A387243(n+1)+1+n`
-/

namespace A382131.P1260248208089323081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387243 (n + 1) + 1 + (n : ℤ)

end

end A382131.P1260248208089323081

/-! ## A382131.P15175911310035877502

`A228074(n)+A121386(A052980(n))`
-/

namespace A382131.P15175911310035877502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 n + A121386 (A052980 n).toNat

end

end A382131.P15175911310035877502

/-!
# A382132: Centered pentagonal numbers which are semiprimes.

The programs for A382132, there is no canonical definition to state claims against.
-/

/-! ## A382132.P10709764171630555595

`filter[A005891(n), A064911(#)]`
-/

namespace A382132.P10709764171630555595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A382132.P10709764171630555595

/-! ## A382132.P14378022561324981756

`filter[A087099(2*n+1), A064911(#)]`
-/

namespace A382132.P14378022561324981756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A382132.P14378022561324981756

/-! ## A382132.P11999748847403025880

`filter[A111712(2*n+1), A064911(#)]`
-/

namespace A382132.P11999748847403025880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A382132.P11999748847403025880

/-! ## A382132.P10180529032326656556

`filter[A330133(2*n+1), A064911(#)]`
-/

namespace A382132.P10180529032326656556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A382132.P10180529032326656556

/-! ## A382132.P14007291382147312370

`∩[A241013(n+1), A005891(n)]`
-/

namespace A382132.P14007291382147312370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382132.P14007291382147312370

/-! ## A382132.P2848746338809177823

`∩[A241013(n+1), A330133(n)]`
-/

namespace A382132.P2848746338809177823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382132.P2848746338809177823

/-!
# A382133: Products of 4 distinct primes that are the average of two consecutive primes.

The programs for A382133, the canonical program `A382133.P15663710745626438162` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382133 has offset 1).

The definition of A382133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382133.P15663710745626438162

`∩[A046386(n+1), A162800(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382133

/-- `∩[A046386(n+1), A162800(n)]` -/
def P15663710745626438162.Spec : Prop :=
  ∀ n, (P15663710745626438162.a n : ℤ) = A382133 (n + 1)

theorem P15663710745626438162.correct : P15663710745626438162.Spec := by
  intro n
  simp only [A382133, Nat.add_sub_cancel]

end A382133

/-! ## A382133.P14126341629674805164

`∩[A024675(n+1), A046386(n+1)]`
-/

namespace A382133.P14126341629674805164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382133.P14126341629674805164

namespace A382133

/-- `∩[A024675(n+1), A046386(n+1)]` -/
def P14126341629674805164.Spec : Prop :=
  ∀ n, (P14126341629674805164.a n : ℤ) = A382133 (n + 1)

end A382133

/-! ## A382133.P1254388408814550175

`∩[A046386(n+1), A162735(n+1)]`
-/

namespace A382133.P1254388408814550175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382133.P1254388408814550175

namespace A382133

/-- `∩[A046386(n+1), A162735(n+1)]` -/
def P1254388408814550175.Spec : Prop :=
  ∀ n, (P1254388408814550175.a n : ℤ) = A382133 (n + 1)

end A382133

/-! ## A382133.P11717485216846063286

`∩[A046386(n+1), A145025(n+1)]`
-/

namespace A382133.P11717485216846063286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382133.P11717485216846063286

namespace A382133

/-- `∩[A046386(n+1), A145025(n+1)]` -/
def P11717485216846063286.Spec : Prop :=
  ∀ n, (P11717485216846063286.a n : ℤ) = A382133 (n + 1)

end A382133

/-!
# A382134: Number of completely asymmetric matchings (not containing centered or coupled arcs) of [2n].

The programs for A382134, there is no canonical definition to state claims against.
-/

/-! ## A382134.P14365605439335217808

`2^n*A001205(n)`
-/

namespace A382134.P14365605439335217808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001205 n

end

end A382134.P14365605439335217808

/-! ## A382134.P10546381739972815552

`A001205(n)*A011782(n+1)`
-/

namespace A382134.P10546381739972815552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 n * A011782 (n + 1)

end

end A382134.P10546381739972815552

/-! ## A382134.P1240208886823498251

`A001205(n)*A016116(2*n+1)`
-/

namespace A382134.P1240208886823498251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 n * A016116 (2 * n + 1)

end

end A382134.P1240208886823498251

/-! ## A382134.P18298613389199112732

`A001205(n)*A059268(A001105(n))`
-/

namespace A382134.P18298613389199112732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 n * A059268 (A001105 n).toNat

end

end A382134.P18298613389199112732

/-! ## A382134.P7414792042453624490

`A001205(n)*A156552(A000040(n+1))`
-/

namespace A382134.P7414792042453624490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 n * A156552 (A000040 (n + 1)).toNat

end

end A382134.P7414792042453624490

/-!
# A382135: Square array read by antidiagonals: T(n,k) = S(n+k) - S(n) - S(k) - min(n,k), where S(k) = A000788(k-1).

The programs for A382135, there is no canonical definition to state claims against.
-/

/-! ## A382135.P4551371297677962025

`A062301(A059366(n))`
-/

namespace A382135.P4551371297677962025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (A059366 n).toNat

end

end A382135.P4551371297677962025

/-! ## A382135.P11179604657982089987

`A092248(A085881(n))`
-/

namespace A382135.P11179604657982089987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (A085881 n).toNat

end

end A382135.P11179604657982089987

/-! ## A382135.P3148878672973572338

`A138712(A098509(n))`
-/

namespace A382135.P3148878672973572338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138712 (A098509 n).toNat

end

end A382135.P3148878672973572338

/-! ## A382135.P11199695611562606635

`A179010(A156197(n))`
-/

namespace A382135.P11199695611562606635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179010 (A156197 n).toNat

end

end A382135.P11199695611562606635

/-! ## A382135.P14075638398009388630

`A288752(A053979(n))`
-/

namespace A382135.P14075638398009388630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288752 (A053979 n).toNat

end

end A382135.P14075638398009388630

/-!
# A382136: Number of triples of non-crossing lattice paths from (0,0) to (n,n) using (1,0) and (0,1) as steps.

The programs for A382136, there is no canonical definition to state claims against.
-/

/-! ## A382136.P15171286106827174424

`A056939(∑[4*n])`
-/

namespace A382136.P15171286106827174424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382136.P15171286106827174424

/-! ## A382136.P5584759114512699938

`A359363(2*(n+1)²)`
-/

namespace A382136.P5584759114512699938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359363 (2 * (n + 1) ^ 2)

end

end A382136.P5584759114512699938

/-! ## A382136.P14431051156670687881

`A000108(n)*A001246(n+1)`
-/

namespace A382136.P14431051156670687881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001246 (n + 1)

end

end A382136.P14431051156670687881

/-! ## A382136.P14777010090968635279

`A000108(n+1)*A005568(n)`
-/

namespace A382136.P14777010090968635279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A005568 n

end

end A382136.P14777010090968635279

/-! ## A382136.P12433053381498368936

`A000108(n+1)²*A000108(n)`
-/

namespace A382136.P12433053381498368936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) ^ 2 * A000108 n

end

end A382136.P12433053381498368936

/-! ## A382136.P944582582956169340

`A000108(n+1)*A005817(2*n)`
-/

namespace A382136.P944582582956169340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A005817 (2 * n)

end

end A382136.P944582582956169340

/-! ## A382136.P14499660960956050606

`A000108(n+1)*A302093(2*n)`
-/

namespace A382136.P14499660960956050606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A302093 (2 * n)

end

end A382136.P14499660960956050606

/-! ## A382136.P1931421752143462249

`A005568(n)/A000108(n)*A005568(n)`
-/

namespace A382136.P1931421752143462249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005568 n : ℚ) / (A000108 n : ℚ) * (A005568 n : ℚ)

end

end A382136.P1931421752143462249

/-! ## A382136.P2713440172234424042

`(A094639(n+1)-A094639(n))*A000108(n)`
-/

namespace A382136.P2713440172234424042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094639 (n + 1) - A094639 n) * A000108 n

end

end A382136.P2713440172234424042

/-! ## A382136.P12446176577810481528

`A001791(n+1)/A002414(n+1)*A060150(n+1)`
-/

namespace A382136.P12446176577810481528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001791 (n + 1) : ℚ) / (A002414 (n + 1) : ℚ) * (A060150 (n + 1) : ℚ)

end

end A382136.P12446176577810481528

/-!
# A382138: a(n) = A381800(n) - A381798(n).

The programs for A382138, there is no canonical definition to state claims against.
-/

/-! ## A382138.P2033886451854517304

`A381800(n+1)-A381798(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382138.P2033886451854517304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381800 (n + 1) - A381798 (n + 1)

end

end A382138.P2033886451854517304

/-! ## A382138.P10356868654663384301

`A010846(n+1)+A381804(n+1)-A381798(n+1)`
-/

namespace A382138.P10356868654663384301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) + (A381804 (n + 1) - A381798 (n + 1))

end

end A382138.P10356868654663384301

/-! ## A382138.P7235290445730730962

`∑{d}[n+1, A143731(#)*A284432((n+1)/#)]`
-/

namespace A382138.P7235290445730730962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143731 d * A284432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382138.P7235290445730730962

/-! ## A382138.P2340629010474056541

`∑{d}[n+1, A177847(#)*A362983((n+1)/#)]`
-/

namespace A382138.P2340629010474056541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A177847 d * A362983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382138.P2340629010474056541

/-! ## A382138.P11637979310299477303

`∑{d}[n+1, A103687(#)*A297155((n+1)/#)]`
-/

namespace A382138.P11637979310299477303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103687 d * A297155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382138.P11637979310299477303

/-!
# A382139: Number of matchings of [2n] with no coupled arcs.

The programs for A382139, there is no canonical definition to state claims against.
-/

/-! ## A382139.P17120718837748446095

`or(1, A343379(A051890(n)))`
-/

namespace A382139.P17120718837748446095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A343379 (A051890 n).toNat)

end

end A382139.P17120718837748446095

/-! ## A382139.P105053916162126512

`A097992((1-A147704(n))²)`
-/

namespace A382139.P105053916162126512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 ((1 - A147704 n) ^ 2).toNat

end

end A382139.P105053916162126512

/-!
# A382140: Number of facets of the semigroup S_1 arising in studying the "saturation question" for the Lie group A_n.

The programs for A382140, there is no canonical definition to state claims against.
-/

/-! ## A382140.P5105192853613175839

`∑[A112532(n+2)+3]`
-/

namespace A382140.P5105192853613175839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112532 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382140.P5105192853613175839

/-!
# A382141: Number of extremal rays of the semigroup S_1 arising in studying the "saturation question" for the Lie group A_n.

The programs for A382141, there is no canonical definition to state claims against.
-/

/-! ## A382141.P2057907157530856559

`14*a(n-3)` with `a(0)=3, a(1)=8, a(2)=18`
-/

namespace A382141.P2057907157530856559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8, 18] fun n a =>
  14 * a (n - 3)

end

end A382141.P2057907157530856559

/-!
# A382149: Primes p such that the elliptic curve X_0^{+}(p) has genus 2.

The programs for A382149, there is no canonical definition to state claims against.
-/

/-! ## A382149.P8487522128671268373

`p?[A276185(n+1)]`
-/

namespace A382149.P8487522128671268373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A382149.P8487522128671268373

/-!
# A382150: Primes p such that the elliptic curve X_0^{+}(p) has genus 3.

The programs for A382150, there is no canonical definition to state claims against.
-/

/-! ## A382150.P12756060070150504117

`p?[A276186(n+1)]`
-/

namespace A382150.P12756060070150504117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A382150.P12756060070150504117

/-! ## A382150.P12226959061184678097

`filter[A276186(n+1), A010051(#)]`
-/

namespace A382150.P12226959061184678097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A382150.P12226959061184678097

/-! ## A382150.P364578308524140471

`filter[A276186(n+1), A080339(#)]`
-/

namespace A382150.P364578308524140471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A382150.P364578308524140471

/-! ## A382150.P15084200837511033836

`filter[A276186(n+1), A080545(#)]`
-/

namespace A382150.P15084200837511033836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A382150.P15084200837511033836

/-! ## A382150.P1151454145429398031

`filter[A276186(n+1), A171387(#)]`
-/

namespace A382150.P1151454145429398031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A382150.P1151454145429398031

/-!
# A382151: Primes p such that some elliptic curve over Q admits a Q-rational p-isogeny.

The programs for A382151, there is no canonical definition to state claims against.
-/

/-! ## A382151.P13674067010420165398

`p?[A382152(n+1)]`
-/

namespace A382151.P13674067010420165398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A382151.P13674067010420165398

/-! ## A382151.P5873968819951698238

`filter[A382152(n+1), A010051(#)]`
-/

namespace A382151.P5873968819951698238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A382151.P5873968819951698238

/-! ## A382151.P5763068973873923153

`filter[A382152(n+1), A252233(#)]`
-/

namespace A382151.P5763068973873923153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A382151.P5763068973873923153

/-! ## A382151.P11970105328383436763

`filter[A382152(n+1), A358751(#)]`
-/

namespace A382151.P11970105328383436763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A382151.P11970105328383436763

/-! ## A382151.P15749938331252570044

`filter[A382152(n+1), A374130(#)]`
-/

namespace A382151.P15749938331252570044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A382151.P15749938331252570044

/-!
# A382152: Numbers k such that there is an elliptic curve defined over Q with a Q-rational cyclic isogeny of degree k.

The programs for A382152, there is no canonical definition to state claims against.
-/

/-! ## A382152.P1698023174769212775

`lt[A337601(n), A302984(A358428(n+1))]`
-/

namespace A382152.P1698023174769212775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302984 (A358428 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382152.P1698023174769212775

/-! ## A382152.P3265503648340205522

`lt[A324241(A091195(n+1)), A341515(n+1)]`
-/

namespace A382152.P3265503648340205522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324241 (A091195 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382152.P3265503648340205522

/-! ## A382152.P8874331569513890088

`lt[A000265(A179309(n+3)), A000096(n+1)]`
-/

namespace A382152.P8874331569513890088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A179309 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382152.P8874331569513890088

/-! ## A382152.P7810952888190391579

`lt[A057163(A325365(n+4)), A018900(n+1)]`
-/

namespace A382152.P7810952888190391579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A325365 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382152.P7810952888190391579

/-! ## A382152.P17282813662417580137

`lt[A179386(A328399(n+2)), A287266(3*n+1)]`
-/

namespace A382152.P17282813662417580137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179386 (A328399 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287266 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382152.P17282813662417580137

/-!
# A382153: Numbers k such that there is an exceptional k-isogeny arising from the rational points on an elliptic curve X_0^{+}(k) of genus at most 6.

The programs for A382153, there is no canonical definition to state claims against.
-/

/-! ## A382153.P2870582365379906295

`A353686(xor(A003333(2*(n+2)), A275593(n+1)))`
-/

namespace A382153.P2870582365379906295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353686 (Int.xor (A003333 (2 * (n + 2))) (A275593 (n + 1))).toNat

end

end A382153.P2870582365379906295

/-!
# A382154: a(0) = 1; thereafter a(n) = 2*n if n even or 4*n if n odd.

The programs for A382154, the canonical program `A382154.P795092621832110477` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382154 has offset 0).

The definition of A382154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382154.P795092621832110477

`C(2, n+2)+2*lcm(2, n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A382154

/-- `C(2, n+2)+2*lcm(2, n)` -/
def P795092621832110477.Spec : Prop :=
  ∀ n, (P795092621832110477.a n : ℤ) = A382154 n

theorem P795092621832110477.correct : P795092621832110477.Spec := by
  intro n
  simp only [A382154]

end A382154

/-! ## A382154.P898931881963536979

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A382154.P898931881963536979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A382154.P898931881963536979

namespace A382154

/-- `a(n-2)/(1-2/n)` -/
def P898931881963536979.Spec : Prop :=
  ∀ n, P898931881963536979.a n = (A382154 n : ℚ)

end A382154

/-! ## A382154.P4247884322051058096

`n*gcd(2*(n+1), a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A382154.P4247884322051058096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  n * Nat.gcd (2 * (n + 1)) (a (n - 1))

end

end A382154.P4247884322051058096

namespace A382154

/-- `n*gcd(2*(n+1), a(n-1))` -/
def P4247884322051058096.Spec : Prop :=
  ∀ n, (P4247884322051058096.a n : ℤ) = A382154 n

end A382154

/-! ## A382154.P4920062545437542671

`n*((a(n-1)+4)%n+2)` with `a(0)=1, a(1)=4`
-/

namespace A382154.P4920062545437542671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  n * ((a (n - 1) + 4) % n + 2)

end

end A382154.P4920062545437542671

namespace A382154

/-- `n*((a(n-1)+4)%n+2)` -/
def P4920062545437542671.Spec : Prop :=
  ∀ n, (P4920062545437542671.a n : ℤ) = A382154 n

end A382154

/-! ## A382154.P15051296754441761762

`gcd(C(n, 2)*a(n-1), (2*n)²)` with `a(0)=1`
-/

namespace A382154.P15051296754441761762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd (Nat.choose n 2 * a (n - 1)) ((2 * n) ^ 2)

end

end A382154.P15051296754441761762

namespace A382154

/-- `gcd(C(n, 2)*a(n-1), (2*n)²)` -/
def P15051296754441761762.Spec : Prop :=
  ∀ n, (P15051296754441761762.a n : ℤ) = A382154 n

end A382154

/-! ## A382154.P9214230032462588772

`C(2, n+2)+2*n*gcd(2, n+1)`
-/

namespace A382154.P9214230032462588772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 2 * n * Nat.gcd 2 (n + 1)

end

end A382154.P9214230032462588772

namespace A382154

/-- `C(2, n+2)+2*n*gcd(2, n+1)` -/
def P9214230032462588772.Spec : Prop :=
  ∀ n, (P9214230032462588772.a n : ℤ) = A382154 n

end A382154

/-! ## A382154.P1229488922785823568

`a(n-1)*a(n%2)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A382154.P1229488922785823568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 1) * a (n % 2) - a (n - 2)

end

end A382154.P1229488922785823568

namespace A382154

/-- `a(n-1)*a(n%2)-a(n-2)` -/
def P1229488922785823568.Spec : Prop :=
  ∀ n, P1229488922785823568.a n = A382154 n

end A382154

/-! ## A382154.P3019117786845585350

`gcd(2*n*gcd(n-1, 2*n), C(n, 2*n))`
-/

namespace A382154.P3019117786845585350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n * Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)) (Nat.choose n (2 * n))

end

end A382154.P3019117786845585350

namespace A382154

/-- `gcd(2*n*gcd(n-1, 2*n), C(n, 2*n))` -/
def P3019117786845585350.Spec : Prop :=
  ∀ n, (P3019117786845585350.a n : ℤ) = A382154 n

end A382154

/-! ## A382154.P5547186918336189352

`gcd((n+1)*2*n, floor((2*n+1)²/(n+1)))`
-/

namespace A382154.P5547186918336189352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) * (2 * n) : ℤ) ⌊((2 * n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A382154.P5547186918336189352

namespace A382154

/-- `gcd((n+1)*2*n, floor((2*n+1)²/(n+1)))` -/
def P5547186918336189352.Spec : Prop :=
  ∀ n, (P5547186918336189352.a n : ℤ) = A382154 n

end A382154

/-! ## A382154.P7572528669654303422

`A008574(A026741(n))`
-/

namespace A382154.P7572528669654303422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A026741 n).toNat

end

end A382154.P7572528669654303422

namespace A382154

/-- `A008574(A026741(n))` -/
def P7572528669654303422.Spec : Prop :=
  ∀ n, P7572528669654303422.a n = A382154 n

end A382154

/-! ## A382154.P12001613010540033842

`A181983(n)+A008486(n)`
-/

namespace A382154.P12001613010540033842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A008486 n

end

end A382154.P12001613010540033842

namespace A382154

/-- `A181983(n)+A008486(n)` -/
def P12001613010540033842.Spec : Prop :=
  ∀ n, P12001613010540033842.a n = A382154 n

end A382154

/-! ## A382154.P5346055824214125508

`A266437(n)+A042948(n)`
-/

namespace A382154.P5346055824214125508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n + A042948 n

end

end A382154.P5346055824214125508

namespace A382154

/-- `A266437(n)+A042948(n)` -/
def P5346055824214125508.Spec : Prop :=
  ∀ n, P5346055824214125508.a n = A382154 n

end A382154

/-! ## A382154.P2887307804315692129

`A347365(n)+A028310(n)`
-/

namespace A382154.P2887307804315692129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n + A028310 n

end

end A382154.P2887307804315692129

namespace A382154

/-- `A347365(n)+A028310(n)` -/
def P2887307804315692129.Spec : Prop :=
  ∀ n, P2887307804315692129.a n = A382154 n

end A382154

/-! ## A382154.P13206783661167608637

`A008486(n)-A038608(n)`
-/

namespace A382154.P13206783661167608637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A038608 n

end

end A382154.P13206783661167608637

namespace A382154

/-- `A008486(n)-A038608(n)` -/
def P13206783661167608637.Spec : Prop :=
  ∀ n, P13206783661167608637.a n = A382154 n

end A382154

/-! ## A382154.P327883871879988957

`A298026(n)-A109043(n)`
-/

namespace A382154.P327883871879988957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n - A109043 n

end

end A382154.P327883871879988957

namespace A382154

/-- `A298026(n)-A109043(n)` -/
def P327883871879988957.Spec : Prop :=
  ∀ n, P327883871879988957.a n = A382154 n

end A382154

/-! ## A382154.P7739477447443705664

`A000034(n)*A004277(n)`
-/

namespace A382154.P7739477447443705664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A004277 n

end

end A382154.P7739477447443705664

namespace A382154

/-- `A000034(n)*A004277(n)` -/
def P7739477447443705664.Spec : Prop :=
  ∀ n, P7739477447443705664.a n = A382154 n

end A382154

/-! ## A382154.P5213110339084910772

`A010685(n)*A257088(n)`
-/

namespace A382154.P5213110339084910772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A257088 n

end

end A382154.P5213110339084910772

namespace A382154

/-- `A010685(n)*A257088(n)` -/
def P5213110339084910772.Spec : Prop :=
  ∀ n, P5213110339084910772.a n = A382154 n

end A382154

/-! ## A382154.P3252690618511955206

`A028310(n)*A382713(n)`
-/

namespace A382154.P3252690618511955206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A382713 n

end

end A382154.P3252690618511955206

namespace A382154

/-- `A028310(n)*A382713(n)` -/
def P3252690618511955206.Spec : Prop :=
  ∀ n, P3252690618511955206.a n = A382154 n

end A382154

/-! ## A382154.P8078748378159824030

`A008574(n/A040001(n))`
-/

namespace A382154.P8078748378159824030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A382154.P8078748378159824030

namespace A382154

/-- `A008574(n/A040001(n))` -/
def P8078748378159824030.Spec : Prop :=
  ∀ n, P8078748378159824030.a n = A382154 n

end A382154

/-! ## A382154.P4568947076315680088

`A298040(n)/A072996(n)`
-/

namespace A382154.P4568947076315680088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298040 n : ℚ) / (A072996 n : ℚ)

end

end A382154.P4568947076315680088

namespace A382154

/-- `A298040(n)/A072996(n)` -/
def P4568947076315680088.Spec : Prop :=
  ∀ n, P4568947076315680088.a n = (A382154 n : ℚ)

end A382154

/-!
# A382155: a(n) = (n+1)! if n <= 2; thereafter a(n) = 4*n if n even or 2*n if n odd.

The programs for A382155, the canonical program `A382155.P389833531043919300` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382155 has offset 0).

The definition of A382155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382155.P389833531043919300

`(gcd(n, C(2, n))+n)*gcd(2, ∏{p}[n, #])`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A382155

/-- `(gcd(n, C(2, n))+n)*gcd(2, ∏{p}[n, #])` -/
def P389833531043919300.Spec : Prop :=
  ∀ n, (P389833531043919300.a n : ℤ) = A382155 n

theorem P389833531043919300.correct : P389833531043919300.Spec := by
  intro n
  simp only [A382155]

end A382155

/-! ## A382155.P12231125150771395166

`A040001(n)*A316571(n+1)`
-/

namespace A382155.P12231125150771395166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A316571 (n + 1)

end

end A382155.P12231125150771395166

namespace A382155

/-- `A040001(n)*A316571(n+1)` -/
def P12231125150771395166.Spec : Prop :=
  ∀ n, P12231125150771395166.a n = A382155 n

end A382155

/-! ## A382155.P12124991392991735797

`A299231(A093178(n+1))+A163985(n)`
-/

namespace A382155.P12124991392991735797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299231 (A093178 (n + 1)).toNat + A163985 n

end

end A382155.P12124991392991735797

namespace A382155

/-- `A299231(A093178(n+1))+A163985(n)` -/
def P12124991392991735797.Spec : Prop :=
  ∀ n, P12124991392991735797.a n = A382155 n

end A382155

/-! ## A382155.P14651075662342477817

`A288699(n)+A123168(n+1)`
-/

namespace A382155.P14651075662342477817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 n + A123168 (n + 1)

end

end A382155.P14651075662342477817

namespace A382155

/-- `A288699(n)+A123168(n+1)` -/
def P14651075662342477817.Spec : Prop :=
  ∀ n, P14651075662342477817.a n = A382155 n

end A382155

/-! ## A382155.P3023104030539222425

`A288699(A257088(n))*A316571(n+1)`
-/

namespace A382155.P3023104030539222425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 (A257088 n).toNat * A316571 (n + 1)

end

end A382155.P3023104030539222425

namespace A382155

/-- `A288699(A257088(n))*A316571(n+1)` -/
def P3023104030539222425.Spec : Prop :=
  ∀ n, P3023104030539222425.a n = A382155 n

end A382155

/-! ## A382155.P8307034975945989969

`A288699(n²)*A316571(n+1)`
-/

namespace A382155.P8307034975945989969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 (n ^ 2) * A316571 (n + 1)

end

end A382155.P8307034975945989969

namespace A382155

/-- `A288699(n²)*A316571(n+1)` -/
def P8307034975945989969.Spec : Prop :=
  ∀ n, P8307034975945989969.a n = A382155 n

end A382155

/-!
# A382156: Partial sums of A382155.

The programs for A382156, the canonical program `A382156.P9055316686753480481` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382156 has offset 0).

The definition of A382156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382156.P9055316686753480481

`∑[C(2*n, a(n-1)+1)+2*n]` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A382156

/-- `∑[C(2*n, a(n-1)+1)+2*n]` -/
def P9055316686753480481.Spec : Prop :=
  ∀ n, (P9055316686753480481.a n : ℤ) = A382156 n

theorem P9055316686753480481.correct : P9055316686753480481.Spec := by
  intro n
  simp only [A382156]

end A382156

/-! ## A382156.P11477405119484333047

`∑[floor((2*n+1)/a(n-1))]+n²` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A382156.P11477405119484333047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 1] fun n f1 =>
  ⌊(2 * n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A382156.P11477405119484333047

namespace A382156

/-- `∑[floor((2*n+1)/a(n-1))]+n²` -/
def P11477405119484333047.Spec : Prop :=
  ∀ n, P11477405119484333047.a n = A382156 n

end A382156

/-! ## A382156.P1713514795179601398

`∑[A382155(n)]`
-/

namespace A382156.P1713514795179601398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382156.P1713514795179601398

namespace A382156

/-- `∑[A382155(n)]` -/
def P1713514795179601398.Spec : Prop :=
  ∀ n, P1713514795179601398.a n = A382156 n

end A382156

/-! ## A382156.P2747637903253707035

`∑[A040001(n)*A316571(n+1)]`
-/

namespace A382156.P2747637903253707035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A316571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382156.P2747637903253707035

namespace A382156

/-- `∑[A040001(n)*A316571(n+1)]` -/
def P2747637903253707035.Spec : Prop :=
  ∀ n, P2747637903253707035.a n = A382156 n

end A382156

/-! ## A382156.P6530039947338407148

`∑[A288699(n)+A123168(n+1)]`
-/

namespace A382156.P6530039947338407148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 n + A123168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382156.P6530039947338407148

namespace A382156

/-- `∑[A288699(n)+A123168(n+1)]` -/
def P6530039947338407148.Spec : Prop :=
  ∀ n, P6530039947338407148.a n = A382156 n

end A382156

/-!
# A382157: Number of n-node digraphs without loops, not necessarily connected, which are squares.

The programs for A382157, there is no canonical definition to state claims against.
-/

/-! ## A382157.P9970519930461617730

`A357645(A000108(n))+A108042(n)`
-/

namespace A382157.P9970519930461617730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357645 (A000108 n).toNat + A108042 n

end

end A382157.P9970519930461617730

/-! ## A382157.P5061613991388467121

`A304038(A279564(n))+A045846(n)`
-/

namespace A382157.P5061613991388467121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304038 (A279564 n).toNat + A045846 n

end

end A382157.P5061613991388467121

/-!
# A382158: Number of n-node oriented graphs (no loops or cycles of length 2), not necessarily connected, which are squares.

The programs for A382158, there is no canonical definition to state claims against.
-/

/-! ## A382158.P9146199393213678650

`A027563(A000108(n))`
-/

namespace A382158.P9146199393213678650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027563 (A000108 n).toNat

end

end A382158.P9146199393213678650

/-! ## A382158.P10180491839977588330

`A027563(A258223(∑[n]))`
-/

namespace A382158.P10180491839977588330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027563 (A258223 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A382158.P10180491839977588330

/-!
# A382162: Number of pairs (i,j), 1 <= i < j <= n such that A019444(i) < A019444(j).

The programs for A382162, there is no canonical definition to state claims against.
-/

/-! ## A382162.P6817078104440070881

`∑[A019586(A007066(n+1))]`
-/

namespace A382162.P6817078104440070881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A007066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382162.P6817078104440070881

/-! ## A382162.P13149530244693203002

`A293688(n)-A000217(A005206(n))`
-/

namespace A382162.P13149530244693203002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n - A000217 (A005206 n).toNat

end

end A382162.P13149530244693203002

/-! ## A382162.P1139344362326572189

`A000217(n)-A000217(A060144(n+1))`
-/

namespace A382162.P1139344362326572189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A000217 (A060144 (n + 1)).toNat

end

end A382162.P1139344362326572189

/-! ## A382162.P4367307755423493859

`A220838(A287384(n)+A003622(n+1))`
-/

namespace A382162.P4367307755423493859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (A287384 n + A003622 (n + 1)).toNat

end

end A382162.P4367307755423493859

/-! ## A382162.P8870044949584586493

`A251629(∑[record[A321014(n+1)]])`
-/

namespace A382162.P8870044949584586493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382162.P8870044949584586493

/-!
# A382165: Kaprekar numbers (A006886) that are divisible by the sum of their digits.

The programs for A382165, there is no canonical definition to state claims against.
-/

/-! ## A382165.P7990719946501165480

`filter[A006886(n+1), A188641(#)]`
-/

namespace A382165.P7990719946501165480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A382165.P7990719946501165480

/-!
# A382166: Self-numbers (A003052) that are cubes.

The programs for A382166, there is no canonical definition to state claims against.
-/

/-! ## A382166.P13160618304798784162

`A179163(A196529(n+1)+A130246(n))`
-/

namespace A382166.P13160618304798784162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179163 (A196529 (n + 1) + A130246 n).toNat

end

end A382166.P13160618304798784162

/-!
# A382167: Repdigit self-numbers that are not in A337208.

The programs for A382167, there is no canonical definition to state claims against.
-/

/-! ## A382167.P13129758263390565124

`A072482(a(n-1)+2)` with `a(0)=3`
-/

namespace A382167.P13129758263390565124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A072482 (a (n - 1) + 2).toNat

end

end A382167.P13129758263390565124

/-!
# A382168: Number of triples (i,j,k), 1 <= i < j < k <= n such that A019444(i) < A019444(k) < A019444(j).

The programs for A382168, there is no canonical definition to state claims against.
-/

/-! ## A382168.P10423379339677355621

`A382169(A189663(n+2))`
-/

namespace A382168.P10423379339677355621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382169 (A189663 (n + 2)).toNat

end

end A382168.P10423379339677355621

/-! ## A382168.P541951964767039688

`A382169(A060144(n+1)+1)`
-/

namespace A382168.P541951964767039688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382169 (A060144 (n + 1) + 1).toNat

end

end A382168.P541951964767039688

/-! ## A382168.P6703530176225803552

`A382169(n+1-A060143(n+1))`
-/

namespace A382168.P6703530176225803552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382169 ((n + 1 : ℤ) - A060143 (n + 1)).toNat

end

end A382168.P6703530176225803552

/-! ## A382168.P275849314222475131

`A382169(n+2-A019446(n+1))`
-/

namespace A382168.P275849314222475131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382169 ((n + 2 : ℤ) - A019446 (n + 1)).toNat

end

end A382168.P275849314222475131

/-!
# A382169: A382168 with duplicates removed.

The programs for A382169, there is no canonical definition to state claims against.
-/

/-! ## A382169.P13130860119008919068

`∑[C(ceil(ϕ*n), 2)]`
-/

namespace A382169.P13130860119008919068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.goldenRatio * (n : ℝ)⌉.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382169.P13130860119008919068

/-! ## A382169.P1718645294822496581

`∑[A000217(floor(ϕ*n))]`
-/

namespace A382169.P1718645294822496581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382169.P1718645294822496581

/-! ## A382169.P15653106822876010212

`∑[A002378(floor(ϕ*n))/2]`
-/

namespace A382169.P15653106822876010212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382169.P15653106822876010212

/-! ## A382169.P694787132834937048

`∑[A161680(A004956(n))]`
-/

namespace A382169.P694787132834937048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004956 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382169.P694787132834937048

/-! ## A382169.P2088244942112923352

`A382168(A026352(n))`
-/

namespace A382169.P2088244942112923352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382168 (A026352 n).toNat

end

end A382169.P2088244942112923352

/-!
# A382170: a(0) = 0; for n >= 1, one-eighth of the number of points on the elliptic curve y^2 = x^3 - x defined over GF(5^n).

The programs for A382170, there is no canonical definition to state claims against.
-/

/-! ## A382170.P11792357655857652179

`A296610(A000045(2*n)+floor(n/(xor(n, n+1)+1)))`
-/

namespace A382170.P11792357655857652179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 (A000045 (2 * n) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A382170.P11792357655857652179

/-!
# A382171: a(0) = 0; for n >= 1, one quarter of the number of points on the elliptic curve y^2 = x^3 - x defined over GF(3^n).

The programs for A382171, there is no canonical definition to state claims against.
-/

/-! ## A382171.P10731794385224402235

`A343317(A099583(n+1))`
-/

namespace A382171.P10731794385224402235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343317 (A099583 (n + 1)).toNat

end

end A382171.P10731794385224402235

/-! ## A382171.P5443930335904791072

`A007306(A319209(n+1))-A023361(n)`
-/

namespace A382171.P5443930335904791072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A319209 (n + 1)).toNat - A023361 n

end

end A382171.P5443930335904791072

/-!
# A382172: Irregular triangle read by rows in which row n contains the digits of the period of 1/n when expanded in golden ratio base.

The programs for A382172, there is no canonical definition to state claims against.
-/

/-! ## A382172.P319148143721200780

`and(A129376(n+1), A179763(n+1))`
-/

namespace A382172.P319148143721200780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129376 (n + 1)) (A179763 (n + 1))

end

end A382172.P319148143721200780

/-! ## A382172.P4715447497974411507

`A179831(A328673(n+4)+A179831(n+1))`
-/

namespace A382172.P4715447497974411507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (A328673 (n + 4) + A179831 (n + 1)).toNat

end

end A382172.P4715447497974411507

/-! ## A382172.P2482469023438961159

`A000720(A122237(2*(n+1)))%2`
-/

namespace A382172.P2482469023438961159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A122237 (2 * (n + 1))).toNat) 2

end

end A382172.P2482469023438961159

/-! ## A382172.P13267357208449279928

`A075743(A270867(n+4)+A165052(n))`
-/

namespace A382172.P13267357208449279928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A270867 (n + 4) + A165052 n).toNat

end

end A382172.P13267357208449279928

/-! ## A382172.P14860331619371131410

`A074286(A331785(2*(n+2)))%A074292(n+1)`
-/

namespace A382172.P14860331619371131410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074286 (A331785 (2 * (n + 2))).toNat) (A074292 (n + 1))

end

end A382172.P14860331619371131410

/-!
# A382174: Numbers k such that A382173(k) >= k.

The programs for A382174, there is no canonical definition to state claims against.
-/

/-! ## A382174.P12801607365055831045

`lt[n, A382173(n+1)]+1`
-/

namespace A382174.P12801607365055831045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382174.P12801607365055831045

/-!
# A382175: Indices of records in A382173.

The programs for A382175, there is no canonical definition to state claims against.
-/

/-! ## A382175.P13735532430173540923

`A326612(n+1)%A101451(n+1)`
-/

namespace A382175.P13735532430173540923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326612 (n + 1)) (A101451 (n + 1))

end

end A382175.P13735532430173540923

/-! ## A382175.P15782180574397043082

`∩[A124455(n+1), A326612(n+1)]`
-/

namespace A382175.P15782180574397043082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382175.P15782180574397043082

/-! ## A382175.P18264773619969271581

`A326612(n+1)^Δ[A004918(n+1)]`
-/

namespace A382175.P18264773619969271581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326612 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A382175.P18264773619969271581

/-! ## A382175.P17009899426866125935

`A326612(n+1)+A185246(A008955(n))`
-/

namespace A382175.P17009899426866125935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326612 (n + 1) + A185246 (A008955 n).toNat

end

end A382175.P17009899426866125935

/-! ## A382175.P15189150083880924592

`A326612(n+1)+A185246(A223168(n))`
-/

namespace A382175.P15189150083880924592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326612 (n + 1) + A185246 (A223168 n).toNat

end

end A382175.P15189150083880924592

/-!
# A382176: Numbers k such that the period of 1/k when expanded in golden ratio base is palindromic.

The programs for A382176, there is no canonical definition to state claims against.
-/

/-! ## A382176.P11631679099018023387

`A001077(n)*A112798(A002089(n))`
-/

namespace A382176.P11631679099018023387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n * A112798 (A002089 n).toNat

end

end A382176.P11631679099018023387

/-!
# A382177: a(n) is the least k > 1 such that the factorial base expansion of k*n starts with that of n while the remaining digits are zeros.

The programs for A382177, there is no canonical definition to state claims against.
-/

/-! ## A382177.P7198192998148252319

`A167865(A208248(n))+(val(n+1, 2)+1)*∑{d}[n+1, #%2]`
-/

namespace A382177.P7198192998148252319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A208248 n).toNat + (((SequenceMachineLib.valuation (n + 1) 2 + 1) * (∑ d ∈ Nat.divisors (f1 n), d % 2) : ℕ) : ℤ)

end

end A382177.P7198192998148252319

/-! ## A382177.P9783719917922084783

`A225644(n)+A027751(A000357(n))`
-/

namespace A382177.P9783719917922084783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n + A027751 (A000357 n).toNat

end

end A382177.P9783719917922084783

/-!
# A382183: Binary sequence linking A105774 and A382113.

The programs for A382183, there is no canonical definition to state claims against.
-/

/-! ## A382183.P9897379260630498047

`and(A001468(n), A095111(n))`
-/

namespace A382183.P9897379260630498047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001468 n) (A095111 n)

end

end A382183.P9897379260630498047

/-! ## A382183.P10868689072349315728

`and(A052499(n), A095111(n))`
-/

namespace A382183.P10868689072349315728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052499 n) (A095111 n)

end

end A382183.P10868689072349315728

/-! ## A382183.P1279947316112583108

`and(A095111(n), A191402(n))`
-/

namespace A382183.P1279947316112583108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095111 n) (A191402 n)

end

end A382183.P1279947316112583108

/-! ## A382183.P17016582328746942248

`and(A095111(n), A232559(n+1))`
-/

namespace A382183.P17016582328746942248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095111 n) (A232559 (n + 1))

end

end A382183.P17016582328746942248

/-! ## A382183.P5944707468844674478

`and(A095111(n), A276867(n+1))`
-/

namespace A382183.P5944707468844674478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095111 n) (A276867 (n + 1))

end

end A382183.P5944707468844674478

/-! ## A382183.P10311166441050640978

`and(A095111(n), A392842(n+1))`
-/

namespace A382183.P10311166441050640978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095111 n) (A392842 (n + 1))

end

end A382183.P10311166441050640978

/-!
# A382185: a(n) is the n-th tribonacci number modulo the n-th prime.

The programs for A382185, the canonical program `A382185.P3573012059671383348` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382185 has offset 1).

The definition of A382185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382185.P3573012059671383348

`∑[A001590(n)]%A000040(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382185

/-- `∑[A001590(n)]%A000040(n+1)` -/
def P3573012059671383348.Spec : Prop :=
  ∀ n, P3573012059671383348.a n = A382185 (n + 1)

theorem P3573012059671383348.correct : P3573012059671383348.Spec := by
  intro n
  simp only [A382185, Nat.add_sub_cancel]

end A382185

/-! ## A382185.P2903184745648601010

`A000073(n+1)%A000040(n+1)`
-/

namespace A382185.P2903184745648601010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000073 (n + 1)) (A000040 (n + 1))

end

end A382185.P2903184745648601010

namespace A382185

/-- `A000073(n+1)%A000040(n+1)` -/
def P2903184745648601010.Spec : Prop :=
  ∀ n, P2903184745648601010.a n = A382185 (n + 1)

end A382185

/-! ## A382185.P2771412814386707149

`∑[A276658(n)-A081172(n)]%A000040(n+1)`
-/

namespace A382185.P2771412814386707149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n - A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A382185.P2771412814386707149

namespace A382185

/-- `∑[A276658(n)-A081172(n)]%A000040(n+1)` -/
def P2771412814386707149.Spec : Prop :=
  ∀ n, P2771412814386707149.a n = A382185 (n + 1)

end A382185

/-! ## A382185.P17324869990720163344

`∑[A114952(A014601(n+1)-2)]%A000040(n+1)`
-/

namespace A382185.P17324869990720163344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A382185.P17324869990720163344

namespace A382185

/-- `∑[A114952(A014601(n+1)-2)]%A000040(n+1)` -/
def P17324869990720163344.Spec : Prop :=
  ∀ n, P17324869990720163344.a n = A382185 (n + 1)

end A382185

/-! ## A382185.P17319514313986209511

`∑[2*A000213(n)-A214899(n)]%A000040(n+1)`
-/

namespace A382185.P17319514313986209511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000213 n - A214899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A382185.P17319514313986209511

namespace A382185

/-- `∑[2*A000213(n)-A214899(n)]%A000040(n+1)` -/
def P17319514313986209511.Spec : Prop :=
  ∀ n, P17319514313986209511.a n = A382185 (n + 1)

end A382185

/-! ## A382185.P8207897401853295229

`∑[A214825(n)-A047081(n)]%A000040(n+1)`
-/

namespace A382185.P8207897401853295229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n - A047081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A382185.P8207897401853295229

namespace A382185

/-- `∑[A214825(n)-A047081(n)]%A000040(n+1)` -/
def P8207897401853295229.Spec : Prop :=
  ∀ n, P8207897401853295229.a n = A382185 (n + 1)

end A382185

/-!
# A382186: Prime numbers that are the sum of the m-th prime and the m-th semiprime for some m.

The programs for A382186, the canonical program `A382186.P6044696986790569923` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382186 has offset 1).

The definition of A382186 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092108, A133796, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382186.P6044696986790569923

`A133796(A092108(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A382186

/-- `A133796(A092108(n+1))` -/
def P6044696986790569923.Spec : Prop :=
  ∀ n, P6044696986790569923.a n = A382186 (n + 1)

theorem P6044696986790569923.correct : P6044696986790569923.Spec := by
  intro n
  simp only [A382186, Nat.add_sub_cancel]

end A382186

/-! ## A382186.P3133070158727267548

`p?[A133796(n+1)]`
-/

namespace A382186.P3133070158727267548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A382186.P3133070158727267548

namespace A382186

/-- `p?[A133796(n+1)]` -/
def P3133070158727267548.Spec : Prop :=
  ∀ n, P3133070158727267548.a n = A382186 (n + 1)

end A382186

/-! ## A382186.P3662195207454672429

`p?[A001358(n+1)+A000040(n+1)]`
-/

namespace A382186.P3662195207454672429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A382186.P3662195207454672429

namespace A382186

/-- `p?[A001358(n+1)+A000040(n+1)]` -/
def P3662195207454672429.Spec : Prop :=
  ∀ n, P3662195207454672429.a n = A382186 (n + 1)

end A382186

/-! ## A382186.P6528509160692780227

`∩[A133796(n+1), A332787(n+1)]`
-/

namespace A382186.P6528509160692780227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P6528509160692780227

namespace A382186

/-- `∩[A133796(n+1), A332787(n+1)]` -/
def P6528509160692780227.Spec : Prop :=
  ∀ n, (P6528509160692780227.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P13774197557556120014

`∩[A000040(n+1), A133796(n+1)]`
-/

namespace A382186.P13774197557556120014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P13774197557556120014

namespace A382186

/-- `∩[A000040(n+1), A133796(n+1)]` -/
def P13774197557556120014.Spec : Prop :=
  ∀ n, (P13774197557556120014.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P5085558859888644148

`∩[A004139(n+1), A133796(n+1)]`
-/

namespace A382186.P5085558859888644148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P5085558859888644148

namespace A382186

/-- `∩[A004139(n+1), A133796(n+1)]` -/
def P5085558859888644148.Spec : Prop :=
  ∀ n, (P5085558859888644148.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P13061222980996425041

`∩[A006005(n+1), A133796(n+1)]`
-/

namespace A382186.P13061222980996425041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P13061222980996425041

namespace A382186

/-- `∩[A006005(n+1), A133796(n+1)]` -/
def P13061222980996425041.Spec : Prop :=
  ∀ n, (P13061222980996425041.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P9259504495747649834

`∩[A008578(n+1), A133796(n+1)]`
-/

namespace A382186.P9259504495747649834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P9259504495747649834

namespace A382186

/-- `∩[A008578(n+1), A133796(n+1)]` -/
def P9259504495747649834.Spec : Prop :=
  ∀ n, (P9259504495747649834.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P12961719880100158668

`∩[A045319(n+1), A133796(n+1)]`
-/

namespace A382186.P12961719880100158668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P12961719880100158668

namespace A382186

/-- `∩[A045319(n+1), A133796(n+1)]` -/
def P12961719880100158668.Spec : Prop :=
  ∀ n, (P12961719880100158668.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P14804124908013239859

`∩[A045344(n+1), A133796(n+1)]`
-/

namespace A382186.P14804124908013239859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P14804124908013239859

namespace A382186

/-- `∩[A045344(n+1), A133796(n+1)]` -/
def P14804124908013239859.Spec : Prop :=
  ∀ n, (P14804124908013239859.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P1239708393359870911

`∩[A046022(n+1), A133796(n+1)]`
-/

namespace A382186.P1239708393359870911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P1239708393359870911

namespace A382186

/-- `∩[A046022(n+1), A133796(n+1)]` -/
def P1239708393359870911.Spec : Prop :=
  ∀ n, (P1239708393359870911.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P14520844785498930538

`∩[A062972(n+1), A133796(n+1)]`
-/

namespace A382186.P14520844785498930538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P14520844785498930538

namespace A382186

/-- `∩[A062972(n+1), A133796(n+1)]` -/
def P14520844785498930538.Spec : Prop :=
  ∀ n, (P14520844785498930538.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P11877728924559134889

`∩[A065091(n+1), A133796(n+1)]`
-/

namespace A382186.P11877728924559134889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P11877728924559134889

namespace A382186

/-- `∩[A065091(n+1), A133796(n+1)]` -/
def P11877728924559134889.Spec : Prop :=
  ∀ n, (P11877728924559134889.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P12182390368968073057

`∩[A065376(n+1), A133796(n+1)]`
-/

namespace A382186.P12182390368968073057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P12182390368968073057

namespace A382186

/-- `∩[A065376(n+1), A133796(n+1)]` -/
def P12182390368968073057.Spec : Prop :=
  ∀ n, (P12182390368968073057.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P12907598790877939626

`∩[A065396(n+1), A133796(n+1)]`
-/

namespace A382186.P12907598790877939626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P12907598790877939626

namespace A382186

/-- `∩[A065396(n+1), A133796(n+1)]` -/
def P12907598790877939626.Spec : Prop :=
  ∀ n, (P12907598790877939626.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P17360002804394495003

`∩[A070957(n+1), A133796(n+1)]`
-/

namespace A382186.P17360002804394495003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P17360002804394495003

namespace A382186

/-- `∩[A070957(n+1), A133796(n+1)]` -/
def P17360002804394495003.Spec : Prop :=
  ∀ n, (P17360002804394495003.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P12861447412458484101

`∩[A210494(n+1), A133796(n+1)]`
-/

namespace A382186.P12861447412458484101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P12861447412458484101

namespace A382186

/-- `∩[A210494(n+1), A133796(n+1)]` -/
def P12861447412458484101.Spec : Prop :=
  ∀ n, (P12861447412458484101.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P323081750334862572

`∩[A348283(n+1), A133796(n+1)]`
-/

namespace A382186.P323081750334862572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P323081750334862572

namespace A382186

/-- `∩[A348283(n+1), A133796(n+1)]` -/
def P323081750334862572.Spec : Prop :=
  ∀ n, (P323081750334862572.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P8753727543787223332

`∩[A133796(n+1)-A001358(n+1), A133796(n+1)]`
-/

namespace A382186.P8753727543787223332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382186.P8753727543787223332

namespace A382186

/-- `∩[A133796(n+1)-A001358(n+1), A133796(n+1)]` -/
def P8753727543787223332.Spec : Prop :=
  ∀ n, (P8753727543787223332.a n : ℤ) = A382186 (n + 1)

end A382186

/-! ## A382186.P10095321297045717230

`filter[A133796(n+1), A010051(#)]`
-/

namespace A382186.P10095321297045717230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A382186.P10095321297045717230

namespace A382186

/-- `filter[A133796(n+1), A010051(#)]` -/
def P10095321297045717230.Spec : Prop :=
  ∀ n, P10095321297045717230.a n = A382186 (n + 1)

end A382186

/-!
# A382187: Expansion of 1/(1 - 4 * Sum_{k>=0} x^(2^k))^(1/2).

The programs for A382187, there is no canonical definition to state claims against.
-/

/-! ## A382187.P9821097163144290994

`A150840(A001096(n))`
-/

namespace A382187.P9821097163144290994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150840 (A001096 n).toNat

end

end A382187.P9821097163144290994

/-! ## A382187.P15043862484395001866

`filter[A150840(n), A022930(#)]`
-/

namespace A382187.P15043862484395001866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A382187.P15043862484395001866

/-!
# A382188: Expansion of 1/(1 - 9 * Sum_{k>=0} x^(2^k))^(1/3).

The programs for A382188, there is no canonical definition to state claims against.
-/

/-! ## A382188.P8432665122616676067

`Δ[A004526(∑[A118351(n)])]`
-/

namespace A382188.P8432665122616676067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382188.P8432665122616676067

/-!
# A382190: Expansion of 1/(1 - 9 * Sum_{k>=0} x^(3^k))^(1/3).

The programs for A382190, there is no canonical definition to state claims against.
-/

/-! ## A382190.P18443416544135970716

`∑[A258049(∑[A349255(n)])]`
-/

namespace A382190.P18443416544135970716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349255 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258049 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382190.P18443416544135970716

/-!
# A382191: Number of edges of the graph with code A076184(n).

The programs for A382191, there is no canonical definition to state claims against.
-/

/-! ## A382191.P7529413577350342126

`A000120(A076184(n+1))`
-/

namespace A382191.P7529413577350342126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A076184 (n + 1)).toNat

end

end A382191.P7529413577350342126

/-! ## A382191.P289254902657612362

`A000120(A382756(n+1))-1`
-/

namespace A382191.P289254902657612362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A382756 (n + 1)).toNat - 1

end

end A382191.P289254902657612362

/-!
# A382192: Number of components of the graph with code A076184(n).

The programs for A382192, there is no canonical definition to state claims against.
-/

/-! ## A382192.P17813227829218781159

`A351014(gcd(A157915(2*n+5), A375017(n+1)))`
-/

namespace A382192.P17813227829218781159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.gcd (A157915 (2 * n + 5)) (A375017 (n + 1)))

end

end A382192.P17813227829218781159

/-! ## A382192.P5969150611753386172

`val(A334269(n+1)+A202699(n+1), 10)+1`
-/

namespace A382192.P5969150611753386172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334269 (n + 1) + A202699 (n + 1)).toNat 10 + 1

end

end A382192.P5969150611753386172

/-! ## A382192.P4035768733987227878

`A111616(A372081(n+1)+A022303(n+1))`
-/

namespace A382192.P4035768733987227878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A372081 (n + 1) + A022303 (n + 1)).toNat

end

end A382192.P4035768733987227878

/-! ## A382192.P8775049431398174983

`gcd(A054350(n), A098969(n))`
-/

namespace A382192.P8775049431398174983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054350 n) (A098969 n)

end

end A382192.P8775049431398174983

/-! ## A382192.P10137091404537855499

`A345225(A335146(n+2)*A345225(n+1))`
-/

namespace A382192.P10137091404537855499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345225 (A335146 (n + 2) * A345225 (n + 1)).toNat

end

end A382192.P10137091404537855499

/-!
# A382193: List of connected graphs, encoded as in A076184.

The programs for A382193, there is no canonical definition to state claims against.
-/

/-! ## A382193.P4123290205618281340

`∩[A076184(n+1), A203076(n)]`
-/

namespace A382193.P4123290205618281340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382193.P4123290205618281340

/-! ## A382193.P5659789322961759372

`∩[A076184(n+1), A171948(n+1)]`
-/

namespace A382193.P5659789322961759372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382193.P5659789322961759372

/-! ## A382193.P8160403558670679169

`eq[n, A382281(A004177(n))]`
-/

namespace A382193.P8160403558670679169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382281 (A004177 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382193.P8160403558670679169

/-! ## A382193.P17716485998997074607

`eq[n, A382281(A142151(n))]`
-/

namespace A382193.P17716485998997074607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382281 (A142151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382193.P17716485998997074607

/-! ## A382193.P1374188998130175742

`eq[n, A382281(A190621(n))]`
-/

namespace A382193.P1374188998130175742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382281 (A190621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382193.P1374188998130175742

/-!
# A382194: List of connected graphs that are squares, encoded as in A076184.

The programs for A382194, there is no canonical definition to state claims against.
-/

/-! ## A382194.P10635602233638449328

`eq[A071562(A237593(2*n+1)), A109395(n+1)]`
-/

namespace A382194.P10635602233638449328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A237593 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382194.P10635602233638449328

/-! ## A382194.P2979183419628678042

`A175339(A227364(n))`
-/

namespace A382194.P2979183419628678042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175339 (A227364 n).toNat

end

end A382194.P2979183419628678042

/-!
# A382199: Primes p such that for each digit of p, 2*p*(digit) + 1 is prime.

The programs for A382199, there is no canonical definition to state claims against.
-/

/-! ## A382199.P7015907416607959533

`p?[A382179(n+1)]`
-/

namespace A382199.P7015907416607959533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A382199.P7015907416607959533

/-! ## A382199.P7577886847417445337

`∩[A038618(n+1), A382179(n+1)]`
-/

namespace A382199.P7577886847417445337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382199.P7577886847417445337

/-! ## A382199.P18416731517215296971

`∩[A040062(n+1), A382179(n+1)]`
-/

namespace A382199.P18416731517215296971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382199.P18416731517215296971

/-! ## A382199.P2438493588331231435

`filter[A382179(n+1), A010051(#)]`
-/

namespace A382199.P2438493588331231435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A382199.P2438493588331231435

/-! ## A382199.P4214192289322020049

`∩[A000040(n+1), A382179(n+1)]`
-/

namespace A382199.P4214192289322020049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382199.P4214192289322020049

