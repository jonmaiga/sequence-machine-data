import SequenceMachineLib
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A292200: Number of Sommerville symmetrical cyclic compositions (on symmetric necklaces) of n that are Carlitz (adjacent parts on the circle are distinct).

The programs for A292200, there is no canonical definition to state claims against.
-/

/-! ## A292200.P16624695793517735953

`(A291941(n+1)+1)/2`
-/

namespace A292200.P16624695793517735953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291941 (n + 1) + 1 : ℚ) / 2

end

end A292200.P16624695793517735953

/-! ## A292200.P8834627926659260205

`ceil(A291941(n+1)/2)`
-/

namespace A292200.P8834627926659260205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A291941 (n + 1) : ℚ) / 2⌉

end

end A292200.P8834627926659260205

/-! ## A292200.P620611856331842468

`round(A291941(Δ[n²]-n)/2)`
-/

namespace A292200.P620611856331842468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A291941 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A292200.P620611856331842468

/-! ## A292200.P16742825395906146013

`A292906(n+1)+A292906(n+1)-A106369(n+1)`
-/

namespace A292200.P16742825395906146013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292906 (n + 1) + (A292906 (n + 1) - A106369 (n + 1))

end

end A292200.P16742825395906146013

/-! ## A292200.P7597613859564536865

`A246425(A291941(n+1))`
-/

namespace A292200.P7597613859564536865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A291941 (n + 1)).toNat

end

end A292200.P7597613859564536865

/-!
# A292201: a(n) is the smallest value c such that prime(n)^c - 2 is prime, where prime(n) is the n-th prime or -1 if no such c exists.

The programs for A292201, there is no canonical definition to state claims against.
-/

/-! ## A292201.P8829016038881648187

`A255707(A130291(n+1))`
-/

namespace A292201.P8829016038881648187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255707 (A130291 (n + 1)).toNat

end

end A292201.P8829016038881648187

/-! ## A292201.P12727818185686267423

`A255707(A130290(n+1)+1)`
-/

namespace A292201.P12727818185686267423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255707 (A130290 (n + 1) + 1).toNat

end

end A292201.P12727818185686267423

/-! ## A292201.P8654049678557018658

`A255707(round((A000040(n+1)+1)/2))`
-/

namespace A292201.P8654049678557018658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255707 (SequenceMachineLib.roundAway ((A000040 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A292201.P8654049678557018658

/-! ## A292201.P2311895702568424047

`A255707(floor(sqrt(A001248(n+1))/2)+1)`
-/

namespace A292201.P2311895702568424047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255707 (⌊Real.sqrt (A001248 (n + 1) : ℝ) / 2⌋ + 1).toNat

end

end A292201.P2311895702568424047

/-! ## A292201.P16345771892036413831

`A255707(floor(∑[A054541(n+1)]/2)+1)`
-/

namespace A292201.P16345771892036413831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255707 (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 1).toNat

end

end A292201.P16345771892036413831

/-! ## A292201.P1403153854173449428

`A255707(A008619(Δ[A007504(n)]))`
-/

namespace A292201.P1403153854173449428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255707 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A292201.P1403153854173449428

/-! ## A292201.P17402350365060423235

`A255707(A008619(record[A051698(n)]))`
-/

namespace A292201.P17402350365060423235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255707 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A292201.P17402350365060423235

/-!
# A292203: Primes as they appear in A003188.

The programs for A292203, the canonical program `A292203.P11057319387804742110` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292203 has offset 1).

The definition of A292203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292203.P11057319387804742110

`p?[xor(n, floor(n/2))]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292203

/-- `p?[xor(n, floor(n/2))]` -/
def P11057319387804742110.Spec : Prop :=
  ∀ n, P11057319387804742110.a n = A292203 (n + 1)

theorem P11057319387804742110.correct : P11057319387804742110.Spec := by
  intro n
  simp only [A292203, Nat.add_sub_cancel]

end A292203

/-! ## A292203.P4585706217401886389

`p?[abs(xor(n, (or(1, n)-1)/2))]`
-/

namespace A292203.P4585706217401886389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P4585706217401886389

namespace A292203

/-- `p?[abs(xor(n, (or(1, n)-1)/2))]` -/
def P4585706217401886389.Spec : Prop :=
  ∀ n, P4585706217401886389.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P2334819691449319203

`p?[ceil(xor(n, 2*(n+1))/2)]`
-/

namespace A292203.P2334819691449319203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (2 * (n + 1)) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P2334819691449319203

namespace A292203

/-- `p?[ceil(xor(n, 2*(n+1))/2)]` -/
def P2334819691449319203.Spec : Prop :=
  ∀ n, P2334819691449319203.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P3328960764865050582

`p?[round(xor(n, 2*(n+1))/2)]`
-/

namespace A292203.P3328960764865050582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (2 * (n + 1)) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P3328960764865050582

namespace A292203

/-- `p?[round(xor(n, 2*(n+1))/2)]` -/
def P3328960764865050582.Spec : Prop :=
  ∀ n, P3328960764865050582.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P10661699966366740666

`p?[round((xor(n, 2*n)-1)/2)]`
-/

namespace A292203.P10661699966366740666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor n (2 * n) : ℤ) - 1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P10661699966366740666

namespace A292203

/-- `p?[round((xor(n, 2*n)-1)/2)]` -/
def P10661699966366740666.Spec : Prop :=
  ∀ n, P10661699966366740666.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P1951441833070905065

`p?[xor(n, ceil(n/2))+n%2]`
-/

namespace A292203.P1951441833070905065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈(n : ℚ) / 2⌉ + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P1951441833070905065

namespace A292203

/-- `p?[xor(n, ceil(n/2))+n%2]` -/
def P1951441833070905065.Spec : Prop :=
  ∀ n, P1951441833070905065.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P5688616740887002924

`p?[-ceil(xor(2*n, -n)/2)]`
-/

namespace A292203.P5688616740887002924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P5688616740887002924

namespace A292203

/-- `p?[-ceil(xor(2*n, -n)/2)]` -/
def P5688616740887002924.Spec : Prop :=
  ∀ n, P5688616740887002924.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P1250847603764241960

`p?[floor(n/2)+and(n, -2*n)]`
-/

namespace A292203.P1250847603764241960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + Int.land (n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P1250847603764241960

namespace A292203

/-- `p?[floor(n/2)+and(n, -2*n)]` -/
def P1250847603764241960.Spec : Prop :=
  ∀ n, P1250847603764241960.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P9159045246260041631

`p?[A003188(n)]`
-/

namespace A292203.P9159045246260041631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P9159045246260041631

namespace A292203

/-- `p?[A003188(n)]` -/
def P9159045246260041631.Spec : Prop :=
  ∀ n, P9159045246260041631.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P17161865414815087393

`p?[∑[A055975(n+1)]]`
-/

namespace A292203.P17161865414815087393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P17161865414815087393

namespace A292203

/-- `p?[∑[A055975(n+1)]]` -/
def P17161865414815087393.Spec : Prop :=
  ∀ n, P17161865414815087393.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P14248072787245234956

`p?[Δ[A048641(n+1)]]`
-/

namespace A292203.P14248072787245234956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048641 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292203.P14248072787245234956

namespace A292203

/-- `p?[Δ[A048641(n+1)]]` -/
def P14248072787245234956.Spec : Prop :=
  ∀ n, P14248072787245234956.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P17230180931075915507

`filter[A003188(n+1), A010051(#)]`
-/

namespace A292203.P17230180931075915507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A292203.P17230180931075915507

namespace A292203

/-- `filter[A003188(n+1), A010051(#)]` -/
def P17230180931075915507.Spec : Prop :=
  ∀ n, P17230180931075915507.a n = A292203 (n + 1)

end A292203

/-! ## A292203.P6999293550291841237

`filter[A003188(n+2), A080339(#)]`
-/

namespace A292203.P6999293550291841237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A292203.P6999293550291841237

namespace A292203

/-- `filter[A003188(n+2), A080339(#)]` -/
def P6999293550291841237.Spec : Prop :=
  ∀ n, P6999293550291841237.a n = A292203 (n + 1)

end A292203

/-!
# A292204: Primes as they appear in A006068.

The programs for A292204, the canonical program `A292204.P7037665288435197681` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292204 has offset 1).

The definition of A292204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292204.P7037665288435197681

`p?[xor(n, a(floor(n/2)))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292204

/-- `p?[xor(n, a(floor(n/2)))]` -/
def P7037665288435197681.Spec : Prop :=
  ∀ n, (P7037665288435197681.a n : ℤ) = A292204 (n + 1)

theorem P7037665288435197681.correct : P7037665288435197681.Spec := by
  intro n
  simp only [A292204, Nat.add_sub_cancel]

end A292204

/-! ## A292204.P15496845907653058728

`p?[xor(2*a(and(n, n-1)), -n)]` with `a(0)=0`
-/

namespace A292204.P15496845907653058728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor (2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P15496845907653058728

namespace A292204

/-- `p?[xor(2*a(and(n, n-1)), -n)]` -/
def P15496845907653058728.Spec : Prop :=
  ∀ n, P15496845907653058728.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P7310749801616413603

`p?[A065620(n)-1]`
-/

namespace A292204.P7310749801616413603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P7310749801616413603

namespace A292204

/-- `p?[A065620(n)-1]` -/
def P7310749801616413603.Spec : Prop :=
  ∀ n, P7310749801616413603.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P5655804280425119762

`p?[∑[A320667(n+1)]]`
-/

namespace A292204.P5655804280425119762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P5655804280425119762

namespace A292204

/-- `p?[∑[A320667(n+1)]]` -/
def P5655804280425119762.Spec : Prop :=
  ∀ n, P5655804280425119762.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P6745699575348478447

`p?[A006068(n)]`
-/

namespace A292204.P6745699575348478447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P6745699575348478447

namespace A292204

/-- `p?[A006068(n)]` -/
def P6745699575348478447.Spec : Prop :=
  ∀ n, P6745699575348478447.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P6007485687734631397

`p?[A104895(n)]`
-/

namespace A292204.P6007485687734631397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P6007485687734631397

namespace A292204

/-- `p?[A104895(n)]` -/
def P6007485687734631397.Spec : Prop :=
  ∀ n, P6007485687734631397.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P13079825521069227739

`p?[-A065620(n)]`
-/

namespace A292204.P13079825521069227739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P13079825521069227739

namespace A292204

/-- `p?[-A065620(n)]` -/
def P13079825521069227739.Spec : Prop :=
  ∀ n, P13079825521069227739.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P10489134487632242603

`p?[A066194(n+1)-1]`
-/

namespace A292204.P10489134487632242603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P10489134487632242603

namespace A292204

/-- `p?[A066194(n+1)-1]` -/
def P10489134487632242603.Spec : Prop :=
  ∀ n, P10489134487632242603.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P15800376900023808724

`filter[A006068(n+1), A010051(#)]`
-/

namespace A292204.P15800376900023808724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A292204.P15800376900023808724

namespace A292204

/-- `filter[A006068(n+1), A010051(#)]` -/
def P15800376900023808724.Spec : Prop :=
  ∀ n, P15800376900023808724.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P9165495277357553775

`p?[A292600(2*n)]`
-/

namespace A292204.P9165495277357553775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P9165495277357553775

namespace A292204

/-- `p?[A292600(2*n)]` -/
def P9165495277357553775.Spec : Prop :=
  ∀ n, P9165495277357553775.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P3078331606965752539

`filter[A006068(n+2), A080339(#)]`
-/

namespace A292204.P3078331606965752539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A292204.P3078331606965752539

namespace A292204

/-- `filter[A006068(n+2), A080339(#)]` -/
def P3078331606965752539.Spec : Prop :=
  ∀ n, P3078331606965752539.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P15789028356542028796

`p?[A246159(n)]`
-/

namespace A292204.P15789028356542028796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P15789028356542028796

namespace A292204

/-- `p?[A246159(n)]` -/
def P15789028356542028796.Spec : Prop :=
  ∀ n, P15789028356542028796.a n = A292204 (n + 1)

end A292204

/-! ## A292204.P2186013663830103015

`p?[A246160(n)-1]`
-/

namespace A292204.P2186013663830103015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246160 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292204.P2186013663830103015

namespace A292204

/-- `p?[A246160(n)-1]` -/
def P2186013663830103015.Spec : Prop :=
  ∀ n, P2186013663830103015.a n = A292204 (n + 1)

end A292204

/-!
# A292206: Number of unrooted unlabeled connected four-regular maps on a compact closed oriented surface with n vertices (and thus 2*n edges).

The programs for A292206, there is no canonical definition to state claims against.
-/

/-! ## A292206.P7810544808453027107

`A380626(A056000(n)+6)`
-/

namespace A292206.P7810544808453027107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380626 (A056000 n + 6).toNat

end

end A292206.P7810544808453027107

/-! ## A292206.P2660867593573120216

`A380626(A000217(n+4)-4)`
-/

namespace A292206.P2660867593573120216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380626 (A000217 (n + 4) - 4).toNat

end

end A292206.P2660867593573120216

/-! ## A292206.P17376820359046733815

`A380626(eq[4, A004736(n+1)])`
-/

namespace A292206.P17376820359046733815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292206.P17376820359046733815

/-!
# A292207: Number of unrooted unlabeled bipartite cubic maps on a compact closed oriented surface with 2*n vertices (and thus 3*n edges).

The programs for A292207, there is no canonical definition to state claims against.
-/

/-! ## A292207.P17657854994718563095

`A189575(A145640(n+2))+n`
-/

namespace A292207.P17657854994718563095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (A145640 (n + 2)).toNat + (n : ℤ)

end

end A292207.P17657854994718563095

/-!
# A292209: Number of cliques in the n-Menger sponge graph.

The programs for A292209, the canonical program `A292209.P1274050211284265050` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292209 has offset 1).

The definition of A292209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292209.P1274050211284265050

`3*20^(n+1)-2*8^(n+1)+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292209

/-- `3*20^(n+1)-2*8^(n+1)+1` -/
def P1274050211284265050.Spec : Prop :=
  ∀ n, P1274050211284265050.a n = A292209 (n + 1)

theorem P1274050211284265050.correct : P1274050211284265050.Spec := by
  intro n
  simp only [A292209, Nat.add_sub_cancel]

end A292209

/-!
# A292210: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than four.

The programs for A292210, there is no canonical definition to state claims against.
-/

/-! ## A292210.P12133960284628498606

`A292085(∑[n+3])`
-/

namespace A292210.P12133960284628498606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292210.P12133960284628498606

/-! ## A292210.P1419275422066049742

`lcm(-(-1)^n, A292085(A055998(n+1)))`
-/

namespace A292210.P1419275422066049742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-((-1) ^ n)) (A292085 (A055998 (n + 1)).toNat)

end

end A292210.P1419275422066049742

/-! ## A292210.P16606280812335990897

`A292085(A055998(n+1))%A041752(n)`
-/

namespace A292210.P16606280812335990897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292085 (A055998 (n + 1)).toNat) (A041752 n)

end

end A292210.P16606280812335990897

/-! ## A292210.P13314271861832849273

`A001221(A001316(n))*A292085(A055998(n+1))`
-/

namespace A292210.P13314271861832849273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A292085 (A055998 (n + 1)).toNat

end

end A292210.P13314271861832849273

/-! ## A292210.P12178496693745863656

`A008683(A020483(n))²*A292085(A055998(n+1))`
-/

namespace A292210.P12178496693745863656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat ^ 2 * A292085 (A055998 (n + 1)).toNat

end

end A292210.P12178496693745863656

/-!
# A292211: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than five.

The programs for A292211, there is no canonical definition to state claims against.
-/

/-! ## A292211.P8692060454247451038

`A292085(∑[n+4]+2)`
-/

namespace A292211.P8692060454247451038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A292211.P8692060454247451038

/-! ## A292211.P16397622047112362139

`A292085(A046691(n+2))+A000007(n+1)`
-/

namespace A292211.P16397622047112362139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A292211.P16397622047112362139

/-! ## A292211.P16549880058684972186

`A292085(A046691(n+2))+A000035(2*n)`
-/

namespace A292211.P16549880058684972186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A046691 (n + 2)).toNat + A000035 (2 * n)

end

end A292211.P16549880058684972186

/-! ## A292211.P8610153418935174865

`(A008619(n)-A123108(n))*A292085(A046691(n+2))`
-/

namespace A292211.P8610153418935174865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n - A123108 n) * A292085 (A046691 (n + 2)).toNat

end

end A292211.P8610153418935174865

/-! ## A292211.P6139544732087976930

`(A002024(n+1)-A003056(n))*A292085(A046691(n+2))`
-/

namespace A292211.P6139544732087976930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A003056 n) * A292085 (A046691 (n + 2)).toNat

end

end A292211.P6139544732087976930

/-! ## A292211.P9375842699382573065

`A292085(A046691(n+2))%A292087(n)`
-/

namespace A292211.P9375842699382573065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292085 (A046691 (n + 2)).toNat) (A292087 n)

end

end A292211.P9375842699382573065

/-!
# A292212: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than six.

The programs for A292212, there is no canonical definition to state claims against.
-/

/-! ## A292212.P13044890412099776772

`A292085(∑[n+5]+5)`
-/

namespace A292212.P13044890412099776772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A292212.P13044890412099776772

/-! ## A292212.P42301050097302133

`or(char[1], A292085(A052905(n+2)))`
-/

namespace A292212.P42301050097302133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A292085 (A052905 (n + 2)).toNat)

end

end A292212.P42301050097302133

/-! ## A292212.P2978818706045155696

`A292085(A052905(n+2))+A000035(2*n)`
-/

namespace A292212.P2978818706045155696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A052905 (n + 2)).toNat + A000035 (2 * n)

end

end A292212.P2978818706045155696

/-! ## A292212.P11481714342562232214

`A017285(n)%2*A292085(A052905(n+2))`
-/

namespace A292212.P11481714342562232214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017285 n) 2 * A292085 (A052905 (n + 2)).toNat

end

end A292212.P11481714342562232214

/-! ## A292212.P6259615244258323906

`char[A064429(n)]*A292085(A027379(n+3)-2)`
-/

namespace A292212.P6259615244258323906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292085 (A027379 (n + 3) - 2).toNat

end

end A292212.P6259615244258323906

/-! ## A292212.P974374720712912651

`A292085(A052905(n+2))+A269152(n+1)%2`
-/

namespace A292212.P974374720712912651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A052905 (n + 2)).toNat + Int.tmod (A269152 (n + 1)) 2

end

end A292212.P974374720712912651

/-! ## A292212.P726390594001311607

`A045333(n+1)%2*A292085(A052905(n+2))`
-/

namespace A292212.P726390594001311607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045333 (n + 1)) 2 * A292085 (A052905 (n + 2)).toNat

end

end A292212.P726390594001311607

/-! ## A292212.P6642082564612213735

`A292085(A052905(n+2))%A220823(n+1)`
-/

namespace A292212.P6642082564612213735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292085 (A052905 (n + 2)).toNat) (A220823 (n + 1))

end

end A292212.P6642082564612213735

/-! ## A292212.P12150527683278929311

`A292085(A167499(n)+A059558(n+1))%A104350(n+1)`
-/

namespace A292212.P12150527683278929311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292085 (A167499 n + A059558 (n + 1)).toNat) (A104350 (n + 1))

end

end A292212.P12150527683278929311

/-!
# A292213: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than seven.

The programs for A292213, there is no canonical definition to state claims against.
-/

/-! ## A292213.P14185322667607949459

`A292085(A055999(n+3))`
-/

namespace A292213.P14185322667607949459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A055999 (n + 3)).toNat

end

end A292213.P14185322667607949459

/-! ## A292213.P8612015019694535367

`A292085(Δ[A023551(n+1)])`
-/

namespace A292213.P8612015019694535367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (f1 (n + 1) - f1 n).toNat

end

end A292213.P8612015019694535367

/-! ## A292213.P14113737829464824878

`A292085(Δ[A026054(n+3)])`
-/

namespace A292213.P14113737829464824878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (f1 (n + 1) - f1 n).toNat

end

end A292213.P14113737829464824878

/-! ## A292213.P17070506745688532773

`A292085(A052905(n+3)-1)`
-/

namespace A292213.P17070506745688532773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A052905 (n + 3) - 1).toNat

end

end A292213.P17070506745688532773

/-! ## A292213.P18203966974717777023

`A292085(A000217(n+6)-6)`
-/

namespace A292213.P18203966974717777023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000217 (n + 6) - 6).toNat

end

end A292213.P18203966974717777023

/-! ## A292213.P1195090102486468852

`A292085(A000096(n+4)+n+1)`
-/

namespace A292213.P1195090102486468852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A292213.P1195090102486468852

/-! ## A292213.P12533434446946523817

`A292085(A000124(n+5)+n-1)`
-/

namespace A292213.P12533434446946523817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A292213.P12533434446946523817

/-! ## A292213.P5723548770912273523

`A292085(eq[5, A025581(n)])`
-/

namespace A292213.P5723548770912273523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292213.P5723548770912273523

/-!
# A292214: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than eight.

The programs for A292214, there is no canonical definition to state claims against.
-/

/-! ## A292214.P7217463289078423642

`A292085(A000217(n+7)-7)`
-/

namespace A292214.P7217463289078423642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000217 (n + 7) - 7).toNat

end

end A292214.P7217463289078423642

/-! ## A292214.P18347572512781368508

`A292085(Δ[A023551(n+2)]-1)`
-/

namespace A292214.P18347572512781368508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (f1 (n + 1) - f1 n - 1).toNat

end

end A292214.P18347572512781368508

/-! ## A292214.P9497872588504208935

`A292085(Δ[A026054(n+4)]-1)`
-/

namespace A292214.P9497872588504208935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (f1 (n + 1) - f1 n - 1).toNat

end

end A292214.P9497872588504208935

/-! ## A292214.P18030717503670029944

`A292085(A052905(n+3)+n+5)`
-/

namespace A292214.P18030717503670029944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A052905 (n + 3) + (n + 5 : ℤ)).toNat

end

end A292214.P18030717503670029944

/-! ## A292214.P11233751106368630353

`A292085(A167499(n+4)+2*n+1)`
-/

namespace A292214.P11233751106368630353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A167499 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A292214.P11233751106368630353

/-! ## A292214.P3176826354519452352

`A292085(2*n+5+A000124(n+5))`
-/

namespace A292214.P3176826354519452352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 ((2 * n + 5 : ℤ) + A000124 (n + 5)).toNat

end

end A292214.P3176826354519452352

/-! ## A292214.P2275111915919604837

`A292085(A104675(n+2)-A055998(n+1))`
-/

namespace A292214.P2275111915919604837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A104675 (n + 2) - A055998 (n + 1)).toNat

end

end A292214.P2275111915919604837

/-! ## A292214.P13381212161806380767

`A292085(A167487(n+2)+A008574(n+2))`
-/

namespace A292214.P13381212161806380767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A167487 (n + 2) + A008574 (n + 2)).toNat

end

end A292214.P13381212161806380767

/-! ## A292214.P9709675545592864401

`A292085(A004273(n+4)+A000096(n+4))`
-/

namespace A292214.P9709675545592864401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A004273 (n + 4) + A000096 (n + 4)).toNat

end

end A292214.P9709675545592864401

/-!
# A292215: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than nine.

The programs for A292215, there is no canonical definition to state claims against.
-/

/-! ## A292215.P3365620807973124063

`A292085(A000217(n+8)-8)`
-/

namespace A292215.P3365620807973124063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000217 (n + 8) - 8).toNat

end

end A292215.P3365620807973124063

/-! ## A292215.P16484089103453031114

`A292085(A052905(n+4)+n+5)`
-/

namespace A292215.P16484089103453031114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A052905 (n + 4) + (n + 5 : ℤ)).toNat

end

end A292215.P16484089103453031114

/-! ## A292215.P3797794075429808223

`A292085(A000096(n+3)+Δ[A000096(2*n+7)])`
-/

namespace A292215.P3797794075429808223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000096 (n + 3) + (f1 (n + 1) - f1 n)).toNat

end

end A292215.P3797794075429808223

/-! ## A292215.P7538303494921496943

`A292085(eq[7, A025581(n)])`
-/

namespace A292215.P7538303494921496943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292215.P7538303494921496943

/-! ## A292215.P3300715754667814796

`A292085(eq[8, A004736(n+1)])`
-/

namespace A292215.P3300715754667814796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292215.P3300715754667814796

/-!
# A292216: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than ten.

The programs for A292216, there is no canonical definition to state claims against.
-/

/-! ## A292216.P10063525962268367129

`A292085(A060533(n+8))`
-/

namespace A292216.P10063525962268367129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A060533 (n + 8)).toNat

end

end A292216.P10063525962268367129

/-! ## A292216.P4596310974329315295

`A292085(A046691(n+7)-5)`
-/

namespace A292216.P4596310974329315295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A046691 (n + 7) - 5).toNat

end

end A292216.P4596310974329315295

/-! ## A292216.P17075687575965377608

`A292085(A034856(n+8)-7)`
-/

namespace A292216.P17075687575965377608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A034856 (n + 8) - 7).toNat

end

end A292216.P17075687575965377608

/-! ## A292216.P10966243832013149489

`A292085(A000217(n+9)-9)`
-/

namespace A292216.P10966243832013149489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000217 (n + 9) - 9).toNat

end

end A292216.P10966243832013149489

/-! ## A292216.P8561556870039683150

`A292085(A000124(n+9)-10)`
-/

namespace A292216.P8561556870039683150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000124 (n + 9) - 10).toNat

end

end A292216.P8561556870039683150

/-! ## A292216.P3503200956288931348

`A292085(2*n+7+A000124(n+7))`
-/

namespace A292216.P3503200956288931348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 ((2 * n + 7 : ℤ) + A000124 (n + 7)).toNat

end

end A292216.P3503200956288931348

/-!
# A292218: The n-th iteration of (k -> k + sum of base-100 digits of k) applied to n.

The programs for A292218, there is no canonical definition to state claims against.
-/

/-! ## A292218.P16949061718381245086

`A005245(n+1)*A115909(A115916(n+1))`
-/

namespace A292218.P16949061718381245086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (n + 1) * A115909 (A115916 (n + 1)).toNat

end

end A292218.P16949061718381245086

/-!
# A292219: Triangle read by rows. A generalization of unsigned Lah numbers, called L[4,3].

The programs for A292219, the canonical program `A292219.P16793046769320461393` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292219 has offset 0).

The definition of A292219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292219.P16793046769320461393

`A067147(A185869(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292219

/-- `A067147(A185869(n+1))` -/
def P16793046769320461393.Spec : Prop :=
  ∀ n, P16793046769320461393.a n = A292219 n

theorem P16793046769320461393.correct : P16793046769320461393.Spec := by
  intro n
  simp only [A292219]

end A292219

/-! ## A292219.P7914753999456892412

`lcm(A038207(n), A130757(n))`
-/

namespace A292219.P7914753999456892412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A130757 n)

end

end A292219.P7914753999456892412

namespace A292219

/-- `lcm(A038207(n), A130757(n))` -/
def P7914753999456892412.Spec : Prop :=
  ∀ n, (P7914753999456892412.a n : ℤ) = A292219 n

end A292219

/-! ## A292219.P117217284542045662

`abs(A130321(n)*A130757(n))`
-/

namespace A292219.P117217284542045662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130321 n * A130757 n|

end

end A292219.P117217284542045662

namespace A292219

/-- `abs(A130321(n)*A130757(n))` -/
def P117217284542045662.Spec : Prop :=
  ∀ n, P117217284542045662.a n = A292219 n

end A292219

/-! ## A292219.P12361048451044559728

`A067147(A185870(n+1)-1)`
-/

namespace A292219.P12361048451044559728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A185870 (n + 1) - 1).toNat

end

end A292219.P12361048451044559728

namespace A292219

/-- `A067147(A185870(n+1)-1)` -/
def P12361048451044559728.Spec : Prop :=
  ∀ n, P12361048451044559728.a n = A292219 n

end A292219

/-! ## A292219.P11648391429582177507

`A067147(A061579(n)+A016789(n))`
-/

namespace A292219.P11648391429582177507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A061579 n + A016789 n).toNat

end

end A292219.P11648391429582177507

namespace A292219

/-- `A067147(A061579(n)+A016789(n))` -/
def P11648391429582177507.Spec : Prop :=
  ∀ n, P11648391429582177507.a n = A292219 n

end A292219

/-! ## A292219.P8491963950245983816

`A059344(A093995(n+1)+A025581(n))`
-/

namespace A292219.P8491963950245983816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059344 (A093995 (n + 1) + A025581 n).toNat

end

end A292219.P8491963950245983816

namespace A292219

/-- `A059344(A093995(n+1)+A025581(n))` -/
def P8491963950245983816.Spec : Prop :=
  ∀ n, P8491963950245983816.a n = A292219 n

end A292219

/-!
# A292220: Expansion of the exponential generating function (1/2)*(1 + 4*x)*(1 - (1 + 4*x)^(-1/2))/x.

The programs for A292220, there is no canonical definition to state claims against.
-/

/-! ## A292220.P12885767784775371445

`n*(6/(n+1)-4)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A292220.P12885767784775371445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) * ((6 / (n + 1 : ℚ) - 4) * a (n - 1))

end

end A292220.P12885767784775371445

/-! ## A292220.P10292591687465314243

`A001761(n)*A009001(A004275(n))`
-/

namespace A292220.P10292591687465314243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001761 n * A009001 (A004275 n).toNat

end

end A292220.P10292591687465314243

/-! ## A292220.P9529704461211830743

`A000142(n)*A097808(A001105(n))`
-/

namespace A292220.P9529704461211830743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A097808 (A001105 n).toNat

end

end A292220.P9529704461211830743

/-! ## A292220.P14826963849849322432

`A001761(n)*A033999(A004756(n+1))`
-/

namespace A292220.P14826963849849322432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001761 n * A033999 (A004756 (n + 1)).toNat

end

end A292220.P14826963849849322432

/-! ## A292220.P16626357030821882442

`A001761(n)*A033999(A007610(n+1))`
-/

namespace A292220.P16626357030821882442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001761 n * A033999 (A007610 (n + 1)).toNat

end

end A292220.P16626357030821882442

/-! ## A292220.P6235822502837250877

`A059343(n²)/(n+1)`
-/

namespace A292220.P6235822502837250877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059343 (n ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A292220.P6235822502837250877

/-!
# A292221: Expansion of the exponential generating function (1/2)*(1 + 4*x)*(1 - (1 + 4*x)^(-3/2))/x.

The programs for A292221, there is no canonical definition to state claims against.
-/

/-! ## A292221.P4923079380894685548

`A001700(C(2, n+2)+n)*A133942(n)`
-/

namespace A292221.P4923079380894685548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (Nat.choose 2 (n + 2) + n) * A133942 n

end

end A292221.P4923079380894685548

/-! ## A292221.P8704663786283184426

`A001700(A028310(n))*A133942(n)`
-/

namespace A292221.P8704663786283184426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A028310 n).toNat * A133942 n

end

end A292221.P8704663786283184426

/-! ## A292221.P10411062151242807240

`A033999(n)*A123225(A179865(n+1))`
-/

namespace A292221.P10411062151242807240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123225 (A179865 (n + 1)).toNat

end

end A292221.P10411062151242807240

/-! ## A292221.P18356520609666793624

`A001700(A000007(n)+n)*A133942(n)`
-/

namespace A292221.P18356520609666793624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A000007 n + (n : ℤ)).toNat * A133942 n

end

end A292221.P18356520609666793624

/-! ## A292221.P1005874338765263293

`A057077(2*n)*A123225(A179865(n+1))`
-/

namespace A292221.P1005874338765263293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A123225 (A179865 (n + 1)).toNat

end

end A292221.P1005874338765263293

/-!
# A292222: Triangle corresponding to the partition array of the M_1 multinomials (A036038).

The programs for A292222, there is no canonical definition to state claims against.
-/

/-! ## A292222.P9177685050631616577

`A226874(comp[∑[n]])`
-/

namespace A292222.P9177685050631616577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A292222.P9177685050631616577

/-! ## A292222.P7349154106298744455

`A226874(A080036(n))+char[∑[n]]`
-/

namespace A292222.P7349154106298744455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A080036 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292222.P7349154106298744455

/-! ## A292222.P5768811870333533362

`or(char[1], A226874(A014132(n+1)))`
-/

namespace A292222.P5768811870333533362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A226874 (A014132 (n + 1)).toNat)

end

end A292222.P5768811870333533362

/-! ## A292222.P1605237609447792639

`A007318(∑[n])*A226874(A014132(n+1))`
-/

namespace A292222.P1605237609447792639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A226874 (A014132 (n + 1)).toNat

end

end A292222.P1605237609447792639

/-! ## A292222.P262364788980171185

`char[A057163(n)]*A226874(A014132(n+1))`
-/

namespace A292222.P262364788980171185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A226874 (A014132 (n + 1)).toNat

end

end A292222.P262364788980171185

/-! ## A292222.P1760332431586956465

`char[A082331(n)]*A226874(A014132(n+1))`
-/

namespace A292222.P1760332431586956465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A226874 (A014132 (n + 1)).toNat

end

end A292222.P1760332431586956465

/-! ## A292222.P2396418088882021005

`A226874(A014132(n+1))%record[A000032(n)]`
-/

namespace A292222.P2396418088882021005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226874 (A014132 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A292222.P2396418088882021005

/-! ## A292222.P13699987857371348809

`A226874(A014132(n+1))/A007318(C(2, n))`
-/

namespace A292222.P13699987857371348809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226874 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A292222.P13699987857371348809

/-! ## A292222.P5608038607573390384

`A226874(eq[0, A010054(n)])%A000045(n+9)`
-/

namespace A292222.P5608038607573390384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000045 (n + 9))

end

end A292222.P5608038607573390384

/-! ## A292222.P15188960434774124279

`A000041(C(n, 64))*A226874(A014132(n+1))`
-/

namespace A292222.P15188960434774124279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A226874 (A014132 (n + 1)).toNat

end

end A292222.P15188960434774124279

/-!
# A292223: a(n) is the number of representative six-color bracelets (necklaces with turning over allowed; D_6 symmetry) with n beads, for n >= 6.

The programs for A292223, there is no canonical definition to state claims against.
-/

/-! ## A292223.P10568835841393183745

`A213940(A166136(n+4))`
-/

namespace A292223.P10568835841393183745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A166136 (n + 4)).toNat

end

end A292223.P10568835841393183745

/-! ## A292223.P11675696284666659761

`A213940(A167499(n+4)+1)`
-/

namespace A292223.P11675696284666659761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167499 (n + 4) + 1).toNat

end

end A292223.P11675696284666659761

/-! ## A292223.P9627611181500631975

`A213940(A167614(n+4)+3)`
-/

namespace A292223.P9627611181500631975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A167614 (n + 4) + 3).toNat

end

end A292223.P9627611181500631975

/-! ## A292223.P17072263235166742547

`A213940(A000217(n+5)+6)`
-/

namespace A292223.P17072263235166742547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A000217 (n + 5) + 6).toNat

end

end A292223.P17072263235166742547

/-! ## A292223.P4037835828879098824

`A213940(A046691(n+3)+10)`
-/

namespace A292223.P4037835828879098824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (A046691 (n + 3) + 10).toNat

end

end A292223.P4037835828879098824

/-!
# A292224: Irregular triangle read by rows. T(n, k) gives the number of admissible k-tuples from the interval of integers [0, 1, ..., n-1] starting with smallest tuple member 0.

The programs for A292224, there is no canonical definition to state claims against.
-/

/-! ## A292224.P17850707682875235770

`A228572(n+2)+A086016(A105278(n+4))`
-/

namespace A292224.P17850707682875235770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228572 (n + 2) + A086016 (A105278 (n + 4)).toNat

end

end A292224.P17850707682875235770

/-! ## A292224.P10587760949040517368

`A001221(2*A152537(n)+1)`
-/

namespace A292224.P10587760949040517368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A152537 n + 1).toNat

end

end A292224.P10587760949040517368

/-! ## A292224.P7247461326455756288

`∏{e}[A005255(A059346(n+1)), #]`
-/

namespace A292224.P7247461326455756288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (A059346 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A292224.P7247461326455756288

/-! ## A292224.P1937716293406860409

`A344590(A209636(p?[A155212(n)]))`
-/

namespace A292224.P1937716293406860409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A209636 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A292224.P1937716293406860409

/-!
# A292225: Row sums of irregular triangle A292224. a(n) gives the total number of admissible tuples starting with 0 in the interval [0, 1, ..., n-1].

The programs for A292225, there is no canonical definition to state claims against.
-/

/-! ## A292225.P4656040489436794493

`A023192(n+1)-(A094660(n)+1)`
-/

namespace A292225.P4656040489436794493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023192 (n + 1) - (A094660 n + 1)

end

end A292225.P4656040489436794493

/-! ## A292225.P3277573408840290020

`Δ[A094660(n)]`
-/

namespace A292225.P3277573408840290020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292225.P3277573408840290020

/-! ## A292225.P2601887636139984048

`A094660(n+1)-A094660(n)`
-/

namespace A292225.P2601887636139984048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094660 (n + 1) - A094660 n

end

end A292225.P2601887636139984048

/-! ## A292225.P8169793522569721087

`abs(A094660(A004442(n))-A094660(n))`
-/

namespace A292225.P8169793522569721087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094660 (A004442 n).toNat - A094660 n|

end

end A292225.P8169793522569721087

/-! ## A292225.P9965848094658232436

`(A094660(A004442(n))-A094660(n))*A033999(n)`
-/

namespace A292225.P9965848094658232436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094660 (A004442 n).toNat - A094660 n) * A033999 n

end

end A292225.P9965848094658232436

/-!
# A292226: Composite numbers m (in increasing order) for which the m-th row polynomial of A027750 in rising powers is irreducible over the integers.

The programs for A292226, there is no canonical definition to state claims against.
-/

/-! ## A292226.P3805851884826866382

`filter[A381097(n+1), A005171(#)]`
-/

namespace A292226.P3805851884826866382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A292226.P3805851884826866382

/-! ## A292226.P1509405132946631914

`filter[A381097(n+1), A066247(#)]`
-/

namespace A292226.P1509405132946631914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A292226.P1509405132946631914

/-! ## A292226.P17371909694057087267

`∩[A046349(n+1), A381097(n+1)]`
-/

namespace A292226.P17371909694057087267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292226.P17371909694057087267

/-! ## A292226.P8019480576208913926

`∩[A048098(n+1), A381097(n+1)]`
-/

namespace A292226.P8019480576208913926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292226.P8019480576208913926

/-! ## A292226.P4010911774065135546

`∩[A066423(n+1), A381097(n+1)]`
-/

namespace A292226.P4010911774065135546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292226.P4010911774065135546

/-!
# A292228: Denominators of partial sums of the series 1 + 2*Sum_{k >= 1} 1/(4*k^4 + 1).

The programs for A292228, there is no canonical definition to state claims against.
-/

/-! ## A292228.P3333989644821522558

`∏[A025492(∑[A050492(n+1)])]`
-/

namespace A292228.P3333989644821522558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292228.P3333989644821522558

/-! ## A292228.P9314479276410607665

`∏[A085392(∑[A050492(n+1)])]`
-/

namespace A292228.P9314479276410607665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292228.P9314479276410607665

/-! ## A292228.P5664533553438163112

`∏[A284695(∑[A050492(n+1)])]`
-/

namespace A292228.P5664533553438163112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292228.P5664533553438163112

/-! ## A292228.P12495565924207978291

`∏[A006530(A008574(floor((1/2+n)^4)))]`
-/

namespace A292228.P12495565924207978291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008574 ⌊((1 : ℚ) / 2 + (n : ℚ)) ^ 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292228.P12495565924207978291

/-!
# A292229: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals three.

The programs for A292229, there is no canonical definition to state claims against.
-/

/-! ## A292229.P6131264564554760

`A268172(n+3)-A001190(n+3)`
-/

namespace A292229.P6131264564554760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268172 (n + 3) - A001190 (n + 3)

end

end A292229.P6131264564554760

/-! ## A292229.P9321307583178011707

`A292086(∑[n+2]+4)`
-/

namespace A292229.P9321307583178011707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A292229.P9321307583178011707

/-! ## A292229.P4341383196275098143

`record[A292086(A016028(n+1))]`
-/

namespace A292229.P4341383196275098143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292229.P4341383196275098143

/-! ## A292229.P949221021985870664

`record[A292086(A000124(n)+2)]`
-/

namespace A292229.P949221021985870664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292229.P949221021985870664

/-! ## A292229.P11704833979591206377

`record[A292086(A000217(n)+3)]`
-/

namespace A292229.P11704833979591206377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000217 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292229.P11704833979591206377

/-! ## A292229.P10930187177623232711

`record[A292086(A133263(n+1)-n)]`
-/

namespace A292229.P10930187177623232711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A133263 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292229.P10930187177623232711

/-!
# A292230: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals four.

The programs for A292230, there is no canonical definition to state claims against.
-/

/-! ## A292230.P6875882374547110283

`A292086(A052905(n)+9)`
-/

namespace A292230.P6875882374547110283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A052905 n + 9).toNat

end

end A292230.P6875882374547110283

/-! ## A292230.P2859067289399367606

`A292086(A055999(n)+10)`
-/

namespace A292230.P2859067289399367606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A055999 n + 10).toNat

end

end A292230.P2859067289399367606

/-! ## A292230.P10177160536216028128

`record[A292086(A133263(n)+2)]`
-/

namespace A292230.P10177160536216028128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A133263 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292230.P10177160536216028128

/-! ## A292230.P8510969602740138313

`record[A292086(A167499(n)-1)]`
-/

namespace A292230.P8510969602740138313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292230.P8510969602740138313

/-! ## A292230.P1645762838351474286

`record[A292086(A077169(n)-n)]`
-/

namespace A292230.P1645762838351474286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292230.P1645762838351474286

/-! ## A292230.P6132333265060668316

`A292086(A167614(n+2)+1)`
-/

namespace A292230.P6132333265060668316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167614 (n + 2) + 1).toNat

end

end A292230.P6132333265060668316

/-! ## A292230.P387036298901972843

`A292086(A166136(n+2)-2)`
-/

namespace A292230.P387036298901972843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A166136 (n + 2) - 2).toNat

end

end A292230.P387036298901972843

/-! ## A292230.P17148487762574269921

`A292086(A034856(n+2)+6)`
-/

namespace A292230.P17148487762574269921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A034856 (n + 2) + 6).toNat

end

end A292230.P17148487762574269921

/-! ## A292230.P16207155112814155553

`record[A292086(A016028(n+2)+1)]`
-/

namespace A292230.P16207155112814155553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A016028 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292230.P16207155112814155553

/-! ## A292230.P6073788028661228040

`record[A292086(2-(n-A133263(n)))]`
-/

namespace A292230.P6073788028661228040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (2 - ((n : ℤ) - A133263 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292230.P6073788028661228040

/-! ## A292230.P6536823756180545554

`A292086(A166136(n+1)+1+n)`
-/

namespace A292230.P6536823756180545554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A292230.P6536823756180545554

/-! ## A292230.P9191077274190957454

`record[gcd(A292085(n+1), A292086(n+5))]`
-/

namespace A292230.P9191077274190957454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292085 (n + 1)) (A292086 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292230.P9191077274190957454

/-!
# A292231: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals five.

The programs for A292231, there is no canonical definition to state claims against.
-/

/-! ## A292231.P17080297334337996564

`record[A292086(A077169(n))]`
-/

namespace A292231.P17080297334337996564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292231.P17080297334337996564

/-! ## A292231.P16781902151321144540

`record[A292086(A167499(n))]`
-/

namespace A292231.P16781902151321144540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292231.P16781902151321144540

/-! ## A292231.P11297830059344295274

`A292086(A167499(n+3))`
-/

namespace A292231.P11297830059344295274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167499 (n + 3)).toNat

end

end A292231.P11297830059344295274

/-! ## A292231.P7378813052792180935

`A292086(A077169(n+5))`
-/

namespace A292231.P7378813052792180935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A077169 (n + 5)).toNat

end

end A292231.P7378813052792180935

/-! ## A292231.P6694997906319356660

`record[A292086(A000217(n)+5)]`
-/

namespace A292231.P6694997906319356660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000217 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292231.P6694997906319356660

/-! ## A292231.P7163622534960634452

`record[A292086(A016028(n+1)+2)]`
-/

namespace A292231.P7163622534960634452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A016028 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292231.P7163622534960634452

/-! ## A292231.P10116589952650338082

`record[A292086(A167614(n+1)-n)]`
-/

namespace A292231.P10116589952650338082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167614 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292231.P10116589952650338082

/-! ## A292231.P13388354534259638808

`record[A292086(A133263(n+1)+2-n)]`
-/

namespace A292231.P13388354534259638808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A133263 (n + 1) + (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292231.P13388354534259638808

/-!
# A292232: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals six.

The programs for A292232, there is no canonical definition to state claims against.
-/

/-! ## A292232.P12211034986383457252

`A292212(n+6)-A292211(n+6)`
-/

namespace A292232.P12211034986383457252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292212 (n + 6) - A292211 (n + 6)

end

end A292232.P12211034986383457252

/-! ## A292232.P18303692654393825690

`A292086(A167499(n+4)+1)`
-/

namespace A292232.P18303692654393825690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167499 (n + 4) + 1).toNat

end

end A292232.P18303692654393825690

/-! ## A292232.P13740031797746569239

`A292086(A000217(n+5)+6)`
-/

namespace A292232.P13740031797746569239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000217 (n + 5) + 6).toNat

end

end A292232.P13740031797746569239

/-! ## A292232.P6067672226858261866

`A292086(A000124(n+6)-(n+1))`
-/

namespace A292232.P6067672226858261866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A292232.P6067672226858261866

/-! ## A292232.P6011129166504141232

`record[A292086(A038722(A052905(n)))]`
-/

namespace A292232.P6011129166504141232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A038722 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292232.P6011129166504141232

/-!
# A292233: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals seven.

The programs for A292233, there is no canonical definition to state claims against.
-/

/-! ## A292233.P2426222065464065578

`A292213(n+7)-A292212(n+7)`
-/

namespace A292233.P2426222065464065578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292213 (n + 7) - A292212 (n + 7)

end

end A292233.P2426222065464065578

/-! ## A292233.P1899928183338735261

`A292086(A167499(n+5)+2)`
-/

namespace A292233.P1899928183338735261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167499 (n + 5) + 2).toNat

end

end A292233.P1899928183338735261

/-! ## A292233.P914138731181539622

`A292086(A133263(n+6)+5)`
-/

namespace A292233.P914138731181539622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A133263 (n + 6) + 5).toNat

end

end A292233.P914138731181539622

/-! ## A292233.P5229825146439647841

`A292086(A000217(n+6)+7)`
-/

namespace A292233.P5229825146439647841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000217 (n + 6) + 7).toNat

end

end A292233.P5229825146439647841

/-! ## A292233.P3518220641036773873

`A292086(A000124(n+7)-(n+1))`
-/

namespace A292233.P3518220641036773873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A292233.P3518220641036773873

/-!
# A292234: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals eight.

The programs for A292234, there is no canonical definition to state claims against.
-/

/-! ## A292234.P3679939181464424980

`A292214(n+8)-A292213(n+8)`
-/

namespace A292234.P3679939181464424980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292214 (n + 8) - A292213 (n + 8)

end

end A292234.P3679939181464424980

/-! ## A292234.P2190041307224693824

`record[A292214(A028310(n))-A292213(n)]`
-/

namespace A292234.P2190041307224693824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292214 (A028310 n).toNat - A292213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292234.P2190041307224693824

/-! ## A292234.P18402633598021477008

`A292086(A167614(n+6)+5)`
-/

namespace A292234.P18402633598021477008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167614 (n + 6) + 5).toNat

end

end A292234.P18402633598021477008

/-! ## A292234.P8017325804185170785

`A292086(A000217(n+7)+8)`
-/

namespace A292234.P8017325804185170785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000217 (n + 7) + 8).toNat

end

end A292234.P8017325804185170785

/-! ## A292234.P5401635984429237318

`A292086(A000124(n+8)-(n+1))`
-/

namespace A292234.P5401635984429237318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A292234.P5401635984429237318

/-!
# A292235: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals nine.

The programs for A292235, there is no canonical definition to state claims against.
-/

/-! ## A292235.P16857589679092734204

`A292215(n+9)-A292214(n+9)`
-/

namespace A292235.P16857589679092734204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292215 (n + 9) - A292214 (n + 9)

end

end A292235.P16857589679092734204

/-! ## A292235.P3856184154084473543

`A292086(A000217(n+8)+9)`
-/

namespace A292235.P3856184154084473543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000217 (n + 8) + 9).toNat

end

end A292235.P3856184154084473543

/-! ## A292235.P13660447021551908715

`A292086(A000124(n+9)-(n+1))`
-/

namespace A292235.P13660447021551908715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A292235.P13660447021551908715

/-! ## A292235.P13132165076800907288

`A292086(A016789(n+9)+A000124(n+5))`
-/

namespace A292235.P13132165076800907288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A016789 (n + 9) + A000124 (n + 5)).toNat

end

end A292235.P13132165076800907288

/-! ## A292235.P17116647275985140562

`A292086(A133263(n+6)+A005843(n+11))`
-/

namespace A292235.P17116647275985140562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A133263 (n + 6) + A005843 (n + 11)).toNat

end

end A292235.P17116647275985140562

/-!
# A292236: Number of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that the maximum of the node outdegrees equals ten.

The programs for A292236, there is no canonical definition to state claims against.
-/

/-! ## A292236.P15448642889516179740

`A292216(n+10)-A292215(n+10)`
-/

namespace A292236.P15448642889516179740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292216 (n + 10) - A292215 (n + 10)

end

end A292236.P15448642889516179740

/-! ## A292236.P13549495939893459482

`A292086(A166136(n+8)+4)`
-/

namespace A292236.P13549495939893459482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A166136 (n + 8) + 4).toNat

end

end A292236.P13549495939893459482

/-! ## A292236.P7474593940199812034

`A292086(A167614(n+8)+7)`
-/

namespace A292236.P7474593940199812034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A167614 (n + 8) + 7).toNat

end

end A292236.P7474593940199812034

/-! ## A292236.P17485016357825633752

`A292086(A000217(n+9)+10)`
-/

namespace A292236.P17485016357825633752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000217 (n + 9) + 10).toNat

end

end A292236.P17485016357825633752

/-! ## A292236.P4764052322928143617

`A292086(A000124(n+10)-(n+1))`
-/

namespace A292236.P4764052322928143617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A292236.P4764052322928143617

/-!
# A292237: Primes p such that gpf(lpf(2^p - 1) - 1) > p.

The programs for A292237, there is no canonical definition to state claims against.
-/

/-! ## A292237.P13951138045555564721

`p?[Δ[A007504(n)]%A292238(n+1)]`
-/

namespace A292237.P13951138045555564721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A292238 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292237.P13951138045555564721

/-! ## A292237.P202365703482567426

`p?[p?[A001057(n)]%A292238(n+1)]`
-/

namespace A292237.P202365703482567426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (A292238 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292237.P202365703482567426

/-! ## A292237.P13056864677596363555

`p?[A000040(n+1)%A292238(n+1)]`
-/

namespace A292237.P13056864677596363555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A292238 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292237.P13056864677596363555

/-! ## A292237.P11557748434164452536

`p?[record[A006530(n+2)]%A292238(n+1)]`
-/

namespace A292237.P11557748434164452536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A292238 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292237.P11557748434164452536

/-! ## A292237.P17945872082627447306

`p?[p?[A018252(n+1)-7]%A292238(n+1)]`
-/

namespace A292237.P17945872082627447306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (A292238 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292237.P17945872082627447306

/-!
# A292238: a(n) = gpf(lpf(2^prime(n) - 1) - 1) where prime(n) is the n-th prime.

The programs for A292238, there is no canonical definition to state claims against.
-/

/-! ## A292238.P6129343110821724289

`A292205(A024642(n+1))`
-/

namespace A292238.P6129343110821724289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292205 (A024642 (n + 1)).toNat

end

end A292238.P6129343110821724289

/-! ## A292238.P5499038714569423011

`A162855(A303367(n+1))`
-/

namespace A292238.P5499038714569423011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162855 (A303367 (n + 1)).toNat

end

end A292238.P5499038714569423011

/-! ## A292238.P9179131996665778889

`record[A358373(A100142(n+1))]`
-/

namespace A292238.P9179131996665778889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358373 (A100142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292238.P9179131996665778889

/-!
# A292239: A multiplicative encoding for the exponents of 2 obtained when using Shevelev's algorithm for computing A002326.

The programs for A292239, there is no canonical definition to state claims against.
-/

/-! ## A292239.P5422800080878136226

`abs(A168557(A168543((n+1)*∏{p}[n+1, #])))`
-/

namespace A292239.P5422800080878136226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168557 (A168543 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat|

end

end A292239.P5422800080878136226

/-! ## A292239.P12172950858701292046

`A136763(A000172(n))+A000699(n)`
-/

namespace A292239.P12172950858701292046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136763 (A000172 n).toNat + A000699 n

end

end A292239.P12172950858701292046

/-!
# A292240: Binary encoding of 0-digits in ternary representation of A254103(n).

The programs for A292240, there is no canonical definition to state claims against.
-/

/-! ## A292240.P14809659473459946537

`A291770(A254103(abs(1-n)+1))`
-/

namespace A292240.P14809659473459946537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A254103 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A292240.P14809659473459946537

/-! ## A292240.P12969870621142682703

`A291770(A292262(2*n+1)+A254103(n))`
-/

namespace A292240.P12969870621142682703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A292262 (2 * n + 1) + A254103 n).toNat

end

end A292240.P12969870621142682703

/-! ## A292240.P4139909772232418005

`A291770((A254103(n)-1)%A000041(n)+1)`
-/

namespace A292240.P4139909772232418005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (Int.tmod (A254103 n - 1) (A000041 n) + 1).toNat

end

end A292240.P4139909772232418005

/-! ## A292240.P15208335131180784764

`A291770(A254103(n)-char[A048673(n+1)]+1)`
-/

namespace A292240.P15208335131180784764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A254103 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A292240.P15208335131180784764

/-! ## A292240.P8743729002007101860

`A291770(A016789(A254103(n)))/2`
-/

namespace A292240.P8743729002007101860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291770 (A016789 (A254103 n).toNat).toNat : ℚ) / 2

end

end A292240.P8743729002007101860

/-!
# A292241: The 3-adic valuation of A254103(n).

The programs for A292241, there is no canonical definition to state claims against.
-/

/-! ## A292241.P9694833019330620980

`A007814(1+A292240(n))`
-/

namespace A292241.P9694833019330620980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A292240 n).toNat

end

end A292241.P9694833019330620980

/-! ## A292241.P11930661414392348737

`A050605(2*A292240(n))`
-/

namespace A292241.P11930661414392348737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A292240 n).toNat

end

end A292241.P11930661414392348737

/-! ## A292241.P15249660132149143665

`(A292242(2*n)+n)%(n+1)`
-/

namespace A292241.P15249660132149143665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292242 (2 * n) + (n : ℤ)) (n + 1 : ℤ)

end

end A292241.P15249660132149143665

/-! ## A292241.P6113185746342748736

`A050605(A291760(2*n))`
-/

namespace A292241.P6113185746342748736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A291760 (2 * n)).toNat

end

end A292241.P6113185746342748736

/-! ## A292241.P12916421619906377987

`(A292242(2*n)-1)*A292242(n+1)`
-/

namespace A292241.P12916421619906377987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A292242 (2 * n) - 1) * A292242 (n + 1)

end

end A292241.P12916421619906377987

/-! ## A292241.P16182224592865692782

`A292242(2*n)-A292242(4*n)`
-/

namespace A292241.P16182224592865692782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (2 * n) - A292242 (4 * n)

end

end A292241.P16182224592865692782

/-! ## A292241.P9497471410436984559

`A007949(gcd(2-A254103(n+1), A254103(n)))`
-/

namespace A292241.P9497471410436984559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (Int.gcd (2 - A254103 (n + 1)) (A254103 n))

end

end A292241.P9497471410436984559

/-! ## A292241.P753122063701012345

`A007949(A254103(n)+A000010(n+1)%2)`
-/

namespace A292241.P753122063701012345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A254103 n + Int.tmod (A000010 (n + 1)) 2).toNat

end

end A292241.P753122063701012345

/-! ## A292241.P10920735140113218904

`A007949(A254103(n)^A292242((n+1)²))`
-/

namespace A292241.P10920735140113218904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A254103 n : ℚ) ^ (A292242 ((n + 1) ^ 2) : ℤ))).toNat

end

end A292241.P10920735140113218904

/-!
# A292242: Number of trailing 2-digits in ternary representation of A254103(n).

The programs for A292242, there is no canonical definition to state claims against.
-/

/-! ## A292242.P9469194787927175785

`A007814(1+A291760(n))`
-/

namespace A292242.P9469194787927175785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A291760 n).toNat

end

end A292242.P9469194787927175785

/-! ## A292242.P14437981508165995217

`A007949(1+A254103(n))`
-/

namespace A292242.P14437981508165995217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (1 + A254103 n).toNat

end

end A292242.P14437981508165995217

/-! ## A292242.P7137078244878556724

`A050605(2*A291760(n))`
-/

namespace A292242.P7137078244878556724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A291760 n).toNat

end

end A292242.P7137078244878556724

/-! ## A292242.P8347509812363602703

`A007814(A165998(A291760(n)))`
-/

namespace A292242.P8347509812363602703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A165998 (A291760 n).toNat).toNat

end

end A292242.P8347509812363602703

/-! ## A292242.P191388726929951526

`A050605(A291760(n)+A291760(n)+1)`
-/

namespace A292242.P191388726929951526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A291760 n + (A291760 n + 1)).toNat

end

end A292242.P191388726929951526

/-!
# A292244: Base-2 expansion of a(n) encodes the steps where multiples of 3 are encountered when map x -> A253889(x) is iterated down to 1, starting from x=n.

The programs for A292244, there is no canonical definition to state claims against.
-/

/-! ## A292244.P5528551128175251304

`A291770(A292243(n+1))`
-/

namespace A292244.P5528551128175251304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A292243 (n + 1)).toNat

end

end A292244.P5528551128175251304

/-! ## A292244.P12703383397326563862

`A064216(n+1)-A292245(n+1)`
-/

namespace A292244.P12703383397326563862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) - A292245 (n + 1)

end

end A292244.P12703383397326563862

/-! ## A292244.P12077858464790845549

`A349122(2*n+1)+A000007(A007947(n+1))-A292245(n+1)`
-/

namespace A292244.P12077858464790845549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (2 * n + 1) + A000007 (A007947 (n + 1)).toNat - A292245 (n + 1)

end

end A292244.P12077858464790845549

/-! ## A292244.P15389753681064645723

`A064989(Δ[n²])-A292245(n+1)`
-/

namespace A292244.P15389753681064645723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A292245 (n + 1)

end

end A292244.P15389753681064645723

/-! ## A292244.P13959912939174789923

`A252463(2*n+1)-A292245(n+1)`
-/

namespace A292244.P13959912939174789923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * n + 1) - A292245 (n + 1)

end

end A292244.P13959912939174789923

/-! ## A292244.P9939667168022393945

`abs(A064989(2*n+1)-1)+1-A292245(n+1)`
-/

namespace A292244.P9939667168022393945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064989 (2 * n + 1) - 1| + 1 - A292245 (n + 1)

end

end A292244.P9939667168022393945

/-! ## A292244.P17544551314889430151

`A341516(A005408(n))-A292245(n+1)`
-/

namespace A292244.P17544551314889430151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341516 (A005408 n).toNat - A292245 (n + 1)

end

end A292244.P17544551314889430151

/-! ## A292244.P1217612297217080547

`A292247(A064216(n+1))`
-/

namespace A292244.P1217612297217080547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292247 (A064216 (n + 1)).toNat

end

end A292244.P1217612297217080547

/-! ## A292244.P14388798310379726995

`A292247(A064989(comp[2*n]))`
-/

namespace A292244.P14388798310379726995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292247 (A064989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A292244.P14388798310379726995

/-! ## A292244.P6135060371104896534

`A292247(abs(A064989(2*n+1)-1)+1)`
-/

namespace A292244.P6135060371104896534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292247 (|A064989 (2 * n + 1) - 1| + 1).toNat

end

end A292244.P6135060371104896534

/-! ## A292244.P16693150951162421981

`A064989(comp[2*n])-A292248(A064216(n+1))`
-/

namespace A292244.P16693150951162421981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A292248 (A064216 (n + 1)).toNat

end

end A292244.P16693150951162421981

/-! ## A292244.P15396681209852680919

`A064216(n+1)-A289813(A292243(n+1))`
-/

namespace A292244.P15396681209852680919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) - A289813 (A292243 (n + 1)).toNat

end

end A292244.P15396681209852680919

/-!
# A292245: Base-2 expansion of a(n) encodes the steps where numbers of the form 3k+1 are encountered when map x -> A253889(x) is iterated down to 1, starting from x=n.

The programs for A292245, there is no canonical definition to state claims against.
-/

/-! ## A292245.P15973374360050251034

`A289813(A292243(n+1))`
-/

namespace A292245.P15973374360050251034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A292243 (n + 1)).toNat

end

end A292245.P15973374360050251034

/-! ## A292245.P13908174593549366931

`A064216(n+1)-A292244(n+1)`
-/

namespace A292245.P13908174593549366931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) - A292244 (n + 1)

end

end A292245.P13908174593549366931

/-! ## A292245.P10152320292464857640

`A064989(2*n+1)-A292244(n+1)`
-/

namespace A292245.P10152320292464857640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * n + 1) - A292244 (n + 1)

end

end A292245.P10152320292464857640

/-! ## A292245.P1088390988823630584

`A252463(2*n+1)-A292244(n+1)`
-/

namespace A292245.P1088390988823630584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * n + 1) - A292244 (n + 1)

end

end A292245.P1088390988823630584

/-! ## A292245.P13858132703410254126

`A292248(A064216(n+1))`
-/

namespace A292245.P13858132703410254126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (A064216 (n + 1)).toNat

end

end A292245.P13858132703410254126

/-! ## A292245.P9371963381174965284

`A292248(A252463(Δ[n²]))`
-/

namespace A292245.P9371963381174965284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (A252463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A292245.P9371963381174965284

/-! ## A292245.P6587299452198956089

`A292248(A064989(comp[2*n]))`
-/

namespace A292245.P6587299452198956089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (A064989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A292245.P6587299452198956089

/-! ## A292245.P1210346890167921065

`A292248(abs(A064989(2*n+1)-1)+1)`
-/

namespace A292245.P1210346890167921065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (|A064989 (2 * n + 1) - 1| + 1).toNat

end

end A292245.P1210346890167921065

/-! ## A292245.P12202915031772126283

`A064216(n+1)-A291770(A292243(n+1))`
-/

namespace A292245.P12202915031772126283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) - A291770 (A292243 (n + 1)).toNat

end

end A292245.P12202915031772126283

/-!
# A292246: Base-2 expansion of a(n) encodes the steps where numbers of the form 3k+2 are encountered when map x -> A253889(x) is iterated down to 1, starting from x=n.

The programs for A292246, the canonical program `A292246.P9092114354265283715` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292246 has offset 1).

The definition of A292246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292246.P10957035516388845473

`A289814(A292243(n+1))`
-/

namespace A292246.P10957035516388845473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A292243 (n + 1)).toNat

end

end A292246.P10957035516388845473

namespace A292246

/-- `A289814(A292243(n+1))` -/
def P10957035516388845473.Spec : Prop :=
  ∀ n, P10957035516388845473.a n = A292246 (n + 1)

end A292246

/-! ## A292246.P1943426821256448534

`A035327(A064216(n+1))`
-/

namespace A292246.P1943426821256448534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A064216 (n + 1)).toNat

end

end A292246.P1943426821256448534

namespace A292246

/-- `A035327(A064216(n+1))` -/
def P1943426821256448534.Spec : Prop :=
  ∀ n, P1943426821256448534.a n = A292246 (n + 1)

end A292246

/-! ## A292246.P6395491291514956552

`A035327(A064989(comp[2*n]))`
-/

namespace A292246.P6395491291514956552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A064989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A292246.P6395491291514956552

namespace A292246

/-- `A035327(A064989(comp[2*n]))` -/
def P6395491291514956552.Spec : Prop :=
  ∀ n, P6395491291514956552.a n = A292246 (n + 1)

end A292246

/-! ## A292246.P2111802264653168016

`A035327(A252463(2*n+1))`
-/

namespace A292246.P2111802264653168016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A252463 (2 * n + 1)).toNat

end

end A292246.P2111802264653168016

namespace A292246

/-- `A035327(A252463(2*n+1))` -/
def P2111802264653168016.Spec : Prop :=
  ∀ n, P2111802264653168016.a n = A292246 (n + 1)

end A292246

/-! ## A292246.P9092114354265283715

`A080079(A064989(2*n+1))-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A292246

/-- `A080079(A064989(2*n+1))-1` -/
def P9092114354265283715.Spec : Prop :=
  ∀ n, P9092114354265283715.a n = A292246 (n + 1)

theorem P9092114354265283715.correct : P9092114354265283715.Spec := by
  intro n
  simp only [A292246, Nat.add_sub_cancel]

end A292246

/-! ## A292246.P4430145938200123290

`A064216(n+1)-A062050(2*A064216(n+1))`
-/

namespace A292246.P4430145938200123290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) - A062050 (2 * A064216 (n + 1)).toNat

end

end A292246.P4430145938200123290

namespace A292246

/-- `A064216(n+1)-A062050(2*A064216(n+1))` -/
def P4430145938200123290.Spec : Prop :=
  ∀ n, P4430145938200123290.a n = A292246 (n + 1)

end A292246

/-!
# A292247: a(n) = A292244(A048673(n)).

The programs for A292247, there is no canonical definition to state claims against.
-/

/-! ## A292247.P5862616264685065425

`A292244(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292247.P5862616264685065425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292244 (A048673 (n + 1)).toNat

end

end A292247.P5862616264685065425

/-! ## A292247.P13990848088882698133

`1-A292248(n+1)+n`
-/

namespace A292247.P13990848088882698133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A292248 (n + 1) + (n : ℤ)

end

end A292247.P13990848088882698133

/-! ## A292247.P343158372080492429

`(n+1)%A292248(A000027(n+1))`
-/

namespace A292247.P343158372080492429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A292248 (A000027 (n + 1)).toNat)

end

end A292247.P343158372080492429

/-! ## A292247.P11692778798787265655

`A087156(n+1)%A292248(n+1)`
-/

namespace A292247.P11692778798787265655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A292248 (n + 1))

end

end A292247.P11692778798787265655

/-! ## A292247.P1584846196010206491

`xor(A000027(n+1), A292248(n+1))`
-/

namespace A292247.P1584846196010206491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000027 (n + 1)) (A292248 (n + 1))

end

end A292247.P1584846196010206491

/-! ## A292247.P7081232051693733785

`A292244((A003961(n+1)+1)/2)`
-/

namespace A292247.P7081232051693733785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292244 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A292247.P7081232051693733785

/-! ## A292247.P13746769590664943923

`n+1-A292245(A048673(char[1]+1+n))`
-/

namespace A292247.P13746769590664943923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A292245 (A048673 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat

end

end A292247.P13746769590664943923

/-! ## A292247.P17085142226920616192

`n+1-A292245((A003961(n+1)+1)/2)`
-/

namespace A292247.P17085142226920616192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A292245 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A292247.P17085142226920616192

/-! ## A292247.P10416623162007331991

`n+1-A292245(ceil(A297166(2*(n+1))/2))`
-/

namespace A292247.P10416623162007331991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A292245 ⌈(A297166 (2 * (n + 1)) : ℚ) / 2⌉.toNat

end

end A292247.P10416623162007331991

/-! ## A292247.P7503062752633685227

`n+1-A292245(round(A297166(2*(n+1))/2))`
-/

namespace A292247.P7503062752633685227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A292245 (SequenceMachineLib.roundAway ((A297166 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A292247.P7503062752633685227

/-! ## A292247.P1176336617178594677

`(A028310(n)+1)%A292245(ceil(A297166(2*(n+1))/2))`
-/

namespace A292247.P1176336617178594677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n + 1) (A292245 ⌈(A297166 (2 * (n + 1)) : ℚ) / 2⌉.toNat)

end

end A292247.P1176336617178594677

/-! ## A292247.P2844117447875401492

`A292244(A253889(A254049(n+2)))`
-/

namespace A292247.P2844117447875401492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292244 (A253889 (A254049 (n + 2)).toNat).toNat

end

end A292247.P2844117447875401492

/-! ## A292247.P6504540627185829081

`A292244(A003602(A003961(n+1)))`
-/

namespace A292247.P6504540627185829081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292244 (A003602 (A003961 (n + 1)).toNat).toNat

end

end A292247.P6504540627185829081

/-! ## A292247.P881839520665538900

`A060401(n+1)%A292248(n+1)`
-/

namespace A292247.P881839520665538900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A292248 (n + 1))

end

end A292247.P881839520665538900

/-!
# A292248: a(n) = A292245(A048673(n)).

The programs for A292248, there is no canonical definition to state claims against.
-/

/-! ## A292248.P2499331871128460613

`A292245(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292248.P2499331871128460613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292245 (A048673 (n + 1)).toNat

end

end A292248.P2499331871128460613

/-! ## A292248.P9561986040730883273

`1-A292247(n+1)+n`
-/

namespace A292248.P9561986040730883273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A292247 (n + 1) + (n : ℤ)

end

end A292248.P9561986040730883273

/-! ## A292248.P14137450610580836073

`xor(n+1, A292247(A000027(n+1)))`
-/

namespace A292248.P14137450610580836073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A292247 (A000027 (n + 1)).toNat)

end

end A292248.P14137450610580836073

/-! ## A292248.P11908738443094701678

`xor(A065770(A000040(n+1)), A292247(n+1))`
-/

namespace A292248.P11908738443094701678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065770 (A000040 (n + 1)).toNat) (A292247 (n + 1))

end

end A292248.P11908738443094701678

/-! ## A292248.P100091085815720831

`A292245((A003961(n+1)+1)/2)`
-/

namespace A292248.P100091085815720831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292245 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A292248.P100091085815720831

/-! ## A292248.P4372742631443639209

`A292245(ceil(A297166(2*(n+1))/2))`
-/

namespace A292248.P4372742631443639209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292245 ⌈(A297166 (2 * (n + 1)) : ℚ) / 2⌉.toNat

end

end A292248.P4372742631443639209

/-! ## A292248.P4174056502512506488

`A292245(round(A297166(2*(n+1))/2))`
-/

namespace A292248.P4174056502512506488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292245 (SequenceMachineLib.roundAway ((A297166 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A292248.P4174056502512506488

/-! ## A292248.P16138155296468698855

`n+1-A292244(A048673(1-char[1]+n))`
-/

namespace A292248.P16138155296468698855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A292244 (A048673 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat

end

end A292248.P16138155296468698855

/-! ## A292248.P3128422387869466022

`n+1-A292244(A253889(A254049(n+2)))`
-/

namespace A292248.P3128422387869466022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A292244 (A253889 (A254049 (n + 2)).toNat).toNat

end

end A292248.P3128422387869466022

/-! ## A292248.P14510498342407523722

`A292245(A003602(A003961(n+1)))`
-/

namespace A292248.P14510498342407523722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292245 (A003602 (A003961 (n + 1)).toNat).toNat

end

end A292248.P14510498342407523722

/-!
# A292249: Compound filter (multiplicative order of 2 mod 2n+1 & prime signature of 2n+1): a(n) = P(A002326(n), A046523(2n+1)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A292249, there is no canonical definition to state claims against.
-/

/-! ## A292249.P3796101381033302203

`1/2*(2+(A002326(n)+A046523(2*n+1))²-A002326(n)-3*A046523(2*n+1))`
-/

namespace A292249.P3796101381033302203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A002326 n + A046523 (2 * n + 1)) ^ 2 - A002326 n) - 3 * A046523 (2 * n + 1) : ℚ)

end

end A292249.P3796101381033302203

/-! ## A292249.P5441806382602260701

`A286573(Δ[n²])`
-/

namespace A292249.P5441806382602260701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A292249.P5441806382602260701

/-! ## A292249.P5474210560405072700

`A286573(n+1+n)^gcd(n, n+1)`
-/

namespace A292249.P5474210560405072700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286573 (n + 1 + n) ^ Nat.gcd n (n + 1)

end

end A292249.P5474210560405072700

/-! ## A292249.P11800113045461674545

`A286573(2*n+1)%A154106(n)`
-/

namespace A292249.P11800113045461674545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286573 (2 * n + 1)) (A154106 n)

end

end A292249.P11800113045461674545

/-! ## A292249.P6900167478474607914

`ceil(A286573(2*n+1)/A054977(n))`
-/

namespace A292249.P6900167478474607914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286573 (2 * n + 1) : ℚ) / (A054977 n : ℚ)⌉

end

end A292249.P6900167478474607914

/-! ## A292249.P8180122734149404078

`A286573(2*n+1)+char[A032595(n+1)]`
-/

namespace A292249.P8180122734149404078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032595 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286573 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292249.P8180122734149404078

/-! ## A292249.P3353510700994139493

`A286573(2*n+1)+char[A341429(n+6)]`
-/

namespace A292249.P3353510700994139493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341429 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286573 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292249.P3353510700994139493

/-! ## A292249.P1567327742126728553

`A055396(2*(n+1))*A286573(2*n+1)`
-/

namespace A292249.P1567327742126728553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) * A286573 (2 * n + 1)

end

end A292249.P1567327742126728553

/-! ## A292249.P15897470115763164354

`∑{d}[A286573(2*n+1), A000010(#)]`
-/

namespace A292249.P15897470115763164354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286573 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A292249.P15897470115763164354

/-! ## A292249.P17029519255429304100

`A286573(n+1+n)+A004526(A151933(n))`
-/

namespace A292249.P17029519255429304100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286573 (n + 1 + n) + A004526 (A151933 n).toNat

end

end A292249.P17029519255429304100

/-!
# A292250: Binary encoding of 0-digits in ternary representation of A048673(n).

The programs for A292250, the canonical program `A292250.P14580592722357513826` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292250 has offset 1).

The definition of A292250 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292250.P14580592722357513826

`A291770(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A292250

/-- `A291770(A048673(n+1))` -/
def P14580592722357513826.Spec : Prop :=
  ∀ n, P14580592722357513826.a n = A292250 (n + 1)

theorem P14580592722357513826.correct : P14580592722357513826.Spec := by
  intro n
  simp only [A292250, Nat.add_sub_cancel]

end A292250

/-! ## A292250.P8832836199210400479

`A291770(A108228(n+1)+1)`
-/

namespace A292250.P8832836199210400479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A108228 (n + 1) + 1).toNat

end

end A292250.P8832836199210400479

namespace A292250

/-- `A291770(A108228(n+1)+1)` -/
def P8832836199210400479.Spec : Prop :=
  ∀ n, P8832836199210400479.a n = A292250 (n + 1)

end A292250

/-! ## A292250.P13061369997161222421

`A291770(ceil(A003961(n+1)/2))`
-/

namespace A292250.P13061369997161222421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A292250.P13061369997161222421

namespace A292250

/-- `A291770(ceil(A003961(n+1)/2))` -/
def P13061369997161222421.Spec : Prop :=
  ∀ n, P13061369997161222421.a n = A292250 (n + 1)

end A292250

/-! ## A292250.P684498331328678509

`A291770(round(A003961(n+1)/2))`
-/

namespace A292250.P684498331328678509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A292250.P684498331328678509

namespace A292250

/-- `A291770(round(A003961(n+1)/2))` -/
def P684498331328678509.Spec : Prop :=
  ∀ n, P684498331328678509.a n = A292250 (n + 1)

end A292250

/-! ## A292250.P7288736894098443889

`A291770((A003961(n+1)+1)/2)`
-/

namespace A292250.P7288736894098443889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A292250.P7288736894098443889

namespace A292250

/-- `A291770((A003961(n+1)+1)/2)` -/
def P7288736894098443889.Spec : Prop :=
  ∀ n, P7288736894098443889.a n = A292250 (n + 1)

end A292250

/-! ## A292250.P920417877604819753

`A292240(A254115(n+1))`
-/

namespace A292250.P920417877604819753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292240 (A254115 (n + 1)).toNat

end

end A292250.P920417877604819753

namespace A292250

/-- `A292240(A254115(n+1))` -/
def P920417877604819753.Spec : Prop :=
  ∀ n, P920417877604819753.a n = A292250 (n + 1)

end A292250

/-!
# A292251: The 3-adic valuation of A048673(n).

The programs for A292251, the canonical program `A292251.P3001000153096971167` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292251 has offset 1).

The definition of A292251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292251.P3001000153096971167

`A007814(1+A292250(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A292251

/-- `A007814(1+A292250(n+1))` -/
def P3001000153096971167.Spec : Prop :=
  ∀ n, P3001000153096971167.a n = A292251 (n + 1)

theorem P3001000153096971167.correct : P3001000153096971167.Spec := by
  intro n
  simp only [A292251, Nat.add_sub_cancel]

end A292251

/-! ## A292251.P12772688714774337666

`A292252(2*(n+1))-1`
-/

namespace A292251.P12772688714774337666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (2 * (n + 1)) - 1

end

end A292251.P12772688714774337666

namespace A292251

/-- `A292252(2*(n+1))-1` -/
def P12772688714774337666.Spec : Prop :=
  ∀ n, P12772688714774337666.a n = A292251 (n + 1)

end A292251

/-! ## A292251.P5969694003201988337

`A007949(A048673(n+1))`
-/

namespace A292251.P5969694003201988337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A048673 (n + 1)).toNat

end

end A292251.P5969694003201988337

namespace A292251

/-- `A007949(A048673(n+1))` -/
def P5969694003201988337.Spec : Prop :=
  ∀ n, P5969694003201988337.a n = A292251 (n + 1)

end A292251

/-! ## A292251.P1947660116551426287

`val(A243501(n+1), 3)`
-/

namespace A292251.P1947660116551426287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243501 (n + 1)).toNat 3

end

end A292251.P1947660116551426287

namespace A292251

/-- `val(A243501(n+1), 3)` -/
def P1947660116551426287.Spec : Prop :=
  ∀ n, (P1947660116551426287.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P5499426379353903223

`val(A253885(n)+2, 3)`
-/

namespace A292251.P5499426379353903223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253885 n + 2).toNat 3

end

end A292251.P5499426379353903223

namespace A292251

/-- `val(A253885(n)+2, 3)` -/
def P5499426379353903223.Spec : Prop :=
  ∀ n, (P5499426379353903223.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P2333203812464745789

`val(A003961(n+1)+1, 3)`
-/

namespace A292251.P2333203812464745789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003961 (n + 1) + 1).toNat 3

end

end A292251.P2333203812464745789

namespace A292251

/-- `val(A003961(n+1)+1, 3)` -/
def P2333203812464745789.Spec : Prop :=
  ∀ n, (P2333203812464745789.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P1801184010706135160

`val(A283980(n+1)+1, 3)`
-/

namespace A292251.P1801184010706135160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283980 (n + 1) + 1).toNat 3

end

end A292251.P1801184010706135160

namespace A292251

/-- `val(A283980(n+1)+1, 3)` -/
def P1801184010706135160.Spec : Prop :=
  ∀ n, (P1801184010706135160.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P5527858291840735865

`val(or(1, A045965(n+1)-1)+1, 3)`
-/

namespace A292251.P5527858291840735865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor 1 (A045965 (n + 1) - 1) + 1).toNat 3

end

end A292251.P5527858291840735865

namespace A292251

/-- `val(or(1, A045965(n+1)-1)+1, 3)` -/
def P5527858291840735865.Spec : Prop :=
  ∀ n, (P5527858291840735865.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P7952183909540263387

`val(A243500(2*(n+1)), 5)`
-/

namespace A292251.P7952183909540263387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243500 (2 * (n + 1))).toNat 5

end

end A292251.P7952183909540263387

namespace A292251

/-- `val(A243500(2*(n+1)), 5)` -/
def P7952183909540263387.Spec : Prop :=
  ∀ n, (P7952183909540263387.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P6758623203092129245

`val(A249810(2*(n+1)), 3)`
-/

namespace A292251.P6758623203092129245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249810 (2 * (n + 1))).toNat 3

end

end A292251.P6758623203092129245

namespace A292251

/-- `val(A249810(2*(n+1)), 3)` -/
def P6758623203092129245.Spec : Prop :=
  ∀ n, (P6758623203092129245.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P11003864669050183647

`val(A297166(2*(n+1))+1, 3)`
-/

namespace A292251.P11003864669050183647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A297166 (2 * (n + 1)) + 1).toNat 3

end

end A292251.P11003864669050183647

namespace A292251

/-- `val(A297166(2*(n+1))+1, 3)` -/
def P11003864669050183647.Spec : Prop :=
  ∀ n, (P11003864669050183647.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P3553257190051303563

`val(A283464(2*(n+1)), 3)`
-/

namespace A292251.P3553257190051303563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283464 (2 * (n + 1))).toNat 3

end

end A292251.P3553257190051303563

namespace A292251

/-- `val(A283464(2*(n+1)), 3)` -/
def P3553257190051303563.Spec : Prop :=
  ∀ n, (P3553257190051303563.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P17389440131171615310

`A007949(A243501(n+1)/2)`
-/

namespace A292251.P17389440131171615310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A292251.P17389440131171615310

namespace A292251

/-- `A007949(A243501(n+1)/2)` -/
def P17389440131171615310.Spec : Prop :=
  ∀ n, P17389440131171615310.a n = A292251 (n + 1)

end A292251

/-! ## A292251.P18260966890667655633

`A007949((A003961(n+1)+1)/2)`
-/

namespace A292251.P18260966890667655633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A292251.P18260966890667655633

namespace A292251

/-- `A007949((A003961(n+1)+1)/2)` -/
def P18260966890667655633.Spec : Prop :=
  ∀ n, P18260966890667655633.a n = A292251 (n + 1)

end A292251

/-! ## A292251.P15565635098016648998

`A253786(A003602(A048673(A003602(2*n+1))))`
-/

namespace A292251.P15565635098016648998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A003602 (A048673 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A292251.P15565635098016648998

namespace A292251

/-- `A253786(A003602(A048673(A003602(2*n+1))))` -/
def P15565635098016648998.Spec : Prop :=
  ∀ n, P15565635098016648998.a n = A292251 (n + 1)

end A292251

/-! ## A292251.P14070869085538166916

`A007814(A064989(A048673(A048673(A064216(n+1)))))`
-/

namespace A292251.P14070869085538166916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A064989 (A048673 (A048673 (A064216 (n + 1)).toNat).toNat).toNat).toNat

end

end A292251.P14070869085538166916

namespace A292251

/-- `A007814(A064989(A048673(A048673(A064216(n+1)))))` -/
def P14070869085538166916.Spec : Prop :=
  ∀ n, P14070869085538166916.a n = A292251 (n + 1)

end A292251

/-! ## A292251.P8508988345810742038

`A007949(lcm(2, ceil(A297166(2*(n+1))/2)))`
-/

namespace A292251.P8508988345810742038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (Int.lcm 2 ⌈(A297166 (2 * (n + 1)) : ℚ) / 2⌉)

end

end A292251.P8508988345810742038

namespace A292251

/-- `A007949(lcm(2, ceil(A297166(2*(n+1))/2)))` -/
def P8508988345810742038.Spec : Prop :=
  ∀ n, P8508988345810742038.a n = A292251 (n + 1)

end A292251

/-! ## A292251.P13506938745747064887

`val(A266646(2*(n+1)), 3)`
-/

namespace A292251.P13506938745747064887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266646 (2 * (n + 1))).toNat 3

end

end A292251.P13506938745747064887

namespace A292251

/-- `val(A266646(2*(n+1)), 3)` -/
def P13506938745747064887.Spec : Prop :=
  ∀ n, (P13506938745747064887.a n : ℤ) = A292251 (n + 1)

end A292251

/-! ## A292251.P2607895331480086735

`A007949(A243501(n+1))`
-/

namespace A292251.P2607895331480086735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A243501 (n + 1)).toNat

end

end A292251.P2607895331480086735

namespace A292251

/-- `A007949(A243501(n+1))` -/
def P2607895331480086735.Spec : Prop :=
  ∀ n, P2607895331480086735.a n = A292251 (n + 1)

end A292251

/-!
# A292252: Number of trailing 2-digits in ternary representation of A048673(n).

The programs for A292252, the canonical program `A292252.P1921198620842257846` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292252 has offset 1).

The definition of A292252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291759, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292252.P1921198620842257846

`A007814(1+A291759(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A292252

/-- `A007814(1+A291759(n+1))` -/
def P1921198620842257846.Spec : Prop :=
  ∀ n, P1921198620842257846.a n = A292252 (n + 1)

theorem P1921198620842257846.correct : P1921198620842257846.Spec := by
  intro n
  simp only [A292252, Nat.add_sub_cancel]

end A292252

/-! ## A292252.P6513762878251353606

`A007949(1+A048673(n+1))`
-/

namespace A292252.P6513762878251353606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (1 + A048673 (n + 1)).toNat

end

end A292252.P6513762878251353606

namespace A292252

/-- `A007949(1+A048673(n+1))` -/
def P6513762878251353606.Spec : Prop :=
  ∀ n, P6513762878251353606.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P13393471598436595332

`val(A003961(n+1)+3, 3)`
-/

namespace A292252.P13393471598436595332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003961 (n + 1) + 3).toNat 3

end

end A292252.P13393471598436595332

namespace A292252

/-- `val(A003961(n+1)+3, 3)` -/
def P13393471598436595332.Spec : Prop :=
  ∀ n, (P13393471598436595332.a n : ℤ) = A292252 (n + 1)

end A292252

/-! ## A292252.P6957960493373085219

`val(5*(A253885(n)+4), 3)`
-/

namespace A292252.P6957960493373085219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (5 * (A253885 n + 4)).toNat 3

end

end A292252.P6957960493373085219

namespace A292252

/-- `val(5*(A253885(n)+4), 3)` -/
def P6957960493373085219.Spec : Prop :=
  ∀ n, (P6957960493373085219.a n : ℤ) = A292252 (n + 1)

end A292252

/-! ## A292252.P956595007719276190

`val(A252748(n+1)+2*(n+1)+3, 3)`
-/

namespace A292252.P956595007719276190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A252748 (n + 1) + (2 * (n + 1) : ℤ) + 3).toNat 3

end

end A292252.P956595007719276190

namespace A292252

/-- `val(A252748(n+1)+2*(n+1)+3, 3)` -/
def P956595007719276190.Spec : Prop :=
  ∀ n, (P956595007719276190.a n : ℤ) = A292252 (n + 1)

end A292252

/-! ## A292252.P14844368803426927547

`A168570(A266646(n+1))`
-/

namespace A292252.P14844368803426927547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (A266646 (n + 1)).toNat

end

end A292252.P14844368803426927547

namespace A292252

/-- `A168570(A266646(n+1))` -/
def P14844368803426927547.Spec : Prop :=
  ∀ n, P14844368803426927547.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P10824984136869741068

`A292251(A302847(n+2))`
-/

namespace A292252.P10824984136869741068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A302847 (n + 2)).toNat

end

end A292252.P10824984136869741068

namespace A292252

/-- `A292251(A302847(n+2))` -/
def P10824984136869741068.Spec : Prop :=
  ∀ n, P10824984136869741068.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P11038991408897436451

`A007949(A243501(n+1)/2+1)`
-/

namespace A292252.P11038991408897436451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A292252.P11038991408897436451

namespace A292252

/-- `A007949(A243501(n+1)/2+1)` -/
def P11038991408897436451.Spec : Prop :=
  ∀ n, P11038991408897436451.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P8364876849801420332

`A007949((A003961(n+1)+1)/2+1)`
-/

namespace A292252.P8364876849801420332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2 + 1)).toNat

end

end A292252.P8364876849801420332

namespace A292252

/-- `A007949((A003961(n+1)+1)/2+1)` -/
def P8364876849801420332.Spec : Prop :=
  ∀ n, P8364876849801420332.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P4353723276745527297

`A007949(ceil(A297166(2*(n+1))/2)+1)`
-/

namespace A292252.P4353723276745527297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (⌈(A297166 (2 * (n + 1)) : ℚ) / 2⌉ + 1).toNat

end

end A292252.P4353723276745527297

namespace A292252

/-- `A007949(ceil(A297166(2*(n+1))/2)+1)` -/
def P4353723276745527297.Spec : Prop :=
  ∀ n, P4353723276745527297.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P948412906043327443

`A007949(round(A297166(2*(n+1))/2)+1)`
-/

namespace A292252.P948412906043327443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A297166 (2 * (n + 1)) : ℚ) / 2) + 1).toNat

end

end A292252.P948412906043327443

namespace A292252

/-- `A007949(round(A297166(2*(n+1))/2)+1)` -/
def P948412906043327443.Spec : Prop :=
  ∀ n, P948412906043327443.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P8124523146332637893

`A007949(A243501(n+1)+2)`
-/

namespace A292252.P8124523146332637893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A243501 (n + 1) + 2).toNat

end

end A292252.P8124523146332637893

namespace A292252

/-- `A007949(A243501(n+1)+2)` -/
def P8124523146332637893.Spec : Prop :=
  ∀ n, P8124523146332637893.a n = A292252 (n + 1)

end A292252

/-! ## A292252.P6939925114002233241

`A292242(A254115(n+1))`
-/

namespace A292252.P6939925114002233241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (A254115 (n + 1)).toNat

end

end A292252.P6939925114002233241

namespace A292252

/-- `A292242(A254115(n+1))` -/
def P6939925114002233241.Spec : Prop :=
  ∀ n, P6939925114002233241.a n = A292252 (n + 1)

end A292252

/-!
# A292253: a(1) = 0, a(2) = 1, and for n > 2, a(n) = 2*a(A252463(n)) + [n == 1 (mod 2)]*[J(3|n) == 1], where J is the Jacobi-symbol.

The programs for A292253, there is no canonical definition to state claims against.
-/

/-! ## A292253.P17312984654951890668

`A292263(n+1)-A292255(n+1)`
-/

namespace A292253.P17312984654951890668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (n + 1) - A292255 (n + 1)

end

end A292253.P17312984654951890668

/-! ## A292253.P16331036892744833291

`xor(A292255(A000027(n+1)), A292263(n+1))`
-/

namespace A292253.P16331036892744833291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292255 (A000027 (n + 1)).toNat) (A292263 (n + 1))

end

end A292253.P16331036892744833291

/-! ## A292253.P13312217996626012118

`xor(A292255(A252463(2*(n+1))), A292263(n+1))`
-/

namespace A292253.P13312217996626012118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292255 (A252463 (2 * (n + 1))).toNat) (A292263 (n + 1))

end

end A292253.P13312217996626012118

/-! ## A292253.P15314024325507924746

`A243071(n+1)-(A292943(n+1)+A292255(n+1))`
-/

namespace A292253.P15314024325507924746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - (A292943 (n + 1) + A292255 (n + 1))

end

end A292253.P15314024325507924746

/-! ## A292253.P17787221921699513737

`A292941(n+1)+A292945(n+1)-A292255(n+1)`
-/

namespace A292253.P17787221921699513737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292941 (n + 1) + (A292945 (n + 1) - A292255 (n + 1))

end

end A292253.P17787221921699513737

/-! ## A292253.P13020919974449359212

`xor(A292255(n+1), A292263(n+1))%A000051(n)`
-/

namespace A292253.P13020919974449359212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A292255 (n + 1)) (A292263 (n + 1))) (A000051 n)

end

end A292253.P13020919974449359212

/-!
# A292254: a(n) = A292253(A163511(n)).

The programs for A292254, there is no canonical definition to state claims against.
-/

/-! ## A292254.P16117522566591408498

`A292253(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292254.P16117522566591408498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292253 (A163511 n).toNat

end

end A292254.P16117522566591408498

/-! ## A292254.P17929574515588820524

`A292264(n)-A292256(n)`
-/

namespace A292254.P17929574515588820524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 n - A292256 n

end

end A292254.P17929574515588820524

/-! ## A292254.P15708129270787790795

`xor(A292256(A028310(n)), A292264(n))`
-/

namespace A292254.P15708129270787790795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292256 (A028310 n).toNat) (A292264 n)

end

end A292254.P15708129270787790795

/-! ## A292254.P11427114785259847209

`A292942(n)+A292946(n)-A292256(n)`
-/

namespace A292254.P11427114785259847209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292942 n + (A292946 n - A292256 n)

end

end A292254.P11427114785259847209

/-! ## A292254.P17362336278892377408

`xor(A292256(n), A292264(n))%A008706(n)`
-/

namespace A292254.P17362336278892377408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A292256 n) (A292264 n)) (A008706 n)

end

end A292254.P17362336278892377408

/-! ## A292254.P16804820603159298046

`(A000007(n)+1)*xor(A292256(n), A292264(n))`
-/

namespace A292254.P16804820603159298046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * Int.xor (A292256 n) (A292264 n)

end

end A292254.P16804820603159298046

/-! ## A292254.P6359502501265267000

`xor(A292256(n), A292264(n))*A019429(2*n)`
-/

namespace A292254.P6359502501265267000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292256 n) (A292264 n) * A019429 (2 * n)

end

end A292254.P6359502501265267000

/-! ## A292254.P12675631115117559395

`xor(A292256(n)%A004754(n+1), A292264(n))`
-/

namespace A292254.P12675631115117559395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A292256 n) (A004754 (n + 1))) (A292264 n)

end

end A292254.P12675631115117559395

/-! ## A292254.P4088576421363891891

`xor(A292256(n), A292264(n))+A005843(n)%2`
-/

namespace A292254.P4088576421363891891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292256 n) (A292264 n) + Int.tmod (A005843 n) 2

end

end A292254.P4088576421363891891

/-! ## A292254.P7544379431561171609

`xor(A292256(n), A292264(n))+(n+1)%A331738(n+1)`
-/

namespace A292254.P7544379431561171609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292256 n) (A292264 n) + Int.tmod (n + 1 : ℤ) (A331738 (n + 1))

end

end A292254.P7544379431561171609

/-! ## A292254.P12519425350737206214

`xor(A292256(A233583(n+1)), A292264(n))`
-/

namespace A292254.P12519425350737206214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292256 (A233583 (n + 1)).toNat) (A292264 n)

end

end A292254.P12519425350737206214

/-! ## A292254.P3241890457460586940

`A118759(xor(A292256(n), A292264(n)))`
-/

namespace A292254.P3241890457460586940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.xor (A292256 n) (A292264 n)).toNat

end

end A292254.P3241890457460586940

/-!
# A292255: a(1) = 0, and for n > 1, a(n) = 2*a(A252463(n)) + [n == 1 (mod 2)]*[J(3|n) == -1], where J is the Jacobi-symbol.

The programs for A292255, there is no canonical definition to state claims against.
-/

/-! ## A292255.P10483371359864411747

`A292263(n+1)-A292253(n+1)`
-/

namespace A292255.P10483371359864411747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (n + 1) - A292253 (n + 1)

end

end A292255.P10483371359864411747

/-! ## A292255.P1712042118557184722

`xor(A292253(A000027(n+1)), A292263(n+1))`
-/

namespace A292255.P1712042118557184722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292253 (A000027 (n + 1)).toNat) (A292263 (n + 1))

end

end A292255.P1712042118557184722

/-! ## A292255.P12139068816630639825

`xor(A292253(A025480(2*(n+1))), A292263(n+1))`
-/

namespace A292255.P12139068816630639825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292253 (A025480 (2 * (n + 1))).toNat) (A292263 (n + 1))

end

end A292255.P12139068816630639825

/-! ## A292255.P11267794217967294169

`A292941(n+1)+A292945(n+1)-A292253(n+1)`
-/

namespace A292255.P11267794217967294169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292941 (n + 1) + (A292945 (n + 1) - A292253 (n + 1))

end

end A292255.P11267794217967294169

/-! ## A292255.P14701829269590633927

`A292264(A243071(n+1))-A292253(n+1)`
-/

namespace A292255.P14701829269590633927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (A243071 (n + 1)).toNat - A292253 (n + 1)

end

end A292255.P14701829269590633927

/-!
# A292256: a(n) = A292255(A163511(n)).

The programs for A292256, there is no canonical definition to state claims against.
-/

/-! ## A292256.P14566333208927464629

`A292255(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292256.P14566333208927464629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292255 (A163511 n).toNat

end

end A292256.P14566333208927464629

/-! ## A292256.P10825101374353189464

`A292264(n)-A292254(n)`
-/

namespace A292256.P10825101374353189464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 n - A292254 n

end

end A292256.P10825101374353189464

/-! ## A292256.P7418826159067837948

`n-(A292944(n)+A292254(n))`
-/

namespace A292256.P7418826159067837948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A292944 n + A292254 n)

end

end A292256.P7418826159067837948

/-! ## A292256.P5841254008498659238

`A292264(n)%A292254(A000038(n)+n)`
-/

namespace A292256.P5841254008498659238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292264 n) (A292254 (A000038 n + (n : ℤ)).toNat)

end

end A292256.P5841254008498659238

/-! ## A292256.P11046268421553372157

`A292263(A163511(n))-A292254(n)`
-/

namespace A292256.P11046268421553372157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (A163511 n).toNat - A292254 n

end

end A292256.P11046268421553372157

/-!
# A292257: a(n) is the total number of 1's in binary expansion of all proper divisors of n.

The programs for A292257, the canonical program `A292257.P4438175682071365739` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292257 has offset 1).

The definition of A292257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292257.P4438175682071365739

`A192895(n+1)+A000120(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A292257

/-- `A192895(n+1)+A000120(n+1)` -/
def P4438175682071365739.Spec : Prop :=
  ∀ n, P4438175682071365739.a n = A292257 (n + 1)

theorem P4438175682071365739.correct : P4438175682071365739.Spec := by
  intro n
  simp only [A292257, Nat.add_sub_cancel]

end A292257

/-! ## A292257.P13901806498914249702

`A093653(n+1)-A000120(n+1)`
-/

namespace A292257.P13901806498914249702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 1) - A000120 (n + 1)

end

end A292257.P13901806498914249702

namespace A292257

/-- `A093653(n+1)-A000120(n+1)` -/
def P13901806498914249702.Spec : Prop :=
  ∀ n, P13901806498914249702.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P18190909082831008802

`A001222(A293214(n+1))`
-/

namespace A292257.P18190909082831008802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293214 (n + 1)).toNat

end

end A292257.P18190909082831008802

namespace A292257

/-- `A001222(A293214(n+1))` -/
def P18190909082831008802.Spec : Prop :=
  ∀ n, P18190909082831008802.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P2542988247549111847

`A091818(n+1)-A318445(n+1)`
-/

namespace A292257.P2542988247549111847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A318445 (n + 1)

end

end A292257.P2542988247549111847

namespace A292257

/-- `A091818(n+1)-A318445(n+1)` -/
def P2542988247549111847.Spec : Prop :=
  ∀ n, P2542988247549111847.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P6295221014267931068

`A296074(n+1)-A318447(n+1)`
-/

namespace A292257.P6295221014267931068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296074 (n + 1) - A318447 (n + 1)

end

end A292257.P6295221014267931068

namespace A292257

/-- `A296074(n+1)-A318447(n+1)` -/
def P6295221014267931068.Spec : Prop :=
  ∀ n, P6295221014267931068.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P10423040199154935965

`∑{d}[n+1, A000120(#)]-Δ[A000788(n)]`
-/

namespace A292257.P10423040199154935965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 d - (f2 (n + 1) - f2 n)

end

end A292257.P10423040199154935965

namespace A292257

/-- `∑{d}[n+1, A000120(#)]-Δ[A000788(n)]` -/
def P10423040199154935965.Spec : Prop :=
  ∀ n, P10423040199154935965.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P7519669598986547919

`2*A001065(n+1)-A318445(n+1)`
-/

namespace A292257.P7519669598986547919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A318445 (n + 1)

end

end A292257.P7519669598986547919

namespace A292257

/-- `2*A001065(n+1)-A318445(n+1)` -/
def P7519669598986547919.Spec : Prop :=
  ∀ n, P7519669598986547919.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P13943411169113071389

`∑{d}[n+1, A093653(#)*A157658((n+1)/#)]`
-/

namespace A292257.P13943411169113071389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093653 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A292257.P13943411169113071389

namespace A292257

/-- `∑{d}[n+1, A093653(#)*A157658((n+1)/#)]` -/
def P13943411169113071389.Spec : Prop :=
  ∀ n, P13943411169113071389.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P2425735508936102464

`∑{d}[n+1, A032741(#)*A297115((n+1)/#)]`
-/

namespace A292257.P2425735508936102464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A297115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A292257.P2425735508936102464

namespace A292257

/-- `∑{d}[n+1, A032741(#)*A297115((n+1)/#)]` -/
def P2425735508936102464.Spec : Prop :=
  ∀ n, P2425735508936102464.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P13484544787069309277

`∑{d}[n+1, A296074(#)*A379106((n+1)/#)]`
-/

namespace A292257.P13484544787069309277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296074 d * A379106 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A292257.P13484544787069309277

namespace A292257

/-- `∑{d}[n+1, A296074(#)*A379106((n+1)/#)]` -/
def P13484544787069309277.Spec : Prop :=
  ∀ n, P13484544787069309277.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P2903385732353592034

`A182627(n+1)-(A226590(n+1)+A000120(n+1))`
-/

namespace A292257.P2903385732353592034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182627 (n + 1) - (A226590 (n + 1) + A000120 (n + 1))

end

end A292257.P2903385732353592034

namespace A292257

/-- `A182627(n+1)-(A226590(n+1)+A000120(n+1))` -/
def P2903385732353592034.Spec : Prop :=
  ∀ n, P2903385732353592034.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P6021823063232682352

`A296075(n+1)-(A318447(n+1)+A033879(n+1))`
-/

namespace A292257.P6021823063232682352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) - (A318447 (n + 1) + A033879 (n + 1))

end

end A292257.P6021823063232682352

namespace A292257

/-- `A296075(n+1)-(A318447(n+1)+A033879(n+1))` -/
def P6021823063232682352.Spec : Prop :=
  ∀ n, P6021823063232682352.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P10722570712266587684

`A211779(n+1)+A296074(n+1)-A318445(n+1)`
-/

namespace A292257.P10722570712266587684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + (A296074 (n + 1) - A318445 (n + 1))

end

end A292257.P10722570712266587684

namespace A292257

/-- `A211779(n+1)+A296074(n+1)-A318445(n+1)` -/
def P10722570712266587684.Spec : Prop :=
  ∀ n, P10722570712266587684.a n = A292257 (n + 1)

end A292257

/-! ## A292257.P8814405494660747143

`A093653(n+1)-A001222(A019565(n+1))`
-/

namespace A292257.P8814405494660747143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 1) - A001222 (A019565 (n + 1)).toNat

end

end A292257.P8814405494660747143

namespace A292257

/-- `A093653(n+1)-A001222(A019565(n+1))` -/
def P8814405494660747143.Spec : Prop :=
  ∀ n, P8814405494660747143.a n = A292257 (n + 1)

end A292257

/-!
# A292258: a(1) = 1; for n > 1, a(n) = prime(A101296(n)-1) * a(floor(n/2)).

The programs for A292258, the canonical program `A292258.P8908153167971809892` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292258 has offset 1).

The definition of A292258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A101296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292258.P8908153167971809892

`A000040(A101296(n+1)-1)*a(A004526(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A292258

/-- `A000040(A101296(n+1)-1)*a(A004526(n+1)-1)` -/
def P8908153167971809892.Spec : Prop :=
  ∀ n, P8908153167971809892.a n = A292258 (n + 1)

theorem P8908153167971809892.correct : P8908153167971809892.Spec := by
  intro n
  simp only [A292258, Nat.add_sub_cancel]

end A292258

/-!
# A292260: Binary encoding of 0-digits in ternary representation of A245612(n).

The programs for A292260, the canonical program `A292260.P2004989350870370866` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292260 has offset 0).

The definition of A292260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292260.P2004989350870370866

`A291770(A245612(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A292260

/-- `A291770(A245612(n))` -/
def P2004989350870370866.Spec : Prop :=
  ∀ n, P2004989350870370866.a n = A292260 n

theorem P2004989350870370866.correct : P2004989350870370866.Spec := by
  intro n
  simp only [A292260]

end A292260

/-! ## A292260.P9637094003206364544

`A035327(A305295(n)+A291763(n))`
-/

namespace A292260.P9637094003206364544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A305295 n + A291763 n).toNat

end

end A292260.P9637094003206364544

namespace A292260

/-- `A035327(A305295(n)+A291763(n))` -/
def P9637094003206364544.Spec : Prop :=
  ∀ n, P9637094003206364544.a n = A292260 n

end A292260

/-! ## A292260.P5596844643563375437

`A035327(or(A291763(n), A305295(n)))`
-/

namespace A292260.P5596844643563375437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor (A291763 n) (A305295 n)).toNat

end

end A292260.P5596844643563375437

namespace A292260

/-- `A035327(or(A291763(n), A305295(n)))` -/
def P5596844643563375437.Spec : Prop :=
  ∀ n, P5596844643563375437.a n = A292260 n

end A292260

/-! ## A292260.P10476592278098456811

`A035327(xor(A291763(n), A305295(n)))`
-/

namespace A292260.P10476592278098456811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.xor (A291763 n) (A305295 n)).toNat

end

end A292260.P10476592278098456811

namespace A292260

/-- `A035327(xor(A291763(n), A305295(n)))` -/
def P10476592278098456811.Spec : Prop :=
  ∀ n, P10476592278098456811.a n = A292260 n

end A292260

/-! ## A292260.P15945527201679151292

`A292250(A163511(n))`
-/

namespace A292260.P15945527201679151292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292250 (A163511 n).toNat

end

end A292260.P15945527201679151292

namespace A292260

/-- `A292250(A163511(n))` -/
def P15945527201679151292.Spec : Prop :=
  ∀ n, P15945527201679151292.a n = A292260 n

end A292260

/-!
# A292261: The 3-adic valuation of A245612(n).

The programs for A292261, the canonical program `A292261.P9658740137864361157` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292261 has offset 0).

The definition of A292261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292261.P9658740137864361157

`A007814(1+A292260(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A292261

/-- `A007814(1+A292260(n))` -/
def P9658740137864361157.Spec : Prop :=
  ∀ n, P9658740137864361157.a n = A292261 n

theorem P9658740137864361157.correct : P9658740137864361157.Spec := by
  intro n
  simp only [A292261]

end A292261

/-! ## A292261.P15142534929691832251

`A007949(A245612(n))`
-/

namespace A292261.P15142534929691832251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A245612 n).toNat

end

end A292261.P15142534929691832251

namespace A292261

/-- `A007949(A245612(n))` -/
def P15142534929691832251.Spec : Prop :=
  ∀ n, P15142534929691832251.a n = A292261 n

end A292261

/-! ## A292261.P9674762708407229065

`(A292262(2*n)+n)%(n+1)`
-/

namespace A292261.P9674762708407229065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292262 (2 * n) + (n : ℤ)) (n + 1 : ℤ)

end

end A292261.P9674762708407229065

namespace A292261

/-- `(A292262(2*n)+n)%(n+1)` -/
def P9674762708407229065.Spec : Prop :=
  ∀ n, P9674762708407229065.a n = A292261 n

end A292261

/-! ## A292261.P597893313817623318

`A000007(n)+A292262(2*n)-1`
-/

namespace A292261.P597893313817623318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A292262 (2 * n) - 1)

end

end A292261.P597893313817623318

namespace A292261

/-- `A000007(n)+A292262(2*n)-1` -/
def P597893313817623318.Spec : Prop :=
  ∀ n, P597893313817623318.a n = A292261 n

end A292261

/-! ## A292261.P5541676482232892307

`A292262(record[1-A292262(n)+n])-1`
-/

namespace A292261.P5541676482232892307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A292262 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A292261.P5541676482232892307

namespace A292261

/-- `A292262(record[1-A292262(n)+n])-1` -/
def P5541676482232892307.Spec : Prop :=
  ∀ n, P5541676482232892307.a n = A292261 n

end A292261

/-! ## A292261.P1379885661021566722

`A255738(2*(n+1))+A292262(2*n)-1`
-/

namespace A292261.P1379885661021566722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (2 * (n + 1)) + (A292262 (2 * n) - 1)

end

end A292261.P1379885661021566722

namespace A292261

/-- `A255738(2*(n+1))+A292262(2*n)-1` -/
def P1379885661021566722.Spec : Prop :=
  ∀ n, P1379885661021566722.a n = A292261 n

end A292261

/-! ## A292261.P4635290851028590981

`A292262(2*n+1)+A292262(2*n)-1`
-/

namespace A292261.P4635290851028590981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (2 * n + 1) + (A292262 (2 * n) - 1)

end

end A292261.P4635290851028590981

namespace A292261

/-- `A292262(2*n+1)+A292262(2*n)-1` -/
def P4635290851028590981.Spec : Prop :=
  ∀ n, P4635290851028590981.a n = A292261 n

end A292261

/-! ## A292261.P14515636778200748271

`A292262(2*n)-n/A065033(2*n)`
-/

namespace A292261.P14515636778200748271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292262 (2 * n) : ℚ) - (n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A292261.P14515636778200748271

namespace A292261

/-- `A292262(2*n)-n/A065033(2*n)` -/
def P14515636778200748271.Spec : Prop :=
  ∀ n, P14515636778200748271.a n = (A292261 n : ℚ)

end A292261

/-! ## A292261.P13889723222525701440

`A292262(2*n)-A292262(4*n)`
-/

namespace A292261.P13889723222525701440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (2 * n) - A292262 (4 * n)

end

end A292261.P13889723222525701440

namespace A292261

/-- `A292262(2*n)-A292262(4*n)` -/
def P13889723222525701440.Spec : Prop :=
  ∀ n, P13889723222525701440.a n = A292261 n

end A292261

/-! ## A292261.P3831080451161863666

`val(ceil(A163511(A016813(n))/6), 3)`
-/

namespace A292261.P3831080451161863666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈(A163511 (A016813 n).toNat : ℚ) / 6⌉.toNat 3

end

end A292261.P3831080451161863666

namespace A292261

/-- `val(ceil(A163511(A016813(n))/6), 3)` -/
def P3831080451161863666.Spec : Prop :=
  ∀ n, (P3831080451161863666.a n : ℤ) = A292261 n

end A292261

/-! ## A292261.P4524645188298181575

`A292251(A163511(n))`
-/

namespace A292261.P4524645188298181575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A163511 n).toNat

end

end A292261.P4524645188298181575

namespace A292261

/-- `A292251(A163511(n))` -/
def P4524645188298181575.Spec : Prop :=
  ∀ n, P4524645188298181575.a n = A292261 n

end A292261

/-! ## A292261.P47521557094798306

`A292252(2*A163511(n))-1`
-/

namespace A292261.P47521557094798306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (2 * A163511 n).toNat - 1

end

end A292261.P47521557094798306

namespace A292261

/-- `A292252(2*A163511(n))-1` -/
def P47521557094798306.Spec : Prop :=
  ∀ n, P47521557094798306.a n = A292261 n

end A292261

/-!
# A292262: Number of trailing 2-digits in ternary representation of A245612(n).

The programs for A292262, the canonical program `A292262.P8551215429045952693` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292262 has offset 0).

The definition of A292262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291763, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292262.P8551215429045952693

`A007814(1+A291763(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A292262

/-- `A007814(1+A291763(n))` -/
def P8551215429045952693.Spec : Prop :=
  ∀ n, P8551215429045952693.a n = A292262 n

theorem P8551215429045952693.correct : P8551215429045952693.Spec := by
  intro n
  simp only [A292262]

end A292262

/-! ## A292262.P14386735833048133282

`A007949(1+A245612(n))`
-/

namespace A292262.P14386735833048133282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (1 + A245612 n).toNat

end

end A292262.P14386735833048133282

namespace A292262

/-- `A007949(1+A245612(n))` -/
def P14386735833048133282.Spec : Prop :=
  ∀ n, P14386735833048133282.a n = A292262 n

end A292262

/-! ## A292262.P6019873664320043841

`A007953(val(A291763(n)+1, 2))`
-/

namespace A292262.P6019873664320043841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.valuation (A291763 n + 1).toNat 2)

end

end A292262.P6019873664320043841

namespace A292262

/-- `A007953(val(A291763(n)+1, 2))` -/
def P6019873664320043841.Spec : Prop :=
  ∀ n, P6019873664320043841.a n = A292262 n

end A292262

/-! ## A292262.P9547099107548677420

`val(A163511(2*n+1)+3, 3)`
-/

namespace A292262.P9547099107548677420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163511 (2 * n + 1) + 3).toNat 3

end

end A292262.P9547099107548677420

namespace A292262

/-- `val(A163511(2*n+1)+3, 3)` -/
def P9547099107548677420.Spec : Prop :=
  ∀ n, (P9547099107548677420.a n : ℤ) = A292262 n

end A292262

/-! ## A292262.P3699216397118396591

`A292252(A163511(n)%A335201(n+1))`
-/

namespace A292262.P3699216397118396591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (Int.tmod (A163511 n) (A335201 (n + 1))).toNat

end

end A292262.P3699216397118396591

namespace A292262

/-- `A292252(A163511(n)%A335201(n+1))` -/
def P3699216397118396591.Spec : Prop :=
  ∀ n, P3699216397118396591.a n = A292262 n

end A292262

/-! ## A292262.P653347160463558750

`A292252(gcd(A163511(n), A169611(3*n+1)))`
-/

namespace A292262.P653347160463558750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (Int.gcd (A163511 n) (A169611 (3 * n + 1)))

end

end A292262.P653347160463558750

namespace A292262

/-- `A292252(gcd(A163511(n), A169611(3*n+1)))` -/
def P653347160463558750.Spec : Prop :=
  ∀ n, P653347160463558750.a n = A292262 n

end A292262

/-! ## A292262.P16124522353607170437

`A292252(A163511(n))`
-/

namespace A292262.P16124522353607170437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (A163511 n).toNat

end

end A292262.P16124522353607170437

namespace A292262

/-- `A292252(A163511(n))` -/
def P16124522353607170437.Spec : Prop :=
  ∀ n, P16124522353607170437.a n = A292262 n

end A292262

/-!
# A292263: a(n) = A292264(A243071(n)).

The programs for A292263, the canonical program `A292263.P10457283583550599767` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292263 has offset 1).

The definition of A292263 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A292264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292263.P7764532331547167792

`A292253(n+1)+A292255(n+1)`
-/

namespace A292263.P7764532331547167792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292253 (n + 1) + A292255 (n + 1)

end

end A292263.P7764532331547167792

namespace A292263

/-- `A292253(n+1)+A292255(n+1)` -/
def P7764532331547167792.Spec : Prop :=
  ∀ n, P7764532331547167792.a n = A292263 (n + 1)

end A292263

/-! ## A292263.P877081423892589013

`A292941(n+1)+A292945(n+1)`
-/

namespace A292263.P877081423892589013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292941 (n + 1) + A292945 (n + 1)

end

end A292263.P877081423892589013

namespace A292263

/-- `A292941(n+1)+A292945(n+1)` -/
def P877081423892589013.Spec : Prop :=
  ∀ n, P877081423892589013.a n = A292263 (n + 1)

end A292263

/-! ## A292263.P10457283583550599767

`A292264(A243071(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292263

/-- `A292264(A243071(n+1))` -/
def P10457283583550599767.Spec : Prop :=
  ∀ n, P10457283583550599767.a n = A292263 (n + 1)

theorem P10457283583550599767.correct : P10457283583550599767.Spec := by
  intro n
  simp only [A292263, Nat.add_sub_cancel]

end A292263

/-! ## A292263.P12595574391279638451

`A243071(n+1)-A292943(n+1)`
-/

namespace A292263.P12595574391279638451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - A292943 (n + 1)

end

end A292263.P12595574391279638451

namespace A292263

/-- `A243071(n+1)-A292943(n+1)` -/
def P12595574391279638451.Spec : Prop :=
  ∀ n, P12595574391279638451.a n = A292263 (n + 1)

end A292263

/-! ## A292263.P5811768801494837394

`xor(A243071(A000027(n+1)), A292943(n+1))`
-/

namespace A292263.P5811768801494837394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243071 (A000027 (n + 1)).toNat) (A292943 (n + 1))

end

end A292263.P5811768801494837394

namespace A292263

/-- `xor(A243071(A000027(n+1)), A292943(n+1))` -/
def P5811768801494837394.Spec : Prop :=
  ∀ n, P5811768801494837394.a n = A292263 (n + 1)

end A292263

/-! ## A292263.P7036482198256394786

`A332811(A108548(n+1))-A292943(n+1)`
-/

namespace A292263.P7036482198256394786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A108548 (n + 1)).toNat - A292943 (n + 1)

end

end A292263.P7036482198256394786

namespace A292263

/-- `A332811(A108548(n+1))-A292943(n+1)` -/
def P7036482198256394786.Spec : Prop :=
  ∀ n, P7036482198256394786.a n = A292263 (n + 1)

end A292263

/-! ## A292263.P14639396221763721907

`A252756(A250245(n+1))-A292943(n+1)`
-/

namespace A292263.P14639396221763721907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A250245 (n + 1)).toNat - A292943 (n + 1)

end

end A292263.P14639396221763721907

namespace A292263

/-- `A252756(A250245(n+1))-A292943(n+1)` -/
def P14639396221763721907.Spec : Prop :=
  ∀ n, P14639396221763721907.a n = A292263 (n + 1)

end A292263

/-! ## A292263.P1384356191905501105

`A269386(A302025(n+1))-A292943(n+1)`
-/

namespace A292263.P1384356191905501105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A302025 (n + 1)).toNat - A292943 (n + 1)

end

end A292263.P1384356191905501105

namespace A292263

/-- `A269386(A302025(n+1))-A292943(n+1)` -/
def P1384356191905501105.Spec : Prop :=
  ∀ n, P1384356191905501105.a n = A292263 (n + 1)

end A292263

/-! ## A292263.P6035541733266652459

`A003188(A075158(n))-A292943(n+1)`
-/

namespace A292263.P6035541733266652459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A075158 n).toNat - A292943 (n + 1)

end

end A292263.P6035541733266652459

namespace A292263

/-- `A003188(A075158(n))-A292943(n+1)` -/
def P6035541733266652459.Spec : Prop :=
  ∀ n, P6035541733266652459.a n = A292263 (n + 1)

end A292263

/-!
# A292264: a(n) = n - A292944(n).

The programs for A292264, the canonical program `A292264.P10434189468318484409` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292264 has offset 0).

The definition of A292264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292264.P10434189468318484409

`n-A292944(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A292264

/-- `n-A292944(n)` -/
def P10434189468318484409.Spec : Prop :=
  ∀ n, P10434189468318484409.a n = A292264 n

theorem P10434189468318484409.correct : P10434189468318484409.Spec := by
  intro n
  simp only [A292264]

end A292264

/-! ## A292264.P1357458309234757085

`A292254(n)+A292256(n)`
-/

namespace A292264.P1357458309234757085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292254 n + A292256 n

end

end A292264.P1357458309234757085

namespace A292264

/-- `A292254(n)+A292256(n)` -/
def P1357458309234757085.Spec : Prop :=
  ∀ n, P1357458309234757085.a n = A292264 n

end A292264

/-! ## A292264.P5696275922145327584

`A292942(n)+A292946(n)`
-/

namespace A292264.P5696275922145327584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292942 n + A292946 n

end

end A292264.P5696275922145327584

namespace A292264

/-- `A292942(n)+A292946(n)` -/
def P5696275922145327584.Spec : Prop :=
  ∀ n, P5696275922145327584.a n = A292264 n

end A292264

/-! ## A292264.P1723404036530056849

`A292263(A163511(n))`
-/

namespace A292264.P1723404036530056849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (A163511 n).toNat

end

end A292264.P1723404036530056849

namespace A292264

/-- `A292263(A163511(n))` -/
def P1723404036530056849.Spec : Prop :=
  ∀ n, P1723404036530056849.a n = A292264 n

end A292264

/-! ## A292264.P5962465844922353747

`n-and(2*n, A092569(n))/2`
-/

namespace A292264.P5962465844922353747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.land (2 * n : ℤ) (A092569 n) : ℚ) / 2

end

end A292264.P5962465844922353747

namespace A292264

/-- `n-and(2*n, A092569(n))/2` -/
def P5962465844922353747.Spec : Prop :=
  ∀ n, P5962465844922353747.a n = (A292264 n : ℚ)

end A292264

/-! ## A292264.P2959633893952273336

`and(n, A063946(A180201(n)))`
-/

namespace A292264.P2959633893952273336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A063946 (A180201 n).toNat)

end

end A292264.P2959633893952273336

namespace A292264

/-- `and(n, A063946(A180201(n)))` -/
def P2959633893952273336.Spec : Prop :=
  ∀ n, P2959633893952273336.a n = A292264 n

end A292264

/-! ## A292264.P4686425710054015475

`n-A292272(n-A053644(n))`
-/

namespace A292264.P4686425710054015475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292272 ((n : ℤ) - A053644 n).toNat

end

end A292264.P4686425710054015475

namespace A292264

/-- `n-A292272(n-A053644(n))` -/
def P4686425710054015475.Spec : Prop :=
  ∀ n, P4686425710054015475.a n = A292264 n

end A292264

/-! ## A292264.P11652035294026371927

`n-and(A233280(n), A318934(n+1))`
-/

namespace A292264.P11652035294026371927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A233280 n) (A318934 (n + 1))

end

end A292264.P11652035294026371927

namespace A292264

/-- `n-and(A233280(n), A318934(n+1))` -/
def P11652035294026371927.Spec : Prop :=
  ∀ n, P11652035294026371927.a n = A292264 n

end A292264

/-! ## A292264.P2941165498975925535

`A053644(n)+A048735(n-A053644(n))`
-/

namespace A292264.P2941165498975925535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A048735 ((n : ℤ) - A053644 n).toNat

end

end A292264.P2941165498975925535

namespace A292264

/-- `A053644(n)+A048735(n-A053644(n))` -/
def P2941165498975925535.Spec : Prop :=
  ∀ n, P2941165498975925535.a n = A292264 n

end A292264

/-! ## A292264.P16694252430478374322

`n-A377404(A233280(n))`
-/

namespace A292264.P16694252430478374322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A377404 (A233280 n).toNat

end

end A292264.P16694252430478374322

namespace A292264

/-- `n-A377404(A233280(n))` -/
def P16694252430478374322.Spec : Prop :=
  ∀ n, P16694252430478374322.a n = A292264 n

end A292264

/-! ## A292264.P12518850438829747164

`and(n, A261349(2*n))`
-/

namespace A292264.P12518850438829747164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A261349 (2 * n))

end

end A292264.P12518850438829747164

namespace A292264

/-- `and(n, A261349(2*n))` -/
def P12518850438829747164.Spec : Prop :=
  ∀ n, P12518850438829747164.a n = A292264 n

end A292264

/-! ## A292264.P12613291804401063206

`A053644(n)+A048735(A053644(n)+n)`
-/

namespace A292264.P12613291804401063206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A048735 (A053644 n + (n : ℤ)).toNat

end

end A292264.P12613291804401063206

namespace A292264

/-- `A053644(n)+A048735(A053644(n)+n)` -/
def P12613291804401063206.Spec : Prop :=
  ∀ n, P12613291804401063206.a n = A292264 n

end A292264

/-! ## A292264.P4191293824366281890

`and(n, A154436(n))`
-/

namespace A292264.P4191293824366281890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A154436 n)

end

end A292264.P4191293824366281890

namespace A292264

/-- `and(n, A154436(n))` -/
def P4191293824366281890.Spec : Prop :=
  ∀ n, P4191293824366281890.a n = A292264 n

end A292264

/-!
# A292265: A multiplicative encoding (compressed) for the exponents of 2 obtained when using Shevelev's algorithm for computing A002326.

The programs for A292265, there is no canonical definition to state claims against.
-/

/-! ## A292265.P7657050511810834747

`A063571(6*A171448(n))`
-/

namespace A292265.P7657050511810834747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063571 (6 * A171448 n).toNat

end

end A292265.P7657050511810834747

/-! ## A292265.P15124177835660206666

`A165122(A002001(n))*A187618(n)`
-/

namespace A292265.P15124177835660206666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165122 (A002001 n).toNat * A187618 n

end

end A292265.P15124177835660206666

/-!
# A292268: Compound filter (multiplicative order of 2 mod 2n+1 & number of trailing 1's in binary expansion of 2n+1): a(n) = P(A002326(n), A007814(2n+2)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A292268, there is no canonical definition to state claims against.
-/

/-! ## A292268.P9912400264294149134

`1/2*(2+(A002326(n)+A007814(2*(1+n)))²-A002326(n)-3*A007814(2*(1+n)))`
-/

namespace A292268.P9912400264294149134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A002326 n + A007814 (2 * (1 + n))) ^ 2 - A002326 n) - 3 * A007814 (2 * (1 + n)) : ℚ)

end

end A292268.P9912400264294149134

/-!
# A292269: If n is 1 or a prime, then a(n) = 1, otherwise a(n) = the third smallest divisor of n.

The programs for A292269, there is no canonical definition to state claims against.
-/

/-! ## A292269.P11474547456253980467

`A027750(record[(n+1)/A027751(n+1)]+n+1)`
-/

namespace A292269.P11474547456253980467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A027751 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ) + 1)).toNat

end

end A292269.P11474547456253980467

/-! ## A292269.P7386829883919857605

`A027750(A157532(n+1)+A006218(n))`
-/

namespace A292269.P7386829883919857605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A157532 (n + 1) + A006218 n).toNat

end

end A292269.P7386829883919857605

/-! ## A292269.P11290083952726825924

`A027750(A006218(n)+3%A000124(n+1))`
-/

namespace A292269.P11290083952726825924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A006218 n + Int.tmod 3 (A000124 (n + 1))).toNat

end

end A292269.P11290083952726825924

/-! ## A292269.P16642265328947206894

`A027750((A006218(n)+3)%A002522(n+1))`
-/

namespace A292269.P16642265328947206894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (Int.tmod (A006218 n + 3) (A002522 (n + 1))).toNat

end

end A292269.P16642265328947206894

/-! ## A292269.P692571125373147711

`A027750((A054519(n)+1)%A051336(n+1)+1)`
-/

namespace A292269.P692571125373147711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (Int.tmod (A054519 n + 1) (A051336 (n + 1)) + 1).toNat

end

end A292269.P692571125373147711

/-! ## A292269.P3774653866602609114

`A027750((A006218(n)+2)%A051336(n+1)+1)`
-/

namespace A292269.P3774653866602609114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (Int.tmod (A006218 n + 2) (A051336 (n + 1)) + 1).toNat

end

end A292269.P3774653866602609114

/-!
# A292270: Sum of all partial fractions in the algorithm used for calculation of A002326(n).

The programs for A292270, there is no canonical definition to state claims against.
-/

/-! ## A292270.P13789034875826771537

`A293219(n)²*A293218(n)`
-/

namespace A292270.P13789034875826771537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293219 n ^ 2 * A293218 n

end

end A292270.P13789034875826771537

/-! ## A292270.P11447422225875118379

`A293218(gcd(n, 2*n))*A293219(n)*A293219(n)`
-/

namespace A292270.P11447422225875118379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 (Nat.gcd n (2 * n)) * A293219 n * A293219 n

end

end A292270.P11447422225875118379

/-! ## A292270.P9574502055381673991

`A293218(A028310(n))*A293219(n)*A293219(n)`
-/

namespace A292270.P9574502055381673991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 (A028310 n).toNat * A293219 n * A293219 n

end

end A292270.P9574502055381673991

/-! ## A292270.P13236174147448693054

`A292947(n)^A214716(A104184(n))`
-/

namespace A292270.P13236174147448693054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292947 n : ℚ) ^ (A214716 (A104184 n).toNat : ℤ)

end

end A292270.P13236174147448693054

/-! ## A292270.P3488903128917965588

`A292947(n)^A214716(A183231(3*n+5))`
-/

namespace A292270.P3488903128917965588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292947 n : ℚ) ^ (A214716 (A183231 (3 * n + 5)).toNat : ℤ)

end

end A292270.P3488903128917965588

/-!
# A292271: a(n) = A292385(A163511(n)).

The programs for A292271, there is no canonical definition to state claims against.
-/

/-! ## A292271.P4451470568841399788

`A292385(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292271.P4451470568841399788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292385 (A163511 n).toNat

end

end A292271.P4451470568841399788

/-! ## A292271.P17420247733638724969

`n-A292274(n)`
-/

namespace A292271.P17420247733638724969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292274 n

end

end A292271.P17420247733638724969

/-! ## A292271.P3025426865125447159

`xor(n, A292274(xor(1, xor(1, n))))`
-/

namespace A292271.P3025426865125447159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292274 (Nat.xor 1 (Nat.xor 1 n)))

end

end A292271.P3025426865125447159

/-! ## A292271.P18415555835253423303

`record[A093178(n)]%(A292274(n)+1+n)`
-/

namespace A292271.P18415555835253423303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A292274 n + 1 + (n : ℤ))

end

end A292271.P18415555835253423303

/-! ## A292271.P11139962770384868104

`A093178(2*n+1)%(A292274(n)+n+1)`
-/

namespace A292271.P11139962770384868104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093178 (2 * n + 1)) (A292274 n + (n + 1 : ℤ))

end

end A292271.P11139962770384868104

/-! ## A292271.P17565319372992610496

`xor(A002251(A002251(n)), A292274(n))`
-/

namespace A292271.P17565319372992610496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002251 (A002251 n).toNat) (A292274 n)

end

end A292271.P17565319372992610496

/-! ## A292271.P9088148357528349687

`xor(A002265(A016813(n)), A292274(n))`
-/

namespace A292271.P9088148357528349687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A016813 n).toNat) (A292274 n)

end

end A292271.P9088148357528349687

/-! ## A292271.P7971594796990084651

`n-A336120(A253565(n))`
-/

namespace A292271.P7971594796990084651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A336120 (A253565 n).toNat

end

end A292271.P7971594796990084651

/-! ## A292271.P8533274528280857116

`A336125(A253565(n))`
-/

namespace A292271.P8533274528280857116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336125 (A253565 n).toNat

end

end A292271.P8533274528280857116

/-! ## A292271.P3109809526782203090

`A292385(A108548(A332817(n)))`
-/

namespace A292271.P3109809526782203090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292385 (A108548 (A332817 n).toNat).toNat

end

end A292271.P3109809526782203090

/-!
# A292272: a(n) = n - A048735(n) = n - (n AND floor(n/2)).

The programs for A292272, the canonical program `A292272.P5703236082678816393` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292272 has offset 0).

The definition of A292272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292272.P1680762727568221308

`A213064(n)/2`
-/

namespace A292272.P1680762727568221308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213064 n : ℚ) / 2

end

end A292272.P1680762727568221308

namespace A292272

/-- `A213064(n)/2` -/
def P1680762727568221308.Spec : Prop :=
  ∀ n, P1680762727568221308.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P5703236082678816393

`n-A048735(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292272

/-- `n-A048735(n)` -/
def P5703236082678816393.Spec : Prop :=
  ∀ n, P5703236082678816393.a n = A292272 n

theorem P5703236082678816393.correct : P5703236082678816393.Spec := by
  intro n
  simp only [A292272]

end A292272

/-! ## A292272.P2871737467935197546

`A292382(A005940(1+n))`
-/

namespace A292272.P2871737467935197546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292382 (A005940 (1 + n)).toNat

end

end A292272.P2871737467935197546

namespace A292272

/-- `A292382(A005940(1+n))` -/
def P2871737467935197546.Spec : Prop :=
  ∀ n, P2871737467935197546.a n = A292272 n

end A292272

/-! ## A292272.P4161175285209079357

`and(n, floor(-n/2))`
-/

namespace A292272.P4161175285209079357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋

end

end A292272.P4161175285209079357

namespace A292272

/-- `and(n, floor(-n/2))` -/
def P4161175285209079357.Spec : Prop :=
  ∀ n, P4161175285209079357.a n = A292272 n

end A292272

/-! ## A292272.P5176570090676955629

`and(2*n, -n)/2`
-/

namespace A292272.P5176570090676955629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A292272.P5176570090676955629

namespace A292272

/-- `and(2*n, -n)/2` -/
def P5176570090676955629.Spec : Prop :=
  ∀ n, P5176570090676955629.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P9165910828516580982

`n-and(n, floor(n/2))`
-/

namespace A292272.P9165910828516580982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A292272.P9165910828516580982

namespace A292272

/-- `n-and(n, floor(n/2))` -/
def P9165910828516580982.Spec : Prop :=
  ∀ n, P9165910828516580982.a n = A292272 n

end A292272

/-! ## A292272.P12618871548305610604

`xor(n, and(n, floor(n/2)))`
-/

namespace A292272.P12618871548305610604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A292272.P12618871548305610604

namespace A292272

/-- `xor(n, and(n, floor(n/2)))` -/
def P12618871548305610604.Spec : Prop :=
  ∀ n, P12618871548305610604.a n = A292272 n

end A292272

/-! ## A292272.P6906601748373385553

`n-and(n, 2*n)/2`
-/

namespace A292272.P6906601748373385553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.land n (2 * n) : ℚ) / 2

end

end A292272.P6906601748373385553

namespace A292272

/-- `n-and(n, 2*n)/2` -/
def P6906601748373385553.Spec : Prop :=
  ∀ n, P6906601748373385553.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P10412825050663199902

`(or(n, 2*n)-n)/2`
-/

namespace A292272.P10412825050663199902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (2 * n) : ℤ) - (n : ℤ) : ℚ) / 2

end

end A292272.P10412825050663199902

namespace A292272

/-- `(or(n, 2*n)-n)/2` -/
def P10412825050663199902.Spec : Prop :=
  ∀ n, P10412825050663199902.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P515687527436983859

`(xor(n, 2*n)+n)/4`
-/

namespace A292272.P515687527436983859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) + n : ℚ) / 4

end

end A292272.P515687527436983859

namespace A292272

/-- `(xor(n, 2*n)+n)/4` -/
def P515687527436983859.Spec : Prop :=
  ∀ n, P515687527436983859.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P3056962293004685808

`xor(n, and(n, 2*n)/2)`
-/

namespace A292272.P3056962293004685808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2))

end

end A292272.P3056962293004685808

namespace A292272

/-- `xor(n, and(n, 2*n)/2)` -/
def P3056962293004685808.Spec : Prop :=
  ∀ n, P3056962293004685808.a n = A292272 n

end A292272

/-! ## A292272.P15727567429251342063

`xor(n, or(n, 2*n))/2`
-/

namespace A292272.P15727567429251342063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.lor n (2 * n)) : ℚ) / 2

end

end A292272.P15727567429251342063

namespace A292272

/-- `xor(n, or(n, 2*n))/2` -/
def P15727567429251342063.Spec : Prop :=
  ∀ n, P15727567429251342063.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P6389730100669486244

`(n-xor(2*n, -n))/4`
-/

namespace A292272.P6389730100669486244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 4

end

end A292272.P6389730100669486244

namespace A292272

/-- `(n-xor(2*n, -n))/4` -/
def P6389730100669486244.Spec : Prop :=
  ∀ n, P6389730100669486244.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P1816772293692118455

`floor(-or(n, -(2*n+1))/2)`
-/

namespace A292272.P1816772293692118455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.lor (n : ℤ) (-(2 * n + 1 : ℤ)) : ℚ) / 2)⌋

end

end A292272.P1816772293692118455

namespace A292272

/-- `floor(-or(n, -(2*n+1))/2)` -/
def P1816772293692118455.Spec : Prop :=
  ∀ n, P1816772293692118455.a n = A292272 n

end A292272

/-! ## A292272.P9322453149466591859

`-ceil(or(n, -(2*n+1))/2)`
-/

namespace A292272.P9322453149466591859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.lor (n : ℤ) (-(2 * n + 1 : ℤ)) : ℚ) / 2⌉

end

end A292272.P9322453149466591859

namespace A292272

/-- `-ceil(or(n, -(2*n+1))/2)` -/
def P9322453149466591859.Spec : Prop :=
  ∀ n, P9322453149466591859.a n = A292272 n

end A292272

/-! ## A292272.P17335497258879866054

`(A229763(n)+n)/2`
-/

namespace A292272.P17335497258879866054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229763 n + (n : ℤ) : ℚ) / 2

end

end A292272.P17335497258879866054

namespace A292272

/-- `(A229763(n)+n)/2` -/
def P17335497258879866054.Spec : Prop :=
  ∀ n, P17335497258879866054.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P15559342957721633142

`(A163617(n)-n)/2`
-/

namespace A292272.P15559342957721633142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163617 n - (n : ℤ) : ℚ) / 2

end

end A292272.P15559342957721633142

namespace A292272

/-- `(A163617(n)-n)/2` -/
def P15559342957721633142.Spec : Prop :=
  ∀ n, P15559342957721633142.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P17019178302834206375

`n-A213370(n)/2`
-/

namespace A292272.P17019178302834206375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A213370 n : ℚ) / 2

end

end A292272.P17019178302834206375

namespace A292272

/-- `n-A213370(n)/2` -/
def P17019178302834206375.Spec : Prop :=
  ∀ n, P17019178302834206375.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P3899365733057084664

`(A048724(n)+n)/4`
-/

namespace A292272.P3899365733057084664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048724 n + (n : ℤ) : ℚ) / 4

end

end A292272.P3899365733057084664

namespace A292272

/-- `(A048724(n)+n)/4` -/
def P3899365733057084664.Spec : Prop :=
  ∀ n, P3899365733057084664.a n = (A292272 n : ℚ)

end A292272

/-! ## A292272.P2370904360829693407

`n-A048728(n)/4`
-/

namespace A292272.P2370904360829693407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A048728 n : ℚ) / 4

end

end A292272.P2370904360829693407

namespace A292272

/-- `n-A048728(n)/4` -/
def P2370904360829693407.Spec : Prop :=
  ∀ n, P2370904360829693407.a n = (A292272 n : ℚ)

end A292272

/-!
# A292273: For odd n: a(n) = 0, and for even n: a(n) = -mu(n), where mu is Moebius function (A008683).

The programs for A292273, the canonical program `A292273.P2848483939684823190` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292273 has offset 1).

The definition of A292273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A087003, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292273.P2848483939684823190

`A087003(n+1)-A008683(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A292273

/-- `A087003(n+1)-A008683(n+1)` -/
def P2848483939684823190.Spec : Prop :=
  ∀ n, P2848483939684823190.a n = A292273 (n + 1)

theorem P2848483939684823190.correct : P2848483939684823190.Spec := by
  intro n
  simp only [A292273, Nat.add_sub_cancel]

end A292273

/-! ## A292273.P993901914359371585

`(A000035(n+1)-1)*A008683(n+1)`
-/

namespace A292273.P993901914359371585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - 1) * A008683 (n + 1)

end

end A292273.P993901914359371585

namespace A292273

/-- `(A000035(n+1)-1)*A008683(n+1)` -/
def P993901914359371585.Spec : Prop :=
  ∀ n, P993901914359371585.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P9980210156915877687

`n%2*round(-∏{p}[n+1, -#]/(n+3))`
-/

namespace A292273.P9980210156915877687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ)))

end

end A292273.P9980210156915877687

namespace A292273

/-- `n%2*round(-∏{p}[n+1, -#]/(n+3))` -/
def P9980210156915877687.Spec : Prop :=
  ∀ n, P9980210156915877687.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P8871668561370973280

`round(-∏{p}[n+1, -#]/(n+3))*char[Δ[n²]]`
-/

namespace A292273.P8871668561370973280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ))) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292273.P8871668561370973280

namespace A292273

/-- `round(-∏{p}[n+1, -#]/(n+3))*char[Δ[n²]]` -/
def P8871668561370973280.Spec : Prop :=
  ∀ n, P8871668561370973280.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P5650420651851392938

`-A008683(gcd(4, n)+n)`
-/

namespace A292273.P5650420651851392938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (Nat.gcd 4 n + n)

end

end A292273.P5650420651851392938

namespace A292273

/-- `-A008683(gcd(4, n)+n)` -/
def P5650420651851392938.Spec : Prop :=
  ∀ n, P5650420651851392938.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P4027245989403325791

`and(1, n)*A157657(n+1)`
-/

namespace A292273.P4027245989403325791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A157657 (n + 1)

end

end A292273.P4027245989403325791

namespace A292273

/-- `and(1, n)*A157657(n+1)` -/
def P4027245989403325791.Spec : Prop :=
  ∀ n, P4027245989403325791.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P15919963778076294189

`-A008683(lcm(2, 1-n)+2)`
-/

namespace A292273.P15919963778076294189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (Int.lcm 2 (1 - (n : ℤ)) + 2)

end

end A292273.P15919963778076294189

namespace A292273

/-- `-A008683(lcm(2, 1-n)+2)` -/
def P15919963778076294189.Spec : Prop :=
  ∀ n, P15919963778076294189.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P1248710189937799662

`-A008683(lcm(4, (n+1)²)/(n+1))`
-/

namespace A292273.P1248710189937799662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (SequenceMachineLib.roundAway ((Nat.lcm 4 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A292273.P1248710189937799662

namespace A292273

/-- `-A008683(lcm(4, (n+1)²)/(n+1))` -/
def P1248710189937799662.Spec : Prop :=
  ∀ n, P1248710189937799662.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P9361200434696338135

`A087003(A174239(n)+1)`
-/

namespace A292273.P9361200434696338135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A174239 n + 1).toNat

end

end A292273.P9361200434696338135

namespace A292273

/-- `A087003(A174239(n)+1)` -/
def P9361200434696338135.Spec : Prop :=
  ∀ n, P9361200434696338135.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P9616816895750237286

`A000035(n)*A157657(n+1)`
-/

namespace A292273.P9616816895750237286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A157657 (n + 1)

end

end A292273.P9616816895750237286

namespace A292273

/-- `A000035(n)*A157657(n+1)` -/
def P9616816895750237286.Spec : Prop :=
  ∀ n, P9616816895750237286.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P2012471717699256482

`A000035(n)*A157658(n+1)`
-/

namespace A292273.P2012471717699256482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A157658 (n + 1)

end

end A292273.P2012471717699256482

namespace A292273

/-- `A000035(n)*A157658(n+1)` -/
def P2012471717699256482.Spec : Prop :=
  ∀ n, P2012471717699256482.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P7810033175326275145

`A086831(n+1)*A096268(n)`
-/

namespace A292273.P7810033175326275145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (n + 1) * A096268 n

end

end A292273.P7810033175326275145

namespace A292273

/-- `A086831(n+1)*A096268(n)` -/
def P7810033175326275145.Spec : Prop :=
  ∀ n, P7810033175326275145.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P2048058646892440277

`A096268(n)*A157657(n+1)`
-/

namespace A292273.P2048058646892440277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n * A157657 (n + 1)

end

end A292273.P2048058646892440277

namespace A292273

/-- `A096268(n)*A157657(n+1)` -/
def P2048058646892440277.Spec : Prop :=
  ∀ n, P2048058646892440277.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P18367147580673249086

`A096268(n)*A157658(n+1)`
-/

namespace A292273.P18367147580673249086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n * A157658 (n + 1)

end

end A292273.P18367147580673249086

namespace A292273

/-- `A096268(n)*A157658(n+1)` -/
def P18367147580673249086.Spec : Prop :=
  ∀ n, P18367147580673249086.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P4343404893180480230

`A096271(n)*A157657(n+1)`
-/

namespace A292273.P4343404893180480230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n * A157657 (n + 1)

end

end A292273.P4343404893180480230

namespace A292273

/-- `A096271(n)*A157657(n+1)` -/
def P4343404893180480230.Spec : Prop :=
  ∀ n, P4343404893180480230.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P4082288080763973964

`A096271(n)*A157658(n+1)`
-/

namespace A292273.P4082288080763973964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n * A157658 (n + 1)

end

end A292273.P4082288080763973964

namespace A292273

/-- `A096271(n)*A157658(n+1)` -/
def P4082288080763973964.Spec : Prop :=
  ∀ n, P4082288080763973964.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P9323247735195937940

`A101455(n)*A157657(n+1)`
-/

namespace A292273.P9323247735195937940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n * A157657 (n + 1)

end

end A292273.P9323247735195937940

namespace A292273

/-- `A101455(n)*A157657(n+1)` -/
def P9323247735195937940.Spec : Prop :=
  ∀ n, P9323247735195937940.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P7009731311321327727

`A101455(n)*A157658(n+1)`
-/

namespace A292273.P7009731311321327727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n * A157658 (n + 1)

end

end A292273.P7009731311321327727

namespace A292273

/-- `A101455(n)*A157658(n+1)` -/
def P7009731311321327727.Spec : Prop :=
  ∀ n, P7009731311321327727.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P1626934664566800808

`A109718(n)*A157657(n+1)`
-/

namespace A292273.P1626934664566800808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109718 n * A157657 (n + 1)

end

end A292273.P1626934664566800808

namespace A292273

/-- `A109718(n)*A157657(n+1)` -/
def P1626934664566800808.Spec : Prop :=
  ∀ n, P1626934664566800808.a n = A292273 (n + 1)

end A292273

/-! ## A292273.P15438541298117788437

`A109718(n)*A157658(n+1)`
-/

namespace A292273.P15438541298117788437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109718 n * A157658 (n + 1)

end

end A292273.P15438541298117788437

namespace A292273

/-- `A109718(n)*A157658(n+1)` -/
def P15438541298117788437.Spec : Prop :=
  ∀ n, P15438541298117788437.a n = A292273 (n + 1)

end A292273

/-!
# A292274: a(n) = A292383(A163511(n)).

The programs for A292274, there is no canonical definition to state claims against.
-/

/-! ## A292274.P11388494281818310265

`A292383(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292274.P11388494281818310265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A163511 n).toNat

end

end A292274.P11388494281818310265

/-! ## A292274.P1906446278587419891

`n-A292271(n)`
-/

namespace A292274.P1906446278587419891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292271 n

end

end A292274.P1906446278587419891

/-! ## A292274.P4615029120271093611

`xor(n, A292271(xor(1, xor(1, n))))`
-/

namespace A292274.P4615029120271093611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292271 (Nat.xor 1 (Nat.xor 1 n)))

end

end A292274.P4615029120271093611

/-! ## A292274.P12313131665122530007

`(n+1)%(A292271(n%(n+1))+1)`
-/

namespace A292274.P12313131665122530007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A292271 (n % (n + 1)) + 1)

end

end A292274.P12313131665122530007

/-! ## A292274.P10290110920601308864

`n%A292271(A028310(n))`
-/

namespace A292274.P10290110920601308864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A292271 (A028310 n).toNat)

end

end A292274.P10290110920601308864

/-! ## A292274.P18439459433226098098

`xor(n, A292271(n))%A008619(n)`
-/

namespace A292274.P18439459433226098098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A292271 n)) (A008619 n)

end

end A292274.P18439459433226098098

/-! ## A292274.P5602128649198340564

`xor(A048647(A048647(n)), A292271(n))`
-/

namespace A292274.P5602128649198340564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048647 (A048647 n).toNat) (A292271 n)

end

end A292274.P5602128649198340564

/-! ## A292274.P14939817512535599058

`xor(A057889(A057889(n)), A292271(n))`
-/

namespace A292274.P14939817512535599058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057889 (A057889 n).toNat) (A292271 n)

end

end A292274.P14939817512535599058

/-! ## A292274.P18401693856822139550

`A001057(2*A292271(n))+n`
-/

namespace A292274.P18401693856822139550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A292271 n).toNat + (n : ℤ)

end

end A292274.P18401693856822139550

/-! ## A292274.P8469328572930793506

`xor(A002265(A016825(n)), A292271(n))`
-/

namespace A292274.P8469328572930793506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A016825 n).toNat) (A292271 n)

end

end A292274.P8469328572930793506

/-! ## A292274.P4494794782596787857

`A336120(A253565(n))`
-/

namespace A292274.P4494794782596787857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336120 (A253565 n).toNat

end

end A292274.P4494794782596787857

/-!
# A292275: A sequence of rounded numbers useful for entering values over several orders of magnitude in computer-human interfaces, with 10 values per order of magnitude.

The programs for A292275, there is no canonical definition to state claims against.
-/

/-! ## A292275.P716392682442526448

`record[25*A000005(A241144(n+1))]`
-/

namespace A292275.P716392682442526448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A000005 (A241144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292275.P716392682442526448

/-!
# A292277: a(n) = 2^n*F(n)*F(n+1), where F = A000045.

The programs for A292277, the canonical program `A292277.P17925717783483627851` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292277 has offset 0).

The definition of A292277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292277.P17925717783483627851

`4*a(n-1)+8*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292277

/-- `4*a(n-1)+8*a(n-2)-8*a(n-3)` -/
def P17925717783483627851.Spec : Prop :=
  ∀ n, P17925717783483627851.a n = A292277 n

theorem P17925717783483627851.correct : P17925717783483627851.Spec := by
  intro n
  simp only [A292277]

end A292277

/-! ## A292277.P12796436230660717050

`2^n*A001654(n)`
-/

namespace A292277.P12796436230660717050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001654 n

end

end A292277.P12796436230660717050

namespace A292277

/-- `2^n*A001654(n)` -/
def P12796436230660717050.Spec : Prop :=
  ∀ n, P12796436230660717050.a n = A292277 n

end A292277

/-! ## A292277.P7789213781078873619

`2^n*∑[A000045(n)²]`
-/

namespace A292277.P7789213781078873619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292277.P7789213781078873619

namespace A292277

/-- `2^n*∑[A000045(n)²]` -/
def P7789213781078873619.Spec : Prop :=
  ∀ n, P7789213781078873619.a n = A292277 n

end A292277

/-! ## A292277.P4991490883503590327

`2^(n-1)*A079472(n+1)`
-/

namespace A292277.P4991490883503590327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A079472 (n + 1) : ℚ)

end

end A292277.P4991490883503590327

namespace A292277

/-- `2^(n-1)*A079472(n+1)` -/
def P4991490883503590327.Spec : Prop :=
  ∀ n, P4991490883503590327.a n = (A292277 n : ℚ)

end A292277

/-! ## A292277.P2463657484764386052

`A087635(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A292277.P2463657484764386052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087635 n - 2 * a (n - 1)

end

end A292277.P2463657484764386052

namespace A292277

/-- `A087635(n)-2*a(n-1)` -/
def P2463657484764386052.Spec : Prop :=
  ∀ n, P2463657484764386052.a n = A292277 n

end A292277

/-! ## A292277.P12755213773431733086

`A000045(n)*A063727(n)`
-/

namespace A292277.P12755213773431733086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A063727 n

end

end A292277.P12755213773431733086

namespace A292277

/-- `A000045(n)*A063727(n)` -/
def P12755213773431733086.Spec : Prop :=
  ∀ n, P12755213773431733086.a n = A292277 n

end A292277

/-! ## A292277.P4246201754598740999

`A001654(n)*A155559(n)`
-/

namespace A292277.P4246201754598740999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A155559 n

end

end A292277.P4246201754598740999

namespace A292277

/-- `A001654(n)*A155559(n)` -/
def P4246201754598740999.Spec : Prop :=
  ∀ n, P4246201754598740999.a n = A292277 n

end A292277

/-! ## A292277.P1989968149315493890

`A001654(n)*A171449(n)`
-/

namespace A292277.P1989968149315493890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A171449 n

end

end A292277.P1989968149315493890

namespace A292277

/-- `A001654(n)*A171449(n)` -/
def P1989968149315493890.Spec : Prop :=
  ∀ n, P1989968149315493890.a n = A292277 n

end A292277

/-! ## A292277.P4417471394135805009

`A001654(n)*A171559(n)`
-/

namespace A292277.P4417471394135805009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A171559 n

end

end A292277.P4417471394135805009

namespace A292277

/-- `A001654(n)*A171559(n)` -/
def P4417471394135805009.Spec : Prop :=
  ∀ n, P4417471394135805009.a n = A292277 n

end A292277

/-! ## A292277.P4989214354977263784

`lcm(A063727(n), A103435(n))`
-/

namespace A292277.P4989214354977263784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063727 n) (A103435 n)

end

end A292277.P4989214354977263784

namespace A292277

/-- `lcm(A063727(n), A103435(n))` -/
def P4989214354977263784.Spec : Prop :=
  ∀ n, (P4989214354977263784.a n : ℤ) = A292277 n

end A292277

/-! ## A292277.P8673488681616359268

`A000045(n)*∑[A084057(n)]`
-/

namespace A292277.P8673488681616359268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292277.P8673488681616359268

namespace A292277

/-- `A000045(n)*∑[A084057(n)]` -/
def P8673488681616359268.Spec : Prop :=
  ∀ n, P8673488681616359268.a n = A292277 n

end A292277

/-! ## A292277.P12923101602061218891

`A001654(n)*A011782(n+1)`
-/

namespace A292277.P12923101602061218891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A011782 (n + 1)

end

end A292277.P12923101602061218891

namespace A292277

/-- `A001654(n)*A011782(n+1)` -/
def P12923101602061218891.Spec : Prop :=
  ∀ n, P12923101602061218891.a n = A292277 n

end A292277

/-! ## A292277.P11726750950208801152

`A085449(n+1)*A000045(n)`
-/

namespace A292277.P11726750950208801152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 1) * A000045 n

end

end A292277.P11726750950208801152

namespace A292277

/-- `A085449(n+1)*A000045(n)` -/
def P11726750950208801152.Spec : Prop :=
  ∀ n, P11726750950208801152.a n = A292277 n

end A292277

/-! ## A292277.P987883570292351234

`A000045(n+1)*A103435(n)`
-/

namespace A292277.P987883570292351234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A103435 n

end

end A292277.P987883570292351234

namespace A292277

/-- `A000045(n+1)*A103435(n)` -/
def P987883570292351234.Spec : Prop :=
  ∀ n, P987883570292351234.a n = A292277 n

end A292277

/-! ## A292277.P9649691392497283615

`A079472(n+1)*A131577(n)`
-/

namespace A292277.P9649691392497283615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (n + 1) * A131577 n

end

end A292277.P9649691392497283615

namespace A292277

/-- `A079472(n+1)*A131577(n)` -/
def P9649691392497283615.Spec : Prop :=
  ∀ n, P9649691392497283615.a n = A292277 n

end A292277

/-! ## A292277.P16074367867549950727

`A085449(n)*A128588(n+1)`
-/

namespace A292277.P16074367867549950727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n * A128588 (n + 1)

end

end A292277.P16074367867549950727

namespace A292277

/-- `A085449(n)*A128588(n+1)` -/
def P16074367867549950727.Spec : Prop :=
  ∀ n, P16074367867549950727.a n = A292277 n

end A292277

/-! ## A292277.P7919117938855936592

`∑[A000045(n)²]*A000079(n)`
-/

namespace A292277.P7919117938855936592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A292277.P7919117938855936592

namespace A292277

/-- `∑[A000045(n)²]*A000079(n)` -/
def P7919117938855936592.Spec : Prop :=
  ∀ n, P7919117938855936592.a n = A292277 n

end A292277

/-! ## A292277.P1582424118139021831

`∑[A000045(n)²]*A155559(n)`
-/

namespace A292277.P1582424118139021831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A155559 n

end

end A292277.P1582424118139021831

namespace A292277

/-- `∑[A000045(n)²]*A155559(n)` -/
def P1582424118139021831.Spec : Prop :=
  ∀ n, P1582424118139021831.a n = A292277 n

end A292277

/-! ## A292277.P14787678970106424141

`∑[A000045(n)²]*∑[A011782(n)]`
-/

namespace A292277.P14787678970106424141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A292277.P14787678970106424141

namespace A292277

/-- `∑[A000045(n)²]*∑[A011782(n)]` -/
def P14787678970106424141.Spec : Prop :=
  ∀ n, P14787678970106424141.a n = A292277 n

end A292277

/-!
# A292278: a(n) = (Fibonacci(3*n-1) + 1)/2 for n >= 1.

The programs for A292278, the canonical program `A292278.P11230954527433825086` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292278 has offset 1).

The definition of A292278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292278.P11230954527433825086

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292278

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P11230954527433825086.Spec : Prop :=
  ∀ n, P11230954527433825086.a n = A292278 (n + 1)

theorem P11230954527433825086.correct : P11230954527433825086.Spec := by
  intro n
  simp only [A292278, Nat.add_sub_cancel]

end A292278

/-! ## A292278.P3789946294892731306

`floor(ϕ^3*a(n-1))-1` with `a(0)=1`
-/

namespace A292278.P3789946294892731306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)⌋ - 1

end

end A292278.P3789946294892731306

namespace A292278

/-- `floor(ϕ^3*a(n-1))-1` -/
def P3789946294892731306.Spec : Prop :=
  ∀ n, P3789946294892731306.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P9018441654031925679

`ceil(ϕ^3*a(n-1))-2` with `a(0)=1`
-/

namespace A292278.P9018441654031925679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)⌉ - 2

end

end A292278.P9018441654031925679

namespace A292278

/-- `ceil(ϕ^3*a(n-1))-2` -/
def P9018441654031925679.Spec : Prop :=
  ∀ n, P9018441654031925679.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P3220258273394113404

`floor(ϕ*floor(ϕ²*a(n-1)))` with `a(0)=1`
-/

namespace A292278.P3220258273394113404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ : ℝ)⌋

end

end A292278.P3220258273394113404

namespace A292278

/-- `floor(ϕ*floor(ϕ²*a(n-1)))` -/
def P3220258273394113404.Spec : Prop :=
  ∀ n, P3220258273394113404.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P13320337221026785184

`4*a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=3`
-/

namespace A292278.P13320337221026785184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) + (a (n - 2) - 2)

end

end A292278.P13320337221026785184

namespace A292278

/-- `4*a(n-1)+a(n-2)-2` -/
def P13320337221026785184.Spec : Prop :=
  ∀ n, P13320337221026785184.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P2295319644146768972

`4*a(n-1)-(2-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A292278.P2295319644146768972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) - (2 - a (n - 2))

end

end A292278.P2295319644146768972

namespace A292278

/-- `4*a(n-1)-(2-a(n-2))` -/
def P2295319644146768972.Spec : Prop :=
  ∀ n, P2295319644146768972.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P11909533873817055030

`A099919(n)+1`
-/

namespace A292278.P11909533873817055030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099919 n + 1

end

end A292278.P11909533873817055030

namespace A292278

/-- `A099919(n)+1` -/
def P11909533873817055030.Spec : Prop :=
  ∀ n, P11909533873817055030.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P2785079831399081991

`A093040(3*n)`
-/

namespace A292278.P2785079831399081991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (3 * n)

end

end A292278.P2785079831399081991

namespace A292278

/-- `A093040(3*n)` -/
def P2785079831399081991.Spec : Prop :=
  ∀ n, P2785079831399081991.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P10840136333079523748

`or(1, A110679(n))`
-/

namespace A292278.P10840136333079523748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A110679 n)

end

end A292278.P10840136333079523748

namespace A292278

/-- `or(1, A110679(n))` -/
def P10840136333079523748.Spec : Prop :=
  ∀ n, P10840136333079523748.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P11556846735560389691

`record[∑[A173343(n)]]`
-/

namespace A292278.P11556846735560389691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292278.P11556846735560389691

namespace A292278

/-- `record[∑[A173343(n)]]` -/
def P11556846735560389691.Spec : Prop :=
  ∀ n, P11556846735560389691.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P2494484116434886514

`∑[A014445(n)]+1`
-/

namespace A292278.P2494484116434886514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A292278.P2494484116434886514

namespace A292278

/-- `∑[A014445(n)]+1` -/
def P2494484116434886514.Spec : Prop :=
  ∀ n, P2494484116434886514.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P11427482280040865921

`2*A049652(n)+1`
-/

namespace A292278.P11427482280040865921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049652 n + 1

end

end A292278.P11427482280040865921

namespace A292278

/-- `2*A049652(n)+1` -/
def P11427482280040865921.Spec : Prop :=
  ∀ n, P11427482280040865921.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P17196720973483978839

`A107857(2*(n+1))`
-/

namespace A292278.P17196720973483978839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (2 * (n + 1))

end

end A292278.P17196720973483978839

namespace A292278

/-- `A107857(2*(n+1))` -/
def P17196720973483978839.Spec : Prop :=
  ∀ n, P17196720973483978839.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P9870466434418271945

`A147997(3*n+2)`
-/

namespace A292278.P9870466434418271945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (3 * n + 2)

end

end A292278.P9870466434418271945

namespace A292278

/-- `A147997(3*n+2)` -/
def P9870466434418271945.Spec : Prop :=
  ∀ n, P9870466434418271945.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P8526479647745882794

`A173173(3*n+2)`
-/

namespace A292278.P8526479647745882794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (3 * n + 2)

end

end A292278.P8526479647745882794

namespace A292278

/-- `A173173(3*n+2)` -/
def P8526479647745882794.Spec : Prop :=
  ∀ n, P8526479647745882794.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P9243769531183435395

`A173433(3*n+2)`
-/

namespace A292278.P9243769531183435395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (3 * n + 2)

end

end A292278.P9243769531183435395

namespace A292278

/-- `A173433(3*n+2)` -/
def P9243769531183435395.Spec : Prop :=
  ∀ n, P9243769531183435395.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P17633699342019973852

`ceil(Δ[A049651(n)/2])`
-/

namespace A292278.P17633699342019973852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049651 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A292278.P17633699342019973852

namespace A292278

/-- `ceil(Δ[A049651(n)/2])` -/
def P17633699342019973852.Spec : Prop :=
  ∀ n, P17633699342019973852.a n = A292278 (n + 1)

end A292278

/-! ## A292278.P17954539835921946258

`∑[record[A102875(n)]]+1`
-/

namespace A292278.P17954539835921946258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A292278.P17954539835921946258

namespace A292278

/-- `∑[record[A102875(n)]]+1` -/
def P17954539835921946258.Spec : Prop :=
  ∀ n, P17954539835921946258.a n = A292278 (n + 1)

end A292278

/-!
# A292279: Expansion of 1/Product_{k>=1} (1 + k!*x^k).

The programs for A292279, there is no canonical definition to state claims against.
-/

/-! ## A292279.P17994084408643946960

`A000038(n)-A134135(A028310(n))`
-/

namespace A292279.P17994084408643946960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A134135 (A028310 n).toNat

end

end A292279.P17994084408643946960

/-! ## A292279.P293780771610305062

`A000038(n)-A134135(A233583(n+1))`
-/

namespace A292279.P293780771610305062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A134135 (A233583 (n + 1)).toNat

end

end A292279.P293780771610305062

/-! ## A292279.P1757908778947163309

`2*A151878(n)-A134135(A028310(n))`
-/

namespace A292279.P1757908778947163309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151878 n - A134135 (A028310 n).toNat

end

end A292279.P1757908778947163309

/-! ## A292279.P11624644699812177833

`A000038(n)-A134135(A000038(n)+n)`
-/

namespace A292279.P11624644699812177833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A134135 (A000038 n + (n : ℤ)).toNat

end

end A292279.P11624644699812177833

/-! ## A292279.P13023680986233826981

`A000122(n²+1)-A134135(A028310(n))`
-/

namespace A292279.P13023680986233826981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) - A134135 (A028310 n).toNat

end

end A292279.P13023680986233826981

/-!
# A292281: Number of magic labelings of the prism graph I X C_6 having magic sum n.

The programs for A292281, the canonical program `A292281.P1308277968515658370` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292281 has offset 0).

The definition of A292281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292281.P1308277968515658370

`∑[2*A244879(n)]-A244879(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292281

/-- `∑[2*A244879(n)]-A244879(n)` -/
def P1308277968515658370.Spec : Prop :=
  ∀ n, P1308277968515658370.a n = A292281 n

theorem P1308277968515658370.correct : P1308277968515658370.Spec := by
  intro n
  simp only [A292281]

end A292281

/-! ## A292281.P1893935703057449274

`∑[(n+1)*A069038(n+1)-A002415(n+1)]`
-/

namespace A292281.P1893935703057449274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069038 (n + 1) - A002415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292281.P1893935703057449274

namespace A292281

/-- `∑[(n+1)*A069038(n+1)-A002415(n+1)]` -/
def P1893935703057449274.Spec : Prop :=
  ∀ n, P1893935703057449274.a n = A292281 n

end A292281

/-! ## A292281.P6408862576985126789

`∑[A000292((n+1)²)-∑[A000538(n)]]`
-/

namespace A292281.P6408862576985126789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 ((n + 1) ^ 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292281.P6408862576985126789

namespace A292281

/-- `∑[A000292((n+1)²)-∑[A000538(n)]]` -/
def P6408862576985126789.Spec : Prop :=
  ∀ n, P6408862576985126789.a n = A292281 n

end A292281

/-!
# A292282: a(n) = 2*(n-1)^3*n^2*(n+1).

The programs for A292282, the canonical program `A292282.P12677108862703162699` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292282 has offset 1).

The definition of A292282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3*(n+1)²*(n+2)` (program `A292282.P12677108862703162699`, by `A292282.P12677108862703162699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292282.P12677108862703162699

`2*n^3*(n+1)²*(n+2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292282

/-- `2*n^3*(n+1)²*(n+2)` -/
def P12677108862703162699.Spec : Prop :=
  ∀ n, (P12677108862703162699.a n : ℤ) = A292282 (n + 1)

theorem P12677108862703162699.correct : P12677108862703162699.Spec := by
  intro n
  simp only [A292282, Nat.add_sub_cancel]

end A292282

/-! ## A292282.P8528961435677508364

`ceil(n/2*A192832(n+1))`
-/

namespace A292282.P8528961435677508364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 * (A192832 (n + 1) : ℚ)⌉

end

end A292282.P8528961435677508364

namespace A292282

/-- `ceil(n/2*A192832(n+1))` -/
def P8528961435677508364.Spec : Prop :=
  ∀ n, P8528961435677508364.a n = A292282 (n + 1)

end A292282

/-! ## A292282.P346321451259017477

`(n+1)*A192839(n+1)/4`
-/

namespace A292282.P346321451259017477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A192839 (n + 1) : ℚ) / 4

end

end A292282.P346321451259017477

namespace A292282

/-- `(n+1)*A192839(n+1)/4` -/
def P346321451259017477.Spec : Prop :=
  ∀ n, P346321451259017477.a n = (A292282 (n + 1) : ℚ)

end A292282

/-! ## A292282.P6555749206533578271

`(A035006(n+1)²-A060300(n))/2`
-/

namespace A292282.P6555749206533578271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035006 (n + 1) ^ 2 - A060300 n : ℚ) / 2

end

end A292282.P6555749206533578271

namespace A292282

/-- `(A035006(n+1)²-A060300(n))/2` -/
def P6555749206533578271.Spec : Prop :=
  ∀ n, P6555749206533578271.a n = (A292282 (n + 1) : ℚ)

end A292282

/-! ## A292282.P13570303163439390888

`(n+1)²*A254371(n)-A254371(n)`
-/

namespace A292282.P13570303163439390888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A254371 n - A254371 n

end

end A292282.P13570303163439390888

namespace A292282

/-- `(n+1)²*A254371(n)-A254371(n)` -/
def P13570303163439390888.Spec : Prop :=
  ∀ n, P13570303163439390888.a n = A292282 (n + 1)

end A292282

/-! ## A292282.P12198385521498416959

`A033431(n)*A098547(n+1)-A033431(n)`
-/

namespace A292282.P12198385521498416959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n * A098547 (n + 1) - A033431 n

end

end A292282.P12198385521498416959

namespace A292282

/-- `A033431(n)*A098547(n+1)-A033431(n)` -/
def P12198385521498416959.Spec : Prop :=
  ∀ n, P12198385521498416959.a n = A292282 (n + 1)

end A292282

/-! ## A292282.P16523994925604168013

`A053755(n)*A083374(n+1)-A083374(n+1)`
-/

namespace A292282.P16523994925604168013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n * A083374 (n + 1) - A083374 (n + 1)

end

end A292282.P16523994925604168013

namespace A292282

/-- `A053755(n)*A083374(n+1)-A083374(n+1)` -/
def P16523994925604168013.Spec : Prop :=
  ∀ n, P16523994925604168013.a n = A292282 (n + 1)

end A292282

/-! ## A292282.P12701684551219106090

`A048395(n)²-A059722(n²)`
-/

namespace A292282.P12701684551219106090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n ^ 2 - A059722 (n ^ 2)

end

end A292282.P12701684551219106090

namespace A292282

/-- `A048395(n)²-A059722(n²)` -/
def P12701684551219106090.Spec : Prop :=
  ∀ n, P12701684551219106090.a n = A292282 (n + 1)

end A292282

/-! ## A292282.P4268869336060922045

`xor(1, n*n*A046092(A005563(n))+1)`
-/

namespace A292282.P4268869336060922045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((n : ℤ) * A046092 (A005563 n).toNat) + 1)

end

end A292282.P4268869336060922045

namespace A292282

/-- `xor(1, n*n*A046092(A005563(n))+1)` -/
def P4268869336060922045.Spec : Prop :=
  ∀ n, P4268869336060922045.a n = A292282 (n + 1)

end A292282

/-!
# A292286: a(n) = k if the product of the divisors of n is n^k for some integer k, or -1 if no such k exists. For the ambiguous case, define a(1) = 0.

The programs for A292286, the canonical program `A292286.P9648476840637549406` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292286 has offset 1).

The definition of A292286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292286.P9648476840637549406

`A027656(∏{e}[n+1, #+1])-A057427(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A292286

/-- `A027656(∏{e}[n+1, #+1])-A057427(n)` -/
def P9648476840637549406.Spec : Prop :=
  ∀ n, P9648476840637549406.a n = A292286 (n + 1)

theorem P9648476840637549406.correct : P9648476840637549406.Spec := by
  intro n
  simp only [A292286, Nat.add_sub_cancel]

end A292286

/-! ## A292286.P11308534991527238626

`A027656(∑{d}[n+1, gcd(n, #)])-A057427(n)`
-/

namespace A292286.P11308534991527238626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) - A057427 n

end

end A292286.P11308534991527238626

namespace A292286

/-- `A027656(∑{d}[n+1, gcd(n, #)])-A057427(n)` -/
def P11308534991527238626.Spec : Prop :=
  ∀ n, P11308534991527238626.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P14736033640937390179

`A027656(∑{d}[n+1, lcm(#, n+1)]/(n+1))-A057427(n)`
-/

namespace A292286.P14736033640937390179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat - A057427 n

end

end A292286.P14736033640937390179

namespace A292286

/-- `A027656(∑{d}[n+1, lcm(#, n+1)]/(n+1))-A057427(n)` -/
def P14736033640937390179.Spec : Prop :=
  ∀ n, P14736033640937390179.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P5490920165286629108

`A027656(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A057427(n)`
-/

namespace A292286.P5490920165286629108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d) - A057427 n

end

end A292286.P5490920165286629108

namespace A292286

/-- `A027656(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A057427(n)` -/
def P5490920165286629108.Spec : Prop :=
  ∀ n, P5490920165286629108.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P1167749449777724807

`A027656(Δ[A006218(n)])-A057427(n)`
-/

namespace A292286.P1167749449777724807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (f1 (n + 1) - f1 n).toNat - A057427 n

end

end A292286.P1167749449777724807

namespace A292286

/-- `A027656(Δ[A006218(n)])-A057427(n)` -/
def P1167749449777724807.Spec : Prop :=
  ∀ n, P1167749449777724807.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P11435266779085924055

`A057428(n)+A027656(A000005(n+1))`
-/

namespace A292286.P11435266779085924055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A027656 (A000005 (n + 1)).toNat

end

end A292286.P11435266779085924055

namespace A292286

/-- `A057428(n)+A027656(A000005(n+1))` -/
def P11435266779085924055.Spec : Prop :=
  ∀ n, P11435266779085924055.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P17471366189321785392

`A027656(A000005(n+1))-A057427(n)`
-/

namespace A292286.P17471366189321785392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A000005 (n + 1)).toNat - A057427 n

end

end A292286.P17471366189321785392

namespace A292286

/-- `A027656(A000005(n+1))-A057427(n)` -/
def P17471366189321785392.Spec : Prop :=
  ∀ n, P17471366189321785392.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P2661886302804135773

`A027656(A334954(n+1)-1)-A057427(n)`
-/

namespace A292286.P2661886302804135773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A334954 (n + 1) - 1).toNat - A057427 n

end

end A292286.P2661886302804135773

namespace A292286

/-- `A027656(A334954(n+1)-1)-A057427(n)` -/
def P2661886302804135773.Spec : Prop :=
  ∀ n, P2661886302804135773.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P18001627671786892520

`A027656(∑{d}[n+1, ((A001221(#)+1)%2)!])-A057427(n)`
-/

namespace A292286.P18001627671786892520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Int.tmod (A001221 d + 1) 2).toNat) - A057427 n

end

end A292286.P18001627671786892520

namespace A292286

/-- `A027656(∑{d}[n+1, ((A001221(#)+1)%2)!])-A057427(n)` -/
def P18001627671786892520.Spec : Prop :=
  ∀ n, P18001627671786892520.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P3127385000036551510

`A027656(∑{d}[n+1, #+1]-A000203(n+1))-A057427(n)`
-/

namespace A292286.P3127385000036551510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)).toNat - A057427 n

end

end A292286.P3127385000036551510

namespace A292286

/-- `A027656(∑{d}[n+1, #+1]-A000203(n+1))-A057427(n)` -/
def P3127385000036551510.Spec : Prop :=
  ∀ n, P3127385000036551510.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P5501266505909260543

`A274923(A035116(n+1)-A274923(A035116(n+1)))`
-/

namespace A292286.P5501266505909260543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A035116 (n + 1) - A274923 (A035116 (n + 1)).toNat).toNat

end

end A292286.P5501266505909260543

namespace A292286

/-- `A274923(A035116(n+1)-A274923(A035116(n+1)))` -/
def P5501266505909260543.Spec : Prop :=
  ∀ n, P5501266505909260543.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P6357123334136448893

`A027656(∑{d}[n+1, A057427(#)])-A057427(n)`
-/

namespace A292286.P6357123334136448893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (∑ d ∈ Nat.divisors (f1 n), A057427 d).toNat - A057427 n

end

end A292286.P6357123334136448893

namespace A292286

/-- `A027656(∑{d}[n+1, A057427(#)])-A057427(n)` -/
def P6357123334136448893.Spec : Prop :=
  ∀ n, P6357123334136448893.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P110815484894465005

`A062157(2*n)+A027656(∏{e}[n+1, #+1])`
-/

namespace A292286.P110815484894465005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) + A027656 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A292286.P110815484894465005

namespace A292286

/-- `A062157(2*n)+A027656(∏{e}[n+1, #+1])` -/
def P110815484894465005.Spec : Prop :=
  ∀ n, P110815484894465005.a n = A292286 (n + 1)

end A292286

/-! ## A292286.P15079412234484142188

`A027656(A000005(n+1))-A122458(2*n)`
-/

namespace A292286.P15079412234484142188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A000005 (n + 1)).toNat - A122458 (2 * n)

end

end A292286.P15079412234484142188

namespace A292286

/-- `A027656(A000005(n+1))-A122458(2*n)` -/
def P15079412234484142188.Spec : Prop :=
  ∀ n, P15079412234484142188.a n = A292286 (n + 1)

end A292286

/-!
# A292287: Number of multisets of exactly n nonempty balanced binary Lyndon words with a total of 4n letters (2n zeros and 2n ones).

The programs for A292287, there is no canonical definition to state claims against.
-/

/-! ## A292287.P1473332246273417667

`A289978(∑[4*n])`
-/

namespace A292287.P1473332246273417667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292287.P1473332246273417667

/-! ## A292287.P18444392912965803055

`lcm(A033999(n), A289978(A046092(n)))`
-/

namespace A292287.P18444392912965803055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A289978 (A046092 n).toNat)

end

end A292287.P18444392912965803055

/-! ## A292287.P17503473112294244321

`or(A000007(n), A289978(A046092(n)))`
-/

namespace A292287.P17503473112294244321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A289978 (A046092 n).toNat)

end

end A292287.P17503473112294244321

/-! ## A292287.P2458764268575443398

`A289978(A008574(∑[n]))+A000007(n)`
-/

namespace A292287.P2458764268575443398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289978 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A000007 n

end

end A292287.P2458764268575443398

/-! ## A292287.P3040045793787370992

`A166946(A007067(n))*A289978(A046092(n))`
-/

namespace A292287.P3040045793787370992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 (A007067 n).toNat * A289978 (A046092 n).toNat

end

end A292287.P3040045793787370992

/-! ## A292287.P11771840784010624953

`A000007(n)+A289978(A046092(n))%A053109(n)`
-/

namespace A292287.P11771840784010624953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A289978 (A046092 n).toNat) (A053109 n)

end

end A292287.P11771840784010624953

/-!
# A292288: Numerators of smallest denominator of a proper fraction that has a nontrivial anomalous cancellation in base b.

The programs for A292288, there is no canonical definition to state claims against.
-/

/-! ## A292288.P1939304094766463849

`A292393(n+2)+A219519(∑[char[1]+1+n])`
-/

namespace A292288.P1939304094766463849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292393 (n + 2) + A219519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292288.P1939304094766463849

/-! ## A292288.P13859874920365876241

`gcd(A008683(A288763(n)), A002034(n+1))+n+2`
-/

namespace A292288.P13859874920365876241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A288763 n).toNat) (A002034 (n + 1)) + (n + 2)

end

end A292288.P13859874920365876241

/-! ## A292288.P17435026174262575666

`A002034(n+1)^A015163(A208575(n))+2+n`
-/

namespace A292288.P17435026174262575666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) : ℚ) ^ (A015163 (A208575 n).toNat : ℤ) + 2 + (n : ℚ)

end

end A292288.P17435026174262575666

/-! ## A292288.P10078785263841658886

`A292393(n+2)+A000005(2^(n+1))`
-/

namespace A292288.P10078785263841658886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292393 (n + 2) + A000005 (2 ^ (n + 1))

end

end A292288.P10078785263841658886

/-! ## A292288.P1978404227374410867

`A292393(n+2)+A001222(A000079(n+2))`
-/

namespace A292288.P1978404227374410867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292393 (n + 2) + A001222 (A000079 (n + 2)).toNat

end

end A292288.P1978404227374410867

/-!
# A292290: Number of vertices of type A at level n of the hyperbolic Pascal pyramid.

The programs for A292290, the canonical program `A292290.P2205885987891846142` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292290 has offset 0).

The definition of A292290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292290.P2205885987891846142

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292290

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P2205885987891846142.Spec : Prop :=
  ∀ n, P2205885987891846142.a n = A292290 n

theorem P2205885987891846142.correct : P2205885987891846142.Spec := by
  intro n
  simp only [A292290]

end A292290

/-! ## A292290.P2128875186548469697

`lcm(3, 1-a(n-1))-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A292290.P2128875186548469697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Int.lcm 3 (1 - a (n - 1)) : ℤ) - a (n - 2)

end

end A292290.P2128875186548469697

namespace A292290

/-- `lcm(3, 1-a(n-1))-a(n-2)` -/
def P2128875186548469697.Spec : Prop :=
  ∀ n, P2128875186548469697.a n = A292290 n

end A292290

/-! ## A292290.P2226179645291494943

`3*(a(n-1)-1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A292290.P2226179645291494943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  3 * (a (n - 1) - 1) - a (n - 2)

end

end A292290.P2226179645291494943

namespace A292290

/-- `3*(a(n-1)-1)-a(n-2)` -/
def P2226179645291494943.Spec : Prop :=
  ∀ n, P2226179645291494943.a n = A292290 n

end A292290

/-! ## A292290.P14719359380720686907

`a(n-1)+a(n-1)+a(n-1)-(a(n-2)+3)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A292290.P14719359380720686907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (a (n - 2) + 3)))

end

end A292290.P14719359380720686907

namespace A292290

/-- `a(n-1)+a(n-1)+a(n-1)-(a(n-2)+3)` -/
def P14719359380720686907.Spec : Prop :=
  ∀ n, P14719359380720686907.a n = A292290 n

end A292290

/-! ## A292290.P1843952535371875236

`a(n-1)-(3-(a(n-1)-(a(n-2)-a(n-1))))` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A292290.P1843952535371875236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  a (n - 1) - (3 - (a (n - 1) - (a (n - 2) - a (n - 1))))

end

end A292290.P1843952535371875236

namespace A292290

/-- `a(n-1)-(3-(a(n-1)-(a(n-2)-a(n-1))))` -/
def P1843952535371875236.Spec : Prop :=
  ∀ n, P1843952535371875236.a n = A292290 n

end A292290

/-! ## A292290.P1307982523009745863

`Δ[3*A293065(n)]`
-/

namespace A292290.P1307982523009745863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A293065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292290.P1307982523009745863

namespace A292290

/-- `Δ[3*A293065(n)]` -/
def P1307982523009745863.Spec : Prop :=
  ∀ n, P1307982523009745863.a n = A292290 n

end A292290

/-! ## A292290.P9238567922666397999

`Δ[A292291(n)]-A292291(n)`
-/

namespace A292290.P9238567922666397999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A292291 n

end

end A292290.P9238567922666397999

namespace A292290

/-- `Δ[A292291(n)]-A292291(n)` -/
def P9238567922666397999.Spec : Prop :=
  ∀ n, P9238567922666397999.a n = A292290 n

end A292290

/-! ## A292290.P5445518690982208612

`A292291(n+1)-2*A292291(n)`
-/

namespace A292290.P5445518690982208612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292291 (n + 1) - 2 * A292291 n

end

end A292290.P5445518690982208612

namespace A292290

/-- `A292291(n+1)-2*A292291(n)` -/
def P5445518690982208612.Spec : Prop :=
  ∀ n, P5445518690982208612.a n = A292290 n

end A292290

/-! ## A292290.P5447224703808499978

`A022352(A005843(n))%A001610(2*n+1)`
-/

namespace A292290.P5447224703808499978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022352 (A005843 n).toNat) (A001610 (2 * n + 1))

end

end A292290.P5447224703808499978

namespace A292290

/-- `A022352(A005843(n))%A001610(2*n+1)` -/
def P5447224703808499978.Spec : Prop :=
  ∀ n, P5447224703808499978.a n = A292290 n

end A292290

/-!
# A292291: Number of vertices of type B at level n of the hyperbolic Pascal pyramid.

The programs for A292291, the canonical program `A292291.P11079438037601052161` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292291 has offset 0).

The definition of A292291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292291.P11079438037601052161

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292291

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P11079438037601052161.Spec : Prop :=
  ∀ n, P11079438037601052161.a n = A292291 n

theorem P11079438037601052161.correct : P11079438037601052161.Spec := by
  intro n
  simp only [A292291]

end A292291

/-! ## A292291.P2308848551598646206

`3*(a(n-1)+1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A292291.P2308848551598646206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  3 * (a (n - 1) + 1) - a (n - 2)

end

end A292291.P2308848551598646206

namespace A292291

/-- `3*(a(n-1)+1)-a(n-2)` -/
def P2308848551598646206.Spec : Prop :=
  ∀ n, P2308848551598646206.a n = A292291 n

end A292291

/-! ## A292291.P10726408268578915444

`3*a(n-1)-(a(n-2)-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A292291.P10726408268578915444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  3 * a (n - 1) - (a (n - 2) - 3)

end

end A292291.P10726408268578915444

namespace A292291

/-- `3*a(n-1)-(a(n-2)-3)` -/
def P10726408268578915444.Spec : Prop :=
  ∀ n, P10726408268578915444.a n = A292291 n

end A292291

/-! ## A292291.P12962652771918796707

`3*A293064(n)`
-/

namespace A292291.P12962652771918796707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A293064 n

end

end A292291.P12962652771918796707

namespace A292291

/-- `3*A293064(n)` -/
def P12962652771918796707.Spec : Prop :=
  ∀ n, P12962652771918796707.a n = A292291 n

end A292291

/-! ## A292291.P6677413787796093967

`3*∑[A000045(abs(2-n)+n-2)]`
-/

namespace A292291.P6677413787796093967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|2 - (n : ℤ)| + ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292291.P6677413787796093967

namespace A292291

/-- `3*∑[A000045(abs(2-n)+n-2)]` -/
def P6677413787796093967.Spec : Prop :=
  ∀ n, P6677413787796093967.a n = A292291 n

end A292291

/-! ## A292291.P1793602218019187652

`3*A027941(A289207(n))`
-/

namespace A292291.P1793602218019187652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027941 (A289207 n).toNat

end

end A292291.P1793602218019187652

namespace A292291

/-- `3*A027941(A289207(n))` -/
def P1793602218019187652.Spec : Prop :=
  ∀ n, P1793602218019187652.a n = A292291 n

end A292291

/-! ## A292291.P15790641205107088976

`3*A001906(n)%A192908(n)`
-/

namespace A292291.P15790641205107088976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A001906 n) (A192908 n)

end

end A292291.P15790641205107088976

namespace A292291

/-- `3*A001906(n)%A192908(n)` -/
def P15790641205107088976.Spec : Prop :=
  ∀ n, P15790641205107088976.a n = A292291 n

end A292291

/-! ## A292291.P4816299181125309818

`A005592(n)%A192908(n)`
-/

namespace A292291.P4816299181125309818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005592 n) (A192908 n)

end

end A292291.P4816299181125309818

namespace A292291

/-- `A005592(n)%A192908(n)` -/
def P4816299181125309818.Spec : Prop :=
  ∀ n, P4816299181125309818.a n = A292291 n

end A292291

/-! ## A292291.P5498469467066832934

`A098600(2*n)%A066983(A004277(n))`
-/

namespace A292291.P5498469467066832934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098600 (2 * n)) (A066983 (A004277 n).toNat)

end

end A292291.P5498469467066832934

namespace A292291

/-- `A098600(2*n)%A066983(A004277(n))` -/
def P5498469467066832934.Spec : Prop :=
  ∀ n, P5498469467066832934.a n = A292291 n

end A292291

/-! ## A292291.P14232896709374146379

`A097134(n)%A192908(n)`
-/

namespace A292291.P14232896709374146379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097134 n) (A192908 n)

end

end A292291.P14232896709374146379

namespace A292291

/-- `A097134(n)%A192908(n)` -/
def P14232896709374146379.Spec : Prop :=
  ∀ n, P14232896709374146379.a n = A292291 n

end A292291

/-! ## A292291.P15862735023520776736

`∑[A006355(2*(n+2))%A212804(2*n)]`
-/

namespace A292291.P15862735023520776736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006355 (2 * (n + 2))) (A212804 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292291.P15862735023520776736

namespace A292291

/-- `∑[A006355(2*(n+2))%A212804(2*n)]` -/
def P15862735023520776736.Spec : Prop :=
  ∀ n, P15862735023520776736.a n = A292291 n

end A292291

/-! ## A292291.P10475676911458867179

`3*A247051(A092899(n))`
-/

namespace A292291.P10475676911458867179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A247051 (A092899 n).toNat

end

end A292291.P10475676911458867179

namespace A292291

/-- `3*A247051(A092899(n))` -/
def P10475676911458867179.Spec : Prop :=
  ∀ n, P10475676911458867179.a n = A292291 n

end A292291

/-! ## A292291.P6071216472285880092

`A064170(n+2)%(2-∑[A001906(n+1)])`
-/

namespace A292291.P6071216472285880092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064170 (n + 2)) (2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292291.P6071216472285880092

namespace A292291

/-- `A064170(n+2)%(2-∑[A001906(n+1)])` -/
def P6071216472285880092.Spec : Prop :=
  ∀ n, P6071216472285880092.a n = A292291 n

end A292291

/-!
# A292292: Number of vertices of type C at level n of the hyperbolic Pascal pyramid.

The programs for A292292, the canonical program `A292292.P1616309256113203720` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292292 has offset 0).

The definition of A292292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292292.P1616309256113203720

`12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292292

/-- `12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` -/
def P1616309256113203720.Spec : Prop :=
  ∀ n, P1616309256113203720.a n = A292292 n

theorem P1616309256113203720.correct : P1616309256113203720.Spec := by
  intro n
  simp only [A292292]

end A292292

/-! ## A292292.P6033000101323623986

`A185714(n!+lcm(4, 2^n))`
-/

namespace A292292.P6033000101323623986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (Nat.factorial n + Nat.lcm 4 (2 ^ n))

end

end A292292.P6033000101323623986

namespace A292292

/-- `A185714(n!+lcm(4, 2^n))` -/
def P6033000101323623986.Spec : Prop :=
  ∀ n, P6033000101323623986.a n = A292292 n

end A292292

/-! ## A292292.P15298254877479419945

`A001462(ceil(ϕ*a(n-1))²)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A292292.P15298254877479419945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A001462 (⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ ^ 2).toNat

end

end A292292.P15298254877479419945

namespace A292292

/-- `A001462(ceil(ϕ*a(n-1))²)` -/
def P15298254877479419945.Spec : Prop :=
  ∀ n, P15298254877479419945.a n = A292292 n

end A292292

/-! ## A292292.P2095764450304210941

`A185714(A007611(n))`
-/

namespace A292292.P2095764450304210941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A007611 n).toNat

end

end A292292.P2095764450304210941

namespace A292292

/-- `A185714(A007611(n))` -/
def P2095764450304210941.Spec : Prop :=
  ∀ n, P2095764450304210941.a n = A292292 n

end A292292

/-!
# A292293: Number of vertices of type D at level n of the hyperbolic Pascal pyramid.

The programs for A292293, the canonical program `A292293.P2244350110303147724` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292293 has offset 0).

The definition of A292293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292293.P2244350110303147724

`12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=3, a(5)=24`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292293

/-- `12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` -/
def P2244350110303147724.Spec : Prop :=
  ∀ n, P2244350110303147724.a n = A292293 n

theorem P2244350110303147724.correct : P2244350110303147724.Spec := by
  intro n
  simp only [A292293]

end A292293

/-! ## A292293.P10558840086107573581

`3*A059995(A348615(n))`
-/

namespace A292293.P10558840086107573581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059995 (A348615 n).toNat

end

end A292293.P10558840086107573581

namespace A292293

/-- `3*A059995(A348615(n))` -/
def P10558840086107573581.Spec : Prop :=
  ∀ n, P10558840086107573581.a n = A292293 n

end A292293

/-! ## A292293.P7157137565387082070

`floor(A201690(n+1)/9)`
-/

namespace A292293.P7157137565387082070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A201690 (n + 1) : ℚ) / 9⌋

end

end A292293.P7157137565387082070

namespace A292293

/-- `floor(A201690(n+1)/9)` -/
def P7157137565387082070.Spec : Prop :=
  ∀ n, P7157137565387082070.a n = A292293 n

end A292293

/-!
# A292294: Number of vertices of type E at level n of the hyperbolic Pascal pyramid.

The programs for A292294, the canonical program `A292294.P2169992613130786916` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292294 has offset 0).

The definition of A292294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292294.P2169992613130786916

`12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=3, a(5)=39`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292294

/-- `12*a(n-1)-37*a(n-2)+37*a(n-3)-12*a(n-4)+a(n-5)` -/
def P2169992613130786916.Spec : Prop :=
  ∀ n, P2169992613130786916.a n = A292294 n

theorem P2169992613130786916.correct : P2169992613130786916.Spec := by
  intro n
  simp only [A292294]

end A292294

/-! ## A292294.P14352902733208467032

`A252280(A020113(n))-2`
-/

namespace A292294.P14352902733208467032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252280 (A020113 n).toNat - 2

end

end A292294.P14352902733208467032

namespace A292294

/-- `A252280(A020113(n))-2` -/
def P14352902733208467032.Spec : Prop :=
  ∀ n, P14352902733208467032.a n = A292294 n

end A292294

/-! ## A292294.P6734453408995545389

`A249686(∏[∏[A156767(n)]])`
-/

namespace A292294.P6734453408995545389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249686 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292294.P6734453408995545389

namespace A292294

/-- `A249686(∏[∏[A156767(n)]])` -/
def P6734453408995545389.Spec : Prop :=
  ∀ n, P6734453408995545389.a n = A292294 n

end A292294

/-!
# A292295: Sum of values of vertices of type A at level n of the hyperbolic Pascal pyramid.

The programs for A292295, the canonical program `A292295.P8569148299587674898` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292295 has offset 0).

The definition of A292295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292295.P8569148299587674898

`5*a(n-1)-6*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=18`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292295

/-- `5*a(n-1)-6*a(n-2)+2*a(n-3)` -/
def P8569148299587674898.Spec : Prop :=
  ∀ n, P8569148299587674898.a n = A292295 n

theorem P8569148299587674898.correct : P8569148299587674898.Spec := by
  intro n
  simp only [A292295]

end A292295

/-! ## A292295.P10716606800734080624

`lcm(2, 2*(1-a(n-1))+a(n-2)+1)` with `a(0)=0, a(1)=0`
-/

namespace A292295.P10716606800734080624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lcm 2 (2 * (1 - (a (n - 1) : ℤ)) + (a (n - 2) + 1 : ℤ))

end

end A292295.P10716606800734080624

namespace A292295

/-- `lcm(2, 2*(1-a(n-1))+a(n-2)+1)` -/
def P10716606800734080624.Spec : Prop :=
  ∀ n, (P10716606800734080624.a n : ℤ) = A292295 n

end A292295

/-! ## A292295.P7667073725731260128

`3*A293067(n)`
-/

namespace A292295.P7667073725731260128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A293067 n

end

end A292295.P7667073725731260128

namespace A292295

/-- `3*A293067(n)` -/
def P7667073725731260128.Spec : Prop :=
  ∀ n, P7667073725731260128.a n = A292295 n

end A292295

/-! ## A292295.P5506405548189246810

`A293067(n)+lcm(A040002(n), A293067(n))`
-/

namespace A292295.P5506405548189246810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293067 n + (Int.lcm (A040002 n) (A293067 n) : ℤ)

end

end A292295.P5506405548189246810

namespace A292295

/-- `A293067(n)+lcm(A040002(n), A293067(n))` -/
def P5506405548189246810.Spec : Prop :=
  ∀ n, P5506405548189246810.a n = A292295 n

end A292295

/-! ## A292295.P14328457712494277271

`Δ[A292296(n)]-A292296(n)`
-/

namespace A292295.P14328457712494277271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A292296 n

end

end A292295.P14328457712494277271

namespace A292295

/-- `Δ[A292296(n)]-A292296(n)` -/
def P14328457712494277271.Spec : Prop :=
  ∀ n, P14328457712494277271.a n = A292295 n

end A292295

/-! ## A292295.P1945888999298322430

`A292296(n+1)-2*A292296(n)`
-/

namespace A292295.P1945888999298322430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292296 (n + 1) - 2 * A292296 n

end

end A292295.P1945888999298322430

namespace A292295

/-- `A292296(n+1)-2*A292296(n)` -/
def P1945888999298322430.Spec : Prop :=
  ∀ n, P1945888999298322430.a n = A292295 n

end A292295

/-!
# A292296: Sum of values of vertices of type B at level n of the hyperbolic Pascal pyramid.

The programs for A292296, the canonical program `A292296.P10180244859335684143` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292296 has offset 0).

The definition of A292296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292296.P10180244859335684143

`5*a(n-1)-6*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292296

/-- `5*a(n-1)-6*a(n-2)+2*a(n-3)` -/
def P10180244859335684143.Spec : Prop :=
  ∀ n, P10180244859335684143.a n = A292296 n

theorem P10180244859335684143.correct : P10180244859335684143.Spec := by
  intro n
  simp only [A292296]

end A292296

/-! ## A292296.P17378189516022840912

`2*(2*a(n-1)+3-a(n-2))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A292296.P17378189516022840912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  2 * (2 * a (n - 1) + (3 - a (n - 2)))

end

end A292296.P17378189516022840912

namespace A292296

/-- `2*(2*a(n-1)+3-a(n-2))` -/
def P17378189516022840912.Spec : Prop :=
  ∀ n, P17378189516022840912.a n = A292296 n

end A292296

/-! ## A292296.P2846520309463285000

`2*(2*a(n-1)-(a(n-2)-3))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A292296.P2846520309463285000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  2 * (2 * a (n - 1) - (a (n - 2) - 3))

end

end A292296.P2846520309463285000

namespace A292296

/-- `2*(2*a(n-1)-(a(n-2)-3))` -/
def P2846520309463285000.Spec : Prop :=
  ∀ n, P2846520309463285000.a n = A292296 n

end A292296

/-! ## A292296.P10055704307613031241

`(9*A006012(n))%∑[A006012(n)]`
-/

namespace A292296.P10055704307613031241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A006012 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292296.P10055704307613031241

namespace A292296

/-- `(9*A006012(n))%∑[A006012(n)]` -/
def P10055704307613031241.Spec : Prop :=
  ∀ n, P10055704307613031241.a n = A292296 n

end A292296

/-! ## A292296.P10451870717043712626

`Δ[∑[A292298(n)]-A292299(n)]`
-/

namespace A292296.P10451870717043712626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A292299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292296.P10451870717043712626

namespace A292296

/-- `Δ[∑[A292298(n)]-A292299(n)]` -/
def P10451870717043712626.Spec : Prop :=
  ∀ n, P10451870717043712626.a n = A292296 n

end A292296

/-! ## A292296.P8594602055390875253

`A292298(n+1)-Δ[A292299(n)]`
-/

namespace A292296.P8594602055390875253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292298 (n + 1) - (f1 (n + 1) - f1 n)

end

end A292296.P8594602055390875253

namespace A292296

/-- `A292298(n+1)-Δ[A292299(n)]` -/
def P8594602055390875253.Spec : Prop :=
  ∀ n, P8594602055390875253.a n = A292296 n

end A292296

/-! ## A292296.P550207632661232902

`A292298(n+1)+A292299(n)-A292299(n+1)`
-/

namespace A292296.P550207632661232902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292298 (n + 1) + (A292299 n - A292299 (n + 1))

end

end A292296.P550207632661232902

namespace A292296

/-- `A292298(n+1)+A292299(n)-A292299(n+1)` -/
def P550207632661232902.Spec : Prop :=
  ∀ n, P550207632661232902.a n = A292296 n

end A292296

/-!
# A292297: Sum of values of vertices of type C at level n of the hyperbolic Pascal pyramid.

The programs for A292297, there is no canonical definition to state claims against.
-/

/-! ## A292297.P17571486243573409777

`A079693(A001190(2*n+3)-∑[2^n])`
-/

namespace A292297.P17571486243573409777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079693 (A001190 (2 * n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A292297.P17571486243573409777

/-! ## A292297.P8762385398732349814

`A236840(A005651(n)-A015459(n))`
-/

namespace A292297.P8762385398732349814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236840 (A005651 n - A015459 n).toNat

end

end A292297.P8762385398732349814

/-! ## A292297.P7016374448407468468

`A069283(A028244(n+1))*A070292(n+5)`
-/

namespace A292297.P7016374448407468468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A028244 (n + 1)).toNat * A070292 (n + 5)

end

end A292297.P7016374448407468468

/-!
# A292298: Sum of values of vertices of type D at level n of the hyperbolic Pascal pyramid.

The programs for A292298, there is no canonical definition to state claims against.
-/

/-! ## A292298.P16714100271839354965

`A052928(A002375(n!)²)`
-/

namespace A292298.P16714100271839354965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A002375 (Nat.factorial n) ^ 2).toNat

end

end A292298.P16714100271839354965

/-! ## A292298.P7242120146119386880

`A075369(A070428(n+1))%(n+1)!`
-/

namespace A292298.P7242120146119386880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075369 (A070428 (n + 1)).toNat) (Nat.factorial (n + 1) : ℤ)

end

end A292298.P7242120146119386880

/-! ## A292298.P2079345726189430129

`A111859(A340355(n))*A152909(n)`
-/

namespace A292298.P2079345726189430129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111859 (A340355 n).toNat * A152909 n

end

end A292298.P2079345726189430129

/-!
# A292299: Sum of values of vertices of type E at level n of the hyperbolic Pascal pyramid.

The programs for A292299, there is no canonical definition to state claims against.
-/

/-! ## A292299.P15456548871733077619

`∑[∑[A111859(n^n)]]`
-/

namespace A292299.P15456548871733077619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111859 (n ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292299.P15456548871733077619

/-! ## A292299.P8717997437770870466

`∑{p}[A287191(∑[∑{e}[n, #]]), #]`
-/

namespace A292299.P8717997437770870466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287191 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A292299.P8717997437770870466

