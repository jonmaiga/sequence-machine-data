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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A212300: Median prime factor of 1..n.

The programs for A212300, there is no canonical definition to state claims against.
-/

/-! ## A212300.P17892522474227413489

`p?[A000196(A012264(A167707(n+1)))]`
-/

namespace A212300.P17892522474227413489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A012264 (A167707 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212300.P17892522474227413489

/-! ## A212300.P5629676522938432054

`p?[A002264(A242258(A122072(n+1)))]`
-/

namespace A212300.P5629676522938432054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A242258 (A122072 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212300.P5629676522938432054

/-! ## A212300.P15317921831033442548

`p?[A257212(A257212(n²+5))]`
-/

namespace A212300.P15317921831033442548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A257212 (n ^ 2 + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212300.P15317921831033442548

/-! ## A212300.P5050622127613865381

`p?[A259361(A196008(n+1)+A035177(2*n+3))]`
-/

namespace A212300.P5050622127613865381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A196008 (n + 1) + A035177 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212300.P5050622127613865381

/-! ## A212300.P13625156839842300438

`A000041(floor(A001749(n+4)/A348612(2*n+5)))`
-/

namespace A212300.P13625156839842300438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(A001749 (n + 4) : ℚ) / (A348612 (2 * n + 5) : ℚ)⌋.toNat

end

end A212300.P13625156839842300438

/-!
# A212301: Coefficients of the twisted K3 elliptic genus attached to the conjugacy class 1A in the Mathieu group M_24.

The programs for A212301, there is no canonical definition to state claims against.
-/

/-! ## A212301.P18168881227615159379

`2*A169717(n)`
-/

namespace A212301.P18168881227615159379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169717 n

end

end A212301.P18168881227615159379

/-! ## A212301.P8882617132406242144

`A169717(A118759(n))/sin(acot(1))²`
-/

namespace A212301.P8882617132406242144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A169717 (A118759 n).toNat : ℝ) / Real.sin (SequenceMachineLib.acot (1 : ℝ)) ^ 2

end

end A212301.P8882617132406242144

/-! ## A212301.P12565152094733858310

`A169717(A032513(n))+A169717(n)`
-/

namespace A212301.P12565152094733858310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169717 (A032513 n).toNat + A169717 n

end

end A212301.P12565152094733858310

/-! ## A212301.P18340556541503843271

`A169717(A055643(n))+A169717(n)`
-/

namespace A212301.P18340556541503843271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169717 (A055643 n).toNat + A169717 n

end

end A212301.P18340556541503843271

/-! ## A212301.P7430820500268108668

`A169717(A118759(n))+A169717(n)`
-/

namespace A212301.P7430820500268108668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169717 (A118759 n).toNat + A169717 n

end

end A212301.P7430820500268108668

/-!
# A212303: a(n) = n!/([(n-1)/2]!*[(n+1)/2]!) for n>0, a(0)=0, and where [ ] = floor.

The programs for A212303, the canonical program `A212303.P5682405961031894287` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212303 has offset 0).

The definition of A212303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212303.P1585604102970493683

`n/2*A241543(n+1)`
-/

namespace A212303.P1585604102970493683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A241543 (n + 1) : ℚ)

end

end A212303.P1585604102970493683

namespace A212303

/-- `n/2*A241543(n+1)` -/
def P1585604102970493683.Spec : Prop :=
  ∀ n, P1585604102970493683.a n = (A212303 n : ℚ)

end A212303

/-! ## A212303.P4814455501450024135

`A189911(n)-A056040(n)`
-/

namespace A212303.P4814455501450024135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 n - A056040 n

end

end A212303.P4814455501450024135

namespace A212303

/-- `A189911(n)-A056040(n)` -/
def P4814455501450024135.Spec : Prop :=
  ∀ n, P4814455501450024135.a n = A212303 n

end A212303

/-! ## A212303.P4621794342539466598

`A026741(n)*A089849(n)`
-/

namespace A212303.P4621794342539466598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A089849 n

end

end A212303.P4621794342539466598

namespace A212303

/-- `A026741(n)*A089849(n)` -/
def P4621794342539466598.Spec : Prop :=
  ∀ n, P4621794342539466598.a n = A212303 n

end A212303

/-! ## A212303.P1556614398565528330

`A037952(n)*A158416(n)`
-/

namespace A212303.P1556614398565528330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n * A158416 n

end

end A212303.P1556614398565528330

namespace A212303

/-- `A037952(n)*A158416(n)` -/
def P1556614398565528330.Spec : Prop :=
  ∀ n, P1556614398565528330.a n = A212303 n

end A212303

/-! ## A212303.P8221364123933027669

`A089408(n)*A385083(n)`
-/

namespace A212303.P8221364123933027669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n * A385083 n

end

end A212303.P8221364123933027669

namespace A212303

/-- `A089408(n)*A385083(n)` -/
def P8221364123933027669.Spec : Prop :=
  ∀ n, P8221364123933027669.a n = A212303 n

end A212303

/-! ## A212303.P3297677237373532295

`A100071(n)/A152271(n)`
-/

namespace A212303.P3297677237373532295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 n : ℚ) / (A152271 n : ℚ)

end

end A212303.P3297677237373532295

namespace A212303

/-- `A100071(n)/A152271(n)` -/
def P3297677237373532295.Spec : Prop :=
  ∀ n, P3297677237373532295.a n = (A212303 n : ℚ)

end A212303

/-! ## A212303.P5682405961031894287

`gcd(A100071(n), A138364(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A212303

/-- `gcd(A100071(n), A138364(n))` -/
def P5682405961031894287.Spec : Prop :=
  ∀ n, (P5682405961031894287.a n : ℤ) = A212303 n

theorem P5682405961031894287.correct : P5682405961031894287.Spec := by
  intro n
  simp only [A212303]

end A212303

/-! ## A212303.P7041075594158748886

`lcm(A001405(n), A037952(n))`
-/

namespace A212303.P7041075594158748886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001405 n) (A037952 n)

end

end A212303.P7041075594158748886

namespace A212303

/-- `lcm(A001405(n), A037952(n))` -/
def P7041075594158748886.Spec : Prop :=
  ∀ n, (P7041075594158748886.a n : ℤ) = A212303 n

end A212303

/-! ## A212303.P16357936432062437739

`A001405(n)*A057979(n+1)`
-/

namespace A212303.P16357936432062437739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A057979 (n + 1)

end

end A212303.P16357936432062437739

namespace A212303

/-- `A001405(n)*A057979(n+1)` -/
def P16357936432062437739.Spec : Prop :=
  ∀ n, P16357936432062437739.a n = A212303 n

end A212303

/-! ## A212303.P8135128375000024371

`A037952(n)*A152271(n+1)`
-/

namespace A212303.P8135128375000024371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n * A152271 (n + 1)

end

end A212303.P8135128375000024371

namespace A212303

/-- `A037952(n)*A152271(n+1)` -/
def P8135128375000024371.Spec : Prop :=
  ∀ n, P8135128375000024371.a n = A212303 n

end A212303

/-! ## A212303.P11748115199363747412

`A037952(n)*A057979(n+3)`
-/

namespace A212303.P11748115199363747412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n * A057979 (n + 3)

end

end A212303.P11748115199363747412

namespace A212303

/-- `A037952(n)*A057979(n+3)` -/
def P11748115199363747412.Spec : Prop :=
  ∀ n, P11748115199363747412.a n = A212303 n

end A212303

/-! ## A212303.P2298471057941625728

`n*A057977(A004273(n)-n)`
-/

namespace A212303.P2298471057941625728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057977 (A004273 n - (n : ℤ)).toNat

end

end A212303.P2298471057941625728

namespace A212303

/-- `n*A057977(A004273(n)-n)` -/
def P2298471057941625728.Spec : Prop :=
  ∀ n, P2298471057941625728.a n = A212303 n

end A212303

/-! ## A212303.P14804105089242811323

`n*gcd(A001405(n), A210736(n))`
-/

namespace A212303.P14804105089242811323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A001405 n) (A210736 n)

end

end A212303.P14804105089242811323

namespace A212303

/-- `n*gcd(A001405(n), A210736(n))` -/
def P14804105089242811323.Spec : Prop :=
  ∀ n, (P14804105089242811323.a n : ℤ) = A212303 n

end A212303

/-! ## A212303.P14504974563287225240

`lcm(A014495(n)+1, Δ[A014495(n)])`
-/

namespace A212303.P14504974563287225240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014495 n + 1) (f1 (n + 1) - f1 n)

end

end A212303.P14504974563287225240

namespace A212303

/-- `lcm(A014495(n)+1, Δ[A014495(n)])` -/
def P14504974563287225240.Spec : Prop :=
  ∀ n, (P14504974563287225240.a n : ℤ) = A212303 n

end A212303

/-! ## A212303.P5558895418668541557

`(A014495(n)+1)*A057979(n+1)`
-/

namespace A212303.P5558895418668541557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A057979 (n + 1)

end

end A212303.P5558895418668541557

namespace A212303

/-- `(A014495(n)+1)*A057979(n+1)` -/
def P5558895418668541557.Spec : Prop :=
  ∀ n, P5558895418668541557.a n = A212303 n

end A212303

/-! ## A212303.P5790002643760723193

`n*A063549(A233583(n+1)-1)`
-/

namespace A212303.P5790002643760723193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063549 (A233583 (n + 1) - 1).toNat

end

end A212303.P5790002643760723193

namespace A212303

/-- `n*A063549(A233583(n+1)-1)` -/
def P5790002643760723193.Spec : Prop :=
  ∀ n, P5790002643760723193.a n = A212303 n

end A212303

/-! ## A212303.P8247566897668842342

`lcm(Δ[A210736(n+1)], A210736(n+1))`
-/

namespace A212303.P8247566897668842342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A210736 (n + 1))

end

end A212303.P8247566897668842342

namespace A212303

/-- `lcm(Δ[A210736(n+1)], A210736(n+1))` -/
def P8247566897668842342.Spec : Prop :=
  ∀ n, (P8247566897668842342.a n : ℤ) = A212303 n

end A212303

/-! ## A212303.P16283374853247056096

`A001405(n)+A100071(n)-A056040(n)`
-/

namespace A212303.P16283374853247056096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A100071 n - A056040 n)

end

end A212303.P16283374853247056096

namespace A212303

/-- `A001405(n)+A100071(n)-A056040(n)` -/
def P16283374853247056096.Spec : Prop :=
  ∀ n, P16283374853247056096.a n = A212303 n

end A212303

/-! ## A212303.P17293397765074910768

`A057977(n)+A189911(n)-A275329(n)`
-/

namespace A212303.P17293397765074910768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n + (A189911 n - A275329 n)

end

end A212303.P17293397765074910768

namespace A212303

/-- `A057977(n)+A189911(n)-A275329(n)` -/
def P17293397765074910768.Spec : Prop :=
  ∀ n, P17293397765074910768.a n = A212303 n

end A212303

/-! ## A212303.P14460748159346056262

`(A027656(n)+A000035(n))*A037952(n)`
-/

namespace A212303.P14460748159346056262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027656 n + A000035 n) * A037952 n

end

end A212303.P14460748159346056262

namespace A212303

/-- `(A027656(n)+A000035(n))*A037952(n)` -/
def P14460748159346056262.Spec : Prop :=
  ∀ n, P14460748159346056262.a n = A212303 n

end A212303

/-!
# A212304: Primes of the form prime(k)^2 + k.

The programs for A212304, there is no canonical definition to state claims against.
-/

/-! ## A212304.P13856450793538899521

`A064361(n+1)+p?[A228828(n+1)]²`
-/

namespace A212304.P13856450793538899521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064361 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A212304.P13856450793538899521

/-! ## A212304.P3802547974937433720

`A064361(n+1)+A001248(A064361(n+1))`
-/

namespace A212304.P3802547974937433720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064361 (n + 1) + A001248 (A064361 (n + 1)).toNat

end

end A212304.P3802547974937433720

/-! ## A212304.P12064765603890151377

`p?[p?[round(8*n/7)]²+n+1]`
-/

namespace A212304.P12064765603890151377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212304.P12064765603890151377

/-! ## A212304.P3809948878010166924

`p?[A066872(n+1)+n]`
-/

namespace A212304.P3809948878010166924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212304.P3809948878010166924

/-! ## A212304.P11138981881971797379

`p?[A280076(n+1)+n]`
-/

namespace A212304.P11138981881971797379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212304.P11138981881971797379

/-!
# A212306: Starting with the positive numbers, each element subtracts its value, a(n), from the next a(n) elements.

The programs for A212306, there is no canonical definition to state claims against.
-/

/-! ## A212306.P17263483575825913592

`A263274(A263274((n*floor(n/ϕ))²))`
-/

namespace A212306.P17263483575825913592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 (A263274 (((n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋) ^ 2).toNat).toNat

end

end A212306.P17263483575825913592

/-! ## A212306.P11330230811067112271

`A232096(A284003(n+4)+A092684(n+3))`
-/

namespace A212306.P11330230811067112271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232096 (A284003 (n + 4) + A092684 (n + 3)).toNat

end

end A212306.P11330230811067112271

/-! ## A212306.P17949192831247021317

`A000120(A028260(n+1)^A246785(n+2))`
-/

namespace A212306.P17949192831247021317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A028260 (n + 1) : ℚ) ^ (A246785 (n + 2) : ℤ))).toNat

end

end A212306.P17949192831247021317

/-! ## A212306.P4639378097111485240

`gcd(A047253(A339158(n+1)), A334878(n+1))`
-/

namespace A212306.P4639378097111485240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047253 (A339158 (n + 1)).toNat) (A334878 (n + 1))

end

end A212306.P4639378097111485240

/-!
# A212307: Numerator of n!/3^n.

The programs for A212307, the canonical program `A212307.P15860954367604951489` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212307 has offset 0).

The definition of A212307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212307.P15860954367604951489

`A000142(n)/A060828(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212307

/-- `A000142(n)/A060828(n)` -/
def P15860954367604951489.Spec : Prop :=
  ∀ n, P15860954367604951489.a n = (A212307 n : ℚ)

end A212307

/-! ## A212307.P15220316297739310349

`a(n-1)*A038502(n)` with `a(0)=1`
-/

namespace A212307.P15220316297739310349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A038502 n

end

end A212307.P15220316297739310349

namespace A212307

/-- `a(n-1)*A038502(n)` -/
def P15220316297739310349.Spec : Prop :=
  ∀ n, P15220316297739310349.a n = A212307 n

end A212307

/-! ## A212307.P9913988235849817599

`A090630(n)/A060828(n)*A251753(n)`
-/

namespace A212307.P9913988235849817599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090630 n : ℚ) / (A060828 n : ℚ) * (A251753 n : ℚ)

end

end A212307.P9913988235849817599

namespace A212307

/-- `A090630(n)/A060828(n)*A251753(n)` -/
def P9913988235849817599.Spec : Prop :=
  ∀ n, P9913988235849817599.a n = (A212307 n : ℚ)

end A212307

/-! ## A212307.P2150623531711115703

`∏[gcd(n, ∏[A038502(n+1)])]`
-/

namespace A212307.P2150623531711115703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212307.P2150623531711115703

namespace A212307

/-- `∏[gcd(n, ∏[A038502(n+1)])]` -/
def P2150623531711115703.Spec : Prop :=
  ∀ n, (P2150623531711115703.a n : ℤ) = A212307 n

end A212307

/-! ## A212307.P9740583939063349341

`A152656(A340266(n+1))`
-/

namespace A212307.P9740583939063349341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 (A340266 (n + 1)).toNat

end

end A212307.P9740583939063349341

namespace A212307

/-- `A152656(A340266(n+1))` -/
def P9740583939063349341.Spec : Prop :=
  ∀ n, P9740583939063349341.a n = A212307 n

end A212307

/-! ## A212307.P7119462302562766240

`gcd(n!, ∏[comp[3*n]])`
-/

namespace A212307.P7119462302562766240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A212307.P7119462302562766240

namespace A212307

/-- `gcd(n!, ∏[comp[3*n]])` -/
def P7119462302562766240.Spec : Prop :=
  ∀ n, (P7119462302562766240.a n : ℤ) = A212307 n

end A212307

/-! ## A212307.P12169481308156532860

`A007559(n)/A004117(n)`
-/

namespace A212307.P12169481308156532860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007559 n : ℚ) / (A004117 n : ℚ)

end

end A212307.P12169481308156532860

namespace A212307

/-- `A007559(n)/A004117(n)` -/
def P12169481308156532860.Spec : Prop :=
  ∀ n, P12169481308156532860.a n = (A212307 n : ℚ)

end A212307

/-! ## A212307.P14804474602808540612

`gcd(A000142(n), A007559(n))`
-/

namespace A212307.P14804474602808540612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A007559 n)

end

end A212307.P14804474602808540612

namespace A212307

/-- `gcd(A000142(n), A007559(n))` -/
def P14804474602808540612.Spec : Prop :=
  ∀ n, (P14804474602808540612.a n : ℤ) = A212307 n

end A212307

/-! ## A212307.P200333419705599041

`A008544(n)/A127974(n)`
-/

namespace A212307.P200333419705599041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008544 n : ℚ) / (A127974 n : ℚ)

end

end A212307.P200333419705599041

namespace A212307

/-- `A008544(n)/A127974(n)` -/
def P200333419705599041.Spec : Prop :=
  ∀ n, P200333419705599041.a n = (A212307 n : ℚ)

end A212307

/-!
# A212308: Numbers with no proper divisor that is not in an arithmetic progression of at least three proper divisors.

The programs for A212308, there is no canonical definition to state claims against.
-/

/-! ## A212308.P2648838767384951648

`filter[A356736(n+1), A242718(#)]`
-/

namespace A212308.P2648838767384951648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A212308.P2648838767384951648

/-! ## A212308.P5757105190020796615

`∩[A356736(n+1), A037475(n)]`
-/

namespace A212308.P5757105190020796615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212308.P5757105190020796615

/-! ## A212308.P16120531105696010710

`∩[A356736(n+1), A037477(n)]`
-/

namespace A212308.P16120531105696010710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212308.P16120531105696010710

/-! ## A212308.P9257967676255856924

`∩[A356736(n+1), A248375(n)]`
-/

namespace A212308.P9257967676255856924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212308.P9257967676255856924

/-! ## A212308.P4898403226820716752

`∩[A356736(n+1), A272574(n)]`
-/

namespace A212308.P4898403226820716752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212308.P4898403226820716752

/-!
# A212309: a(n) = n! mod 3^n.

The programs for A212309, the canonical program `A212309.P7951871916649474843` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212309 has offset 0).

The definition of A212309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212309.P7951871916649474843

`n!%(3^n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212309

/-- `n!%(3^n)` -/
def P7951871916649474843.Spec : Prop :=
  ∀ n, (P7951871916649474843.a n : ℤ) = A212309 n

theorem P7951871916649474843.correct : P7951871916649474843.Spec := by
  intro n
  simp only [A212309]

end A212309

/-! ## A212309.P14414259390416918375

`∏[round(1/acot(n))]%(3^n)`
-/

namespace A212309.P14414259390416918375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (3 ^ n : ℤ)

end

end A212309.P14414259390416918375

namespace A212309

/-- `∏[round(1/acot(n))]%(3^n)` -/
def P14414259390416918375.Spec : Prop :=
  ∀ n, P14414259390416918375.a n = A212309 n

end A212309

/-! ## A212309.P2730226913540643672

`∏[ceil(abs(γ-n))]%(3^n)`
-/

namespace A212309.P2730226913540643672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (3 ^ n : ℤ)

end

end A212309.P2730226913540643672

namespace A212309

/-- `∏[ceil(abs(γ-n))]%(3^n)` -/
def P2730226913540643672.Spec : Prop :=
  ∀ n, P2730226913540643672.a n = A212309 n

end A212309

/-! ## A212309.P3390022602307754662

`abs(∏[floor(acot(n)-n)]%(3^n))`
-/

namespace A212309.P3390022602307754662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (3 ^ n : ℤ)|

end

end A212309.P3390022602307754662

namespace A212309

/-- `abs(∏[floor(acot(n)-n)]%(3^n))` -/
def P3390022602307754662.Spec : Prop :=
  ∀ n, P3390022602307754662.a n = A212309 n

end A212309

/-! ## A212309.P5292376618933044950

`abs(A133942(n)%(3^n))`
-/

namespace A212309.P5292376618933044950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A133942 n) (3 ^ n : ℤ)|

end

end A212309.P5292376618933044950

namespace A212309

/-- `abs(A133942(n)%(3^n))` -/
def P5292376618933044950.Spec : Prop :=
  ∀ n, P5292376618933044950.a n = A212309 n

end A212309

/-! ## A212309.P6976546299331211221

`abs(A104150(n+1)%((-3)^n))`
-/

namespace A212309.P6976546299331211221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A104150 (n + 1)) ((-3) ^ n)|

end

end A212309.P6976546299331211221

namespace A212309

/-- `abs(A104150(n+1)%((-3)^n))` -/
def P6976546299331211221.Spec : Prop :=
  ∀ n, P6976546299331211221.a n = A212309 n

end A212309

/-! ## A212309.P5031459530383521269

`A000142(n)-A000244(n)*A228448(n)`
-/

namespace A212309.P5031459530383521269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000244 n * A228448 n

end

end A212309.P5031459530383521269

namespace A212309

/-- `A000142(n)-A000244(n)*A228448(n)` -/
def P5031459530383521269.Spec : Prop :=
  ∀ n, P5031459530383521269.a n = A212309 n

end A212309

/-!
# A212310: a(n) = n! mod 4^n.

The programs for A212310, the canonical program `A212310.P9321564389519021826` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212310 has offset 0).

The definition of A212310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212310.P9321564389519021826

`n!%(4^n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212310

/-- `n!%(4^n)` -/
def P9321564389519021826.Spec : Prop :=
  ∀ n, (P9321564389519021826.a n : ℤ) = A212310 n

theorem P9321564389519021826.correct : P9321564389519021826.Spec := by
  intro n
  simp only [A212310]

end A212310

/-! ## A212310.P10199073232037860393

`and(4^n-1, n!)`
-/

namespace A212310.P10199073232037860393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ n : ℤ) - 1) (Nat.factorial n : ℤ)

end

end A212310.P10199073232037860393

namespace A212310

/-- `and(4^n-1, n!)` -/
def P10199073232037860393.Spec : Prop :=
  ∀ n, P10199073232037860393.a n = A212310 n

end A212310

/-! ## A212310.P4169761507240969905

`∏[round(1/acot(n))]%(4^n)`
-/

namespace A212310.P4169761507240969905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (4 ^ n : ℤ)

end

end A212310.P4169761507240969905

namespace A212310

/-- `∏[round(1/acot(n))]%(4^n)` -/
def P4169761507240969905.Spec : Prop :=
  ∀ n, P4169761507240969905.a n = A212310 n

end A212310

/-! ## A212310.P11520300452928240267

`∏[ceil(abs(γ-n))]%(4^n)`
-/

namespace A212310.P11520300452928240267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (4 ^ n : ℤ)

end

end A212310.P11520300452928240267

namespace A212310

/-- `∏[ceil(abs(γ-n))]%(4^n)` -/
def P11520300452928240267.Spec : Prop :=
  ∀ n, P11520300452928240267.a n = A212310 n

end A212310

/-! ## A212310.P2946826113529791184

`and(4^n-1, ∏[round(1/acot(n))])`
-/

namespace A212310.P2946826113529791184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ n : ℤ) - 1) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A212310.P2946826113529791184

namespace A212310

/-- `and(4^n-1, ∏[round(1/acot(n))])` -/
def P2946826113529791184.Spec : Prop :=
  ∀ n, P2946826113529791184.a n = A212310 n

end A212310

/-! ## A212310.P2850351254141498054

`and(n!, A024036(n))`
-/

namespace A212310.P2850351254141498054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A024036 n)

end

end A212310.P2850351254141498054

namespace A212310

/-- `and(n!, A024036(n))` -/
def P2850351254141498054.Spec : Prop :=
  ∀ n, P2850351254141498054.a n = A212310 n

end A212310

/-! ## A212310.P86559756305126188

`and(n!, A000225(2*n))`
-/

namespace A212310.P86559756305126188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A000225 (2 * n))

end

end A212310.P86559756305126188

namespace A212310

/-- `and(n!, A000225(2*n))` -/
def P86559756305126188.Spec : Prop :=
  ∀ n, P86559756305126188.a n = A212310 n

end A212310

/-! ## A212310.P11747998776709477555

`abs(A133942(n)%A000302(n))`
-/

namespace A212310.P11747998776709477555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A133942 n) (A000302 n)|

end

end A212310.P11747998776709477555

namespace A212310

/-- `abs(A133942(n)%A000302(n))` -/
def P11747998776709477555.Spec : Prop :=
  ∀ n, P11747998776709477555.a n = A212310 n

end A212310

/-! ## A212310.P9525296537245065359

`and(A000302(n)-1, A000142(n))`
-/

namespace A212310.P9525296537245065359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000302 n - 1) (A000142 n)

end

end A212310.P9525296537245065359

namespace A212310

/-- `and(A000302(n)-1, A000142(n))` -/
def P9525296537245065359.Spec : Prop :=
  ∀ n, P9525296537245065359.a n = A212310 n

end A212310

/-!
# A212313: Start of a run of n consecutive even numbers divisible respectively by first n primes.

The programs for A212313, there is no canonical definition to state claims against.
-/

/-! ## A212313.P11630929861875686466

`A318623(∏[A115024(n+1)])`
-/

namespace A212313.P11630929861875686466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318623 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212313.P11630929861875686466

/-!
# A212314: Numbers m such that B(m^3) = 3*B(m), where B(m) is the binary weight of m (A000120).

The programs for A212314, the canonical program `A212314.P11095941826537081414` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212314 has offset 1).

The definition of A212314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212314.P11095941826537081414

`eq[A000120(n), A130724(A192085(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A212314

/-- `eq[A000120(n), A130724(A192085(n))]` -/
def P11095941826537081414.Spec : Prop :=
  ∀ n, (P11095941826537081414.a n : ℤ) = A212314 (n + 1)

theorem P11095941826537081414.correct : P11095941826537081414.Spec := by
  intro n
  simp only [A212314, Nat.add_sub_cancel]

end A212314

/-! ## A212314.P2550182079953688052

`eq[32-A131762(n), A130724(A192085(n))]`
-/

namespace A212314.P2550182079953688052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A131762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A192085 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212314.P2550182079953688052

namespace A212314

/-- `eq[32-A131762(n), A130724(A192085(n))]` -/
def P2550182079953688052.Spec : Prop :=
  ∀ n, (P2550182079953688052.a n : ℤ) = A212314 (n + 1)

end A212314

/-! ## A212314.P7603117251492691367

`eq[n, A130724(A192085(n))+A011371(n)]`
-/

namespace A212314.P7603117251492691367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A192085 n).toNat + A011371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212314.P7603117251492691367

namespace A212314

/-- `eq[n, A130724(A192085(n))+A011371(n)]` -/
def P7603117251492691367.Spec : Prop :=
  ∀ n, (P7603117251492691367.a n : ℤ) = A212314 (n + 1)

end A212314

/-! ## A212314.P18153399282169799986

`eq[A192085(n), A324467(n)]`
-/

namespace A212314.P18153399282169799986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212314.P18153399282169799986

namespace A212314

/-- `eq[A192085(n), A324467(n)]` -/
def P18153399282169799986.Spec : Prop :=
  ∀ n, (P18153399282169799986.a n : ℤ) = A212314 (n + 1)

end A212314

/-! ## A212314.P6836811733919540743

`eq[A132971(n), A153675(n+1)]`
-/

namespace A212314.P6836811733919540743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212314.P6836811733919540743

namespace A212314

/-- `eq[A132971(n), A153675(n+1)]` -/
def P6836811733919540743.Spec : Prop :=
  ∀ n, (P6836811733919540743.a n : ℤ) = A212314 (n + 1)

end A212314

/-!
# A212315: Numbers m such that B(m) = B(triangular(m)), where B(m) is the binary weight of m (A000120).

The programs for A212315, there is no canonical definition to state claims against.
-/

/-! ## A212315.P7670318606806891116

`floor(A261586(n+1)/2)`
-/

namespace A212315.P7670318606806891116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261586 (n + 1) : ℚ) / 2⌋

end

end A212315.P7670318606806891116

/-! ## A212315.P13122457784646218622

`(A261586(n+1)-1)/A020639(2*(n+2))`
-/

namespace A212315.P13122457784646218622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261586 (n + 1) - 1 : ℚ) / (A020639 (2 * (n + 2)) : ℚ)

end

end A212315.P13122457784646218622

/-! ## A212315.P12082297570138879457

`xor(1, A261586(n+1))/A020639(2*(n+1))`
-/

namespace A212315.P12082297570138879457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A261586 (n + 1)) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A212315.P12082297570138879457

/-! ## A212315.P5277553829890146247

`xor(1, A261586(n+1))/A046523(A141177(n+1))`
-/

namespace A212315.P5277553829890146247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A261586 (n + 1)) : ℚ) / (A046523 (A141177 (n + 1)).toNat : ℚ)

end

end A212315.P5277553829890146247

/-! ## A212315.P14874026508194734476

`eq[A000120(n), A050493(n)]`
-/

namespace A212315.P14874026508194734476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212315.P14874026508194734476

/-! ## A212315.P4340914284430417742

`eq[0, A232243(2*n+1)]`
-/

namespace A212315.P4340914284430417742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212315.P4340914284430417742

/-! ## A212315.P7961326191172759870

`A004524(A261586(n+1))`
-/

namespace A212315.P7961326191172759870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A261586 (n + 1)).toNat

end

end A212315.P7961326191172759870

/-! ## A212315.P9970797273178649107

`record[A130722(A077436(n+1))]`
-/

namespace A212315.P9970797273178649107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (A077436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212315.P9970797273178649107

/-! ## A212315.P2655079515193690767

`eq[A000120(n)+1, A159918(2*n+1)]`
-/

namespace A212315.P2655079515193690767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212315.P2655079515193690767

/-! ## A212315.P16112673502107287390

`eq[A027656(n+1), A232243(n+1)]/2`
-/

namespace A212315.P16112673502107287390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A212315.P16112673502107287390

/-! ## A212315.P10463502354628649456

`eq[A035363(n+1), A232243(n+1)]/2`
-/

namespace A212315.P10463502354628649456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A212315.P10463502354628649456

/-! ## A212315.P18418301116770485584

`lt[A232243(2*n+1)², A006519(2*n+1)]`
-/

namespace A212315.P18418301116770485584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212315.P18418301116770485584

/-! ## A212315.P1053634091081009918

`eq[A023416(A001316(n))+1, A159918(2*n+1)]`
-/

namespace A212315.P1053634091081009918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001316 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212315.P1053634091081009918

/-! ## A212315.P17058591981028011802

`eq[A001222(A071044(2*n+1)), A159918(2*n+1)]`
-/

namespace A212315.P17058591981028011802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212315.P17058591981028011802

/-! ## A212315.P4771358615466144562

`eq[A159918(A038573(2*n+1)), A159918(2*n+1)]`
-/

namespace A212315.P4771358615466144562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A038573 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212315.P4771358615466144562

/-! ## A212315.P14199997561743050970

`eq[A159918(A073138(2*n+1)), A159918(2*n+1)]`
-/

namespace A212315.P14199997561743050970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A073138 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212315.P14199997561743050970

/-! ## A212315.P913380093387092933

`eq[A001222(A286588(2*n+1)), A159918(2*n+1)]`
-/

namespace A212315.P913380093387092933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286588 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212315.P913380093387092933

/-!
# A212318: Expansion of phi(q^2)^2 / (phi(-q) * phi(q^4)) in powers of q where phi() is a Ramanujan theta function.

The programs for A212318, there is no canonical definition to state claims against.
-/

/-! ## A212318.P14184597702343859869

`A007096(n)-A127391(n)`
-/

namespace A212318.P14184597702343859869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n - A127391 n

end

end A212318.P14184597702343859869

/-! ## A212318.P9631492551462812868

`2*A208933(n)-A208274(n)`
-/

namespace A212318.P9631492551462812868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208933 n - A208274 n

end

end A212318.P9631492551462812868

/-! ## A212318.P10391105277850272693

`abs(2*A112128(n)-A208604(n))`
-/

namespace A212318.P10391105277850272693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A112128 n - A208604 n|

end

end A212318.P10391105277850272693

/-! ## A212318.P12239626746582460336

`abs(A232358(n))`
-/

namespace A212318.P12239626746582460336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232358 n|

end

end A212318.P12239626746582460336

/-! ## A212318.P2529649564273143200

`A033999(n)*A232358(n)`
-/

namespace A212318.P2529649564273143200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A232358 n

end

end A212318.P2529649564273143200

/-! ## A212318.P15903356166687469876

`gcd(A000038(n), A232358(n))`
-/

namespace A212318.P15903356166687469876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A232358 n)

end

end A212318.P15903356166687469876

/-! ## A212318.P4350143844232166761

`lcm(A000034(n), A232358(n))`
-/

namespace A212318.P4350143844232166761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A232358 n)

end

end A212318.P4350143844232166761

/-! ## A212318.P15129559117275889717

`abs(A189925(n)+A127391(n))`
-/

namespace A212318.P15129559117275889717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189925 n + A127391 n|

end

end A212318.P15129559117275889717

/-! ## A212318.P156114580752415022

`A007096(n)+A189925(n)-A232358(n)`
-/

namespace A212318.P156114580752415022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n + (A189925 n - A232358 n)

end

end A212318.P156114580752415022

/-! ## A212318.P14946391085361493752

`A014969(n)/A139820(n)*A232358(n)`
-/

namespace A212318.P14946391085361493752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A139820 n : ℚ) * (A232358 n : ℚ)

end

end A212318.P14946391085361493752

/-! ## A212318.P12052938813057907995

`A014972(n+1)/A115977(n+1)*A232358(n)`
-/

namespace A212318.P12052938813057907995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014972 (n + 1) : ℚ) / (A115977 (n + 1) : ℚ) * (A232358 n : ℚ)

end

end A212318.P12052938813057907995

/-!
# A212322: Number of compositions of n such that no two adjacent parts are equal, and the first part is not equal to the last part if there is more than one part.

The programs for A212322, there is no canonical definition to state claims against.
-/

/-! ## A212322.P13903182857204375661

`or(A002024(A120588(n)), A101443(n))`
-/

namespace A212322.P13903182857204375661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A120588 n).toNat) (A101443 n)

end

end A212322.P13903182857204375661

/-! ## A212322.P8551761802862942571

`or(A002024(A120588(n)), A191525(n))`
-/

namespace A212322.P8551761802862942571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A120588 n).toNat) (A191525 n)

end

end A212322.P8551761802862942571

/-! ## A212322.P5494330796380758285

`A321785(∑[∏[A327514(n+1)]])`
-/

namespace A212322.P5494330796380758285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327514 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321785 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212322.P5494330796380758285

/-! ## A212322.P17678010379974749298

`A298534(A298534(A298478(n+1)))`
-/

namespace A212322.P17678010379974749298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (A298534 (A298478 (n + 1)).toNat).toNat

end

end A212322.P17678010379974749298

/-!
# A212323: a(n) = 3^n - Fibonacci(n).

The programs for A212323, the canonical program `A212323.P14148052127696294858` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212323 has offset 0).

The definition of A212323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212323.P14148052127696294858

`3^n-A000045(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212323

/-- `3^n-A000045(n)` -/
def P14148052127696294858.Spec : Prop :=
  ∀ n, P14148052127696294858.a n = A212323 n

theorem P14148052127696294858.correct : P14148052127696294858.Spec := by
  intro n
  simp only [A212323]

end A212323

/-! ## A212323.P8225146260433337221

`3^n-abs(A236191(n))`
-/

namespace A212323.P8225146260433337221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - |A236191 n|

end

end A212323.P8225146260433337221

namespace A212323

/-- `3^n-abs(A236191(n))` -/
def P8225146260433337221.Spec : Prop :=
  ∀ n, P8225146260433337221.a n = A212323 n

end A212323

/-! ## A212323.P3648793154512297843

`3^n+1-A001611(n)`
-/

namespace A212323.P3648793154512297843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (1 - A001611 n)

end

end A212323.P3648793154512297843

namespace A212323

/-- `3^n+1-A001611(n)` -/
def P3648793154512297843.Spec : Prop :=
  ∀ n, P3648793154512297843.a n = A212323 n

end A212323

/-! ## A212323.P11278533089513468365

`A152163(n+2)+3^n`
-/

namespace A212323.P11278533089513468365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) + (3 ^ n : ℤ)

end

end A212323.P11278533089513468365

namespace A212323

/-- `A152163(n+2)+3^n` -/
def P11278533089513468365.Spec : Prop :=
  ∀ n, P11278533089513468365.a n = A212323 n

end A212323

/-! ## A212323.P4821917388521573752

`3^n-A212804(n+1)`
-/

namespace A212323.P4821917388521573752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A212804 (n + 1)

end

end A212323.P4821917388521573752

namespace A212323

/-- `3^n-A212804(n+1)` -/
def P4821917388521573752.Spec : Prop :=
  ∀ n, P4821917388521573752.a n = A212323 n

end A212323

/-! ## A212323.P8565522161125110160

`3^n-(A002062(n)-n)`
-/

namespace A212323.P8565522161125110160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (A002062 n - (n : ℤ))

end

end A212323.P8565522161125110160

namespace A212323

/-- `3^n-(A002062(n)-n)` -/
def P8565522161125110160.Spec : Prop :=
  ∀ n, P8565522161125110160.a n = A212323 n

end A212323

/-! ## A212323.P6296980404832753516

`3^n-Δ[A000071(n+1)]`
-/

namespace A212323.P6296980404832753516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A212323.P6296980404832753516

namespace A212323

/-- `3^n-Δ[A000071(n+1)]` -/
def P6296980404832753516.Spec : Prop :=
  ∀ n, P6296980404832753516.a n = A212323 n

end A212323

/-! ## A212323.P889197411881889794

`Δ[-A000045(n+1)]+3^n`
-/

namespace A212323.P889197411881889794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 ^ n : ℤ)

end

end A212323.P889197411881889794

namespace A212323

/-- `Δ[-A000045(n+1)]+3^n` -/
def P889197411881889794.Spec : Prop :=
  ∀ n, P889197411881889794.a n = A212323 n

end A212323

/-! ## A212323.P8600109060250491523

`A000032(n-2)+3*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A212323.P8600109060250491523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000032 (n - 2) + 3 * a (n - 1)

end

end A212323.P8600109060250491523

namespace A212323

/-- `A000032(n-2)+3*a(n-1)` -/
def P8600109060250491523.Spec : Prop :=
  ∀ n, P8600109060250491523.a n = A212323 n

end A212323

/-! ## A212323.P9747617928629783284

`A099036(n)+A001047(n)`
-/

namespace A212323.P9747617928629783284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n + A001047 n

end

end A212323.P9747617928629783284

namespace A212323

/-- `A099036(n)+A001047(n)` -/
def P9747617928629783284.Spec : Prop :=
  ∀ n, P9747617928629783284.a n = A212323 n

end A212323

/-! ## A212323.P1247146591093029488

`A099159(n)+A094688(n)`
-/

namespace A212323.P1247146591093029488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099159 n + A094688 n

end

end A212323.P1247146591093029488

namespace A212323

/-- `A099159(n)+A094688(n)` -/
def P1247146591093029488.Spec : Prop :=
  ∀ n, P1247146591093029488.a n = A212323 n

end A212323

/-! ## A212323.P10601224980902568333

`A193519(n)+A106515(n)`
-/

namespace A212323.P10601224980902568333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193519 n + A106515 n

end

end A212323.P10601224980902568333

namespace A212323

/-- `A193519(n)+A106515(n)` -/
def P10601224980902568333.Spec : Prop :=
  ∀ n, P10601224980902568333.a n = A212323 n

end A212323

/-! ## A212323.P7555823460895935612

`A228078(n)+A083323(n)`
-/

namespace A212323.P7555823460895935612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228078 n + A083323 n

end

end A212323.P7555823460895935612

namespace A212323

/-- `A228078(n)+A083323(n)` -/
def P7555823460895935612.Spec : Prop :=
  ∀ n, P7555823460895935612.a n = A212323 n

end A212323

/-! ## A212323.P10876399254352034801

`A034472(n)-A001611(n)`
-/

namespace A212323.P10876399254352034801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A001611 n

end

end A212323.P10876399254352034801

namespace A212323

/-- `A034472(n)-A001611(n)` -/
def P10876399254352034801.Spec : Prop :=
  ∀ n, P10876399254352034801.a n = A212323 n

end A212323

/-! ## A212323.P12735837303825160936

`A024025(n)-A014283(n)`
-/

namespace A212323.P12735837303825160936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024025 n - A014283 n

end

end A212323.P12735837303825160936

namespace A212323

/-- `A024025(n)-A014283(n)` -/
def P12735837303825160936.Spec : Prop :=
  ∀ n, P12735837303825160936.a n = A212323 n

end A212323

/-! ## A212323.P17400544487335423748

`A024024(n)-A065220(n)`
-/

namespace A212323.P17400544487335423748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n - A065220 n

end

end A212323.P17400544487335423748

namespace A212323

/-- `A024024(n)-A065220(n)` -/
def P17400544487335423748.Spec : Prop :=
  ∀ n, P17400544487335423748.a n = A212323 n

end A212323

/-! ## A212323.P9909847752054119822

`A104743(n)-A002062(n)`
-/

namespace A212323.P9909847752054119822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n - A002062 n

end

end A212323.P9909847752054119822

namespace A212323

/-- `A104743(n)-A002062(n)` -/
def P9909847752054119822.Spec : Prop :=
  ∀ n, P9909847752054119822.a n = A212323 n

end A212323

/-! ## A212323.P16226312995256373208

`A102345(n)-A008346(n)`
-/

namespace A212323.P16226312995256373208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 n - A008346 n

end

end A212323.P16226312995256373208

namespace A212323

/-- `A102345(n)-A008346(n)` -/
def P16226312995256373208.Spec : Prop :=
  ∀ n, P16226312995256373208.a n = A212323 n

end A212323

/-!
# A212325: Prime-generating polynomial: a(n) = n^2 + 3*n - 167.

The programs for A212325, the canonical program `A212325.P1625624617762118581` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212325 has offset 0).

The definition of A212325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+3*n-167` (program `A212325.P1625624617762118581`, by `A212325.P1625624617762118581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212325.P5052488111257634099

`(n+3)*n-167`
-/

namespace A212325.P5052488111257634099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * n : ℤ) - 167

end

end A212325.P5052488111257634099

namespace A212325

/-- `(n+3)*n-167` -/
def P5052488111257634099.Spec : Prop :=
  ∀ n, P5052488111257634099.a n = A212325 n

theorem P5052488111257634099.correct : P5052488111257634099.Spec := by
  intro n
  simp only [A212325, Nat.add_sub_cancel, A212325.P5052488111257634099.a, A212325.P1625624617762118581.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A212325

/-! ## A212325.P1625624617762118581

`n²+3*n-167`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212325

/-- `n²+3*n-167` -/
def P1625624617762118581.Spec : Prop :=
  ∀ n, P1625624617762118581.a n = A212325 n

theorem P1625624617762118581.correct : P1625624617762118581.Spec := by
  intro n
  simp only [A212325]

end A212325

/-! ## A212325.P9173331112772034493

`∑[Δ[(13*A000007(n)+n)²]+1]`
-/

namespace A212325.P9173331112772034493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * A000007 n + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212325.P9173331112772034493

namespace A212325

/-- `∑[Δ[(13*A000007(n)+n)²]+1]` -/
def P9173331112772034493.Spec : Prop :=
  ∀ n, P9173331112772034493.a n = A212325 n

end A212325

/-! ## A212325.P14599969434524960536

`Δ[A210440(n)/2-A158219(n+1)]`
-/

namespace A212325.P14599969434524960536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210440 n : ℚ) / 2 - (A158219 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212325.P14599969434524960536

namespace A212325

/-- `Δ[A210440(n)/2-A158219(n+1)]` -/
def P14599969434524960536.Spec : Prop :=
  ∀ n, P14599969434524960536.a n = (A212325 n : ℚ)

end A212325

/-! ## A212325.P7391082176278920594

`Δ[A210440(n)/2-A158221(n+1)]`
-/

namespace A212325.P7391082176278920594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210440 n : ℚ) / 2 - (A158221 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212325.P7391082176278920594

namespace A212325

/-- `Δ[A210440(n)/2-A158221(n+1)]` -/
def P7391082176278920594.Spec : Prop :=
  ∀ n, P7391082176278920594.a n = (A212325 n : ℚ)

end A212325

/-!
# A212326: G.f. satisfies: A(x) = theta_3( x*A(x) )^2, where theta_3(x) is Jacobi's theta_3 function.

The programs for A212326, there is no canonical definition to state claims against.
-/

/-! ## A212326.P10782871972714944815

`A286815(A081270(n))/(n+1)`
-/

namespace A212326.P10782871972714944815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286815 (A081270 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A212326.P10782871972714944815

/-! ## A212326.P4734233066758461949

`A004277(2*A358581(2*(n+1)))`
-/

namespace A212326.P4734233066758461949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A358581 (2 * (n + 1))).toNat

end

end A212326.P4734233066758461949

/-!
# A212328: Smallest k such that k^3 + 17 is divisible by 3^n.

The programs for A212328, there is no canonical definition to state claims against.
-/

/-! ## A212328.P15760277737373927480

`A213592(C(∑[n], n+2)+n)`
-/

namespace A212328.P15760277737373927480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213592 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2) + n)

end

end A212328.P15760277737373927480

/-! ## A212328.P9951426114314605964

`A047679(A377501(n+2))`
-/

namespace A212328.P9951426114314605964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (A377501 (n + 2)).toNat

end

end A212328.P9951426114314605964

/-!
# A212329: Expansion of x*(5+x)/(1-7*x+7*x^2-x^3).

The programs for A212329, the canonical program `A212329.P8008237849151697872` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212329 has offset 1).

The definition of A212329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212329.P8008237849151697872

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=36`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212329

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P8008237849151697872.Spec : Prop :=
  ∀ n, P8008237849151697872.a n = A212329 (n + 1)

theorem P8008237849151697872.correct : P8008237849151697872.Spec := by
  intro n
  simp only [A212329, Nat.add_sub_cancel]

end A212329

/-! ## A212329.P15781980097011342436

`6*(a(n-1)+1)-a(n-2)` with `a(0)=0, a(1)=5`
-/

namespace A212329.P15781980097011342436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  6 * (a (n - 1) + 1) - a (n - 2)

end

end A212329.P15781980097011342436

namespace A212329

/-- `6*(a(n-1)+1)-a(n-2)` -/
def P15781980097011342436.Spec : Prop :=
  ∀ n, P15781980097011342436.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P16780323108713684020

`6*a(n-1)-(a(n-2)-6)` with `a(0)=0, a(1)=5`
-/

namespace A212329.P16780323108713684020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  6 * a (n - 1) - (a (n - 2) - 6)

end

end A212329.P16780323108713684020

namespace A212329

/-- `6*a(n-1)-(a(n-2)-6)` -/
def P16780323108713684020.Spec : Prop :=
  ∀ n, P16780323108713684020.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P11346041732172811744

`A108262(n)-3`
-/

namespace A212329.P11346041732172811744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108262 n - 3

end

end A212329.P11346041732172811744

namespace A212329

/-- `A108262(n)-3` -/
def P11346041732172811744.Spec : Prop :=
  ∀ n, P11346041732172811744.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P15883449601203796555

`A098790(2*n)-1`
-/

namespace A212329.P15883449601203796555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 (2 * n) - 1

end

end A212329.P15883449601203796555

namespace A212329

/-- `A098790(2*n)-1` -/
def P15883449601203796555.Spec : Prop :=
  ∀ n, P15883449601203796555.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P6128830487318745709

`A375726(2*n)-1`
-/

namespace A212329.P6128830487318745709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375726 (2 * n) - 1

end

end A212329.P6128830487318745709

namespace A212329

/-- `A375726(2*n)-1` -/
def P6128830487318745709.Spec : Prop :=
  ∀ n, P6128830487318745709.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P16213763778508090083

`(A038762(n)-3)/2`
-/

namespace A212329.P16213763778508090083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038762 n - 3 : ℚ) / 2

end

end A212329.P16213763778508090083

namespace A212329

/-- `(A038762(n)-3)/2` -/
def P16213763778508090083.Spec : Prop :=
  ∀ n, P16213763778508090083.a n = (A212329 (n + 1) : ℚ)

end A212329

/-! ## A212329.P2337207742838909693

`A124124(Δ[n²])-1`
-/

namespace A212329.P2337207742838909693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A212329.P2337207742838909693

namespace A212329

/-- `A124124(Δ[n²])-1` -/
def P2337207742838909693.Spec : Prop :=
  ∀ n, P2337207742838909693.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P2540855751861811796

`A353580(Δ[n²])-2`
-/

namespace A212329.P2540855751861811796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A212329.P2540855751861811796

namespace A212329

/-- `A353580(Δ[n²])-2` -/
def P2540855751861811796.Spec : Prop :=
  ∀ n, P2540855751861811796.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P4222555755089836472

`∑[A135532(2*n)]+1`
-/

namespace A212329.P4222555755089836472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A212329.P4222555755089836472

namespace A212329

/-- `∑[A135532(2*n)]+1` -/
def P4222555755089836472.Spec : Prop :=
  ∀ n, P4222555755089836472.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P1614296848207227078

`A182190(n)+A001108(n)`
-/

namespace A212329.P1614296848207227078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n + A001108 n

end

end A212329.P1614296848207227078

namespace A212329

/-- `A182190(n)+A001108(n)` -/
def P1614296848207227078.Spec : Prop :=
  ∀ n, P1614296848207227078.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P12498653792450019575

`A210695(n)+A005319(n)`
-/

namespace A212329.P12498653792450019575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210695 n + A005319 n

end

end A212329.P12498653792450019575

namespace A212329

/-- `A210695(n)+A005319(n)` -/
def P12498653792450019575.Spec : Prop :=
  ∀ n, P12498653792450019575.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P9860344229830565098

`∑[A054490(n)]-A002315(n)`
-/

namespace A212329.P9860344229830565098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002315 n

end

end A212329.P9860344229830565098

namespace A212329

/-- `∑[A054490(n)]-A002315(n)` -/
def P9860344229830565098.Spec : Prop :=
  ∀ n, P9860344229830565098.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P6430866850759438132

`∑[A002315(n)]-A182189(n)`
-/

namespace A212329.P6430866850759438132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182189 n

end

end A212329.P6430866850759438132

namespace A212329

/-- `∑[A002315(n)]-A182189(n)` -/
def P6430866850759438132.Spec : Prop :=
  ∀ n, P6430866850759438132.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P16430592710037161016

`A082639(n+1)+A001652(n)`
-/

namespace A212329.P16430592710037161016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (n + 1) + A001652 n

end

end A212329.P16430592710037161016

namespace A212329

/-- `A082639(n+1)+A001652(n)` -/
def P16430592710037161016.Spec : Prop :=
  ∀ n, P16430592710037161016.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P2731240856086755752

`A001541(n)+A001652(n)-1`
-/

namespace A212329.P2731240856086755752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + (A001652 n - 1)

end

end A212329.P2731240856086755752

namespace A212329

/-- `A001541(n)+A001652(n)-1` -/
def P2731240856086755752.Spec : Prop :=
  ∀ n, P2731240856086755752.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P16761219407499907354

`A038723(n)+A053141(n)-1`
-/

namespace A212329.P16761219407499907354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n + (A053141 n - 1)

end

end A212329.P16761219407499907354

namespace A212329

/-- `A038723(n)+A053141(n)-1` -/
def P16761219407499907354.Spec : Prop :=
  ∀ n, P16761219407499907354.a n = A212329 (n + 1)

end A212329

/-! ## A212329.P16970785280410686546

`A001108(n+1)-A182189(n)`
-/

namespace A212329.P16970785280410686546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (n + 1) - A182189 n

end

end A212329.P16970785280410686546

namespace A212329

/-- `A001108(n+1)-A182189(n)` -/
def P16970785280410686546.Spec : Prop :=
  ∀ n, P16970785280410686546.a n = A212329 (n + 1)

end A212329

/-!
# A212330: Expansion of x^5*(1 - x)^2*(4 - 14*x + 8*x^2 + 11*x^3 - 6*x^4 - 2*x^5 + 2*x^6 + 5*x^7 - 2*x^8 + x^9)/(1 - 2*x)^4.

The programs for A212330, there is no canonical definition to state claims against.
-/

/-! ## A212330.P52984547695309438

`A284270(A198944(n))`
-/

namespace A212330.P52984547695309438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (A198944 n).toNat

end

end A212330.P52984547695309438

/-! ## A212330.P7876451251856823959

`A113219(A047199(n+1))`
-/

namespace A212330.P7876451251856823959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A047199 (n + 1)).toNat

end

end A212330.P7876451251856823959

/-! ## A212330.P14818023768569820067

`A172366(xor(3, A000704(n)))`
-/

namespace A212330.P14818023768569820067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172366 (Int.xor 3 (A000704 n)).toNat

end

end A212330.P14818023768569820067

/-! ## A212330.P11661565218065112749

`A338501(A297196(n)+2-n)`
-/

namespace A212330.P11661565218065112749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338501 (A297196 n + 2 - (n : ℤ)).toNat

end

end A212330.P11661565218065112749

/-! ## A212330.P11424828837146317284

`A069160(A192805(n)+A001095(n))`
-/

namespace A212330.P11424828837146317284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069160 (A192805 n + A001095 n).toNat

end

end A212330.P11424828837146317284

/-!
# A212331: a(n) = 5*n*(n+5)/2.

The programs for A212331, the canonical program `A212331.P17453340843265504288` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212331 has offset 0).

The definition of A212331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212331.P17453340843265504288

`5/2*n*(n+5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212331

/-- `5/2*n*(n+5)` -/
def P17453340843265504288.Spec : Prop :=
  ∀ n, P17453340843265504288.a n = (A212331 n : ℚ)

end A212331

/-! ## A212331.P12231514587282281523

`5*n*(n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212331.P12231514587282281523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) * ((n + 5 : ℚ) / 2))

end

end A212331.P12231514587282281523

namespace A212331

/-- `5*n*(n+5)/2` -/
def P12231514587282281523.Spec : Prop :=
  ∀ n, P12231514587282281523.a n = (A212331 n : ℚ)

end A212331

/-! ## A212331.P11963015554052322017

`∑[a(n-1)+5]` with `a(0)=0, a(1)=15`
-/

namespace A212331.P11963015554052322017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212331.P11963015554052322017

namespace A212331

/-- `∑[a(n-1)+5]` -/
def P11963015554052322017.Spec : Prop :=
  ∀ n, (P11963015554052322017.a n : ℤ) = A212331 n

end A212331

/-! ## A212331.P12121001597299964387

`abs(5*(3-C(n+3, 2)))`
-/

namespace A212331.P12121001597299964387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * (3 - (Nat.choose (n + 3) 2 : ℤ))|

end

end A212331.P12121001597299964387

namespace A212331

/-- `abs(5*(3-C(n+3, 2)))` -/
def P12121001597299964387.Spec : Prop :=
  ∀ n, P12121001597299964387.a n = A212331 n

end A212331

/-! ## A212331.P13338822804783092637

`-5*(3-C(n+3, 2))`
-/

namespace A212331.P13338822804783092637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(5 * (3 - (Nat.choose (n + 3) 2 : ℤ)))

end

end A212331.P13338822804783092637

namespace A212331

/-- `-5*(3-C(n+3, 2))` -/
def P13338822804783092637.Spec : Prop :=
  ∀ n, P13338822804783092637.a n = A212331 n

end A212331

/-! ## A212331.P18141829262649528557

`lcm(5, 1-∑[n+2])-5`
-/

namespace A212331.P18141829262649528557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℤ) - 5

end

end A212331.P18141829262649528557

namespace A212331

/-- `lcm(5, 1-∑[n+2])-5` -/
def P18141829262649528557.Spec : Prop :=
  ∀ n, P18141829262649528557.a n = A212331 n

end A212331

/-! ## A212331.P18001306722012488330

`∑[5*(2%(n+2)+n)]`
-/

namespace A212331.P18001306722012488330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 % (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212331.P18001306722012488330

namespace A212331

/-- `∑[5*(2%(n+2)+n)]` -/
def P18001306722012488330.Spec : Prop :=
  ∀ n, (P18001306722012488330.a n : ℤ) = A212331 n

end A212331

/-! ## A212331.P12412158920478987041

`record[5*(n-5)*n/2]`
-/

namespace A212331.P12412158920478987041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (((n : ℤ) - 5 : ℚ) * ((n : ℚ) / 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212331.P12412158920478987041

namespace A212331

/-- `record[5*(n-5)*n/2]` -/
def P12412158920478987041.Spec : Prop :=
  ∀ n, P12412158920478987041.a n = (A212331 n : ℚ)

end A212331

/-! ## A212331.P6095349951050309448

`a(n-1)+5*(n+2)` with `a(0)=0`
-/

namespace A212331.P6095349951050309448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 5 * (n + 2)

end

end A212331.P6095349951050309448

namespace A212331

/-- `a(n-1)+5*(n+2)` -/
def P6095349951050309448.Spec : Prop :=
  ∀ n, (P6095349951050309448.a n : ℤ) = A212331 n

end A212331

/-! ## A212331.P8240568048977810962

`(n+4)*3*n-C(n, 2)`
-/

namespace A212331.P8240568048977810962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) * (3 * n) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A212331.P8240568048977810962

namespace A212331

/-- `(n+4)*3*n-C(n, 2)` -/
def P8240568048977810962.Spec : Prop :=
  ∀ n, P8240568048977810962.a n = A212331 n

end A212331

/-! ## A212331.P4842116462711333726

`A269457(n)-10`
-/

namespace A212331.P4842116462711333726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269457 n - 10

end

end A212331.P4842116462711333726

namespace A212331

/-- `A269457(n)-10` -/
def P4842116462711333726.Spec : Prop :=
  ∀ n, P4842116462711333726.a n = A212331 n

end A212331

/-! ## A212331.P12959391224086174896

`A028895(n)+10*n`
-/

namespace A212331.P12959391224086174896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + (10 * n : ℤ)

end

end A212331.P12959391224086174896

namespace A212331

/-- `A028895(n)+10*n` -/
def P12959391224086174896.Spec : Prop :=
  ∀ n, P12959391224086174896.a n = A212331 n

end A212331

/-! ## A212331.P14625992665012393231

`∑[5*A114637(n+1)]`
-/

namespace A212331.P14625992665012393231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A114637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212331.P14625992665012393231

namespace A212331

/-- `∑[5*A114637(n+1)]` -/
def P14625992665012393231.Spec : Prop :=
  ∀ n, P14625992665012393231.a n = A212331 n

end A212331

/-! ## A212331.P10486590560765902699

`A132755(n)+2*n²`
-/

namespace A212331.P10486590560765902699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + (2 * n ^ 2 : ℤ)

end

end A212331.P10486590560765902699

namespace A212331

/-- `A132755(n)+2*n²` -/
def P10486590560765902699.Spec : Prop :=
  ∀ n, P10486590560765902699.a n = A212331 n

end A212331

/-! ## A212331.P12824234671756421279

`∑[(n+2)*A021022(n)]`
-/

namespace A212331.P12824234671756421279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A021022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212331.P12824234671756421279

namespace A212331

/-- `∑[(n+2)*A021022(n)]` -/
def P12824234671756421279.Spec : Prop :=
  ∀ n, P12824234671756421279.a n = A212331 n

end A212331

/-! ## A212331.P5657777456122804222

`∑[n]+2*A028560(n)`
-/

namespace A212331.P5657777456122804222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A028560 n

end

end A212331.P5657777456122804222

namespace A212331

/-- `∑[n]+2*A028560(n)` -/
def P5657777456122804222.Spec : Prop :=
  ∀ n, P5657777456122804222.a n = A212331 n

end A212331

/-! ## A212331.P7769110805310774148

`2*A140672(n)-∑[n]`
-/

namespace A212331.P7769110805310774148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140672 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212331.P7769110805310774148

namespace A212331

/-- `2*A140672(n)-∑[n]` -/
def P7769110805310774148.Spec : Prop :=
  ∀ n, P7769110805310774148.a n = A212331 n

end A212331

/-! ## A212331.P301259985152331969

`A008592(n)+∑[5*n]`
-/

namespace A212331.P301259985152331969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212331.P301259985152331969

namespace A212331

/-- `A008592(n)+∑[5*n]` -/
def P301259985152331969.Spec : Prop :=
  ∀ n, P301259985152331969.a n = A212331 n

end A212331

/-! ## A212331.P6808674481734241245

`∑[n]+A139577(n)+n`
-/

namespace A212331.P6808674481734241245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A139577 n + (n : ℤ))

end

end A212331.P6808674481734241245

namespace A212331

/-- `∑[n]+A139577(n)+n` -/
def P6808674481734241245.Spec : Prop :=
  ∀ n, P6808674481734241245.a n = A212331 n

end A212331

/-! ## A212331.P4026239523920656853

`∑[n]+A139578(n)-n`
-/

namespace A212331.P4026239523920656853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A139578 n - (n : ℤ))

end

end A212331.P4026239523920656853

namespace A212331

/-- `∑[n]+A139578(n)-n` -/
def P4026239523920656853.Spec : Prop :=
  ∀ n, P4026239523920656853.a n = A212331 n

end A212331

/-!
# A212332: The difference between the largest and smallest prime factor of n as n runs through the numbers with at least two distinct prime factors.

The programs for A212332, there is no canonical definition to state claims against.
-/

/-! ## A212332.P5037131447741595511

`A074593(n+1)-A074592(n+1)`
-/

namespace A212332.P5037131447741595511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074593 (n + 1) - A074592 (n + 1)

end

end A212332.P5037131447741595511

/-! ## A212332.P2869465812919127579

`A006530(A024619(n+1))-A074592(n+1)`
-/

namespace A212332.P2869465812919127579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024619 (n + 1)).toNat - A074592 (n + 1)

end

end A212332.P2869465812919127579

/-! ## A212332.P14813687809822214719

`A074593(n+1)-A020639(A024619(n+1))`
-/

namespace A212332.P14813687809822214719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074593 (n + 1) - A020639 (A024619 (n + 1)).toNat

end

end A212332.P14813687809822214719

/-! ## A212332.P5617957949247632239

`A046665(A024619(n+1))`
-/

namespace A212332.P5617957949247632239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A024619 (n + 1)).toNat

end

end A212332.P5617957949247632239

/-! ## A212332.P11908166660211223971

`A046665(A084365(n+1))`
-/

namespace A212332.P11908166660211223971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A084365 (n + 1)).toNat

end

end A212332.P11908166660211223971

/-! ## A212332.P6262332186921960865

`A046665(A361102(n+2))`
-/

namespace A212332.P6262332186921960865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A361102 (n + 2)).toNat

end

end A212332.P6262332186921960865

/-! ## A212332.P8538826118649852905

`A046665(A080765(n+1)+1)`
-/

namespace A212332.P8538826118649852905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A080765 (n + 1) + 1).toNat

end

end A212332.P8538826118649852905

/-! ## A212332.P18193361911673459652

`A046665(lt[1, A051119(n+1)]+1)`
-/

namespace A212332.P18193361911673459652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A212332.P18193361911673459652

/-! ## A212332.P7759776438682893542

`A046665(lt[1, A046665(n+1)+1]+1)`
-/

namespace A212332.P7759776438682893542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A212332.P7759776438682893542

/-! ## A212332.P1932004589186779352

`A085393(2*A024619(n+1))`
-/

namespace A212332.P1932004589186779352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (2 * A024619 (n + 1)).toNat

end

end A212332.P1932004589186779352

/-! ## A212332.P5586838330133933672

`A046665(A360529(n+1))`
-/

namespace A212332.P5586838330133933672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A360529 (n + 1)).toNat

end

end A212332.P5586838330133933672

/-!
# A212333: n-th power of the n-th pentagonal number.

The programs for A212333, the canonical program `A212333.P7012482252423854502` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212333 has offset 0).

The definition of A212333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212333.P7012482252423854502

`(n*(3*n-1)/2)^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212333

/-- `(n*(3*n-1)/2)^n` -/
def P7012482252423854502.Spec : Prop :=
  ∀ n, P7012482252423854502.a n = (A212333 n : ℚ)

end A212333

/-!
# A212334: Number of words, either empty or beginning with the first letter of the 4-ary alphabet, where each letter of the alphabet occurs n times and letters of neighboring word positions are equal or neighbors in the alphabet.

The programs for A212334, there is no canonical definition to state claims against.
-/

/-! ## A212334.P11193138101130434666

`A208673(A052905(n+2))`
-/

namespace A212334.P11193138101130434666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (A052905 (n + 2)).toNat

end

end A212334.P11193138101130434666

/-! ## A212334.P6661584585395681308

`A208673(A056115(n)+10)`
-/

namespace A212334.P6661584585395681308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (A056115 n + 10).toNat

end

end A212334.P6661584585395681308

/-! ## A212334.P10554766951011845331

`A208673(eq[4, A025581(n)])`
-/

namespace A212334.P10554766951011845331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212334.P10554766951011845331

/-! ## A212334.P4931048637264372599

`A208673(eq[5, A193739(n)])`
-/

namespace A212334.P4931048637264372599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212334.P4931048637264372599

/-! ## A212334.P13173235043937566076

`A208673(eq[16, A130321(n)])`
-/

namespace A212334.P13173235043937566076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212334.P13173235043937566076

/-!
# A212335: Expansion of 1/(1-22*x+22*x^2-x^3).

The programs for A212335, there is no canonical definition to state claims against.
-/

/-! ## A212335.P4218992248648495605

`∑[21*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=21`
-/

namespace A212335.P4218992248648495605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  21 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212335.P4218992248648495605

/-! ## A212335.P11261699885432105723

`∑[A092499(n+1)]`
-/

namespace A212335.P11261699885432105723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212335.P11261699885432105723

/-! ## A212335.P16402815674087162630

`∑[record[A092499(A008624(n))]]`
-/

namespace A212335.P16402815674087162630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092499 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212335.P16402815674087162630

/-! ## A212335.P3620230164027474465

`∑[record[A092499(A028242(n))]]`
-/

namespace A212335.P3620230164027474465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092499 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212335.P3620230164027474465

/-!
# A212336: Expansion of 1/(1 - 23*x + 23*x^2 - x^3).

The programs for A212336, the canonical program `A212336.P5893874391381640851` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212336 has offset 0).

The definition of A212336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212336.P5893874391381640851

`23*a(n-1)-23*a(n-2)+a(n-3)` with `a(0)=1, a(1)=23, a(2)=506`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212336

/-- `23*a(n-1)-23*a(n-2)+a(n-3)` -/
def P5893874391381640851.Spec : Prop :=
  ∀ n, P5893874391381640851.a n = A212336 n

theorem P5893874391381640851.correct : P5893874391381640851.Spec := by
  intro n
  simp only [A212336]

end A212336

/-! ## A212336.P14235313599615886593

`(((6+sqrt(30))^(2*n+3)+(6-sqrt(30))^(2*n+3))/6^(n+1)-12)/240`
-/

namespace A212336.P14235313599615886593
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 + Real.sqrt (30 : ℝ)) ^ (2 * n + 3) + (6 - Real.sqrt (30 : ℝ)) ^ (2 * n + 3)) / (6 ^ (n + 1) : ℝ) - 12) / 240

end

end A212336.P14235313599615886593

namespace A212336

/-- `(((6+sqrt(30))^(2*n+3)+(6-sqrt(30))^(2*n+3))/6^(n+1)-12)/240` -/
def P14235313599615886593.Spec : Prop :=
  ∀ n, P14235313599615886593.a n = (A212336 n : ℝ)

end A212336

/-! ## A212336.P9871626614010456166

`∑[22*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=22`
-/

namespace A212336.P9871626614010456166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n f1 =>
  22 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212336.P9871626614010456166

namespace A212336

/-- `∑[22*a(n-1)-a(n-2)]` -/
def P9871626614010456166.Spec : Prop :=
  ∀ n, P9871626614010456166.a n = A212336 n

end A212336

/-! ## A212336.P1149227500290862164

`∑[A077421(n)]`
-/

namespace A212336.P1149227500290862164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212336.P1149227500290862164

namespace A212336

/-- `∑[A077421(n)]` -/
def P1149227500290862164.Spec : Prop :=
  ∀ n, P1149227500290862164.a n = A212336 n

end A212336

/-! ## A212336.P127505906981452191

`∑[A041219(Δ[n²])]`
-/

namespace A212336.P127505906981452191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212336.P127505906981452191

namespace A212336

/-- `∑[A041219(Δ[n²])]` -/
def P127505906981452191.Spec : Prop :=
  ∀ n, P127505906981452191.a n = A212336 n

end A212336

/-! ## A212336.P7312352484150511385

`∑[∑[A157014(n+1)]]`
-/

namespace A212336.P7312352484150511385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157014 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212336.P7312352484150511385

namespace A212336

/-- `∑[∑[A157014(n+1)]]` -/
def P7312352484150511385.Spec : Prop :=
  ∀ n, P7312352484150511385.a n = A212336 n

end A212336

/-! ## A212336.P9192379067482082659

`∑[∑[A041049(2*n)]]`
-/

namespace A212336.P9192379067482082659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041049 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212336.P9192379067482082659

namespace A212336

/-- `∑[∑[A041049(2*n)]]` -/
def P9192379067482082659.Spec : Prop :=
  ∀ n, P9192379067482082659.a n = A212336 n

end A212336

/-! ## A212336.P12052031776730583855

`∑[∑[A041219(2*n)]]`
-/

namespace A212336.P12052031776730583855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041219 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212336.P12052031776730583855

namespace A212336

/-- `∑[∑[A041219(2*n)]]` -/
def P12052031776730583855.Spec : Prop :=
  ∀ n, P12052031776730583855.a n = A212336 n

end A212336

/-!
# A212337: Expansion of 1/(1-4*x+3*x^2)^2.

The programs for A212337, the canonical program `A212337.P12124129980839062845` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212337 has offset 0).

The definition of A212337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212337.P12124129980839062845

`1+n*(1+9*3^n)/4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212337

/-- `1+n*(1+9*3^n)/4` -/
def P12124129980839062845.Spec : Prop :=
  ∀ n, P12124129980839062845.a n = (A212337 n : ℚ)

end A212337

/-! ## A212337.P3636130354994292145

`∑[A014915(n+1)]`
-/

namespace A212337.P3636130354994292145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P3636130354994292145

namespace A212337

/-- `∑[A014915(n+1)]` -/
def P3636130354994292145.Spec : Prop :=
  ∀ n, P3636130354994292145.a n = A212337 n

end A212337

/-! ## A212337.P9942832755236063389

`∑[∑[A027471(n+2)]]`
-/

namespace A212337.P9942832755236063389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P9942832755236063389

namespace A212337

/-- `∑[∑[A027471(n+2)]]` -/
def P9942832755236063389.Spec : Prop :=
  ∀ n, P9942832755236063389.a n = A212337 n

end A212337

/-! ## A212337.P2985903193103639099

`∑[∑[A211231(2*n)]]`
-/

namespace A212337.P2985903193103639099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211231 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P2985903193103639099

namespace A212337

/-- `∑[∑[A211231(2*n)]]` -/
def P2985903193103639099.Spec : Prop :=
  ∀ n, P2985903193103639099.a n = A212337 n

end A212337

/-! ## A212337.P8288747107728309252

`record[A121365(n+1)-A057427(n)]`
-/

namespace A212337.P8288747107728309252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121365 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212337.P8288747107728309252

namespace A212337

/-- `record[A121365(n+1)-A057427(n)]` -/
def P8288747107728309252.Spec : Prop :=
  ∀ n, P8288747107728309252.a n = A212337 n

end A212337

/-! ## A212337.P7126072926208367586

`∑[A289399(n+1)/3]`
-/

namespace A212337.P7126072926208367586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289399 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P7126072926208367586

namespace A212337

/-- `∑[A289399(n+1)/3]` -/
def P7126072926208367586.Spec : Prop :=
  ∀ n, P7126072926208367586.a n = (A212337 n : ℚ)

end A212337

/-! ## A212337.P16379750106032078732

`∑[∑[3*(n+1)*a(n-1)/n]]` with `a(0)=1`
-/

namespace A212337.P16379750106032078732
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * ((n + 1 : ℚ) * f2 (n - 1)) / (n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P16379750106032078732

namespace A212337

/-- `∑[∑[3*(n+1)*a(n-1)/n]]` -/
def P16379750106032078732.Spec : Prop :=
  ∀ n, P16379750106032078732.a n = (A212337 n : ℚ)

end A212337

/-! ## A212337.P11653445721290946928

`A116414(∑[n+1]+1)`
-/

namespace A212337.P11653445721290946928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212337.P11653445721290946928

namespace A212337

/-- `A116414(∑[n+1]+1)` -/
def P11653445721290946928.Spec : Prop :=
  ∀ n, P11653445721290946928.a n = A212337 n

end A212337

/-! ## A212337.P5409126214956467309

`∑[A246799(∑[n])]`
-/

namespace A212337.P5409126214956467309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246799 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P5409126214956467309

namespace A212337

/-- `∑[A246799(∑[n])]` -/
def P5409126214956467309.Spec : Prop :=
  ∀ n, P5409126214956467309.a n = A212337 n

end A212337

/-! ## A212337.P12372460226061692725

`∑[A259653(∑[n+1])]`
-/

namespace A212337.P12372460226061692725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259653 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P12372460226061692725

namespace A212337

/-- `∑[A259653(∑[n+1])]` -/
def P12372460226061692725.Spec : Prop :=
  ∀ n, P12372460226061692725.a n = A212337 n

end A212337

/-! ## A212337.P8739567800495834005

`∑[A119673(∑[n+3])]`
-/

namespace A212337.P8739567800495834005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212337.P8739567800495834005

namespace A212337

/-- `∑[A119673(∑[n+3])]` -/
def P8739567800495834005.Spec : Prop :=
  ∀ n, P8739567800495834005.a n = A212337 n

end A212337

/-!
# A212338: Sequence of coefficients of x in marked mesh pattern generating function Q_{n,132}^(0,0,2,0)(x).

The programs for A212338, the canonical program `A212338.P2339282621296650043` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212338 has offset 3).

The definition of A212338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212338.P2339282621296650043

`a(n-1)+a(n-2)+A067331(n)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212338

/-- `a(n-1)+a(n-2)+A067331(n)` -/
def P2339282621296650043.Spec : Prop :=
  ∀ n, P2339282621296650043.a n = A212338 (n + 3)

theorem P2339282621296650043.correct : P2339282621296650043.Spec := by
  intro n
  simp only [A212338, Nat.add_sub_cancel]

end A212338

/-! ## A212338.P9397504445230861619

`∑[A036681(n)]`
-/

namespace A212338.P9397504445230861619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212338.P9397504445230861619

namespace A212338

/-- `∑[A036681(n)]` -/
def P9397504445230861619.Spec : Prop :=
  ∀ n, P9397504445230861619.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P7772875702083658792

`A370304(n)+A261055(n)`
-/

namespace A212338.P7772875702083658792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370304 n + A261055 n

end

end A212338.P7772875702083658792

namespace A212338

/-- `A370304(n)+A261055(n)` -/
def P7772875702083658792.Spec : Prop :=
  ∀ n, P7772875702083658792.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P5586658557345564562

`A129707(n+2)+A001628(n)`
-/

namespace A212338.P5586658557345564562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 (n + 2) + A001628 n

end

end A212338.P5586658557345564562

namespace A212338

/-- `A129707(n+2)+A001628(n)` -/
def P5586658557345564562.Spec : Prop :=
  ∀ n, P5586658557345564562.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P9285850631438689618

`A152881(n+2)+A055243(n)`
-/

namespace A212338.P9285850631438689618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 2) + A055243 n

end

end A212338.P9285850631438689618

namespace A212338

/-- `A152881(n+2)+A055243(n)` -/
def P9285850631438689618.Spec : Prop :=
  ∀ n, P9285850631438689618.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P3561795570801732216

`3*A001628(n)-A055243(n)`
-/

namespace A212338.P3561795570801732216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001628 n - A055243 n

end

end A212338.P3561795570801732216

namespace A212338

/-- `3*A001628(n)-A055243(n)` -/
def P3561795570801732216.Spec : Prop :=
  ∀ n, P3561795570801732216.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P15881291329165608777

`∑[∑[A054455(n)+A006367(n)]]`
-/

namespace A212338.P15881291329165608777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n + A006367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212338.P15881291329165608777

namespace A212338

/-- `∑[∑[A054455(n)+A006367(n)]]` -/
def P15881291329165608777.Spec : Prop :=
  ∀ n, P15881291329165608777.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P12826103043738769082

`∑[A001629(n+2)+A001628(n)]`
-/

namespace A212338.P12826103043738769082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) + A001628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212338.P12826103043738769082

namespace A212338

/-- `∑[A001629(n+2)+A001628(n)]` -/
def P12826103043738769082.Spec : Prop :=
  ∀ n, P12826103043738769082.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P4534373400685696637

`A001628(n+2)-A023610(n+2)`
-/

namespace A212338.P4534373400685696637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 2) - A023610 (n + 2)

end

end A212338.P4534373400685696637

namespace A212338

/-- `A001628(n+2)-A023610(n+2)` -/
def P4534373400685696637.Spec : Prop :=
  ∀ n, P4534373400685696637.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P1314965198893361811

`A036681(n+2)-A067331(n+2)`
-/

namespace A212338.P1314965198893361811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036681 (n + 2) - A067331 (n + 2)

end

end A212338.P1314965198893361811

namespace A212338

/-- `A036681(n+2)-A067331(n+2)` -/
def P1314965198893361811.Spec : Prop :=
  ∀ n, P1314965198893361811.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P13307618483530305756

`A129707(n+3)-A001629(n+3)`
-/

namespace A212338.P13307618483530305756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 (n + 3) - A001629 (n + 3)

end

end A212338.P13307618483530305756

namespace A212338

/-- `A129707(n+3)-A001629(n+3)` -/
def P13307618483530305756.Spec : Prop :=
  ∀ n, P13307618483530305756.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P14148655793949892766

`A001628(n)+A261055(n)-A001629(n+1)`
-/

namespace A212338.P14148655793949892766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n + (A261055 n - A001629 (n + 1))

end

end A212338.P14148655793949892766

namespace A212338

/-- `A001628(n)+A261055(n)-A001629(n+1)` -/
def P14148655793949892766.Spec : Prop :=
  ∀ n, P14148655793949892766.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P7371064474577570486

`A091533(∑[n+2]+3)`
-/

namespace A212338.P7371064474577570486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A212338.P7371064474577570486

namespace A212338

/-- `A091533(∑[n+2]+3)` -/
def P7371064474577570486.Spec : Prop :=
  ∀ n, P7371064474577570486.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P13342218935426203265

`A210200(∑[n+2]+4)`
-/

namespace A212338.P13342218935426203265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212338.P13342218935426203265

namespace A212338

/-- `A210200(∑[n+2]+4)` -/
def P13342218935426203265.Spec : Prop :=
  ∀ n, P13342218935426203265.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P16980825851959985319

`∑[A036355(∑[n+3])]`
-/

namespace A212338.P16980825851959985319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212338.P16980825851959985319

namespace A212338

/-- `∑[A036355(∑[n+3])]` -/
def P16980825851959985319.Spec : Prop :=
  ∀ n, P16980825851959985319.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P3791497146513585772

`∑[A205575(∑[n+3])]`
-/

namespace A212338.P3791497146513585772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205575 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212338.P3791497146513585772

namespace A212338

/-- `∑[A205575(∑[n+3])]` -/
def P3791497146513585772.Spec : Prop :=
  ∀ n, P3791497146513585772.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P11213304666220107090

`A209127((n+3)²-∑[n+1])`
-/

namespace A212338.P11213304666220107090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209127 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212338.P11213304666220107090

namespace A212338

/-- `A209127((n+3)²-∑[n+1])` -/
def P11213304666220107090.Spec : Prop :=
  ∀ n, P11213304666220107090.a n = A212338 (n + 3)

end A212338

/-! ## A212338.P13600371447222891220

`record[A055830(A167499(n)-3)-A001629(n)]`
-/

namespace A212338.P13600371447222891220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A167499 n - 3).toNat - A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212338.P13600371447222891220

namespace A212338

/-- `record[A055830(A167499(n)-3)-A001629(n)]` -/
def P13600371447222891220.Spec : Prop :=
  ∀ n, P13600371447222891220.a n = A212338 (n + 3)

end A212338

/-!
# A212340: G.f.: 1/(1-x-x^2-2*x^3-5*x^4).

The programs for A212340, there is no canonical definition to state claims against.
-/

/-! ## A212340.P16682530437091413603

`A304719(n)-A184954(A184954(n))`
-/

namespace A212340.P16682530437091413603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304719 n - A184954 (A184954 n).toNat

end

end A212340.P16682530437091413603

/-!
# A212342: Sequence of coefficients of x^0 in marked mesh pattern generating function Q_{n,132}^(0,3,0,0)(x).

The programs for A212342, the canonical program `A212342.P14933831444903639263` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212342 has offset 0).

The definition of A212342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212342.P14933831444903639263

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212342

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14933831444903639263.Spec : Prop :=
  ∀ n, P14933831444903639263.a n = A212342 n

theorem P14933831444903639263.correct : P14933831444903639263.Spec := by
  intro n
  simp only [A212342]

end A212342

/-! ## A212342.P12943546981138078714

`abs(1-(char[1]+∑[n]))`
-/

namespace A212342.P12943546981138078714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A212342.P12943546981138078714

namespace A212342

/-- `abs(1-(char[1]+∑[n]))` -/
def P12943546981138078714.Spec : Prop :=
  ∀ n, P12943546981138078714.a n = A212342 n

end A212342

/-! ## A212342.P13997997493492855504

`∑[C(n, xor(1, C(2, n)))]`
-/

namespace A212342.P13997997493492855504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 1 (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212342.P13997997493492855504

namespace A212342

/-- `∑[C(n, xor(1, C(2, n)))]` -/
def P13997997493492855504.Spec : Prop :=
  ∀ n, (P13997997493492855504.a n : ℤ) = A212342 n

end A212342

/-! ## A212342.P6289205167852276857

`or(abs(1-∑[n]), char[1])`
-/

namespace A212342.P6289205167852276857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212342.P6289205167852276857

namespace A212342

/-- `or(abs(1-∑[n]), char[1])` -/
def P6289205167852276857.Spec : Prop :=
  ∀ n, P6289205167852276857.a n = A212342 n

end A212342

/-! ## A212342.P12889289095306072780

`xor(abs(1-∑[n]), char[1])`
-/

namespace A212342.P12889289095306072780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212342.P12889289095306072780

namespace A212342

/-- `xor(abs(1-∑[n]), char[1])` -/
def P12889289095306072780.Spec : Prop :=
  ∀ n, P12889289095306072780.a n = A212342 n

end A212342

/-! ## A212342.P13759421605590775461

`floor(∑[n]+1-atan(n))`
-/

namespace A212342.P13759421605590775461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (1 - Real.arctan (n : ℝ))⌋

end

end A212342.P13759421605590775461

namespace A212342

/-- `floor(∑[n]+1-atan(n))` -/
def P13759421605590775461.Spec : Prop :=
  ∀ n, P13759421605590775461.a n = A212342 n

end A212342

/-! ## A212342.P7448523374295202013

`∑[n]+1-ceil(atan(n))`
-/

namespace A212342.P7448523374295202013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - ⌈Real.arctan (n : ℝ)⌉)

end

end A212342.P7448523374295202013

namespace A212342

/-- `∑[n]+1-ceil(atan(n))` -/
def P7448523374295202013.Spec : Prop :=
  ∀ n, P7448523374295202013.a n = A212342 n

end A212342

/-! ## A212342.P11376557459077368400

`floor(∑[n]-(atan(n)-1))`
-/

namespace A212342.P11376557459077368400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (Real.arctan (n : ℝ) - 1)⌋

end

end A212342.P11376557459077368400

namespace A212342

/-- `floor(∑[n]-(atan(n)-1))` -/
def P11376557459077368400.Spec : Prop :=
  ∀ n, P11376557459077368400.a n = A212342 n

end A212342

/-! ## A212342.P12141791574361178999

`1-ceil(atan(n)-∑[n])`
-/

namespace A212342.P12141791574361178999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈Real.arctan (n : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A212342.P12141791574361178999

namespace A212342

/-- `1-ceil(atan(n)-∑[n])` -/
def P12141791574361178999.Spec : Prop :=
  ∀ n, P12141791574361178999.a n = A212342 n

end A212342

/-! ## A212342.P12962951643595450848

`round(∑[n]+acot(n)-1)`
-/

namespace A212342.P12962951643595450848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (SequenceMachineLib.acot (n : ℝ) - 1))

end

end A212342.P12962951643595450848

namespace A212342

/-- `round(∑[n]+acot(n)-1)` -/
def P12962951643595450848.Spec : Prop :=
  ∀ n, P12962951643595450848.a n = A212342 n

end A212342

/-! ## A212342.P3545448928293381560

`round(∑[n]-(1-acot(n)))`
-/

namespace A212342.P3545448928293381560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (1 - SequenceMachineLib.acot (n : ℝ)))

end

end A212342.P3545448928293381560

namespace A212342

/-- `round(∑[n]-(1-acot(n)))` -/
def P3545448928293381560.Spec : Prop :=
  ∀ n, P3545448928293381560.a n = A212342 n

end A212342

/-! ## A212342.P15941320073916709139

`a(n-1)+n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A212342.P15941320073916709139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + n

end

end A212342.P15941320073916709139

namespace A212342

/-- `a(n-1)+n` -/
def P15941320073916709139.Spec : Prop :=
  ∀ n, (P15941320073916709139.a n : ℤ) = A212342 n

end A212342

/-! ## A212342.P1387015373732811326

`∑[C(n, a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A212342.P1387015373732811326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212342.P1387015373732811326

namespace A212342

/-- `∑[C(n, a(n-1))]` -/
def P1387015373732811326.Spec : Prop :=
  ∀ n, (P1387015373732811326.a n : ℤ) = A212342 n

end A212342

/-! ## A212342.P1261140744034426973

`∑[n]-a(and(1, n))` with `a(0)=1, a(1)=1`
-/

namespace A212342.P1261140744034426973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (Nat.land 1 n)

end

end A212342.P1261140744034426973

namespace A212342

/-- `∑[n]-a(and(1, n))` -/
def P1261140744034426973.Spec : Prop :=
  ∀ n, P1261140744034426973.a n = A212342 n

end A212342

/-! ## A212342.P7439850123805426368

`gcd(1-∑[n], C(n, n²))`
-/

namespace A212342.P7439850123805426368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (Nat.choose n (n ^ 2) : ℤ)

end

end A212342.P7439850123805426368

namespace A212342

/-- `gcd(1-∑[n], C(n, n²))` -/
def P7439850123805426368.Spec : Prop :=
  ∀ n, (P7439850123805426368.a n : ℤ) = A212342 n

end A212342

/-! ## A212342.P13384334400677132236

`C(2, n+1)+∑[n]-1`
-/

namespace A212342.P13384334400677132236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A212342.P13384334400677132236

namespace A212342

/-- `C(2, n+1)+∑[n]-1` -/
def P13384334400677132236.Spec : Prop :=
  ∀ n, P13384334400677132236.a n = A212342 n

end A212342

/-! ## A212342.P4340939267798659570

`∑[n]-a(floor(1/n))` with `a(0)=1, a(1)=1`
-/

namespace A212342.P4340939267798659570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a ⌊1 / (n : ℚ)⌋.toNat

end

end A212342.P4340939267798659570

namespace A212342

/-- `∑[n]-a(floor(1/n))` -/
def P4340939267798659570.Spec : Prop :=
  ∀ n, P4340939267798659570.a n = A212342 n

end A212342

/-! ## A212342.P410758278401794801

`∑[n^a(floor(2/n))]` with `a(0)=1, a(1)=0`
-/

namespace A212342.P410758278401794801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  n ^ f1 ⌊2 / (n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212342.P410758278401794801

namespace A212342

/-- `∑[n^a(floor(2/n))]` -/
def P410758278401794801.Spec : Prop :=
  ∀ n, (P410758278401794801.a n : ℤ) = A212342 n

end A212342

/-! ## A212342.P10327631318592147939

`∑[n]-(n-1)^C(2, n)`
-/

namespace A212342.P10327631318592147939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) ^ Nat.choose 2 n

end

end A212342.P10327631318592147939

namespace A212342

/-- `∑[n]-(n-1)^C(2, n)` -/
def P10327631318592147939.Spec : Prop :=
  ∀ n, P10327631318592147939.a n = A212342 n

end A212342

/-! ## A212342.P16294773428139425814

`round(∑[n]-cos(3/(n+1)))`
-/

namespace A212342.P16294773428139425814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (3 / (n + 1 : ℚ) : ℝ))

end

end A212342.P16294773428139425814

namespace A212342

/-- `round(∑[n]-cos(3/(n+1)))` -/
def P16294773428139425814.Spec : Prop :=
  ∀ n, P16294773428139425814.a n = A212342 n

end A212342

/-!
# A212343: a(n) = (n+1)*(n-2)*(n-3)/2.

The programs for A212343, the canonical program `A212343.P2355075321523118121` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212343 has offset 2).

The definition of A212343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*n*(n-1)/2` (program `A212343.P15614440424908648996`, by `A212343.P15614440424908648996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212343.P15614440424908648996

`(n+3)*n*(n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212343.P15614440424908648996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2))

end

end A212343.P15614440424908648996

namespace A212343

/-- `(n+3)*n*(n-1)/2` -/
def P15614440424908648996.Spec : Prop :=
  ∀ n, P15614440424908648996.a n = (A212343 (n + 2) : ℚ)

theorem P15614440424908648996.correct : P15614440424908648996.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A212343, Nat.add_sub_cancel, A212343.P15614440424908648996.a, A212343.P2355075321523118121.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A212343, Nat.add_sub_cancel, A212343.P15614440424908648996.a, A212343.P2355075321523118121.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212343

/-! ## A212343.P2355075321523118121

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=18`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212343

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2355075321523118121.Spec : Prop :=
  ∀ n, P2355075321523118121.a n = A212343 (n + 2)

theorem P2355075321523118121.correct : P2355075321523118121.Spec := by
  intro n
  simp only [A212343, Nat.add_sub_cancel]

end A212343

/-! ## A212343.P12478503681454892869

`C(n, 2)/(n+3)^-1`
-/

namespace A212343.P12478503681454892869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (n + 3 : ℚ) ^ (-1 : ℤ)

end

end A212343.P12478503681454892869

namespace A212343

/-- `C(n, 2)/(n+3)^-1` -/
def P12478503681454892869.Spec : Prop :=
  ∀ n, P12478503681454892869.a n = (A212343 (n + 2) : ℚ)

end A212343

/-! ## A212343.P13659707100667882610

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=0, a(2)=5`
-/

namespace A212343.P13659707100667882610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212343.P13659707100667882610

namespace A212343

/-- `∑[∑[a(n-1)+3]]` -/
def P13659707100667882610.Spec : Prop :=
  ∀ n, (P13659707100667882610.a n : ℤ) = A212343 (n + 2)

end A212343

/-! ## A212343.P8248006796134018500

`3*C(n, 3)+5*C(n, 2)`
-/

namespace A212343.P8248006796134018500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 3 + 5 * Nat.choose n 2

end

end A212343.P8248006796134018500

namespace A212343

/-- `3*C(n, 3)+5*C(n, 2)` -/
def P8248006796134018500.Spec : Prop :=
  ∀ n, (P8248006796134018500.a n : ℤ) = A212343 (n + 2)

end A212343

/-! ## A212343.P2650032955162676595

`abs((n-3-2*n)*C(n, 2))`
-/

namespace A212343.P2650032955162676595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 3 - (2 * n : ℤ)) * (Nat.choose n 2 : ℤ)|

end

end A212343.P2650032955162676595

namespace A212343

/-- `abs((n-3-2*n)*C(n, 2))` -/
def P2650032955162676595.Spec : Prop :=
  ∀ n, P2650032955162676595.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P6004397552880917500

`-(n-3-2*n)*C(n, 2)`
-/

namespace A212343.P6004397552880917500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 3 - (2 * n : ℤ)) * (Nat.choose n 2 : ℤ))

end

end A212343.P6004397552880917500

namespace A212343

/-- `-(n-3-2*n)*C(n, 2)` -/
def P6004397552880917500.Spec : Prop :=
  ∀ n, P6004397552880917500.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P16954465736532525403

`(n-1)*record[n*(n-3)]/2`
-/

namespace A212343.P16954465736532525403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A212343.P16954465736532525403

namespace A212343

/-- `(n-1)*record[n*(n-3)]/2` -/
def P16954465736532525403.Spec : Prop :=
  ∀ n, P16954465736532525403.a n = (A212343 (n + 2) : ℚ)

end A212343

/-! ## A212343.P4833490306905685700

`2-∑[∑[a(n-1)-3]]` with `a(0)=2, a(1)=-2`
-/

namespace A212343.P4833490306905685700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212343.P4833490306905685700

namespace A212343

/-- `2-∑[∑[a(n-1)-3]]` -/
def P4833490306905685700.Spec : Prop :=
  ∀ n, P4833490306905685700.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P13725311569483245950

`(n-1)*C(2*n-(n-2), 2)-(n-1)`
-/

namespace A212343.P13725311569483245950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat 2 : ℤ) - ((n : ℤ) - 1)

end

end A212343.P13725311569483245950

namespace A212343

/-- `(n-1)*C(2*n-(n-2), 2)-(n-1)` -/
def P13725311569483245950.Spec : Prop :=
  ∀ n, P13725311569483245950.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P3279028186951139179

`∑[∑[n-3]+lcm(n+2, n+1)]-(n-1)`
-/

namespace A212343.P3279028186951139179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.lcm (n + 2) (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)

end

end A212343.P3279028186951139179

namespace A212343

/-- `∑[∑[n-3]+lcm(n+2, n+1)]-(n-1)` -/
def P3279028186951139179.Spec : Prop :=
  ∀ n, P3279028186951139179.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P14891191202663744002

`A256857(n)-∑[n]`
-/

namespace A212343.P14891191202663744002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256857 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212343.P14891191202663744002

namespace A212343

/-- `A256857(n)-∑[n]` -/
def P14891191202663744002.Spec : Prop :=
  ∀ n, P14891191202663744002.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P738715208306568560

`A006002(n)-2*n`
-/

namespace A212343.P738715208306568560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - (2 * n : ℤ)

end

end A212343.P738715208306568560

namespace A212343

/-- `A006002(n)-2*n` -/
def P738715208306568560.Spec : Prop :=
  ∀ n, P738715208306568560.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P12029040177176451632

`∑[A005449(n)-2]+2`
-/

namespace A212343.P12029040177176451632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A212343.P12029040177176451632

namespace A212343

/-- `∑[A005449(n)-2]+2` -/
def P12029040177176451632.Spec : Prop :=
  ∀ n, P12029040177176451632.a n = A212343 (n + 2)

end A212343

/-! ## A212343.P8842177478032633576

`n²+A121670(n)/2`
-/

namespace A212343.P8842177478032633576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A121670 n : ℚ) / 2

end

end A212343.P8842177478032633576

namespace A212343

/-- `n²+A121670(n)/2` -/
def P8842177478032633576.Spec : Prop :=
  ∀ n, P8842177478032633576.a n = (A212343 (n + 2) : ℚ)

end A212343

/-! ## A212343.P17221824981422767706

`n²+A135503(n)-n`
-/

namespace A212343.P17221824981422767706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A135503 n - (n : ℤ))

end

end A212343.P17221824981422767706

namespace A212343

/-- `n²+A135503(n)-n` -/
def P17221824981422767706.Spec : Prop :=
  ∀ n, P17221824981422767706.a n = A212343 (n + 2)

end A212343

/-!
# A212344: Sequence of coefficients of x^(n-3) in marked mesh pattern generating function Q_{n,132}^(0,3,0,0)(x).

The programs for A212344, there is no canonical definition to state claims against.
-/

/-! ## A212344.P11906621950000853663

`5*C(2*n, n)/(n+1)`
-/

namespace A212344.P11906621950000853663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))

end

end A212344.P11906621950000853663

/-! ## A212344.P10874328983550999032

`(4-6/(n+1))*a(n-1)` with `a(0)=5`
-/

namespace A212344.P10874328983550999032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A212344.P10874328983550999032

/-! ## A212344.P4438409598791297792

`Δ[abs(∑[(4-6/n)*a(n-1)])]` with `a(0)=0, a(1)=5`
-/

namespace A212344.P4438409598791297792
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  (4 - 6 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212344.P4438409598791297792

/-! ## A212344.P17895312864924986069

`Δ[floor(∑[(4-6/n)*a(n-1)])]` with `a(0)=0, a(1)=5`
-/

namespace A212344.P17895312864924986069
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  (4 - 6 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212344.P17895312864924986069

/-! ## A212344.P10845519646265803734

`Δ[round(∑[(4-6/n)*a(n-1)])]` with `a(0)=0, a(1)=5`
-/

namespace A212344.P10845519646265803734
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  (4 - 6 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212344.P10845519646265803734

/-!
# A212345: Sequence of coefficients of x^(n-4) in marked mesh pattern generating function Q_{n,132}^(0,3,0,0)(x).

The programs for A212345, there is no canonical definition to state claims against.
-/

/-! ## A212345.P3919726662908563071

`record[(4-6/n)*a(n-1)]` with `a(0)=9, a(1)=1, a(2)=9`
-/

namespace A212345.P3919726662908563071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [9, 1, 9] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212345.P3919726662908563071

/-! ## A212345.P9433371047085353145

`Δ[round(∑[(4-6/(n+1))*a(n-1)])]` with `a(0)=9`
-/

namespace A212345.P9433371047085353145
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [9] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212345.P9433371047085353145

/-! ## A212345.P17152471183218391787

`Δ[((5*n-1)*a(n-1)-(4*n-2)*a(n-2))/(n+1)]` with `a(0)=0, a(1)=9`
-/

namespace A212345.P17152471183218391787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  (((5 * n : ℤ) - 1 : ℚ) * f1 (n - 1) - ((4 * n : ℤ) - 2 : ℚ) * f1 (n - 2)) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212345.P17152471183218391787

/-! ## A212345.P17965615512910280526

`9*A039598(∑[n])`
-/

namespace A212345.P17965615512910280526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A039598 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212345.P17965615512910280526

/-! ## A212345.P6151262013919623669

`∑[9*A071724(n)]`
-/

namespace A212345.P6151262013919623669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212345.P6151262013919623669

/-!
# A212346: Sequence of coefficients of x^0 in marked mesh pattern generating function Q_{n,132}^(0,4,0,0)(x).

The programs for A212346, the canonical program `A212346.P15507247594294215674` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212346 has offset 0).

The definition of A212346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212346.P15507247594294215674

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14, a(5)=28, a(6)=48`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212346

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15507247594294215674.Spec : Prop :=
  ∀ n, P15507247594294215674.a n = A212346 n

theorem P15507247594294215674.correct : P15507247594294215674.Spec := by
  intro n
  simp only [A212346]

end A212346

/-! ## A212346.P13914340820317011094

`∑[a(n-1)+n]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=9`
-/

namespace A212346.P13914340820317011094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 3, 9] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212346.P13914340820317011094

namespace A212346

/-- `∑[a(n-1)+n]` -/
def P13914340820317011094.Spec : Prop :=
  ∀ n, (P13914340820317011094.a n : ℤ) = A212346 n

end A212346

/-! ## A212346.P12489472758735058911

`abs(1-a(n-1)-∑[n])` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14`
-/

namespace A212346.P12489472758735058911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5, 14] fun n a =>
  |1 - a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A212346.P12489472758735058911

namespace A212346

/-- `abs(1-a(n-1)-∑[n])` -/
def P12489472758735058911.Spec : Prop :=
  ∀ n, P12489472758735058911.a n = A212346 n

end A212346

/-! ## A212346.P8905109570231848386

`gcd(A129936(n), A130779(n))`
-/

namespace A212346.P8905109570231848386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129936 n) (A130779 n)

end

end A212346.P8905109570231848386

namespace A212346

/-- `gcd(A129936(n), A130779(n))` -/
def P8905109570231848386.Spec : Prop :=
  ∀ n, (P8905109570231848386.a n : ℤ) = A212346 n

end A212346

/-! ## A212346.P2152995712560644769

`abs(or((n+2)/3*A307681(n+3), A130779(n)))`
-/

namespace A212346.P2152995712560644769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (SequenceMachineLib.roundAway ((n + 2 : ℚ) / 3 * (A307681 (n + 3) : ℚ))) (A130779 n)|

end

end A212346.P2152995712560644769

namespace A212346

/-- `abs(or((n+2)/3*A307681(n+3), A130779(n)))` -/
def P2152995712560644769.Spec : Prop :=
  ∀ n, P2152995712560644769.a n = A212346 n

end A212346

/-! ## A212346.P15028423835314376802

`abs(A254749(n+2)-A130779(n))`
-/

namespace A212346.P15028423835314376802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254749 (n + 2) - A130779 n|

end

end A212346.P15028423835314376802

namespace A212346

/-- `abs(A254749(n+2)-A130779(n))` -/
def P15028423835314376802.Spec : Prop :=
  ∀ n, P15028423835314376802.a n = A212346 n

end A212346

/-! ## A212346.P10016602704266266377

`abs(or((n-2)/3*A253145(n+1), A130779(n)))`
-/

namespace A212346.P10016602704266266377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / 3 * (A253145 (n + 1) : ℚ))) (A130779 n)|

end

end A212346.P10016602704266266377

namespace A212346

/-- `abs(or((n-2)/3*A253145(n+1), A130779(n)))` -/
def P10016602704266266377.Spec : Prop :=
  ∀ n, P10016602704266266377.a n = A212346 n

end A212346

/-! ## A212346.P12497369712051992670

`A130779(n)+A129936(A233583(n+1))`
-/

namespace A212346.P12497369712051992670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n + A129936 (A233583 (n + 1)).toNat

end

end A212346.P12497369712051992670

namespace A212346

/-- `A130779(n)+A129936(A233583(n+1))` -/
def P12497369712051992670.Spec : Prop :=
  ∀ n, P12497369712051992670.a n = A212346 n

end A212346

/-! ## A212346.P4052872252599771479

`A105163(n+1)-3%A238829(n+1)`
-/

namespace A212346.P4052872252599771479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105163 (n + 1) - Int.tmod 3 (A238829 (n + 1))

end

end A212346.P4052872252599771479

namespace A212346

/-- `A105163(n+1)-3%A238829(n+1)` -/
def P4052872252599771479.Spec : Prop :=
  ∀ n, P4052872252599771479.a n = A212346 n

end A212346

/-! ## A212346.P1252915073473642608

`A190215(A060577(n))`
-/

namespace A212346.P1252915073473642608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (A060577 n).toNat

end

end A212346.P1252915073473642608

namespace A212346

/-- `A190215(A060577(n))` -/
def P1252915073473642608.Spec : Prop :=
  ∀ n, P1252915073473642608.a n = A212346 n

end A212346

/-! ## A212346.P12754584584113657251

`A033184(A060577(n)+1)`
-/

namespace A212346.P12754584584113657251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A060577 n + 1).toNat

end

end A212346.P12754584584113657251

namespace A212346

/-- `A033184(A060577(n)+1)` -/
def P12754584584113657251.Spec : Prop :=
  ∀ n, P12754584584113657251.a n = A212346 n

end A212346

/-! ## A212346.P3362285920932006695

`A277938(A052905(n)-A004274(n))`
-/

namespace A212346.P3362285920932006695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A052905 n - A004274 n).toNat

end

end A212346.P3362285920932006695

namespace A212346

/-- `A277938(A052905(n)-A004274(n))` -/
def P3362285920932006695.Spec : Prop :=
  ∀ n, P3362285920932006695.a n = A212346 n

end A212346

/-! ## A212346.P17780962308082999047

`A047040(A167614(n+2)%A117314(n+1))`
-/

namespace A212346.P17780962308082999047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (Int.tmod (A167614 (n + 2)) (A117314 (n + 1))).toNat

end

end A212346.P17780962308082999047

namespace A212346

/-- `A047040(A167614(n+2)%A117314(n+1))` -/
def P17780962308082999047.Spec : Prop :=
  ∀ n, P17780962308082999047.a n = A212346 n

end A212346

/-! ## A212346.P8132389577250763517

`A047050(A329502(n)+A056000(n))`
-/

namespace A212346.P8132389577250763517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (A329502 n + A056000 n).toNat

end

end A212346.P8132389577250763517

namespace A212346

/-- `A047050(A329502(n)+A056000(n))` -/
def P8132389577250763517.Spec : Prop :=
  ∀ n, P8132389577250763517.a n = A212346 n

end A212346

/-! ## A212346.P3219116764075922925

`A047050(A046691(n+2)%A125855(n+1))`
-/

namespace A212346.P3219116764075922925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047050 (Int.tmod (A046691 (n + 2)) (A125855 (n + 1))).toNat

end

end A212346.P3219116764075922925

namespace A212346

/-- `A047050(A046691(n+2)%A125855(n+1))` -/
def P3219116764075922925.Spec : Prop :=
  ∀ n, P3219116764075922925.a n = A212346 n

end A212346

/-!
# A212347: Sequence of coefficients of x^1 in marked mesh pattern generating function Q_{n,132}^(0,4,0,0)(x).

The programs for A212347, the canonical program `A212347.P11796195040180359504` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212347 has offset 5).

The definition of A212347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212347.P11796195040180359504

`(n+1)*(n+2)*(n+6)*(n+7)/6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212347

/-- `(n+1)*(n+2)*(n+6)*(n+7)/6` -/
def P11796195040180359504.Spec : Prop :=
  ∀ n, P11796195040180359504.a n = (A212347 (n + 5) : ℚ)

end A212347

/-! ## A212347.P15564918139107231905

`∑[∑[A268581(n+1)-1]]`
-/

namespace A212347.P15564918139107231905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212347.P15564918139107231905

namespace A212347

/-- `∑[∑[A268581(n+1)-1]]` -/
def P15564918139107231905.Spec : Prop :=
  ∀ n, P15564918139107231905.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P15190387891230651036

`∑[∑[A067728(n+1)+4]]`
-/

namespace A212347.P15190387891230651036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067728 (n + 1) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212347.P15190387891230651036

namespace A212347

/-- `∑[∑[A067728(n+1)+4]]` -/
def P15190387891230651036.Spec : Prop :=
  ∀ n, P15190387891230651036.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P14357566709931506736

`(n+7)*A005286(n)+n+7`
-/

namespace A212347.P14357566709931506736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A005286 n + (n + 7 : ℤ)

end

end A212347.P14357566709931506736

namespace A212347

/-- `(n+7)*A005286(n)+n+7` -/
def P14357566709931506736.Spec : Prop :=
  ∀ n, P14357566709931506736.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P7822934680662649888

`∑[∑[A152811(n+2)+2]]`
-/

namespace A212347.P7822934680662649888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152811 (n + 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212347.P7822934680662649888

namespace A212347

/-- `∑[∑[A152811(n+2)+2]]` -/
def P7822934680662649888.Spec : Prop :=
  ∀ n, P7822934680662649888.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P4404758761515780117

`abs((n+1)*Δ[A005587(n)])`
-/

namespace A212347.P4404758761515780117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A212347.P4404758761515780117

namespace A212347

/-- `abs((n+1)*Δ[A005587(n)])` -/
def P4404758761515780117.Spec : Prop :=
  ∀ n, P4404758761515780117.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P18027317225059161059

`A329523(n)+A100157(n+2)`
-/

namespace A212347.P18027317225059161059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n + A100157 (n + 2)

end

end A212347.P18027317225059161059

namespace A212347

/-- `A329523(n)+A100157(n+2)` -/
def P18027317225059161059.Spec : Prop :=
  ∀ n, P18027317225059161059.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P8414915655592542546

`∑[∑[A046092(n+2)+A004277(n+1)]]`
-/

namespace A212347.P8414915655592542546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 2) + A004277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212347.P8414915655592542546

namespace A212347

/-- `∑[∑[A046092(n+2)+A004277(n+1)]]` -/
def P8414915655592542546.Spec : Prop :=
  ∀ n, P8414915655592542546.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P14610753728283183986

`∑[∑[A152813(n+1)-A004273(n+1)]]`
-/

namespace A212347.P14610753728283183986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (n + 1) - A004273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212347.P14610753728283183986

namespace A212347

/-- `∑[∑[A152813(n+1)-A004273(n+1)]]` -/
def P14610753728283183986.Spec : Prop :=
  ∀ n, P14610753728283183986.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P16941626844026280946

`∑[2*∑[A008865(n+3)]]`
-/

namespace A212347.P16941626844026280946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212347.P16941626844026280946

namespace A212347

/-- `∑[2*∑[A008865(n+3)]]` -/
def P16941626844026280946.Spec : Prop :=
  ∀ n, P16941626844026280946.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P15516010623729709133

`A329523(n)+A000330(2*n+3)`
-/

namespace A212347.P15516010623729709133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n + A000330 (2 * n + 3)

end

end A212347.P15516010623729709133

namespace A212347

/-- `A329523(n)+A000330(2*n+3)` -/
def P15516010623729709133.Spec : Prop :=
  ∀ n, P15516010623729709133.a n = A212347 (n + 5)

end A212347

/-! ## A212347.P10096757546185352286

`∑[∑[A056203(∑[n+2])]]`
-/

namespace A212347.P10096757546185352286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212347.P10096757546185352286

namespace A212347

/-- `∑[∑[A056203(∑[n+2])]]` -/
def P10096757546185352286.Spec : Prop :=
  ∀ n, P10096757546185352286.a n = A212347 (n + 5)

end A212347

/-!
# A212348: Sequence of coefficients of x in marked mesh pattern generating function Q_{n,132}^(-,0,2,0)(x).

The programs for A212348, there is no canonical definition to state claims against.
-/

/-! ## A212348.P10726674819225626399

`A176554(A097553(n))+1`
-/

namespace A212348.P10726674819225626399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176554 (A097553 n).toNat + 1

end

end A212348.P10726674819225626399

/-!
# A212349: Sequence of coefficients of x in marked mesh pattern generating function Q_{n,132}^(-,0,3,0)(x).

The programs for A212349, there is no canonical definition to state claims against.
-/

/-! ## A212349.P3830706984161100604

`A268370(n+4)-A344973(∑{d}[n+1, #]^4)`
-/

namespace A212349.P3830706984161100604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268370 (n + 4) - A344973 ((∑ d ∈ Nat.divisors (f1 n), d) ^ 4)

end

end A212349.P3830706984161100604

/-!
# A212350: Maximal number of "good" manifolds in an n-serial polytope.

The programs for A212350, the canonical program `A212350.P3752814000272702153` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212350 has offset 1).

The definition of A212350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212350.P3752814000272702153

`or(n, a(n-1))+2^n-n` with `a(0)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212350

/-- `or(n, a(n-1))+2^n-n` -/
def P3752814000272702153.Spec : Prop :=
  ∀ n, P3752814000272702153.a n = A212350 (n + 1)

theorem P3752814000272702153.correct : P3752814000272702153.Spec := by
  intro n
  simp only [A212350, Nat.add_sub_cancel]

end A212350

/-! ## A212350.P17801251893240848707

`and(-(n+1), a(n-1))+2^n` with `a(0)=6`
-/

namespace A212350.P17801251893240848707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  Int.land (-(n + 1 : ℤ)) (a (n - 1)) + (2 ^ n : ℤ)

end

end A212350.P17801251893240848707

namespace A212350

/-- `and(-(n+1), a(n-1))+2^n` -/
def P17801251893240848707.Spec : Prop :=
  ∀ n, P17801251893240848707.a n = A212350 (n + 1)

end A212350

/-! ## A212350.P8646256152480963422

`A000325(n)+or(n, a(n-1))` with `a(0)=6`
-/

namespace A212350.P8646256152480963422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A000325 n + Int.lor (n : ℤ) (a (n - 1))

end

end A212350.P8646256152480963422

namespace A212350

/-- `A000325(n)+or(n, a(n-1))` -/
def P8646256152480963422.Spec : Prop :=
  ∀ n, P8646256152480963422.a n = A212350 (n + 1)

end A212350

/-! ## A212350.P5344608080123862721

`A151672(A161712(n))+A011782(n+2)`
-/

namespace A212350.P5344608080123862721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151672 (A161712 n).toNat + A011782 (n + 2)

end

end A212350.P5344608080123862721

namespace A212350

/-- `A151672(A161712(n))+A011782(n+2)` -/
def P5344608080123862721.Spec : Prop :=
  ∀ n, P5344608080123862721.a n = A212350 (n + 1)

end A212350

/-!
# A212351: Maximal number of "good" manifolds in an n-nice polytope.

The programs for A212351, there is no canonical definition to state claims against.
-/

/-! ## A212351.P7542250842678836380

`A113454(eq[A113493(n+1), A352248(n+3)])`
-/

namespace A212351.P7542250842678836380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352248 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113454 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A212351.P7542250842678836380

/-! ## A212351.P14234381800465756438

`A372792(ceil((n+2)!/4))`
-/

namespace A212351.P14234381800465756438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372792 ⌈(Nat.factorial (n + 2) : ℚ) / 4⌉.toNat

end

end A212351.P14234381800465756438

/-! ## A212351.P16923040238211692290

`A372792(∏[∑[∏{e}[n+1, #]]])`
-/

namespace A212351.P16923040238211692290
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372792 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A212351.P16923040238211692290

/-!
# A212352: Row sums of A047997.

The programs for A212352, there is no canonical definition to state claims against.
-/

/-! ## A212352.P6433500070530490529

`A047653(n)-1`
-/

namespace A212352.P6433500070530490529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047653 n - 1

end

end A212352.P6433500070530490529

/-! ## A212352.P15472488557651029938

`A000980(n)/2-1`
-/

namespace A212352.P15472488557651029938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000980 n : ℚ) / 2 - 1

end

end A212352.P15472488557651029938

/-! ## A212352.P10836198643159930068

`A133406(2*n+1)-1`
-/

namespace A212352.P10836198643159930068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133406 (2 * n + 1) - 1

end

end A212352.P10836198643159930068

/-! ## A212352.P12348356680146040224

`A362046(2*n)`
-/

namespace A212352.P12348356680146040224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362046 (2 * n)

end

end A212352.P12348356680146040224

/-! ## A212352.P2245915157646976486

`floor(sinh(log(A000980(n))))`
-/

namespace A212352.P2245915157646976486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000980 n : ℝ))⌋

end

end A212352.P2245915157646976486

/-!
# A212353: a(n) is the smallest positive solutions of the congruence x^2 + (x+1)^2 == 0 (mod prime), where prime = A002144(n) (Pythagorean primes).

The programs for A212353, there is no canonical definition to state claims against.
-/

/-! ## A212353.P10908278114824762003

`floor(A070669(2*p?[4*n+1])/2)`
-/

namespace A212353.P10908278114824762003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070669 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A212353.P10908278114824762003

/-! ## A212353.P9970101533496246889

`floor((p?[4*n+1]-A209874(n+1))/2)`
-/

namespace A212353.P9970101533496246889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A209874 (n + 1) : ℚ) / 2⌋

end

end A212353.P9970101533496246889

/-! ## A212353.P14104938503532137568

`floor(A070669(2*or(1, p?[4*n-7]-1))/2)`
-/

namespace A212353.P14104938503532137568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070669 (2 * Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat : ℚ) / 2⌋

end

end A212353.P14104938503532137568

/-! ## A212353.P10511482270326748608

`floor(A070669(2*xor(1, p?[4*n-7]-1))/2)`
-/

namespace A212353.P10511482270326748608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070669 (2 * Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat : ℚ) / 2⌋

end

end A212353.P10511482270326748608

/-! ## A212353.P17173601125003721242

`A104636(n+1)-A209877(n+1)`
-/

namespace A212353.P17173601125003721242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104636 (n + 1) - A209877 (n + 1)

end

end A212353.P17173601125003721242

/-! ## A212353.P5355515908165987497

`floor(A070669(2*A002144(n+1))/2)`
-/

namespace A212353.P5355515908165987497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070669 (2 * A002144 (n + 1)).toNat : ℚ) / 2⌋

end

end A212353.P5355515908165987497

/-! ## A212353.P13961853214622957601

`2*A005098(n+1)-A209877(n+1)`
-/

namespace A212353.P13961853214622957601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) - A209877 (n + 1)

end

end A212353.P13961853214622957601

/-! ## A212353.P14010325637728685462

`A152680(n+1)/2-A209877(n+1)`
-/

namespace A212353.P14010325637728685462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) : ℚ) / 2 - (A209877 (n + 1) : ℚ)

end

end A212353.P14010325637728685462

/-! ## A212353.P6834983011534212509

`A004524(A002144(n+1))-A209877(n+1)`
-/

namespace A212353.P6834983011534212509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A002144 (n + 1)).toNat - A209877 (n + 1)

end

end A212353.P6834983011534212509

/-! ## A212353.P17636775208559910374

`A005843(A005098(n+1))-A209877(n+1)`
-/

namespace A212353.P17636775208559910374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005098 (n + 1)).toNat - A209877 (n + 1)

end

end A212353.P17636775208559910374

/-!
# A212354: a(n) is the second smallest positive incongruent solutions of the congruence x^2 + (x+1)^2 == 0 (mod prime), where prime = A002144(n) (Pythagorean primes).

The programs for A212354, there is no canonical definition to state claims against.
-/

/-! ## A212354.P4138956642616707330

`p?[4*n+1]-1-A212353(n+1)`
-/

namespace A212354.P4138956642616707330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 - A212353 (n + 1)

end

end A212354.P4138956642616707330

/-! ## A212354.P10057652447193916697

`p?[4*n+1]-(floor(A070669(2*p?[4*n+1])/2)+1)`
-/

namespace A212354.P10057652447193916697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (⌊(A070669 (2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) : ℚ) / 2⌋ + 1)

end

end A212354.P10057652447193916697

/-! ## A212354.P17597284891240873951

`A209877(n+1)+A104636(n+1)`
-/

namespace A212354.P17597284891240873951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209877 (n + 1) + A104636 (n + 1)

end

end A212354.P17597284891240873951

/-! ## A212354.P9679159810036597798

`A212353(n+1)+A209874(n+1)`
-/

namespace A212354.P9679159810036597798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212353 (n + 1) + A209874 (n + 1)

end

end A212354.P9679159810036597798

/-! ## A212354.P4756346593459028584

`A152680(n+1)-A212353(n+1)`
-/

namespace A212354.P4756346593459028584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) - A212353 (n + 1)

end

end A212354.P4756346593459028584

/-! ## A212354.P12471111041932868231

`p?[A016813(n)]-(A212353(n+1)+1)`
-/

namespace A212354.P12471111041932868231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (A212353 (n + 1) + 1)

end

end A212354.P12471111041932868231

/-! ## A212354.P12437236291519237472

`A002144(n+1)-(A212353(n+1)+1)`
-/

namespace A212354.P12437236291519237472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - (A212353 (n + 1) + 1)

end

end A212354.P12437236291519237472

/-! ## A212354.P14568475252650289544

`A002313(n+2)-(A212353(n+1)+1)`
-/

namespace A212354.P14568475252650289544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - (A212353 (n + 1) + 1)

end

end A212354.P14568475252650289544

/-! ## A212354.P12593696435676842729

`A209877(n+1)+2*A005098(n+1)`
-/

namespace A212354.P12593696435676842729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209877 (n + 1) + 2 * A005098 (n + 1)

end

end A212354.P12593696435676842729

/-! ## A212354.P10337383851792306116

`2*A104636(n+1)-A212353(n+1)`
-/

namespace A212354.P10337383851792306116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104636 (n + 1) - A212353 (n + 1)

end

end A212354.P10337383851792306116

/-!
# A212356: Number of terms of the cycle index polynomial Z(D_n) for the dihedral group D_n.

The programs for A212356, the canonical program `A212356.P18281607976249389159` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212356 has offset 1).

The definition of A212356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212356.P18281607976249389159

`∑{d}[n+1, ceil(2*#/(n+3))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212356

/-- `∑{d}[n+1, ceil(2*#/(n+3))]` -/
def P18281607976249389159.Spec : Prop :=
  ∀ n, P18281607976249389159.a n = A212356 (n + 1)

theorem P18281607976249389159.correct : P18281607976249389159.Spec := by
  intro n
  simp only [A212356, Nat.add_sub_cancel]

end A212356

/-! ## A212356.P18342885787225421974

`floor(A000005(n+1)+atan(n))`
-/

namespace A212356.P18342885787225421974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋

end

end A212356.P18342885787225421974

namespace A212356

/-- `floor(A000005(n+1)+atan(n))` -/
def P18342885787225421974.Spec : Prop :=
  ∀ n, P18342885787225421974.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P7100222094502139450

`A334954(n+1)-C(n, n²)`
-/

namespace A212356.P7100222094502139450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A212356.P7100222094502139450

namespace A212356

/-- `A334954(n+1)-C(n, n²)` -/
def P7100222094502139450.Spec : Prop :=
  ∀ n, P7100222094502139450.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P11826318158615429197

`floor(A000005(C(n+1, n))+2*n/(n+2))`
-/

namespace A212356.P11826318158615429197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (Nat.choose (n + 1) n) : ℚ) + (2 * n : ℚ) / (n + 2 : ℚ)⌋

end

end A212356.P11826318158615429197

namespace A212356

/-- `floor(A000005(C(n+1, n))+2*n/(n+2))` -/
def P11826318158615429197.Spec : Prop :=
  ∀ n, P11826318158615429197.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P17730688156616260226

`A000005(C(2, C(3, n²))+n)-or(1, -n)%2`
-/

namespace A212356.P17730688156616260226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n) - Int.tmod (Int.lor 1 (-(n : ℤ))) 2

end

end A212356.P17730688156616260226

namespace A212356

/-- `A000005(C(2, C(3, n²))+n)-or(1, -n)%2` -/
def P17730688156616260226.Spec : Prop :=
  ∀ n, P17730688156616260226.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P15201778278149379082

`floor(A000005(2*n+1-n)+2*n/(n+2))`
-/

namespace A212356.P15201778278149379082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (2 * n + 1 - n) : ℚ) + (2 * n : ℚ) / (n + 2 : ℚ)⌋

end

end A212356.P15201778278149379082

namespace A212356

/-- `floor(A000005(2*n+1-n)+2*n/(n+2))` -/
def P15201778278149379082.Spec : Prop :=
  ∀ n, P15201778278149379082.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P13935070272231211052

`A325765(n)+A130130(n)`
-/

namespace A212356.P13935070272231211052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + A130130 n

end

end A212356.P13935070272231211052

namespace A212356

/-- `A325765(n)+A130130(n)` -/
def P13935070272231211052.Spec : Prop :=
  ∀ n, P13935070272231211052.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P15791937542861132954

`A157928(n)+A000005(n+1)`
-/

namespace A212356.P15791937542861132954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A000005 (n + 1)

end

end A212356.P15791937542861132954

namespace A212356

/-- `A157928(n)+A000005(n+1)` -/
def P15791937542861132954.Spec : Prop :=
  ∀ n, P15791937542861132954.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P2695158452150271275

`A174296(n)+A023645(n+1)`
-/

namespace A212356.P2695158452150271275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n + A023645 (n + 1)

end

end A212356.P2695158452150271275

namespace A212356

/-- `A174296(n)+A023645(n+1)` -/
def P2695158452150271275.Spec : Prop :=
  ∀ n, P2695158452150271275.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P5450603535131078450

`A158799(n)+A070824(n+1)`
-/

namespace A212356.P5450603535131078450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n + A070824 (n + 1)

end

end A212356.P5450603535131078450

namespace A212356

/-- `A158799(n)+A070824(n+1)` -/
def P5450603535131078450.Spec : Prop :=
  ∀ n, P5450603535131078450.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P2311447619649896566

`A134871(n+1)-A289207(n)`
-/

namespace A212356.P2311447619649896566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (n + 1) - A289207 n

end

end A212356.P2311447619649896566

namespace A212356

/-- `A134871(n+1)-A289207(n)` -/
def P2311447619649896566.Spec : Prop :=
  ∀ n, P2311447619649896566.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P13324593830166885686

`A070824(n+1)+A130130(n)+1`
-/

namespace A212356.P13324593830166885686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + (A130130 n + 1)

end

end A212356.P13324593830166885686

namespace A212356

/-- `A070824(n+1)+A130130(n)+1` -/
def P13324593830166885686.Spec : Prop :=
  ∀ n, P13324593830166885686.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P11446195566305091549

`A334954(n+1)-A019590(n+1)`
-/

namespace A212356.P11446195566305091549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A019590 (n + 1)

end

end A212356.P11446195566305091549

namespace A212356

/-- `A334954(n+1)-A019590(n+1)` -/
def P11446195566305091549.Spec : Prop :=
  ∀ n, P11446195566305091549.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P12958907766029101821

`A334954(n+1)+A157928(n)-1`
-/

namespace A212356.P12958907766029101821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + (A157928 n - 1)

end

end A212356.P12958907766029101821

namespace A212356

/-- `A334954(n+1)+A157928(n)-1` -/
def P12958907766029101821.Spec : Prop :=
  ∀ n, P12958907766029101821.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P4546885016736750468

`A091247(2*n)+A000005(n+1)`
-/

namespace A212356.P4546885016736750468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * n) + A000005 (n + 1)

end

end A212356.P4546885016736750468

namespace A212356

/-- `A091247(2*n)+A000005(n+1)` -/
def P4546885016736750468.Spec : Prop :=
  ∀ n, P4546885016736750468.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P3232928304069997454

`A051903(∏{p}[n, #])+A000005(n+1)`
-/

namespace A212356.P3232928304069997454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∏ p ∈ Nat.primeFactors (f1 n), p) + A000005 (n + 1)

end

end A212356.P3232928304069997454

namespace A212356

/-- `A051903(∏{p}[n, #])+A000005(n+1)` -/
def P3232928304069997454.Spec : Prop :=
  ∀ n, P3232928304069997454.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P14525475075806941156

`A052409(∏{p}[n, #])+A000005(n+1)`
-/

namespace A212356.P14525475075806941156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (∏ p ∈ Nat.primeFactors (f1 n), p) + A000005 (n + 1)

end

end A212356.P14525475075806941156

namespace A212356

/-- `A052409(∏{p}[n, #])+A000005(n+1)` -/
def P14525475075806941156.Spec : Prop :=
  ∀ n, P14525475075806941156.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P15850442988583333143

`char[A080412(n)+2]+A000005(n+1)`
-/

namespace A212356.P15850442988583333143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A000005 (n + 1)

end

end A212356.P15850442988583333143

namespace A212356

/-- `char[A080412(n)+2]+A000005(n+1)` -/
def P15850442988583333143.Spec : Prop :=
  ∀ n, P15850442988583333143.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P7427595310526061922

`A000005(n+1)+1-A019590(n+1)`
-/

namespace A212356.P7427595310526061922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A019590 (n + 1))

end

end A212356.P7427595310526061922

namespace A212356

/-- `A000005(n+1)+1-A019590(n+1)` -/
def P7427595310526061922.Spec : Prop :=
  ∀ n, P7427595310526061922.a n = A212356 (n + 1)

end A212356

/-! ## A212356.P154014075697803194

`A000032(C(n, n²))+A000005(n+1)-1`
-/

namespace A212356.P154014075697803194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n (n ^ 2)) + (A000005 (n + 1) - 1)

end

end A212356.P154014075697803194

namespace A212356

/-- `A000032(C(n, n²))+A000005(n+1)-1` -/
def P154014075697803194.Spec : Prop :=
  ∀ n, P154014075697803194.a n = A212356 (n + 1)

end A212356

/-!
# A212357: Coefficients for the cycle index polynomial for the cyclic group C_n multiplied by n, n>=1, read as partition polynomial.

The programs for A212357, there is no canonical definition to state claims against.
-/

/-! ## A212357.P16126598725829133718

`A255647(and(A071697(n+1), A299646(n)))`
-/

namespace A212357.P16126598725829133718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 (Int.land (A071697 (n + 1)) (A299646 n)).toNat

end

end A212357.P16126598725829133718

/-! ## A212357.P4395832434613020589

`A205745(A050061(n+1)*A114616(n+1))`
-/

namespace A212357.P4395832434613020589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A050061 (n + 1) * A114616 (n + 1)).toNat

end

end A212357.P4395832434613020589

/-! ## A212357.P5711973001352272490

`A214546(A020639(A329766(n)))`
-/

namespace A212357.P5711973001352272490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A020639 (A329766 n).toNat).toNat

end

end A212357.P5711973001352272490

/-! ## A212357.P18048078764257170063

`A334462(A228946(n+1))^A001221(n+1)`
-/

namespace A212357.P18048078764257170063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334462 (A228946 (n + 1)).toNat : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A212357.P18048078764257170063

/-! ## A212357.P11230251751147195236

`A134109(A189587(n+1))`
-/

namespace A212357.P11230251751147195236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A189587 (n + 1)).toNat

end

end A212357.P11230251751147195236

/-!
# A212358: Coefficients of the cycle index polynomial for the alternating group A_n multiplied by n!/2, n>=1, read as partition polynomial.

The programs for A212358, there is no canonical definition to state claims against.
-/

/-! ## A212358.P1313112637309569487

`A036039(n+1)*A115198(n)`
-/

namespace A212358.P1313112637309569487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (n + 1) * A115198 n

end

end A212358.P1313112637309569487

/-! ## A212358.P8434351606723151728

`A115198(n)*A324254(n+1)`
-/

namespace A212358.P8434351606723151728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115198 n * A324254 (n + 1)

end

end A212358.P8434351606723151728

/-! ## A212358.P16188681195845810241

`(A324254(n+1)+A036039(n+1))/2`
-/

namespace A212358.P16188681195845810241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324254 (n + 1) + A036039 (n + 1) : ℚ) / 2

end

end A212358.P16188681195845810241

/-! ## A212358.P4543408537566899189

`A014682(A324254(n+1)+A036039(n+1))`
-/

namespace A212358.P4543408537566899189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A324254 (n + 1) + A036039 (n + 1)).toNat

end

end A212358.P4543408537566899189

/-! ## A212358.P14142267485518903424

`A036040(n+1)*A107106(n+1)*A115198(n)`
-/

namespace A212358.P14142267485518903424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A107106 (n + 1) * A115198 n

end

end A212358.P14142267485518903424

/-! ## A212358.P11644168613194564535

`A324254(n+1)%or(A007283(n), A324254(n+1))`
-/

namespace A212358.P11644168613194564535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324254 (n + 1)) (Int.lor (A007283 n) (A324254 (n + 1)))

end

end A212358.P11644168613194564535

/-! ## A212358.P4503229783195555866

`ceil(A324254(n+1)/A001792(n))*A324254(n+1)`
-/

namespace A212358.P4503229783195555866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324254 (n + 1) : ℚ) / (A001792 n : ℚ)⌉ * A324254 (n + 1)

end

end A212358.P4503229783195555866

/-! ## A212358.P2674260144380415112

`ceil(A324254(n+1)/A183339(n+1))*A324254(n+1)`
-/

namespace A212358.P2674260144380415112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324254 (n + 1) : ℚ) / (A183339 (n + 1) : ℚ)⌉ * A324254 (n + 1)

end

end A212358.P2674260144380415112

/-! ## A212358.P5459036565537711034

`ceil(1/(A000203(n+1)*A324254(n+1)))*A324254(n+1)`
-/

namespace A212358.P5459036565537711034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000203 (n + 1) * A324254 (n + 1) : ℚ)⌉ * A324254 (n + 1)

end

end A212358.P5459036565537711034

/-!
# A212359: Partition array for the number of representative necklaces (only cyclic symmetry) with n beads, each available in n colors. Only the color type (signature) matters.

The programs for A212359, there is no canonical definition to state claims against.
-/

/-! ## A212359.P14632220036680045677

`A318810(A185974(n+1))`
-/

namespace A212359.P14632220036680045677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A185974 (n + 1)).toNat

end

end A212359.P14632220036680045677

/-! ## A212359.P8837463547650929514

`A318810(ratio[A185974(n)]*A185974(n))`
-/

namespace A212359.P8837463547650929514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A185974 n : ℚ))).toNat

end

end A212359.P8837463547650929514

/-! ## A212359.P1173881683056560677

`A318810(A334438(n+1))+A209229(A056106(2*n+3))`
-/

namespace A212359.P1173881683056560677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A334438 (n + 1)).toNat + A209229 (A056106 (2 * n + 3)).toNat

end

end A212359.P1173881683056560677

/-! ## A212359.P8656745319680437774

`A212360(n+1)/A035206(n+1)`
-/

namespace A212359.P8656745319680437774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212360 (n + 1) : ℚ) / (A035206 (n + 1) : ℚ)

end

end A212359.P8656745319680437774

/-! ## A212359.P4389010432880794074

`A318810(A334438(n+1))+A209229(A228321(2*n+3))`
-/

namespace A212359.P4389010432880794074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A334438 (n + 1)).toNat + A209229 (A228321 (2 * n + 3)).toNat

end

end A212359.P4389010432880794074

/-!
# A212360: Partition array a(n,k) with the total number of necklaces (C_n symmetry) with n beads, each available in n colors, with color signature given by the k-th partition of n in Abramowitz-Stegun(A-St) order.

The programs for A212360, there is no canonical definition to state claims against.
-/

/-! ## A212360.P17045270377248242671

`A035206(n+1)*A212359(n+1)`
-/

namespace A212360.P17045270377248242671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1) * A212359 (n + 1)

end

end A212360.P17045270377248242671

/-! ## A212360.P12986254326244827016

`A035206(n+1)*A318810(A185974(n+1))`
-/

namespace A212360.P12986254326244827016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1) * A318810 (A185974 (n + 1)).toNat

end

end A212360.P12986254326244827016

/-! ## A212360.P3189065635863260345

`A035206(n+1)*A318810(A334438(n+1))`
-/

namespace A212360.P3189065635863260345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1) * A318810 (A334438 (n + 1)).toNat

end

end A212360.P3189065635863260345

/-! ## A212360.P14077665627633300828

`A212359(n+1)/A213939(n+1)*A213941(n+1)`
-/

namespace A212360.P14077665627633300828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212359 (n + 1) : ℚ) / (A213939 (n + 1) : ℚ) * (A213941 (n + 1) : ℚ)

end

end A212360.P14077665627633300828

/-! ## A212360.P1326273915876871326

`A210238(A153679(n+1))*A212359(n+1)`
-/

namespace A212360.P1326273915876871326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210238 (A153679 (n + 1)).toNat * A212359 (n + 1)

end

end A212360.P1326273915876871326

/-!
# A212362: Triangle by rows, binomial transform of the beheaded Pascal's triangle A074909.

The programs for A212362, there is no canonical definition to state claims against.
-/

/-! ## A212362.P17202897792105324526

`A091913(n+1)+A007318(n)-A038207(n)`
-/

namespace A212362.P17202897792105324526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091913 (n + 1) + (A007318 n - A038207 n)

end

end A212362.P17202897792105324526

/-!
# A212363: Number A(n,k) of Dyck n-paths all of whose ascents and descents have lengths equal to 1+k*m (m>=0); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A212363, there is no canonical definition to state claims against.
-/

/-! ## A212363.P5975042514163600122

`A212382(n)-A067168(A126717(n))`
-/

namespace A212363.P5975042514163600122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 n - A067168 ((A126717 n).toNat + 10)

end

end A212363.P5975042514163600122

/-! ## A212363.P18227313068867924007

`A212382(n)-A046660(A355534(3*n+2))`
-/

namespace A212363.P18227313068867924007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 n - A046660 (A355534 (3 * n + 2)).toNat

end

end A212363.P18227313068867924007

/-! ## A212363.P10657669649852714663

`xor(A184963(A368413(3*n+5)), A212382(n))`
-/

namespace A212363.P10657669649852714663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A184963 (A368413 (3 * n + 5)).toNat) (A212382 n)

end

end A212363.P10657669649852714663

/-!
# A212364: Number of Dyck n-paths all of whose ascents and descents have lengths equal to 1 (mod 5).

The programs for A212364, there is no canonical definition to state claims against.
-/

/-! ## A212364.P11128568714899302770

`A212363(A055999(n+3))`
-/

namespace A212364.P11128568714899302770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A055999 (n + 3)).toNat

end

end A212364.P11128568714899302770

/-! ## A212364.P220542030360968976

`A212363(Δ[A026054(n+3)])`
-/

namespace A212364.P220542030360968976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (f1 (n + 1) - f1 n).toNat

end

end A212364.P220542030360968976

/-! ## A212364.P2629929067250285894

`A212363(A034856(n+5)-4)`
-/

namespace A212364.P2629929067250285894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A034856 (n + 5) - 4).toNat

end

end A212364.P2629929067250285894

/-! ## A212364.P14332873553893993411

`A212363(A000217(n+6)-6)`
-/

namespace A212364.P14332873553893993411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A000217 (n + 6) - 6).toNat

end

end A212364.P14332873553893993411

/-! ## A212364.P13373309795592168076

`A212363(A133263(n+6)-8)`
-/

namespace A212364.P13373309795592168076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A133263 (n + 6) - 8).toNat

end

end A212364.P13373309795592168076

/-! ## A212364.P7462130747209179410

`A212363(A167499(n+3)+2*n)`
-/

namespace A212364.P7462130747209179410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A212364.P7462130747209179410

/-! ## A212364.P11776738505804700021

`A212363(2*n+A166136(n+3)-1)`
-/

namespace A212364.P11776738505804700021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 ((2 * n : ℤ) + (A166136 (n + 3) - 1)).toNat

end

end A212364.P11776738505804700021

/-!
# A212365: Number of Dyck n-paths all of whose ascents and descents have lengths equal to 1 (mod 6).

The programs for A212365, there is no canonical definition to state claims against.
-/

/-! ## A212365.P6153282562563153385

`A212363(eq[13, A099375(n)])`
-/

namespace A212365.P6153282562563153385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212365.P6153282562563153385

/-! ## A212365.P6462274191170992091

`A212363(2*n+A000124(n+5)+5)`
-/

namespace A212365.P6462274191170992091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A212365.P6462274191170992091

/-!
# A212366: Number of Dyck n-paths all of whose ascents and descents have lengths equal to 1 (mod 7).

The programs for A212366, there is no canonical definition to state claims against.
-/

/-! ## A212366.P18424360223423092146

`A005709(n+6)%A242994(2*(n+2))-n`
-/

namespace A212366.P18424360223423092146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005709 (n + 6)) (A242994 (2 * (n + 2))) - (n : ℤ)

end

end A212366.P18424360223423092146

/-! ## A212366.P176024339147840

`∑[A173925(n)-A057427(A192951(n))]`
-/

namespace A212366.P176024339147840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173925 n - A057427 (A192951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212366.P176024339147840

/-! ## A212366.P7477524358906077944

`A212367(n+1)+A101637(A212390(n+3))`
-/

namespace A212366.P7477524358906077944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212367 (n + 1) + A101637 (A212390 (n + 3)).toNat

end

end A212366.P7477524358906077944

/-!
# A212367: Number of Dyck n-paths all of whose ascents and descents have lengths equal to 1 (mod 8).

The programs for A212367, there is no canonical definition to state claims against.
-/

/-! ## A212367.P2249336274041477934

`A212363(A055999(n+6)-3)`
-/

namespace A212367.P2249336274041477934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A055999 (n + 6) - 3).toNat

end

end A212367.P2249336274041477934

/-! ## A212367.P658838447878870375

`A212363(A000217(n+9)-9)`
-/

namespace A212367.P658838447878870375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A000217 (n + 9) - 9).toNat

end

end A212367.P658838447878870375

/-! ## A212367.P10597716133454743769

`A247151(A212368(n+1)+1)`
-/

namespace A212367.P10597716133454743769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (A212368 (n + 1) + 1).toNat

end

end A212367.P10597716133454743769

/-! ## A212367.P10009793267825412720

`A132284(A212368(n+1))`
-/

namespace A212367.P10009793267825412720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A212368 (n + 1)).toNat

end

end A212367.P10009793267825412720

/-! ## A212367.P11506937199380437324

`A152947(∑[A288684(n)^8])`
-/

namespace A212367.P11506937199380437324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288684 n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212367.P11506937199380437324

/-!
# A212368: Number of Dyck n-paths all of whose ascents and descents have lengths equal to 1 (mod 9).

The programs for A212368, there is no canonical definition to state claims against.
-/

/-! ## A212368.P11993731362870106265

`∑[(A175740(n)-1)%A096347(n)]+1`
-/

namespace A212368.P11993731362870106265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175740 n - 1) (A096347 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A212368.P11993731362870106265

/-! ## A212368.P248887592816099300

`A136534(A212369(n+1))`
-/

namespace A212368.P248887592816099300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136534 (A212369 (n + 1)).toNat

end

end A212368.P248887592816099300

/-! ## A212368.P6596051255218027265

`A212369(A242474(n+1))`
-/

namespace A212368.P6596051255218027265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212369 (A242474 (n + 1)).toNat

end

end A212368.P6596051255218027265

/-! ## A212368.P13687373948189406513

`A212369(A351374(n+1))`
-/

namespace A212368.P13687373948189406513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212369 (A351374 (n + 1)).toNat

end

end A212368.P13687373948189406513

/-! ## A212368.P1288942666572127675

`A000124(∑[A031286(n)^27])`
-/

namespace A212368.P1288942666572127675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n ^ 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212368.P1288942666572127675

/-!
# A212369: Number of Dyck n-paths all of whose ascents and descents have lengths equal to 1 (mod 10).

The programs for A212369, there is no canonical definition to state claims against.
-/

/-! ## A212369.P8649123484967338966

`record[A017904(A325178(n+1)+19)]-n`
-/

namespace A212369.P8649123484967338966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017904 (A325178 (n + 1) + 19).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A212369.P8649123484967338966

/-! ## A212369.P18051827168870388778

`A304326(A000043(n+1))+∑[A143289(n)]`
-/

namespace A212369.P18051827168870388778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304326 (A000043 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212369.P18051827168870388778

/-! ## A212369.P15681963856376022036

`A207329(A275065(n))`
-/

namespace A212369.P15681963856376022036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207329 (A275065 n).toNat

end

end A212369.P15681963856376022036

/-! ## A212369.P17293956665092315752

`A207329(A275077(n))`
-/

namespace A212369.P17293956665092315752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207329 (A275077 n).toNat

end

end A212369.P17293956665092315752

/-! ## A212369.P14923689604062426003

`A152947(∑[A288686(n)^8])`
-/

namespace A212369.P14923689604062426003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288686 n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212369.P14923689604062426003

/-!
# A212370: G.f.: 1 = Sum_{n>=0} a(n)*x^n * [ Sum_{k=0..n+1} binomial(n+1, k)^2*(-x)^k ]^2.

The programs for A212370, there is no canonical definition to state claims against.
-/

/-! ## A212370.P7749385028887807012

`A361207(A123312(n)*A322861(2*n+1))`
-/

namespace A212370.P7749385028887807012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361207 (A123312 n * A322861 (2 * n + 1)).toNat

end

end A212370.P7749385028887807012

/-!
# A212371: Self-convolution yields A212370.

The programs for A212371, there is no canonical definition to state claims against.
-/

/-! ## A212371.P15628455199083309906

`or(C(7*n+1, n)/(7*n+1), A008507(C(7*n+1, n)/(7*n+1)))`
-/

namespace A212371.P15628455199083309906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((Nat.choose (7 * n + 1) n : ℚ) / (7 * n + 1 : ℚ))) (A008507 (SequenceMachineLib.roundAway ((Nat.choose (7 * n + 1) n : ℚ) / (7 * n + 1 : ℚ))).toNat)

end

end A212371.P15628455199083309906

/-!
# A212372: Nonprime numbers with distinct digits in descending order.

The programs for A212372, the canonical program `A212372.P8397880777953028730` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212372 has offset 1).

The definition of A212372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212372.P3349247263193347638

`filter[A009995(n+2), A005171(#)]`
-/

namespace A212372.P3349247263193347638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A212372.P3349247263193347638

namespace A212372

/-- `filter[A009995(n+2), A005171(#)]` -/
def P3349247263193347638.Spec : Prop :=
  ∀ n, P3349247263193347638.a n = A212372 (n + 1)

end A212372

/-! ## A212372.P17294736992533101345

`record[A191558(A009995(n+2))]`
-/

namespace A212372.P17294736992533101345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A009995 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212372.P17294736992533101345

namespace A212372

/-- `record[A191558(A009995(n+2))]` -/
def P17294736992533101345.Spec : Prop :=
  ∀ n, P17294736992533101345.a n = A212372 (n + 1)

end A212372

/-! ## A212372.P8397880777953028730

`∩[A009996(n+1), A210441(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A212372

/-- `∩[A009996(n+1), A210441(n+1)]` -/
def P8397880777953028730.Spec : Prop :=
  ∀ n, (P8397880777953028730.a n : ℤ) = A212372 (n + 1)

theorem P8397880777953028730.correct : P8397880777953028730.Spec := by
  intro n
  simp only [A212372, Nat.add_sub_cancel]

end A212372

/-! ## A212372.P9158659356916771602

`eq[A227362(n+1), A282462(n+1)]+1`
-/

namespace A212372.P9158659356916771602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A212372.P9158659356916771602

namespace A212372

/-- `eq[A227362(n+1), A282462(n+1)]+1` -/
def P9158659356916771602.Spec : Prop :=
  ∀ n, (P9158659356916771602.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P12965538474315949891

`eq[n, A227362(A014683(A028310(n)))]`
-/

namespace A212372.P12965538474315949891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A014683 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212372.P12965538474315949891

namespace A212372

/-- `eq[n, A227362(A014683(A028310(n)))]` -/
def P12965538474315949891.Spec : Prop :=
  ∀ n, (P12965538474315949891.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P8438405837036789490

`eq[A014684(A028310(n)), A227362(n)]`
-/

namespace A212372.P8438405837036789490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212372.P8438405837036789490

namespace A212372

/-- `eq[A014684(A028310(n)), A227362(n)]` -/
def P8438405837036789490.Spec : Prop :=
  ∀ n, (P8438405837036789490.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P8759803404823313550

`eq[A227362(A028310(n)), A282462(n)]`
-/

namespace A212372.P8759803404823313550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212372.P8759803404823313550

namespace A212372

/-- `eq[A227362(A028310(n)), A282462(n)]` -/
def P8759803404823313550.Spec : Prop :=
  ∀ n, (P8759803404823313550.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P10057787239878307032

`eq[A065033(2*n), A282462(A227362(n))]`
-/

namespace A212372.P10057787239878307032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212372.P10057787239878307032

namespace A212372

/-- `eq[A065033(2*n), A282462(A227362(n))]` -/
def P10057787239878307032.Spec : Prop :=
  ∀ n, (P10057787239878307032.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P751542939784289985

`eq[A123108(2*n), A282462(A227362(n))]`
-/

namespace A212372.P751542939784289985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212372.P751542939784289985

namespace A212372

/-- `eq[A123108(2*n), A282462(A227362(n))]` -/
def P751542939784289985.Spec : Prop :=
  ∀ n, (P751542939784289985.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P1480195143622610690

`∩[A009995(n+1), A018252(n+1)]`
-/

namespace A212372.P1480195143622610690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212372.P1480195143622610690

namespace A212372

/-- `∩[A009995(n+1), A018252(n+1)]` -/
def P1480195143622610690.Spec : Prop :=
  ∀ n, (P1480195143622610690.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P11154184139255774698

`∩[A009995(n+1), A210441(n+1)]`
-/

namespace A212372.P11154184139255774698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212372.P11154184139255774698

namespace A212372

/-- `∩[A009995(n+1), A210441(n+1)]` -/
def P11154184139255774698.Spec : Prop :=
  ∀ n, (P11154184139255774698.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P11615012233256011991

`eq[A065033(A227362(n)+n), A282462(n)]`
-/

namespace A212372.P11615012233256011991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A227362 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212372.P11615012233256011991

namespace A212372

/-- `eq[A065033(A227362(n)+n), A282462(n)]` -/
def P11615012233256011991.Spec : Prop :=
  ∀ n, (P11615012233256011991.a n : ℤ) = A212372 (n + 1)

end A212372

/-! ## A212372.P11683216010093948749

`eq[A123108(A227362(n)+n), A282462(n)]`
-/

namespace A212372.P11683216010093948749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A227362 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212372.P11683216010093948749

namespace A212372

/-- `eq[A123108(A227362(n)+n), A282462(n)]` -/
def P11683216010093948749.Spec : Prop :=
  ∀ n, (P11683216010093948749.a n : ℤ) = A212372 (n + 1)

end A212372

/-!
# A212374: Primes congruent to 1 mod 23.

The programs for A212374, the canonical program `A212374.P12859019626991539473` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212374 has offset 1).

The definition of A212374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212374.P12859019626991539473

`p?[23*n+1]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212374

/-- `p?[23*n+1]` -/
def P12859019626991539473.Spec : Prop :=
  ∀ n, (P12859019626991539473.a n : ℤ) = A212374 (n + 1)

theorem P12859019626991539473.correct : P12859019626991539473.Spec := by
  intro n
  simp only [A212374, Nat.add_sub_cancel]

end A212374

/-! ## A212374.P13901785487537332216

`or(1, p?[1-46*(1-n)])`
-/

namespace A212374.P13901785487537332216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 46 * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A212374.P13901785487537332216

namespace A212374

/-- `or(1, p?[1-46*(1-n)])` -/
def P13901785487537332216.Spec : Prop :=
  ∀ n, P13901785487537332216.a n = A212374 (n + 1)

end A212374

/-! ## A212374.P599932002693756179

`∏{d}[p?[a(n-1)+23], #]` with `a(0)=1`
-/

namespace A212374.P599932002693756179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 23

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A212374.P599932002693756179

namespace A212374

/-- `∏{d}[p?[a(n-1)+23], #]` -/
def P599932002693756179.Spec : Prop :=
  ∀ n, (P599932002693756179.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P9267551519815605341

`∑{p}[p?[a(n-1)+23], #]` with `a(0)=1`
-/

namespace A212374.P9267551519815605341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 23

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A212374.P9267551519815605341

namespace A212374

/-- `∑{p}[p?[a(n-1)+23], #]` -/
def P9267551519815605341.Spec : Prop :=
  ∀ n, (P9267551519815605341.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P2674310218442993711

`∏{p}[p?[a(n-1)+23], #]` with `a(0)=1`
-/

namespace A212374.P2674310218442993711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 23

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A212374.P2674310218442993711

namespace A212374

/-- `∏{p}[p?[a(n-1)+23], #]` -/
def P2674310218442993711.Spec : Prop :=
  ∀ n, (P2674310218442993711.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P9717443282370280467

`A215148(A120344(n+1))`
-/

namespace A212374.P9717443282370280467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (A120344 (n + 1)).toNat

end

end A212374.P9717443282370280467

namespace A212374

/-- `A215148(A120344(n+1))` -/
def P9717443282370280467.Spec : Prop :=
  ∀ n, P9717443282370280467.a n = A212374 (n + 1)

end A212374

/-! ## A212374.P2141203065458974612

`∩[A191021(n+1), A215148(n)]`
-/

namespace A212374.P2141203065458974612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P2141203065458974612

namespace A212374

/-- `∩[A191021(n+1), A215148(n)]` -/
def P2141203065458974612.Spec : Prop :=
  ∀ n, (P2141203065458974612.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P12686071034917698472

`∩[A296932(n+1), A215148(n)]`
-/

namespace A212374.P12686071034917698472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P12686071034917698472

namespace A212374

/-- `∩[A296932(n+1), A215148(n)]` -/
def P12686071034917698472.Spec : Prop :=
  ∀ n, (P12686071034917698472.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P10381920504200201882

`∩[A140558(n+1), A215148(n)]`
-/

namespace A212374.P10381920504200201882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P10381920504200201882

namespace A212374

/-- `∩[A140558(n+1), A215148(n)]` -/
def P10381920504200201882.Spec : Prop :=
  ∀ n, (P10381920504200201882.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P11385051234759983220

`∩[A054723(n+1), A215148(n)]`
-/

namespace A212374.P11385051234759983220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P11385051234759983220

namespace A212374

/-- `∩[A054723(n+1), A215148(n)]` -/
def P11385051234759983220.Spec : Prop :=
  ∀ n, (P11385051234759983220.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P4482849646307792965

`∩[A122259(n+1), A215148(n)]`
-/

namespace A212374.P4482849646307792965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P4482849646307792965

namespace A212374

/-- `∩[A122259(n+1), A215148(n)]` -/
def P4482849646307792965.Spec : Prop :=
  ∀ n, (P4482849646307792965.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P12879392909575900617

`∩[A396555(n+1), A215148(n)]`
-/

namespace A212374.P12879392909575900617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P12879392909575900617

namespace A212374

/-- `∩[A396555(n+1), A215148(n)]` -/
def P12879392909575900617.Spec : Prop :=
  ∀ n, (P12879392909575900617.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P15802599994715454471

`∩[A070957(n+1), A215148(n)]`
-/

namespace A212374.P15802599994715454471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P15802599994715454471

namespace A212374

/-- `∩[A070957(n+1), A215148(n)]` -/
def P15802599994715454471.Spec : Prop :=
  ∀ n, (P15802599994715454471.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P1484768943250829139

`∩[A261123(n+1), A215148(n)]`
-/

namespace A212374.P1484768943250829139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P1484768943250829139

namespace A212374

/-- `∩[A261123(n+1), A215148(n)]` -/
def P1484768943250829139.Spec : Prop :=
  ∀ n, (P1484768943250829139.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P16965264252433215112

`∩[A004139(n+1), A215148(n)]`
-/

namespace A212374.P16965264252433215112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P16965264252433215112

namespace A212374

/-- `∩[A004139(n+1), A215148(n)]` -/
def P16965264252433215112.Spec : Prop :=
  ∀ n, (P16965264252433215112.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P17911601706486662043

`∩[A045319(n+1), A215148(n)]`
-/

namespace A212374.P17911601706486662043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P17911601706486662043

namespace A212374

/-- `∩[A045319(n+1), A215148(n)]` -/
def P17911601706486662043.Spec : Prop :=
  ∀ n, (P17911601706486662043.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P6217931749818607260

`∩[A045344(n+1), A215148(n)]`
-/

namespace A212374.P6217931749818607260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P6217931749818607260

namespace A212374

/-- `∩[A045344(n+1), A215148(n)]` -/
def P6217931749818607260.Spec : Prop :=
  ∀ n, (P6217931749818607260.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P16884689198800055192

`∩[A065091(n+1), A215148(n)]`
-/

namespace A212374.P16884689198800055192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P16884689198800055192

namespace A212374

/-- `∩[A065091(n+1), A215148(n)]` -/
def P16884689198800055192.Spec : Prop :=
  ∀ n, (P16884689198800055192.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P12232496937051036939

`∩[A065396(n+1), A215148(n)]`
-/

namespace A212374.P12232496937051036939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P12232496937051036939

namespace A212374

/-- `∩[A065396(n+1), A215148(n)]` -/
def P12232496937051036939.Spec : Prop :=
  ∀ n, (P12232496937051036939.a n : ℤ) = A212374 (n + 1)

end A212374

/-! ## A212374.P16203820366228399508

`∩[A000040(n+1), A215148(n)]`
-/

namespace A212374.P16203820366228399508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212374.P16203820366228399508

namespace A212374

/-- `∩[A000040(n+1), A215148(n)]` -/
def P16203820366228399508.Spec : Prop :=
  ∀ n, (P16203820366228399508.a n : ℤ) = A212374 (n + 1)

end A212374

/-!
# A212376: 

The programs for A212376, there is no canonical definition to state claims against.
-/

/-! ## A212376.P4515448745702994544

`∪[A059362(n+1), A059669(n+1)]%A059669(n+1)`
-/

namespace A212376.P4515448745702994544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A059669 (n + 1))

end

end A212376.P4515448745702994544

/-!
# A212377: 

The programs for A212377, there is no canonical definition to state claims against.
-/

/-! ## A212377.P17530779701834319937

`p?[1+53*n]`
-/

namespace A212377.P17530779701834319937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 53 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A212377.P17530779701834319937

/-! ## A212377.P7018251625025569304

`p?[A161714(n)+A008607(n)]%A017344(n)`
-/

namespace A212377.P7018251625025569304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017344 n)

end

end A212377.P7018251625025569304

/-! ## A212377.P9154048256575194593

`p?[A161714(n)+A008607(n)]+2%A006466(n)`
-/

namespace A212377.P9154048256575194593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A006466 n)

end

end A212377.P9154048256575194593

/-! ## A212377.P9286205927753191075

`p?[A161714(n)+A008607(n)]+A000578(n+1)%(n+1)`
-/

namespace A212377.P9286205927753191075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A000578 (n + 1)) (n + 1 : ℤ)

end

end A212377.P9286205927753191075

/-! ## A212377.P3822257818231847959

`A000027(p?[A161714(n)+A008607(n)])`
-/

namespace A212377.P3822257818231847959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212377.P3822257818231847959

/-! ## A212377.P5406216903455413379

`record[A020639(53*(n+2)+1)]`
-/

namespace A212377.P5406216903455413379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (53 * (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212377.P5406216903455413379

/-! ## A212377.P7613116752216696047

`A000265(p?[A161714(n)+A008607(n)])`
-/

namespace A212377.P7613116752216696047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212377.P7613116752216696047

/-! ## A212377.P17607289829460278682

`A001414(p?[A161714(n)+A008607(n)])`
-/

namespace A212377.P17607289829460278682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212377.P17607289829460278682

/-! ## A212377.P2455579013032601447

`A007913(p?[A161714(n)+A008607(n)])`
-/

namespace A212377.P2455579013032601447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212377.P2455579013032601447

/-! ## A212377.P18198331472385957029

`A007947(p?[A161714(n)+A008607(n)])`
-/

namespace A212377.P18198331472385957029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212377.P18198331472385957029

/-! ## A212377.P2804242805343583068

`A008475(p?[A161714(n)+A008607(n)])`
-/

namespace A212377.P2804242805343583068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212377.P2804242805343583068

/-!
# A212378: Primes congruent to 1 mod 61.

The programs for A212378, the canonical program `A212378.P1742329795883171186` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212378 has offset 1).

The definition of A212378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212378.P1742329795883171186

`p?[61*n+1]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212378

/-- `p?[61*n+1]` -/
def P1742329795883171186.Spec : Prop :=
  ∀ n, (P1742329795883171186.a n : ℤ) = A212378 (n + 1)

theorem P1742329795883171186.correct : P1742329795883171186.Spec := by
  intro n
  simp only [A212378, Nat.add_sub_cancel]

end A212378

/-! ## A212378.P7524878957204145584

`∏{p}[p?[xor(1, 61*n)], #]`
-/

namespace A212378.P7524878957204145584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (61 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A212378.P7524878957204145584

namespace A212378

/-- `∏{p}[p?[xor(1, 61*n)], #]` -/
def P7524878957204145584.Spec : Prop :=
  ∀ n, (P7524878957204145584.a n : ℤ) = A212378 (n + 1)

end A212378

/-! ## A212378.P14366874316830835513

`∏{p}[p?[A158131(n+1)+n+1], #]`
-/

namespace A212378.P14366874316830835513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158131 (n + 1) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A212378.P14366874316830835513

namespace A212378

/-- `∏{p}[p?[A158131(n+1)+n+1], #]` -/
def P14366874316830835513.Spec : Prop :=
  ∀ n, (P14366874316830835513.a n : ℤ) = A212378 (n + 1)

end A212378

/-! ## A212378.P11962224652477320810

`A000027(p?[xor(1, 61*n)])`
-/

namespace A212378.P11962224652477320810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (61 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A212378.P11962224652477320810

namespace A212378

/-- `A000027(p?[xor(1, 61*n)])` -/
def P11962224652477320810.Spec : Prop :=
  ∀ n, P11962224652477320810.a n = A212378 (n + 1)

end A212378

/-! ## A212378.P13990222045729145002

`A000027(p?[A158131(n+1)+n+1])`
-/

namespace A212378.P13990222045729145002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158131 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212378.P13990222045729145002

namespace A212378

/-- `A000027(p?[A158131(n+1)+n+1])` -/
def P13990222045729145002.Spec : Prop :=
  ∀ n, P13990222045729145002.a n = A212378 (n + 1)

end A212378

/-! ## A212378.P17737489594192928115

`A000265(p?[A227863(n+1)+n])`
-/

namespace A212378.P17737489594192928115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212378.P17737489594192928115

namespace A212378

/-- `A000265(p?[A227863(n+1)+n])` -/
def P17737489594192928115.Spec : Prop :=
  ∀ n, P17737489594192928115.a n = A212378 (n + 1)

end A212378

/-! ## A212378.P5336786138612324407

`A007318(∑[n])*p?[xor(1, 61*n)]`
-/

namespace A212378.P5336786138612324407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (61 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A212378.P5336786138612324407

namespace A212378

/-- `A007318(∑[n])*p?[xor(1, 61*n)]` -/
def P5336786138612324407.Spec : Prop :=
  ∀ n, P5336786138612324407.a n = A212378 (n + 1)

end A212378

/-!
# A212379: Primes congruent to 1 mod 41.

The programs for A212379, the canonical program `A212379.P1400508223132726505` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212379 has offset 1).

The definition of A212379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212379.P1400508223132726505

`p?[41*n+1]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212379

/-- `p?[41*n+1]` -/
def P1400508223132726505.Spec : Prop :=
  ∀ n, (P1400508223132726505.a n : ℤ) = A212379 (n + 1)

theorem P1400508223132726505.correct : P1400508223132726505.Spec := by
  intro n
  simp only [A212379, Nat.add_sub_cancel]

end A212379

/-! ## A212379.P6336597387018191019

`or(1, p?[a(n-1)+41])` with `a(0)=1`
-/

namespace A212379.P6336597387018191019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A212379.P6336597387018191019

namespace A212379

/-- `or(1, p?[a(n-1)+41])` -/
def P6336597387018191019.Spec : Prop :=
  ∀ n, (P6336597387018191019.a n : ℤ) = A212379 (n + 1)

end A212379

/-! ## A212379.P10633615701002815164

`∏{p}[p?[a(n-1)+41], #]` with `a(0)=1`
-/

namespace A212379.P10633615701002815164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A212379.P10633615701002815164

namespace A212379

/-- `∏{p}[p?[a(n-1)+41], #]` -/
def P10633615701002815164.Spec : Prop :=
  ∀ n, (P10633615701002815164.a n : ℤ) = A212379 (n + 1)

end A212379

/-! ## A212379.P11111190050760618451

`abs(1-p?[a(n-1)+41])+1` with `a(0)=1`
-/

namespace A212379.P11111190050760618451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 1

end

end A212379.P11111190050760618451

namespace A212379

/-- `abs(1-p?[a(n-1)+41])+1` -/
def P11111190050760618451.Spec : Prop :=
  ∀ n, P11111190050760618451.a n = A212379 (n + 1)

end A212379

/-! ## A212379.P1139051249515190939

`p?[a(n-1)+41]/abs(A097807(n))` with `a(0)=1`
-/

namespace A212379.P1139051249515190939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (|A097807 n| : ℚ)

end

end A212379.P1139051249515190939

namespace A212379

/-- `p?[a(n-1)+41]/abs(A097807(n))` -/
def P1139051249515190939.Spec : Prop :=
  ∀ n, P1139051249515190939.a n = (A212379 (n + 1) : ℚ)

end A212379

/-! ## A212379.P1947370078995572471

`A000038(n+1)+p?[a(n-1)+41]` with `a(0)=1`
-/

namespace A212379.P1947370078995572471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A212379.P1947370078995572471

namespace A212379

/-- `A000038(n+1)+p?[a(n-1)+41]` -/
def P1947370078995572471.Spec : Prop :=
  ∀ n, P1947370078995572471.a n = A212379 (n + 1)

end A212379

/-! ## A212379.P3144655209537848040

`∏{p}[p?[A215146(n)-A257143(n)+n], #]`
-/

namespace A212379.P3144655209537848040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n - A257143 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A212379.P3144655209537848040

namespace A212379

/-- `∏{p}[p?[A215146(n)-A257143(n)+n], #]` -/
def P3144655209537848040.Spec : Prop :=
  ∀ n, (P3144655209537848040.a n : ℤ) = A212379 (n + 1)

end A212379

/-!
# A212380: G.f. satisfies: A(x) = x^2 + A(A(x))/x.

The programs for A212380, there is no canonical definition to state claims against.
-/

/-! ## A212380.P3611103473481254306

`A194920(A071969(n+1))`
-/

namespace A212380.P3611103473481254306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A071969 (n + 1)).toNat

end

end A212380.P3611103473481254306

/-! ## A212380.P12190090629632249624

`A187188(∑[∑[A328080(n)]])`
-/

namespace A212380.P12190090629632249624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328080 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212380.P12190090629632249624

/-! ## A212380.P1861497636566769095

`A103221(∑[A106188(n)]+1)`
-/

namespace A212380.P1861497636566769095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A212380.P1861497636566769095

/-! ## A212380.P669341649534346523

`A307487(n)+A111429(A000078(n))`
-/

namespace A212380.P669341649534346523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307487 n + A111429 (A000078 n).toNat

end

end A212380.P669341649534346523

/-!
# A212381: G.f. satisfies: A(x) = x^2 + d/dx A(A(x))/2.

The programs for A212381, there is no canonical definition to state claims against.
-/

/-! ## A212381.P16714727088018393473

`A076436(A128579(n))`
-/

namespace A212381.P16714727088018393473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A128579 n).toNat

end

end A212381.P16714727088018393473

/-!
# A212382: Number A(n,k) of Dyck n-paths all of whose ascents have lengths equal to 1+k*m (m>=0); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A212382, there is no canonical definition to state claims against.
-/

/-! ## A212382.P7281430476859971856

`or(A086747(A000837(n)), A212363(n))`
-/

namespace A212382.P7281430476859971856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086747 (A000837 n).toNat) (A212363 n)

end

end A212382.P7281430476859971856

/-! ## A212382.P15777384652826621497

`A212363(n)+A024360(A002522(3*n+1))`
-/

namespace A212382.P15777384652826621497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 n + A024360 (A002522 (3 * n + 1)).toNat

end

end A212382.P15777384652826621497

/-! ## A212382.P5440778193230575346

`A240465(A000290(3*n+1))+A212363(n)`
-/

namespace A212382.P5440778193230575346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A000290 (3 * n + 1)).toNat + A212363 n

end

end A212382.P5440778193230575346

/-! ## A212382.P9991082456646075031

`A369655(A102627(3*n+5))+A212363(n)`
-/

namespace A212382.P9991082456646075031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369655 (A102627 (3 * n + 5)).toNat + A212363 n

end

end A212382.P9991082456646075031

/-!
# A212383: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 3).

The programs for A212383, there is no canonical definition to state claims against.
-/

/-! ## A212383.P12482087893587176165

`A212382(∑[n+4]+2)`
-/

namespace A212383.P12482087893587176165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A212383.P12482087893587176165

/-! ## A212383.P683530571149589675

`A212382(A155212(n)+4)%A296249(n)²`
-/

namespace A212383.P683530571149589675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212382 (A155212 n + 4).toNat) (A296249 n ^ 2)

end

end A212383.P683530571149589675

/-! ## A212383.P232390303119158027

`A212382(A155212(n)+4)+A000007(n+1)`
-/

namespace A212383.P232390303119158027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A155212 n + 4).toNat + A000007 (n + 1)

end

end A212383.P232390303119158027

/-! ## A212383.P11784118522919973126

`A212382(A155212(n)+4)^gcd(n, A152271(n))`
-/

namespace A212383.P11784118522919973126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A155212 n + 4).toNat ^ Int.gcd (n : ℤ) (A152271 n)

end

end A212383.P11784118522919973126

/-! ## A212383.P12097788993621969027

`A212382(A155212(n)+4)+C(A001222(n+1), n+2)`
-/

namespace A212383.P12097788993621969027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A155212 n + 4).toNat + (Nat.choose (A001222 (n + 1)).toNat (n + 2) : ℤ)

end

end A212383.P12097788993621969027

/-! ## A212383.P9370430503489691721

`A212382(A155212(n)+4)+A064317(C(n, n+2))-1`
-/

namespace A212383.P9370430503489691721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A155212 n + 4).toNat + A064317 (Nat.choose n (n + 2)) - 1

end

end A212383.P9370430503489691721

/-! ## A212383.P9729199931393962651

`A212382(A155212(n)+4)+n%A000203(n+1)-n`
-/

namespace A212383.P9729199931393962651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A155212 n + 4).toNat + Int.tmod (n : ℤ) (A000203 (n + 1)) - (n : ℤ)

end

end A212383.P9729199931393962651

/-! ## A212383.P11442816008005783743

`A212382(A155212(n)+4)^A152271(A298471(n))`
-/

namespace A212383.P11442816008005783743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212382 (A155212 n + 4).toNat : ℚ) ^ (A152271 (A298471 n).toNat : ℤ)

end

end A212383.P11442816008005783743

/-! ## A212383.P17797873924569069133

`A212382(A155212(n)+4)/(A000079(n)-A000225(n))`
-/

namespace A212383.P17797873924569069133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212382 (A155212 n + 4).toNat : ℚ) / (A000079 n - A000225 n : ℚ)

end

end A212383.P17797873924569069133

/-!
# A212384: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 4).

The programs for A212384, there is no canonical definition to state claims against.
-/

/-! ## A212384.P2432534080122112639

`A212382(∑[n+5]+5)`
-/

namespace A212384.P2432534080122112639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A212384.P2432534080122112639

/-! ## A212384.P14227373946418110551

`A212382(eq[5, A004736(n+1)])+A000007(n+1)`
-/

namespace A212384.P14227373946418110551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A212384.P14227373946418110551

/-! ## A212384.P17213955460772622916

`A009001(4*n)*A212382(eq[5, A004736(n+1)])`
-/

namespace A212384.P17213955460772622916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (4 * n) * A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212384.P17213955460772622916

/-! ## A212384.P10556826579014085342

`A212382(eq[5, A004736(n+1)])%A206981(n+1)`
-/

namespace A212384.P10556826579014085342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A206981 (n + 1))

end

end A212384.P10556826579014085342

/-! ## A212384.P11560690523839655821

`A212382(eq[5, A004736(n+1)])+n%A009001(n)`
-/

namespace A212384.P11560690523839655821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + Int.tmod (n : ℤ) (A009001 n)

end

end A212384.P11560690523839655821

/-! ## A212384.P10099973393566542873

`A034947(n+1)²*A212382(eq[5, A004736(n+1)])`
-/

namespace A212384.P10099973393566542873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212384.P10099973393566542873

/-! ## A212384.P6632909995751283355

`A212382(eq[5, A004736(n+1)])+A001747(n+1)%2`
-/

namespace A212384.P6632909995751283355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + Int.tmod (A001747 (n + 1)) 2

end

end A212384.P6632909995751283355

/-! ## A212384.P12381233851971585205

`A027023(n²)*A212382(eq[5, A004736(n+1)])`
-/

namespace A212384.P12381233851971585205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (n ^ 2) * A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212384.P12381233851971585205

/-!
# A212385: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 5).

The programs for A212385, there is no canonical definition to state claims against.
-/

/-! ## A212385.P803108042364053344

`A212382((n+4)²-∑[n+1])`
-/

namespace A212385.P803108042364053344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212385.P803108042364053344

/-! ## A212385.P8858112262375658858

`-xor(A212382(eq[6, A004736(n+1)])-1, -1)`
-/

namespace A212385.P8858112262375658858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1) (-1)

end

end A212385.P8858112262375658858

/-! ## A212385.P9558617955493642525

`A212382(eq[5, A025581(n)])+A000007(n+1)`
-/

namespace A212385.P9558617955493642525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A212385.P9558617955493642525

/-! ## A212385.P8975468220627862179

`A212382(eq[5, A025581(n)])%A000984(n+1)`
-/

namespace A212385.P8975468220627862179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000984 (n + 1))

end

end A212385.P8975468220627862179

/-! ## A212385.P184983823053674413

`A212382(Δ[A023551(n+1)])%A029873(n)`
-/

namespace A212385.P184983823053674413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212382 (f1 (n + 1) - f1 n).toNat) (A029873 n)

end

end A212385.P184983823053674413

/-!
# A212386: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 6).

The programs for A212386, there is no canonical definition to state claims against.
-/

/-! ## A212386.P6620010507682288153

`A212382(eq[13, A099375(n)])`
-/

namespace A212386.P6620010507682288153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212386.P6620010507682288153

/-! ## A212386.P9937565062205108932

`A212382(A046691(n+4)+n+4)`
-/

namespace A212386.P9937565062205108932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A046691 (n + 4) + (n : ℤ) + 4).toNat

end

end A212386.P9937565062205108932

/-! ## A212386.P10336074282822365432

`A212382(A016825(n+4)+∑[n+3])`
-/

namespace A212386.P10336074282822365432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A016825 (n + 4) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A212386.P10336074282822365432

/-! ## A212386.P918263171959605858

`A212382(eq[6, A025581(n)])`
-/

namespace A212386.P918263171959605858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212386.P918263171959605858

/-! ## A212386.P14780393354157202110

`A212382(eq[7, A004736(abs(2-n)+3)])`
-/

namespace A212386.P14780393354157202110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (|2 - (n : ℤ)| + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212386.P14780393354157202110

/-!
# A212387: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 7).

The programs for A212387, there is no canonical definition to state claims against.
-/

/-! ## A212387.P3738481893242379449

`A212382(A155212(n+4))`
-/

namespace A212387.P3738481893242379449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A155212 (n + 4)).toNat

end

end A212387.P3738481893242379449

/-! ## A212387.P13663060960143273

`A306859(n)+A011706(A306859(n))`
-/

namespace A212387.P13663060960143273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306859 n + A011706 (A306859 n).toNat

end

end A212387.P13663060960143273

/-! ## A212387.P17171699659803427961

`A249122(A376836(n))+A152847(2*n+1)`
-/

namespace A212387.P17171699659803427961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A376836 n).toNat + A152847 (2 * n + 1)

end

end A212387.P17171699659803427961

/-!
# A212388: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 8).

The programs for A212388, there is no canonical definition to state claims against.
-/

/-! ## A212388.P16826576010818700605

`A306860(n)+A185284(2*n+3)`
-/

namespace A212388.P16826576010818700605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 n + A185284 (2 * n + 3)

end

end A212388.P16826576010818700605

/-! ## A212388.P13610861075297182884

`A306860(n)+A275494(A288324(n))`
-/

namespace A212388.P13610861075297182884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 n + A275494 (A288324 n).toNat

end

end A212388.P13610861075297182884

/-! ## A212388.P17319065329593532817

`A302042(2*A306860(n))+char[A171271(3*(n+1))]`
-/

namespace A212388.P17319065329593532817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171271 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (2 * A306860 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A212388.P17319065329593532817

/-!
# A212389: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 9).

The programs for A212389, there is no canonical definition to state claims against.
-/

/-! ## A212389.P10759499603427362191

`A212382(A055998(n+8)-7)`
-/

namespace A212389.P10759499603427362191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A055998 (n + 8) - 7).toNat

end

end A212389.P10759499603427362191

/-! ## A212389.P10804129293889420031

`A212382(A034856(n+9)-8)`
-/

namespace A212389.P10804129293889420031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A034856 (n + 9) - 8).toNat

end

end A212389.P10804129293889420031

/-! ## A212389.P7322197207899388552

`A212382(A000096(n+9)-9)`
-/

namespace A212389.P7322197207899388552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A000096 (n + 9) - 9).toNat

end

end A212389.P7322197207899388552

/-! ## A212389.P13270033418754195617

`(C(n, 10)+1)%A213327(n+1)`
-/

namespace A212389.P13270033418754195617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose n 10 + 1 : ℤ) (A213327 (n + 1))

end

end A212389.P13270033418754195617

/-! ## A212389.P236529729723390088

`A347246(C(n, 10)+4)+C(n, 10)+1`
-/

namespace A212389.P236529729723390088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347246 (Nat.choose n 10 + 4) + (Nat.choose n 10 + 1 : ℤ)

end

end A212389.P236529729723390088

/-!
# A212390: Number of Dyck n-paths all of whose ascents have lengths equal to 1 (mod 10).

The programs for A212390, there is no canonical definition to state claims against.
-/

/-! ## A212390.P15296153249341817874

`A189610(A000124(n))+C(n, 11)`
-/

namespace A212390.P15296153249341817874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189610 (A000124 n).toNat + (Nat.choose n 11 : ℤ)

end

end A212390.P15296153249341817874

/-! ## A212390.P11632422750644006827

`C(n, 11)-A008683(A163646(3*(n+1)))`
-/

namespace A212390.P11632422750644006827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 11 : ℤ) - A008683 (A163646 (3 * (n + 1))).toNat

end

end A212390.P11632422750644006827

/-! ## A212390.P8588949141271304447

`A052410(C(n, 11)+1)`
-/

namespace A212390.P8588949141271304447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (Nat.choose n 11 + 1)

end

end A212390.P8588949141271304447

/-! ## A212390.P17087848949613387831

`A305027(A304942(n+3))+C(n, 11)`
-/

namespace A212390.P17087848949613387831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305027 (A304942 (n + 3)).toNat + (Nat.choose n 11 : ℤ)

end

end A212390.P17087848949613387831

/-! ## A212390.P16829676475128988844

`C(n, 11)-A008683(A132249(2*n+1))`
-/

namespace A212390.P16829676475128988844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 11 : ℤ) - A008683 (A132249 (2 * n + 1)).toNat

end

end A212390.P16829676475128988844

/-!
# A212391: a(n) = A212392(n) / n.

The programs for A212391, there is no canonical definition to state claims against.
-/

/-! ## A212391.P14782916962121054185

`A212392(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212391.P14782916962121054185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212392 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A212391.P14782916962121054185

/-! ## A212391.P2271272606209681025

`(n+1)^A008683(A118124(n))*A212392(n+1)`
-/

namespace A212391.P2271272606209681025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A118124 n).toNat : ℤ) * (A212392 (n + 1) : ℚ)

end

end A212391.P2271272606209681025

/-! ## A212391.P6480440649200537827

`(n+1)^A008683(Δ[A007504(n)])*A212392(n+1)`
-/

namespace A212391.P6480440649200537827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (f1 (n + 1) - f1 n).toNat : ℤ) * (A212392 (n + 1) : ℚ)

end

end A212391.P6480440649200537827

/-! ## A212391.P17162202258048079355

`(n+1)^A008683(A023216(n+1))*A212392(n+1)`
-/

namespace A212391.P17162202258048079355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A023216 (n + 1)).toNat : ℤ) * (A212392 (n + 1) : ℚ)

end

end A212391.P17162202258048079355

/-! ## A212391.P1266941172617429370

`(n+1)^A008683(A049097(n+1))*A212392(n+1)`
-/

namespace A212391.P1266941172617429370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A049097 (n + 1)).toNat : ℤ) * (A212392 (n + 1) : ℚ)

end

end A212391.P1266941172617429370

/-! ## A212391.P17116676091378079889

`(n+1)^A008683(A176983(-xor(n, -1)))*A212392(n+1)`
-/

namespace A212391.P17116676091378079889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A176983 (-Int.xor (n : ℤ) (-1)).toNat).toNat : ℤ) * (A212392 (n + 1) : ℚ)

end

end A212391.P17116676091378079889

/-!
# A212392: G.f. satisfies: A(x) = (x + A(A(x)))^2 where g.f. A(x) = Sum_{n>=1} a(n)*x^(3*n-1).

The programs for A212392, there is no canonical definition to state claims against.
-/

/-! ## A212392.P1598646328606186447

`(n+1)*A212391(n+1)`
-/

namespace A212392.P1598646328606186447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212391 (n + 1)

end

end A212392.P1598646328606186447

/-! ## A212392.P15237314530663813941

`A140201(A198953(n))`
-/

namespace A212392.P15237314530663813941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A198953 n).toNat

end

end A212392.P15237314530663813941

/-!
# A212393: Expansion of (1-4*x+7*x^2-5*x^3+4*x^4-6*x^5+21*x^6+18*x^7-5*x^8)/(1-x)^5.

The programs for A212393, the canonical program `A212393.P3156170572542545504` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212393 has offset 0).

The definition of A212393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212393.P3156170572542545504

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14, a(5)=30, a(6)=72, a(7)=195, a(8)=485`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A212393

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3156170572542545504.Spec : Prop :=
  ∀ n, P3156170572542545504.a n = A212393 n

theorem P3156170572542545504.correct : P3156170572542545504.Spec := by
  intro n
  simp only [A212393]

end A212393

/-! ## A212393.P3090281519721397438

`A362893(n+1)+A333628(A362893(n))`
-/

namespace A212393.P3090281519721397438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362893 (n + 1) + A333628 (A362893 n).toNat

end

end A212393.P3090281519721397438

namespace A212393

/-- `A362893(n+1)+A333628(A362893(n))` -/
def P3090281519721397438.Spec : Prop :=
  ∀ n, P3090281519721397438.a n = A212393 n

end A212393

/-!
# A212395: Number of move operations required to sort all permutations of [n] by insertion sort.

The programs for A212395, there is no canonical definition to state claims against.
-/

/-! ## A212395.P9219905543694643761

`2*A159324(n)-A001809(n)`
-/

namespace A212395.P9219905543694643761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159324 n - A001809 n

end

end A212395.P9219905543694643761

/-! ## A212395.P12777181519823526501

`A159324(n)+A067318(A028310(n))`
-/

namespace A212395.P12777181519823526501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159324 n + A067318 (A028310 n).toNat

end

end A212395.P12777181519823526501

/-! ## A212395.P14673328480000814937

`A001809(n)+2*A067318(A028310(n))`
-/

namespace A212395.P14673328480000814937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + 2 * A067318 (A028310 n).toNat

end

end A212395.P14673328480000814937

/-! ## A212395.P14427778802436960544

`A001563(n)+A159324(n)-A000254(n)`
-/

namespace A212395.P14427778802436960544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + (A159324 n - A000254 n)

end

end A212395.P14427778802436960544

/-! ## A212395.P11834267774609453055

`A000142(n)/A212397(n)*A212396(n)`
-/

namespace A212395.P11834267774609453055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A212397 n : ℚ) * (A212396 n : ℚ)

end

end A212395.P11834267774609453055

/-! ## A212395.P14166521071563569758

`Δ[A000142(n)]+A159324(n)-A000254(n)`
-/

namespace A212395.P14166521071563569758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A159324 n - A000254 n)

end

end A212395.P14166521071563569758

/-!
# A212396: Numerator of the average number of move operations required by an insertion sort of n (distinct) elements.

The programs for A212396, there is no canonical definition to state claims against.
-/

/-! ## A212396.P2465291707100446467

`A212395(n)/A000142(n)*A212397(n)`
-/

namespace A212396.P2465291707100446467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212395 n : ℚ) / (A000142 n : ℚ) * (A212397 n : ℚ)

end

end A212396.P2465291707100446467

/-! ## A212396.P16137076838637212131

`lcm(A133942(n), A212395(n))/n!`
-/

namespace A212396.P16137076838637212131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A133942 n) (A212395 n) : ℚ) / (Nat.factorial n : ℚ)

end

end A212396.P16137076838637212131

/-!
# A212397: Denominator of the average number of move operations required by an insertion sort of n (distinct) elements.

The programs for A212397, there is no canonical definition to state claims against.
-/

/-! ## A212397.P9279458383941983959

`A000142(n)/gcd(A000142(n), A212395(n))`
-/

namespace A212397.P9279458383941983959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A212395 n) : ℚ)

end

end A212397.P9279458383941983959

/-! ## A212397.P14780609644750075049

`lcm(A112384(A128014(n)), A163590(n))`
-/

namespace A212397.P14780609644750075049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112384 (A128014 n).toNat) (A163590 n)

end

end A212397.P14780609644750075049

/-! ## A212397.P9122372144326684747

`A008339(n+1)/A216612(A085908(n+1))`
-/

namespace A212397.P9122372144326684747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008339 (n + 1) : ℚ) / (A216612 (A085908 (n + 1)).toNat : ℚ)

end

end A212397.P9122372144326684747

/-! ## A212397.P2308225627888901847

`A268675(A008339(n+1))`
-/

namespace A212397.P2308225627888901847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268675 (A008339 (n + 1)).toNat

end

end A212397.P2308225627888901847

/-! ## A212397.P4088467923550491742

`A007913(A000142(n))*A115571(n+1)`
-/

namespace A212397.P4088467923550491742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000142 n).toNat * A115571 (n + 1)

end

end A212397.P4088467923550491742

/-!
# A212398: Number of binary arrays of length n+7 with no more than 4 ones in any length 8 subsequence (=50% duty cycle).

The programs for A212398, there is no canonical definition to state claims against.
-/

/-! ## A212398.P786825696977275588

`A212402(∑[n+4]+3)`
-/

namespace A212398.P786825696977275588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A212398.P786825696977275588

/-! ## A212398.P8869807595464750104

`char[xor(1, n)]*A212402(A055998(n+2))`
-/

namespace A212398.P8869807595464750104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A212402 (A055998 (n + 2)).toNat

end

end A212398.P8869807595464750104

/-! ## A212398.P14010982841244576151

`A276689(n²)+A212402(A055998(n+2))`
-/

namespace A212398.P14010982841244576151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (n ^ 2) + A212402 (A055998 (n + 2)).toNat

end

end A212398.P14010982841244576151

/-! ## A212398.P14899731439302635163

`char[A004442(n)]*A212402(A055998(n+2))`
-/

namespace A212398.P14899731439302635163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212402 (A055998 (n + 2)).toNat

end

end A212398.P14899731439302635163

/-! ## A212398.P7789744792280238810

`char[A051601(n)]*A212402(A055998(n+2))`
-/

namespace A212398.P7789744792280238810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212402 (A055998 (n + 2)).toNat

end

end A212398.P7789744792280238810

/-! ## A212398.P9344231313754059209

`char[A061358(n)]*A212402(A055998(n+2))`
-/

namespace A212398.P9344231313754059209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212402 (A055998 (n + 2)).toNat

end

end A212398.P9344231313754059209

/-! ## A212398.P16461423345607396917

`A212402(A055998(n+2))/A054977(n+1)`
-/

namespace A212398.P16461423345607396917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212402 (A055998 (n + 2)).toNat : ℚ) / (A054977 (n + 1) : ℚ)

end

end A212398.P16461423345607396917

/-! ## A212398.P9028614431231878333

`A212402(A055998(n+2))+C(2, A230319(n+1))`
-/

namespace A212398.P9028614431231878333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (A055998 (n + 2)).toNat + (Nat.choose 2 (A230319 (n + 1)).toNat : ℤ)

end

end A212398.P9028614431231878333

/-! ## A212398.P10523149099673225566

`A212402(A055998(n+2))^A001222(A268155(n+1))`
-/

namespace A212398.P10523149099673225566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212402 (A055998 (n + 2)).toNat : ℚ) ^ (A001222 (A268155 (n + 1)).toNat : ℤ)

end

end A212398.P10523149099673225566

/-! ## A212398.P5229488179522836073

`A005171(A121495(n+1))+A212402(A055998(n+2))-1`
-/

namespace A212398.P5229488179522836073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A121495 (n + 1)).toNat + (A212402 (A055998 (n + 2)).toNat - 1)

end

end A212398.P5229488179522836073

/-!
# A212399: Number of binary arrays of length n+9 with no more than 5 ones in any length 10 subsequence (=50% duty cycle).

The programs for A212399, there is no canonical definition to state claims against.
-/

/-! ## A212399.P12538865193621993004

`A212402(5*n+11+∑[n])`
-/

namespace A212399.P12538865193621993004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (5 * n + 11 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212399.P12538865193621993004

/-! ## A212399.P12486431118805636468

`A212402(Δ[A264443(n)])-1-cos(-π)`
-/

namespace A212399.P12486431118805636468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212402 (f1 (n + 1) - f1 n).toNat - 1 : ℝ) - Real.cos (-Real.pi)

end

end A212399.P12486431118805636468

/-! ## A212399.P1129484489506180722

`A000034(2*n)*A212402(Δ[A264443(n)])`
-/

namespace A212399.P1129484489506180722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A212402 (f1 (n + 1) - f1 n).toNat

end

end A212399.P1129484489506180722

/-! ## A212399.P16079604495404258985

`A014963(10*(n+1))*A212402(Δ[A264443(n)])`
-/

namespace A212399.P16079604495404258985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A212402 (f1 (n + 1) - f1 n).toNat

end

end A212399.P16079604495404258985

/-! ## A212399.P6473306960506549459

`A090085(n+1)%2*A212402(Δ[A264443(n)])`
-/

namespace A212399.P6473306960506549459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090085 (n + 1)) 2 * A212402 (f1 (n + 1) - f1 n).toNat

end

end A212399.P6473306960506549459

/-! ## A212399.P5722324586191086089

`A212402(Δ[A264443(n)])+(2*A000045(n))%2`
-/

namespace A212399.P5722324586191086089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212402 (f1 (n + 1) - f1 n).toNat + Int.tmod (2 * A000045 n) 2

end

end A212399.P5722324586191086089

