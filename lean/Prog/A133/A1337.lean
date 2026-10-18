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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A133700: A051731 * A001227; a(n) = Sum_{d|n} A001227(d).

The programs for A133700, the canonical program `A133700.P16497783363964826140` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133700 has offset 1).

The definition of A133700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133700.P10792282136271931351

`∑{d}[n+1, A001227(#)]`
-/

namespace A133700.P10792282136271931351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d

end

end A133700.P10792282136271931351

namespace A133700

/-- `∑{d}[n+1, A001227(#)]` -/
def P10792282136271931351.Spec : Prop :=
  ∀ n, P10792282136271931351.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P5346389069745966037

`(val(n+1, 2)+1)*A007425((n+1)/2^val(n+1, 2))`
-/

namespace A133700.P5346389069745966037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A133700.P5346389069745966037

namespace A133700

/-- `(val(n+1, 2)+1)*A007425((n+1)/2^val(n+1, 2))` -/
def P5346389069745966037.Spec : Prop :=
  ∀ n, P5346389069745966037.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P7059904767429398942

`∑{d}[n+1, A000005(A000265(#))]`
-/

namespace A133700.P7059904767429398942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A000265 d).toNat

end

end A133700.P7059904767429398942

namespace A133700

/-- `∑{d}[n+1, A000005(A000265(#))]` -/
def P7059904767429398942.Spec : Prop :=
  ∀ n, P7059904767429398942.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P10339413473459527353

`∑{d}[n+1, A000005(A336158(#))]`
-/

namespace A133700.P10339413473459527353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A336158 d).toNat

end

end A133700.P10339413473459527353

namespace A133700

/-- `∑{d}[n+1, A000005(A336158(#))]` -/
def P10339413473459527353.Spec : Prop :=
  ∀ n, P10339413473459527353.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P13210243669089899815

`A339010(n+1)+A069733(n+1)`
-/

namespace A133700.P13210243669089899815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339010 (n + 1) + A069733 (n + 1)

end

end A133700.P13210243669089899815

namespace A133700

/-- `A339010(n+1)+A069733(n+1)` -/
def P13210243669089899815.Spec : Prop :=
  ∀ n, P13210243669089899815.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P7951682767503316454

`A034718(n+1)/A267092(n+1)`
-/

namespace A133700.P7951682767503316454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034718 (n + 1) : ℚ) / (A267092 (n + 1) : ℚ)

end

end A133700.P7951682767503316454

namespace A133700

/-- `A034718(n+1)/A267092(n+1)` -/
def P7951682767503316454.Spec : Prop :=
  ∀ n, P7951682767503316454.a n = (A133700 (n + 1) : ℚ)

end A133700

/-! ## A133700.P15167659907647993865

`A397549(n+1)/A129628(n+1)`
-/

namespace A133700.P15167659907647993865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397549 (n + 1) : ℚ) / (A129628 (n + 1) : ℚ)

end

end A133700.P15167659907647993865

namespace A133700

/-- `A397549(n+1)/A129628(n+1)` -/
def P15167659907647993865.Spec : Prop :=
  ∀ n, P15167659907647993865.a n = (A133700 (n + 1) : ℚ)

end A133700

/-! ## A133700.P678102062490460977

`∑{d}[n+1, A006519(#)*A048272((n+1)/#)]`
-/

namespace A133700.P678102062490460977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P678102062490460977

namespace A133700

/-- `∑{d}[n+1, A006519(#)*A048272((n+1)/#)]` -/
def P678102062490460977.Spec : Prop :=
  ∀ n, P678102062490460977.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P6024812466524287025

`∑{d}[n+1, A035218(#)*A051064((n+1)/#)]`
-/

namespace A133700.P6024812466524287025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035218 d * A051064 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P6024812466524287025

namespace A133700

/-- `∑{d}[n+1, A035218(#)*A051064((n+1)/#)]` -/
def P6024812466524287025.Spec : Prop :=
  ∀ n, P6024812466524287025.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P14507621543925174104

`∑{d}[n+1, A007426(#)*A092673((n+1)/#)]`
-/

namespace A133700.P14507621543925174104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P14507621543925174104

namespace A133700

/-- `∑{d}[n+1, A007426(#)*A092673((n+1)/#)]` -/
def P14507621543925174104.Spec : Prop :=
  ∀ n, P14507621543925174104.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P16497783363964826140

`∑{d}[n+1, A035263(#)*A069733((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133700

/-- `∑{d}[n+1, A035263(#)*A069733((n+1)/#)]` -/
def P16497783363964826140.Spec : Prop :=
  ∀ n, P16497783363964826140.a n = A133700 (n + 1)

theorem P16497783363964826140.correct : P16497783363964826140.Spec := by
  intro n
  simp only [A133700, Nat.add_sub_cancel]

end A133700

/-! ## A133700.P16251394392771842086

`∑{d}[n+1, A002131(#)*A130054((n+1)/#)]`
-/

namespace A133700.P16251394392771842086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P16251394392771842086

namespace A133700

/-- `∑{d}[n+1, A002131(#)*A130054((n+1)/#)]` -/
def P16251394392771842086.Spec : Prop :=
  ∀ n, P16251394392771842086.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P14526859602618882971

`∑{d}[n+1, A007425(#)*A154955((n+1)/#)]`
-/

namespace A133700.P14526859602618882971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P14526859602618882971

namespace A133700

/-- `∑{d}[n+1, A007425(#)*A154955((n+1)/#)]` -/
def P14526859602618882971.Spec : Prop :=
  ∀ n, P14526859602618882971.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P10576681274658016929

`∑{d}[n+1, A078644(#)*A098108((n+1)/#)]`
-/

namespace A133700.P10576681274658016929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A098108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P10576681274658016929

namespace A133700

/-- `∑{d}[n+1, A078644(#)*A098108((n+1)/#)]` -/
def P10576681274658016929.Spec : Prop :=
  ∀ n, P10576681274658016929.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P16608069314943113332

`∑{d}[n+1, A048691(#)*A143259((n+1)/#)]`
-/

namespace A133700.P16608069314943113332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P16608069314943113332

namespace A133700

/-- `∑{d}[n+1, A048691(#)*A143259((n+1)/#)]` -/
def P16608069314943113332.Spec : Prop :=
  ∀ n, P16608069314943113332.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P17064976917640185168

`∑{d}[n+1, A035191(#)*A284413((n+1)/#)]`
-/

namespace A133700.P17064976917640185168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035191 d * A284413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P17064976917640185168

namespace A133700

/-- `∑{d}[n+1, A035191(#)*A284413((n+1)/#)]` -/
def P17064976917640185168.Spec : Prop :=
  ∀ n, P17064976917640185168.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P6324566906209287596

`∑{d}[n+1, A053866(#)*A275367((n+1)/#)]`
-/

namespace A133700.P6324566906209287596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A275367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P6324566906209287596

namespace A133700

/-- `∑{d}[n+1, A053866(#)*A275367((n+1)/#)]` -/
def P6324566906209287596.Spec : Prop :=
  ∀ n, P6324566906209287596.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P3376886093874458326

`∑{d}[n+1, A008683(#)*A326417((n+1)/#)]`
-/

namespace A133700.P3376886093874458326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A326417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P3376886093874458326

namespace A133700

/-- `∑{d}[n+1, A008683(#)*A326417((n+1)/#)]` -/
def P3376886093874458326.Spec : Prop :=
  ∀ n, P3376886093874458326.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P12216281828696861094

`∑{d}[n+1, A023900(#)*A327096((n+1)/#)]`
-/

namespace A133700.P12216281828696861094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A327096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P12216281828696861094

namespace A133700

/-- `∑{d}[n+1, A023900(#)*A327096((n+1)/#)]` -/
def P12216281828696861094.Spec : Prop :=
  ∀ n, P12216281828696861094.a n = A133700 (n + 1)

end A133700

/-! ## A133700.P560272917520435118

`∑{d}[n+1, A034444(#)*A328372((n+1)/#)]`
-/

namespace A133700.P560272917520435118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A328372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133700.P560272917520435118

namespace A133700

/-- `∑{d}[n+1, A034444(#)*A328372((n+1)/#)]` -/
def P560272917520435118.Spec : Prop :=
  ∀ n, P560272917520435118.a n = A133700 (n + 1)

end A133700

/-!
# A133701: Triangle read by rows: T(n, k) = A001227(n) if k divides n, T(n, k) = 0 otherwise.

The programs for A133701, there is no canonical definition to state claims against.
-/

/-! ## A133701.P15557936362403717217

`A069010(A134576(n+1)%A360400(n+1))`
-/

namespace A133701.P15557936362403717217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.tmod (A134576 (n + 1)) (A360400 (n + 1))).toNat

end

end A133701.P15557936362403717217

/-! ## A133701.P3391407874494435787

`A354582(A134576(n+1))`
-/

namespace A133701.P3391407874494435787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A134576 (n + 1)).toNat

end

end A133701.P3391407874494435787

/-! ## A133701.P12896687139215743122

`A351014(A034444(n+5)*A127466(n+1))`
-/

namespace A133701.P12896687139215743122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A034444 (n + 5) * A127466 (n + 1)).toNat

end

end A133701.P12896687139215743122

/-! ## A133701.P5781428790109115841

`A124766(A127641(n+1)%A127652(n+3))`
-/

namespace A133701.P5781428790109115841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.tmod (A127641 (n + 1)) (A127652 (n + 3))).toNat

end

end A133701.P5781428790109115841

/-! ## A133701.P11185712151503182152

`A351014(4*A127466(n+1))`
-/

namespace A133701.P11185712151503182152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (4 * A127466 (n + 1)).toNat

end

end A133701.P11185712151503182152

/-!
# A133702: Inverse Moebius transform of A023136.

The programs for A133702, there is no canonical definition to state claims against.
-/

/-! ## A133702.P2404572377542352230

`∑{d}[n+1, A023136(#)]`
-/

namespace A133702.P2404572377542352230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023136 d

end

end A133702.P2404572377542352230

/-! ## A133702.P5742735664632680048

`A335841(n+1)+A335446(A232697(n))`
-/

namespace A133702.P5742735664632680048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335841 (n + 1) + A335446 (A232697 n).toNat

end

end A133702.P5742735664632680048

/-!
# A133703: Triangle read by rows: T(n,k) = Sum_{d|n, k|d} mu(n/d)*A001227(d).

The programs for A133703, there is no canonical definition to state claims against.
-/

/-! ## A133703.P9800847460613249626

`A129372(n+1)*A270643(A028246(n+1))`
-/

namespace A133703.P9800847460613249626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129372 (n + 1) * A270643 (A028246 (n + 1)).toNat

end

end A133703.P9800847460613249626

/-! ## A133703.P18296798330702297334

`A179827(A078843(n))+A087748(n)*A133701(n+1)`
-/

namespace A133703.P18296798330702297334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179827 (A078843 n).toNat + A087748 n * A133701 (n + 1)

end

end A133703.P18296798330702297334

/-! ## A133703.P8313457606693190740

`A389836(A143496(n+5))`
-/

namespace A133703.P8313457606693190740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389836 (A143496 (n + 5)).toNat

end

end A133703.P8313457606693190740

/-! ## A133703.P16066112630717850586

`A086614(n)%A023135(A246080(2*n+5))`
-/

namespace A133703.P16066112630717850586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086614 n) (A023135 (A246080 (2 * n + 5)).toNat)

end

end A133703.P16066112630717850586

/-! ## A133703.P17165336505044080227

`A106277(A342446(n+1))`
-/

namespace A133703.P17165336505044080227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106277 (A342446 (n + 1)).toNat

end

end A133703.P17165336505044080227

/-!
# A133704: A051731 * a diagonalized matrix of A133696.

The programs for A133704, there is no canonical definition to state claims against.
-/

/-! ## A133704.P13152968693382997689

`2*A054524(n+1)-A051731(n+1)`
-/

namespace A133704.P13152968693382997689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054524 (n + 1) - A051731 (n + 1)

end

end A133704.P13152968693382997689

/-! ## A133704.P2828267103938724364

`A051731(n+1)*A133695(A002260(n+1))`
-/

namespace A133704.P2828267103938724364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A133695 (A002260 (n + 1)).toNat

end

end A133704.P2828267103938724364

/-! ## A133704.P1336910840095224310

`A051731(n+1)*A133695(A050873(n+1))`
-/

namespace A133704.P1336910840095224310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A133695 (A050873 (n + 1)).toNat

end

end A133704.P1336910840095224310

/-! ## A133704.P1810424451497116924

`A051731(n+1)*A133695(A112544(n+1))`
-/

namespace A133704.P1810424451497116924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A133695 (A112544 (n + 1)).toNat

end

end A133704.P1810424451497116924

/-! ## A133704.P5575320931563094768

`A051731(n+1)*A133695(A123275(n+1))`
-/

namespace A133704.P5575320931563094768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A133695 (A123275 (n + 1)).toNat

end

end A133704.P5575320931563094768

/-! ## A133704.P3315907999655384853

`A051731(n+1)*A133695(A307662(n+1))`
-/

namespace A133704.P3315907999655384853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A133695 (A307662 (n + 1)).toNat

end

end A133704.P3315907999655384853

/-! ## A133704.P14176362290867728849

`A057427(A054522(n+1))*A133695(A002260(n+1))`
-/

namespace A133704.P14176362290867728849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054522 (n + 1)).toNat * A133695 (A002260 (n + 1)).toNat

end

end A133704.P14176362290867728849

/-! ## A133704.P11636026799445634696

`A057427(A127093(n+1))*A133695(A002260(n+1))`
-/

namespace A133704.P11636026799445634696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A127093 (n + 1)).toNat * A133695 (A002260 (n + 1)).toNat

end

end A133704.P11636026799445634696

/-! ## A133704.P1244985909646433774

`A057427(A129559(n+1))*A133695(A002260(n+1))`
-/

namespace A133704.P1244985909646433774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A129559 (n + 1)).toNat * A133695 (A002260 (n + 1)).toNat

end

end A133704.P1244985909646433774

/-! ## A133704.P1873451236695254855

`A014026(A173541(n+1))*A133695(A002260(n+1))`
-/

namespace A133704.P1873451236695254855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014026 (A173541 (n + 1)).toNat * A133695 (A002260 (n + 1)).toNat

end

end A133704.P1873451236695254855

/-!
# A133705: A133704 + A051731 - A000012.

The programs for A133705, there is no canonical definition to state claims against.
-/

/-! ## A133705.P3628625865022502542

`2*A054524(n+1)-A240228(A286601(n))`
-/

namespace A133705.P3628625865022502542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054524 (n + 1) - A240228 (A286601 n).toNat

end

end A133705.P3628625865022502542

/-! ## A133705.P10964307966465943098

`2*A054524(n+1)-A234959(A079153(n+1))`
-/

namespace A133705.P10964307966465943098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054524 (n + 1) - A234959 (A079153 (n + 1)).toNat

end

end A133705.P10964307966465943098

/-! ## A133705.P14216044656753722107

`A008683(A000230(n))+2*A054524(n+1)`
-/

namespace A133705.P14216044656753722107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000230 n).toNat + 2 * A054524 (n + 1)

end

end A133705.P14216044656753722107

/-! ## A133705.P2157016172753297246

`2*A054524(n+1)-A156264(A156246(3*n+1))`
-/

namespace A133705.P2157016172753297246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054524 (n + 1) - A156264 (A156246 (3 * n + 1)).toNat

end

end A133705.P2157016172753297246

/-! ## A133705.P1805663221289385139

`A318657(A216227(n+1))+2*A054524(n+1)`
-/

namespace A133705.P1805663221289385139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A216227 (n + 1)).toNat + 2 * A054524 (n + 1)

end

end A133705.P1805663221289385139

/-!
# A133706: Numerator of a remarkable product.

The programs for A133706, there is no canonical definition to state claims against.
-/

/-! ## A133706.P2159492566921676132

`∑[A349079((floor(n/6)+1)*a(n-1))]` with `a(0)=1`
-/

namespace A133706.P2159492566921676132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A349079 ((⌊(n : ℚ) / 6⌋ + 1) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133706.P2159492566921676132

/-! ## A133706.P10701747571267483270

`A178878(∑[A100134(n)])`
-/

namespace A133706.P10701747571267483270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133706.P10701747571267483270

/-! ## A133706.P3894773597177469049

`A000926(∑[A365733(n)])`
-/

namespace A133706.P3894773597177469049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133706.P3894773597177469049

/-! ## A133706.P16403100904443095727

`∑[A227308(A174300(n))]`
-/

namespace A133706.P16403100904443095727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227308 (A174300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133706.P16403100904443095727

/-! ## A133706.P17224461177773798099

`A178878(A102516(n+1))`
-/

namespace A133706.P17224461177773798099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178878 (A102516 (n + 1)).toNat

end

end A133706.P17224461177773798099

/-!
# A133707: Denominator of a remarkable product.

The programs for A133707, there is no canonical definition to state claims against.
-/

/-! ## A133707.P1431339173508564823

`gcd(5, A061509(A280951(n)))`
-/

namespace A133707.P1431339173508564823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A061509 (A280951 n).toNat)

end

end A133707.P1431339173508564823

/-! ## A133707.P3781612412025541655

`A003557(or(A001316(n), A349530(n+1)))`
-/

namespace A133707.P3781612412025541655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.lor (A001316 n) (A349530 (n + 1))).toNat

end

end A133707.P3781612412025541655

/-! ## A133707.P17172313416419731656

`A285711(or(A330462(n), A349530(n+1)))`
-/

namespace A133707.P17172313416419731656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285711 (Int.lor (A330462 n) (A349530 (n + 1))).toNat

end

end A133707.P17172313416419731656

/-! ## A133707.P15345105131817209611

`A108886(A356002(n+3)%A286464(n+1))`
-/

namespace A133707.P15345105131817209611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 (Int.tmod (A356002 (n + 3)) (A286464 (n + 1))).toNat

end

end A133707.P15345105131817209611

/-! ## A133707.P14902689379256812013

`A228572(C(A349530(n+1), A359910(n+1)))`
-/

namespace A133707.P14902689379256812013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228572 (Nat.choose (A349530 (n + 1)).toNat (A359910 (n + 1)).toNat)

end

end A133707.P14902689379256812013

/-! ## A133707.P18431758373842592066

`gcd(A001215(A008835(n+1)), A178334(2*n+1))`
-/

namespace A133707.P18431758373842592066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001215 (A008835 (n + 1)).toNat) (A178334 (2 * n + 1))

end

end A133707.P18431758373842592066

/-! ## A133707.P8029539640062990268

`or(1, ∑[A175676(A214228(n+1))])`
-/

namespace A133707.P8029539640062990268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A214228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133707.P8029539640062990268

/-!
# A133708: First differences of A047835.

The programs for A133708, there is no canonical definition to state claims against.
-/

/-! ## A133708.P6506294223667330314

`A288217(∑[C(2*n, n+2)]²+1)-1`
-/

namespace A133708.P6506294223667330314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288217 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) - 1

end

end A133708.P6506294223667330314

/-!
# A133709: Triangle read by rows: T(m,l) = number of labeled covers of size l of a finite set of m unlabeled elements (m >= 1, 1 <= l <= 2^m - 1).

The programs for A133709, there is no canonical definition to state claims against.
-/

/-! ## A133709.P5654803781071221487

`A319916(A219471(n+1)-A000005(2*(n+1)))`
-/

namespace A133709.P5654803781071221487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 (A219471 (n + 1) - A000005 (2 * (n + 1))).toNat

end

end A133709.P5654803781071221487

/-!
# A133710: Column l=3 of irregular triangle in A133709.

The programs for A133710, the canonical program `A133710.P17090845274663533758` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133710 has offset 1).

The definition of A133710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133710.P17090845274663533758

`Δ[A059585(n)]-3*(∑[n+2]-2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133710

/-- `Δ[A059585(n)]-3*(∑[n+2]-2)` -/
def P17090845274663533758.Spec : Prop :=
  ∀ n, P17090845274663533758.a n = A133710 (n + 1)

theorem P17090845274663533758.correct : P17090845274663533758.Spec := by
  intro n
  simp only [A133710, Nat.add_sub_cancel]

end A133710

/-! ## A133710.P10226325562465779349

`Δ[A000580(n+7)-n*A028560(n)]`
-/

namespace A133710.P10226325562465779349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - (n : ℤ) * A028560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133710.P10226325562465779349

namespace A133710

/-- `Δ[A000580(n+7)-n*A028560(n)]` -/
def P10226325562465779349.Spec : Prop :=
  ∀ n, P10226325562465779349.a n = A133710 (n + 1)

end A133710

/-! ## A133710.P7605832197626303872

`A124089(n+7)-A008458(A034856(n+1))`
-/

namespace A133710.P7605832197626303872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 7) - A008458 (A034856 (n + 1)).toNat

end

end A133710.P7605832197626303872

namespace A133710

/-- `A124089(n+7)-A008458(A034856(n+1))` -/
def P7605832197626303872.Spec : Prop :=
  ∀ n, P7605832197626303872.a n = A133710 (n + 1)

end A133710

/-! ## A133710.P3868633730984283475

`A166810(n+1)-A016789(A082111(n))`
-/

namespace A133710.P3868633730984283475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) - A016789 (A082111 n).toNat

end

end A133710.P3868633730984283475

namespace A133710

/-- `A166810(n+1)-A016789(A082111(n))` -/
def P3868633730984283475.Spec : Prop :=
  ∀ n, P3868633730984283475.a n = A133710 (n + 1)

end A133710

/-!
# A133713: Array read by antidiagonals, giving the sizes pi_l(c_l(m,n)) of minimal covers (see reference for precise definition).

The programs for A133713, there is no canonical definition to state claims against.
-/

/-! ## A133713.P17119708392970816449

`A089867(A382225(n))`
-/

namespace A133713.P17119708392970816449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A382225 n).toNat

end

end A133713.P17119708392970816449

/-! ## A133713.P17570017675127355528

`filter[A382225(n), A140865(#)]`
-/

namespace A133713.P17570017675127355528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140865 (f1 j).toNat = 1) n)

end

end A133713.P17570017675127355528

/-! ## A133713.P11440446987804142736

`A382225(n)+A010893(A102480(n))`
-/

namespace A133713.P11440446987804142736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382225 n + A010893 ((A102480 n).toNat + 13)

end

end A133713.P11440446987804142736

/-! ## A133713.P7579742238790483021

`A382225(n)%A003367(A003242(n))`
-/

namespace A133713.P7579742238790483021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382225 n) (A003367 (A003242 n).toNat)

end

end A133713.P7579742238790483021

/-! ## A133713.P9751472730165747081

`A382225(n)+A319330(A007821(n+1))`
-/

namespace A133713.P9751472730165747081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382225 n + A319330 (A007821 (n + 1)).toNat

end

end A133713.P9751472730165747081

/-!
# A133714: Row l=4 of array in A133713.

The programs for A133714, there is no canonical definition to state claims against.
-/

/-! ## A133714.P481644450393219835

`A133713(∑[n+3]+2)`
-/

namespace A133714.P481644450393219835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133713 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A133714.P481644450393219835

/-! ## A133714.P8246422396220320903

`record[A133713(n+2)-A354607(n+1)]`
-/

namespace A133714.P8246422396220320903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133713 (n + 2) - A354607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133714.P8246422396220320903

/-! ## A133714.P5319110947998353141

`record[A133713(n+2)/A038303(n+2)]`
-/

namespace A133714.P5319110947998353141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133713 (n + 2) : ℚ) / (A038303 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133714.P5319110947998353141

/-! ## A133714.P14428422098638214053

`record[A133713(n+2)/A078812(n+2)]`
-/

namespace A133714.P14428422098638214053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133713 (n + 2) : ℚ) / (A078812 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133714.P14428422098638214053

/-!
# A133715: Row l=5 of array in A133713.

The programs for A133715, there is no canonical definition to state claims against.
-/

/-! ## A133715.P5061997723721259046

`A133713(∑[n+4]+4)`
-/

namespace A133715.P5061997723721259046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133713 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A133715.P5061997723721259046

/-! ## A133715.P1194942101685728151

`and(-1, A133713(A034856(n+3)))`
-/

namespace A133715.P1194942101685728151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A133713 (A034856 (n + 3)).toNat)

end

end A133715.P1194942101685728151

/-! ## A133715.P16507367013165864646

`record[gcd(A133713(n+2), A267479(n+3))]`
-/

namespace A133715.P16507367013165864646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133713 (n + 2)) (A267479 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133715.P16507367013165864646

/-!
# A133716: Row l=6 of array in A133713.

The programs for A133716, there is no canonical definition to state claims against.
-/

/-! ## A133716.P8365180893471486485

`A133713(A055998(n+3))`
-/

namespace A133716.P8365180893471486485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133713 (A055998 (n + 3)).toNat

end

end A133716.P8365180893471486485

/-! ## A133716.P6628201233488862132

`A133713(A056115(n)+12)`
-/

namespace A133716.P6628201233488862132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133713 (A056115 n + 12).toNat

end

end A133716.P6628201233488862132

/-!
# A133717: Row l=7 of array in A133713.

The programs for A133717, there is no canonical definition to state claims against.
-/

/-! ## A133717.P2664475035081542613

`A133713(A056119(n)+17)`
-/

namespace A133717.P2664475035081542613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133713 (A056119 n + 17).toNat

end

end A133717.P2664475035081542613

/-!
# A133718: Column 3 of array in A133713.

The programs for A133718, there is no canonical definition to state claims against.
-/

/-! ## A133718.P15128377959942801305

`(C(n+4, 4)+1)*(∑[n]+n)+1`
-/

namespace A133718.P15128377959942801305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1

end

end A133718.P15128377959942801305

/-! ## A133718.P10335427324470283945

`∑[∑[∑[5*n*(n+1)²]+2]]/2`
-/

namespace A133718.P10335427324470283945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n * (n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A133718.P10335427324470283945

/-! ## A133718.P4263396662328885288

`(∑[n]+n)*A145126(n+1)+1`
-/

namespace A133718.P4263396662328885288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * A145126 (n + 1) + 1

end

end A133718.P4263396662328885288

/-! ## A133718.P2780926622298214104

`∑[∑[5*∑[(n+1)*A000217(n)]+1]]`
-/

namespace A133718.P2780926622298214104
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f3 j) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133718.P2780926622298214104

/-! ## A133718.P15149105369114015435

`∑[n+1]+(∑[n+3]+3)*∑[A000292(n)]`
-/

namespace A133718.P15149105369114015435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A133718.P15149105369114015435

/-!
# A133719: Column 4 of array in A133713.

The programs for A133719, there is no canonical definition to state claims against.
-/

/-! ## A133719.P5772985955185234543

`record[A133724(n+5)]`
-/

namespace A133719.P5772985955185234543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133724 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133719.P5772985955185234543

/-! ## A133719.P13800395333266742461

`A133724(5*n+6)`
-/

namespace A133719.P13800395333266742461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133724 (5 * n + 6)

end

end A133719.P13800395333266742461

/-! ## A133719.P12242995316226456706

`record[ratio[A133724(A020722(n))]]`
-/

namespace A133719.P12242995316226456706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133724 (A020722 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133719.P12242995316226456706

/-! ## A133719.P14327215785572914724

`record[A133733(2*(n+5))]`
-/

namespace A133719.P14327215785572914724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (2 * (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133719.P14327215785572914724

/-! ## A133719.P7878717943427492087

`A133733(2*(3*n+4))`
-/

namespace A133719.P7878717943427492087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (2 * (3 * n + 4))

end

end A133719.P7878717943427492087

/-!
# A133720: Column 5 of array in A133713.

The programs for A133720, there is no canonical definition to state claims against.
-/

/-! ## A133720.P5392554393879268523

`record[A133733(n+6)]`
-/

namespace A133720.P5392554393879268523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133720.P5392554393879268523

/-! ## A133720.P9650396359077577152

`A133733(6*n+7)`
-/

namespace A133720.P9650396359077577152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (6 * n + 7)

end

end A133720.P9650396359077577152

/-! ## A133720.P8797265404286402303

`record[ratio[A133733(A020722(n))]]`
-/

namespace A133720.P8797265404286402303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (A020722 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133720.P8797265404286402303

/-! ## A133720.P12918681501926668998

`A133733(A016921(n+1))%A020237(A093833(n))`
-/

namespace A133720.P12918681501926668998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133733 (A016921 (n + 1)).toNat) (A020237 (A093833 n).toNat)

end

end A133720.P12918681501926668998

/-! ## A133720.P18285089546666702774

`A133733(A003963(n+1))+A133733(A016921(n+1))`
-/

namespace A133720.P18285089546666702774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (A003963 (n + 1)).toNat + A133733 (A016921 (n + 1)).toNat

end

end A133720.P18285089546666702774

/-!
# A133721: Triangle read by rows: T(m,n) = number of n-balanced and minimal labeled covers of a finite set of m unlabeled elements (m >= 1, 1 <= n <= m).

The programs for A133721, there is no canonical definition to state claims against.
-/

/-! ## A133721.P5914558432558598299

`gcd(A001611(n), A161358(A220054(n+1)))`
-/

namespace A133721.P5914558432558598299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001611 n) (A161358 (A220054 (n + 1)).toNat)

end

end A133721.P5914558432558598299

/-! ## A133721.P2484981350197823628

`gcd(A078174(3*n+1), A268674(A264017(n+1)))`
-/

namespace A133721.P2484981350197823628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078174 (3 * n + 1)) (A268674 (A264017 (n + 1)).toNat)

end

end A133721.P2484981350197823628

/-!
# A133722: Column 3 of triangle in A133721.

The programs for A133722, there is no canonical definition to state claims against.
-/

/-! ## A133722.P4805795505071944299

`A133723(comp[4*n]+1)`
-/

namespace A133722.P4805795505071944299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133723 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A133722.P4805795505071944299

/-! ## A133722.P9659570342142001605

`A133724(∑[gcd(3, n)])`
-/

namespace A133722.P9659570342142001605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133722.P9659570342142001605

/-! ## A133722.P5875615069706181419

`A133724(A047205(n+2))`
-/

namespace A133722.P5875615069706181419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133724 (A047205 (n + 2)).toNat

end

end A133722.P5875615069706181419

/-! ## A133722.P13992617236183758781

`A133724(A047202(n+1)+1)`
-/

namespace A133722.P13992617236183758781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133724 (A047202 (n + 1) + 1).toNat

end

end A133722.P13992617236183758781

/-! ## A133722.P15486212440969778123

`A133733(A047258(n+2))`
-/

namespace A133722.P15486212440969778123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (A047258 (n + 2)).toNat

end

end A133722.P15486212440969778123

/-!
# A133723: Column 4 of triangle in A133721.

The programs for A133723, there is no canonical definition to state claims against.
-/

/-! ## A133723.P15850147954200568171

`A133724(comp[5*n]+1)`
-/

namespace A133723.P15850147954200568171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133724 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A133723.P15850147954200568171

/-! ## A133723.P10131965650133255746

`A133733(A047250(n+2))`
-/

namespace A133723.P10131965650133255746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (A047250 (n + 2)).toNat

end

end A133723.P10131965650133255746

/-!
# A133724: Column 5 of triangle in A133721.

The programs for A133724, there is no canonical definition to state claims against.
-/

/-! ## A133724.P6793871817148947651

`A133733(comp[6*n]+1)`
-/

namespace A133724.P6793871817148947651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A133724.P6793871817148947651

/-!
# A133725: a(n) = Sum_{d|n} mu(n/d)*d*(3*d - 1)/2.

The programs for A133725, the canonical program `A133725.P6332609790966904879` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133725 has offset 1).

The definition of A133725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133725.P6332609790966904879

`(3*A007434(n+1)-A000010(n+1))/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133725

/-- `(3*A007434(n+1)-A000010(n+1))/2` -/
def P6332609790966904879.Spec : Prop :=
  ∀ n, P6332609790966904879.a n = (A133725 (n + 1) : ℚ)

end A133725

/-! ## A133725.P5727613697857096409

`A102309(n+1)+A007434(n+1)`
-/

namespace A133725.P5727613697857096409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + A007434 (n + 1)

end

end A133725.P5727613697857096409

namespace A133725

/-- `A102309(n+1)+A007434(n+1)` -/
def P5727613697857096409.Spec : Prop :=
  ∀ n, P5727613697857096409.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P12615510270041953452

`Δ[A002088(n)]+3*A102309(n+1)`
-/

namespace A133725.P12615510270041953452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A102309 (n + 1)

end

end A133725.P12615510270041953452

namespace A133725

/-- `Δ[A002088(n)]+3*A102309(n+1)` -/
def P12615510270041953452.Spec : Prop :=
  ∀ n, P12615510270041953452.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P5222293239774674462

`Δ[2*A321879(n)]-A007438(n+1)`
-/

namespace A133725.P5222293239774674462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007438 (n + 1)

end

end A133725.P5222293239774674462

namespace A133725

/-- `Δ[2*A321879(n)]-A007438(n+1)` -/
def P5222293239774674462.Spec : Prop :=
  ∀ n, P5222293239774674462.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P3769044490457200303

`2*A007434(n+1)-A007438(n+1)`
-/

namespace A133725.P3769044490457200303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007434 (n + 1) - A007438 (n + 1)

end

end A133725.P3769044490457200303

namespace A133725

/-- `2*A007434(n+1)-A007438(n+1)` -/
def P3769044490457200303.Spec : Prop :=
  ∀ n, P3769044490457200303.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P6338046647724618345

`A000010(n+1)+3*A102309(n+1)`
-/

namespace A133725.P6338046647724618345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3 * A102309 (n + 1)

end

end A133725.P6338046647724618345

namespace A133725

/-- `A000010(n+1)+3*A102309(n+1)` -/
def P6338046647724618345.Spec : Prop :=
  ∀ n, P6338046647724618345.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P7931827747494279373

`(A344596(n+1)+A140434(n+1))/2`
-/

namespace A133725.P7931827747494279373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344596 (n + 1) + A140434 (n + 1) : ℚ) / 2

end

end A133725.P7931827747494279373

namespace A133725

/-- `(A344596(n+1)+A140434(n+1))/2` -/
def P7931827747494279373.Spec : Prop :=
  ∀ n, P7931827747494279373.a n = (A133725 (n + 1) : ℚ)

end A133725

/-! ## A133725.P4281922189532110179

`∑{d}[n+1, A008683(#)*A000326((n+1)/#)]`
-/

namespace A133725.P4281922189532110179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133725.P4281922189532110179

namespace A133725

/-- `∑{d}[n+1, A008683(#)*A000326((n+1)/#)]` -/
def P4281922189532110179.Spec : Prop :=
  ∀ n, P4281922189532110179.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P11228787327217782344

`∑{d}[n+1, A007427(#)*A116913((n+1)/#)]`
-/

namespace A133725.P11228787327217782344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A116913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133725.P11228787327217782344

namespace A133725

/-- `∑{d}[n+1, A007427(#)*A116913((n+1)/#)]` -/
def P11228787327217782344.Spec : Prop :=
  ∀ n, P11228787327217782344.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P15224426478440259942

`A007434(n+1)+A007438(n+1)-A000010(n+1)`
-/

namespace A133725.P15224426478440259942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + (A007438 (n + 1) - A000010 (n + 1))

end

end A133725.P15224426478440259942

namespace A133725

/-- `A007434(n+1)+A007438(n+1)-A000010(n+1)` -/
def P15224426478440259942.Spec : Prop :=
  ∀ n, P15224426478440259942.a n = A133725 (n + 1)

end A133725

/-! ## A133725.P14875423539429195742

`A102309(n+1)+A117108(n+1)-A346760(n+1)`
-/

namespace A133725.P14875423539429195742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + (A117108 (n + 1) - A346760 (n + 1))

end

end A133725.P14875423539429195742

namespace A133725

/-- `A102309(n+1)+A117108(n+1)-A346760(n+1)` -/
def P14875423539429195742.Spec : Prop :=
  ∀ n, P14875423539429195742.a n = A133725 (n + 1)

end A133725

/-!
# A133726: Möbius transform of the Pell numbers (A000129).

The programs for A133726, the canonical program `A133726.P3307844016044252173` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133726 has offset 1).

The definition of A133726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133726.P3307844016044252173

`∑{d}[n+1, A007427(#)*A256281((n+1)/#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133726

/-- `∑{d}[n+1, A007427(#)*A256281((n+1)/#)]` -/
def P3307844016044252173.Spec : Prop :=
  ∀ n, P3307844016044252173.a n = A133726 (n + 1)

theorem P3307844016044252173.correct : P3307844016044252173.Spec := by
  intro n
  simp only [A133726, Nat.add_sub_cancel]

end A133726

/-! ## A133726.P14215884924849930109

`A172474(A324919(n+1)+2)`
-/

namespace A133726.P14215884924849930109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A324919 (n + 1) + 2).toNat

end

end A133726.P14215884924849930109

namespace A133726

/-- `A172474(A324919(n+1)+2)` -/
def P14215884924849930109.Spec : Prop :=
  ∀ n, P14215884924849930109.a n = A133726 (n + 1)

end A133726

/-! ## A133726.P15158293563121783630

`A350969(A022726(n))`
-/

namespace A133726.P15158293563121783630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A022726 n).toNat

end

end A133726.P15158293563121783630

namespace A133726

/-- `A350969(A022726(n))` -/
def P15158293563121783630.Spec : Prop :=
  ∀ n, P15158293563121783630.a n = A133726 (n + 1)

end A133726

/-!
# A133727: A051731 * A007438 as a diagonalized matrix.

The programs for A133727, the canonical program `A133727.P10884205234152568613` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133727 has offset 1).

The definition of A133727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133727.P10884205234152568613

`∑{d}[A127093(n+1), A326828(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133727

/-- `∑{d}[A127093(n+1), A326828(#)]` -/
def P10884205234152568613.Spec : Prop :=
  ∀ n, P10884205234152568613.a n = A133727 (n + 1)

theorem P10884205234152568613.correct : P10884205234152568613.Spec := by
  intro n
  simp only [A133727, Nat.add_sub_cancel]

end A133727

/-! ## A133727.P5980467577542727124

`A102309(A127093(n+1))+A054522(n+1)`
-/

namespace A133727.P5980467577542727124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A127093 (n + 1)).toNat + A054522 (n + 1)

end

end A133727.P5980467577542727124

namespace A133727

/-- `A102309(A127093(n+1))+A054522(n+1)` -/
def P5980467577542727124.Spec : Prop :=
  ∀ n, P5980467577542727124.a n = A133727 (n + 1)

end A133727

/-! ## A133727.P10132519277471447915

`A007438(A002260(n+1))*A051731(n+1)`
-/

namespace A133727.P10132519277471447915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A133727.P10132519277471447915

namespace A133727

/-- `A007438(A002260(n+1))*A051731(n+1)` -/
def P10132519277471447915.Spec : Prop :=
  ∀ n, P10132519277471447915.a n = A133727 (n + 1)

end A133727

/-! ## A133727.P17825244346934585901

`A007438(A050873(n+1))*A051731(n+1)`
-/

namespace A133727.P17825244346934585901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A133727.P17825244346934585901

namespace A133727

/-- `A007438(A050873(n+1))*A051731(n+1)` -/
def P17825244346934585901.Spec : Prop :=
  ∀ n, P17825244346934585901.a n = A133727 (n + 1)

end A133727

/-! ## A133727.P9796948151856852169

`A007438(A123275(n+1))*A051731(n+1)`
-/

namespace A133727.P9796948151856852169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A133727.P9796948151856852169

namespace A133727

/-- `A007438(A123275(n+1))*A051731(n+1)` -/
def P9796948151856852169.Spec : Prop :=
  ∀ n, P9796948151856852169.a n = A133727 (n + 1)

end A133727

/-! ## A133727.P12076603075606155471

`A102309(A307662(n+1))+A054522(n+1)`
-/

namespace A133727.P12076603075606155471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (A307662 (n + 1)).toNat + A054522 (n + 1)

end

end A133727.P12076603075606155471

namespace A133727

/-- `A102309(A307662(n+1))+A054522(n+1)` -/
def P12076603075606155471.Spec : Prop :=
  ∀ n, P12076603075606155471.a n = A133727 (n + 1)

end A133727

/-! ## A133727.P12209950073355578766

`A007438(A307662(n+1))*A051731(n+1)`
-/

namespace A133727.P12209950073355578766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (A307662 (n + 1)).toNat * A051731 (n + 1)

end

end A133727.P12209950073355578766

namespace A133727

/-- `A007438(A307662(n+1))*A051731(n+1)` -/
def P12209950073355578766.Spec : Prop :=
  ∀ n, P12209950073355578766.a n = A133727 (n + 1)

end A133727

/-! ## A133727.P18216204492027016631

`A007438(A307662(n+1))%A048241(A143445(n+1))`
-/

namespace A133727.P18216204492027016631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007438 (A307662 (n + 1)).toNat) (A048241 (A143445 (n + 1)).toNat)

end

end A133727.P18216204492027016631

namespace A133727

/-- `A007438(A307662(n+1))%A048241(A143445(n+1))` -/
def P18216204492027016631.Spec : Prop :=
  ∀ n, P18216204492027016631.a n = A133727 (n + 1)

end A133727

/-! ## A133727.P16454624596952764632

`A007438(A112544(n+1))*A051731(n+1)`
-/

namespace A133727.P16454624596952764632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A133727.P16454624596952764632

namespace A133727

/-- `A007438(A112544(n+1))*A051731(n+1)` -/
def P16454624596952764632.Spec : Prop :=
  ∀ n, P16454624596952764632.a n = A133727 (n + 1)

end A133727

/-!
# A133728: A128174 * A127775.

The programs for A133728, the canonical program `A133728.P16225906611356734824` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133728 has offset 1).

The definition of A133728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133728.P11859479061617733080

`(2*(n-C(∑[char[∑[n]]], 2))+1)*(2-gcd(2, comp[∑[4*n]]))`
-/

namespace A133728.P11859479061617733080
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) * (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n) : ℤ))

end

end A133728.P11859479061617733080

namespace A133728

/-- `(2*(n-C(∑[char[∑[n]]], 2))+1)*(2-gcd(2, comp[∑[4*n]]))` -/
def P11859479061617733080.Spec : Prop :=
  ∀ n, P11859479061617733080.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P9318390062861637396

`comp[∑[4*n]]%2*A158405(n+1)`
-/

namespace A133728.P9318390062861637396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A158405 (n + 1)

end

end A133728.P9318390062861637396

namespace A133728

/-- `comp[∑[4*n]]%2*A158405(n+1)` -/
def P9318390062861637396.Spec : Prop :=
  ∀ n, P9318390062861637396.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P12235025927867812411

`A004273(A128179(n+1))`
-/

namespace A133728.P12235025927867812411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A128179 (n + 1)).toNat

end

end A133728.P12235025927867812411

namespace A133728

/-- `A004273(A128179(n+1))` -/
def P12235025927867812411.Spec : Prop :=
  ∀ n, P12235025927867812411.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P16225906611356734824

`A092092(A131226(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133728

/-- `A092092(A131226(n+1))` -/
def P16225906611356734824.Spec : Prop :=
  ∀ n, P16225906611356734824.a n = A133728 (n + 1)

theorem P16225906611356734824.correct : P16225906611356734824.Spec := by
  intro n
  simp only [A133728, Nat.add_sub_cancel]

end A133728

/-! ## A133728.P10290774413963321680

`A193356(A131225(n+1))`
-/

namespace A133728.P10290774413963321680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A131225 (n + 1)).toNat

end

end A133728.P10290774413963321680

namespace A133728

/-- `A193356(A131225(n+1))` -/
def P10290774413963321680.Spec : Prop :=
  ∀ n, P10290774413963321680.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P7565356102174595846

`A101447(n)%A174028(n)`
-/

namespace A133728.P7565356102174595846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101447 n) (A174028 n)

end

end A133728.P7565356102174595846

namespace A133728

/-- `A101447(n)%A174028(n)` -/
def P7565356102174595846.Spec : Prop :=
  ∀ n, P7565356102174595846.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P6414215604287544103

`A103218(n)%A174028(n)`
-/

namespace A133728.P6414215604287544103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103218 n) (A174028 n)

end

end A133728.P6414215604287544103

namespace A133728

/-- `A103218(n)%A174028(n)` -/
def P6414215604287544103.Spec : Prop :=
  ∀ n, P6414215604287544103.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P744682482698486447

`A087508(2*A131226(n+1))`
-/

namespace A133728.P744682482698486447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (2 * A131226 (n + 1)).toNat

end

end A133728.P744682482698486447

namespace A133728

/-- `A087508(2*A131226(n+1))` -/
def P744682482698486447.Spec : Prop :=
  ∀ n, P744682482698486447.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P9492267554568971574

`A095873(n+1)%A174028(n)`
-/

namespace A133728.P9492267554568971574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095873 (n + 1)) (A174028 n)

end

end A133728.P9492267554568971574

namespace A133728

/-- `A095873(n+1)%A174028(n)` -/
def P9492267554568971574.Spec : Prop :=
  ∀ n, P9492267554568971574.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P17958870800756850453

`lcm(A131225(n+1), A369736(n))`
-/

namespace A133728.P17958870800756850453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131225 (n + 1)) (A369736 n)

end

end A133728.P17958870800756850453

namespace A133728

/-- `lcm(A131225(n+1), A369736(n))` -/
def P17958870800756850453.Spec : Prop :=
  ∀ n, (P17958870800756850453.a n : ℤ) = A133728 (n + 1)

end A133728

/-! ## A133728.P664644263810554274

`A128174(n+1)*A131225(n+1)`
-/

namespace A133728.P664644263810554274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A131225 (n + 1)

end

end A133728.P664644263810554274

namespace A133728

/-- `A128174(n+1)*A131225(n+1)` -/
def P664644263810554274.Spec : Prop :=
  ∀ n, P664644263810554274.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P11021384345358267361

`A128174(n+1)*A158405(n+1)`
-/

namespace A133728.P11021384345358267361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A158405 (n + 1)

end

end A133728.P11021384345358267361

namespace A133728

/-- `A128174(n+1)*A158405(n+1)` -/
def P11021384345358267361.Spec : Prop :=
  ∀ n, P11021384345358267361.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P9195379910436422886

`(A002262(n)+A002260(n+1))*A128174(n+1)`
-/

namespace A133728.P9195379910436422886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002260 (n + 1)) * A128174 (n + 1)

end

end A133728.P9195379910436422886

namespace A133728

/-- `(A002262(n)+A002260(n+1))*A128174(n+1)` -/
def P9195379910436422886.Spec : Prop :=
  ∀ n, P9195379910436422886.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P11155120879723357307

`C(A158405(n+1), A158405(n+1)-A097807(n))`
-/

namespace A133728.P11155120879723357307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158405 (n + 1)).toNat (A158405 (n + 1) - A097807 n).toNat

end

end A133728.P11155120879723357307

namespace A133728

/-- `C(A158405(n+1), A158405(n+1)-A097807(n))` -/
def P11155120879723357307.Spec : Prop :=
  ∀ n, (P11155120879723357307.a n : ℤ) = A133728 (n + 1)

end A133728

/-! ## A133728.P8513022727067511929

`A128174(n+1)/A128175(n+1)*A133729(n+1)`
-/

namespace A133728.P8513022727067511929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128174 (n + 1) : ℚ) / (A128175 (n + 1) : ℚ) * (A133729 (n + 1) : ℚ)

end

end A133728.P8513022727067511929

namespace A133728

/-- `A128174(n+1)/A128175(n+1)*A133729(n+1)` -/
def P8513022727067511929.Spec : Prop :=
  ∀ n, P8513022727067511929.a n = (A133728 (n + 1) : ℚ)

end A133728

/-! ## A133728.P929520246599655325

`A002260(n+1)+A128221(n+1)-A128221(n+2)`
-/

namespace A133728.P929520246599655325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A128221 (n + 1) - A128221 (n + 2))

end

end A133728.P929520246599655325

namespace A133728

/-- `A002260(n+1)+A128221(n+1)-A128221(n+2)` -/
def P929520246599655325.Spec : Prop :=
  ∀ n, P929520246599655325.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P8507166130184060766

`A002260(n+1)+A209279(n+1)-A209278(n+1)`
-/

namespace A133728.P8507166130184060766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A209279 (n + 1) - A209278 (n + 1))

end

end A133728.P8507166130184060766

namespace A133728

/-- `A002260(n+1)+A209279(n+1)-A209278(n+1)` -/
def P8507166130184060766.Spec : Prop :=
  ∀ n, P8507166130184060766.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P1463799162662946559

`A131225(n+1)%A225750(n)`
-/

namespace A133728.P1463799162662946559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131225 (n + 1)) (A225750 n)

end

end A133728.P1463799162662946559

namespace A133728

/-- `A131225(n+1)%A225750(n)` -/
def P1463799162662946559.Spec : Prop :=
  ∀ n, P1463799162662946559.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P6068765063540651103

`A158405(n+1)%A225750(n)`
-/

namespace A133728.P6068765063540651103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158405 (n + 1)) (A225750 n)

end

end A133728.P6068765063540651103

namespace A133728

/-- `A158405(n+1)%A225750(n)` -/
def P6068765063540651103.Spec : Prop :=
  ∀ n, P6068765063540651103.a n = A133728 (n + 1)

end A133728

/-! ## A133728.P5615028099083299244

`A072738(2*A128179(n+1)²)`
-/

namespace A133728.P5615028099083299244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072738 (2 * A128179 (n + 1) ^ 2).toNat

end

end A133728.P5615028099083299244

namespace A133728

/-- `A072738(2*A128179(n+1)²)` -/
def P5615028099083299244.Spec : Prop :=
  ∀ n, P5615028099083299244.a n = A133728 (n + 1)

end A133728

/-!
# A133729: A007318 * A133728.

The programs for A133729, the canonical program `A133729.P396639260184250691` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133729 has offset 1).

The definition of A133729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133729.P396639260184250691

`A128175(n+1)*A158405(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A133729

/-- `A128175(n+1)*A158405(n+1)` -/
def P396639260184250691.Spec : Prop :=
  ∀ n, P396639260184250691.a n = A133729 (n + 1)

theorem P396639260184250691.correct : P396639260184250691.Spec := by
  intro n
  simp only [A133729, Nat.add_sub_cancel]

end A133729

/-! ## A133729.P11747140229124171188

`2*A128181(n+1)-A128175(n+1)`
-/

namespace A133729.P11747140229124171188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128181 (n + 1) - A128175 (n + 1)

end

end A133729.P11747140229124171188

namespace A133729

/-- `2*A128181(n+1)-A128175(n+1)` -/
def P11747140229124171188.Spec : Prop :=
  ∀ n, P11747140229124171188.a n = A133729 (n + 1)

end A133729

/-! ## A133729.P15965094381224189705

`(2*A002262(n)+1)*A128175(n+1)`
-/

namespace A133729.P15965094381224189705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002262 n + 1) * A128175 (n + 1)

end

end A133729.P15965094381224189705

namespace A133729

/-- `(2*A002262(n)+1)*A128175(n+1)` -/
def P15965094381224189705.Spec : Prop :=
  ∀ n, P15965094381224189705.a n = A133729 (n + 1)

end A133729

/-! ## A133729.P3627412082196524840

`(2*A002260(n+1)-1)*A128175(n+1)`
-/

namespace A133729.P3627412082196524840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002260 (n + 1) - 1) * A128175 (n + 1)

end

end A133729.P3627412082196524840

namespace A133729

/-- `(2*A002260(n+1)-1)*A128175(n+1)` -/
def P3627412082196524840.Spec : Prop :=
  ∀ n, P3627412082196524840.a n = A133729 (n + 1)

end A133729

/-! ## A133729.P15459217412215264755

`A000005(A059268(n)²)*A128175(n+1)`
-/

namespace A133729.P15459217412215264755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n ^ 2).toNat * A128175 (n + 1)

end

end A133729.P15459217412215264755

namespace A133729

/-- `A000005(A059268(n)²)*A128175(n+1)` -/
def P15459217412215264755.Spec : Prop :=
  ∀ n, P15459217412215264755.a n = A133729 (n + 1)

end A133729

/-!
# A133730: Alternating sign sequence A033999 interleaved with Jacobsthal sequence A001045.

The programs for A133730, the canonical program `A133730.P13989920916846744840` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133730 has offset 0).

The definition of A133730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133684, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133730.P13989920916846744840

`A133684(n+1)-A133684(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133730

/-- `A133684(n+1)-A133684(n)` -/
def P13989920916846744840.Spec : Prop :=
  ∀ n, P13989920916846744840.a n = A133730 n

theorem P13989920916846744840.correct : P13989920916846744840.Spec := by
  intro n
  simp only [A133730]

end A133730

/-! ## A133730.P10517963274127364641

`a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`
-/

namespace A133730.P10517963274127364641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n a =>
  a (n - 2) + 2 * a (n - 4)

end

end A133730.P10517963274127364641

namespace A133730

/-- `a(n-2)+2*a(n-4)` -/
def P10517963274127364641.Spec : Prop :=
  ∀ n, P10517963274127364641.a n = A133730 n

end A133730

/-! ## A133730.P14530057464643871654

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`
-/

namespace A133730.P14530057464643871654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A133730.P14530057464643871654

namespace A133730

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P14530057464643871654.Spec : Prop :=
  ∀ n, P14530057464643871654.a n = A133730 n

end A133730

/-! ## A133730.P7248491653308221613

`A141416(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A133730.P7248491653308221613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141416 (n - 1) + a (n - 1)

end

end A133730.P7248491653308221613

namespace A133730

/-- `A141416(n-1)+a(n-1)` -/
def P7248491653308221613.Spec : Prop :=
  ∀ n, P7248491653308221613.a n = A133730 n

end A133730

/-! ## A133730.P675324181354593523

`∑[A141416(n)]+1-A141416(n)`
-/

namespace A133730.P675324181354593523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A141416 n)

end

end A133730.P675324181354593523

namespace A133730

/-- `∑[A141416(n)]+1-A141416(n)` -/
def P675324181354593523.Spec : Prop :=
  ∀ n, P675324181354593523.a n = A133730 n

end A133730

/-! ## A133730.P14171856291000690596

`Δ[A133684(n)]`
-/

namespace A133730.P14171856291000690596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133730.P14171856291000690596

namespace A133730

/-- `Δ[A133684(n)]` -/
def P14171856291000690596.Spec : Prop :=
  ∀ n, P14171856291000690596.a n = A133730 n

theorem P14171856291000690596.correct : P14171856291000690596.Spec := by
  intro n
  simp only [A133730, Nat.add_sub_cancel, A133730.P14171856291000690596.f1, A133730.P14171856291000690596.a, A133730.P13989920916846744840.a, SequenceMachineLib.memo_apply]

end A133730

/-! ## A133730.P13800438558728375202

`(A230096(n)-Δ[A230096(n)])/2`
-/

namespace A133730.P13800438558728375202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230096 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A133730.P13800438558728375202

namespace A133730

/-- `(A230096(n)-Δ[A230096(n)])/2` -/
def P13800438558728375202.Spec : Prop :=
  ∀ n, P13800438558728375202.a n = (A133730 n : ℚ)

end A133730

/-! ## A133730.P12914979301045327683

`A016116(n)+A056594(n)-A112387(n)`
-/

namespace A133730.P12914979301045327683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A056594 n - A112387 n)

end

end A133730.P12914979301045327683

namespace A133730

/-- `A016116(n)+A056594(n)-A112387(n)` -/
def P12914979301045327683.Spec : Prop :=
  ∀ n, P12914979301045327683.a n = A133730 n

end A133730

/-! ## A133730.P7417224138665970115

`Δ[A135318(n)-A230096(n)]`
-/

namespace A133730.P7417224138665970115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n - A230096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133730.P7417224138665970115

namespace A133730

/-- `Δ[A135318(n)-A230096(n)]` -/
def P7417224138665970115.Spec : Prop :=
  ∀ n, P7417224138665970115.a n = A133730 n

end A133730

/-! ## A133730.P79659444412801969

`A135318(n+1)+A056594(n)-A016116(n)`
-/

namespace A133730.P79659444412801969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 1) + (A056594 n - A016116 n)

end

end A133730.P79659444412801969

namespace A133730

/-- `A135318(n+1)+A056594(n)-A016116(n)` -/
def P79659444412801969.Spec : Prop :=
  ∀ n, P79659444412801969.a n = A133730 n

end A133730

/-! ## A133730.P5115699178124697319

`A135318(n)+A230096(n)-A135318(n+1)`
-/

namespace A133730.P5115699178124697319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n + (A230096 n - A135318 (n + 1))

end

end A133730.P5115699178124697319

namespace A133730

/-- `A135318(n)+A230096(n)-A135318(n+1)` -/
def P5115699178124697319.Spec : Prop :=
  ∀ n, P5115699178124697319.a n = A133730 n

end A133730

/-! ## A133730.P17735603348041753683

`A112387(n+1)+A016116(n)-A356050(n+1)`
-/

namespace A133730.P17735603348041753683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (n + 1) + (A016116 n - A356050 (n + 1))

end

end A133730.P17735603348041753683

namespace A133730

/-- `A112387(n+1)+A016116(n)-A356050(n+1)` -/
def P17735603348041753683.Spec : Prop :=
  ∀ n, P17735603348041753683.a n = A133730 n

end A133730

/-! ## A133730.P11712804432568679327

`A016116(n+1)+A135318(n)-A356050(n+1)`
-/

namespace A133730.P11712804432568679327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A135318 n - A356050 (n + 1))

end

end A133730.P11712804432568679327

namespace A133730

/-- `A016116(n+1)+A135318(n)-A356050(n+1)` -/
def P11712804432568679327.Spec : Prop :=
  ∀ n, P11712804432568679327.a n = A133730 n

end A133730

/-!
# A133732: A054525 * A000041.

The programs for A133732, there is no canonical definition to state claims against.
-/

/-! ## A133732.P17322263175665597935

`∑{d}[n+1, A000041(#-1)*A008683((n+1)/#)]`
-/

namespace A133732.P17322263175665597935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133732.P17322263175665597935

/-! ## A133732.P15728297014017344808

`A137585(∑[n]+1)`
-/

namespace A133732.P15728297014017344808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A133732.P15728297014017344808

/-! ## A133732.P9958900478973370398

`((-1)^n)²*A137585(A000124(n))`
-/

namespace A133732.P9958900478973370398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A137585 (A000124 n).toNat

end

end A133732.P9958900478973370398

/-! ## A133732.P17364894510261521023

`A137585(A000124(n))+char[A017241(n)]`
-/

namespace A133732.P17364894510261521023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017241 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A133732.P17364894510261521023

/-! ## A133732.P1763979252757832786

`A137585(A000124(n))+A000007(n+1)`
-/

namespace A133732.P1763979252757832786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (A000124 n).toNat + A000007 (n + 1)

end

end A133732.P1763979252757832786

/-! ## A133732.P15919175777537105221

`A137585(A000124(n))%Δ[A001845(n)²]`
-/

namespace A133732.P15919175777537105221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137585 (A000124 n).toNat) (f1 (n + 1) - f1 n)

end

end A133732.P15919175777537105221

/-! ## A133732.P3460969649039222147

`A137585(A000124(n))+char[A048051(n+1)]`
-/

namespace A133732.P3460969649039222147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048051 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A133732.P3460969649039222147

/-! ## A133732.P9921660887408667451

`A137585(A000124(n))+char[A055601(n+3)]`
-/

namespace A133732.P9921660887408667451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055601 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A133732.P9921660887408667451

/-! ## A133732.P12464260210708094173

`A137585(A000124(n))+A046660(A027697(n+1))`
-/

namespace A133732.P12464260210708094173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (A000124 n).toNat + A046660 (A027697 (n + 1)).toNat

end

end A133732.P12464260210708094173

/-! ## A133732.P12117015514084377050

`A137585(A000124(n))+A073097(A044972(n+1))`
-/

namespace A133732.P12117015514084377050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (A000124 n).toNat + A073097 (A044972 (n + 1)).toNat

end

end A133732.P12117015514084377050

/-! ## A133732.P7009856117567936071

`A137585(A000124(n))+A073097(A000005(3*n+5))`
-/

namespace A133732.P7009856117567936071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137585 (A000124 n).toNat + A073097 (A000005 (3 * n + 5)).toNat

end

end A133732.P7009856117567936071

/-!
# A133733: Column 6 of triangle in A133721.

The programs for A133733, there is no canonical definition to state claims against.
-/

/-! ## A133733.P13260443138775706197

`A058178(A208963(n+1))`
-/

namespace A133733.P13260443138775706197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058178 (A208963 (n + 1)).toNat

end

end A133733.P13260443138775706197

/-! ## A133733.P14885253952279981105

`A299203(A001592(n)+1)`
-/

namespace A133733.P14885253952279981105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299203 (A001592 n + 1).toNat

end

end A133733.P14885253952279981105

/-! ## A133733.P17954324841936019959

`A037452(A288682(n+1))`
-/

namespace A133733.P17954324841936019959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037452 (A288682 (n + 1)).toNat

end

end A133733.P17954324841936019959

/-! ## A133733.P4238916795628953770

`A134404(A081164(n)+2)`
-/

namespace A133733.P4238916795628953770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134404 (A081164 n + 2).toNat

end

end A133733.P4238916795628953770

/-! ## A133733.P17770867832650089942

`A035516(A245792(n+2))`
-/

namespace A133733.P17770867832650089942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (A245792 (n + 2)).toNat

end

end A133733.P17770867832650089942

/-!
# A133734: A000012 * A002865 as a diagonalized matrix.

The programs for A133734, there is no canonical definition to state claims against.
-/

/-! ## A133734.P5228838610729689463

`A116598(∑[2*n]%comp[∑[n]])`
-/

namespace A133734.P5228838610729689463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A133734.P5228838610729689463

/-! ## A133734.P2680920595551630293

`A002865(n-C(∑[char[∑[n]]], 2))`
-/

namespace A133734.P2680920595551630293
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A133734.P2680920595551630293

/-! ## A133734.P3698669602020783223

`A116598(∑[char[∑[n]]]²-(n+1))`
-/

namespace A133734.P3698669602020783223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A133734.P3698669602020783223

/-! ## A133734.P5314141626988971824

`A002865(A002262(n))`
-/

namespace A133734.P5314141626988971824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A002262 n).toNat

end

end A133734.P5314141626988971824

/-! ## A133734.P18423936896859208681

`A002865(sqrt(A143844(n)))`
-/

namespace A133734.P18423936896859208681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat

end

end A133734.P18423936896859208681

/-! ## A133734.P7317056279579798322

`A002865(A002260(n+1)-1)`
-/

namespace A133734.P7317056279579798322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A002260 (n + 1) - 1).toNat

end

end A133734.P7317056279579798322

/-! ## A133734.P9513582873987050653

`A085811(A002260(n+1)+2)`
-/

namespace A133734.P9513582873987050653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A002260 (n + 1) + 2).toNat

end

end A133734.P9513582873987050653

/-! ## A133734.P16170391296021607090

`A133735(n)/A004736(n+1)`
-/

namespace A133734.P16170391296021607090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133735 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A133734.P16170391296021607090

/-! ## A133734.P6625162409389653804

`A232697(A002260(n+1)-1)-A057427(A002260(n+1)-1)`
-/

namespace A133734.P6625162409389653804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (A002260 (n + 1) - 1).toNat - A057427 (A002260 (n + 1) - 1).toNat

end

end A133734.P6625162409389653804

/-! ## A133734.P9215381204750296413

`A060244(A112367(n))`
-/

namespace A133734.P9215381204750296413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060244 (A112367 n).toNat

end

end A133734.P9215381204750296413

/-! ## A133734.P17242569303848244001

`A333925(A245300(n))`
-/

namespace A133734.P17242569303848244001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A245300 n).toNat

end

end A133734.P17242569303848244001

/-! ## A133734.P15033364369156214195

`A333925(A292564(n))`
-/

namespace A133734.P15033364369156214195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A292564 n).toNat

end

end A133734.P15033364369156214195

/-! ## A133734.P12658723211309536519

`A222730(2*A002260(n+1)²)`
-/

namespace A133734.P12658723211309536519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (2 * A002260 (n + 1) ^ 2).toNat

end

end A133734.P12658723211309536519

/-! ## A133734.P11371038405753920139

`A325045(2^sqrt(A143844(n)))`
-/

namespace A133734.P11371038405753920139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325045 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.sqrt (A143844 n : ℝ)))).toNat

end

end A133734.P11371038405753920139

/-! ## A133734.P2879073909839253064

`A325045(2^(A002260(n+1)-1))`
-/

namespace A133734.P2879073909839253064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325045 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ))).toNat

end

end A133734.P2879073909839253064

/-! ## A133734.P4991356217686535848

`A063995(A004201(n+1)+n²)`
-/

namespace A133734.P4991356217686535848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A004201 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A133734.P4991356217686535848

/-! ## A133734.P17141999682549024376

`A182703(A000217(n+1)-A002262(n))`
-/

namespace A133734.P17141999682549024376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (A000217 (n + 1) - A002262 n).toNat

end

end A133734.P17141999682549024376

/-! ## A133734.P8609621597415172965

`A050370(A059268(n))`
-/

namespace A133734.P8609621597415172965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A059268 n).toNat

end

end A133734.P8609621597415172965

/-!
# A133735: A000012 * A133734.

The programs for A133735, there is no canonical definition to state claims against.
-/

/-! ## A133735.P1934901654066476686

`(C(comp[∑[n]]-n, 2)-n)*A133734(n)`
-/

namespace A133735.P1934901654066476686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A133734 n

end

end A133735.P1934901654066476686

/-! ## A133735.P7274049999960957009

`(C(comp[∑[n]]-n, 2)-n)*A002865(n-C(∑[char[∑[n]]], 2))`
-/

namespace A133735.P7274049999960957009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A002865 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2)

end

end A133735.P7274049999960957009

/-! ## A133735.P11221809908046666748

`A004736(n+1)*A133734(n)`
-/

namespace A133735.P11221809908046666748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A133734 n

end

end A133735.P11221809908046666748

/-! ## A133735.P2364871441241753624

`(A025581(n)+1)*A133734(n)`
-/

namespace A133735.P2364871441241753624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A133734 n

end

end A133735.P2364871441241753624

/-! ## A133735.P17711498028605228335

`sqrt(A055461(n+1))*A133734(n)`
-/

namespace A133735.P17711498028605228335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A133734 n : ℝ)

end

end A133735.P17711498028605228335

/-! ## A133735.P13995239725683485037

`A002865(A002262(n))*A004736(n+1)`
-/

namespace A133735.P13995239725683485037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A002262 n).toNat * A004736 (n + 1)

end

end A133735.P13995239725683485037

/-! ## A133735.P1817135675030311529

`A004736(n+1)*A116598(A061579(n))`
-/

namespace A133735.P1817135675030311529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A116598 (A061579 n).toNat

end

end A133735.P1817135675030311529

/-! ## A133735.P10253720549708690929

`A004736(n+1)*A060244(A112367(n))`
-/

namespace A133735.P10253720549708690929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A060244 (A112367 n).toNat

end

end A133735.P10253720549708690929

/-! ## A133735.P18181708366919854841

`A000005(A130321(n))*A133734(n)`
-/

namespace A133735.P18181708366919854841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A133734 n

end

end A133735.P18181708366919854841

/-! ## A133735.P12633432648104351957

`(C(comp[∑[n]]-n, 2)-n)*A050370(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A133735.P12633432648104351957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A050370 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat

end

end A133735.P12633432648104351957

/-!
# A133736: Number of graphs on n unlabeled nodes that have an Eulerian cycle, i.e., a cycle that goes through every edge in the graph exactly once.

The programs for A133736, there is no canonical definition to state claims against.
-/

/-! ## A133736.P3017452259978189779

`∑[A003049(n+1)]`
-/

namespace A133736.P3017452259978189779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133736.P3017452259978189779

/-! ## A133736.P6137768546538987832

`A003049(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A133736.P6137768546538987832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003049 (n + 1) + a (A023443 n).toNat

end

end A133736.P6137768546538987832

/-! ## A133736.P12820974964216880435

`a(n-1)+A003049(n+1)+val(A304711(n+1), 39)` with `a(0)=1`
-/

namespace A133736.P12820974964216880435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A003049 (n + 1) + (SequenceMachineLib.valuation (A304711 (n + 1)).toNat 39 : ℤ))

end

end A133736.P12820974964216880435

/-! ## A133736.P3577654150800968785

`a(n-1)+A007318(A051343(n))*A003049(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A133736.P3577654150800968785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A007318 (A051343 n).toNat * A003049 (n + 1)

end

end A133736.P3577654150800968785

/-! ## A133736.P13837359399367064471

`a(n-1)+A014963(A164114(n+1))*A003049(n+1)` with `a(0)=1`
-/

namespace A133736.P13837359399367064471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A014963 (A164114 (n + 1)).toNat * A003049 (n + 1)

end

end A133736.P13837359399367064471

/-!
# A133737: A000012 * A130162.

The programs for A133737, there is no canonical definition to state claims against.
-/

/-! ## A133737.P12058065935187459424

`A000837(A002260(n+1))*A010766(n+1)`
-/

namespace A133737.P12058065935187459424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A002260 (n + 1)).toNat * A010766 (n + 1)

end

end A133737.P12058065935187459424

/-! ## A133737.P14079823530244697065

`A000837(sqrt(A133819(n+1)))*A010766(n+1)`
-/

namespace A133737.P14079823530244697065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A010766 (n + 1)

end

end A133737.P14079823530244697065

/-! ## A133737.P17764965712734678545

`A010766(n+1)*A110141(A233543(n))`
-/

namespace A133737.P17764965712734678545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A110141 (A233543 n).toNat

end

end A133737.P17764965712734678545

/-! ## A133737.P12968140237487432437

`A352825(lcm(5, A078840(n)))`
-/

namespace A133737.P12968140237487432437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (Int.lcm 5 (A078840 n))

end

end A133737.P12968140237487432437

/-! ## A133737.P5772407524822298260

`A282904(A025703(n+1))`
-/

namespace A133737.P5772407524822298260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282904 (A025703 (n + 1)).toNat

end

end A133737.P5772407524822298260

/-!
# A133739: Expansion of q * (psi(q^6) / psi(q^3))^3 * phi(q)^5 / psi(q) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A133739, there is no canonical definition to state claims against.
-/

/-! ## A133739.P17051376882971743662

`A033999(n)*A329651(n+1)`
-/

namespace A133739.P17051376882971743662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A329651 (n + 1)

end

end A133739.P17051376882971743662

/-! ## A133739.P6496733536335027964

`∑[A280560(n)]*A329651(n+1)`
-/

namespace A133739.P6496733536335027964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A329651 (n + 1)

end

end A133739.P6496733536335027964

/-! ## A133739.P1293009933524808788

`(1-6/2)/A280560(n+1)*A329651(n+1)`
-/

namespace A133739.P1293009933524808788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A329651 (n + 1) : ℚ)

end

end A133739.P1293009933524808788

/-! ## A133739.P13083600394054323336

`A329651(n+1)/A033999(n+4)`
-/

namespace A133739.P13083600394054323336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329651 (n + 1) : ℚ) / (A033999 (n + 4) : ℚ)

end

end A133739.P13083600394054323336

/-! ## A133739.P3388128685467499138

`A100051(3*n+1)*A329651(n+1)`
-/

namespace A133739.P3388128685467499138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (3 * n + 1) * A329651 (n + 1)

end

end A133739.P3388128685467499138

/-!
# A133740: Primes which are the sum of four positive 4th powers.

The programs for A133740, there is no canonical definition to state claims against.
-/

/-! ## A133740.P5967513798291001177

`p?[A003338(n+1)]`
-/

namespace A133740.P5967513798291001177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133740.P5967513798291001177

/-! ## A133740.P14682074181739887685

`p?[record[A003338(A117910(n))]]`
-/

namespace A133740.P14682074181739887685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003338 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133740.P14682074181739887685

/-! ## A133740.P1473936241169183296

`p?[record[A003338(A133310(n))]]`
-/

namespace A133740.P1473936241169183296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003338 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133740.P1473936241169183296

/-! ## A133740.P4167602620268591830

`record[A020639(A003338(n+2))]`
-/

namespace A133740.P4167602620268591830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003338 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133740.P4167602620268591830

/-! ## A133740.P15664442164071965309

`filter[A003338(n+1), A010051(#)]`
-/

namespace A133740.P15664442164071965309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A133740.P15664442164071965309

/-!
# A133742: Decimal expansion of cap height at which the area of a circular segment equals 1/4 that of the entire circle.

The programs for A133742, there is no canonical definition to state claims against.
-/

/-! ## A133742.P4304235059352983680

`9-A086751(n)`
-/

namespace A133742.P4304235059352983680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A086751 n

end

end A133742.P4304235059352983680

/-!
# A133743: a(n) is the smallest positive square such that pairwise sums of distinct elements are all distinct.

The programs for A133743, there is no canonical definition to state claims against.
-/

/-! ## A133743.P13759570763278999232

`A062295(n+1)-A133744(n+1)`
-/

namespace A133743.P13759570763278999232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062295 (n + 1) - A133744 (n + 1)

end

end A133743.P13759570763278999232

/-! ## A133743.P17196392074420862042

`A062295(n+1)+A057428(n)*A133744(n+1)`
-/

namespace A133743.P17196392074420862042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062295 (n + 1) + A057428 n * A133744 (n + 1)

end

end A133743.P17196392074420862042

/-! ## A133743.P15747506613371223360

`A062295(n+1)+A133744(n+1)*A153881(n+1)`
-/

namespace A133743.P15747506613371223360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062295 (n + 1) + A133744 (n + 1) * A153881 (n + 1)

end

end A133743.P15747506613371223360

/-! ## A133743.P8237400454837753205

`∑[A162319(A049934(n+1))]²`
-/

namespace A133743.P8237400454837753205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162319 (A049934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133743.P8237400454837753205

/-! ## A133743.P1886252966262938448

`record[A321856(A291642(n+1))²]`
-/

namespace A133743.P1886252966262938448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A291642 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133743.P1886252966262938448

/-!
# A133744: a(n) = A062295(n) - A133743(n).

The programs for A133744, there is no canonical definition to state claims against.
-/

/-! ## A133744.P17712921900039714784

`A062295(n+1)-A133743(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133744.P17712921900039714784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062295 (n + 1) - A133743 (n + 1)

end

end A133744.P17712921900039714784

/-! ## A133744.P4436232165838296340

`A062295(n+1)-∑[A162319(A049934(n+1))]²`
-/

namespace A133744.P4436232165838296340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162319 (A049934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062295 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133744.P4436232165838296340

/-! ## A133744.P1366166502465654042

`lt[A301505(n)², A210941(n+1)]²-A133743(n+1)`
-/

namespace A133744.P1366166502465654042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301505 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2 : ℤ) - A133743 (n + 1)

end

end A133744.P1366166502465654042

/-!
# A133745: Numbers n such that A133744(n) = 0.

The programs for A133745, there is no canonical definition to state claims against.
-/

/-! ## A133745.P4056180011361665036

`record[n+1-abs(A133744(n+1))]`
-/

namespace A133745.P4056180011361665036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A133744 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133745.P4056180011361665036

/-! ## A133745.P13837677169188874841

`eq[A000007(n), A133744(A028310(n))]`
-/

namespace A133745.P13837677169188874841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133744 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133745.P13837677169188874841

/-! ## A133745.P12148829295013447441

`eq[A000038(n), A133744(A028310(n))]`
-/

namespace A133745.P12148829295013447441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133744 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133745.P12148829295013447441

/-! ## A133745.P2968524342009491461

`eq[A000007(n), A133744(A000007(n)+n)]`
-/

namespace A133745.P2968524342009491461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133744 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133745.P2968524342009491461

/-! ## A133745.P15587186088108430417

`eq[A000038(n), A133744(A000038(n)+n)]`
-/

namespace A133745.P15587186088108430417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133744 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133745.P15587186088108430417

/-!
# A133750: Primes which are the sum of five positive 4th powers.

The programs for A133750, there is no canonical definition to state claims against.
-/

/-! ## A133750.P7658499203865186844

`p?[A003339(n+1)]`
-/

namespace A133750.P7658499203865186844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133750.P7658499203865186844

/-! ## A133750.P9917761894716486924

`record[p?[A003339(A236858(n))]]`
-/

namespace A133750.P9917761894716486924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133750.P9917761894716486924

/-! ## A133750.P8485313569920760367

`record[p?[A003339(A324346(n))]]`
-/

namespace A133750.P8485313569920760367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133750.P8485313569920760367

/-! ## A133750.P10375493109531143784

`∩[A000040(n+1), A003339(n+1)]`
-/

namespace A133750.P10375493109531143784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133750.P10375493109531143784

/-! ## A133750.P1623280858591795636

`∩[A003339(n+1), A006005(n+1)]`
-/

namespace A133750.P1623280858591795636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133750.P1623280858591795636

/-!
# A133751: a(n) = 2*(2+n)! + 2^n.

The programs for A133751, the canonical program `A133751.P15583885307968113491` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133751 has offset 0).

The definition of A133751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(2+n)!+2^n` (program `A133751.P15583885307968113491`, by `A133751.P15583885307968113491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133751.P15583885307968113491

`2*(2+n)!+2^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A133751

/-- `2*(2+n)!+2^n` -/
def P15583885307968113491.Spec : Prop :=
  ∀ n, (P15583885307968113491.a n : ℤ) = A133751 n

theorem P15583885307968113491.correct : P15583885307968113491.Spec := by
  intro n
  simp only [A133751]

end A133751

/-! ## A133751.P3241475382957199984

`2^n+2*∏[n+2]`
-/

namespace A133751.P3241475382957199984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A133751.P3241475382957199984

namespace A133751

/-- `2^n+2*∏[n+2]` -/
def P3241475382957199984.Spec : Prop :=
  ∀ n, (P3241475382957199984.a n : ℤ) = A133751 n

end A133751

/-! ## A133751.P14304116373128913422

`A133756(3*n)`
-/

namespace A133751.P14304116373128913422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133756 (3 * n)

end

end A133751.P14304116373128913422

namespace A133751

/-- `A133756(3*n)` -/
def P14304116373128913422.Spec : Prop :=
  ∀ n, P14304116373128913422.a n = A133751 n

end A133751

/-! ## A133751.P16356340880455349025

`or(A000007(n), A133756(A008585(n)))`
-/

namespace A133751.P16356340880455349025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A133756 (A008585 n).toNat)

end

end A133751.P16356340880455349025

namespace A133751

/-- `or(A000007(n), A133756(A008585(n)))` -/
def P16356340880455349025.Spec : Prop :=
  ∀ n, P16356340880455349025.a n = A133751 n

end A133751

/-! ## A133751.P14320496559428635041

`A133756(A008585(n))/A003557(A000040(n+1))`
-/

namespace A133751.P14320496559428635041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133756 (A008585 n).toNat : ℚ) / (A003557 (A000040 (n + 1)).toNat : ℚ)

end

end A133751.P14320496559428635041

namespace A133751

/-- `A133756(A008585(n))/A003557(A000040(n+1))` -/
def P14320496559428635041.Spec : Prop :=
  ∀ n, P14320496559428635041.a n = (A133751 n : ℚ)

end A133751

/-!
# A133752: a(n) = 256^n.

The programs for A133752, the canonical program `A133752.P15265425565348229813` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133752 has offset 0).

The definition of A133752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `256^n` (program `A133752.P15265425565348229813`, by `A133752.P15265425565348229813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133752.P15265425565348229813

`256^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A133752

/-- `256^n` -/
def P15265425565348229813.Spec : Prop :=
  ∀ n, (P15265425565348229813.a n : ℤ) = A133752 n

theorem P15265425565348229813.correct : P15265425565348229813.Spec := by
  intro n
  simp only [A133752]

end A133752

/-!
# A133753: Larger of emirps (pairs) with only prime digits (A128388).

The programs for A133753, there is no canonical definition to state claims against.
-/

/-! ## A133753.P14729671213308492915

`∩[A019546(n+1), A109309(n+1)]`
-/

namespace A133753.P14729671213308492915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133753.P14729671213308492915

/-! ## A133753.P12468487442641203628

`∩[A062087(n+1), A109309(n+1)]`
-/

namespace A133753.P12468487442641203628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133753.P12468487442641203628

/-! ## A133753.P6208395075159074381

`∩[A109309(n+1), A128388(n+1)]`
-/

namespace A133753.P6208395075159074381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133753.P6208395075159074381

/-! ## A133753.P6195431879701375455

`∩[A109309(n+1), A160748(n+1)]`
-/

namespace A133753.P6195431879701375455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133753.P6195431879701375455

/-!
# A133754: a(n) = n^5 - n^3.

The programs for A133754, the canonical program `A133754.P2736997531486272654` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133754 has offset 0).

The definition of A133754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^3` (program `A133754.P2736997531486272654`, by `A133754.P2736997531486272654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133754.P2736997531486272654

`n^5-n^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A133754

/-- `n^5-n^3` -/
def P2736997531486272654.Spec : Prop :=
  ∀ n, P2736997531486272654.a n = A133754 n

theorem P2736997531486272654.correct : P2736997531486272654.Spec := by
  intro n
  simp only [A133754]

end A133754

/-! ## A133754.P16473585742573078153

`2*n*C(n², 2)`
-/

namespace A133754.P16473585742573078153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.choose (n ^ 2) 2)

end

end A133754.P16473585742573078153

namespace A133754

/-- `2*n*C(n², 2)` -/
def P16473585742573078153.Spec : Prop :=
  ∀ n, (P16473585742573078153.a n : ℤ) = A133754 n

end A133754

/-! ## A133754.P1518844709438532407

`lcm(1-n², n*n²)`
-/

namespace A133754.P1518844709438532407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n ^ 2 : ℤ)) (n * n ^ 2 : ℤ)

end

end A133754.P1518844709438532407

namespace A133754

/-- `lcm(1-n², n*n²)` -/
def P1518844709438532407.Spec : Prop :=
  ∀ n, (P1518844709438532407.a n : ℤ) = A133754 n

end A133754

/-! ## A133754.P8580171112226372472

`3*n*∑[C(2*n, 3)]`
-/

namespace A133754.P8580171112226372472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A133754.P8580171112226372472

namespace A133754

/-- `3*n*∑[C(2*n, 3)]` -/
def P8580171112226372472.Spec : Prop :=
  ∀ n, (P8580171112226372472.a n : ℤ) = A133754 n

end A133754

/-! ## A133754.P10641122641564499774

`2*n*lcm(n, n-1)*∑[n]`
-/

namespace A133754.P10641122641564499774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (Int.lcm (n : ℤ) ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A133754.P10641122641564499774

namespace A133754

/-- `2*n*lcm(n, n-1)*∑[n]` -/
def P10641122641564499774.Spec : Prop :=
  ∀ n, (P10641122641564499774.a n : ℤ) = A133754 n

end A133754

/-! ## A133754.P15624194039918007930

`2*n*C(n*(n+1)-n, 2)`
-/

namespace A133754.P15624194039918007930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose ((n * (n + 1) : ℤ) - (n : ℤ)).toNat 2

end

end A133754.P15624194039918007930

namespace A133754

/-- `2*n*C(n*(n+1)-n, 2)` -/
def P15624194039918007930.Spec : Prop :=
  ∀ n, (P15624194039918007930.a n : ℤ) = A133754 n

end A133754

/-! ## A133754.P9717771347314845310

`2*n*(n+1)*n*C(n, 2)`
-/

namespace A133754.P9717771347314845310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((n + 1) * (n * Nat.choose n 2))

end

end A133754.P9717771347314845310

namespace A133754

/-- `2*n*(n+1)*n*C(n, 2)` -/
def P9717771347314845310.Spec : Prop :=
  ∀ n, (P9717771347314845310.a n : ℤ) = A133754 n

end A133754

/-! ## A133754.P7905178355321596063

`n*∑[a(n-1)+2]*n²` with `a(0)=-1`
-/

namespace A133754.P7905178355321596063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (n ^ 2 : ℤ)

end

end A133754.P7905178355321596063

namespace A133754

/-- `n*∑[a(n-1)+2]*n²` -/
def P7905178355321596063.Spec : Prop :=
  ∀ n, P7905178355321596063.a n = A133754 n

end A133754

/-! ## A133754.P736079056601905521

`(n-1)*∑[2*n]*gcd(n, 2*n)²`
-/

namespace A133754.P736079056601905521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (Nat.gcd n (2 * n) ^ 2 : ℤ)

end

end A133754.P736079056601905521

namespace A133754

/-- `(n-1)*∑[2*n]*gcd(n, 2*n)²` -/
def P736079056601905521.Spec : Prop :=
  ∀ n, P736079056601905521.a n = A133754 n

end A133754

/-! ## A133754.P17828601680634637893

`(n-1)*∑[and(2*n+1, 2*n)]*n²`
-/

namespace A133754.P17828601680634637893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (n ^ 2 : ℤ)

end

end A133754.P17828601680634637893

namespace A133754

/-- `(n-1)*∑[and(2*n+1, 2*n)]*n²` -/
def P17828601680634637893.Spec : Prop :=
  ∀ n, P17828601680634637893.a n = A133754 n

end A133754

/-! ## A133754.P5758492761568010054

`2*A321672(n)`
-/

namespace A133754.P5758492761568010054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321672 n

end

end A133754.P5758492761568010054

namespace A133754

/-- `2*A321672(n)` -/
def P5758492761568010054.Spec : Prop :=
  ∀ n, P5758492761568010054.a n = A133754 n

end A133754

/-! ## A133754.P489470130179405531

`(n+1)*A085537(n)`
-/

namespace A133754.P489470130179405531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085537 n

end

end A133754.P489470130179405531

namespace A133754

/-- `(n+1)*A085537(n)` -/
def P489470130179405531.Spec : Prop :=
  ∀ n, P489470130179405531.a n = A133754 n

end A133754

/-! ## A133754.P392189200453056788

`n*(A060886(n)-1)`
-/

namespace A133754.P392189200453056788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A060886 n - 1)

end

end A133754.P392189200453056788

namespace A133754

/-- `n*(A060886(n)-1)` -/
def P392189200453056788.Spec : Prop :=
  ∀ n, P392189200453056788.a n = A133754 n

end A133754

/-! ## A133754.P13904695421269676538

`3*n*A112742(n)`
-/

namespace A133754.P13904695421269676538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A112742 n)

end

end A133754.P13904695421269676538

namespace A133754

/-- `3*n*A112742(n)` -/
def P13904695421269676538.Spec : Prop :=
  ∀ n, P13904695421269676538.a n = A133754 n

end A133754

/-! ## A133754.P11331886325066076249

`4*n*A006011(n)`
-/

namespace A133754.P11331886325066076249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A006011 n)

end

end A133754.P11331886325066076249

namespace A133754

/-- `4*n*A006011(n)` -/
def P11331886325066076249.Spec : Prop :=
  ∀ n, P11331886325066076249.a n = A133754 n

end A133754

/-! ## A133754.P13624529269633271428

`n/4*A173121(n)`
-/

namespace A133754.P13624529269633271428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A173121 n : ℚ)

end

end A133754.P13624529269633271428

namespace A133754

/-- `n/4*A173121(n)` -/
def P13624529269633271428.Spec : Prop :=
  ∀ n, P13624529269633271428.a n = (A133754 n : ℚ)

end A133754

/-! ## A133754.P12396344109897341150

`6*n*A008911(n)`
-/

namespace A133754.P12396344109897341150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) * A008911 n)

end

end A133754.P12396344109897341150

namespace A133754

/-- `6*n*A008911(n)` -/
def P12396344109897341150.Spec : Prop :=
  ∀ n, P12396344109897341150.a n = A133754 n

end A133754

/-! ## A133754.P4746327045645481988

`(n²-1)*A000578(n)`
-/

namespace A133754.P4746327045645481988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * A000578 n

end

end A133754.P4746327045645481988

namespace A133754

/-- `(n²-1)*A000578(n)` -/
def P4746327045645481988.Spec : Prop :=
  ∀ n, P4746327045645481988.a n = A133754 n

end A133754

/-! ## A133754.P13694329330184048093

`(A061600(n)-1)*n²`
-/

namespace A133754.P13694329330184048093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061600 n - 1) * (n ^ 2 : ℤ)

end

end A133754.P13694329330184048093

namespace A133754

/-- `(A061600(n)-1)*n²` -/
def P13694329330184048093.Spec : Prop :=
  ∀ n, P13694329330184048093.a n = A133754 n

end A133754

/-! ## A133754.P7244081257269918597

`2*(A101377(n)-n²)`
-/

namespace A133754.P7244081257269918597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101377 n - (n ^ 2 : ℤ))

end

end A133754.P7244081257269918597

namespace A133754

/-- `2*(A101377(n)-n²)` -/
def P7244081257269918597.Spec : Prop :=
  ∀ n, P7244081257269918597.a n = A133754 n

end A133754

/-!
# A133755: Number of positive integers less than n/3 that are coprime to n.

The programs for A133755, the canonical program `A133755.P15573065884823534468` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133755 has offset 1).

The definition of A133755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133755.P15573065884823534468

`∑{d}[n+1, A002264(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A133755

/-- `∑{d}[n+1, A002264(#-1)*A008683((n+1)/#)]` -/
def P15573065884823534468.Spec : Prop :=
  ∀ n, P15573065884823534468.a n = A133755 (n + 1)

theorem P15573065884823534468.correct : P15573065884823534468.Spec := by
  intro n
  simp only [A133755, Nat.add_sub_cancel]

end A133755

/-! ## A133755.P3056721042911783761

`Δ[A049807(A028310(n))]-char[2]`
-/

namespace A133755.P3056721042911783761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049807 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A133755.P3056721042911783761

namespace A133755

/-- `Δ[A049807(A028310(n))]-char[2]` -/
def P3056721042911783761.Spec : Prop :=
  ∀ n, P3056721042911783761.a n = A133755 (n + 1)

end A133755

/-! ## A133755.P10019902369908015764

`Δ[A049807(A028310(n))]*A266678(n)`
-/

namespace A133755.P10019902369908015764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049807 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A266678 n

end

end A133755.P10019902369908015764

namespace A133755

/-- `Δ[A049807(A028310(n))]*A266678(n)` -/
def P10019902369908015764.Spec : Prop :=
  ∀ n, P10019902369908015764.a n = A133755 (n + 1)

end A133755

/-! ## A133755.P11288390302480949696

`Δ[A049807(A028310(n))]%A000009(n)`
-/

namespace A133755.P11288390302480949696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049807 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000009 n)

end

end A133755.P11288390302480949696

namespace A133755

/-- `Δ[A049807(A028310(n))]%A000009(n)` -/
def P11288390302480949696.Spec : Prop :=
  ∀ n, P11288390302480949696.a n = A133755 (n + 1)

end A133755

/-! ## A133755.P3657454790875569841

`A049807(n+1)%A049807(A028310(n))`
-/

namespace A133755.P3657454790875569841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049807 (n + 1)) (A049807 (A028310 n).toNat)

end

end A133755.P3657454790875569841

namespace A133755

/-- `A049807(n+1)%A049807(A028310(n))` -/
def P3657454790875569841.Spec : Prop :=
  ∀ n, P3657454790875569841.a n = A133755 (n + 1)

end A133755

/-! ## A133755.P1304614949297782915

`(A049807(n+1)-A049807(A028310(n)))*A266678(n)`
-/

namespace A133755.P1304614949297782915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049807 (n + 1) - A049807 (A028310 n).toNat) * A266678 n

end

end A133755.P1304614949297782915

namespace A133755

/-- `(A049807(n+1)-A049807(A028310(n)))*A266678(n)` -/
def P1304614949297782915.Spec : Prop :=
  ∀ n, P1304614949297782915.a n = A133755 (n + 1)

end A133755

/-!
# A133756: a(n) = round( 2*Gamma(3 + n/3) + 2^(n/3) ).

The programs for A133756, there is no canonical definition to state claims against.
-/

/-! ## A133756.P7637109661278570728

`A278814(A340776(n+3)+A126966(n+1))`
-/

namespace A133756.P7637109661278570728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A340776 (n + 3) + A126966 (n + 1)).toNat

end

end A133756.P7637109661278570728

/-! ## A133756.P3615963041735796709

`∑[A211695(n+1)+A004018(A211695(2*n+1))]`
-/

namespace A133756.P3615963041735796709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211695 (n + 1) + A004018 (A211695 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133756.P3615963041735796709

/-!
# A133758: Total number of restricted left truncatable primes in base n.

The programs for A133758, there is no canonical definition to state claims against.
-/

/-! ## A133758.P7036324122239939214

`A130478(n!)-∏{p}[n+1, -#]`
-/

namespace A133758.P7036324122239939214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130478 (Nat.factorial n) - ∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))

end

end A133758.P7036324122239939214

/-!
# A133759: Numbers that are the sum of a nonzero pentagonal number and a nonzero square in at least one way.

The programs for A133759, there is no canonical definition to state claims against.
-/

/-! ## A133759.P11121313666916650701

`A000720(3*n+4)+lt[ceil((n-1)/gcd(2, n)), 8]`
-/

namespace A133759.P11121313666916650701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * n + 4) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A133759.P11121313666916650701

/-! ## A133759.P5192265354475890458

`A284936(n+1)+A003849(A242783(n+4))`
-/

namespace A133759.P5192265354475890458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284936 (n + 1) + A003849 (A242783 (n + 4)).toNat

end

end A133759.P5192265354475890458

/-! ## A133759.P14618641281871068592

`eq[A002262(A027750(2*(n+2))), A324323(2*n)]`
-/

namespace A133759.P14618641281871068592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A027750 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324323 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133759.P14618641281871068592

/-!
# A133760: Sum of the number of divisors of the numbers between prime(n) and prime(n+1).

The programs for A133760, the canonical program `A133760.P9145176976057239686` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133760 has offset 1).

The definition of A133760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133760.P9145176976057239686

`A139140(n+1)-2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A133760

/-- `A139140(n+1)-2` -/
def P9145176976057239686.Spec : Prop :=
  ∀ n, P9145176976057239686.a n = A133760 (n + 1)

theorem P9145176976057239686.correct : P9145176976057239686.Spec := by
  intro n
  simp only [A133760, Nat.add_sub_cancel]

end A133760

/-! ## A133760.P2902655531757815500

`A023444(A139140(n+1))`
-/

namespace A133760.P2902655531757815500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A139140 (n + 1)).toNat

end

end A133760.P2902655531757815500

namespace A133760

/-- `A023444(A139140(n+1))` -/
def P2902655531757815500.Spec : Prop :=
  ∀ n, P2902655531757815500.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P13045471541456492866

`Δ[A085683(n+1)]-2`
-/

namespace A133760.P13045471541456492866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P13045471541456492866

namespace A133760

/-- `Δ[A085683(n+1)]-2` -/
def P13045471541456492866.Spec : Prop :=
  ∀ n, P13045471541456492866.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P1420130538544029733

`Δ[A253769(n+1)]-2`
-/

namespace A133760.P1420130538544029733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P1420130538544029733

namespace A133760

/-- `Δ[A253769(n+1)]-2` -/
def P1420130538544029733.Spec : Prop :=
  ∀ n, P1420130538544029733.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P12950925327699656809

`A023444(Δ[A085683(n+1)])`
-/

namespace A133760.P12950925327699656809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (f1 (n + 1) - f1 n).toNat

end

end A133760.P12950925327699656809

namespace A133760

/-- `A023444(Δ[A085683(n+1)])` -/
def P12950925327699656809.Spec : Prop :=
  ∀ n, P12950925327699656809.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P10719528814662179611

`A023444(Δ[A253769(n+1)])`
-/

namespace A133760.P10719528814662179611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (f1 (n + 1) - f1 n).toNat

end

end A133760.P10719528814662179611

namespace A133760

/-- `A023444(Δ[A253769(n+1)])` -/
def P10719528814662179611.Spec : Prop :=
  ∀ n, P10719528814662179611.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P6195587089653973806

`A085683(n+2)-(A085683(n+1)+2)`
-/

namespace A133760.P6195587089653973806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085683 (n + 2) - (A085683 (n + 1) + 2)

end

end A133760.P6195587089653973806

namespace A133760

/-- `A085683(n+2)-(A085683(n+1)+2)` -/
def P6195587089653973806.Spec : Prop :=
  ∀ n, P6195587089653973806.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P14258424286606112406

`Δ[A006218(A000040(n+1))]-2`
-/

namespace A133760.P14258424286606112406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P14258424286606112406

namespace A133760

/-- `Δ[A006218(A000040(n+1))]-2` -/
def P14258424286606112406.Spec : Prop :=
  ∀ n, P14258424286606112406.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P13514282532190301462

`Δ[A006218(A006093(n+1))]-2`
-/

namespace A133760.P13514282532190301462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P13514282532190301462

namespace A133760

/-- `Δ[A006218(A006093(n+1))]-2` -/
def P13514282532190301462.Spec : Prop :=
  ∀ n, P13514282532190301462.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P74896714528160791

`Δ[A006218(A008578(n+2))]-2`
-/

namespace A133760.P74896714528160791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P74896714528160791

namespace A133760

/-- `Δ[A006218(A008578(n+2))]-2` -/
def P74896714528160791.Spec : Prop :=
  ∀ n, P74896714528160791.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P17321307447204247053

`Δ[A054519(Δ[A007504(n)])]-2`
-/

namespace A133760.P17321307447204247053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P17321307447204247053

namespace A133760

/-- `Δ[A054519(Δ[A007504(n)])]-2` -/
def P17321307447204247053.Spec : Prop :=
  ∀ n, P17321307447204247053.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P1923684893209890394

`Δ[A006218(record[A014963(n+2)])]-2`
-/

namespace A133760.P1923684893209890394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P1923684893209890394

namespace A133760

/-- `Δ[A006218(record[A014963(n+2)])]-2` -/
def P1923684893209890394.Spec : Prop :=
  ∀ n, P1923684893209890394.a n = A133760 (n + 1)

end A133760

/-! ## A133760.P15758917434603909259

`Δ[A054519(A000040(n+1)-1)]-2`
-/

namespace A133760.P15758917434603909259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A133760.P15758917434603909259

namespace A133760

/-- `Δ[A054519(A000040(n+1)-1)]-2` -/
def P15758917434603909259.Spec : Prop :=
  ∀ n, P15758917434603909259.a n = A133760 (n + 1)

end A133760

/-!
# A133761: Primes such that the sum of any two terms, plus one, is a prime.

The programs for A133761, there is no canonical definition to state claims against.
-/

/-! ## A133761.P1668870773684887900

`record[A072963(A086140(n+1))]`
-/

namespace A133761.P1668870773684887900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A086140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133761.P1668870773684887900

/-!
# A133763: Odd composite numbers such that the sum of any two terms, plus 1, is composite.

The programs for A133763, there is no canonical definition to state claims against.
-/

/-! ## A133763.P10111178641737475423

`filter[A133764(n+1), A093719(#)]`
-/

namespace A133763.P10111178641737475423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A133763.P10111178641737475423

/-! ## A133763.P15106096149503813626

`∩[A014076(n+1), A133764(n+1)]`
-/

namespace A133763.P15106096149503813626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133763.P15106096149503813626

/-! ## A133763.P1469083807918086181

`∩[A047270(n+1), A133764(n+1)]`
-/

namespace A133763.P1469083807918086181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133763.P1469083807918086181

/-! ## A133763.P4253942280356475931

`∩[A071904(n+1), A133764(n+1)]`
-/

namespace A133763.P4253942280356475931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133763.P4253942280356475931

/-! ## A133763.P4220754922114243037

`∩[A133764(n+1), A172181(n+1)]`
-/

namespace A133763.P4220754922114243037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133763.P4220754922114243037

/-!
# A133764: Composite numbers such that any two terms, plus 1, yields a composite number:.

The programs for A133764, there is no canonical definition to state claims against.
-/

/-! ## A133764.P3714401893700191401

`eq[Δ[A284585(n)], A055671(n)]`
-/

namespace A133764.P3714401893700191401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A133764.P3714401893700191401

/-! ## A133764.P7269625107867153851

`eq[Δ[A284585(n)], A055672(n)]`
-/

namespace A133764.P7269625107867153851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A133764.P7269625107867153851

/-! ## A133764.P7250886613146711574

`lt[A084091(n+1), A111823(A058026(n+4))]`
-/

namespace A133764.P7250886613146711574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111823 (A058026 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133764.P7250886613146711574

/-!
# A133765: Primes that contain the digit 4 or the digit 9.

The programs for A133765, there is no canonical definition to state claims against.
-/

/-! ## A133765.P16861104253607903948

`p?[eq[9, A010879(A061486(n))]]`
-/

namespace A133765.P16861104253607903948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A061486 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A133765.P16861104253607903948

/-! ## A133765.P10580805166273055928

`eq[A061486(n)%5, A080037(A032741(n))]`
-/

namespace A133765.P10580805166273055928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061486 n) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080037 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133765.P10580805166273055928

/-! ## A133765.P15873289691486364304

`p?[lt[7, A054055(2*n)]]`
-/

namespace A133765.P15873289691486364304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A133765.P15873289691486364304

/-! ## A133765.P14191932747796671767

`p?[A057979(A057104(n+1))]`
-/

namespace A133765.P14191932747796671767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133765.P14191932747796671767

/-! ## A133765.P14487597429941259012

`p?[lt[A004184(2*n), A222254(2*n)]]`
-/

namespace A133765.P14487597429941259012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A133765.P14487597429941259012

/-! ## A133765.P17777021942244116487

`p?[(n+1)%(A102681(A005408(n+1))+n+1)]`
-/

namespace A133765.P17777021942244116487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A102681 (A005408 (n + 1)).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133765.P17777021942244116487

/-! ## A133765.P12703413796250737494

`p?[A120433(n+1)]`
-/

namespace A133765.P12703413796250737494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133765.P12703413796250737494

/-! ## A133765.P8279636364953416793

`p?[(n+1)%A093783(n+1)]`
-/

namespace A133765.P8279636364953416793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A093783 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133765.P8279636364953416793

/-! ## A133765.P1182777814914639614

`filter[A120433(n+1), A010051(#)]`
-/

namespace A133765.P1182777814914639614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A133765.P1182777814914639614

/-! ## A133765.P10775769348775687415

`filter[A120433(n+1), A080339(#)]`
-/

namespace A133765.P10775769348775687415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A133765.P10775769348775687415

/-! ## A133765.P16189680702695375260

`filter[A120433(n+1), A080545(#)]`
-/

namespace A133765.P16189680702695375260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A133765.P16189680702695375260

/-!
# A133766: a(n) = (4*n+1)*(4*n+3)*(4*n+5).

The programs for A133766, the canonical program `A133766.P16630391421120397529` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133766 has offset 0).

The definition of A133766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(4*n+3)*(4*n+5)` (program `A133766.P16630391421120397529`, by `A133766.P16630391421120397529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133766.P16630391421120397529

`(4*n+1)*(4*n+3)*(4*n+5)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A133766

/-- `(4*n+1)*(4*n+3)*(4*n+5)` -/
def P16630391421120397529.Spec : Prop :=
  ∀ n, (P16630391421120397529.a n : ℤ) = A133766 n

theorem P16630391421120397529.correct : P16630391421120397529.Spec := by
  intro n
  simp only [A133766]

end A133766

/-! ## A133766.P15747754548986961546

`record[(n+3)*(xor(3, n)²-4)]`
-/

namespace A133766.P15747754548986961546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((Nat.xor 3 n ^ 2 : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133766.P15747754548986961546

namespace A133766

/-- `record[(n+3)*(xor(3, n)²-4)]` -/
def P15747754548986961546.Spec : Prop :=
  ∀ n, P15747754548986961546.a n = A133766 n

end A133766

/-! ## A133766.P97553995797695919

`record[lcm(n+3, xor(3, n)²-4)]`
-/

namespace A133766.P97553995797695919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) ((Nat.xor 3 n ^ 2 : ℤ) - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133766.P97553995797695919

namespace A133766

/-- `record[lcm(n+3, xor(3, n)²-4)]` -/
def P97553995797695919.Spec : Prop :=
  ∀ n, (P97553995797695919.a n : ℤ) = A133766 n

end A133766

/-! ## A133766.P7644777786515645679

`record[(xor(n, -4)²-1)*or(1, n)]`
-/

namespace A133766.P7644777786515645679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-4) ^ 2 - 1) * (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133766.P7644777786515645679

namespace A133766

/-- `record[(xor(n, -4)²-1)*or(1, n)]` -/
def P7644777786515645679.Spec : Prop :=
  ∀ n, P7644777786515645679.a n = A133766 n

end A133766

/-! ## A133766.P15988260161948847717

`record[(xor(n, -4)²-1)*xor(1, n)]`
-/

namespace A133766.P15988260161948847717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-4) ^ 2 - 1) * (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133766.P15988260161948847717

namespace A133766

/-- `record[(xor(n, -4)²-1)*xor(1, n)]` -/
def P15988260161948847717.Spec : Prop :=
  ∀ n, P15988260161948847717.a n = A133766 n

end A133766

/-! ## A133766.P3066481971434425672

`lcm(A001539(n), A003185(n))`
-/

namespace A133766.P3066481971434425672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001539 n) (A003185 n)

end

end A133766.P3066481971434425672

namespace A133766

/-- `lcm(A001539(n), A003185(n))` -/
def P3066481971434425672.Spec : Prop :=
  ∀ n, (P3066481971434425672.a n : ℤ) = A133766 n

end A133766

/-! ## A133766.P369220663051996424

`lcm(A016813(n), A141759(n))`
-/

namespace A133766.P369220663051996424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016813 n) (A141759 n)

end

end A133766.P369220663051996424

namespace A133766

/-- `lcm(A016813(n), A141759(n))` -/
def P369220663051996424.Spec : Prop :=
  ∀ n, (P369220663051996424.a n : ℤ) = A133766 n

end A133766

/-! ## A133766.P6077381862294667383

`A061550(2*n)`
-/

namespace A133766.P6077381862294667383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061550 (2 * n)

end

end A133766.P6077381862294667383

namespace A133766

/-- `A061550(2*n)` -/
def P6077381862294667383.Spec : Prop :=
  ∀ n, P6077381862294667383.a n = A133766 n

end A133766

/-!
# A133767: a(n) = (4*n+3)*(4*n+5)*(4*n+7).

The programs for A133767, the canonical program `A133767.P1072794524899530576` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133767 has offset 0).

The definition of A133767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+3)*(4*n+5)*(4*n+7)` (program `A133767.P1072794524899530576`, by `A133767.P1072794524899530576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133767.P1072794524899530576

`(4*n+3)*(4*n+5)*(4*n+7)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A133767

/-- `(4*n+3)*(4*n+5)*(4*n+7)` -/
def P1072794524899530576.Spec : Prop :=
  ∀ n, (P1072794524899530576.a n : ℤ) = A133767 n

theorem P1072794524899530576.correct : P1072794524899530576.Spec := by
  intro n
  simp only [A133767]

end A133767

/-! ## A133767.P13337904383764933108

`record[(n+7)*(xor(n, -4)²-1)]`
-/

namespace A133767.P13337904383764933108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * (Int.xor (n : ℤ) (-4) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133767.P13337904383764933108

namespace A133767

/-- `record[(n+7)*(xor(n, -4)²-1)]` -/
def P13337904383764933108.Spec : Prop :=
  ∀ n, P13337904383764933108.a n = A133767 n

end A133767

/-! ## A133767.P9095156225787469563

`record[lcm(n+7, xor(n, -4)²-1)]`
-/

namespace A133767.P9095156225787469563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 7 : ℤ) (Int.xor (n : ℤ) (-4) ^ 2 - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133767.P9095156225787469563

namespace A133767

/-- `record[lcm(n+7, xor(n, -4)²-1)]` -/
def P9095156225787469563.Spec : Prop :=
  ∀ n, (P9095156225787469563.a n : ℤ) = A133767 n

end A133767

/-! ## A133767.P1820927909763543655

`A154633(n)/A016813(n)`
-/

namespace A133767.P1820927909763543655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154633 n : ℚ) / (A016813 n : ℚ)

end

end A133767.P1820927909763543655

namespace A133767

/-- `A154633(n)/A016813(n)` -/
def P1820927909763543655.Spec : Prop :=
  ∀ n, P1820927909763543655.a n = (A133767 n : ℚ)

end A133767

/-! ## A133767.P8970292567788961171

`lcm(A085027(n), A141759(n))`
-/

namespace A133767.P8970292567788961171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085027 n) (A141759 n)

end

end A133767.P8970292567788961171

namespace A133767

/-- `lcm(A085027(n), A141759(n))` -/
def P8970292567788961171.Spec : Prop :=
  ∀ n, (P8970292567788961171.a n : ℤ) = A133767 n

end A133767

/-! ## A133767.P17109605939893003913

`lcm(record[xor(3, n)], A001539(n+1))`
-/

namespace A133767.P17109605939893003913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A001539 (n + 1))

end

end A133767.P17109605939893003913

namespace A133767

/-- `lcm(record[xor(3, n)], A001539(n+1))` -/
def P17109605939893003913.Spec : Prop :=
  ∀ n, (P17109605939893003913.a n : ℤ) = A133767 n

end A133767

/-! ## A133767.P2299582154359039282

`A016815(n+1)-A305075(n+2)/2`
-/

namespace A133767.P2299582154359039282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016815 (n + 1) : ℚ) - (A305075 (n + 2) : ℚ) / 2

end

end A133767.P2299582154359039282

namespace A133767

/-- `A016815(n+1)-A305075(n+2)/2` -/
def P2299582154359039282.Spec : Prop :=
  ∀ n, P2299582154359039282.a n = (A133767 n : ℚ)

end A133767

/-! ## A133767.P15275123887595810249

`A004767(n)*A016826(n+1)-A004767(n)`
-/

namespace A133767.P15275123887595810249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016826 (n + 1) - A004767 n

end

end A133767.P15275123887595810249

namespace A133767

/-- `A004767(n)*A016826(n+1)-A004767(n)` -/
def P15275123887595810249.Spec : Prop :=
  ∀ n, P15275123887595810249.a n = A133767 n

end A133767

/-! ## A133767.P4751769976824581271

`A001539(n+1)*A001539(n)/A016813(n)`
-/

namespace A133767.P4751769976824581271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001539 (n + 1) * A001539 n : ℚ) / (A016813 n : ℚ)

end

end A133767.P4751769976824581271

namespace A133767

/-- `A001539(n+1)*A001539(n)/A016813(n)` -/
def P4751769976824581271.Spec : Prop :=
  ∀ n, P4751769976824581271.a n = (A133767 n : ℚ)

end A133767

/-! ## A133767.P9187788575464284672

`A001539(n+1)+A001539(n+1)*A016825(n)`
-/

namespace A133767.P9187788575464284672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001539 (n + 1) + A001539 (n + 1) * A016825 n

end

end A133767.P9187788575464284672

namespace A133767

/-- `A001539(n+1)+A001539(n+1)*A016825(n)` -/
def P9187788575464284672.Spec : Prop :=
  ∀ n, P9187788575464284672.a n = A133767 n

end A133767

/-! ## A133767.P2306626649908667215

`A016815(n+1)-A017089(n+1)-A017089(n+1)`
-/

namespace A133767.P2306626649908667215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 (n + 1) - A017089 (n + 1) - A017089 (n + 1)

end

end A133767.P2306626649908667215

namespace A133767

/-- `A016815(n+1)-A017089(n+1)-A017089(n+1)` -/
def P2306626649908667215.Spec : Prop :=
  ∀ n, P2306626649908667215.a n = A133767 n

end A133767

/-! ## A133767.P15261880293711271820

`A001539(n+1)*A008586(n+1)-A001539(n+1)`
-/

namespace A133767.P15261880293711271820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001539 (n + 1) * A008586 (n + 1) - A001539 (n + 1)

end

end A133767.P15261880293711271820

namespace A133767

/-- `A001539(n+1)*A008586(n+1)-A001539(n+1)` -/
def P15261880293711271820.Spec : Prop :=
  ∀ n, P15261880293711271820.a n = A133767 n

end A133767

/-! ## A133767.P16786110713213653583

`A004767(n+1)*A016802(n+1)-A004767(n+1)`
-/

namespace A133767.P16786110713213653583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (n + 1) * A016802 (n + 1) - A004767 (n + 1)

end

end A133767.P16786110713213653583

namespace A133767

/-- `A004767(n+1)*A016802(n+1)-A004767(n+1)` -/
def P16786110713213653583.Spec : Prop :=
  ∀ n, P16786110713213653583.a n = A133767 n

end A133767

/-! ## A133767.P1926340216131076900

`A061550(Δ[n²])`
-/

namespace A133767.P1926340216131076900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061550 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A133767.P1926340216131076900

namespace A133767

/-- `A061550(Δ[n²])` -/
def P1926340216131076900.Spec : Prop :=
  ∀ n, P1926340216131076900.a n = A133767 n

end A133767

/-! ## A133767.P5884905712370531845

`lcm(3, A061550(2*n+1))`
-/

namespace A133767.P5884905712370531845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A061550 (2 * n + 1))

end

end A133767.P5884905712370531845

namespace A133767

/-- `lcm(3, A061550(2*n+1))` -/
def P5884905712370531845.Spec : Prop :=
  ∀ n, (P5884905712370531845.a n : ℤ) = A133767 n

end A133767

/-! ## A133767.P6045591939134258017

`A192848(2*(n+1))+12*n+9`
-/

namespace A133767.P6045591939134258017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192848 (2 * (n + 1)) + (12 * n + 9 : ℤ)

end

end A133767.P6045591939134258017

namespace A133767

/-- `A192848(2*(n+1))+12*n+9` -/
def P6045591939134258017.Spec : Prop :=
  ∀ n, P6045591939134258017.a n = A133767 n

end A133767

/-! ## A133767.P14745280925870806600

`lcm(A078371(2*n+1), 4*n+5)`
-/

namespace A133767.P14745280925870806600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078371 (2 * n + 1)) (4 * n + 5 : ℤ)

end

end A133767.P14745280925870806600

namespace A133767

/-- `lcm(A078371(2*n+1), 4*n+5)` -/
def P14745280925870806600.Spec : Prop :=
  ∀ n, (P14745280925870806600.a n : ℤ) = A133767 n

end A133767

/-! ## A133767.P2027509762600100355

`A154633(n)/A157142(2*n)`
-/

namespace A133767.P2027509762600100355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154633 n : ℚ) / (A157142 (2 * n) : ℚ)

end

end A133767.P2027509762600100355

namespace A133767

/-- `A154633(n)/A157142(2*n)` -/
def P2027509762600100355.Spec : Prop :=
  ∀ n, P2027509762600100355.a n = (A133767 n : ℚ)

end A133767

/-! ## A133767.P140616309588169555

`A196506(2*(n+1))-A196506(2*n+1)`
-/

namespace A133767.P140616309588169555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196506 (2 * (n + 1)) - A196506 (2 * n + 1)

end

end A133767.P140616309588169555

namespace A133767

/-- `A196506(2*(n+1))-A196506(2*n+1)` -/
def P140616309588169555.Spec : Prop :=
  ∀ n, P140616309588169555.a n = A133767 n

end A133767

/-! ## A133767.P3430709440776631383

`A162540(2*n+1)+2*A162540(2*n+1)`
-/

namespace A133767.P3430709440776631383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162540 (2 * n + 1) + 2 * A162540 (2 * n + 1)

end

end A133767.P3430709440776631383

namespace A133767

/-- `A162540(2*n+1)+2*A162540(2*n+1)` -/
def P3430709440776631383.Spec : Prop :=
  ∀ n, P3430709440776631383.a n = A133767 n

end A133767

/-!
# A133770: Number of runs (of equal bits) in the minimal Lucas binary (A130310) representation of n.

The programs for A133770, the canonical program `A133770.P4488727926712049331` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133770 has offset 1).

The definition of A133770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133770.P4488727926712049331

`A005811(eq[(n%2)^n, and(n, floor(n/2))])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133770

/-- `A005811(eq[(n%2)^n, and(n, floor(n/2))])` -/
def P4488727926712049331.Spec : Prop :=
  ∀ n, P4488727926712049331.a n = A133770 (n + 1)

theorem P4488727926712049331.correct : P4488727926712049331.Spec := by
  intro n
  simp only [A133770, Nat.add_sub_cancel]

end A133770

/-! ## A133770.P7417630034173885658

`A005811(eq[A048728(n+7), A348710(n+2)])`
-/

namespace A133770.P7417630034173885658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A133770.P7417630034173885658

namespace A133770

/-- `A005811(eq[A048728(n+7), A348710(n+2)])` -/
def P7417630034173885658.Spec : Prop :=
  ∀ n, P7417630034173885658.a n = A133770 (n + 1)

end A133770

/-! ## A133770.P2938915332568608839

`A274009(eq[A081743(2*(n+2)), A178493(n+5)])`
-/

namespace A133770.P2938915332568608839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178493 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A133770.P2938915332568608839

namespace A133770

/-- `A274009(eq[A081743(2*(n+2)), A178493(n+5)])` -/
def P2938915332568608839.Spec : Prop :=
  ∀ n, P2938915332568608839.a n = A133770 (n + 1)

end A133770

/-! ## A133770.P15778559385203540849

`A339772(p?[A160427(n+1)])`
-/

namespace A133770.P15778559385203540849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339772 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133770.P15778559385203540849

namespace A133770

/-- `A339772(p?[A160427(n+1)])` -/
def P15778559385203540849.Spec : Prop :=
  ∀ n, P15778559385203540849.a n = A133770 (n + 1)

end A133770

/-! ## A133770.P15292582337420014772

`A000005(A349520(p?[A160427(n+1)]))`
-/

namespace A133770.P15292582337420014772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A349520 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A133770.P15292582337420014772

namespace A133770

/-- `A000005(A349520(p?[A160427(n+1)]))` -/
def P15292582337420014772.Spec : Prop :=
  ∀ n, P15292582337420014772.a n = A133770 (n + 1)

end A133770

/-!
# A133771: Number of runs (of equal bits) in the maximal Lucas binary (A130311) representation of n.

The programs for A133771, the canonical program `A133771.P647352562912529458` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133771 has offset 1).

The definition of A133771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133771.P3647388128636649239

`A005811(record[xor(2, A090078(n))])`
-/

namespace A133771.P3647388128636649239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A090078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133771.P3647388128636649239

namespace A133771

/-- `A005811(record[xor(2, A090078(n))])` -/
def P3647388128636649239.Spec : Prop :=
  ∀ n, P3647388128636649239.a n = A133771 (n + 1)

end A133771

/-! ## A133771.P647352562912529458

`A005811(record[xor(2, A003754(n+1))])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A133771

/-- `A005811(record[xor(2, A003754(n+1))])` -/
def P647352562912529458.Spec : Prop :=
  ∀ n, P647352562912529458.a n = A133771 (n + 1)

theorem P647352562912529458.correct : P647352562912529458.Spec := by
  intro n
  simp only [A133771, Nat.add_sub_cancel]

end A133771

/-! ## A133771.P4417525140878192581

`A037834(record[xor(2, A090078(n))])+1`
-/

namespace A133771.P4417525140878192581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A090078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A133771.P4417525140878192581

namespace A133771

/-- `A037834(record[xor(2, A090078(n))])+1` -/
def P4417525140878192581.Spec : Prop :=
  ∀ n, P4417525140878192581.a n = A133771 (n + 1)

end A133771

/-! ## A133771.P4309927247708635396

`A005811(record[A004443(A090078(n))])`
-/

namespace A133771.P4309927247708635396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A090078 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133771.P4309927247708635396

namespace A133771

/-- `A005811(record[A004443(A090078(n))])` -/
def P4309927247708635396.Spec : Prop :=
  ∀ n, P4309927247708635396.a n = A133771 (n + 1)

end A133771

/-! ## A133771.P13255210028600844343

`A005811(record[A004443(A003754(n+1))])`
-/

namespace A133771.P13255210028600844343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A003754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133771.P13255210028600844343

namespace A133771

/-- `A005811(record[A004443(A003754(n+1))])` -/
def P13255210028600844343.Spec : Prop :=
  ∀ n, P13255210028600844343.a n = A133771 (n + 1)

end A133771

/-!
# A133772: Number of runs (of equal bits) in the minimal "phinary" (A130600) representation of n.

The programs for A133772, there is no canonical definition to state claims against.
-/

/-! ## A133772.P15041850974314193810

`2*A055778(n+1)-A057427(A074676(n+1))`
-/

namespace A133772.P15041850974314193810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055778 (n + 1) - A057427 (A074676 (n + 1)).toNat

end

end A133772.P15041850974314193810

/-! ## A133772.P6093697951794673798

`A122196((n+6)²-A055778(n+1)+1)`
-/

namespace A133772.P6093697951794673798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (((n + 6) ^ 2 : ℤ) - A055778 (n + 1) + 1).toNat

end

end A133772.P6093697951794673798

/-! ## A133772.P2791369766615300375

`2*A055778(n+1)-A057427(A054582(n))`
-/

namespace A133772.P2791369766615300375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055778 (n + 1) - A057427 (A054582 n).toNat

end

end A133772.P2791369766615300375

/-! ## A133772.P8766460508339776654

`2*A055778(n+1)-A055229(A130330(n))`
-/

namespace A133772.P8766460508339776654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055778 (n + 1) - A055229 (A130330 n).toNat

end

end A133772.P8766460508339776654

/-! ## A133772.P8504713740030909326

`2*A055778(n+1)-A052126(A262840(n+1))`
-/

namespace A133772.P8504713740030909326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055778 (n + 1) - A052126 (A262840 (n + 1)).toNat

end

end A133772.P8504713740030909326

/-! ## A133772.P9675466798965071750

`2*A055778(n+1)-A057427(A110289(n+1))`
-/

namespace A133772.P9675466798965071750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055778 (n + 1) - A057427 (A110289 (n + 1)).toNat

end

end A133772.P9675466798965071750

/-! ## A133772.P5184183166395038702

`2*A055778(n+1)-A057427(A253572(n+1))`
-/

namespace A133772.P5184183166395038702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055778 (n + 1) - A057427 (A253572 (n + 1)).toNat

end

end A133772.P5184183166395038702

/-! ## A133772.P18246206801106274532

`A135817(A001076(A055778(n+1)))`
-/

namespace A133772.P18246206801106274532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135817 (A001076 (A055778 (n + 1)).toNat).toNat

end

end A133772.P18246206801106274532

/-!
# A133773: Number of runs (of equal bits) in the maximal "phinary" (A130601) representation of n.

The programs for A133773, there is no canonical definition to state claims against.
-/

/-! ## A133773.P5479804912847957643

`2*A133776(n+1)+1`
-/

namespace A133773.P5479804912847957643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133776 (n + 1) + 1

end

end A133773.P5479804912847957643

/-! ## A133773.P1157873925035377241

`A005408(A133776(n+1))`
-/

namespace A133773.P1157873925035377241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A133776 (n + 1)).toNat

end

end A133773.P1157873925035377241

/-! ## A133773.P16845247365534254474

`A004273(A133776(n+1)+1)`
-/

namespace A133773.P16845247365534254474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A133776 (n + 1) + 1).toNat

end

end A133773.P16845247365534254474

/-! ## A133773.P1685914571432389603

`A053229(A133776(n+1)+1)`
-/

namespace A133773.P1685914571432389603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (A133776 (n + 1) + 1).toNat

end

end A133773.P1685914571432389603

/-! ## A133773.P5304096794900052303

`A060747(A133776(n+1)+1)`
-/

namespace A133773.P5304096794900052303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A133776 (n + 1) + 1).toNat

end

end A133773.P5304096794900052303

/-! ## A133773.P15896904919390108836

`A137803(A133776(n+1)+1)`
-/

namespace A133773.P15896904919390108836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (A133776 (n + 1) + 1).toNat

end

end A133773.P15896904919390108836

/-! ## A133773.P457156304663794296

`A004442(2*A133776(n+1))`
-/

namespace A133773.P457156304663794296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A133776 (n + 1)).toNat

end

end A133773.P457156304663794296

/-! ## A133773.P18422471914534182756

`A141310(2*A133776(n+1))`
-/

namespace A133773.P18422471914534182756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A133776 (n + 1)).toNat

end

end A133773.P18422471914534182756

/-! ## A133773.P12238196240849374334

`A008619(4*A133776(n+1))`
-/

namespace A133773.P12238196240849374334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A133776 (n + 1)).toNat

end

end A133773.P12238196240849374334

/-! ## A133773.P5104317255513835208

`A028242(4*A133776(n+1))`
-/

namespace A133773.P5104317255513835208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (4 * A133776 (n + 1)).toNat

end

end A133773.P5104317255513835208

/-! ## A133773.P10583788528999685266

`A029579(4*A133776(n+1))`
-/

namespace A133773.P10583788528999685266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (4 * A133776 (n + 1)).toNat

end

end A133773.P10583788528999685266

/-! ## A133773.P14083718236250941320

`or(1, A000267(A133776(n+1)²))`
-/

namespace A133773.P14083718236250941320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000267 (A133776 (n + 1) ^ 2).toNat)

end

end A133773.P14083718236250941320

/-! ## A133773.P9766997729732260798

`A004277(A133776(n+1)+1)-1`
-/

namespace A133773.P9766997729732260798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A133776 (n + 1) + 1).toNat - 1

end

end A133773.P9766997729732260798

/-! ## A133773.P17118935877340326217

`A005843(A133776(n+1)+1)-1`
-/

namespace A133773.P17118935877340326217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A133776 (n + 1) + 1).toNat - 1

end

end A133773.P17118935877340326217

/-! ## A133773.P15698193137979585270

`A000267(A133776(n+1)+A133776(n+1)²)`
-/

namespace A133773.P15698193137979585270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A133776 (n + 1) + A133776 (n + 1) ^ 2).toNat

end

end A133773.P15698193137979585270

/-! ## A133773.P2053603404100110745

`A029579(A133776(n+1)+A133776(n+1)+1)`
-/

namespace A133773.P2053603404100110745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A133776 (n + 1) + (A133776 (n + 1) + 1)).toNat

end

end A133773.P2053603404100110745

/-!
# A133774: Number of 1s in the maximal "phinary" (A130601) representation of n.

The programs for A133774, there is no canonical definition to state claims against.
-/

/-! ## A133774.P17510289369928293366

`∑{digits}[A130601(n+1), #]`
-/

namespace A133774.P17510289369928293366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A133774.P17510289369928293366

/-! ## A133774.P6693273317285938094

`dr(A130601(n+1)%A125649(n+1))`
-/

namespace A133774.P6693273317285938094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A130601 (n + 1)) (A125649 (n + 1)))

end

end A133774.P6693273317285938094

/-!
# A133775: Number of 0's in the minimal "phinary" (A130600) representation of n.

The programs for A133775, there is no canonical definition to state claims against.
-/

/-! ## A133775.P10018046004840447609

`∑{digits}[A130600(n+1), 1-#]`
-/

namespace A133775.P10018046004840447609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A133775.P10018046004840447609

/-! ## A133775.P10222860604438404345

`A190796(n+1)-A055778(n+1)`
-/

namespace A133775.P10222860604438404345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190796 (n + 1) - A055778 (n + 1)

end

end A133775.P10222860604438404345

/-! ## A133775.P12099091901453430224

`A190796(n+1)-(A362756(n+1)+A362716(n+1))`
-/

namespace A133775.P12099091901453430224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190796 (n + 1) - (A362756 (n + 1) + A362716 (n + 1))

end

end A133775.P12099091901453430224

/-! ## A133775.P18083927599411067928

`A362692(n+1)+A362872(n+1)-A055778(n+1)`
-/

namespace A133775.P18083927599411067928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362692 (n + 1) + (A362872 (n + 1) - A055778 (n + 1))

end

end A133775.P18083927599411067928

/-! ## A133775.P13492310054572561044

`A190796(n+1)-A116543(A004945(n+1))`
-/

namespace A133775.P13492310054572561044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190796 (n + 1) - A116543 (A004945 (n + 1)).toNat

end

end A133775.P13492310054572561044

/-! ## A133775.P15908326949584105897

`A362872(n+1)+A362692(n+1)-A116543(A004945(n+1))`
-/

namespace A133775.P15908326949584105897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362872 (n + 1) + A362692 (n + 1) - A116543 (A004945 (n + 1)).toNat

end

end A133775.P15908326949584105897

/-! ## A133775.P8731162240405134946

`A108852(A269725(n+1))-A055778(n+1)`
-/

namespace A133775.P8731162240405134946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A269725 (n + 1)).toNat - A055778 (n + 1)

end

end A133775.P8731162240405134946

/-!
# A133776: Number of 0's in the maximal "phinary" (A130601) representation of n.

The programs for A133776, there is no canonical definition to state claims against.
-/

/-! ## A133776.P17272759835697296752

`floor(A133773(n+1)/2)`
-/

namespace A133776.P17272759835697296752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133773 (n + 1) : ℚ) / 2⌋

end

end A133776.P17272759835697296752

/-! ## A133776.P17782993088209063673

`(A133773(C(n+1, n))-1)/2`
-/

namespace A133776.P17782993088209063673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133773 (Nat.choose (n + 1) n) - 1 : ℚ) / 2

end

end A133776.P17782993088209063673

/-! ## A133776.P17516436157799990406

`(A133773(-xor(n, -1))-1)/2`
-/

namespace A133776.P17516436157799990406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133773 (-Int.xor (n : ℤ) (-1)).toNat - 1 : ℚ) / 2

end

end A133776.P17516436157799990406

/-! ## A133776.P4602212170673163644

`(A133773(Δ[n²]-n)-1)/2`
-/

namespace A133776.P4602212170673163644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 : ℚ) / 2

end

end A133776.P4602212170673163644

/-! ## A133776.P14727882026032762505

`ceil((A133773(2*n+1-n)-1)/2)`
-/

namespace A133776.P14727882026032762505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133773 (2 * n + 1 - n) - 1 : ℚ) / 2⌉

end

end A133776.P14727882026032762505

/-! ## A133776.P4142942850244394860

`A004524(A133773(n+1))`
-/

namespace A133776.P4142942850244394860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A133773 (n + 1)).toNat

end

end A133776.P4142942850244394860

/-! ## A133776.P3055453753820869817

`A174344(A133773(n+1)²)`
-/

namespace A133776.P3055453753820869817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A133773 (n + 1) ^ 2).toNat

end

end A133776.P3055453753820869817

/-! ## A133776.P14595411125565756950

`A319571(A133773(n+1)²)`
-/

namespace A133776.P14595411125565756950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A133773 (n + 1) ^ 2).toNat

end

end A133776.P14595411125565756950

/-! ## A133776.P17170537231383553862

`A330709(A133773(n+1)²)`
-/

namespace A133776.P17170537231383553862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A133773 (n + 1) ^ 2).toNat

end

end A133776.P17170537231383553862

/-! ## A133776.P14148000457022174123

`A337101(A133773(n+1)²)`
-/

namespace A133776.P14148000457022174123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A133773 (n + 1) ^ 2).toNat

end

end A133776.P14148000457022174123

/-! ## A133776.P14144574365825552112

`A001281(A133773(n+1)-1)`
-/

namespace A133776.P14144574365825552112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A133773 (n + 1) - 1).toNat

end

end A133776.P14144574365825552112

/-! ## A133776.P14865668129447307628

`A004525(A133773(n+1)-1)`
-/

namespace A133776.P14865668129447307628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A133773 (n + 1) - 1).toNat

end

end A133776.P14865668129447307628

/-! ## A133776.P8650085935790257458

`A004526(A133773(n+1)-1)`
-/

namespace A133776.P8650085935790257458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A133773 (n + 1) - 1).toNat

end

end A133776.P8650085935790257458

/-! ## A133776.P2055195688171483956

`A002265(2*A133773(n+1))`
-/

namespace A133776.P2055195688171483956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A133773 (n + 1)).toNat

end

end A133776.P2055195688171483956

/-! ## A133776.P1089149269338681105

`A002265(lcm(2, A133773(n+1)))`
-/

namespace A133776.P1089149269338681105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 2 (A133773 (n + 1)))

end

end A133776.P1089149269338681105

/-! ## A133776.P2739085790229006443

`A001281(xor(1, A133773(n+1)))`
-/

namespace A133776.P2739085790229006443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.xor 1 (A133773 (n + 1))).toNat

end

end A133776.P2739085790229006443

/-! ## A133776.P3440107755992924811

`xor(1, A133773(n+1))/A020639(2*(n+1))`
-/

namespace A133776.P3440107755992924811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A133773 (n + 1)) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A133776.P3440107755992924811

/-! ## A133776.P15087156218196249895

`xor(1, A133773(n+1))/(A008683(n+2)²!+1)`
-/

namespace A133776.P15087156218196249895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A133773 (n + 1)) : ℚ) / (Nat.factorial (A008683 (n + 2) ^ 2).toNat + 1 : ℚ)

end

end A133776.P15087156218196249895

/-! ## A133776.P16702447742513569534

`A002265(A133773(n+1)+A133773(n+1)+1)`
-/

namespace A133776.P16702447742513569534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A133773 (n + 1) + (A133773 (n + 1) + 1)).toNat

end

end A133776.P16702447742513569534

/-! ## A133776.P6829985380032747735

`A330709((A133773(n+1)+2)*A133773(n+1))`
-/

namespace A133776.P6829985380032747735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 ((A133773 (n + 1) + 2) * A133773 (n + 1)).toNat

end

end A133776.P6829985380032747735

/-!
# A133777: Number of isomorphism types of groups of order n!.

The programs for A133777, there is no canonical definition to state claims against.
-/

/-! ## A133777.P10227978621805179123

`A000001(n!)`
-/

namespace A133777.P10227978621805179123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Nat.factorial n)

end

end A133777.P10227978621805179123

/-! ## A133777.P16872053185592144506

`sqrt(A297420(n!))`
-/

namespace A133777.P16872053185592144506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 (Nat.factorial n) : ℝ)

end

end A133777.P16872053185592144506

/-! ## A133777.P14157233433802190781

`A000001(∏[round(1/acot(n))])`
-/

namespace A133777.P14157233433802190781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133777.P14157233433802190781

/-!
# A133779: Irregular array: n-th row lists the "isolated divisors" of n. A positive divisor k of n is isolated if neither k-1 nor k+1 divides n.

The programs for A133779, there is no canonical definition to state claims against.
-/

/-! ## A133779.P13817233662161596418

`A328395(n+1)%A328395(A135568(n+1))`
-/

namespace A133779.P13817233662161596418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328395 (n + 1)) (A328395 (A135568 (n + 1)).toNat)

end

end A133779.P13817233662161596418

/-!
# A133780: Irregular array: n-th row lists the "non-isolated divisors" of (2n). A positive divisor, k, of n is non-isolated if (k-1) or (k+1) also divides n.

The programs for A133780, there is no canonical definition to state claims against.
-/

/-! ## A133780.P9297552879112203298

`gcd(a(n-1)+1, A276165(A001631(n)))` with `a(0)=1`
-/

namespace A133780.P9297552879112203298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A276165 (A001631 n).toNat)

end

end A133780.P9297552879112203298

/-! ## A133780.P612168390052403186

`gcd(A194066(n+2), A269234(2*n+1))`
-/

namespace A133780.P612168390052403186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194066 (n + 2)) (A269234 (2 * n + 1))

end

end A133780.P612168390052403186

/-! ## A133780.P17717283804453396486

`gcd(A048250(A241008(3*n+4)), A309198(n))`
-/

namespace A133780.P17717283804453396486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (A241008 (3 * n + 4)).toNat) (A309198 n)

end

end A133780.P17717283804453396486

/-! ## A133780.P4599441227667573678

`gcd(A000005(A001580(n)), A309198(n))`
-/

namespace A133780.P4599441227667573678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A001580 n).toNat) (A309198 n)

end

end A133780.P4599441227667573678

/-! ## A133780.P3375284611823579782

`A078734(A267515(n))`
-/

namespace A133780.P3375284611823579782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A267515 n).toNat

end

end A133780.P3375284611823579782

/-!
# A133781: Prime sequence overlaying the central digits of prime numbers. If possible, the value is greater than the previous one. Zero if no such embedding is possible.

The programs for A133781, there is no canonical definition to state claims against.
-/

/-! ## A133781.P4226572944018453556

`A000040(A133782(n+1))`
-/

namespace A133781.P4226572944018453556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A133782 (n + 1)).toNat

end

end A133781.P4226572944018453556

/-! ## A133781.P1676986379525562286

`A008578(A133782(n+1)+1)`
-/

namespace A133781.P1676986379525562286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A133782 (n + 1) + 1).toNat

end

end A133781.P1676986379525562286

/-! ## A133781.P6208235808683683500

`A045319(A133782(n+1)-1)`
-/

namespace A133781.P6208235808683683500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A133782 (n + 1) - 1).toNat

end

end A133781.P6208235808683683500

/-! ## A133781.P13787859356903968700

`A065091(A133782(n+1)-1)`
-/

namespace A133781.P13787859356903968700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A133782 (n + 1) - 1).toNat

end

end A133781.P13787859356903968700

/-! ## A133781.P4140335613248386661

`A004139(A133782(n+1)-2)`
-/

namespace A133781.P4140335613248386661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A133782 (n + 1) - 2).toNat

end

end A133781.P4140335613248386661

/-!
# A133782: Indices of monotonically increasing primes which centrally enclose the prime sequence in A133781.

The programs for A133782, there is no canonical definition to state claims against.
-/

/-! ## A133782.P2608662346108512933

`A000720(A133781(n+1))`
-/

namespace A133782.P2608662346108512933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A133781 (n + 1)).toNat

end

end A133782.P2608662346108512933

/-! ## A133782.P10068820543363222950

`A061395(p?[A133781(n+1)])`
-/

namespace A133782.P10068820543363222950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133782.P10068820543363222950

/-! ## A133782.P3451623671330238457

`A061395(or(1, A133781(n+1)))`
-/

namespace A133782.P3451623671330238457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A133781 (n + 1))).toNat

end

end A133782.P3451623671330238457

/-! ## A133782.P10598338504190911880

`∑{d}[A133781(n+1), A061395(#)]`
-/

namespace A133782.P10598338504190911880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A133782.P10598338504190911880

/-! ## A133782.P6941308755520071325

`A061395(∑{p}[A133781(n+1), #])`
-/

namespace A133782.P6941308755520071325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A133782.P6941308755520071325

/-!
# A133783: Primes containing only digits from set {1,2,3,4,5,6}.

The programs for A133783, there is no canonical definition to state claims against.
-/

/-! ## A133783.P10312032983407053467

`∩[A036960(n+1), A386325(n+1)]`
-/

namespace A133783.P10312032983407053467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P10312032983407053467

/-! ## A133783.P1232701915125911946

`∩[A036962(n+1), A386325(n+1)]`
-/

namespace A133783.P1232701915125911946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P1232701915125911946

/-! ## A133783.P1911921293333566751

`∩[A036960(n+1), A386327(n+1)]`
-/

namespace A133783.P1911921293333566751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P1911921293333566751

/-! ## A133783.P15852602925267154069

`∩[A386327(n+1), A386357(n+1)]`
-/

namespace A133783.P15852602925267154069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P15852602925267154069

/-! ## A133783.P9589472776268140887

`∩[A036960(n+1), A386326(n+1)]`
-/

namespace A133783.P9589472776268140887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P9589472776268140887

/-! ## A133783.P2358257362881287915

`∩[A386326(n+1), A386358(n+1)]`
-/

namespace A133783.P2358257362881287915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P2358257362881287915

/-! ## A133783.P17591435338380822432

`∩[A036960(n+1), A038618(n+1)]`
-/

namespace A133783.P17591435338380822432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P17591435338380822432

/-! ## A133783.P5085550967248242846

`∩[A036960(n+1), A195943(n+1)]`
-/

namespace A133783.P5085550967248242846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P5085550967248242846

/-! ## A133783.P5641367922837949907

`p?[A057436(n+1)]`
-/

namespace A133783.P5641367922837949907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133783.P5641367922837949907

/-! ## A133783.P12376199737206717082

`∩[A036960(n+1), A057436(n+1)]`
-/

namespace A133783.P12376199737206717082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P12376199737206717082

/-! ## A133783.P8446555001787602426

`∩[A036962(n+1), A057436(n+1)]`
-/

namespace A133783.P8446555001787602426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P8446555001787602426

/-! ## A133783.P14682758536097627605

`∩[A038615(n+1), A057436(n+1)]`
-/

namespace A133783.P14682758536097627605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P14682758536097627605

/-! ## A133783.P16469044345596936463

`∩[A038616(n+1), A057436(n+1)]`
-/

namespace A133783.P16469044345596936463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P16469044345596936463

/-! ## A133783.P747203101365440046

`∩[A038617(n+1), A057436(n+1)]`
-/

namespace A133783.P747203101365440046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P747203101365440046

/-! ## A133783.P14644420545367698011

`∩[A038618(n+1), A057436(n+1)]`
-/

namespace A133783.P14644420545367698011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P14644420545367698011

/-! ## A133783.P14404565490303947586

`∩[A042986(n+1), A057436(n+1)]`
-/

namespace A133783.P14404565490303947586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P14404565490303947586

/-! ## A133783.P18176920449372500407

`∩[A386326(n+1), A057436(n+1)]`
-/

namespace A133783.P18176920449372500407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P18176920449372500407

/-! ## A133783.P6652399559716892024

`filter[A057436(n+1), A010051(#)]`
-/

namespace A133783.P6652399559716892024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A133783.P6652399559716892024

/-! ## A133783.P13778180055280654190

`∩[A000040(n+1), A057436(n+1)]`
-/

namespace A133783.P13778180055280654190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P13778180055280654190

/-! ## A133783.P14899336439851385365

`∩[A057436(n+1), A182986(n+1)]`
-/

namespace A133783.P14899336439851385365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133783.P14899336439851385365

/-!
# A133785: Numbers m such that integer part of the square root of m appears as a substring in m.

The programs for A133785, there is no canonical definition to state claims against.
-/

/-! ## A133785.P12706562412488754818

`eq[A000196(n+1), A054055(n+1)]+1`
-/

namespace A133785.P12706562412488754818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133785.P12706562412488754818

/-! ## A133785.P6882149713488385383

`eq[A000196(n), A054055(A017281(n))]`
-/

namespace A133785.P6882149713488385383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133785.P6882149713488385383

/-! ## A133785.P3257692655308357453

`eq[A000196(n), A054055(A028310(n))]`
-/

namespace A133785.P3257692655308357453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133785.P3257692655308357453

/-! ## A133785.P9151031551708204928

`eq[A000196(n), A054055(A045918(n))]`
-/

namespace A133785.P9151031551708204928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133785.P9151031551708204928

/-! ## A133785.P5171777781844552252

`eq[A000196(n), A054055(A047842(n))]`
-/

namespace A133785.P5171777781844552252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133785.P5171777781844552252

/-!
# A133786: Numbers prime to 10, 10's digit is odd and 100's digit is odd.

The programs for A133786, there is no canonical definition to state claims against.
-/

/-! ## A133786.P17937702749596964690

`record[A078268(eq[33, A073053(n)])]`
-/

namespace A133786.P17937702749596964690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133786.P17937702749596964690

/-! ## A133786.P12904831951773264290

`eq[A001343(n), A222212(A073053(n))]`
-/

namespace A133786.P12904831951773264290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133786.P12904831951773264290

/-! ## A133786.P14653282179093593955

`eq[A016885(A001343(n)), A196564(n)]`
-/

namespace A133786.P14653282179093593955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A001343 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133786.P14653282179093593955

/-! ## A133786.P16612950596100683480

`∩[A045798(n+1), A359651(n+1)]`
-/

namespace A133786.P16612950596100683480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133786.P16612950596100683480

/-! ## A133786.P16090125398628720657

`lt[A006530(A366665(n)), A196564(n)]`
-/

namespace A133786.P16090125398628720657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A366665 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133786.P16090125398628720657

/-!
# A133787: Number of wide partitions whose first part is of size n.

The programs for A133787, there is no canonical definition to state claims against.
-/

/-! ## A133787.P11659622862382761983

`or(A004198(A296293(2*n)), A052855(n+1))`
-/

namespace A133787.P11659622862382761983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A296293 (2 * n)).toNat) (A052855 (n + 1))

end

end A133787.P11659622862382761983

/-! ## A133787.P5336424296601377902

`Δ[A391774(n+1)]`
-/

namespace A133787.P5336424296601377902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133787.P5336424296601377902

/-!
# A133788: Primes where the record gaps in A053686 first appear.

The programs for A133788, there is no canonical definition to state claims against.
-/

/-! ## A133788.P13562569737835955977

`A104138(A053686(n+1)-1)`
-/

namespace A133788.P13562569737835955977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A053686 (n + 1) - 1).toNat

end

end A133788.P13562569737835955977

/-! ## A133788.P16149270159828389226

`A000230(A053686(n+1)/2)`
-/

namespace A133788.P16149270159828389226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A053686 (n + 1) : ℚ) / 2)).toNat

end

end A133788.P16149270159828389226

/-!
# A133789: Let P(A) denote the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are disjoint and for which x is not a subset of y and y is not a subset of x, 1) x and y are disjoint and for which either x is a subset of y or y is a subset of x, or 2) x and y intersect but for which x is not a subset of y and y is not a subset of x.

The programs for A133789, the canonical program `A133789.P6374741822996507798` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133789 has offset 0).

The definition of A133789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133789.P5521899441774976703

`1/2*(4^n-2*3^n+3*2^n-2)`
-/

namespace A133789.P5521899441774976703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((4 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + (3 * 2 ^ n : ℤ) - 2 : ℚ)

end

end A133789.P5521899441774976703

namespace A133789

/-- `1/2*(4^n-2*3^n+3*2^n-2)` -/
def P5521899441774976703.Spec : Prop :=
  ∀ n, P5521899441774976703.a n = (A133789 n : ℚ)

theorem P5521899441774976703.correct : P5521899441774976703.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A133789, Nat.add_sub_cancel, A133789.P5521899441774976703.a, A133789.P6374741822996507798.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A133789, Nat.add_sub_cancel, A133789.P5521899441774976703.a, A133789.P6374741822996507798.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A133789

/-! ## A133789.P9593443385162759499

`A084869(n)-1`
-/

namespace A133789.P9593443385162759499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - 1

end

end A133789.P9593443385162759499

namespace A133789

/-- `A084869(n)-1` -/
def P9593443385162759499.Spec : Prop :=
  ∀ n, P9593443385162759499.a n = A133789 n

end A133789

/-! ## A133789.P6374741822996507798

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=16`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A133789

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P6374741822996507798.Spec : Prop :=
  ∀ n, P6374741822996507798.a n = A133789 n

theorem P6374741822996507798.correct : P6374741822996507798.Spec := by
  intro n
  simp only [A133789]

end A133789

/-! ## A133789.P14489155738653094053

`A134165(n)-2^n`
-/

namespace A133789.P14489155738653094053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - (2 ^ n : ℤ)

end

end A133789.P14489155738653094053

namespace A133789

/-- `A134165(n)-2^n` -/
def P14489155738653094053.Spec : Prop :=
  ∀ n, P14489155738653094053.a n = A133789 n

end A133789

/-! ## A133789.P16655832117185071770

`floor(A134168(n)-3^n/2)`
-/

namespace A133789.P16655832117185071770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134168 n : ℚ) - (3 ^ n : ℚ) / 2⌋

end

end A133789.P16655832117185071770

namespace A133789

/-- `floor(A134168(n)-3^n/2)` -/
def P16655832117185071770.Spec : Prop :=
  ∀ n, P16655832117185071770.a n = A133789 n

end A133789

/-! ## A133789.P9011483315847640499

`abs((2^n-1)*(2^(n-1)-1)-A005061(n))`
-/

namespace A133789.P9011483315847640499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) - (A005061 n : ℚ)|

end

end A133789.P9011483315847640499

namespace A133789

/-- `abs((2^n-1)*(2^(n-1)-1)-A005061(n))` -/
def P9011483315847640499.Spec : Prop :=
  ∀ n, P9011483315847640499.a n = (A133789 n : ℚ)

end A133789

/-! ## A133789.P16321692902569825416

`abs(1-floor(A007051(n)+(2^n+4^n)/2-(∑[3^n]+1-2^n)))`
-/

namespace A133789.P16321692902569825416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌊(A007051 n : ℚ) + ((2 ^ n + 4 ^ n : ℚ) / 2 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ)) : ℚ))⌋|

end

end A133789.P16321692902569825416

namespace A133789

/-- `abs(1-floor(A007051(n)+(2^n+4^n)/2-(∑[3^n]+1-2^n)))` -/
def P16321692902569825416.Spec : Prop :=
  ∀ n, P16321692902569825416.a n = A133789 n

end A133789

/-! ## A133789.P16546585535022845147

`A394314(n)+A131577(n)`
-/

namespace A133789.P16546585535022845147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394314 n + A131577 n

end

end A133789.P16546585535022845147

namespace A133789

/-- `A394314(n)+A131577(n)` -/
def P16546585535022845147.Spec : Prop :=
  ∀ n, P16546585535022845147.a n = A133789 n

end A133789

/-! ## A133789.P10178426444916396288

`A007582(n)-A083323(n)`
-/

namespace A133789.P10178426444916396288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A083323 n

end

end A133789.P10178426444916396288

namespace A133789

/-- `A007582(n)-A083323(n)` -/
def P10178426444916396288.Spec : Prop :=
  ∀ n, P10178426444916396288.a n = A133789 n

end A133789

/-! ## A133789.P807881883884904101

`A094375(n)-A002783(n)`
-/

namespace A133789.P807881883884904101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n - A002783 n

end

end A133789.P807881883884904101

namespace A133789

/-- `A094375(n)-A002783(n)` -/
def P807881883884904101.Spec : Prop :=
  ∀ n, P807881883884904101.a n = A133789 n

end A133789

/-! ## A133789.P10494106934413239196

`A005061(n)-A134057(n)`
-/

namespace A133789.P10494106934413239196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n - A134057 n

end

end A133789.P10494106934413239196

namespace A133789

/-- `A005061(n)-A134057(n)` -/
def P10494106934413239196.Spec : Prop :=
  ∀ n, P10494106934413239196.a n = A133789 n

end A133789

/-! ## A133789.P18412391805002518211

`A134168(n)-A007051(n)`
-/

namespace A133789.P18412391805002518211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - A007051 n

end

end A133789.P18412391805002518211

namespace A133789

/-- `A134168(n)-A007051(n)` -/
def P18412391805002518211.Spec : Prop :=
  ∀ n, P18412391805002518211.a n = A133789 n

end A133789

/-! ## A133789.P8222771691226363796

`A099393(n)-A094375(n)`
-/

namespace A133789.P8222771691226363796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099393 n - A094375 n

end

end A133789.P8222771691226363796

namespace A133789

/-- `A099393(n)-A094375(n)` -/
def P8222771691226363796.Spec : Prop :=
  ∀ n, P8222771691226363796.a n = A133789 n

end A133789

/-! ## A133789.P16629750969402106325

`A083324(n)-A134169(n)`
-/

namespace A133789.P16629750969402106325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 n - A134169 n

end

end A133789.P16629750969402106325

namespace A133789

/-- `A083324(n)-A134169(n)` -/
def P16629750969402106325.Spec : Prop :=
  ∀ n, P16629750969402106325.a n = A133789 n

end A133789

/-! ## A133789.P18035878816536028605

`A256873(n)-A001550(n)`
-/

namespace A133789.P18035878816536028605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n - A001550 n

end

end A133789.P18035878816536028605

namespace A133789

/-- `A256873(n)-A001550(n)` -/
def P18035878816536028605.Spec : Prop :=
  ∀ n, P18035878816536028605.a n = A133789 n

end A133789

/-! ## A133789.P17339841906120826192

`A257273(n)-A034472(n)`
-/

namespace A133789.P17339841906120826192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A034472 n

end

end A133789.P17339841906120826192

namespace A133789

/-- `A257273(n)-A034472(n)` -/
def P17339841906120826192.Spec : Prop :=
  ∀ n, P17339841906120826192.a n = A133789 n

end A133789

/-! ## A133789.P2975824893046296460

`A006516(n)-A028243(n+1)`
-/

namespace A133789.P2975824893046296460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n - A028243 (n + 1)

end

end A133789.P2975824893046296460

namespace A133789

/-- `A006516(n)-A028243(n+1)` -/
def P2975824893046296460.Spec : Prop :=
  ∀ n, P2975824893046296460.a n = A133789 n

end A133789

/-! ## A133789.P7653951739904307868

`A028401(n+2)-A168607(n)`
-/

namespace A133789.P7653951739904307868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028401 (n + 2) - A168607 n

end

end A133789.P7653951739904307868

namespace A133789

/-- `A028401(n+2)-A168607(n)` -/
def P7653951739904307868.Spec : Prop :=
  ∀ n, P7653951739904307868.a n = A133789 n

end A133789

/-! ## A133789.P15373356282473434498

`(A134018(n)+A053154(n))/2`
-/

namespace A133789.P15373356282473434498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134018 n + A053154 n : ℚ) / 2

end

end A133789.P15373356282473434498

namespace A133789

/-- `(A134018(n)+A053154(n))/2` -/
def P15373356282473434498.Spec : Prop :=
  ∀ n, P15373356282473434498.a n = (A133789 n : ℚ)

end A133789

/-! ## A133789.P5744897556211125062

`A007179(2*n)-A028243(n+1)`
-/

namespace A133789.P5744897556211125062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (2 * n) - A028243 (n + 1)

end

end A133789.P5744897556211125062

namespace A133789

/-- `A007179(2*n)-A028243(n+1)` -/
def P5744897556211125062.Spec : Prop :=
  ∀ n, P5744897556211125062.a n = A133789 n

end A133789

/-!
# A133790: A014963*A100994.

The programs for A133790, the canonical program `A133790.P1304857856387139894` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133790 has offset 1).

The definition of A133790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133790.P1304857856387139894

`∏{p}[A014963(n+1), #*(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A133790

/-- `∏{p}[A014963(n+1), #*(n+1)]` -/
def P1304857856387139894.Spec : Prop :=
  ∀ n, (P1304857856387139894.a n : ℤ) = A133790 (n + 1)

theorem P1304857856387139894.correct : P1304857856387139894.Spec := by
  intro n
  simp only [A133790, Nat.add_sub_cancel]

end A133790

/-! ## A133790.P13397513814376962885

`∏{d}[n+1, A014963(lcm(#, n+1))]`
-/

namespace A133790.P13397513814376962885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A014963 (Nat.lcm d (n + 1))

end

end A133790.P13397513814376962885

namespace A133790

/-- `∏{d}[n+1, A014963(lcm(#, n+1))]` -/
def P13397513814376962885.Spec : Prop :=
  ∀ n, P13397513814376962885.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P5980886286954416229

`∏{d}[n+1, A014963(gcd(n, #)+n)]`
-/

namespace A133790.P5980886286954416229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A014963 (Nat.gcd n d + n)

end

end A133790.P5980886286954416229

namespace A133790

/-- `∏{d}[n+1, A014963(gcd(n, #)+n)]` -/
def P5980886286954416229.Spec : Prop :=
  ∀ n, P5980886286954416229.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P4685088473974476427

`∏{d}[n+1, A014963(ceil(acot(#)+n))]`
-/

namespace A133790.P4685088473974476427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A014963 ⌈SequenceMachineLib.acot (d : ℝ) + (n : ℝ)⌉.toNat

end

end A133790.P4685088473974476427

namespace A133790

/-- `∏{d}[n+1, A014963(ceil(acot(#)+n))]` -/
def P4685088473974476427.Spec : Prop :=
  ∀ n, P4685088473974476427.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P11721745556768422672

`A014963(∏{p}[n+1, #])^∏{e}[n+1, #+1]`
-/

namespace A133790.P11721745556768422672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A133790.P11721745556768422672

namespace A133790

/-- `A014963(∏{p}[n+1, #])^∏{e}[n+1, #+1]` -/
def P11721745556768422672.Spec : Prop :=
  ∀ n, P11721745556768422672.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P11045047113812671782

`A050399(A100994(n+1))`
-/

namespace A133790.P11045047113812671782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (A100994 (n + 1)).toNat

end

end A133790.P11045047113812671782

namespace A133790

/-- `A050399(A100994(n+1))` -/
def P11045047113812671782.Spec : Prop :=
  ∀ n, P11045047113812671782.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P13283264163309603057

`A014963(n+1)^Δ[A006218(n)]`
-/

namespace A133790.P13283264163309603057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A133790.P13283264163309603057

namespace A133790

/-- `A014963(n+1)^Δ[A006218(n)]` -/
def P13283264163309603057.Spec : Prop :=
  ∀ n, P13283264163309603057.a n = (A133790 (n + 1) : ℚ)

end A133790

/-! ## A133790.P3489843357513495673

`A014963(n+1)*A100994(n+1)`
-/

namespace A133790.P3489843357513495673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A100994 (n + 1)

end

end A133790.P3489843357513495673

namespace A133790

/-- `A014963(n+1)*A100994(n+1)` -/
def P3489843357513495673.Spec : Prop :=
  ∀ n, P3489843357513495673.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P14102611470405519421

`A014963(n+1)^A000005(n+1)`
-/

namespace A133790.P14102611470405519421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A133790.P14102611470405519421

namespace A133790

/-- `A014963(n+1)^A000005(n+1)` -/
def P14102611470405519421.Spec : Prop :=
  ∀ n, P14102611470405519421.a n = (A133790 (n + 1) : ℚ)

end A133790

/-! ## A133790.P12960395127987394412

`A014963(n+1)^A016003(n+1)`
-/

namespace A133790.P12960395127987394412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (A016003 (n + 1) : ℤ)

end

end A133790.P12960395127987394412

namespace A133790

/-- `A014963(n+1)^A016003(n+1)` -/
def P12960395127987394412.Spec : Prop :=
  ∀ n, P12960395127987394412.a n = (A133790 (n + 1) : ℚ)

end A133790

/-! ## A133790.P9235513586121795330

`A014963(n+1)^A327527(n+1)`
-/

namespace A133790.P9235513586121795330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (A327527 (n + 1) : ℤ)

end

end A133790.P9235513586121795330

namespace A133790

/-- `A014963(n+1)^A327527(n+1)` -/
def P9235513586121795330.Spec : Prop :=
  ∀ n, P9235513586121795330.a n = (A133790 (n + 1) : ℚ)

end A133790

/-! ## A133790.P3940476362626039256

`A050399(gcd(n+1, A069859(n+1)))`
-/

namespace A133790.P3940476362626039256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (Int.gcd (n + 1 : ℤ) (A069859 (n + 1)))

end

end A133790.P3940476362626039256

namespace A133790

/-- `A050399(gcd(n+1, A069859(n+1)))` -/
def P3940476362626039256.Spec : Prop :=
  ∀ n, P3940476362626039256.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P1850264890278443293

`gcd(A064549(n+1), A079872(n+1))`
-/

namespace A133790.P1850264890278443293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064549 (n + 1)) (A079872 (n + 1))

end

end A133790.P1850264890278443293

namespace A133790

/-- `gcd(A064549(n+1), A079872(n+1))` -/
def P1850264890278443293.Spec : Prop :=
  ∀ n, (P1850264890278443293.a n : ℤ) = A133790 (n + 1)

end A133790

/-! ## A133790.P3670798122975626244

`A014963(n+1)^(A001222(n+1)+1)`
-/

namespace A133790.P3670798122975626244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (A001222 (n + 1) + 1 : ℤ)

end

end A133790.P3670798122975626244

namespace A133790

/-- `A014963(n+1)^(A001222(n+1)+1)` -/
def P3670798122975626244.Spec : Prop :=
  ∀ n, P3670798122975626244.a n = (A133790 (n + 1) : ℚ)

end A133790

/-! ## A133790.P2638863739118405250

`(A014963(n+1)-1)*A000203(n+1)+1`
-/

namespace A133790.P2638863739118405250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) - 1) * A000203 (n + 1) + 1

end

end A133790.P2638863739118405250

namespace A133790

/-- `(A014963(n+1)-1)*A000203(n+1)+1` -/
def P2638863739118405250.Spec : Prop :=
  ∀ n, P2638863739118405250.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P3437899678065033112

`A100994(n+1)²/A100994(A048671(n+1))`
-/

namespace A133790.P3437899678065033112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100994 (n + 1) ^ 2 : ℚ) / (A100994 (A048671 (n + 1)).toNat : ℚ)

end

end A133790.P3437899678065033112

namespace A133790

/-- `A100994(n+1)²/A100994(A048671(n+1))` -/
def P3437899678065033112.Spec : Prop :=
  ∀ n, P3437899678065033112.a n = (A133790 (n + 1) : ℚ)

end A133790

/-! ## A133790.P18336890482513074779

`A100994(n+1)*A100994(A100994(∏{p}[n+1, #]))`
-/

namespace A133790.P18336890482513074779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) * A100994 (A100994 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A133790.P18336890482513074779

namespace A133790

/-- `A100994(n+1)*A100994(A100994(∏{p}[n+1, #]))` -/
def P18336890482513074779.Spec : Prop :=
  ∀ n, P18336890482513074779.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P2931554045948621180

`(A133937(n+1)+A048671(n+1))*A014963(n+1)`
-/

namespace A133790.P2931554045948621180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133937 (n + 1) + A048671 (n + 1)) * A014963 (n + 1)

end

end A133790.P2931554045948621180

namespace A133790

/-- `(A133937(n+1)+A048671(n+1))*A014963(n+1)` -/
def P2931554045948621180.Spec : Prop :=
  ∀ n, P2931554045948621180.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P2557761769389554253

`A100994(n+1)+A120007(n+1)*A133937(n+1)`
-/

namespace A133790.P2557761769389554253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) + A120007 (n + 1) * A133937 (n + 1)

end

end A133790.P2557761769389554253

namespace A133790

/-- `A100994(n+1)+A120007(n+1)*A133937(n+1)` -/
def P2557761769389554253.Spec : Prop :=
  ∀ n, P2557761769389554253.a n = A133790 (n + 1)

end A133790

/-! ## A133790.P10325470721075043840

`A100994(n+1)²/gcd(A001615(n+1), A100994(n+1))`
-/

namespace A133790.P10325470721075043840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100994 (n + 1) ^ 2 : ℚ) / (Int.gcd (A001615 (n + 1)) (A100994 (n + 1)) : ℚ)

end

end A133790.P10325470721075043840

namespace A133790

/-- `A100994(n+1)²/gcd(A001615(n+1), A100994(n+1))` -/
def P10325470721075043840.Spec : Prop :=
  ∀ n, P10325470721075043840.a n = (A133790 (n + 1) : ℚ)

end A133790

/-!
# A133791: Number of n X n binary matrices with every 1 adjacent to some 0 horizontally, vertically, diagonally or antidiagonally.

The programs for A133791, there is no canonical definition to state claims against.
-/

/-! ## A133791.P230713300668717531

`A218663(2*(n+1)²-2*(n+1)+1)`
-/

namespace A133791.P230713300668717531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A133791.P230713300668717531

/-! ## A133791.P7680923558528011498

`or(1, A218663(A001844(n)))`
-/

namespace A133791.P7680923558528011498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218663 (A001844 n).toNat)

end

end A133791.P7680923558528011498

/-! ## A133791.P16499302211563968781

`record[A218663(Δ[A235355(n)])]`
-/

namespace A133791.P16499302211563968781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133791.P16499302211563968781

/-! ## A133791.P17395109657345518238

`record[A218663(A330613(n+1))]`
-/

namespace A133791.P17395109657345518238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133791.P17395109657345518238

/-! ## A133791.P8618752585647328779

`record[A003982(n)*A218663(n+1)]`
-/

namespace A133791.P8618752585647328779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133791.P8618752585647328779

/-!
# A133792: Number of n X n binary matrices with every 1 adjacent to some 0 and every 0 adjacent to some 1, horizontally or vertically.

The programs for A133792, there is no canonical definition to state claims against.
-/

/-! ## A133792.P11099813166876824779

`2*A180761(n+2)`
-/

namespace A133792.P11099813166876824779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180761 (n + 2)

end

end A133792.P11099813166876824779

/-! ## A133792.P2998189969471724311

`2*A180771(A001844(n+1))`
-/

namespace A133792.P2998189969471724311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180771 (A001844 (n + 1)).toNat

end

end A133792.P2998189969471724311

/-!
# A133794: Times on a 12-hour digital clock with all digits in {1, 2, 3, 4, 5, 6}.

The programs for A133794, there is no canonical definition to state claims against.
-/

/-! ## A133794.P8326922236748331754

`A134496(lt[log(∑{digits}[n, 10^#]), 13]+3)`
-/

namespace A133794.P8326922236748331754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134496 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n + 3)

end

end A133794.P8326922236748331754

/-! ## A133794.P3603948919050513532

`A134496(lt[∑{digits}[n, #^3], cosh(6)]+3)`
-/

namespace A133794.P3603948919050513532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 3).sum

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (6 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134496 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f3 j) n + 3)

end

end A133794.P3603948919050513532

/-! ## A133794.P13965414889536378607

`A134496(A007092(n)+3)`
-/

namespace A133794.P13965414889536378607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134496 (A007092 n + 3).toNat

end

end A133794.P13965414889536378607

/-! ## A133794.P13477708490668850936

`A134496(A057436(n+1)+2)`
-/

namespace A133794.P13477708490668850936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134496 (A057436 (n + 1) + 2).toNat

end

end A133794.P13477708490668850936

/-! ## A133794.P7719131698819572812

`A134496(∑[gcd(5, A152035(n))]+2)`
-/

namespace A133794.P7719131698819572812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A152035 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134496 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A133794.P7719131698819572812

/-!
# A133795: a(n) = n-th semiprime + n-th non-semiprime.

The programs for A133795, the canonical program `A133795.P5198213885551463269` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133795 has offset 1).

The definition of A133795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A100959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133795.P5198213885551463269

`A001358(n+1)+A100959(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A133795

/-- `A001358(n+1)+A100959(n+1)` -/
def P5198213885551463269.Spec : Prop :=
  ∀ n, P5198213885551463269.a n = A133795 (n + 1)

theorem P5198213885551463269.correct : P5198213885551463269.Spec := by
  intro n
  simp only [A133795, Nat.add_sub_cancel]

end A133795

/-! ## A133795.P1049795562656267908

`A100959(n+1)+sqrt(A074985(n+1))`
-/

namespace A133795.P1049795562656267908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100959 (n + 1) : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A133795.P1049795562656267908

namespace A133795

/-- `A100959(n+1)+sqrt(A074985(n+1))` -/
def P1049795562656267908.Spec : Prop :=
  ∀ n, P1049795562656267908.a n = (A133795 (n + 1) : ℝ)

end A133795

/-! ## A133795.P14045825377870030871

`A088707(n+1)+comp[A186621(n+1)]`
-/

namespace A133795.P14045825377870030871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A133795.P14045825377870030871

namespace A133795

/-- `A088707(n+1)+comp[A186621(n+1)]` -/
def P14045825377870030871.Spec : Prop :=
  ∀ n, P14045825377870030871.a n = A133795 (n + 1)

end A133795

/-! ## A133795.P1200929777499657547

`A088707(n+1)+eq[0, A064911(n+1)]`
-/

namespace A133795.P1200929777499657547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A133795.P1200929777499657547

namespace A133795

/-- `A088707(n+1)+eq[0, A064911(n+1)]` -/
def P1200929777499657547.Spec : Prop :=
  ∀ n, P1200929777499657547.a n = A133795 (n + 1)

end A133795

/-! ## A133795.P13819301973487057691

`A100959(n+1)+A175708(n+1)+1+n`
-/

namespace A133795.P13819301973487057691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1) + (A175708 (n + 1) + 1 + (n : ℤ))

end

end A133795.P13819301973487057691

namespace A133795

/-- `A100959(n+1)+A175708(n+1)+1+n` -/
def P13819301973487057691.Spec : Prop :=
  ∀ n, P13819301973487057691.a n = A133795 (n + 1)

end A133795

/-! ## A133795.P8023347074604602827

`A215261(2*n+1)+A001358(n+1)`
-/

namespace A133795.P8023347074604602827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (2 * n + 1) + A001358 (n + 1)

end

end A133795.P8023347074604602827

namespace A133795

/-- `A215261(2*n+1)+A001358(n+1)` -/
def P8023347074604602827.Spec : Prop :=
  ∀ n, P8023347074604602827.a n = A133795 (n + 1)

end A133795

/-! ## A133795.P13282115748057057268

`A001358(n+1)+A215261(record[A093178(n)])`
-/

namespace A133795.P13282115748057057268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + A215261 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133795.P13282115748057057268

namespace A133795

/-- `A001358(n+1)+A215261(record[A093178(n)])` -/
def P13282115748057057268.Spec : Prop :=
  ∀ n, P13282115748057057268.a n = A133795 (n + 1)

end A133795

/-! ## A133795.P15749241336109844168

`A100959(n+1)+eq[2, A105700(n)]`
-/

namespace A133795.P15749241336109844168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A133795.P15749241336109844168

namespace A133795

/-- `A100959(n+1)+eq[2, A105700(n)]` -/
def P15749241336109844168.Spec : Prop :=
  ∀ n, P15749241336109844168.a n = A133795 (n + 1)

end A133795

/-! ## A133795.P9596001841725640464

`A100959(n+1)+eq[2, A226378(n)]`
-/

namespace A133795.P9596001841725640464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A133795.P9596001841725640464

namespace A133795

/-- `A100959(n+1)+eq[2, A226378(n)]` -/
def P9596001841725640464.Spec : Prop :=
  ∀ n, P9596001841725640464.a n = A133795 (n + 1)

end A133795

/-!
# A133796: a(n) = n-th prime + n-th semiprime.

The programs for A133796, the canonical program `A133796.P4942108177998988067` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133796 has offset 1).

The definition of A133796 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001358, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133796.P4942108177998988067

`A000040(n+1)+A001358(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A133796

/-- `A000040(n+1)+A001358(n+1)` -/
def P4942108177998988067.Spec : Prop :=
  ∀ n, P4942108177998988067.a n = A133796 (n + 1)

theorem P4942108177998988067.correct : P4942108177998988067.Spec := by
  intro n
  simp only [A133796, Nat.add_sub_cancel]

end A133796

/-! ## A133796.P13946031155969845082

`A001358(n+1)+Δ[A007504(n)]`
-/

namespace A133796.P13946031155969845082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (f1 (n + 1) - f1 n)

end

end A133796.P13946031155969845082

namespace A133796

/-- `A001358(n+1)+Δ[A007504(n)]` -/
def P13946031155969845082.Spec : Prop :=
  ∀ n, P13946031155969845082.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P15108896442842155492

`A088707(n+1)+A006093(n+1)`
-/

namespace A133796.P15108896442842155492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + A006093 (n + 1)

end

end A133796.P15108896442842155492

namespace A133796

/-- `A088707(n+1)+A006093(n+1)` -/
def P15108896442842155492.Spec : Prop :=
  ∀ n, P15108896442842155492.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P8729576319371060465

`A100493(n+1)+A014689(n+1)`
-/

namespace A133796.P8729576319371060465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) + A014689 (n + 1)

end

end A133796.P8729576319371060465

namespace A133796

/-- `A100493(n+1)+A014689(n+1)` -/
def P8729576319371060465.Spec : Prop :=
  ∀ n, P8729576319371060465.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P15218667864237006060

`A075818(n+1)+A065870(n+1)`
-/

namespace A133796.P15218667864237006060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + A065870 (n + 1)

end

end A133796.P15218667864237006060

namespace A133796

/-- `A075818(n+1)+A065870(n+1)` -/
def P15218667864237006060.Spec : Prop :=
  ∀ n, P15218667864237006060.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P10263313438121250431

`A175708(n+1)+A014688(n+1)`
-/

namespace A133796.P10263313438121250431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + A014688 (n + 1)

end

end A133796.P10263313438121250431

namespace A133796

/-- `A175708(n+1)+A014688(n+1)` -/
def P10263313438121250431.Spec : Prop :=
  ∀ n, P10263313438121250431.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P2930347148160905202

`A186621(n+1)+A008864(n+1)`
-/

namespace A133796.P2930347148160905202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + A008864 (n + 1)

end

end A133796.P2930347148160905202

namespace A133796

/-- `A186621(n+1)+A008864(n+1)` -/
def P2930347148160905202.Spec : Prop :=
  ∀ n, P2930347148160905202.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P8982520568187991799

`A114382(n+1)-A014612(n+1)`
-/

namespace A133796.P8982520568187991799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114382 (n + 1) - A014612 (n + 1)

end

end A133796.P8982520568187991799

namespace A133796

/-- `A114382(n+1)-A014612(n+1)` -/
def P8982520568187991799.Spec : Prop :=
  ∀ n, P8982520568187991799.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P11881307850517644843

`A100484(n+1)-A065870(n+1)`
-/

namespace A133796.P11881307850517644843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A065870 (n + 1)

end

end A133796.P11881307850517644843

namespace A133796

/-- `A100484(n+1)-A065870(n+1)` -/
def P11881307850517644843.Spec : Prop :=
  ∀ n, P11881307850517644843.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P11886654518371471857

`A001748(n+1)-A175511(n+1)`
-/

namespace A133796.P11886654518371471857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A175511 (n + 1)

end

end A133796.P11886654518371471857

namespace A133796

/-- `A001748(n+1)-A175511(n+1)` -/
def P11886654518371471857.Spec : Prop :=
  ∀ n, P11886654518371471857.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P7049908561792463961

`Δ[A007504(n)]+sqrt(A074985(n+1))`
-/

namespace A133796.P7049908561792463961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A133796.P7049908561792463961

namespace A133796

/-- `Δ[A007504(n)]+sqrt(A074985(n+1))` -/
def P7049908561792463961.Spec : Prop :=
  ∀ n, P7049908561792463961.a n = (A133796 (n + 1) : ℝ)

end A133796

/-! ## A133796.P14172190675157780223

`A001358(n+1)+sqrt(A001248(n+1))`
-/

namespace A133796.P14172190675157780223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A133796.P14172190675157780223

namespace A133796

/-- `A001358(n+1)+sqrt(A001248(n+1))` -/
def P14172190675157780223.Spec : Prop :=
  ∀ n, P14172190675157780223.a n = (A133796 (n + 1) : ℝ)

end A133796

/-! ## A133796.P17740742040035769549

`A000040(n+1)+sqrt(A074985(n+1))`
-/

namespace A133796.P17740742040035769549
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A133796.P17740742040035769549

namespace A133796

/-- `A000040(n+1)+sqrt(A074985(n+1))` -/
def P17740742040035769549.Spec : Prop :=
  ∀ n, P17740742040035769549.a n = (A133796 (n + 1) : ℝ)

end A133796

/-! ## A133796.P16908354775336612430

`A001358(n+1)+A006093(n+1)+1`
-/

namespace A133796.P16908354775336612430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A006093 (n + 1) + 1)

end

end A133796.P16908354775336612430

namespace A133796

/-- `A001358(n+1)+A006093(n+1)+1` -/
def P16908354775336612430.Spec : Prop :=
  ∀ n, P16908354775336612430.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P6697440762120127773

`A000040(n+1)+A186621(n+1)+1`
-/

namespace A133796.P6697440762120127773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A186621 (n + 1) + 1)

end

end A133796.P6697440762120127773

namespace A133796

/-- `A000040(n+1)+A186621(n+1)+1` -/
def P6697440762120127773.Spec : Prop :=
  ∀ n, P6697440762120127773.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P5233852685451246794

`A001358(n+1)+A008864(n+1)-1`
-/

namespace A133796.P5233852685451246794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A008864 (n + 1) - 1)

end

end A133796.P5233852685451246794

namespace A133796

/-- `A001358(n+1)+A008864(n+1)-1` -/
def P5233852685451246794.Spec : Prop :=
  ∀ n, P5233852685451246794.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P17473495035936902714

`A001358(n+1)+A040976(n+1)+2`
-/

namespace A133796.P17473495035936902714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A040976 (n + 1) + 2)

end

end A133796.P17473495035936902714

namespace A133796

/-- `A001358(n+1)+A040976(n+1)+2` -/
def P17473495035936902714.Spec : Prop :=
  ∀ n, P17473495035936902714.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P13335097562376021602

`A000040(n+1)+A088707(n+1)-1`
-/

namespace A133796.P13335097562376021602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A088707 (n + 1) - 1)

end

end A133796.P13335097562376021602

namespace A133796

/-- `A000040(n+1)+A088707(n+1)-1` -/
def P13335097562376021602.Spec : Prop :=
  ∀ n, P13335097562376021602.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P3529805253151125662

`A006093(n+1)+A186621(n+1)+2`
-/

namespace A133796.P3529805253151125662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A186621 (n + 1) + 2)

end

end A133796.P3529805253151125662

namespace A133796

/-- `A006093(n+1)+A186621(n+1)+2` -/
def P3529805253151125662.Spec : Prop :=
  ∀ n, P3529805253151125662.a n = A133796 (n + 1)

end A133796

/-! ## A133796.P11469638205365738903

`A001358(n+1)+A052147(n+1)-2`
-/

namespace A133796.P11469638205365738903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A052147 (n + 1) - 2)

end

end A133796.P11469638205365738903

namespace A133796

/-- `A001358(n+1)+A052147(n+1)-2` -/
def P11469638205365738903.Spec : Prop :=
  ∀ n, P11469638205365738903.a n = A133796 (n + 1)

end A133796

/-!
# A133798: a(n) = A002467(n) - 1.

The programs for A133798, the canonical program `A133798.P3640702929185874138` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133798 has offset 1).

The definition of A133798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133798.P3640702929185874138

`A002467(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133798

/-- `A002467(n+1)-1` -/
def P3640702929185874138.Spec : Prop :=
  ∀ n, P3640702929185874138.a n = A133798 (n + 1)

theorem P3640702929185874138.correct : P3640702929185874138.Spec := by
  intro n
  simp only [A133798, Nat.add_sub_cancel]

end A133798

/-! ## A133798.P11648670433989293631

`xor(1, (n+1)*a(n-1)+n)` with `a(0)=0`
-/

namespace A133798.P11648670433989293631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 ((n + 1) * a (n - 1) + n)

end

end A133798.P11648670433989293631

namespace A133798

/-- `xor(1, (n+1)*a(n-1)+n)` -/
def P11648670433989293631.Spec : Prop :=
  ∀ n, (P11648670433989293631.a n : ℤ) = A133798 (n + 1)

end A133798

/-! ## A133798.P15839644448035003204

`(n+1)*a(n-1)+(-1)^n+n` with `a(0)=0`
-/

namespace A133798.P15839644448035003204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) * a (n - 1) + ((-1) ^ n + (n : ℤ))

end

end A133798.P15839644448035003204

namespace A133798

/-- `(n+1)*a(n-1)+(-1)^n+n` -/
def P15839644448035003204.Spec : Prop :=
  ∀ n, P15839644448035003204.a n = A133798 (n + 1)

end A133798

/-! ## A133798.P17693076422017752904

`n*(a(n-1)+a(n-2)+2)-1` with `a(0)=0, a(1)=0`
-/

namespace A133798.P17693076422017752904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) * (a (n - 1) + (a (n - 2) + 2)) - 1

end

end A133798.P17693076422017752904

namespace A133798

/-- `n*(a(n-1)+a(n-2)+2)-1` -/
def P17693076422017752904.Spec : Prop :=
  ∀ n, P17693076422017752904.a n = A133798 (n + 1)

end A133798

/-! ## A133798.P11413056326308021651

`A061018(∑[n+1])-1`
-/

namespace A133798.P11413056326308021651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061018 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A133798.P11413056326308021651

namespace A133798

/-- `A061018(∑[n+1])-1` -/
def P11413056326308021651.Spec : Prop :=
  ∀ n, P11413056326308021651.a n = A133798 (n + 1)

end A133798

/-! ## A133798.P5118258305376676154

`A145877(∑[n]+1)-1`
-/

namespace A133798.P5118258305376676154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145877 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A133798.P5118258305376676154

namespace A133798

/-- `A145877(∑[n]+1)-1` -/
def P5118258305376676154.Spec : Prop :=
  ∀ n, P5118258305376676154.a n = A133798 (n + 1)

end A133798

/-! ## A133798.P13731233517957227951

`A208956(∑[n]+1)-1`
-/

namespace A133798.P13731233517957227951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208956 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A133798.P13731233517957227951

namespace A133798

/-- `A208956(∑[n]+1)-1` -/
def P13731233517957227951.Spec : Prop :=
  ∀ n, P13731233517957227951.a n = A133798 (n + 1)

end A133798

/-! ## A133798.P1957466166259115040

`A306015(∑[n+1])-1`
-/

namespace A133798.P1957466166259115040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306015 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A133798.P1957466166259115040

namespace A133798

/-- `A306015(∑[n+1])-1` -/
def P1957466166259115040.Spec : Prop :=
  ∀ n, P1957466166259115040.a n = A133798 (n + 1)

end A133798

/-! ## A133798.P1100770111811753561

`A324362(∑[n+2])-1`
-/

namespace A133798.P1100770111811753561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A133798.P1100770111811753561

namespace A133798

/-- `A324362(∑[n+2])-1` -/
def P1100770111811753561.Spec : Prop :=
  ∀ n, P1100770111811753561.a n = A133798 (n + 1)

end A133798

/-! ## A133798.P4441665422250136117

`A000240(n+1)+A155521(n)-1`
-/

namespace A133798.P4441665422250136117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000240 (n + 1) + (A155521 n - 1)

end

end A133798.P4441665422250136117

namespace A133798

/-- `A000240(n+1)+A155521(n)-1` -/
def P4441665422250136117.Spec : Prop :=
  ∀ n, P4441665422250136117.a n = A133798 (n + 1)

end A133798

/-!
# A133799: a(2) = 1, a(3)=3; for n >= 4, a(n) = (n-2)!*Stirling_2(n,n-1)/2 = n!/4.

The programs for A133799, there is no canonical definition to state claims against.
-/

/-! ## A133799.P16642240917459524723

`ceil(n!/2)*∑[n+1]`
-/

namespace A133799.P16642240917459524723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / 2⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133799.P16642240917459524723

/-! ## A133799.P5437742565118494960

`round(n!/2)*∑[n+1]`
-/

namespace A133799.P5437742565118494960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133799.P5437742565118494960

/-! ## A133799.P12587238314051439919

`∏[a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=5`
-/

namespace A133799.P12587238314051439919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133799.P12587238314051439919

/-! ## A133799.P9534183299699023878

`(n+2)*a(n-1)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A133799.P9534183299699023878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  (n + 2) * a (n - 1)

end

end A133799.P9534183299699023878

/-! ## A133799.P13827867677973600527

`lcm(2, n!*∑[n+1])/2`
-/

namespace A133799.P13827867677973600527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 2

end

end A133799.P13827867677973600527

/-! ## A133799.P5859466345399211823

`∏[n+2-and(n-3, n!)]`
-/

namespace A133799.P5859466345399211823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.land ((n : ℤ) - 3) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133799.P5859466345399211823

/-! ## A133799.P9443062123664452735

`∏[(n+2)/C(2, (1-n)²)!]`
-/

namespace A133799.P9443062123664452735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.factorial (Nat.choose 2 ((1 - (n : ℤ)) ^ 2).toNat) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133799.P9443062123664452735

/-! ## A133799.P5546519026014123144

`∑[n+1]*A001710(n)`
-/

namespace A133799.P5546519026014123144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001710 n

end

end A133799.P5546519026014123144

/-! ## A133799.P10264648141746854330

`lcm(2, A188588(n+1))/2`
-/

namespace A133799.P10264648141746854330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A188588 (n + 1)) : ℚ) / 2

end

end A133799.P10264648141746854330

/-! ## A133799.P13265681803168120931

`a(n-1)*A057544(n)` with `a(0)=1, a(1)=3`
-/

namespace A133799.P13265681803168120931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A057544 n

end

end A133799.P13265681803168120931

