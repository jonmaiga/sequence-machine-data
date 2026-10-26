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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A284900: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^4.

The programs for A284900, the canonical program `A284900.P1510735213663924980` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284900 has offset 1).

The definition of A284900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284900.P1510735213663924980

`∑{d}[n+1, A309338(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284900

/-- `∑{d}[n+1, A309338(#)]` -/
def P1510735213663924980.Spec : Prop :=
  ∀ n, P1510735213663924980.a n = A284900 (n + 1)

theorem P1510735213663924980.correct : P1510735213663924980.Spec := by
  intro n
  simp only [A284900, Nat.add_sub_cancel]

end A284900

/-! ## A284900.P1262917318548717395

`∑{d}[n+1, #*A309335(#)]`
-/

namespace A284900.P1262917318548717395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A309335 d

end

end A284900.P1262917318548717395

namespace A284900

/-- `∑{d}[n+1, #*A309335(#)]` -/
def P1262917318548717395.Spec : Prop :=
  ∀ n, P1262917318548717395.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P12065570586537430048

`∑{d}[n+1, A048272(#)*A059377((n+1)/#)]`
-/

namespace A284900.P12065570586537430048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P12065570586537430048

namespace A284900

/-- `∑{d}[n+1, A048272(#)*A059377((n+1)/#)]` -/
def P12065570586537430048.Spec : Prop :=
  ∀ n, P12065570586537430048.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P4290416747371088454

`∑{d}[n+1, A078307(#)*A189393((n+1)/#)]`
-/

namespace A284900.P4290416747371088454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078307 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P4290416747371088454

namespace A284900

/-- `∑{d}[n+1, A078307(#)*A189393((n+1)/#)]` -/
def P4290416747371088454.Spec : Prop :=
  ∀ n, P4290416747371088454.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P16261915282785096238

`∑{d}[n+1, A055615(#)*A288420((n+1)/#)]`
-/

namespace A284900.P16261915282785096238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A288420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P16261915282785096238

namespace A284900

/-- `∑{d}[n+1, A055615(#)*A288420((n+1)/#)]` -/
def P16261915282785096238.Spec : Prop :=
  ∀ n, P16261915282785096238.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P7985081657416841462

`∑{d}[n+1, A068970(#)*A309337((n+1)/#)]`
-/

namespace A284900.P7985081657416841462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A309337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P7985081657416841462

namespace A284900

/-- `∑{d}[n+1, A068970(#)*A309337((n+1)/#)]` -/
def P7985081657416841462.Spec : Prop :=
  ∀ n, P7985081657416841462.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P695734642954883637

`∑{d}[n+1, A088705(#)*A309336((n+1)/#)]`
-/

namespace A284900.P695734642954883637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P695734642954883637

namespace A284900

/-- `∑{d}[n+1, A088705(#)*A309336((n+1)/#)]` -/
def P695734642954883637.Spec : Prop :=
  ∀ n, P695734642954883637.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P9414385818664259825

`∑{d}[n+1, A078306(#)*A379833((n+1)/#)]`
-/

namespace A284900.P9414385818664259825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078306 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P9414385818664259825

namespace A284900

/-- `∑{d}[n+1, A078306(#)*A379833((n+1)/#)]` -/
def P9414385818664259825.Spec : Prop :=
  ∀ n, P9414385818664259825.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P12406963693516601856

`∑{d}[n+1, A193356(#)*A372952((n+1)/#)]`
-/

namespace A284900.P12406963693516601856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P12406963693516601856

namespace A284900

/-- `∑{d}[n+1, A193356(#)*A372952((n+1)/#)]` -/
def P12406963693516601856.Spec : Prop :=
  ∀ n, P12406963693516601856.a n = A284900 (n + 1)

end A284900

/-! ## A284900.P15879624897346718067

`∑{d}[n+1, A117212(#)*A281372((n+1)/#)]`
-/

namespace A284900.P15879624897346718067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A281372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284900.P15879624897346718067

namespace A284900

/-- `∑{d}[n+1, A117212(#)*A281372((n+1)/#)]` -/
def P15879624897346718067.Spec : Prop :=
  ∀ n, P15879624897346718067.a n = A284900 (n + 1)

end A284900

/-!
# A284901: Fixed point of the morphism 0 -> 01, 1 -> 1000.

The programs for A284901, there is no canonical definition to state claims against.
-/

/-! ## A284901.P865010263096227429

`A284903(n+1)%2`
-/

namespace A284901.P865010263096227429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284903 (n + 1)) 2

end

end A284901.P865010263096227429

/-! ## A284901.P2690226538922342380

`1-char[A284902(n+1)-1]`
-/

namespace A284901.P2690226538922342380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284902 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284901.P2690226538922342380

/-! ## A284901.P11423403915567705251

`and(A057427(n), A284903(n+1))`
-/

namespace A284901.P11423403915567705251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A284903 (n + 1))

end

end A284901.P11423403915567705251

/-! ## A284901.P15173737563290534745

`and(A267871(n), A284903(n+1))`
-/

namespace A284901.P15173737563290534745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267871 n) (A284903 (n + 1))

end

end A284901.P15173737563290534745

/-! ## A284901.P15348448295523448990

`A255365(or(1, A284903(n+1))-A284903(n+1))`
-/

namespace A284901.P15348448295523448990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255365 (Int.lor 1 (A284903 (n + 1)) - A284903 (n + 1)).toNat

end

end A284901.P15348448295523448990

/-! ## A284901.P1851538586491306231

`A309686(Δ[A284903(n+1)]+2)/2`
-/

namespace A284901.P1851538586491306231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284903 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309686 (f1 (n + 1) - f1 n + 2).toNat : ℚ) / 2

end

end A284901.P1851538586491306231

/-! ## A284901.P17328887121949735706

`A008683(A032532(A032532(Δ[A284903(n+1)]+1)+1))`
-/

namespace A284901.P17328887121949735706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A032532 (A032532 (f1 (n + 1) - f1 n + 1).toNat + 1).toNat).toNat

end

end A284901.P17328887121949735706

/-! ## A284901.P1393688259778422238

`and(A284903(n+1), A284929(A284931(n+1)))`
-/

namespace A284901.P1393688259778422238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284903 (n + 1)) (A284929 (A284931 (n + 1)).toNat)

end

end A284901.P1393688259778422238

/-! ## A284901.P16543252186269516704

`and(A284893(A284895(n+1)), A284903(n+1))`
-/

namespace A284901.P16543252186269516704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284893 (A284895 (n + 1)).toNat) (A284903 (n + 1))

end

end A284901.P16543252186269516704

/-! ## A284901.P1200767881688661135

`and(A284878(A284880(n+1)), A284903(n+1))`
-/

namespace A284901.P1200767881688661135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284878 (A284880 (n + 1)).toNat) (A284903 (n + 1))

end

end A284901.P1200767881688661135

/-! ## A284901.P3814813019724235295

`and(A284903(n+1), A284905(A284907(n+1)))`
-/

namespace A284901.P3814813019724235295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284903 (n + 1)) (A284905 (A284907 (n + 1)).toNat)

end

end A284901.P3814813019724235295

/-! ## A284901.P16531670385948477023

`and(A284903(n+1), A284912(A284914(n+1)))`
-/

namespace A284901.P16531670385948477023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284903 (n + 1)) (A284912 (A284914 (n + 1)).toNat)

end

end A284901.P16531670385948477023

/-! ## A284901.P18080593413736750731

`and(A284903(n+1), A284935(A284937(n+1)))`
-/

namespace A284901.P18080593413736750731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284903 (n + 1)) (A284935 (A284937 (n + 1)).toNat)

end

end A284901.P18080593413736750731

/-! ## A284901.P10984599308764859864

`A285142(A284903(n+1)+2*A285142(n+1))`
-/

namespace A284901.P10984599308764859864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (A284903 (n + 1) + 2 * A285142 (n + 1)).toNat

end

end A284901.P10984599308764859864

/-! ## A284901.P5683448528080799785

`A285142(A285142(n+1)+A285142(n+1)+A284903(n+1))`
-/

namespace A284901.P5683448528080799785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (A285142 (n + 1) + (A285142 (n + 1) + A284903 (n + 1))).toNat

end

end A284901.P5683448528080799785

/-! ## A284901.P14688117487190367308

`A000035(A284903(n+1))`
-/

namespace A284901.P14688117487190367308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A284903 (n + 1)).toNat

end

end A284901.P14688117487190367308

/-! ## A284901.P7207431814716711377

`and(A284903(n+1), A284929(A284894(n+1)))`
-/

namespace A284901.P7207431814716711377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284903 (n + 1)) (A284929 (A284894 (n + 1)).toNat)

end

end A284901.P7207431814716711377

/-! ## A284901.P12573382466203772108

`and(A176794(n), A284903(n+1))`
-/

namespace A284901.P12573382466203772108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A284903 (n + 1))

end

end A284901.P12573382466203772108

/-! ## A284901.P5803052659909202443

`and(A020737(n), A284903(n+1))`
-/

namespace A284901.P5803052659909202443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A284903 (n + 1))

end

end A284901.P5803052659909202443

/-!
# A284902: Positions of 0 in A284901; complement of A284903.

The programs for A284902, there is no canonical definition to state claims against.
-/

/-! ## A284902.P3866076414515692418

`eq[0, A284901(n+1)]+1`
-/

namespace A284902.P3866076414515692418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284902.P3866076414515692418

/-! ## A284902.P1109162467441713830

`lt[Δ[A284903(n+1)], 3]+1`
-/

namespace A284902.P1109162467441713830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A284902.P1109162467441713830

/-! ## A284902.P10636559305622293736

`lt[n*A284901(A028310(n)), n]`
-/

namespace A284902.P10636559305622293736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284901 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284902.P10636559305622293736

/-! ## A284902.P4437735595696559469

`lt[char[A284903(n+1)], A057427(n)]`
-/

namespace A284902.P4437735595696559469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284903 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A284902.P4437735595696559469

/-! ## A284902.P11030905749904670795

`record[n+1-A000124(n)*A284901(n+1)]`
-/

namespace A284902.P11030905749904670795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000124 n * A284901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P11030905749904670795

/-! ## A284902.P3847694113050736661

`record[n+1-A007094(n*A284901(n+1))]`
-/

namespace A284902.P3847694113050736661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007094 ((n : ℤ) * A284901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P3847694113050736661

/-! ## A284902.P4967808528216126235

`record[(n+1)/A000124(n*A284901(n+1))]`
-/

namespace A284902.P4967808528216126235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000124 ((n : ℤ) * A284901 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P4967808528216126235

/-! ## A284902.P6105211658922670060

`record[n+1-A000005(n+1)*A284901(n+1)]`
-/

namespace A284902.P6105211658922670060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) * A284901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P6105211658922670060

/-! ## A284902.P10452042605340809554

`record[n+1-A000010(n+1)*A284901(n+1)]`
-/

namespace A284902.P10452042605340809554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A284901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P10452042605340809554

/-! ## A284902.P2299474135149521283

`record[n+1-A002808(n+1)*A284901(n+1)]`
-/

namespace A284902.P2299474135149521283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002808 (n + 1) * A284901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P2299474135149521283

/-! ## A284902.P16392409799672619203

`record[n+1-A284901(n+1)*A284903(n+1)]`
-/

namespace A284902.P16392409799672619203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284901 (n + 1) * A284903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P16392409799672619203

/-! ## A284902.P10129977634059926832

`lt[A284901(A028310(n)), A057427(n)]`
-/

namespace A284902.P10129977634059926832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284901 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284902.P10129977634059926832

/-! ## A284902.P1226228473303818832

`record[n+1-A000041(n)*A284901(n+1)]`
-/

namespace A284902.P1226228473303818832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000041 n * A284901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284902.P1226228473303818832

/-!
# A284903: Positions of 1 in A284901; complement of A284902.

The programs for A284903, there is no canonical definition to state claims against.
-/

/-! ## A284903.P16891263641394269528

`eq[1, A284901(n+1)]+1`
-/

namespace A284903.P16891263641394269528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284903.P16891263641394269528

/-! ## A284903.P12713528236679371186

`record[(n+2)*A284901(n+2)]`
-/

namespace A284903.P12713528236679371186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A284901 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284903.P12713528236679371186

/-! ## A284903.P17005217801127299102

`lt[0, A284901(A028310(n))]`
-/

namespace A284903.P17005217801127299102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284901 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284903.P17005217801127299102

/-! ## A284903.P9240727030102250215

`lt[n*char[A284902(n+1)], n]`
-/

namespace A284903.P9240727030102250215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284902 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A284903.P9240727030102250215

/-! ## A284903.P6042649352892487798

`eq[1, A284901(A000007(n)+n)]`
-/

namespace A284903.P6042649352892487798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284901 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284903.P6042649352892487798

/-! ## A284903.P5447913919251924609

`lt[char[A284902(n+1)], A057427(n)]`
-/

namespace A284903.P5447913919251924609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284902 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A284903.P5447913919251924609

/-! ## A284903.P8308651555149108220

`eq[1, A284901(A065033(2*n))]`
-/

namespace A284903.P8308651555149108220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284901 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284903.P8308651555149108220

/-! ## A284903.P12830583797633962864

`eq[1, A284901(A123108(2*n))]`
-/

namespace A284903.P12830583797633962864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284901 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284903.P12830583797633962864

/-!
# A284904: The number of integers k less than 2^n whose decimal representation of their reciprocals has an odd period.

The programs for A284904, there is no canonical definition to state claims against.
-/

/-! ## A284904.P8552224466873630567

`A006478(n)+A001221(A149096(n))`
-/

namespace A284904.P8552224466873630567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + A001221 (A149096 n).toNat

end

end A284904.P8552224466873630567

/-! ## A284904.P4090849561269266360

`∑[A265556(Δ[A191789(n)])]`
-/

namespace A284904.P4090849561269266360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284904.P4090849561269266360

/-! ## A284904.P7567094726194362621

`A168201(24*2^n)`
-/

namespace A284904.P7567094726194362621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (24 * 2 ^ n)

end

end A284904.P7567094726194362621

/-! ## A284904.P13094873916124627228

`floor(sqrt(A000203(4^n)/20))`
-/

namespace A284904.P13094873916124627228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000203 (4 ^ n) : ℚ) / 20 : ℝ)⌋

end

end A284904.P13094873916124627228

/-! ## A284904.P8564250122748244029

`A085141(A149445(n))`
-/

namespace A284904.P8564250122748244029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A149445 n).toNat

end

end A284904.P8564250122748244029

/-!
# A284905: Fixed point of the morphism 0 -> 01, 1 -> 1001.

The programs for A284905, the canonical program `A284905.P11490552408293159038` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284905 has offset 1).

The definition of A284905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284905.P11490552408293159038

`char[A285347(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284905

/-- `char[A285347(n+1)]` -/
def P11490552408293159038.Spec : Prop :=
  ∀ n, (P11490552408293159038.a n : ℤ) = A284905 (n + 1)

theorem P11490552408293159038.correct : P11490552408293159038.Spec := by
  intro n
  simp only [A284905, Nat.add_sub_cancel]

end A284905

/-! ## A284905.P11480341479041848133

`char[A284907(n+1)-1]`
-/

namespace A284905.P11480341479041848133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284905.P11480341479041848133

namespace A284905

/-- `char[A284907(n+1)-1]` -/
def P11480341479041848133.Spec : Prop :=
  ∀ n, (P11480341479041848133.a n : ℤ) = A284905 (n + 1)

end A284905

/-! ## A284905.P17874699874849079919

`char[A285353(n+1)-n]`
-/

namespace A284905.P17874699874849079919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284905.P17874699874849079919

namespace A284905

/-- `char[A285353(n+1)-n]` -/
def P17874699874849079919.Spec : Prop :=
  ∀ n, (P17874699874849079919.a n : ℤ) = A284905 (n + 1)

end A284905

/-! ## A284905.P13538276949608801292

`char[A189670(n+1)-(n+1)]`
-/

namespace A284905.P13538276949608801292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284905.P13538276949608801292

namespace A284905

/-- `char[A189670(n+1)-(n+1)]` -/
def P13538276949608801292.Spec : Prop :=
  ∀ n, (P13538276949608801292.a n : ℤ) = A284905 (n + 1)

end A284905

/-! ## A284905.P7994311504095837986

`A285305(A028352(n+1)/2+1)`
-/

namespace A284905.P7994311504095837986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (SequenceMachineLib.roundAway ((A028352 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A284905.P7994311504095837986

namespace A284905

/-- `A285305(A028352(n+1)/2+1)` -/
def P7994311504095837986.Spec : Prop :=
  ∀ n, P7994311504095837986.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P14693000733005245336

`A285345(n-A285345(a(n-2)+1)+1)` with `a(0)=0, a(1)=1`
-/

namespace A284905.P14693000733005245336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A285345 ((n : ℤ) - A285345 (a (n - 2) + 1).toNat + 1).toNat

end

end A284905.P14693000733005245336

namespace A284905

/-- `A285345(n-A285345(a(n-2)+1)+1)` -/
def P14693000733005245336.Spec : Prop :=
  ∀ n, P14693000733005245336.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P13906738386845467319

`A285305(A274601(n+1)+1)`
-/

namespace A284905.P13906738386845467319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (A274601 (n + 1) + 1).toNat

end

end A284905.P13906738386845467319

namespace A284905

/-- `A285305(A274601(n+1)+1)` -/
def P13906738386845467319.Spec : Prop :=
  ∀ n, P13906738386845467319.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P13768220887824211283

`A284775(A274601(n+1)+2)`
-/

namespace A284905.P13768220887824211283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A274601 (n + 1) + 2).toNat

end

end A284905.P13768220887824211283

namespace A284905

/-- `A284775(A274601(n+1)+2)` -/
def P13768220887824211283.Spec : Prop :=
  ∀ n, P13768220887824211283.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P17994830654445040633

`A189668(floor(n/2)+n+1)`
-/

namespace A284905.P17994830654445040633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat

end

end A284905.P17994830654445040633

namespace A284905

/-- `A189668(floor(n/2)+n+1)` -/
def P17994830654445040633.Spec : Prop :=
  ∀ n, P17994830654445040633.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P7491135241473474422

`A287438(∑[char[2*n]]+n)%2`
-/

namespace A284905.P7491135241473474422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287438 (∑ j ∈ Finset.range (n + 1), f1 j + n)) 2

end

end A284905.P7491135241473474422

namespace A284905

/-- `A287438(∑[char[2*n]]+n)%2` -/
def P7491135241473474422.Spec : Prop :=
  ∀ n, P7491135241473474422.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P18108611919600099513

`and(1, A189668(A284818(n+1)))`
-/

namespace A284905.P18108611919600099513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A189668 (A284818 (n + 1)).toNat)

end

end A284905.P18108611919600099513

namespace A284905

/-- `and(1, A189668(A284818(n+1)))` -/
def P18108611919600099513.Spec : Prop :=
  ∀ n, P18108611919600099513.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P9365546026371936653

`2*A001651(n+1)-A284907(A001651(n+1))`
-/

namespace A284905.P9365546026371936653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001651 (n + 1) - A284907 (A001651 (n + 1)).toNat

end

end A284905.P9365546026371936653

namespace A284905

/-- `2*A001651(n+1)-A284907(A001651(n+1))` -/
def P9365546026371936653.Spec : Prop :=
  ∀ n, P9365546026371936653.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P2762986691747467727

`A189632(A294178(n))`
-/

namespace A284905.P2762986691747467727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (A294178 n).toNat

end

end A284905.P2762986691747467727

namespace A284905

/-- `A189632(A294178(n))` -/
def P2762986691747467727.Spec : Prop :=
  ∀ n, P2762986691747467727.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P16882980372214540804

`A285345(A136320(n))`
-/

namespace A284905.P16882980372214540804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (A136320 n).toNat

end

end A284905.P16882980372214540804

namespace A284905

/-- `A285345(A136320(n))` -/
def P16882980372214540804.Spec : Prop :=
  ∀ n, P16882980372214540804.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P15733380993957300066

`A189632(A047241(n+1))`
-/

namespace A284905.P15733380993957300066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (A047241 (n + 1)).toNat

end

end A284905.P15733380993957300066

namespace A284905

/-- `A189632(A047241(n+1))` -/
def P15733380993957300066.Spec : Prop :=
  ∀ n, P15733380993957300066.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P4534879357073219977

`1-A189668(A087444(n+1)+1)`
-/

namespace A284905.P4534879357073219977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189668 (A087444 (n + 1) + 1).toNat

end

end A284905.P4534879357073219977

namespace A284905

/-- `1-A189668(A087444(n+1)+1)` -/
def P4534879357073219977.Spec : Prop :=
  ∀ n, P4534879357073219977.a n = A284905 (n + 1)

end A284905

/-! ## A284905.P14124661970461400256

`A287438(5*n+2-A028242(n+1))-1`
-/

namespace A284905.P14124661970461400256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 ((5 * n : ℤ) + (2 - A028242 (n + 1))).toNat - 1

end

end A284905.P14124661970461400256

namespace A284905

/-- `A287438(5*n+2-A028242(n+1))-1` -/
def P14124661970461400256.Spec : Prop :=
  ∀ n, P14124661970461400256.a n = A284905 (n + 1)

end A284905

/-!
# A284906: Positions of 0 in A284905; complement of A284907.

The programs for A284906, the canonical program `A284906.P962888511464918355` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284906 has offset 1).

The definition of A284906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284906.P3336508467664287836

`comp[A285347(n+1)]+1`
-/

namespace A284906.P3336508467664287836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284906.P3336508467664287836

namespace A284906

/-- `comp[A285347(n+1)]+1` -/
def P3336508467664287836.Spec : Prop :=
  ∀ n, (P3336508467664287836.a n : ℤ) = A284906 (n + 1)

end A284906

/-! ## A284906.P962888511464918355

`A189668(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284906

/-- `A189668(n+1)+Δ[n²]` -/
def P962888511464918355.Spec : Prop :=
  ∀ n, P962888511464918355.a n = A284906 (n + 1)

theorem P962888511464918355.correct : P962888511464918355.Spec := by
  intro n
  simp only [A284906, Nat.add_sub_cancel]

end A284906

/-! ## A284906.P13034305388014089269

`comp[A284907(n+1)-1]+1`
-/

namespace A284906.P13034305388014089269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284906.P13034305388014089269

namespace A284906

/-- `comp[A284907(n+1)-1]+1` -/
def P13034305388014089269.Spec : Prop :=
  ∀ n, (P13034305388014089269.a n : ℤ) = A284906 (n + 1)

end A284906

/-! ## A284906.P4641125099920264460

`comp[A285353(n+1)-n]+1`
-/

namespace A284906.P4641125099920264460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284906.P4641125099920264460

namespace A284906

/-- `comp[A285353(n+1)-n]+1` -/
def P4641125099920264460.Spec : Prop :=
  ∀ n, (P4641125099920264460.a n : ℤ) = A284906 (n + 1)

end A284906

/-! ## A284906.P10790657999685861708

`A016885(n)-A189670(n+1)`
-/

namespace A284906.P10790657999685861708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A189670 (n + 1)

end

end A284906.P10790657999685861708

namespace A284906

/-- `A016885(n)-A189670(n+1)` -/
def P10790657999685861708.Spec : Prop :=
  ∀ n, P10790657999685861708.a n = A284906 (n + 1)

theorem P10790657999685861708.correct : P10790657999685861708.Spec := by
  intro n
  simp only [A284906, Nat.add_sub_cancel, A284906.P10790657999685861708.a, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A016885, A016885.P12442016633976001399.a, A189668, A189668.P16396119617420465884.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284906

/-! ## A284906.P8587150828999565709

`A004767(n)-A284907(n+1)`
-/

namespace A284906.P8587150828999565709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284907 (n + 1)

end

end A284906.P8587150828999565709

namespace A284906

/-- `A004767(n)-A284907(n+1)` -/
def P8587150828999565709.Spec : Prop :=
  ∀ n, P8587150828999565709.a n = A284906 (n + 1)

theorem P8587150828999565709.correct : P8587150828999565709.Spec := by
  intro n
  simp only [A284906, Nat.add_sub_cancel, A284906.P8587150828999565709.a, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A004767, A004767.P13352534504447192883.a, A189668, A189668.P16396119617420465884.a, A284907, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284906

/-! ## A284906.P16353269662152300084

`A016825(n)-A285347(n+1)`
-/

namespace A284906.P16353269662152300084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A285347 (n + 1)

end

end A284906.P16353269662152300084

namespace A284906

/-- `A016825(n)-A285347(n+1)` -/
def P16353269662152300084.Spec : Prop :=
  ∀ n, P16353269662152300084.a n = A284906 (n + 1)

theorem P16353269662152300084.correct : P16353269662152300084.Spec := by
  intro n
  simp only [A284906, Nat.add_sub_cancel, A284906.P16353269662152300084.a, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A016825, A016825.P4712696052905976233.a, A189668, A189668.P16396119617420465884.a, A285347, A285347.P10878793886673022585.a, A284907, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284906

/-! ## A284906.P7123465209191139578

`A016873(n)-A285353(n+1)`
-/

namespace A284906.P7123465209191139578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A285353 (n + 1)

end

end A284906.P7123465209191139578

namespace A284906

/-- `A016873(n)-A285353(n+1)` -/
def P7123465209191139578.Spec : Prop :=
  ∀ n, P7123465209191139578.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P8895313409964650305

`(A082108(n)+1)/A284907(n+1)`
-/

namespace A284906.P8895313409964650305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082108 n + 1 : ℚ) / (A284907 (n + 1) : ℚ)

end

end A284906.P8895313409964650305

namespace A284906

/-- `(A082108(n)+1)/A284907(n+1)` -/
def P8895313409964650305.Spec : Prop :=
  ∀ n, P8895313409964650305.a n = (A284906 (n + 1) : ℚ)

end A284906

/-! ## A284906.P2957969638688415176

`xor(A088837(n+1), A284907(n+1))`
-/

namespace A284906.P2957969638688415176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A284907 (n + 1))

end

end A284906.P2957969638688415176

namespace A284906

/-- `xor(A088837(n+1), A284907(n+1))` -/
def P2957969638688415176.Spec : Prop :=
  ∀ n, P2957969638688415176.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P546811573224960348

`A285347(n+1)+2*A189668(n+1)`
-/

namespace A284906.P546811573224960348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1) + 2 * A189668 (n + 1)

end

end A284906.P546811573224960348

namespace A284906

/-- `A285347(n+1)+2*A189668(n+1)` -/
def P546811573224960348.Spec : Prop :=
  ∀ n, P546811573224960348.a n = A284906 (n + 1)

theorem P546811573224960348.correct : P546811573224960348.Spec := by
  intro n
  simp only [A284906, Nat.add_sub_cancel, A284906.P546811573224960348.a, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A189668, A189668.P16396119617420465884.a, A285347, A285347.P10878793886673022585.a, A284907, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284906

/-! ## A284906.P7809363679098478947

`A285250(n+1)+A285251(n+1)-A284907(n+1)`
-/

namespace A284906.P7809363679098478947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A284907 (n + 1))

end

end A284906.P7809363679098478947

namespace A284906

/-- `A285250(n+1)+A285251(n+1)-A284907(n+1)` -/
def P7809363679098478947.Spec : Prop :=
  ∀ n, P7809363679098478947.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P1447848358796982534

`A285253(n+1)+A285254(n+1)-A284907(n+1)`
-/

namespace A284906.P1447848358796982534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + (A285254 (n + 1) - A284907 (n + 1))

end

end A284906.P1447848358796982534

namespace A284906

/-- `A285253(n+1)+A285254(n+1)-A284907(n+1)` -/
def P1447848358796982534.Spec : Prop :=
  ∀ n, P1447848358796982534.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P4835404151102157479

`A285347(n+2)-A069003(Δ[A284907(n+1)]+1)`
-/

namespace A284906.P4835404151102157479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 2) - A069003 (f1 (n + 1) - f1 n + 1).toNat

end

end A284906.P4835404151102157479

namespace A284906

/-- `A285347(n+2)-A069003(Δ[A284907(n+1)]+1)` -/
def P4835404151102157479.Spec : Prop :=
  ∀ n, P4835404151102157479.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P15066588998244315417

`A189669(Δ[n²])-n`
-/

namespace A284906.P15066588998244315417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A284906.P15066588998244315417

namespace A284906

/-- `A189669(Δ[n²])-n` -/
def P15066588998244315417.Spec : Prop :=
  ∀ n, P15066588998244315417.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P7098944968906241229

`A189632(2*n+1)+Δ[n²]`
-/

namespace A284906.P7098944968906241229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284906.P7098944968906241229

namespace A284906

/-- `A189632(2*n+1)+Δ[n²]` -/
def P7098944968906241229.Spec : Prop :=
  ∀ n, P7098944968906241229.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P6742794590055697769

`A284905(2*n+1)+Δ[n²]`
-/

namespace A284906.P6742794590055697769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284906.P6742794590055697769

namespace A284906

/-- `A284905(2*n+1)+Δ[n²]` -/
def P6742794590055697769.Spec : Prop :=
  ∀ n, P6742794590055697769.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P6373795316711045506

`3*n+2-(A285345(2*n+1)+n)`
-/

namespace A284906.P6373795316711045506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - (A285345 (2 * n + 1) + (n : ℤ))

end

end A284906.P6373795316711045506

namespace A284906

/-- `3*n+2-(A285345(2*n+1)+n)` -/
def P6373795316711045506.Spec : Prop :=
  ∀ n, P6373795316711045506.a n = A284906 (n + 1)

end A284906

/-! ## A284906.P10001406285723610882

`A014681(A284907(n+1))`
-/

namespace A284906.P10001406285723610882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284907 (n + 1)).toNat

end

end A284906.P10001406285723610882

namespace A284906

/-- `A014681(A284907(n+1))` -/
def P10001406285723610882.Spec : Prop :=
  ∀ n, P10001406285723610882.a n = A284906 (n + 1)

end A284906

/-!
# A284907: Positions of 1 in A284905; complement of A284906.

The programs for A284907, the canonical program `A284907.P2959481405445577709` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284907 has offset 1).

The definition of A284907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284907.P13452954924897741874

`A285347(n+1)+1`
-/

namespace A284907.P13452954924897741874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1) + 1

end

end A284907.P13452954924897741874

namespace A284907

/-- `A285347(n+1)+1` -/
def P13452954924897741874.Spec : Prop :=
  ∀ n, P13452954924897741874.a n = A284907 (n + 1)

theorem P13452954924897741874.correct : P13452954924897741874.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel, A284907.P13452954924897741874.a, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, A285347, A285347.P10878793886673022585.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284907

/-! ## A284907.P2959481405445577709

`A189670(n+1)-n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A284907

/-- `A189670(n+1)-n` -/
def P2959481405445577709.Spec : Prop :=
  ∀ n, P2959481405445577709.a n = A284907 (n + 1)

theorem P2959481405445577709.correct : P2959481405445577709.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel]

end A284907

/-! ## A284907.P8268415952206221154

`A285353(n+1)+1-n`
-/

namespace A284907.P8268415952206221154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1) + (1 - (n : ℤ))

end

end A284907.P8268415952206221154

namespace A284907

/-- `A285353(n+1)+1-n` -/
def P8268415952206221154.Spec : Prop :=
  ∀ n, P8268415952206221154.a n = A284907 (n + 1)

end A284907

/-! ## A284907.P7389196695188078294

`A326420(n)+a(n-1)` with `a(0)=2`
-/

namespace A284907.P7389196695188078294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A326420 n + a (n - 1)

end

end A284907.P7389196695188078294

namespace A284907

/-- `A326420(n)+a(n-1)` -/
def P7389196695188078294.Spec : Prop :=
  ∀ n, P7389196695188078294.a n = A284907 (n + 1)

end A284907

/-! ## A284907.P14242640049269657402

`2*(n+1)-A189668(n+1)`
-/

namespace A284907.P14242640049269657402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A189668 (n + 1)

end

end A284907.P14242640049269657402

namespace A284907

/-- `2*(n+1)-A189668(n+1)` -/
def P14242640049269657402.Spec : Prop :=
  ∀ n, P14242640049269657402.a n = A284907 (n + 1)

theorem P14242640049269657402.correct : P14242640049269657402.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel, A284907.P14242640049269657402.a, A284907.P2959481405445577709.a, A189668, A189668.P16396119617420465884.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284907

/-! ## A284907.P430757865469131111

`A004767(n)-A284906(n+1)`
-/

namespace A284907.P430757865469131111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284906 (n + 1)

end

end A284907.P430757865469131111

namespace A284907

/-- `A004767(n)-A284906(n+1)` -/
def P430757865469131111.Spec : Prop :=
  ∀ n, P430757865469131111.a n = A284907 (n + 1)

theorem P430757865469131111.correct : P430757865469131111.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel, A284907.P430757865469131111.a, A284907.P2959481405445577709.a, A004767, A004767.P13352534504447192883.a, A189670, A189670.P13812974504116450926.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284907

/-! ## A284907.P16206754986400087503

`A016825(n)+1-A284906(n+1)`
-/

namespace A284907.P16206754986400087503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (1 - A284906 (n + 1))

end

end A284907.P16206754986400087503

namespace A284907

/-- `A016825(n)+1-A284906(n+1)` -/
def P16206754986400087503.Spec : Prop :=
  ∀ n, P16206754986400087503.a n = A284907 (n + 1)

theorem P16206754986400087503.correct : P16206754986400087503.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel, A284907.P16206754986400087503.a, A284907.P2959481405445577709.a, A016825, A016825.P4712696052905976233.a, A189670, A189670.P13812974504116450926.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284907

/-! ## A284907.P13229351592070211177

`xor(A088837(n+1), A284906(n+1))`
-/

namespace A284907.P13229351592070211177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A284906 (n + 1))

end

end A284907.P13229351592070211177

namespace A284907

/-- `xor(A088837(n+1), A284906(n+1))` -/
def P13229351592070211177.Spec : Prop :=
  ∀ n, P13229351592070211177.a n = A284907 (n + 1)

end A284907

/-! ## A284907.P2140924492860650781

`A016789(n)-(A189668(n+1)+n)`
-/

namespace A284907.P2140924492860650781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A189668 (n + 1) + (n : ℤ))

end

end A284907.P2140924492860650781

namespace A284907

/-- `A016789(n)-(A189668(n+1)+n)` -/
def P2140924492860650781.Spec : Prop :=
  ∀ n, P2140924492860650781.a n = A284907 (n + 1)

theorem P2140924492860650781.correct : P2140924492860650781.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel, A284907.P2140924492860650781.a, A284907.P2959481405445577709.a, A016789, A016789.P8277564872725303677.a, A189668, A189668.P16396119617420465884.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284907

/-! ## A284907.P280305424334655479

`A016885(n)-(A284906(n+1)+n)`
-/

namespace A284907.P280305424334655479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - (A284906 (n + 1) + (n : ℤ))

end

end A284907.P280305424334655479

namespace A284907

/-- `A016885(n)-(A284906(n+1)+n)` -/
def P280305424334655479.Spec : Prop :=
  ∀ n, P280305424334655479.a n = A284907 (n + 1)

theorem P280305424334655479.correct : P280305424334655479.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel, A284907.P280305424334655479.a, A284907.P2959481405445577709.a, A016885, A016885.P12442016633976001399.a, A189670, A189670.P13812974504116450926.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284907

/-! ## A284907.P17998405453435541829

`A005408(n)+(1-A287528(n+1))²`
-/

namespace A284907.P17998405453435541829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A287528 (n + 1)) ^ 2

end

end A284907.P17998405453435541829

namespace A284907

/-- `A005408(n)+(1-A287528(n+1))²` -/
def P17998405453435541829.Spec : Prop :=
  ∀ n, P17998405453435541829.a n = A284907 (n + 1)

end A284907

/-! ## A284907.P12661346744326759809

`A001478(n+1)+A189670(n+1)+1`
-/

namespace A284907.P12661346744326759809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A189670 (n + 1) + 1)

end

end A284907.P12661346744326759809

namespace A284907

/-- `A001478(n+1)+A189670(n+1)+1` -/
def P12661346744326759809.Spec : Prop :=
  ∀ n, P12661346744326759809.a n = A284907 (n + 1)

theorem P12661346744326759809.correct : P12661346744326759809.Spec := by
  intro n
  simp only [A284907, Nat.add_sub_cancel, A284907.P12661346744326759809.a, A284907.P2959481405445577709.a, A001478, A001478.P11279598861711037921.a, A189670, A189670.P13812974504116450926.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284907

/-! ## A284907.P6057346738388200787

`∑[A326420(n+1)]+2-A326420(n+1)`
-/

namespace A284907.P6057346738388200787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A326420 (n + 1))

end

end A284907.P6057346738388200787

namespace A284907

/-- `∑[A326420(n+1)]+2-A326420(n+1)` -/
def P6057346738388200787.Spec : Prop :=
  ∀ n, P6057346738388200787.a n = A284907 (n + 1)

end A284907

/-! ## A284907.P1958413792190125558

`A285250(n+1)+A285251(n+1)-A284906(n+1)`
-/

namespace A284907.P1958413792190125558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (n + 1) + (A285251 (n + 1) - A284906 (n + 1))

end

end A284907.P1958413792190125558

namespace A284907

/-- `A285250(n+1)+A285251(n+1)-A284906(n+1)` -/
def P1958413792190125558.Spec : Prop :=
  ∀ n, P1958413792190125558.a n = A284907 (n + 1)

end A284907

/-! ## A284907.P2303174280375060624

`A285253(n+1)+A285254(n+1)-A284906(n+1)`
-/

namespace A284907.P2303174280375060624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (n + 1) + (A285254 (n + 1) - A284906 (n + 1))

end

end A284907.P2303174280375060624

namespace A284907

/-- `A285253(n+1)+A285254(n+1)-A284906(n+1)` -/
def P2303174280375060624.Spec : Prop :=
  ∀ n, P2303174280375060624.a n = A284907 (n + 1)

end A284907

/-! ## A284907.P7854867763564588525

`A285346(n+1)-(A189668(n+1)+A189668(n+2))`
-/

namespace A284907.P7854867763564588525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285346 (n + 1) - (A189668 (n + 1) + A189668 (n + 2))

end

end A284907.P7854867763564588525

namespace A284907

/-- `A285346(n+1)-(A189668(n+1)+A189668(n+2))` -/
def P7854867763564588525.Spec : Prop :=
  ∀ n, P7854867763564588525.a n = A284907 (n + 1)

end A284907

/-!
# A284908: a(n) = A000009(A000009(n)).

The programs for A284908, there is no canonical definition to state claims against.
-/

/-! ## A284908.P13247179010078246444

`A000009(A000009(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284908.P13247179010078246444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000009 n).toNat

end

end A284908.P13247179010078246444

/-! ## A284908.P6876308222914236281

`abs(A081360(abs(A081360(n))))`
-/

namespace A284908.P6876308222914236281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A081360 |A081360 n|.toNat)|

end

end A284908.P6876308222914236281

/-! ## A284908.P5353779637247673879

`∑{d}[A081360(n), A078374(#)]`
-/

namespace A284908.P5353779637247673879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078374 d

end

end A284908.P5353779637247673879

/-! ## A284908.P11345640911684222848

`A111133(∑[A087897(n)])+1`
-/

namespace A284908.P11345640911684222848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A284908.P11345640911684222848

/-! ## A284908.P12477918179020925403

`A052839(∑[A087897(n)])-1`
-/

namespace A284908.P12477918179020925403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A284908.P12477918179020925403

/-! ## A284908.P504770220163382335

`A111133(A111133(n)+1)+1`
-/

namespace A284908.P504770220163382335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A111133 n + 1).toNat + 1

end

end A284908.P504770220163382335

/-! ## A284908.P5087734463519317473

`A087135(A172033(2*n))/2`
-/

namespace A284908.P5087734463519317473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087135 (A172033 (2 * n)).toNat : ℚ) / 2

end

end A284908.P5087734463519317473

/-! ## A284908.P11795811060944721955

`A052839(A057428(n)+A052839(n))-1`
-/

namespace A284908.P11795811060944721955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A057428 n + A052839 n).toNat - 1

end

end A284908.P11795811060944721955

/-! ## A284908.P14816460508763948938

`A172033(A087135(n))`
-/

namespace A284908.P14816460508763948938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (A087135 n).toNat

end

end A284908.P14816460508763948938

/-! ## A284908.P13285023266010480690

`sqrt(A304990(sqrt(A304990(n))))`
-/

namespace A284908.P13285023266010480690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A304990 (SequenceMachineLib.roundAway (Real.sqrt (A304990 n : ℝ))).toNat : ℝ)

end

end A284908.P13285023266010480690

/-!
# A284909: a(n) = A000041(A000009(n)).

The programs for A284909, there is no canonical definition to state claims against.
-/

/-! ## A284909.P231535103479452150

`A000041(A000009(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284909.P231535103479452150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000009 n).toNat

end

end A284909.P231535103479452150

/-! ## A284909.P17073516652564013816

`A000041(abs(A081360(n)))`
-/

namespace A284909.P17073516652564013816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A081360 n|.toNat

end

end A284909.P17073516652564013816

/-! ## A284909.P12641600194132232651

`A000041(A054242(∑[n]))`
-/

namespace A284909.P12641600194132232651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A054242 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284909.P12641600194132232651

/-! ## A284909.P13696390210949126849

`A000041(∑[A087897(n)])`
-/

namespace A284909.P13696390210949126849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284909.P13696390210949126849

/-! ## A284909.P11073546807805294150

`A000041(A201377(∑[n]))`
-/

namespace A284909.P11073546807805294150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A201377 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284909.P11073546807805294150

/-! ## A284909.P16993921481506231309

`A000041(A264405(∑[n]))`
-/

namespace A284909.P16993921481506231309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A264405 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284909.P16993921481506231309

/-! ## A284909.P18390527720058392698

`A000041(A284593(∑[n]))`
-/

namespace A284909.P18390527720058392698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A284593 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284909.P18390527720058392698

/-! ## A284909.P2147276801388987496

`A000041(A111133(n)+1)`
-/

namespace A284909.P2147276801388987496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A111133 n + 1).toNat

end

end A284909.P2147276801388987496

/-! ## A284909.P11535098466381131790

`A000041(A052839(n)-1)`
-/

namespace A284909.P11535098466381131790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A052839 n - 1).toNat

end

end A284909.P11535098466381131790

/-! ## A284909.P14617432903421406397

`A000041(A117409(n+2))`
-/

namespace A284909.P14617432903421406397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A117409 (n + 2)).toNat

end

end A284909.P14617432903421406397

/-!
# A284910: a(n) = A000009(A000041(n)).

The programs for A284910, there is no canonical definition to state claims against.
-/

/-! ## A284910.P9669703940528161428

`A000009(A000041(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284910.P9669703940528161428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000041 n).toNat

end

end A284910.P9669703940528161428

/-! ## A284910.P23958268116215547

`A000009(A213598(n))`
-/

namespace A284910.P23958268116215547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A213598 n).toNat

end

end A284910.P23958268116215547

/-! ## A284910.P525155567859247575

`A000009(A330643(n))`
-/

namespace A284910.P525155567859247575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A330643 n).toNat

end

end A284910.P525155567859247575

/-! ## A284910.P13654113745884526244

`A000009(sqrt(A001255(n)))`
-/

namespace A284910.P13654113745884526244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

end

end A284910.P13654113745884526244

/-! ## A284910.P4479005004529625612

`A000009(∑[A002865(n)])`
-/

namespace A284910.P4479005004529625612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284910.P4479005004529625612

/-!
# A284911: Number of partitions of n^2 that are the sum of n not necessarily distinct partitions of n into distinct parts.

The programs for A284911, there is no canonical definition to state claims against.
-/

/-! ## A284911.P5081485476781631753

`C(A127321(A237113(3*(n+1))), n)`
-/

namespace A284911.P5081485476781631753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127321 (A237113 (3 * (n + 1))).toNat).toNat n

end

end A284911.P5081485476781631753

/-! ## A284911.P6974257664461896287

`C(A127321(A360242(3*n+2)), n)`
-/

namespace A284911.P6974257664461896287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127321 (A360242 (3 * n + 2)).toNat).toNat n

end

end A284911.P6974257664461896287

/-! ## A284911.P3564093595545349433

`A000027(C(A000009(n)-1+n, n))`
-/

namespace A284911.P3564093595545349433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (A000009 n - 1 + (n : ℤ)).toNat n)

end

end A284911.P3564093595545349433

/-! ## A284911.P13478416325700987561

`A000027(C(∑[A294107(n+1)]+1, n))`
-/

namespace A284911.P13478416325700987561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat n)

end

end A284911.P13478416325700987561

/-! ## A284911.P1733885337195850151

`C(A105564(A141214(n)), n)`
-/

namespace A284911.P1733885337195850151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105564 (A141214 n).toNat).toNat n

end

end A284911.P1733885337195850151

/-!
# A284912: Fixed point of the morphism 0 -> 01, 1 -> 1010.

The programs for A284912, the canonical program `A284912.P5087844353214427284` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284912 has offset 1).

The definition of A284912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284912.P5087844353214427284

`char[A284914(n+1)-1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A284912

/-- `char[A284914(n+1)-1]` -/
def P5087844353214427284.Spec : Prop :=
  ∀ n, (P5087844353214427284.a n : ℤ) = A284912 (n + 1)

theorem P5087844353214427284.correct : P5087844353214427284.Spec := by
  intro n
  simp only [A284912, Nat.add_sub_cancel]

end A284912

/-! ## A284912.P14671678489845044260

`1-char[A284913(n+1)-1]`
-/

namespace A284912.P14671678489845044260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284912.P14671678489845044260

namespace A284912

/-- `1-char[A284913(n+1)-1]` -/
def P14671678489845044260.Spec : Prop :=
  ∀ n, P14671678489845044260.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P17707841675849495885

`A000035(A189729(n+1)-A004526(n))`
-/

namespace A284912.P17707841675849495885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A189729 (n + 1) - A004526 n).toNat

end

end A284912.P17707841675849495885

namespace A284912

/-- `A000035(A189729(n+1)-A004526(n))` -/
def P17707841675849495885.Spec : Prop :=
  ∀ n, P17707841675849495885.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P13983576853400367967

`A011655(A189729(n+1)-2)`
-/

namespace A284912.P13983576853400367967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A189729 (n + 1) - 2).toNat

end

end A284912.P13983576853400367967

namespace A284912

/-- `A011655(A189729(n+1)-2)` -/
def P13983576853400367967.Spec : Prop :=
  ∀ n, P13983576853400367967.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P11887842033726309947

`p?[A287401(n+1)+2]-2`
-/

namespace A284912.P11887842033726309947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A284912.P11887842033726309947

namespace A284912

/-- `p?[A287401(n+1)+2]-2` -/
def P11887842033726309947.Spec : Prop :=
  ∀ n, P11887842033726309947.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P16021437784465040223

`A189727(A026137(n+1))`
-/

namespace A284912.P16021437784465040223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A026137 (n + 1)).toNat

end

end A284912.P16021437784465040223

namespace A284912

/-- `A189727(A026137(n+1))` -/
def P16021437784465040223.Spec : Prop :=
  ∀ n, P16021437784465040223.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P12054832489295876873

`A189727(A032766(n+1))`
-/

namespace A284912.P12054832489295876873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A032766 (n + 1)).toNat

end

end A284912.P12054832489295876873

namespace A284912

/-- `A189727(A032766(n+1))` -/
def P12054832489295876873.Spec : Prop :=
  ∀ n, P12054832489295876873.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P6325139923832643716

`A189727(A064455(n+1))`
-/

namespace A284912.P6325139923832643716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A064455 (n + 1)).toNat

end

end A284912.P6325139923832643716

namespace A284912

/-- `A189727(A064455(n+1))` -/
def P6325139923832643716.Spec : Prop :=
  ∀ n, P6325139923832643716.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P18071287978688671969

`A189727(A189669(n+1))`
-/

namespace A284912.P18071287978688671969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A189669 (n + 1)).toNat

end

end A284912.P18071287978688671969

namespace A284912

/-- `A189727(A189669(n+1))` -/
def P18071287978688671969.Spec : Prop :=
  ∀ n, P18071287978688671969.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P11842544754650045817

`A189727(A008619(n+1)+n)`
-/

namespace A284912.P11842544754650045817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A008619 (n + 1) + (n : ℤ)).toNat

end

end A284912.P11842544754650045817

namespace A284912

/-- `A189727(A008619(n+1)+n)` -/
def P11842544754650045817.Spec : Prop :=
  ∀ n, P11842544754650045817.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P5476027266838733733

`A287401(lt[A287401(n+1), 2]+1)`
-/

namespace A284912.P5476027266838733733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A284912.P5476027266838733733

namespace A284912

/-- `A287401(lt[A287401(n+1), 2]+1)` -/
def P5476027266838733733.Spec : Prop :=
  ∀ n, P5476027266838733733.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P16495362060992518091

`A189727(A004526(n+1)+n+1)`
-/

namespace A284912.P16495362060992518091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A004526 (n + 1) + (n + 1 : ℤ)).toNat

end

end A284912.P16495362060992518091

namespace A284912

/-- `A189727(A004526(n+1)+n+1)` -/
def P16495362060992518091.Spec : Prop :=
  ∀ n, P16495362060992518091.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P16351454891900576305

`A189727(∑[A287401(A189729(n+1))])`
-/

namespace A284912.P16351454891900576305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (A189729 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284912.P16351454891900576305

namespace A284912

/-- `A189727(∑[A287401(A189729(n+1))])` -/
def P16351454891900576305.Spec : Prop :=
  ∀ n, P16351454891900576305.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P8672776649382838686

`A000035(A189730(A004526(n)+n+1))`
-/

namespace A284912.P8672776649382838686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A189730 (A004526 n + (n + 1 : ℤ)).toNat).toNat

end

end A284912.P8672776649382838686

namespace A284912

/-- `A000035(A189730(A004526(n)+n+1))` -/
def P8672776649382838686.Spec : Prop :=
  ∀ n, P8672776649382838686.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P17645210611481658866

`and(A189710(n+1), A189727(A189725(n+1)))`
-/

namespace A284912.P17645210611481658866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189710 (n + 1)) (A189727 (A189725 (n + 1)).toNat)

end

end A284912.P17645210611481658866

namespace A284912

/-- `and(A189710(n+1), A189727(A189725(n+1)))` -/
def P17645210611481658866.Spec : Prop :=
  ∀ n, P17645210611481658866.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P9525032112935157687

`A287401(eq[A287401(n+1)², A287401(n+1)]+1)`
-/

namespace A284912.P9525032112935157687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A284912.P9525032112935157687

namespace A284912

/-- `A287401(eq[A287401(n+1)², A287401(n+1)]+1)` -/
def P9525032112935157687.Spec : Prop :=
  ∀ n, P9525032112935157687.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P12267258719206025613

`A287401(eq[1, A287401(n+1)^A287401(n+1)]+1)`
-/

namespace A284912.P12267258719206025613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287401 (n + 1) : ℚ) ^ (A287401 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A284912.P12267258719206025613

namespace A284912

/-- `A287401(eq[1, A287401(n+1)^A287401(n+1)]+1)` -/
def P12267258719206025613.Spec : Prop :=
  ∀ n, P12267258719206025613.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P6761044438031224013

`p?[A287438(n+1)+2]-2`
-/

namespace A284912.P6761044438031224013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A284912.P6761044438031224013

namespace A284912

/-- `p?[A287438(n+1)+2]-2` -/
def P6761044438031224013.Spec : Prop :=
  ∀ n, P6761044438031224013.a n = A284912 (n + 1)

end A284912

/-! ## A284912.P16563527871221625267

`A287438(lt[A287438(n+1), 2]+1)`
-/

namespace A284912.P16563527871221625267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A284912.P16563527871221625267

namespace A284912

/-- `A287438(lt[A287438(n+1), 2]+1)` -/
def P16563527871221625267.Spec : Prop :=
  ∀ n, P16563527871221625267.a n = A284912 (n + 1)

end A284912

/-!
# A284913: Positions of 0 in A284912; complement of A284914.

The programs for A284913, the canonical program `A284913.P15008075159223114751` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284913 has offset 1).

The definition of A284913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284913.P15008075159223114751

`A189727(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284913

/-- `A189727(n+1)+Δ[n²]` -/
def P15008075159223114751.Spec : Prop :=
  ∀ n, P15008075159223114751.a n = A284913 (n + 1)

theorem P15008075159223114751.correct : P15008075159223114751.Spec := by
  intro n
  simp only [A284913, Nat.add_sub_cancel]

end A284913

/-! ## A284913.P12291402201312495218

`ceil((A189728(n+1)+n)/2)`
-/

namespace A284913.P12291402201312495218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189728 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A284913.P12291402201312495218

namespace A284913

/-- `ceil((A189728(n+1)+n)/2)` -/
def P12291402201312495218.Spec : Prop :=
  ∀ n, P12291402201312495218.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P13686689853645114516

`A004767(n)-A284914(n+1)`
-/

namespace A284913.P13686689853645114516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284914 (n + 1)

end

end A284913.P13686689853645114516

namespace A284913

/-- `A004767(n)-A284914(n+1)` -/
def P13686689853645114516.Spec : Prop :=
  ∀ n, P13686689853645114516.a n = A284913 (n + 1)

theorem P13686689853645114516.correct : P13686689853645114516.Spec := by
  intro n
  simp only [A284913, Nat.add_sub_cancel, A284913.P13686689853645114516.a, A284913.P15008075159223114751.f1, A284913.P15008075159223114751.a, A004767, A004767.P13352534504447192883.a, A189727, A189727.P1262965098094579088.a, A284914, A284914.P18201955164397708571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284913

/-! ## A284913.P2150728132470756538

`xor(A088837(n+1), A284914(n+1))`
-/

namespace A284913.P2150728132470756538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A284914 (n + 1))

end

end A284913.P2150728132470756538

namespace A284913

/-- `xor(A088837(n+1), A284914(n+1))` -/
def P2150728132470756538.Spec : Prop :=
  ∀ n, P2150728132470756538.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P10366151753292588087

`A189728(n+1)-(A189727(n+1)+n)`
-/

namespace A284913.P10366151753292588087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (n + 1) - (A189727 (n + 1) + (n : ℤ))

end

end A284913.P10366151753292588087

namespace A284913

/-- `A189728(n+1)-(A189727(n+1)+n)` -/
def P10366151753292588087.Spec : Prop :=
  ∀ n, P10366151753292588087.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P12559209327983797556

`lt[A284912(n+1), 1]+1`
-/

namespace A284913.P12559209327983797556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284913.P12559209327983797556

namespace A284913

/-- `lt[A284912(n+1), 1]+1` -/
def P12559209327983797556.Spec : Prop :=
  ∀ n, (P12559209327983797556.a n : ℤ) = A284913 (n + 1)

end A284913

/-! ## A284913.P12286257616211817064

`A284912(2*n+1)+Δ[n²]`
-/

namespace A284913.P12286257616211817064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284913.P12286257616211817064

namespace A284913

/-- `A284912(2*n+1)+Δ[n²]` -/
def P12286257616211817064.Spec : Prop :=
  ∀ n, P12286257616211817064.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P8836541919556752820

`2*(n+1)-A284912(2*(n+1))`
-/

namespace A284913.P8836541919556752820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A284912 (2 * (n + 1))

end

end A284913.P8836541919556752820

namespace A284913

/-- `2*(n+1)-A284912(2*(n+1))` -/
def P8836541919556752820.Spec : Prop :=
  ∀ n, P8836541919556752820.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P16963026343758553690

`A014681(A284914(n+1))`
-/

namespace A284913.P16963026343758553690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284914 (n + 1)).toNat

end

end A284913.P16963026343758553690

namespace A284913

/-- `A014681(A284914(n+1))` -/
def P16963026343758553690.Spec : Prop :=
  ∀ n, P16963026343758553690.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P616893671458636767

`record[A284912(n+1)+∑[A157142(n)]]`
-/

namespace A284913.P616893671458636767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284913.P616893671458636767

namespace A284913

/-- `record[A284912(n+1)+∑[A157142(n)]]` -/
def P616893671458636767.Spec : Prop :=
  ∀ n, P616893671458636767.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P3844205724095609904

`A028242(A284914(n+1)+1)+n`
-/

namespace A284913.P3844205724095609904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A284914 (n + 1) + 1).toNat + (n : ℤ)

end

end A284913.P3844205724095609904

namespace A284913

/-- `A028242(A284914(n+1)+1)+n` -/
def P3844205724095609904.Spec : Prop :=
  ∀ n, P3844205724095609904.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P17277654232741901053

`A000463(A189728(n+1)-n)+n`
-/

namespace A284913.P17277654232741901053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A189728 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A284913.P17277654232741901053

namespace A284913

/-- `A000463(A189728(n+1)-n)+n` -/
def P17277654232741901053.Spec : Prop :=
  ∀ n, P17277654232741901053.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P16160609539456206551

`lt[A284912(A004277(n)-n), A057427(n)]`
-/

namespace A284913.P16160609539456206551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284913.P16160609539456206551

namespace A284913

/-- `lt[A284912(A004277(n)-n), A057427(n)]` -/
def P16160609539456206551.Spec : Prop :=
  ∀ n, (P16160609539456206551.a n : ℤ) = A284913 (n + 1)

end A284913

/-! ## A284913.P9926341711036344037

`A189730(3*n+2)`
-/

namespace A284913.P9926341711036344037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189730 (3 * n + 2)

end

end A284913.P9926341711036344037

namespace A284913

/-- `A189730(3*n+2)` -/
def P9926341711036344037.Spec : Prop :=
  ∀ n, P9926341711036344037.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P6896516758594267308

`A004396(A189728(n+1))`
-/

namespace A284913.P6896516758594267308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A189728 (n + 1)).toNat

end

end A284913.P6896516758594267308

namespace A284913

/-- `A004396(A189728(n+1))` -/
def P6896516758594267308.Spec : Prop :=
  ∀ n, P6896516758594267308.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P13899461269971189290

`A189671(A189728(n+1)+2)+n`
-/

namespace A284913.P13899461269971189290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A189728 (n + 1) + 2).toNat + (n : ℤ)

end

end A284913.P13899461269971189290

namespace A284913

/-- `A189671(A189728(n+1)+2)+n` -/
def P13899461269971189290.Spec : Prop :=
  ∀ n, P13899461269971189290.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P13612332964827322691

`A000463(A189728(n+1)+n)`
-/

namespace A284913.P13612332964827322691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A189728 (n + 1) + (n : ℤ)).toNat

end

end A284913.P13612332964827322691

namespace A284913

/-- `A000463(A189728(n+1)+n)` -/
def P13612332964827322691.Spec : Prop :=
  ∀ n, P13612332964827322691.a n = A284913 (n + 1)

end A284913

/-! ## A284913.P245900226987838721

`A189671(2*A189728(n+1))`
-/

namespace A284913.P245900226987838721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (2 * A189728 (n + 1)).toNat

end

end A284913.P245900226987838721

namespace A284913

/-- `A189671(2*A189728(n+1))` -/
def P245900226987838721.Spec : Prop :=
  ∀ n, P245900226987838721.a n = A284913 (n + 1)

end A284913

/-!
# A284914: Positions of 1 in A284912; complement of A284913.

The programs for A284914, the canonical program `A284914.P18201955164397708571` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284914 has offset 1).

The definition of A284914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284914.P7674586346558372866

`comp[A284913(n+1)-1]+1`
-/

namespace A284914.P7674586346558372866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284914.P7674586346558372866

namespace A284914

/-- `comp[A284913(n+1)-1]+1` -/
def P7674586346558372866.Spec : Prop :=
  ∀ n, (P7674586346558372866.a n : ℤ) = A284914 (n + 1)

end A284914

/-! ## A284914.P18201955164397708571

`2*(n+1)-A189727(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284914

/-- `2*(n+1)-A189727(n+1)` -/
def P18201955164397708571.Spec : Prop :=
  ∀ n, P18201955164397708571.a n = A284914 (n + 1)

theorem P18201955164397708571.correct : P18201955164397708571.Spec := by
  intro n
  simp only [A284914, Nat.add_sub_cancel]

end A284914

/-! ## A284914.P860671899638838061

`A004767(n)-A284913(n+1)`
-/

namespace A284914.P860671899638838061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284913 (n + 1)

end

end A284914.P860671899638838061

namespace A284914

/-- `A004767(n)-A284913(n+1)` -/
def P860671899638838061.Spec : Prop :=
  ∀ n, P860671899638838061.a n = A284914 (n + 1)

theorem P860671899638838061.correct : P860671899638838061.Spec := by
  intro n
  simp only [A284914, Nat.add_sub_cancel, A284914.P860671899638838061.a, A284914.P18201955164397708571.a, A004767, A004767.P13352534504447192883.a, A189727, A189727.P1262965098094579088.a, A284913, A284913.P15008075159223114751.f1, A284913.P15008075159223114751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284914

/-! ## A284914.P2183263503806261608

`xor(A088837(n+1), A284913(n+1))`
-/

namespace A284914.P2183263503806261608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A284913 (n + 1))

end

end A284914.P2183263503806261608

namespace A284914

/-- `xor(A088837(n+1), A284913(n+1))` -/
def P2183263503806261608.Spec : Prop :=
  ∀ n, P2183263503806261608.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P14180859457208875507

`(A005408(n)+A005408(n)²)/A284913(n+1)`
-/

namespace A284914.P14180859457208875507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + A005408 n ^ 2 : ℚ) / (A284913 (n + 1) : ℚ)

end

end A284914.P14180859457208875507

namespace A284914

/-- `(A005408(n)+A005408(n)²)/A284913(n+1)` -/
def P14180859457208875507.Spec : Prop :=
  ∀ n, P14180859457208875507.a n = (A284914 (n + 1) : ℚ)

end A284914

/-! ## A284914.P14289450518154269677

`A004442(A284913(n+1)-1)+1`
-/

namespace A284914.P14289450518154269677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A284913 (n + 1) - 1).toNat + 1

end

end A284914.P14289450518154269677

namespace A284914

/-- `A004442(A284913(n+1)-1)+1` -/
def P14289450518154269677.Spec : Prop :=
  ∀ n, P14289450518154269677.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P9171694111729449474

`A189729(Δ[n²])-n`
-/

namespace A284914.P9171694111729449474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A284914.P9171694111729449474

namespace A284914

/-- `A189729(Δ[n²])-n` -/
def P9171694111729449474.Spec : Prop :=
  ∀ n, P9171694111729449474.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P1997409547689611535

`eq[1, A284912(n+1)]+1`
-/

namespace A284914.P1997409547689611535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284914.P1997409547689611535

namespace A284914

/-- `eq[1, A284912(n+1)]+1` -/
def P1997409547689611535.Spec : Prop :=
  ∀ n, (P1997409547689611535.a n : ℤ) = A284914 (n + 1)

end A284914

/-! ## A284914.P2679858511466102362

`A284912(2*(n+1))+Δ[n²]`
-/

namespace A284914.P2679858511466102362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284914.P2679858511466102362

namespace A284914

/-- `A284912(2*(n+1))+Δ[n²]` -/
def P2679858511466102362.Spec : Prop :=
  ∀ n, P2679858511466102362.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P16972526510311494033

`2*(n+1)-A284912(2*n+1)`
-/

namespace A284914.P16972526510311494033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A284912 (2 * n + 1)

end

end A284914.P16972526510311494033

namespace A284914

/-- `2*(n+1)-A284912(2*n+1)` -/
def P16972526510311494033.Spec : Prop :=
  ∀ n, P16972526510311494033.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P17793522363156770068

`A014681(A284913(n+1))`
-/

namespace A284914.P17793522363156770068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284913 (n + 1)).toNat

end

end A284914.P17793522363156770068

namespace A284914

/-- `A014681(A284913(n+1))` -/
def P17793522363156770068.Spec : Prop :=
  ∀ n, P17793522363156770068.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P14493860427595531366

`A284912(2*n+2)+A080513(2*n)+n`
-/

namespace A284914.P14493860427595531366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * n + 2) + A080513 (2 * n) + (n : ℤ)

end

end A284914.P14493860427595531366

namespace A284914

/-- `A284912(2*n+2)+A080513(2*n)+n` -/
def P14493860427595531366.Spec : Prop :=
  ∀ n, P14493860427595531366.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P3511339697116866826

`A005408(A005408(n))-A284913(n+1)`
-/

namespace A284914.P3511339697116866826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat - A284913 (n + 1)

end

end A284914.P3511339697116866826

namespace A284914

/-- `A005408(A005408(n))-A284913(n+1)` -/
def P3511339697116866826.Spec : Prop :=
  ∀ n, P3511339697116866826.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P8532450823807512430

`A284907(n+1)-A284905(A284913(n+1))`
-/

namespace A284914.P8532450823807512430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - A284905 (A284913 (n + 1)).toNat

end

end A284914.P8532450823807512430

namespace A284914

/-- `A284907(n+1)-A284905(A284913(n+1))` -/
def P8532450823807512430.Spec : Prop :=
  ∀ n, P8532450823807512430.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P7214959087975099188

`A004396(A287441(n+1))`
-/

namespace A284914.P7214959087975099188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A287441 (n + 1)).toNat

end

end A284914.P7214959087975099188

namespace A284914

/-- `A004396(A287441(n+1))` -/
def P7214959087975099188.Spec : Prop :=
  ∀ n, P7214959087975099188.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P5184648032231131200

`A004396(A287404(n+1))`
-/

namespace A284914.P5184648032231131200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A287404 (n + 1)).toNat

end

end A284914.P5184648032231131200

namespace A284914

/-- `A004396(A287404(n+1))` -/
def P5184648032231131200.Spec : Prop :=
  ∀ n, P5184648032231131200.a n = A284914 (n + 1)

end A284914

/-! ## A284914.P17220159582803488826

`A156595(A189728(n+1))+2*n+1`
-/

namespace A284914.P17220159582803488826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A189728 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A284914.P17220159582803488826

namespace A284914

/-- `A156595(A189728(n+1))+2*n+1` -/
def P17220159582803488826.Spec : Prop :=
  ∀ n, P17220159582803488826.a n = A284914 (n + 1)

end A284914

/-!
# A284917: Lexicographically earliest infinite sequence of positive integers such that the Taxicab distance is unique to each pair of distinct points ((n, a(n)), (k, a(k))).

The programs for A284917, there is no canonical definition to state claims against.
-/

/-! ## A284917.P11272230604240619243

`A005282(n+1)-n`
-/

namespace A284917.P11272230604240619243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - (n : ℤ)

end

end A284917.P11272230604240619243

/-! ## A284917.P12842099932642806092

`A025582(n+1)+1-n`
-/

namespace A284917.P12842099932642806092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + (1 - (n : ℤ))

end

end A284917.P12842099932642806092

/-! ## A284917.P16609101611586371026

`1-n+A133097(n+1)+A010672(n)`
-/

namespace A284917.P16609101611586371026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + (A133097 (n + 1) + A010672 n)

end

end A284917.P16609101611586371026

/-! ## A284917.P8257482062286865283

`A011185(n+1)+A133097(n+1)-n`
-/

namespace A284917.P8257482062286865283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (n + 1) + (A133097 (n + 1) - (n : ℤ))

end

end A284917.P8257482062286865283

/-! ## A284917.P3726963195961392349

`A005282(n+1)+A001489(2*n)+n`
-/

namespace A284917.P3726963195961392349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) + A001489 (2 * n) + (n : ℤ)

end

end A284917.P3726963195961392349

/-! ## A284917.P16176040250366473611

`A024000(n)+A054354(A156242(n+1))+A005282(n+1)`
-/

namespace A284917.P16176040250366473611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + (A054354 (A156242 (n + 1)).toNat + A005282 (n + 1))

end

end A284917.P16176040250366473611

/-! ## A284917.P9236324367667230516

`ceil(A034757(n+1)/2-n)`
-/

namespace A284917.P9236324367667230516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034757 (n + 1) : ℚ) / 2 - (n : ℚ)⌉

end

end A284917.P9236324367667230516

/-! ## A284917.P17961162709579503250

`a(n-1)+A101274(n)-1` with `a(0)=1`
-/

namespace A284917.P17961162709579503250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A101274 n - 1)

end

end A284917.P17961162709579503250

/-! ## A284917.P17041646826662208798

`∑[A101274(A028310(n))]-n`
-/

namespace A284917.P17041646826662208798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A284917.P17041646826662208798

/-! ## A284917.P10638244496105977574

`∑[A004525(A287178(n+1))]-n`
-/

namespace A284917.P10638244496105977574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A287178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A284917.P10638244496105977574

/-!
# A284919: Even integers E such that there is no prime p < E with E - p and E + p both prime.

The programs for A284919, there is no canonical definition to state claims against.
-/

/-! ## A284919.P7103314892308495492

`2*A284928(n+1)`
-/

namespace A284919.P7103314892308495492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284928 (n + 1)

end

end A284919.P7103314892308495492

/-! ## A284919.P16423869350703380622

`2*comp[A063713(n+1)]`
-/

namespace A284919.P16423869350703380622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284919.P16423869350703380622

/-! ## A284919.P4819469340561752841

`2*eq[0, A275768(2*n)]`
-/

namespace A284919.P4819469340561752841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284919.P4819469340561752841

/-! ## A284919.P11907088094645819915

`eq[A275768(n), A339012(n)]`
-/

namespace A284919.P11907088094645819915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P11907088094645819915

/-! ## A284919.P13989265789298823356

`eq[A132748(n+1), A275768(n)]`
-/

namespace A284919.P13989265789298823356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P13989265789298823356

/-! ## A284919.P10610877153103675980

`eq[A158327(n+1), A275768(n)]`
-/

namespace A284919.P10610877153103675980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P10610877153103675980

/-! ## A284919.P6957276706986149966

`eq[A275768(n), A318652(n+1)]`
-/

namespace A284919.P6957276706986149966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P6957276706986149966

/-! ## A284919.P5334570590218654408

`eq[A275768(n), A319697(n+1)]`
-/

namespace A284919.P5334570590218654408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P5334570590218654408

/-! ## A284919.P4783733306004278042

`eq[A275768(n), A319998(n+1)]`
-/

namespace A284919.P4783733306004278042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P4783733306004278042

/-! ## A284919.P8923768078791144935

`eq[A275768(n), A331739(n+1)]`
-/

namespace A284919.P8923768078791144935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P8923768078791144935

/-! ## A284919.P8533124782727571490

`eq[A010673(n), A275768(n)]`
-/

namespace A284919.P8533124782727571490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P8533124782727571490

/-! ## A284919.P17498302705862668740

`eq[A010674(n), A275768(n)]`
-/

namespace A284919.P17498302705862668740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P17498302705862668740

/-! ## A284919.P5255830381393880936

`eq[A010675(n), A275768(n)]`
-/

namespace A284919.P5255830381393880936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P5255830381393880936

/-! ## A284919.P17935027969348677614

`eq[A010676(n), A275768(n)]`
-/

namespace A284919.P17935027969348677614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P17935027969348677614

/-! ## A284919.P9129739255136194390

`eq[A010677(n), A275768(n)]`
-/

namespace A284919.P9129739255136194390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P9129739255136194390

/-! ## A284919.P15350166250032181315

`eq[A010678(n), A275768(n)]`
-/

namespace A284919.P15350166250032181315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P15350166250032181315

/-! ## A284919.P14110727163239658821

`eq[A010679(n), A275768(n)]`
-/

namespace A284919.P14110727163239658821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P14110727163239658821

/-! ## A284919.P2150332894158280364

`eq[A010681(n), A275768(n)]`
-/

namespace A284919.P2150332894158280364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P2150332894158280364

/-! ## A284919.P12123197724224735491

`eq[A035376(n+1), A275768(n)]`
-/

namespace A284919.P12123197724224735491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P12123197724224735491

/-! ## A284919.P8582196633822333822

`eq[A035455(n+1), A275768(n)]`
-/

namespace A284919.P8582196633822333822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284919.P8582196633822333822

/-!
# A284920: Numbers with digits 2 and 4 only.

The programs for A284920, there is no canonical definition to state claims against.
-/

/-! ## A284920.P6534539382753776379

`2*A007931(n+1)`
-/

namespace A284920.P6534539382753776379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007931 (n + 1)

end

end A284920.P6534539382753776379

/-! ## A284920.P11660995154730535258

`A284972(n+1)/2`
-/

namespace A284920.P11660995154730535258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284972 (n + 1) : ℚ) / 2

end

end A284920.P11660995154730535258

/-! ## A284920.P18315392968434126818

`2/3*A284633(n+1)`
-/

namespace A284920.P18315392968434126818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A284633 (n + 1) : ℚ)

end

end A284920.P18315392968434126818

/-! ## A284920.P13350108143753243598

`A256077(n+1)+A032917(n+1)`
-/

namespace A284920.P13350108143753243598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + A032917 (n + 1)

end

end A284920.P13350108143753243598

/-! ## A284920.P5868726530067609814

`A143967(n+1)-A032917(n+1)`
-/

namespace A284920.P5868726530067609814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A032917 (n + 1)

end

end A284920.P5868726530067609814

/-! ## A284920.P5596398955741633601

`A284633(n+1)-A007931(n+1)`
-/

namespace A284920.P5596398955741633601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) - A007931 (n + 1)

end

end A284920.P5596398955741633601

/-! ## A284920.P6985759857793927483

`A284381(n+1)-A032834(n+1)`
-/

namespace A284920.P6985759857793927483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A032834 (n + 1)

end

end A284920.P6985759857793927483

/-! ## A284920.P6757363248321585055

`A284963(n+1)-A032822(n+1)`
-/

namespace A284920.P6757363248321585055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A032822 (n + 1)

end

end A284920.P6757363248321585055

/-! ## A284920.P250093815608467520

`A284971(n+1)-A032810(n+1)`
-/

namespace A284920.P250093815608467520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) - A032810 (n + 1)

end

end A284920.P250093815608467520

/-! ## A284920.P11285185161057343529

`A284973(n+1)-A072961(n+1)`
-/

namespace A284920.P11285185161057343529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A072961 (n + 1)

end

end A284920.P11285185161057343529

/-! ## A284920.P1799376184285205691

`A284379(n+1)-A256077(n+1)`
-/

namespace A284920.P1799376184285205691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) - A256077 (n + 1)

end

end A284920.P1799376184285205691

/-! ## A284920.P9548168373976237271

`A284636(n+1)-A256290(n+1)`
-/

namespace A284920.P9548168373976237271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A256290 (n + 1)

end

end A284920.P9548168373976237271

/-! ## A284920.P17514551679761805819

`A284964(n+1)-A276037(n+1)`
-/

namespace A284920.P17514551679761805819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A276037 (n + 1)

end

end A284920.P17514551679761805819

/-! ## A284920.P17580472932465772406

`A284382(n+1)-A284379(n+1)`
-/

namespace A284920.P17580472932465772406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A284379 (n + 1)

end

end A284920.P17580472932465772406

/-! ## A284920.P18088336882755285548

`(A032834(n+1)+A032822(n+1))/2`
-/

namespace A284920.P18088336882755285548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032834 (n + 1) + A032822 (n + 1) : ℚ) / 2

end

end A284920.P18088336882755285548

/-! ## A284920.P3042666778453291652

`(A072961(n+1)+A032810(n+1))/2`
-/

namespace A284920.P3042666778453291652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072961 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A284920.P3042666778453291652

/-! ## A284920.P932625675676305728

`2*(A072961(n+1)-A032917(n+1))`
-/

namespace A284920.P932625675676305728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072961 (n + 1) - A032917 (n + 1))

end

end A284920.P932625675676305728

/-! ## A284920.P2871364182492459993

`2*(A143967(n+1)-A072961(n+1))`
-/

namespace A284920.P2871364182492459993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143967 (n + 1) - A072961 (n + 1))

end

end A284920.P2871364182492459993

/-! ## A284920.P9454608078033972856

`2*(A032810(n+1)-A256077(n+1))`
-/

namespace A284920.P9454608078033972856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032810 (n + 1) - A256077 (n + 1))

end

end A284920.P9454608078033972856

/-! ## A284920.P11736089976102589283

`2*(A284379(n+1)-A032810(n+1))`
-/

namespace A284920.P11736089976102589283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284379 (n + 1) - A032810 (n + 1))

end

end A284920.P11736089976102589283

/-!
# A284921: Numbers with digits 2 and 7 only.

The programs for A284921, the canonical program `A284921.P2849752813632733205` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284921 has offset 1).

The definition of A284921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284921.P4859195673987049735

`A032917(n+1)+A032822(n+1)`
-/

namespace A284921.P4859195673987049735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + A032822 (n + 1)

end

end A284921.P4859195673987049735

namespace A284921

/-- `A032917(n+1)+A032822(n+1)` -/
def P4859195673987049735.Spec : Prop :=
  ∀ n, P4859195673987049735.a n = A284921 (n + 1)

end A284921

/-! ## A284921.P6332720113336366946

`A276037(n+1)+A007931(n+1)`
-/

namespace A284921.P6332720113336366946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + A007931 (n + 1)

end

end A284921.P6332720113336366946

namespace A284921

/-- `A276037(n+1)+A007931(n+1)` -/
def P6332720113336366946.Spec : Prop :=
  ∀ n, P6332720113336366946.a n = A284921 (n + 1)

end A284921

/-! ## A284921.P2849752813632733205

`A284293(n+1)+A256077(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A284921

/-- `A284293(n+1)+A256077(n+1)` -/
def P2849752813632733205.Spec : Prop :=
  ∀ n, P2849752813632733205.a n = A284921 (n + 1)

theorem P2849752813632733205.correct : P2849752813632733205.Spec := by
  intro n
  simp only [A284921, Nat.add_sub_cancel]

end A284921

/-! ## A284921.P9705437424073006120

`A284964(n+1)-A007931(n+1)`
-/

namespace A284921.P9705437424073006120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A007931 (n + 1)

end

end A284921.P9705437424073006120

namespace A284921

/-- `A284964(n+1)-A007931(n+1)` -/
def P9705437424073006120.Spec : Prop :=
  ∀ n, P9705437424073006120.a n = A284921 (n + 1)

end A284921

/-! ## A284921.P4896652875226771769

`A284963(n+1)-A256077(n+1)`
-/

namespace A284921.P4896652875226771769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A256077 (n + 1)

end

end A284921.P4896652875226771769

namespace A284921

/-- `A284963(n+1)-A256077(n+1)` -/
def P4896652875226771769.Spec : Prop :=
  ∀ n, P4896652875226771769.a n = A284921 (n + 1)

theorem P4896652875226771769.correct : P4896652875226771769.Spec := by
  intro n
  simp only [A284921, Nat.add_sub_cancel, A284921.P4896652875226771769.a, A284921.P2849752813632733205.a, A256077, A256077.P10462771814391243740.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A284963, A284963.P4374081168494453790.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284921

/-! ## A284921.P17303976279486870895

`2*A072961(n+1)-A032810(n+1)`
-/

namespace A284921.P17303976279486870895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A032810 (n + 1)

end

end A284921.P17303976279486870895

namespace A284921

/-- `2*A072961(n+1)-A032810(n+1)` -/
def P17303976279486870895.Spec : Prop :=
  ∀ n, P17303976279486870895.a n = A284921 (n + 1)

end A284921

/-! ## A284921.P864765243352097784

`A032822(n+1)+A284632(n+1)/2`
-/

namespace A284921.P864765243352097784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032822 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284921.P864765243352097784

namespace A284921

/-- `A032822(n+1)+A284632(n+1)/2` -/
def P864765243352097784.Spec : Prop :=
  ∀ n, P864765243352097784.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P7059033111255937139

`A032917(n+1)+A284922(n+1)/2`
-/

namespace A284921.P7059033111255937139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032917 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A284921.P7059033111255937139

namespace A284921

/-- `A032917(n+1)+A284922(n+1)/2` -/
def P7059033111255937139.Spec : Prop :=
  ∀ n, P7059033111255937139.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P11529304671645819429

`2*A284632(n+1)-A072961(n+1)`
-/

namespace A284921.P11529304671645819429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284632 (n + 1) - A072961 (n + 1)

end

end A284921.P11529304671645819429

namespace A284921

/-- `2*A284632(n+1)-A072961(n+1)` -/
def P11529304671645819429.Spec : Prop :=
  ∀ n, P11529304671645819429.a n = A284921 (n + 1)

end A284921

/-! ## A284921.P1310850945570488942

`(A284923(n+1)+A072961(n+1))/2`
-/

namespace A284921.P1310850945570488942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284923 (n + 1) + A072961 (n + 1) : ℚ) / 2

end

end A284921.P1310850945570488942

namespace A284921

/-- `(A284923(n+1)+A072961(n+1))/2` -/
def P1310850945570488942.Spec : Prop :=
  ∀ n, P1310850945570488942.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P7189716841419768631

`(A276039(n+1)+A143967(n+1))/2`
-/

namespace A284921.P7189716841419768631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276039 (n + 1) + A143967 (n + 1) : ℚ) / 2

end

end A284921.P7189716841419768631

namespace A284921

/-- `(A276039(n+1)+A143967(n+1))/2` -/
def P7189716841419768631.Spec : Prop :=
  ∀ n, P7189716841419768631.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P10251786585895520270

`2*A143967(n+1)-A284971(n+1)`
-/

namespace A284921.P10251786585895520270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A284971 (n + 1)

end

end A284921.P10251786585895520270

namespace A284921

/-- `2*A143967(n+1)-A284971(n+1)` -/
def P10251786585895520270.Spec : Prop :=
  ∀ n, P10251786585895520270.a n = A284921 (n + 1)

end A284921

/-! ## A284921.P15261915057900440060

`A284973(n+1)-2*A256077(n+1)`
-/

namespace A284921.P15261915057900440060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - 2 * A256077 (n + 1)

end

end A284921.P15261915057900440060

namespace A284921

/-- `A284973(n+1)-2*A256077(n+1)` -/
def P15261915057900440060.Spec : Prop :=
  ∀ n, P15261915057900440060.a n = A284921 (n + 1)

theorem P15261915057900440060.correct : P15261915057900440060.Spec := by
  intro n
  simp only [A284921, Nat.add_sub_cancel, A284921.P15261915057900440060.a, A284921.P2849752813632733205.a, A256077, A256077.P10462771814391243740.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A284973, A284973.P12250254518392136044.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A284963, A284963.P4374081168494453790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284921

/-! ## A284921.P12952482521616856726

`A276037(n+1)+A284920(n+1)/2`
-/

namespace A284921.P12952482521616856726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276037 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284921.P12952482521616856726

namespace A284921

/-- `A276037(n+1)+A284920(n+1)/2` -/
def P12952482521616856726.Spec : Prop :=
  ∀ n, P12952482521616856726.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P4252983471894248024

`(A284964(n+1)+A276037(n+1))/2`
-/

namespace A284921.P4252983471894248024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284964 (n + 1) + A276037 (n + 1) : ℚ) / 2

end

end A284921.P4252983471894248024

namespace A284921

/-- `(A284964(n+1)+A276037(n+1))/2` -/
def P4252983471894248024.Spec : Prop :=
  ∀ n, P4252983471894248024.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P8532373032417063380

`(A284922(n+1)+A284632(n+1))/2`
-/

namespace A284921.P8532373032417063380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284922 (n + 1) + A284632 (n + 1) : ℚ) / 2

end

end A284921.P8532373032417063380

namespace A284921

/-- `(A284922(n+1)+A284632(n+1))/2` -/
def P8532373032417063380.Spec : Prop :=
  ∀ n, P8532373032417063380.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P5771248994242091254

`2*A284922(n+1)-A284923(n+1)`
-/

namespace A284921.P5771248994242091254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284922 (n + 1) - A284923 (n + 1)

end

end A284921.P5771248994242091254

namespace A284921

/-- `2*A284922(n+1)-A284923(n+1)` -/
def P5771248994242091254.Spec : Prop :=
  ∀ n, P5771248994242091254.a n = A284921 (n + 1)

end A284921

/-! ## A284921.P11494863366528323190

`2*A284963(n+1)-A284973(n+1)`
-/

namespace A284921.P11494863366528323190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284963 (n + 1) - A284973 (n + 1)

end

end A284921.P11494863366528323190

namespace A284921

/-- `2*A284963(n+1)-A284973(n+1)` -/
def P11494863366528323190.Spec : Prop :=
  ∀ n, P11494863366528323190.a n = A284921 (n + 1)

theorem P11494863366528323190.correct : P11494863366528323190.Spec := by
  intro n
  simp only [A284921, Nat.add_sub_cancel, A284921.P11494863366528323190.a, A284921.P2849752813632733205.a, A256077, A256077.P10462771814391243740.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A284963, A284963.P4374081168494453790.a, A284973, A284973.P12250254518392136044.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284921

/-! ## A284921.P13907589805640028198

`A284964(n+1)-A284920(n+1)/2`
-/

namespace A284921.P13907589805640028198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284964 (n + 1) : ℚ) - (A284920 (n + 1) : ℚ) / 2

end

end A284921.P13907589805640028198

namespace A284921

/-- `A284964(n+1)-A284920(n+1)/2` -/
def P13907589805640028198.Spec : Prop :=
  ∀ n, P13907589805640028198.a n = (A284921 (n + 1) : ℚ)

end A284921

/-! ## A284921.P781576578972602018

`A032822(n+1)+A072961(n+1)-A007931(n+1)`
-/

namespace A284921.P781576578972602018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A072961 (n + 1) - A007931 (n + 1))

end

end A284921.P781576578972602018

namespace A284921

/-- `A032822(n+1)+A072961(n+1)-A007931(n+1)` -/
def P781576578972602018.Spec : Prop :=
  ∀ n, P781576578972602018.a n = A284921 (n + 1)

end A284921

/-!
# A284922: Numbers with digits 2 and 8 only.

The programs for A284922, there is no canonical definition to state claims against.
-/

/-! ## A284922.P6374179468275640823

`2*A032822(n+1)`
-/

namespace A284922.P6374179468275640823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032822 (n + 1)

end

end A284922.P6374179468275640823

/-! ## A284922.P15533050682951582019

`A284293(n+1)+A007931(n+1)`
-/

namespace A284922.P15533050682951582019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1) + A007931 (n + 1)

end

end A284922.P15533050682951582019

/-! ## A284922.P9698877874889865682

`A276037(n+1)+A032917(n+1)`
-/

namespace A284922.P9698877874889865682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + A032917 (n + 1)

end

end A284922.P9698877874889865682

/-! ## A284922.P4730279977669633077

`A276039(n+1)+A256077(n+1)`
-/

namespace A284922.P4730279977669633077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1) + A256077 (n + 1)

end

end A284922.P4730279977669633077

/-! ## A284922.P10111103233428051665

`A284964(n+1)-A256077(n+1)`
-/

namespace A284922.P10111103233428051665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A256077 (n + 1)

end

end A284922.P10111103233428051665

/-! ## A284922.P13415460280405729726

`2*(A143967(n+1)-A032810(n+1))`
-/

namespace A284922.P13415460280405729726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143967 (n + 1) - A032810 (n + 1))

end

end A284922.P13415460280405729726

/-! ## A284922.P6855592036774749353

`2*(A284632(n+1)-A007931(n+1))`
-/

namespace A284922.P6855592036774749353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284632 (n + 1) - A007931 (n + 1))

end

end A284922.P6855592036774749353

/-! ## A284922.P14074013813310664553

`2*(A284972(n+1)-A032834(n+1))`
-/

namespace A284922.P14074013813310664553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284972 (n + 1) - A032834 (n + 1))

end

end A284922.P14074013813310664553

/-! ## A284922.P3840663032217352563

`2*(A284921(n+1)-A032917(n+1))`
-/

namespace A284922.P3840663032217352563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284921 (n + 1) - A032917 (n + 1))

end

end A284922.P3840663032217352563

/-! ## A284922.P1739000293551222791

`2*(A072961(n+1)-A256077(n+1))`
-/

namespace A284922.P1739000293551222791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072961 (n + 1) - A256077 (n + 1))

end

end A284922.P1739000293551222791

/-! ## A284922.P17828336488926699236

`2*(A284964(n+1)-A072961(n+1))`
-/

namespace A284922.P17828336488926699236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284964 (n + 1) - A072961 (n + 1))

end

end A284922.P17828336488926699236

/-! ## A284922.P10780482920406832675

`2*(A284382(n+1)-A256290(n+1))`
-/

namespace A284922.P10780482920406832675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284382 (n + 1) - A256290 (n + 1))

end

end A284922.P10780482920406832675

/-! ## A284922.P8326248947327774774

`A276037(n+1)+A284632(n+1)/2`
-/

namespace A284922.P8326248947327774774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276037 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284922.P8326248947327774774

/-! ## A284922.P7117731883908824255

`2*(A284923(n+1)-A276037(n+1))`
-/

namespace A284922.P7117731883908824255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284923 (n + 1) - A276037 (n + 1))

end

end A284922.P7117731883908824255

/-! ## A284922.P16975787586649414422

`2*(A284973(n+1)-A284379(n+1))`
-/

namespace A284922.P16975787586649414422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284973 (n + 1) - A284379 (n + 1))

end

end A284922.P16975787586649414422

/-! ## A284922.P819782030253151563

`2*A284632(n+1)-A284920(n+1)`
-/

namespace A284922.P819782030253151563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284632 (n + 1) - A284920 (n + 1)

end

end A284922.P819782030253151563

/-! ## A284922.P5750134483555200197

`2*A284921(n+1)-A284632(n+1)`
-/

namespace A284922.P5750134483555200197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284921 (n + 1) - A284632 (n + 1)

end

end A284922.P5750134483555200197

/-! ## A284922.P3186952277408582984

`(A284923(n+1)+A284921(n+1))/2`
-/

namespace A284922.P3186952277408582984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284923 (n + 1) + A284921 (n + 1) : ℚ) / 2

end

end A284922.P3186952277408582984

/-! ## A284922.P17044380435287554280

`2*(A284963(n+1)-A284920(n+1))`
-/

namespace A284922.P17044380435287554280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284963 (n + 1) - A284920 (n + 1))

end

end A284922.P17044380435287554280

/-! ## A284922.P1364182094124846167

`A032822(n+1)+A284632(n+1)-A007931(n+1)`
-/

namespace A284922.P1364182094124846167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284632 (n + 1) - A007931 (n + 1))

end

end A284922.P1364182094124846167

/-!
# A284923: Numbers with digits 2 and 9 only.

The programs for A284923, there is no canonical definition to state claims against.
-/

/-! ## A284923.P12284557239760616221

`A276039(n+1)+A007931(n+1)`
-/

namespace A284923.P12284557239760616221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1) + A007931 (n + 1)

end

end A284923.P12284557239760616221

/-! ## A284923.P17765124725201309568

`A276037(n+1)+A032822(n+1)`
-/

namespace A284923.P17765124725201309568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + A032822 (n + 1)

end

end A284923.P17765124725201309568

/-! ## A284923.P8255755416392003813

`A284293(n+1)+A032917(n+1)`
-/

namespace A284923.P8255755416392003813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1) + A032917 (n + 1)

end

end A284923.P8255755416392003813

/-! ## A284923.P4288554502042848964

`A256077(n+1)+A213084(n+1)`
-/

namespace A284923.P4288554502042848964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + A213084 (n + 1)

end

end A284923.P4288554502042848964

/-! ## A284923.P11758771864469296630

`2*A284632(n+1)-A032810(n+1)`
-/

namespace A284923.P11758771864469296630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284632 (n + 1) - A032810 (n + 1)

end

end A284923.P11758771864469296630

/-! ## A284923.P13183311342269945498

`2*A284921(n+1)-A072961(n+1)`
-/

namespace A284923.P13183311342269945498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284921 (n + 1) - A072961 (n + 1)

end

end A284923.P13183311342269945498

/-! ## A284923.P17589464681723787318

`A276037(n+1)+A284922(n+1)/2`
-/

namespace A284923.P17589464681723787318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276037 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A284923.P17589464681723787318

/-! ## A284923.P12698547950068449087

`2*A284922(n+1)-A284921(n+1)`
-/

namespace A284923.P12698547950068449087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284922 (n + 1) - A284921 (n + 1)

end

end A284923.P12698547950068449087

/-! ## A284923.P6831544093096101519

`3*A032822(n+1)-A032917(n+1)`
-/

namespace A284923.P6831544093096101519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032822 (n + 1) - A032917 (n + 1)

end

end A284923.P6831544093096101519

/-! ## A284923.P1195528912878989403

`A032822(n+1)+A284921(n+1)-A007931(n+1)`
-/

namespace A284923.P1195528912878989403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284921 (n + 1) - A007931 (n + 1))

end

end A284923.P1195528912878989403

/-! ## A284923.P10831651311443851350

`A032822(n+1)+A284973(n+1)-A032834(n+1)`
-/

namespace A284923.P10831651311443851350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284973 (n + 1) - A032834 (n + 1))

end

end A284923.P10831651311443851350

/-! ## A284923.P8204481193652423918

`A032917(n+1)+A284964(n+1)-A032810(n+1)`
-/

namespace A284923.P8204481193652423918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A284964 (n + 1) - A032810 (n + 1))

end

end A284923.P8204481193652423918

/-! ## A284923.P5249017594700332333

`A072961(n+1)+A284921(n+1)-A032810(n+1)`
-/

namespace A284923.P5249017594700332333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + (A284921 (n + 1) - A032810 (n + 1))

end

end A284923.P5249017594700332333

/-! ## A284923.P16035299315259229305

`A284920(n+1)+A284922(n+1)-A032810(n+1)`
-/

namespace A284923.P16035299315259229305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + (A284922 (n + 1) - A032810 (n + 1))

end

end A284923.P16035299315259229305

/-! ## A284923.P17063058775092408828

`A276037(n+1)+A284964(n+1)-A072961(n+1)`
-/

namespace A284923.P17063058775092408828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + (A284964 (n + 1) - A072961 (n + 1))

end

end A284923.P17063058775092408828

/-! ## A284923.P5282975006205650254

`A072961(n+1)+A284964(n+1)-A284379(n+1)`
-/

namespace A284923.P5282975006205650254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + (A284964 (n + 1) - A284379 (n + 1))

end

end A284923.P5282975006205650254

/-! ## A284923.P2714885916986856598

`A284632(n+1)+A284922(n+1)-A072961(n+1)`
-/

namespace A284923.P2714885916986856598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + (A284922 (n + 1) - A072961 (n + 1))

end

end A284923.P2714885916986856598

/-! ## A284923.P2267329246299509245

`A072961(n+1)+A284922(n+1)-A284920(n+1)`
-/

namespace A284923.P2267329246299509245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + (A284922 (n + 1) - A284920 (n + 1))

end

end A284923.P2267329246299509245

/-! ## A284923.P17905154580800446261

`A213084(n+1)+A256291(n+1)-A256290(n+1)`
-/

namespace A284923.P17905154580800446261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1) + (A256291 (n + 1) - A256290 (n + 1))

end

end A284923.P17905154580800446261

/-! ## A284923.P3596386735729535442

`A276037(n+1)+A284382(n+1)-A256290(n+1)`
-/

namespace A284923.P3596386735729535442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + (A284382 (n + 1) - A256290 (n + 1))

end

end A284923.P3596386735729535442

/-!
# A284924: a(n) is the least n-digit multiple of 5^n using the decimal digits {5, 6, 7, 8, 9} exclusively.

The programs for A284924, there is no canonical definition to state claims against.
-/

/-! ## A284924.P1855707760820141831

`record[A020703(n+1)*A114205(n+2)]`
-/

namespace A284924.P1855707760820141831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1) * A114205 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284924.P1855707760820141831

/-!
# A284926: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^5.

The programs for A284926, the canonical program `A284926.P14470823227090905771` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284926 has offset 1).

The definition of A284926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284926.P14470823227090905771

`∑{d}[n+1, #*A309336(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284926

/-- `∑{d}[n+1, #*A309336(#)]` -/
def P14470823227090905771.Spec : Prop :=
  ∀ n, P14470823227090905771.a n = A284926 (n + 1)

theorem P14470823227090905771.correct : P14470823227090905771.Spec := by
  intro n
  simp only [A284926, Nat.add_sub_cancel]

end A284926

/-! ## A284926.P8653119455311282228

`2*A096960(n+1)-A001160(n+1)`
-/

namespace A284926.P8653119455311282228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096960 (n + 1) - A001160 (n + 1)

end

end A284926.P8653119455311282228

namespace A284926

/-- `2*A096960(n+1)-A001160(n+1)` -/
def P8653119455311282228.Spec : Prop :=
  ∀ n, P8653119455311282228.a n = A284926 (n + 1)

end A284926

/-! ## A284926.P2261863562053354807

`∑{d}[n+1, A048272(#)*A059378((n+1)/#)]`
-/

namespace A284926.P2261863562053354807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284926.P2261863562053354807

namespace A284926

/-- `∑{d}[n+1, A048272(#)*A059378((n+1)/#)]` -/
def P2261863562053354807.Spec : Prop :=
  ∀ n, P2261863562053354807.a n = A284926 (n + 1)

end A284926

/-! ## A284926.P7723377778481865945

`∑{d}[n+1, A078306(#)*A115224((n+1)/#)]`
-/

namespace A284926.P7723377778481865945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078306 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284926.P7723377778481865945

namespace A284926

/-- `∑{d}[n+1, A078306(#)*A115224((n+1)/#)]` -/
def P7723377778481865945.Spec : Prop :=
  ∀ n, P7723377778481865945.a n = A284926 (n + 1)

end A284926

/-! ## A284926.P414815464241740901

`∑{d}[n+1, A238533(#)*A284900((n+1)/#)]`
-/

namespace A284926.P414815464241740901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A284900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284926.P414815464241740901

namespace A284926

/-- `∑{d}[n+1, A238533(#)*A284900((n+1)/#)]` -/
def P414815464241740901.Spec : Prop :=
  ∀ n, P414815464241740901.a n = A284926 (n + 1)

end A284926

/-! ## A284926.P11184683697908437611

`∑{d}[n+1, A193356(#)*A372961((n+1)/#)]`
-/

namespace A284926.P11184683697908437611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284926.P11184683697908437611

namespace A284926

/-- `∑{d}[n+1, A193356(#)*A372961((n+1)/#)]` -/
def P11184683697908437611.Spec : Prop :=
  ∀ n, P11184683697908437611.a n = A284926 (n + 1)

end A284926

/-! ## A284926.P13131826403522000591

`A029751(n+1)/8`
-/

namespace A284926.P13131826403522000591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029751 (n + 1) : ℚ) / 8

end

end A284926.P13131826403522000591

namespace A284926

/-- `A029751(n+1)/8` -/
def P13131826403522000591.Spec : Prop :=
  ∀ n, P13131826403522000591.a n = (A284926 (n + 1) : ℚ)

end A284926

/-!
# A284927: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^6.

The programs for A284927, the canonical program `A284927.P18268349016529181647` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284927 has offset 1).

The definition of A284927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284927.P18268349016529181647

`2*A321817(n+1)-A013954(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A284927

/-- `2*A321817(n+1)-A013954(n+1)` -/
def P18268349016529181647.Spec : Prop :=
  ∀ n, P18268349016529181647.a n = A284927 (n + 1)

theorem P18268349016529181647.correct : P18268349016529181647.Spec := by
  intro n
  simp only [A284927, Nat.add_sub_cancel]

end A284927

/-! ## A284927.P9466294242318984615

`∑{d}[n+1, A048272(#)*A069091((n+1)/#)]`
-/

namespace A284927.P9466294242318984615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A069091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284927.P9466294242318984615

namespace A284927

/-- `∑{d}[n+1, A048272(#)*A069091((n+1)/#)]` -/
def P9466294242318984615.Spec : Prop :=
  ∀ n, P9466294242318984615.a n = A284927 (n + 1)

end A284927

/-! ## A284927.P5440522482247944786

`∑{d}[n+1, A193356(#)*A371878((n+1)/#)]`
-/

namespace A284927.P5440522482247944786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A371878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284927.P5440522482247944786

namespace A284927

/-- `∑{d}[n+1, A193356(#)*A371878((n+1)/#)]` -/
def P5440522482247944786.Spec : Prop :=
  ∀ n, P5440522482247944786.a n = A284927 (n + 1)

end A284927

/-! ## A284927.P7311184322886004747

`∑{d}[n+1, A284926(#)*A306411((n+1)/#)]`
-/

namespace A284927.P7311184322886004747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284926 d * A306411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284927.P7311184322886004747

namespace A284927

/-- `∑{d}[n+1, A284926(#)*A306411((n+1)/#)]` -/
def P7311184322886004747.Spec : Prop :=
  ∀ n, P7311184322886004747.a n = A284927 (n + 1)

end A284927

/-!
# A284928: Numbers k such that 2k + p is composite for all primes p, q with p + q = 2k.

The programs for A284928, there is no canonical definition to state claims against.
-/

/-! ## A284928.P5518729909307993755

`comp[A063713(n+1)]`
-/

namespace A284928.P5518729909307993755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284928.P5518729909307993755

/-! ## A284928.P16505744717571955213

`A284919(n+1)/2`
-/

namespace A284928.P16505744717571955213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284919 (n + 1) : ℚ) / 2

end

end A284928.P16505744717571955213

/-! ## A284928.P7579612186604827871

`eq[0, A275768(2*n)]`
-/

namespace A284928.P7579612186604827871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284928.P7579612186604827871

/-! ## A284928.P13094601431470919568

`A001281(A284919(n+1))`
-/

namespace A284928.P13094601431470919568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A284919 (n + 1)).toNat

end

end A284928.P13094601431470919568

/-! ## A284928.P14434266462160541325

`lt[A275768(A004277(n)), 1]`
-/

namespace A284928.P14434266462160541325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284928.P14434266462160541325

/-! ## A284928.P18335254603623510957

`A004526(A284919(n+1)+1)`
-/

namespace A284928.P18335254603623510957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284919 (n + 1) + 1).toNat

end

end A284928.P18335254603623510957

/-! ## A284928.P2283249812182928314

`eq[A010673(n), A275768(n)]/2`
-/

namespace A284928.P2283249812182928314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A284928.P2283249812182928314

/-! ## A284928.P11922781477350521205

`eq[A010674(n), A275768(n)]/2`
-/

namespace A284928.P11922781477350521205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A284928.P11922781477350521205

/-! ## A284928.P15913744137587132504

`eq[A010675(n), A275768(n)]/2`
-/

namespace A284928.P15913744137587132504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A284928.P15913744137587132504

/-! ## A284928.P13688793470275195570

`eq[A010676(n), A275768(n)]/2`
-/

namespace A284928.P13688793470275195570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A284928.P13688793470275195570

/-!
# A284929: Fixed point of the morphism 0 -> 01, 1 -> 1011.

The programs for A284929, there is no canonical definition to state claims against.
-/

/-! ## A284929.P3512993358625802592

`char[A285360(n+1)]`
-/

namespace A284929.P3512993358625802592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284929.P3512993358625802592

/-! ## A284929.P4947973359460850763

`char[A284931(n+1)-1]`
-/

namespace A284929.P4947973359460850763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284931 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284929.P4947973359460850763

/-! ## A284929.P3885845608419311510

`char[A285358(n+1)+n]`
-/

namespace A284929.P3885845608419311510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284929.P3885845608419311510

/-! ## A284929.P3633810107605533398

`and(1, A284930(n+1)+1)`
-/

namespace A284929.P3633810107605533398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284930 (n + 1) + 1)

end

end A284929.P3633810107605533398

/-! ## A284929.P5065848508712017931

`A285358(1-a(n-1)+n)` with `a(0)=0`
-/

namespace A284929.P5065848508712017931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285358 (1 - a (n - 1) + (n : ℤ)).toNat

end

end A284929.P5065848508712017931

/-! ## A284929.P14439482015313353117

`A285358(1-(a(n-1)-n))` with `a(0)=0`
-/

namespace A284929.P14439482015313353117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285358 (1 - (a (n - 1) - (n : ℤ))).toNat

end

end A284929.P14439482015313353117

/-! ## A284929.P10166198404315604672

`((A284930(n+1)-1)*A003961(n+1))%2`
-/

namespace A284929.P10166198404315604672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A284930 (n + 1) - 1) * A003961 (n + 1)) 2

end

end A284929.P10166198404315604672

/-! ## A284929.P16606599816157206572

`Δ[A086525(n+1)]`
-/

namespace A284929.P16606599816157206572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284929.P16606599816157206572

/-! ## A284929.P15219404094673160655

`A086525(n+2)-A086525(n+1)`
-/

namespace A284929.P15219404094673160655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086525 (n + 2) - A086525 (n + 1)

end

end A284929.P15219404094673160655

/-! ## A284929.P9145872003372666900

`A000120(1-Δ[Δ[A284930(n+1)]])`
-/

namespace A284929.P9145872003372666900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A284929.P9145872003372666900

/-! ## A284929.P7492348800287842087

`A001222(2-Δ[Δ[A284930(n+1)]])`
-/

namespace A284929.P7492348800287842087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A284929.P7492348800287842087

/-! ## A284929.P6313690566371055480

`A285341(eq[n, n+1-A285341(a(n-1)+1)]+1)` with `a(0)=2`
-/

namespace A284929.P6313690566371055480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n + 1 : ℤ) - A285341 (f2 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A284929.P6313690566371055480

/-! ## A284929.P13558330044347371678

`A059841(A284930(n+1))`
-/

namespace A284929.P13558330044347371678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A284930 (n + 1)).toNat

end

end A284929.P13558330044347371678

/-! ## A284929.P15137266695295450882

`A285341(A284930(n+1)+1)`
-/

namespace A284929.P15137266695295450882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (A284930 (n + 1) + 1).toNat

end

end A284929.P15137266695295450882

/-! ## A284929.P3516762818581127719

`A284893(A284930(n+1)+2)`
-/

namespace A284929.P3516762818581127719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (A284930 (n + 1) + 2).toNat

end

end A284929.P3516762818581127719

/-! ## A284929.P14108917907531976155

`A285358(A284930(n+1)+A285358(n+1)+1)`
-/

namespace A284929.P14108917907531976155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (A284930 (n + 1) + (A285358 (n + 1) + 1)).toNat

end

end A284929.P14108917907531976155

/-!
# A284930: Positions of 0 in A284929; complement of A284931.

The programs for A284930, there is no canonical definition to state claims against.
-/

/-! ## A284930.P11784118450405401614

`A004277(n)+comp[A284894(n+1)]`
-/

namespace A284930.P11784118450405401614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A284930.P11784118450405401614

/-! ## A284930.P3049736176697505461

`A285344(comp[2*A285344(n+1)]+1)+n`
-/

namespace A284930.P3049736176697505461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + (n : ℤ)

end

end A284930.P3049736176697505461

/-! ## A284930.P5826182899124756885

`A285344(comp[A285344(n+1)]-n+1)+n`
-/

namespace A284930.P5826182899124756885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat + (n : ℤ)

end

end A284930.P5826182899124756885

/-! ## A284930.P1983184261723848075

`lt[A284929(n+1), 1]+1`
-/

namespace A284930.P1983184261723848075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284930.P1983184261723848075

/-! ## A284930.P6590013097514289828

`lt[char[A285360(n+1)], 1]+1`
-/

namespace A284930.P6590013097514289828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A284930.P6590013097514289828

/-! ## A284930.P18158864460596624958

`lt[n*char[A284931(n+1)], n]`
-/

namespace A284930.P18158864460596624958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284931 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A284930.P18158864460596624958

/-! ## A284930.P18146015924476421406

`lt[n*A284929(A028310(n)), n]`
-/

namespace A284930.P18146015924476421406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284929 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284930.P18146015924476421406

/-! ## A284930.P17625714566603955726

`record[n+1-A000010(n+1)*A284929(n+1)]`
-/

namespace A284930.P17625714566603955726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A284929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284930.P17625714566603955726

/-! ## A284930.P5985656778459177345

`eq[A000007(n), A284929(A000007(n)+n)]`
-/

namespace A284930.P5985656778459177345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284930.P5985656778459177345

/-! ## A284930.P15586259746838995710

`eq[A000038(n), A284929(A000038(n)+n)]`
-/

namespace A284930.P15586259746838995710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284930.P15586259746838995710

/-!
# A284931: Positions of 1 in A284929; complement of A284930.

The programs for A284931, there is no canonical definition to state claims against.
-/

/-! ## A284931.P2842159809708374261

`A285360(n+1)+1`
-/

namespace A284931.P2842159809708374261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1) + 1

end

end A284931.P2842159809708374261

/-! ## A284931.P2355547956134244963

`comp[A284930(n+1)-1]+1`
-/

namespace A284931.P2355547956134244963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284931.P2355547956134244963

/-! ## A284931.P1780477686999665492

`A298231(a(n-1)-1)+a(n-1)` with `a(0)=2`
-/

namespace A284931.P1780477686999665492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A298231 (a (n - 1) - 1).toNat + a (n - 1)

end

end A284931.P1780477686999665492

/-! ## A284931.P2976585757218745252

`lt[0, A284929(n+1)]+1`
-/

namespace A284931.P2976585757218745252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284931.P2976585757218745252

/-! ## A284931.P18204767652069710679

`eq[1, A285358(n+1)]+2`
-/

namespace A284931.P18204767652069710679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284931.P18204767652069710679

/-! ## A284931.P6899345618209297317

`A020725(A285360(n+1))`
-/

namespace A284931.P6899345618209297317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A285360 (n + 1)).toNat

end

end A284931.P6899345618209297317

/-! ## A284931.P4270010195117675618

`lt[0, A284929(A028310(n))]`
-/

namespace A284931.P4270010195117675618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284931.P4270010195117675618

/-! ## A284931.P14715115180555054992

`eq[2, A020639(A284895(n+1))]+2`
-/

namespace A284931.P14715115180555054992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284895 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284931.P14715115180555054992

/-! ## A284931.P12949647368065227724

`eq[1, A284929(A000007(n)+n)]`
-/

namespace A284931.P12949647368065227724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284931.P12949647368065227724

/-! ## A284931.P14595455269641022679

`eq[1, A284929(A169585(n)+n)]`
-/

namespace A284931.P14595455269641022679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284931.P14595455269641022679

/-! ## A284931.P16055431001620374063

`∑[A285341(A004277(n))+1]`
-/

namespace A284931.P16055431001620374063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (A004277 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284931.P16055431001620374063

/-! ## A284931.P158501443529040764

`A285344(2*(n+1))-Δ[n²]`
-/

namespace A284931.P158501443529040764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (2 * (n + 1)) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284931.P158501443529040764

/-! ## A284931.P11522346609370727503

`∑[A284893(2*n+1)+1]+1`
-/

namespace A284931.P11522346609370727503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A284931.P11522346609370727503

/-! ## A284931.P14173979355131893778

`A285344(2*(n+1))+1-A004277(n+1)`
-/

namespace A284931.P14173979355131893778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (2 * (n + 1)) + 1 - A004277 (n + 1)

end

end A284931.P14173979355131893778

/-! ## A284931.P286524814897914838

`A285344(2*(n+1))+1-A005843(n+1)`
-/

namespace A284931.P286524814897914838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (2 * (n + 1)) + 1 - A005843 (n + 1)

end

end A284931.P286524814897914838

/-! ## A284931.P11560483264825979148

`eq[2, A053669(A284895(n+1)+1)]+2`
-/

namespace A284931.P11560483264825979148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A284895 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284931.P11560483264825979148

/-!
# A284932: Fixed point of the mapping 00->001, 1->10, starting with 00.

The programs for A284932, there is no canonical definition to state claims against.
-/

/-! ## A284932.P5919092515890644057

`char[A285303(n+1)-1]`
-/

namespace A284932.P5919092515890644057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284932.P5919092515890644057

/-! ## A284932.P9763866477540331085

`char[comp[A285352(n+1)-1]]`
-/

namespace A284932.P9763866477540331085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284932.P9763866477540331085

/-! ## A284932.P5772192666032437456

`char[abs(A285303(A028310(n))-1)]`
-/

namespace A284932.P5772192666032437456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285303 (A028310 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284932.P5772192666032437456

/-! ## A284932.P9165227825713962235

`char[abs(A285303(A132196(n))-1)]`
-/

namespace A284932.P9165227825713962235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285303 (A132196 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284932.P9165227825713962235

/-! ## A284932.P638566649863326838

`(char[A285352(n+1)-1]-1)*A057428(n)`
-/

namespace A284932.P638566649863326838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) * A057428 n

end

end A284932.P638566649863326838

/-! ## A284932.P7807070921768552899

`A088568(Δ[comp[A285352(n+1)+n]])`
-/

namespace A284932.P7807070921768552899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284932.P7807070921768552899

/-! ## A284932.P5971292027652452738

`A294448(Δ[comp[A285352(n+1)+n]]+2)`
-/

namespace A284932.P5971292027652452738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A284932.P5971292027652452738

/-! ## A284932.P819182046982222436

`char[A023443(A285303(n+1))]`
-/

namespace A284932.P819182046982222436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285303 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284932.P819182046982222436

/-! ## A284932.P11126455835447611529

`char[A023443(comp[A285352(n+1)])]`
-/

namespace A284932.P11126455835447611529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284932.P11126455835447611529

/-! ## A284932.P4227070145404564825

`1-char[A285352(xor(1, n)+1)-1]`
-/

namespace A284932.P4227070145404564825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284932.P4227070145404564825

/-! ## A284932.P14831493591859072416

`1-char[A285352(abs(xor(n, -2)))-1]`
-/

namespace A284932.P14831493591859072416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 |Int.xor (n : ℤ) (-2)|.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284932.P14831493591859072416

/-! ## A284932.P13637691574632818665

`1-char[A285352(abs(1-n)+1)-1]`
-/

namespace A284932.P13637691574632818665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (|1 - (n : ℤ)| + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284932.P13637691574632818665

/-!
# A284933: Positions of 0 in A284792; complement of A284934.

The programs for A284933, the canonical program `A284933.P4679445134235036996` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284933 has offset 1).

The definition of A284933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284933.P9747272841463936611

`comp[3*n+1]+comp[(n+1)*(xor(n, n+1)+1)]+1`
-/

namespace A284933.P9747272841463936611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.xor n (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A284933.P9747272841463936611

namespace A284933

/-- `comp[3*n+1]+comp[(n+1)*(xor(n, n+1)+1)]+1` -/
def P9747272841463936611.Spec : Prop :=
  ∀ n, (P9747272841463936611.a n : ℤ) = A284933 (n + 1)

end A284933

/-! ## A284933.P14212224042775448897

`A285385(n+1)+comp[2*n+1+n]`
-/

namespace A284933.P14212224042775448897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A284933.P14212224042775448897

namespace A284933

/-- `A285385(n+1)+comp[2*n+1+n]` -/
def P14212224042775448897.Spec : Prop :=
  ∀ n, P14212224042775448897.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P17708117941276560878

`A284791(n+1)-A033999(n)`
-/

namespace A284933.P17708117941276560878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) - A033999 n

end

end A284933.P17708117941276560878

namespace A284933

/-- `A284791(n+1)-A033999(n)` -/
def P17708117941276560878.Spec : Prop :=
  ∀ n, P17708117941276560878.a n = A284933 (n + 1)

theorem P17708117941276560878.correct : P17708117941276560878.Spec := by
  intro n
  simp only [A284933, Nat.add_sub_cancel, A284933.P17708117941276560878.a, A284933.P4679445134235036996.a, A033999, A033999.P17703899380244199787.a, A171946, A171946.P13217370660611590695.f1, A171946.P13217370660611590695.f2, A171946.P13217370660611590695.a, A284791, A284791.P2982177250107877844.a, A294732, A294732.P10884492668465992703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284933

/-! ## A284933.P13613843038202098101

`A285971(n+1)-A026465(n+1)`
-/

namespace A284933.P13613843038202098101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285971 (n + 1) - A026465 (n + 1)

end

end A284933.P13613843038202098101

namespace A284933

/-- `A285971(n+1)-A026465(n+1)` -/
def P13613843038202098101.Spec : Prop :=
  ∀ n, P13613843038202098101.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P4679445134235036996

`A294732(n+2)+A171946(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284933

/-- `A294732(n+2)+A171946(n+1)` -/
def P4679445134235036996.Spec : Prop :=
  ∀ n, P4679445134235036996.a n = A284933 (n + 1)

theorem P4679445134235036996.correct : P4679445134235036996.Spec := by
  intro n
  simp only [A284933, Nat.add_sub_cancel]

end A284933

/-! ## A284933.P5862578583494833942

`A284791(n+1)+2*A000035(n)-1`
-/

namespace A284933.P5862578583494833942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) + (2 * A000035 n - 1)

end

end A284933.P5862578583494833942

namespace A284933

/-- `A284791(n+1)+2*A000035(n)-1` -/
def P5862578583494833942.Spec : Prop :=
  ∀ n, P5862578583494833942.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P14774883003032132937

`and(A284393(n+1)+A016825(n), -2)/2`
-/

namespace A284933.P14774883003032132937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A284393 (n + 1) + A016825 n) (-2) : ℚ) / 2

end

end A284933.P14774883003032132937

namespace A284933

/-- `and(A284393(n+1)+A016825(n), -2)/2` -/
def P14774883003032132937.Spec : Prop :=
  ∀ n, P14774883003032132937.a n = (A284933 (n + 1) : ℚ)

end A284933

/-! ## A284933.P3757357523830503133

`A284791(n+1)+A000035(n)-A000035(n+1)`
-/

namespace A284933.P3757357523830503133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) + (A000035 n - A000035 (n + 1))

end

end A284933.P3757357523830503133

namespace A284933

/-- `A284791(n+1)+A000035(n)-A000035(n+1)` -/
def P3757357523830503133.Spec : Prop :=
  ∀ n, P3757357523830503133.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P9973325477140604227

`A284791(n+1)+A010693(n)-A010693(n+1)`
-/

namespace A284933.P9973325477140604227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) + (A010693 n - A010693 (n + 1))

end

end A284933.P9973325477140604227

namespace A284933

/-- `A284791(n+1)+A010693(n)-A010693(n+1)` -/
def P9973325477140604227.Spec : Prop :=
  ∀ n, P9973325477140604227.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P3768027029863691053

`A008619(A284393(n+1))+2*n`
-/

namespace A284933.P3768027029863691053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A284393 (n + 1)).toNat + (2 * n : ℤ)

end

end A284933.P3768027029863691053

namespace A284933

/-- `A008619(A284393(n+1))+2*n` -/
def P3768027029863691053.Spec : Prop :=
  ∀ n, P3768027029863691053.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P9184014316576385384

`ceil(A284393(A284393(n+1)+1)/2+n)`
-/

namespace A284933.P9184014316576385384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284393 (A284393 (n + 1) + 1).toNat : ℚ) / 2 + (n : ℚ)⌉

end

end A284933.P9184014316576385384

namespace A284933

/-- `ceil(A284393(A284393(n+1)+1)/2+n)` -/
def P9184014316576385384.Spec : Prop :=
  ∀ n, P9184014316576385384.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P14104710150596621784

`lt[A284792(n+1), 1]+1`
-/

namespace A284933.P14104710150596621784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284933.P14104710150596621784

namespace A284933

/-- `lt[A284792(n+1), 1]+1` -/
def P14104710150596621784.Spec : Prop :=
  ∀ n, (P14104710150596621784.a n : ℤ) = A284933 (n + 1)

end A284933

/-! ## A284933.P2431048475140109496

`eq[1, Δ[A286495(n+1)]]+1`
-/

namespace A284933.P2431048475140109496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284933.P2431048475140109496

namespace A284933

/-- `eq[1, Δ[A286495(n+1)]]+1` -/
def P2431048475140109496.Spec : Prop :=
  ∀ n, (P2431048475140109496.a n : ℤ) = A284933 (n + 1)

end A284933

/-! ## A284933.P1497655708461890128

`lt[n*char[A284934(n+1)], n]`
-/

namespace A284933.P1497655708461890128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284934 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A284933.P1497655708461890128

namespace A284933

/-- `lt[n*char[A284934(n+1)], n]` -/
def P1497655708461890128.Spec : Prop :=
  ∀ n, (P1497655708461890128.a n : ℤ) = A284933 (n + 1)

end A284933

/-! ## A284933.P12208651521646761300

`A008619(A171947(n+1)+n)+n`
-/

namespace A284933.P12208651521646761300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A171947 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

end

end A284933.P12208651521646761300

namespace A284933

/-- `A008619(A171947(n+1)+n)+n` -/
def P12208651521646761300.Spec : Prop :=
  ∀ n, P12208651521646761300.a n = A284933 (n + 1)

end A284933

/-! ## A284933.P4259223285285700016

`eq[1, A286493(eq[1, A286493(n+1)])]`
-/

namespace A284933.P4259223285285700016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284933.P4259223285285700016

namespace A284933

/-- `eq[1, A286493(eq[1, A286493(n+1)])]` -/
def P4259223285285700016.Spec : Prop :=
  ∀ n, (P4259223285285700016.a n : ℤ) = A284933 (n + 1)

end A284933

/-!
# A284934: Positions of 1 in A284792; complement of A284933.

The programs for A284934, the canonical program `A284934.P7002224388800912769` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284934 has offset 1).

The definition of A284934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284934.P675414030858207897

`comp[A284933(n+1)-1]+1`
-/

namespace A284934.P675414030858207897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284934.P675414030858207897

namespace A284934

/-- `comp[A284933(n+1)-1]+1` -/
def P675414030858207897.Spec : Prop :=
  ∀ n, (P675414030858207897.a n : ℤ) = A284934 (n + 1)

end A284934

/-! ## A284934.P7002224388800912769

`4*(n+1)-(A285976(n+1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284934

/-- `4*(n+1)-(A285976(n+1)+1)` -/
def P7002224388800912769.Spec : Prop :=
  ∀ n, P7002224388800912769.a n = A284934 (n + 1)

theorem P7002224388800912769.correct : P7002224388800912769.Spec := by
  intro n
  simp only [A284934, Nat.add_sub_cancel]

end A284934

/-! ## A284934.P10061058699592681679

`A004767(n)-A285976(n+1)`
-/

namespace A284934.P10061058699592681679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285976 (n + 1)

end

end A284934.P10061058699592681679

namespace A284934

/-- `A004767(n)-A285976(n+1)` -/
def P10061058699592681679.Spec : Prop :=
  ∀ n, P10061058699592681679.a n = A284934 (n + 1)

theorem P10061058699592681679.correct : P10061058699592681679.Spec := by
  intro n
  simp only [A284934, Nat.add_sub_cancel, A284934.P10061058699592681679.a, A284934.P7002224388800912769.a, A004767, A004767.P13352534504447192883.a, A285976, A285976.P3167710353206823821.f1, A285976.P3167710353206823821.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284934

/-! ## A284934.P8987269594759257880

`A286066(n+1)+A285960(n+1)`
-/

namespace A284934.P8987269594759257880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) + A285960 (n + 1)

end

end A284934.P8987269594759257880

namespace A284934

/-- `A286066(n+1)+A285960(n+1)` -/
def P8987269594759257880.Spec : Prop :=
  ∀ n, P8987269594759257880.a n = A284934 (n + 1)

end A284934

/-! ## A284934.P6532577331881668534

`A286066(n+1)+A285972(n+2)`
-/

namespace A284934.P6532577331881668534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) + A285972 (n + 2)

end

end A284934.P6532577331881668534

namespace A284934

/-- `A286066(n+1)+A285972(n+2)` -/
def P6532577331881668534.Spec : Prop :=
  ∀ n, P6532577331881668534.a n = A284934 (n + 1)

end A284934

/-! ## A284934.P10990997024456181914

`2-(A284792(a(n-1)+1)-a(n-1))` with `a(0)=2`
-/

namespace A284934.P10990997024456181914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (A284792 (a (n - 1) + 1).toNat - a (n - 1))

end

end A284934.P10990997024456181914

namespace A284934

/-- `2-(A284792(a(n-1)+1)-a(n-1))` -/
def P10990997024456181914.Spec : Prop :=
  ∀ n, P10990997024456181914.a n = A284934 (n + 1)

end A284934

/-! ## A284934.P10129238602373383456

`eq[1, A284792(n+1)]+1`
-/

namespace A284934.P10129238602373383456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284934.P10129238602373383456

namespace A284934

/-- `eq[1, A284792(n+1)]+1` -/
def P10129238602373383456.Spec : Prop :=
  ∀ n, (P10129238602373383456.a n : ℤ) = A284934 (n + 1)

end A284934

/-! ## A284934.P87952589733389743

`lt[1, Δ[A286495(n+1)]]+1`
-/

namespace A284934.P87952589733389743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284934.P87952589733389743

namespace A284934

/-- `lt[1, Δ[A286495(n+1)]]+1` -/
def P87952589733389743.Spec : Prop :=
  ∀ n, (P87952589733389743.a n : ℤ) = A284934 (n + 1)

end A284934

/-! ## A284934.P4920469729936551373

`∑[2-A284388(2*n+1)]`
-/

namespace A284934.P4920469729936551373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A284388 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284934.P4920469729936551373

namespace A284934

/-- `∑[2-A284388(2*n+1)]` -/
def P4920469729936551373.Spec : Prop :=
  ∀ n, P4920469729936551373.a n = A284934 (n + 1)

end A284934

/-! ## A284934.P1437794299339477876

`∑[2/A026465(A065190(2*n+1))]`
-/

namespace A284934.P1437794299339477876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A026465 (A065190 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284934.P1437794299339477876

namespace A284934

/-- `∑[2/A026465(A065190(2*n+1))]` -/
def P1437794299339477876.Spec : Prop :=
  ∀ n, P1437794299339477876.a n = (A284934 (n + 1) : ℚ)

end A284934

/-! ## A284934.P8978810489189958996

`A286049(2*(n+1))+A285970(n+1)`
-/

namespace A284934.P8978810489189958996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (2 * (n + 1)) + A285970 (n + 1)

end

end A284934.P8978810489189958996

namespace A284934

/-- `A286049(2*(n+1))+A285970(n+1)` -/
def P8978810489189958996.Spec : Prop :=
  ∀ n, P8978810489189958996.a n = A284934 (n + 1)

end A284934

/-! ## A284934.P6776100333344447631

`A286066(n+1)+A286046(2*n+1)`
-/

namespace A284934.P6776100333344447631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) + A286046 (2 * n + 1)

end

end A284934.P6776100333344447631

namespace A284934

/-- `A286066(n+1)+A286046(2*n+1)` -/
def P6776100333344447631.Spec : Prop :=
  ∀ n, P6776100333344447631.a n = A284934 (n + 1)

end A284934

/-! ## A284934.P6389230508435542504

`record[A286489(A000265(n+1))-n]`
-/

namespace A284934.P6389230508435542504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286489 (A000265 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284934.P6389230508435542504

namespace A284934

/-- `record[A286489(A000265(n+1))-n]` -/
def P6389230508435542504.Spec : Prop :=
  ∀ n, P6389230508435542504.a n = A284934 (n + 1)

end A284934

/-!
# A284935: Fixed point of the morphism 0 -> 01, 1 -> 1100.

The programs for A284935, there is no canonical definition to state claims against.
-/

/-! ## A284935.P4983972251654047965

`char[A284937(n+1)-1]`
-/

namespace A284935.P4983972251654047965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284937 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284935.P4983972251654047965

/-! ## A284935.P14303366327281728032

`A353557(or(A077801(n+1), A240219(2*n+5)))`
-/

namespace A284935.P14303366327281728032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (Int.lor (A077801 (n + 1)) (A240219 (2 * n + 5))).toNat

end

end A284935.P14303366327281728032

/-! ## A284935.P17533223033097458189

`A010060(A141073(n+1)+A010711(n))`
-/

namespace A284935.P17533223033097458189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A141073 (n + 1) + A010711 n).toNat

end

end A284935.P17533223033097458189

/-!
# A284936: Positions of 0 in A284935; complement of A284937.

The programs for A284936, there is no canonical definition to state claims against.
-/

/-! ## A284936.P4529536043832931590

`record[xor(n+1, -A284935(n+1))]`
-/

namespace A284936.P4529536043832931590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-A284935 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284936.P4529536043832931590

/-! ## A284936.P1505951894253437149

`eq[A000007(n), A284935(A065033(2*n))]`
-/

namespace A284936.P1505951894253437149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284936.P1505951894253437149

/-! ## A284936.P10310010761504387452

`lt[A284935(A065033(2*n)), A057427(n)]`
-/

namespace A284936.P10310010761504387452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284936.P10310010761504387452

/-! ## A284936.P16824842143344186711

`lt[A284935(A065033(2*n)), A267871(n+3)]`
-/

namespace A284936.P16824842143344186711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284936.P16824842143344186711

/-!
# A284937: Positions of 1 in A284935; complement of A284936.

The programs for A284937, there is no canonical definition to state claims against.
-/

/-! ## A284937.P17522251801635144995

`record[(n-1)*A284935(n+1)+2]`
-/

namespace A284937.P17522251801635144995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A284935 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284937.P17522251801635144995

/-! ## A284937.P8176772073618675191

`A284936(A000027(3*n+2))-A004767(n)`
-/

namespace A284937.P8176772073618675191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284936 (A000027 (3 * n + 2)).toNat - A004767 n

end

end A284937.P8176772073618675191

/-! ## A284937.P5130493653662905140

`eq[1, A284935(A065033(2*n))]`
-/

namespace A284937.P5130493653662905140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284937.P5130493653662905140

/-! ## A284937.P10067391450660146024

`lt[A000007(n), A284935(A065033(2*n))]`
-/

namespace A284937.P10067391450660146024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284935 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284937.P10067391450660146024

/-!
# A284938: Triangle read by rows: coefficients of the edge cover polynomial for the n-path graph P_n.

The programs for A284938, the canonical program `A284938.P11691435844775853104` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284938 has offset 1).

The definition of A284938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284938.P6224458536040612420

`abs(A057094(n))`
-/

namespace A284938.P6224458536040612420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057094 n|

end

end A284938.P6224458536040612420

namespace A284938

/-- `abs(A057094(n))` -/
def P6224458536040612420.Spec : Prop :=
  ∀ n, P6224458536040612420.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P14707908762268873628

`T(n-1,k-1)+T(n-2,k-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A284938.P14707908762268873628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n

end

end A284938.P14707908762268873628

namespace A284938

/-- `T(n-1,k-1)+T(n-2,k-1)` -/
def P14707908762268873628.Spec : Prop :=
  ∀ n, (P14707908762268873628.a n : ℤ) = A284938 (n + 1)

end A284938

/-! ## A284938.P16554295931207454757

`A238160(n)-A026729(n)`
-/

namespace A284938.P16554295931207454757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n - A026729 n

end

end A284938.P16554295931207454757

namespace A284938

/-- `A238160(n)-A026729(n)` -/
def P16554295931207454757.Spec : Prop :=
  ∀ n, P16554295931207454757.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P13330354009061683838

`A057094(n)*A072784(n)`
-/

namespace A284938.P13330354009061683838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 n * A072784 n

end

end A284938.P13330354009061683838

namespace A284938

/-- `A057094(n)*A072784(n)` -/
def P13330354009061683838.Spec : Prop :=
  ∀ n, P13330354009061683838.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P14648902988252274192

`lcm(A003989(n+1), A057094(n))`
-/

namespace A284938.P14648902988252274192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003989 (n + 1)) (A057094 n)

end

end A284938.P14648902988252274192

namespace A284938

/-- `lcm(A003989(n+1), A057094(n))` -/
def P14648902988252274192.Spec : Prop :=
  ∀ n, (P14648902988252274192.a n : ℤ) = A284938 (n + 1)

end A284938

/-! ## A284938.P11691435844775853104

`A026729(n)-a(A083920(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284938

/-- `A026729(n)-a(A083920(n))` -/
def P11691435844775853104.Spec : Prop :=
  ∀ n, P11691435844775853104.a n = A284938 (n + 1)

theorem P11691435844775853104.correct : P11691435844775853104.Spec := by
  intro n
  simp only [A284938, Nat.add_sub_cancel]

end A284938

/-! ## A284938.P4446540595480930317

`A026729((2*n+1)%A047839(n+1))`
-/

namespace A284938.P4446540595480930317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (Int.tmod (2 * n + 1 : ℤ) (A047839 (n + 1))).toNat

end

end A284938.P4446540595480930317

namespace A284938

/-- `A026729((2*n+1)%A047839(n+1))` -/
def P4446540595480930317.Spec : Prop :=
  ∀ n, P4446540595480930317.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P7547408736894629307

`A199881(n)-A026729(A083920(n))`
-/

namespace A284938.P7547408736894629307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199881 n - A026729 (A083920 n).toNat

end

end A284938.P7547408736894629307

namespace A284938

/-- `A199881(n)-A026729(A083920(n))` -/
def P7547408736894629307.Spec : Prop :=
  ∀ n, P7547408736894629307.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P18305971610575513424

`A103631(A038722(n+1)+A004197(n))`
-/

namespace A284938.P18305971610575513424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A038722 (n + 1) + A004197 n).toNat

end

end A284938.P18305971610575513424

namespace A284938

/-- `A103631(A038722(n+1)+A004197(n))` -/
def P18305971610575513424.Spec : Prop :=
  ∀ n, P18305971610575513424.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P11608621183777211432

`A103631(A061579(n)+A003983(n+1))`
-/

namespace A284938.P11608621183777211432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A061579 n + A003983 (n + 1)).toNat

end

end A284938.P11608621183777211432

namespace A284938

/-- `A103631(A061579(n)+A003983(n+1))` -/
def P11608621183777211432.Spec : Prop :=
  ∀ n, P11608621183777211432.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P17261750229158766075

`gcd(A057078(n)*A057094(n), A057094(n))`
-/

namespace A284938.P17261750229158766075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057078 n * A057094 n) (A057094 n)

end

end A284938.P17261750229158766075

namespace A284938

/-- `gcd(A057078(n)*A057094(n), A057094(n))` -/
def P17261750229158766075.Spec : Prop :=
  ∀ n, (P17261750229158766075.a n : ℤ) = A284938 (n + 1)

end A284938

/-! ## A284938.P154938917986278457

`∑{d}[A057094(n), A000010(#)]`
-/

namespace A284938.P154938917986278457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A284938.P154938917986278457

namespace A284938

/-- `∑{d}[A057094(n), A000010(#)]` -/
def P154938917986278457.Spec : Prop :=
  ∀ n, P154938917986278457.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P15409717621041318106

`A262689(A057094(n)²)`
-/

namespace A284938.P15409717621041318106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A057094 n ^ 2).toNat

end

end A284938.P15409717621041318106

namespace A284938

/-- `A262689(A057094(n)²)` -/
def P15409717621041318106.Spec : Prop :=
  ∀ n, P15409717621041318106.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P16531576895909862327

`gcd(A057094(C(n, 2)), A057094(n))`
-/

namespace A284938.P16531576895909862327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057094 (Nat.choose n 2)) (A057094 n)

end

end A284938.P16531576895909862327

namespace A284938

/-- `gcd(A057094(C(n, 2)), A057094(n))` -/
def P16531576895909862327.Spec : Prop :=
  ∀ n, (P16531576895909862327.a n : ℤ) = A284938 (n + 1)

end A284938

/-! ## A284938.P1369375304300705929

`A018851(A057094(n)²)`
-/

namespace A284938.P1369375304300705929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A057094 n ^ 2).toNat

end

end A284938.P1369375304300705929

namespace A284938

/-- `A018851(A057094(n)²)` -/
def P1369375304300705929.Spec : Prop :=
  ∀ n, P1369375304300705929.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P3006049808917961762

`A004074(A059268(n)+A004070(n))`
-/

namespace A284938.P3006049808917961762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (A059268 n + A004070 n).toNat

end

end A284938.P3006049808917961762

namespace A284938

/-- `A004074(A059268(n)+A004070(n))` -/
def P3006049808917961762.Spec : Prop :=
  ∀ n, P3006049808917961762.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P6051242194152153554

`A000196(A057094(n)²)`
-/

namespace A284938.P6051242194152153554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A057094 n ^ 2).toNat

end

end A284938.P6051242194152153554

namespace A284938

/-- `A000196(A057094(n)²)` -/
def P6051242194152153554.Spec : Prop :=
  ∀ n, P6051242194152153554.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P18426127052651007930

`A037213(A057094(n)²)`
-/

namespace A284938.P18426127052651007930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A057094 n ^ 2).toNat

end

end A284938.P18426127052651007930

namespace A284938

/-- `A037213(A057094(n)²)` -/
def P18426127052651007930.Spec : Prop :=
  ∀ n, P18426127052651007930.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P12366525612490130073

`A038690(A057094(n)²)`
-/

namespace A284938.P12366525612490130073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A057094 n ^ 2).toNat

end

end A284938.P12366525612490130073

namespace A284938

/-- `A038690(A057094(n)²)` -/
def P12366525612490130073.Spec : Prop :=
  ∀ n, P12366525612490130073.a n = A284938 (n + 1)

end A284938

/-! ## A284938.P17170378603967069236

`A322832(A057094(n)²)`
-/

namespace A284938.P17170378603967069236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (A057094 n ^ 2).toNat

end

end A284938.P17170378603967069236

namespace A284938

/-- `A322832(A057094(n)²)` -/
def P17170378603967069236.Spec : Prop :=
  ∀ n, P17170378603967069236.a n = A284938 (n + 1)

end A284938

/-!
# A284939: Fixed point of the morphism 0 -> 01, 1 -> 1101, starting with 0.

The programs for A284939, there is no canonical definition to state claims against.
-/

/-! ## A284939.P13278866099209893546

`char[A285375(n+1)]`
-/

namespace A284939.P13278866099209893546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284939.P13278866099209893546

/-! ## A284939.P2226119839217952189

`char[A284941(n+1)-1]`
-/

namespace A284939.P2226119839217952189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284939.P2226119839217952189

/-! ## A284939.P641954346821228879

`char[A285373(n+1)+n]`
-/

namespace A284939.P641954346821228879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284939.P641954346821228879

/-! ## A284939.P8730940819816877662

`A285373(C(n, a(n-1)))` with `a(0)=0`
-/

namespace A284939.P8730940819816877662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285373 (Nat.choose n (a (n - 1)).toNat)

end

end A284939.P8730940819816877662

/-! ## A284939.P17561970729162759095

`1-char[A080580(n+1)-1]`
-/

namespace A284939.P17561970729162759095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284939.P17561970729162759095

/-! ## A284939.P14844215316223526342

`Δ[a(n-1)+n+1-A284941(a(n-1)+1)]` with `a(0)=0`
-/

namespace A284939.P14844215316223526342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (n + 1 : ℤ) - A284941 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284939.P14844215316223526342

/-! ## A284939.P11760628717067917273

`char[A054686(Δ[A080580(n+1)])+n]`
-/

namespace A284939.P11760628717067917273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (f2 (n + 1) - f2 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284939.P11760628717067917273

/-! ## A284939.P1672991314369216415

`char[A054656(Δ[A080580(n+1)]+3)+n]`
-/

namespace A284939.P1672991314369216415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054656 (f2 (n + 1) - f2 n + 3).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284939.P1672991314369216415

/-! ## A284939.P11682359449809497404

`char[A054669(Δ[A080580(n+1)]+3)+n]`
-/

namespace A284939.P11682359449809497404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054669 (f2 (n + 1) - f2 n + 3).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284939.P11682359449809497404

/-! ## A284939.P5836258278183918761

`A057427(n*A285373(A028310(n)))`
-/

namespace A284939.P5836258278183918761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A285373 (A028310 n).toNat).toNat

end

end A284939.P5836258278183918761

/-! ## A284939.P7906431512814635310

`char[(n+1)*Δ[A285376(n+1)]-n]`
-/

namespace A284939.P7906431512814635310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284939.P7906431512814635310

/-!
# A284940: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A284940, there is no canonical definition to state claims against.
-/

/-! ## A284940.P14924015659503771829

`A007088(A285834(n))`
-/

namespace A284940.P14924015659503771829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285834 n).toNat

end

end A284940.P14924015659503771829

/-! ## A284940.P7298731325755028516

`A185544(2*A285834(n))`
-/

namespace A284940.P7298731325755028516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285834 n).toNat

end

end A284940.P7298731325755028516

/-! ## A284940.P14287633159691673338

`A221714(A285834(n)^gcd(2*n+1, 4*n))`
-/

namespace A284940.P14287633159691673338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (A285834 n ^ Nat.gcd (2 * n + 1) (4 * n)).toNat

end

end A284940.P14287633159691673338

/-! ## A284940.P4025107772559753720

`A221714(A285834(n)+A185264(n))`
-/

namespace A284940.P4025107772559753720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (A285834 n + A185264 n).toNat

end

end A284940.P4025107772559753720

/-! ## A284940.P11265639912327960110

`A221714(gcd(A185264(n), A285834(n)))`
-/

namespace A284940.P11265639912327960110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (Int.gcd (A185264 n) (A285834 n))

end

end A284940.P11265639912327960110

/-!
# A284941: Positions of 1 in A284939; complement of A080580.

The programs for A284941, there is no canonical definition to state claims against.
-/

/-! ## A284941.P2515358982931503630

`A285375(n+1)+1`
-/

namespace A284941.P2515358982931503630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (n + 1) + 1

end

end A284941.P2515358982931503630

/-! ## A284941.P7088156040056804032

`A080753(n+1)-2*n`
-/

namespace A284941.P7088156040056804032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080753 (n + 1) - (2 * n : ℤ)

end

end A284941.P7088156040056804032

/-! ## A284941.P2670411565207585343

`comp[A080580(n+1)-1]+1`
-/

namespace A284941.P2670411565207585343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284941.P2670411565207585343

/-! ## A284941.P5003236002245594363

`comp[A285374(n+1)-1]+2`
-/

namespace A284941.P5003236002245594363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A284941.P5003236002245594363

/-! ## A284941.P4326163297787709526

`A080038(n)+a(n-1)-2` with `a(0)=2`
-/

namespace A284941.P4326163297787709526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A080038 n + a (n - 1) - 2

end

end A284941.P4326163297787709526

/-! ## A284941.P3247692834825644407

`eq[1, A285373(n+1)]+2`
-/

namespace A284941.P3247692834825644407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284941.P3247692834825644407

/-! ## A284941.P14728680569996057182

`A020725(A285375(n+1))`
-/

namespace A284941.P14728680569996057182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A285375 (n + 1)).toNat

end

end A284941.P14728680569996057182

/-! ## A284941.P18384289734497283993

`record[(n+1)*A189576(A285374(n+1)-A080580(n+1))+1]`
-/

namespace A284941.P18384289734497283993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189576 (A285374 (n + 1) - A080580 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284941.P18384289734497283993

/-! ## A284941.P14135521583356317106

`eq[1, A284939(n+1)]+1`
-/

namespace A284941.P14135521583356317106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284941.P14135521583356317106

/-! ## A284941.P18018671737158393616

`lt[0, A284939(n+2)]+2`
-/

namespace A284941.P18018671737158393616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A284941.P18018671737158393616

/-! ## A284941.P14028941931553274605

`lt[0, A284939(A028310(n))]`
-/

namespace A284941.P14028941931553274605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284941.P14028941931553274605

/-! ## A284941.P2161066417923845799

`record[(n+1)*(A054670(Δ[A080580(n+1)])+1)+1]`
-/

namespace A284941.P2161066417923845799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A054670 (f2 (n + 1) - f2 n).toNat + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284941.P2161066417923845799

/-! ## A284941.P6872771958189530114

`eq[1, A284939(A000007(n)+n)]`
-/

namespace A284941.P6872771958189530114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284941.P6872771958189530114

/-! ## A284941.P185924427145534266

`eq[1, A284939(A167891(n)+n)]`
-/

namespace A284941.P185924427145534266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A167891 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284941.P185924427145534266

/-! ## A284941.P9889790872385088520

`A049084(p?[A000040(n+1)*A284939(n+1)])`
-/

namespace A284941.P9889790872385088520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A284939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A284941.P9889790872385088520

/-!
# A284942: Expansion of Sum_{k>=1} mu(k)^2*x^k*(1 - x)^2/(1 - 2*x)^2, where mu() is the Moebius function (A008683).

The programs for A284942, there is no canonical definition to state claims against.
-/

/-! ## A284942.P5257209394571314944

`A005145(A001075(n))-1+n`
-/

namespace A284942.P5257209394571314944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A001075 n).toNat - 1 + (n : ℤ)

end

end A284942.P5257209394571314944

/-! ## A284942.P14824171304554340016

`A005145(A133592(n))-1+n`
-/

namespace A284942.P14824171304554340016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A133592 n).toNat - 1 + (n : ℤ)

end

end A284942.P14824171304554340016

/-! ## A284942.P11164454107488647995

`A023443(A005145(A001075(n))+n)`
-/

namespace A284942.P11164454107488647995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A005145 (A001075 n).toNat + (n : ℤ)).toNat

end

end A284942.P11164454107488647995

/-! ## A284942.P13757804182435301017

`A023443(n)+A005145(A133592(n))`
-/

namespace A284942.P13757804182435301017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A005145 (A133592 n).toNat

end

end A284942.P13757804182435301017

/-!
# A284943: Expansion of Sum_{p prime, k>=1} x^(p^k)*(1 - x)^2/(1 - 2*x)^2.

The programs for A284943, there is no canonical definition to state claims against.
-/

/-! ## A284943.P5999231382306707295

`A126874(n+5)+A248333(n)²`
-/

namespace A284943.P5999231382306707295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126874 (n + 5) + A248333 n ^ 2

end

end A284943.P5999231382306707295

/-! ## A284943.P2743128918449862938

`A126874(n+5)+A293014(n)²`
-/

namespace A284943.P2743128918449862938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126874 (n + 5) + A293014 n ^ 2

end

end A284943.P2743128918449862938

/-! ## A284943.P14009381808914330235

`A126874(n+5)+∑[A249442(n)]`
-/

namespace A284943.P14009381808914330235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126874 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284943.P14009381808914330235

/-!
# A284944: Fixed point of the morphism 0 -> 01, 1 -> 1110.

The programs for A284944, there is no canonical definition to state claims against.
-/

/-! ## A284944.P14289683601993718694

`log2(gcd(2, A284945(n+1)))`
-/

namespace A284944.P14289683601993718694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A284945 (n + 1)) : ℝ)

end

end A284944.P14289683601993718694

/-! ## A284944.P4891753382965824114

`char[A284946(n+1)-1]`
-/

namespace A284944.P4891753382965824114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284946 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284944.P4891753382965824114

/-! ## A284944.P10224799751349316150

`and(1, A284945(n+1)+A030148(n+1))`
-/

namespace A284944.P10224799751349316150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284945 (n + 1) + A030148 (n + 1))

end

end A284944.P10224799751349316150

/-! ## A284944.P9532422932623622081

`A079559(Δ[A284945(n+1)])`
-/

namespace A284944.P9532422932623622081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (f1 (n + 1) - f1 n).toNat

end

end A284944.P9532422932623622081

/-! ## A284944.P18393664874278202467

`A284966(Δ[A284945(n+1)])`
-/

namespace A284944.P18393664874278202467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284966 (f1 (n + 1) - f1 n).toNat

end

end A284944.P18393664874278202467

/-! ## A284944.P12090924692797104777

`A287523(Δ[A284945(n+1)]²)`
-/

namespace A284944.P12090924692797104777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A284944.P12090924692797104777

/-! ## A284944.P2050971928044528245

`A287523(Δ[A284945(n+1)]+2)`
-/

namespace A284944.P2050971928044528245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (f1 (n + 1) - f1 n + 2).toNat

end

end A284944.P2050971928044528245

/-! ## A284944.P15690087820515728941

`A206294(A284945(n+2)+1-A284945(n+1))`
-/

namespace A284944.P15690087820515728941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (A284945 (n + 2) + (1 - A284945 (n + 1))).toNat

end

end A284944.P15690087820515728941

/-! ## A284944.P11704814705245030170

`A001222(A055177(A284945(n+2)-A284945(n+1)+1))`
-/

namespace A284944.P11704814705245030170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055177 (A284945 (n + 2) - A284945 (n + 1) + 1).toNat).toNat

end

end A284944.P11704814705245030170

/-! ## A284944.P13873086320470010909

`A028310(2*n+3)%A040001(A284945(n+1))`
-/

namespace A284944.P13873086320470010909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (2 * n + 3)) (A040001 (A284945 (n + 1)).toNat)

end

end A284944.P13873086320470010909

/-! ## A284944.P2343112721521890596

`A059841(A284945(n+1))`
-/

namespace A284944.P2343112721521890596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A284945 (n + 1)).toNat

end

end A284944.P2343112721521890596

/-! ## A284944.P4247548485209513184

`A003623(A284945(n+1)+1)%2`
-/

namespace A284944.P4247548485209513184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003623 (A284945 (n + 1) + 1).toNat) 2

end

end A284944.P4247548485209513184

/-!
# A284945: Positions of 0 in A284944; complement of A284946.

The programs for A284945, there is no canonical definition to state claims against.
-/

/-! ## A284945.P13219146008554689802

`eq[0, A284944(n+1)]+1`
-/

namespace A284945.P13219146008554689802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284945.P13219146008554689802

/-! ## A284945.P4646726095472057538

`lt[n*A284944(A028310(n)), n]`
-/

namespace A284945.P4646726095472057538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284944 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284945.P4646726095472057538

/-! ## A284945.P16888983003679717451

`record[n+1-A006592(n*A284944(n+1))]`
-/

namespace A284945.P16888983003679717451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006592 ((n : ℤ) * A284944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284945.P16888983003679717451

/-! ## A284945.P231643939270540218

`record[n+1-A263273(n*A284944(n+1))]`
-/

namespace A284945.P231643939270540218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A263273 ((n : ℤ) * A284944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284945.P231643939270540218

/-! ## A284945.P3955120492570628139

`record[n+1-A027757(n+1)*A284944(n+1)]`
-/

namespace A284945.P3955120492570628139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A027757 (n + 1) * A284944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284945.P3955120492570628139

/-! ## A284945.P2080209467962891305

`record[n+1-A038722(n+1)*A284944(n+1)]`
-/

namespace A284945.P2080209467962891305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A038722 (n + 1) * A284944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284945.P2080209467962891305

/-! ## A284945.P1599333855772072309

`record[n+1-A221577(n+1)*A284944(n+1)]`
-/

namespace A284945.P1599333855772072309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A221577 (n + 1) * A284944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284945.P1599333855772072309

/-!
# A284946: Positions of 1 in A284944; complement of A284945.

The programs for A284946, there is no canonical definition to state claims against.
-/

/-! ## A284946.P6160689472359198851

`comp[A284945(n+1)-1]+1`
-/

namespace A284946.P6160689472359198851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284945 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284946.P6160689472359198851

/-! ## A284946.P12936313848504933212

`eq[1, A284944(n+1)]+1`
-/

namespace A284946.P12936313848504933212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284946.P12936313848504933212

/-! ## A284946.P5872066623459540733

`record[(n+2)*A284944(n+2)]`
-/

namespace A284946.P5872066623459540733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A284944 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284946.P5872066623459540733

/-! ## A284946.P12101768978895631165

`lt[0, A284944(A028310(n))]`
-/

namespace A284946.P12101768978895631165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284946.P12101768978895631165

/-! ## A284946.P7516081600661601015

`A020725(eq[1, A284944(n+1)])`
-/

namespace A284946.P7516081600661601015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284946.P7516081600661601015

/-! ## A284946.P13992283635626630003

`eq[1, A284944(A000007(n)+n)]`
-/

namespace A284946.P13992283635626630003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284944 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284946.P13992283635626630003

/-! ## A284946.P8383603253215280888

`record[A142150(A284945(n+2))]-(n+1)`
-/

namespace A284946.P8383603253215280888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A284945 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A284946.P8383603253215280888

/-! ## A284946.P16529542861918518761

`A001489(n+1)+record[A142150(A284945(n+2))]`
-/

namespace A284946.P16529542861918518761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A284945 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284946.P16529542861918518761

/-!
# A284947: Irregular triangle read by rows: coefficients of the cycle polynomial of the n-complete graph K_n.

The programs for A284947, there is no canonical definition to state claims against.
-/

/-! ## A284947.P11915423687007181492

`A144161(n+6)%A000290(A138464(n+7))`
-/

namespace A284947.P11915423687007181492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144161 (n + 6)) (A000290 (A138464 (n + 7)).toNat)

end

end A284947.P11915423687007181492

/-! ## A284947.P5666571895399831311

`A309528(lt[A332249(2*(n+2)), A338849(2*n+1)])`
-/

namespace A284947.P5666571895399831311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338849 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309528 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284947.P5666571895399831311

/-! ## A284947.P7978127694542958526

`A293496(lt[A331154(3*n+4), A082754(n+1)])`
-/

namespace A284947.P7978127694542958526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284947.P7978127694542958526

/-!
# A284948: 1-limiting word of the morphism 0 -> 10, 1 -> 00.

The programs for A284948, the canonical program `A284948.P3052985857909454493` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284948 has offset 1).

The definition of A284948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284948.P3052985857909454493

`1-a(∑[n]%n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284948

/-- `1-a(∑[n]%n)` -/
def P3052985857909454493.Spec : Prop :=
  ∀ n, P3052985857909454493.a n = A284948 (n + 1)

theorem P3052985857909454493.correct : P3052985857909454493.Spec := by
  intro n
  simp only [A284948, Nat.add_sub_cancel]

end A284948

/-! ## A284948.P1113912937806524975

`val(abs(1-n)+1, 2)%2`
-/

namespace A284948.P1113912937806524975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 % 2

end

end A284948.P1113912937806524975

namespace A284948

/-- `val(abs(1-n)+1, 2)%2` -/
def P1113912937806524975.Spec : Prop :=
  ∀ n, (P1113912937806524975.a n : ℤ) = A284948 (n + 1)

end A284948

/-! ## A284948.P12394095484141313901

`1-(and(n, -n)%3)%2`
-/

namespace A284948.P12394095484141313901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3) 2

end

end A284948.P12394095484141313901

namespace A284948

/-- `1-(and(n, -n)%3)%2` -/
def P12394095484141313901.Spec : Prop :=
  ∀ n, P12394095484141313901.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P6861335892656260166

`and(val(n, 2), a(n-1)!)` with `a(0)=1`
-/

namespace A284948.P6861335892656260166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (SequenceMachineLib.valuation n 2) (Nat.factorial (a (n - 1)))

end

end A284948.P6861335892656260166

namespace A284948

/-- `and(val(n, 2), a(n-1)!)` -/
def P6861335892656260166.Spec : Prop :=
  ∀ n, (P6861335892656260166.a n : ℤ) = A284948 (n + 1)

end A284948

/-! ## A284948.P16488704518205155178

`1-a(n-gcd(n, ∑[n]))` with `a(0)=1`
-/

namespace A284948.P16488704518205155178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A284948.P16488704518205155178

namespace A284948

/-- `1-a(n-gcd(n, ∑[n]))` -/
def P16488704518205155178.Spec : Prop :=
  ∀ n, P16488704518205155178.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P9829963557795302682

`and(a(n-1)+1, val(n, 2))` with `a(0)=1`
-/

namespace A284948.P9829963557795302682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (a (n - 1) + 1) (SequenceMachineLib.valuation n 2)

end

end A284948.P9829963557795302682

namespace A284948

/-- `and(a(n-1)+1, val(n, 2))` -/
def P9829963557795302682.Spec : Prop :=
  ∀ n, (P9829963557795302682.a n : ℤ) = A284948 (n + 1)

end A284948

/-! ## A284948.P16422522156569519835

`(n+1)%(2-a(floor(n/2)))` with `a(0)=1`
-/

namespace A284948.P16422522156569519835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (n + 1 : ℤ) (2 - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A284948.P16422522156569519835

namespace A284948

/-- `(n+1)%(2-a(floor(n/2)))` -/
def P16422522156569519835.Spec : Prop :=
  ∀ n, P16422522156569519835.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P7439684649660490953

`(n-1)%(a(floor(n/2))-2)` with `a(0)=1`
-/

namespace A284948.P7439684649660490953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - 1) (a ⌊(n : ℚ) / 2⌋.toNat - 2)

end

end A284948.P7439684649660490953

namespace A284948

/-- `(n-1)%(a(floor(n/2))-2)` -/
def P7439684649660490953.Spec : Prop :=
  ∀ n, P7439684649660490953.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P17405782231210541186

`a(a(n/2*a(n%2)))` with `a(0)=1, a(1)=0`
-/

namespace A284948.P17405782231210541186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (a (n % 2) : ℚ))).toNat)

end

end A284948.P17405782231210541186

namespace A284948

/-- `a(a(n/2*a(n%2)))` -/
def P17405782231210541186.Spec : Prop :=
  ∀ n, (P17405782231210541186.a n : ℤ) = A284948 (n + 1)

end A284948

/-! ## A284948.P5033302300645086377

`abs(xor(2*n+1, -(2*n))%3)`
-/

namespace A284948.P5033302300645086377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.xor (2 * n + 1 : ℤ) (-(2 * n : ℤ))) 3|

end

end A284948.P5033302300645086377

namespace A284948

/-- `abs(xor(2*n+1, -(2*n))%3)` -/
def P5033302300645086377.Spec : Prop :=
  ∀ n, P5033302300645086377.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P15304312235706176293

`xor(2*n+1, -(2*n))²%3`
-/

namespace A284948.P15304312235706176293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (2 * n + 1 : ℤ) (-(2 * n : ℤ)) ^ 2) 3

end

end A284948.P15304312235706176293

namespace A284948

/-- `xor(2*n+1, -(2*n))²%3` -/
def P15304312235706176293.Spec : Prop :=
  ∀ n, P15304312235706176293.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P1279069145649055617

`dr(xor(2*n+1, -(2*n)))%3`
-/

namespace A284948.P1279069145649055617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor (2 * n + 1 : ℤ) (-(2 * n : ℤ))) % 3

end

end A284948.P1279069145649055617

namespace A284948

/-- `dr(xor(2*n+1, -(2*n)))%3` -/
def P1279069145649055617.Spec : Prop :=
  ∀ n, (P1279069145649055617.a n : ℤ) = A284948 (n + 1)

end A284948

/-! ## A284948.P16123525037054898731

`a(a(n-1)+a(floor(n/2)))` with `a(0)=1, a(1)=0`
-/

namespace A284948.P16123525037054898731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat)

end

end A284948.P16123525037054898731

namespace A284948

/-- `a(a(n-1)+a(floor(n/2)))` -/
def P16123525037054898731.Spec : Prop :=
  ∀ n, (P16123525037054898731.a n : ℤ) = A284948 (n + 1)

end A284948

/-! ## A284948.P5258182309845576691

`a(a(n-1))-a(floor(n/2))` with `a(0)=1, a(1)=0`
-/

namespace A284948.P5258182309845576691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a (n - 1)).toNat - a ⌊(n : ℚ) / 2⌋.toNat

end

end A284948.P5258182309845576691

namespace A284948

/-- `a(a(n-1))-a(floor(n/2))` -/
def P5258182309845576691.Spec : Prop :=
  ∀ n, P5258182309845576691.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P5703730827706541763

`A026491(n)%2`
-/

namespace A284948.P5703730827706541763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026491 n) 2

end

end A284948.P5703730827706541763

namespace A284948

/-- `A026491(n)%2` -/
def P5703730827706541763.Spec : Prop :=
  ∀ n, P5703730827706541763.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P17328041753713506399

`A316826(n)%2`
-/

namespace A284948.P17328041753713506399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316826 n) 2

end

end A284948.P17328041753713506399

namespace A284948

/-- `A316826(n)%2` -/
def P17328041753713506399.Spec : Prop :=
  ∀ n, P17328041753713506399.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P2047267669480150503

`A317189(n)%2`
-/

namespace A284948.P2047267669480150503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317189 n) 2

end

end A284948.P2047267669480150503

namespace A284948

/-- `A317189(n)%2` -/
def P2047267669480150503.Spec : Prop :=
  ∀ n, P2047267669480150503.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P8148023301269563693

`and(1, A123725(n))`
-/

namespace A284948.P8148023301269563693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A123725 n)

end

end A284948.P8148023301269563693

namespace A284948

/-- `and(1, A123725(n))` -/
def P8148023301269563693.Spec : Prop :=
  ∀ n, P8148023301269563693.a n = A284948 (n + 1)

end A284948

/-! ## A284948.P125789738965343782

`a(A007431(n))` with `a(0)=1, a(1)=0`
-/

namespace A284948.P125789738965343782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A007431 n).toNat

end

end A284948.P125789738965343782

namespace A284948

/-- `a(A007431(n))` -/
def P125789738965343782.Spec : Prop :=
  ∀ n, (P125789738965343782.a n : ℤ) = A284948 (n + 1)

end A284948

/-!
# A284949: Triangle read by rows: T(n,k) = number of reversible string structures of length n using exactly k different symbols.

The programs for A284949, there is no canonical definition to state claims against.
-/

/-! ## A284949.P11173735054534028061

`A320525(n+1)+A304972(n+1)`
-/

namespace A284949.P11173735054534028061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (n + 1) + A304972 (n + 1)

end

end A284949.P11173735054534028061

/-! ## A284949.P6531599493241347205

`A008277(n+1)-A320525(n+1)`
-/

namespace A284949.P6531599493241347205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A320525 (n + 1)

end

end A284949.P6531599493241347205

/-! ## A284949.P1842972556028915050

`(A304972(n+1)+A008277(n+1))/2`
-/

namespace A284949.P1842972556028915050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304972 (n + 1) + A008277 (n + 1) : ℚ) / 2

end

end A284949.P1842972556028915050

/-! ## A284949.P8096426104795955805

`A152176(n+1)+A320525(n+1)-A320647(n+1)`
-/

namespace A284949.P8096426104795955805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152176 (n + 1) + (A320525 (n + 1) - A320647 (n + 1))

end

end A284949.P8096426104795955805

/-! ## A284949.P16571974250296158624

`A008277(n+1)+-A320525(n+1)%A000011(n)`
-/

namespace A284949.P16571974250296158624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) + Int.tmod (-A320525 (n + 1)) (A000011 n)

end

end A284949.P16571974250296158624

/-!
# A284950: Number of primes p <= n such that 2*n-p and 2*n+p are prime.

The programs for A284950, there is no canonical definition to state claims against.
-/

/-! ## A284950.P2183931323996484552

`A395255((2*(n+1))²)`
-/

namespace A284950.P2183931323996484552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 ((2 * (n + 1)) ^ 2)

end

end A284950.P2183931323996484552

/-! ## A284950.P415070281751673372

`A394742((2*(n+1))²)`
-/

namespace A284950.P415070281751673372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394742 ((2 * (n + 1)) ^ 2)

end

end A284950.P415070281751673372

/-! ## A284950.P3905671328234254024

`A045937(A361394(2*(n+1)))%A000005(n+1)`
-/

namespace A284950.P3905671328234254024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045937 (A361394 (2 * (n + 1))).toNat) (A000005 (n + 1))

end

end A284950.P3905671328234254024

/-!
# A284951: Numbers 2n for which A284950(n) is higher than for all smaller 2n.

The programs for A284951, there is no canonical definition to state claims against.
-/

/-! ## A284951.P7025393103021440006

`∑[A278233(A293993(n+2))]`
-/

namespace A284951.P7025393103021440006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A293993 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284951.P7025393103021440006

/-! ## A284951.P7324178692242904863

`∩[∑[A328841(2*(n+2))], A034090(n+1)]`
-/

namespace A284951.P7324178692242904863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328841 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A284951.P7324178692242904863

/-! ## A284951.P3236060926192017129

`A060735(n+5)%A008706(A047851(n))`
-/

namespace A284951.P3236060926192017129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060735 (n + 5)) (A008706 (A047851 n).toNat)

end

end A284951.P3236060926192017129

/-!
# A284954: 0-limiting word of the morphism 0->10, 1-> 000.

The programs for A284954, there is no canonical definition to state claims against.
-/

/-! ## A284954.P15922558291490609223

`char[A284956(n+1)-1]`
-/

namespace A284954.P15922558291490609223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284954.P15922558291490609223

/-! ## A284954.P15017739980450905905

`char[A284510(n+1)+A023443(n)]`
-/

namespace A284954.P15017739980450905905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284510 (n + 1) + A023443 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284954.P15017739980450905905

/-! ## A284954.P1168541578076520207

`A322860(A004215(n+1)*A121025(n+2))`
-/

namespace A284954.P1168541578076520207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A004215 (n + 1) * A121025 (n + 2)).toNat

end

end A284954.P1168541578076520207

/-! ## A284954.P18044927431010793091

`A288473(2*n+3)*A288473(A089047(n+1))`
-/

namespace A284954.P18044927431010793091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288473 (2 * n + 3) * A288473 (A089047 (n + 1)).toNat

end

end A284954.P18044927431010793091

/-! ## A284954.P10978413677658713016

`A079979(A347999(n)+A279433(3*n+5))`
-/

namespace A284954.P10978413677658713016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A347999 n + A279433 (3 * n + 5)).toNat

end

end A284954.P10978413677658713016

/-!
# A284955: Positions of 0 in A284954; complement of A284956.

The programs for A284955, there is no canonical definition to state claims against.
-/

/-! ## A284955.P5117886838608586929

`∑[A284508(n+1)+1]`
-/

namespace A284955.P5117886838608586929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284955.P5117886838608586929

/-! ## A284955.P7335752155239751122

`comp[A284956(n+1)-1]+1`
-/

namespace A284955.P7335752155239751122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284956 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284955.P7335752155239751122

/-! ## A284955.P16970604549864850296

`ceil((A284959(n+1)+n)/3)`
-/

namespace A284955.P16970604549864850296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284959 (n + 1) + (n : ℤ) : ℚ) / 3⌉

end

end A284955.P16970604549864850296

/-! ## A284955.P5566377906615816157

`∑[char[A284510(n+1)-1]+1]`
-/

namespace A284955.P5566377906615816157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284510 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284955.P5566377906615816157

/-! ## A284955.P7891019119898810987

`comp[comp[A284509(n+2)-1]+n]`
-/

namespace A284955.P7891019119898810987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284509 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284955.P7891019119898810987

/-! ## A284955.P7618098792167272477

`(A284509(3*(n+1))-n)/3`
-/

namespace A284955.P7618098792167272477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284509 (3 * (n + 1)) - (n : ℤ) : ℚ) / 3

end

end A284955.P7618098792167272477

/-! ## A284955.P7926518292005728270

`A008620(A284959(n+1)+n)`
-/

namespace A284955.P7926518292005728270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A284959 (n + 1) + (n : ℤ)).toNat

end

end A284955.P7926518292005728270

/-!
# A284956: Positions of 1 in A284954; complement of A284955.

The programs for A284956, there is no canonical definition to state claims against.
-/

/-! ## A284956.P11034580743623274700

`A284510(n+1)+n`
-/

namespace A284956.P11034580743623274700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284510 (n + 1) + (n : ℤ)

end

end A284956.P11034580743623274700

/-! ## A284956.P865272088055635319

`3*A284958(n+1)-(n+2)`
-/

namespace A284956.P865272088055635319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284958 (n + 1) - (n + 2 : ℤ)

end

end A284956.P865272088055635319

/-! ## A284956.P11328975974808551174

`∑[(A284512(n+1)+1)²]+n`
-/

namespace A284956.P11328975974808551174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284512 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A284956.P11328975974808551174

/-! ## A284956.P12622089991889760812

`eq[1, A284508(n+1)]+1+n`
-/

namespace A284956.P12622089991889760812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A284956.P12622089991889760812

/-! ## A284956.P18055279619851227440

`A284513(3*n+1)-2*n`
-/

namespace A284956.P18055279619851227440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284513 (3 * n + 1) - (2 * n : ℤ)

end

end A284956.P18055279619851227440

/-!
# A284957: 1-limiting word of the morphism 0->10, 1-> 000.

The programs for A284957, there is no canonical definition to state claims against.
-/

/-! ## A284957.P12190106276611957002

`char[A284959(n+1)-1]`
-/

namespace A284957.P12190106276611957002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284957.P12190106276611957002

/-! ## A284957.P12462336629197251897

`1-char[A284958(n+1)-1]`
-/

namespace A284957.P12462336629197251897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284958 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284957.P12462336629197251897

/-! ## A284957.P5653952991697661470

`char[A284514(n+1)-1+n]`
-/

namespace A284957.P5653952991697661470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284514 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284957.P5653952991697661470

/-! ## A284957.P11942954262578056749

`char[eq[1, A284512(n+1)]+n]`
-/

namespace A284957.P11942954262578056749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284512 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284957.P11942954262578056749

/-! ## A284957.P942305028520854343

`char[A284509(A001651(n+1))-(n+1)]`
-/

namespace A284957.P942305028520854343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284509 (A001651 (n + 1)).toNat - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284957.P942305028520854343

/-! ## A284957.P13190916144565570947

`A001221(Δ[comp[A284959(n+1)+n]])`
-/

namespace A284957.P13190916144565570947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284957.P13190916144565570947

/-! ## A284957.P14968657388342371821

`A001222(Δ[comp[A284959(n+1)+n]])`
-/

namespace A284957.P14968657388342371821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284957.P14968657388342371821

/-! ## A284957.P16824481431597091075

`A284928(Δ[comp[A284959(n+1)+n]])`
-/

namespace A284957.P16824481431597091075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284957.P16824481431597091075

/-!
# A284958: Positions of 0 in A284957; complement of A284959.

The programs for A284958, there is no canonical definition to state claims against.
-/

/-! ## A284958.P5742030959528602111

`∑[A284512(n+1)+1]`
-/

namespace A284958.P5742030959528602111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284512 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284958.P5742030959528602111

/-! ## A284958.P10942430661072770709

`comp[A284959(n+1)-1]+1`
-/

namespace A284958.P10942430661072770709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284959 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284958.P10942430661072770709

/-! ## A284958.P1908527470748974180

`(A284956(n+1)+n+2)/3`
-/

namespace A284958.P1908527470748974180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284956 (n + 1) + (n + 2 : ℤ) : ℚ) / 3

end

end A284958.P1908527470748974180

/-! ## A284958.P4662572462354526001

`∑[char[A284514(n+1)-1]+1]`
-/

namespace A284958.P4662572462354526001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284514 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284958.P4662572462354526001

/-! ## A284958.P17653743540328605698

`lt[A284957(n+1), 1]+1`
-/

namespace A284958.P17653743540328605698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284958.P17653743540328605698

/-! ## A284958.P5223173492038053981

`a(n-1)+A284957(a(n-1)+1)+1` with `a(0)=2`
-/

namespace A284958.P5223173492038053981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A284957 (a (n - 1) + 1).toNat + 1)

end

end A284958.P5223173492038053981

/-! ## A284958.P881020778667709720

`eq[0, A284957(A028310(n))]`
-/

namespace A284958.P881020778667709720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284958.P881020778667709720

/-! ## A284958.P2046912815840731731

`(A284513(3*(n+1))-n)/3`
-/

namespace A284958.P2046912815840731731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284513 (3 * (n + 1)) - (n : ℤ) : ℚ) / 3

end

end A284958.P2046912815840731731

/-!
# A284959: Positions of 1 in A284957; complement of A284958.

The programs for A284959, there is no canonical definition to state claims against.
-/

/-! ## A284959.P7194295130304879847

`A284514(n+1)+n`
-/

namespace A284959.P7194295130304879847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284514 (n + 1) + (n : ℤ)

end

end A284959.P7194295130304879847

/-! ## A284959.P16092190138288932224

`3*A284955(n+1)-(n+2)`
-/

namespace A284959.P16092190138288932224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284955 (n + 1) - (n + 2 : ℤ)

end

end A284959.P16092190138288932224

/-! ## A284959.P2671034067927131896

`∑[(A284508(n+1)+1)²]+n`
-/

namespace A284959.P2671034067927131896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284508 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A284959.P2671034067927131896

/-! ## A284959.P8747846506810317993

`∑[A024390(A284508(n+1)+A284252(a(n-1)+1)+1)]` with `a(0)=1`
-/

namespace A284959.P8747846506810317993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A024390 (A284508 (n + 1) + A284252 (f1 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284959.P8747846506810317993

/-! ## A284959.P10592112737634066379

`eq[1, A284512(n+1)]+1+n`
-/

namespace A284959.P10592112737634066379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A284959.P10592112737634066379

/-! ## A284959.P17041532712854563779

`A284509(3*n+1)-2*n`
-/

namespace A284959.P17041532712854563779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284509 (3 * n + 1) - (2 * n : ℤ)

end

end A284959.P17041532712854563779

/-! ## A284959.P3293756244519707791

`eq[1, A284957(n+1)]+1`
-/

namespace A284959.P3293756244519707791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284959.P3293756244519707791

/-! ## A284959.P17996922146726029278

`lt[n*char[A284958(n+1)], n]`
-/

namespace A284959.P17996922146726029278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284958 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A284959.P17996922146726029278

/-! ## A284959.P4580928846155173353

`lt[A284957(n+1), A284957(A028310(n))]`
-/

namespace A284959.P4580928846155173353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284959.P4580928846155173353

/-! ## A284959.P9669558337280334907

`lt[A284957(n+1), A284957(A284957(n+1)+n)]`
-/

namespace A284959.P9669558337280334907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284957 (A284957 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284959.P9669558337280334907

/-!
# A284963: Numbers with digits 3 and 8 only.

The programs for A284963, the canonical program `A284963.P4374081168494453790` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284963 has offset 1).

The definition of A284963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284963.P6411987400818637437

`A072961(n+1)+A032917(n+1)`
-/

namespace A284963.P6411987400818637437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + A032917 (n + 1)

end

end A284963.P6411987400818637437

namespace A284963

/-- `A072961(n+1)+A032917(n+1)` -/
def P6411987400818637437.Spec : Prop :=
  ∀ n, P6411987400818637437.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P3606718452748170678

`A284632(n+1)+A007931(n+1)`
-/

namespace A284963.P3606718452748170678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + A007931 (n + 1)

end

end A284963.P3606718452748170678

namespace A284963

/-- `A284632(n+1)+A007931(n+1)` -/
def P3606718452748170678.Spec : Prop :=
  ∀ n, P3606718452748170678.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P9034981871830403514

`A276037(n+1)+A032810(n+1)`
-/

namespace A284963.P9034981871830403514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + A032810 (n + 1)

end

end A284963.P9034981871830403514

namespace A284963

/-- `A276037(n+1)+A032810(n+1)` -/
def P9034981871830403514.Spec : Prop :=
  ∀ n, P9034981871830403514.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P5128333956928975620

`A284920(n+1)+A032822(n+1)`
-/

namespace A284963.P5128333956928975620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A032822 (n + 1)

end

end A284963.P5128333956928975620

namespace A284963

/-- `A284920(n+1)+A032822(n+1)` -/
def P5128333956928975620.Spec : Prop :=
  ∀ n, P5128333956928975620.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P4374081168494453790

`A284921(n+1)+A256077(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284963

/-- `A284921(n+1)+A256077(n+1)` -/
def P4374081168494453790.Spec : Prop :=
  ∀ n, P4374081168494453790.a n = A284963 (n + 1)

theorem P4374081168494453790.correct : P4374081168494453790.Spec := by
  intro n
  simp only [A284963, Nat.add_sub_cancel]

end A284963

/-! ## A284963.P8585268998002482946

`A284973(n+1)-A256077(n+1)`
-/

namespace A284963.P8585268998002482946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A256077 (n + 1)

end

end A284963.P8585268998002482946

namespace A284963

/-- `A284973(n+1)-A256077(n+1)` -/
def P8585268998002482946.Spec : Prop :=
  ∀ n, P8585268998002482946.a n = A284963 (n + 1)

theorem P8585268998002482946.correct : P8585268998002482946.Spec := by
  intro n
  simp only [A284963, Nat.add_sub_cancel, A284963.P8585268998002482946.a, A284963.P4374081168494453790.a, A256077, A256077.P10462771814391243740.a, A284921, A284921.P2849752813632733205.a, A284973, A284973.P12250254518392136044.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284963

/-! ## A284963.P3381023549348798391

`A032822(n+1)+2*A007931(n+1)`
-/

namespace A284963.P3381023549348798391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + 2 * A007931 (n + 1)

end

end A284963.P3381023549348798391

namespace A284963

/-- `A032822(n+1)+2*A007931(n+1)` -/
def P3381023549348798391.Spec : Prop :=
  ∀ n, P3381023549348798391.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P17131089445103870169

`A007931(n+1)+2*A032917(n+1)`
-/

namespace A284963.P17131089445103870169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + 2 * A032917 (n + 1)

end

end A284963.P17131089445103870169

namespace A284963

/-- `A007931(n+1)+2*A032917(n+1)` -/
def P17131089445103870169.Spec : Prop :=
  ∀ n, P17131089445103870169.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P16102735954779989582

`A284293(n+1)+2*A256077(n+1)`
-/

namespace A284963.P16102735954779989582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1) + 2 * A256077 (n + 1)

end

end A284963.P16102735954779989582

namespace A284963

/-- `A284293(n+1)+2*A256077(n+1)` -/
def P16102735954779989582.Spec : Prop :=
  ∀ n, P16102735954779989582.a n = A284963 (n + 1)

theorem P16102735954779989582.correct : P16102735954779989582.Spec := by
  intro n
  simp only [A284963, Nat.add_sub_cancel, A284963.P16102735954779989582.a, A284963.P4374081168494453790.a, A256077, A256077.P10462771814391243740.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A284921, A284921.P2849752813632733205.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284963

/-! ## A284963.P2188922574446392514

`2*A072961(n+1)-A007931(n+1)`
-/

namespace A284963.P2188922574446392514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A007931 (n + 1)

end

end A284963.P2188922574446392514

namespace A284963

/-- `2*A072961(n+1)-A007931(n+1)` -/
def P2188922574446392514.Spec : Prop :=
  ∀ n, P2188922574446392514.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P10887607406674983789

`2*A284632(n+1)-A032822(n+1)`
-/

namespace A284963.P10887607406674983789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284632 (n + 1) - A032822 (n + 1)

end

end A284963.P10887607406674983789

namespace A284963

/-- `2*A284632(n+1)-A032822(n+1)` -/
def P10887607406674983789.Spec : Prop :=
  ∀ n, P10887607406674983789.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P9753041864124011759

`2*A284633(n+1)-A032834(n+1)`
-/

namespace A284963.P9753041864124011759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284633 (n + 1) - A032834 (n + 1)

end

end A284963.P9753041864124011759

namespace A284963

/-- `2*A284633(n+1)-A032834(n+1)` -/
def P9753041864124011759.Spec : Prop :=
  ∀ n, P9753041864124011759.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P16211029814820494141

`A032822(n+1)+A284972(n+1)/2`
-/

namespace A284963.P16211029814820494141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032822 (n + 1) : ℚ) + (A284972 (n + 1) : ℚ) / 2

end

end A284963.P16211029814820494141

namespace A284963

/-- `A032822(n+1)+A284972(n+1)/2` -/
def P16211029814820494141.Spec : Prop :=
  ∀ n, P16211029814820494141.a n = (A284963 (n + 1) : ℚ)

end A284963

/-! ## A284963.P8786523013146012262

`A072961(n+1)+A284632(n+1)/2`
-/

namespace A284963.P8786523013146012262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072961 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284963.P8786523013146012262

namespace A284963

/-- `A072961(n+1)+A284632(n+1)/2` -/
def P8786523013146012262.Spec : Prop :=
  ∀ n, P8786523013146012262.a n = (A284963 (n + 1) : ℚ)

end A284963

/-! ## A284963.P14157543801225342647

`(A284964(n+1)+A143967(n+1))/2`
-/

namespace A284963.P14157543801225342647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284964 (n + 1) + A143967 (n + 1) : ℚ) / 2

end

end A284963.P14157543801225342647

namespace A284963

/-- `(A284964(n+1)+A143967(n+1))/2` -/
def P14157543801225342647.Spec : Prop :=
  ∀ n, P14157543801225342647.a n = (A284963 (n + 1) : ℚ)

end A284963

/-! ## A284963.P790438953977277851

`A284632(n+1)+A284920(n+1)/2`
-/

namespace A284963.P790438953977277851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284632 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284963.P790438953977277851

namespace A284963

/-- `A284632(n+1)+A284920(n+1)/2` -/
def P790438953977277851.Spec : Prop :=
  ∀ n, P790438953977277851.a n = (A284963 (n + 1) : ℚ)

end A284963

/-! ## A284963.P17515035501547995424

`A284920(n+1)+A284922(n+1)/2`
-/

namespace A284963.P17515035501547995424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284920 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A284963.P17515035501547995424

namespace A284963

/-- `A284920(n+1)+A284922(n+1)/2` -/
def P17515035501547995424.Spec : Prop :=
  ∀ n, P17515035501547995424.a n = (A284963 (n + 1) : ℚ)

end A284963

/-! ## A284963.P2701349509600625685

`A284632(n+1)+floor((A284633(n+1)+1)/3)`
-/

namespace A284963.P2701349509600625685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + ⌊(A284633 (n + 1) + 1 : ℚ) / 3⌋

end

end A284963.P2701349509600625685

namespace A284963

/-- `A284632(n+1)+floor((A284633(n+1)+1)/3)` -/
def P2701349509600625685.Spec : Prop :=
  ∀ n, P2701349509600625685.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P1379239591553778507

`A032810(n+1)+A284921(n+1)-A007931(n+1)`
-/

namespace A284963.P1379239591553778507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A284921 (n + 1) - A007931 (n + 1))

end

end A284963.P1379239591553778507

namespace A284963

/-- `A032810(n+1)+A284921(n+1)-A007931(n+1)` -/
def P1379239591553778507.Spec : Prop :=
  ∀ n, P1379239591553778507.a n = A284963 (n + 1)

end A284963

/-! ## A284963.P11142971927182488978

`A072961(n+1)+A284921(n+1)-A032822(n+1)`
-/

namespace A284963.P11142971927182488978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + (A284921 (n + 1) - A032822 (n + 1))

end

end A284963.P11142971927182488978

namespace A284963

/-- `A072961(n+1)+A284921(n+1)-A032822(n+1)` -/
def P11142971927182488978.Spec : Prop :=
  ∀ n, P11142971927182488978.a n = A284963 (n + 1)

end A284963

/-!
# A284964: Numbers with digits 3 and 9 only.

The programs for A284964, there is no canonical definition to state claims against.
-/

/-! ## A284964.P16932583350533836523

`3*A032917(n+1)`
-/

namespace A284964.P16932583350533836523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032917 (n + 1)

end

end A284964.P16932583350533836523

/-! ## A284964.P12352518434965114149

`3/2*A284632(n+1)`
-/

namespace A284964.P12352518434965114149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A284632 (n + 1) : ℚ)

end

end A284964.P12352518434965114149

/-! ## A284964.P12324194843245618296

`A072961(n+1)+A032822(n+1)`
-/

namespace A284964.P12324194843245618296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + A032822 (n + 1)

end

end A284964.P12324194843245618296

/-! ## A284964.P4032516839959214893

`A284921(n+1)+A007931(n+1)`
-/

namespace A284964.P4032516839959214893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) + A007931 (n + 1)

end

end A284964.P4032516839959214893

/-! ## A284964.P12119115658183472893

`A284293(n+1)+A032810(n+1)`
-/

namespace A284964.P12119115658183472893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1) + A032810 (n + 1)

end

end A284964.P12119115658183472893

/-! ## A284964.P9664123764633838360

`A284632(n+1)+A032917(n+1)`
-/

namespace A284964.P9664123764633838360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + A032917 (n + 1)

end

end A284964.P9664123764633838360

/-! ## A284964.P4738418237902322076

`A284922(n+1)+A256077(n+1)`
-/

namespace A284964.P4738418237902322076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284922 (n + 1) + A256077 (n + 1)

end

end A284964.P4738418237902322076

/-! ## A284964.P467713241850461790

`A284920(n+1)+A276037(n+1)`
-/

namespace A284964.P467713241850461790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A276037 (n + 1)

end

end A284964.P467713241850461790

/-! ## A284964.P16385515027625052451

`A276037(n+1)+2*A007931(n+1)`
-/

namespace A284964.P16385515027625052451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + 2 * A007931 (n + 1)

end

end A284964.P16385515027625052451

/-! ## A284964.P10443084006976005894

`A256077(n+1)+2*A032822(n+1)`
-/

namespace A284964.P10443084006976005894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + 2 * A032822 (n + 1)

end

end A284964.P10443084006976005894

/-! ## A284964.P16740822607651648761

`A276039(n+1)+2*A256077(n+1)`
-/

namespace A284964.P16740822607651648761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1) + 2 * A256077 (n + 1)

end

end A284964.P16740822607651648761

/-! ## A284964.P4110617708506512553

`2*A072961(n+1)-A256077(n+1)`
-/

namespace A284964.P4110617708506512553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A256077 (n + 1)

end

end A284964.P4110617708506512553

/-! ## A284964.P9534850530416623269

`A072961(n+1)+A284922(n+1)/2`
-/

namespace A284964.P9534850530416623269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072961 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A284964.P9534850530416623269

/-! ## A284964.P17002568178038445109

`2*A143967(n+1)-A284379(n+1)`
-/

namespace A284964.P17002568178038445109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A284379 (n + 1)

end

end A284964.P17002568178038445109

/-! ## A284964.P4808947524755727032

`2*A284963(n+1)-A143967(n+1)`
-/

namespace A284964.P4808947524755727032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284963 (n + 1) - A143967 (n + 1)

end

end A284964.P4808947524755727032

/-! ## A284964.P14293068968651610560

`2*A284921(n+1)-A276037(n+1)`
-/

namespace A284964.P14293068968651610560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284921 (n + 1) - A276037 (n + 1)

end

end A284964.P14293068968651610560

/-! ## A284964.P3211464868716038611

`2*A284922(n+1)-A276039(n+1)`
-/

namespace A284964.P3211464868716038611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284922 (n + 1) - A276039 (n + 1)

end

end A284964.P3211464868716038611

/-! ## A284964.P13027754261701773860

`A284921(n+1)+A284920(n+1)/2`
-/

namespace A284964.P13027754261701773860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284921 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284964.P13027754261701773860

/-! ## A284964.P12390423078378568330

`A032917(A000027(n+1))+lcm(2, A032917(n+1))`
-/

namespace A284964.P12390423078378568330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A000027 (n + 1)).toNat + (Int.lcm 2 (A032917 (n + 1)) : ℤ)

end

end A284964.P12390423078378568330

/-! ## A284964.P16959071312719955058

`A032810(n+1)+A284922(n+1)-A007931(n+1)`
-/

namespace A284964.P16959071312719955058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A284922 (n + 1) - A007931 (n + 1))

end

end A284964.P16959071312719955058

/-!
# A284965: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 1.

The programs for A284965, there is no canonical definition to state claims against.
-/

/-! ## A284965.P3301969508226664654

`round(n/4)*char[2*n+5]`
-/

namespace A284965.P3301969508226664654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 4) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A284965.P3301969508226664654

/-! ## A284965.P2925396263436151084

`round((n^(n%2)-5)/4)+1`
-/

namespace A284965.P2925396263436151084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ (n % 2) : ℤ) - 5 : ℚ) / 4) + 1

end

end A284965.P2925396263436151084

/-! ## A284965.P14956652941938790976

`round((gcd(1-n, floor(n/2))-2)/2)+1`
-/

namespace A284965.P14956652941938790976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ) - 2 : ℚ) / 2) + 1

end

end A284965.P14956652941938790976

/-! ## A284965.P11960790653472469897

`floor(∑[n]%(floor(acot(n-2)+n)-1)/2)`
-/

namespace A284965.P11960790653472469897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (⌊SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ) + (n : ℝ)⌋ - 1) : ℚ) / 2⌋

end

end A284965.P11960790653472469897

/-! ## A284965.P11577186370097078575

`round(lcm(n, n²%8)/4)%or(1, floor(n/2))`
-/

namespace A284965.P11577186370097078575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.lcm n (n ^ 2 % 8) : ℚ) / 4)) (Int.lor 1 ⌊(n : ℚ) / 2⌋)

end

end A284965.P11577186370097078575

/-! ## A284965.P16840181603782814416

`A002265(n*char[2*n+5]+1)`
-/

namespace A284965.P16840181603782814416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n * (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A284965.P16840181603782814416

/-! ## A284965.P11285398274891450148

`round(n%A074324(lcm(2, n)-n)/4)`
-/

namespace A284965.P11285398274891450148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (n : ℤ) (A074324 (Nat.lcm 2 n - n)) : ℚ) / 4)

end

end A284965.P11285398274891450148

/-! ## A284965.P6022575642372088543

`round((A130654(n²+1)-1)*n/4)`
-/

namespace A284965.P6022575642372088543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130654 (n ^ 2 + 1) - 1 : ℚ) * ((n : ℚ) / 4))

end

end A284965.P6022575642372088543

/-! ## A284965.P6073572268964053589

`floor(comp[A267712(n+1)]^and(1, n)/4)`
-/

namespace A284965.P6073572268964053589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267712 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ Nat.land 1 n : ℚ) / 4⌋

end

end A284965.P6073572268964053589

/-! ## A284965.P12324980644904329596

`floor(comp[A022266(2*n+1)]^and(1, n)/4)`
-/

namespace A284965.P12324980644904329596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ Nat.land 1 n : ℚ) / 4⌋

end

end A284965.P12324980644904329596

/-!
# A284966: Triangle read by rows: coefficients of the scaled Lucas polynomials x^(n/2)*L(n, sqrt(x)) for n >= 0, sorted by descending powers of x.

The programs for A284966, there is no canonical definition to state claims against.
-/

/-! ## A284966.P837992969334523891

`A061896(A061579(Δ[A002262(n)]+n))`
-/

namespace A284966.P837992969334523891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (A061579 (f1 (n + 1) - f1 n + (n : ℤ)).toNat).toNat

end

end A284966.P837992969334523891

/-! ## A284966.P6777300559651511573

`A061896(A061579(n)-Δ[A002262(n)])`
-/

namespace A284966.P6777300559651511573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (A061579 n - (f1 (n + 1) - f1 n)).toNat

end

end A284966.P6777300559651511573

/-! ## A284966.P17177034864698695524

`A061896(A057427(n)*A061579(n+1))`
-/

namespace A284966.P17177034864698695524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (A057427 n * A061579 (n + 1)).toNat

end

end A284966.P17177034864698695524

/-! ## A284966.P9577880555233712786

`A061896(A127739(n+1)-A002260(n+2))`
-/

namespace A284966.P9577880555233712786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (A127739 (n + 1) - A002260 (n + 2)).toNat

end

end A284966.P9577880555233712786

/-! ## A284966.P17441223828262673919

`A061896(A038722(n+3)%A056220(n+1))`
-/

namespace A284966.P17441223828262673919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (Int.tmod (A038722 (n + 3)) (A056220 (n + 1))).toNat

end

end A284966.P17441223828262673919

/-!
# A284967: Even numbers n such that for every prime p for which n-p is also prime, the number n + (odd part of p-1) is composite.

The programs for A284967, there is no canonical definition to state claims against.
-/

/-! ## A284967.P17878680671911387975

`A248893(record[A301278(n)])`
-/

namespace A284967.P17878680671911387975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A284967.P17878680671911387975

/-!
# A284968: Least hairpin family matchings with n edges that are both L&P and C&C whose leftmost edge is part of a hairpin.

The programs for A284968, the canonical program `A284968.P8591459530232121028` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284968 has offset 1).

The definition of A284968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284968.P16531208280630423663

`∑[∑[Δ[(4-6/(n+1))*a(n-1)]/2]]` with `a(0)=2`
-/

namespace A284968.P16531208280630423663
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f3 =>
  (4 - 6 / (n + 1 : ℚ)) * f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P16531208280630423663

namespace A284968

/-- `∑[∑[Δ[(4-6/(n+1))*a(n-1)]/2]]` -/
def P16531208280630423663.Spec : Prop :=
  ∀ n, P16531208280630423663.a n = (A284968 (n + 1) : ℚ)

end A284968

/-! ## A284968.P8591459530232121028

`∑[∑[A000245(n)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A284968

/-- `∑[∑[A000245(n)]]` -/
def P8591459530232121028.Spec : Prop :=
  ∀ n, P8591459530232121028.a n = A284968 (n + 1)

theorem P8591459530232121028.correct : P8591459530232121028.Spec := by
  intro n
  simp only [A284968, Nat.add_sub_cancel]

end A284968

/-! ## A284968.P14577791525584170846

`∑[A141364(n+1)]`
-/

namespace A284968.P14577791525584170846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P14577791525584170846

namespace A284968

/-- `∑[A141364(n+1)]` -/
def P14577791525584170846.Spec : Prop :=
  ∀ n, P14577791525584170846.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P9161571199718057876

`∑[∑[A071724(n)]-1]`
-/

namespace A284968.P9161571199718057876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P9161571199718057876

namespace A284968

/-- `∑[∑[A071724(n)]-1]` -/
def P9161571199718057876.Spec : Prop :=
  ∀ n, P9161571199718057876.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P13784031971718211334

`∑[Δ[A014137(n)]-1]`
-/

namespace A284968.P13784031971718211334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P13784031971718211334

namespace A284968

/-- `∑[Δ[A014137(n)]-1]` -/
def P13784031971718211334.Spec : Prop :=
  ∀ n, P13784031971718211334.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P10270332476874648669

`∑[Δ[A014138(n)]-1]`
-/

namespace A284968.P10270332476874648669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P10270332476874648669

namespace A284968

/-- `∑[Δ[A014138(n)]-1]` -/
def P10270332476874648669.Spec : Prop :=
  ∀ n, P10270332476874648669.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P9150457830125503339

`∑[record[A097331(n)-1]]`
-/

namespace A284968.P9150457830125503339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P9150457830125503339

namespace A284968

/-- `∑[record[A097331(n)-1]]` -/
def P9150457830125503339.Spec : Prop :=
  ∀ n, P9150457830125503339.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P14001306090134442922

`∑[record[A126120(n)-1]]`
-/

namespace A284968.P14001306090134442922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P14001306090134442922

namespace A284968

/-- `∑[record[A126120(n)-1]]` -/
def P14001306090134442922.Spec : Prop :=
  ∀ n, P14001306090134442922.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P3804398961593753698

`∑[record[A129996(n)-1]]`
-/

namespace A284968.P3804398961593753698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129996 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P3804398961593753698

namespace A284968

/-- `∑[record[A129996(n)-1]]` -/
def P3804398961593753698.Spec : Prop :=
  ∀ n, P3804398961593753698.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P11841241098398402141

`∑[record[A329687(n)-1]]`
-/

namespace A284968.P11841241098398402141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P11841241098398402141

namespace A284968

/-- `∑[record[A329687(n)-1]]` -/
def P11841241098398402141.Spec : Prop :=
  ∀ n, P11841241098398402141.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P2159576910131672596

`∑[∑[abs(Δ[A000108(n)])]]`
-/

namespace A284968.P2159576910131672596
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f3 (n + 1) - f3 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P2159576910131672596

namespace A284968

/-- `∑[∑[abs(Δ[A000108(n)])]]` -/
def P2159576910131672596.Spec : Prop :=
  ∀ n, P2159576910131672596.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P18043320083396791761

`∑[A120304(n+1)+1]`
-/

namespace A284968.P18043320083396791761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P18043320083396791761

namespace A284968

/-- `∑[A120304(n+1)+1]` -/
def P18043320083396791761.Spec : Prop :=
  ∀ n, P18043320083396791761.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P16445880983877443468

`∑[A000108(n+1)-1]`
-/

namespace A284968.P16445880983877443468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P16445880983877443468

namespace A284968

/-- `∑[A000108(n+1)-1]` -/
def P16445880983877443468.Spec : Prop :=
  ∀ n, P16445880983877443468.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P10343920702742552657

`∑[A120588(n+2)-1]`
-/

namespace A284968.P10343920702742552657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P10343920702742552657

namespace A284968

/-- `∑[A120588(n+2)-1]` -/
def P10343920702742552657.Spec : Prop :=
  ∀ n, P10343920702742552657.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P6866929916041917473

`∑[A141351(n+1)-2]`
-/

namespace A284968.P6866929916041917473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P6866929916041917473

namespace A284968

/-- `∑[A141351(n+1)-2]` -/
def P6866929916041917473.Spec : Prop :=
  ∀ n, P6866929916041917473.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P3951267871416881438

`∑[A026008(2*n)-1]`
-/

namespace A284968.P3951267871416881438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P3951267871416881438

namespace A284968

/-- `∑[A026008(2*n)-1]` -/
def P3951267871416881438.Spec : Prop :=
  ∀ n, P3951267871416881438.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P5031959502827207284

`∑[A128634(n+1)/2]`
-/

namespace A284968.P5031959502827207284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128634 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P5031959502827207284

namespace A284968

/-- `∑[A128634(n+1)/2]` -/
def P5031959502827207284.Spec : Prop :=
  ∀ n, P5031959502827207284.a n = (A284968 (n + 1) : ℚ)

end A284968

/-! ## A284968.P8835891458802164195

`∑[A246604(n+1)+n]`
-/

namespace A284968.P8835891458802164195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284968.P8835891458802164195

namespace A284968

/-- `∑[A246604(n+1)+n]` -/
def P8835891458802164195.Spec : Prop :=
  ∀ n, P8835891458802164195.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P2586796573611866551

`Δ[A294790(n)]-(n+1)`
-/

namespace A284968.P2586796573611866551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A284968.P2586796573611866551

namespace A284968

/-- `Δ[A294790(n)]-(n+1)` -/
def P2586796573611866551.Spec : Prop :=
  ∀ n, P2586796573611866551.a n = A284968 (n + 1)

end A284968

/-! ## A284968.P2104923947076390738

`Δ[A014140(n)]-(n+2)`
-/

namespace A284968.P2104923947076390738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A284968.P2104923947076390738

namespace A284968

/-- `Δ[A014140(n)]-(n+2)` -/
def P2104923947076390738.Spec : Prop :=
  ∀ n, P2104923947076390738.a n = A284968 (n + 1)

end A284968

/-!
# A284969: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 2.

The programs for A284969, there is no canonical definition to state claims against.
-/

/-! ## A284969.P16004741135783547539

`C(A027190(n+1), A001845(A022904(n+2)))`
-/

namespace A284969.P16004741135783547539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027190 (n + 1)).toNat (A001845 (A022904 (n + 2)).toNat).toNat

end

end A284969.P16004741135783547539

/-! ## A284969.P14887371130111188805

`A002188(n)*A079944(A117487(n+1))`
-/

namespace A284969.P14887371130111188805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 n * A079944 (A117487 (n + 1)).toNat

end

end A284969.P14887371130111188805

/-! ## A284969.P10096286985056634344

`A027190(n+1)*A160753(A253563(n))`
-/

namespace A284969.P10096286985056634344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027190 (n + 1) * A160753 (A253563 n).toNat

end

end A284969.P10096286985056634344

/-! ## A284969.P11520542445096872496

`A160753(A253563(n))*A241825(n+1)`
-/

namespace A284969.P11520542445096872496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160753 (A253563 n).toNat * A241825 (n + 1)

end

end A284969.P11520542445096872496

/-! ## A284969.P4363803766954105271

`A363855(A239741(n+1))`
-/

namespace A284969.P4363803766954105271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363855 (A239741 (n + 1)).toNat

end

end A284969.P4363803766954105271

/-!
# A284971: Numbers with digits 4 and 7 only.

The programs for A284971, there is no canonical definition to state claims against.
-/

/-! ## A284971.P4979431000698875145

`A302938(n+3)`
-/

namespace A284971.P4979431000698875145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302938 (n + 3)

end

end A284971.P4979431000698875145

/-! ## A284971.P11938903523460209519

`A032917(n+1)+A032834(n+1)`
-/

namespace A284971.P11938903523460209519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + A032834 (n + 1)

end

end A284971.P11938903523460209519

/-! ## A284971.P13026242893963288226

`A284379(n+1)+A007931(n+1)`
-/

namespace A284971.P13026242893963288226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + A007931 (n + 1)

end

end A284971.P13026242893963288226

/-! ## A284971.P4414009444123321989

`A284920(n+1)+A032810(n+1)`
-/

namespace A284971.P4414009444123321989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A032810 (n + 1)

end

end A284971.P4414009444123321989

/-! ## A284971.P8976476238950103300

`A284633(n+1)+A256077(n+1)`
-/

namespace A284971.P8976476238950103300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + A256077 (n + 1)

end

end A284971.P8976476238950103300

/-! ## A284971.P976934986558686714

`A284382(n+1)-A007931(n+1)`
-/

namespace A284971.P976934986558686714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A007931 (n + 1)

end

end A284971.P976934986558686714

/-! ## A284971.P3978651746984498818

`A284381(n+1)-A256077(n+1)`
-/

namespace A284971.P3978651746984498818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A256077 (n + 1)

end

end A284971.P3978651746984498818

/-! ## A284971.P3689902959419564361

`A032810(n+1)+2*A007931(n+1)`
-/

namespace A284971.P3689902959419564361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + 2 * A007931 (n + 1)

end

end A284971.P3689902959419564361

/-! ## A284971.P13404721474530283674

`A072961(n+1)+2*A256077(n+1)`
-/

namespace A284971.P13404721474530283674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + 2 * A256077 (n + 1)

end

end A284971.P13404721474530283674

/-! ## A284971.P13715370124912509562

`A256077(n+1)+3*A007931(n+1)`
-/

namespace A284971.P13715370124912509562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + 3 * A007931 (n + 1)

end

end A284971.P13715370124912509562

/-! ## A284971.P11529413238519064428

`A032822(n+1)+3*A256077(n+1)`
-/

namespace A284971.P11529413238519064428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + 3 * A256077 (n + 1)

end

end A284971.P11529413238519064428

/-! ## A284971.P17408541216866141577

`2*A284379(n+1)-A032810(n+1)`
-/

namespace A284971.P17408541216866141577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A032810 (n + 1)

end

end A284971.P17408541216866141577

/-! ## A284971.P4285347662651995567

`A032834(n+1)+A284632(n+1)/2`
-/

namespace A284971.P4285347662651995567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032834 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284971.P4285347662651995567

/-! ## A284971.P1162648203057535598

`A032810(n+1)+A284972(n+1)/2`
-/

namespace A284971.P1162648203057535598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032810 (n + 1) : ℚ) + (A284972 (n + 1) : ℚ) / 2

end

end A284971.P1162648203057535598

/-! ## A284971.P406051163373883685

`2*A284633(n+1)-A072961(n+1)`
-/

namespace A284971.P406051163373883685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284633 (n + 1) - A072961 (n + 1)

end

end A284971.P406051163373883685

/-! ## A284971.P13107585284052588617

`(A284380(n+1)+A143967(n+1))/2`
-/

namespace A284971.P13107585284052588617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284380 (n + 1) + A143967 (n + 1) : ℚ) / 2

end

end A284971.P13107585284052588617

/-! ## A284971.P10021135663585711052

`A284636(n+1)-2*A256077(n+1)`
-/

namespace A284971.P10021135663585711052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - 2 * A256077 (n + 1)

end

end A284971.P10021135663585711052

/-! ## A284971.P11046929390041178099

`2*A284634(n+1)-A256290(n+1)`
-/

namespace A284971.P11046929390041178099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284634 (n + 1) - A256290 (n + 1)

end

end A284971.P11046929390041178099

/-! ## A284971.P6675778906109924437

`(A284973(n+1)+A256290(n+1))/2`
-/

namespace A284971.P6675778906109924437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284973 (n + 1) + A256290 (n + 1) : ℚ) / 2

end

end A284971.P6675778906109924437

/-! ## A284971.P15559655224790781905

`(A284382(n+1)+A284379(n+1))/2`
-/

namespace A284971.P15559655224790781905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284382 (n + 1) + A284379 (n + 1) : ℚ) / 2

end

end A284971.P15559655224790781905

/-!
# A284972: Numbers with digits 4 and 8 only.

The programs for A284972, there is no canonical definition to state claims against.
-/

/-! ## A284972.P12271334001359959470

`2*A284920(n+1)`
-/

namespace A284972.P12271334001359959470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284920 (n + 1)

end

end A284972.P12271334001359959470

/-! ## A284972.P14232074956619121821

`4*A007931(n+1)`
-/

namespace A284972.P14232074956619121821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007931 (n + 1)

end

end A284972.P14232074956619121821

/-! ## A284972.P15496069279387907160

`4/3*A284633(n+1)`
-/

namespace A284972.P15496069279387907160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A284633 (n + 1) : ℚ)

end

end A284972.P15496069279387907160

/-! ## A284972.P14472836740578398172

`A032834(n+1)+A032822(n+1)`
-/

namespace A284972.P14472836740578398172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + A032822 (n + 1)

end

end A284972.P14472836740578398172

/-! ## A284972.P9644856983142037870

`A072961(n+1)+A032810(n+1)`
-/

namespace A284972.P9644856983142037870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + A032810 (n + 1)

end

end A284972.P9644856983142037870

/-! ## A284972.P6725715415192527168

`A284633(n+1)+A007931(n+1)`
-/

namespace A284972.P6725715415192527168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + A007931 (n + 1)

end

end A284972.P6725715415192527168

/-! ## A284972.P7217604759357447421

`A284379(n+1)+A032917(n+1)`
-/

namespace A284972.P7217604759357447421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + A032917 (n + 1)

end

end A284972.P7217604759357447421

/-! ## A284972.P1494337382220032687

`A256077(n+1)+A143967(n+1)`
-/

namespace A284972.P1494337382220032687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + A143967 (n + 1)

end

end A284972.P1494337382220032687

/-! ## A284972.P5134212982976467547

`A284382(n+1)-A256077(n+1)`
-/

namespace A284972.P5134212982976467547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A256077 (n + 1)

end

end A284972.P5134212982976467547

/-! ## A284972.P15382390514181135990

`A284920(n+1)²/A007931(n+1)`
-/

namespace A284972.P15382390514181135990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284920 (n + 1) ^ 2 : ℚ) / (A007931 (n + 1) : ℚ)

end

end A284972.P15382390514181135990

/-! ## A284972.P711122457999582613

`2*(A256077(n+1)+A032917(n+1))`
-/

namespace A284972.P711122457999582613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256077 (n + 1) + A032917 (n + 1))

end

end A284972.P711122457999582613

/-! ## A284972.P5820396783114839188

`A284632(n+1)+2*A256077(n+1)`
-/

namespace A284972.P5820396783114839188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + 2 * A256077 (n + 1)

end

end A284972.P5820396783114839188

/-! ## A284972.P2012190491152984861

`2*(A143967(n+1)-A032917(n+1))`
-/

namespace A284972.P2012190491152984861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143967 (n + 1) - A032917 (n + 1))

end

end A284972.P2012190491152984861

/-! ## A284972.P3009064354016055945

`2*(A284381(n+1)-A032834(n+1))`
-/

namespace A284972.P3009064354016055945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284381 (n + 1) - A032834 (n + 1))

end

end A284972.P3009064354016055945

/-! ## A284972.P18122613926326977665

`2*(A284963(n+1)-A032822(n+1))`
-/

namespace A284972.P18122613926326977665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284963 (n + 1) - A032822 (n + 1))

end

end A284972.P18122613926326977665

/-! ## A284972.P11198969199240807484

`2*(A284971(n+1)-A032810(n+1))`
-/

namespace A284972.P11198969199240807484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284971 (n + 1) - A032810 (n + 1))

end

end A284972.P11198969199240807484

/-! ## A284972.P9782496402120206892

`2*(A284973(n+1)-A072961(n+1))`
-/

namespace A284972.P9782496402120206892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284973 (n + 1) - A072961 (n + 1))

end

end A284972.P9782496402120206892

/-! ## A284972.P4265417745150335607

`2*A143967(n+1)-A284632(n+1)`
-/

namespace A284972.P4265417745150335607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A284632 (n + 1)

end

end A284972.P4265417745150335607

/-! ## A284972.P1936848828904702346

`2*(A284379(n+1)-A256077(n+1))`
-/

namespace A284972.P1936848828904702346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284379 (n + 1) - A256077 (n + 1))

end

end A284972.P1936848828904702346

/-! ## A284972.P7828902991514070431

`2*(A284636(n+1)-A256290(n+1))`
-/

namespace A284972.P7828902991514070431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284636 (n + 1) - A256290 (n + 1))

end

end A284972.P7828902991514070431

/-!
# A284973: Numbers with digits 4 and 9 only.

The programs for A284973, the canonical program `A284973.P12250254518392136044` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284973 has offset 1).

The definition of A284973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284973.P12361620834135216964

`A143967(n+1)+A007931(n+1)`
-/

namespace A284973.P12361620834135216964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) + A007931 (n + 1)

end

end A284973.P12361620834135216964

namespace A284973

/-- `A143967(n+1)+A007931(n+1)` -/
def P12361620834135216964.Spec : Prop :=
  ∀ n, P12361620834135216964.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P14282729980736968331

`A276037(n+1)+A032834(n+1)`
-/

namespace A284973.P14282729980736968331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + A032834 (n + 1)

end

end A284973.P14282729980736968331

namespace A284973

/-- `A276037(n+1)+A032834(n+1)` -/
def P14282729980736968331.Spec : Prop :=
  ∀ n, P14282729980736968331.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P9198960612278801935

`A284379(n+1)+A032822(n+1)`
-/

namespace A284973.P9198960612278801935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + A032822 (n + 1)

end

end A284973.P9198960612278801935

namespace A284973

/-- `A284379(n+1)+A032822(n+1)` -/
def P9198960612278801935.Spec : Prop :=
  ∀ n, P9198960612278801935.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P12881251317136313979

`A284632(n+1)+A032810(n+1)`
-/

namespace A284973.P12881251317136313979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + A032810 (n + 1)

end

end A284973.P12881251317136313979

namespace A284973

/-- `A284632(n+1)+A032810(n+1)` -/
def P12881251317136313979.Spec : Prop :=
  ∀ n, P12881251317136313979.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P12138901155630223427

`A284633(n+1)+A032917(n+1)`
-/

namespace A284973.P12138901155630223427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + A032917 (n + 1)

end

end A284973.P12138901155630223427

namespace A284973

/-- `A284633(n+1)+A032917(n+1)` -/
def P12138901155630223427.Spec : Prop :=
  ∀ n, P12138901155630223427.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P3304914634144818234

`A284920(n+1)+A072961(n+1)`
-/

namespace A284973.P3304914634144818234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A072961 (n + 1)

end

end A284973.P3304914634144818234

namespace A284973

/-- `A284920(n+1)+A072961(n+1)` -/
def P3304914634144818234.Spec : Prop :=
  ∀ n, P3304914634144818234.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P12250254518392136044

`A284963(n+1)+A256077(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284973

/-- `A284963(n+1)+A256077(n+1)` -/
def P12250254518392136044.Spec : Prop :=
  ∀ n, P12250254518392136044.a n = A284973 (n + 1)

theorem P12250254518392136044.correct : P12250254518392136044.Spec := by
  intro n
  simp only [A284973, Nat.add_sub_cancel]

end A284973

/-! ## A284973.P14825061339432696044

`A032810(n+1)+2*A032917(n+1)`
-/

namespace A284973.P14825061339432696044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + 2 * A032917 (n + 1)

end

end A284973.P14825061339432696044

namespace A284973

/-- `A032810(n+1)+2*A032917(n+1)` -/
def P14825061339432696044.Spec : Prop :=
  ∀ n, P14825061339432696044.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P13000516004266752371

`A072961(n+1)+2*A007931(n+1)`
-/

namespace A284973.P13000516004266752371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + 2 * A007931 (n + 1)

end

end A284973.P13000516004266752371

namespace A284973

/-- `A072961(n+1)+2*A007931(n+1)` -/
def P13000516004266752371.Spec : Prop :=
  ∀ n, P13000516004266752371.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P9141688142488241333

`A284921(n+1)+2*A256077(n+1)`
-/

namespace A284973.P9141688142488241333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) + 2 * A256077 (n + 1)

end

end A284973.P9141688142488241333

namespace A284973

/-- `A284921(n+1)+2*A256077(n+1)` -/
def P9141688142488241333.Spec : Prop :=
  ∀ n, P9141688142488241333.a n = A284973 (n + 1)

theorem P9141688142488241333.correct : P9141688142488241333.Spec := by
  intro n
  simp only [A284973, Nat.add_sub_cancel, A284973.P9141688142488241333.a, A284973.P12250254518392136044.a, A256077, A256077.P10462771814391243740.a, A284921, A284921.P2849752813632733205.a, A284963, A284963.P4374081168494453790.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A284293, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284973

/-! ## A284973.P5176057979119005243

`2*A143967(n+1)-A072961(n+1)`
-/

namespace A284973.P5176057979119005243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A072961 (n + 1)

end

end A284973.P5176057979119005243

namespace A284973

/-- `2*A143967(n+1)-A072961(n+1)` -/
def P5176057979119005243.Spec : Prop :=
  ∀ n, P5176057979119005243.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P9068247320238821410

`2*A284633(n+1)-A032810(n+1)`
-/

namespace A284973.P9068247320238821410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284633 (n + 1) - A032810 (n + 1)

end

end A284973.P9068247320238821410

namespace A284973

/-- `2*A284633(n+1)-A032810(n+1)` -/
def P9068247320238821410.Spec : Prop :=
  ∀ n, P9068247320238821410.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P5677805043404040629

`A072961(n+1)+A284972(n+1)/2`
-/

namespace A284973.P5677805043404040629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072961 (n + 1) : ℚ) + (A284972 (n + 1) : ℚ) / 2

end

end A284973.P5677805043404040629

namespace A284973

/-- `A072961(n+1)+A284972(n+1)/2` -/
def P5677805043404040629.Spec : Prop :=
  ∀ n, P5677805043404040629.a n = (A284973 (n + 1) : ℚ)

end A284973

/-! ## A284973.P10294581450787514872

`A143967(n+1)+A284920(n+1)/2`
-/

namespace A284973.P10294581450787514872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143967 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284973.P10294581450787514872

namespace A284973

/-- `A143967(n+1)+A284920(n+1)/2` -/
def P10294581450787514872.Spec : Prop :=
  ∀ n, P10294581450787514872.a n = (A284973 (n + 1) : ℚ)

end A284973

/-! ## A284973.P11580031179558048172

`2*A284971(n+1)-A256290(n+1)`
-/

namespace A284973.P11580031179558048172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284971 (n + 1) - A256290 (n + 1)

end

end A284973.P11580031179558048172

namespace A284973

/-- `2*A284971(n+1)-A256290(n+1)` -/
def P11580031179558048172.Spec : Prop :=
  ∀ n, P11580031179558048172.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P13209590604223651518

`A284632(n+1)+A284634(n+1)/2`
-/

namespace A284973.P13209590604223651518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284632 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A284973.P13209590604223651518

namespace A284973

/-- `A284632(n+1)+A284634(n+1)/2` -/
def P13209590604223651518.Spec : Prop :=
  ∀ n, P13209590604223651518.a n = (A284973 (n + 1) : ℚ)

end A284973

/-! ## A284973.P9925525194929598331

`A284633(n+1)+A284632(n+1)/2`
-/

namespace A284973.P9925525194929598331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284633 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284973.P9925525194929598331

namespace A284973

/-- `A284633(n+1)+A284632(n+1)/2` -/
def P9925525194929598331.Spec : Prop :=
  ∀ n, P9925525194929598331.a n = (A284973 (n + 1) : ℚ)

end A284973

/-! ## A284973.P3851685638467660757

`A284379(n+1)+A284922(n+1)/2`
-/

namespace A284973.P3851685638467660757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284379 (n + 1) : ℚ) + (A284922 (n + 1) : ℚ) / 2

end

end A284973.P3851685638467660757

namespace A284973

/-- `A284379(n+1)+A284922(n+1)/2` -/
def P3851685638467660757.Spec : Prop :=
  ∀ n, P3851685638467660757.a n = (A284973 (n + 1) : ℚ)

end A284973

/-! ## A284973.P9883055618462818355

`6*A007931(n+1)-A032810(n+1)`
-/

namespace A284973.P9883055618462818355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007931 (n + 1) - A032810 (n + 1)

end

end A284973.P9883055618462818355

namespace A284973

/-- `6*A007931(n+1)-A032810(n+1)` -/
def P9883055618462818355.Spec : Prop :=
  ∀ n, P9883055618462818355.a n = A284973 (n + 1)

end A284973

/-! ## A284973.P10682097777793598092

`A284632(n+1)+floor((A284636(n+1)+1)/3)`
-/

namespace A284973.P10682097777793598092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + ⌊(A284636 (n + 1) + 1 : ℚ) / 3⌋

end

end A284973.P10682097777793598092

namespace A284973

/-- `A284632(n+1)+floor((A284636(n+1)+1)/3)` -/
def P10682097777793598092.Spec : Prop :=
  ∀ n, P10682097777793598092.a n = A284973 (n + 1)

end A284973

/-!
# A284974: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 3.

The programs for A284974, there is no canonical definition to state claims against.
-/

/-! ## A284974.P15973344692129761550

`val(A055098(A276086(n)), 3)`
-/

namespace A284974.P15973344692129761550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055098 (A276086 n).toNat).toNat 3

end

end A284974.P15973344692129761550

/-! ## A284974.P1192730136500858059

`(n²+1)%A328701(A248774(n+1))`
-/

namespace A284974.P1192730136500858059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 + 1 : ℤ) (A328701 (A248774 (n + 1)).toNat)

end

end A284974.P1192730136500858059

/-! ## A284974.P3390827389706566880

`A173029(n+1)%∏[A320267(n+1)]`
-/

namespace A284974.P3390827389706566880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173029 (n + 1)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A284974.P3390827389706566880

/-! ## A284974.P16642638968741621384

`val(A000010(A330490(or(2, n+1))), 3)`
-/

namespace A284974.P16642638968741621384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A330490 (Nat.lor 2 (n + 1))).toNat).toNat 3

end

end A284974.P16642638968741621384

/-! ## A284974.P8600583524201750850

`A086080(A277217(n+1)+A114523(n))`
-/

namespace A284974.P8600583524201750850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 (A277217 (n + 1) + A114523 n).toNat

end

end A284974.P8600583524201750850

/-!
# A284975: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 4.

The programs for A284975, there is no canonical definition to state claims against.
-/

/-! ## A284975.P15124434637323394924

`A025441(A045847(9*(n+2))+8)`
-/

namespace A284975.P15124434637323394924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A045847 (9 * (n + 2)) + 8).toNat

end

end A284975.P15124434637323394924

/-! ## A284975.P14740941177833377907

`val(A288224(n+1), A118656(n+1))`
-/

namespace A284975.P14740941177833377907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A288224 (n + 1)).toNat (A118656 (n + 1)).toNat

end

end A284975.P14740941177833377907

/-! ## A284975.P15153728938493589314

`A085982(A258634(n+1)+val(n+1, 2))`
-/

namespace A284975.P15153728938493589314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A258634 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A284975.P15153728938493589314

/-! ## A284975.P8790259019362861851

`A037911(A237593(n+1)*A339418(n)+1)`
-/

namespace A284975.P8790259019362861851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A237593 (n + 1) * A339418 n + 1).toNat

end

end A284975.P8790259019362861851

/-! ## A284975.P9567011411668716043

`A001015(A360679(3*(n+1)))%A048996(n+3)`
-/

namespace A284975.P9567011411668716043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 (A360679 (3 * (n + 1))).toNat) (A048996 (n + 3))

end

end A284975.P9567011411668716043

/-!
# A284976: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 5.

The programs for A284976, there is no canonical definition to state claims against.
-/

/-! ## A284976.P13067738630640810863

`A352967(and(n, A115668(n+1)))`
-/

namespace A284976.P13067738630640810863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352967 (Int.land (n : ℤ) (A115668 (n + 1))).toNat

end

end A284976.P13067738630640810863

/-! ## A284976.P7497952703042632132

`val(A008289(A234950(n)), 3)`
-/

namespace A284976.P7497952703042632132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008289 (A234950 n).toNat).toNat 3

end

end A284976.P7497952703042632132

/-! ## A284976.P11176073574167862746

`A018252(n+1)%A001221(A133575(n+3))`
-/

namespace A284976.P11176073574167862746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 1)) (A001221 (A133575 (n + 3)).toNat)

end

end A284976.P11176073574167862746

/-! ## A284976.P1042740031131623897

`A249832(A142534(n+1))`
-/

namespace A284976.P1042740031131623897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A142534 (n + 1)).toNat

end

end A284976.P1042740031131623897

/-! ## A284976.P12096380679959462345

`A144200(A383055(n+1))`
-/

namespace A284976.P12096380679959462345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (A383055 (n + 1)).toNat

end

end A284976.P12096380679959462345

/-!
# A284977: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 6.

The programs for A284977, there is no canonical definition to state claims against.
-/

/-! ## A284977.P4890728969303895595

`and(A031630(n+1), A160550(A046576(n+1)))`
-/

namespace A284977.P4890728969303895595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031630 (n + 1)) (A160550 (A046576 (n + 1)).toNat)

end

end A284977.P4890728969303895595

/-! ## A284977.P16208934327656150221

`and(A219055(n+1), A219157(A219128(n+1)))`
-/

namespace A284977.P16208934327656150221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219055 (n + 1)) (A219157 (A219128 (n + 1)).toNat)

end

end A284977.P16208934327656150221

/-! ## A284977.P12014844359604599751

`A117054(A157757(n+1)%A236936(n+9))`
-/

namespace A284977.P12014844359604599751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117054 (Int.tmod (A157757 (n + 1)) (A236936 (n + 9))).toNat

end

end A284977.P12014844359604599751

/-! ## A284977.P2397325955825653242

`A327928(A007947(n+1)^A303907(2*(n+2)))`
-/

namespace A284977.P2397325955825653242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A303907 (2 * (n + 2)) : ℤ))).toNat

end

end A284977.P2397325955825653242

/-! ## A284977.P11455726577609199515

`A308493(2*n+3)%A368414(A090861(n+1))`
-/

namespace A284977.P11455726577609199515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308493 (2 * n + 3)) (A368414 (A090861 (n + 1)).toNat)

end

end A284977.P11455726577609199515

/-!
# A284978: a(n) is the number of self-conjugate partitions of n which represent Chomp positions with Sprague-Grundy value 7.

The programs for A284978, there is no canonical definition to state claims against.
-/

/-! ## A284978.P2339420276142404401

`A000120(n)%A099545(A059197(n+1))`
-/

namespace A284978.P2339420276142404401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) (A099545 (A059197 (n + 1)).toNat)

end

end A284978.P2339420276142404401

/-! ## A284978.P571447917090019672

`A007088(n)%A099545(A059197(n+1))`
-/

namespace A284978.P571447917090019672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) (A099545 (A059197 (n + 1)).toNat)

end

end A284978.P571447917090019672

/-! ## A284978.P7826239448524532417

`A070108(A337211(n+2))`
-/

namespace A284978.P7826239448524532417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070108 (A337211 (n + 2)).toNat

end

end A284978.P7826239448524532417

/-! ## A284978.P17046539277764453137

`and(A026830(n), A217347(n+1))`
-/

namespace A284978.P17046539277764453137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026830 n) (A217347 (n + 1))

end

end A284978.P17046539277764453137

/-! ## A284978.P12073745849907257397

`and(A160986(n+1), A217347(n+1))`
-/

namespace A284978.P12073745849907257397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160986 (n + 1)) (A217347 (n + 1))

end

end A284978.P12073745849907257397

/-!
# A284979: Array a(m, n) giving the number of reversible strings with n beads of m colors, read by antidiagonals.

The programs for A284979, the canonical program `A284979.P3127626861148909920` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284979 has offset 1).

The definition of A284979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284979.P3864822253030078350

`((col(n)+1)^(row(n)-col(n)+1)+(col(n)+1)^ceil((row(n)-col(n)+1)/2))/2`
-/

namespace A284979.P3864822253030078350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) + (SequenceMachineLib.triCol n + 1 : ℚ) ^ (⌈((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) / 2⌉ : ℤ)) / 2

end

end A284979.P3864822253030078350

namespace A284979

/-- `((col(n)+1)^(row(n)-col(n)+1)+(col(n)+1)^ceil((row(n)-col(n)+1)/2))/2` -/
def P3864822253030078350.Spec : Prop :=
  ∀ n, P3864822253030078350.a n = (A284979 (n + 1) : ℚ)

end A284979

/-! ## A284979.P8809813797720039559

`A277504((n-comp[∑[n]])²-n)`
-/

namespace A284979.P8809813797720039559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A284979.P8809813797720039559

namespace A284979

/-- `A277504((n-comp[∑[n]])²-n)` -/
def P8809813797720039559.Spec : Prop :=
  ∀ n, P8809813797720039559.a n = A284979 (n + 1)

end A284979

/-! ## A284979.P3127626861148909920

`A051129(n+1)-A293500(A038722(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284979

/-- `A051129(n+1)-A293500(A038722(n+1))` -/
def P3127626861148909920.Spec : Prop :=
  ∀ n, P3127626861148909920.a n = A284979 (n + 1)

theorem P3127626861148909920.correct : P3127626861148909920.Spec := by
  intro n
  simp only [A284979, Nat.add_sub_cancel]

end A284979

/-!
# A284982: Triangle read by rows: coefficients of the Laplacian polynomial of the n-cycle graph C_n.

The programs for A284982, there is no canonical definition to state claims against.
-/

/-! ## A284982.P9466279889122710893

`A136678(A187829(n+1))%A051151(n+1)`
-/

namespace A284982.P9466279889122710893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136678 (A187829 (n + 1)).toNat) (A051151 (n + 1))

end

end A284982.P9466279889122710893

/-! ## A284982.P11636191445835524466

`A136678(A043317(n+1))%A262616(n)`
-/

namespace A284982.P11636191445835524466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136678 (A043317 (n + 1)).toNat) (A262616 n)

end

end A284982.P11636191445835524466

/-! ## A284982.P13702976748981164772

`A136678(n+1)%A136641(A232335(n+1))`
-/

namespace A284982.P13702976748981164772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136678 (n + 1)) (A136641 (A232335 (n + 1)).toNat)

end

end A284982.P13702976748981164772

/-!
# A284985: a(0)=0, a(1)=24; for n>=2, a(n)=576*a(n-1)-a(n-2).

The programs for A284985, the canonical program `A284985.P15958802232402513494` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284985 has offset 0).

The definition of A284985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `576*a(n-1)-a(n-2)` (program `A284985.P15958802232402513494`, by `A284985.P15958802232402513494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284985.P15958802232402513494

`576*a(n-1)-a(n-2)` with `a(0)=0, a(1)=24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284985

/-- `576*a(n-1)-a(n-2)` -/
def P15958802232402513494.Spec : Prop :=
  ∀ n, P15958802232402513494.a n = A284985 n

theorem P15958802232402513494.correct : P15958802232402513494.Spec := by
  intro n
  simp only [A284985]

end A284985

/-!
# A284986: Integers k such that k^2 is not a palindrome and the square root of the reverse of k^2 yields an integer with the same number of digits as k that is not the reverse of k.

The programs for A284986, there is no canonical definition to state claims against.
-/

/-! ## A284986.P8640164766573064999

`∩[A035123(n+1), A129914(n+1)]`
-/

namespace A284986.P8640164766573064999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284986.P8640164766573064999

/-! ## A284986.P12163425177745450948

`sqrt(A319570(n+1))`
-/

namespace A284986.P12163425177745450948
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319570 (n + 1) : ℝ)

end

end A284986.P12163425177745450948

/-!
# A284988: Number of distinct products i*j*k*l*m for 1 <= i <= j <= k <= l <= m <= n.

The programs for A284988, there is no canonical definition to state claims against.
-/

/-! ## A284988.P10084754477369969850

`A322967(∑[n+5]+6)`
-/

namespace A284988.P10084754477369969850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A284988.P10084754477369969850

/-! ## A284988.P11486512271817689028

`A291746(A284886(n+1))`
-/

namespace A284988.P11486512271817689028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291746 (A284886 (n + 1)).toNat

end

end A284988.P11486512271817689028

/-!
# A284992: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1+x^j)^(j^k) in powers of x.

The programs for A284992, there is no canonical definition to state claims against.
-/

/-! ## A284992.P3167520668840329298

`A292189(n)+A025469(A163661(n))`
-/

namespace A284992.P3167520668840329298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 n + A025469 (A163661 n).toNat

end

end A284992.P3167520668840329298

/-! ## A284992.P16044844987945309584

`A292189(n)+A151795(A060475(n))`
-/

namespace A284992.P16044844987945309584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 n + A151795 (A060475 n).toNat

end

end A284992.P16044844987945309584

/-! ## A284992.P12117382145461352380

`A292189(n)+A025469(A256116(n))`
-/

namespace A284992.P12117382145461352380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 n + A025469 (A256116 n).toNat

end

end A284992.P12117382145461352380

/-! ## A284992.P9566860738445487028

`A292189(n)+A016396(A294582(n))`
-/

namespace A284992.P9566860738445487028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 n + A016396 (A294582 n).toNat

end

end A284992.P9566860738445487028

/-! ## A284992.P7749532584003082138

`A292189(n)+A185284(A163238(n))`
-/

namespace A284992.P7749532584003082138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 n + A185284 (A163238 n).toNat

end

end A284992.P7749532584003082138

/-!
# A284993: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1+x^j)^(j^k) in powers of x.

The programs for A284993, there is no canonical definition to state claims against.
-/

/-! ## A284993.P4281687928100331370

`A292068(n)-A089311(A094544(n))`
-/

namespace A284993.P4281687928100331370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 n - A089311 (A094544 n).toNat

end

end A284993.P4281687928100331370

/-! ## A284993.P6491003502994371465

`A292068(n)-A025469(A163661(n))`
-/

namespace A284993.P6491003502994371465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 n - A025469 (A163661 n).toNat

end

end A284993.P6491003502994371465

/-! ## A284993.P11042544858122233672

`A292068(n)-A151795(A060475(n))`
-/

namespace A284993.P11042544858122233672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 n - A151795 (A060475 n).toNat

end

end A284993.P11042544858122233672

/-! ## A284993.P14230652949232672031

`A292068(n)-A025469(A256116(n))`
-/

namespace A284993.P14230652949232672031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 n - A025469 (A256116 n).toNat

end

end A284993.P14230652949232672031

/-! ## A284993.P4839807601647396228

`A292068(n)-A016396(A294582(n))`
-/

namespace A284993.P4839807601647396228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 n - A016396 (A294582 n).toNat

end

end A284993.P4839807601647396228

/-!
# A284994: Floor(Gamma(n/2)).

The programs for A284994, there is no canonical definition to state claims against.
-/

/-! ## A284994.P6525167244347325245

`A285000(2*(n+1))`
-/

namespace A284994.P6525167244347325245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (2 * (n + 1))

end

end A284994.P6525167244347325245

/-! ## A284994.P5081689576163402941

`A284995(n+1)-and(1, n+1)`
-/

namespace A284994.P5081689576163402941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) - (Nat.land 1 (n + 1) : ℤ)

end

end A284994.P5081689576163402941

/-! ## A284994.P14313659097822708256

`A285001(2*(n+1))-val(n²+2, 2)`
-/

namespace A284994.P14313659097822708256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (2 * (n + 1)) - (SequenceMachineLib.valuation (n ^ 2 + 2) 2 : ℤ)

end

end A284994.P14313659097822708256

/-! ## A284994.P10341928563321081181

`A284995(n+1)-A059841(n)`
-/

namespace A284994.P10341928563321081181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) - A059841 n

end

end A284994.P10341928563321081181

/-! ## A284994.P9471812945109861053

`A284995(n+1)-abs(A056594(n))`
-/

namespace A284994.P9471812945109861053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) - |A056594 n|

end

end A284994.P9471812945109861053

/-! ## A284994.P16170866613231678293

`A284995(n+1)-Δ[A110654(n)]`
-/

namespace A284994.P16170866613231678293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) - (f1 (n + 1) - f1 n)

end

end A284994.P16170866613231678293

/-! ## A284994.P13249817119451601419

`A284995(n+1)-A000035(n+1)`
-/

namespace A284994.P13249817119451601419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) - A000035 (n + 1)

end

end A284994.P13249817119451601419

/-! ## A284994.P10373911444331790166

`A284995(n+1)+A000034(n)-2`
-/

namespace A284994.P10373911444331790166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) + (A000034 n - 2)

end

end A284994.P10373911444331790166

/-! ## A284994.P9160392880889509934

`A284995(n+1)-A091337(n+1)²`
-/

namespace A284994.P9160392880889509934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) - A091337 (n + 1) ^ 2

end

end A284994.P9160392880889509934

/-! ## A284994.P3720400518454838796

`A285001(2*(n+1))-A000035(n+1)`
-/

namespace A284994.P3720400518454838796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (2 * (n + 1)) - A000035 (n + 1)

end

end A284994.P3720400518454838796

/-! ## A284994.P13673160079268127852

`A285001(2*(n+1))-A267813(A014673(2*(n+1)))`
-/

namespace A284994.P13673160079268127852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (2 * (n + 1)) - A267813 (A014673 (2 * (n + 1))).toNat

end

end A284994.P13673160079268127852

/-! ## A284994.P5298785666231343296

`A284995(n+1)-A056594(n²)`
-/

namespace A284994.P5298785666231343296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (n + 1) - A056594 (n ^ 2)

end

end A284994.P5298785666231343296

/-!
# A284995: a(n) = ceiling(Gamma(n/2)).

The programs for A284995, there is no canonical definition to state claims against.
-/

/-! ## A284995.P16716680965860826443

`A285001(2*(n+1))`
-/

namespace A284995.P16716680965860826443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (2 * (n + 1))

end

end A284995.P16716680965860826443

/-! ## A284995.P7740332350134853108

`A284994(n+1)+and(1, n+1)`
-/

namespace A284995.P7740332350134853108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (n + 1) + (Nat.land 1 (n + 1) : ℤ)

end

end A284995.P7740332350134853108

/-! ## A284995.P10446099426730737474

`A284994(n+1)+A059841(n)`
-/

namespace A284995.P10446099426730737474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (n + 1) + A059841 n

end

end A284995.P10446099426730737474

/-! ## A284995.P11023655651543725108

`A284994(n+1)+∑[A033999(n)]`
-/

namespace A284995.P11023655651543725108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284995.P11023655651543725108

/-! ## A284995.P18346141918513402999

`A284994(n+1)+Δ[A110654(n)]`
-/

namespace A284995.P18346141918513402999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (n + 1) + (f1 (n + 1) - f1 n)

end

end A284995.P18346141918513402999

/-! ## A284995.P16195905633061374326

`A284994(n+1)+A000035(n+1)`
-/

namespace A284995.P16195905633061374326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (n + 1) + A000035 (n + 1)

end

end A284995.P16195905633061374326

/-! ## A284995.P15553438165259012139

`A285000(2*(n+1))+A000035(n+1)`
-/

namespace A284995.P15553438165259012139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (2 * (n + 1)) + A000035 (n + 1)

end

end A284995.P15553438165259012139

/-! ## A284995.P10776912585196078058

`A285000(2*(n+1))+2-A000034(n)`
-/

namespace A284995.P10776912585196078058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (2 * (n + 1)) + (2 - A000034 n)

end

end A284995.P10776912585196078058

/-! ## A284995.P7465890290538365924

`A285000(2*n+2)+A102560(2*n)`
-/

namespace A284995.P7465890290538365924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (2 * n + 2) + A102560 (2 * n)

end

end A284995.P7465890290538365924

/-! ## A284995.P253359068675716259

`A284994(n+1)+A007814(A114962(n))`
-/

namespace A284995.P253359068675716259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (n + 1) + A007814 (A114962 n).toNat

end

end A284995.P253359068675716259

/-!
# A284996: Floor(Gamma(n/3)).

The programs for A284996, there is no canonical definition to state claims against.
-/

/-! ## A284996.P2497079031617655459

`A284997(n+1)-A010892(n)²`
-/

namespace A284996.P2497079031617655459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - A010892 n ^ 2

end

end A284996.P2497079031617655459

/-! ## A284996.P9638145683281131818

`A284997(n+1)-A049347(n)²`
-/

namespace A284996.P9638145683281131818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - A049347 n ^ 2

end

end A284996.P9638145683281131818

/-! ## A284996.P13361981902255203559

`A284997(n+1)-∑[A057078(n)]`
-/

namespace A284996.P13361981902255203559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284996.P13361981902255203559

/-! ## A284996.P4402830016104173740

`A284997(n+1)-char[A032766(n)]`
-/

namespace A284996.P4402830016104173740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284996.P4402830016104173740

/-! ## A284996.P2602930657094215345

`A284997(n+1)+Δ[A008620(n)]-1`
-/

namespace A284996.P2602930657094215345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A284996.P2602930657094215345

/-! ## A284996.P16354815166250490153

`A284997(n+1)-∑[A010892(2*n)]`
-/

namespace A284996.P16354815166250490153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284996.P16354815166250490153

/-! ## A284996.P12840018767071180095

`A284997(n+1)-and(1, A259243(n+1))`
-/

namespace A284996.P12840018767071180095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - Int.land 1 (A259243 (n + 1))

end

end A284996.P12840018767071180095

/-! ## A284996.P16393643642255928342

`A284997(n+1)-A014510(Δ[A008620(n)])`
-/

namespace A284996.P16393643642255928342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - A014510 (f1 (n + 1) - f1 n).toNat

end

end A284996.P16393643642255928342

/-! ## A284996.P4330961596973093787

`A284997(n+1)-A014512(Δ[A008620(n)])`
-/

namespace A284996.P4330961596973093787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - A014512 (f1 (n + 1) - f1 n).toNat

end

end A284996.P4330961596973093787

/-! ## A284996.P2218427274661779347

`A284997(n+1)-A000035(A064989(n+1))`
-/

namespace A284996.P2218427274661779347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (n + 1) - A000035 (A064989 (n + 1)).toNat

end

end A284996.P2218427274661779347

/-!
# A284997: Ceiling(Gamma(n/3)).

The programs for A284997, there is no canonical definition to state claims against.
-/

/-! ## A284997.P2836286050737671358

`A284996(n+1)+(n+1)²%3`
-/

namespace A284997.P2836286050737671358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + (((n + 1) ^ 2 % 3 : ℕ) : ℤ)

end

end A284997.P2836286050737671358

/-! ## A284997.P16462601168135231966

`A284996(n+1)+A010892(n)²`
-/

namespace A284997.P16462601168135231966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + A010892 n ^ 2

end

end A284997.P16462601168135231966

/-! ## A284997.P9026117087483661393

`A284996(n+1)+A049347(n)²`
-/

namespace A284997.P9026117087483661393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + A049347 n ^ 2

end

end A284997.P9026117087483661393

/-! ## A284997.P828782684863775465

`A284996(n+1)+char[A032766(n)]`
-/

namespace A284997.P828782684863775465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284997.P828782684863775465

/-! ## A284997.P12875825429230805470

`A284996(n+1)+and(1, A051286(n))`
-/

namespace A284997.P12875825429230805470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + Int.land 1 (A051286 n)

end

end A284997.P12875825429230805470

/-! ## A284997.P7538588275476877700

`A284996(n+1)+1-Δ[A008620(n)]`
-/

namespace A284997.P7538588275476877700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A284997.P7538588275476877700

/-! ## A284997.P4365485773743131153

`A284996(n+1)+1-char[A016789(n)]`
-/

namespace A284997.P4365485773743131153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A284997.P4365485773743131153

/-! ## A284997.P9423864953668768449

`A284996(n+1)+A014510(Δ[A008620(n)])`
-/

namespace A284997.P9423864953668768449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + A014510 (f1 (n + 1) - f1 n).toNat

end

end A284997.P9423864953668768449

/-! ## A284997.P2708942536817331052

`A284996(n+1)+A014512(Δ[A008620(n)])`
-/

namespace A284997.P2708942536817331052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + A014512 (f1 (n + 1) - f1 n).toNat

end

end A284997.P2708942536817331052

/-! ## A284997.P10694960898024955235

`A284996(n+1)+A014514(Δ[A008620(n)])`
-/

namespace A284997.P10694960898024955235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + A014514 (f1 (n + 1) - f1 n).toNat

end

end A284997.P10694960898024955235

/-! ## A284997.P9094826062712960070

`A284996(n+1)+A000035(A064989(n+1))`
-/

namespace A284997.P9094826062712960070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + A000035 (A064989 (n + 1)).toNat

end

end A284997.P9094826062712960070

/-! ## A284997.P639904312295418461

`A284996(n+1)+A048298(A038500(n+1))`
-/

namespace A284997.P639904312295418461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (n + 1) + A048298 (A038500 (n + 1)).toNat

end

end A284997.P639904312295418461

/-!
# A284998: Floor(Gamma(2n/3)).

The programs for A284998, there is no canonical definition to state claims against.
-/

/-! ## A284998.P8979985285288349710

`A284996(2*(n+1))`
-/

namespace A284998.P8979985285288349710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (2 * (n + 1))

end

end A284998.P8979985285288349710

/-! ## A284998.P8091324307862490969

`A284999(n+1)-char[∑[n%3]]`
-/

namespace A284998.P8091324307862490969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284999 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A284998.P8091324307862490969

/-! ## A284998.P1584821268081411655

`A284999(n+1)-A010892(n)²`
-/

namespace A284998.P1584821268081411655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284999 (n + 1) - A010892 n ^ 2

end

end A284998.P1584821268081411655

/-! ## A284998.P14692175779558838796

`A284999(n+1)-char[A032766(n)]`
-/

namespace A284998.P14692175779558838796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284999 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284998.P14692175779558838796

/-! ## A284998.P16419221966646557565

`A284997(2*(n+1))-A010892(n)²`
-/

namespace A284998.P16419221966646557565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1)) - A010892 n ^ 2

end

end A284998.P16419221966646557565

/-! ## A284998.P6048334556761045769

`A284997(2*(n+1))-A049347(n)²`
-/

namespace A284998.P6048334556761045769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1)) - A049347 n ^ 2

end

end A284998.P6048334556761045769

/-! ## A284998.P2984737011876711108

`A284997(2*(n+1))-∑[A057078(n)]`
-/

namespace A284998.P2984737011876711108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284998.P2984737011876711108

/-! ## A284998.P8604598496994463754

`A284997(2*(n+1))-char[A032766(n)]`
-/

namespace A284998.P8604598496994463754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284998.P8604598496994463754

/-! ## A284998.P7897089766537514088

`A284997(2*(n+1))-A057078(n+2)²`
-/

namespace A284998.P7897089766537514088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1)) - A057078 (n + 2) ^ 2

end

end A284998.P7897089766537514088

/-! ## A284998.P12672063224115602981

`A284997(2*n+2)-∑[A010892(2*n)]`
-/

namespace A284998.P12672063224115602981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284998.P12672063224115602981

/-! ## A284998.P6211402967901314642

`A284997(2*(n+1))-and(1, A259243(2*(n+1)))`
-/

namespace A284998.P6211402967901314642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1)) - Int.land 1 (A259243 (2 * (n + 1)))

end

end A284998.P6211402967901314642

/-! ## A284998.P17867180127882883017

`A284999(n+1)-A000035(A064989(n+1))`
-/

namespace A284998.P17867180127882883017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284999 (n + 1) - A000035 (A064989 (n + 1)).toNat

end

end A284998.P17867180127882883017

/-! ## A284998.P16866235424028977634

`A284997(2*(n+1))-A000035(A064989(n+1))`
-/

namespace A284998.P16866235424028977634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1)) - A000035 (A064989 (n + 1)).toNat

end

end A284998.P16866235424028977634

/-!
# A284999: Ceiling(Gamma(2n/3)).

The programs for A284999, there is no canonical definition to state claims against.
-/

/-! ## A284999.P14982831170131311205

`A284997(2*(n+1))`
-/

namespace A284999.P14982831170131311205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (2 * (n + 1))

end

end A284999.P14982831170131311205

/-! ## A284999.P5319288454124446645

`A284998(n+1)+char[∑[n%3]]`
-/

namespace A284999.P5319288454124446645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284998 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A284999.P5319288454124446645

/-! ## A284999.P4791211316697425132

`A284998(n+1)+A010892(n)²`
-/

namespace A284999.P4791211316697425132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284998 (n + 1) + A010892 n ^ 2

end

end A284999.P4791211316697425132

/-! ## A284999.P13220481783740400722

`A284998(n+1)+char[A032766(n)]`
-/

namespace A284999.P13220481783740400722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284998 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284999.P13220481783740400722

/-! ## A284999.P1751535921437283062

`A284996(2*(n+1))+A010892(n)²`
-/

namespace A284999.P1751535921437283062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (2 * (n + 1)) + A010892 n ^ 2

end

end A284999.P1751535921437283062

/-! ## A284999.P4675180753141205469

`A284996(2*(n+1))+A049347(n)²`
-/

namespace A284999.P4675180753141205469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (2 * (n + 1)) + A049347 n ^ 2

end

end A284999.P4675180753141205469

/-! ## A284999.P295855792782006961

`A284996(2*(n+1))+char[A032766(n)]`
-/

namespace A284999.P295855792782006961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (2 * (n + 1)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284999.P295855792782006961

/-! ## A284999.P3547796039754784872

`A284996(2*(n+1))+and(1, A051286(2*n+1))`
-/

namespace A284999.P3547796039754784872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (2 * (n + 1)) + Int.land 1 (A051286 (2 * n + 1))

end

end A284999.P3547796039754784872

/-! ## A284999.P2588432893095472562

`A284996(2*(n+1))+A000035(A064989(n+1))`
-/

namespace A284999.P2588432893095472562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (2 * (n + 1)) + A000035 (A064989 (n + 1)).toNat

end

end A284999.P2588432893095472562

/-! ## A284999.P16478941743659469098

`A284996(2*(n+1))+A048298(A038500(n+1))`
-/

namespace A284999.P16478941743659469098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (2 * (n + 1)) + A048298 (A038500 (n + 1)).toNat

end

end A284999.P16478941743659469098

