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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A129000: Start with an integer (in this case, 1). First, add 5 or 8 if the integer is odd or even, respectively. Then divide by 2.

The programs for A129000, the canonical program `A129000.P6824906118841107869` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129000 has offset 1).

The definition of A129000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129000.P6824906118841107869

`a(n-2)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129000

/-- `a(n-2)` -/
def P6824906118841107869.Spec : Prop :=
  ∀ n, (P6824906118841107869.a n : ℤ) = A129000 (n + 1)

theorem P6824906118841107869.correct : P6824906118841107869.Spec := by
  intro n
  simp only [A129000, Nat.add_sub_cancel]

end A129000

/-!
# A129001: Heights of roots in Cartan root systems for exceptional groups: A1, G2, F4, E6, E7, E8.

The programs for A129001, there is no canonical definition to state claims against.
-/

/-! ## A129001.P11956016108433630535

`A387106(A190890(n+2))`
-/

namespace A129001.P11956016108433630535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387106 (A190890 (n + 2)).toNat

end

end A129001.P11956016108433630535

/-! ## A129001.P4711083974368945675

`A331844(n)+A053838(A027375(n))`
-/

namespace A129001.P4711083974368945675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n + A053838 (A027375 n).toNat

end

end A129001.P4711083974368945675

/-! ## A129001.P12386492382994803116

`A336312(A007088(2*(n+2))-A046083(n+1))`
-/

namespace A129001.P12386492382994803116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (A007088 (2 * (n + 2)) - A046083 (n + 1)).toNat

end

end A129001.P12386492382994803116

/-! ## A129001.P8309147733737407054

`A304092(A291142(n)+5)`
-/

namespace A129001.P8309147733737407054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (A291142 n + 5).toNat

end

end A129001.P8309147733737407054

/-! ## A129001.P13387250315511148537

`A023588(A180581(n)+(-1)^∑{e}[n+1, #])`
-/

namespace A129001.P13387250315511148537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023588 (A180581 n + (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A129001.P13387250315511148537

/-!
# A129002: a(n) = (n^3 + n^2)*2^n.

The programs for A129002, the canonical program `A129002.P2751204566084846886` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129002 has offset 1).

The definition of A129002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+(n+1)²)*2^(n+1)` (program `A129002.P2751204566084846886`, by `A129002.P2751204566084846886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129002.P2751204566084846886

`((n+1)^3+(n+1)²)*2^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129002

/-- `((n+1)^3+(n+1)²)*2^(n+1)` -/
def P2751204566084846886.Spec : Prop :=
  ∀ n, (P2751204566084846886.a n : ℤ) = A129002 (n + 1)

theorem P2751204566084846886.correct : P2751204566084846886.Spec := by
  intro n
  simp only [A129002, Nat.add_sub_cancel]

end A129002

/-! ## A129002.P1365622412567073392

`lcm(2, Δ[∑[n²-1]+n]*A001787(n+2))`
-/

namespace A129002.P1365622412567073392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) - f1 n) * A001787 (n + 2))

end

end A129002.P1365622412567073392

namespace A129002

/-- `lcm(2, Δ[∑[n²-1]+n]*A001787(n+2))` -/
def P1365622412567073392.Spec : Prop :=
  ∀ n, (P1365622412567073392.a n : ℤ) = A129002 (n + 1)

end A129002

/-! ## A129002.P9131517799516636384

`A128789(n+1)+A007758(n+1)`
-/

namespace A129002.P9131517799516636384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) + A007758 (n + 1)

end

end A129002.P9131517799516636384

namespace A129002

/-- `A128789(n+1)+A007758(n+1)` -/
def P9131517799516636384.Spec : Prop :=
  ∀ n, P9131517799516636384.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P13890217701538863043

`A128796(n+1)+A119635(n+1)`
-/

namespace A129002.P13890217701538863043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128796 (n + 1) + A119635 (n + 1)

end

end A129002.P13890217701538863043

namespace A129002

/-- `A128796(n+1)+A119635(n+1)` -/
def P13890217701538863043.Spec : Prop :=
  ∀ n, P13890217701538863043.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P9466458391027956223

`A128789(n+1)+2*A014477(n)`
-/

namespace A129002.P9466458391027956223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) + 2 * A014477 n

end

end A129002.P9466458391027956223

namespace A129002

/-- `A128789(n+1)+2*A014477(n)` -/
def P9466458391027956223.Spec : Prop :=
  ∀ n, P9466458391027956223.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P17324003710095931006

`A058922(n+2)+A000096(n)*A058922(n+2)`
-/

namespace A129002.P17324003710095931006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 2) + A000096 n * A058922 (n + 2)

end

end A129002.P17324003710095931006

namespace A129002

/-- `A058922(n+2)+A000096(n)*A058922(n+2)` -/
def P17324003710095931006.Spec : Prop :=
  ∀ n, P17324003710095931006.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P11041262140985851011

`A119635(n+1)+A128960(n+1)-A128985(n+1)`
-/

namespace A129002.P11041262140985851011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119635 (n + 1) + (A128960 (n + 1) - A128985 (n + 1))

end

end A129002.P11041262140985851011

namespace A129002

/-- `A119635(n+1)+A128960(n+1)-A128985(n+1)` -/
def P11041262140985851011.Spec : Prop :=
  ∀ n, P11041262140985851011.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P1548032560670113718

`A001787(n+1)*A001844(n+1)-A001787(n+1)`
-/

namespace A129002.P1548032560670113718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) * A001844 (n + 1) - A001787 (n + 1)

end

end A129002.P1548032560670113718

namespace A129002

/-- `A001787(n+1)*A001844(n+1)-A001787(n+1)` -/
def P1548032560670113718.Spec : Prop :=
  ∀ n, P1548032560670113718.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P10840349229894847147

`A001788(n+1)*A016813(n+1)-A001788(n+1)`
-/

namespace A129002.P10840349229894847147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) * A016813 (n + 1) - A001788 (n + 1)

end

end A129002.P10840349229894847147

namespace A129002

/-- `A001788(n+1)*A016813(n+1)-A001788(n+1)` -/
def P10840349229894847147.Spec : Prop :=
  ∀ n, P10840349229894847147.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P7840545585715504590

`A000051(n+1)*A011379(n+1)-A011379(n+1)`
-/

namespace A129002.P7840545585715504590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A011379 (n + 1) - A011379 (n + 1)

end

end A129002.P7840545585715504590

namespace A129002

/-- `A000051(n+1)*A011379(n+1)-A011379(n+1)` -/
def P7840545585715504590.Spec : Prop :=
  ∀ n, P7840545585715504590.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P5921527424434227224

`(n+1)*A128796(n+2)/2`
-/

namespace A129002.P5921527424434227224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A128796 (n + 2) : ℚ) / 2

end

end A129002.P5921527424434227224

namespace A129002

/-- `(n+1)*A128796(n+2)/2` -/
def P5921527424434227224.Spec : Prop :=
  ∀ n, P5921527424434227224.a n = (A129002 (n + 1) : ℚ)

end A129002

/-! ## A129002.P18391109704838810712

`Δ[A036827(n)+A036800(n)]`
-/

namespace A129002.P18391109704838810712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036827 n + A036800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129002.P18391109704838810712

namespace A129002

/-- `Δ[A036827(n)+A036800(n)]` -/
def P18391109704838810712.Spec : Prop :=
  ∀ n, P18391109704838810712.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P5798748233370812379

`Δ[n*A196514(n)]-A196514(n)`
-/

namespace A129002.P5798748233370812379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A196514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A196514 n

end

end A129002.P5798748233370812379

namespace A129002

/-- `Δ[n*A196514(n)]-A196514(n)` -/
def P5798748233370812379.Spec : Prop :=
  ∀ n, P5798748233370812379.a n = A129002 (n + 1)

end A129002

/-! ## A129002.P10002795352697350557

`A128985(n+2)-A128960(n+2)/2`
-/

namespace A129002.P10002795352697350557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128985 (n + 2) : ℚ) - (A128960 (n + 2) : ℚ) / 2

end

end A129002.P10002795352697350557

namespace A129002

/-- `A128985(n+2)-A128960(n+2)/2` -/
def P10002795352697350557.Spec : Prop :=
  ∀ n, P10002795352697350557.a n = (A129002 (n + 1) : ℚ)

end A129002

/-! ## A129002.P1069003362526143226

`∑[4*(n+1)]*a(n-1)/n²` with `a(0)=4`
-/

namespace A129002.P1069003362526143226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * a (n - 1) / (n ^ 2 : ℚ)

end

end A129002.P1069003362526143226

namespace A129002

/-- `∑[4*(n+1)]*a(n-1)/n²` -/
def P1069003362526143226.Spec : Prop :=
  ∀ n, P1069003362526143226.a n = (A129002 (n + 1) : ℚ)

end A129002

/-! ## A129002.P13782834421562950459

`A129004(n+1)/A000079(n+1)`
-/

namespace A129002.P13782834421562950459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129004 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A129002.P13782834421562950459

namespace A129002

/-- `A129004(n+1)/A000079(n+1)` -/
def P13782834421562950459.Spec : Prop :=
  ∀ n, P13782834421562950459.a n = (A129002 (n + 1) : ℚ)

end A129002

/-! ## A129002.P2572562185430404528

`A006043(n)*A036289(n+1)/A000244(n)`
-/

namespace A129002.P2572562185430404528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006043 n * A036289 (n + 1) : ℚ) / (A000244 n : ℚ)

end

end A129002.P2572562185430404528

namespace A129002

/-- `A006043(n)*A036289(n+1)/A000244(n)` -/
def P2572562185430404528.Spec : Prop :=
  ∀ n, P2572562185430404528.a n = (A129002 (n + 1) : ℚ)

end A129002

/-! ## A129002.P10735959138893638838

`A036289(n+1)*A116138(n+1)/A000244(n+1)`
-/

namespace A129002.P10735959138893638838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (n + 1) * A116138 (n + 1) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A129002.P10735959138893638838

namespace A129002

/-- `A036289(n+1)*A116138(n+1)/A000244(n+1)` -/
def P10735959138893638838.Spec : Prop :=
  ∀ n, P10735959138893638838.a n = (A129002 (n + 1) : ℚ)

end A129002

/-! ## A129002.P14284031565069590434

`A129008(n+1)/A000079(n+1)²`
-/

namespace A129002.P14284031565069590434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129008 (n + 1) : ℚ) / (A000079 (n + 1) ^ 2 : ℚ)

end

end A129002.P14284031565069590434

namespace A129002

/-- `A129008(n+1)/A000079(n+1)²` -/
def P14284031565069590434.Spec : Prop :=
  ∀ n, P14284031565069590434.a n = (A129002 (n + 1) : ℚ)

end A129002

/-!
# A129003: a(n) = (n^3 + n^2)*3^n.

The programs for A129003, the canonical program `A129003.P4245029837086348436` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129003 has offset 1).

The definition of A129003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+(n+1)²)*3^(n+1)` (program `A129003.P4245029837086348436`, by `A129003.P4245029837086348436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129003.P4245029837086348436

`((n+1)^3+(n+1)²)*3^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129003

/-- `((n+1)^3+(n+1)²)*3^(n+1)` -/
def P4245029837086348436.Spec : Prop :=
  ∀ n, (P4245029837086348436.a n : ℤ) = A129003 (n + 1)

theorem P4245029837086348436.correct : P4245029837086348436.Spec := by
  intro n
  simp only [A129003, Nat.add_sub_cancel]

end A129003

/-! ## A129003.P11985446888839759313

`∑[A008776(n)*A144640(n+1)]`
-/

namespace A129003.P11985446888839759313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n * A144640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129003.P11985446888839759313

namespace A129003

/-- `∑[A008776(n)*A144640(n+1)]` -/
def P11985446888839759313.Spec : Prop :=
  ∀ n, P11985446888839759313.a n = A129003 (n + 1)

end A129003

/-! ## A129003.P8505470426302004888

`A128961(n+1)+A116138(n+1)`
-/

namespace A129003.P8505470426302004888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128961 (n + 1) + A116138 (n + 1)

end

end A129003.P8505470426302004888

namespace A129003

/-- `A128961(n+1)+A116138(n+1)` -/
def P8505470426302004888.Spec : Prop :=
  ∀ n, P8505470426302004888.a n = A129003 (n + 1)

end A129003

/-! ## A129003.P13629884583087818054

`A128797(n+1)+A121607(n+1)`
-/

namespace A129003.P13629884583087818054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128797 (n + 1) + A121607 (n + 1)

end

end A129003.P13629884583087818054

namespace A129003

/-- `A128797(n+1)+A121607(n+1)` -/
def P13629884583087818054.Spec : Prop :=
  ∀ n, P13629884583087818054.a n = A129003 (n + 1)

end A129003

/-! ## A129003.P13838249015931596273

`(n+1)*A128797(n+2)/3`
-/

namespace A129003.P13838249015931596273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A128797 (n + 2) : ℚ) / 3

end

end A129003.P13838249015931596273

namespace A129003

/-- `(n+1)*A128797(n+2)/3` -/
def P13838249015931596273.Spec : Prop :=
  ∀ n, P13838249015931596273.a n = (A129003 (n + 1) : ℚ)

end A129003

/-! ## A129003.P461984163923969470

`(n+2)*A062074(n+1)/(n+1)`
-/

namespace A129003.P461984163923969470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A062074 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A129003.P461984163923969470

namespace A129003

/-- `(n+2)*A062074(n+1)/(n+1)` -/
def P461984163923969470.Spec : Prop :=
  ∀ n, P461984163923969470.a n = (A129003 (n + 1) : ℚ)

end A129003

/-! ## A129003.P18060618217245298899

`A129006(n+1)/Δ[A126646(n)]`
-/

namespace A129003.P18060618217245298899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129006 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A129003.P18060618217245298899

namespace A129003

/-- `A129006(n+1)/Δ[A126646(n)]` -/
def P18060618217245298899.Spec : Prop :=
  ∀ n, P18060618217245298899.a n = (A129003 (n + 1) : ℚ)

end A129003

/-! ## A129003.P14519000806470229441

`A129006(n+1)/A000079(n+1)`
-/

namespace A129003.P14519000806470229441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129006 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A129003.P14519000806470229441

namespace A129003

/-- `A129006(n+1)/A000079(n+1)` -/
def P14519000806470229441.Spec : Prop :=
  ∀ n, P14519000806470229441.a n = (A129003 (n + 1) : ℚ)

end A129003

/-! ## A129003.P14716826585951834142

`A007758(n+1)*A116138(n+1)/A036289(n+1)`
-/

namespace A129003.P14716826585951834142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 (n + 1) * A116138 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A129003.P14716826585951834142

namespace A129003

/-- `A007758(n+1)*A116138(n+1)/A036289(n+1)` -/
def P14716826585951834142.Spec : Prop :=
  ∀ n, P14716826585951834142.a n = (A129003 (n + 1) : ℚ)

end A129003

/-! ## A129003.P3182973804495622306

`A121607(n+1)*A129002(n+1)/A119635(n+1)`
-/

namespace A129003.P3182973804495622306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121607 (n + 1) * A129002 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A129003.P3182973804495622306

namespace A129003

/-- `A121607(n+1)*A129002(n+1)/A119635(n+1)` -/
def P3182973804495622306.Spec : Prop :=
  ∀ n, P3182973804495622306.a n = (A129003 (n + 1) : ℚ)

end A129003

/-!
# A129004: a(n) = (n^3 + n^2)*4^n.

The programs for A129004, the canonical program `A129004.P16620639643151888085` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129004 has offset 1).

The definition of A129004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+(n+1)²)*4^(n+1)` (program `A129004.P16620639643151888085`, by `A129004.P16620639643151888085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129004.P16620639643151888085

`((n+1)^3+(n+1)²)*4^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129004

/-- `((n+1)^3+(n+1)²)*4^(n+1)` -/
def P16620639643151888085.Spec : Prop :=
  ∀ n, (P16620639643151888085.a n : ℤ) = A129004 (n + 1)

theorem P16620639643151888085.correct : P16620639643151888085.Spec := by
  intro n
  simp only [A129004, Nat.add_sub_cancel]

end A129004

/-! ## A129004.P775283747151689036

`A128790(n+1)+A128782(n+1)`
-/

namespace A129004.P775283747151689036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128790 (n + 1) + A128782 (n + 1)

end

end A129004.P775283747151689036

namespace A129004

/-- `A128790(n+1)+A128782(n+1)` -/
def P775283747151689036.Spec : Prop :=
  ∀ n, P775283747151689036.a n = A129004 (n + 1)

end A129004

/-! ## A129004.P10890403597594970919

`A128790(n+1)+A036289(n+1)²`
-/

namespace A129004.P10890403597594970919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128790 (n + 1) + A036289 (n + 1) ^ 2

end

end A129004.P10890403597594970919

namespace A129004

/-- `A128790(n+1)+A036289(n+1)²` -/
def P10890403597594970919.Spec : Prop :=
  ∀ n, P10890403597594970919.a n = A129004 (n + 1)

end A129004

/-! ## A129004.P14619482326616711255

`A116144(n+1)+n*A116144(n+1)`
-/

namespace A129004.P14619482326616711255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 (n + 1) + (n : ℤ) * A116144 (n + 1)

end

end A129004.P14619482326616711255

namespace A129004

/-- `A116144(n+1)+n*A116144(n+1)` -/
def P14619482326616711255.Spec : Prop :=
  ∀ n, P14619482326616711255.a n = A129004 (n + 1)

end A129004

/-! ## A129004.P11142932623319115045

`A001789(2*n+3)+A001789(2*(n+2))-A001792(2*n)`
-/

namespace A129004.P11142932623319115045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (2 * n + 3) + (A001789 (2 * (n + 2)) - A001792 (2 * n))

end

end A129004.P11142932623319115045

namespace A129004

/-- `A001789(2*n+3)+A001789(2*(n+2))-A001792(2*n)` -/
def P11142932623319115045.Spec : Prop :=
  ∀ n, P11142932623319115045.a n = A129004 (n + 1)

end A129004

/-! ## A129004.P8559694038610640896

`A176027(n+1)²-A178987(n+1)²`
-/

namespace A129004.P8559694038610640896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (n + 1) ^ 2 - A178987 (n + 1) ^ 2

end

end A129004.P8559694038610640896

namespace A129004

/-- `A176027(n+1)²-A178987(n+1)²` -/
def P8559694038610640896.Spec : Prop :=
  ∀ n, P8559694038610640896.a n = A129004 (n + 1)

end A129004

/-! ## A129004.P14246001629115002438

`Δ[A196514(n)]²/(n+2)`
-/

namespace A129004.P14246001629115002438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196514 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A129004.P14246001629115002438

namespace A129004

/-- `Δ[A196514(n)]²/(n+2)` -/
def P14246001629115002438.Spec : Prop :=
  ∀ n, P14246001629115002438.a n = (A129004 (n + 1) : ℚ)

end A129004

/-! ## A129004.P4646965836976421323

`A100381(n+2)²/(n+2)`
-/

namespace A129004.P4646965836976421323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100381 (n + 2) ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A129004.P4646965836976421323

namespace A129004

/-- `A100381(n+2)²/(n+2)` -/
def P4646965836976421323.Spec : Prop :=
  ∀ n, P4646965836976421323.a n = (A129004 (n + 1) : ℚ)

end A129004

/-! ## A129004.P1054895775750955025

`A038208(∑[n+3])²/(n+2)`
-/

namespace A129004.P1054895775750955025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A129004.P1054895775750955025

namespace A129004

/-- `A038208(∑[n+3])²/(n+2)` -/
def P1054895775750955025.Spec : Prop :=
  ∀ n, P1054895775750955025.a n = (A129004 (n + 1) : ℚ)

end A129004

/-! ## A129004.P4778755951604495240

`A129008(n+1)/A000079(n+1)`
-/

namespace A129004.P4778755951604495240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129008 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A129004.P4778755951604495240

namespace A129004

/-- `A129008(n+1)/A000079(n+1)` -/
def P4778755951604495240.Spec : Prop :=
  ∀ n, P4778755951604495240.a n = (A129004 (n + 1) : ℚ)

end A129004

/-!
# A129005: a(n) = (n^3 + n^2)*5^n.

The programs for A129005, the canonical program `A129005.P12135094817087894389` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129005 has offset 0).

The definition of A129005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3+n²)*5^n` (program `A129005.P12135094817087894389`, by `A129005.P12135094817087894389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129005.P8168745346579265160

`5^n*(1+n)*n²`
-/

namespace A129005.P8168745346579265160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * ((1 + n) * n ^ 2)

end

end A129005.P8168745346579265160

namespace A129005

/-- `5^n*(1+n)*n²` -/
def P8168745346579265160.Spec : Prop :=
  ∀ n, (P8168745346579265160.a n : ℤ) = A129005 n

theorem P8168745346579265160.correct : P8168745346579265160.Spec := by
  intro n
  simp only [A129005, Nat.add_sub_cancel, A129005.P8168745346579265160.a, A129005.P12135094817087894389.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A129005

/-! ## A129005.P12135094817087894389

`(n^3+n²)*5^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129005

/-- `(n^3+n²)*5^n` -/
def P12135094817087894389.Spec : Prop :=
  ∀ n, (P12135094817087894389.a n : ℤ) = A129005 n

theorem P12135094817087894389.correct : P12135094817087894389.Spec := by
  intro n
  simp only [A129005]

end A129005

/-! ## A129005.P5156576024082561396

`lcm(2, 2*n*5^n*∑[n])`
-/

namespace A129005.P5156576024082561396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n * (5 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A129005.P5156576024082561396

namespace A129005

/-- `lcm(2, 2*n*5^n*∑[n])` -/
def P5156576024082561396.Spec : Prop :=
  ∀ n, (P5156576024082561396.a n : ℤ) = A129005 n

end A129005

/-! ## A129005.P3034005565125966534

`n²/2*A212699(n+1)/2`
-/

namespace A129005.P3034005565125966534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 * (A212699 (n + 1) : ℚ) / 2

end

end A129005.P3034005565125966534

namespace A129005

/-- `n²/2*A212699(n+1)/2` -/
def P3034005565125966534.Spec : Prop :=
  ∀ n, P3034005565125966534.a n = (A129005 n : ℚ)

end A129005

/-! ## A129005.P4998411987535658245

`A128791(n)+A128784(n)`
-/

namespace A129005.P4998411987535658245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128791 n + A128784 n

end

end A129005.P4998411987535658245

namespace A129005

/-- `A128791(n)+A128784(n)` -/
def P4998411987535658245.Spec : Prop :=
  ∀ n, P4998411987535658245.a n = A129005 n

end A129005

/-! ## A129005.P17088908961405450291

`abs(A001489(n)*A116156(n))`
-/

namespace A129005.P17088908961405450291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A116156 n|

end

end A129005.P17088908961405450291

namespace A129005

/-- `abs(A001489(n)*A116156(n))` -/
def P17088908961405450291.Spec : Prop :=
  ∀ n, P17088908961405450291.a n = A129005 n

end A129005

/-! ## A129005.P4172906509882658783

`A128791(n)+n*A036291(n)`
-/

namespace A129005.P4172906509882658783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128791 n + (n : ℤ) * A036291 n

end

end A129005.P4172906509882658783

namespace A129005

/-- `A128791(n)+n*A036291(n)` -/
def P4172906509882658783.Spec : Prop :=
  ∀ n, P4172906509882658783.a n = A129005 n

end A129005

/-! ## A129005.P8833839007894907760

`A005843(n+1)*A128784(n)/2`
-/

namespace A129005.P8833839007894907760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) * A128784 n : ℚ) / 2

end

end A129005.P8833839007894907760

namespace A129005

/-- `A005843(n+1)*A128784(n)/2` -/
def P8833839007894907760.Spec : Prop :=
  ∀ n, P8833839007894907760.a n = (A129005 n : ℚ)

end A129005

/-! ## A129005.P5820936669919020685

`A000038(n+1)+(n+1)*A128784(n)`
-/

namespace A129005.P5820936669919020685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (n + 1 : ℤ) * A128784 n

end

end A129005.P5820936669919020685

namespace A129005

/-- `A000038(n+1)+(n+1)*A128784(n)` -/
def P5820936669919020685.Spec : Prop :=
  ∀ n, P5820936669919020685.a n = A129005 n

end A129005

/-! ## A129005.P5483805314640800505

`((n+1)*A128784(n))%A059482(n+1)`
-/

namespace A129005.P5483805314640800505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A128784 n) (A059482 (n + 1))

end

end A129005.P5483805314640800505

namespace A129005

/-- `((n+1)*A128784(n))%A059482(n+1)` -/
def P5483805314640800505.Spec : Prop :=
  ∀ n, P5483805314640800505.a n = A129005 n

end A129005

/-!
# A129006: a(n) = (n^3 + n^2)*6^n.

The programs for A129006, the canonical program `A129006.P2654830530449585545` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129006 has offset 1).

The definition of A129006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+(n+1)²)*6^(n+1)` (program `A129006.P2654830530449585545`, by `A129006.P2654830530449585545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129006.P2654830530449585545

`((n+1)^3+(n+1)²)*6^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129006

/-- `((n+1)^3+(n+1)²)*6^(n+1)` -/
def P2654830530449585545.Spec : Prop :=
  ∀ n, (P2654830530449585545.a n : ℤ) = A129006 (n + 1)

theorem P2654830530449585545.correct : P2654830530449585545.Spec := by
  intro n
  simp only [A129006, Nat.add_sub_cancel]

end A129006

/-! ## A129006.P2483567822772261280

`A128792(n+1)+A128785(n+1)`
-/

namespace A129006.P2483567822772261280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128792 (n + 1) + A128785 (n + 1)

end

end A129006.P2483567822772261280

namespace A129006

/-- `A128792(n+1)+A128785(n+1)` -/
def P2483567822772261280.Spec : Prop :=
  ∀ n, P2483567822772261280.a n = A129006 (n + 1)

end A129006

/-! ## A129006.P14592485927319621725

`lcm(A129002(n+1), A129003(n+1))`
-/

namespace A129006.P14592485927319621725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129002 (n + 1)) (A129003 (n + 1))

end

end A129006.P14592485927319621725

namespace A129006

/-- `lcm(A129002(n+1), A129003(n+1))` -/
def P14592485927319621725.Spec : Prop :=
  ∀ n, (P14592485927319621725.a n : ℤ) = A129006 (n + 1)

end A129006

/-! ## A129006.P17028216436708071703

`A000051(n+1)*A129003(n+1)-A129003(n+1)`
-/

namespace A129006.P17028216436708071703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A129003 (n + 1) - A129003 (n + 1)

end

end A129006.P17028216436708071703

namespace A129006

/-- `A000051(n+1)*A129003(n+1)-A129003(n+1)` -/
def P17028216436708071703.Spec : Prop :=
  ∀ n, P17028216436708071703.a n = A129006 (n + 1)

end A129006

/-! ## A129006.P7780055225767582849

`A128043(n+1)*A129002(n+1)/A119635(n+1)`
-/

namespace A129006.P7780055225767582849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128043 (n + 1) * A129002 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A129006.P7780055225767582849

namespace A129006

/-- `A128043(n+1)*A129002(n+1)/A119635(n+1)` -/
def P7780055225767582849.Spec : Prop :=
  ∀ n, P7780055225767582849.a n = (A129006 (n + 1) : ℚ)

end A129006

/-! ## A129006.P16110215299306648353

`sqrt(A129004(n+1)*A129009(n+1))`
-/

namespace A129006.P16110215299306648353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A129004 (n + 1) * A129009 (n + 1) : ℝ)

end

end A129006.P16110215299306648353

namespace A129006

/-- `sqrt(A129004(n+1)*A129009(n+1))` -/
def P16110215299306648353.Spec : Prop :=
  ∀ n, P16110215299306648353.a n = (A129006 (n + 1) : ℝ)

end A129006

/-!
# A129007: a(n) = (n^3+n^2)*7^n.

The programs for A129007, the canonical program `A129007.P367520848224931029` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129007 has offset 1).

The definition of A129007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+(n+1)²)*7^(n+1)` (program `A129007.P367520848224931029`, by `A129007.P367520848224931029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129007.P367520848224931029

`((n+1)^3+(n+1)²)*7^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129007

/-- `((n+1)^3+(n+1)²)*7^(n+1)` -/
def P367520848224931029.Spec : Prop :=
  ∀ n, (P367520848224931029.a n : ℤ) = A129007 (n + 1)

theorem P367520848224931029.correct : P367520848224931029.Spec := by
  intro n
  simp only [A129007, Nat.add_sub_cancel]

end A129007

/-! ## A129007.P9780598598440719476

`A128793(n+1)+A128786(n+1)`
-/

namespace A129007.P9780598598440719476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128793 (n + 1) + A128786 (n + 1)

end

end A129007.P9780598598440719476

namespace A129007

/-- `A128793(n+1)+A128786(n+1)` -/
def P9780598598440719476.Spec : Prop :=
  ∀ n, P9780598598440719476.a n = A129007 (n + 1)

end A129007

/-!
# A129008: a(n) = (n^3 + n^2)*8^n.

The programs for A129008, the canonical program `A129008.P890738851736368271` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129008 has offset 1).

The definition of A129008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+(n+1)²)*8^(n+1)` (program `A129008.P890738851736368271`, by `A129008.P890738851736368271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129008.P890738851736368271

`((n+1)^3+(n+1)²)*8^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129008

/-- `((n+1)^3+(n+1)²)*8^(n+1)` -/
def P890738851736368271.Spec : Prop :=
  ∀ n, (P890738851736368271.a n : ℤ) = A129008 (n + 1)

theorem P890738851736368271.correct : P890738851736368271.Spec := by
  intro n
  simp only [A129008, Nat.add_sub_cancel]

end A129008

/-! ## A129008.P14746722501097018489

`A128794(n+1)+A128787(n+1)`
-/

namespace A129008.P14746722501097018489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128794 (n + 1) + A128787 (n + 1)

end

end A129008.P14746722501097018489

namespace A129008

/-- `A128794(n+1)+A128787(n+1)` -/
def P14746722501097018489.Spec : Prop :=
  ∀ n, P14746722501097018489.a n = A129008 (n + 1)

end A129008

/-! ## A129008.P13702440791498707792

`A116166(n+1)+n*A116166(n+1)`
-/

namespace A129008.P13702440791498707792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116166 (n + 1) + (n : ℤ) * A116166 (n + 1)

end

end A129008.P13702440791498707792

namespace A129008

/-- `A116166(n+1)+n*A116166(n+1)` -/
def P13702440791498707792.Spec : Prop :=
  ∀ n, P13702440791498707792.a n = A129008 (n + 1)

end A129008

/-! ## A129008.P17268214808959950850

`A128787(n+1)+A036289(n+1)*A128782(n+1)`
-/

namespace A129008.P17268214808959950850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128787 (n + 1) + A036289 (n + 1) * A128782 (n + 1)

end

end A129008.P17268214808959950850

namespace A129008

/-- `A128787(n+1)+A036289(n+1)*A128782(n+1)` -/
def P17268214808959950850.Spec : Prop :=
  ∀ n, P17268214808959950850.a n = A129008 (n + 1)

end A129008

/-! ## A129008.P11992763939334697988

`A000051(n+1)*A129004(n+1)-A129004(n+1)`
-/

namespace A129008.P11992763939334697988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A129004 (n + 1) - A129004 (n + 1)

end

end A129008.P11992763939334697988

namespace A129008

/-- `A000051(n+1)*A129004(n+1)-A129004(n+1)` -/
def P11992763939334697988.Spec : Prop :=
  ∀ n, P11992763939334697988.a n = A129008 (n + 1)

end A129008

/-! ## A129008.P4506166249198160589

`A129004(n+1)²/A129002(n+1)`
-/

namespace A129008.P4506166249198160589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129004 (n + 1) ^ 2 : ℚ) / (A129002 (n + 1) : ℚ)

end

end A129008.P4506166249198160589

namespace A129008

/-- `A129004(n+1)²/A129002(n+1)` -/
def P4506166249198160589.Spec : Prop :=
  ∀ n, P4506166249198160589.a n = (A129008 (n + 1) : ℚ)

end A129008

/-! ## A129008.P4993700510686886428

`A128048(n+1)*A129002(n+1)/A119635(n+1)`
-/

namespace A129008.P4993700510686886428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128048 (n + 1) * A129002 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A129008.P4993700510686886428

namespace A129008

/-- `A128048(n+1)*A129002(n+1)/A119635(n+1)` -/
def P4993700510686886428.Spec : Prop :=
  ∀ n, P4993700510686886428.a n = (A129008 (n + 1) : ℚ)

end A129008

/-!
# A129009: a(n) = (n^3 + n^2)*9^n.

The programs for A129009, the canonical program `A129009.P1493963812986752788` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129009 has offset 1).

The definition of A129009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+(n+1)²)*9^(n+1)` (program `A129009.P1493963812986752788`, by `A129009.P1493963812986752788.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129009.P1493963812986752788

`((n+1)^3+(n+1)²)*9^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129009

/-- `((n+1)^3+(n+1)²)*9^(n+1)` -/
def P1493963812986752788.Spec : Prop :=
  ∀ n, (P1493963812986752788.a n : ℤ) = A129009 (n + 1)

theorem P1493963812986752788.correct : P1493963812986752788.Spec := by
  intro n
  simp only [A129009, Nat.add_sub_cancel]

end A129009

/-! ## A129009.P18373265181683616856

`A128969(n+1)+A116176(n+1)`
-/

namespace A129009.P18373265181683616856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128969 (n + 1) + A116176 (n + 1)

end

end A129009.P18373265181683616856

namespace A129009

/-- `A128969(n+1)+A116176(n+1)` -/
def P18373265181683616856.Spec : Prop :=
  ∀ n, P18373265181683616856.a n = A129009 (n + 1)

end A129009

/-! ## A129009.P5173372664482953869

`A128795(n+1)+A128788(n+1)`
-/

namespace A129009.P5173372664482953869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128795 (n + 1) + A128788 (n + 1)

end

end A129009.P5173372664482953869

namespace A129009

/-- `A128795(n+1)+A128788(n+1)` -/
def P5173372664482953869.Spec : Prop :=
  ∀ n, P5173372664482953869.a n = A129009 (n + 1)

end A129009

/-! ## A129009.P6818760959371808154

`A116138(n+1)²/(n+2)`
-/

namespace A129009.P6818760959371808154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 (n + 1) ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A129009.P6818760959371808154

namespace A129009

/-- `A116138(n+1)²/(n+2)` -/
def P6818760959371808154.Spec : Prop :=
  ∀ n, P6818760959371808154.a n = (A129009 (n + 1) : ℚ)

end A129009

/-! ## A129009.P18403893055233963507

`A128074(n+1)*A129002(n+1)/A119635(n+1)`
-/

namespace A129009.P18403893055233963507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128074 (n + 1) * A129002 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A129009.P18403893055233963507

namespace A129009

/-- `A128074(n+1)*A129002(n+1)/A119635(n+1)` -/
def P18403893055233963507.Spec : Prop :=
  ∀ n, P18403893055233963507.a n = (A129009 (n + 1) : ℚ)

end A129009

/-! ## A129009.P10086421800248192902

`A129003(n+1)*A129006(n+1)/A129002(n+1)`
-/

namespace A129009.P10086421800248192902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129003 (n + 1) * A129006 (n + 1) : ℚ) / (A129002 (n + 1) : ℚ)

end

end A129009.P10086421800248192902

namespace A129009

/-- `A129003(n+1)*A129006(n+1)/A129002(n+1)` -/
def P10086421800248192902.Spec : Prop :=
  ∀ n, P10086421800248192902.a n = (A129009 (n + 1) : ℚ)

end A129009

/-! ## A129009.P16630165270088182729

`A129006(n+1)²/A129004(n+1)`
-/

namespace A129009.P16630165270088182729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129006 (n + 1) ^ 2 : ℚ) / (A129004 (n + 1) : ℚ)

end

end A129009.P16630165270088182729

namespace A129009

/-- `A129006(n+1)²/A129004(n+1)` -/
def P16630165270088182729.Spec : Prop :=
  ∀ n, P16630165270088182729.a n = (A129009 (n + 1) : ℚ)

end A129009

/-!
# A129011: a(n) = floor(n^(4/3)).

The programs for A129011, the canonical program `A129011.P7203217157660561188` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129011 has offset 0).

The definition of A129011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129011.P7203217157660561188

`floor(n^(4/3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129011

/-- `floor(n^(4/3))` -/
def P7203217157660561188.Spec : Prop :=
  ∀ n, P7203217157660561188.a n = A129011 n

theorem P7203217157660561188.correct : P7203217157660561188.Spec := by
  intro n
  simp only [A129011]

end A129011

/-! ## A129011.P15959972144174558300

`A135676(abs(1-n)+1)+n`
-/

namespace A129011.P15959972144174558300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135676 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

end

end A129011.P15959972144174558300

namespace A129011

/-- `A135676(abs(1-n)+1)+n` -/
def P15959972144174558300.Spec : Prop :=
  ∀ n, P15959972144174558300.a n = A129011 n

end A129011

/-! ## A129011.P15737213368778801145

`ceil(root(A000290(n)²+1, 3))-1`
-/

namespace A129011.P15737213368778801145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000290 n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A129011.P15737213368778801145

namespace A129011

/-- `ceil(root(A000290(n)²+1, 3))-1` -/
def P15737213368778801145.Spec : Prop :=
  ∀ n, P15737213368778801145.a n = A129011 n

end A129011

/-! ## A129011.P14691498568821950294

`A135676(A000038(n)+n)%A037165(n+1)+n`
-/

namespace A129011.P14691498568821950294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135676 (A000038 n + (n : ℤ)).toNat) (A037165 (n + 1)) + (n : ℤ)

end

end A129011.P14691498568821950294

namespace A129011

/-- `A135676(A000038(n)+n)%A037165(n+1)+n` -/
def P14691498568821950294.Spec : Prop :=
  ∀ n, P14691498568821950294.a n = A129011 n

end A129011

/-! ## A129011.P15270450967717923023

`n+A135676(A233583(n+1))`
-/

namespace A129011.P15270450967717923023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A135676 (A233583 (n + 1)).toNat

end

end A129011.P15270450967717923023

namespace A129011

/-- `n+A135676(A233583(n+1))` -/
def P15270450967717923023.Spec : Prop :=
  ∀ n, P15270450967717923023.a n = A129011 n

end A129011

/-! ## A129011.P8189349132675531291

`A100196(n²)`
-/

namespace A129011.P8189349132675531291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (n ^ 2)

end

end A129011.P8189349132675531291

namespace A129011

/-- `A100196(n²)` -/
def P8189349132675531291.Spec : Prop :=
  ∀ n, P8189349132675531291.a n = A129011 n

end A129011

/-! ## A129011.P8183067567474983919

`A077113(n²)-1`
-/

namespace A129011.P8183067567474983919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (n ^ 2) - 1

end

end A129011.P8183067567474983919

namespace A129011

/-- `A077113(n²)-1` -/
def P8183067567474983919.Spec : Prop :=
  ∀ n, P8183067567474983919.a n = A129011 n

end A129011

/-! ## A129011.P15141244899119887985

`n²-A135671(A253909(n))`
-/

namespace A129011.P15141244899119887985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A135671 (A253909 n).toNat

end

end A129011.P15141244899119887985

namespace A129011

/-- `n²-A135671(A253909(n))` -/
def P15141244899119887985.Spec : Prop :=
  ∀ n, P15141244899119887985.a n = A129011 n

end A129011

/-! ## A129011.P2016963629140838345

`record[A100196(A056239(n+1)^2)]`
-/

namespace A129011.P2016963629140838345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A056239 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129011.P2016963629140838345

namespace A129011

/-- `record[A100196(A056239(n+1)^2)]` -/
def P2016963629140838345.Spec : Prop :=
  ∀ n, P2016963629140838345.a n = A129011 n

end A129011

/-! ## A129011.P8732054932360067450

`A054846(A002821(A100196(n*n)))`
-/

namespace A129011.P8732054932360067450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A002821 (A100196 (n * n)).toNat).toNat

end

end A129011.P8732054932360067450

namespace A129011

/-- `A054846(A002821(A100196(n*n)))` -/
def P8732054932360067450.Spec : Prop :=
  ∀ n, P8732054932360067450.a n = A129011 n

end A129011

/-! ## A129011.P18311856698488655285

`∑{d}[A100196(A000290(n)), A000010(#)]`
-/

namespace A129011.P18311856698488655285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129011.P18311856698488655285

namespace A129011

/-- `∑{d}[A100196(A000290(n)), A000010(#)]` -/
def P18311856698488655285.Spec : Prop :=
  ∀ n, P18311856698488655285.a n = A129011 n

end A129011

/-! ## A129011.P4363512487946961179

`A100196(A000290(n))%A000040(n+1)`
-/

namespace A129011.P4363512487946961179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100196 (A000290 n).toNat) (A000040 (n + 1))

end

end A129011.P4363512487946961179

namespace A129011

/-- `A100196(A000290(n))%A000040(n+1)` -/
def P4363512487946961179.Spec : Prop :=
  ∀ n, P4363512487946961179.a n = A129011 n

end A129011

/-!
# A129012: Isomer numbers for the constant-isomer series: the Kekulean even carbon series (ordinary and TRS benzenoid hydrocarbons).

The programs for A129012, there is no canonical definition to state claims against.
-/

/-! ## A129012.P14250708497549783855

`A129016(round(2*n/3))`
-/

namespace A129012.P14250708497549783855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129016 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A129012.P14250708497549783855

/-! ## A129012.P2809295188978870603

`or(char[1], A129016(A004396(n)))`
-/

namespace A129012.P2809295188978870603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A129016 (A004396 n).toNat)

end

end A129012.P2809295188978870603

/-! ## A129012.P11959528175029718176

`A129016(A004396(n))^A178334(n)`
-/

namespace A129012.P11959528175029718176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129016 (A004396 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A129012.P11959528175029718176

/-! ## A129012.P17407232889325688499

`A129016(A004396(n))%A002011(n)`
-/

namespace A129012.P17407232889325688499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129016 (A004396 n).toNat) (A002011 n)

end

end A129012.P17407232889325688499

/-! ## A129012.P13653143451925898271

`or(A129016(A004396(n)), A280618(n))`
-/

namespace A129012.P13653143451925898271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129016 (A004396 n).toNat) (A280618 n)

end

end A129012.P13653143451925898271

/-!
# A129013: A129012(3n).

The programs for A129013, there is no canonical definition to state claims against.
-/

/-! ## A129013.P12590282019044391041

`A129012(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129013.P12590282019044391041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129012 (3 * n)

end

end A129013.P12590282019044391041

/-! ## A129013.P18213624118828472159

`A129016(2*n)`
-/

namespace A129013.P18213624118828472159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129016 (2 * n)

end

end A129013.P18213624118828472159

/-! ## A129013.P10182035709418156504

`record[A129016(n)/(-1)^n]`
-/

namespace A129013.P10182035709418156504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129016 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129013.P10182035709418156504

/-! ## A129013.P7869352086678113584

`record[A129016((n-1)^(n%2))]`
-/

namespace A129013.P7869352086678113584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129016 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129013.P7869352086678113584

/-!
# A129014: A129012(3n+1).

The programs for A129014, there is no canonical definition to state claims against.
-/

/-! ## A129014.P4614067869008683251

`A129012(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129014.P4614067869008683251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129012 (3 * n + 1)

end

end A129014.P4614067869008683251

/-! ## A129014.P5229749609969659433

`A129016(Δ[n²])`
-/

namespace A129014.P5229749609969659433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129016 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129014.P5229749609969659433

/-! ## A129014.P1660398758700883231

`record[A129016(xor(1, n))]`
-/

namespace A129014.P1660398758700883231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129016 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129014.P1660398758700883231

/-! ## A129014.P12628861519115312550

`A129015(n)+A129013(n)`
-/

namespace A129014.P12628861519115312550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129015 n + A129013 n

end

end A129014.P12628861519115312550

/-!
# A129015: A129014(n) - A129013(n).

The programs for A129015, there is no canonical definition to state claims against.
-/

/-! ## A129015.P10952801612488270957

`A129014(n)-A129013(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129015.P10952801612488270957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129014 n - A129013 n

end

end A129015.P10952801612488270957

/-! ## A129015.P10652598713278090236

`record[Δ[Δ[-A129012(n)]]]`
-/

namespace A129015.P10652598713278090236
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129015.P10652598713278090236

/-! ## A129015.P6895879798430901287

`record[Δ[-A129016(xor(1, n))]]`
-/

namespace A129015.P6895879798430901287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129016 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129015.P6895879798430901287

/-! ## A129015.P9570880703556611511

`A129014(n)-A129016(2*n)`
-/

namespace A129015.P9570880703556611511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129014 n - A129016 (2 * n)

end

end A129015.P9570880703556611511

/-!
# A129016: A129012 with the third term from each triple omitted.

The programs for A129016, there is no canonical definition to state claims against.
-/

/-! ## A129016.P13783005959847387194

`A129012(floor(3*n/2))`
-/

namespace A129016.P13783005959847387194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129012 ⌊3 * ((n : ℚ) / 2)⌋.toNat

end

end A129016.P13783005959847387194

/-! ## A129016.P3971980456488661643

`A129012(ceil(3*n/2))+char[17]`
-/

namespace A129016.P3971980456488661643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129012 ⌈3 * ((n : ℚ) / 2)⌉.toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129016.P3971980456488661643

/-! ## A129016.P16442967185779298969

`A000027(A129012(comp[3*n-1]))`
-/

namespace A129016.P16442967185779298969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A129012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A129016.P16442967185779298969

/-! ## A129016.P8439561244574419046

`∑{d}[A129012(ceil(3*n/2)), A000010(#)]`
-/

namespace A129016.P8439561244574419046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129012 ⌈3 * ((n : ℚ) / 2)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129016.P8439561244574419046

/-! ## A129016.P12142875182495069649

`A007318(∑[n])*A129012(ceil(3*n/2))`
-/

namespace A129016.P12142875182495069649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A129012 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A129016.P12142875182495069649

/-!
# A129017: Isomer numbers for the constant-isomer series: the monradical, diradical, triradical, tetraradical, etc. series.

The programs for A129017, there is no canonical definition to state claims against.
-/

/-! ## A129017.P17070634735813607455

`A129021(round(2*n/3))`
-/

namespace A129017.P17070634735813607455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129021 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A129017.P17070634735813607455

/-! ## A129017.P18372954409352981453

`or(char[1], A129021(A004396(n)))`
-/

namespace A129017.P18372954409352981453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A129021 (A004396 n).toNat)

end

end A129017.P18372954409352981453

/-! ## A129017.P5001912016745419626

`A129021(A004396(n))^A178334(n)`
-/

namespace A129017.P5001912016745419626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129021 (A004396 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A129017.P5001912016745419626

/-! ## A129017.P8249331120266565398

`A129021(A004396(n))%A002011(n)`
-/

namespace A129017.P8249331120266565398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129021 (A004396 n).toNat) (A002011 n)

end

end A129017.P8249331120266565398

/-! ## A129017.P524408051471865818

`∏{d}[A129021(A004396(n)), A014963(#)]`
-/

namespace A129017.P524408051471865818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129021 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A129017.P524408051471865818

/-!
# A129018: A129017(3n).

The programs for A129018, there is no canonical definition to state claims against.
-/

/-! ## A129018.P6322591462955445693

`A129017(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129018.P6322591462955445693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129017 (3 * n)

end

end A129018.P6322591462955445693

/-! ## A129018.P11282703744681866854

`A129021(2*n)`
-/

namespace A129018.P11282703744681866854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129021 (2 * n)

end

end A129018.P11282703744681866854

/-! ## A129018.P6005585247026463857

`∏{e}[4^n, A129021(#)]`
-/

namespace A129018.P6005585247026463857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A129021 (Nat.factorization (f1 n) p)

end

end A129018.P6005585247026463857

/-!
# A129019: a(n) = A129017(3*n+1).

The programs for A129019, there is no canonical definition to state claims against.
-/

/-! ## A129019.P6209023517336551878

`A129017(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129019.P6209023517336551878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129017 (3 * n + 1)

end

end A129019.P6209023517336551878

/-! ## A129019.P17822398415275969938

`A129021(Δ[n²])`
-/

namespace A129019.P17822398415275969938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129021 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129019.P17822398415275969938

/-! ## A129019.P6356476997704004847

`record[A129021(xor(1, n))]`
-/

namespace A129019.P6356476997704004847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129021 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129019.P6356476997704004847

/-!
# A129020: A129019(n)-A129018(n).

The programs for A129020, there is no canonical definition to state claims against.
-/

/-! ## A129020.P16780237152238680069

`A129019(n)-A129018(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129020.P16780237152238680069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129019 n - A129018 n

end

end A129020.P16780237152238680069

/-! ## A129020.P16357306420063358336

`record[Δ[Δ[-A129017(n)]]]`
-/

namespace A129020.P16357306420063358336
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129020.P16357306420063358336

/-! ## A129020.P5280687107021932007

`A396638(n)-A116728(n+1)`
-/

namespace A129020.P5280687107021932007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396638 n - A116728 (n + 1)

end

end A129020.P5280687107021932007

/-!
# A129021: A129017 with the third term from each triple omitted.

The programs for A129021, there is no canonical definition to state claims against.
-/

/-! ## A129021.P5029976056845130502

`A129017(ceil(3*n/2))`
-/

namespace A129021.P5029976056845130502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129017 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A129021.P5029976056845130502

/-! ## A129021.P15685305877118069371

`∏{e}[-∏[-(2^n)%6], A129017(#)]`
-/

namespace A129021.P15685305877118069371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 ^ n % 6 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A129017 (Nat.factorization (f1 n).natAbs p)

end

end A129021.P15685305877118069371

/-! ## A129021.P7394898932394308490

`((-1)^n)²*A129017(∑[n%2]+n)`
-/

namespace A129021.P7394898932394308490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A129017 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A129021.P7394898932394308490

/-! ## A129021.P13666116567625610538

`((-1)^n)²*A129017(∑[and(1, n)]+n)`
-/

namespace A129021.P13666116567625610538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A129017 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A129021.P13666116567625610538

/-! ## A129021.P18279527312489364215

`((-1)^n)²*A129017(n-∑[-n%2])`
-/

namespace A129021.P18279527312489364215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A129017 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129021.P18279527312489364215

/-!
# A129024: The first 8 values are predefined, the remaining set to a(n) = 24*prime(n).

The programs for A129024, there is no canonical definition to state claims against.
-/

/-! ## A129024.P3664006991321095543

`∩[A375750(n+1), A356879(n)]`
-/

namespace A129024.P3664006991321095543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356879 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129024.P3664006991321095543

/-! ## A129024.P2066820283753707269

`A006156(n)*A329509(A131451(n+1))`
-/

namespace A129024.P2066820283753707269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006156 n * A329509 (A131451 (n + 1)).toNat

end

end A129024.P2066820283753707269

/-! ## A129024.P879918674943845231

`A191414(eq[A008624(n), A080342(n+1)])`
-/

namespace A129024.P879918674943845231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129024.P879918674943845231

/-!
# A129025: The first 8 values are predefined, the remaining set to a(n) = 48*prime(n)+n+2.

The programs for A129025, there is no canonical definition to state claims against.
-/

/-! ## A129025.P8056182211736044518

`A096908(A026424(3*n+5)*A211682(n+4))`
-/

namespace A129025.P8056182211736044518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096908 (A026424 (3 * n + 5) * A211682 (n + 4)).toNat

end

end A129025.P8056182211736044518

/-!
# A129026: a(n) = (1/2)*(n^4 + 11*n^3 + 53*n^2 + 97*n + 54).

The programs for A129026, there is no canonical definition to state claims against.
-/

/-! ## A129026.P4848538768302459194

`n*(n+1)*((n-1)²+8*(n-1)+27)/2`
-/

namespace A129026.P4848538768302459194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((((n : ℤ) - 1) ^ 2 + 8 * ((n : ℤ) - 1) + 27 : ℚ) / 2))

end

end A129026.P4848538768302459194

/-! ## A129026.P15592915158680410220

`1/2*((n-1)^4+11*(n-1)^3+53*(n-1)²+97*(n-1)+54)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129026.P15592915158680410220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (((n : ℤ) - 1) ^ 4 + 11 * ((n : ℤ) - 1) ^ 3 + 53 * ((n : ℤ) - 1) ^ 2 + 97 * ((n : ℤ) - 1) + 54 : ℚ)

end

end A129026.P15592915158680410220

/-! ## A129026.P5852435564673098471

`A083374(n+1)+3*n*∑[n+3]`
-/

namespace A129026.P5852435564673098471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + ((3 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A129026.P5852435564673098471

/-! ## A129026.P9187047065574295552

`A000537(n)+(A000217(n+5)+5)*A000217(n)`
-/

namespace A129026.P9187047065574295552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (A000217 (n + 5) + 5) * A000217 n

end

end A129026.P9187047065574295552

/-! ## A129026.P8430246538071165063

`n*A067728(n+1)+A000217(n)*A005563(n)`
-/

namespace A129026.P8430246538071165063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067728 (n + 1) + A000217 n * A005563 n

end

end A129026.P8430246538071165063

/-! ## A129026.P9637626069850167599

`(A000096(n+2)+5)*(n²+n)-A002411(n)`
-/

namespace A129026.P9637626069850167599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 2) + 5) * (n ^ 2 + n : ℤ) - A002411 n

end

end A129026.P9637626069850167599

/-! ## A129026.P131186970627803547

`A000217(A005563(n))+∑[3*A059845(n)]`
-/

namespace A129026.P131186970627803547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A005563 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129026.P131186970627803547

/-!
# A129027: Odd-indexed terms of A129026.

The programs for A129027, the canonical program `A129027.P3881428370046783663` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129027 has offset 0).

The definition of A129027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129027.P3881428370046783663

`4*n*(5+13*n+7*n²+2*n^3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129027

/-- `4*n*(5+13*n+7*n²+2*n^3)` -/
def P3881428370046783663.Spec : Prop :=
  ∀ n, (P3881428370046783663.a n : ℤ) = A129027 n

theorem P3881428370046783663.correct : P3881428370046783663.Spec := by
  intro n
  simp only [A129027]

end A129027

/-! ## A129027.P5886632471906574874

`lcm(2, 4*A129028(n))`
-/

namespace A129027.P5886632471906574874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (4 * A129028 n)

end

end A129027.P5886632471906574874

namespace A129027

/-- `lcm(2, 4*A129028(n))` -/
def P5886632471906574874.Spec : Prop :=
  ∀ n, (P5886632471906574874.a n : ℤ) = A129027 n

end A129027

/-! ## A129027.P18207057633120484228

`lcm(A008574(n), A129028(n))`
-/

namespace A129027.P18207057633120484228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008574 n) (A129028 n)

end

end A129027.P18207057633120484228

namespace A129027

/-- `lcm(A008574(n), A129028(n))` -/
def P18207057633120484228.Spec : Prop :=
  ∀ n, (P18207057633120484228.a n : ℤ) = A129027 n

end A129027

/-! ## A129027.P16184450898540984571

`A033586(n)+A003682(n+2)*A033586(n)`
-/

namespace A129027.P16184450898540984571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A003682 (n + 2) * A033586 n

end

end A129027.P16184450898540984571

namespace A129027

/-- `A033586(n)+A003682(n+2)*A033586(n)` -/
def P16184450898540984571.Spec : Prop :=
  ∀ n, P16184450898540984571.a n = A129027 n

end A129027

/-!
# A129028: A129027(n)/4.

The programs for A129028, the canonical program `A129028.P5400378385010260057` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129028 has offset 0).

The definition of A129028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129028.P5400378385010260057

`n*(5+13*n+7*n²+2*n^3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129028

/-- `n*(5+13*n+7*n²+2*n^3)` -/
def P5400378385010260057.Spec : Prop :=
  ∀ n, (P5400378385010260057.a n : ℤ) = A129028 n

theorem P5400378385010260057.correct : P5400378385010260057.Spec := by
  intro n
  simp only [A129028]

end A129028

/-! ## A129028.P3335923844663409123

`A129027(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129028.P3335923844663409123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129027 n : ℚ) / 4

end

end A129028.P3335923844663409123

namespace A129028

/-- `A129027(n)/4` -/
def P3335923844663409123.Spec : Prop :=
  ∀ n, P3335923844663409123.a n = (A129028 n : ℚ)

end A129028

/-! ## A129028.P5216885838706734885

`A000466(n)+(n+1)²*A000384(n+1)`
-/

namespace A129028.P5216885838706734885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n + ((n + 1) ^ 2 : ℤ) * A000384 (n + 1)

end

end A129028.P5216885838706734885

namespace A129028

/-- `A000466(n)+(n+1)²*A000384(n+1)` -/
def P5216885838706734885.Spec : Prop :=
  ∀ n, P5216885838706734885.a n = A129028 n

end A129028

/-! ## A129028.P7547268558767766041

`A000217(2*n)+A000124(n+1)*A002378(2*n)`
-/

namespace A129028.P7547268558767766041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) + A000124 (n + 1) * A002378 (2 * n)

end

end A129028.P7547268558767766041

namespace A129028

/-- `A000217(2*n)+A000124(n+1)*A002378(2*n)` -/
def P7547268558767766041.Spec : Prop :=
  ∀ n, P7547268558767766041.a n = A129028 n

end A129028

/-! ## A129028.P17239898044784872111

`A045943(2*n)+A000217(2*n)*A002378(n+1)`
-/

namespace A129028.P17239898044784872111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (2 * n) + A000217 (2 * n) * A002378 (n + 1)

end

end A129028.P17239898044784872111

namespace A129028

/-- `A045943(2*n)+A000217(2*n)*A002378(n+1)` -/
def P17239898044784872111.Spec : Prop :=
  ∀ n, P17239898044784872111.a n = A129028 n

end A129028

/-!
# A129029: a(n) = 8*n^4+44*n^3+106*n^2+100*n+30.

The programs for A129029, there is no canonical definition to state claims against.
-/

/-! ## A129029.P10190602850694107813

`2*n*(4*(n-1)^3+18*(n-1)²+35*(n-1)+15)`
-/

namespace A129029.P10190602850694107813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (4 * ((n : ℤ) - 1) ^ 3 + 18 * ((n : ℤ) - 1) ^ 2 + 35 * ((n : ℤ) - 1) + 15))

end

end A129029.P10190602850694107813

/-! ## A129029.P8484177698463856908

`A153796(n)+A000217(2*n+1)*(2*n)²`
-/

namespace A129029.P8484177698463856908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n + A000217 (2 * n + 1) * ((2 * n) ^ 2 : ℤ)

end

end A129029.P8484177698463856908

/-!
# A129030: Number of n-node triangulations of the torus S_1 in which every node has degree >= 3.

The programs for A129030, there is no canonical definition to state claims against.
-/

/-! ## A129030.P11045128836994110408

`A337250(A194658(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A129030.P11045128836994110408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A337250 (A194658 (a (n - 1)).toNat).toNat

end

end A129030.P11045128836994110408

/-!
# A129031: Number of n-node triangulations of the torus S_1 in which every node has degree >= 4.

The programs for A129031, there is no canonical definition to state claims against.
-/

/-! ## A129031.P18029486200965938940

`A338843(A236955(n)+A001654(n))`
-/

namespace A129031.P18029486200965938940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338843 (A236955 n + A001654 n).toNat

end

end A129031.P18029486200965938940

/-!
# A129032: Number of n-node triangulations of the torus S_1 in which every node has degree >= 5.

The programs for A129032, there is no canonical definition to state claims against.
-/

/-! ## A129032.P14095279765840694053

`A111852(A055422(n))`
-/

namespace A129032.P14095279765840694053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111852 (A055422 n).toNat

end

end A129032.P14095279765840694053

/-! ## A129032.P10176655073684926445

`round(A124591(A326346(n+1))/10)`
-/

namespace A129032.P10176655073684926445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A124591 (A326346 (n + 1)).toNat : ℚ) / 10)

end

end A129032.P10176655073684926445

/-!
# A129033: Number of n-node triangulations of the torus S_1 in which every node has degree >= 6.

The programs for A129033, the canonical program `A129033.P13034651442379249591` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129033 has offset 6).

The definition of A129033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129033.P13034651442379249591

`A003051(n+6)-A131743(n+5)-2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129033

/-- `A003051(n+6)-A131743(n+5)-2` -/
def P13034651442379249591.Spec : Prop :=
  ∀ n, P13034651442379249591.a n = A129033 (n + 6)

theorem P13034651442379249591.correct : P13034651442379249591.Spec := by
  intro n
  simp only [A129033, Nat.add_sub_cancel]

end A129033

/-! ## A129033.P282821723151286157

`A165074(A258730(n+1))-2`
-/

namespace A129033.P282821723151286157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 (A258730 (n + 1)).toNat - 2

end

end A129033.P282821723151286157

namespace A129033

/-- `A165074(A258730(n+1))-2` -/
def P282821723151286157.Spec : Prop :=
  ∀ n, P282821723151286157.a n = A129033 (n + 6)

end A129033

/-!
# A129043: Number of n-node triangulations of the projective plane N_1 in which every node has degree >= 3.

The programs for A129043, there is no canonical definition to state claims against.
-/

/-! ## A129043.P7221048439303613705

`A001065(A342603(n)+A305550(n))`
-/

namespace A129043.P7221048439303613705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A342603 n + A305550 n).toNat

end

end A129043.P7221048439303613705

/-! ## A129043.P7941572467530619727

`A008624(A094388(n)*A111277(n))`
-/

namespace A129043.P7941572467530619727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A094388 n * A111277 n).toNat

end

end A129043.P7941572467530619727

/-!
# A129044: Number of n-node triangulations of the projective plane N_1 in which every node has degree >= 4.

The programs for A129044, there is no canonical definition to state claims against.
-/

/-! ## A129044.P9386940338039975382

`A002264(A324591(n)+A152718(n))`
-/

namespace A129044.P9386940338039975382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A324591 n + A152718 n).toNat

end

end A129044.P9386940338039975382

/-! ## A129044.P5926395424836216976

`A002264(A152718(n)-(A002264(n)-A324591(n)))`
-/

namespace A129044.P5926395424836216976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A152718 n - (A002264 n - A324591 n)).toNat

end

end A129044.P5926395424836216976

/-!
# A129045: Number of n-node triangulations of the projective plane N_1 in which every node has degree >= 5.

The programs for A129045, there is no canonical definition to state claims against.
-/

/-! ## A129045.P16574301436172532435

`floor(A134986(A107031(n))/3)`
-/

namespace A129045.P16574301436172532435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134986 (A107031 n).toNat : ℚ) / 3⌋

end

end A129045.P16574301436172532435

/-! ## A129045.P4908681483424463365

`A167157(A001371(n+1)+2)`
-/

namespace A129045.P4908681483424463365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167157 (A001371 (n + 1) + 2).toNat

end

end A129045.P4908681483424463365

/-! ## A129045.P11811785345193983522

`A008615(∑[∏{e}[2^n, A321994(#)]])`
-/

namespace A129045.P11811785345193983522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A321994 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129045.P11811785345193983522

/-! ## A129045.P120863743712955013

`A391623(A080457(2*a(n-2)-a(n-4)))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A129045.P120863743712955013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n a =>
  A391623 (A080457 (2 * a (n - 2) - a (n - 4)).toNat).toNat

end

end A129045.P120863743712955013

/-! ## A129045.P15353201572171458817

`A113218(A113217(n)+A065497(n))`
-/

namespace A129045.P15353201572171458817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A113217 n + A065497 n).toNat

end

end A129045.P15353201572171458817

/-!
# A129048: Number of n-node triangulations of the Klein bottle N_2 in which every node has degree >= 5.

The programs for A129048, there is no canonical definition to state claims against.
-/

/-! ## A129048.P14605628146693013845

`A252679(n+3)%A058787(A087190(3*n+4))`
-/

namespace A129048.P14605628146693013845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252679 (n + 3)) (A058787 (A087190 (3 * n + 4)).toNat)

end

end A129048.P14605628146693013845

/-!
# A129062: T(n, k) = [x^k] Sum_{k=0..n} Stirling2(n, k)*RisingFactorial(x, k), triangle read by rows, for n >= 0 and 0 <= k <= n.

The programs for A129062, there is no canonical definition to state claims against.
-/

/-! ## A129062.P8529089115869631181

`A122354(A069770(A271703(n)))`
-/

namespace A129062.P8529089115869631181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (A069770 (A271703 n).toNat).toNat

end

end A129062.P8529089115869631181

/-! ## A129062.P244040075652805631

`A271703(n)+A000122(A022115(n))`
-/

namespace A129062.P244040075652805631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 n + A000122 (A022115 n).toNat

end

end A129062.P244040075652805631

/-! ## A129062.P3042043450355837409

`A271703(n)+A102683(A022345(n))`
-/

namespace A129062.P3042043450355837409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 n + A102683 (A022345 n).toNat

end

end A129062.P3042043450355837409

/-! ## A129062.P10266463948477478418

`A241062(A113081(n))+A111184(n)`
-/

namespace A129062.P10266463948477478418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241062 (A113081 n).toNat + A111184 n

end

end A129062.P10266463948477478418

/-! ## A129062.P16354348667178138365

`A325836(A268435(n))+A271703(n)`
-/

namespace A129062.P16354348667178138365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 (A268435 n).toNat + A271703 n

end

end A129062.P16354348667178138365

/-!
# A129063: Third column (m=2) of triangle A129062 and second column of triangle A079641.

The programs for A129063, there is no canonical definition to state claims against.
-/

/-! ## A129063.P5667962085960903584

`A052833(n+2)/2`
-/

namespace A129063.P5667962085960903584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052833 (n + 2) : ℚ) / 2

end

end A129063.P5667962085960903584

/-! ## A129063.P2075808544858989607

`A079641(∑[n+1]+2)`
-/

namespace A129063.P2075808544858989607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079641 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A129063.P2075808544858989607

/-! ## A129063.P7242498981109741986

`A129062(∑[n+2]+3)`
-/

namespace A129063.P7242498981109741986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A129063.P7242498981109741986

/-! ## A129063.P10532655136002193711

`record[A129062(A000124(n)+1)]`
-/

namespace A129063.P10532655136002193711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129063.P10532655136002193711

/-! ## A129063.P975859541320525234

`(2-A000007(n))*A176277(n+1)`
-/

namespace A129063.P975859541320525234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A176277 (n + 1)

end

end A129063.P975859541320525234

/-! ## A129063.P11681656861472446336

`A129062(A340266(n+1))^A178334(n)`
-/

namespace A129063.P11681656861472446336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129062 (A340266 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A129063.P11681656861472446336

/-! ## A129063.P16831489634462472634

`A020639(A004275(n+1))*A176277(n+1)`
-/

namespace A129063.P16831489634462472634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004275 (n + 1)).toNat * A176277 (n + 1)

end

end A129063.P16831489634462472634

/-! ## A129063.P3429684115312118981

`A020639(A009195(2*(n+1)))*A176277(n+1)`
-/

namespace A129063.P3429684115312118981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A009195 (2 * (n + 1))).toNat * A176277 (n + 1)

end

end A129063.P3429684115312118981

/-! ## A129063.P7025331095209934758

`A176277(n+1)+A176277(1-A000007(n)+n)`
-/

namespace A129063.P7025331095209934758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176277 (n + 1) + A176277 (1 - A000007 n + (n : ℤ)).toNat

end

end A129063.P7025331095209934758

/-! ## A129063.P7302324476579207649

`A004275(2*n+1)/A004275(n+1)*A176277(n+1)`
-/

namespace A129063.P7302324476579207649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * n + 1) : ℚ) / (A004275 (n + 1) : ℚ) * (A176277 (n + 1) : ℚ)

end

end A129063.P7302324476579207649

/-!
# A129064: Fourth column (m=3) of triangle A129062 and third column of triangle A079641.

The programs for A129064, there is no canonical definition to state claims against.
-/

/-! ## A129064.P14832487674205058803

`A079641(∑[n+2]+4)`
-/

namespace A129064.P14832487674205058803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079641 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A129064.P14832487674205058803

/-! ## A129064.P5146082174754923678

`A129062(∑[n+3]+6)`
-/

namespace A129064.P5146082174754923678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A129064.P5146082174754923678

/-! ## A129064.P1132780849903755295

`record[A129062(n+4)-A357541(n)]`
-/

namespace A129064.P1132780849903755295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (n + 4) - A357541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129064.P1132780849903755295

/-!
# A129065: Coefficients of the v=1 member of a family of certain orthogonal polynomials.

The programs for A129065, there is no canonical definition to state claims against.
-/

/-! ## A129065.P16777586526990689057

`A048266(A330490(n+1))*A130167(n)`
-/

namespace A129065.P16777586526990689057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A330490 (n + 1)).toNat * A130167 n

end

end A129065.P16777586526990689057

/-! ## A129065.P4475304677285135486

`A194698(n+1)+A130167(n)*A239086(A330490(n+1))`
-/

namespace A129065.P4475304677285135486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (n + 1) + A130167 n * A239086 (A330490 (n + 1)).toNat

end

end A129065.P4475304677285135486

/-!
# A129067: Leading term in row n of triangle in A128894.

The programs for A129067, there is no canonical definition to state claims against.
-/

/-! ## A129067.P13349173872156668180

`A169929(∑[A171850(n)])`
-/

namespace A129067.P13349173872156668180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129067.P13349173872156668180

/-! ## A129067.P14122316689046093387

`filter[A169929(n+1), A145362(#)]`
-/

namespace A129067.P14122316689046093387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145362 (f1 j).toNat = 1) n)

end

end A129067.P14122316689046093387

/-! ## A129067.P11477151326535500354

`A169929(∑[A182972(∏{p}[n+1, #])])`
-/

namespace A129067.P11477151326535500354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182972 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129067.P11477151326535500354

/-! ## A129067.P15439640838599531973

`record[lcm(A141679(n+1), A169929(n+1))]`
-/

namespace A129067.P15439640838599531973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141679 (n + 1)) (A169929 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129067.P15439640838599531973

/-! ## A129067.P2103573071065558125

`A169929(eq[A029440(n), A286134(n)])`
-/

namespace A129067.P2103573071065558125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169929 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129067.P2103573071065558125

/-!
# A129068: A128894[n,k] for k=1 : Coxeter numbers as defined by Bulgadaev for exceptional group sequence using critical exponent solution.

The programs for A129068, there is no canonical definition to state claims against.
-/

/-! ## A129068.P3817155644511864861

`A144677(A000115(n+1))`
-/

namespace A129068.P3817155644511864861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A000115 (n + 1)).toNat

end

end A129068.P3817155644511864861

/-! ## A129068.P6509864615625502074

`A144677(A029015(n+1))`
-/

namespace A129068.P6509864615625502074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A029015 (n + 1)).toNat

end

end A129068.P6509864615625502074

/-! ## A129068.P11473880470813718967

`A144677(A029016(n+1))`
-/

namespace A129068.P11473880470813718967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A029016 (n + 1)).toNat

end

end A129068.P11473880470813718967

/-! ## A129068.P2904504887701706521

`A144677(A033552(n+1))`
-/

namespace A129068.P2904504887701706521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A033552 (n + 1)).toNat

end

end A129068.P2904504887701706521

/-! ## A129068.P8328724465649104767

`A144677(A089197(n+1))`
-/

namespace A129068.P8328724465649104767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (A089197 (n + 1)).toNat

end

end A129068.P8328724465649104767

/-!
# A129069: Numbers k such that (k-3)/2 is prime.

The programs for A129069, the canonical program `A129069.P4766735713249215201` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129069 has offset 1).

The definition of A129069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129069.P1100565225034625866

`4*p?[round(8*n/7)]/2+3`
-/

namespace A129069.P1100565225034625866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2 + 3

end

end A129069.P1100565225034625866

namespace A129069

/-- `4*p?[round(8*n/7)]/2+3` -/
def P1100565225034625866.Spec : Prop :=
  ∀ n, P1100565225034625866.a n = (A129069 (n + 1) : ℚ)

end A129069

/-! ## A129069.P4766735713249215201

`A089241(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129069

/-- `A089241(n+1)+1` -/
def P4766735713249215201.Spec : Prop :=
  ∀ n, P4766735713249215201.a n = A129069 (n + 1)

theorem P4766735713249215201.correct : P4766735713249215201.Spec := by
  intro n
  simp only [A129069, Nat.add_sub_cancel]

end A129069

/-! ## A129069.P4004843946878344605

`A072055(n+1)+2`
-/

namespace A129069.P4004843946878344605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + 2

end

end A129069.P4004843946878344605

namespace A129069

/-- `A072055(n+1)+2` -/
def P4004843946878344605.Spec : Prop :=
  ∀ n, P4004843946878344605.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P5940029454443192917

`A100484(n+1)+3`
-/

namespace A129069.P5940029454443192917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + 3

end

end A129069.P5940029454443192917

namespace A129069

/-- `A100484(n+1)+3` -/
def P5940029454443192917.Spec : Prop :=
  ∀ n, P5940029454443192917.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P2992891189248585116

`A037168(n+1)+5`
-/

namespace A129069.P2992891189248585116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + 5

end

end A129069.P2992891189248585116

namespace A129069

/-- `A037168(n+1)+5` -/
def P2992891189248585116.Spec : Prop :=
  ∀ n, P2992891189248585116.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P8137645832416513900

`A131426(n+1)+6`
-/

namespace A129069.P8137645832416513900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + 6

end

end A129069.P8137645832416513900

namespace A129069

/-- `A131426(n+1)+6` -/
def P8137645832416513900.Spec : Prop :=
  ∀ n, P8137645832416513900.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P9899534084623199094

`A140777(n+1)+7`
-/

namespace A129069.P9899534084623199094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + 7

end

end A129069.P9899534084623199094

namespace A129069

/-- `A140777(n+1)+7` -/
def P9899534084623199094.Spec : Prop :=
  ∀ n, P9899534084623199094.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P1951063148355542782

`sqrt(A069262(n+1))+3`
-/

namespace A129069.P1951063148355542782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) + 3

end

end A129069.P1951063148355542782

namespace A129069

/-- `sqrt(A069262(n+1))+3` -/
def P1951063148355542782.Spec : Prop :=
  ∀ n, P1951063148355542782.a n = (A129069 (n + 1) : ℝ)

end A129069

/-! ## A129069.P10023417337507557835

`2*A008864(n+1)+1`
-/

namespace A129069.P10023417337507557835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1) + 1

end

end A129069.P10023417337507557835

namespace A129069

/-- `2*A008864(n+1)+1` -/
def P10023417337507557835.Spec : Prop :=
  ∀ n, P10023417337507557835.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P570213101056397399

`2*A028815(n+1)+1`
-/

namespace A129069.P570213101056397399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028815 (n + 1) + 1

end

end A129069.P570213101056397399

namespace A129069

/-- `2*A028815(n+1)+1` -/
def P570213101056397399.Spec : Prop :=
  ∀ n, P570213101056397399.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P6135201408616349613

`2*A052147(n+1)-1`
-/

namespace A129069.P6135201408616349613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052147 (n + 1) - 1

end

end A129069.P6135201408616349613

namespace A129069

/-- `2*A052147(n+1)-1` -/
def P6135201408616349613.Spec : Prop :=
  ∀ n, P6135201408616349613.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P12458153736600132074

`(A129070(n+1)+1)/2`
-/

namespace A129069.P12458153736600132074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129070 (n + 1) + 1 : ℚ) / 2

end

end A129069.P12458153736600132074

namespace A129069

/-- `(A129070(n+1)+1)/2` -/
def P12458153736600132074.Spec : Prop :=
  ∀ n, P12458153736600132074.a n = (A129069 (n + 1) : ℚ)

end A129069

/-! ## A129069.P1730810587281407252

`2*A000040(n+1)+3`
-/

namespace A129069.P1730810587281407252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 3

end

end A129069.P1730810587281407252

namespace A129069

/-- `2*A000040(n+1)+3` -/
def P1730810587281407252.Spec : Prop :=
  ∀ n, P1730810587281407252.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P15197563977502624363

`A001749(n+1)/2+3`
-/

namespace A129069.P15197563977502624363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 + 3

end

end A129069.P15197563977502624363

namespace A129069

/-- `A001749(n+1)/2+3` -/
def P15197563977502624363.Spec : Prop :=
  ∀ n, P15197563977502624363.a n = (A129069 (n + 1) : ℚ)

end A129069

/-! ## A129069.P13072158353992207917

`ceil(sqrt(A060429(n+1)))+2`
-/

namespace A129069.P13072158353992207917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060429 (n + 1) : ℝ)⌉ + 2

end

end A129069.P13072158353992207917

namespace A129069

/-- `ceil(sqrt(A060429(n+1)))+2` -/
def P13072158353992207917.Spec : Prop :=
  ∀ n, P13072158353992207917.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P11933041142539297249

`A134591(n+1)+A020705(n)`
-/

namespace A129069.P11933041142539297249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + A020705 n

end

end A129069.P11933041142539297249

namespace A129069

/-- `A134591(n+1)+A020705(n)` -/
def P11933041142539297249.Spec : Prop :=
  ∀ n, P11933041142539297249.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P11131942461532168339

`A239636(n+1)+A020739(n)`
-/

namespace A129069.P11131942461532168339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239636 (n + 1) + A020739 n

end

end A129069.P11131942461532168339

namespace A129069

/-- `A239636(n+1)+A020739(n)` -/
def P11131942461532168339.Spec : Prop :=
  ∀ n, P11131942461532168339.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P12865644689278081197

`A052147(n+1)+A008864(n+1)`
-/

namespace A129069.P12865644689278081197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A008864 (n + 1)

end

end A129069.P12865644689278081197

namespace A129069

/-- `A052147(n+1)+A008864(n+1)` -/
def P12865644689278081197.Spec : Prop :=
  ∀ n, P12865644689278081197.a n = A129069 (n + 1)

end A129069

/-! ## A129069.P5843879183870070821

`A113935(n+1)+A000040(n+1)`
-/

namespace A129069.P5843879183870070821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + A000040 (n + 1)

end

end A129069.P5843879183870070821

namespace A129069

/-- `A113935(n+1)+A000040(n+1)` -/
def P5843879183870070821.Spec : Prop :=
  ∀ n, P5843879183870070821.a n = A129069 (n + 1)

end A129069

/-!
# A129070: Numbers k such that (k-5)/4 is prime.

The programs for A129070, the canonical program `A129070.P16960525767214763684` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129070 has offset 1).

The definition of A129070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129070.P9248038007211946583

`4*p?[ceil(2/acot(n))]+5`
-/

namespace A129070.P9248038007211946583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A129070.P9248038007211946583

namespace A129070

/-- `4*p?[ceil(2/acot(n))]+5` -/
def P9248038007211946583.Spec : Prop :=
  ∀ n, P9248038007211946583.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P16960525767214763684

`4*p?[round(8*n/7)]+5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129070

/-- `4*p?[round(8*n/7)]+5` -/
def P16960525767214763684.Spec : Prop :=
  ∀ n, P16960525767214763684.a n = A129070 (n + 1)

theorem P16960525767214763684.correct : P16960525767214763684.Spec := by
  intro n
  simp only [A129070, Nat.add_sub_cancel]

end A129070

/-! ## A129070.P15430096101245830715

`1-xor(4*p?[round(8*n/7)], -4)`
-/

namespace A129070.P15430096101245830715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (-4)

end

end A129070.P15430096101245830715

namespace A129070

/-- `1-xor(4*p?[round(8*n/7)], -4)` -/
def P15430096101245830715.Spec : Prop :=
  ∀ n, P15430096101245830715.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P18091640486209642250

`A001749(n+1)+5`
-/

namespace A129070.P18091640486209642250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) + 5

end

end A129070.P18091640486209642250

namespace A129070

/-- `A001749(n+1)+5` -/
def P18091640486209642250.Spec : Prop :=
  ∀ n, P18091640486209642250.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P13387305086961441939

`2*A089241(n+1)+1`
-/

namespace A129070.P13387305086961441939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089241 (n + 1) + 1

end

end A129070.P13387305086961441939

namespace A129070

/-- `2*A089241(n+1)+1` -/
def P13387305086961441939.Spec : Prop :=
  ∀ n, P13387305086961441939.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P7714481210501136868

`2*A129069(n+1)-1`
-/

namespace A129070.P7714481210501136868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129069 (n + 1) - 1

end

end A129070.P7714481210501136868

namespace A129070

/-- `2*A129069(n+1)-1` -/
def P7714481210501136868.Spec : Prop :=
  ∀ n, P7714481210501136868.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P10245149669643621300

`(A129074(n+1)+1)/2`
-/

namespace A129070.P10245149669643621300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129074 (n + 1) + 1 : ℚ) / 2

end

end A129070.P10245149669643621300

namespace A129070

/-- `(A129074(n+1)+1)/2` -/
def P10245149669643621300.Spec : Prop :=
  ∀ n, P10245149669643621300.a n = (A129070 (n + 1) : ℚ)

end A129070

/-! ## A129070.P15995194588311208179

`A240068(n+1)/2+1`
-/

namespace A129070.P15995194588311208179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240068 (n + 1) : ℚ) / 2 + 1

end

end A129070.P15995194588311208179

namespace A129070

/-- `A240068(n+1)/2+1` -/
def P15995194588311208179.Spec : Prop :=
  ∀ n, P15995194588311208179.a n = (A129070 (n + 1) : ℚ)

end A129070

/-! ## A129070.P8268850393222054264

`4*A008864(n+1)+1`
-/

namespace A129070.P8268850393222054264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008864 (n + 1) + 1

end

end A129070.P8268850393222054264

namespace A129070

/-- `4*A008864(n+1)+1` -/
def P8268850393222054264.Spec : Prop :=
  ∀ n, P8268850393222054264.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P1938837429292529893

`2*A072055(n+1)+3`
-/

namespace A129070.P1938837429292529893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072055 (n + 1) + 3

end

end A129070.P1938837429292529893

namespace A129070

/-- `2*A072055(n+1)+3` -/
def P1938837429292529893.Spec : Prop :=
  ∀ n, P1938837429292529893.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P5691897001082948791

`(A129072(n+1)+2)/3`
-/

namespace A129070.P5691897001082948791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129072 (n + 1) + 2 : ℚ) / 3

end

end A129070.P5691897001082948791

namespace A129070

/-- `(A129072(n+1)+2)/3` -/
def P5691897001082948791.Spec : Prop :=
  ∀ n, P5691897001082948791.a n = (A129070 (n + 1) : ℚ)

end A129070

/-! ## A129070.P4132699997108711594

`2*A100484(n+1)+5`
-/

namespace A129070.P4132699997108711594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1) + 5

end

end A129070.P4132699997108711594

namespace A129070

/-- `2*A100484(n+1)+5` -/
def P4132699997108711594.Spec : Prop :=
  ∀ n, P4132699997108711594.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P2094052278005187898

`4*A052147(n+1)-3`
-/

namespace A129070.P2094052278005187898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052147 (n + 1) - 3

end

end A129070.P2094052278005187898

namespace A129070

/-- `4*A052147(n+1)-3` -/
def P2094052278005187898.Spec : Prop :=
  ∀ n, P2094052278005187898.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P1599856947045960151

`4*A000040(n+1)+5`
-/

namespace A129070.P1599856947045960151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000040 (n + 1) + 5

end

end A129070.P1599856947045960151

namespace A129070

/-- `4*A000040(n+1)+5` -/
def P1599856947045960151.Spec : Prop :=
  ∀ n, P1599856947045960151.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P14144003768644711706

`A382097(n+1)-A153480(n)`
-/

namespace A129070.P14144003768644711706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1) - A153480 n

end

end A129070.P14144003768644711706

namespace A129070

/-- `A382097(n+1)-A153480(n)` -/
def P14144003768644711706.Spec : Prop :=
  ∀ n, P14144003768644711706.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P3916386238533773313

`A129075(n+1)+A008864(n+1)`
-/

namespace A129070.P3916386238533773313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1) + A008864 (n + 1)

end

end A129070.P3916386238533773313

namespace A129070

/-- `A129075(n+1)+A008864(n+1)` -/
def P3916386238533773313.Spec : Prop :=
  ∀ n, P3916386238533773313.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P2076916062411770157

`A175222(n+1)+A001748(n+1)`
-/

namespace A129070.P2076916062411770157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + A001748 (n + 1)

end

end A129070.P2076916062411770157

namespace A129070

/-- `A175222(n+1)+A001748(n+1)` -/
def P2076916062411770157.Spec : Prop :=
  ∀ n, P2076916062411770157.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P10793404802717914224

`A129069(n+1)+A089241(n+1)`
-/

namespace A129070.P10793404802717914224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) + A089241 (n + 1)

end

end A129070.P10793404802717914224

namespace A129070

/-- `A129069(n+1)+A089241(n+1)` -/
def P10793404802717914224.Spec : Prop :=
  ∀ n, P10793404802717914224.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P7284311472358364398

`A175225(n+1)+A132227(n+1)`
-/

namespace A129070.P7284311472358364398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) + A132227 (n + 1)

end

end A129070.P7284311472358364398

namespace A129070

/-- `A175225(n+1)+A132227(n+1)` -/
def P7284311472358364398.Spec : Prop :=
  ∀ n, P7284311472358364398.a n = A129070 (n + 1)

end A129070

/-! ## A129070.P14802721988470606034

`A129071(n+1)-A089241(n+1)`
-/

namespace A129070.P14802721988470606034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129071 (n + 1) - A089241 (n + 1)

end

end A129070.P14802721988470606034

namespace A129070

/-- `A129071(n+1)-A089241(n+1)` -/
def P14802721988470606034.Spec : Prop :=
  ∀ n, P14802721988470606034.a n = A129070 (n + 1)

end A129070

/-!
# A129071: Numbers k such that (k-7)/6 is prime.

The programs for A129071, the canonical program `A129071.P295643258149290770` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129071 has offset 1).

The definition of A129071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129071.P14595352721684911510

`A138636(n+1)+7`
-/

namespace A129071.P14595352721684911510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1) + 7

end

end A129071.P14595352721684911510

namespace A129071

/-- `A138636(n+1)+7` -/
def P14595352721684911510.Spec : Prop :=
  ∀ n, P14595352721684911510.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P1377300037348242582

`A330410(n+1)+8`
-/

namespace A129071.P1377300037348242582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330410 (n + 1) + 8

end

end A129071.P1377300037348242582

namespace A129071

/-- `A330410(n+1)+8` -/
def P1377300037348242582.Spec : Prop :=
  ∀ n, P1377300037348242582.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P295643258149290770

`3*A089241(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129071

/-- `3*A089241(n+1)+1` -/
def P295643258149290770.Spec : Prop :=
  ∀ n, P295643258149290770.a n = A129071 (n + 1)

theorem P295643258149290770.correct : P295643258149290770.Spec := by
  intro n
  simp only [A129071, Nat.add_sub_cancel]

end A129071

/-! ## A129071.P7339599379555750596

`2*A129075(n+1)-1`
-/

namespace A129071.P7339599379555750596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129075 (n + 1) - 1

end

end A129071.P7339599379555750596

namespace A129071

/-- `2*A129075(n+1)-1` -/
def P7339599379555750596.Spec : Prop :=
  ∀ n, P7339599379555750596.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P16454765329037603670

`(A129072(n+1)+1)/2`
-/

namespace A129071.P16454765329037603670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129072 (n + 1) + 1 : ℚ) / 2

end

end A129071.P16454765329037603670

namespace A129071

/-- `(A129072(n+1)+1)/2` -/
def P16454765329037603670.Spec : Prop :=
  ∀ n, P16454765329037603670.a n = (A129071 (n + 1) : ℚ)

end A129071

/-! ## A129071.P15865795363076729918

`3*A129069(n+1)-2`
-/

namespace A129071.P15865795363076729918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A129069 (n + 1) - 2

end

end A129071.P15865795363076729918

namespace A129071

/-- `3*A129069(n+1)-2` -/
def P15865795363076729918.Spec : Prop :=
  ∀ n, P15865795363076729918.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P3673718777749392079

`6*A008864(n+1)+1`
-/

namespace A129071.P3673718777749392079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008864 (n + 1) + 1

end

end A129071.P3673718777749392079

namespace A129071

/-- `6*A008864(n+1)+1` -/
def P3673718777749392079.Spec : Prop :=
  ∀ n, P3673718777749392079.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P8581159557981879479

`3*A072055(n+1)+4`
-/

namespace A129071.P8581159557981879479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A072055 (n + 1) + 4

end

end A129071.P8581159557981879479

namespace A129071

/-- `3*A072055(n+1)+4` -/
def P8581159557981879479.Spec : Prop :=
  ∀ n, P8581159557981879479.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P12117128813833994904

`6*A000040(n+1)+7`
-/

namespace A129071.P12117128813833994904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000040 (n + 1) + 7

end

end A129071.P12117128813833994904

namespace A129071

/-- `6*A000040(n+1)+7` -/
def P12117128813833994904.Spec : Prop :=
  ∀ n, P12117128813833994904.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P509664564687983180

`A175223(n+1)+A001750(n+1)`
-/

namespace A129071.P509664564687983180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) + A001750 (n + 1)

end

end A129071.P509664564687983180

namespace A129071

/-- `A175223(n+1)+A001750(n+1)` -/
def P509664564687983180.Spec : Prop :=
  ∀ n, P509664564687983180.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P18094621703893209908

`A129070(n+1)+A089241(n+1)`
-/

namespace A129071.P18094621703893209908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129070 (n + 1) + A089241 (n + 1)

end

end A129071.P18094621703893209908

namespace A129071

/-- `A129070(n+1)+A089241(n+1)` -/
def P18094621703893209908.Spec : Prop :=
  ∀ n, P18094621703893209908.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P18156173382969791066

`A129073(n+1)-A008864(n+1)`
-/

namespace A129071.P18156173382969791066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129073 (n + 1) - A008864 (n + 1)

end

end A129071.P18156173382969791066

namespace A129071

/-- `A129073(n+1)-A008864(n+1)` -/
def P18156173382969791066.Spec : Prop :=
  ∀ n, P18156173382969791066.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P16915039681894391885

`A129074(n+1)-A089241(n+1)`
-/

namespace A129071.P16915039681894391885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129074 (n + 1) - A089241 (n + 1)

end

end A129071.P16915039681894391885

namespace A129071

/-- `A129074(n+1)-A089241(n+1)` -/
def P16915039681894391885.Spec : Prop :=
  ∀ n, P16915039681894391885.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P2904888950790393725

`A240068(n+1)-A072055(n+1)`
-/

namespace A129071.P2904888950790393725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240068 (n + 1) - A072055 (n + 1)

end

end A129071.P2904888950790393725

namespace A129071

/-- `A240068(n+1)-A072055(n+1)` -/
def P2904888950790393725.Spec : Prop :=
  ∀ n, P2904888950790393725.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P6976054659504099078

`A113935(n+1)²-A061725(n+1)`
-/

namespace A129071.P6976054659504099078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) ^ 2 - A061725 (n + 1)

end

end A129071.P6976054659504099078

namespace A129071

/-- `A113935(n+1)²-A061725(n+1)` -/
def P6976054659504099078.Spec : Prop :=
  ∀ n, P6976054659504099078.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P9836287187814434240

`A129073(n+1)-(A000040(n+1)+1)`
-/

namespace A129071.P9836287187814434240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129073 (n + 1) - (A000040 (n + 1) + 1)

end

end A129071.P9836287187814434240

namespace A129071

/-- `A129073(n+1)-(A000040(n+1)+1)` -/
def P9836287187814434240.Spec : Prop :=
  ∀ n, P9836287187814434240.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P8596440064365983758

`record[6*A006530(n+2)+7]`
-/

namespace A129071.P8596440064365983758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006530 (n + 2) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129071.P8596440064365983758

namespace A129071

/-- `record[6*A006530(n+2)+7]` -/
def P8596440064365983758.Spec : Prop :=
  ∀ n, P8596440064365983758.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P8026466456264679279

`record[6*A020639(n+2)+7]`
-/

namespace A129071.P8026466456264679279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A020639 (n + 2) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129071.P8026466456264679279

namespace A129071

/-- `record[6*A020639(n+2)+7]` -/
def P8026466456264679279.Spec : Prop :=
  ∀ n, P8026466456264679279.a n = A129071 (n + 1)

end A129071

/-! ## A129071.P13963170977649904003

`6*p?[comp[A018252(n+1)]]+7`
-/

namespace A129071.P13963170977649904003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 7

end

end A129071.P13963170977649904003

namespace A129071

/-- `6*p?[comp[A018252(n+1)]]+7` -/
def P13963170977649904003.Spec : Prop :=
  ∀ n, (P13963170977649904003.a n : ℤ) = A129071 (n + 1)

end A129071

/-! ## A129071.P6843813609472878289

`A016921(A008864(n+1))`
-/

namespace A129071.P6843813609472878289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A008864 (n + 1)).toNat

end

end A129071.P6843813609472878289

namespace A129071

/-- `A016921(A008864(n+1))` -/
def P6843813609472878289.Spec : Prop :=
  ∀ n, P6843813609472878289.a n = A129071 (n + 1)

end A129071

/-!
# A129072: Numbers k such that (k-13)/12 is prime.

The programs for A129072, the canonical program `A129072.P2068960700296320940` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129072 has offset 1).

The definition of A129072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129072.P2068960700296320940

`12*(p?[round(8*n/7)]+1)+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129072

/-- `12*(p?[round(8*n/7)]+1)+1` -/
def P2068960700296320940.Spec : Prop :=
  ∀ n, P2068960700296320940.a n = A129072 (n + 1)

theorem P2068960700296320940.correct : P2068960700296320940.Spec := by
  intro n
  simp only [A129072, Nat.add_sub_cancel]

end A129072

/-! ## A129072.P3209392789084118828

`Δ[12*A007504(n)]+13`
-/

namespace A129072.P3209392789084118828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 13

end

end A129072.P3209392789084118828

namespace A129072

/-- `Δ[12*A007504(n)]+13` -/
def P3209392789084118828.Spec : Prop :=
  ∀ n, P3209392789084118828.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P1743711696476117799

`2*A129071(n+1)-1`
-/

namespace A129072.P1743711696476117799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129071 (n + 1) - 1

end

end A129072.P1743711696476117799

namespace A129072

/-- `2*A129071(n+1)-1` -/
def P1743711696476117799.Spec : Prop :=
  ∀ n, P1743711696476117799.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P12001140165014321425

`3*A129070(n+1)-2`
-/

namespace A129072.P12001140165014321425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A129070 (n + 1) - 2

end

end A129072.P12001140165014321425

namespace A129072

/-- `3*A129070(n+1)-2` -/
def P12001140165014321425.Spec : Prop :=
  ∀ n, P12001140165014321425.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P489198880960670958

`4*A129075(n+1)-3`
-/

namespace A129072.P489198880960670958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129075 (n + 1) - 3

end

end A129072.P489198880960670958

namespace A129072

/-- `4*A129075(n+1)-3` -/
def P489198880960670958.Spec : Prop :=
  ∀ n, P489198880960670958.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P10934461980318273102

`2*(A138636(n+1)+7)-1`
-/

namespace A129072.P10934461980318273102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138636 (n + 1) + 7) - 1

end

end A129072.P10934461980318273102

namespace A129072

/-- `2*(A138636(n+1)+7)-1` -/
def P10934461980318273102.Spec : Prop :=
  ∀ n, P10934461980318273102.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P7936223250017919340

`A240068(n+1)+A129070(n+1)`
-/

namespace A129072.P7936223250017919340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240068 (n + 1) + A129070 (n + 1)

end

end A129072.P7936223250017919340

namespace A129072

/-- `A240068(n+1)+A129070(n+1)` -/
def P7936223250017919340.Spec : Prop :=
  ∀ n, P7936223250017919340.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P9782466189573540738

`A129074(n+1)+2*A089241(n+1)`
-/

namespace A129072.P9782466189573540738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129074 (n + 1) + 2 * A089241 (n + 1)

end

end A129072.P9782466189573540738

namespace A129072

/-- `A129074(n+1)+2*A089241(n+1)` -/
def P9782466189573540738.Spec : Prop :=
  ∀ n, P9782466189573540738.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P10302747504456714604

`3*(4*p?[abs(xor(n, -2))]+5)-2`
-/

namespace A129072.P10302747504456714604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5) - 2

end

end A129072.P10302747504456714604

namespace A129072

/-- `3*(4*p?[abs(xor(n, -2))]+5)-2` -/
def P10302747504456714604.Spec : Prop :=
  ∀ n, P10302747504456714604.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P15254686795670536070

`record[12*A162753(n)]+13`
-/

namespace A129072.P15254686795670536070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 13

end

end A129072.P15254686795670536070

namespace A129072

/-- `record[12*A162753(n)]+13` -/
def P15254686795670536070.Spec : Prop :=
  ∀ n, P15254686795670536070.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P14314864299961626983

`A003959(A138636(n+1))+1`
-/

namespace A129072.P14314864299961626983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A138636 (n + 1)).toNat + 1

end

end A129072.P14314864299961626983

namespace A129072

/-- `A003959(A138636(n+1))+1` -/
def P14314864299961626983.Spec : Prop :=
  ∀ n, P14314864299961626983.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P8216668095780439276

`A017533(A008864(n+1))`
-/

namespace A129072.P8216668095780439276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A008864 (n + 1)).toNat

end

end A129072.P8216668095780439276

namespace A129072

/-- `A017533(A008864(n+1))` -/
def P8216668095780439276.Spec : Prop :=
  ∀ n, P8216668095780439276.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P933534180662889639

`A017533(A028815(n+1))`
-/

namespace A129072.P933534180662889639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A028815 (n + 1)).toNat

end

end A129072.P933534180662889639

namespace A129072

/-- `A017533(A028815(n+1))` -/
def P933534180662889639.Spec : Prop :=
  ∀ n, P933534180662889639.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P9273575873455912280

`A017533(A299763(n+2))`
-/

namespace A129072.P9273575873455912280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A299763 (n + 2)).toNat

end

end A129072.P9273575873455912280

namespace A129072

/-- `A017533(A299763(n+2))` -/
def P9273575873455912280.Spec : Prop :=
  ∀ n, P9273575873455912280.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P16715524827958291531

`A017533(A000040(n+1)+1)`
-/

namespace A129072.P16715524827958291531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A000040 (n + 1) + 1).toNat

end

end A129072.P16715524827958291531

namespace A129072

/-- `A017533(A000040(n+1)+1)` -/
def P16715524827958291531.Spec : Prop :=
  ∀ n, P16715524827958291531.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P4456544392273799619

`A017533(A008578(n+2)+1)`
-/

namespace A129072.P4456544392273799619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A008578 (n + 2) + 1).toNat

end

end A129072.P4456544392273799619

namespace A129072

/-- `A017533(A008578(n+2)+1)` -/
def P4456544392273799619.Spec : Prop :=
  ∀ n, P4456544392273799619.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P11154645309022398954

`A017533(p?[A133812(n+1)]+1)`
-/

namespace A129072.P11154645309022398954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A129072.P11154645309022398954

namespace A129072

/-- `A017533(p?[A133812(n+1)]+1)` -/
def P11154645309022398954.Spec : Prop :=
  ∀ n, P11154645309022398954.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P15071162121458224561

`A016921(A089241(n+1))`
-/

namespace A129072.P15071162121458224561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A089241 (n + 1)).toNat

end

end A129072.P15071162121458224561

namespace A129072

/-- `A016921(A089241(n+1))` -/
def P15071162121458224561.Spec : Prop :=
  ∀ n, P15071162121458224561.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P2782384272968757688

`A087445(A129069(n+1))`
-/

namespace A129072.P2782384272968757688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (A129069 (n + 1)).toNat

end

end A129072.P2782384272968757688

namespace A129072

/-- `A087445(A129069(n+1))` -/
def P2782384272968757688.Spec : Prop :=
  ∀ n, P2782384272968757688.a n = A129072 (n + 1)

end A129072

/-! ## A129072.P13499360200368738356

`A016921(2*A008864(n+1))`
-/

namespace A129072.P13499360200368738356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * A008864 (n + 1)).toNat

end

end A129072.P13499360200368738356

namespace A129072

/-- `A016921(2*A008864(n+1))` -/
def P13499360200368738356.Spec : Prop :=
  ∀ n, P13499360200368738356.a n = A129072 (n + 1)

end A129072

/-!
# A129073: Numbers k such that (k-8)/7 is prime.

The programs for A129073, the canonical program `A129073.P17736842117029644714` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129073 has offset 1).

The definition of A129073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129073.P11317563527415911696

`7*p?[ceil(2/acot(n))]+8`
-/

namespace A129073.P11317563527415911696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 8

end

end A129073.P11317563527415911696

namespace A129073

/-- `7*p?[ceil(2/acot(n))]+8` -/
def P11317563527415911696.Spec : Prop :=
  ∀ n, P11317563527415911696.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P8780162588366348474

`A272470(n+1)+8`
-/

namespace A129073.P8780162588366348474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1) + 8

end

end A129073.P8780162588366348474

namespace A129073

/-- `A272470(n+1)+8` -/
def P8780162588366348474.Spec : Prop :=
  ∀ n, P8780162588366348474.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P16580775792344145742

`Δ[7*A007504(n)]+8`
-/

namespace A129073.P16580775792344145742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 8

end

end A129073.P16580775792344145742

namespace A129073

/-- `Δ[7*A007504(n)]+8` -/
def P16580775792344145742.Spec : Prop :=
  ∀ n, P16580775792344145742.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P17736842117029644714

`A129071(n+1)+A008864(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129073

/-- `A129071(n+1)+A008864(n+1)` -/
def P17736842117029644714.Spec : Prop :=
  ∀ n, P17736842117029644714.a n = A129073 (n + 1)

theorem P17736842117029644714.correct : P17736842117029644714.Spec := by
  intro n
  simp only [A129073, Nat.add_sub_cancel]

end A129073

/-! ## A129073.P9631909349261250565

`A175224(n+1)+A138636(n+1)`
-/

namespace A129073.P9631909349261250565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + A138636 (n + 1)

end

end A129073.P9631909349261250565

namespace A129073

/-- `A175224(n+1)+A138636(n+1)` -/
def P9631909349261250565.Spec : Prop :=
  ∀ n, P9631909349261250565.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P10893908088890307888

`A330410(n+1)+A140353(n+1)`
-/

namespace A129073.P10893908088890307888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330410 (n + 1) + A140353 (n + 1)

end

end A129073.P10893908088890307888

namespace A129073

/-- `A330410(n+1)+A140353(n+1)` -/
def P10893908088890307888.Spec : Prop :=
  ∀ n, P10893908088890307888.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P2533474195259455663

`A129074(n+1)-A008864(n+1)`
-/

namespace A129073.P2533474195259455663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129074 (n + 1) - A008864 (n + 1)

end

end A129073.P2533474195259455663

namespace A129073

/-- `A129074(n+1)-A008864(n+1)` -/
def P2533474195259455663.Spec : Prop :=
  ∀ n, P2533474195259455663.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P1968694698051737868

`A240068(n+1)-A000040(n+1)`
-/

namespace A129073.P1968694698051737868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240068 (n + 1) - A000040 (n + 1)

end

end A129073.P1968694698051737868

namespace A129073

/-- `A240068(n+1)-A000040(n+1)` -/
def P1968694698051737868.Spec : Prop :=
  ∀ n, P1968694698051737868.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P249984214496241693

`A113935(n+1)²-A119959(n+1)`
-/

namespace A129073.P249984214496241693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) ^ 2 - A119959 (n + 1)

end

end A129073.P249984214496241693

namespace A129073

/-- `A113935(n+1)²-A119959(n+1)` -/
def P249984214496241693.Spec : Prop :=
  ∀ n, P249984214496241693.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P9718899550651229875

`A000040(n+1)+2*A129075(n+1)`
-/

namespace A129073.P9718899550651229875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A129075 (n + 1)

end

end A129073.P9718899550651229875

namespace A129073

/-- `A000040(n+1)+2*A129075(n+1)` -/
def P9718899550651229875.Spec : Prop :=
  ∀ n, P9718899550651229875.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P968450869644710685

`A129071(n+1)+A089241(n+1)/2`
-/

namespace A129073.P968450869644710685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129071 (n + 1) : ℚ) + (A089241 (n + 1) : ℚ) / 2

end

end A129073.P968450869644710685

namespace A129073

/-- `A129071(n+1)+A089241(n+1)/2` -/
def P968450869644710685.Spec : Prop :=
  ∀ n, P968450869644710685.a n = (A129073 (n + 1) : ℚ)

end A129073

/-! ## A129073.P14240781950845982580

`A129074(n+1)-A089241(n+1)/2`
-/

namespace A129073.P14240781950845982580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129074 (n + 1) : ℚ) - (A089241 (n + 1) : ℚ) / 2

end

end A129073.P14240781950845982580

namespace A129073

/-- `A129074(n+1)-A089241(n+1)/2` -/
def P14240781950845982580.Spec : Prop :=
  ∀ n, P14240781950845982580.a n = (A129073 (n + 1) : ℚ)

end A129073

/-! ## A129073.P14386326764981050164

`7*p?[abs(xor(n, -2))]+8`
-/

namespace A129073.P14386326764981050164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 8

end

end A129073.P14386326764981050164

namespace A129073

/-- `7*p?[abs(xor(n, -2))]+8` -/
def P14386326764981050164.Spec : Prop :=
  ∀ n, P14386326764981050164.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P10226545741539717151

`7*p?[xor(1, n)+1]+8`
-/

namespace A129073.P10226545741539717151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 8

end

end A129073.P10226545741539717151

namespace A129073

/-- `7*p?[xor(1, n)+1]+8` -/
def P10226545741539717151.Spec : Prop :=
  ∀ n, (P10226545741539717151.a n : ℤ) = A129073 (n + 1)

end A129073

/-! ## A129073.P756409460403340464

`7*p?[n%3+n]+8`
-/

namespace A129073.P756409460403340464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 8

end

end A129073.P756409460403340464

namespace A129073

/-- `7*p?[n%3+n]+8` -/
def P756409460403340464.Spec : Prop :=
  ∀ n, (P756409460403340464.a n : ℤ) = A129073 (n + 1)

end A129073

/-! ## A129073.P16939157080596342708

`7*p?[n-(-1)^n]+8`
-/

namespace A129073.P16939157080596342708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 8

end

end A129073.P16939157080596342708

namespace A129073

/-- `7*p?[n-(-1)^n]+8` -/
def P16939157080596342708.Spec : Prop :=
  ∀ n, P16939157080596342708.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P17618777991128853496

`A016993(A008864(n+1))`
-/

namespace A129073.P17618777991128853496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A008864 (n + 1)).toNat

end

end A129073.P17618777991128853496

namespace A129073

/-- `A016993(A008864(n+1))` -/
def P17618777991128853496.Spec : Prop :=
  ∀ n, P17618777991128853496.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P17959532787099703269

`A016993(A028815(n+1))`
-/

namespace A129073.P17959532787099703269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A028815 (n + 1)).toNat

end

end A129073.P17959532787099703269

namespace A129073

/-- `A016993(A028815(n+1))` -/
def P17959532787099703269.Spec : Prop :=
  ∀ n, P17959532787099703269.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P213858263259690172

`A026474(A175221(n+1))`
-/

namespace A129073.P213858263259690172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (A175221 (n + 1)).toNat

end

end A129073.P213858263259690172

namespace A129073

/-- `A026474(A175221(n+1))` -/
def P213858263259690172.Spec : Prop :=
  ∀ n, P213858263259690172.a n = A129073 (n + 1)

end A129073

/-! ## A129073.P5829746033202567995

`A016993(A299763(n+2))`
-/

namespace A129073.P5829746033202567995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A299763 (n + 2)).toNat

end

end A129073.P5829746033202567995

namespace A129073

/-- `A016993(A299763(n+2))` -/
def P5829746033202567995.Spec : Prop :=
  ∀ n, P5829746033202567995.a n = A129073 (n + 1)

end A129073

/-!
# A129074: Numbers k such that (k-9)/8 is prime.

The programs for A129074, the canonical program `A129074.P15010075502388195749` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129074 has offset 1).

The definition of A129074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129074.P2751208784651284720

`A240068(n+1)+1`
-/

namespace A129074.P2751208784651284720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240068 (n + 1) + 1

end

end A129074.P2751208784651284720

namespace A129074

/-- `A240068(n+1)+1` -/
def P2751208784651284720.Spec : Prop :=
  ∀ n, P2751208784651284720.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P15010075502388195749

`2*A129070(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129074

/-- `2*A129070(n+1)-1` -/
def P15010075502388195749.Spec : Prop :=
  ∀ n, P15010075502388195749.a n = A129074 (n + 1)

theorem P15010075502388195749.correct : P15010075502388195749.Spec := by
  intro n
  simp only [A129074, Nat.add_sub_cancel]

end A129074

/-! ## A129074.P9890414785493988352

`4*A089241(n+1)+1`
-/

namespace A129074.P9890414785493988352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089241 (n + 1) + 1

end

end A129074.P9890414785493988352

namespace A129074

/-- `4*A089241(n+1)+1` -/
def P9890414785493988352.Spec : Prop :=
  ∀ n, P9890414785493988352.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P12431418196661373736

`4*A129069(n+1)-3`
-/

namespace A129074.P12431418196661373736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129069 (n + 1) - 3

end

end A129074.P12431418196661373736

namespace A129074

/-- `4*A129069(n+1)-3` -/
def P12431418196661373736.Spec : Prop :=
  ∀ n, P12431418196661373736.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P11340675554147980647

`8*A008864(n+1)+1`
-/

namespace A129074.P11340675554147980647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008864 (n + 1) + 1

end

end A129074.P11340675554147980647

namespace A129074

/-- `8*A008864(n+1)+1` -/
def P11340675554147980647.Spec : Prop :=
  ∀ n, P11340675554147980647.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P10361789398934947798

`8*A028815(n+1)+1`
-/

namespace A129074.P10361789398934947798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A028815 (n + 1) + 1

end

end A129074.P10361789398934947798

namespace A129074

/-- `8*A028815(n+1)+1` -/
def P10361789398934947798.Spec : Prop :=
  ∀ n, P10361789398934947798.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P17836702404727202175

`4*A072055(n+1)+5`
-/

namespace A129074.P17836702404727202175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A072055 (n + 1) + 5

end

end A129074.P17836702404727202175

namespace A129074

/-- `4*A072055(n+1)+5` -/
def P17836702404727202175.Spec : Prop :=
  ∀ n, P17836702404727202175.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P7178816935936618635

`8*A000040(n+1)+9`
-/

namespace A129074.P7178816935936618635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000040 (n + 1) + 9

end

end A129074.P7178816935936618635

namespace A129074

/-- `8*A000040(n+1)+9` -/
def P7178816935936618635.Spec : Prop :=
  ∀ n, P7178816935936618635.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P1033481541945179418

`A129073(n+1)+A008864(n+1)`
-/

namespace A129074.P1033481541945179418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129073 (n + 1) + A008864 (n + 1)

end

end A129074.P1033481541945179418

namespace A129074

/-- `A129073(n+1)+A008864(n+1)` -/
def P1033481541945179418.Spec : Prop :=
  ∀ n, P1033481541945179418.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P4450369027428464156

`A129071(n+1)+A089241(n+1)`
-/

namespace A129074.P4450369027428464156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129071 (n + 1) + A089241 (n + 1)

end

end A129074.P4450369027428464156

namespace A129074

/-- `A129071(n+1)+A089241(n+1)` -/
def P4450369027428464156.Spec : Prop :=
  ∀ n, P4450369027428464156.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P6087199029945888796

`A272470(n+1)+A140353(n+1)`
-/

namespace A129074.P6087199029945888796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1) + A140353 (n + 1)

end

end A129074.P6087199029945888796

namespace A129074

/-- `A272470(n+1)+A140353(n+1)` -/
def P6087199029945888796.Spec : Prop :=
  ∀ n, P6087199029945888796.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P5690830550711668726

`A055669(n+1)/A122553(n)+1`
-/

namespace A129074.P5690830550711668726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055669 (n + 1) : ℚ) / (A122553 n : ℚ) + 1

end

end A129074.P5690830550711668726

namespace A129074

/-- `A055669(n+1)/A122553(n)+1` -/
def P5690830550711668726.Spec : Prop :=
  ∀ n, P5690830550711668726.a n = (A129074 (n + 1) : ℚ)

end A129074

/-! ## A129074.P16072837861678844590

`A000040(n+1)+A129073(n+1)+1`
-/

namespace A129074.P16072837861678844590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A129073 (n + 1) + 1)

end

end A129074.P16072837861678844590

namespace A129074

/-- `A000040(n+1)+A129073(n+1)+1` -/
def P16072837861678844590.Spec : Prop :=
  ∀ n, P16072837861678844590.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P4961376058430919247

`A072055(n+1)+A129071(n+1)+1`
-/

namespace A129074.P4961376058430919247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + (A129071 (n + 1) + 1)

end

end A129074.P4961376058430919247

namespace A129074

/-- `A072055(n+1)+A129071(n+1)+1` -/
def P4961376058430919247.Spec : Prop :=
  ∀ n, P4961376058430919247.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P6597419795899348586

`A175224(n+1)+A272470(n+1)+1`
-/

namespace A129074.P6597419795899348586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + (A272470 (n + 1) + 1)

end

end A129074.P6597419795899348586

namespace A129074

/-- `A175224(n+1)+A272470(n+1)+1` -/
def P6597419795899348586.Spec : Prop :=
  ∀ n, P6597419795899348586.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P7985621842030478117

`record[8*A006530(n+2)+9]`
-/

namespace A129074.P7985621842030478117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006530 (n + 2) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129074.P7985621842030478117

namespace A129074

/-- `record[8*A006530(n+2)+9]` -/
def P7985621842030478117.Spec : Prop :=
  ∀ n, P7985621842030478117.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P13890299204864301005

`record[8*A020639(n+2)+9]`
-/

namespace A129074.P13890299204864301005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A020639 (n + 2) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129074.P13890299204864301005

namespace A129074

/-- `record[8*A020639(n+2)+9]` -/
def P13890299204864301005.Spec : Prop :=
  ∀ n, P13890299204864301005.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P16465917555921707078

`8*(record[A000010(n+1)]+2)+1`
-/

namespace A129074.P16465917555921707078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2) + 1

end

end A129074.P16465917555921707078

namespace A129074

/-- `8*(record[A000010(n+1)]+2)+1` -/
def P16465917555921707078.Spec : Prop :=
  ∀ n, P16465917555921707078.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P8865031698656037456

`A000118(Δ[A007504(n)])+1`
-/

namespace A129074.P8865031698656037456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (f1 (n + 1) - f1 n).toNat + 1

end

end A129074.P8865031698656037456

namespace A129074

/-- `A000118(Δ[A007504(n)])+1` -/
def P8865031698656037456.Spec : Prop :=
  ∀ n, P8865031698656037456.a n = A129074 (n + 1)

end A129074

/-! ## A129074.P2382524102306644910

`A000118(A000040(n+1))+1`
-/

namespace A129074.P2382524102306644910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000040 (n + 1)).toNat + 1

end

end A129074.P2382524102306644910

namespace A129074

/-- `A000118(A000040(n+1))+1` -/
def P2382524102306644910.Spec : Prop :=
  ∀ n, P2382524102306644910.a n = A129074 (n + 1)

end A129074

/-!
# A129075: Numbers k such that (k-4)/3 is prime.

The programs for A129075, the canonical program `A129075.P4685079922332838573` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129075 has offset 1).

The definition of A129075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129075.P4685079922332838573

`A001748(n+1)+4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129075

/-- `A001748(n+1)+4` -/
def P4685079922332838573.Spec : Prop :=
  ∀ n, P4685079922332838573.a n = A129075 (n + 1)

theorem P4685079922332838573.correct : P4685079922332838573.Spec := by
  intro n
  simp only [A129075, Nat.add_sub_cancel]

end A129075

/-! ## A129075.P5366246421951447940

`A132227(n+1)+9`
-/

namespace A129075.P5366246421951447940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132227 (n + 1) + 9

end

end A129075.P5366246421951447940

namespace A129075

/-- `A132227(n+1)+9` -/
def P5366246421951447940.Spec : Prop :=
  ∀ n, P5366246421951447940.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P10109115507572387263

`3*A008864(n+1)+1`
-/

namespace A129075.P10109115507572387263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008864 (n + 1) + 1

end

end A129075.P10109115507572387263

namespace A129075

/-- `3*A008864(n+1)+1` -/
def P10109115507572387263.Spec : Prop :=
  ∀ n, P10109115507572387263.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P5255527312996888122

`3*A028815(n+1)+1`
-/

namespace A129075.P5255527312996888122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028815 (n + 1) + 1

end

end A129075.P5255527312996888122

namespace A129075

/-- `3*A028815(n+1)+1` -/
def P5255527312996888122.Spec : Prop :=
  ∀ n, P5255527312996888122.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P14606764674519603648

`(A129071(n+1)+1)/2`
-/

namespace A129075.P14606764674519603648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129071 (n + 1) + 1 : ℚ) / 2

end

end A129075.P14606764674519603648

namespace A129075

/-- `(A129071(n+1)+1)/2` -/
def P14606764674519603648.Spec : Prop :=
  ∀ n, P14606764674519603648.a n = (A129075 (n + 1) : ℚ)

end A129075

/-! ## A129075.P2625553405392310307

`3*A052147(n+1)-2`
-/

namespace A129075.P2625553405392310307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052147 (n + 1) - 2

end

end A129075.P2625553405392310307

namespace A129075

/-- `3*A052147(n+1)-2` -/
def P2625553405392310307.Spec : Prop :=
  ∀ n, P2625553405392310307.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P13202692514194674557

`3*A000040(n+1)+4`
-/

namespace A129075.P13202692514194674557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) + 4

end

end A129075.P13202692514194674557

namespace A129075

/-- `3*A000040(n+1)+4` -/
def P13202692514194674557.Spec : Prop :=
  ∀ n, P13202692514194674557.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P3584144266207742283

`A138636(n+1)/2+4`
-/

namespace A129075.P3584144266207742283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 2 + 4

end

end A129075.P3584144266207742283

namespace A129075

/-- `A138636(n+1)/2+4` -/
def P3584144266207742283.Spec : Prop :=
  ∀ n, P3584144266207742283.a n = (A129075 (n + 1) : ℚ)

end A129075

/-! ## A129075.P17168935532665940980

`(A129072(n+1)+3)/4`
-/

namespace A129075.P17168935532665940980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129072 (n + 1) + 3 : ℚ) / 4

end

end A129075.P17168935532665940980

namespace A129075

/-- `(A129072(n+1)+3)/4` -/
def P17168935532665940980.Spec : Prop :=
  ∀ n, P17168935532665940980.a n = (A129075 (n + 1) : ℚ)

end A129075

/-! ## A129075.P13232050209334997769

`3*A113935(n+1)-5`
-/

namespace A129075.P13232050209334997769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A113935 (n + 1) - 5

end

end A129075.P13232050209334997769

namespace A129075

/-- `3*A113935(n+1)-5` -/
def P13232050209334997769.Spec : Prop :=
  ∀ n, P13232050209334997769.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P15398456356850851122

`A129069(n+1)+A008864(n+1)`
-/

namespace A129075.P15398456356850851122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) + A008864 (n + 1)

end

end A129075.P15398456356850851122

namespace A129075

/-- `A129069(n+1)+A008864(n+1)` -/
def P15398456356850851122.Spec : Prop :=
  ∀ n, P15398456356850851122.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P14734494038389271267

`A089241(n+1)+A052147(n+1)`
-/

namespace A129075.P14734494038389271267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A052147 (n + 1)

end

end A129075.P14734494038389271267

namespace A129075

/-- `A089241(n+1)+A052147(n+1)` -/
def P14734494038389271267.Spec : Prop :=
  ∀ n, P14734494038389271267.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P13702153388315138689

`A139049(n+1)+A037168(n+1)`
-/

namespace A129075.P13702153388315138689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) + A037168 (n + 1)

end

end A129075.P13702153388315138689

namespace A129075

/-- `A139049(n+1)+A037168(n+1)` -/
def P13702153388315138689.Spec : Prop :=
  ∀ n, P13702153388315138689.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P3561707432771413858

`A113935(n+1)+A072055(n+1)`
-/

namespace A129075.P3561707432771413858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + A072055 (n + 1)

end

end A129075.P3561707432771413858

namespace A129075

/-- `A113935(n+1)+A072055(n+1)` -/
def P3561707432771413858.Spec : Prop :=
  ∀ n, P3561707432771413858.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P15765059444067333862

`A175221(n+1)+A100484(n+1)`
-/

namespace A129075.P15765059444067333862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + A100484 (n + 1)

end

end A129075.P15765059444067333862

namespace A129075

/-- `A175221(n+1)+A100484(n+1)` -/
def P15765059444067333862.Spec : Prop :=
  ∀ n, P15765059444067333862.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P12573461691484346611

`A175223(n+1)+A131426(n+1)`
-/

namespace A129075.P12573461691484346611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) + A131426 (n + 1)

end

end A129075.P12573461691484346611

namespace A129075

/-- `A175223(n+1)+A131426(n+1)` -/
def P12573461691484346611.Spec : Prop :=
  ∀ n, P12573461691484346611.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P13327814489062470978

`A175224(n+1)+A140777(n+1)`
-/

namespace A129075.P13327814489062470978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + A140777 (n + 1)

end

end A129075.P13327814489062470978

namespace A129075

/-- `A175224(n+1)+A140777(n+1)` -/
def P13327814489062470978.Spec : Prop :=
  ∀ n, P13327814489062470978.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P13830491402966316681

`A129070(n+1)-A008864(n+1)`
-/

namespace A129075.P13830491402966316681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129070 (n + 1) - A008864 (n + 1)

end

end A129075.P13830491402966316681

namespace A129075

/-- `A129070(n+1)-A008864(n+1)` -/
def P13830491402966316681.Spec : Prop :=
  ∀ n, P13830491402966316681.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P9468972415815607619

`A001750(n+1)-A140777(n+1)`
-/

namespace A129075.P9468972415815607619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) - A140777 (n + 1)

end

end A129075.P9468972415815607619

namespace A129075

/-- `A001750(n+1)-A140777(n+1)` -/
def P9468972415815607619.Spec : Prop :=
  ∀ n, P9468972415815607619.a n = A129075 (n + 1)

end A129075

/-! ## A129075.P11242617640130108973

`A008864(n+1)+A089241(n+1)+1`
-/

namespace A129075.P11242617640130108973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A089241 (n + 1) + 1)

end

end A129075.P11242617640130108973

namespace A129075

/-- `A008864(n+1)+A089241(n+1)+1` -/
def P11242617640130108973.Spec : Prop :=
  ∀ n, P11242617640130108973.a n = A129075 (n + 1)

end A129075

/-!
# A129076: a(n) = sigma(sigma(sigma(sigma(n)))), where sigma(n) = sum of divisors of n.

The programs for A129076, the canonical program `A129076.P18074707200360144195` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129076 has offset 1).

The definition of A129076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129076.P18074707200360144195

`A000203(A000203(A000203(A000203(n+1))))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129076

/-- `A000203(A000203(A000203(A000203(n+1))))` -/
def P18074707200360144195.Spec : Prop :=
  ∀ n, P18074707200360144195.a n = A129076 (n + 1)

theorem P18074707200360144195.correct : P18074707200360144195.Spec := by
  intro n
  simp only [A129076, Nat.add_sub_cancel]

end A129076

/-! ## A129076.P13879455546240735370

`∑{d}[∑{d}[∑{d}[∑{d}[n+1, #], #], #], #]`
-/

namespace A129076.P13879455546240735370
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A129076.P13879455546240735370

namespace A129076

/-- `∑{d}[∑{d}[∑{d}[∑{d}[n+1, #], #], #], #]` -/
def P13879455546240735370.Spec : Prop :=
  ∀ n, (P13879455546240735370.a n : ℤ) = A129076 (n + 1)

end A129076

/-! ## A129076.P6877152563963002321

`∑{d}[A066971(n+1), #]`
-/

namespace A129076.P6877152563963002321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A129076.P6877152563963002321

namespace A129076

/-- `∑{d}[A066971(n+1), #]` -/
def P6877152563963002321.Spec : Prop :=
  ∀ n, (P6877152563963002321.a n : ℤ) = A129076 (n + 1)

end A129076

/-! ## A129076.P14832235338009474025

`∑{d}[∑{d}[A051027(n+1), #], #]`
-/

namespace A129076.P14832235338009474025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A129076.P14832235338009474025

namespace A129076

/-- `∑{d}[∑{d}[A051027(n+1), #], #]` -/
def P14832235338009474025.Spec : Prop :=
  ∀ n, (P14832235338009474025.a n : ℤ) = A129076 (n + 1)

end A129076

/-! ## A129076.P18138212661018570093

`A066971(A000203(n+1))`
-/

namespace A129076.P18138212661018570093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066971 (A000203 (n + 1)).toNat

end

end A129076.P18138212661018570093

namespace A129076

/-- `A066971(A000203(n+1))` -/
def P18138212661018570093.Spec : Prop :=
  ∀ n, P18138212661018570093.a n = A129076 (n + 1)

end A129076

/-! ## A129076.P13918913017207576344

`A000203(A000203(A051027(n+1)))`
-/

namespace A129076.P13918913017207576344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A051027 (n + 1)).toNat).toNat

end

end A129076.P13918913017207576344

namespace A129076

/-- `A000203(A000203(A051027(n+1)))` -/
def P13918913017207576344.Spec : Prop :=
  ∀ n, P13918913017207576344.a n = A129076 (n + 1)

end A129076

/-! ## A129076.P61453354619889564

`A051027(A051027(n+1))`
-/

namespace A129076.P61453354619889564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A051027 (n + 1)).toNat

end

end A129076.P61453354619889564

namespace A129076

/-- `A051027(A051027(n+1))` -/
def P61453354619889564.Spec : Prop :=
  ∀ n, P61453354619889564.a n = A129076 (n + 1)

end A129076

/-! ## A129076.P16943139979898386992

`∑{d}[A143348(∑{d}[A143348(n+1), #]), #]`
-/

namespace A129076.P16943139979898386992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A129076.P16943139979898386992

namespace A129076

/-- `∑{d}[A143348(∑{d}[A143348(n+1), #]), #]` -/
def P16943139979898386992.Spec : Prop :=
  ∀ n, (P16943139979898386992.a n : ℤ) = A129076 (n + 1)

end A129076

/-! ## A129076.P17476597077016206643

`A051027(A000203(∑{d}[1-4/2-n, #]))`
-/

namespace A129076.P17476597077016206643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000203 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)).toNat

end

end A129076.P17476597077016206643

namespace A129076

/-- `A051027(A000203(∑{d}[1-4/2-n, #]))` -/
def P17476597077016206643.Spec : Prop :=
  ∀ n, P17476597077016206643.a n = A129076 (n + 1)

end A129076

/-!
# A129077: Prime numbers that are the sum of consecutive prime numbers with the final digit 1 (primes in A030430).

The programs for A129077, there is no canonical definition to state claims against.
-/

/-! ## A129077.P2695546548634959180

`p?[∑[p?[5*n+1]]]`
-/

namespace A129077.P2695546548634959180
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129077.P2695546548634959180

/-! ## A129077.P12398246115767663660

`p?[∑[A030430(n+1)]]`
-/

namespace A129077.P12398246115767663660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129077.P12398246115767663660

/-! ## A129077.P14611602184754448399

`p?[∑[A045453(n+2)]]`
-/

namespace A129077.P14611602184754448399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129077.P14611602184754448399

/-! ## A129077.P12163168440854094112

`p?[∑[record[A060954(n+1)]]]`
-/

namespace A129077.P12163168440854094112
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129077.P12163168440854094112

/-! ## A129077.P14238502179665358466

`p?[∑[A000040(A049511(n+1))]]`
-/

namespace A129077.P14238502179665358466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049511 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129077.P14238502179665358466

/-!
# A129079: Prime numbers that are the sum of consecutive prime numbers with the final digit 7 (primes in A030432).

The programs for A129079, there is no canonical definition to state claims against.
-/

/-! ## A129079.P8416920390028441358

`p?[∑[p?[5*n+7]]]`
-/

namespace A129079.P8416920390028441358
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129079.P8416920390028441358

/-! ## A129079.P1923295986046030514

`p?[∑[A030432(n+1)]]`
-/

namespace A129079.P1923295986046030514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129079.P1923295986046030514

/-! ## A129079.P10166683017446068150

`p?[∑[A045380(n+2)]]`
-/

namespace A129079.P10166683017446068150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129079.P10166683017446068150

/-! ## A129079.P10394330731959243006

`p?[∑[A045357(n+3)]]`
-/

namespace A129079.P10394330731959243006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129079.P10394330731959243006

/-! ## A129079.P11435510275456516553

`p?[∑[A017353(A102342(n+1))]]`
-/

namespace A129079.P11435510275456516553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A102342 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129079.P11435510275456516553

/-!
# A129080: Expansion of g.f. x*(x^4 - 5*x^3 + 10*x^2 - 12*x + 4)/((1-x)^2*(1 - 3*x + 2*x^2 - x^3)).

The programs for A129080, the canonical program `A129080.P6025520493641084570` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129080 has offset 1).

The definition of A129080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4-12x+10x^2-5x^3+x^4)/(1-5x+9x^2-8x^3+4x^4-x^5))` (program `A129080.P6025520493641084570`, by `A129080.P6025520493641084570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129080.P6025520493641084570

`ogf((4-12x+10x^2-5x^3+x^4)/(1-5x+9x^2-8x^3+4x^4-x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129080

/-- `ogf((4-12x+10x^2-5x^3+x^4)/(1-5x+9x^2-8x^3+4x^4-x^5))` -/
def P6025520493641084570.Spec : Prop :=
  ∀ n, P6025520493641084570.a n = A129080 (n + 1)

theorem P6025520493641084570.correct : P6025520493641084570.Spec := by
  intro n
  simp only [A129080, Nat.add_sub_cancel]

end A129080

/-! ## A129080.P3385067771831719985

`A095263(n+1)+2*(n+1)+1`
-/

namespace A129080.P3385067771831719985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1) + (2 * (n + 1) : ℤ) + 1

end

end A129080.P3385067771831719985

namespace A129080

/-- `A095263(n+1)+2*(n+1)+1` -/
def P3385067771831719985.Spec : Prop :=
  ∀ n, P3385067771831719985.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P6111295973535751143

`a(n-1)+A095263(n+1)-A095263(n)+2` with `a(0)=4`
-/

namespace A129080.P6111295973535751143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + A095263 (n + 1) - A095263 n + 2

end

end A129080.P6111295973535751143

namespace A129080

/-- `a(n-1)+A095263(n+1)-A095263(n)+2` -/
def P6111295973535751143.Spec : Prop :=
  ∀ n, P6111295973535751143.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P6618016253578647504

`∑[A052921(n)+2]+1`
-/

namespace A129080.P6618016253578647504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129080.P6618016253578647504

namespace A129080

/-- `∑[A052921(n)+2]+1` -/
def P6618016253578647504.Spec : Prop :=
  ∀ n, P6618016253578647504.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P17959216153834741727

`Δ[A181984(n)+(n+1)²]`
-/

namespace A129080.P17959216153834741727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129080.P17959216153834741727

namespace A129080

/-- `Δ[A181984(n)+(n+1)²]` -/
def P17959216153834741727.Spec : Prop :=
  ∀ n, P17959216153834741727.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P7707533849006779365

`∑[A329244(n+1)+1]+1`
-/

namespace A129080.P7707533849006779365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129080.P7707533849006779365

namespace A129080

/-- `∑[A329244(n+1)+1]+1` -/
def P7707533849006779365.Spec : Prop :=
  ∀ n, P7707533849006779365.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P8336452846643581455

`A095263(n+1)+2*n+3`
-/

namespace A129080.P8336452846643581455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1) + (2 * n + 3 : ℤ)

end

end A129080.P8336452846643581455

namespace A129080

/-- `A095263(n+1)+2*n+3` -/
def P8336452846643581455.Spec : Prop :=
  ∀ n, P8336452846643581455.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P17915168720137836121

`∑[∑[A034943(n+1)]+2]+1`
-/

namespace A129080.P17915168720137836121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129080.P17915168720137836121

namespace A129080

/-- `∑[∑[A034943(n+1)]+2]+1` -/
def P17915168720137836121.Spec : Prop :=
  ∀ n, P17915168720137836121.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P3579414304651033220

`Δ[A034943(n+2)+(n+1)²]`
-/

namespace A129080.P3579414304651033220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 2) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129080.P3579414304651033220

namespace A129080

/-- `Δ[A034943(n+2)+(n+1)²]` -/
def P3579414304651033220.Spec : Prop :=
  ∀ n, P3579414304651033220.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P17034315083464522752

`A144396(n+1)+A095263(n+1)`
-/

namespace A129080.P17034315083464522752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A095263 (n + 1)

end

end A129080.P17034315083464522752

namespace A129080

/-- `A144396(n+1)+A095263(n+1)` -/
def P17034315083464522752.Spec : Prop :=
  ∀ n, P17034315083464522752.a n = A129080 (n + 1)

end A129080

/-! ## A129080.P9326320940347378812

`A031193(n+1)+A134816(A031193(n+1))-n`
-/

namespace A129080.P9326320940347378812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1) + (A134816 (A031193 (n + 1)).toNat - (n : ℤ))

end

end A129080.P9326320940347378812

namespace A129080

/-- `A031193(n+1)+A134816(A031193(n+1))-n` -/
def P9326320940347378812.Spec : Prop :=
  ∀ n, P9326320940347378812.a n = A129080 (n + 1)

end A129080

/-!
# A129081: Primes appearing in partial sums of A030433 (primes ending in 9).

The programs for A129081, there is no canonical definition to state claims against.
-/

/-! ## A129081.P2520949814741570003

`p?[∑[p?[5*n-1]]]`
-/

namespace A129081.P2520949814741570003
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129081.P2520949814741570003

/-! ## A129081.P10673180356677164178

`p?[∑[or(1, p?[5*n+4])]]`
-/

namespace A129081.P10673180356677164178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129081.P10673180356677164178

/-! ## A129081.P9718590393676871246

`p?[∑[∏{p}[p?[5*n+4], #]]]`
-/

namespace A129081.P9718590393676871246
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129081.P9718590393676871246

/-! ## A129081.P4234038563983800180

`p?[∑[A030433(n+1)]]`
-/

namespace A129081.P4234038563983800180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129081.P4234038563983800180

/-! ## A129081.P16354782473298858872

`p?[∑[A045457(n+2)]]`
-/

namespace A129081.P16354782473298858872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129081.P16354782473298858872

/-!
# A129082: a(n) = numerator of b(n): b(n) = the maximum possible value for a continued fraction whose terms are a permutation of the terms of the simple continued fraction for H(n) = sum{k=1 to n} 1/k, the n-th harmonic number.

The programs for A129082, there is no canonical definition to state claims against.
-/

/-! ## A129082.P5535596795579375485

`record[A323556(∑[n+2])]`
-/

namespace A129082.P5535596795579375485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323556 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129082.P5535596795579375485

/-!
# A129086: Coefficients of solution to A(x) = (1 + x*A(x)^2) * (1-3*x) / (1-2*x)^2.

The programs for A129086, there is no canonical definition to state claims against.
-/

/-! ## A129086.P13359523943694942707

`Δ[A036234(A360266(n))]`
-/

namespace A129086.P13359523943694942707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A360266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129086.P13359523943694942707

/-! ## A129086.P1589888812256551490

`A346660(n+2)+A346619(A346637(n))`
-/

namespace A129086.P1589888812256551490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346660 (n + 2) + A346619 (A346637 n).toNat

end

end A129086.P1589888812256551490

/-!
# A129088: a(1)=a(2)=1; a(n) = gcd(a(n-1), n) + gcd(a(n-2), n).

The programs for A129088, the canonical program `A129088.P7630208727096207791` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129088 has offset 1).

The definition of A129088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129088.P7630208727096207791

`gcd(n+1, a(n-1))+gcd(n+1, a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129088

/-- `gcd(n+1, a(n-1))+gcd(n+1, a(n-2))` -/
def P7630208727096207791.Spec : Prop :=
  ∀ n, (P7630208727096207791.a n : ℤ) = A129088 (n + 1)

theorem P7630208727096207791.correct : P7630208727096207791.Spec := by
  intro n
  simp only [A129088, Nat.add_sub_cancel]

end A129088

/-! ## A129088.P5456690303702136348

`A099427(A004442(n)^A182850(n+1))`
-/

namespace A129088.P5456690303702136348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099427 (SequenceMachineLib.roundAway ((A004442 n : ℚ) ^ (A182850 (n + 1) : ℤ))).toNat

end

end A129088.P5456690303702136348

namespace A129088

/-- `A099427(A004442(n)^A182850(n+1))` -/
def P5456690303702136348.Spec : Prop :=
  ∀ n, P5456690303702136348.a n = A129088 (n + 1)

end A129088

/-! ## A129088.P9789293070887836067

`A305430(A052531(n))-A052531(n)`
-/

namespace A129088.P9789293070887836067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305430 (A052531 n).toNat - A052531 n

end

end A129088.P9789293070887836067

namespace A129088

/-- `A305430(A052531(n))-A052531(n)` -/
def P9789293070887836067.Spec : Prop :=
  ∀ n, P9789293070887836067.a n = A129088 (n + 1)

end A129088

/-! ## A129088.P14633407535469287975

`A305430(A000051(n))%A052531(n)`
-/

namespace A129088.P14633407535469287975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305430 (A000051 n).toNat) (A052531 n)

end

end A129088.P14633407535469287975

namespace A129088

/-- `A305430(A000051(n))%A052531(n)` -/
def P14633407535469287975.Spec : Prop :=
  ∀ n, P14633407535469287975.a n = A129088 (n + 1)

end A129088

/-! ## A129088.P5677696471542707667

`A088748(A000079(n)-A065331(n+1))`
-/

namespace A129088.P5677696471542707667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A000079 n - A065331 (n + 1)).toNat

end

end A129088.P5677696471542707667

namespace A129088

/-- `A088748(A000079(n)-A065331(n+1))` -/
def P5677696471542707667.Spec : Prop :=
  ∀ n, P5677696471542707667.a n = A129088 (n + 1)

end A129088

/-!
# A129089: a(0)=a(1)=1. a(n) = gcd(a(n-1), n) + gcd(a(n-2), n).

The programs for A129089, the canonical program `A129089.P1556907704715207181` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129089 has offset 0).

The definition of A129089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129089.P1556907704715207181

`gcd(n, a(n-1))+gcd(n, a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A129089

/-- `gcd(n, a(n-1))+gcd(n, a(n-2))` -/
def P1556907704715207181.Spec : Prop :=
  ∀ n, (P1556907704715207181.a n : ℤ) = A129089 n

theorem P1556907704715207181.correct : P1556907704715207181.Spec := by
  intro n
  simp only [A129089]

end A129089

/-! ## A129089.P4212490606520595256

`A133457((1-char[1])*A297420(n)²+1)+1`
-/

namespace A129089.P4212490606520595256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133457 ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A297420 n ^ 2 + 1).toNat + 1

end

end A129089.P4212490606520595256

namespace A129089

/-- `A133457((1-char[1])*A297420(n)²+1)+1` -/
def P4212490606520595256.Spec : Prop :=
  ∀ n, P4212490606520595256.a n = A129089 n

end A129089

/-! ## A129089.P457360967388612751

`A263021(A001222(A166974(n²)))`
-/

namespace A129089.P457360967388612751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263021 (A001222 (A166974 (n ^ 2)).toNat).toNat

end

end A129089.P457360967388612751

namespace A129089

/-- `A263021(A001222(A166974(n²)))` -/
def P457360967388612751.Spec : Prop :=
  ∀ n, P457360967388612751.a n = A129089 n

end A129089

/-! ## A129089.P17612069985441632424

`A000455(A000001(n)%A075530(n))`
-/

namespace A129089.P17612069985441632424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000455 (Int.tmod (A000001 n) (A075530 n)).toNat

end

end A129089.P17612069985441632424

namespace A129089

/-- `A000455(A000001(n)%A075530(n))` -/
def P17612069985441632424.Spec : Prop :=
  ∀ n, P17612069985441632424.a n = A129089 n

end A129089

/-! ## A129089.P10371152656452255829

`A010553(gcd(A002283(n), A218127(n)))`
-/

namespace A129089.P10371152656452255829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (Int.gcd (A002283 n) (A218127 n))

end

end A129089.P10371152656452255829

namespace A129089

/-- `A010553(gcd(A002283(n), A218127(n)))` -/
def P10371152656452255829.Spec : Prop :=
  ∀ n, P10371152656452255829.a n = A129089 n

end A129089

/-!
# A129090: a(1)=1; a(n) = gcd(a(n-1), n) + lcm(a(n-1), n).

The programs for A129090, there is no canonical definition to state claims against.
-/

/-! ## A129090.P765302556186312593

`lcm(n+1, a(n-1))+gcd(n+1, a(n-1))` with `a(0)=1`
-/

namespace A129090.P765302556186312593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1) (a (n - 1)) + Nat.gcd (n + 1) (a (n - 1))

end

end A129090.P765302556186312593

/-! ## A129090.P3340887278005507123

`∑[∑[A053575(A182953(n))]]`
-/

namespace A129090.P3340887278005507123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A182953 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129090.P3340887278005507123

/-!
# A129091: a(0)=1; a(n) = gcd(a(n-1), n) + lcm(a(n-1), n).

The programs for A129091, there is no canonical definition to state claims against.
-/

/-! ## A129091.P7033730064164950838

`lcm(n, a(n-1))+gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A129091.P7033730064164950838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm n (a (n - 1)) + Nat.gcd n (a (n - 1))

end

end A129091.P7033730064164950838

/-! ## A129091.P2738935822696567664

`A341744(lcm(n, a(n-1)))` with `a(0)=1`
-/

namespace A129091.P2738935822696567664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341744 (Int.lcm (n : ℤ) (a (n - 1)))

end

end A129091.P2738935822696567664

/-!
# A129092: a(n) = A030067(2^n - 1) for n >= 1, where A030067 is the semi-Fibonacci numbers.

The programs for A129092, there is no canonical definition to state claims against.
-/

/-! ## A129092.P12448390782418462003

`A030067(2^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129092.P12448390782418462003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (2 ^ (n + 1) - 1)

end

end A129092.P12448390782418462003

/-! ## A129092.P17916095873885632888

`A129093(n)+a(n-1)` with `a(0)=1`
-/

namespace A129092.P17916095873885632888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129093 n + a (n - 1)

end

end A129092.P17916095873885632888

/-! ## A129092.P14168528087859825580

`∑[A129093(n+1)]+1-A129093(n+1)`
-/

namespace A129092.P14168528087859825580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A129093 (n + 1))

end

end A129092.P14168528087859825580

/-! ## A129092.P2660847036293485591

`∑[A129094(n+1)-A129101(n)]+1`
-/

namespace A129092.P2660847036293485591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129094 (n + 1) - A129101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129092.P2660847036293485591

/-! ## A129092.P1683302617225408921

`A030068(2^n)`
-/

namespace A129092.P1683302617225408921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (2 ^ n)

end

end A129092.P1683302617225408921

/-!
# A129093: a(n) = A030067(2^(n+1) - 3) for n>=1, where A030067 is the semi-Fibonacci numbers.

The programs for A129093, there is no canonical definition to state claims against.
-/

/-! ## A129093.P15499789265462365939

`A129092(n+2)-A129092(n+1)`
-/

namespace A129093.P15499789265462365939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129092 (n + 2) - A129092 (n + 1)

end

end A129093.P15499789265462365939

/-! ## A129093.P16320343096217553347

`A030067(2^(n+2)-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129093.P16320343096217553347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (2 ^ (n + 2) - 3)

end

end A129093.P16320343096217553347

/-! ## A129093.P7102820237190663428

`Δ[A129092(n+1)]`
-/

namespace A129093.P7102820237190663428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129093.P7102820237190663428

/-! ## A129093.P16119076082643310065

`A129094(n+2)-A129101(n+1)`
-/

namespace A129093.P16119076082643310065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129094 (n + 2) - A129101 (n + 1)

end

end A129093.P16119076082643310065

/-! ## A129093.P15317522383890655773

`A169739(2^n-1)`
-/

namespace A129093.P15317522383890655773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 (2 ^ n - 1)

end

end A129093.P15317522383890655773

/-!
# A129094: a(n) = A030067(2^n + 2^(n-1) - 1) for n>=1, where A030067 gives the semi-Fibonacci numbers.

The programs for A129094, there is no canonical definition to state claims against.
-/

/-! ## A129094.P4619736274776297965

`A030067(2^(n+1)+2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129094.P4619736274776297965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (2 ^ (n + 1) + 2 ^ n - 1)

end

end A129094.P4619736274776297965

/-! ## A129094.P8715613704972698945

`A030068(floor(2^(n-1))+2^n)`
-/

namespace A129094.P8715613704972698945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (2 ^ n : ℤ)).toNat

end

end A129094.P8715613704972698945

/-! ## A129094.P5451354409348225683

`∑[A030068(A083329(n))]`
-/

namespace A129094.P5451354409348225683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (A083329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129094.P5451354409348225683

/-! ## A129094.P10700559931797072790

`or(1, A030068(A003945(n)))`
-/

namespace A129094.P10700559931797072790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030068 (A003945 n).toNat)

end

end A129094.P10700559931797072790

/-! ## A129094.P3096036822020868590

`∩[A030068(n+1), ∑[A030067(n+2)]]`
-/

namespace A129094.P3096036822020868590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129094.P3096036822020868590

/-!
# A129095: Semi-Pell numbers: a(n) = a(n/2) (n even), a(n) = 2*a(n-1) + a(n-2) (n odd >1), with a(1) = 1.

The programs for A129095, there is no canonical definition to state claims against.
-/

/-! ## A129095.P8507777146239626274

`A129096(A003602(n+1))`
-/

namespace A129095.P8507777146239626274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (A003602 (n + 1)).toNat

end

end A129095.P8507777146239626274

/-! ## A129095.P10859155228214182206

`A129096(A025480(n)+1)`
-/

namespace A129095.P10859155228214182206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (A025480 n + 1).toNat

end

end A129095.P10859155228214182206

/-! ## A129095.P1098688994381159260

`A129096((A000265(n+1)+1)/2)`
-/

namespace A129095.P1098688994381159260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (SequenceMachineLib.roundAway ((A000265 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A129095.P1098688994381159260

/-! ## A129095.P15497465333220526922

`Δ[A129096(n+1)/2]`
-/

namespace A129095.P15497465333220526922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129096 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129095.P15497465333220526922

/-! ## A129095.P729543906738625131

`(A129096(n+2)-A129096(n+1))/2`
-/

namespace A129095.P729543906738625131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129096 (n + 2) - A129096 (n + 1) : ℚ) / 2

end

end A129095.P729543906738625131

/-!
# A129096: A bisection of A129095: a(n) = A129095(2n-1) for n>=1.

The programs for A129096, there is no canonical definition to state claims against.
-/

/-! ## A129096.P17448952310369771463

`A129095(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129096.P17448952310369771463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129095 (2 * n + 1)

end

end A129096.P17448952310369771463

/-! ## A129096.P5591593393006991963

`A129095(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129096.P5591593393006991963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129095 (2 * (n + 1) - 1)

end

end A129096.P5591593393006991963

/-! ## A129096.P1088635529329631833

`record[A129095(n+1)]`
-/

namespace A129096.P1088635529329631833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129096.P1088635529329631833

/-! ## A129096.P5671082280647056673

`or(1, A129095(A005408(n)))`
-/

namespace A129096.P5671082280647056673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129095 (A005408 n).toNat)

end

end A129096.P5671082280647056673

/-! ## A129096.P13422032449370419889

`or(A000034(n), A129095(A267872(n)))`
-/

namespace A129096.P13422032449370419889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A129095 (A267872 n).toNat)

end

end A129096.P13422032449370419889

/-!
# A129097: a(n) = A129095(2^n - 1) for n>=1.

The programs for A129097, there is no canonical definition to state claims against.
-/

/-! ## A129097.P5132129103863892415

`A129095(2^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129097.P5132129103863892415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129095 (2 ^ (n + 1) - 1)

end

end A129097.P5132129103863892415

/-! ## A129097.P13307807525823567633

`A129096(2^n)`
-/

namespace A129097.P13307807525823567633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (2 ^ n)

end

end A129097.P13307807525823567633

/-! ## A129097.P10497072752858673403

`or(1, A129096(A000079(n)))`
-/

namespace A129097.P10497072752858673403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129096 (A000079 n).toNat)

end

end A129097.P10497072752858673403

/-! ## A129097.P8080774007073414965

`record[A129096(Δ[A178992(n+1)])]`
-/

namespace A129097.P8080774007073414965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178992 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129097.P8080774007073414965

/-! ## A129097.P17863864524663752804

`record[root(A129096(n+1), A351168(n+1))]`
-/

namespace A129097.P17863864524663752804
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129096 (n + 1) : ℝ) ^ (1 / (A351168 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129097.P17863864524663752804

/-!
# A129098: a(n) = A129095(2^n + 2^(n-1) - 1) for n>=1.

The programs for A129098, there is no canonical definition to state claims against.
-/

/-! ## A129098.P11608466173423338049

`A129095(2^(n+1)+2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129098.P11608466173423338049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129095 (2 ^ (n + 1) + 2 ^ n - 1)

end

end A129098.P11608466173423338049

/-! ## A129098.P18411852588849225444

`A129096(A003945(n))`
-/

namespace A129098.P18411852588849225444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (A003945 n).toNat

end

end A129098.P18411852588849225444

/-! ## A129098.P18387216871160243507

`A129096(A166857(n))`
-/

namespace A129098.P18387216871160243507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (A166857 n).toNat

end

end A129098.P18387216871160243507

/-! ## A129098.P8929960177365637738

`A129096(A167104(n))`
-/

namespace A129098.P8929960177365637738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (A167104 n).toNat

end

end A129098.P8929960177365637738

/-! ## A129098.P10849385141152305925

`A129096(A167648(n))`
-/

namespace A129098.P10849385141152305925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129096 (A167648 n).toNat

end

end A129098.P10849385141152305925

/-!
# A129099: a(n) = Sum_{k=2^(n-1)..2^n-1} A129095(k) for n>=1.

The programs for A129099, there is no canonical definition to state claims against.
-/

/-! ## A129099.P9885787593615883152

`(A129097(n+2)-A129097(n+1))/2`
-/

namespace A129099.P9885787593615883152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129097 (n + 2) - A129097 (n + 1) : ℚ) / 2

end

end A129099.P9885787593615883152

/-! ## A129099.P17014323011460462726

`Δ[A129097(n+1)/2]`
-/

namespace A129099.P17014323011460462726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129097 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129099.P17014323011460462726

/-! ## A129099.P12374231565777312700

`Δ[A129096(2^n)/2]`
-/

namespace A129099.P12374231565777312700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129096 (2 ^ n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129099.P12374231565777312700

/-! ## A129099.P13169724361478746022

`Δ[or(1, A129096(A000079(n)))/2]`
-/

namespace A129099.P13169724361478746022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A129096 (A000079 n).toNat) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129099.P13169724361478746022

/-! ## A129099.P17850066388345149041

`Δ[A129095(∑[A000079(n)])/2]`
-/

namespace A129099.P17850066388345149041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129095 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129099.P17850066388345149041

