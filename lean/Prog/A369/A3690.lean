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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A369001: a(n) = 1 if n' / gcd(n,n') is even, otherwise 0, where n' stands for the arithmetic derivative of n, A003415.

The programs for A369001, the canonical program `A369001.P2904300838152435751` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369001 has offset 1).

The definition of A369001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369001.P17922452655233513824

`A369004(n+1)+A373264(n+1)`
-/

namespace A369001.P17922452655233513824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1) + A373264 (n + 1)

end

end A369001.P17922452655233513824

namespace A369001

/-- `A369004(n+1)+A373264(n+1)` -/
def P17922452655233513824.Spec : Prop :=
  ∀ n, P17922452655233513824.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P6421418703658650719

`A373137(n+1)+A373266(n+1)`
-/

namespace A369001.P6421418703658650719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 (n + 1) + A373266 (n + 1)

end

end A369001.P6421418703658650719

namespace A369001

/-- `A373137(n+1)+A373266(n+1)` -/
def P6421418703658650719.Spec : Prop :=
  ∀ n, P6421418703658650719.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P529503719208210873

`A035263(n+1)-A373141(n+1)`
-/

namespace A369001.P529503719208210873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) - A373141 (n + 1)

end

end A369001.P529503719208210873

namespace A369001

/-- `A035263(n+1)-A373141(n+1)` -/
def P529503719208210873.Spec : Prop :=
  ∀ n, P529503719208210873.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P2904300838152435751

`A059841(A083345(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369001

/-- `A059841(A083345(n+1))` -/
def P2904300838152435751.Spec : Prop :=
  ∀ n, P2904300838152435751.a n = A369001 (n + 1)

theorem P2904300838152435751.correct : P2904300838152435751.Spec := by
  intro n
  simp only [A369001, Nat.add_sub_cancel]

end A369001

/-! ## A369001.P17656011640547613940

`A373141(3*(n+1))`
-/

namespace A369001.P17656011640547613940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373141 (3 * (n + 1))

end

end A369001.P17656011640547613940

namespace A369001

/-- `A373141(3*(n+1))` -/
def P17656011640547613940.Spec : Prop :=
  ∀ n, P17656011640547613940.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P3075539665148318847

`and(1, A373377(n+1)+1)`
-/

namespace A369001.P3075539665148318847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373377 (n + 1) + 1)

end

end A369001.P3075539665148318847

namespace A369001

/-- `and(1, A373377(n+1)+1)` -/
def P3075539665148318847.Spec : Prop :=
  ∀ n, P3075539665148318847.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P17344080254563153898

`and(1, A373485(n+1)+1)`
-/

namespace A369001.P17344080254563153898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373485 (n + 1) + 1)

end

end A369001.P17344080254563153898

namespace A369001

/-- `and(1, A373485(n+1)+1)` -/
def P17344080254563153898.Spec : Prop :=
  ∀ n, P17344080254563153898.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P6820216203062520078

`A000035(A373377(n+1)+1)`
-/

namespace A369001.P6820216203062520078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A373377 (n + 1) + 1).toNat

end

end A369001.P6820216203062520078

namespace A369001

/-- `A000035(A373377(n+1)+1)` -/
def P6820216203062520078.Spec : Prop :=
  ∀ n, P6820216203062520078.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P14030482031555519702

`A000035(A373485(n+1)+1)`
-/

namespace A369001.P14030482031555519702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A373485 (n + 1) + 1).toNat

end

end A369001.P14030482031555519702

namespace A369001

/-- `A000035(A373485(n+1)+1)` -/
def P14030482031555519702.Spec : Prop :=
  ∀ n, P14030482031555519702.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P7104759164788548609

`A121262(2*A083345(n+1))`
-/

namespace A369001.P7104759164788548609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * A083345 (n + 1)).toNat

end

end A369001.P7104759164788548609

namespace A369001

/-- `A121262(2*A083345(n+1))` -/
def P7104759164788548609.Spec : Prop :=
  ∀ n, P7104759164788548609.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P5164456921358712313

`A353494(2*A083345(n+1))`
-/

namespace A369001.P5164456921358712313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (2 * A083345 (n + 1)).toNat

end

end A369001.P5164456921358712313

namespace A369001

/-- `A353494(2*A083345(n+1))` -/
def P5164456921358712313.Spec : Prop :=
  ∀ n, P5164456921358712313.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P1716750848871946623

`A358680(2*A083345(n+1))`
-/

namespace A369001.P1716750848871946623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (2 * A083345 (n + 1)).toNat

end

end A369001.P1716750848871946623

namespace A369001

/-- `A358680(2*A083345(n+1))` -/
def P1716750848871946623.Spec : Prop :=
  ∀ n, P1716750848871946623.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P7243701083991224163

`A253513(2*A372576(n+1))`
-/

namespace A369001.P7243701083991224163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (2 * A372576 (n + 1)).toNat

end

end A369001.P7243701083991224163

namespace A369001

/-- `A253513(2*A372576(n+1))` -/
def P7243701083991224163.Spec : Prop :=
  ∀ n, P7243701083991224163.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P14586309786357170113

`A368994(n+1)+A353495(n+1)`
-/

namespace A369001.P14586309786357170113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (n + 1) + A353495 (n + 1)

end

end A369001.P14586309786357170113

namespace A369001

/-- `A368994(n+1)+A353495(n+1)` -/
def P14586309786357170113.Spec : Prop :=
  ∀ n, P14586309786357170113.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P8452186296938206826

`∑{d}[n+1, A008683(#)*A378444((n+1)/#)]`
-/

namespace A369001.P8452186296938206826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369001.P8452186296938206826

namespace A369001

/-- `∑{d}[n+1, A008683(#)*A378444((n+1)/#)]` -/
def P8452186296938206826.Spec : Prop :=
  ∀ n, P8452186296938206826.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P13650366232228416081

`∑{d}[n+1, A055615(#)*A378546((n+1)/#)]`
-/

namespace A369001.P13650366232228416081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A378546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369001.P13650366232228416081

namespace A369001

/-- `∑{d}[n+1, A055615(#)*A378546((n+1)/#)]` -/
def P13650366232228416081.Spec : Prop :=
  ∀ n, P13650366232228416081.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P3187729326944766118

`A121262(A083345(n+1)+A083345(n+1))`
-/

namespace A369001.P3187729326944766118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A083345 (n + 1) + A083345 (n + 1)).toNat

end

end A369001.P3187729326944766118

namespace A369001

/-- `A121262(A083345(n+1)+A083345(n+1))` -/
def P3187729326944766118.Spec : Prop :=
  ∀ n, P3187729326944766118.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P5637950277710242159

`A353494(A083345(n+1)+A083345(n+1))`
-/

namespace A369001.P5637950277710242159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A083345 (n + 1) + A083345 (n + 1)).toNat

end

end A369001.P5637950277710242159

namespace A369001

/-- `A353494(A083345(n+1)+A083345(n+1))` -/
def P5637950277710242159.Spec : Prop :=
  ∀ n, P5637950277710242159.a n = A369001 (n + 1)

end A369001

/-! ## A369001.P10599790702412922386

`A368994(A008594(n+1))`
-/

namespace A369001.P10599790702412922386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (A008594 (n + 1)).toNat

end

end A369001.P10599790702412922386

namespace A369001

/-- `A368994(A008594(n+1))` -/
def P10599790702412922386.Spec : Prop :=
  ∀ n, P10599790702412922386.a n = A369001 (n + 1)

end A369001

/-!
# A369002: Numbers k for which k' / gcd(k,k') is even, where k' stands for the arithmetic derivative of k, A003415.

The programs for A369002, the canonical program `A369002.P9880828997105015087` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369002 has offset 1).

The definition of A369002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369002.P9880828997105015087

`eq[1, A369001(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A369002

/-- `eq[1, A369001(n+1)]+1` -/
def P9880828997105015087.Spec : Prop :=
  ∀ n, (P9880828997105015087.a n : ℤ) = A369002 (n + 1)

theorem P9880828997105015087.correct : P9880828997105015087.Spec := by
  intro n
  simp only [A369002, Nat.add_sub_cancel]

end A369002

/-! ## A369002.P3832658764332759139

`∪[A369976(n+1), A369977(n+1)]`
-/

namespace A369002.P3832658764332759139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369002.P3832658764332759139

namespace A369002

/-- `∪[A369976(n+1), A369977(n+1)]` -/
def P3832658764332759139.Spec : Prop :=
  ∀ n, (P3832658764332759139.a n : ℤ) = A369002 (n + 1)

end A369002

/-! ## A369002.P6114069357926904114

`∪[A369005(n+1), A373265(n+1)]`
-/

namespace A369002.P6114069357926904114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369002.P6114069357926904114

namespace A369002

/-- `∪[A369005(n+1), A373265(n+1)]` -/
def P6114069357926904114.Spec : Prop :=
  ∀ n, (P6114069357926904114.a n : ℤ) = A369002 (n + 1)

end A369002

/-! ## A369002.P10530534229863647859

`∪[A373138(n+1), A373267(n+1)]`
-/

namespace A369002.P10530534229863647859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369002.P10530534229863647859

namespace A369002

/-- `∪[A373138(n+1), A373267(n+1)]` -/
def P10530534229863647859.Spec : Prop :=
  ∀ n, (P10530534229863647859.a n : ℤ) = A369002 (n + 1)

end A369002

/-! ## A369002.P1049600941092615843

`filter[A377873(n+1), A369001(#)]`
-/

namespace A369002.P1049600941092615843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P1049600941092615843

namespace A369002

/-- `filter[A377873(n+1), A369001(#)]` -/
def P1049600941092615843.Spec : Prop :=
  ∀ n, P1049600941092615843.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P6607682631561371745

`filter[A368998(n+1), A369001(#)]`
-/

namespace A369002.P6607682631561371745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P6607682631561371745

namespace A369002

/-- `filter[A368998(n+1), A369001(#)]` -/
def P6607682631561371745.Spec : Prop :=
  ∀ n, P6607682631561371745.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P17429530739356917908

`filter[A235992(n+2), A369001(#)]`
-/

namespace A369002.P17429530739356917908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P17429530739356917908

namespace A369002

/-- `filter[A235992(n+2), A369001(#)]` -/
def P17429530739356917908.Spec : Prop :=
  ∀ n, P17429530739356917908.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P8622262728322026380

`filter[A003159(n+1), A369001(#)]`
-/

namespace A369002.P8622262728322026380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P8622262728322026380

namespace A369002

/-- `filter[A003159(n+1), A369001(#)]` -/
def P8622262728322026380.Spec : Prop :=
  ∀ n, P8622262728322026380.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P1756460055218852922

`filter[A260401(n+1), A369001(#)]`
-/

namespace A369002.P1756460055218852922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P1756460055218852922

namespace A369002

/-- `filter[A260401(n+1), A369001(#)]` -/
def P1756460055218852922.Spec : Prop :=
  ∀ n, P1756460055218852922.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P9895704809005517421

`filter[A174891(n+1), A369001(#)]`
-/

namespace A369002.P9895704809005517421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P9895704809005517421

namespace A369002

/-- `filter[A174891(n+1), A369001(#)]` -/
def P9895704809005517421.Spec : Prop :=
  ∀ n, P9895704809005517421.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P11340014418093736469

`filter[A107750(n+1), A369001(#)]`
-/

namespace A369002.P11340014418093736469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P11340014418093736469

namespace A369002

/-- `filter[A107750(n+1), A369001(#)]` -/
def P11340014418093736469.Spec : Prop :=
  ∀ n, P11340014418093736469.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P1841140637868395471

`filter[A042965(n+2), A369001(#)]`
-/

namespace A369002.P1841140637868395471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P1841140637868395471

namespace A369002

/-- `filter[A042965(n+2), A369001(#)]` -/
def P1841140637868395471.Spec : Prop :=
  ∀ n, P1841140637868395471.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P10103792519463786131

`filter[A264828(n+1), A369001(#)]`
-/

namespace A369002.P10103792519463786131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P10103792519463786131

namespace A369002

/-- `filter[A264828(n+1), A369001(#)]` -/
def P10103792519463786131.Spec : Prop :=
  ∀ n, P10103792519463786131.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P11552751907741859104

`filter[A018252(n+1), A369001(#)]`
-/

namespace A369002.P11552751907741859104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P11552751907741859104

namespace A369002

/-- `filter[A018252(n+1), A369001(#)]` -/
def P11552751907741859104.Spec : Prop :=
  ∀ n, P11552751907741859104.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P8289759246458125600

`filter[A056653(n+1), A369001(#)]`
-/

namespace A369002.P8289759246458125600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P8289759246458125600

namespace A369002

/-- `filter[A056653(n+1), A369001(#)]` -/
def P8289759246458125600.Spec : Prop :=
  ∀ n, P8289759246458125600.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P18412510797228374442

`filter[A065090(n+1), A369001(#)]`
-/

namespace A369002.P18412510797228374442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P18412510797228374442

namespace A369002

/-- `filter[A065090(n+1), A369001(#)]` -/
def P18412510797228374442.Spec : Prop :=
  ∀ n, P18412510797228374442.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P6256910118552525871

`filter[A141468(n+2), A369001(#)]`
-/

namespace A369002.P6256910118552525871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P6256910118552525871

namespace A369002

/-- `filter[A141468(n+2), A369001(#)]` -/
def P6256910118552525871.Spec : Prop :=
  ∀ n, P6256910118552525871.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P16038008721741341203

`filter[A222307(2*n+1), A369001(#)]`
-/

namespace A369002.P16038008721741341203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P16038008721741341203

namespace A369002

/-- `filter[A222307(2*n+1), A369001(#)]` -/
def P16038008721741341203.Spec : Prop :=
  ∀ n, P16038008721741341203.a n = A369002 (n + 1)

end A369002

/-! ## A369002.P11222929905468271127

`filter[A171581(n+1), A369001(#)]`
-/

namespace A369002.P11222929905468271127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A369002.P11222929905468271127

namespace A369002

/-- `filter[A171581(n+1), A369001(#)]` -/
def P11222929905468271127.Spec : Prop :=
  ∀ n, P11222929905468271127.a n = A369002 (n + 1)

end A369002

/-!
# A369003: Numbers k for which k' / gcd(k,k') is odd, where k' stands for the arithmetic derivative of k, A003415.

The programs for A369003, the canonical program `A369003.P2508445538362631051` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369003 has offset 1).

The definition of A369003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369003.P2508445538362631051

`eq[0, A369001(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A369003

/-- `eq[0, A369001(n+1)]+1` -/
def P2508445538362631051.Spec : Prop :=
  ∀ n, (P2508445538362631051.a n : ℤ) = A369003 (n + 1)

theorem P2508445538362631051.correct : P2508445538362631051.Spec := by
  intro n
  simp only [A369003, Nat.add_sub_cancel]

end A369003

/-! ## A369003.P4901362206405642024

`comp[A369002(n+1)-1]+1`
-/

namespace A369003.P4901362206405642024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369003.P4901362206405642024

namespace A369003

/-- `comp[A369002(n+1)-1]+1` -/
def P4901362206405642024.Spec : Prop :=
  ∀ n, (P4901362206405642024.a n : ℤ) = A369003 (n + 1)

end A369003

/-! ## A369003.P15018711446262384197

`lt[and(1, A373377(n+1)+1), 1]+1`
-/

namespace A369003.P15018711446262384197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373377 (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A369003.P15018711446262384197

namespace A369003

/-- `lt[and(1, A373377(n+1)+1), 1]+1` -/
def P15018711446262384197.Spec : Prop :=
  ∀ n, (P15018711446262384197.a n : ℤ) = A369003 (n + 1)

end A369003

/-! ## A369003.P13177085709757727890

`∪[A036554(n+1), A373142(n+1)]`
-/

namespace A369003.P13177085709757727890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369003.P13177085709757727890

namespace A369003

/-- `∪[A036554(n+1), A373142(n+1)]` -/
def P13177085709757727890.Spec : Prop :=
  ∀ n, (P13177085709757727890.a n : ℤ) = A369003 (n + 1)

end A369003

/-! ## A369003.P5764981729674442127

`lt[A104477(A083345(n+1)+1), 1]+1`
-/

namespace A369003.P5764981729674442127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (A083345 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A369003.P5764981729674442127

namespace A369003

/-- `lt[A104477(A083345(n+1)+1), 1]+1` -/
def P5764981729674442127.Spec : Prop :=
  ∀ n, (P5764981729674442127.a n : ℤ) = A369003 (n + 1)

end A369003

/-! ## A369003.P14455362665320486452

`A377869(n+1)+A326291(A338878(n+1))`
-/

namespace A369003.P14455362665320486452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1) + A326291 (A338878 (n + 1)).toNat

end

end A369003.P14455362665320486452

namespace A369003

/-- `A377869(n+1)+A326291(A338878(n+1))` -/
def P14455362665320486452.Spec : Prop :=
  ∀ n, P14455362665320486452.a n = A369003 (n + 1)

end A369003

/-! ## A369003.P8769896518576276382

`A267115(A332825(n+1))*A377869(n+1)`
-/

namespace A369003.P8769896518576276382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267115 (A332825 (n + 1)).toNat * A377869 (n + 1)

end

end A369003.P8769896518576276382

namespace A369003

/-- `A267115(A332825(n+1))*A377869(n+1)` -/
def P8769896518576276382.Spec : Prop :=
  ∀ n, P8769896518576276382.a n = A369003 (n + 1)

end A369003

/-! ## A369003.P12250150479768188371

`A377869(n+1)%A200656(A001065(n+3))`
-/

namespace A369003.P12250150479768188371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377869 (n + 1)) (A200656 (A001065 (n + 3)).toNat)

end

end A369003.P12250150479768188371

namespace A369003

/-- `A377869(n+1)%A200656(A001065(n+3))` -/
def P12250150479768188371.Spec : Prop :=
  ∀ n, P12250150479768188371.a n = A369003 (n + 1)

end A369003

/-! ## A369003.P14858646764088678143

`A001065(A136020(n+1))*A377869(n+1)`
-/

namespace A369003.P14858646764088678143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A136020 (n + 1)).toNat * A377869 (n + 1)

end

end A369003.P14858646764088678143

namespace A369003

/-- `A001065(A136020(n+1))*A377869(n+1)` -/
def P14858646764088678143.Spec : Prop :=
  ∀ n, P14858646764088678143.a n = A369003 (n + 1)

end A369003

/-! ## A369003.P10434475501764845400

`A377869(n+1)+A008683(A052082(n+1))`
-/

namespace A369003.P10434475501764845400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1) + A008683 (A052082 (n + 1)).toNat

end

end A369003.P10434475501764845400

namespace A369003

/-- `A377869(n+1)+A008683(A052082(n+1))` -/
def P10434475501764845400.Spec : Prop :=
  ∀ n, P10434475501764845400.a n = A369003 (n + 1)

end A369003

/-! ## A369003.P15829232653136415369

`A377869(A000196((n+1)²))`
-/

namespace A369003.P15829232653136415369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (A000196 ((n + 1) ^ 2)).toNat

end

end A369003.P15829232653136415369

namespace A369003

/-- `A377869(A000196((n+1)²))` -/
def P15829232653136415369.Spec : Prop :=
  ∀ n, P15829232653136415369.a n = A369003 (n + 1)

end A369003

/-!
# A369004: a(n) = 1 if n' / gcd(n,n') is a multiple of 4, otherwise 0, where n' stands for the arithmetic derivative of n, A003415(n).

The programs for A369004, the canonical program `A369004.P12527556560787931006` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369004 has offset 1).

The definition of A369004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369004.P12527556560787931006

`A121262(A083345(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369004

/-- `A121262(A083345(n+1))` -/
def P12527556560787931006.Spec : Prop :=
  ∀ n, P12527556560787931006.a n = A369004 (n + 1)

theorem P12527556560787931006.correct : P12527556560787931006.Spec := by
  intro n
  simp only [A369004, Nat.add_sub_cancel]

end A369004

/-! ## A369004.P18200573014817286755

`A369001(n+1)-A373264(n+1)`
-/

namespace A369004.P18200573014817286755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (n + 1) - A373264 (n + 1)

end

end A369004.P18200573014817286755

namespace A369004

/-- `A369001(n+1)-A373264(n+1)` -/
def P18200573014817286755.Spec : Prop :=
  ∀ n, P18200573014817286755.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P13366166439080833410

`A353494(A083345(n+1))*A369001(n+1)`
-/

namespace A369004.P13366166439080833410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A083345 (n + 1)).toNat * A369001 (n + 1)

end

end A369004.P13366166439080833410

namespace A369004

/-- `A353494(A083345(n+1))*A369001(n+1)` -/
def P13366166439080833410.Spec : Prop :=
  ∀ n, P13366166439080833410.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P6575433612149046190

`A253513(2*A083345(n+1))`
-/

namespace A369004.P6575433612149046190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (2 * A083345 (n + 1)).toNat

end

end A369004.P6575433612149046190

namespace A369004

/-- `A253513(2*A083345(n+1))` -/
def P6575433612149046190.Spec : Prop :=
  ∀ n, P6575433612149046190.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P10882732496742580978

`A373264(9*(n+1))`
-/

namespace A369004.P10882732496742580978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373264 (9 * (n + 1))

end

end A369004.P10882732496742580978

namespace A369004

/-- `A373264(9*(n+1))` -/
def P10882732496742580978.Spec : Prop :=
  ∀ n, P10882732496742580978.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P2181618463407018973

`A368997(A276086(A373485(n+1)))`
-/

namespace A369004.P2181618463407018973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368997 (A276086 (A373485 (n + 1)).toNat).toNat

end

end A369004.P2181618463407018973

namespace A369004

/-- `A368997(A276086(A373485(n+1)))` -/
def P2181618463407018973.Spec : Prop :=
  ∀ n, P2181618463407018973.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P18001292156965046237

`A121262(A189036(n+1))`
-/

namespace A369004.P18001292156965046237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A189036 (n + 1)).toNat

end

end A369004.P18001292156965046237

namespace A369004

/-- `A121262(A189036(n+1))` -/
def P18001292156965046237.Spec : Prop :=
  ∀ n, P18001292156965046237.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P1385611869318915527

`A253513(A083345(n+1)²)`
-/

namespace A369004.P1385611869318915527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A083345 (n + 1) ^ 2).toNat

end

end A369004.P1385611869318915527

namespace A369004

/-- `A253513(A083345(n+1)²)` -/
def P1385611869318915527.Spec : Prop :=
  ∀ n, P1385611869318915527.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P12040861329949157373

`A166486(A272539(2*(n+1))-A369006(n+1))`
-/

namespace A369004.P12040861329949157373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A272539 (2 * (n + 1)) - A369006 (n + 1)).toNat

end

end A369004.P12040861329949157373

namespace A369004

/-- `A166486(A272539(2*(n+1))-A369006(n+1))` -/
def P12040861329949157373.Spec : Prop :=
  ∀ n, P12040861329949157373.a n = A369004 (n + 1)

end A369004

/-! ## A369004.P9584457344901495950

`A001055(A141172(3*n+2))-A369006(n+1)`
-/

namespace A369004.P9584457344901495950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A141172 (3 * n + 2)).toNat - A369006 (n + 1)

end

end A369004.P9584457344901495950

namespace A369004

/-- `A001055(A141172(3*n+2))-A369006(n+1)` -/
def P9584457344901495950.Spec : Prop :=
  ∀ n, P9584457344901495950.a n = A369004 (n + 1)

end A369004

/-!
# A369005: Numbers k for which k' / gcd(k,k') is a multiple of four, where k' stands for the arithmetic derivative of k, A003415(k).

The programs for A369005, the canonical program `A369005.P17097495309737590326` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369005 has offset 1).

The definition of A369005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369005.P17097495309737590326

`record[(n+1)*A369004(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A369005

/-- `record[(n+1)*A369004(n+1)]` -/
def P17097495309737590326.Spec : Prop :=
  ∀ n, P17097495309737590326.a n = A369005 (n + 1)

theorem P17097495309737590326.correct : P17097495309737590326.Spec := by
  intro n
  simp only [A369005, Nat.add_sub_cancel]

end A369005

/-! ## A369005.P18304525494903669483

`eq[1, A369004(n+1)]+1`
-/

namespace A369005.P18304525494903669483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369005.P18304525494903669483

namespace A369005

/-- `eq[1, A369004(n+1)]+1` -/
def P18304525494903669483.Spec : Prop :=
  ∀ n, (P18304525494903669483.a n : ℤ) = A369005 (n + 1)

end A369005

/-! ## A369005.P6946667379681029717

`lt[A010051(n+1), A369004(n+1)]+1`
-/

namespace A369005.P6946667379681029717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A369005.P6946667379681029717

namespace A369005

/-- `lt[A010051(n+1), A369004(n+1)]+1` -/
def P6946667379681029717.Spec : Prop :=
  ∀ n, (P6946667379681029717.a n : ℤ) = A369005 (n + 1)

end A369005

/-! ## A369005.P6312745269587722054

`filter[A369002(n+1), A369004(#)]`
-/

namespace A369005.P6312745269587722054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P6312745269587722054

namespace A369005

/-- `filter[A369002(n+1), A369004(#)]` -/
def P6312745269587722054.Spec : Prop :=
  ∀ n, P6312745269587722054.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P9671321235269719061

`filter[A392594(n+1), A369004(#)]`
-/

namespace A369005.P9671321235269719061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P9671321235269719061

namespace A369005

/-- `filter[A392594(n+1), A369004(#)]` -/
def P9671321235269719061.Spec : Prop :=
  ∀ n, P9671321235269719061.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P1063994323053621782

`filter[A377873(n+1), A369004(#)]`
-/

namespace A369005.P1063994323053621782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P1063994323053621782

namespace A369005

/-- `filter[A377873(n+1), A369004(#)]` -/
def P1063994323053621782.Spec : Prop :=
  ∀ n, P1063994323053621782.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P7068854158601765492

`filter[A327864(n+2), A369004(#)]`
-/

namespace A369005.P7068854158601765492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P7068854158601765492

namespace A369005

/-- `filter[A327864(n+2), A369004(#)]` -/
def P7068854158601765492.Spec : Prop :=
  ∀ n, P7068854158601765492.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P8749149914209523417

`filter[A368998(n+1), A369004(#)]`
-/

namespace A369005.P8749149914209523417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P8749149914209523417

namespace A369005

/-- `filter[A368998(n+1), A369004(#)]` -/
def P8749149914209523417.Spec : Prop :=
  ∀ n, P8749149914209523417.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P6616714977309265412

`filter[A328303(n+2), A369004(#)]`
-/

namespace A369005.P6616714977309265412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P6616714977309265412

namespace A369005

/-- `filter[A328303(n+2), A369004(#)]` -/
def P6616714977309265412.Spec : Prop :=
  ∀ n, P6616714977309265412.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P15593925134286977215

`filter[A235992(n+2), A369004(#)]`
-/

namespace A369005.P15593925134286977215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P15593925134286977215

namespace A369005

/-- `filter[A235992(n+2), A369004(#)]` -/
def P15593925134286977215.Spec : Prop :=
  ∀ n, P15593925134286977215.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P14016872707530131322

`filter[A003159(n+1), A369004(#)]`
-/

namespace A369005.P14016872707530131322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P14016872707530131322

namespace A369005

/-- `filter[A003159(n+1), A369004(#)]` -/
def P14016872707530131322.Spec : Prop :=
  ∀ n, P14016872707530131322.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P357405451814175949

`filter[A264828(n+1), A369004(#)]`
-/

namespace A369005.P357405451814175949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P357405451814175949

namespace A369005

/-- `filter[A264828(n+1), A369004(#)]` -/
def P357405451814175949.Spec : Prop :=
  ∀ n, P357405451814175949.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P806556506090156782

`filter[A018252(n+1), A369004(#)]`
-/

namespace A369005.P806556506090156782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P806556506090156782

namespace A369005

/-- `filter[A018252(n+1), A369004(#)]` -/
def P806556506090156782.Spec : Prop :=
  ∀ n, P806556506090156782.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P8586482327810543941

`filter[A089088(n), A369004(#)]`
-/

namespace A369005.P8586482327810543941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369005.P8586482327810543941

namespace A369005

/-- `filter[A089088(n), A369004(#)]` -/
def P8586482327810543941.Spec : Prop :=
  ∀ n, P8586482327810543941.a n = A369005 (n + 1)

end A369005

/-! ## A369005.P4631862994775036103

`eq[A057427(n), A369004(A028310(n))]`
-/

namespace A369005.P4631862994775036103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369005.P4631862994775036103

namespace A369005

/-- `eq[A057427(n), A369004(A028310(n))]` -/
def P4631862994775036103.Spec : Prop :=
  ∀ n, (P4631862994775036103.a n : ℤ) = A369005 (n + 1)

end A369005

/-!
# A369006: a(n) = 1 if there is no prime p such that p^p divides n' / gcd(n,n'), and 0 otherwise, where n' stands for the arithmetic derivative of n, A003415(n).

The programs for A369006, the canonical program `A369006.P857859541478610933` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369006 has offset 1).

The definition of A369006 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369006.P857859541478610933

`A359550(A083345(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A369006

/-- `A359550(A083345(n+1))` -/
def P857859541478610933.Spec : Prop :=
  ∀ n, P857859541478610933.a n = A369006 (n + 1)

theorem P857859541478610933.correct : P857859541478610933.Spec := by
  intro n
  simp only [A369006, Nat.add_sub_cancel]

end A369006

/-! ## A369006.P5942336260322181546

`A359550(∑[A258057(n)]/A085731(n+1))`
-/

namespace A369006.P5942336260322181546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A085731 (n + 1) : ℚ))).toNat

end

end A369006.P5942336260322181546

namespace A369006

/-- `A359550(∑[A258057(n)]/A085731(n+1))` -/
def P5942336260322181546.Spec : Prop :=
  ∀ n, P5942336260322181546.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P10011386195427041714

`A359550(A189036(n+1))`
-/

namespace A369006.P10011386195427041714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A189036 (n + 1)).toNat

end

end A369006.P10011386195427041714

namespace A369006

/-- `A359550(A189036(n+1))` -/
def P10011386195427041714.Spec : Prop :=
  ∀ n, P10011386195427041714.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P3933121532388795962

`A000035(A369004(n+1)+A136085(n+2))`
-/

namespace A369006.P3933121532388795962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A369004 (n + 1) + A136085 (n + 2)).toNat

end

end A369006.P3933121532388795962

namespace A369006

/-- `A000035(A369004(n+1)+A136085(n+2))` -/
def P3933121532388795962.Spec : Prop :=
  ∀ n, P3933121532388795962.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P11420663398371302073

`A296207(A233393(n+1))-A369004(n+1)`
-/

namespace A369006.P11420663398371302073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296207 (A233393 (n + 1)).toNat - A369004 (n + 1)

end

end A369006.P11420663398371302073

namespace A369006

/-- `A296207(A233393(n+1))-A369004(n+1)` -/
def P11420663398371302073.Spec : Prop :=
  ∀ n, P11420663398371302073.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P2769262755639622895

`A374039(A000290(2*(n+2)))-A369004(n+1)`
-/

namespace A369006.P2769262755639622895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374039 (A000290 (2 * (n + 2))).toNat - A369004 (n + 1)

end

end A369006.P2769262755639622895

namespace A369006

/-- `A374039(A000290(2*(n+2)))-A369004(n+1)` -/
def P2769262755639622895.Spec : Prop :=
  ∀ n, P2769262755639622895.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P18293989685056794001

`A064547(A065727(2*n+3))-A369004(n+1)`
-/

namespace A369006.P18293989685056794001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A065727 (2 * n + 3)).toNat - A369004 (n + 1)

end

end A369006.P18293989685056794001

namespace A369006

/-- `A064547(A065727(2*n+3))-A369004(n+1)` -/
def P18293989685056794001.Spec : Prop :=
  ∀ n, P18293989685056794001.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P15107703285433293857

`A003557(A067378(n+3))-A369004(n+1)`
-/

namespace A369006.P15107703285433293857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A067378 (n + 3)).toNat - A369004 (n + 1)

end

end A369006.P15107703285433293857

namespace A369006

/-- `A003557(A067378(n+3))-A369004(n+1)` -/
def P15107703285433293857.Spec : Prop :=
  ∀ n, P15107703285433293857.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P3110175754340434816

`A000122(A094524(n+1)*A369004(n+1))`
-/

namespace A369006.P3110175754340434816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A094524 (n + 1) * A369004 (n + 1)).toNat

end

end A369006.P3110175754340434816

namespace A369006

/-- `A000122(A094524(n+1)*A369004(n+1))` -/
def P3110175754340434816.Spec : Prop :=
  ∀ n, P3110175754340434816.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P13146008367078485030

`A010815(A030430(2*n+1)*A369004(n+1))`
-/

namespace A369006.P13146008367078485030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A030430 (2 * n + 1) * A369004 (n + 1)).toNat

end

end A369006.P13146008367078485030

namespace A369006

/-- `A010815(A030430(2*n+1)*A369004(n+1))` -/
def P13146008367078485030.Spec : Prop :=
  ∀ n, P13146008367078485030.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P8707246362548538727

`A166486(A006005(2*(n+2))*A373485(n+1))`
-/

namespace A369006.P8707246362548538727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A006005 (2 * (n + 2)) * A373485 (n + 1)).toNat

end

end A369006.P8707246362548538727

namespace A369006

/-- `A166486(A006005(2*(n+2))*A373485(n+1))` -/
def P8707246362548538727.Spec : Prop :=
  ∀ n, P8707246362548538727.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P2463300185324370411

`A303781(A107715(n+1))-A369004(n+1)`
-/

namespace A369006.P2463300185324370411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303781 (A107715 (n + 1)).toNat - A369004 (n + 1)

end

end A369006.P2463300185324370411

namespace A369006

/-- `A303781(A107715(n+1))-A369004(n+1)` -/
def P2463300185324370411.Spec : Prop :=
  ∀ n, P2463300185324370411.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P9142013181323537576

`A059841(or(A055932(n+1), A369004(n+1)))`
-/

namespace A369006.P9142013181323537576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.lor (A055932 (n + 1)) (A369004 (n + 1))).toNat

end

end A369006.P9142013181323537576

namespace A369006

/-- `A059841(or(A055932(n+1), A369004(n+1)))` -/
def P9142013181323537576.Spec : Prop :=
  ∀ n, P9142013181323537576.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P17581729362858995503

`A000122(A037258(n)*A369004(n+1))`
-/

namespace A369006.P17581729362858995503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A037258 n * A369004 (n + 1)).toNat

end

end A369006.P17581729362858995503

namespace A369006

/-- `A000122(A037258(n)*A369004(n+1))` -/
def P17581729362858995503.Spec : Prop :=
  ∀ n, P17581729362858995503.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P12293832546735048731

`A010815(A249379(n+1)*A369004(n+1))`
-/

namespace A369006.P12293832546735048731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A249379 (n + 1) * A369004 (n + 1)).toNat

end

end A369006.P12293832546735048731

namespace A369006

/-- `A010815(A249379(n+1)*A369004(n+1))` -/
def P12293832546735048731.Spec : Prop :=
  ∀ n, P12293832546735048731.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P17606129336872863874

`A121262(A174441(n+1)*A369004(n+1))`
-/

namespace A369006.P17606129336872863874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A174441 (n + 1) * A369004 (n + 1)).toNat

end

end A369006.P17606129336872863874

namespace A369006

/-- `A121262(A174441(n+1)*A369004(n+1))` -/
def P17606129336872863874.Spec : Prop :=
  ∀ n, P17606129336872863874.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P5454504078088730295

`A353494(A174441(n+1)*A369004(n+1))`
-/

namespace A369006.P5454504078088730295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A174441 (n + 1) * A369004 (n + 1)).toNat

end

end A369006.P5454504078088730295

namespace A369006

/-- `A353494(A174441(n+1)*A369004(n+1))` -/
def P5454504078088730295.Spec : Prop :=
  ∀ n, P5454504078088730295.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P3718773996573592940

`A039966(A249379(n+2)*A369004(n+1))`
-/

namespace A369006.P3718773996573592940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A249379 (n + 2) * A369004 (n + 1)).toNat

end

end A369006.P3718773996573592940

namespace A369006

/-- `A039966(A249379(n+2)*A369004(n+1))` -/
def P3718773996573592940.Spec : Prop :=
  ∀ n, P3718773996573592940.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P17716474162214437460

`A010054(A063955(3*(n+1))*A369004(n+1))`
-/

namespace A369006.P17716474162214437460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A063955 (3 * (n + 1)) * A369004 (n + 1)).toNat

end

end A369006.P17716474162214437460

namespace A369006

/-- `A010054(A063955(3*(n+1))*A369004(n+1))` -/
def P17716474162214437460.Spec : Prop :=
  ∀ n, P17716474162214437460.a n = A369006 (n + 1)

end A369006

/-! ## A369006.P5544181421497470732

`A342001(A005384(2*n+1))-A369004(n+1)`
-/

namespace A369006.P5544181421497470732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A005384 (2 * n + 1)).toNat - A369004 (n + 1)

end

end A369006.P5544181421497470732

namespace A369006

/-- `A342001(A005384(2*n+1))-A369004(n+1)` -/
def P5544181421497470732.Spec : Prop :=
  ∀ n, P5544181421497470732.a n = A369006 (n + 1)

end A369006

/-!
# A369008: a(n) = A085731(n) / A003557(n).

The programs for A369008, the canonical program `A369008.P206606723966136315` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369008 has offset 1).

The definition of A369008 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A085731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369008.P206606723966136315

`A085731(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369008

/-- `A085731(n+1)/A003557(n+1)` -/
def P206606723966136315.Spec : Prop :=
  ∀ n, P206606723966136315.a n = (A369008 (n + 1) : ℚ)

end A369008

/-! ## A369008.P376705822339578651

`∏{p}[(n+1)/A359593(n+1), #]`
-/

namespace A369008.P376705822339578651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A359593 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A369008.P376705822339578651

namespace A369008

/-- `∏{p}[(n+1)/A359593(n+1), #]` -/
def P376705822339578651.Spec : Prop :=
  ∀ n, (P376705822339578651.a n : ℤ) = A369008 (n + 1)

end A369008

/-! ## A369008.P3469695911748537315

`A007947(n+1)/A083346(n+1)`
-/

namespace A369008.P3469695911748537315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A083346 (n + 1) : ℚ)

end

end A369008.P3469695911748537315

namespace A369008

/-- `A007947(n+1)/A083346(n+1)` -/
def P3469695911748537315.Spec : Prop :=
  ∀ n, P3469695911748537315.a n = (A369008 (n + 1) : ℚ)

end A369008

/-! ## A369008.P14129083043185741868

`A000026(n+1)/A381588(n+1)`
-/

namespace A369008.P14129083043185741868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A381588 (n + 1) : ℚ)

end

end A369008.P14129083043185741868

namespace A369008

/-- `A000026(n+1)/A381588(n+1)` -/
def P14129083043185741868.Spec : Prop :=
  ∀ n, P14129083043185741868.a n = (A369008 (n + 1) : ℚ)

end A369008

/-! ## A369008.P1251202838016263755

`A015052(A015052(n+1))/A083346(n+1)`
-/

namespace A369008.P1251202838016263755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015052 (A015052 (n + 1)).toNat : ℚ) / (A083346 (n + 1) : ℚ)

end

end A369008.P1251202838016263755

namespace A369008

/-- `A015052(A015052(n+1))/A083346(n+1)` -/
def P1251202838016263755.Spec : Prop :=
  ∀ n, P1251202838016263755.a n = (A369008 (n + 1) : ℚ)

end A369008

/-! ## A369008.P11663347425071544259

`A007947(n+1)/A007947(A327938(n+1))`
-/

namespace A369008.P11663347425071544259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A327938 (n + 1)).toNat : ℚ)

end

end A369008.P11663347425071544259

namespace A369008

/-- `A007947(n+1)/A007947(A327938(n+1))` -/
def P11663347425071544259.Spec : Prop :=
  ∀ n, P11663347425071544259.a n = (A369008 (n + 1) : ℚ)

end A369008

/-! ## A369008.P11144518123224085460

`A007913(A007947(n+1)*A083346(n+1))`
-/

namespace A369008.P11144518123224085460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007947 (n + 1) * A083346 (n + 1)).toNat

end

end A369008.P11144518123224085460

namespace A369008

/-- `A007913(A007947(n+1)*A083346(n+1))` -/
def P11144518123224085460.Spec : Prop :=
  ∀ n, P11144518123224085460.a n = A369008 (n + 1)

end A369008

/-! ## A369008.P14427916779161154654

`gcd(A186195(n), A359594(n+1))`
-/

namespace A369008.P14427916779161154654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186195 n) (A359594 (n + 1))

end

end A369008.P14427916779161154654

namespace A369008

/-- `gcd(A186195(n), A359594(n+1))` -/
def P14427916779161154654.Spec : Prop :=
  ∀ n, (P14427916779161154654.a n : ℤ) = A369008 (n + 1)

end A369008

/-! ## A369008.P13901373369844506486

`gcd(A188287(n), A364900(n))`
-/

namespace A369008.P13901373369844506486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188287 n) (A364900 n)

end

end A369008.P13901373369844506486

namespace A369008

/-- `gcd(A188287(n), A364900(n))` -/
def P13901373369844506486.Spec : Prop :=
  ∀ n, (P13901373369844506486.a n : ℤ) = A369008 (n + 1)

end A369008

/-! ## A369008.P1582848851359506707

`A055229(A169919(n+1))`
-/

namespace A369008.P1582848851359506707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A169919 (n + 1)).toNat

end

end A369008.P1582848851359506707

namespace A369008

/-- `A055229(A169919(n+1))` -/
def P1582848851359506707.Spec : Prop :=
  ∀ n, P1582848851359506707.a n = A369008 (n + 1)

end A369008

/-!
# A369009: a(n) = A342001(n) - A083345(n).

The programs for A369009, the canonical program `A369009.P4673910545614244830` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369009 has offset 1).

The definition of A369009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083345, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369009.P4673910545614244830

`A342001(n+1)-A083345(n+1)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369009

/-- `A342001(n+1)-A083345(n+1)` -/
def P4673910545614244830.Spec : Prop :=
  ∀ n, P4673910545614244830.a n = A369009 (n + 1)

theorem P4673910545614244830.correct : P4673910545614244830.Spec := by
  intro n
  simp only [A369009, Nat.add_sub_cancel]

end A369009

/-! ## A369009.P13306814024628744731

`(A369008(n+1)-1)*A083345(n+1)`
-/

namespace A369009.P13306814024628744731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A369008 (n + 1) - 1) * A083345 (n + 1)

end

end A369009.P13306814024628744731

namespace A369009

/-- `(A369008(n+1)-1)*A083345(n+1)` -/
def P13306814024628744731.Spec : Prop :=
  ∀ n, P13306814024628744731.a n = A369009 (n + 1)

end A369009

/-! ## A369009.P287731144683832818

`A342001(n+1)-A003415(n+1)/A085731(n+1)`
-/

namespace A369009.P287731144683832818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) - (A003415 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A369009.P287731144683832818

namespace A369009

/-- `A342001(n+1)-A003415(n+1)/A085731(n+1)` -/
def P287731144683832818.Spec : Prop :=
  ∀ n, P287731144683832818.a n = (A369009 (n + 1) : ℚ)

end A369009

/-! ## A369009.P6018217666467863053

`A342001(n+1)-A342001(n+1)/A369008(n+1)`
-/

namespace A369009.P6018217666467863053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) - (A342001 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ)

end

end A369009.P6018217666467863053

namespace A369009

/-- `A342001(n+1)-A342001(n+1)/A369008(n+1)` -/
def P6018217666467863053.Spec : Prop :=
  ∀ n, P6018217666467863053.a n = (A369009 (n + 1) : ℚ)

end A369009

/-! ## A369009.P17255694177663038486

`A342001(n+1)-gcd(A189036(n+1), A342001(n+1))`
-/

namespace A369009.P17255694177663038486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) - (Int.gcd (A189036 (n + 1)) (A342001 (n + 1)) : ℤ)

end

end A369009.P17255694177663038486

namespace A369009

/-- `A342001(n+1)-gcd(A189036(n+1), A342001(n+1))` -/
def P17255694177663038486.Spec : Prop :=
  ∀ n, P17255694177663038486.a n = A369009 (n + 1)

end A369009

/-!
# A369010: Exponential of Mangoldt function M(n) applied to primorial base exp-function: a(n) = A014963(A276086(n)).

The programs for A369010, there is no canonical definition to state claims against.
-/

/-! ## A369010.P8053693028282374470

`A014963(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369010.P8053693028282374470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A276086 n).toNat

end

end A369010.P8053693028282374470

/-! ## A369010.P10384499385372486191

`A014963(A328571(n))`
-/

namespace A369010.P10384499385372486191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A328571 n).toNat

end

end A369010.P10384499385372486191

/-! ## A369010.P5893907885560160708

`A014973(A328571(n)+A276093(n))`
-/

namespace A369010.P5893907885560160708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A328571 n + A276093 n).toNat

end

end A369010.P5893907885560160708

/-! ## A369010.P18009903205518813059

`A014973(A328571(n)%A006567(n+1))`
-/

namespace A369010.P18009903205518813059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (Int.tmod (A328571 n) (A006567 (n + 1))).toNat

end

end A369010.P18009903205518813059

/-! ## A369010.P14059803830026365250

`A014973(A328571(n))%A031215(n+1)`
-/

namespace A369010.P14059803830026365250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014973 (A328571 n).toNat) (A031215 (n + 1))

end

end A369010.P14059803830026365250

/-! ## A369010.P17990148735879024204

`A014973(A135528(2*(n+2))*A328571(n))`
-/

namespace A369010.P17990148735879024204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A135528 (2 * (n + 2)) * A328571 n).toNat

end

end A369010.P17990148735879024204

/-! ## A369010.P3484249187634554369

`A014973(A328570(n)*A328571(n))`
-/

namespace A369010.P3484249187634554369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A328570 n * A328571 n).toNat

end

end A369010.P3484249187634554369

/-! ## A369010.P7457042604216302742

`A089026(∏{p}[A276086(n), #])`
-/

namespace A369010.P7457042604216302742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A369010.P7457042604216302742

/-! ## A369010.P12880268805892605506

`A100994(∏{p}[A276086(n), #])`
-/

namespace A369010.P12880268805892605506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A369010.P12880268805892605506

/-! ## A369010.P4996888631563504502

`A014963(∏{p}[A327860(n)-A342016(n), #])`
-/

namespace A369010.P4996888631563504502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A342016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A369010.P4996888631563504502

/-!
# A369012: Expansion of (1/x) * Series_Reversion( x * (1-x/(1-x))^3 ).

The programs for A369012, there is no canonical definition to state claims against.
-/

/-! ## A369012.P12582951846157799658

`A343382(A008000(n)+4)`
-/

namespace A369012.P12582951846157799658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 (A008000 n + 4).toNat

end

end A369012.P12582951846157799658

/-!
# A369015: Matula-Goebel number of the prime tower factorization tree of n.

The programs for A369015, there is no canonical definition to state claims against.
-/

/-! ## A369015.P2449058327665181366

`∏{e}[A284476(n+1), #+1]`
-/

namespace A369015.P2449058327665181366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A369015.P2449058327665181366

/-! ## A369015.P8424478737804339143

`A000005(A284476(n+1))`
-/

namespace A369015.P8424478737804339143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A284476 (n + 1)).toNat

end

end A369015.P8424478737804339143

/-! ## A369015.P1756751257469999039

`A000005(A395619(n+1))`
-/

namespace A369015.P1756751257469999039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A395619 (n + 1)).toNat

end

end A369015.P1756751257469999039

/-! ## A369015.P13412686604234931698

`A320111(2*A284476(n+1))`
-/

namespace A369015.P13412686604234931698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A284476 (n + 1)).toNat

end

end A369015.P13412686604234931698

/-! ## A369015.P17442208762585403989

`A046951(A284476(n+1)²)`
-/

namespace A369015.P17442208762585403989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A284476 (n + 1) ^ 2).toNat

end

end A369015.P17442208762585403989

/-! ## A369015.P7096203080737824945

`A061389(A064549(n+1))`
-/

namespace A369015.P7096203080737824945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A064549 (n + 1)).toNat

end

end A369015.P7096203080737824945

/-!
# A369016: Triangle read by rows: T(n, k) = binomial(n - 1, k - 1) * (k - 1)^(k - 1) * (n - k) * (n - k + 1)^(n - k - 1).

The programs for A369016, there is no canonical definition to state claims against.
-/

/-! ## A369016.P11550125970092100752

`A368849(n)/A318274(n)`
-/

namespace A369016.P11550125970092100752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368849 n : ℚ) / (A318274 n : ℚ)

end

end A369016.P11550125970092100752

/-! ## A369016.P970469535491338890

`A368849(n)/∑[A023531(n)]`
-/

namespace A369016.P970469535491338890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368849 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A369016.P970469535491338890

/-! ## A369016.P145333391265452539

`A368849(n)/A003056(n+1)`
-/

namespace A369016.P145333391265452539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368849 n : ℚ) / (A003056 (n + 1) : ℚ)

end

end A369016.P145333391265452539

/-! ## A369016.P8828500087021054411

`A368849(n)/A390085(n+1)`
-/

namespace A369016.P8828500087021054411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368849 n : ℚ) / (A390085 (n + 1) : ℚ)

end

end A369016.P8828500087021054411

/-! ## A369016.P7905589126511033457

`A099264(A329070(n))`
-/

namespace A369016.P7905589126511033457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099264 (A329070 n).toNat

end

end A369016.P7905589126511033457

/-!
# A369017: Triangle read by rows: T(n, k) = binomial(n-1, k-1) * (k - 1)^(k - 1) * k * (n - k + 1)^(n - k - 1).

The programs for A369017, there is no canonical definition to state claims against.
-/

/-! ## A369017.P7030351380446003641

`A108536(A003415(n))*A243202(n)`
-/

namespace A369017.P7030351380446003641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108536 (A003415 n).toNat * A243202 n

end

end A369017.P7030351380446003641

/-! ## A369017.P6344902848885063231

`A243202(n)*A274921(A006324(n+1))`
-/

namespace A369017.P6344902848885063231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243202 n * A274921 (A006324 (n + 1)).toNat

end

end A369017.P6344902848885063231

/-! ## A369017.P18241264689428083601

`A053150(A145142(3*(n+1)))*A243202(n)`
-/

namespace A369017.P18241264689428083601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A145142 (3 * (n + 1))).toNat * A243202 n

end

end A369017.P18241264689428083601

/-! ## A369017.P10686774032743540623

`A076493(A243202(3*(n+1)))*A243202(n)`
-/

namespace A369017.P10686774032743540623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 (A243202 (3 * (n + 1))).toNat * A243202 n

end

end A369017.P10686774032743540623

/-! ## A369017.P11361932955411593806

`A067840(A157396(n+1))%A084589(n+1)`
-/

namespace A369017.P11361932955411593806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067840 (A157396 (n + 1)).toNat) (A084589 (n + 1))

end

end A369017.P11361932955411593806

/-!
# A369018: Triangle read by rows: T(n, k) = binomial(n, k - 1)*(k - 1)^(k - 1)*n*(n - k + 1)^(n - k).

The programs for A369018, there is no canonical definition to state claims against.
-/

/-! ## A369018.P15823621064092699934

`A369019(n)+A368849(n)`
-/

namespace A369018.P15823621064092699934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369019 n + A368849 n

end

end A369018.P15823621064092699934

/-! ## A369018.P12173817852766506572

`A003056(n)*A244137(A038722(n+1))`
-/

namespace A369018.P12173817852766506572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A244137 (A038722 (n + 1)).toNat

end

end A369018.P12173817852766506572

/-! ## A369018.P7972242932999714746

`A368849(n)+A243203(n)^A336137(A001597(n+1))`
-/

namespace A369018.P7972242932999714746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368849 n : ℚ) + (A243203 n : ℚ) ^ (A336137 (A001597 (n + 1)).toNat : ℤ)

end

end A369018.P7972242932999714746

/-!
# A369019: Triangle read by rows: T(n, k) = binomial(n, k - 1)*(k - 1)^(k - 1)*k*(n - k + 1)^(n - k).

The programs for A369019, there is no canonical definition to state claims against.
-/

/-! ## A369019.P8968077807003130371

`∑[char[∑[n+1]]]*A369017(n)`
-/

namespace A369019.P8968077807003130371
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A369017 n

end

end A369019.P8968077807003130371

/-! ## A369019.P5952200879746234373

`A369018(n)-A368849(n)`
-/

namespace A369019.P5952200879746234373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369018 n - A368849 n

end

end A369019.P5952200879746234373

/-! ## A369019.P14816003014780883082

`A369018(n)-2*(A369072(n)-A369025(n))`
-/

namespace A369019.P14816003014780883082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369018 n - 2 * (A369072 n - A369025 n)

end

end A369019.P14816003014780883082

/-! ## A369019.P14474182529287977798

`A243203(n)^A336137(A001597(n+1))`
-/

namespace A369019.P14474182529287977798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 n : ℚ) ^ (A336137 (A001597 (n + 1)).toNat : ℤ)

end

end A369019.P14474182529287977798

/-!
# A369020: Numbers k such that k and k+1 have the same maximal exponent in their prime factorization.

The programs for A369020, the canonical program `A369020.P13526593118632980904` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369020 has offset 1).

The definition of A369020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369020.P13526593118632980904

`eq[A051903(n+1), A051903(n+2)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369020

/-- `eq[A051903(n+1), A051903(n+2)]+1` -/
def P13526593118632980904.Spec : Prop :=
  ∀ n, (P13526593118632980904.a n : ℤ) = A369020 (n + 1)

theorem P13526593118632980904.correct : P13526593118632980904.Spec := by
  intro n
  simp only [A369020, Nat.add_sub_cancel]

end A369020

/-! ## A369020.P12773432595264784294

`A020725(eq[A051903(n+1), A051903(n+2)])`
-/

namespace A369020.P12773432595264784294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369020.P12773432595264784294

namespace A369020

/-- `A020725(eq[A051903(n+1), A051903(n+2)])` -/
def P12773432595264784294.Spec : Prop :=
  ∀ n, P12773432595264784294.a n = A369020 (n + 1)

end A369020

/-! ## A369020.P14519802158228954957

`eq[A051903(n+1), A051903(A000038(n)+n)]`
-/

namespace A369020.P14519802158228954957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369020.P14519802158228954957

namespace A369020

/-- `eq[A051903(n+1), A051903(A000038(n)+n)]` -/
def P14519802158228954957.Spec : Prop :=
  ∀ n, (P14519802158228954957.a n : ℤ) = A369020 (n + 1)

end A369020

/-! ## A369020.P9667979892237532231

`A118759(A358817(n+2))`
-/

namespace A369020.P9667979892237532231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A358817 (n + 2)).toNat

end

end A369020.P9667979892237532231

namespace A369020

/-- `A118759(A358817(n+2))` -/
def P9667979892237532231.Spec : Prop :=
  ∀ n, P9667979892237532231.a n = A369020 (n + 1)

end A369020

/-!
# A369021: Numbers k such that k, k+1 and k+2 have the same maximal exponent in their prime factorization.

The programs for A369021, the canonical program `A369021.P17917779173175254819` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369021 has offset 1).

The definition of A369021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369021.P17917779173175254819

`∩[A369020(n+1)-1, A369020(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A369021

/-- `∩[A369020(n+1)-1, A369020(n+1)]` -/
def P17917779173175254819.Spec : Prop :=
  ∀ n, (P17917779173175254819.a n : ℤ) = A369021 (n + 1)

theorem P17917779173175254819.correct : P17917779173175254819.Spec := by
  intro n
  simp only [A369021, Nat.add_sub_cancel]

end A369021

/-! ## A369021.P13386001999362250937

`A007675(n+2)-A185215(A185213(n))`
-/

namespace A369021.P13386001999362250937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 2) - A185215 (A185213 n).toNat

end

end A369021.P13386001999362250937

namespace A369021

/-- `A007675(n+2)-A185215(A185213(n))` -/
def P13386001999362250937.Spec : Prop :=
  ∀ n, P13386001999362250937.a n = A369021 (n + 1)

end A369021

/-! ## A369021.P16857833222436255363

`A007675(n+2)-A185215(A185264(2*(n+1)))`
-/

namespace A369021.P16857833222436255363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 2) - A185215 (A185264 (2 * (n + 1))).toNat

end

end A369021.P16857833222436255363

namespace A369021

/-- `A007675(n+2)-A185215(A185264(2*(n+1)))` -/
def P16857833222436255363.Spec : Prop :=
  ∀ n, P16857833222436255363.a n = A369021 (n + 1)

end A369021

/-! ## A369021.P16021424252933025966

`A007675(A077168(n+1))`
-/

namespace A369021.P16021424252933025966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (A077168 (n + 1)).toNat

end

end A369021.P16021424252933025966

namespace A369021

/-- `A007675(A077168(n+1))` -/
def P16021424252933025966.Spec : Prop :=
  ∀ n, P16021424252933025966.a n = A369021 (n + 1)

end A369021

/-! ## A369021.P10836344570117248177

`A118759(A007675(n+2))`
-/

namespace A369021.P10836344570117248177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A007675 (n + 2)).toNat

end

end A369021.P10836344570117248177

namespace A369021

/-- `A118759(A007675(n+2))` -/
def P10836344570117248177.Spec : Prop :=
  ∀ n, P10836344570117248177.a n = A369021 (n + 1)

end A369021

/-!
# A369023: Expansion of (1/x) * Series_Reversion( x * (1-2*x)^3 / (1-x) ).

The programs for A369023, there is no canonical definition to state claims against.
-/

/-! ## A369023.P9684697376714325612

`A000265(lcm(A008288(n), A364396(n+1)))`
-/

namespace A369023.P9684697376714325612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A008288 n) (A364396 (n + 1)))

end

end A369023.P9684697376714325612

/-!
# A369025: Triangle read by rows: T(n, k) = floor(binomial(n, k - 1) * (k - 1)^(k - 1) * k *(n - k + 1)^(n - k) / 2).

The programs for A369025, there is no canonical definition to state claims against.
-/

/-! ## A369025.P18353223145392844359

`floor(A369019(n)/2)`
-/

namespace A369025.P18353223145392844359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A369019 n : ℚ) / 2⌋

end

end A369025.P18353223145392844359

/-! ## A369025.P7430605785424442547

`A369072(n)-A368982(n)`
-/

namespace A369025.P7430605785424442547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369072 n - A368982 n

end

end A369025.P7430605785424442547

/-! ## A369025.P699935528429281227

`A369072(n)-A368849(n)/2`
-/

namespace A369025.P699935528429281227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369072 n : ℚ) - (A368849 n : ℚ) / 2

end

end A369025.P699935528429281227

/-! ## A369025.P2078481777376909599

`A004526(A369019(n))`
-/

namespace A369025.P2078481777376909599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A369019 n).toNat

end

end A369025.P2078481777376909599

/-! ## A369025.P13345624704934824676

`A140106(A369019(n)+2)`
-/

namespace A369025.P13345624704934824676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A369019 n + 2).toNat

end

end A369025.P13345624704934824676

/-!
# A369026: a(n) = floor(n^(n - 1) / 2) for n > 0 and otherwise 0.

The programs for A369026, there is no canonical definition to state claims against.
-/

/-! ## A369026.P7281083808452251772

`floor(n^abs(1-n)/2)`
-/

namespace A369026.P7281083808452251772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (|1 - (n : ℤ)| : ℤ) / 2⌋

end

end A369026.P7281083808452251772

/-! ## A369026.P7327218391285438214

`ceil((2*n*A000272(n)-2)/4)`
-/

namespace A369026.P7327218391285438214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) * A000272 n - 2 : ℚ) / 4⌉

end

end A369026.P7327218391285438214

/-! ## A369026.P9893254819554834994

`A057065(n)-A081131(n)`
-/

namespace A369026.P9893254819554834994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057065 n - A081131 n

end

end A369026.P9893254819554834994

/-! ## A369026.P124517032173807240

`A192396((n-1)*2*n)`
-/

namespace A369026.P124517032173807240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192396 (((n : ℤ) - 1) * (2 * n : ℤ)).toNat

end

end A369026.P124517032173807240

/-! ## A369026.P862766386878589641

`A369025(∑[n]+1)`
-/

namespace A369026.P862766386878589641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369025 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A369026.P862766386878589641

/-!
# A369027: a(n) = floor(n^2 * (n - 1)^(n - 1) / 2).

The programs for A369027, the canonical program `A369027.P16990688544221689486` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369027 has offset 0).

The definition of A369027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²*(n-1)^(n-1)/2)` (program `A369027.P16990688544221689486`, by `A369027.P16990688544221689486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369027.P16990688544221689486

`floor(n²*(n-1)^(n-1)/2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A369027

/-- `floor(n²*(n-1)^(n-1)/2)` -/
def P16990688544221689486.Spec : Prop :=
  ∀ n, P16990688544221689486.a n = A369027 n

theorem P16990688544221689486.correct : P16990688544221689486.Spec := by
  intro n
  simp only [A369027]

end A369027

/-! ## A369027.P13192818699970028008

`A369025(∑[n]+n)`
-/

namespace A369027.P13192818699970028008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369025 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A369027.P13192818699970028008

namespace A369027

/-- `A369025(∑[n]+n)` -/
def P13192818699970028008.Spec : Prop :=
  ∀ n, P13192818699970028008.a n = A369027 n

end A369027

/-! ## A369027.P3864878189075368599

`A369072(∑[n]+n)`
-/

namespace A369027.P3864878189075368599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369072 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A369027.P3864878189075368599

namespace A369027

/-- `A369072(∑[n]+n)` -/
def P3864878189075368599.Spec : Prop :=
  ∀ n, P3864878189075368599.a n = A369027 n

end A369027

/-! ## A369027.P982015005265583127

`lcm(2, A369025(A000096(n)))`
-/

namespace A369027.P982015005265583127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A369025 (A000096 n).toNat)

end

end A369027.P982015005265583127

namespace A369027

/-- `lcm(2, A369025(A000096(n)))` -/
def P982015005265583127.Spec : Prop :=
  ∀ n, (P982015005265583127.a n : ℤ) = A369027 n

end A369027

/-! ## A369027.P2358843600203855447

`A369072(n*(n+3)/2)+A086747(3*n+2)`
-/

namespace A369027.P2358843600203855447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369072 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat + A086747 (3 * n + 2)

end

end A369027.P2358843600203855447

namespace A369027

/-- `A369072(n*(n+3)/2)+A086747(3*n+2)` -/
def P2358843600203855447.Spec : Prop :=
  ∀ n, P2358843600203855447.a n = A369027 n

end A369027

/-!
# A369028: Exponential of Mangoldt function permuted by A253563.

The programs for A369028, the canonical program `A369028.P15444832986516875941` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369028 has offset 0).

The definition of A369028 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369028.P15444832986516875941

`A014963(A253563(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369028

/-- `A014963(A253563(n))` -/
def P15444832986516875941.Spec : Prop :=
  ∀ n, P15444832986516875941.a n = A369028 n

theorem P15444832986516875941.correct : P15444832986516875941.Spec := by
  intro n
  simp only [A369028]

end A369028

/-! ## A369028.P14125238965293711967

`A369030(A383848(n))`
-/

namespace A369028.P14125238965293711967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 (A383848 n).toNat

end

end A369028.P14125238965293711967

namespace A369028

/-- `A369030(A383848(n))` -/
def P14125238965293711967.Spec : Prop :=
  ∀ n, P14125238965293711967.a n = A369028 n

end A369028

/-! ## A369028.P15324632784995923750

`gcd(A037800(n), A057334(n))`
-/

namespace A369028.P15324632784995923750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037800 n) (A057334 n)

end

end A369028.P15324632784995923750

namespace A369028

/-- `gcd(A037800(n), A057334(n))` -/
def P15324632784995923750.Spec : Prop :=
  ∀ n, (P15324632784995923750.a n : ℤ) = A369028 n

end A369028

/-! ## A369028.P15975745097214585179

`A369030(A333777(n))`
-/

namespace A369028.P15975745097214585179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 (A333777 n).toNat

end

end A369028.P15975745097214585179

namespace A369028

/-- `A369030(A333777(n))` -/
def P15975745097214585179.Spec : Prop :=
  ∀ n, P15975745097214585179.a n = A369028 n

end A369028

/-! ## A369028.P4008316759185652807

`A369033(A252755(n))`
-/

namespace A369028.P4008316759185652807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A252755 n).toNat

end

end A369028.P4008316759185652807

namespace A369028

/-- `A369033(A252755(n))` -/
def P4008316759185652807.Spec : Prop :=
  ∀ n, P4008316759185652807.a n = A369028 n

end A369028

/-! ## A369028.P6068354736158605747

`A369031(A278222(n))`
-/

namespace A369028.P6068354736158605747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A278222 n).toNat

end

end A369028.P6068354736158605747

namespace A369028

/-- `A369031(A278222(n))` -/
def P6068354736158605747.Spec : Prop :=
  ∀ n, P6068354736158605747.a n = A369028 n

end A369028

/-! ## A369028.P9273857115446716171

`A369031(A286588(n))`
-/

namespace A369028.P9273857115446716171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A286588 n).toNat

end

end A369028.P9273857115446716171

namespace A369028

/-- `A369031(A286588(n))` -/
def P9273857115446716171.Spec : Prop :=
  ∀ n, P9273857115446716171.a n = A369028 n

end A369028

/-! ## A369028.P8704898575926875383

`A369031(A005940(n+1))`
-/

namespace A369028.P8704898575926875383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A005940 (n + 1)).toNat

end

end A369028.P8704898575926875383

namespace A369028

/-- `A369031(A005940(n+1))` -/
def P8704898575926875383.Spec : Prop :=
  ∀ n, P8704898575926875383.a n = A369028 n

end A369028

/-! ## A369028.P16284081226949183878

`A369031(A332815(n))`
-/

namespace A369028.P16284081226949183878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A332815 n).toNat

end

end A369028.P16284081226949183878

namespace A369028

/-- `A369031(A332815(n))` -/
def P16284081226949183878.Spec : Prop :=
  ∀ n, P16284081226949183878.a n = A369028 n

end A369028

/-! ## A369028.P8593529553371848524

`A369033(A366275(n))`
-/

namespace A369028.P8593529553371848524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A366275 n).toNat

end

end A369028.P8593529553371848524

namespace A369028

/-- `A369033(A366275(n))` -/
def P8593529553371848524.Spec : Prop :=
  ∀ n, P8593529553371848524.a n = A369028 n

end A369028

/-! ## A369028.P8967053849746149239

`A369032(A253565(n))`
-/

namespace A369028.P8967053849746149239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A253565 n).toNat

end

end A369028.P8967053849746149239

namespace A369028

/-- `A369032(A253565(n))` -/
def P8967053849746149239.Spec : Prop :=
  ∀ n, P8967053849746149239.a n = A369028 n

end A369028

/-! ## A369028.P8913551654542942262

`A369033(A163511(n))`
-/

namespace A369028.P8913551654542942262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A163511 n).toNat

end

end A369028.P8913551654542942262

namespace A369028

/-- `A369033(A163511(n))` -/
def P8913551654542942262.Spec : Prop :=
  ∀ n, P8913551654542942262.a n = A369028 n

end A369028

/-! ## A369028.P16826520819712515584

`A369031(A374717(n+1))`
-/

namespace A369028.P16826520819712515584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A374717 (n + 1)).toNat

end

end A369028.P16826520819712515584

namespace A369028

/-- `A369031(A374717(n+1))` -/
def P16826520819712515584.Spec : Prop :=
  ∀ n, P16826520819712515584.a n = A369028 n

end A369028

/-!
# A369029: Exponential of Mangoldt function permuted by A253565.

The programs for A369029, the canonical program `A369029.P15471958380729521510` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369029 has offset 0).

The definition of A369029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A253565, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369029.P15471958380729521510

`A014963(A253565(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369029

/-- `A014963(A253565(n))` -/
def P15471958380729521510.Spec : Prop :=
  ∀ n, P15471958380729521510.a n = A369029 n

theorem P15471958380729521510.correct : P15471958380729521510.Spec := by
  intro n
  simp only [A369029]

end A369029

/-! ## A369029.P8645612172633886480

`A369053(A341916(n))`
-/

namespace A369029.P8645612172633886480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369053 (A341916 n).toNat

end

end A369029.P8645612172633886480

namespace A369029

/-- `A369053(A341916(n))` -/
def P8645612172633886480.Spec : Prop :=
  ∀ n, P8645612172633886480.a n = A369029 n

end A369029

/-! ## A369029.P6107013714242639857

`A368900(A145342(n+1))`
-/

namespace A369029.P6107013714242639857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (A145342 (n + 1)).toNat

end

end A369029.P6107013714242639857

namespace A369029

/-- `A368900(A145342(n+1))` -/
def P6107013714242639857.Spec : Prop :=
  ∀ n, P6107013714242639857.a n = A369029 n

end A369029

/-! ## A369029.P4962599735182892539

`A369033(A252753(n))`
-/

namespace A369029.P4962599735182892539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A252753 n).toNat

end

end A369029.P4962599735182892539

namespace A369029

/-- `A369033(A252753(n))` -/
def P4962599735182892539.Spec : Prop :=
  ∀ n, P4962599735182892539.a n = A369029 n

end A369029

/-! ## A369029.P1780241683473758219

`A369031(A278531(n))`
-/

namespace A369029.P1780241683473758219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A278531 n).toNat

end

end A369029.P1780241683473758219

namespace A369029

/-- `A369031(A278531(n))` -/
def P1780241683473758219.Spec : Prop :=
  ∀ n, P1780241683473758219.a n = A369029 n

end A369029

/-! ## A369029.P15056244651203382540

`A369028(A278531(n)-1)`
-/

namespace A369029.P15056244651203382540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A278531 n - 1).toNat

end

end A369029.P15056244651203382540

namespace A369029

/-- `A369028(A278531(n)-1)` -/
def P15056244651203382540.Spec : Prop :=
  ∀ n, P15056244651203382540.a n = A369029 n

end A369029

/-! ## A369029.P18286481415512837006

`A369031(A364297(n))`
-/

namespace A369029.P18286481415512837006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A364297 n).toNat

end

end A369029.P18286481415512837006

namespace A369029

/-- `A369031(A364297(n))` -/
def P18286481415512837006.Spec : Prop :=
  ∀ n, P18286481415512837006.a n = A369029 n

end A369029

/-! ## A369029.P16909157283006571230

`A369033(A357268(n+1))`
-/

namespace A369029.P16909157283006571230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A357268 (n + 1)).toNat

end

end A369029.P16909157283006571230

namespace A369029

/-- `A369033(A357268(n+1))` -/
def P16909157283006571230.Spec : Prop :=
  ∀ n, P16909157283006571230.a n = A369029 n

end A369029

/-! ## A369029.P4458179972234491955

`A369033(A005940(n+1))`
-/

namespace A369029.P4458179972234491955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A005940 (n + 1)).toNat

end

end A369029.P4458179972234491955

namespace A369029

/-- `A369033(A005940(n+1))` -/
def P4458179972234491955.Spec : Prop :=
  ∀ n, P4458179972234491955.a n = A369029 n

end A369029

/-! ## A369029.P13025924890657826558

`A369032(A253563(n))`
-/

namespace A369029.P13025924890657826558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A253563 n).toNat

end

end A369029.P13025924890657826558

namespace A369029

/-- `A369032(A253563(n))` -/
def P13025924890657826558.Spec : Prop :=
  ∀ n, P13025924890657826558.a n = A369029 n

end A369029

/-! ## A369029.P12871923591189187600

`A369031(A163511(n))`
-/

namespace A369029.P12871923591189187600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A163511 n).toNat

end

end A369029.P12871923591189187600

namespace A369029

/-- `A369031(A163511(n))` -/
def P12871923591189187600.Spec : Prop :=
  ∀ n, P12871923591189187600.a n = A369029 n

end A369029

/-! ## A369029.P6999535634392532789

`A369031(A332817(n))`
-/

namespace A369029.P6999535634392532789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A332817 n).toNat

end

end A369029.P6999535634392532789

namespace A369029

/-- `A369031(A332817(n))` -/
def P6999535634392532789.Spec : Prop :=
  ∀ n, P6999535634392532789.a n = A369029 n

end A369029

/-! ## A369029.P8137386080177116909

`A369031(A332214(n))`
-/

namespace A369029.P8137386080177116909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A332214 n).toNat

end

end A369029.P8137386080177116909

namespace A369029

/-- `A369031(A332214(n))` -/
def P8137386080177116909.Spec : Prop :=
  ∀ n, P8137386080177116909.a n = A369029 n

end A369029

/-!
# A369030: Exponential of Mangoldt function permuted by A163511 ("Doudna-permutation mirrored").

The programs for A369030, the canonical program `A369030.P16010318685675967167` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369030 has offset 0).

The definition of A369030 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369030.P16010318685675967167

`A014963(A163511(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369030

/-- `A014963(A163511(n))` -/
def P16010318685675967167.Spec : Prop :=
  ∀ n, P16010318685675967167.a n = A369030 n

theorem P16010318685675967167.correct : P16010318685675967167.Spec := by
  intro n
  simp only [A369030]

end A369030

/-! ## A369030.P14809535047010535605

`A369028(A006257(n))`
-/

namespace A369030.P14809535047010535605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A006257 n).toNat

end

end A369030.P14809535047010535605

namespace A369030

/-- `A369028(A006257(n))` -/
def P14809535047010535605.Spec : Prop :=
  ∀ n, P14809535047010535605.a n = A369030 n

end A369030

/-! ## A369030.P6619385094658042333

`A369053(A180200(n))`
-/

namespace A369030.P6619385094658042333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369053 (A180200 n).toNat

end

end A369030.P6619385094658042333

namespace A369030

/-- `A369053(A180200(n))` -/
def P6619385094658042333.Spec : Prop :=
  ∀ n, P6619385094658042333.a n = A369030 n

end A369030

/-! ## A369030.P10541800259097003750

`A369028(A243109(n))`
-/

namespace A369030.P10541800259097003750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A243109 n).toNat

end

end A369030.P10541800259097003750

namespace A369030

/-- `A369028(A243109(n))` -/
def P10541800259097003750.Spec : Prop :=
  ∀ n, P10541800259097003750.a n = A369030 n

end A369030

/-! ## A369030.P7232049707600621670

`A368900(A337909(n+1))`
-/

namespace A369030.P7232049707600621670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (A337909 (n + 1)).toNat

end

end A369030.P7232049707600621670

namespace A369030

/-- `A368900(A337909(n+1))` -/
def P7232049707600621670.Spec : Prop :=
  ∀ n, P7232049707600621670.a n = A369030 n

end A369030

/-! ## A369030.P4142627001796735194

`A369028(A333776(n))`
-/

namespace A369030.P4142627001796735194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A333776 n).toNat

end

end A369030.P4142627001796735194

namespace A369030

/-- `A369028(A333776(n))` -/
def P4142627001796735194.Spec : Prop :=
  ∀ n, P4142627001796735194.a n = A369030 n

end A369030

/-! ## A369030.P12756582643781372886

`A369028(A256263(n))`
-/

namespace A369030.P12756582643781372886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A256263 n).toNat

end

end A369030.P12756582643781372886

namespace A369030

/-- `A369028(A256263(n))` -/
def P12756582643781372886.Spec : Prop :=
  ∀ n, P12756582643781372886.a n = A369030 n

end A369030

/-! ## A369030.P14516675428003100160

`A369031(A152423(n+1))`
-/

namespace A369030.P14516675428003100160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A152423 (n + 1)).toNat

end

end A369030.P14516675428003100160

namespace A369030

/-- `A369031(A152423(n+1))` -/
def P14516675428003100160.Spec : Prop :=
  ∀ n, P14516675428003100160.a n = A369030 n

end A369030

/-! ## A369030.P2250847548191283444

`A369028(A057889(2*n+1)-1)`
-/

namespace A369030.P2250847548191283444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A057889 (2 * n + 1) - 1).toNat

end

end A369030.P2250847548191283444

namespace A369030

/-- `A369028(A057889(2*n+1)-1)` -/
def P2250847548191283444.Spec : Prop :=
  ∀ n, P2250847548191283444.a n = A369030 n

end A369030

/-! ## A369030.P6371141392558212357

`A369032(A252753(n))`
-/

namespace A369030.P6371141392558212357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A252753 n).toNat

end

end A369030.P6371141392558212357

namespace A369030

/-- `A369032(A252753(n))` -/
def P6371141392558212357.Spec : Prop :=
  ∀ n, P6371141392558212357.a n = A369030 n

end A369030

/-! ## A369030.P4831939360855863334

`A369031(A278535(n))`
-/

namespace A369030.P4831939360855863334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A278535 n).toNat

end

end A369030.P4831939360855863334

namespace A369030

/-- `A369031(A278535(n))` -/
def P4831939360855863334.Spec : Prop :=
  ∀ n, P4831939360855863334.a n = A369030 n

end A369030

/-! ## A369030.P15704689499606099202

`A369028(A278535(n)-1)`
-/

namespace A369030.P15704689499606099202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A278535 n - 1).toNat

end

end A369030.P15704689499606099202

namespace A369030

/-- `A369028(A278535(n)-1)` -/
def P15704689499606099202.Spec : Prop :=
  ∀ n, P15704689499606099202.a n = A369030 n

end A369030

/-! ## A369030.P1575321044059222472

`A369032(A357268(n+1))`
-/

namespace A369030.P1575321044059222472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A357268 (n + 1)).toNat

end

end A369030.P1575321044059222472

namespace A369030

/-- `A369032(A357268(n+1))` -/
def P1575321044059222472.Spec : Prop :=
  ∀ n, P1575321044059222472.a n = A369030 n

end A369030

/-! ## A369030.P4671335733229035629

`A369032(A005940(n+1))`
-/

namespace A369030.P4671335733229035629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A005940 (n + 1)).toNat

end

end A369030.P4671335733229035629

namespace A369030

/-- `A369032(A005940(n+1))` -/
def P4671335733229035629.Spec : Prop :=
  ∀ n, P4671335733229035629.a n = A369030 n

end A369030

/-! ## A369030.P6406808354252039551

`A369032(A332815(n))`
-/

namespace A369030.P6406808354252039551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A332815 n).toNat

end

end A369030.P6406808354252039551

namespace A369030

/-- `A369032(A332815(n))` -/
def P6406808354252039551.Spec : Prop :=
  ∀ n, P6406808354252039551.a n = A369030 n

end A369030

/-! ## A369030.P6075269160012723473

`A369033(A253563(n))`
-/

namespace A369030.P6075269160012723473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A253563 n).toNat

end

end A369030.P6075269160012723473

namespace A369030

/-- `A369033(A253563(n))` -/
def P6075269160012723473.Spec : Prop :=
  ∀ n, P6075269160012723473.a n = A369030 n

end A369030

/-! ## A369030.P9725519272587889260

`A369031(A253565(n))`
-/

namespace A369030.P9725519272587889260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A253565 n).toNat

end

end A369030.P9725519272587889260

namespace A369030

/-- `A369031(A253565(n))` -/
def P9725519272587889260.Spec : Prop :=
  ∀ n, P9725519272587889260.a n = A369030 n

end A369030

/-! ## A369030.P12791092383662970975

`A369032(A374717(n+1))`
-/

namespace A369030.P12791092383662970975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A374717 (n + 1)).toNat

end

end A369030.P12791092383662970975

namespace A369030

/-- `A369032(A374717(n+1))` -/
def P12791092383662970975.Spec : Prop :=
  ∀ n, P12791092383662970975.a n = A369030 n

end A369030

/-!
# A369031: LCM-transform of permutation induced by partition conjugation via Heinz numbers (A122111).

The programs for A369031, the canonical program `A369031.P9461008699479139842` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369031 has offset 1).

The definition of A369031 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369031.P9461008699479139842

`A014963(A122111(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369031

/-- `A014963(A122111(n+1))` -/
def P9461008699479139842.Spec : Prop :=
  ∀ n, P9461008699479139842.a n = A369031 (n + 1)

theorem P9461008699479139842.correct : P9461008699479139842.Spec := by
  intro n
  simp only [A369031, Nat.add_sub_cancel]

end A369031

/-! ## A369031.P2955784537651128891

`A089026(A181819(n+1))`
-/

namespace A369031.P2955784537651128891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A181819 (n + 1)).toNat

end

end A369031.P2955784537651128891

namespace A369031

/-- `A089026(A181819(n+1))` -/
def P2955784537651128891.Spec : Prop :=
  ∀ n, P2955784537651128891.a n = A369031 (n + 1)

end A369031

/-! ## A369031.P14444592821037620320

`A014963(A329607(n+1))`
-/

namespace A369031.P14444592821037620320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A329607 (n + 1)).toNat

end

end A369031.P14444592821037620320

namespace A369031

/-- `A014963(A329607(n+1))` -/
def P14444592821037620320.Spec : Prop :=
  ∀ n, P14444592821037620320.a n = A369031 (n + 1)

end A369031

/-! ## A369031.P8207060221480906861

`A369028(A046523(n+1)-1)`
-/

namespace A369031.P8207060221480906861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A046523 (n + 1) - 1).toNat

end

end A369031.P8207060221480906861

namespace A369031

/-- `A369028(A046523(n+1)-1)` -/
def P8207060221480906861.Spec : Prop :=
  ∀ n, P8207060221480906861.a n = A369031 (n + 1)

end A369031

/-! ## A369031.P1531353790851084271

`gcd(A079872(n+1), A329601(n+1))`
-/

namespace A369031.P1531353790851084271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079872 (n + 1)) (A329601 (n + 1))

end

end A369031.P1531353790851084271

namespace A369031

/-- `gcd(A079872(n+1), A329601(n+1))` -/
def P1531353790851084271.Spec : Prop :=
  ∀ n, (P1531353790851084271.a n : ℤ) = A369031 (n + 1)

end A369031

/-! ## A369031.P16184452111113571138

`gcd(A048767(n+1), A105560(n+1))`
-/

namespace A369031.P16184452111113571138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048767 (n + 1)) (A105560 (n + 1))

end

end A369031.P16184452111113571138

namespace A369031

/-- `gcd(A048767(n+1), A105560(n+1))` -/
def P16184452111113571138.Spec : Prop :=
  ∀ n, (P16184452111113571138.a n : ℤ) = A369031 (n + 1)

end A369031

/-! ## A369031.P11971861526892586293

`A295878(A140651(n+1))`
-/

namespace A369031.P11971861526892586293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (A140651 (n + 1)).toNat

end

end A369031.P11971861526892586293

namespace A369031

/-- `A295878(A140651(n+1))` -/
def P11971861526892586293.Spec : Prop :=
  ∀ n, P11971861526892586293.a n = A369031 (n + 1)

end A369031

/-! ## A369031.P9517593590361123080

`A369028(A339667(n+1))`
-/

namespace A369031.P9517593590361123080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A339667 (n + 1)).toNat

end

end A369031.P9517593590361123080

namespace A369031

/-- `A369028(A339667(n+1))` -/
def P9517593590361123080.Spec : Prop :=
  ∀ n, P9517593590361123080.a n = A369031 (n + 1)

end A369031

/-! ## A369031.P2297639467025228327

`A369032(A241916(n+1))`
-/

namespace A369031.P2297639467025228327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A241916 (n + 1)).toNat

end

end A369031.P2297639467025228327

namespace A369031

/-- `A369032(A241916(n+1))` -/
def P2297639467025228327.Spec : Prop :=
  ∀ n, P2297639467025228327.a n = A369031 (n + 1)

end A369031

/-! ## A369031.P5747843031092500172

`A306694(A304203(n+1))`
-/

namespace A369031.P5747843031092500172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306694 (A304203 (n + 1)).toNat

end

end A369031.P5747843031092500172

namespace A369031

/-- `A306694(A304203(n+1))` -/
def P5747843031092500172.Spec : Prop :=
  ∀ n, P5747843031092500172.a n = A369031 (n + 1)

end A369031

/-! ## A369031.P13573324330250532626

`A369028(A322993(n+1))`
-/

namespace A369031.P13573324330250532626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369028 (A322993 (n + 1)).toNat

end

end A369031.P13573324330250532626

namespace A369031

/-- `A369028(A322993(n+1))` -/
def P13573324330250532626.Spec : Prop :=
  ∀ n, P13573324330250532626.a n = A369031 (n + 1)

end A369031

/-!
# A369032: LCM-transform of permutation A241909.

The programs for A369032, the canonical program `A369032.P9747696111945326450` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369032 has offset 1).

The definition of A369032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369032.P16460587554408032171

`A014963(A241909(n+1))`
-/

namespace A369032.P16460587554408032171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A241909 (n + 1)).toNat

end

end A369032.P16460587554408032171

namespace A369032

/-- `A014963(A241909(n+1))` -/
def P16460587554408032171.Spec : Prop :=
  ∀ n, P16460587554408032171.a n = A369032 (n + 1)

end A369032

/-! ## A369032.P18263740930197192987

`A369031(A278525(n+1))`
-/

namespace A369032.P18263740930197192987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A278525 (n + 1)).toNat

end

end A369032.P18263740930197192987

namespace A369032

/-- `A369031(A278525(n+1))` -/
def P18263740930197192987.Spec : Prop :=
  ∀ n, P18263740930197192987.a n = A369032 (n + 1)

end A369032

/-! ## A369032.P12662056607103754688

`gcd(A105560(n+1), A106405(n+1))`
-/

namespace A369032.P12662056607103754688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105560 (n + 1)) (A106405 (n + 1))

end

end A369032.P12662056607103754688

namespace A369032

/-- `gcd(A105560(n+1), A106405(n+1))` -/
def P12662056607103754688.Spec : Prop :=
  ∀ n, (P12662056607103754688.a n : ℤ) = A369032 (n + 1)

end A369032

/-! ## A369032.P9747696111945326450

`A105560(n+1)^A304438(n+1)²`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A369032

/-- `A105560(n+1)^A304438(n+1)²` -/
def P9747696111945326450.Spec : Prop :=
  ∀ n, P9747696111945326450.a n = (A369032 (n + 1) : ℚ)

end A369032

/-! ## A369032.P4654016106308117845

`gcd(A000040(A329382(n+1)), A122111(n+1))`
-/

namespace A369032.P4654016106308117845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (A329382 (n + 1)).toNat) (A122111 (n + 1))

end

end A369032.P4654016106308117845

namespace A369032

/-- `gcd(A000040(A329382(n+1)), A122111(n+1))` -/
def P4654016106308117845.Spec : Prop :=
  ∀ n, (P4654016106308117845.a n : ℤ) = A369032 (n + 1)

end A369032

/-! ## A369032.P866440517301459149

`C(A105560(A003961(n+1)), A304438(n+1)²)`
-/

namespace A369032.P866440517301459149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105560 (A003961 (n + 1)).toNat).toNat (A304438 (n + 1) ^ 2).toNat

end

end A369032.P866440517301459149

namespace A369032

/-- `C(A105560(A003961(n+1)), A304438(n+1)²)` -/
def P866440517301459149.Spec : Prop :=
  ∀ n, (P866440517301459149.a n : ℤ) = A369032 (n + 1)

end A369032

/-! ## A369032.P16391516639506675461

`A369031(A241916(n+1))`
-/

namespace A369032.P16391516639506675461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (A241916 (n + 1)).toNat

end

end A369032.P16391516639506675461

namespace A369032

/-- `A369031(A241916(n+1))` -/
def P16391516639506675461.Spec : Prop :=
  ∀ n, P16391516639506675461.a n = A369032 (n + 1)

end A369032

/-! ## A369032.P4075517078635295169

`A369030(A156552(n+1))`
-/

namespace A369032.P4075517078635295169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 (A156552 (n + 1)).toNat

end

end A369032.P4075517078635295169

namespace A369032

/-- `A369030(A156552(n+1))` -/
def P4075517078635295169.Spec : Prop :=
  ∀ n, P4075517078635295169.a n = A369032 (n + 1)

end A369032

/-! ## A369032.P4162661976654884042

`A369030(A233249(n+1))`
-/

namespace A369032.P4162661976654884042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 (A233249 (n + 1)).toNat

end

end A369032.P4162661976654884042

namespace A369032

/-- `A369030(A233249(n+1))` -/
def P4162661976654884042.Spec : Prop :=
  ∀ n, P4162661976654884042.a n = A369032 (n + 1)

end A369032

/-! ## A369032.P4257434261893338927

`A369030(A252754(n+1))`
-/

namespace A369032.P4257434261893338927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 (A252754 (n + 1)).toNat

end

end A369032.P4257434261893338927

namespace A369032

/-- `A369030(A252754(n+1))` -/
def P4257434261893338927.Spec : Prop :=
  ∀ n, P4257434261893338927.a n = A369032 (n + 1)

end A369032

/-!
# A369033: LCM-transform of permutation A241916.

The programs for A369033, the canonical program `A369033.P9448387605412022017` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369033 has offset 1).

The definition of A369033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369033.P3065776201269152894

`A014963(A241916(n+1))`
-/

namespace A369033.P3065776201269152894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A241916 (n + 1)).toNat

end

end A369033.P3065776201269152894

namespace A369033

/-- `A014963(A241916(n+1))` -/
def P3065776201269152894.Spec : Prop :=
  ∀ n, P3065776201269152894.a n = A369033 (n + 1)

end A369033

/-! ## A369033.P8941962651234791804

`gcd(n+1, A303077(n+1))`
-/

namespace A369033.P8941962651234791804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A303077 (n + 1))

end

end A369033.P8941962651234791804

namespace A369033

/-- `gcd(n+1, A303077(n+1))` -/
def P8941962651234791804.Spec : Prop :=
  ∀ n, (P8941962651234791804.a n : ℤ) = A369033 (n + 1)

end A369033

/-! ## A369033.P7824604110173695901

`A014973(A192330(n+1))`
-/

namespace A369033.P7824604110173695901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A192330 (n + 1)).toNat

end

end A369033.P7824604110173695901

namespace A369033

/-- `A014973(A192330(n+1))` -/
def P7824604110173695901.Spec : Prop :=
  ∀ n, P7824604110173695901.a n = A369033 (n + 1)

end A369033

/-! ## A369033.P9448387605412022017

`A014963(A200746(n+1)/A252462(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369033

/-- `A014963(A200746(n+1)/A252462(n+1))` -/
def P9448387605412022017.Spec : Prop :=
  ∀ n, P9448387605412022017.a n = A369033 (n + 1)

theorem P9448387605412022017.correct : P9448387605412022017.Spec := by
  intro n
  simp only [A369033, Nat.add_sub_cancel]

end A369033

/-! ## A369033.P16988777257214277808

`A219964(A259445(n+1))`
-/

namespace A369033.P16988777257214277808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A259445 (n + 1)).toNat

end

end A369033.P16988777257214277808

namespace A369033

/-- `A219964(A259445(n+1))` -/
def P16988777257214277808.Spec : Prop :=
  ∀ n, P16988777257214277808.a n = A369033 (n + 1)

end A369033

/-! ## A369033.P4915694379114323096

`A219964(A327937(n+1))`
-/

namespace A369033.P4915694379114323096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A327937 (n + 1)).toNat

end

end A369033.P4915694379114323096

namespace A369033

/-- `A219964(A327937(n+1))` -/
def P4915694379114323096.Spec : Prop :=
  ∀ n, P4915694379114323096.a n = A369033 (n + 1)

end A369033

/-! ## A369033.P11444075360369003152

`A014963(A014963(n+1)*A336652(n+1))`
-/

namespace A369033.P11444075360369003152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014963 (n + 1) * A336652 (n + 1)).toNat

end

end A369033.P11444075360369003152

namespace A369033

/-- `A014963(A014963(n+1)*A336652(n+1))` -/
def P11444075360369003152.Spec : Prop :=
  ∀ n, P11444075360369003152.a n = A369033 (n + 1)

end A369033

/-! ## A369033.P49867564488288545

`∏{p}[A219964(n+1), #]`
-/

namespace A369033.P49867564488288545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A369033.P49867564488288545

namespace A369033

/-- `∏{p}[A219964(n+1), #]` -/
def P49867564488288545.Spec : Prop :=
  ∀ n, (P49867564488288545.a n : ℤ) = A369033 (n + 1)

end A369033

/-! ## A369033.P1965902332883050770

`A006530(A219964(n+1))`
-/

namespace A369033.P1965902332883050770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A219964 (n + 1)).toNat

end

end A369033.P1965902332883050770

namespace A369033

/-- `A006530(A219964(n+1))` -/
def P1965902332883050770.Spec : Prop :=
  ∀ n, P1965902332883050770.a n = A369033 (n + 1)

end A369033

/-!
# A369034: a(n) = 1 if A327860(n) is a multiple of 4, otherwise 0, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A369034, there is no canonical definition to state claims against.
-/

/-! ## A369034.P17686324943488402479

`A121262(n)-A369036(n)`
-/

namespace A369034.P17686324943488402479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n - A369036 n

end

end A369034.P17686324943488402479

/-!
# A369035: Numbers k for which A327860(k) is a multiple of 4, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A369035, there is no canonical definition to state claims against.
-/

/-! ## A369035.P18208014454132027147

`comp[A369034(n)+n]`
-/

namespace A369035.P18208014454132027147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369034 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A369035.P18208014454132027147

/-! ## A369035.P14246932395795576386

`filter[A008586(n), A369034(#)]`
-/

namespace A369035.P14246932395795576386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P14246932395795576386

/-! ## A369035.P16061285057494873609

`filter[A162648(n+1), A369034(#)]`
-/

namespace A369035.P16061285057494873609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P16061285057494873609

/-! ## A369035.P11108183058999473432

`filter[A157932(n+1), A369034(#)]`
-/

namespace A369035.P11108183058999473432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P11108183058999473432

/-! ## A369035.P17999979136627375962

`filter[A327864(n+1), A369034(#)]`
-/

namespace A369035.P17999979136627375962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P17999979136627375962

/-! ## A369035.P7779985822465937871

`filter[A047407(n+1), A369034(#)]`
-/

namespace A369035.P7779985822465937871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P7779985822465937871

/-! ## A369035.P4804187697265592140

`filter[A047458(n+1), A369034(#)]`
-/

namespace A369035.P4804187697265592140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P4804187697265592140

/-! ## A369035.P14551041503942973029

`filter[A047462(n+1), A369034(#)]`
-/

namespace A369035.P14551041503942973029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P14551041503942973029

/-! ## A369035.P8763262903135122003

`filter[A047464(n+1), A369034(#)]`
-/

namespace A369035.P8763262903135122003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P8763262903135122003

/-! ## A369035.P16783067947652127150

`filter[A047536(n+1), A369034(#)]`
-/

namespace A369035.P16783067947652127150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P16783067947652127150

/-! ## A369035.P3524088300714498477

`filter[A047609(n+1), A369034(#)]`
-/

namespace A369035.P3524088300714498477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P3524088300714498477

/-! ## A369035.P18145122757622226833

`filter[A374037(n+1), A369034(#)]`
-/

namespace A369035.P18145122757622226833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P18145122757622226833

/-! ## A369035.P18115187716698795566

`filter[A080033(n), A369034(#)]`
-/

namespace A369035.P18115187716698795566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P18115187716698795566

/-! ## A369035.P7921872251427197553

`filter[A359376(n+1), A369034(#)]`
-/

namespace A369035.P7921872251427197553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P7921872251427197553

/-! ## A369035.P10849260350455649163

`filter[A176100(n+1), A369034(#)]`
-/

namespace A369035.P10849260350455649163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P10849260350455649163

/-! ## A369035.P3491747899699060945

`filter[A328303(n+1), A369034(#)]`
-/

namespace A369035.P3491747899699060945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P3491747899699060945

/-! ## A369035.P17553401747275552636

`filter[A374046(n+1), A369034(#)]`
-/

namespace A369035.P17553401747275552636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P17553401747275552636

/-! ## A369035.P11213958154412641397

`filter[A092453(n), A369034(#)]`
-/

namespace A369035.P11213958154412641397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P11213958154412641397

/-! ## A369035.P15212926829178667993

`filter[A235992(n+1), A369034(#)]`
-/

namespace A369035.P15212926829178667993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P15212926829178667993

/-! ## A369035.P10518624377450944036

`filter[A004275(n), A369034(#)]`
-/

namespace A369035.P10518624377450944036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A369035.P10518624377450944036

/-!
# A369036: a(n) = 1 if A327860(n) is of the form 4m+2, otherwise 0, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A369036, there is no canonical definition to state claims against.
-/

/-! ## A369036.P6152927896084992528

`A121262(n)-A369034(n)`
-/

namespace A369036.P6152927896084992528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n - A369034 n

end

end A369036.P6152927896084992528

/-!
# A369037: Numbers k for which A327860(k) is of the form 4m+2, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A369037, there is no canonical definition to state claims against.
-/

/-! ## A369037.P10142117541702082882

`filter[A008574(n), A369036(#)]`
-/

namespace A369037.P10142117541702082882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P10142117541702082882

/-! ## A369037.P5943738551323232314

`filter[A008586(n), A369036(#)]`
-/

namespace A369037.P5943738551323232314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P5943738551323232314

/-! ## A369037.P10742419013645866460

`filter[A200535(n), A369036(#)]`
-/

namespace A369037.P10742419013645866460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P10742419013645866460

/-! ## A369037.P12263743744621823567

`filter[A102211(n+1), A369036(#)]`
-/

namespace A369037.P12263743744621823567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P12263743744621823567

/-! ## A369037.P14736141517165002885

`filter[A100716(n+1), A369036(#)]`
-/

namespace A369037.P14736141517165002885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P14736141517165002885

/-! ## A369037.P18376645761197703528

`filter[A086133(n+1), A369036(#)]`
-/

namespace A369037.P18376645761197703528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P18376645761197703528

/-! ## A369037.P17535019707955559812

`filter[A328251(n+1), A369036(#)]`
-/

namespace A369037.P17535019707955559812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P17535019707955559812

/-! ## A369037.P10143524726341983831

`filter[A005942(n), A369036(#)]`
-/

namespace A369037.P10143524726341983831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P10143524726341983831

/-! ## A369037.P459398665383504200

`filter[A355740(n+1), A369036(#)]`
-/

namespace A369037.P459398665383504200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P459398665383504200

/-! ## A369037.P4853563606029607691

`filter[A371089(n+1), A369036(#)]`
-/

namespace A369037.P4853563606029607691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P4853563606029607691

/-! ## A369037.P11914896228187146073

`filter[A283050(n+1), A369036(#)]`
-/

namespace A369037.P11914896228187146073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P11914896228187146073

/-! ## A369037.P4679653604708365472

`filter[A118286(n+1), A369036(#)]`
-/

namespace A369037.P4679653604708365472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P4679653604708365472

/-! ## A369037.P6786569856781977686

`filter[A157932(n+1), A369036(#)]`
-/

namespace A369037.P6786569856781977686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P6786569856781977686

/-! ## A369037.P12493864835531659284

`filter[A162648(n+1), A369036(#)]`
-/

namespace A369037.P12493864835531659284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P12493864835531659284

/-! ## A369037.P14181257668749653304

`filter[A274141(n+1), A369036(#)]`
-/

namespace A369037.P14181257668749653304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P14181257668749653304

/-! ## A369037.P7029720248530231604

`filter[A053443(n+1), A369036(#)]`
-/

namespace A369037.P7029720248530231604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P7029720248530231604

/-! ## A369037.P11325004111349696786

`filter[A354591(n+1), A369036(#)]`
-/

namespace A369037.P11325004111349696786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P11325004111349696786

/-! ## A369037.P692412644237730713

`filter[A327864(n+1), A369036(#)]`
-/

namespace A369037.P692412644237730713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P692412644237730713

/-! ## A369037.P5789984065748176051

`filter[A047407(n+1), A369036(#)]`
-/

namespace A369037.P5789984065748176051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P5789984065748176051

/-! ## A369037.P2742886841841626432

`filter[A047458(n+1), A369036(#)]`
-/

namespace A369037.P2742886841841626432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369036 (f1 j).toNat = 1) n)

end

end A369037.P2742886841841626432

/-!
# A369038: Numerator of ratio A003415(n) / A003415(A276086(n)), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A369038, there is no canonical definition to state claims against.
-/

/-! ## A369038.P18199444595080537960

`A003415(n+1)/A345000(n+1)`
-/

namespace A369038.P18199444595080537960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A345000 (n + 1) : ℚ)

end

end A369038.P18199444595080537960

/-! ## A369038.P13100723737428177213

`A003415(n+1)/A327860(n+1)*A369039(n+1)`
-/

namespace A369038.P13100723737428177213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A327860 (n + 1) : ℚ) * (A369039 (n + 1) : ℚ)

end

end A369038.P13100723737428177213

/-! ## A369038.P3026717385410741357

`A007954(A342001(n+1)^A335497(n+1))`
-/

namespace A369038.P3026717385410741357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A342001 (n + 1) : ℚ) ^ (A335497 (n + 1) : ℤ))).toNat

end

end A369038.P3026717385410741357

/-! ## A369038.P1259264438255361650

`A124010(A272369(2*n+1))*A342001(n+1)`
-/

namespace A369038.P1259264438255361650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A272369 (2 * n + 1)).toNat * A342001 (n + 1)

end

end A369038.P1259264438255361650

/-! ## A369038.P14998202132973343363

`A342001(n+1)+A227188(A002727(n))`
-/

namespace A369038.P14998202132973343363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) + A227188 (A002727 n).toNat

end

end A369038.P14998202132973343363

/-!
# A369039: Denominator of ratio A003415(n) / A003415(A276086(n)), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A369039, there is no canonical definition to state claims against.
-/

/-! ## A369039.P5545126022124610006

`A327860(n+1)/A345000(n+1)`
-/

namespace A369039.P5545126022124610006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 (n + 1) : ℚ) / (A345000 (n + 1) : ℚ)

end

end A369039.P5545126022124610006

/-! ## A369039.P12244183162728374237

`A003415(A276086(n+1))/A345000(n+1)`
-/

namespace A369039.P12244183162728374237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A276086 (n + 1)).toNat : ℚ) / (A345000 (n + 1) : ℚ)

end

end A369039.P12244183162728374237

/-! ## A369039.P1128485857723134217

`A168485(A327860(n+1))`
-/

namespace A369039.P1128485857723134217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A327860 (n + 1)).toNat

end

end A369039.P1128485857723134217

/-! ## A369039.P11793498780493458931

`A168485(A351950(n+1))`
-/

namespace A369039.P11793498780493458931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A351950 (n + 1)).toNat

end

end A369039.P11793498780493458931

/-! ## A369039.P10659459134218729922

`A168485(A392600(n+1))`
-/

namespace A369039.P10659459134218729922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A392600 (n + 1)).toNat

end

end A369039.P10659459134218729922

/-!
# A369041: LCM-transform of binary Gray code (A003188).

The programs for A369041, the canonical program `A369041.P3784839183294288014` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369041 has offset 1).

The definition of A369041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369041.P3784839183294288014

`A014963(A003188(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369041

/-- `A014963(A003188(n+1))` -/
def P3784839183294288014.Spec : Prop :=
  ∀ n, P3784839183294288014.a n = A369041 (n + 1)

theorem P3784839183294288014.correct : P3784839183294288014.Spec := by
  intro n
  simp only [A369041, Nat.add_sub_cancel]

end A369041

/-! ## A369041.P13522828412162798193

`A369042(A064706(n+1))`
-/

namespace A369041.P13522828412162798193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369042 (A064706 (n + 1)).toNat

end

end A369041.P13522828412162798193

namespace A369041

/-- `A369042(A064706(n+1))` -/
def P13522828412162798193.Spec : Prop :=
  ∀ n, P13522828412162798193.a n = A369041 (n + 1)

end A369041

/-! ## A369041.P10343024097308598731

`A369045(A180201(n+1))`
-/

namespace A369041.P10343024097308598731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (A180201 (n + 1)).toNat

end

end A369041.P10343024097308598731

namespace A369041

/-- `A369045(A180201(n+1))` -/
def P10343024097308598731.Spec : Prop :=
  ∀ n, P10343024097308598731.a n = A369041 (n + 1)

end A369041

/-! ## A369041.P8159816115203167582

`A369043(A234613(n+1))`
-/

namespace A369041.P8159816115203167582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369043 (A234613 (n + 1)).toNat

end

end A369041.P8159816115203167582

namespace A369041

/-- `A369043(A234613(n+1))` -/
def P8159816115203167582.Spec : Prop :=
  ∀ n, P8159816115203167582.a n = A369041 (n + 1)

end A369041

/-! ## A369041.P12037158795266045734

`A014963(xor(A110654(2*(n+1)), A110654(n)))`
-/

namespace A369041.P12037158795266045734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.xor (A110654 (2 * (n + 1))) (A110654 n)).toNat

end

end A369041.P12037158795266045734

namespace A369041

/-- `A014963(xor(A110654(2*(n+1)), A110654(n)))` -/
def P12037158795266045734.Spec : Prop :=
  ∀ n, P12037158795266045734.a n = A369041 (n + 1)

end A369041

/-! ## A369041.P3309140965597871265

`A369042(A003188(A003188(n+1)²))`
-/

namespace A369041.P3309140965597871265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369042 (A003188 (A003188 (n + 1) ^ 2).toNat).toNat

end

end A369041.P3309140965597871265

namespace A369041

/-- `A369042(A003188(A003188(n+1)²))` -/
def P3309140965597871265.Spec : Prop :=
  ∀ n, P3309140965597871265.a n = A369041 (n + 1)

end A369041

/-!
# A369042: LCM-transform of the inverse of binary Gray code (A006068).

The programs for A369042, the canonical program `A369042.P6821454009278547206` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369042 has offset 1).

The definition of A369042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369042.P6821454009278547206

`A014963(A006068(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369042

/-- `A014963(A006068(n+1))` -/
def P6821454009278547206.Spec : Prop :=
  ∀ n, P6821454009278547206.a n = A369042 (n + 1)

theorem P6821454009278547206.correct : P6821454009278547206.Spec := by
  intro n
  simp only [A369042, Nat.add_sub_cancel]

end A369042

/-! ## A369042.P11874073633808714569

`A369041(A064707(n+1))`
-/

namespace A369042.P11874073633808714569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369041 (A064707 (n + 1)).toNat

end

end A369042.P11874073633808714569

namespace A369042

/-- `A369041(A064707(n+1))` -/
def P11874073633808714569.Spec : Prop :=
  ∀ n, P11874073633808714569.a n = A369042 (n + 1)

end A369042

/-! ## A369042.P3477813751161397481

`A369045(A233279(n+1))`
-/

namespace A369042.P3477813751161397481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (A233279 (n + 1)).toNat

end

end A369042.P3477813751161397481

namespace A369042

/-- `A369045(A233279(n+1))` -/
def P3477813751161397481.Spec : Prop :=
  ∀ n, P3477813751161397481.a n = A369042 (n + 1)

end A369042

/-! ## A369042.P2338028848216441117

`A369043(A234612(n+1))`
-/

namespace A369042.P2338028848216441117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369043 (A234612 (n + 1)).toNat

end

end A369042.P2338028848216441117

namespace A369042

/-- `A369043(A234612(n+1))` -/
def P2338028848216441117.Spec : Prop :=
  ∀ n, P2338028848216441117.a n = A369042 (n + 1)

end A369042

/-! ## A369042.P7768473924800475175

`A014963(A286546(n+1)+n+1)`
-/

namespace A369042.P7768473924800475175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A286546 (n + 1) + (n + 1 : ℤ)).toNat

end

end A369042.P7768473924800475175

namespace A369042

/-- `A014963(A286546(n+1)+n+1)` -/
def P7768473924800475175.Spec : Prop :=
  ∀ n, P7768473924800475175.a n = A369042 (n + 1)

end A369042

/-! ## A369042.P16768981124840911565

`A369041(A006068(A006068(n+1)²))`
-/

namespace A369042.P16768981124840911565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369041 (A006068 (A006068 (n + 1) ^ 2).toNat).toNat

end

end A369042.P16768981124840911565

namespace A369042

/-- `A369041(A006068(A006068(n+1)²))` -/
def P16768981124840911565.Spec : Prop :=
  ∀ n, P16768981124840911565.a n = A369042 (n + 1)

end A369042

/-!
# A369043: LCM-transform of Blue code (A193231).

The programs for A369043, there is no canonical definition to state claims against.
-/

/-! ## A369043.P9747344171673428300

`A014963(A193231(n+1))`
-/

namespace A369043.P9747344171673428300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A193231 (n + 1)).toNat

end

end A369043.P9747344171673428300

/-! ## A369043.P9018167090948135625

`A369044(A379472(n+1))`
-/

namespace A369043.P9018167090948135625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369044 (A379472 (n + 1)).toNat

end

end A369043.P9018167090948135625

/-! ## A369043.P13105501223668323634

`A369045(A234025(n+1))`
-/

namespace A369043.P13105501223668323634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (A234025 (n + 1)).toNat

end

end A369043.P13105501223668323634

/-! ## A369043.P11300194526636589835

`A369042(A234612(n+1))`
-/

namespace A369043.P11300194526636589835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369042 (A234612 (n + 1)).toNat

end

end A369043.P11300194526636589835

/-! ## A369043.P18429914599097532711

`A369041(A234613(n+1))`
-/

namespace A369043.P18429914599097532711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369041 (A234613 (n + 1)).toNat

end

end A369043.P18429914599097532711

/-!
# A369044: LCM-transform of bijective bit reverse (A057889).

The programs for A369044, the canonical program `A369044.P13609679750357652968` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369044 has offset 1).

The definition of A369044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369044.P13609679750357652968

`A014963(A057889(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369044

/-- `A014963(A057889(n+1))` -/
def P13609679750357652968.Spec : Prop :=
  ∀ n, P13609679750357652968.a n = A369044 (n + 1)

theorem P13609679750357652968.correct : P13609679750357652968.Spec := by
  intro n
  simp only [A369044, Nat.add_sub_cancel]

end A369044

/-! ## A369044.P5643076823199185891

`A369043(A379471(n+1))`
-/

namespace A369044.P5643076823199185891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369043 (A379471 (n + 1)).toNat

end

end A369044.P5643076823199185891

namespace A369044

/-- `A369043(A379471(n+1))` -/
def P5643076823199185891.Spec : Prop :=
  ∀ n, P5643076823199185891.a n = A369044 (n + 1)

end A369044

/-! ## A369044.P5345950759641945392

`A014963(A163807(n+1))`
-/

namespace A369044.P5345950759641945392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A163807 (n + 1)).toNat

end

end A369044.P5345950759641945392

namespace A369044

/-- `A014963(A163807(n+1))` -/
def P5345950759641945392.Spec : Prop :=
  ∀ n, P5345950759641945392.a n = A369044 (n + 1)

end A369044

/-! ## A369044.P9544004205739209346

`A014963((xor(n, n+1)+1)/2*A030101(2*(n+1)))`
-/

namespace A369044.P9544004205739209346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2 * (A030101 (2 * (n + 1)) : ℚ))).toNat

end

end A369044.P9544004205739209346

namespace A369044

/-- `A014963((xor(n, n+1)+1)/2*A030101(2*(n+1)))` -/
def P9544004205739209346.Spec : Prop :=
  ∀ n, P9544004205739209346.a n = A369044 (n + 1)

end A369044

/-! ## A369044.P9420914980303025468

`A014963(abs(or(n+1, -(n+1)))*A030101(2*(n+1)))`
-/

namespace A369044.P9420914980303025468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (|Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| * A030101 (2 * (n + 1))).toNat

end

end A369044.P9420914980303025468

namespace A369044

/-- `A014963(abs(or(n+1, -(n+1)))*A030101(2*(n+1)))` -/
def P9420914980303025468.Spec : Prop :=
  ∀ n, P9420914980303025468.a n = A369044 (n + 1)

end A369044

/-! ## A369044.P10162461925707615765

`A369045(A054429(A057889(n+1)²))`
-/

namespace A369044.P10162461925707615765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (A054429 (A057889 (n + 1) ^ 2).toNat).toNat

end

end A369044.P10162461925707615765

namespace A369044

/-- `A369045(A054429(A057889(n+1)²))` -/
def P10162461925707615765.Spec : Prop :=
  ∀ n, P10162461925707615765.a n = A369044 (n + 1)

end A369044

/-! ## A369044.P17045276287026304610

`A014963(A337304(n+1)²)`
-/

namespace A369044.P17045276287026304610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A337304 (n + 1) ^ 2).toNat

end

end A369044.P17045276287026304610

namespace A369044

/-- `A014963(A337304(n+1)²)` -/
def P17045276287026304610.Spec : Prop :=
  ∀ n, P17045276287026304610.a n = A369044 (n + 1)

end A369044

/-!
# A369045: LCM-transform of binary invert permutation (A054429).

The programs for A369045, the canonical program `A369045.P17836253703744898429` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369045 has offset 1).

The definition of A369045 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A054429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369045.P17836253703744898429

`A014963(A054429(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369045

/-- `A014963(A054429(n+1))` -/
def P17836253703744898429.Spec : Prop :=
  ∀ n, P17836253703744898429.a n = A369045 (n + 1)

theorem P17836253703744898429.correct : P17836253703744898429.Spec := by
  intro n
  simp only [A369045, Nat.add_sub_cancel]

end A369045

/-! ## A369045.P746069702348314044

`A369041(A180200(n+1))`
-/

namespace A369045.P746069702348314044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369041 (A180200 (n + 1)).toNat

end

end A369045.P746069702348314044

namespace A369045

/-- `A369041(A180200(n+1))` -/
def P746069702348314044.Spec : Prop :=
  ∀ n, P746069702348314044.a n = A369045 (n + 1)

end A369045

/-! ## A369045.P4502480672995992106

`A369042(A233280(n+1))`
-/

namespace A369045.P4502480672995992106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369042 (A233280 (n + 1)).toNat

end

end A369045.P4502480672995992106

namespace A369045

/-- `A369042(A233280(n+1))` -/
def P4502480672995992106.Spec : Prop :=
  ∀ n, P4502480672995992106.a n = A369045 (n + 1)

end A369045

/-! ## A369045.P16983602910479721441

`A014963(xor(n+1, 2^floor(log2(n+1))-1))`
-/

namespace A369045.P16983602910479721441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat

end

end A369045.P16983602910479721441

namespace A369045

/-- `A014963(xor(n+1, 2^floor(log2(n+1))-1))` -/
def P16983602910479721441.Spec : Prop :=
  ∀ n, P16983602910479721441.a n = A369045 (n + 1)

end A369045

/-! ## A369045.P18134523317084577506

`A369043(A234026(n+1))`
-/

namespace A369045.P18134523317084577506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369043 (A234026 (n + 1)).toNat

end

end A369045.P18134523317084577506

namespace A369045

/-- `A369043(A234026(n+1))` -/
def P18134523317084577506.Spec : Prop :=
  ∀ n, P18134523317084577506.a n = A369045 (n + 1)

end A369045

/-! ## A369045.P3382256777323466911

`A369044(A057889(A054429(n+1)²))`
-/

namespace A369045.P3382256777323466911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369044 (A057889 (A054429 (n + 1) ^ 2).toNat).toNat

end

end A369045.P3382256777323466911

namespace A369045

/-- `A369044(A057889(A054429(n+1)²))` -/
def P3382256777323466911.Spec : Prop :=
  ∀ n, P3382256777323466911.a n = A369045 (n + 1)

end A369045

/-!
# A369047: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003415(i) = A003415(j) and A345000(i) = A345000(j), for all i, j >= 1.

The programs for A369047, there is no canonical definition to state claims against.
-/

/-! ## A369047.P15744490280212437904

`A369040(n+1)%A247687(n+1)`
-/

namespace A369047.P15744490280212437904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369040 (n + 1)) (A247687 (n + 1))

end

end A369047.P15744490280212437904

/-! ## A369047.P17304098095850603005

`A000035(A000328(n))*A369040(n+1)`
-/

namespace A369047.P17304098095850603005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000328 n).toNat * A369040 (n + 1)

end

end A369047.P17304098095850603005

/-! ## A369047.P16317564007067949693

`A369040(n+1)%A138876(A369065(n))`
-/

namespace A369047.P16317564007067949693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369040 (n + 1)) (A138876 (A369065 n).toNat)

end

end A369047.P16317564007067949693

/-! ## A369047.P16043557035411473204

`A369040(n+1)+A369036(A369039(n+2))`
-/

namespace A369047.P16043557035411473204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369040 (n + 1) + A369036 (A369039 (n + 2)).toNat

end

end A369047.P16043557035411473204

/-! ## A369047.P10530121777242366032

`A369040(n+1)+A345064(A355446(n+1))`
-/

namespace A369047.P10530121777242366032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369040 (n + 1) + A345064 (A355446 (n + 1)).toNat

end

end A369047.P10530121777242366032

/-! ## A369047.P2019122881838708605

`A328767(n+1)%Δ[A250650(n+1)]`
-/

namespace A369047.P2019122881838708605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328767 (n + 1)) (f1 (n + 1) - f1 n)

end

end A369047.P2019122881838708605

/-! ## A369047.P7650348086061192732

`A328767(n+1)+A000007(A247640(n))`
-/

namespace A369047.P7650348086061192732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328767 (n + 1) + A000007 (A247640 n).toNat

end

end A369047.P7650348086061192732

/-! ## A369047.P10605563266500725302

`A328767(n+1)%A142068(A191795(n))`
-/

namespace A369047.P10605563266500725302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328767 (n + 1)) (A142068 (A191795 n).toNat)

end

end A369047.P10605563266500725302

/-! ## A369047.P8715947475274785516

`gcd(A081457(n+1), A328767(n+1))`
-/

namespace A369047.P8715947475274785516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081457 (n + 1)) (A328767 (n + 1))

end

end A369047.P8715947475274785516

/-!
# A369048: a(n) = 1 if the arithmetic derivative of n is greater than n, otherwise 0.

The programs for A369048, the canonical program `A369048.P3645363535030871227` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369048 has offset 0).

The definition of A369048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369048.P11201911724880308307

`char[A083348(n+1)]`
-/

namespace A369048.P11201911724880308307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369048.P11201911724880308307

namespace A369048

/-- `char[A083348(n+1)]` -/
def P11201911724880308307.Spec : Prop :=
  ∀ n, (P11201911724880308307.a n : ℤ) = A369048 n

end A369048

/-! ## A369048.P2908203600967870845

`char[lt[n, A003415(n)]]`
-/

namespace A369048.P2908203600967870845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A369048.P2908203600967870845

namespace A369048

/-- `char[lt[n, A003415(n)]]` -/
def P2908203600967870845.Spec : Prop :=
  ∀ n, (P2908203600967870845.a n : ℤ) = A369048 n

end A369048

/-! ## A369048.P3645363535030871227

`ceil(A168036(n)/record[xor(7, n)])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369048

/-- `ceil(A168036(n)/record[xor(7, n)])` -/
def P3645363535030871227.Spec : Prop :=
  ∀ n, P3645363535030871227.a n = A369048 n

theorem P3645363535030871227.correct : P3645363535030871227.Spec := by
  intro n
  simp only [A369048]

end A369048

/-! ## A369048.P6550490985250157130

`char[lt[n, (n-A369052(n))/2]]`
-/

namespace A369048.P6550490985250157130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A369052 n : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A369048.P6550490985250157130

namespace A369048

/-- `char[lt[n, (n-A369052(n))/2]]` -/
def P6550490985250157130.Spec : Prop :=
  ∀ n, (P6550490985250157130.a n : ℤ) = A369048 n

end A369048

/-! ## A369048.P15599788764158335702

`ceil(A168036(n)/A054519(n))`
-/

namespace A369048.P15599788764158335702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 n : ℚ) / (A054519 n : ℚ)⌉

end

end A369048.P15599788764158335702

namespace A369048

/-- `ceil(A168036(n)/A054519(n))` -/
def P15599788764158335702.Spec : Prop :=
  ∀ n, P15599788764158335702.a n = A369048 n

end A369048

/-! ## A369048.P15375879441330776390

`round(sqrt(A003415(n)/A016825(n)))`
-/

namespace A369048.P15375879441330776390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A003415 n : ℚ) / (A016825 n : ℚ) : ℝ))

end

end A369048.P15375879441330776390

namespace A369048

/-- `round(sqrt(A003415(n)/A016825(n)))` -/
def P15375879441330776390.Spec : Prop :=
  ∀ n, P15375879441330776390.a n = A369048 n

end A369048

/-! ## A369048.P8341295826827609902

`char[eq[2, A001316(a(A343222(n)))]]` with `a(0)=0`
-/

namespace A369048.P8341295826827609902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  A001316 (f3 (A343222 n).toNat).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A369048.P8341295826827609902

namespace A369048

/-- `char[eq[2, A001316(a(A343222(n)))]]` -/
def P8341295826827609902.Spec : Prop :=
  ∀ n, (P8341295826827609902.a n : ℤ) = A369048 n

end A369048

/-!
# A369049: a(n) = n mod n', where n' is the arithmetic derivative of n, A003415.

The programs for A369049, the canonical program `A369049.P9666257041072368809` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369049 has offset 2).

The definition of A369049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369049.P9666257041072368809

`(n+2)%A003415(n+2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369049

/-- `(n+2)%A003415(n+2)` -/
def P9666257041072368809.Spec : Prop :=
  ∀ n, P9666257041072368809.a n = A369049 (n + 2)

theorem P9666257041072368809.correct : P9666257041072368809.Spec := by
  intro n
  simp only [A369049, Nat.add_sub_cancel]

end A369049

/-! ## A369049.P15062001642520869322

`A129283(n+2)%Δ[A190121(n+1)]`
-/

namespace A369049.P15062001642520869322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 (n + 2)) (f1 (n + 1) - f1 n)

end

end A369049.P15062001642520869322

namespace A369049

/-- `A129283(n+2)%Δ[A190121(n+1)]` -/
def P15062001642520869322.Spec : Prop :=
  ∀ n, P15062001642520869322.a n = A369049 (n + 2)

end A369049

/-! ## A369049.P11711166138973359839

`A000720(A000040(n+2))%A319703(2*n+4)`
-/

namespace A369049.P11711166138973359839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A000040 (n + 2)).toNat) (A319703 (2 * n + 4))

end

end A369049.P11711166138973359839

namespace A369049

/-- `A000720(A000040(n+2))%A319703(2*n+4)` -/
def P11711166138973359839.Spec : Prop :=
  ∀ n, P11711166138973359839.a n = A369049 (n + 2)

end A369049

/-! ## A369049.P12847961039569134485

`A106466(2*(n+1))%A068512(A028310(2*(n+2)))`
-/

namespace A369049.P12847961039569134485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106466 (2 * (n + 1))) (A068512 (A028310 (2 * (n + 2))).toNat)

end

end A369049.P12847961039569134485

namespace A369049

/-- `A106466(2*(n+1))%A068512(A028310(2*(n+2)))` -/
def P12847961039569134485.Spec : Prop :=
  ∀ n, P12847961039569134485.a n = A369049 (n + 2)

end A369049

/-! ## A369049.P17612229123502582508

`A239086(A239086(n+2))%A319703(2*n+4)`
-/

namespace A369049.P17612229123502582508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239086 (A239086 (n + 2)).toNat) (A319703 (2 * n + 4))

end

end A369049.P17612229123502582508

namespace A369049

/-- `A239086(A239086(n+2))%A319703(2*n+4)` -/
def P17612229123502582508.Spec : Prop :=
  ∀ n, P17612229123502582508.a n = A369049 (n + 2)

end A369049

/-!
# A369051: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003415(i) = A003415(j) and A085731(i) = A085731(j), for all i, j >= 1.

The programs for A369051, there is no canonical definition to state claims against.
-/

/-! ## A369051.P4667003241294235426

`A344025(n+1)%A101774(n+1)`
-/

namespace A369051.P4667003241294235426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344025 (n + 1)) (A101774 (n + 1))

end

end A369051.P4667003241294235426

/-! ## A369051.P7427132065295192127

`A351236(n+1)%A196002(n+1)`
-/

namespace A369051.P7427132065295192127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351236 (n + 1)) (A196002 (n + 1))

end

end A369051.P7427132065295192127

/-! ## A369051.P5830125734419185520

`A373268(n+1)%A183508(n+1)`
-/

namespace A369051.P5830125734419185520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373268 (n + 1)) (A183508 (n + 1))

end

end A369051.P5830125734419185520

/-! ## A369051.P11105276526008959326

`A369046(n+1)%(A051221(n+1)+3)`
-/

namespace A369051.P11105276526008959326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369046 (n + 1)) (A051221 (n + 1) + 3)

end

end A369051.P11105276526008959326

/-! ## A369051.P18370921931260115090

`A344025(n+1)+A000007(∑[6*n-5]+6)`
-/

namespace A369051.P18370921931260115090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344025 (n + 1) + A000007 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A369051.P18370921931260115090

/-! ## A369051.P14155195780162806895

`or(A000007(A322115(n)), A344025(n+1))`
-/

namespace A369051.P14155195780162806895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A322115 n).toNat) (A344025 (n + 1))

end

end A369051.P14155195780162806895

/-! ## A369051.P17730845502382221042

`A369046(n+1)+A000122(A007641(n+1))`
-/

namespace A369051.P17730845502382221042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369046 (n + 1) + A000122 (A007641 (n + 1)).toNat

end

end A369051.P17730845502382221042

/-! ## A369051.P17939033209412749854

`A344025(n+1)+A247133(A252114(n+1))`
-/

namespace A369051.P17939033209412749854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344025 (n + 1) + A247133 (A252114 (n + 1)).toNat

end

end A369051.P17939033209412749854

/-! ## A369051.P13791007980178929795

`A074206(A107802(n+1))*A351236(n+1)`
-/

namespace A369051.P13791007980178929795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A107802 (n + 1)).toNat * A351236 (n + 1)

end

end A369051.P13791007980178929795

/-! ## A369051.P11979876064413116254

`A185118(A331378(3*n+1))*A344025(n+1)`
-/

namespace A369051.P11979876064413116254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 (A331378 (3 * n + 1)).toNat * A344025 (n + 1)

end

end A369051.P11979876064413116254

/-!
# A369052: a(n) = n - n'*2, where n' is the arithmetic derivative of n, A003415.

The programs for A369052, the canonical program `A369052.P13766350415687932564` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369052 has offset 0).

The definition of A369052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369052.P13766350415687932564

`n-2*A003415(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369052

/-- `n-2*A003415(n)` -/
def P13766350415687932564.Spec : Prop :=
  ∀ n, P13766350415687932564.a n = A369052 n

theorem P13766350415687932564.correct : P13766350415687932564.Spec := by
  intro n
  simp only [A369052]

end A369052

/-! ## A369052.P13442282174932365208

`-(A003415(n)+A168036(n))`
-/

namespace A369052.P13442282174932365208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A003415 n + A168036 n)

end

end A369052.P13442282174932365208

namespace A369052

/-- `-(A003415(n)+A168036(n))` -/
def P13442282174932365208.Spec : Prop :=
  ∀ n, P13442282174932365208.a n = A369052 n

end A369052

/-! ## A369052.P18071877844789672194

`A001489(n)-2*A168036(n)`
-/

namespace A369052.P18071877844789672194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n - 2 * A168036 n

end

end A369052.P18071877844789672194

namespace A369052

/-- `A001489(n)-2*A168036(n)` -/
def P18071877844789672194.Spec : Prop :=
  ∀ n, P18071877844789672194.a n = A369052 n

end A369052

/-! ## A369052.P11265465828467184775

`n-(A168036(n)+A129283(n))`
-/

namespace A369052.P11265465828467184775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A168036 n + A129283 n)

end

end A369052.P11265465828467184775

namespace A369052

/-- `n-(A168036(n)+A129283(n))` -/
def P11265465828467184775.Spec : Prop :=
  ∀ n, P11265465828467184775.a n = A369052 n

end A369052

/-! ## A369052.P2234886574556735342

`A373849(2*n)-A351225(2*n)`
-/

namespace A369052.P2234886574556735342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373849 (2 * n) - A351225 (2 * n)

end

end A369052.P2234886574556735342

namespace A369052

/-- `A373849(2*n)-A351225(2*n)` -/
def P2234886574556735342.Spec : Prop :=
  ∀ n, P2234886574556735342.a n = A369052 n

end A369052

/-! ## A369052.P5763208861748061452

`-A168036(2*n)`
-/

namespace A369052.P5763208861748061452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168036 (2 * n)

end

end A369052.P5763208861748061452

namespace A369052

/-- `-A168036(2*n)` -/
def P5763208861748061452.Spec : Prop :=
  ∀ n, P5763208861748061452.a n = A369052 n

end A369052

/-! ## A369052.P7274783849399113432

`4*n-A129283(2*n)`
-/

namespace A369052.P7274783849399113432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A129283 (2 * n)

end

end A369052.P7274783849399113432

namespace A369052

/-- `4*n-A129283(2*n)` -/
def P7274783849399113432.Spec : Prop :=
  ∀ n, P7274783849399113432.a n = A369052 n

end A369052

/-! ## A369052.P6013393900095558390

`A000035(2*n)-A168036(2*n)`
-/

namespace A369052.P6013393900095558390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A168036 (2 * n)

end

end A369052.P6013393900095558390

namespace A369052

/-- `A000035(2*n)-A168036(2*n)` -/
def P6013393900095558390.Spec : Prop :=
  ∀ n, P6013393900095558390.a n = A369052 n

end A369052

/-! ## A369052.P15169165685146402462

`n-A005843(A003415(n))`
-/

namespace A369052.P15169165685146402462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A003415 n).toNat

end

end A369052.P15169165685146402462

namespace A369052

/-- `n-A005843(A003415(n))` -/
def P15169165685146402462.Spec : Prop :=
  ∀ n, P15169165685146402462.a n = A369052 n

end A369052

/-!
# A369053: Exponential of Mangoldt function permuted by A243353.

The programs for A369053, the canonical program `A369053.P8230427624888693535` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369053 has offset 0).

The definition of A369053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369053.P8230427624888693535

`A014963(A243353(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A369053

/-- `A014963(A243353(n))` -/
def P8230427624888693535.Spec : Prop :=
  ∀ n, P8230427624888693535.a n = A369053 n

theorem P8230427624888693535.correct : P8230427624888693535.Spec := by
  intro n
  simp only [A369053]

end A369053

/-! ## A369053.P16282085508726398792

`A368900(xor(n, floor(n/2))+1)`
-/

namespace A369053.P16282085508726398792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A369053.P16282085508726398792

namespace A369053

/-- `A368900(xor(n, floor(n/2))+1)` -/
def P16282085508726398792.Spec : Prop :=
  ∀ n, P16282085508726398792.a n = A369053 n

end A369053

/-! ## A369053.P2635535375215115875

`A369030(A180201(n))`
-/

namespace A369053.P2635535375215115875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 (A180201 n).toNat

end

end A369053.P2635535375215115875

namespace A369053

/-- `A369030(A180201(n))` -/
def P2635535375215115875.Spec : Prop :=
  ∀ n, P2635535375215115875.a n = A369053 n

end A369053

/-! ## A369053.P16987546330542228914

`A369029(A341915(n))`
-/

namespace A369053.P16987546330542228914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369029 (A341915 n).toNat

end

end A369053.P16987546330542228914

namespace A369053

/-- `A369029(A341915(n))` -/
def P16987546330542228914.Spec : Prop :=
  ∀ n, P16987546330542228914.a n = A369053 n

end A369053

/-! ## A369053.P6274695630643866687

`A368900(A003188(n)+1)`
-/

namespace A369053.P6274695630643866687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (A003188 n + 1).toNat

end

end A369053.P6274695630643866687

namespace A369053

/-- `A368900(A003188(n)+1)` -/
def P6274695630643866687.Spec : Prop :=
  ∀ n, P6274695630643866687.a n = A369053 n

end A369053

/-! ## A369053.P4885338336958212741

`A368900(A105081(n+1))`
-/

namespace A369053.P4885338336958212741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (A105081 (n + 1)).toNat

end

end A369053.P4885338336958212741

namespace A369053

/-- `A368900(A105081(n+1))` -/
def P4885338336958212741.Spec : Prop :=
  ∀ n, P4885338336958212741.a n = A369053 n

end A369053

/-! ## A369053.P10762199992918115308

`A368900(A286548(n)+n+1)`
-/

namespace A369053.P10762199992918115308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368900 (A286548 n + (n + 1 : ℤ)).toNat

end

end A369053.P10762199992918115308

namespace A369053

/-- `A368900(A286548(n)+n+1)` -/
def P10762199992918115308.Spec : Prop :=
  ∀ n, P10762199992918115308.a n = A369053 n

end A369053

/-! ## A369053.P12482999303067849488

`A369032(A075159(n+1))`
-/

namespace A369053.P12482999303067849488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A075159 (n + 1)).toNat

end

end A369053.P12482999303067849488

namespace A369053

/-- `A369032(A075159(n+1))` -/
def P12482999303067849488.Spec : Prop :=
  ∀ n, P12482999303067849488.a n = A369053 n

end A369053

/-!
# A369054: Number of representations of n as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369054, there is no canonical definition to state claims against.
-/

/-! ## A369054.P17686514630962488915

`A369055(gcd(A008805(n), A268368(n+1)))`
-/

namespace A369054.P17686514630962488915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (Int.gcd (A008805 n) (A268368 (n + 1)))

end

end A369054.P17686514630962488915

/-! ## A369054.P4571216481347605889

`char[A369252(n+1)]*A329312(n+1)`
-/

namespace A369054.P4571216481347605889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A329312 (n + 1)

end

end A369054.P4571216481347605889

/-! ## A369054.P6972221945270799038

`and(char[A369252(n+1)], A358229(n+5))`
-/

namespace A369054.P6972221945270799038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A358229 (n + 5))

end

end A369054.P6972221945270799038

/-! ## A369054.P13505907799252331443

`A185012(A063919(3*n+1)%A322900(n))`
-/

namespace A369054.P13505907799252331443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (Int.tmod (A063919 (3 * n + 1)) (A322900 n)).toNat

end

end A369054.P13505907799252331443

/-! ## A369054.P1728089738149940414

`and(char[A369252(n+1)], A290394(n+1))`
-/

namespace A369054.P1728089738149940414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A290394 (n + 1))

end

end A369054.P1728089738149940414

/-! ## A369054.P14162905550989917044

`A156271(n+1)%A048793(A322318(n+1))`
-/

namespace A369054.P14162905550989917044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156271 (n + 1)) (A048793 (A322318 (n + 1)).toNat)

end

end A369054.P14162905550989917044

/-! ## A369054.P8968205896264362361

`A152228(C(A114536(n+1), A356302(n)))`
-/

namespace A369054.P8968205896264362361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152228 (Nat.choose (A114536 (n + 1)).toNat (A356302 n).toNat)

end

end A369054.P8968205896264362361

/-! ## A369054.P2958600719111494150

`A027480(3*n+4)%A043286(A006562(2*n+5))`
-/

namespace A369054.P2958600719111494150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027480 (3 * n + 4)) (A043286 (A006562 (2 * n + 5)).toNat)

end

end A369054.P2958600719111494150

/-! ## A369054.P14315105980194956008

`A361102(A122318(n+4))%A177704(n)`
-/

namespace A369054.P14315105980194956008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361102 (A122318 (n + 4)).toNat) (A177704 n)

end

end A369054.P14315105980194956008

/-! ## A369054.P12155359067652633451

`A007089(A359908(n+1))%A069291(n+1)`
-/

namespace A369054.P12155359067652633451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A359908 (n + 1)).toNat) (A069291 (n + 1))

end

end A369054.P12155359067652633451

/-!
# A369055: Number of representations of 4n-1 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369055, there is no canonical definition to state claims against.
-/

/-! ## A369055.P6154267636002421882

`A369054(4*(n+1)-1)`
-/

namespace A369055.P6154267636002421882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (4 * (n + 1) - 1)

end

end A369055.P6154267636002421882

/-! ## A369055.P1516629052811175480

`A369054(record[xor(3, n)])%(n+1)`
-/

namespace A369055.P1516629052811175480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (n + 1 : ℤ)

end

end A369055.P1516629052811175480

/-! ## A369055.P4096830788313159314

`and(-1, A369054(A004767(n)))`
-/

namespace A369055.P4096830788313159314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A369054 (A004767 n).toNat)

end

end A369055.P4096830788313159314

/-! ## A369055.P4794425017288921099

`A158388(n)*A369054(A004767(n))`
-/

namespace A369055.P4794425017288921099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A369054 (A004767 n).toNat

end

end A369055.P4794425017288921099

/-! ## A369055.P12714760226217297084

`A369057(n+1)-A369057(A028310(n))`
-/

namespace A369055.P12714760226217297084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369057 (n + 1) - A369057 (A028310 n).toNat

end

end A369055.P12714760226217297084

/-!
# A369056: Numbers k of the form 4m+3 for which there is no representation as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369056, there is no canonical definition to state claims against.
-/

/-! ## A369056.P17755043438023456087

`eq[A292603(n), A369054(n)]`
-/

namespace A369056.P17755043438023456087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P17755043438023456087

/-! ## A369056.P17256829141625945887

`eq[A005887(n), A369054(n)]`
-/

namespace A369056.P17256829141625945887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P17256829141625945887

/-! ## A369056.P9126794165852943307

`eq[A034433(n), A369054(n)]`
-/

namespace A369056.P9126794165852943307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P9126794165852943307

/-! ## A369056.P12932483542619969092

`eq[A045826(n), A369054(n)]`
-/

namespace A369056.P12932483542619969092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P12932483542619969092

/-! ## A369056.P17043693511900013638

`eq[A108354(n), A369054(n)]`
-/

namespace A369056.P17043693511900013638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P17043693511900013638

/-! ## A369056.P16417079888060000499

`eq[A110514(n), A369054(n)]`
-/

namespace A369056.P16417079888060000499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P16417079888060000499

/-! ## A369056.P6725803468486896685

`eq[A131732(n), A369054(n)]`
-/

namespace A369056.P6725803468486896685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P6725803468486896685

/-! ## A369056.P6205242163385200534

`eq[A189996(n), A369054(n)]`
-/

namespace A369056.P6205242163385200534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P6205242163385200534

/-! ## A369056.P89362260032472898

`eq[A213607(n), A369054(n)]`
-/

namespace A369056.P89362260032472898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P89362260032472898

/-! ## A369056.P2771594605981610646

`eq[A227033(n), A369054(n)]`
-/

namespace A369056.P2771594605981610646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P2771594605981610646

/-! ## A369056.P13714730261694452114

`eq[A232343(n), A369054(n)]`
-/

namespace A369056.P13714730261694452114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P13714730261694452114

/-! ## A369056.P3865443738713459007

`eq[A236922(n), A369054(n)]`
-/

namespace A369056.P3865443738713459007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P3865443738713459007

/-! ## A369056.P3904243020498419552

`eq[A246811(n), A369054(n)]`
-/

namespace A369056.P3904243020498419552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P3904243020498419552

/-! ## A369056.P13057370897183617863

`eq[A263452(n), A369054(n)]`
-/

namespace A369056.P13057370897183617863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P13057370897183617863

/-! ## A369056.P6846986202633878788

`eq[A285193(n), A369054(n)]`
-/

namespace A369056.P6846986202633878788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P6846986202633878788

/-! ## A369056.P3043944238087917638

`eq[A298932(n), A369054(n)]`
-/

namespace A369056.P3043944238087917638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P3043944238087917638

/-! ## A369056.P1659149376403680706

`eq[A031361(n+1), A369054(n)]`
-/

namespace A369056.P1659149376403680706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P1659149376403680706

/-! ## A369056.P9312572977996471870

`eq[A076109(n+1), A369054(n)]`
-/

namespace A369056.P9312572977996471870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P9312572977996471870

/-! ## A369056.P4453211585716282762

`eq[A086932(n+1), A369054(n)]`
-/

namespace A369056.P4453211585716282762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P4453211585716282762

/-! ## A369056.P14628596718289497292

`eq[A112299(n+1), A369054(n)]`
-/

namespace A369056.P14628596718289497292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369056.P14628596718289497292

/-!
# A369057: Total number of representations of natural numbers in range 1 .. 4n-1 as sums of the form p*q + p*r + q*r, with three odd primes p <= q <= r.

The programs for A369057, there is no canonical definition to state claims against.
-/

/-! ## A369057.P3381930731884545800

`∑[A369055(n+1)]`
-/

namespace A369057.P3381930731884545800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369057.P3381930731884545800

/-! ## A369057.P3782265437506327833

`∑[A369054(3*(n+1)+n)]`
-/

namespace A369057.P3782265437506327833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (3 * (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369057.P3782265437506327833

/-! ## A369057.P7942802744912930677

`∑[A369054(record[xor(3, n)])%(n+1)]`
-/

namespace A369057.P7942802744912930677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369054 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369057.P7942802744912930677

/-! ## A369057.P16159135962340652228

`∑[and(-1, A369054(A004767(n)))]`
-/

namespace A369057.P16159135962340652228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A369054 (A004767 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369057.P16159135962340652228

/-! ## A369057.P14193864955902436511

`∑[A158388(n)*A369054(A004767(n))]`
-/

namespace A369057.P14193864955902436511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A369054 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369057.P14193864955902436511

/-!
# A369058: a(n) = 1 if n is a product of three (not necessarily distinct) odd primes, otherwise 0.

The programs for A369058, the canonical program `A369058.P4047350797808162558` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369058 has offset 1).

The definition of A369058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369058.P4047350797808162558

`A000035(n+1)*A101605(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369058

/-- `A000035(n+1)*A101605(n+1)` -/
def P4047350797808162558.Spec : Prop :=
  ∀ n, P4047350797808162558.a n = A369058 (n + 1)

theorem P4047350797808162558.correct : P4047350797808162558.Spec := by
  intro n
  simp only [A369058, Nat.add_sub_cancel]

end A369058

/-! ## A369058.P7184331783383274919

`and(n+1, A101605(n+1))`
-/

namespace A369058.P7184331783383274919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A101605 (n + 1))

end

end A369058.P7184331783383274919

namespace A369058

/-- `and(n+1, A101605(n+1))` -/
def P7184331783383274919.Spec : Prop :=
  ∀ n, P7184331783383274919.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P16906856360196067517

`A101605(A141310(n))`
-/

namespace A369058.P16906856360196067517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A141310 n).toNat

end

end A369058.P16906856360196067517

namespace A369058

/-- `A101605(A141310(n))` -/
def P16906856360196067517.Spec : Prop :=
  ∀ n, P16906856360196067517.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P6606154837913860524

`and(A101605(n+1), A215548(n))`
-/

namespace A369058.P6606154837913860524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101605 (n + 1)) (A215548 n)

end

end A369058.P6606154837913860524

namespace A369058

/-- `and(A101605(n+1), A215548(n))` -/
def P6606154837913860524.Spec : Prop :=
  ∀ n, P6606154837913860524.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P17708395772449731911

`and(A101605(n+1), A102301(n))`
-/

namespace A369058.P17708395772449731911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101605 (n + 1)) (A102301 n)

end

end A369058.P17708395772449731911

namespace A369058

/-- `and(A101605(n+1), A102301(n))` -/
def P17708395772449731911.Spec : Prop :=
  ∀ n, P17708395772449731911.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P9453165108642644108

`and(A101605(n+1), A181527(n))`
-/

namespace A369058.P9453165108642644108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101605 (n + 1)) (A181527 n)

end

end A369058.P9453165108642644108

namespace A369058

/-- `and(A101605(n+1), A181527(n))` -/
def P9453165108642644108.Spec : Prop :=
  ∀ n, P9453165108642644108.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P15669948755626897076

`and(A101605(n+1), A109165(n))`
-/

namespace A369058.P15669948755626897076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101605 (n + 1)) (A109165 n)

end

end A369058.P15669948755626897076

namespace A369058

/-- `and(A101605(n+1), A109165(n))` -/
def P15669948755626897076.Spec : Prop :=
  ∀ n, P15669948755626897076.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P11548379139629272386

`and(A101605(n+1), A116391(n))`
-/

namespace A369058.P11548379139629272386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101605 (n + 1)) (A116391 n)

end

end A369058.P11548379139629272386

namespace A369058

/-- `and(A101605(n+1), A116391(n))` -/
def P11548379139629272386.Spec : Prop :=
  ∀ n, P11548379139629272386.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P5037815122291500939

`and(A101605(n+1), A133385(n))`
-/

namespace A369058.P5037815122291500939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101605 (n + 1)) (A133385 n)

end

end A369058.P5037815122291500939

namespace A369058

/-- `and(A101605(n+1), A133385(n))` -/
def P5037815122291500939.Spec : Prop :=
  ∀ n, P5037815122291500939.a n = A369058 (n + 1)

end A369058

/-! ## A369058.P16463159289061484616

`A045698(A008186(n))`
-/

namespace A369058.P16463159289061484616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (A008186 n).toNat

end

end A369058.P16463159289061484616

namespace A369058

/-- `A045698(A008186(n))` -/
def P16463159289061484616.Spec : Prop :=
  ∀ n, P16463159289061484616.a n = A369058 (n + 1)

end A369058

/-!
# A369059: a(0) = 0, and for n > 0, a(n) is the square of the product of first n-1 odd primes.

The programs for A369059, there is no canonical definition to state claims against.
-/

/-! ## A369059.P13689548116174192747

`A002620(A002110(n))`
-/

namespace A369059.P13689548116174192747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002110 n).toNat

end

end A369059.P13689548116174192747

/-! ## A369059.P10559929997644215104

`round((∏[eq[n, ∏{d}[n, #]]]-1)/2)²`
-/

namespace A369059.P10559929997644215104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2) ^ 2

end

end A369059.P10559929997644215104

/-! ## A369059.P6705428788940157924

`(round((∏[lt[∏{d}[n, #], n+1]]+1)/2)-1)²`
-/

namespace A369059.P6705428788940157924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2) - 1) ^ 2

end

end A369059.P6705428788940157924

/-! ## A369059.P9045269802216980618

`floor(A061742(n)/4)`
-/

namespace A369059.P9045269802216980618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061742 n : ℚ) / 4⌋

end

end A369059.P9045269802216980618

/-! ## A369059.P12118499246121494120

`((A000007(n)-A002110(n))/2)²`
-/

namespace A369059.P12118499246121494120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000007 n - A002110 n : ℚ) / 2) ^ 2

end

end A369059.P12118499246121494120

/-!
# A369060: LCM-transform of Sycamore's D(3) variant of Doudna sequence (A356867).

The programs for A369060, there is no canonical definition to state claims against.
-/

/-! ## A369060.P12435461373199856501

`A014963(A356867(n+1))`
-/

namespace A369060.P12435461373199856501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A356867 (n + 1)).toNat

end

end A369060.P12435461373199856501

/-! ## A369060.P10458733695417532453

`A014963(A365462(n+1)+1+n)`
-/

namespace A369060.P10458733695417532453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A365462 (n + 1) + 1 + (n : ℤ)).toNat

end

end A369060.P10458733695417532453

/-! ## A369060.P5433182825973915844

`A020500(A356867(n+1))+A010051(3*(n+1))`
-/

namespace A369060.P5433182825973915844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A356867 (n + 1)).toNat + A010051 (3 * (n + 1))

end

end A369060.P5433182825973915844

/-! ## A369060.P2063145588363802972

`gcd(A365462(n+1)+1+n, A020500(A356867(n+1)))`
-/

namespace A369060.P2063145588363802972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A365462 (n + 1) + 1 + (n : ℤ)) (A020500 (A356867 (n + 1)).toNat)

end

end A369060.P2063145588363802972

/-! ## A369060.P7846054338499600020

`gcd(A182936(A365462(n+1)+1+n), A356867(n+1))`
-/

namespace A369060.P7846054338499600020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182936 (A365462 (n + 1) + 1 + (n : ℤ)).toNat) (A356867 (n + 1))

end

end A369060.P7846054338499600020

/-!
# A369061: Numbers k such that k + k'*2 is equal to a partial sum of primorial numbers (a term of A143293), where k' stands for the arithmetic derivative of k, A003415.

The programs for A369061, there is no canonical definition to state claims against.
-/

/-! ## A369061.P14146096371091771404

`A325351(or(A216264(n), A217723(n+1)))`
-/

namespace A369061.P14146096371091771404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (Int.lor (A216264 n) (A217723 (n + 1))).toNat

end

end A369061.P14146096371091771404

/-!
# A369062: Lexicographically earliest infinite sequence such that a(i) = a(j) => A344005(i) = A344005(j) and A345992(i) = A345992(j), for all i, j >= 1.

The programs for A369062, there is no canonical definition to state claims against.
-/

/-! ## A369062.P9722752176290589584

`xor(n, A130931(A210709(n)))`
-/

namespace A369062.P9722752176290589584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A130931 (A210709 n).toNat)

end

end A369062.P9722752176290589584

/-! ## A369062.P6400871606056027160

`A028310(n)%A075928(A030545(n))`
-/

namespace A369062.P6400871606056027160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A075928 (A030545 n).toNat)

end

end A369062.P6400871606056027160

/-! ## A369062.P9937416220805810748

`A381852(xor(A210709(n), A381852(n)))`
-/

namespace A369062.P9937416220805810748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381852 (Int.xor (A210709 n) (A381852 n)).toNat

end

end A369062.P9937416220805810748

/-!
# A369064: Record values in A369054.

The programs for A369064, there is no canonical definition to state claims against.
-/

/-! ## A369064.P856506731116283392

`A369054(A369063(n+1))`
-/

namespace A369064.P856506731116283392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A369063 (n + 1)).toNat

end

end A369064.P856506731116283392

/-!
# A369065: Lexicographically earliest infinite sequence such that a(i) = a(j) => A344026(i) = A344026(j) for all i, j >= 0.

The programs for A369065, there is no canonical definition to state claims against.
-/

/-! ## A369065.P10632092507849868720

`A324400(round(1/A279065(n)+n))`
-/

namespace A369065.P10632092507849868720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (SequenceMachineLib.roundAway (1 / (A279065 n : ℚ) + (n : ℚ))).toNat

end

end A369065.P10632092507849868720

/-!
# A369066: Dirichlet convolution of Liouville's lambda (A008836) with A083345, as reordered by the Doudna sequence.

The programs for A369066, the canonical program `A369066.P10059178808322028541` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369066 has offset 0).

The definition of A369066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A369069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369066.P10059178808322028541

`A369069(A005940(1+n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A369066

/-- `A369069(A005940(1+n))` -/
def P10059178808322028541.Spec : Prop :=
  ∀ n, P10059178808322028541.a n = A369066 n

theorem P10059178808322028541.correct : P10059178808322028541.Spec := by
  intro n
  simp only [A369066]

end A369066

/-! ## A369066.P6790488206007496686

`A070939(A327510(n))*A369069(n+1)`
-/

namespace A369066.P6790488206007496686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A327510 n).toNat * A369069 (n + 1)

end

end A369066.P6790488206007496686

namespace A369066

/-- `A070939(A327510(n))*A369069(n+1)` -/
def P6790488206007496686.Spec : Prop :=
  ∀ n, P6790488206007496686.a n = A369066 n

end A369066

/-!
# A369067: Lexicographically earliest infinite sequence such that a(i) = a(j) => A369066(i) = A369066(j) for all i, j >= 0.

The programs for A369067, there is no canonical definition to state claims against.
-/

/-! ## A369067.P14639500637672352390

`A001222(A198453(n+2)+A001788(n))`
-/

namespace A369067.P14639500637672352390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A198453 (n + 2) + A001788 n).toNat

end

end A369067.P14639500637672352390

/-! ## A369067.P2832600561926055693

`A001222(A077499(n+1)-A130472(n))`
-/

namespace A369067.P2832600561926055693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077499 (n + 1) - A130472 n).toNat

end

end A369067.P2832600561926055693

/-! ## A369067.P104268541394591340

`A114731(A114731(n+3)+A000045(n))`
-/

namespace A369067.P104268541394591340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (A114731 (n + 3) + A000045 n).toNat

end

end A369067.P104268541394591340

/-! ## A369067.P2678932037537537228

`A339812(A130091(n+1)+A089675(n+1))`
-/

namespace A369067.P2678932037537537228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339812 (A130091 (n + 1) + A089675 (n + 1)).toNat

end

end A369067.P2678932037537537228

/-! ## A369067.P3882288114412063652

`A001222(A165010(n+1)+A127046(3*(n+1)))`
-/

namespace A369067.P3882288114412063652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A165010 (n + 1) + A127046 (3 * (n + 1))).toNat

end

end A369067.P3882288114412063652

/-!
# A369068: Möbius transform of A083345, where A083345(n) = n' / gcd(n,n'), and n' stands for the arithmetic derivative of n, A003415.

The programs for A369068, the canonical program `A369068.P15893143769007237132` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369068 has offset 1).

The definition of A369068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369068.P15893143769007237132

`∑{d}[n+1, A008683(#)*A083345((n+1)/#)]`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A369068

/-- `∑{d}[n+1, A008683(#)*A083345((n+1)/#)]` -/
def P15893143769007237132.Spec : Prop :=
  ∀ n, P15893143769007237132.a n = A369068 (n + 1)

theorem P15893143769007237132.correct : P15893143769007237132.Spec := by
  intro n
  simp only [A369068, Nat.add_sub_cancel]

end A369068

/-! ## A369068.P8305889913329423364

`∑{d}[n+1, A000010(#)*A369455((n+1)/#)]`
-/

namespace A369068.P8305889913329423364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A369455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369068.P8305889913329423364

namespace A369068

/-- `∑{d}[n+1, A000010(#)*A369455((n+1)/#)]` -/
def P8305889913329423364.Spec : Prop :=
  ∀ n, P8305889913329423364.a n = A369068 (n + 1)

end A369068

/-! ## A369068.P1099705784272500159

`∑{d}[n+1, A271102(#)*A369069((n+1)/#)]`
-/

namespace A369068.P1099705784272500159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A369069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369068.P1099705784272500159

namespace A369068

/-- `∑{d}[n+1, A271102(#)*A369069((n+1)/#)]` -/
def P1099705784272500159.Spec : Prop :=
  ∀ n, P1099705784272500159.a n = A369068 (n + 1)

end A369068

/-! ## A369068.P164563109092199849

`A369069(n+1)-A369058(A369084(n+4))`
-/

namespace A369068.P164563109092199849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369069 (n + 1) - A369058 (A369084 (n + 4)).toNat

end

end A369068.P164563109092199849

namespace A369068

/-- `A369069(n+1)-A369058(A369084(n+4))` -/
def P164563109092199849.Spec : Prop :=
  ∀ n, P164563109092199849.a n = A369068 (n + 1)

end A369068

/-!
# A369069: Dirichlet convolution of Liouville's lambda (A008836) with A083345, where A083345(n) = n' / gcd(n,n'), and n' stands for the arithmetic derivative of n, A003415.

The programs for A369069, the canonical program `A369069.P14625199457931227704` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369069 has offset 1).

The definition of A369069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369069.P14625199457931227704

`∑{d}[n+1, A008836(#)*A083345((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A369069

/-- `∑{d}[n+1, A008836(#)*A083345((n+1)/#)]` -/
def P14625199457931227704.Spec : Prop :=
  ∀ n, P14625199457931227704.a n = A369069 (n + 1)

theorem P14625199457931227704.correct : P14625199457931227704.Spec := by
  intro n
  simp only [A369069, Nat.add_sub_cancel]

end A369069

/-! ## A369069.P2246072863910560911

`∑{d}[n+1, A206369(#)*A369455((n+1)/#)]`
-/

namespace A369069.P2246072863910560911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A369455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369069.P2246072863910560911

namespace A369069

/-- `∑{d}[n+1, A206369(#)*A369455((n+1)/#)]` -/
def P2246072863910560911.Spec : Prop :=
  ∀ n, P2246072863910560911.a n = A369069 (n + 1)

end A369069

/-! ## A369069.P15069362127663200140

`A369066(A156552(n+1))`
-/

namespace A369069.P15069362127663200140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369066 (A156552 (n + 1)).toNat

end

end A369069.P15069362127663200140

namespace A369069

/-- `A369066(A156552(n+1))` -/
def P15069362127663200140.Spec : Prop :=
  ∀ n, P15069362127663200140.a n = A369069 (n + 1)

end A369069

/-! ## A369069.P2075633870271365550

`A369068(n+1)+A369058(A369084(n+4))`
-/

namespace A369069.P2075633870271365550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369068 (n + 1) + A369058 (A369084 (n + 4)).toNat

end

end A369069.P2075633870271365550

namespace A369069

/-- `A369068(n+1)+A369058(A369084(n+4))` -/
def P2075633870271365550.Spec : Prop :=
  ∀ n, P2075633870271365550.a n = A369069 (n + 1)

end A369069

/-! ## A369069.P16122271858642562471

`A300251(n+1)%A080818(A293076(n+1))`
-/

namespace A369069.P16122271858642562471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300251 (n + 1)) (A080818 (A293076 (n + 1)).toNat)

end

end A369069.P16122271858642562471

namespace A369069

/-- `A300251(n+1)%A080818(A293076(n+1))` -/
def P16122271858642562471.Spec : Prop :=
  ∀ n, P16122271858642562471.a n = A369069 (n + 1)

end A369069

/-!
# A369070: a(n) = 1 if there is at least one prime power p^e in the prime factorization of n such that p|e, otherwise 0.

The programs for A369070, the canonical program `A369070.P15963165301272738747` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369070 has offset 1).

The definition of A369070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369070.P11778173896239826220

`(n+2)%A359594(n+1)`
-/

namespace A369070.P11778173896239826220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A359594 (n + 1))

end

end A369070.P11778173896239826220

namespace A369070

/-- `(n+2)%A359594(n+1)` -/
def P11778173896239826220.Spec : Prop :=
  ∀ n, P11778173896239826220.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P15963165301272738747

`A008379(n)%A369008(n+1)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369070

/-- `A008379(n)%A369008(n+1)` -/
def P15963165301272738747.Spec : Prop :=
  ∀ n, P15963165301272738747.a n = A369070 (n + 1)

theorem P15963165301272738747.correct : P15963165301272738747.Spec := by
  intro n
  simp only [A369070, Nat.add_sub_cancel]

end A369070

/-! ## A369070.P4477042851053480482

`A017394(n)%A369008(n+1)`
-/

namespace A369070.P4477042851053480482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017394 n) (A369008 (n + 1))

end

end A369070.P4477042851053480482

namespace A369070

/-- `A017394(n)%A369008(n+1)` -/
def P4477042851053480482.Spec : Prop :=
  ∀ n, P4477042851053480482.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P4421246013715486436

`A017538(n)%A369008(n+1)`
-/

namespace A369070.P4421246013715486436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017538 n) (A369008 (n + 1))

end

end A369070.P4421246013715486436

namespace A369070

/-- `A017538(n)%A369008(n+1)` -/
def P4421246013715486436.Spec : Prop :=
  ∀ n, P4421246013715486436.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P2547022074148774907

`A055428(n)%A369008(n+1)`
-/

namespace A369070.P2547022074148774907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055428 n) (A369008 (n + 1))

end

end A369070.P2547022074148774907

namespace A369070

/-- `A055428(n)%A369008(n+1)` -/
def P2547022074148774907.Spec : Prop :=
  ∀ n, P2547022074148774907.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P14432611268564177925

`A305724(n)%A369008(n+1)`
-/

namespace A369070.P14432611268564177925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305724 n) (A369008 (n + 1))

end

end A369070.P14432611268564177925

namespace A369070

/-- `A305724(n)%A369008(n+1)` -/
def P14432611268564177925.Spec : Prop :=
  ∀ n, P14432611268564177925.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P6585910632128489398

`A174692(n)%A369008(n+1)`
-/

namespace A369070.P6585910632128489398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174692 n) (A369008 (n + 1))

end

end A369070.P6585910632128489398

namespace A369070

/-- `A174692(n)%A369008(n+1)` -/
def P6585910632128489398.Spec : Prop :=
  ∀ n, P6585910632128489398.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P13157429297763945257

`A195744(n)%A369008(n+1)`
-/

namespace A369070.P13157429297763945257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195744 n) (A369008 (n + 1))

end

end A369070.P13157429297763945257

namespace A369070

/-- `A195744(n)%A369008(n+1)` -/
def P13157429297763945257.Spec : Prop :=
  ∀ n, P13157429297763945257.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P13032068096663796586

`A196655(n)%A369008(n+1)`
-/

namespace A369070.P13032068096663796586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196655 n) (A369008 (n + 1))

end

end A369070.P13032068096663796586

namespace A369070

/-- `A196655(n)%A369008(n+1)` -/
def P13032068096663796586.Spec : Prop :=
  ∀ n, P13032068096663796586.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P12246888883573909958

`A127985(n)%A369008(n+1)`
-/

namespace A369070.P12246888883573909958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127985 n) (A369008 (n + 1))

end

end A369070.P12246888883573909958

namespace A369070

/-- `A127985(n)%A369008(n+1)` -/
def P12246888883573909958.Spec : Prop :=
  ∀ n, P12246888883573909958.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P2742055195922129132

`A196657(n)%A369008(n+1)`
-/

namespace A369070.P2742055195922129132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196657 n) (A369008 (n + 1))

end

end A369070.P2742055195922129132

namespace A369070

/-- `A196657(n)%A369008(n+1)` -/
def P2742055195922129132.Spec : Prop :=
  ∀ n, P2742055195922129132.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P16064586618239518697

`A048474(n)%A369008(n+1)`
-/

namespace A369070.P16064586618239518697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048474 n) (A369008 (n + 1))

end

end A369070.P16064586618239518697

namespace A369070

/-- `A048474(n)%A369008(n+1)` -/
def P16064586618239518697.Spec : Prop :=
  ∀ n, P16064586618239518697.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P7120460617404734759

`A048477(n)%A369008(n+1)`
-/

namespace A369070.P7120460617404734759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048477 n) (A369008 (n + 1))

end

end A369070.P7120460617404734759

namespace A369070

/-- `A048477(n)%A369008(n+1)` -/
def P7120460617404734759.Spec : Prop :=
  ∀ n, P7120460617404734759.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P3660477292554328159

`A048480(n)%A369008(n+1)`
-/

namespace A369070.P3660477292554328159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048480 n) (A369008 (n + 1))

end

end A369070.P3660477292554328159

namespace A369070

/-- `A048480(n)%A369008(n+1)` -/
def P3660477292554328159.Spec : Prop :=
  ∀ n, P3660477292554328159.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P1550225373373072940

`A338232(n)%A369008(n+1)`
-/

namespace A369070.P1550225373373072940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338232 n) (A369008 (n + 1))

end

end A369070.P1550225373373072940

namespace A369070

/-- `A338232(n)%A369008(n+1)` -/
def P1550225373373072940.Spec : Prop :=
  ∀ n, P1550225373373072940.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P7600271011658172150

`A048511(n)%A369008(n+1)`
-/

namespace A369070.P7600271011658172150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048511 n) (A369008 (n + 1))

end

end A369070.P7600271011658172150

namespace A369070

/-- `A048511(n)%A369008(n+1)` -/
def P7600271011658172150.Spec : Prop :=
  ∀ n, P7600271011658172150.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P1017692839370112621

`A168251(n)%A369008(n+1)`
-/

namespace A369070.P1017692839370112621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168251 n) (A369008 (n + 1))

end

end A369070.P1017692839370112621

namespace A369070

/-- `A168251(n)%A369008(n+1)` -/
def P1017692839370112621.Spec : Prop :=
  ∀ n, P1017692839370112621.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P17039821639667579456

`A107248(n)%A369008(n+1)`
-/

namespace A369070.P17039821639667579456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107248 n) (A369008 (n + 1))

end

end A369070.P17039821639667579456

namespace A369070

/-- `A107248(n)%A369008(n+1)` -/
def P17039821639667579456.Spec : Prop :=
  ∀ n, P17039821639667579456.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P3392674077324427499

`A133264(n)%A369008(n+1)`
-/

namespace A369070.P3392674077324427499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133264 n) (A369008 (n + 1))

end

end A369070.P3392674077324427499

namespace A369070

/-- `A133264(n)%A369008(n+1)` -/
def P3392674077324427499.Spec : Prop :=
  ∀ n, P3392674077324427499.a n = A369070 (n + 1)

end A369070

/-! ## A369070.P16623204843073131046

`A089365(n)%A369008(n+1)`
-/

namespace A369070.P16623204843073131046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089365 n) (A369008 (n + 1))

end

end A369070.P16623204843073131046

namespace A369070

/-- `A089365(n)%A369008(n+1)` -/
def P16623204843073131046.Spec : Prop :=
  ∀ n, P16623204843073131046.a n = A369070 (n + 1)

end A369070

/-!
# A369071: a(n) = Sum_{k=0..n} binomial(n, k - 1)*(k - 1)^(k - 1)*k*(n - k + 1)^(n - k).

The programs for A369071, there is no canonical definition to state claims against.
-/

/-! ## A369071.P6645135659075971708

`round(A119268(3*n+2)/10)`
-/

namespace A369071.P6645135659075971708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A119268 (3 * n + 2) : ℚ) / 10)

end

end A369071.P6645135659075971708

/-!
# A369072: Triangle read by rows: T(n, k) = floor(binomial(n, k - 1) * (k - 1)^(k - 1) * n * (n - k + 1)^(n - k) / 2).

The programs for A369072, there is no canonical definition to state claims against.
-/

/-! ## A369072.P16795050238233228208

`floor(A369018(n)/2)`
-/

namespace A369072.P16795050238233228208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A369018 n : ℚ) / 2⌋

end

end A369072.P16795050238233228208

/-! ## A369072.P7620911687141651916

`A369025(n)+A368982(n)`
-/

namespace A369072.P7620911687141651916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369025 n + A368982 n

end

end A369072.P7620911687141651916

/-! ## A369072.P6661568223012496183

`floor((A369019(n)+A368849(n))/2)`
-/

namespace A369072.P6661568223012496183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A369019 n + A368849 n : ℚ) / 2⌋

end

end A369072.P6661568223012496183

/-! ## A369072.P8190273465149573517

`A369025(n)+A117707(n)/2*A369016(n)`
-/

namespace A369072.P8190273465149573517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369025 n : ℚ) + (A117707 n : ℚ) / 2 * (A369016 n : ℚ)

end

end A369072.P8190273465149573517

/-! ## A369072.P4271857805696422244

`A368982(n)+A004526(A369019(n))`
-/

namespace A369072.P4271857805696422244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368982 n + A004526 (A369019 n).toNat

end

end A369072.P4271857805696422244

/-!
# A369073: Number of partitions of [n] such that for each block the arithmetic mean of the elements is an integer.

The programs for A369073, there is no canonical definition to state claims against.
-/

/-! ## A369073.P15708527999412879259

`A226762(A148488(n)+A079968(n))-A091247(n)`
-/

namespace A369073.P15708527999412879259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A148488 n + A079968 n).toNat - A091247 n

end

end A369073.P15708527999412879259

/-! ## A369073.P14478301491647536249

`A226762(A347783(n)+A148488(n))-A091247(n)`
-/

namespace A369073.P14478301491647536249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A347783 n + A148488 n).toNat - A091247 n

end

end A369073.P14478301491647536249

/-! ## A369073.P8497092423116364138

`A087836(A020005(n))`
-/

namespace A369073.P8497092423116364138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A020005 n).toNat

end

end A369073.P8497092423116364138

/-! ## A369073.P15760008170088046611

`A156874(A328358(n+2))-n`
-/

namespace A369073.P15760008170088046611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A328358 (n + 2)).toNat - (n : ℤ)

end

end A369073.P15760008170088046611

/-!
# A369074: Number of permutations of [n] such that for each cycle the arithmetic mean of the elements is an integer.

The programs for A369074, there is no canonical definition to state claims against.
-/

/-! ## A369074.P11854511140194441731

`A349151(A369930(n))`
-/

namespace A369074.P11854511140194441731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (A369930 n).toNat

end

end A369074.P11854511140194441731

/-! ## A369074.P3171181222887292873

`A366142(A371456(n))`
-/

namespace A369074.P3171181222887292873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366142 (A371456 n).toNat

end

end A369074.P3171181222887292873

/-! ## A369074.P3059645085521066954

`A271608(C(∑[A370592(3*n)], 2)+n)`
-/

namespace A369074.P3059645085521066954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370592 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + n)

end

end A369074.P3059645085521066954

/-!
# A369075: Records in A076976.

The programs for A369075, there is no canonical definition to state claims against.
-/

/-! ## A369075.P18041848153478522191

`record[A076976(n+1)]`
-/

namespace A369075.P18041848153478522191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369075.P18041848153478522191

/-! ## A369075.P7764447794586504260

`A235027(A322381(2*n))`
-/

namespace A369075.P7764447794586504260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A322381 (2 * n)).toNat

end

end A369075.P7764447794586504260

/-!
# A369079: Number of partitions of [n] such that the element sum of each block is odd.

The programs for A369079, there is no canonical definition to state claims against.
-/

/-! ## A369079.P7479312441212223534

`A375924(∑[n+3])`
-/

namespace A369079.P7479312441212223534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369079.P7479312441212223534

/-!
# A369080: Number of permutations of [n] such that the element sum of each cycle is odd.

The programs for A369080, there is no canonical definition to state claims against.
-/

/-! ## A369080.P874447021018696654

`(n-1)*a(n-1)/floor(n/2)*A004525(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A369080.P874447021018696654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (a (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ)) * (A004525 n : ℚ)

end

end A369080.P874447021018696654

/-! ## A369080.P1590514074386798093

`A336465(abs(1-n)!)`
-/

namespace A369080.P1590514074386798093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336465 (Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A369080.P1590514074386798093

/-! ## A369080.P6324780596462498728

`A104150(n)+A004525(A017899(n)*A273695(n))`
-/

namespace A369080.P6324780596462498728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n + A004525 (A017899 n * A273695 n).toNat

end

end A369080.P6324780596462498728

/-! ## A369080.P15436362167211467710

`∏[A057514(A118589(n))]`
-/

namespace A369080.P15436362167211467710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 (A118589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369080.P15436362167211467710

/-!
# A369082: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(3*A(x)^2 + A(-x)^2)/4.

The programs for A369082, the canonical program `A369082.P13508565943011259919` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369082 has offset 0).

The definition of A369082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369082.P12740569285673701367

`A124753(A007494(n))`
-/

namespace A369082.P12740569285673701367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A007494 n).toNat

end

end A369082.P12740569285673701367

namespace A369082

/-- `A124753(A007494(n))` -/
def P12740569285673701367.Spec : Prop :=
  ∀ n, P12740569285673701367.a n = A369082 n

end A369082

/-! ## A369082.P15781859107219310927

`A124753(A267528(n+1))`
-/

namespace A369082.P15781859107219310927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A267528 (n + 1)).toNat

end

end A369082.P15781859107219310927

namespace A369082

/-- `A124753(A267528(n+1))` -/
def P15781859107219310927.Spec : Prop :=
  ∀ n, P15781859107219310927.a n = A369082 n

end A369082

/-! ## A369082.P6519083957066953035

`A124753(A294732(n+2))`
-/

namespace A369082.P6519083957066953035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A294732 (n + 2)).toNat

end

end A369082.P6519083957066953035

namespace A369082

/-- `A124753(A294732(n+2))` -/
def P6519083957066953035.Spec : Prop :=
  ∀ n, P6519083957066953035.a n = A369082 n

end A369082

/-! ## A369082.P6985326745470830919

`A124753(A032766(n+1)-1)`
-/

namespace A369082.P6985326745470830919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A032766 (n + 1) - 1).toNat

end

end A369082.P6985326745470830919

namespace A369082

/-- `A124753(A032766(n+1)-1)` -/
def P6985326745470830919.Spec : Prop :=
  ∀ n, P6985326745470830919.a n = A369082 n

end A369082

/-! ## A369082.P7923649865712074196

`A283799(n)/A114752(n+1)`
-/

namespace A369082.P7923649865712074196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283799 n : ℚ) / (A114752 (n + 1) : ℚ)

end

end A369082.P7923649865712074196

namespace A369082

/-- `A283799(n)/A114752(n+1)` -/
def P7923649865712074196.Spec : Prop :=
  ∀ n, P7923649865712074196.a n = (A369082 n : ℚ)

end A369082

/-! ## A369082.P12201820194325625144

`C(2*n+1, ceil(n/2))/(2*n+1)`
-/

namespace A369082.P12201820194325625144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) ⌈(n : ℚ) / 2⌉.toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A369082.P12201820194325625144

namespace A369082

/-- `C(2*n+1, ceil(n/2))/(2*n+1)` -/
def P12201820194325625144.Spec : Prop :=
  ∀ n, P12201820194325625144.a n = (A369082 n : ℚ)

end A369082

/-! ## A369082.P13508565943011259919

`floor(C(2*n+1, floor((n+1)/2))/(2*n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A369082

/-- `floor(C(2*n+1, floor((n+1)/2))/(2*n+1))` -/
def P13508565943011259919.Spec : Prop :=
  ∀ n, P13508565943011259919.a n = A369082 n

theorem P13508565943011259919.correct : P13508565943011259919.Spec := by
  intro n
  simp only [A369082]

end A369082

/-! ## A369082.P2813158200643960110

`A328901(A026381(n+2))`
-/

namespace A369082.P2813158200643960110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328901 (A026381 (n + 2)).toNat

end

end A369082.P2813158200643960110

namespace A369082

/-- `A328901(A026381(n+2))` -/
def P2813158200643960110.Spec : Prop :=
  ∀ n, P2813158200643960110.a n = A369082 n

end A369082

/-! ## A369082.P3964131522663338336

`A037306(A213399(n))`
-/

namespace A369082.P3964131522663338336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A213399 n).toNat

end

end A369082.P3964131522663338336

namespace A369082

/-- `A037306(A213399(n))` -/
def P3964131522663338336.Spec : Prop :=
  ∀ n, P3964131522663338336.a n = A369082 n

end A369082

/-! ## A369082.P15611843878234807826

`A047071(A234717(n+1))`
-/

namespace A369082.P15611843878234807826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 (A234717 (n + 1)).toNat

end

end A369082.P15611843878234807826

namespace A369082

/-- `A047071(A234717(n+1))` -/
def P15611843878234807826.Spec : Prop :=
  ∀ n, P15611843878234807826.a n = A369082 n

end A369082

/-!
# A369084: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} x^(n*(n-1)/2) * (x^n - A(x))^n.

The programs for A369084, there is no canonical definition to state claims against.
-/

/-! ## A369084.P17958921673398661291

`A158946(A035353(n+1)+floor(log(n+1)^n))`
-/

namespace A369084.P17958921673398661291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158946 (A035353 (n + 1) + ⌊Real.log (n + 1 : ℝ) ^ n⌋).toNat

end

end A369084.P17958921673398661291

/-!
# A369085: Expansion of g.f. A(x) satisfying -x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n-1)/2) * A(x)^(n^2).

The programs for A369085, there is no canonical definition to state claims against.
-/

/-! ## A369085.P15096679365942893126

`A151518(A353985(n+1))`
-/

namespace A369085.P15096679365942893126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151518 (A353985 (n + 1)).toNat

end

end A369085.P15096679365942893126

/-! ## A369085.P7288366614020110025

`A008621(n*A125657(n))`
-/

namespace A369085.P7288366614020110025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((n : ℤ) * A125657 n).toNat

end

end A369085.P7288366614020110025

/-!
# A369087: Number of partitions of the square of the n-th triangular number into cubes.

The programs for A369087, there is no canonical definition to state claims against.
-/

/-! ## A369087.P11435584999025375613

`A003108(A000537(n))`
-/

namespace A369087.P11435584999025375613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A000537 n).toNat

end

end A369087.P11435584999025375613

/-! ## A369087.P10993665078418780925

`A218495(∑[n])`
-/

namespace A369087.P10993665078418780925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369087.P10993665078418780925

/-! ## A369087.P13018262631468659997

`or(char[1], A218495(A000217(n)))`
-/

namespace A369087.P13018262631468659997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A218495 (A000217 n).toNat)

end

end A369087.P13018262631468659997

/-! ## A369087.P3364613947568250513

`A218495(A000217(n))+A000035(2*n)`
-/

namespace A369087.P3364613947568250513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218495 (A000217 n).toNat + A000035 (2 * n)

end

end A369087.P3364613947568250513

/-! ## A369087.P14978376614914523221

`A218495(A000217(n))+A112604(3*n+4)`
-/

namespace A369087.P14978376614914523221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218495 (A000217 n).toNat + A112604 (3 * n + 4)

end

end A369087.P14978376614914523221

/-!
# A369088: Expansion of Sum_{n>=0} ( (1+x)^n/(1-x)^n - (1-x)^n/(1+x)^n )^n / 4^n.

The programs for A369088, there is no canonical definition to state claims against.
-/

/-! ## A369088.P13080935237743648615

`A047210(A007559(n)+1)`
-/

namespace A369088.P13080935237743648615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A007559 n + 1).toNat

end

end A369088.P13080935237743648615

/-! ## A369088.P13098546495972096229

`A069345(A007559(n)+1)`
-/

namespace A369088.P13098546495972096229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (A007559 n + 1).toNat

end

end A369088.P13098546495972096229

/-!
# A369090: Expansion of e.g.f. A(x) satisfying A(x) = A( x^2*exp(x) ) / x, with A(0) = 0.

The programs for A369090, there is no canonical definition to state claims against.
-/

/-! ## A369090.P5088075963628913997

`(n+1)*A369550(n)`
-/

namespace A369090.P5088075963628913997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369550 n

end

end A369090.P5088075963628913997

/-! ## A369090.P3182815444977049274

`(n+1)*A219642(n^n)`
-/

namespace A369090.P3182815444977049274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A219642 (n ^ n)

end

end A369090.P3182815444977049274

/-!
# A369091: Expansion of e.g.f. A(x) satisfying A(x) = x + A( x^2*exp(x) ), with A(0) = 0.

The programs for A369091, there is no canonical definition to state claims against.
-/

/-! ## A369091.P10696378825259839548

`(n+1)*A369551(n)`
-/

namespace A369091.P10696378825259839548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369551 n

end

end A369091.P10696378825259839548

/-! ## A369091.P8027646902131483972

`record[A358080(n)]%A358075(n+4)`
-/

namespace A369091.P8027646902131483972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A358075 (n + 4))

end

end A369091.P8027646902131483972

/-! ## A369091.P15763926361502782313

`A358080(A062943(n+1)+A057427(n))`
-/

namespace A369091.P15763926361502782313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358080 (A062943 (n + 1) + A057427 n).toNat

end

end A369091.P15763926361502782313

/-!
# A369092: Numbers which are a substring of their own "Look and Say" description (cf. A045918).

The programs for A369092, there is no canonical definition to state claims against.
-/

/-! ## A369092.P8060203283774344576

`A254621(n+1)-A185709(A367815(2*(n+2)))`
-/

namespace A369092.P8060203283774344576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1) - A185709 (A367815 (2 * (n + 2))).toNat

end

end A369092.P8060203283774344576

/-! ## A369092.P10758574336779803099

`lt[A128084(n), A216620(A331895(n+1))]`
-/

namespace A369092.P10758574336779803099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216620 (A331895 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369092.P10758574336779803099

/-! ## A369092.P12683828585861735725

`lt[A250120(A114640(n)), A329606(2*n+5)]`
-/

namespace A369092.P12683828585861735725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A114640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329606 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369092.P12683828585861735725

/-!
# A369093: Numbers k >= 1 such that sigma(k) divides the sum of the triangular numbers T(k) and T(k+1), where sigma(k) = A000203(k) is the sum of the divisors of k.

The programs for A369093, there is no canonical definition to state claims against.
-/

/-! ## A369093.P11787161954877213804

`∪[A139254(n+1), A210494(n+1)]`
-/

namespace A369093.P11787161954877213804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369093.P11787161954877213804

/-! ## A369093.P9824515879018050119

`∩[A125007(n+1), A143578(n+1)]`
-/

namespace A369093.P9824515879018050119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369093.P9824515879018050119

/-! ## A369093.P11135790505252303706

`∩[A046758(n+1), A385402(n+1)]`
-/

namespace A369093.P11135790505252303706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369093.P11135790505252303706

/-! ## A369093.P6131549730650515706

`filter[A122090(n+1), A192280(#)]`
-/

namespace A369093.P6131549730650515706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A369093.P6131549730650515706

/-! ## A369093.P5168685485588731201

`filter[A122090(n+1), A389449(#)]`
-/

namespace A369093.P5168685485588731201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A369093.P5168685485588731201

/-!
# A369096: Numbers k >= 2 such that omega(k) divides the sum of the triangular numbers T(k) and T(k+1), where omega(k) is the number of distinct primes dividing k (A001221).

The programs for A369096, there is no canonical definition to state claims against.
-/

/-! ## A369096.P3403761686201272417

`eq[A033322(A202970(n+1)), A323170(n+1)]+1`
-/

namespace A369096.P3403761686201272417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (A202970 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369096.P3403761686201272417

/-! ## A369096.P13493197955797282023

`A115405(n+2)+A000007(A121500(n+3))`
-/

namespace A369096.P13493197955797282023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115405 (n + 2) + A000007 (A121500 (n + 3)).toNat

end

end A369096.P13493197955797282023

/-!
# A369098: Number of permutations of [n] having exactly one adjacent 4-cycle.

The programs for A369098, there is no canonical definition to state claims against.
-/

/-! ## A369098.P13163765247620484015

`A025428(C(comp[2*(n+1)], n+2))`
-/

namespace A369098.P13163765247620484015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 2))

end

end A369098.P13163765247620484015

/-! ## A369098.P17708699912368452698

`A351593(A349975(n))`
-/

namespace A369098.P17708699912368452698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 (A349975 n).toNat

end

end A369098.P17708699912368452698

/-! ## A369098.P4520050553520028342

`A033105(A173938(n)+A006218(n))`
-/

namespace A369098.P4520050553520028342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033105 (A173938 n + A006218 n).toNat

end

end A369098.P4520050553520028342

/-! ## A369098.P7195782777493031109

`A065715(A279555(n)-A028242(n))`
-/

namespace A369098.P7195782777493031109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (A279555 n - A028242 n).toNat

end

end A369098.P7195782777493031109

/-! ## A369098.P12976310796674294298

`A033182(A056325(n)+A024607(n+1))`
-/

namespace A369098.P12976310796674294298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A056325 n + A024607 (n + 1)).toNat

end

end A369098.P12976310796674294298

/-!
# A369099: Index of first occurrence of n in A369015; smallest number whose prime tower factorization tree has Matula-Göbel number n.

The programs for A369099, there is no canonical definition to state claims against.
-/

/-! ## A369099.P3697521145784546888

`A284456(A369137(n+1))`
-/

namespace A369099.P3697521145784546888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284456 (A369137 (n + 1)).toNat

end

end A369099.P3697521145784546888

/-! ## A369099.P7871781190025173454

`A025487(A369138(A369137(A085089(A025487(n+1)))))`
-/

namespace A369099.P7871781190025173454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A369138 (A369137 (A085089 (A025487 (n + 1)).toNat).toNat).toNat).toNat

end

end A369099.P7871781190025173454

/-! ## A369099.P9165619891087201306

`A025487(A369138(A369137(A369137(A369136(n+1)))))`
-/

namespace A369099.P9165619891087201306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A369138 (A369137 (A369137 (A369136 (n + 1)).toNat).toNat).toNat).toNat

end

end A369099.P9165619891087201306

