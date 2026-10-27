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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B003.C006
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
# A099301: Arithmetic derivative of d(n), the number of divisors of n.

The programs for A099301, the canonical program `A099301.P14401203387381183199` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099301 has offset 1).

The definition of A099301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099301.P14401203387381183199

`A003415(A000005(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099301

/-- `A003415(A000005(n+1))` -/
def P14401203387381183199.Spec : Prop :=
  ∀ n, P14401203387381183199.a n = A099301 (n + 1)

theorem P14401203387381183199.correct : P14401203387381183199.Spec := by
  intro n
  simp only [A099301, Nat.add_sub_cancel]

end A099301

/-! ## A099301.P1005712437842752235

`A003415(∏{e}[n+1, #+1])`
-/

namespace A099301.P1005712437842752235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A099301.P1005712437842752235

namespace A099301

/-- `A003415(∏{e}[n+1, #+1])` -/
def P1005712437842752235.Spec : Prop :=
  ∀ n, P1005712437842752235.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P1189447397329786564

`A319703(2*∏{e}[n+1, #+1])`
-/

namespace A099301.P1189447397329786564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A099301.P1189447397329786564

namespace A099301

/-- `A319703(2*∏{e}[n+1, #+1])` -/
def P1189447397329786564.Spec : Prop :=
  ∀ n, P1189447397329786564.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P8286048688906145595

`A003415(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A099301.P8286048688906145595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A099301.P8286048688906145595

namespace A099301

/-- `A003415(∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P8286048688906145595.Spec : Prop :=
  ∀ n, P8286048688906145595.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P8846012820460358512

`A003415(∑{d}[n+1, #+1]%∑{d}[n+1, #])`
-/

namespace A099301.P8846012820460358512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((∑ d ∈ Nat.divisors (f1 n), (d + 1)) % (∑ d ∈ Nat.divisors (f2 n), d))

end

end A099301.P8846012820460358512

namespace A099301

/-- `A003415(∑{d}[n+1, #+1]%∑{d}[n+1, #])` -/
def P8846012820460358512.Spec : Prop :=
  ∀ n, P8846012820460358512.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P11793098902379233540

`A003415(Δ[A006218(n)])`
-/

namespace A099301.P11793098902379233540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n).toNat

end

end A099301.P11793098902379233540

namespace A099301

/-- `A003415(Δ[A006218(n)])` -/
def P11793098902379233540.Spec : Prop :=
  ∀ n, P11793098902379233540.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P7117093881616076028

`A068512(A062011(n+1))`
-/

namespace A099301.P7117093881616076028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (A062011 (n + 1)).toNat

end

end A099301.P7117093881616076028

namespace A099301

/-- `A068512(A062011(n+1))` -/
def P7117093881616076028.Spec : Prop :=
  ∀ n, P7117093881616076028.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P6516834605033498099

`A319703(A131089(n+1))`
-/

namespace A099301.P6516834605033498099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A131089 (n + 1)).toNat

end

end A099301.P6516834605033498099

namespace A099301

/-- `A319703(A131089(n+1))` -/
def P6516834605033498099.Spec : Prop :=
  ∀ n, P6516834605033498099.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P4337630229307812104

`A003415(log2(A338506(n+1)))`
-/

namespace A099301.P4337630229307812104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.logb 2 (A338506 (n + 1) : ℝ))).toNat

end

end A099301.P4337630229307812104

namespace A099301

/-- `A003415(log2(A338506(n+1)))` -/
def P4337630229307812104.Spec : Prop :=
  ∀ n, P4337630229307812104.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P10353443002304909410

`A003415(A032741(n+1)+1)`
-/

namespace A099301.P10353443002304909410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A032741 (n + 1) + 1).toNat

end

end A099301.P10353443002304909410

namespace A099301

/-- `A003415(A032741(n+1)+1)` -/
def P10353443002304909410.Spec : Prop :=
  ∀ n, P10353443002304909410.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P15067797989466881046

`A319703(2*A000005(n+1))`
-/

namespace A099301.P15067797989466881046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A000005 (n + 1)).toNat

end

end A099301.P15067797989466881046

namespace A099301

/-- `A319703(2*A000005(n+1))` -/
def P15067797989466881046.Spec : Prop :=
  ∀ n, P15067797989466881046.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P10889327193068310868

`A003415(A320111(2*(n+1)))`
-/

namespace A099301.P10889327193068310868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A320111 (2 * (n + 1))).toNat

end

end A099301.P10889327193068310868

namespace A099301

/-- `A003415(A320111(2*(n+1)))` -/
def P10889327193068310868.Spec : Prop :=
  ∀ n, P10889327193068310868.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P17348728719370605499

`∑{d}[A000005(n+1), A300251(#)]`
-/

namespace A099301.P17348728719370605499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A099301.P17348728719370605499

namespace A099301

/-- `∑{d}[A000005(n+1), A300251(#)]` -/
def P17348728719370605499.Spec : Prop :=
  ∀ n, P17348728719370605499.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P607455424863400608

`A003415(1-A049820(n+1)+n)`
-/

namespace A099301.P607455424863400608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (1 - A049820 (n + 1) + (n : ℤ)).toNat

end

end A099301.P607455424863400608

namespace A099301

/-- `A003415(1-A049820(n+1)+n)` -/
def P607455424863400608.Spec : Prop :=
  ∀ n, P607455424863400608.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P4247756692205515170

`A003415(A038040(n+1)/(n+1))`
-/

namespace A099301.P4247756692205515170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A099301.P4247756692205515170

namespace A099301

/-- `A003415(A038040(n+1)/(n+1))` -/
def P4247756692205515170.Spec : Prop :=
  ∀ n, P4247756692205515170.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P15440317705432888361

`A168036(∏{e}[n+1, #+1])+A000005(n+1)`
-/

namespace A099301.P15440317705432888361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + A000005 (n + 1)

end

end A099301.P15440317705432888361

namespace A099301

/-- `A168036(∏{e}[n+1, #+1])+A000005(n+1)` -/
def P15440317705432888361.Spec : Prop :=
  ∀ n, P15440317705432888361.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P10351998139706428636

`A168036(∑{d}[n+1, gcd(n, #)])+A000005(n+1)`
-/

namespace A099301.P10351998139706428636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) + A000005 (n + 1)

end

end A099301.P10351998139706428636

namespace A099301

/-- `A168036(∑{d}[n+1, gcd(n, #)])+A000005(n+1)` -/
def P10351998139706428636.Spec : Prop :=
  ∀ n, P10351998139706428636.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P16472515506423978805

`A003415(A033273(n+1)+A001221(n+1))`
-/

namespace A099301.P16472515506423978805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A033273 (n + 1) + A001221 (n + 1)).toNat

end

end A099301.P16472515506423978805

namespace A099301

/-- `A003415(A033273(n+1)+A001221(n+1))` -/
def P16472515506423978805.Spec : Prop :=
  ∀ n, P16472515506423978805.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P11593162274995774902

`A319703(A000005(n+1)+A000005(n+1))`
-/

namespace A099301.P11593162274995774902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A000005 (n + 1) + A000005 (n + 1)).toNat

end

end A099301.P11593162274995774902

namespace A099301

/-- `A319703(A000005(n+1)+A000005(n+1))` -/
def P11593162274995774902.Spec : Prop :=
  ∀ n, P11593162274995774902.a n = A099301 (n + 1)

end A099301

/-! ## A099301.P7832601179968661394

`A003415(A173442(n+1)+A173441(n+1))`
-/

namespace A099301.P7832601179968661394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A173442 (n + 1) + A173441 (n + 1)).toNat

end

end A099301.P7832601179968661394

namespace A099301

/-- `A003415(A173442(n+1)+A173441(n+1))` -/
def P7832601179968661394.Spec : Prop :=
  ∀ n, P7832601179968661394.a n = A099301 (n + 1)

end A099301

/-!
# A099302: Number of integer solutions to x' = n, where x' is the arithmetic derivative of x.

The programs for A099302, there is no canonical definition to state claims against.
-/

/-! ## A099302.P1872251290255060912

`and(A052944(2*(n+2)), A353835(A189076(n)))`
-/

namespace A099302.P1872251290255060912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052944 (2 * (n + 2))) (A353835 (A189076 n).toNat)

end

end A099302.P1872251290255060912

/-! ## A099302.P16857829374382829145

`and(-(2*n+1), A102669(A059966(n+1)))`
-/

namespace A099302.P16857829374382829145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 * n + 1 : ℤ)) (A102669 (A059966 (n + 1)).toNat)

end

end A099302.P16857829374382829145

/-! ## A099302.P4001627727208278429

`and(A102669(A059966(n+1)), A124297(n+1))`
-/

namespace A099302.P4001627727208278429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102669 (A059966 (n + 1)).toNat) (A124297 (n + 1))

end

end A099302.P4001627727208278429

/-! ## A099302.P6854386719286917301

`and(A102669(A059966(n+1)), A191131(n+1))`
-/

namespace A099302.P6854386719286917301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102669 (A059966 (n + 1)).toNat) (A191131 (n + 1))

end

end A099302.P6854386719286917301

/-! ## A099302.P1005398629345691136

`and(A102669(A059966(n+1)), A153153(2*(n+1)))`
-/

namespace A099302.P1005398629345691136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102669 (A059966 (n + 1)).toNat) (A153153 (2 * (n + 1)))

end

end A099302.P1005398629345691136

/-!
# A099305: Number of solutions of the equation (n+k)' = n' + k', with 1 <= k <= 2n, where n' denotes the arithmetic derivative of n.

The programs for A099305, there is no canonical definition to state claims against.
-/

/-! ## A099305.P13323884839578927285

`∑{d}[n+1, A010051(A000120(#)+A000043(#+1)+1)]`
-/

namespace A099305.P13323884839578927285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A000120 d + A000043 (d + 1) + 1).toNat

end

end A099305.P13323884839578927285

/-! ## A099305.P9358185006169753686

`A083889(A069099(2*n+5))+1`
-/

namespace A099305.P9358185006169753686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083889 (A069099 (2 * n + 5)).toNat + 1

end

end A099305.P9358185006169753686

/-! ## A099305.P6543220245283803106

`A082898(∑[A006483(A008838(n))])`
-/

namespace A099305.P6543220245283803106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006483 (A008838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099305.P6543220245283803106

/-! ## A099305.P13542560042193909811

`A001221(A198328(n+12)+A027642(n+11))`
-/

namespace A099305.P13542560042193909811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A198328 (n + 12) + A027642 (n + 11)).toNat

end

end A099305.P13542560042193909811

/-! ## A099305.P10567702654115856049

`A356122(C(A356164(n+1), A356169(n+5)))`
-/

namespace A099305.P10567702654115856049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356122 (Nat.choose (A356164 (n + 1)).toNat (A356169 (n + 5)).toNat)

end

end A099305.P10567702654115856049

/-!
# A099306: n''', the third arithmetic derivative of n.

The programs for A099306, the canonical program `A099306.P5435718104509617446` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099306 has offset 0).

The definition of A099306 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099306.P5435718104509617446

`A003415(A003415(A003415(n)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099306

/-- `A003415(A003415(A003415(n)))` -/
def P5435718104509617446.Spec : Prop :=
  ∀ n, P5435718104509617446.a n = A099306 n

theorem P5435718104509617446.correct : P5435718104509617446.Spec := by
  intro n
  simp only [A099306]

end A099306

/-! ## A099306.P13323774716495687359

`∑{d}[A068346(n), A300251(#)]`
-/

namespace A099306.P13323774716495687359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A099306.P13323774716495687359

namespace A099306

/-- `∑{d}[A068346(n), A300251(#)]` -/
def P13323774716495687359.Spec : Prop :=
  ∀ n, P13323774716495687359.a n = A099306 n

end A099306

/-! ## A099306.P16895467113268100915

`A068346(A003415(n))`
-/

namespace A099306.P16895467113268100915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A003415 n).toNat

end

end A099306.P16895467113268100915

namespace A099306

/-- `A068346(A003415(n))` -/
def P16895467113268100915.Spec : Prop :=
  ∀ n, P16895467113268100915.a n = A099306 n

end A099306

/-! ## A099306.P18311141989055001534

`A068346(A168036(n)+n)`
-/

namespace A099306.P18311141989055001534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A168036 n + (n : ℤ)).toNat

end

end A099306.P18311141989055001534

namespace A099306

/-- `A068346(A168036(n)+n)` -/
def P18311141989055001534.Spec : Prop :=
  ∀ n, P18311141989055001534.a n = A099306 n

end A099306

/-! ## A099306.P10688206268228385294

`A068346(A129283(n)-n)`
-/

namespace A099306.P10688206268228385294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A129283 n - (n : ℤ)).toNat

end

end A099306.P10688206268228385294

namespace A099306

/-- `A068346(A129283(n)-n)` -/
def P10688206268228385294.Spec : Prop :=
  ∀ n, P10688206268228385294.a n = A099306 n

end A099306

/-! ## A099306.P8933404052622492953

`A068346(A368921(n)+A068346(n))`
-/

namespace A099306.P8933404052622492953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A368921 n + A068346 n).toNat

end

end A099306.P8933404052622492953

namespace A099306

/-- `A068346(A368921(n)+A068346(n))` -/
def P8933404052622492953.Spec : Prop :=
  ∀ n, P8933404052622492953.a n = A099306 n

end A099306

/-! ## A099306.P7626205921348703087

`A068346(∑[A258057(n)]-A258057(n))`
-/

namespace A099306.P7626205921348703087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (∑ j ∈ Finset.range (n + 1), f1 j - A258057 n).toNat

end

end A099306.P7626205921348703087

namespace A099306

/-- `A068346(∑[A258057(n)]-A258057(n))` -/
def P7626205921348703087.Spec : Prop :=
  ∀ n, P7626205921348703087.a n = A099306 n

end A099306

/-! ## A099306.P4371401303615096824

`A068346(A004277(n)-(n-A168036(n)))`
-/

namespace A099306.P4371401303615096824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A004277 n - ((n : ℤ) - A168036 n)).toNat

end

end A099306.P4371401303615096824

namespace A099306

/-- `A068346(A004277(n)-(n-A168036(n)))` -/
def P4371401303615096824.Spec : Prop :=
  ∀ n, P4371401303615096824.a n = A099306 n

end A099306

/-! ## A099306.P16826065596960155853

`A068346(abs(A168036(2*n)-A168036(n)))`
-/

namespace A099306.P16826065596960155853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 |A168036 (2 * n) - A168036 n|.toNat

end

end A099306.P16826065596960155853

namespace A099306

/-- `A068346(abs(A168036(2*n)-A168036(n)))` -/
def P16826065596960155853.Spec : Prop :=
  ∀ n, P16826065596960155853.a n = A099306 n

end A099306

/-! ## A099306.P11714274133082738983

`A068346(A258651(∑[n+2]-1))`
-/

namespace A099306.P11714274133082738983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A099306.P11714274133082738983

namespace A099306

/-- `A068346(A258651(∑[n+2]-1))` -/
def P11714274133082738983.Spec : Prop :=
  ∀ n, P11714274133082738983.a n = A099306 n

end A099306

/-! ## A099306.P9444290023157895734

`A258651(A052905(n+1)+1)`
-/

namespace A099306.P9444290023157895734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A052905 (n + 1) + 1).toNat

end

end A099306.P9444290023157895734

namespace A099306

/-- `A258651(A052905(n+1)+1)` -/
def P9444290023157895734.Spec : Prop :=
  ∀ n, P9444290023157895734.a n = A099306 n

end A099306

/-!
# A099307: Least k such that the k-th arithmetic derivative of n is zero, or 0 if no k exists.

The programs for A099307, there is no canonical definition to state claims against.
-/

/-! ## A099307.P15141660684558921075

`(34%(34-A256750(n+1)))%34`
-/

namespace A099307.P15141660684558921075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 34 (34 - A256750 (n + 1))) 34

end

end A099307.P15141660684558921075

/-! ## A099307.P5931792394687010877

`A256750((n+1)*A328308(n+1))`
-/

namespace A099307.P5931792394687010877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 ((n + 1 : ℤ) * A328308 (n + 1)).toNat

end

end A099307.P5931792394687010877

/-! ## A099307.P18049945999555239584

`A327966((n+1)*A328308(n+1))`
-/

namespace A099307.P18049945999555239584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 ((n + 1 : ℤ) * A328308 (n + 1)).toNat

end

end A099307.P18049945999555239584

/-! ## A099307.P1645456319948306196

`(1-A341999(n+1))*A256750(n+1)`
-/

namespace A099307.P1645456319948306196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341999 (n + 1)) * A256750 (n + 1)

end

end A099307.P1645456319948306196

/-! ## A099307.P4673021152011184196

`(1-A341999(n+1))*A327966(n+1)`
-/

namespace A099307.P4673021152011184196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341999 (n + 1)) * A327966 (n + 1)

end

end A099307.P4673021152011184196

/-! ## A099307.P14237867650724319267

`A256750((n+1)*ceil(A256750(n+1)/(n+1)))`
-/

namespace A099307.P14237867650724319267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 ((n + 1 : ℤ) * ⌈(A256750 (n + 1) : ℚ) / (n + 1 : ℚ)⌉).toNat

end

end A099307.P14237867650724319267

/-! ## A099307.P9448449371101307329

`A256750(n+1)-A256750(n+1)*A359546(n+1)`
-/

namespace A099307.P9448449371101307329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n + 1) - A256750 (n + 1) * A359546 (n + 1)

end

end A099307.P9448449371101307329

/-!
# A099308: Numbers m whose k-th arithmetic derivative is zero for some k. Complement of A099309.

The programs for A099308, there is no canonical definition to state claims against.
-/

/-! ## A099308.P13478195643372518982

`eq[0, A341999(n)]`
-/

namespace A099308.P13478195643372518982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099308.P13478195643372518982

/-! ## A099308.P8060255211962777856

`eq[1, A328308(n)]`
-/

namespace A099308.P8060255211962777856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099308.P8060255211962777856

/-! ## A099308.P1247929631464664500

`lt[n, A351079(n)+1]`
-/

namespace A099308.P1247929631464664500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351079 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099308.P1247929631464664500

/-! ## A099308.P8442018903410917764

`record[n*A328308(n%(n+1))]`
-/

namespace A099308.P8442018903410917764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328308 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099308.P8442018903410917764

/-! ## A099308.P8212849817353779119

`eq[A256750(n), A327966(n)]`
-/

namespace A099308.P8212849817353779119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099308.P8212849817353779119

/-! ## A099308.P9074021570774892244

`comp[A099309(n+1)]`
-/

namespace A099308.P9074021570774892244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099308.P9074021570774892244

/-! ## A099308.P16252564240347422686

`filter[A047588(n+1), A328308(#)]`
-/

namespace A099308.P16252564240347422686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A099308.P16252564240347422686

/-! ## A099308.P4706729063913007152

`lt[1, A351078(A028310(n))+1]`
-/

namespace A099308.P4706729063913007152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099308.P4706729063913007152

/-! ## A099308.P6007606397570026877

`lt[A036453(n+1), A351078(n)+2]`
-/

namespace A099308.P6007606397570026877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099308.P6007606397570026877

/-! ## A099308.P15383215361414811661

`lt[n*A000007(A351078(n)), 1]`
-/

namespace A099308.P15383215361414811661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 (A351078 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A099308.P15383215361414811661

/-! ## A099308.P16499138773786071452

`eq[A000007(n), A000007(A351078(n))]`
-/

namespace A099308.P16499138773786071452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099308.P16499138773786071452

/-! ## A099308.P3330611660220320322

`eq[A000038(n), A000038(A351078(n))]`
-/

namespace A099308.P3330611660220320322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A351078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099308.P3330611660220320322

/-! ## A099308.P6878294533219556967

`eq[A130706(n), A130706(A351078(n))]`
-/

namespace A099308.P6878294533219556967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A351078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099308.P6878294533219556967

/-! ## A099308.P1039733511854004500

`eq[A130713(n), A130713(A351078(n))]`
-/

namespace A099308.P1039733511854004500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A351078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099308.P1039733511854004500

/-! ## A099308.P738603655746503796

`eq[A166926(n), A166926(A351078(n))]`
-/

namespace A099308.P738603655746503796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 (A351078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099308.P738603655746503796

/-! ## A099308.P6448711736681422554

`filter[A366870(n), A328308(#)]`
-/

namespace A099308.P6448711736681422554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A099308.P6448711736681422554

/-! ## A099308.P2274922588580221479

`filter[A090223(n+1), A328308(#)]`
-/

namespace A099308.P2274922588580221479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A099308.P2274922588580221479

/-! ## A099308.P13337123244528937165

`filter[A026185(n), A328308(#)]`
-/

namespace A099308.P13337123244528937165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A099308.P13337123244528937165

/-! ## A099308.P15966589712154159160

`filter[A099479(n), A328308(#)]`
-/

namespace A099308.P15966589712154159160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A099308.P15966589712154159160

/-! ## A099308.P4586895575644814422

`filter[A131737(2*n), A328308(#)]`
-/

namespace A099308.P4586895575644814422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A099308.P4586895575644814422

/-!
# A099309: Numbers n whose k-th arithmetic derivative is nonzero for all k. Complement of A099308.

The programs for A099309, there is no canonical definition to state claims against.
-/

/-! ## A099309.P1390672474156971462

`eq[0, A328308(n)]`
-/

namespace A099309.P1390672474156971462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099309.P1390672474156971462

/-! ## A099309.P6083539497363884423

`lt[0, A341999(n)]`
-/

namespace A099309.P6083539497363884423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099309.P6083539497363884423

/-! ## A099309.P2358023942603427371

`lt[A351079(n), n]`
-/

namespace A099309.P2358023942603427371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351079 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A099309.P2358023942603427371

/-! ## A099309.P12808772371999130561

`comp[A099308(n+1)]`
-/

namespace A099309.P12808772371999130561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099309.P12808772371999130561

/-! ## A099309.P12512593868646673367

`lt[n*A256750(n), n]`
-/

namespace A099309.P12512593868646673367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A256750 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A099309.P12512593868646673367

/-! ## A099309.P2705071138848821780

`lt[n*A351078(n), n]`
-/

namespace A099309.P2705071138848821780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A351078 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A099309.P2705071138848821780

/-! ## A099309.P13681109555282642168

`eq[0, A328312(n+1)]+1`
-/

namespace A099309.P13681109555282642168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099309.P13681109555282642168

/-! ## A099309.P11875035143191966279

`lt[A256750(n+1), 1]+1`
-/

namespace A099309.P11875035143191966279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A099309.P11875035143191966279

/-! ## A099309.P657290928166387904

`lt[A351078(n+1), 1]+1`
-/

namespace A099309.P657290928166387904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A099309.P657290928166387904

/-! ## A099309.P11273947612021323988

`filter[A002808(n+1), A341999(#)]`
-/

namespace A099309.P11273947612021323988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A099309.P11273947612021323988

/-! ## A099309.P10799152925979040965

`filter[A018252(n+1), A341999(#)]`
-/

namespace A099309.P10799152925979040965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A099309.P10799152925979040965

/-! ## A099309.P11754337400267714407

`filter[A141468(n+2), A341999(#)]`
-/

namespace A099309.P11754337400267714407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A099309.P11754337400267714407

/-! ## A099309.P17708600873167004070

`eq[A339579(n+1), A351078(n)]`
-/

namespace A099309.P17708600873167004070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099309.P17708600873167004070

/-! ## A099309.P16565368719736426413

`eq[A339579(n+1), A351079(n)]`
-/

namespace A099309.P16565368719736426413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099309.P16565368719736426413

/-! ## A099309.P3495639753338338367

`eq[A105348(2*n), A351078(n)]`
-/

namespace A099309.P3495639753338338367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099309.P3495639753338338367

/-! ## A099309.P16923229385041494839

`eq[A105348(2*n), A351079(n)]`
-/

namespace A099309.P16923229385041494839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099309.P16923229385041494839

/-! ## A099309.P862093569328522808

`filter[A222307(2*n+1), A341999(#)]`
-/

namespace A099309.P862093569328522808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A099309.P862093569328522808

/-! ## A099309.P3552731283422908358

`∪[A100716(n+1), A359547(n+1)]`
-/

namespace A099309.P3552731283422908358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099309.P3552731283422908358

/-! ## A099309.P12362412249654834323

`∪[A327929(n+1), A359547(n+1)]`
-/

namespace A099309.P12362412249654834323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099309.P12362412249654834323

/-! ## A099309.P17829898532354763447

`∪[A328251(n+1), A359547(n+1)]`
-/

namespace A099309.P17829898532354763447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099309.P17829898532354763447

/-!
# A099310: Arithmetic derivative of Euler's totient function phi(n).

The programs for A099310, the canonical program `A099310.P8040982866439105394` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099310 has offset 1).

The definition of A099310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099310.P8040982866439105394

`A003415(A000010(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099310

/-- `A003415(A000010(n+1))` -/
def P8040982866439105394.Spec : Prop :=
  ∀ n, P8040982866439105394.a n = A099310 (n + 1)

theorem P8040982866439105394.correct : P8040982866439105394.Spec := by
  intro n
  simp only [A099310, Nat.add_sub_cancel]

end A099310

/-! ## A099310.P14162899061442744526

`A003415((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A099310.P14162899061442744526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A099310.P14162899061442744526

namespace A099310

/-- `A003415((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P14162899061442744526.Spec : Prop :=
  ∀ n, P14162899061442744526.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P2873866301616321400

`A003415(Δ[A002088(n)])`
-/

namespace A099310.P2873866301616321400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n).toNat

end

end A099310.P2873866301616321400

namespace A099310

/-- `A003415(Δ[A002088(n)])` -/
def P2873866301616321400.Spec : Prop :=
  ∀ n, P2873866301616321400.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P7031944607705951490

`A003415(Δ[A005728(n)])`
-/

namespace A099310.P7031944607705951490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n).toNat

end

end A099310.P7031944607705951490

namespace A099310

/-- `A003415(Δ[A005728(n)])` -/
def P7031944607705951490.Spec : Prop :=
  ∀ n, P7031944607705951490.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P8730357150801924675

`A003415(A349137(Δ[n²]))`
-/

namespace A099310.P8730357150801924675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A099310.P8730357150801924675

namespace A099310

/-- `A003415(A349137(Δ[n²]))` -/
def P8730357150801924675.Spec : Prop :=
  ∀ n, P8730357150801924675.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P16527378805654578689

`A003415(sqrt(A127473(n+1)))`
-/

namespace A099310.P16527378805654578689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A099310.P16527378805654578689

namespace A099310

/-- `A003415(sqrt(A127473(n+1)))` -/
def P16527378805654578689.Spec : Prop :=
  ∀ n, P16527378805654578689.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P13585590145977940612

`A003415(A109606(n+1)+1)`
-/

namespace A099310.P13585590145977940612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A109606 (n + 1) + 1).toNat

end

end A099310.P13585590145977940612

namespace A099310

/-- `A003415(A109606(n+1)+1)` -/
def P13585590145977940612.Spec : Prop :=
  ∀ n, P13585590145977940612.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P1920156780837475987

`A003415(A039649(n+1)-1)`
-/

namespace A099310.P1920156780837475987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A039649 (n + 1) - 1).toNat

end

end A099310.P1920156780837475987

namespace A099310

/-- `A003415(A039649(n+1)-1)` -/
def P1920156780837475987.Spec : Prop :=
  ∀ n, P1920156780837475987.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P16762468849630817818

`A003415(1-A051953(n+1)+n)`
-/

namespace A099310.P16762468849630817818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A099310.P16762468849630817818

namespace A099310

/-- `A003415(1-A051953(n+1)+n)` -/
def P16762468849630817818.Spec : Prop :=
  ∀ n, P16762468849630817818.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P2451914025904485847

`A003415(A002618(n+1)/(n+1))`
-/

namespace A099310.P2451914025904485847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A099310.P2451914025904485847

namespace A099310

/-- `A003415(A002618(n+1)/(n+1))` -/
def P2451914025904485847.Spec : Prop :=
  ∀ n, P2451914025904485847.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P1055696101813148785

`A003415(A002088(n+1)-A002088(n))`
-/

namespace A099310.P1055696101813148785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002088 (n + 1) - A002088 n).toNat

end

end A099310.P1055696101813148785

namespace A099310

/-- `A003415(A002088(n+1)-A002088(n))` -/
def P1055696101813148785.Spec : Prop :=
  ∀ n, P1055696101813148785.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P15603103066551746333

`A003415(A005728(n+1)-A005728(n))`
-/

namespace A099310.P15603103066551746333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005728 (n + 1) - A005728 n).toNat

end

end A099310.P15603103066551746333

namespace A099310

/-- `A003415(A005728(n+1)-A005728(n))` -/
def P15603103066551746333.Spec : Prop :=
  ∀ n, P15603103066551746333.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P12716825930924223756

`A003415(A051709(n+1)+A033879(n+1))`
-/

namespace A099310.P12716825930924223756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A051709 (n + 1) + A033879 (n + 1)).toNat

end

end A099310.P12716825930924223756

namespace A099310

/-- `A003415(A051709(n+1)+A033879(n+1))` -/
def P12716825930924223756.Spec : Prop :=
  ∀ n, P12716825930924223756.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P4806604612689448849

`A003415(A300718(n+1)+A300717(n+1))`
-/

namespace A099310.P4806604612689448849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A300718 (n + 1) + A300717 (n + 1)).toNat

end

end A099310.P4806604612689448849

namespace A099310

/-- `A003415(A300718(n+1)+A300717(n+1))` -/
def P4806604612689448849.Spec : Prop :=
  ∀ n, P4806604612689448849.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P2516890168620173199

`A003415(A003968(n+1)-A348971(n+1))`
-/

namespace A099310.P2516890168620173199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003968 (n + 1) - A348971 (n + 1)).toNat

end

end A099310.P2516890168620173199

namespace A099310

/-- `A003415(A003968(n+1)-A348971(n+1))` -/
def P2516890168620173199.Spec : Prop :=
  ∀ n, P2516890168620173199.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P10496548903830561218

`A003415(A306369(n+1)-A069359(n+1))`
-/

namespace A099310.P10496548903830561218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A306369 (n + 1) - A069359 (n + 1)).toNat

end

end A099310.P10496548903830561218

namespace A099310

/-- `A003415(A306369(n+1)-A069359(n+1))` -/
def P10496548903830561218.Spec : Prop :=
  ∀ n, P10496548903830561218.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P9310339430532217807

`A003415(A349338(n+1)-A117494(n+1))`
-/

namespace A099310.P9310339430532217807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A349338 (n + 1) - A117494 (n + 1)).toNat

end

end A099310.P9310339430532217807

namespace A099310

/-- `A003415(A349338(n+1)-A117494(n+1))` -/
def P9310339430532217807.Spec : Prop :=
  ∀ n, P9310339430532217807.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P8869701929744375877

`A003415(A344178(n+1)-A168036(n+1))`
-/

namespace A099310.P8869701929744375877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A344178 (n + 1) - A168036 (n + 1)).toNat

end

end A099310.P8869701929744375877

namespace A099310

/-- `A003415(A344178(n+1)-A168036(n+1))` -/
def P8869701929744375877.Spec : Prop :=
  ∀ n, P8869701929744375877.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P5233434190597074131

`A003415(A348976(n+1)-A300251(n+1))`
-/

namespace A099310.P5233434190597074131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A348976 (n + 1) - A300251 (n + 1)).toNat

end

end A099310.P5233434190597074131

namespace A099310

/-- `A003415(A348976(n+1)-A300251(n+1))` -/
def P5233434190597074131.Spec : Prop :=
  ∀ n, P5233434190597074131.a n = A099310 (n + 1)

end A099310

/-! ## A099310.P7992610836355928144

`A003415(A046073(n+1)*A060594(n+1))`
-/

namespace A099310.P7992610836355928144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046073 (n + 1) * A060594 (n + 1)).toNat

end

end A099310.P7992610836355928144

namespace A099310

/-- `A003415(A046073(n+1)*A060594(n+1))` -/
def P7992610836355928144.Spec : Prop :=
  ∀ n, P7992610836355928144.a n = A099310 (n + 1)

end A099310

/-!
# A099311: Exponent of greatest power of 2 dividing the smallest number having exactly n divisors.

The programs for A099311, there is no canonical definition to state claims against.
-/

/-! ## A099311.P3053243134484422797

`A007814(A005179(n+1))`
-/

namespace A099311.P3053243134484422797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005179 (n + 1)).toNat

end

end A099311.P3053243134484422797

/-! ## A099311.P7239077877130187830

`val(A099315(n+1), 2)`
-/

namespace A099311.P7239077877130187830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099315 (n + 1)).toNat 2

end

end A099311.P7239077877130187830

/-! ## A099311.P2502892615863982570

`val(A003680(n+1)/A140605(n+1), 2)`
-/

namespace A099311.P2502892615863982570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A003680 (n + 1) : ℚ) / (A140605 (n + 1) : ℚ))).toNat 2

end

end A099311.P2502892615863982570

/-! ## A099311.P15567400744465069033

`val(A077569(A096276(n)+1), 2)`
-/

namespace A099311.P15567400744465069033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077569 (A096276 n + 1).toNat).toNat 2

end

end A099311.P15567400744465069033

/-! ## A099311.P7469887772414434422

`log2(gcd(A000079(n), A005179(n+1)))`
-/

namespace A099311.P7469887772414434422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A005179 (n + 1)) : ℝ)

end

end A099311.P7469887772414434422

/-! ## A099311.P16594502461685204942

`val(A081532(∑[n+1]), 2)`
-/

namespace A099311.P16594502461685204942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081532 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A099311.P16594502461685204942

/-! ## A099311.P1136494215374187893

`val(A130279(n+1), 4)`
-/

namespace A099311.P1136494215374187893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130279 (n + 1)).toNat 4

end

end A099311.P1136494215374187893

/-! ## A099311.P14305997772329810003

`A099312(A064787(n+1))`
-/

namespace A099311.P14305997772329810003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099312 (A064787 (n + 1)).toNat

end

end A099311.P14305997772329810003

/-! ## A099311.P3684568275205143423

`A099313(A181900(n+1))`
-/

namespace A099311.P3684568275205143423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099313 (A181900 (n + 1)).toNat

end

end A099311.P3684568275205143423

/-! ## A099311.P14407540752229125525

`A099313(A001105(n+1))`
-/

namespace A099311.P14407540752229125525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099313 (A001105 (n + 1)).toNat

end

end A099311.P14407540752229125525

/-!
# A099312: Exponent of greatest power of 2 dividing the n-th minimal number.

The programs for A099312, there is no canonical definition to state claims against.
-/

/-! ## A099312.P14620259078078354293

`A007814(A007416(n+1))`
-/

namespace A099312.P14620259078078354293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007416 (n + 1)).toNat

end

end A099312.P14620259078078354293

/-! ## A099312.P8698960405233216935

`val(A099316(n+1), 2)`
-/

namespace A099312.P8698960405233216935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099316 (n + 1)).toNat 2

end

end A099312.P8698960405233216935

/-! ## A099312.P9989852391663197202

`val(record[A007416(A328396(n))], 2)`
-/

namespace A099312.P9989852391663197202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A328396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A099312.P9989852391663197202

/-! ## A099312.P7337268296044783602

`val(record[A007416(A154958(n))], 2)`
-/

namespace A099312.P7337268296044783602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A154958 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A099312.P7337268296044783602

/-! ## A099312.P7936595928871059210

`A099311(A053212(n+1))`
-/

namespace A099312.P7936595928871059210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099311 (A053212 (n + 1)).toNat

end

end A099312.P7936595928871059210

/-! ## A099312.P5600043370570553352

`A001222(and(-A007416(n+1), A007416(n+1)))`
-/

namespace A099312.P5600043370570553352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A007416 (n + 1)) (A007416 (n + 1))).toNat

end

end A099312.P5600043370570553352

/-! ## A099312.P13158032250451426771

`A051903(A099316(n+1))`
-/

namespace A099312.P13158032250451426771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A099316 (n + 1)).toNat

end

end A099312.P13158032250451426771

/-! ## A099312.P11568619298958861699

`∑{d}[A099316(n+1), A022328(A006530(#))]`
-/

namespace A099312.P11568619298958861699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A022328 (A006530 d).toNat

end

end A099312.P11568619298958861699

/-! ## A099312.P6333101318885359281

`A001222(A099316(n+1))-A099314(n+1)`
-/

namespace A099312.P6333101318885359281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A099316 (n + 1)).toNat - A099314 (n + 1)

end

end A099312.P6333101318885359281

/-!
# A099313: Exponent of greatest power of 3 dividing the smallest number having exactly n divisors.

The programs for A099313, there is no canonical definition to state claims against.
-/

/-! ## A099313.P10774284365519910059

`A007949(A005179(n+1))`
-/

namespace A099313.P10774284365519910059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A005179 (n + 1)).toNat

end

end A099313.P10774284365519910059

/-! ## A099313.P16565068030092143934

`val(A099315(n+1), 3)`
-/

namespace A099313.P16565068030092143934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099315 (n + 1)).toNat 3

end

end A099313.P16565068030092143934

/-! ## A099313.P1676938806022129132

`val(A003680(n+1)/A140605(n+1), 3)`
-/

namespace A099313.P1676938806022129132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A003680 (n + 1) : ℚ) / (A140605 (n + 1) : ℚ))).toNat 3

end

end A099313.P1676938806022129132

/-! ## A099313.P12396076566177923366

`val(A077569(A096276(n)+1), 3)`
-/

namespace A099313.P12396076566177923366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077569 (A096276 n + 1).toNat).toNat 3

end

end A099313.P12396076566177923366

/-! ## A099313.P6328409778184703313

`val(A081532(∑[n+1]), 3)`
-/

namespace A099313.P6328409778184703313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081532 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A099313.P6328409778184703313

/-! ## A099313.P2969993471964499264

`val(A187941(n+1), 3)`
-/

namespace A099313.P2969993471964499264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A187941 (n + 1)).toNat 3

end

end A099313.P2969993471964499264

/-! ## A099313.P7155337051743622208

`val(A305183(n+1), 3)`
-/

namespace A099313.P7155337051743622208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305183 (n + 1)).toNat 3

end

end A099313.P7155337051743622208

/-! ## A099313.P15680136825567290269

`val(A130279(n+1), 9)`
-/

namespace A099313.P15680136825567290269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130279 (n + 1)).toNat 9

end

end A099313.P15680136825567290269

/-! ## A099313.P13567428811292722338

`A099314(A064787(n+1))`
-/

namespace A099313.P13567428811292722338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099314 (A064787 (n + 1)).toNat

end

end A099313.P13567428811292722338

/-!
# A099314: Exponent of greatest power of 3 dividing the n-th minimal number.

The programs for A099314, there is no canonical definition to state claims against.
-/

/-! ## A099314.P7811339393321802404

`A007949(A007416(n+1))`
-/

namespace A099314.P7811339393321802404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A007416 (n + 1)).toNat

end

end A099314.P7811339393321802404

/-! ## A099314.P9027783581923732334

`val(A099316(n+1), 3)`
-/

namespace A099314.P9027783581923732334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099316 (n + 1)).toNat 3

end

end A099314.P9027783581923732334

/-! ## A099314.P6680115032866956280

`val(record[A007416(A328396(n))], 3)`
-/

namespace A099314.P6680115032866956280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A328396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A099314.P6680115032866956280

/-! ## A099314.P5306681917601204491

`val(record[A007416(A154958(n))], 3)`
-/

namespace A099314.P5306681917601204491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A154958 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A099314.P5306681917601204491

/-! ## A099314.P14193444332074716054

`A099313(A053212(n+1))`
-/

namespace A099314.P14193444332074716054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099313 (A053212 (n + 1)).toNat

end

end A099314.P14193444332074716054

/-! ## A099314.P17420628587073132873

`A007949(gcd(A038299(n), A099316(n+1)))`
-/

namespace A099314.P17420628587073132873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (Int.gcd (A038299 n) (A099316 (n + 1)))

end

end A099314.P17420628587073132873

/-! ## A099314.P12733230376701077175

`A004890(∑{d}[A099316(n+1), and(1, #)])`
-/

namespace A099314.P12733230376701077175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d)

end

end A099314.P12733230376701077175

/-! ## A099314.P4726505685581145286

`∑{d}[A099316(n+1), A047983(A020639(#))]`
-/

namespace A099314.P4726505685581145286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A047983 (A020639 d).toNat

end

end A099314.P4726505685581145286

/-! ## A099314.P4070207400354525412

`A087436(A099316(n+1))`
-/

namespace A099314.P4070207400354525412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A099316 (n + 1)).toNat

end

end A099314.P4070207400354525412

/-!
# A099315: Greatest 3-smooth number dividing the smallest number having exactly n divisors.

The programs for A099315, there is no canonical definition to state claims against.
-/

/-! ## A099315.P368614865792421310

`A065331(A005179(n+1))`
-/

namespace A099315.P368614865792421310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A005179 (n + 1)).toNat

end

end A099315.P368614865792421310

/-! ## A099315.P894107724112215698

`gcd(A005179(n+1), A382492(n+1))`
-/

namespace A099315.P894107724112215698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005179 (n + 1)) (A382492 (n + 1))

end

end A099315.P894107724112215698

/-! ## A099315.P4004437997822871849

`gcd(A005179(n+1), A282023(n))`
-/

namespace A099315.P4004437997822871849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005179 (n + 1)) (A282023 n)

end

end A099315.P4004437997822871849

/-! ## A099315.P14106069399587631246

`gcd(A107904(n)+A005179(n+1), A107904(n))`
-/

namespace A099315.P14106069399587631246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107904 n + A005179 (n + 1)) (A107904 n)

end

end A099315.P14106069399587631246

/-! ## A099315.P14420047620337103151

`gcd(A000400(n), A005179(A000027(n+1)))`
-/

namespace A099315.P14420047620337103151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000400 n) (A005179 (A000027 (n + 1)).toNat)

end

end A099315.P14420047620337103151

/-! ## A099315.P15238111133949564986

`A099316(A064787(n+1))`
-/

namespace A099315.P15238111133949564986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099316 (A064787 (n + 1)).toNat

end

end A099315.P15238111133949564986

/-!
# A099316: Greatest 3-smooth number dividing the n-th minimal number.

The programs for A099316, there is no canonical definition to state claims against.
-/

/-! ## A099316.P5381786997615137868

`A065331(A007416(n+1))`
-/

namespace A099316.P5381786997615137868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A007416 (n + 1)).toNat

end

end A099316.P5381786997615137868

/-! ## A099316.P14673462862075064481

`gcd(A000400(A099312(n+1)), A007416(n+1))`
-/

namespace A099316.P14673462862075064481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000400 (A099312 (n + 1)).toNat) (A007416 (n + 1))

end

end A099316.P14673462862075064481

/-! ## A099316.P2944487257585578141

`A000079(A099312(n+1))*A000244(A099314(n+1))`
-/

namespace A099316.P2944487257585578141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A099312 (n + 1)).toNat * A000244 (A099314 (n + 1)).toNat

end

end A099316.P2944487257585578141

/-! ## A099316.P2517678393814497067

`gcd(A007416(n+1), A064518(n+1))`
-/

namespace A099316.P2517678393814497067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007416 (n + 1)) (A064518 (n + 1))

end

end A099316.P2517678393814497067

/-! ## A099316.P14349872652305586357

`gcd(A007416(n+1), A282023(n))`
-/

namespace A099316.P14349872652305586357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007416 (n + 1)) (A282023 n)

end

end A099316.P14349872652305586357

/-! ## A099316.P5134936596702605444

`A099315(A053212(n+1))`
-/

namespace A099316.P5134936596702605444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099315 (A053212 (n + 1)).toNat

end

end A099316.P5134936596702605444

/-! ## A099316.P8511994077896661697

`gcd(A000027(A007416(n+1)), A000400(n))`
-/

namespace A099316.P8511994077896661697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A007416 (n + 1)).toNat) (A000400 n)

end

end A099316.P8511994077896661697

/-!
# A099317: Minimal numbers having in canonical prime factorization at least one factor p^e such that e+1 is not prime, p prime and e>0.

The programs for A099317, there is no canonical definition to state claims against.
-/

/-! ## A099317.P14655520954306133411

`A061799(A072066(n+1)%A234730(n+1))`
-/

namespace A099317.P14655520954306133411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (Int.tmod (A072066 (n + 1)) (A234730 (n + 1))).toNat

end

end A099317.P14655520954306133411

/-! ## A099317.P4584714754023597553

`A061799(record[8*A334080(n+1)])`
-/

namespace A099317.P4584714754023597553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A334080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099317.P4584714754023597553

/-! ## A099317.P8612532267350305402

`A003680(record[8*A334080(n+1)]/2)`
-/

namespace A099317.P8612532267350305402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A334080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003680 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)).toNat

end

end A099317.P8612532267350305402

/-! ## A099317.P8618202545381801552

`A003680(record[8*A335519(n+1)]/2)`
-/

namespace A099317.P8618202545381801552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A335519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003680 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)).toNat

end

end A099317.P8618202545381801552

/-! ## A099317.P7388348345069853324

`A003680(record[8*A339491(n+1)]/2)`
-/

namespace A099317.P7388348345069853324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A339491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003680 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)).toNat

end

end A099317.P7388348345069853324

/-!
# A099318: Smallest k>1 such that k*(n-th minimal number) is also a minimal number.

The programs for A099318, there is no canonical definition to state claims against.
-/

/-! ## A099318.P12050112041514667460

`A069010(A033429(p?[A099238(n)]))`
-/

namespace A099318.P12050112041514667460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A033429 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A099318.P12050112041514667460

/-! ## A099318.P13503961689534555201

`A085058(A099238(p?[A099238(n)]))`
-/

namespace A099318.P13503961689534555201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A099238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A099318.P13503961689534555201

/-! ## A099318.P10789669544552286239

`A176725(A115561(n+1)+A091992(n+1))`
-/

namespace A099318.P10789669544552286239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A115561 (n + 1) + A091992 (n + 1)).toNat

end

end A099318.P10789669544552286239

/-! ## A099318.P15905039956548611411

`A001221(or(A161717(n+1), A245094(n+1)))`
-/

namespace A099318.P15905039956548611411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A161717 (n + 1)) (A245094 (n + 1))).toNat

end

end A099318.P15905039956548611411

/-! ## A099318.P16013665980572654089

`A001221(A193428(n+1)+A008893(n))`
-/

namespace A099318.P16013665980572654089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A193428 (n + 1) + A008893 n).toNat

end

end A099318.P16013665980572654089

/-!
# A099322: An inverse Catalan transform of J(3n)/J(3).

The programs for A099322, the canonical program `A099322.P15965690317883824929` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099322 has offset 0).

The definition of A099322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099322.P15965690317883824929

`7*a(n-1)+a(n-2)-16*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=43`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099322

/-- `7*a(n-1)+a(n-2)-16*a(n-3)+8*a(n-4)` -/
def P15965690317883824929.Spec : Prop :=
  ∀ n, P15965690317883824929.a n = A099322 n

theorem P15965690317883824929.correct : P15965690317883824929.Spec := by
  intro n
  simp only [A099322]

end A099322

/-! ## A099322.P15402271719666051148

`A097337(A168592(n)-A065608(n+1))`
-/

namespace A099322.P15402271719666051148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A168592 n - A065608 (n + 1)).toNat

end

end A099322.P15402271719666051148

namespace A099322

/-- `A097337(A168592(n)-A065608(n+1))` -/
def P15402271719666051148.Spec : Prop :=
  ∀ n, P15402271719666051148.a n = A099322 n

end A099322

/-!
# A099323: Expansion of (sqrt(1+3*x) + sqrt(1-x))/(2*sqrt(1-x)).

The programs for A099323, the canonical program `A099323.P4978299837579704435` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099323 has offset 0).

The definition of A099323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099323.P12837345052447261553

`-A174297(n+1)`
-/

namespace A099323.P12837345052447261553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174297 (n + 1)

end

end A099323.P12837345052447261553

namespace A099323

/-- `-A174297(n+1)` -/
def P12837345052447261553.Spec : Prop :=
  ∀ n, P12837345052447261553.a n = A099323 n

end A099323

/-! ## A099323.P8919615684801217025

`∑[A168051(n)/(-1)^n]`
-/

namespace A099323.P8919615684801217025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168051 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099323.P8919615684801217025

namespace A099323

/-- `∑[A168051(n)/(-1)^n]` -/
def P8919615684801217025.Spec : Prop :=
  ∀ n, P8919615684801217025.a n = (A099323 n : ℚ)

end A099323

/-! ## A099323.P13844637388995073648

`a(n-1)-A166587(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A099323.P13844637388995073648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A166587 (n - 1)

end

end A099323.P13844637388995073648

namespace A099323

/-- `a(n-1)-A166587(n-1)` -/
def P13844637388995073648.Spec : Prop :=
  ∀ n, P13844637388995073648.a n = A099323 n

end A099323

/-! ## A099323.P1350739823639717979

`A366403(n)+A057428(n)`
-/

namespace A099323.P1350739823639717979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366403 n + A057428 n

end

end A099323.P1350739823639717979

namespace A099323

/-- `A366403(n)+A057428(n)` -/
def P1350739823639717979.Spec : Prop :=
  ∀ n, P1350739823639717979.a n = A099323 n

theorem P1350739823639717979.correct : P1350739823639717979.Spec := by
  intro n
  simp only [A099323, Nat.add_sub_cancel, A099323.P1350739823639717979.a, A099323.P4978299837579704435.f1, A099323.P4978299837579704435.a, A033999, A033999.P17703899380244199787.a, A057428, A057428.P2999489532230392221.a, A168051, A168051.P12367257116989189767.a, A366403, A366403.P15389599088929656846.a, A000038, A000038.P13734959004655594922.a, A057427, A057427.P3058147525557661423.a, A168049, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A000007, A000007.P6599383543502402472.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099323

/-! ## A099323.P16134320731018580961

`A366403(n)-A057427(n)`
-/

namespace A099323.P16134320731018580961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366403 n - A057427 n

end

end A099323.P16134320731018580961

namespace A099323

/-- `A366403(n)-A057427(n)` -/
def P16134320731018580961.Spec : Prop :=
  ∀ n, P16134320731018580961.a n = A099323 n

theorem P16134320731018580961.correct : P16134320731018580961.Spec := by
  intro n
  simp only [A099323, Nat.add_sub_cancel, A099323.P16134320731018580961.a, A099323.P4978299837579704435.f1, A099323.P4978299837579704435.a, A033999, A033999.P17703899380244199787.a, A057427, A057427.P3058147525557661423.a, A168051, A168051.P12367257116989189767.a, A366403, A366403.P15389599088929656846.a, A000007, A000007.P6599383543502402472.a, A000038, A000038.P13734959004655594922.a, A168049, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099323

/-! ## A099323.P4978299837579704435

`∑[A033999(n)*A168051(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099323

/-- `∑[A033999(n)*A168051(n)]` -/
def P4978299837579704435.Spec : Prop :=
  ∀ n, P4978299837579704435.a n = A099323 n

theorem P4978299837579704435.correct : P4978299837579704435.Spec := by
  intro n
  simp only [A099323]

end A099323

/-! ## A099323.P14991700115111167897

`A372023(n)/A036453(n+1)`
-/

namespace A099323.P14991700115111167897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372023 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A099323.P14991700115111167897

namespace A099323

/-- `A372023(n)/A036453(n+1)` -/
def P14991700115111167897.Spec : Prop :=
  ∀ n, P14991700115111167897.a n = (A099323 n : ℚ)

end A099323

/-! ## A099323.P9828446633670161314

`A000007(n+1)-A174297(n+1)`
-/

namespace A099323.P9828446633670161314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A174297 (n + 1)

end

end A099323.P9828446633670161314

namespace A099323

/-- `A000007(n+1)-A174297(n+1)` -/
def P9828446633670161314.Spec : Prop :=
  ∀ n, P9828446633670161314.a n = A099323 n

end A099323

/-! ## A099323.P14404727980252977553

`A000035(2*n)-A174297(n+1)`
-/

namespace A099323.P14404727980252977553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A174297 (n + 1)

end

end A099323.P14404727980252977553

namespace A099323

/-- `A000035(2*n)-A174297(n+1)` -/
def P14404727980252977553.Spec : Prop :=
  ∀ n, P14404727980252977553.a n = A099323 n

end A099323

/-! ## A099323.P5102504000046648925

`A069531(2*(n+1))-A174297(n+1)`
-/

namespace A099323.P5102504000046648925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (2 * (n + 1)) - A174297 (n + 1)

end

end A099323.P5102504000046648925

namespace A099323

/-- `A069531(2*(n+1))-A174297(n+1)` -/
def P5102504000046648925.Spec : Prop :=
  ∀ n, P5102504000046648925.a n = A099323 n

end A099323

/-! ## A099323.P1653304455567205708

`∑[(A014681(n+1)-(n+1))*A168051(n)]`
-/

namespace A099323.P1653304455567205708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) - (n + 1 : ℤ)) * A168051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099323.P1653304455567205708

namespace A099323

/-- `∑[(A014681(n+1)-(n+1))*A168051(n)]` -/
def P1653304455567205708.Spec : Prop :=
  ∀ n, P1653304455567205708.a n = A099323 n

end A099323

/-! ## A099323.P5219784448045911177

`A123108(2*n+1)-(A174297(n+1)+n)`
-/

namespace A099323.P5219784448045911177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n + 1) - (A174297 (n + 1) + (n : ℤ))

end

end A099323.P5219784448045911177

namespace A099323

/-- `A123108(2*n+1)-(A174297(n+1)+n)` -/
def P5219784448045911177.Spec : Prop :=
  ∀ n, P5219784448045911177.a n = A099323 n

end A099323

/-! ## A099323.P4474231528079698233

`A008482(n+1)-(A174297(n+1)+A112467(n+1))`
-/

namespace A099323.P4474231528079698233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (n + 1) - (A174297 (n + 1) + A112467 (n + 1))

end

end A099323.P4474231528079698233

namespace A099323

/-- `A008482(n+1)-(A174297(n+1)+A112467(n+1))` -/
def P4474231528079698233.Spec : Prop :=
  ∀ n, P4474231528079698233.a n = A099323 n

end A099323

/-! ## A099323.P8278218813206102202

`A056473(2*n+1)-(A174297(n+1)+A056473(2*(n+1)))`
-/

namespace A099323.P8278218813206102202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * n + 1) - (A174297 (n + 1) + A056473 (2 * (n + 1)))

end

end A099323.P8278218813206102202

namespace A099323

/-- `A056473(2*n+1)-(A174297(n+1)+A056473(2*(n+1)))` -/
def P8278218813206102202.Spec : Prop :=
  ∀ n, P8278218813206102202.a n = A099323 n

end A099323

/-! ## A099323.P3952758170095003300

`A056455(2*n+1)-(A174297(n+1)+A056455(2*(n+1)))`
-/

namespace A099323.P3952758170095003300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (2 * n + 1) - (A174297 (n + 1) + A056455 (2 * (n + 1)))

end

end A099323.P3952758170095003300

namespace A099323

/-- `A056455(2*n+1)-(A174297(n+1)+A056455(2*(n+1)))` -/
def P3952758170095003300.Spec : Prop :=
  ∀ n, P3952758170095003300.a n = A099323 n

end A099323

/-!
# A099324: Expansion of (1 + sqrt(1 + 4x))/(2(1 + x)).

The programs for A099324, the canonical program `A099324.P10384757998136511703` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099324 has offset 0).

The definition of A099324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099324.P15488440164600705843

`(-1)^n*∑[A115140(n)]`
-/

namespace A099324.P15488440164600705843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099324.P15488440164600705843

namespace A099324

/-- `(-1)^n*∑[A115140(n)]` -/
def P15488440164600705843.Spec : Prop :=
  ∀ n, P15488440164600705843.a n = A099324 n

end A099324

/-! ## A099324.P10384757998136511703

`A168491(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099324

/-- `A168491(n-1)-a(n-1)` -/
def P10384757998136511703.Spec : Prop :=
  ∀ n, P10384757998136511703.a n = A099324 n

theorem P10384757998136511703.correct : P10384757998136511703.Spec := by
  intro n
  simp only [A099324]

end A099324

/-! ## A099324.P4747333329240390030

`A090192(2*n-1)-a(n-1)` with `a(0)=1`
-/

namespace A099324.P4747333329240390030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090192 (2 * n - 1) - a (n - 1)

end

end A099324.P4747333329240390030

namespace A099324

/-- `A090192(2*n-1)-a(n-1)` -/
def P4747333329240390030.Spec : Prop :=
  ∀ n, P4747333329240390030.a n = A099324 n

end A099324

/-! ## A099324.P2659166096301215074

`A159972(n)+A062157(n)`
-/

namespace A099324.P2659166096301215074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159972 n + A062157 n

end

end A099324.P2659166096301215074

namespace A099324

/-- `A159972(n)+A062157(n)` -/
def P2659166096301215074.Spec : Prop :=
  ∀ n, P2659166096301215074.a n = A099324 n

theorem P2659166096301215074.correct : P2659166096301215074.Spec := by
  intro n
  simp only [A099324, Nat.add_sub_cancel, A099324.P2659166096301215074.a, A099324.P10384757998136511703.a, A062157, A062157.P13834877263571195293.a, A159972, A159972.P10557294459438984683.a, A168491, A168491.P1156082334228349470.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099324

/-! ## A099324.P13928085532625519922

`∑[A115140(n)]*A033999(n)`
-/

namespace A099324.P13928085532625519922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A099324.P13928085532625519922

namespace A099324

/-- `∑[A115140(n)]*A033999(n)` -/
def P13928085532625519922.Spec : Prop :=
  ∀ n, P13928085532625519922.a n = A099324 n

end A099324

/-! ## A099324.P8728208688323382191

`∑[A115140(n)]*A009001(2*n)`
-/

namespace A099324.P8728208688323382191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A099324.P8728208688323382191

namespace A099324

/-- `∑[A115140(n)]*A009001(2*n)` -/
def P8728208688323382191.Spec : Prop :=
  ∀ n, P8728208688323382191.a n = A099324 n

end A099324

/-! ## A099324.P14070417045252278087

`∑[A115140(n)]*A034947(2*n+1)`
-/

namespace A099324.P14070417045252278087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034947 (2 * n + 1)

end

end A099324.P14070417045252278087

namespace A099324

/-- `∑[A115140(n)]*A034947(2*n+1)` -/
def P14070417045252278087.Spec : Prop :=
  ∀ n, P14070417045252278087.a n = A099324 n

end A099324

/-! ## A099324.P8805638766782874294

`∑[A115140(n)]*A015811(A234022(n))`
-/

namespace A099324.P8805638766782874294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A015811 (A234022 n).toNat

end

end A099324.P8805638766782874294

namespace A099324

/-- `∑[A115140(n)]*A015811(A234022(n))` -/
def P8805638766782874294.Spec : Prop :=
  ∀ n, P8805638766782874294.a n = A099324 n

end A099324

/-! ## A099324.P10668046884154353620

`A271825(∑[n]+1)-a(n-1)` with `a(0)=1`
-/

namespace A099324.P10668046884154353620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271825 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A099324.P10668046884154353620

namespace A099324

/-- `A271825(∑[n]+1)-a(n-1)` -/
def P10668046884154353620.Spec : Prop :=
  ∀ n, P10668046884154353620.a n = A099324 n

end A099324

/-!
# A099325: Expansion of (sqrt(1+2x) + sqrt(1-2x))/(2*(1-2x)^(3/2)).

The programs for A099325, the canonical program `A099325.P1293649765398382915` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099325 has offset 0).

The definition of A099325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099325.P7467902170384714957

`A189391(n)+2^n`
-/

namespace A099325.P7467902170384714957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + (2 ^ n : ℤ)

end

end A099325.P7467902170384714957

namespace A099325

/-- `A189391(n)+2^n` -/
def P7467902170384714957.Spec : Prop :=
  ∀ n, P7467902170384714957.a n = A099325 n

theorem P7467902170384714957.correct : P7467902170384714957.Spec := by
  intro n
  simp only [A099325, Nat.add_sub_cancel, A099325.P7467902170384714957.a, A099325.P1293649765398382915.a, A027306, A027306.P2966041652703629727.a, A063886, A063886.P2008880257839641201.a, A189391, A189391.P8056155733493856481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099325

/-! ## A099325.P14210903362063347679

`A134389(n+1)-2^n`
-/

namespace A099325.P14210903362063347679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134389 (n + 1) - (2 ^ n : ℤ)

end

end A099325.P14210903362063347679

namespace A099325

/-- `A134389(n+1)-2^n` -/
def P14210903362063347679.Spec : Prop :=
  ∀ n, P14210903362063347679.a n = A099325 n

end A099325

/-! ## A099325.P11603640968389326009

`A210736(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099325.P11603640968389326009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210736 n + 2 * a (n - 1)

end

end A099325.P11603640968389326009

namespace A099325

/-- `A210736(n)+2*a(n-1)` -/
def P11603640968389326009.Spec : Prop :=
  ∀ n, P11603640968389326009.a n = A099325 n

end A099325

/-! ## A099325.P1188195595303917089

`A189911(n)+A014314(n)`
-/

namespace A099325.P1188195595303917089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 n + A014314 n

end

end A099325.P1188195595303917089

namespace A099325

/-- `A189911(n)+A014314(n)` -/
def P1188195595303917089.Spec : Prop :=
  ∀ n, P1188195595303917089.a n = A099325 n

end A099325

/-! ## A099325.P4446600114167926138

`A323988(n)+A100071(n)`
-/

namespace A099325.P4446600114167926138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n + A100071 n

end

end A099325.P4446600114167926138

namespace A099325

/-- `A323988(n)+A100071(n)` -/
def P4446600114167926138.Spec : Prop :=
  ∀ n, P4446600114167926138.a n = A099325 n

end A099325

/-! ## A099325.P8006714981094501690

`A294175(n)+A242172(n)`
-/

namespace A099325.P8006714981094501690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + A242172 n

end

end A099325.P8006714981094501690

namespace A099325

/-- `A294175(n)+A242172(n)` -/
def P8006714981094501690.Spec : Prop :=
  ∀ n, P8006714981094501690.a n = A099325 n

end A099325

/-! ## A099325.P13327663906150987027

`A100071(n+1)+A058622(n)`
-/

namespace A099325.P13327663906150987027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) + A058622 n

end

end A099325.P13327663906150987027

namespace A099325

/-- `A100071(n+1)+A058622(n)` -/
def P13327663906150987027.Spec : Prop :=
  ∀ n, P13327663906150987027.a n = A099325 n

end A099325

/-! ## A099325.P15030014638806167794

`A000051(n)+A189391(n)-1`
-/

namespace A099325.P15030014638806167794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A189391 n - 1)

end

end A099325.P15030014638806167794

namespace A099325

/-- `A000051(n)+A189391(n)-1` -/
def P15030014638806167794.Spec : Prop :=
  ∀ n, P15030014638806167794.a n = A099325 n

theorem P15030014638806167794.correct : P15030014638806167794.Spec := by
  intro n
  simp only [A099325, Nat.add_sub_cancel, A099325.P15030014638806167794.a, A099325.P1293649765398382915.a, A000051, A000051.P14067217022188782580.a, A027306, A027306.P2966041652703629727.a, A063886, A063886.P2008880257839641201.a, A189391, A189391.P8056155733493856481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099325

/-! ## A099325.P4696191549358088308

`A191386(n+2)+A100071(n)`
-/

namespace A099325.P4696191549358088308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 2) + A100071 n

end

end A099325.P4696191549358088308

namespace A099325

/-- `A191386(n+2)+A100071(n)` -/
def P4696191549358088308.Spec : Prop :=
  ∀ n, P4696191549358088308.a n = A099325 n

end A099325

/-! ## A099325.P14643955754826236591

`A027306(n)+2*A100071(n)`
-/

namespace A099325.P14643955754826236591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + 2 * A100071 n

end

end A099325.P14643955754826236591

namespace A099325

/-- `A027306(n)+2*A100071(n)` -/
def P14643955754826236591.Spec : Prop :=
  ∀ n, P14643955754826236591.a n = A099325 n

end A099325

/-! ## A099325.P9945446246603356170

`2*A323988(n)-A027306(n)`
-/

namespace A099325.P9945446246603356170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323988 n - A027306 n

end

end A099325.P9945446246603356170

namespace A099325

/-- `2*A323988(n)-A027306(n)` -/
def P9945446246603356170.Spec : Prop :=
  ∀ n, P9945446246603356170.a n = A099325 n

end A099325

/-! ## A099325.P1293649765398382915

`A027306(n)+n*A063886(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099325

/-- `A027306(n)+n*A063886(n)` -/
def P1293649765398382915.Spec : Prop :=
  ∀ n, P1293649765398382915.a n = A099325 n

theorem P1293649765398382915.correct : P1293649765398382915.Spec := by
  intro n
  simp only [A099325]

end A099325

/-! ## A099325.P13264109085654276782

`A323988(n)+n*A210736(n)`
-/

namespace A099325.P13264109085654276782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n + (n : ℤ) * A210736 n

end

end A099325.P13264109085654276782

namespace A099325

/-- `A323988(n)+n*A210736(n)` -/
def P13264109085654276782.Spec : Prop :=
  ∀ n, P13264109085654276782.a n = A099325 n

end A099325

/-! ## A099325.P11844474666091398500

`A336102(n+1)+A336103(n+1)+A189391(n)`
-/

namespace A099325.P11844474666091398500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (n + 1) + (A336103 (n + 1) + A189391 n)

end

end A099325.P11844474666091398500

namespace A099325

/-- `A336102(n+1)+A336103(n+1)+A189391(n)` -/
def P11844474666091398500.Spec : Prop :=
  ∀ n, P11844474666091398500.a n = A099325 n

end A099325

/-! ## A099325.P10573539610244917141

`A152548(n)-A189391(n)`
-/

namespace A099325.P10573539610244917141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 n - A189391 n

end

end A099325.P10573539610244917141

namespace A099325

/-- `A152548(n)-A189391(n)` -/
def P10573539610244917141.Spec : Prop :=
  ∀ n, P10573539610244917141.a n = A099325 n

end A099325

/-! ## A099325.P5662848294625477531

`(A305612(n+1)-A189391(n+1))/2`
-/

namespace A099325.P5662848294625477531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305612 (n + 1) - A189391 (n + 1) : ℚ) / 2

end

end A099325.P5662848294625477531

namespace A099325

/-- `(A305612(n+1)-A189391(n+1))/2` -/
def P5662848294625477531.Spec : Prop :=
  ∀ n, P5662848294625477531.a n = (A099325 n : ℚ)

end A099325

/-! ## A099325.P10334923368546963809

`A099326(n)-A001787(n)`
-/

namespace A099325.P10334923368546963809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A001787 n

end

end A099325.P10334923368546963809

namespace A099325

/-- `A099326(n)-A001787(n)` -/
def P10334923368546963809.Spec : Prop :=
  ∀ n, P10334923368546963809.a n = A099325 n

theorem P10334923368546963809.correct : P10334923368546963809.Spec := by
  intro n
  simp only [A099325, Nat.add_sub_cancel, A099325.P10334923368546963809.a, A099325.P1293649765398382915.a, A001787, A001787.P18099519164826187117.a, A027306, A027306.P2966041652703629727.a, A063886, A063886.P2008880257839641201.a, A099326, A099326.P18251766925370423032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099325

/-! ## A099325.P7533704809105075686

`A001792(n)-A206603(n)`
-/

namespace A099325.P7533704809105075686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A206603 n

end

end A099325.P7533704809105075686

namespace A099325

/-- `A001792(n)-A206603(n)` -/
def P7533704809105075686.Spec : Prop :=
  ∀ n, P7533704809105075686.a n = A099325 n

end A099325

/-! ## A099325.P18103429381088024480

`A049610(n+2)-A206603(n)`
-/

namespace A099325.P18103429381088024480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) - A206603 n

end

end A099325.P18103429381088024480

namespace A099325

/-- `A049610(n+2)-A206603(n)` -/
def P18103429381088024480.Spec : Prop :=
  ∀ n, P18103429381088024480.a n = A099325 n

end A099325

/-! ## A099325.P15640952242383142518

`A000079(n)+A001787(n)-A206603(n)`
-/

namespace A099325.P15640952242383142518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A001787 n - A206603 n)

end

end A099325.P15640952242383142518

namespace A099325

/-- `A000079(n)+A001787(n)-A206603(n)` -/
def P15640952242383142518.Spec : Prop :=
  ∀ n, P15640952242383142518.a n = A099325 n

theorem P15640952242383142518.correct : P15640952242383142518.Spec := by
  intro n
  simp only [A099325, Nat.add_sub_cancel, A099325.P15640952242383142518.a, A099325.P1293649765398382915.a, A000079, A000079.P10855139691139572931.a, A001787, A001787.P18099519164826187117.a, A027306, A027306.P2966041652703629727.a, A063886, A063886.P2008880257839641201.a, A206603, A206603.P3063521816794991771.a, A189391, A189391.P8056155733493856481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099325

/-!
# A099326: Expansion of ((1-2x)*sqrt(1+2x) + sqrt(1-2x))/(2*(1-2x)^(5/2)).

The programs for A099326, the canonical program `A099326.P18251766925370423032` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099326 has offset 0).

The definition of A099326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099326.P18251766925370423032

`A099325(n)+A001787(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099326

/-- `A099325(n)+A001787(n)` -/
def P18251766925370423032.Spec : Prop :=
  ∀ n, P18251766925370423032.a n = A099326 n

theorem P18251766925370423032.correct : P18251766925370423032.Spec := by
  intro n
  simp only [A099326]

end A099326

/-! ## A099326.P3653182870639921091

`A189391(n)+A001792(n)`
-/

namespace A099326.P3653182870639921091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + A001792 n

end

end A099326.P3653182870639921091

namespace A099326

/-- `A189391(n)+A001792(n)` -/
def P3653182870639921091.Spec : Prop :=
  ∀ n, P3653182870639921091.a n = A099326 n

end A099326

/-! ## A099326.P6640760238359671494

`A206603(n)+A152548(n)`
-/

namespace A099326.P6640760238359671494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A152548 n

end

end A099326.P6640760238359671494

namespace A099326

/-- `A206603(n)+A152548(n)` -/
def P6640760238359671494.Spec : Prop :=
  ∀ n, P6640760238359671494.a n = A099326 n

end A099326

/-! ## A099326.P12567002068334968137

`A305612(n)+A102699(n)`
-/

namespace A099326.P12567002068334968137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 n + A102699 n

end

end A099326.P12567002068334968137

namespace A099326

/-- `A305612(n)+A102699(n)` -/
def P12567002068334968137.Spec : Prop :=
  ∀ n, P12567002068334968137.a n = A099326 n

end A099326

/-! ## A099326.P13691505169638806369

`A323988(n)+A230137(n)`
-/

namespace A099326.P13691505169638806369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n + A230137 n

end

end A099326.P13691505169638806369

namespace A099326

/-- `A323988(n)+A230137(n)` -/
def P13691505169638806369.Spec : Prop :=
  ∀ n, P13691505169638806369.a n = A099326 n

end A099326

/-! ## A099326.P2149648321657594608

`A189391(n)+A049610(n+2)`
-/

namespace A099326.P2149648321657594608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + A049610 (n + 2)

end

end A099326.P2149648321657594608

namespace A099326

/-- `A189391(n)+A049610(n+2)` -/
def P2149648321657594608.Spec : Prop :=
  ∀ n, P2149648321657594608.a n = A099326 n

end A099326

/-! ## A099326.P6129712991561380437

`A336102(2*(n+1))+A189391(n)`
-/

namespace A099326.P6129712991561380437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * (n + 1)) + A189391 n

end

end A099326.P6129712991561380437

namespace A099326

/-- `A336102(2*(n+1))+A189391(n)` -/
def P6129712991561380437.Spec : Prop :=
  ∀ n, P6129712991561380437.a n = A099326 n

end A099326

/-! ## A099326.P15295683781240185783

`A000079(n)+A189391(n)+A001787(n)`
-/

namespace A099326.P15295683781240185783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A189391 n + A001787 n)

end

end A099326.P15295683781240185783

namespace A099326

/-- `A000079(n)+A189391(n)+A001787(n)` -/
def P15295683781240185783.Spec : Prop :=
  ∀ n, P15295683781240185783.a n = A099326 n

theorem P15295683781240185783.correct : P15295683781240185783.Spec := by
  intro n
  simp only [A099326, Nat.add_sub_cancel, A099326.P15295683781240185783.a, A099326.P18251766925370423032.a, A000079, A000079.P10855139691139572931.a, A001787, A001787.P18099519164826187117.a, A099325, A099325.P1293649765398382915.a, A189391, A189391.P8056155733493856481.a, A027306, A027306.P2966041652703629727.a, A063886, A063886.P2008880257839641201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099326

/-! ## A099326.P4048999024711244311

`A099325(n)+A206603(n)+A189391(n)`
-/

namespace A099326.P4048999024711244311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + (A206603 n + A189391 n)

end

end A099326.P4048999024711244311

namespace A099326

/-- `A099325(n)+A206603(n)+A189391(n)` -/
def P4048999024711244311.Spec : Prop :=
  ∀ n, P4048999024711244311.a n = A099326 n

theorem P4048999024711244311.correct : P4048999024711244311.Spec := by
  intro n
  simp only [A099326, Nat.add_sub_cancel, A099326.P4048999024711244311.a, A099326.P18251766925370423032.a, A001787, A001787.P18099519164826187117.a, A099325, A099325.P1293649765398382915.a, A189391, A189391.P8056155733493856481.a, A206603, A206603.P3063521816794991771.a, A027306, A027306.P2966041652703629727.a, A063886, A063886.P2008880257839641201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099326

/-! ## A099326.P11194714029221922307

`A001792(n)+A001792(n)-A182555(n)`
-/

namespace A099326.P11194714029221922307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A001792 n - A182555 n)

end

end A099326.P11194714029221922307

namespace A099326

/-- `A001792(n)+A001792(n)-A182555(n)` -/
def P11194714029221922307.Spec : Prop :=
  ∀ n, P11194714029221922307.a n = A099326 n

end A099326

/-! ## A099326.P4562194076754060557

`A001787(n)+A152548(n)-A189391(n)`
-/

namespace A099326.P4562194076754060557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A152548 n - A189391 n)

end

end A099326.P4562194076754060557

namespace A099326

/-- `A001787(n)+A152548(n)-A189391(n)` -/
def P4562194076754060557.Spec : Prop :=
  ∀ n, P4562194076754060557.a n = A099326 n

end A099326

/-! ## A099326.P2588331639252210582

`A189391(n)+Δ[A001787(n)]`
-/

namespace A099326.P2588331639252210582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + (f1 (n + 1) - f1 n)

end

end A099326.P2588331639252210582

namespace A099326

/-- `A189391(n)+Δ[A001787(n)]` -/
def P2588331639252210582.Spec : Prop :=
  ∀ n, P2588331639252210582.a n = A099326 n

end A099326

/-! ## A099326.P16930473778753313534

`A189391(n)+Δ[A005183(n)]`
-/

namespace A099326.P16930473778753313534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + (f1 (n + 1) - f1 n)

end

end A099326.P16930473778753313534

namespace A099326

/-- `A189391(n)+Δ[A005183(n)]` -/
def P16930473778753313534.Spec : Prop :=
  ∀ n, P16930473778753313534.a n = A099326 n

end A099326

/-! ## A099326.P1701633724767712896

`∑[A001792(n)]-A206603(n)`
-/

namespace A099326.P1701633724767712896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A206603 n

end

end A099326.P1701633724767712896

namespace A099326

/-- `∑[A001792(n)]-A206603(n)` -/
def P1701633724767712896.Spec : Prop :=
  ∀ n, P1701633724767712896.a n = A099326 n

end A099326

/-! ## A099326.P17820706898025890402

`A001787(n+1)-A206603(n)`
-/

namespace A099326.P17820706898025890402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A206603 n

end

end A099326.P17820706898025890402

namespace A099326

/-- `A001787(n+1)-A206603(n)` -/
def P17820706898025890402.Spec : Prop :=
  ∀ n, P17820706898025890402.a n = A099326 n

end A099326

/-! ## A099326.P2026192867798566228

`A053220(n+1)-A189390(n)`
-/

namespace A099326.P2026192867798566228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) - A189390 n

end

end A099326.P2026192867798566228

namespace A099326

/-- `A053220(n+1)-A189390(n)` -/
def P2026192867798566228.Spec : Prop :=
  ∀ n, P2026192867798566228.a n = A099326 n

end A099326

/-! ## A099326.P16162021603948227690

`2*A001792(n)-A182555(n)`
-/

namespace A099326.P16162021603948227690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001792 n - A182555 n

end

end A099326.P16162021603948227690

namespace A099326

/-- `2*A001792(n)-A182555(n)` -/
def P16162021603948227690.Spec : Prop :=
  ∀ n, P16162021603948227690.a n = A099326 n

end A099326

/-! ## A099326.P11351731993486520930

`A066373(n+2)-A189162(n+1)`
-/

namespace A099326.P11351731993486520930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066373 (n + 2) - A189162 (n + 1)

end

end A099326.P11351731993486520930

namespace A099326

/-- `A066373(n+2)-A189162(n+1)` -/
def P11351731993486520930.Spec : Prop :=
  ∀ n, P11351731993486520930.a n = A099326 n

end A099326

/-! ## A099326.P1636639259080855883

`A152548(n)+A189390(n)-A001787(n)`
-/

namespace A099326.P1636639259080855883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 n + (A189390 n - A001787 n)

end

end A099326.P1636639259080855883

namespace A099326

/-- `A152548(n)+A189390(n)-A001787(n)` -/
def P1636639259080855883.Spec : Prop :=
  ∀ n, P1636639259080855883.a n = A099326 n

end A099326

/-! ## A099326.P12620759048786657600

`A099325(n)+A189390(n)-A206603(n)`
-/

namespace A099326.P12620759048786657600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n + (A189390 n - A206603 n)

end

end A099326.P12620759048786657600

namespace A099326

/-- `A099325(n)+A189390(n)-A206603(n)` -/
def P12620759048786657600.Spec : Prop :=
  ∀ n, P12620759048786657600.a n = A099326 n

end A099326

/-!
# A099327: Expansion of ((1-x)*sqrt(1+2x) + (1+x)*sqrt(1-2x))/(2*(1-2x)^(5/2)).

The programs for A099327, the canonical program `A099327.P17907964122088018001` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099327 has offset 0).

The definition of A099327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099327.P17907964122088018001

`A134389(n)+A210736(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099327

/-- `A134389(n)+A210736(n)+2*a(n-1)` -/
def P17907964122088018001.Spec : Prop :=
  ∀ n, P17907964122088018001.a n = A099327 n

theorem P17907964122088018001.correct : P17907964122088018001.Spec := by
  intro n
  simp only [A099327]

end A099327

/-! ## A099327.P12005888764115904837

`A001462(A092441(n))`
-/

namespace A099327.P12005888764115904837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A092441 n).toNat

end

end A099327.P12005888764115904837

namespace A099327

/-- `A001462(A092441(n))` -/
def P12005888764115904837.Spec : Prop :=
  ∀ n, P12005888764115904837.a n = A099327 n

end A099327

/-!
# A099328: Number of Catalan knight paths from (0,0) to (n,0) in the region between and on the lines y=0 and y=3. (See A096587 for the definition of Catalan knight.).

The programs for A099328, there is no canonical definition to state claims against.
-/

/-! ## A099328.P1793437034675641983

`A001590(n+1)-A099331(n)`
-/

namespace A099328.P1793437034675641983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) - A099331 n

end

end A099328.P1793437034675641983

/-! ## A099328.P7356950018641161083

`Δ[A000073(n+1)]-A099331(n)`
-/

namespace A099328.P7356950018641161083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099331 n

end

end A099328.P7356950018641161083

/-!
# A099329: Number of Catalan knight paths from (0,0) to (n,1) in the region between and on the lines y=0 and y=3. (See A096587 for the definition of Catalan knight.).

The programs for A099329, there is no canonical definition to state claims against.
-/

/-! ## A099329.P1530815004612082764

`∑[A099331(n+1)-A000073(n)]`
-/

namespace A099329.P1530815004612082764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099331 (n + 1) - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099329.P1530815004612082764

/-! ## A099329.P3982690285639655771

`A099331(n+1)-A099330(A028310(n))`
-/

namespace A099329.P3982690285639655771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099331 (n + 1) - A099330 (A028310 n).toNat

end

end A099329.P3982690285639655771

/-! ## A099329.P7520950530271832632

`∑[A001590(n)]-A099330(n+1)`
-/

namespace A099329.P7520950530271832632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099330 (n + 1)

end

end A099329.P7520950530271832632

/-! ## A099329.P6271637728696848130

`A000073(n+1)-A099330(n+1)`
-/

namespace A099329.P6271637728696848130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) - A099330 (n + 1)

end

end A099329.P6271637728696848130

/-! ## A099329.P2623641727498678537

`A099328(n+3)-A099330(n+2)`
-/

namespace A099329.P2623641727498678537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099328 (n + 3) - A099330 (n + 2)

end

end A099329.P2623641727498678537

/-! ## A099329.P5995333746635722629

`∑[A000073(n+1)-A099328(n+2)]`
-/

namespace A099329.P5995333746635722629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) - A099328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099329.P5995333746635722629

/-! ## A099329.P11556915476651595930

`Δ[A192804(n+1)]-A099330(n+1)`
-/

namespace A099329.P11556915476651595930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099330 (n + 1)

end

end A099329.P11556915476651595930

/-!
# A099330: Number of Catalan knight paths from (0,0) to (n,2) in the region between and on the lines y=0 and y=3. (See A096587 for the definition of Catalan knight.).

The programs for A099330, there is no canonical definition to state claims against.
-/

/-! ## A099330.P9441612692008761989

`∑[A099328(n+2)-A000073(n)]`
-/

namespace A099330.P9441612692008761989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099328 (n + 2) - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099330.P9441612692008761989

/-! ## A099330.P3050374315738357247

`A099328(n+2)-A099329(A028310(n))`
-/

namespace A099330.P3050374315738357247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099328 (n + 2) - A099329 (A028310 n).toNat

end

end A099330.P3050374315738357247

/-! ## A099330.P18383716765575219433

`∑[A001590(n)]-A099329(n+1)`
-/

namespace A099330.P18383716765575219433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099329 (n + 1)

end

end A099330.P18383716765575219433

/-! ## A099330.P17224805149102454957

`A000073(n+1)-A099329(n+1)`
-/

namespace A099330.P17224805149102454957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) - A099329 (n + 1)

end

end A099330.P17224805149102454957

/-! ## A099330.P13700397422032638604

`A099331(n+2)-A099329(n+2)`
-/

namespace A099330.P13700397422032638604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099331 (n + 2) - A099329 (n + 2)

end

end A099330.P13700397422032638604

/-! ## A099330.P6144436667804627481

`∑[A000073(n+1)-A099331(n+1)]`
-/

namespace A099330.P6144436667804627481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) - A099331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099330.P6144436667804627481

/-! ## A099330.P12649291540145854535

`Δ[A192804(n+1)]-A099329(n+1)`
-/

namespace A099330.P12649291540145854535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099329 (n + 1)

end

end A099330.P12649291540145854535

/-!
# A099331: Number of Catalan knight paths from (0,0) to (n,3) in the region between and on the lines y=0 and y=3. (See A096587 for the definition of Catalan knight.).

The programs for A099331, there is no canonical definition to state claims against.
-/

/-! ## A099331.P9174888443162974335

`A001590(n+1)-A099328(n+1)`
-/

namespace A099331.P9174888443162974335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) - A099328 (n + 1)

end

end A099331.P9174888443162974335

/-! ## A099331.P7462771489035190226

`A114952(A042963(n+2))-A099328(n+1)`
-/

namespace A099331.P7462771489035190226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A042963 (n + 2)).toNat - A099328 (n + 1)

end

end A099331.P7462771489035190226

/-! ## A099331.P14185490690786672192

`Δ[A000073(n+1)]-A099328(n+1)`
-/

namespace A099331.P14185490690786672192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099328 (n + 1)

end

end A099331.P14185490690786672192

/-! ## A099331.P9960528105759326350

`A000010(A073656(n+1))%A160612(n)`
-/

namespace A099331.P9960528105759326350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A073656 (n + 1)).toNat) (A160612 n)

end

end A099331.P9960528105759326350

/-! ## A099331.P9885750107887753877

`A063647(n+1)*A086598(A264557(n+1))`
-/

namespace A099331.P9885750107887753877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) * A086598 (A264557 (n + 1)).toNat

end

end A099331.P9885750107887753877

/-!
# A099332: Primes p such that p = a^2 + b^2 for a,b>0 and a+b is prime.

The programs for A099332, there is no canonical definition to state claims against.
-/

/-! ## A099332.P7105193411928224064

`p?[A008864(n+1)-A105700(A080089(n+1))]`
-/

namespace A099332.P7105193411928224064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A105700 (A080089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099332.P7105193411928224064

/-! ## A099332.P6869021991124477866

`p?[A000040(n+1)*A105700(A080089(n+1))]`
-/

namespace A099332.P6869021991124477866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A105700 (A080089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099332.P6869021991124477866

/-! ## A099332.P6482972601794591475

`eq[1, A003415(A099380(n))]`
-/

namespace A099332.P6482972601794591475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A099380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099332.P6482972601794591475

/-! ## A099332.P11776305617298449030

`eq[A010121(n), A032741(A099380(n))]`
-/

namespace A099332.P11776305617298449030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A099380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099332.P11776305617298449030

/-! ## A099332.P5288228219393183086

`eq[A010130(n), A032741(A099380(n))]`
-/

namespace A099332.P5288228219393183086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A099380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099332.P5288228219393183086

/-!
# A099337: Frequency of the hexadecimal 4 in the first 10^n hexadecimal digits of Pi.

The programs for A099337, there is no canonical definition to state claims against.
-/

/-! ## A099337.P881862479477552744

`A390548(n)+A303428(A390548(n))`
-/

namespace A099337.P881862479477552744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390548 n + A303428 (A390548 n).toNat

end

end A099337.P881862479477552744

/-!
# A099343: Frequency of the hexadecimal A in the first 10^n hexadecimal digits of Pi.

The programs for A099343, there is no canonical definition to state claims against.
-/

/-! ## A099343.P3854503005305580281

`A212819(n)+A005202(A055646(3*n+2))`
-/

namespace A099343.P3854503005305580281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212819 n + A005202 (A055646 (3 * n + 2)).toNat

end

end A099343.P3854503005305580281

/-!
# A099344: Frequency of the hexadecimal B in the first 10^n hexadecimal digits of Pi.

The programs for A099344, there is no canonical definition to state claims against.
-/

/-! ## A099344.P7439838611197788479

`A181642(A250037(n+3)+A186666(n+1))`
-/

namespace A099344.P7439838611197788479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181642 (A250037 (n + 3) + A186666 (n + 1)).toNat

end

end A099344.P7439838611197788479

/-!
# A099349: Primes p such that p + nextprime(p) is the arithmetic mean of a pair of twin primes.

The programs for A099349, there is no canonical definition to state claims against.
-/

/-! ## A099349.P11761660103187052713

`A167597(n+1)-A158350(n+1)`
-/

namespace A099349.P11761660103187052713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167597 (n + 1) - A158350 (n + 1)

end

end A099349.P11761660103187052713

/-! ## A099349.P11919796901070598384

`∩[A072667(n+1), A177017(n+1)]`
-/

namespace A099349.P11919796901070598384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099349.P11919796901070598384

/-! ## A099349.P5997711730394937791

`A000040(A176986(n+1))`
-/

namespace A099349.P5997711730394937791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176986 (n + 1)).toNat

end

end A099349.P5997711730394937791

/-! ## A099349.P17127800065311835922

`A008578(A176986(n+1)+1)`
-/

namespace A099349.P17127800065311835922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A176986 (n + 1) + 1).toNat

end

end A099349.P17127800065311835922

/-! ## A099349.P4660780456088415647

`A065091(A176986(n+1)-1)`
-/

namespace A099349.P4660780456088415647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A176986 (n + 1) - 1).toNat

end

end A099349.P4660780456088415647

/-! ## A099349.P12444246008790721042

`A158611(A176986(n+1)+2)`
-/

namespace A099349.P12444246008790721042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A176986 (n + 1) + 2).toNat

end

end A099349.P12444246008790721042

/-! ## A099349.P9804085900274595402

`A079068(A158350((n+1)/2+(n+1)/2))`
-/

namespace A099349.P9804085900274595402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A158350 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2 + (n + 1 : ℚ) / 2)).toNat).toNat

end

end A099349.P9804085900274595402

/-!
# A099350: Numbers k such that 4*k! - 1 is prime.

The programs for A099350, there is no canonical definition to state claims against.
-/

/-! ## A099350.P3745846484999421338

`lt[A262321(n), A262375(n)]`
-/

namespace A099350.P3745846484999421338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099350.P3745846484999421338

/-! ## A099350.P1413449295661377700

`lt[A262349(n), A262375(n)]`
-/

namespace A099350.P1413449295661377700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099350.P1413449295661377700

/-! ## A099350.P4167410065018850639

`lt[A262376(n), A262375(n)]`
-/

namespace A099350.P4167410065018850639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099350.P4167410065018850639

/-! ## A099350.P1839361869603141934

`lt[A000108(n+1), A262375(n)]`
-/

namespace A099350.P1839361869603141934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099350.P1839361869603141934

/-! ## A099350.P5745061136684809101

`A283315(A232697(n))+n`
-/

namespace A099350.P5745061136684809101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283315 (A232697 n).toNat + (n : ℤ)

end

end A099350.P5745061136684809101

/-!
# A099352: From P-positions in a certain game. Pile 1 tokens for select function x1-floor((x1+1)/x0)+2.

The programs for A099352, there is no canonical definition to state claims against.
-/

/-! ## A099352.P16677617084789591490

`comp[A099353(n+1)]`
-/

namespace A099352.P16677617084789591490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099352.P16677617084789591490

/-! ## A099352.P8482214105674341887

`comp[record[A099353(A126759(n))]]`
-/

namespace A099352.P8482214105674341887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099353 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099352.P8482214105674341887

/-! ## A099352.P1029628751954697745

`comp[A099353(n)-A000007(n)]`
-/

namespace A099352.P1029628751954697745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099353 n - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099352.P1029628751954697745

/-! ## A099352.P11814668781310875294

`eq[char[A099353(n)], A209229(2*n+1)]`
-/

namespace A099352.P11814668781310875294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099353 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099352.P11814668781310875294

/-! ## A099352.P13556898961930724445

`eq[0, char[A099353(A003991(n+1))]]`
-/

namespace A099352.P13556898961930724445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099353 (A003991 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099352.P13556898961930724445

/-! ## A099352.P724276275702948984

`comp[A099353(n)-A151933(n)]`
-/

namespace A099352.P724276275702948984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099353 n - A151933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099352.P724276275702948984

/-! ## A099352.P10072970352943384335

`eq[2-A000122(n²), char[A099353(n)]]`
-/

namespace A099352.P10072970352943384335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099353 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A099352.P10072970352943384335

/-!
# A099353: From P-positions in a certain game. Pile 2 tokens for select function x1-floor((x1+1)/x0)+2.

The programs for A099353, there is no canonical definition to state claims against.
-/

/-! ## A099353.P7450512893914648019

`A099352(n)+∑[A099352(n)]`
-/

namespace A099353.P7450512893914648019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099352 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099353.P7450512893914648019

/-! ## A099353.P512105666045701649

`comp[A099352(n+1)]`
-/

namespace A099353.P512105666045701649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099353.P512105666045701649

/-! ## A099353.P11850565087571258578

`A099352(n)-A001489(∑[A099352(n)])`
-/

namespace A099353.P11850565087571258578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099352 n - A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099353.P11850565087571258578

/-! ## A099353.P10891969046624259680

`∑[A066323(∑[A152046(n+1)])]-1`
-/

namespace A099353.P10891969046624259680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066323 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099353.P10891969046624259680

/-! ## A099353.P9762434297083536860

`A276876(∑[A083544(n+1)])-1`
-/

namespace A099353.P9762434297083536860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276876 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A099353.P9762434297083536860

/-!
# A099354: From P-positions in a certain game. Pile 1 tokens for select function (-)^y1 - (-)^x1 +3.

The programs for A099354, there is no canonical definition to state claims against.
-/

/-! ## A099354.P1885956606306531927

`comp[A099355(n+1)]`
-/

namespace A099354.P1885956606306531927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099354.P1885956606306531927

/-! ## A099354.P12943028727898045982

`eq[char[A099355(n)], A000007(n)]`
-/

namespace A099354.P12943028727898045982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099355 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099354.P12943028727898045982

/-! ## A099354.P10783771092128258453

`eq[0, char[A099355(A026233(n+1))]]`
-/

namespace A099354.P10783771092128258453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099355 (A026233 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099354.P10783771092128258453

/-! ## A099354.P10263777607808623841

`eq[char[A099355(n)]+1, A054977(n)]`
-/

namespace A099354.P10263777607808623841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099355 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099354.P10263777607808623841

/-! ## A099354.P14344471150730737881

`eq[char[A099355(n)], A175564(5*n)]`
-/

namespace A099354.P14344471150730737881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099355 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175564 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099354.P14344471150730737881

/-!
# A099355: From P-positions in a certain game. Pile 2 tokens for select function (-)^y1 -(-)^x1+3.

The programs for A099355, there is no canonical definition to state claims against.
-/

/-! ## A099355.P5579333271964567831

`comp[A099354(n+1)]`
-/

namespace A099355.P5579333271964567831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099355.P5579333271964567831

/-! ## A099355.P9554806085102887412

`record[(A099354(n)+1)%A099354(n+1)]`
-/

namespace A099355.P9554806085102887412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099354 n + 1) (A099354 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099355.P9554806085102887412

/-! ## A099355.P11449820953333463818

`lt[n*char[A099354(n)], 1]`
-/

namespace A099355.P11449820953333463818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099354 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A099355.P11449820953333463818

/-! ## A099355.P1162401719825929469

`lt[char[A099354(floor(n/2)+1)], 1]`
-/

namespace A099355.P1162401719825929469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099354 (⌊(n : ℚ) / 2⌋ + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A099355.P1162401719825929469

/-! ## A099355.P16294108789401157696

`eq[char[A099354(n)], A000007(n)]`
-/

namespace A099355.P16294108789401157696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099354 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099355.P16294108789401157696

/-!
# A099356: From P-positions in a certain game. Pile 1 tokens for select function x1*[1+(-)^x1]+1.

The programs for A099356, there is no canonical definition to state claims against.
-/

/-! ## A099356.P2050569784829037486

`comp[A099357(n+1)]`
-/

namespace A099356.P2050569784829037486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099356.P2050569784829037486

/-! ## A099356.P1140227008588795586

`comp[record[A099357(A126759(n))]]`
-/

namespace A099356.P1140227008588795586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099357 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099356.P1140227008588795586

/-! ## A099356.P486302567192630968

`eq[char[A099357(n)], A000007(n)]`
-/

namespace A099356.P486302567192630968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099357 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099356.P486302567192630968

/-! ## A099356.P11582706248585570399

`eq[0, char[A099357(A003991(n+1))]]`
-/

namespace A099356.P11582706248585570399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099357 (A003991 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099356.P11582706248585570399

/-! ## A099356.P9536034317671167773

`eq[char[A099357(n)], A080339(2*(n+1))]`
-/

namespace A099356.P9536034317671167773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099357 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099356.P9536034317671167773

/-! ## A099356.P2700735474681863852

`eq[char[A099357(n)], A151933(n)]`
-/

namespace A099356.P2700735474681863852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099357 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A099356.P2700735474681863852

/-!
# A099357: From P-positions in a certain game. Pile 2 tokens for select function x1*[1+(-)^x1]+1.

The programs for A099357, there is no canonical definition to state claims against.
-/

/-! ## A099357.P15288842302643576561

`comp[A099356(n+1)]`
-/

namespace A099357.P15288842302643576561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099357.P15288842302643576561

/-!
# A099358: a(n) = sum of digits of k^4 as k runs from 1 to n.

The programs for A099358, the canonical program `A099358.P14834869961614089999` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099358 has offset 1).

The definition of A099358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099358.P14834869961614089999

`∑[∑{digits}[(n+1)^4, #]]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099358

/-- `∑[∑{digits}[(n+1)^4, #]]` -/
def P14834869961614089999.Spec : Prop :=
  ∀ n, (P14834869961614089999.a n : ℤ) = A099358 (n + 1)

theorem P14834869961614089999.correct : P14834869961614089999.Spec := by
  intro n
  simp only [A099358, Nat.add_sub_cancel]

end A099358

/-! ## A099358.P4409183023130332771

`∑[log2(∏{digits}[(n+1)²², 2^#])]`
-/

namespace A099358.P4409183023130332771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099358.P4409183023130332771

namespace A099358

/-- `∑[log2(∏{digits}[(n+1)²², 2^#])]` -/
def P4409183023130332771.Spec : Prop :=
  ∀ n, P4409183023130332771.a n = (A099358 (n + 1) : ℝ)

end A099358

/-! ## A099358.P3726524600414755177

`∑{digits}[(n+1)^4, #]+a(n-1)` with `a(0)=1`
-/

namespace A099358.P3726524600414755177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A099358.P3726524600414755177

namespace A099358

/-- `∑{digits}[(n+1)^4, #]+a(n-1)` -/
def P3726524600414755177.Spec : Prop :=
  ∀ n, (P3726524600414755177.a n : ℤ) = A099358 (n + 1)

end A099358

/-! ## A099358.P14134811999570154927

`∑[A055565(n+1)]`
-/

namespace A099358.P14134811999570154927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099358.P14134811999570154927

namespace A099358

/-- `∑[A055565(n+1)]` -/
def P14134811999570154927.Spec : Prop :=
  ∀ n, P14134811999570154927.a n = A099358 (n + 1)

theorem P14134811999570154927.correct : P14134811999570154927.Spec := by
  intro n
  simp only [A099358, Nat.add_sub_cancel, A099358.P14134811999570154927.f1, A099358.P14134811999570154927.a, A099358.P14834869961614089999.f2, A099358.P14834869961614089999.f1, A099358.P14834869961614089999.a, A055565, A055565.P4876821411580299299.f1, A055565.P4876821411580299299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099358

/-! ## A099358.P16848988797684730612

`∑[∑{digits}[A002523(n+1), #]-1]`
-/

namespace A099358.P16848988797684730612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099358.P16848988797684730612

namespace A099358

/-- `∑[∑{digits}[A002523(n+1), #]-1]` -/
def P16848988797684730612.Spec : Prop :=
  ∀ n, P16848988797684730612.a n = A099358 (n + 1)

end A099358

/-! ## A099358.P8102608258720450160

`∑[A004159((n+1)²)]`
-/

namespace A099358.P8102608258720450160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099358.P8102608258720450160

namespace A099358

/-- `∑[A004159((n+1)²)]` -/
def P8102608258720450160.Spec : Prop :=
  ∀ n, P8102608258720450160.a n = A099358 (n + 1)

end A099358

/-! ## A099358.P15104637252162302260

`∑[A004159(∑[2*n+1])%64]`
-/

namespace A099358.P15104637252162302260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004159 (∑ j ∈ Finset.range (n + 1), f2 j)) 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099358.P15104637252162302260

namespace A099358

/-- `∑[A004159(∑[2*n+1])%64]` -/
def P15104637252162302260.Spec : Prop :=
  ∀ n, P15104637252162302260.a n = A099358 (n + 1)

end A099358

/-! ## A099358.P5864410499465716937

`A000027(∑[A004159(∑[2*n+1])])`
-/

namespace A099358.P5864410499465716937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099358.P5864410499465716937

namespace A099358

/-- `A000027(∑[A004159(∑[2*n+1])])` -/
def P5864410499465716937.Spec : Prop :=
  ∀ n, P5864410499465716937.a n = A099358 (n + 1)

end A099358

/-! ## A099358.P11061046965448442366

`A028310(∑[A004159(∑[2*n+1])])`
-/

namespace A099358.P11061046965448442366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099358.P11061046965448442366

namespace A099358

/-- `A028310(∑[A004159(∑[2*n+1])])` -/
def P11061046965448442366.Spec : Prop :=
  ∀ n, P11061046965448442366.a n = A099358 (n + 1)

end A099358

/-! ## A099358.P1070626733765530090

`∑[A280637((n+1)²)-1]`
-/

namespace A099358.P1070626733765530090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280637 ((n + 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099358.P1070626733765530090

namespace A099358

/-- `∑[A280637((n+1)²)-1]` -/
def P1070626733765530090.Spec : Prop :=
  ∀ n, P1070626733765530090.a n = A099358 (n + 1)

end A099358

/-!
# A099359: a(n) = (2^n + 1)^3 - 2.

The programs for A099359, the canonical program `A099359.P15675573568184214760` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099359 has offset 0).

The definition of A099359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)^3-2` (program `A099359.P15675573568184214760`, by `A099359.P15675573568184214760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099359.P15675573568184214760

`(2^n+1)^3-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099359

/-- `(2^n+1)^3-2` -/
def P15675573568184214760.Spec : Prop :=
  ∀ n, P15675573568184214760.a n = A099359 n

theorem P15675573568184214760.correct : P15675573568184214760.Spec := by
  intro n
  simp only [A099359]

end A099359

/-! ## A099359.P15134352983473953154

`abs(2-A343318(n))`
-/

namespace A099359.P15134352983473953154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A343318 n|

end

end A099359.P15134352983473953154

namespace A099359

/-- `abs(2-A343318(n))` -/
def P15134352983473953154.Spec : Prop :=
  ∀ n, P15134352983473953154.a n = A099359 n

end A099359

/-! ## A099359.P11386834216198145807

`abs(2-A000051(n)^3)`
-/

namespace A099359.P11386834216198145807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000051 n ^ 3|

end

end A099359.P11386834216198145807

namespace A099359

/-- `abs(2-A000051(n)^3)` -/
def P11386834216198145807.Spec : Prop :=
  ∀ n, P11386834216198145807.a n = A099359 n

end A099359

/-! ## A099359.P11200074862125219810

`lcm(2-A343318(n), A033999(n))`
-/

namespace A099359.P11200074862125219810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A343318 n) (A033999 n)

end

end A099359.P11200074862125219810

namespace A099359

/-- `lcm(2-A343318(n), A033999(n))` -/
def P11200074862125219810.Spec : Prop :=
  ∀ n, (P11200074862125219810.a n : ℤ) = A099359 n

end A099359

/-! ## A099359.P16968281364408699303

`or(A343318(n)-2, A000038(n))`
-/

namespace A099359.P16968281364408699303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A343318 n - 2) (A000038 n)

end

end A099359.P16968281364408699303

namespace A099359

/-- `or(A343318(n)-2, A000038(n))` -/
def P16968281364408699303.Spec : Prop :=
  ∀ n, P16968281364408699303.a n = A099359 n

end A099359

/-! ## A099359.P223894601090770024

`gcd(2-A343318(n), A000038(n+1))`
-/

namespace A099359.P223894601090770024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A343318 n) (A000038 (n + 1))

end

end A099359.P223894601090770024

namespace A099359

/-- `gcd(2-A343318(n), A000038(n+1))` -/
def P223894601090770024.Spec : Prop :=
  ∀ n, (P223894601090770024.a n : ℤ) = A099359 n

end A099359

/-!
# A099360: a(n) = (2^n + 1)^4 - 2.

The programs for A099360, the canonical program `A099360.P1679601315578137964` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099360 has offset 0).

The definition of A099360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+1)^4-2` (program `A099360.P1679601315578137964`, by `A099360.P1679601315578137964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099360.P1679601315578137964

`(2^n+1)^4-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099360

/-- `(2^n+1)^4-2` -/
def P1679601315578137964.Spec : Prop :=
  ∀ n, P1679601315578137964.a n = A099360 n

theorem P1679601315578137964.correct : P1679601315578137964.Spec := by
  intro n
  simp only [A099360]

end A099360

/-! ## A099360.P18967336021427414

`abs(2-A028400(n)²)`
-/

namespace A099360.P18967336021427414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A028400 n ^ 2|

end

end A099360.P18967336021427414

namespace A099360

/-- `abs(2-A028400(n)²)` -/
def P18967336021427414.Spec : Prop :=
  ∀ n, P18967336021427414.a n = A099360 n

end A099360

/-! ## A099360.P17399953612267806370

`abs(2-A000051(n)^4)`
-/

namespace A099360.P17399953612267806370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000051 n ^ 4|

end

end A099360.P17399953612267806370

namespace A099360

/-- `abs(2-A000051(n)^4)` -/
def P17399953612267806370.Spec : Prop :=
  ∀ n, P17399953612267806370.a n = A099360 n

end A099360

/-! ## A099360.P15148539433531406423

`record[A052552(n)²²-2]`
-/

namespace A099360.P15148539433531406423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052552 n ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099360.P15148539433531406423

namespace A099360

/-- `record[A052552(n)²²-2]` -/
def P15148539433531406423.Spec : Prop :=
  ∀ n, P15148539433531406423.a n = A099360 n

end A099360

/-! ## A099360.P13509790035580753515

`record[A271709(n)²²-2]`
-/

namespace A099360.P13509790035580753515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271709 n ^ 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099360.P13509790035580753515

namespace A099360

/-- `record[A271709(n)²²-2]` -/
def P13509790035580753515.Spec : Prop :=
  ∀ n, P13509790035580753515.a n = A099360 n

end A099360

/-!
# A099361: A variation on the sieve of Eratosthenes (A000040): Start with the primes; the first term is 2, which is a(1) and we cross off every second prime starting with 2; the next prime not crossed off is 3, which is a(2) and we cross off every third prime starting with 3; the next prime not crossed off is 7, which is a(3) and we cross off every 7th prime starting with 7; and so on.

The programs for A099361, there is no canonical definition to state claims against.
-/

/-! ## A099361.P5250571038577206545

`A000040(lt[A099362(n+1), 1]+1)`
-/

namespace A099361.P5250571038577206545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099362 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A099361.P5250571038577206545

/-! ## A099361.P199598871874864543

`p?[gcd(A000040(n+1), A099362(n+1))]`
-/

namespace A099361.P199598871874864543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A099362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099361.P199598871874864543

/-! ## A099361.P15186337501493691419

`record[A014963(A000040(n+1)-A099362(n+1))]`
-/

namespace A099361.P15186337501493691419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000040 (n + 1) - A099362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099361.P15186337501493691419

/-! ## A099361.P13913202389940960519

`record[A082910(A022775(n+1))]`
-/

namespace A099361.P13913202389940960519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082910 (A022775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099361.P13913202389940960519

/-! ## A099361.P6770094339297050370

`A000040(A131849(A014692((n+1)²)))`
-/

namespace A099361.P6770094339297050370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A131849 (A014692 ((n + 1) ^ 2)).toNat).toNat

end

end A099361.P6770094339297050370

/-!
# A099362: Number of times the n-th prime is crossed off in the sieve of A099361.

The programs for A099362, there is no canonical definition to state claims against.
-/

/-! ## A099362.P542777572737009998

`A328458(n+2)+A101637(A033663(n+1))`
-/

namespace A099362.P542777572737009998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (n + 2) + A101637 (A033663 (n + 1)).toNat

end

end A099362.P542777572737009998

/-! ## A099362.P9812566066770796391

`A105242(gcd(A002182(n+1), A229418(n+1)))`
-/

namespace A099362.P9812566066770796391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105242 (Int.gcd (A002182 (n + 1)) (A229418 (n + 1)))

end

end A099362.P9812566066770796391

/-! ## A099362.P16983652498516253813

`A196437(n+2)-A196437(A196395(3*(n+1)))`
-/

namespace A099362.P16983652498516253813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196437 (n + 2) - A196437 (A196395 (3 * (n + 1))).toNat

end

end A099362.P16983652498516253813

/-! ## A099362.P4934053244238907505

`A328458((n+1)^A242784(n)+1)`
-/

namespace A099362.P4934053244238907505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A242784 n : ℤ) + 1)).toNat

end

end A099362.P4934053244238907505

/-! ## A099362.P4649916243305341213

`A326413(A269303(n+1)*A295989(n)+1)`
-/

namespace A099362.P4649916243305341213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326413 (A269303 (n + 1) * A295989 n + 1).toNat

end

end A099362.P4649916243305341213

/-!
# A099363: An inverse Chebyshev transform of 1-x.

The programs for A099363, the canonical program `A099363.P17729703105909125220` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099363 has offset 0).

The definition of A099363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099363.P17288820631686902226

`Δ[-A126120(n)]`
-/

namespace A099363.P17288820631686902226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P17288820631686902226

namespace A099363

/-- `Δ[-A126120(n)]` -/
def P17288820631686902226.Spec : Prop :=
  ∀ n, P17288820631686902226.a n = A099363 n

end A099363

/-! ## A099363.P8955762756709526823

`Δ[A210628(n+1)]`
-/

namespace A099363.P8955762756709526823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P8955762756709526823

namespace A099363

/-- `Δ[A210628(n+1)]` -/
def P8955762756709526823.Spec : Prop :=
  ∀ n, P8955762756709526823.a n = A099363 n

end A099363

/-! ## A099363.P17729703105909125220

`Δ[-A097331(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099363

/-- `Δ[-A097331(n+1)]` -/
def P17729703105909125220.Spec : Prop :=
  ∀ n, P17729703105909125220.a n = A099363 n

theorem P17729703105909125220.correct : P17729703105909125220.Spec := by
  intro n
  simp only [A099363]

end A099363

/-! ## A099363.P16413317110078352703

`Δ[Δ[n-A166588(n)]]`
-/

namespace A099363.P16413317110078352703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A166588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P16413317110078352703

namespace A099363

/-- `Δ[Δ[n-A166588(n)]]` -/
def P16413317110078352703.Spec : Prop :=
  ∀ n, P16413317110078352703.a n = A099363 n

end A099363

/-! ## A099363.P16060040278731306026

`(-1)^n*A000108(floor((n+1)/2))`
-/

namespace A099363.P16060040278731306026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A099363.P16060040278731306026

namespace A099363

/-- `(-1)^n*A000108(floor((n+1)/2))` -/
def P16060040278731306026.Spec : Prop :=
  ∀ n, P16060040278731306026.a n = A099363 n

end A099363

/-! ## A099363.P4512445012331744858

`A033999(n)*A208355(n)`
-/

namespace A099363.P4512445012331744858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208355 n

end

end A099363.P4512445012331744858

namespace A099363

/-- `A033999(n)*A208355(n)` -/
def P4512445012331744858.Spec : Prop :=
  ∀ n, P4512445012331744858.a n = A099363 n

end A099363

/-! ## A099363.P13213853381574715705

`A126120(n)-A126120(n+1)`
-/

namespace A099363.P13213853381574715705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n - A126120 (n + 1)

end

end A099363.P13213853381574715705

namespace A099363

/-- `A126120(n)-A126120(n+1)` -/
def P13213853381574715705.Spec : Prop :=
  ∀ n, P13213853381574715705.a n = A099363 n

theorem P13213853381574715705.correct : P13213853381574715705.Spec := by
  intro n
  simp only [A099363, Nat.add_sub_cancel, A099363.P13213853381574715705.a, A099363.P17729703105909125220.f1, A099363.P17729703105909125220.a, A097331, A097331.P4426990625459901142.a, A126120, A126120.P11676298334808492124.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099363

/-! ## A099363.P8850530815726032091

`A210628(n+2)+A126120(n)`
-/

namespace A099363.P8850530815726032091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 2) + A126120 n

end

end A099363.P8850530815726032091

namespace A099363

/-- `A210628(n+2)+A126120(n)` -/
def P8850530815726032091.Spec : Prop :=
  ∀ n, P8850530815726032091.a n = A099363 n

end A099363

/-! ## A099363.P3111311344734882107

`2*A126120(n)-A208355(n)`
-/

namespace A099363.P3111311344734882107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126120 n - A208355 n

end

end A099363.P3111311344734882107

namespace A099363

/-- `2*A126120(n)-A208355(n)` -/
def P3111311344734882107.Spec : Prop :=
  ∀ n, P3111311344734882107.a n = A099363 n

end A099363

/-! ## A099363.P18169239943670030322

`A210628(n+2)+A097331(n+1)`
-/

namespace A099363.P18169239943670030322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 2) + A097331 (n + 1)

end

end A099363.P18169239943670030322

namespace A099363

/-- `A210628(n+2)+A097331(n+1)` -/
def P18169239943670030322.Spec : Prop :=
  ∀ n, P18169239943670030322.a n = A099363 n

end A099363

/-! ## A099363.P4055206903776916644

`A097331(n+1)-A097331(n+2)`
-/

namespace A099363.P4055206903776916644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1) - A097331 (n + 2)

end

end A099363.P4055206903776916644

namespace A099363

/-- `A097331(n+1)-A097331(n+2)` -/
def P4055206903776916644.Spec : Prop :=
  ∀ n, P4055206903776916644.a n = A099363 n

theorem P4055206903776916644.correct : P4055206903776916644.Spec := by
  intro n
  simp only [A099363, Nat.add_sub_cancel, A099363.P4055206903776916644.a, A099363.P17729703105909125220.f1, A099363.P17729703105909125220.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099363

/-! ## A099363.P16897040096745334123

`A210628(n+2)-A210628(n+1)`
-/

namespace A099363.P16897040096745334123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 2) - A210628 (n + 1)

end

end A099363.P16897040096745334123

namespace A099363

/-- `A210628(n+2)-A210628(n+1)` -/
def P16897040096745334123.Spec : Prop :=
  ∀ n, P16897040096745334123.a n = A099363 n

end A099363

/-! ## A099363.P11353106954753184713

`A009531(2*n+1)*A208355(n)`
-/

namespace A099363.P11353106954753184713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A208355 n

end

end A099363.P11353106954753184713

namespace A099363

/-- `A009531(2*n+1)*A208355(n)` -/
def P11353106954753184713.Spec : Prop :=
  ∀ n, P11353106954753184713.a n = A099363 n

end A099363

/-! ## A099363.P16837419203607687382

`A112030(2*n+1)*A208355(n)`
-/

namespace A099363.P16837419203607687382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112030 (2 * n + 1) * A208355 n

end

end A099363.P16837419203607687382

namespace A099363

/-- `A112030(2*n+1)*A208355(n)` -/
def P16837419203607687382.Spec : Prop :=
  ∀ n, P16837419203607687382.a n = A099363 n

end A099363

/-! ## A099363.P3365372670586155758

`Δ[Δ[A059348(n+2)]-A026008(n)]`
-/

namespace A099363.P3365372670586155758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P3365372670586155758

namespace A099363

/-- `Δ[Δ[A059348(n+2)]-A026008(n)]` -/
def P3365372670586155758.Spec : Prop :=
  ∀ n, P3365372670586155758.a n = A099363 n

end A099363

/-! ## A099363.P14088133181201231469

`Δ[A037952(n)]-A037952(n)`
-/

namespace A099363.P14088133181201231469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A037952 n

end

end A099363.P14088133181201231469

namespace A099363

/-- `Δ[A037952(n)]-A037952(n)` -/
def P14088133181201231469.Spec : Prop :=
  ∀ n, P14088133181201231469.a n = A099363 n

end A099363

/-! ## A099363.P1477571371359152726

`Δ[A138364(n)-A057977(n)]`
-/

namespace A099363.P1477571371359152726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n - A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P1477571371359152726

namespace A099363

/-- `Δ[A138364(n)-A057977(n)]` -/
def P1477571371359152726.Spec : Prop :=
  ∀ n, P1477571371359152726.a n = A099363 n

end A099363

/-! ## A099363.P4516139878751324830

`Δ[(A138364(n)-1)*A126120(n)]`
-/

namespace A099363.P4516139878751324830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138364 n - 1) * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P4516139878751324830

namespace A099363

/-- `Δ[(A138364(n)-1)*A126120(n)]` -/
def P4516139878751324830.Spec : Prop :=
  ∀ n, P4516139878751324830.a n = A099363 n

end A099363

/-! ## A099363.P1979542709161059995

`A037952(n+1)-2*A037952(n)`
-/

namespace A099363.P1979542709161059995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) - 2 * A037952 n

end

end A099363.P1979542709161059995

namespace A099363

/-- `A037952(n+1)-2*A037952(n)` -/
def P1979542709161059995.Spec : Prop :=
  ∀ n, P1979542709161059995.a n = A099363 n

end A099363

/-! ## A099363.P12230272321784702715

`Δ[Δ[A001405(n)]-A001405(n)]`
-/

namespace A099363.P12230272321784702715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P12230272321784702715

namespace A099363

/-- `Δ[Δ[A001405(n)]-A001405(n)]` -/
def P12230272321784702715.Spec : Prop :=
  ∀ n, P12230272321784702715.a n = A099363 n

end A099363

/-!
# A099364: An inverse Chebyshev transform of (1-x)^2.

The programs for A099364, the canonical program `A099364.P1685549905017703622` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099364 has offset 0).

The definition of A099364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099364.P7962142120815918917

`(-1)^n*A089408(n+3)`
-/

namespace A099364.P7962142120815918917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089408 (n + 3)

end

end A099364.P7962142120815918917

namespace A099364

/-- `(-1)^n*A089408(n+3)` -/
def P7962142120815918917.Spec : Prop :=
  ∀ n, P7962142120815918917.a n = A099364 n

end A099364

/-! ## A099364.P12612185572891420874

`Δ[Δ[A110199(n)]-A110199(n)]`
-/

namespace A099364.P12612185572891420874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A110199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099364.P12612185572891420874

namespace A099364

/-- `Δ[Δ[A110199(n)]-A110199(n)]` -/
def P12612185572891420874.Spec : Prop :=
  ∀ n, P12612185572891420874.a n = A099364 n

end A099364

/-! ## A099364.P12055343683054971819

`Δ[Δ[A126120(n)]]-A126120(n)`
-/

namespace A099364.P12055343683054971819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126120 n

end

end A099364.P12055343683054971819

namespace A099364

/-- `Δ[Δ[A126120(n)]]-A126120(n)` -/
def P12055343683054971819.Spec : Prop :=
  ∀ n, P12055343683054971819.a n = A099364 n

end A099364

/-! ## A099364.P1685549905017703622

`Δ[A097331(n+2)]*A000034(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099364

/-- `Δ[A097331(n+2)]*A000034(n)` -/
def P1685549905017703622.Spec : Prop :=
  ∀ n, P1685549905017703622.a n = A099364 n

theorem P1685549905017703622.correct : P1685549905017703622.Spec := by
  intro n
  simp only [A099364]

end A099364

/-! ## A099364.P16030488047036975334

`Δ[A097331(n+2)]*A040001(n+1)`
-/

namespace A099364.P16030488047036975334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A040001 (n + 1)

end

end A099364.P16030488047036975334

namespace A099364

/-- `Δ[A097331(n+2)]*A040001(n+1)` -/
def P16030488047036975334.Spec : Prop :=
  ∀ n, P16030488047036975334.a n = A099364 n

end A099364

/-! ## A099364.P16152983604958338146

`Δ[Δ[A097331(n+1)]]-A097331(n+1)`
-/

namespace A099364.P16152983604958338146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A097331 (n + 1)

end

end A099364.P16152983604958338146

namespace A099364

/-- `Δ[Δ[A097331(n+1)]]-A097331(n+1)` -/
def P16152983604958338146.Spec : Prop :=
  ∀ n, P16152983604958338146.a n = A099364 n

end A099364

/-! ## A099364.P3521218723856885910

`Δ[Δ[A166588(n+1)]-A166588(n+1)]`
-/

namespace A099364.P3521218723856885910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A166588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099364.P3521218723856885910

namespace A099364

/-- `Δ[Δ[A166588(n+1)]-A166588(n+1)]` -/
def P3521218723856885910.Spec : Prop :=
  ∀ n, P3521218723856885910.a n = A099364 n

end A099364

/-! ## A099364.P17296106699285337652

`A210628(n+1)-Δ[Δ[A210628(n+1)]]`
-/

namespace A099364.P17296106699285337652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1) - (f1 (n + 1) - f1 n)

end

end A099364.P17296106699285337652

namespace A099364

/-- `A210628(n+1)-Δ[Δ[A210628(n+1)]]` -/
def P17296106699285337652.Spec : Prop :=
  ∀ n, P17296106699285337652.a n = A099364 n

end A099364

/-! ## A099364.P16620479916328843183

`A037955(n)-Δ[Δ[A037952(n)]]`
-/

namespace A099364.P16620479916328843183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n - (f1 (n + 1) - f1 n)

end

end A099364.P16620479916328843183

namespace A099364

/-- `A037955(n)-Δ[Δ[A037952(n)]]` -/
def P16620479916328843183.Spec : Prop :=
  ∀ n, P16620479916328843183.a n = A099364 n

end A099364

/-!
# A099365: Squares of A052918(n-1) (generalized Fibonacci).

The programs for A099365, the canonical program `A099365.P14216801158202948758` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099365 has offset 0).

The definition of A099365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099365.P14216801158202948758

`27*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099365

/-- `27*a(n-1)-a(n-2)-2*(-1)^n` -/
def P14216801158202948758.Spec : Prop :=
  ∀ n, P14216801158202948758.a n = A099365 n

theorem P14216801158202948758.correct : P14216801158202948758.Spec := by
  intro n
  simp only [A099365]

end A099365

/-! ## A099365.P9890298537131035573

`26*a(n-1)+26*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=25`
-/

namespace A099365.P9890298537131035573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 25] fun n a =>
  26 * a (n - 1) + 26 * a (n - 2) - a (n - 3)

end

end A099365.P9890298537131035573

namespace A099365

/-- `26*a(n-1)+26*a(n-2)-a(n-3)` -/
def P9890298537131035573.Spec : Prop :=
  ∀ n, P9890298537131035573.a n = A099365 n

end A099365

/-! ## A099365.P7452974035624375947

`∑[a(n-2)+5*a(n-1)]²` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A099365.P7452974035624375947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 2) + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099365.P7452974035624375947

namespace A099365

/-- `∑[a(n-2)+5*a(n-1)]²` -/
def P7452974035624375947.Spec : Prop :=
  ∀ n, (P7452974035624375947.a n : ℤ) = A099365 n

end A099365

/-! ## A099365.P15953531150810067067

`∑[a(n-2)+lcm(5, a(n-1))]²` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A099365.P15953531150810067067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 2) + Nat.lcm 5 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099365.P15953531150810067067

namespace A099365

/-- `∑[a(n-2)+lcm(5, a(n-1))]²` -/
def P15953531150810067067.Spec : Prop :=
  ∀ n, (P15953531150810067067.a n : ℤ) = A099365 n

end A099365

/-! ## A099365.P5567155596051091604

`Δ[A015449(n)/5]²`
-/

namespace A099365.P5567155596051091604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015449 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A099365.P5567155596051091604

namespace A099365

/-- `Δ[A015449(n)/5]²` -/
def P5567155596051091604.Spec : Prop :=
  ∀ n, P5567155596051091604.a n = (A099365 n : ℚ)

end A099365

/-! ## A099365.P13428396490195160486

`(A190954(n)/2^(n-1))²`
-/

namespace A099365.P13428396490195160486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A190954 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A099365.P13428396490195160486

namespace A099365

/-- `(A190954(n)/2^(n-1))²` -/
def P13428396490195160486.Spec : Prop :=
  ∀ n, P13428396490195160486.a n = (A099365 n : ℚ)

end A099365

/-! ## A099365.P10428945417445324234

`(A052918(n)-A100237(n))²`
-/

namespace A099365.P10428945417445324234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052918 n - A100237 n) ^ 2

end

end A099365.P10428945417445324234

namespace A099365

/-- `(A052918(n)-A100237(n))²` -/
def P10428945417445324234.Spec : Prop :=
  ∀ n, P10428945417445324234.a n = A099365 n

end A099365

/-! ## A099365.P15284353463248461938

`(A015449(n)-A164581(n))²`
-/

namespace A099365.P15284353463248461938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015449 n - A164581 n) ^ 2

end

end A099365.P15284353463248461938

namespace A099365

/-- `(A015449(n)-A164581(n))²` -/
def P15284353463248461938.Spec : Prop :=
  ∀ n, P15284353463248461938.a n = A099365 n

end A099365

/-! ## A099365.P18221927831082884950

`(A015449(n+1)-A052918(n))²`
-/

namespace A099365.P18221927831082884950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015449 (n + 1) - A052918 n) ^ 2

end

end A099365.P18221927831082884950

namespace A099365

/-- `(A015449(n+1)-A052918(n))²` -/
def P18221927831082884950.Spec : Prop :=
  ∀ n, P18221927831082884950.a n = A099365 n

end A099365

/-! ## A099365.P2033749648428417377

`(A052918(n+1)-A087130(n+1))²`
-/

namespace A099365.P2033749648428417377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052918 (n + 1) - A087130 (n + 1)) ^ 2

end

end A099365.P2033749648428417377

namespace A099365

/-- `(A052918(n+1)-A087130(n+1))²` -/
def P2033749648428417377.Spec : Prop :=
  ∀ n, P2033749648428417377.a n = A099365 n

end A099365

/-!
# A099366: Squares of A005668.

The programs for A099366, the canonical program `A099366.P10965195624214818843` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099366 has offset 0).

The definition of A099366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099366.P10965195624214818843

`38*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099366

/-- `38*a(n-1)-a(n-2)-2*(-1)^n` -/
def P10965195624214818843.Spec : Prop :=
  ∀ n, P10965195624214818843.a n = A099366 n

theorem P10965195624214818843.correct : P10965195624214818843.Spec := by
  intro n
  simp only [A099366]

end A099366

/-! ## A099366.P10995621101807260221

`37*a(n-1)+37*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=36`
-/

namespace A099366.P10995621101807260221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 36] fun n a =>
  37 * a (n - 1) + 37 * a (n - 2) - a (n - 3)

end

end A099366.P10995621101807260221

namespace A099366

/-- `37*a(n-1)+37*a(n-2)-a(n-3)` -/
def P10995621101807260221.Spec : Prop :=
  ∀ n, P10995621101807260221.a n = A099366 n

end A099366

/-! ## A099366.P2720826017916129599

`A005668(n)²`
-/

namespace A099366.P2720826017916129599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 n ^ 2

end

end A099366.P2720826017916129599

namespace A099366

/-- `A005668(n)²` -/
def P2720826017916129599.Spec : Prop :=
  ∀ n, P2720826017916129599.a n = A099366 n

end A099366

/-! ## A099366.P4926257637778849548

`floor((A078469(n)/2)²)`
-/

namespace A099366.P4926257637778849548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A078469 n : ℚ) / 2) ^ 2⌋

end

end A099366.P4926257637778849548

namespace A099366

/-- `floor((A078469(n)/2)²)` -/
def P4926257637778849548.Spec : Prop :=
  ∀ n, P4926257637778849548.a n = A099366 n

end A099366

/-! ## A099366.P4986251250417947789

`(A005667(n)-A179237(n))²`
-/

namespace A099366.P4986251250417947789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005667 n - A179237 n) ^ 2

end

end A099366.P4986251250417947789

namespace A099366

/-- `(A005667(n)-A179237(n))²` -/
def P4986251250417947789.Spec : Prop :=
  ∀ n, P4986251250417947789.a n = A099366 n

end A099366

/-! ## A099366.P6670756352248080539

`(A015451(n)-A179237(n))²`
-/

namespace A099366.P6670756352248080539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015451 n - A179237 n) ^ 2

end

end A099366.P6670756352248080539

namespace A099366

/-- `(A015451(n)-A179237(n))²` -/
def P6670756352248080539.Spec : Prop :=
  ∀ n, P6670756352248080539.a n = A099366 n

end A099366

/-! ## A099366.P12608069992216119833

`A005668(n)/2*A078469(n)`
-/

namespace A099366.P12608069992216119833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 n : ℚ) / 2 * (A078469 n : ℚ)

end

end A099366.P12608069992216119833

namespace A099366

/-- `A005668(n)/2*A078469(n)` -/
def P12608069992216119833.Spec : Prop :=
  ∀ n, P12608069992216119833.a n = (A099366 n : ℚ)

end A099366

/-! ## A099366.P12601064142223416769

`A005668(n)^A036453(n+1)`
-/

namespace A099366.P12601064142223416769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 n : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A099366.P12601064142223416769

namespace A099366

/-- `A005668(n)^A036453(n+1)` -/
def P12601064142223416769.Spec : Prop :=
  ∀ n, P12601064142223416769.a n = (A099366 n : ℚ)

end A099366

/-! ## A099366.P17312788532689695303

`∑[A015451(n)-A078469(n)]²`
-/

namespace A099366.P17312788532689695303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015451 n - A078469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099366.P17312788532689695303

namespace A099366

/-- `∑[A015451(n)-A078469(n)]²` -/
def P17312788532689695303.Spec : Prop :=
  ∀ n, P17312788532689695303.a n = A099366 n

end A099366

/-! ## A099366.P9678680006065561215

`record[A228471(n)-A228470(n)]²`
-/

namespace A099366.P9678680006065561215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228471 n - A228470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A099366.P9678680006065561215

namespace A099366

/-- `record[A228471(n)-A228470(n)]²` -/
def P9678680006065561215.Spec : Prop :=
  ∀ n, P9678680006065561215.a n = A099366 n

end A099366

/-!
# A099367: a(n) = A054413(n-1)^2, n >= 1.

The programs for A099367, the canonical program `A099367.P615472918382392332` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099367 has offset 0).

The definition of A099367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099367.P615472918382392332

`51*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099367

/-- `51*a(n-1)-a(n-2)-2*(-1)^n` -/
def P615472918382392332.Spec : Prop :=
  ∀ n, P615472918382392332.a n = A099367 n

theorem P615472918382392332.correct : P615472918382392332.Spec := by
  intro n
  simp only [A099367]

end A099367

/-! ## A099367.P4409032071396654601

`50*a(n-1)+50*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=49`
-/

namespace A099367.P4409032071396654601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 49] fun n a =>
  50 * a (n - 1) + 50 * a (n - 2) - a (n - 3)

end

end A099367.P4409032071396654601

namespace A099367

/-- `50*a(n-1)+50*a(n-2)-a(n-3)` -/
def P4409032071396654601.Spec : Prop :=
  ∀ n, P4409032071396654601.a n = A099367 n

end A099367

/-! ## A099367.P4287608791045990760

`floor((A155196(n)/6)²)`
-/

namespace A099367.P4287608791045990760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A155196 n : ℚ) / 6) ^ 2⌋

end

end A099367.P4287608791045990760

namespace A099367

/-- `floor((A155196(n)/6)²)` -/
def P4287608791045990760.Spec : Prop :=
  ∀ n, P4287608791045990760.a n = A099367 n

end A099367

/-! ## A099367.P13798149790456987266

`(Δ[A054413(n)]%A054413(n))²`
-/

namespace A099367.P13798149790456987266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A054413 n) ^ 2

end

end A099367.P13798149790456987266

namespace A099367

/-- `(Δ[A054413(n)]%A054413(n))²` -/
def P13798149790456987266.Spec : Prop :=
  ∀ n, P13798149790456987266.a n = A099367 n

end A099367

/-! ## A099367.P15314078981841509298

`(A015453(n+1)-A054413(n))²`
-/

namespace A099367.P15314078981841509298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015453 (n + 1) - A054413 n) ^ 2

end

end A099367.P15314078981841509298

namespace A099367

/-- `(A015453(n+1)-A054413(n))²` -/
def P15314078981841509298.Spec : Prop :=
  ∀ n, P15314078981841509298.a n = A099367 n

end A099367

/-! ## A099367.P9559884207546671026

`(A155196(n)/6)²*char[A053626(n+1)]`
-/

namespace A099367.P9559884207546671026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A155196 n : ℚ) / 6) ^ 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A099367.P9559884207546671026

namespace A099367

/-- `(A155196(n)/6)²*char[A053626(n+1)]` -/
def P9559884207546671026.Spec : Prop :=
  ∀ n, P9559884207546671026.a n = (A099367 n : ℚ)

end A099367

/-! ## A099367.P891299307181362734

`(A155196(n)/6)²*char[A113655(n+1)]`
-/

namespace A099367.P891299307181362734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A155196 n : ℚ) / 6) ^ 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A099367.P891299307181362734

namespace A099367

/-- `(A155196(n)/6)²*char[A113655(n+1)]` -/
def P891299307181362734.Spec : Prop :=
  ∀ n, P891299307181362734.a n = (A099367 n : ℚ)

end A099367

/-! ## A099367.P10273835645981519006

`A054413(2*n)-A054413(n)²`
-/

namespace A099367.P10273835645981519006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 (2 * n) - A054413 n ^ 2

end

end A099367.P10273835645981519006

namespace A099367

/-- `A054413(2*n)-A054413(n)²` -/
def P10273835645981519006.Spec : Prop :=
  ∀ n, P10273835645981519006.a n = A099367 n

end A099367

/-! ## A099367.P7988941190064728146

`record[A054413(A127366(n))]-A054413(n)²`
-/

namespace A099367.P7988941190064728146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 (A127366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A054413 n ^ 2

end

end A099367.P7988941190064728146

namespace A099367

/-- `record[A054413(A127366(n))]-A054413(n)²` -/
def P7988941190064728146.Spec : Prop :=
  ∀ n, P7988941190064728146.a n = A099367 n

end A099367

/-!
# A099368: Twice Chebyshev polynomials of the first kind, T(n,x), evaluated at x=51/2.

The programs for A099368, the canonical program `A099368.P16720386763838783109` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099368 has offset 0).

The definition of A099368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099368.P16720386763838783109

`51*a(n-1)-a(n-2)` with `a(0)=2, a(1)=51`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099368

/-- `51*a(n-1)-a(n-2)` -/
def P16720386763838783109.Spec : Prop :=
  ∀ n, P16720386763838783109.a n = A099368 n

theorem P16720386763838783109.correct : P16720386763838783109.Spec := by
  intro n
  simp only [A099368]

end A099368

/-! ## A099368.P15836075778418274354

`A086902(2*n)`
-/

namespace A099368.P15836075778418274354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086902 (2 * n)

end

end A099368.P15836075778418274354

namespace A099368

/-- `A086902(2*n)` -/
def P15836075778418274354.Spec : Prop :=
  ∀ n, P15836075778418274354.a n = A099368 n

end A099368

/-! ## A099368.P11089656048824373466

`A051932(2*n)-6`
-/

namespace A099368.P11089656048824373466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051932 (2 * n) - 6

end

end A099368.P11089656048824373466

namespace A099368

/-- `A051932(2*n)-6` -/
def P11089656048824373466.Spec : Prop :=
  ∀ n, P11089656048824373466.a n = A099368 n

end A099368

/-! ## A099368.P14019843435177396576

`record[gcd(val(n+1, 2), A086902(n))]`
-/

namespace A099368.P14019843435177396576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A086902 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099368.P14019843435177396576

namespace A099368

/-- `record[gcd(val(n+1, 2), A086902(n))]` -/
def P14019843435177396576.Spec : Prop :=
  ∀ n, (P14019843435177396576.a n : ℤ) = A099368 n

end A099368

/-! ## A099368.P18216016486482087183

`record[A086902(n)%A051932(n)]`
-/

namespace A099368.P18216016486482087183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086902 n) (A051932 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099368.P18216016486482087183

namespace A099368

/-- `record[A086902(n)%A051932(n)]` -/
def P18216016486482087183.Spec : Prop :=
  ∀ n, P18216016486482087183.a n = A099368 n

end A099368

/-!
# A099369: Squares of A041025(n-1), n>=1, (generalized Fibonacci).

The programs for A099369, the canonical program `A099369.P5804742956790742453` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099369 has offset 0).

The definition of A099369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099369.P5804742956790742453

`66*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099369

/-- `66*a(n-1)-a(n-2)-2*(-1)^n` -/
def P5804742956790742453.Spec : Prop :=
  ∀ n, P5804742956790742453.a n = A099369 n

theorem P5804742956790742453.correct : P5804742956790742453.Spec := by
  intro n
  simp only [A099369]

end A099369

/-! ## A099369.P7452444021522465486

`65*a(n-1)+65*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=64`
-/

namespace A099369.P7452444021522465486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 64] fun n a =>
  65 * a (n - 1) + 65 * a (n - 2) - a (n - 3)

end

end A099369.P7452444021522465486

namespace A099369

/-- `65*a(n-1)+65*a(n-2)-a(n-3)` -/
def P7452444021522465486.Spec : Prop :=
  ∀ n, P7452444021522465486.a n = A099369 n

end A099369

/-! ## A099369.P11855701339951484540

`floor((A155197(n)/7)²)`
-/

namespace A099369.P11855701339951484540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A155197 n : ℚ) / 7) ^ 2⌋

end

end A099369.P11855701339951484540

namespace A099369

/-- `floor((A155197(n)/7)²)` -/
def P11855701339951484540.Spec : Prop :=
  ∀ n, P11855701339951484540.a n = A099369 n

end A099369

/-! ## A099369.P7106851365350032348

`round(A088317(n)²/17)`
-/

namespace A099369.P7106851365350032348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088317 n ^ 2 : ℚ) / 17)

end

end A099369.P7106851365350032348

namespace A099369

/-- `round(A088317(n)²/17)` -/
def P7106851365350032348.Spec : Prop :=
  ∀ n, P7106851365350032348.a n = A099369 n

end A099369

/-! ## A099369.P11169151770666923194

`(A041024(n)%A041025(n))²`
-/

namespace A099369.P11169151770666923194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041024 n) (A041025 n) ^ 2

end

end A099369.P11169151770666923194

namespace A099369

/-- `(A041024(n)%A041025(n))²` -/
def P11169151770666923194.Spec : Prop :=
  ∀ n, P11169151770666923194.a n = A099369 n

end A099369

/-! ## A099369.P11593865786748459996

`(A015454(n+1)-A041025(n))²`
-/

namespace A099369.P11593865786748459996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015454 (n + 1) - A041025 n) ^ 2

end

end A099369.P11593865786748459996

namespace A099369

/-- `(A015454(n+1)-A041025(n))²` -/
def P11593865786748459996.Spec : Prop :=
  ∀ n, P11593865786748459996.a n = A099369 n

end A099369

/-! ## A099369.P5472191672746631513

`(A155197(n)/7*A057427(n))²`
-/

namespace A099369.P5472191672746631513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A155197 n : ℚ) / 7 * (A057427 n : ℚ)) ^ 2

end

end A099369.P5472191672746631513

namespace A099369

/-- `(A155197(n)/7*A057427(n))²` -/
def P5472191672746631513.Spec : Prop :=
  ∀ n, P5472191672746631513.a n = (A099369 n : ℚ)

end A099369

/-! ## A099369.P16970975171466550460

`A078988(n)-A041025(n)²`
-/

namespace A099369.P16970975171466550460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078988 n - A041025 n ^ 2

end

end A099369.P16970975171466550460

namespace A099369

/-- `A078988(n)-A041025(n)²` -/
def P16970975171466550460.Spec : Prop :=
  ∀ n, P16970975171466550460.a n = A099369 n

end A099369

/-! ## A099369.P11163112404855503089

`A041025(2*n)-A041025(n)²`
-/

namespace A099369.P11163112404855503089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 (2 * n) - A041025 n ^ 2

end

end A099369.P11163112404855503089

namespace A099369

/-- `A041025(2*n)-A041025(n)²` -/
def P11163112404855503089.Spec : Prop :=
  ∀ n, P11163112404855503089.a n = A099369 n

end A099369

/-!
# A099370: Chebyshev polynomial of the first kind, T(n,x), evaluated at x=33.

The programs for A099370, the canonical program `A099370.P5474916595126560378` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099370 has offset 0).

The definition of A099370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099370.P5474916595126560378

`66*a(n-1)-a(n-2)` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099370

/-- `66*a(n-1)-a(n-2)` -/
def P5474916595126560378.Spec : Prop :=
  ∀ n, P5474916595126560378.a n = A099370 n

theorem P5474916595126560378.correct : P5474916595126560378.Spec := by
  intro n
  simp only [A099370]

end A099370

/-! ## A099370.P7255581061050895269

`((33+8*sqrt(17))^n+(33-8*sqrt(17))^n)/2`
-/

namespace A099370.P7255581061050895269
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((33 + 8 * Real.sqrt (17 : ℝ)) ^ n + (33 - 8 * Real.sqrt (17 : ℝ)) ^ n) / 2

end

end A099370.P7255581061050895269

namespace A099370

/-- `((33+8*sqrt(17))^n+(33-8*sqrt(17))^n)/2` -/
def P7255581061050895269.Spec : Prop :=
  ∀ n, P7255581061050895269.a n = (A099370 n : ℝ)

theorem P7255581061050895269.correct : P7255581061050895269.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A099370, Nat.add_sub_cancel, A099370.P7255581061050895269.a, A099370.P5474916595126560378.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A099370, Nat.add_sub_cancel, A099370.P7255581061050895269.a, A099370.P5474916595126560378.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A099370

/-! ## A099370.P11644790364225542038

`A088317(2*n)`
-/

namespace A099370.P11644790364225542038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088317 (2 * n)

end

end A099370.P11644790364225542038

namespace A099370

/-- `A088317(2*n)` -/
def P11644790364225542038.Spec : Prop :=
  ∀ n, P11644790364225542038.a n = A099370 n

end A099370

/-! ## A099370.P7049890124864862187

`record[A088317(n)/A033999(n)]`
-/

namespace A099370.P7049890124864862187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088317 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099370.P7049890124864862187

namespace A099370

/-- `record[A088317(n)/A033999(n)]` -/
def P7049890124864862187.Spec : Prop :=
  ∀ n, P7049890124864862187.a n = (A099370 n : ℚ)

end A099370

/-! ## A099370.P7938860478008868891

`record[gcd(A035457(n), A041024(n))]`
-/

namespace A099370.P7938860478008868891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035457 n) (A041024 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099370.P7938860478008868891

namespace A099370

/-- `record[gcd(A035457(n), A041024(n))]` -/
def P7938860478008868891.Spec : Prop :=
  ∀ n, (P7938860478008868891.a n : ℤ) = A099370 n

end A099370

/-! ## A099370.P8769767228170709703

`A041510(2*n+1)-2*A041510(2*n)`
-/

namespace A099370.P8769767228170709703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041510 (2 * n + 1) - 2 * A041510 (2 * n)

end

end A099370.P8769767228170709703

namespace A099370

/-- `A041510(2*n+1)-2*A041510(2*n)` -/
def P8769767228170709703.Spec : Prop :=
  ∀ n, P8769767228170709703.a n = A099370 n

end A099370

/-! ## A099370.P12840342821331234116

`A041024(2*n+1)-8*A041024(2*n)`
-/

namespace A099370.P12840342821331234116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041024 (2 * n + 1) - 8 * A041024 (2 * n)

end

end A099370.P12840342821331234116

namespace A099370

/-- `A041024(2*n+1)-8*A041024(2*n)` -/
def P12840342821331234116.Spec : Prop :=
  ∀ n, P12840342821331234116.a n = A099370 n

end A099370

/-!
# A099371: Expansion of g.f.: x/(1 - 9*x - x^2).

The programs for A099371, the canonical program `A099371.P445640263771937010` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099371 has offset 0).

The definition of A099371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-9x-x^2))` (program `A099371.P445640263771937010`, by `A099371.P445640263771937010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099371.P445640263771937010

`ogf(x/(1-9x-x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099371

/-- `ogf(x/(1-9x-x^2))` -/
def P445640263771937010.Spec : Prop :=
  ∀ n, P445640263771937010.a n = A099371 n

theorem P445640263771937010.correct : P445640263771937010.Spec := by
  intro n
  simp only [A099371]

end A099371

/-! ## A099371.P2260525086119203023

`9*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099371.P2260525086119203023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  9 * a (n - 1) + a (n - 2)

end

end A099371.P2260525086119203023

namespace A099371

/-- `9*a(n-1)+a(n-2)` -/
def P2260525086119203023.Spec : Prop :=
  ∀ n, (P2260525086119203023.a n : ℤ) = A099371 n

end A099371

/-! ## A099371.P10880398210585922792

`((9+sqrt(85))^n-(9-sqrt(85))^n)/(2^n*sqrt(85))`
-/

namespace A099371.P10880398210585922792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (85 : ℝ)) ^ n - (9 - Real.sqrt (85 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (85 : ℝ))

end

end A099371.P10880398210585922792

namespace A099371

/-- `((9+sqrt(85))^n-(9-sqrt(85))^n)/(2^n*sqrt(85))` -/
def P10880398210585922792.Spec : Prop :=
  ∀ n, P10880398210585922792.a n = (A099371 n : ℝ)

end A099371

/-! ## A099371.P2175526629723775133

`a(n-2)+a(n-1)/(1/3)²` with `a(0)=0, a(1)=1`
-/

namespace A099371.P2175526629723775133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A099371.P2175526629723775133

namespace A099371

/-- `a(n-2)+a(n-1)/(1/3)²` -/
def P2175526629723775133.Spec : Prop :=
  ∀ n, P2175526629723775133.a n = (A099371 n : ℚ)

end A099371

/-! ## A099371.P13098093552961508227

`a(n-2)-3*(a(n-1)-4*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A099371.P13098093552961508227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 3 * (a (n - 1) - 4 * a (n - 1))

end

end A099371.P13098093552961508227

namespace A099371

/-- `a(n-2)-3*(a(n-1)-4*a(n-1))` -/
def P13098093552961508227.Spec : Prop :=
  ∀ n, P13098093552961508227.a n = A099371 n

end A099371

/-! ## A099371.P9058761863285997215

`A015455(n)-a(n-1)` with `a(0)=0`
-/

namespace A099371.P9058761863285997215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015455 n - a (n - 1)

end

end A099371.P9058761863285997215

namespace A099371

/-- `A015455(n)-a(n-1)` -/
def P9058761863285997215.Spec : Prop :=
  ∀ n, P9058761863285997215.a n = A099371 n

end A099371

/-! ## A099371.P8099439929647599576

`Δ[A015455(n)/9]`
-/

namespace A099371.P8099439929647599576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015455 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099371.P8099439929647599576

namespace A099371

/-- `Δ[A015455(n)/9]` -/
def P8099439929647599576.Spec : Prop :=
  ∀ n, P8099439929647599576.a n = (A099371 n : ℚ)

end A099371

/-! ## A099371.P4823300041995420980

`sqrt(A099372(n))`
-/

namespace A099371.P4823300041995420980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099372 n : ℝ)

end

end A099371.P4823300041995420980

namespace A099371

/-- `sqrt(A099372(n))` -/
def P4823300041995420980.Spec : Prop :=
  ∀ n, P4823300041995420980.a n = (A099371 n : ℝ)

end A099371

/-!
# A099372: a(n) = A099371(n)^2.

The programs for A099372, the canonical program `A099372.P10087808045259126788` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099372 has offset 0).

The definition of A099372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A099371(n)²` (program `A099372.P10087808045259126788`, by `A099372.P10087808045259126788.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099372.P6780026074009077046

`83*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A099372.P6780026074009077046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  83 * a (n - 1) - a (n - 2) - 2 * (-1) ^ n

end

end A099372.P6780026074009077046

namespace A099372

/-- `83*a(n-1)-a(n-2)-2*(-1)^n` -/
def P6780026074009077046.Spec : Prop :=
  ∀ n, P6780026074009077046.a n = A099372 n

end A099372

/-! ## A099372.P2734707925565275102

`82*a(n-1)+82*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=81`
-/

namespace A099372.P2734707925565275102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 81] fun n a =>
  82 * a (n - 1) + 82 * a (n - 2) - a (n - 3)

end

end A099372.P2734707925565275102

namespace A099372

/-- `82*a(n-1)+82*a(n-2)-a(n-3)` -/
def P2734707925565275102.Spec : Prop :=
  ∀ n, P2734707925565275102.a n = A099372 n

end A099372

/-! ## A099372.P10087808045259126788

`A099371(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099372

/-- `A099371(n)²` -/
def P10087808045259126788.Spec : Prop :=
  ∀ n, P10087808045259126788.a n = A099372 n

theorem P10087808045259126788.correct : P10087808045259126788.Spec := by
  intro n
  simp only [A099372]

end A099372

/-! ## A099372.P1120496562218122762

`floor((A155198(n)/8)²)`
-/

namespace A099372.P1120496562218122762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A155198 n : ℚ) / 8) ^ 2⌋

end

end A099372.P1120496562218122762

namespace A099372

/-- `floor((A155198(n)/8)²)` -/
def P1120496562218122762.Spec : Prop :=
  ∀ n, P1120496562218122762.a n = A099372 n

end A099372

/-! ## A099372.P12885858528543180340

`Δ[A015455(n)/9]²`
-/

namespace A099372.P12885858528543180340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015455 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A099372.P12885858528543180340

namespace A099372

/-- `Δ[A015455(n)/9]²` -/
def P12885858528543180340.Spec : Prop :=
  ∀ n, P12885858528543180340.a n = (A099372 n : ℚ)

end A099372

/-! ## A099372.P3912600344103320617

`A099371(n)^gcd(2, A000079(n))`
-/

namespace A099372.P3912600344103320617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 n ^ Int.gcd 2 (A000079 n)

end

end A099372.P3912600344103320617

namespace A099372

/-- `A099371(n)^gcd(2, A000079(n))` -/
def P3912600344103320617.Spec : Prop :=
  ∀ n, P3912600344103320617.a n = A099372 n

end A099372

/-! ## A099372.P1842142496325717554

`(Δ[A015455(n)]%A155198(n))²`
-/

namespace A099372.P1842142496325717554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A155198 n) ^ 2

end

end A099372.P1842142496325717554

namespace A099372

/-- `(Δ[A015455(n)]%A155198(n))²` -/
def P1842142496325717554.Spec : Prop :=
  ∀ n, P1842142496325717554.a n = A099372 n

end A099372

/-! ## A099372.P5314023814881123375

`A099371(n)^A020639(A004277(n))`
-/

namespace A099372.P5314023814881123375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099371 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A099372.P5314023814881123375

namespace A099372

/-- `A099371(n)^A020639(A004277(n))` -/
def P5314023814881123375.Spec : Prop :=
  ∀ n, P5314023814881123375.a n = (A099372 n : ℚ)

end A099372

/-! ## A099372.P8502592076629521789

`A099371(n)^A020639(A103505(n))`
-/

namespace A099372.P8502592076629521789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099371 n : ℚ) ^ (A020639 (A103505 n).toNat : ℤ)

end

end A099372.P8502592076629521789

namespace A099372

/-- `A099371(n)^A020639(A103505(n))` -/
def P8502592076629521789.Spec : Prop :=
  ∀ n, P8502592076629521789.a n = (A099372 n : ℚ)

end A099372

/-! ## A099372.P12696088274601323953

`A099371(n)^A000032(A151934(n))`
-/

namespace A099372.P12696088274601323953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099371 n : ℚ) ^ (A000032 (A151934 n).toNat : ℤ)

end

end A099372.P12696088274601323953

namespace A099372

/-- `A099371(n)^A000032(A151934(n))` -/
def P12696088274601323953.Spec : Prop :=
  ∀ n, P12696088274601323953.a n = (A099372 n : ℚ)

end A099372

/-!
# A099373: Twice Chebyshev polynomials of the first kind, T(n,x), evaluated at 83/2.

The programs for A099373, the canonical program `A099373.P8030908281105657302` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099373 has offset 0).

The definition of A099373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099373.P8030908281105657302

`83*a(n-1)-a(n-2)` with `a(0)=2, a(1)=83`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099373

/-- `83*a(n-1)-a(n-2)` -/
def P8030908281105657302.Spec : Prop :=
  ∀ n, P8030908281105657302.a n = A099373 n

theorem P8030908281105657302.correct : P8030908281105657302.Spec := by
  intro n
  simp only [A099373]

end A099373

/-! ## A099373.P1556818009497646270

`A087798(2*n)`
-/

namespace A099373.P1556818009497646270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087798 (2 * n)

end

end A099373.P1556818009497646270

namespace A099373

/-- `A087798(2*n)` -/
def P1556818009497646270.Spec : Prop :=
  ∀ n, P1556818009497646270.a n = A099373 n

end A099373

/-! ## A099373.P7996219292168327528

`record[gcd(val(n+1, 2), A087798(n))]`
-/

namespace A099373.P7996219292168327528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A087798 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099373.P7996219292168327528

namespace A099373

/-- `record[gcd(val(n+1, 2), A087798(n))]` -/
def P7996219292168327528.Spec : Prop :=
  ∀ n, (P7996219292168327528.a n : ℤ) = A099373 n

end A099373

/-! ## A099373.P7244554776719564989

`or(2, A087798(A005843(n)))`
-/

namespace A099373.P7244554776719564989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A087798 (A005843 n).toNat)

end

end A099373.P7244554776719564989

namespace A099373

/-- `or(2, A087798(A005843(n)))` -/
def P7244554776719564989.Spec : Prop :=
  ∀ n, P7244554776719564989.a n = A099373 n

end A099373

/-! ## A099373.P16880507327259593195

`record[A087798(n-A007814(n+1))]`
-/

namespace A099373.P16880507327259593195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087798 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099373.P16880507327259593195

namespace A099373

/-- `record[A087798(n-A007814(n+1))]` -/
def P16880507327259593195.Spec : Prop :=
  ∀ n, P16880507327259593195.a n = A099373 n

end A099373

/-! ## A099373.P11139467556673440893

`record[gcd(A007814(n+1), A087798(n))]`
-/

namespace A099373.P11139467556673440893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A087798 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099373.P11139467556673440893

namespace A099373

/-- `record[gcd(A007814(n+1), A087798(n))]` -/
def P11139467556673440893.Spec : Prop :=
  ∀ n, (P11139467556673440893.a n : ℤ) = A099373 n

end A099373

/-! ## A099373.P222408834126288809

`A099371(2*n+1)+A015455(2*n)-A099371(2*n)`
-/

namespace A099373.P222408834126288809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 (2 * n + 1) + (A015455 (2 * n) - A099371 (2 * n))

end

end A099373.P222408834126288809

namespace A099373

/-- `A099371(2*n+1)+A015455(2*n)-A099371(2*n)` -/
def P222408834126288809.Spec : Prop :=
  ∀ n, P222408834126288809.a n = A099373 n

end A099373

/-!
# A099374: a(n) = A041041(n-1)^2, n >= 1.

The programs for A099374, the canonical program `A099374.P12228425006907195658` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099374 has offset 0).

The definition of A099374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099374.P12228425006907195658

`102*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099374

/-- `102*a(n-1)-a(n-2)-2*(-1)^n` -/
def P12228425006907195658.Spec : Prop :=
  ∀ n, P12228425006907195658.a n = A099374 n

theorem P12228425006907195658.correct : P12228425006907195658.Spec := by
  intro n
  simp only [A099374]

end A099374

/-! ## A099374.P633154918968965557

`101*a(n-1)+101*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=100`
-/

namespace A099374.P633154918968965557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 100] fun n a =>
  101 * a (n - 1) + 101 * a (n - 2) - a (n - 3)

end

end A099374.P633154918968965557

namespace A099374

/-- `101*a(n-1)+101*a(n-2)-a(n-3)` -/
def P633154918968965557.Spec : Prop :=
  ∀ n, P633154918968965557.a n = A099374 n

end A099374

/-! ## A099374.P5810560018184716814

`Δ[A015456(n)/10]²`
-/

namespace A099374.P5810560018184716814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015456 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A099374.P5810560018184716814

namespace A099374

/-- `Δ[A015456(n)/10]²` -/
def P5810560018184716814.Spec : Prop :=
  ∀ n, P5810560018184716814.a n = (A099374 n : ℚ)

end A099374

/-! ## A099374.P14066630667141012446

`(A041041(n)-A109108(n))²`
-/

namespace A099374.P14066630667141012446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041041 n - A109108 n) ^ 2

end

end A099374.P14066630667141012446

namespace A099374

/-- `(A041041(n)-A109108(n))²` -/
def P14066630667141012446.Spec : Prop :=
  ∀ n, P14066630667141012446.a n = A099374 n

end A099374

/-! ## A099374.P14570342249291918364

`(A041040(n)%A041041(n))²`
-/

namespace A099374.P14570342249291918364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041040 n) (A041041 n) ^ 2

end

end A099374.P14570342249291918364

namespace A099374

/-- `(A041040(n)%A041041(n))²` -/
def P14570342249291918364.Spec : Prop :=
  ∀ n, P14570342249291918364.a n = A099374 n

end A099374

/-! ## A099374.P10430873441437213875

`(A015456(n+1)-A041041(n))²`
-/

namespace A099374.P10430873441437213875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015456 (n + 1) - A041041 n) ^ 2

end

end A099374.P10430873441437213875

namespace A099374

/-- `(A015456(n+1)-A041041(n))²` -/
def P10430873441437213875.Spec : Prop :=
  ∀ n, P10430873441437213875.a n = A099374 n

end A099374

/-! ## A099374.P2722955635986823297

`(A174768(n+1)/A086927(n))²`
-/

namespace A099374.P2722955635986823297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A174768 (n + 1) : ℚ) / (A086927 n : ℚ)) ^ 2

end

end A099374.P2722955635986823297

namespace A099374

/-- `(A174768(n+1)/A086927(n))²` -/
def P2722955635986823297.Spec : Prop :=
  ∀ n, P2722955635986823297.a n = (A099374 n : ℚ)

end A099374

/-! ## A099374.P13401044002431242832

`(A041041(n+1)-A086927(n+1))²`
-/

namespace A099374.P13401044002431242832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041041 (n + 1) - A086927 (n + 1)) ^ 2

end

end A099374.P13401044002431242832

namespace A099374

/-- `(A041041(n+1)-A086927(n+1))²` -/
def P13401044002431242832.Spec : Prop :=
  ∀ n, P13401044002431242832.a n = A099374 n

end A099374

/-! ## A099374.P16556985953870350421

`(A015456(n+1)-A171510(n+2))²`
-/

namespace A099374.P16556985953870350421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015456 (n + 1) - A171510 (n + 2)) ^ 2

end

end A099374.P16556985953870350421

namespace A099374

/-- `(A015456(n+1)-A171510(n+2))²` -/
def P16556985953870350421.Spec : Prop :=
  ∀ n, P16556985953870350421.a n = A099374 n

end A099374

/-! ## A099374.P4915499273529367958

`(A174768(n+1)/(2*A088320(n)))²`
-/

namespace A099374.P4915499273529367958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A174768 (n + 1) : ℚ) / (2 * A088320 n : ℚ)) ^ 2

end

end A099374.P4915499273529367958

namespace A099374

/-- `(A174768(n+1)/(2*A088320(n)))²` -/
def P4915499273529367958.Spec : Prop :=
  ∀ n, P4915499273529367958.a n = (A099374 n : ℚ)

end A099374

/-!
# A099375: Sequence matrix for odd numbers.

The programs for A099375, the canonical program `A099375.P13700148065993022910` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099375 has offset 0).

The definition of A099375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099375.P4688575382196161622

`C(2*(row(n)-col(n))+1, 2*(row(n)-col(n)))`
-/

namespace A099375.P4688575382196161622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1).toNat (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A099375.P4688575382196161622

namespace A099375

/-- `C(2*(row(n)-col(n))+1, 2*(row(n)-col(n)))` -/
def P4688575382196161622.Spec : Prop :=
  ∀ n, (P4688575382196161622.a n : ℤ) = A099375 n

end A099375

/-! ## A099375.P13700148065993022910

`2*A004736(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099375

/-- `2*A004736(n+1)-1` -/
def P13700148065993022910.Spec : Prop :=
  ∀ n, P13700148065993022910.a n = A099375 n

theorem P13700148065993022910.correct : P13700148065993022910.Spec := by
  intro n
  simp only [A099375]

end A099375

/-! ## A099375.P16802476808767087372

`1+2*(row(n)-col(n))`
-/

namespace A099375.P16802476808767087372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A099375.P16802476808767087372

namespace A099375

/-- `1+2*(row(n)-col(n))` -/
def P16802476808767087372.Spec : Prop :=
  ∀ n, P16802476808767087372.a n = A099375 n

end A099375

/-! ## A099375.P8631283064740937287

`∑[2*n]%(comp[∑[n]]+1)+1`
-/

namespace A099375.P8631283064740937287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1

end

end A099375.P8631283064740937287

namespace A099375

/-- `∑[2*n]%(comp[∑[n]]+1)+1` -/
def P8631283064740937287.Spec : Prop :=
  ∀ n, (P8631283064740937287.a n : ℤ) = A099375 n

end A099375

/-! ## A099375.P13359403909503358774

`2*(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A099375.P13359403909503358774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1

end

end A099375.P13359403909503358774

namespace A099375

/-- `2*(C(comp[∑[n]]-n, 2)-n)-1` -/
def P13359403909503358774.Spec : Prop :=
  ∀ n, P13359403909503358774.a n = A099375 n

end A099375

/-! ## A099375.P16485558282076152747

`1+row(n)-col(n)+row(n)-col(n)`
-/

namespace A099375.P16485558282076152747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A099375.P16485558282076152747

namespace A099375

/-- `1+row(n)-col(n)+row(n)-col(n)` -/
def P16485558282076152747.Spec : Prop :=
  ∀ n, P16485558282076152747.a n = A099375 n

end A099375

/-! ## A099375.P4550702182259038141

`2*abs(C(round(sqrt(2*(n+1)))+1, 2)-n)-1`
-/

namespace A099375.P4550702182259038141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1).toNat 2 : ℤ) - (n : ℤ)| - 1

end

end A099375.P4550702182259038141

namespace A099375

/-- `2*abs(C(round(sqrt(2*(n+1)))+1, 2)-n)-1` -/
def P4550702182259038141.Spec : Prop :=
  ∀ n, P4550702182259038141.a n = A099375 n

end A099375

/-! ## A099375.P13735291660978154222

`Δ[A394927(n)]`
-/

namespace A099375.P13735291660978154222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099375.P13735291660978154222

namespace A099375

/-- `Δ[A394927(n)]` -/
def P13735291660978154222.Spec : Prop :=
  ∀ n, P13735291660978154222.a n = A099375 n

end A099375

/-! ## A099375.P17037772038831019423

`sqrt(A237587(n+1))`
-/

namespace A099375.P17037772038831019423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A237587 (n + 1) : ℝ)

end

end A099375.P17037772038831019423

namespace A099375

/-- `sqrt(A237587(n+1))` -/
def P17037772038831019423.Spec : Prop :=
  ∀ n, P17037772038831019423.a n = (A099375 n : ℝ)

end A099375

/-! ## A099375.P16212476339441481713

`log2(A262616(n))+1`
-/

namespace A099375.P16212476339441481713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A262616 n : ℝ) + 1

end

end A099375.P16212476339441481713

namespace A099375

/-- `log2(A262616(n))+1` -/
def P16212476339441481713.Spec : Prop :=
  ∀ n, P16212476339441481713.a n = (A099375 n : ℝ)

end A099375

/-! ## A099375.P16997504485374962907

`A212012(n+1)-1`
-/

namespace A099375.P16997504485374962907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) - 1

end

end A099375.P16997504485374962907

namespace A099375

/-- `A212012(n+1)-1` -/
def P16997504485374962907.Spec : Prop :=
  ∀ n, P16997504485374962907.a n = A099375 n

end A099375

/-! ## A099375.P13607948072594093469

`2*A025581(n)+1`
-/

namespace A099375.P13607948072594093469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025581 n + 1

end

end A099375.P13607948072594093469

namespace A099375

/-- `2*A025581(n)+1` -/
def P13607948072594093469.Spec : Prop :=
  ∀ n, P13607948072594093469.a n = A099375 n

end A099375

/-! ## A099375.P17843296264256515107

`or(1, A185782(n+1))`
-/

namespace A099375.P17843296264256515107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185782 (n + 1))

end

end A099375.P17843296264256515107

namespace A099375

/-- `or(1, A185782(n+1))` -/
def P17843296264256515107.Spec : Prop :=
  ∀ n, P17843296264256515107.a n = A099375 n

end A099375

/-! ## A099375.P15287243247392439006

`log2(A130321(n)²)+1`
-/

namespace A099375.P15287243247392439006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n ^ 2 : ℝ) + 1

end

end A099375.P15287243247392439006

namespace A099375

/-- `log2(A130321(n)²)+1` -/
def P15287243247392439006.Spec : Prop :=
  ∀ n, P15287243247392439006.a n = (A099375 n : ℝ)

end A099375

/-! ## A099375.P12457260446282973519

`A005408(row(n)-col(n))`
-/

namespace A099375.P12457260446282973519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A099375.P12457260446282973519

namespace A099375

/-- `A005408(row(n)-col(n))` -/
def P12457260446282973519.Spec : Prop :=
  ∀ n, P12457260446282973519.a n = A099375 n

end A099375

/-! ## A099375.P226979670887771365

`val(A054582(n)², 2)+1`
-/

namespace A099375.P226979670887771365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054582 n ^ 2).toNat 2 + 1

end

end A099375.P226979670887771365

namespace A099375

/-- `val(A054582(n)², 2)+1` -/
def P226979670887771365.Spec : Prop :=
  ∀ n, (P226979670887771365.a n : ℤ) = A099375 n

end A099375

/-! ## A099375.P6228532882124848658

`1-∑[2*A167407(n)]`
-/

namespace A099375.P6228532882124848658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099375.P6228532882124848658

namespace A099375

/-- `1-∑[2*A167407(n)]` -/
def P6228532882124848658.Spec : Prop :=
  ∀ n, P6228532882124848658.a n = A099375 n

end A099375

/-! ## A099375.P11227579019270537594

`floor(log2(A130330(n)²+1))`
-/

namespace A099375.P11227579019270537594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130330 n ^ 2 + 1).toNat

end

end A099375.P11227579019270537594

namespace A099375

/-- `floor(log2(A130330(n)²+1))` -/
def P11227579019270537594.Spec : Prop :=
  ∀ n, (P11227579019270537594.a n : ℤ) = A099375 n

end A099375

/-! ## A099375.P8354332892438659204

`log2(A090988(n+1)²)-1`
-/

namespace A099375.P8354332892438659204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) ^ 2 : ℝ) - 1

end

end A099375.P8354332892438659204

namespace A099375

/-- `log2(A090988(n+1)²)-1` -/
def P8354332892438659204.Spec : Prop :=
  ∀ n, P8354332892438659204.a n = (A099375 n : ℝ)

end A099375

/-! ## A099375.P5486679838520504977

`1+A005843(row(n)-col(n))`
-/

namespace A099375.P5486679838520504977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A005843 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A099375.P5486679838520504977

namespace A099375

/-- `1+A005843(row(n)-col(n))` -/
def P5486679838520504977.Spec : Prop :=
  ∀ n, P5486679838520504977.a n = A099375 n

end A099375

/-!
# A099376: An inverse Chebyshev transform of x^3.

The programs for A099376, the canonical program `A099376.P5902379968883628035` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099376 has offset 0).

The definition of A099376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099376.P5902379968883628035

`A000108(n+2)-2*A000108(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099376

/-- `A000108(n+2)-2*A000108(n+1)` -/
def P5902379968883628035.Spec : Prop :=
  ∀ n, P5902379968883628035.a n = A099376 n

theorem P5902379968883628035.correct : P5902379968883628035.Spec := by
  intro n
  simp only [A099376]

end A099376

/-! ## A099376.P17541581713324370386

`2*n/((n+2)*(n+3))*C(2*n+2, n+1)`
-/

namespace A099376.P17541581713324370386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / ((n + 2) * (n + 3) : ℚ) * (Nat.choose (2 * n + 2) (n + 1) : ℚ)

end

end A099376.P17541581713324370386

namespace A099376

/-- `2*n/((n+2)*(n+3))*C(2*n+2, n+1)` -/
def P17541581713324370386.Spec : Prop :=
  ∀ n, P17541581713324370386.a n = (A099376 n : ℚ)

end A099376

/-! ## A099376.P1553914090521489480

`Δ[A279557(n)]`
-/

namespace A099376.P1553914090521489480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099376.P1553914090521489480

namespace A099376

/-- `Δ[A279557(n)]` -/
def P1553914090521489480.Spec : Prop :=
  ∀ n, P1553914090521489480.a n = A099376 n

end A099376

/-! ## A099376.P17497804162992782497

`abs(A115143(n+3))`
-/

namespace A099376.P17497804162992782497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115143 (n + 3)|

end

end A099376.P17497804162992782497

namespace A099376

/-- `abs(A115143(n+3))` -/
def P17497804162992782497.Spec : Prop :=
  ∀ n, P17497804162992782497.a n = A099376 n

end A099376

/-! ## A099376.P15942169787501011132

`∑[A071725(n)]-1`
-/

namespace A099376.P15942169787501011132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099376.P15942169787501011132

namespace A099376

/-- `∑[A071725(n)]-1` -/
def P15942169787501011132.Spec : Prop :=
  ∀ n, P15942169787501011132.a n = A099376 n

end A099376

/-! ## A099376.P14286762117110366361

`Δ[abs(A104496(n+1))]`
-/

namespace A099376.P14286762117110366361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099376.P14286762117110366361

namespace A099376

/-- `Δ[abs(A104496(n+1))]` -/
def P14286762117110366361.Spec : Prop :=
  ∀ n, P14286762117110366361.a n = A099376 n

end A099376

/-! ## A099376.P2157660730247472547

`n/3*A007054(n+1)`
-/

namespace A099376.P2157660730247472547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A007054 (n + 1) : ℚ)

end

end A099376.P2157660730247472547

namespace A099376

/-- `n/3*A007054(n+1)` -/
def P2157660730247472547.Spec : Prop :=
  ∀ n, P2157660730247472547.a n = (A099376 n : ℚ)

end A099376

/-! ## A099376.P3170904559439214993

`n/3*A091712(n+3)`
-/

namespace A099376.P3170904559439214993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A091712 (n + 3) : ℚ)

end

end A099376.P3170904559439214993

namespace A099376

/-- `n/3*A091712(n+3)` -/
def P3170904559439214993.Spec : Prop :=
  ∀ n, P3170904559439214993.a n = (A099376 n : ℚ)

end A099376

/-! ## A099376.P13503497162774364424

`n*A228403(n+1)/(n+3)`
-/

namespace A099376.P13503497162774364424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A228403 (n + 1) : ℚ) / (n + 3 : ℚ))

end

end A099376.P13503497162774364424

namespace A099376

/-- `n*A228403(n+1)/(n+3)` -/
def P13503497162774364424.Spec : Prop :=
  ∀ n, P13503497162774364424.a n = (A099376 n : ℚ)

end A099376

/-! ## A099376.P7913150498874093272

`A026012(n)-A000108(n)`
-/

namespace A099376.P7913150498874093272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - A000108 n

end

end A099376.P7913150498874093272

namespace A099376

/-- `A026012(n)-A000108(n)` -/
def P7913150498874093272.Spec : Prop :=
  ∀ n, P7913150498874093272.a n = A099376 n

theorem P7913150498874093272.correct : P7913150498874093272.Spec := by
  intro n
  simp only [A099376, Nat.add_sub_cancel, A099376.P7913150498874093272.a, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A026012, A026012.P8146518293460492297.a, A000245, A000245.P15461013057778681831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099376

/-! ## A099376.P17575554782844221630

`A071722(n)-A026012(n)`
-/

namespace A099376.P17575554782844221630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 n - A026012 n

end

end A099376.P17575554782844221630

namespace A099376

/-- `A071722(n)-A026012(n)` -/
def P17575554782844221630.Spec : Prop :=
  ∀ n, P17575554782844221630.a n = A099376 n

end A099376

/-! ## A099376.P2056622382499005592

`A071718(n)-A071721(n)`
-/

namespace A099376.P2056622382499005592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - A071721 n

end

end A099376.P2056622382499005592

namespace A099376

/-- `A071718(n)-A071721(n)` -/
def P2056622382499005592.Spec : Prop :=
  ∀ n, P2056622382499005592.a n = A099376 n

theorem P2056622382499005592.correct : P2056622382499005592.Spec := by
  intro n
  simp only [A099376, Nat.add_sub_cancel, A099376.P2056622382499005592.a, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A071718, A071718.P1631232272951733655.a, A071721, A071721.P8058538894146431473.f1, A071721.P8058538894146431473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099376

/-! ## A099376.P10201416501049738738

`A071728(n)-A071731(n)`
-/

namespace A099376.P10201416501049738738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n - A071731 n

end

end A099376.P10201416501049738738

namespace A099376

/-- `A071728(n)-A071731(n)` -/
def P10201416501049738738.Spec : Prop :=
  ∀ n, P10201416501049738738.a n = A099376 n

theorem P10201416501049738738.correct : P10201416501049738738.Spec := by
  intro n
  simp only [A099376, Nat.add_sub_cancel, A099376.P10201416501049738738.a, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A071728, A071728.P8013549024474898456.a, A071731, A071731.P2765701597909956439.f2, A071731.P2765701597909956439.f1, A071731.P2765701597909956439.a, A091712, A091712.P11823060841128041670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099376

/-! ## A099376.P14565653335382440468

`A071732(n)-A071735(n)`
-/

namespace A099376.P14565653335382440468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n - A071735 n

end

end A099376.P14565653335382440468

namespace A099376

/-- `A071732(n)-A071735(n)` -/
def P14565653335382440468.Spec : Prop :=
  ∀ n, P14565653335382440468.a n = A099376 n

end A099376

/-! ## A099376.P11853599577518259640

`A071736(n)-A071739(n)`
-/

namespace A099376.P11853599577518259640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - A071739 n

end

end A099376.P11853599577518259640

namespace A099376

/-- `A071736(n)-A071739(n)` -/
def P11853599577518259640.Spec : Prop :=
  ∀ n, P11853599577518259640.a n = A099376 n

theorem P11853599577518259640.correct : P11853599577518259640.Spec := by
  intro n
  simp only [A099376, Nat.add_sub_cancel, A099376.P11853599577518259640.a, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A071736, A071736.P17590571516365406048.f1, A071736.P17590571516365406048.a, A071739, A071739.P1815555829644906627.a, A071724, A071724.P13075293376280166576.f1, A071724.P13075293376280166576.a, A071725, A071725.P9517445065764979521.a, A141351, A141351.P15521239837132020654.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099376

/-! ## A099376.P15747672801317415675

`A071744(n)-A071747(n)`
-/

namespace A099376.P15747672801317415675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071744 n - A071747 n

end

end A099376.P15747672801317415675

namespace A099376

/-- `A071744(n)-A071747(n)` -/
def P15747672801317415675.Spec : Prop :=
  ∀ n, P15747672801317415675.a n = A099376 n

theorem P15747672801317415675.correct : P15747672801317415675.Spec := by
  intro n
  simp only [A099376, Nat.add_sub_cancel, A099376.P15747672801317415675.a, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A071744, A071744.P1175977613929385666.a, A071747, A071747.P16063353787672862217.a, A000245, A000245.P15461013057778681831.a, A071731, A071731.P2765701597909956439.f2, A071731.P2765701597909956439.f1, A071731.P2765701597909956439.a, A289207, A289207.P4353291363742306282.a, A091712, A091712.P11823060841128041670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099376

/-! ## A099376.P9540716212411590621

`A071748(n)-A071751(n)`
-/

namespace A099376.P9540716212411590621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 n - A071751 n

end

end A099376.P9540716212411590621

namespace A099376

/-- `A071748(n)-A071751(n)` -/
def P9540716212411590621.Spec : Prop :=
  ∀ n, P9540716212411590621.a n = A099376 n

theorem P9540716212411590621.correct : P9540716212411590621.Spec := by
  intro n
  simp only [A099376, Nat.add_sub_cancel, A099376.P9540716212411590621.a, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A071748, A071748.P5053261563516852531.a, A071751, A071751.P10296614711207118545.a, A071727, A071727.P16205519223476338135.a, A071728, A071728.P8013549024474898456.a, A000245, A000245.P15461013057778681831.a, A071731, A071731.P2765701597909956439.f2, A071731.P2765701597909956439.f1, A071731.P2765701597909956439.a, A091712, A091712.P11823060841128041670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099376

/-! ## A099376.P10192582027802537002

`A071752(n)-A071755(n)`
-/

namespace A099376.P10192582027802537002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 n - A071755 n

end

end A099376.P10192582027802537002

namespace A099376

/-- `A071752(n)-A071755(n)` -/
def P10192582027802537002.Spec : Prop :=
  ∀ n, P10192582027802537002.a n = A099376 n

theorem P10192582027802537002.correct : P10192582027802537002.Spec := by
  intro n
  simp only [A099376, Nat.add_sub_cancel, A099376.P10192582027802537002.a, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, A071752, A071752.P14853445562846689292.a, A071755, A071755.P6343348831511308488.a, A071731, A071731.P2765701597909956439.f2, A071731.P2765701597909956439.f1, A071731.P2765701597909956439.a, A071751, A071751.P10296614711207118545.a, A071748, A071748.P5053261563516852531.a, A091712, A091712.P11823060841128041670.a, A071727, A071727.P16205519223476338135.a, A071728, A071728.P8013549024474898456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099376

/-! ## A099376.P3328732483651866688

`∑[A026012(n)-A071724(n)]`
-/

namespace A099376.P3328732483651866688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099376.P3328732483651866688

namespace A099376

/-- `∑[A026012(n)-A071724(n)]` -/
def P3328732483651866688.Spec : Prop :=
  ∀ n, P3328732483651866688.a n = A099376 n

end A099376

/-! ## A099376.P18338736912153876715

`Δ[A143955(n)+A000108(n)]`
-/

namespace A099376.P18338736912153876715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099376.P18338736912153876715

namespace A099376

/-- `Δ[A143955(n)+A000108(n)]` -/
def P18338736912153876715.Spec : Prop :=
  ∀ n, P18338736912153876715.a n = A099376 n

end A099376

/-!
# A099377: Numerators of the harmonic means of the divisors of the positive integers.

The programs for A099377, the canonical program `A099377.P13407792628475185126` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099377 has offset 1).

The definition of A099377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099377.P6047912278151945242

`A348510(n+1)+1+n`
-/

namespace A099377.P6047912278151945242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (n + 1) + 1 + (n : ℤ)

end

end A099377.P6047912278151945242

namespace A099377

/-- `A348510(n+1)+1+n` -/
def P6047912278151945242.Spec : Prop :=
  ∀ n, P6047912278151945242.a n = A099377 (n + 1)

end A099377

/-! ## A099377.P12946729879323090185

`A057021(n+1)*A348968(n+1)`
-/

namespace A099377.P12946729879323090185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1) * A348968 (n + 1)

end

end A099377.P12946729879323090185

namespace A099377

/-- `A057021(n+1)*A348968(n+1)` -/
def P12946729879323090185.Spec : Prop :=
  ∀ n, P12946729879323090185.a n = A099377 (n + 1)

end A099377

/-! ## A099377.P13407792628475185126

`A038040(n+1)/A324121(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099377

/-- `A038040(n+1)/A324121(n+1)` -/
def P13407792628475185126.Spec : Prop :=
  ∀ n, P13407792628475185126.a n = (A099377 (n + 1) : ℚ)

end A099377

/-! ## A099377.P9513353559119293127

`(n+1)*A000005(n+1)/A324121(n+1)`
-/

namespace A099377.P9513353559119293127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000005 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ))

end

end A099377.P9513353559119293127

namespace A099377

/-- `(n+1)*A000005(n+1)/A324121(n+1)` -/
def P9513353559119293127.Spec : Prop :=
  ∀ n, P9513353559119293127.a n = (A099377 (n + 1) : ℚ)

end A099377

/-! ## A099377.P16674913040882667221

`(A094471(n+1)+A000203(n+1))/A324121(n+1)`
-/

namespace A099377.P16674913040882667221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094471 (n + 1) + A000203 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099377.P16674913040882667221

namespace A099377

/-- `(A094471(n+1)+A000203(n+1))/A324121(n+1)` -/
def P16674913040882667221.Spec : Prop :=
  ∀ n, P16674913040882667221.a n = (A099377 (n + 1) : ℚ)

end A099377

/-! ## A099377.P5901600340758088622

`(A094472(n+1)+A065387(n+1))/A324121(n+1)`
-/

namespace A099377.P5901600340758088622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094472 (n + 1) + A065387 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099377.P5901600340758088622

namespace A099377

/-- `(A094472(n+1)+A065387(n+1))/A324121(n+1)` -/
def P5901600340758088622.Spec : Prop :=
  ∀ n, P5901600340758088622.a n = (A099377 (n + 1) : ℚ)

end A099377

/-! ## A099377.P1170130940250028626

`A038040(n+1)/(A000203(n+1)-A324122(n+1))`
-/

namespace A099377.P1170130940250028626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A000203 (n + 1) - A324122 (n + 1) : ℚ)

end

end A099377.P1170130940250028626

namespace A099377

/-- `A038040(n+1)/(A000203(n+1)-A324122(n+1))` -/
def P1170130940250028626.Spec : Prop :=
  ∀ n, P1170130940250028626.a n = (A099377 (n + 1) : ℚ)

end A099377

/-!
# A099378: Denominators of the harmonic means of the divisors of the positive integers.

The programs for A099378, the canonical program `A099378.P9213895567346836025` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099378 has offset 1).

The definition of A099378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099378.P668228098180818624

`∑{d}[n+1, #]/A324121(n+1)`
-/

namespace A099378.P668228098180818624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P668228098180818624

namespace A099378

/-- `∑{d}[n+1, #]/A324121(n+1)` -/
def P668228098180818624.Spec : Prop :=
  ∀ n, P668228098180818624.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P13755524021768849831

`Δ[A160664(n)]/A324121(n+1)`
-/

namespace A099378.P13755524021768849831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P13755524021768849831

namespace A099378

/-- `Δ[A160664(n)]/A324121(n+1)` -/
def P13755524021768849831.Spec : Prop :=
  ∀ n, P13755524021768849831.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P17484663726096883530

`A000203(n+1)/A324121(n+1)`
-/

namespace A099378.P17484663726096883530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P17484663726096883530

namespace A099378

/-- `A000203(n+1)/A324121(n+1)` -/
def P17484663726096883530.Spec : Prop :=
  ∀ n, P17484663726096883530.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P15383750022625104098

`A057020(n+1)/A348969(n+1)`
-/

namespace A099378.P15383750022625104098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057020 (n + 1) : ℚ) / (A348969 (n + 1) : ℚ)

end

end A099378.P15383750022625104098

namespace A099378

/-- `A057020(n+1)/A348969(n+1)` -/
def P15383750022625104098.Spec : Prop :=
  ∀ n, P15383750022625104098.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P12865506137091050831

`A324122(n+1)/A324121(n+1)+1`
-/

namespace A099378.P12865506137091050831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324122 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ) + 1

end

end A099378.P12865506137091050831

namespace A099378

/-- `A324122(n+1)/A324121(n+1)+1` -/
def P12865506137091050831.Spec : Prop :=
  ∀ n, P12865506137091050831.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P15273044080868691304

`A074400(n+1)/(2*A324121(n+1))`
-/

namespace A099378.P15273044080868691304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A324121 (n + 1) : ℚ)

end

end A099378.P15273044080868691304

namespace A099378

/-- `A074400(n+1)/(2*A324121(n+1))` -/
def P15273044080868691304.Spec : Prop :=
  ∀ n, P15273044080868691304.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P8359674161696811256

`(A001065(n+1)+1+n)/A324121(n+1)`
-/

namespace A099378.P8359674161696811256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P8359674161696811256

namespace A099378

/-- `(A001065(n+1)+1+n)/A324121(n+1)` -/
def P8359674161696811256.Spec : Prop :=
  ∀ n, P8359674161696811256.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P4601238754639543004

`(2*(n+1)-A033879(n+1))/A324121(n+1)`
-/

namespace A099378.P4601238754639543004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A033879 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P4601238754639543004

namespace A099378

/-- `(2*(n+1)-A033879(n+1))/A324121(n+1)` -/
def P4601238754639543004.Spec : Prop :=
  ∀ n, P4601238754639543004.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P11063835552597508584

`(A152770(n+1)+∏{e}[n+1, #+1]+n)/A324121(n+1)`
-/

namespace A099378.P11063835552597508584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152770 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P11063835552597508584

namespace A099378

/-- `(A152770(n+1)+∏{e}[n+1, #+1]+n)/A324121(n+1)` -/
def P11063835552597508584.Spec : Prop :=
  ∀ n, P11063835552597508584.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P9213895567346836025

`A057020(n+1)/gcd(A057020(n+1), A131738(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099378

/-- `A057020(n+1)/gcd(A057020(n+1), A131738(n))` -/
def P9213895567346836025.Spec : Prop :=
  ∀ n, P9213895567346836025.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P14969259280403992271

`(A051612(n+1)+A000010(n+1))/A324121(n+1)`
-/

namespace A099378.P14969259280403992271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) + A000010 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P14969259280403992271

namespace A099378

/-- `(A051612(n+1)+A000010(n+1))/A324121(n+1)` -/
def P14969259280403992271.Spec : Prop :=
  ∀ n, P14969259280403992271.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P17661579209741083347

`(A048146(n+1)+A034448(n+1))/A324121(n+1)`
-/

namespace A099378.P17661579209741083347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P17661579209741083347

namespace A099378

/-- `(A048146(n+1)+A034448(n+1))/A324121(n+1)` -/
def P17661579209741083347.Spec : Prop :=
  ∀ n, P17661579209741083347.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P13879051557014029903

`(A146076(n+1)+A000593(n+1))/A324121(n+1)`
-/

namespace A099378.P13879051557014029903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P13879051557014029903

namespace A099378

/-- `(A146076(n+1)+A000593(n+1))/A324121(n+1)` -/
def P13879051557014029903.Spec : Prop :=
  ∀ n, P13879051557014029903.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P6016992060267464051

`(A325966(n+1)+A325965(n+1))/A324121(n+1)`
-/

namespace A099378.P6016992060267464051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325966 (n + 1) + A325965 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P6016992060267464051

namespace A099378

/-- `(A325966(n+1)+A325965(n+1))/A324121(n+1)` -/
def P6016992060267464051.Spec : Prop :=
  ∀ n, P6016992060267464051.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P10233205316422105659

`(A325972(n+1)+A325971(n+1))/A324121(n+1)`
-/

namespace A099378.P10233205316422105659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325972 (n + 1) + A325971 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P10233205316422105659

namespace A099378

/-- `(A325972(n+1)+A325971(n+1))/A324121(n+1)` -/
def P10233205316422105659.Spec : Prop :=
  ∀ n, P10233205316422105659.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P3985771877969238433

`(A325974(n+1)+A325973(n+1))/A324121(n+1)`
-/

namespace A099378.P3985771877969238433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325974 (n + 1) + A325973 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P3985771877969238433

namespace A099378

/-- `(A325974(n+1)+A325973(n+1))/A324121(n+1)` -/
def P3985771877969238433.Spec : Prop :=
  ∀ n, P3985771877969238433.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P483366204634654946

`A000203(n+1)/(A000203(n+1)-A324122(n+1))`
-/

namespace A099378.P483366204634654946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000203 (n + 1) - A324122 (n + 1) : ℚ)

end

end A099378.P483366204634654946

namespace A099378

/-- `A000203(n+1)/(A000203(n+1)-A324122(n+1))` -/
def P483366204634654946.Spec : Prop :=
  ∀ n, P483366204634654946.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P12667978227505365749

`(A038040(n+1)-A094471(n+1))/A324121(n+1)`
-/

namespace A099378.P12667978227505365749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) - A094471 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A099378.P12667978227505365749

namespace A099378

/-- `(A038040(n+1)-A094471(n+1))/A324121(n+1)` -/
def P12667978227505365749.Spec : Prop :=
  ∀ n, P12667978227505365749.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P6626022819645419831

`A000203(n+1)/gcd(A000203(n+1), A038040(n+1))`
-/

namespace A099378.P6626022819645419831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A038040 (n + 1)) : ℚ)

end

end A099378.P6626022819645419831

namespace A099378

/-- `A000203(n+1)/gcd(A000203(n+1), A038040(n+1))` -/
def P6626022819645419831.Spec : Prop :=
  ∀ n, P6626022819645419831.a n = (A099378 (n + 1) : ℚ)

end A099378

/-! ## A099378.P6677945831439610889

`lcm(A000005(n+1), A017665(n+1))/A000005(n+1)`
-/

namespace A099378.P6677945831439610889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000005 (n + 1)) (A017665 (n + 1)) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A099378.P6677945831439610889

namespace A099378

/-- `lcm(A000005(n+1), A017665(n+1))/A000005(n+1)` -/
def P6677945831439610889.Spec : Prop :=
  ∀ n, P6677945831439610889.a n = (A099378 (n + 1) : ℚ)

end A099378

/-!
# A099379: The real part of n', the arithmetic derivative for Gaussian integers.

The programs for A099379, there is no canonical definition to state claims against.
-/

/-! ## A099379.P8425341016278494000

`A218854(∑[n])`
-/

namespace A099379.P8425341016278494000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218854 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099379.P8425341016278494000

/-! ## A099379.P7168214868183104223

`A218855(∑[n]+n)`
-/

namespace A099379.P7168214868183104223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218855 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A099379.P7168214868183104223

/-! ## A099379.P14051701714727222111

`xor(n, xor(n, A218854(C(n+1, 2))))`
-/

namespace A099379.P14051701714727222111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A218854 (Nat.choose (n + 1) 2)))

end

end A099379.P14051701714727222111

/-! ## A099379.P6919118219408380223

`abs(A218855(A000096(n)))`
-/

namespace A099379.P6919118219408380223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218855 (A000096 n).toNat|

end

end A099379.P6919118219408380223

/-! ## A099379.P4549791949100245283

`abs(A218855(record[A061579(n)]))`
-/

namespace A099379.P4549791949100245283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218855 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A099379.P4549791949100245283

/-! ## A099379.P17321842316628843157

`abs(A218855(A347553(n+3)))`
-/

namespace A099379.P17321842316628843157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218855 (A347553 (n + 3)).toNat|

end

end A099379.P17321842316628843157

/-! ## A099379.P5663757524155266530

`or(char[3], A218854(A000217(n)))`
-/

namespace A099379.P5663757524155266530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A218854 (A000217 n).toNat)

end

end A099379.P5663757524155266530

/-! ## A099379.P9570075014370579835

`A000005(gcd(n, n+1))*A218854(C(n+1, 2))`
-/

namespace A099379.P9570075014370579835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A218854 (Nat.choose (n + 1) 2)

end

end A099379.P9570075014370579835

/-! ## A099379.P15806989986983022435

`A000032(((-1)^n)²)*A218854(C(n+1, 2))`
-/

namespace A099379.P15806989986983022435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * A218854 (Nat.choose (n + 1) 2)

end

end A099379.P15806989986983022435

/-! ## A099379.P8315793167707461350

`A057427(n)*A218854(A000217(n))`
-/

namespace A099379.P8315793167707461350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A218854 (A000217 n).toNat

end

end A099379.P8315793167707461350

/-! ## A099379.P6236670100936138385

`A178334(n)*A218855(A000096(n))`
-/

namespace A099379.P6236670100936138385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A218855 (A000096 n).toNat

end

end A099379.P6236670100936138385

/-! ## A099379.P5906122199023339904

`A218855(A000096(n))%A000124(n)`
-/

namespace A099379.P5906122199023339904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218855 (A000096 n).toNat) (A000124 n)

end

end A099379.P5906122199023339904

/-! ## A099379.P17517459668948236046

`A218854(A000217(n))%A000124(n)`
-/

namespace A099379.P17517459668948236046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218854 (A000217 n).toNat) (A000124 n)

end

end A099379.P17517459668948236046

/-! ## A099379.P14221634217953528680

`A218855(A000096(n))+A000007(n+1)`
-/

namespace A099379.P14221634217953528680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218855 (A000096 n).toNat + A000007 (n + 1)

end

end A099379.P14221634217953528680

/-! ## A099379.P15438215672216153412

`A218854(A000217(n))+A000038(n+1)`
-/

namespace A099379.P15438215672216153412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218854 (A000217 n).toNat + A000038 (n + 1)

end

end A099379.P15438215672216153412

/-! ## A099379.P4909709545573602379

`A001222(A020639(2*(n+1))+1)*A218854(C(n+1, 2))`
-/

namespace A099379.P4909709545573602379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020639 (2 * (n + 1)) + 1).toNat * A218854 (Nat.choose (n + 1) 2)

end

end A099379.P4909709545573602379

/-!
# A099380: The imaginary part of -n', the arithmetic derivative for Gaussian integers.

The programs for A099380, there is no canonical definition to state claims against.
-/

/-! ## A099380.P4994441943284314505

`abs(A218855(∑[n]))`
-/

namespace A099380.P4994441943284314505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218855 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A099380.P4994441943284314505

/-! ## A099380.P13612807849298459584

`A218854(∑[n]+n)`
-/

namespace A099380.P13612807849298459584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218854 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A099380.P13612807849298459584

/-! ## A099380.P10620535152161243699

`-A218855(A000217(n))`
-/

namespace A099380.P10620535152161243699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A218855 (A000217 n).toNat

end

end A099380.P10620535152161243699

/-! ## A099380.P8147858898866214257

`lcm(A178334(n), A218855(∑[n]))`
-/

namespace A099380.P8147858898866214257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178334 n) (A218855 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A099380.P8147858898866214257

/-! ## A099380.P12663279817531572231

`∑{d}[A218855(∑[n]), A000010(#)]`
-/

namespace A099380.P12663279817531572231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218855 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A099380.P12663279817531572231

/-! ## A099380.P16470916001340245570

`-(A218855(∑[n])%A017041(n))`
-/

namespace A099380.P16470916001340245570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A218855 (∑ j ∈ Finset.range (n + 1), f1 j)) (A017041 n)

end

end A099380.P16470916001340245570

/-! ## A099380.P6640840606767995863

`A000007(n+1)-A218855(∑[n])`
-/

namespace A099380.P6640840606767995863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A218855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099380.P6640840606767995863

/-! ## A099380.P15888282917388876192

`(A000007(n)-1)*A218855(∑[n])`
-/

namespace A099380.P15888282917388876192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A218855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099380.P15888282917388876192

/-! ## A099380.P5072790339447991983

`-(A007318(C(2, n))*A218855(∑[n]))`
-/

namespace A099380.P5072790339447991983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A007318 (Nat.choose 2 n) * A218855 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A099380.P5072790339447991983

/-! ## A099380.P17371013458918775876

`A008683(4*(n+1))-A218855(∑[n])`
-/

namespace A099380.P17371013458918775876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A218855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099380.P17371013458918775876

/-! ## A099380.P13316972872009887059

`and(2, A005117(n+1)²)-A218855(∑[n])`
-/

namespace A099380.P13316972872009887059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A005117 (n + 1) ^ 2) - A218855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099380.P13316972872009887059

/-! ## A099380.P6214572844712175317

`A000045(C(3, (n+5)²))-A218855(∑[n])`
-/

namespace A099380.P6214572844712175317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 3 ((n + 5) ^ 2)) - A218855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099380.P6214572844712175317

/-! ## A099380.P8252564051745007963

`1-(A218855(∑[n])+A000041(C(2, n+2)))`
-/

namespace A099380.P8252564051745007963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A218855 (∑ j ∈ Finset.range (n + 1), f1 j) + A000041 (Nat.choose 2 (n + 2)))

end

end A099380.P8252564051745007963

/-! ## A099380.P5605515977503004127

`val(n+1, A316670(n+2))-A218855(∑[n])`
-/

namespace A099380.P5605515977503004127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) (A316670 (n + 2)).toNat : ℤ) - A218855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099380.P5605515977503004127

/-! ## A099380.P16911509787440743475

`A218854(A000096(n))%A023896(n+1)`
-/

namespace A099380.P16911509787440743475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218854 (A000096 n).toNat) (A023896 (n + 1))

end

end A099380.P16911509787440743475

/-! ## A099380.P1807935330441613694

`A218855(A050377(n+1))-A218855(A000217(n))`
-/

namespace A099380.P1807935330441613694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218855 (A050377 (n + 1)).toNat - A218855 (A000217 n).toNat

end

end A099380.P1807935330441613694

/-! ## A099380.P16125080310205806164

`A008683(A054723(n+1))*A218855(A000217(n))`
-/

namespace A099380.P16125080310205806164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054723 (n + 1)).toNat * A218855 (A000217 n).toNat

end

end A099380.P16125080310205806164

/-!
# A099381: Numbers n such that |Fibonacci(n) - prime(n)| is prime.

The programs for A099381, there is no canonical definition to state claims against.
-/

/-! ## A099381.P16422386214774290034

`A209933(A138100(n+1)+A065033(n))`
-/

namespace A099381.P16422386214774290034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (A138100 (n + 1) + A065033 n).toNat

end

end A099381.P16422386214774290034

/-! ## A099381.P12708209054901734484

`eq[A007318(A254052(n+1)), A211508(n)]`
-/

namespace A099381.P12708209054901734484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A254052 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099381.P12708209054901734484

/-! ## A099381.P9484501270055717918

`A034838(lt[A036884(n+1), A007705(n)])`
-/

namespace A099381.P9484501270055717918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A099381.P9484501270055717918

/-! ## A099381.P14846209844476905418

`A034838(lt[A051335(n+1), A007705(n)])`
-/

namespace A099381.P14846209844476905418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A099381.P14846209844476905418

/-! ## A099381.P1045342946268415575

`A209933(lt[A051335(n+1), A007705(n)])`
-/

namespace A099381.P1045342946268415575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A099381.P1045342946268415575

/-!
# A099382: Primes of the form 3p - q - 3, where p and q are consecutive primes.

The programs for A099382, there is no canonical definition to state claims against.
-/

/-! ## A099382.P7230262729538535503

`record[A099389(n+1)]-A285007(A035607(n))²`
-/

namespace A099382.P7230262729538535503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A285007 (A035607 n).toNat ^ 2

end

end A099382.P7230262729538535503

/-! ## A099382.P2970374747620982493

`p?[record[A100021(A036445(n+2))]]`
-/

namespace A099382.P2970374747620982493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (A036445 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099382.P2970374747620982493

/-! ## A099382.P12393183026892138787

`record[A099389(n+1)]%A309406(n+5)`
-/

namespace A099382.P12393183026892138787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A309406 (n + 5))

end

end A099382.P12393183026892138787

/-! ## A099382.P6025023324367240640

`A006530(record[A099389(n+1)²])`
-/

namespace A099382.P6025023324367240640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099389 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099382.P6025023324367240640

/-! ## A099382.P16000150004086447037

`A007947(record[A099389(n+1)²])`
-/

namespace A099382.P16000150004086447037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099389 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099382.P16000150004086447037

/-!
# A099383: Number of partitions of n into minimal numbers.

The programs for A099383, there is no canonical definition to state claims against.
-/

/-! ## A099383.P7247103062262409844

`A099385(A004526(n)*A178489(n))`
-/

namespace A099383.P7247103062262409844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 (A004526 n * A178489 n).toNat

end

end A099383.P7247103062262409844

/-! ## A099383.P18252908095295308628

`A099385(A123108(n)*A178489(n))`
-/

namespace A099383.P18252908095295308628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 (A123108 n * A178489 n).toNat

end

end A099383.P18252908095295308628

/-! ## A099383.P7589371101090825657

`A099385(floor(n/2)%A099403(n+1))`
-/

namespace A099383.P7589371101090825657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 (Int.tmod ⌊(n : ℚ) / 2⌋ (A099403 (n + 1))).toNat

end

end A099383.P7589371101090825657

/-! ## A099383.P16316628606135632252

`A099385(A004526(n))*A258409(A058989(n+2)-1)`
-/

namespace A099383.P16316628606135632252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 (A004526 n).toNat * A258409 (A058989 (n + 2) - 1).toNat

end

end A099383.P16316628606135632252

/-! ## A099383.P11085420339877384904

`A099385(lcm(A004526(n), A178489(n+3)))`
-/

namespace A099383.P11085420339877384904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 (Int.lcm (A004526 n) (A178489 (n + 3)))

end

end A099383.P11085420339877384904

/-! ## A099383.P8417380665356566611

`A099385(A123108(n)%A090552(n+1))`
-/

namespace A099383.P8417380665356566611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 (Int.tmod (A123108 n) (A090552 (n + 1))).toNat

end

end A099383.P8417380665356566611

/-! ## A099383.P3822881617330977155

`A099385(C(A004526(n), A178489(n+3)))`
-/

namespace A099383.P3822881617330977155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 (Nat.choose (A004526 n).toNat (A178489 (n + 3)).toNat)

end

end A099383.P3822881617330977155

/-! ## A099383.P1705825447010221592

`A099385(A004526(n))%A090552(n+3)`
-/

namespace A099383.P1705825447010221592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099385 (A004526 n).toNat) (A090552 (n + 3))

end

end A099383.P1705825447010221592

/-!
# A099384: Number of partitions of n into distinct minimal numbers.

The programs for A099384, there is no canonical definition to state claims against.
-/

/-! ## A099384.P4404621638169034269

`A099386(floor(n/2))`
-/

namespace A099384.P4404621638169034269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 ⌊(n : ℚ) / 2⌋.toNat

end

end A099384.P4404621638169034269

/-! ## A099384.P6745802936229837310

`A099386(ceil(abs((1-n)/2)))%20`
-/

namespace A099384.P6745802936229837310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099386 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat) 20

end

end A099384.P6745802936229837310

/-! ## A099384.P7441678783759633477

`abs(1-A099386(ceil(abs((n-1)/2))))+1`
-/

namespace A099384.P7441678783759633477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A099386 ⌈|((n : ℤ) - 1 : ℚ) / 2|⌉.toNat)| + 1

end

end A099384.P7441678783759633477

/-! ## A099384.P10333524037663508091

`and(15, A099386(A004526(n)))`
-/

namespace A099384.P10333524037663508091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A099386 (A004526 n).toNat)

end

end A099384.P10333524037663508091

/-! ## A099384.P12803773336056688977

`and(15, A099386(A123108(n)))`
-/

namespace A099384.P12803773336056688977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A099386 (A123108 n).toNat)

end

end A099384.P12803773336056688977

/-! ## A099384.P5615993751176324514

`A007318(C(2, n))*A099386(A004526(n))`
-/

namespace A099384.P5615993751176324514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A099386 (A004526 n).toNat

end

end A099384.P5615993751176324514

/-! ## A099384.P13473933509489376020

`A099386(A123108(n))^A014963(∑[n+3])`
-/

namespace A099384.P13473933509489376020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099386 (A123108 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A099384.P13473933509489376020

/-! ## A099384.P621779574006898502

`A099386(A004526(n))+A008683(4*(n+1))`
-/

namespace A099384.P621779574006898502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 (A004526 n).toNat + A008683 (4 * (n + 1))

end

end A099384.P621779574006898502

/-! ## A099384.P4787179728271040214

`A099386(A004526(n))+val(A000040(n+1), 9)`
-/

namespace A099384.P4787179728271040214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 (A004526 n).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 9 : ℤ)

end

end A099384.P4787179728271040214

/-!
# A099385: Number of partitions of 2*n into minimal numbers.

The programs for A099385, there is no canonical definition to state claims against.
-/

/-! ## A099385.P17084726960471322888

`A099383(2*n)%p?[A007664(n)]`
-/

namespace A099385.P17084726960471322888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099383 (2 * n)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A099385.P17084726960471322888

/-! ## A099385.P12187447070050360082

`A099383(2*n)*A210501(A275043(n))`
-/

namespace A099385.P12187447070050360082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099383 (2 * n) * A210501 (A275043 n).toNat

end

end A099385.P12187447070050360082

/-! ## A099385.P8187319483265389810

`A099383(2*n+1)+A007814(A080335(3*(n+1)))`
-/

namespace A099385.P8187319483265389810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099383 (2 * n + 1) + A007814 (A080335 (3 * (n + 1))).toNat

end

end A099385.P8187319483265389810

/-! ## A099385.P17055655033691785942

`A099383(2*n+1)%A001122(A212214(n))`
-/

namespace A099385.P17055655033691785942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099383 (2 * n + 1)) (A001122 (A212214 n).toNat)

end

end A099385.P17055655033691785942

/-!
# A099386: Number of partitions of 2*n into distinct minimal numbers.

The programs for A099386, there is no canonical definition to state claims against.
-/

/-! ## A099386.P16102058860340406665

`A099384(2*n)`
-/

namespace A099386.P16102058860340406665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (2 * n)

end

end A099386.P16102058860340406665

/-! ## A099386.P6148249515323422050

`A099384(gcd(n, C(2, n))+n)^(n-abs(1-n))`
-/

namespace A099386.P6148249515323422050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099384 (Nat.gcd n (Nat.choose 2 n) + n) : ℚ) ^ ((n : ℤ) - |1 - (n : ℤ)| : ℤ)

end

end A099386.P6148249515323422050

/-! ## A099386.P6654761443338944186

`A099384(A004277(n))%13`
-/

namespace A099386.P6654761443338944186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099384 (A004277 n).toNat) 13

end

end A099386.P6654761443338944186

/-! ## A099386.P12271887314010778864

`A099384(A005843(n))%13`
-/

namespace A099386.P12271887314010778864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099384 (A005843 n).toNat) 13

end

end A099386.P12271887314010778864

/-! ## A099386.P8063015364259123427

`A099384(A059009(n))%13`
-/

namespace A099386.P8063015364259123427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099384 (A059009 n).toNat) 13

end

end A099386.P8063015364259123427

/-!
# A099387: Number of partitions of the n-th minimal number into minimal numbers.

The programs for A099387, there is no canonical definition to state claims against.
-/

/-! ## A099387.P9358212791083756287

`A099385(floor(A007416(n+1)/2))`
-/

namespace A099387.P9358212791083756287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099385 ⌊(A007416 (n + 1) : ℚ) / 2⌋.toNat

end

end A099387.P9358212791083756287

/-! ## A099387.P180595419450510095

`A099383(A007416(n+1)%∑[A095921(n+1)])`
-/

namespace A099387.P180595419450510095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099383 (Int.tmod (A007416 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A099387.P180595419450510095

/-!
# A099389: Subsequence of primes in sequence b(n) = 3*prime(n) - prime(n+1) - 3 (A100021).

The programs for A099389, the canonical program `A099389.P3235440162299395356` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099389 has offset 1).

The definition of A099389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099389.P3316278344045627526

`p?[A100021(n+1)]`
-/

namespace A099389.P3316278344045627526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P3316278344045627526

namespace A099389

/-- `p?[A100021(n+1)]` -/
def P3316278344045627526.Spec : Prop :=
  ∀ n, P3316278344045627526.a n = A099389 (n + 1)

theorem P3316278344045627526.correct : P3316278344045627526.Spec := by
  intro n
  simp only [A099389, Nat.add_sub_cancel, A099389.P3316278344045627526.f1, A099389.P3316278344045627526.a, A099389.P3235440162299395356.f1, A099389.P3235440162299395356.a, A098764, A098764.P1450263935949736531.a, A100021, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099389

/-! ## A099389.P3235440162299395356

`p?[A098764(n+1)-3]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099389

/-- `p?[A098764(n+1)-3]` -/
def P3235440162299395356.Spec : Prop :=
  ∀ n, P3235440162299395356.a n = A099389 (n + 1)

theorem P3235440162299395356.correct : P3235440162299395356.Spec := by
  intro n
  simp only [A099389, Nat.add_sub_cancel]

end A099389

/-! ## A099389.P3591391958250119628

`A100021(A099474(n+1))`
-/

namespace A099389.P3591391958250119628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (A099474 (n + 1)).toNat

end

end A099389.P3591391958250119628

namespace A099389

/-- `A100021(A099474(n+1))` -/
def P3591391958250119628.Spec : Prop :=
  ∀ n, P3591391958250119628.a n = A099389 (n + 1)

end A099389

/-! ## A099389.P7305267560724428396

`filter[A100021(n+2), A010051(#)]`
-/

namespace A099389.P7305267560724428396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A099389.P7305267560724428396

namespace A099389

/-- `filter[A100021(n+2), A010051(#)]` -/
def P7305267560724428396.Spec : Prop :=
  ∀ n, P7305267560724428396.a n = A099389 (n + 1)

end A099389

/-! ## A099389.P4682465687968631361

`filter[A100021(n+2), A323153(#)]`
-/

namespace A099389.P4682465687968631361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A099389.P4682465687968631361

namespace A099389

/-- `filter[A100021(n+2), A323153(#)]` -/
def P4682465687968631361.Spec : Prop :=
  ∀ n, P4682465687968631361.a n = A099389 (n + 1)

end A099389

/-! ## A099389.P14681545393582608670

`filter[A100021(n+2), A353670(#)]`
-/

namespace A099389.P14681545393582608670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A099389.P14681545393582608670

namespace A099389

/-- `filter[A100021(n+2), A353670(#)]` -/
def P14681545393582608670.Spec : Prop :=
  ∀ n, P14681545393582608670.a n = A099389 (n + 1)

end A099389

/-! ## A099389.P16786347845452309084

`p?[A131426(n+1)-A001223(n+1)]`
-/

namespace A099389.P16786347845452309084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P16786347845452309084

namespace A099389

/-- `p?[A131426(n+1)-A001223(n+1)]` -/
def P16786347845452309084.Spec : Prop :=
  ∀ n, P16786347845452309084.a n = A099389 (n + 1)

theorem P16786347845452309084.correct : P16786347845452309084.Spec := by
  intro n
  simp only [A099389, Nat.add_sub_cancel, A099389.P16786347845452309084.f1, A099389.P16786347845452309084.a, A099389.P3235440162299395356.f1, A099389.P3235440162299395356.a, A001223, A001223.P5034056745985311719.a, A098764, A098764.P1450263935949736531.a, A131426, A131426.P1992533446428371945.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099389

/-! ## A099389.P18367183283964090626

`p?[A001748(n+1)-(A052147(n+2)+1)]`
-/

namespace A099389.P18367183283964090626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - (A052147 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P18367183283964090626

namespace A099389

/-- `p?[A001748(n+1)-(A052147(n+2)+1)]` -/
def P18367183283964090626.Spec : Prop :=
  ∀ n, P18367183283964090626.a n = A099389 (n + 1)

theorem P18367183283964090626.correct : P18367183283964090626.Spec := by
  intro n
  simp only [A099389, Nat.add_sub_cancel, A099389.P18367183283964090626.f1, A099389.P18367183283964090626.a, A099389.P3235440162299395356.f1, A099389.P3235440162299395356.a, A001748, A001748.P16019639290970068825.a, A052147, A052147.P15217781913070555828.a, A098764, A098764.P1450263935949736531.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099389

/-! ## A099389.P6602425847115053344

`p?[A001748(n+1)-(A000040(n+2)+3)]`
-/

namespace A099389.P6602425847115053344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - (A000040 (n + 2) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P6602425847115053344

namespace A099389

/-- `p?[A001748(n+1)-(A000040(n+2)+3)]` -/
def P6602425847115053344.Spec : Prop :=
  ∀ n, P6602425847115053344.a n = A099389 (n + 1)

theorem P6602425847115053344.correct : P6602425847115053344.Spec := by
  intro n
  simp only [A099389, Nat.add_sub_cancel, A099389.P6602425847115053344.f1, A099389.P6602425847115053344.a, A099389.P3235440162299395356.f1, A099389.P3235440162299395356.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A098764, A098764.P1450263935949736531.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099389

/-! ## A099389.P7158316236764737811

`p?[A076274(n+2)-A001223(n+1)-2]`
-/

namespace A099389.P7158316236764737811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2) - A001223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P7158316236764737811

namespace A099389

/-- `p?[A076274(n+2)-A001223(n+1)-2]` -/
def P7158316236764737811.Spec : Prop :=
  ∀ n, P7158316236764737811.a n = A099389 (n + 1)

end A099389

/-! ## A099389.P3995105953985531562

`p?[2*A040976(n+1)-A046933(n+1)]`
-/

namespace A099389.P3995105953985531562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1) - A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P3995105953985531562

namespace A099389

/-- `p?[2*A040976(n+1)-A046933(n+1)]` -/
def P3995105953985531562.Spec : Prop :=
  ∀ n, P3995105953985531562.a n = A099389 (n + 1)

theorem P3995105953985531562.correct : P3995105953985531562.Spec := by
  intro n
  simp only [A099389, Nat.add_sub_cancel, A099389.P3995105953985531562.f1, A099389.P3995105953985531562.a, A099389.P3235440162299395356.f1, A099389.P3235440162299395356.a, A040976, A040976.P11599754272797435513.a, A046933, A046933.P9479947770746769512.a, A098764, A098764.P1450263935949736531.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099389

/-! ## A099389.P263578794063315779

`p?[3*A006093(n+1)-A000040(n+2)]`
-/

namespace A099389.P263578794063315779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006093 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P263578794063315779

namespace A099389

/-- `p?[3*A006093(n+1)-A000040(n+2)]` -/
def P263578794063315779.Spec : Prop :=
  ∀ n, P263578794063315779.a n = A099389 (n + 1)

theorem P263578794063315779.correct : P263578794063315779.Spec := by
  intro n
  simp only [A099389, Nat.add_sub_cancel, A099389.P263578794063315779.f1, A099389.P263578794063315779.a, A099389.P3235440162299395356.f1, A099389.P3235440162299395356.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A098764, A098764.P1450263935949736531.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099389

/-! ## A099389.P3872695410596185716

`p?[n+1-(A347121(n+2)-n)]`
-/

namespace A099389.P3872695410596185716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A347121 (n + 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P3872695410596185716

namespace A099389

/-- `p?[n+1-(A347121(n+2)-n)]` -/
def P3872695410596185716.Spec : Prop :=
  ∀ n, P3872695410596185716.a n = A099389 (n + 1)

end A099389

/-! ## A099389.P13119307569525941749

`filter[A100021(n+2), A171387(#)]`
-/

namespace A099389.P13119307569525941749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A099389.P13119307569525941749

namespace A099389

/-- `filter[A100021(n+2), A171387(#)]` -/
def P13119307569525941749.Spec : Prop :=
  ∀ n, P13119307569525941749.a n = A099389 (n + 1)

end A099389

/-!
# A099390: Array T(m,n) read by antidiagonals: number of domino tilings (or dimer tilings) of the m X n grid (or m X n rectangle), for m>=1, n>=1.

The programs for A099390, there is no canonical definition to state claims against.
-/

/-! ## A099390.P4529330817531610848

`A187596(eq[0, A103451(n)])`
-/

namespace A099390.P4529330817531610848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099390.P4529330817531610848

/-! ## A099390.P551637074351023010

`A187596(eq[0, A103452(n)])`
-/

namespace A099390.P551637074351023010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099390.P551637074351023010

/-! ## A099390.P11732595518694848074

`A187596(A003057(n+2)²-n)`
-/

namespace A099390.P11732595518694848074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A099390.P11732595518694848074

/-! ## A099390.P7299615317078856966

`A187596(2*A003057(n+2)+n)`
-/

namespace A099390.P7299615317078856966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A099390.P7299615317078856966

/-! ## A099390.P2116706270563722260

`A187596(A003057(n+2)+A003057(n+2)+n)`
-/

namespace A099390.P2116706270563722260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ))).toNat

end

end A099390.P2116706270563722260

/-! ## A099390.P606656235011515693

`A187596(lt[1, A187558(n)])`
-/

namespace A099390.P606656235011515693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A099390.P606656235011515693

/-! ## A099390.P1113684351304617773

`A187596(lt[1, A187617(n)])`
-/

namespace A099390.P1113684351304617773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A099390.P1113684351304617773

/-! ## A099390.P14522075902202203528

`sqrt(A189245(n+1))`
-/

namespace A099390.P14522075902202203528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189245 (n + 1) : ℝ)

end

end A099390.P14522075902202203528

/-!
# A099391: Expansion of e.g.f. 1/(2 - exp(exp(exp(x) - 1) - 1)).

The programs for A099391, there is no canonical definition to state claims against.
-/

/-! ## A099391.P10394069695546428975

`A153278(∑[n+2]-1)`
-/

namespace A099391.P10394069695546428975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A099391.P10394069695546428975

/-! ## A099391.P16303610659577986672

`gcd(A151933(n), A153278(A034856(n+1)))`
-/

namespace A099391.P16303610659577986672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A153278 (A034856 (n + 1)).toNat)

end

end A099391.P16303610659577986672

/-! ## A099391.P1142329265665041918

`and(A153278(A034856(n+1)), A260196(n))`
-/

namespace A099391.P1142329265665041918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153278 (A034856 (n + 1)).toNat) (A260196 n)

end

end A099391.P1142329265665041918

/-! ## A099391.P3191790842984976241

`or(A000007(n), A153278(A034856(n+1)))`
-/

namespace A099391.P3191790842984976241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A153278 (A034856 (n + 1)).toNat)

end

end A099391.P3191790842984976241

/-! ## A099391.P11661069300366307244

`A153278(A034856(n+1))+char[A099542(n+1)]`
-/

namespace A099391.P11661069300366307244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099542 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099391.P11661069300366307244

/-! ## A099391.P3775620733577609555

`A153278(A034856(n+1))+A035363(2*n+1)`
-/

namespace A099391.P3775620733577609555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A034856 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A099391.P3775620733577609555

/-!
# A099392: a(n) = floor((n^2 - 2*n + 3)/2).

The programs for A099392, the canonical program `A099392.P17557999123462405866` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099392 has offset 1).

The definition of A099392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((n+1)²-2*(n+1)+3)/2)` (program `A099392.P17557999123462405866`, by `A099392.P17557999123462405866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099392.P9796618924376623324

`(3+2*n²+(-1)^n)/4`
-/

namespace A099392.P9796618924376623324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * n ^ 2 : ℤ) + (-1) ^ n : ℚ) / 4

end

end A099392.P9796618924376623324

namespace A099392

/-- `(3+2*n²+(-1)^n)/4` -/
def P9796618924376623324.Spec : Prop :=
  ∀ n, P9796618924376623324.a n = (A099392 (n + 1) : ℚ)

end A099392

/-! ## A099392.P17557999123462405866

`floor(((n+1)²-2*(n+1)+3)/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099392

/-- `floor(((n+1)²-2*(n+1)+3)/2)` -/
def P17557999123462405866.Spec : Prop :=
  ∀ n, P17557999123462405866.a n = A099392 (n + 1)

theorem P17557999123462405866.correct : P17557999123462405866.Spec := by
  intro n
  simp only [A099392, Nat.add_sub_cancel]

end A099392

/-! ## A099392.P14526875921907577984

`A007590(n)+1`
-/

namespace A099392.P14526875921907577984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + 1

end

end A099392.P14526875921907577984

namespace A099392

/-- `A007590(n)+1` -/
def P14526875921907577984.Spec : Prop :=
  ∀ n, P14526875921907577984.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P12075949875973705012

`ceil(A002522(n)/2)`
-/

namespace A099392.P12075949875973705012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002522 n : ℚ) / 2⌉

end

end A099392.P12075949875973705012

namespace A099392

/-- `ceil(A002522(n)/2)` -/
def P12075949875973705012.Spec : Prop :=
  ∀ n, P12075949875973705012.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P8756606351939168820

`A000217(n+1)-A007494(n)`
-/

namespace A099392.P8756606351939168820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A007494 n

end

end A099392.P8756606351939168820

namespace A099392

/-- `A000217(n+1)-A007494(n)` -/
def P8756606351939168820.Spec : Prop :=
  ∀ n, P8756606351939168820.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P13384476123775983882

`A074148(n+1)-A014601(n)`
-/

namespace A099392.P13384476123775983882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) - A014601 n

end

end A099392.P13384476123775983882

namespace A099392

/-- `A074148(n+1)-A014601(n)` -/
def P13384476123775983882.Spec : Prop :=
  ∀ n, P13384476123775983882.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P8932830073541861169

`∑[or(1, n)]-n`
-/

namespace A099392.P8932830073541861169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A099392.P8932830073541861169

namespace A099392

/-- `∑[or(1, n)]-n` -/
def P8932830073541861169.Spec : Prop :=
  ∀ n, P8932830073541861169.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P7488120287553683844

`∑[and(n, -2)]+1`
-/

namespace A099392.P7488120287553683844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099392.P7488120287553683844

namespace A099392

/-- `∑[and(n, -2)]+1` -/
def P7488120287553683844.Spec : Prop :=
  ∀ n, P7488120287553683844.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P8810879685509991413

`or(1, ∑[and(n, -2)])`
-/

namespace A099392.P8810879685509991413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099392.P8810879685509991413

namespace A099392

/-- `or(1, ∑[and(n, -2)])` -/
def P8810879685509991413.Spec : Prop :=
  ∀ n, P8810879685509991413.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P2878902392278328018

`xor(1, ∑[and(n, -2)])`
-/

namespace A099392.P2878902392278328018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099392.P2878902392278328018

namespace A099392

/-- `xor(1, ∑[and(n, -2)])` -/
def P2878902392278328018.Spec : Prop :=
  ∀ n, P2878902392278328018.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P15868161177873232692

`or(1, floor(n²/2))`
-/

namespace A099392.P15868161177873232692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n ^ 2 : ℚ) / 2⌋

end

end A099392.P15868161177873232692

namespace A099392

/-- `or(1, floor(n²/2))` -/
def P15868161177873232692.Spec : Prop :=
  ∀ n, P15868161177873232692.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P16898300571590080620

`xor(1, floor(n²/2))`
-/

namespace A099392.P16898300571590080620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(n ^ 2 : ℚ) / 2⌋

end

end A099392.P16898300571590080620

namespace A099392

/-- `xor(1, floor(n²/2))` -/
def P16898300571590080620.Spec : Prop :=
  ∀ n, P16898300571590080620.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P4771013305950889712

`ceil(or(1, n²)/2)`
-/

namespace A099392.P4771013305950889712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n ^ 2) : ℚ) / 2⌉

end

end A099392.P4771013305950889712

namespace A099392

/-- `ceil(or(1, n²)/2)` -/
def P4771013305950889712.Spec : Prop :=
  ∀ n, P4771013305950889712.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P17286897582857023567

`round(or(1, n²)/2)`
-/

namespace A099392.P17286897582857023567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n ^ 2) : ℚ) / 2)

end

end A099392.P17286897582857023567

namespace A099392

/-- `round(or(1, n²)/2)` -/
def P17286897582857023567.Spec : Prop :=
  ∀ n, P17286897582857023567.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P5200881501711372977

`ceil((cos(1)+n²)/2)`
-/

namespace A099392.P5200881501711372977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + (n ^ 2 : ℝ)) / 2⌉

end

end A099392.P5200881501711372977

namespace A099392

/-- `ceil((cos(1)+n²)/2)` -/
def P5200881501711372977.Spec : Prop :=
  ∀ n, P5200881501711372977.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P10073462950309350663

`round(cos(1)+n²/2)`
-/

namespace A099392.P10073462950309350663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ))

end

end A099392.P10073462950309350663

namespace A099392

/-- `round(cos(1)+n²/2)` -/
def P10073462950309350663.Spec : Prop :=
  ∀ n, P10073462950309350663.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P9757653397995551180

`ceil((sin(1)+n²)/2)`
-/

namespace A099392.P9757653397995551180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + (n ^ 2 : ℝ)) / 2⌉

end

end A099392.P9757653397995551180

namespace A099392

/-- `ceil((sin(1)+n²)/2)` -/
def P9757653397995551180.Spec : Prop :=
  ∀ n, P9757653397995551180.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P17507863170541300907

`round(sin(1)+n²/2)`
-/

namespace A099392.P17507863170541300907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ))

end

end A099392.P17507863170541300907

namespace A099392

/-- `round(sin(1)+n²/2)` -/
def P17507863170541300907.Spec : Prop :=
  ∀ n, P17507863170541300907.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P8513751276278154941

`ceil(n²/2-cos(2))`
-/

namespace A099392.P8513751276278154941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℚ) / 2 : ℝ) - Real.cos (2 : ℝ)⌉

end

end A099392.P8513751276278154941

namespace A099392

/-- `ceil(n²/2-cos(2))` -/
def P8513751276278154941.Spec : Prop :=
  ∀ n, P8513751276278154941.a n = A099392 (n + 1)

end A099392

/-! ## A099392.P17014992201299360000

`round((tan(1)+n²)/2)`
-/

namespace A099392.P17014992201299360000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (1 : ℝ) + (n ^ 2 : ℝ)) / 2)

end

end A099392.P17014992201299360000

namespace A099392

/-- `round((tan(1)+n²)/2)` -/
def P17014992201299360000.Spec : Prop :=
  ∀ n, P17014992201299360000.a n = A099392 (n + 1)

end A099392

/-!
# A099393: a(n) = 4^n + 2^n - 1.

The programs for A099393, the canonical program `A099393.P9893508864860866410` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099393 has offset 0).

The definition of A099393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+2^n-1` (program `A099393.P9893508864860866410`, by `A099393.P9893508864860866410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099393.P9893508864860866410

`4^n+2^n-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099393

/-- `4^n+2^n-1` -/
def P9893508864860866410.Spec : Prop :=
  ∀ n, P9893508864860866410.a n = A099393 n

theorem P9893508864860866410.correct : P9893508864860866410.Spec := by
  intro n
  simp only [A099393]

end A099393

/-! ## A099393.P1339627908745646634

`or(2^n-1, 4^n)`
-/

namespace A099393.P1339627908745646634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - 1) (4 ^ n : ℤ)

end

end A099393.P1339627908745646634

namespace A099393

/-- `or(2^n-1, 4^n)` -/
def P1339627908745646634.Spec : Prop :=
  ∀ n, P1339627908745646634.a n = A099393 n

end A099393

/-! ## A099393.P10687002162917142160

`xor(2^n-1, 4^n)`
-/

namespace A099393.P10687002162917142160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (4 ^ n : ℤ)

end

end A099393.P10687002162917142160

namespace A099393

/-- `xor(2^n-1, 4^n)` -/
def P10687002162917142160.Spec : Prop :=
  ∀ n, P10687002162917142160.a n = A099393 n

end A099393

/-! ## A099393.P17992000553811647479

`∑[ogf((1-2x-2x^2)/(1-6x+8x^2))]`
-/

namespace A099393.P17992000553811647479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099393.P17992000553811647479

namespace A099393

/-- `∑[ogf((1-2x-2x^2)/(1-6x+8x^2))]` -/
def P17992000553811647479.Spec : Prop :=
  ∀ n, P17992000553811647479.a n = A099393 n

end A099393

/-! ## A099393.P5752960145469904498

`abs(∑{d}[-a(n-1), #^n]-2)` with `a(0)=4`
-/

namespace A099393.P5752960145469904498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ) - 2|

end

end A099393.P5752960145469904498

namespace A099393

/-- `abs(∑{d}[-a(n-1), #^n]-2)` -/
def P5752960145469904498.Spec : Prop :=
  ∀ n, P5752960145469904498.a n = A099393 n

end A099393

/-! ## A099393.P14681835535358745539

`abs(3-(2^n-4*a(n-1)))` with `a(0)=1`
-/

namespace A099393.P14681835535358745539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |3 - ((2 ^ n : ℤ) - 4 * a (n - 1))|

end

end A099393.P14681835535358745539

namespace A099393

/-- `abs(3-(2^n-4*a(n-1)))` -/
def P14681835535358745539.Spec : Prop :=
  ∀ n, P14681835535358745539.a n = A099393 n

end A099393

/-! ## A099393.P4872379509443355644

`∑[4*a(n-1)-2^(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A099393.P4872379509443355644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 * f1 (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099393.P4872379509443355644

namespace A099393

/-- `∑[4*a(n-1)-2^(n-1)]` -/
def P4872379509443355644.Spec : Prop :=
  ∀ n, P4872379509443355644.a n = (A099393 n : ℚ)

end A099393

/-! ## A099393.P3972420039995410462

`abs(1-A161168(n))`
-/

namespace A099393.P3972420039995410462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A161168 n|

end

end A099393.P3972420039995410462

namespace A099393

/-- `abs(1-A161168(n))` -/
def P3972420039995410462.Spec : Prop :=
  ∀ n, P3972420039995410462.a n = A099393 n

end A099393

/-! ## A099393.P8905060164327053484

`abs(2-A001576(n))`
-/

namespace A099393.P8905060164327053484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001576 n|

end

end A099393.P8905060164327053484

namespace A099393

/-- `abs(2-A001576(n))` -/
def P8905060164327053484.Spec : Prop :=
  ∀ n, P8905060164327053484.a n = A099393 n

end A099393

/-! ## A099393.P8972478093454862778

`A056326(2*(n+1))`
-/

namespace A099393.P8972478093454862778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (2 * (n + 1))

end

end A099393.P8972478093454862778

namespace A099393

/-- `A056326(2*(n+1))` -/
def P8972478093454862778.Spec : Prop :=
  ∀ n, P8972478093454862778.a n = A099393 n

end A099393

/-! ## A099393.P2317584019136941299

`abs(1-2^n-A000302(n))`
-/

namespace A099393.P2317584019136941299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 ^ n : ℤ) - A000302 n|

end

end A099393.P2317584019136941299

namespace A099393

/-- `abs(1-2^n-A000302(n))` -/
def P2317584019136941299.Spec : Prop :=
  ∀ n, P2317584019136941299.a n = A099393 n

end A099393

/-! ## A099393.P11417316079356119601

`record[A052551(n)+Δ[A052551(n)]²]`
-/

namespace A099393.P11417316079356119601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n + (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099393.P11417316079356119601

namespace A099393

/-- `record[A052551(n)+Δ[A052551(n)]²]` -/
def P11417316079356119601.Spec : Prop :=
  ∀ n, P11417316079356119601.a n = A099393 n

end A099393

/-! ## A099393.P14756629838009314552

`A143960(n+1)/2`
-/

namespace A099393.P14756629838009314552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143960 (n + 1) : ℚ) / 2

end

end A099393.P14756629838009314552

namespace A099393

/-- `A143960(n+1)/2` -/
def P14756629838009314552.Spec : Prop :=
  ∀ n, P14756629838009314552.a n = (A099393 n : ℚ)

theorem P14756629838009314552.correct : P14756629838009314552.Spec := by
  intro n
  simp only [A099393, Nat.add_sub_cancel, A099393.P14756629838009314552.a, A099393.P9893508864860866410.a, A143960, A143960.P11326528955184198405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099393

/-! ## A099393.P6160038746450833409

`(A281482(n)-1)/2`
-/

namespace A099393.P6160038746450833409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281482 n - 1 : ℚ) / 2

end

end A099393.P6160038746450833409

namespace A099393

/-- `(A281482(n)-1)/2` -/
def P6160038746450833409.Spec : Prop :=
  ∀ n, P6160038746450833409.a n = (A099393 n : ℚ)

end A099393

/-! ## A099393.P14699918571052226295

`(A085601(n)-3)/2`
-/

namespace A099393.P14699918571052226295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085601 n - 3 : ℚ) / 2

end

end A099393.P14699918571052226295

namespace A099393

/-- `(A085601(n)-3)/2` -/
def P14699918571052226295.Spec : Prop :=
  ∀ n, P14699918571052226295.a n = (A099393 n : ℚ)

theorem P14699918571052226295.correct : P14699918571052226295.Spec := by
  intro n
  simp only [A099393, Nat.add_sub_cancel, A099393.P14699918571052226295.a, A099393.P9893508864860866410.a, A085601, A085601.P6300401134310498953.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099393

/-! ## A099393.P10160399713611315477

`A159230(2*(n+1))/2`
-/

namespace A099393.P10160399713611315477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159230 (2 * (n + 1)) : ℚ) / 2

end

end A099393.P10160399713611315477

namespace A099393

/-- `A159230(2*(n+1))/2` -/
def P10160399713611315477.Spec : Prop :=
  ∀ n, P10160399713611315477.a n = (A099393 n : ℚ)

end A099393

/-! ## A099393.P5722382789148297581

`(A343175(n+1)-3)/2`
-/

namespace A099393.P5722382789148297581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343175 (n + 1) - 3 : ℚ) / 2

end

end A099393.P5722382789148297581

namespace A099393

/-- `(A343175(n+1)-3)/2` -/
def P5722382789148297581.Spec : Prop :=
  ∀ n, P5722382789148297581.a n = (A099393 n : ℚ)

end A099393

/-! ## A099393.P14068389268259208309

`(A093069(n+1)-3)/4`
-/

namespace A099393.P14068389268259208309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093069 (n + 1) - 3 : ℚ) / 4

end

end A099393.P14068389268259208309

namespace A099393

/-- `(A093069(n+1)-3)/4` -/
def P14068389268259208309.Spec : Prop :=
  ∀ n, P14068389268259208309.a n = (A099393 n : ℚ)

end A099393

/-! ## A099393.P10548880946055490916

`(∑[A093356(n+1)]-1)/2`
-/

namespace A099393.P10548880946055490916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093356 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A099393.P10548880946055490916

namespace A099393

/-- `(∑[A093356(n+1)]-1)/2` -/
def P10548880946055490916.Spec : Prop :=
  ∀ n, P10548880946055490916.a n = (A099393 n : ℚ)

end A099393

/-! ## A099393.P8446191172214970427

`A085601(n)%A170938(n)`
-/

namespace A099393.P8446191172214970427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085601 n) (A170938 n)

end

end A099393.P8446191172214970427

namespace A099393

/-- `A085601(n)%A170938(n)` -/
def P8446191172214970427.Spec : Prop :=
  ∀ n, P8446191172214970427.a n = A099393 n

end A099393

/-!
# A099394: Triangle T(k,n) by rows: n! * A075499(k,n).

The programs for A099394, the canonical program `A099394.P8636766554940607301` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099394 has offset 0).

The definition of A099394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1734 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099394.P13088034868249537238

`(n-C(∑[char[∑[n]]], 2))!*A075499(n+1)`
-/

namespace A099394.P13088034868249537238
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A075499 (n + 1)

end

end A099394.P13088034868249537238

namespace A099394

/-- `(n-C(∑[char[∑[n]]], 2))!*A075499(n+1)` -/
def P13088034868249537238.Spec : Prop :=
  ∀ n, P13088034868249537238.a n = A099394 n

end A099394

/-! ## A099394.P7330050987722067535

`(2^(C(comp[∑[n]]-n, 2)-(n+1)))²*A028246(n+1)`
-/

namespace A099394.P7330050987722067535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ 2 * (A028246 (n + 1) : ℚ)

end

end A099394.P7330050987722067535

namespace A099394

/-- `(2^(C(comp[∑[n]]-n, 2)-(n+1)))²*A028246(n+1)` -/
def P7330050987722067535.Spec : Prop :=
  ∀ n, P7330050987722067535.a n = (A099394 n : ℚ)

end A099394

/-! ## A099394.P8636766554940607301

`abs(A163626(n)*A262616(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099394

/-- `abs(A163626(n)*A262616(n))` -/
def P8636766554940607301.Spec : Prop :=
  ∀ n, P8636766554940607301.a n = A099394 n

theorem P8636766554940607301.correct : P8636766554940607301.Spec := by
  intro n
  simp only [A099394]

end A099394

/-! ## A099394.P13345559018383546641

`A028246(n+1)*A262616(n)`
-/

namespace A099394.P13345559018383546641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A262616 n

end

end A099394.P13345559018383546641

namespace A099394

/-- `A028246(n+1)*A262616(n)` -/
def P13345559018383546641.Spec : Prop :=
  ∀ n, P13345559018383546641.a n = A099394 n

end A099394

/-! ## A099394.P5298035755464965954

`A075499(n+1)*A233543(n)`
-/

namespace A099394.P5298035755464965954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075499 (n + 1) * A233543 n

end

end A099394.P5298035755464965954

namespace A099394

/-- `A075499(n+1)*A233543(n)` -/
def P5298035755464965954.Spec : Prop :=
  ∀ n, P5298035755464965954.a n = A099394 n

end A099394

/-! ## A099394.P4047291808835138094

`A028246(n+1)/A008277(n+1)*A075499(n+1)`
-/

namespace A099394.P4047291808835138094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A075499 (n + 1) : ℚ)

end

end A099394.P4047291808835138094

namespace A099394

/-- `A028246(n+1)/A008277(n+1)*A075499(n+1)` -/
def P4047291808835138094.Spec : Prop :=
  ∀ n, P4047291808835138094.a n = (A099394 n : ℚ)

end A099394

/-!
# A099395: One if odd part of n is 3, zero otherwise.

The programs for A099395, the canonical program `A099395.P17616565817404751691` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099395 has offset 1).

The definition of A099395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099395.P17835417536032919483

`char[3*2^n-1]`
-/

namespace A099395.P17835417536032919483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A099395.P17835417536032919483

namespace A099395

/-- `char[3*2^n-1]` -/
def P17835417536032919483.Spec : Prop :=
  ∀ n, (P17835417536032919483.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P17616565817404751691

`a(n%floor((n+1)/2))` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099395

/-- `a(n%floor((n+1)/2))` -/
def P17616565817404751691.Spec : Prop :=
  ∀ n, (P17616565817404751691.a n : ℤ) = A099395 (n + 1)

theorem P17616565817404751691.correct : P17616565817404751691.Spec := by
  intro n
  simp only [A099395, Nat.add_sub_cancel]

end A099395

/-! ## A099395.P3432301599534585283

`a(gcd(1-n, floor(n/2)))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A099395.P3432301599534585283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A099395.P3432301599534585283

namespace A099395

/-- `a(gcd(1-n, floor(n/2)))` -/
def P3432301599534585283.Spec : Prop :=
  ∀ n, (P3432301599534585283.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P15006710404170172328

`(n*a(floor(n/2)))%2` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A099395.P15006710404170172328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  n * a ⌊(n : ℚ) / 2⌋.toNat % 2

end

end A099395.P15006710404170172328

namespace A099395

/-- `(n*a(floor(n/2)))%2` -/
def P15006710404170172328.Spec : Prop :=
  ∀ n, (P15006710404170172328.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P13011652662272920092

`a(n-∑[1-a(n-3)])` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A099395.P13011652662272920092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  1 - f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099395.P13011652662272920092

namespace A099395

/-- `a(n-∑[1-a(n-3)])` -/
def P13011652662272920092.Spec : Prop :=
  ∀ n, (P13011652662272920092.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P6366388841849408582

`a(floor((n-1)/(a(n-1)+2)))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A099395.P6366388841849408582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / (a (n - 1) + 2 : ℚ)⌋.toNat

end

end A099395.P6366388841849408582

namespace A099395

/-- `a(floor((n-1)/(a(n-1)+2)))` -/
def P6366388841849408582.Spec : Prop :=
  ∀ n, (P6366388841849408582.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P13498078935961416870

`a(floor((n-(1-a(n-1)))/2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A099395.P13498078935961416870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a ⌊((n : ℤ) - (1 - (a (n - 1) : ℤ)) : ℚ) / 2⌋.toNat

end

end A099395.P13498078935961416870

namespace A099395

/-- `a(floor((n-(1-a(n-1)))/2))` -/
def P13498078935961416870.Spec : Prop :=
  ∀ n, (P13498078935961416870.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P11044266145721946790

`val(A369029(n), 3)`
-/

namespace A099395.P11044266145721946790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369029 n).toNat 3

end

end A099395.P11044266145721946790

namespace A099395

/-- `val(A369029(n), 3)` -/
def P11044266145721946790.Spec : Prop :=
  ∀ n, (P11044266145721946790.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P14607475524985659655

`and(2, A082908(n))/2`
-/

namespace A099395.P14607475524985659655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A082908 n) : ℚ) / 2

end

end A099395.P14607475524985659655

namespace A099395

/-- `and(2, A082908(n))/2` -/
def P14607475524985659655.Spec : Prop :=
  ∀ n, P14607475524985659655.a n = (A099395 (n + 1) : ℚ)

end A099395

/-! ## A099395.P15973536330324612935

`C(C(2, A025480(n)), 2)`
-/

namespace A099395.P15973536330324612935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A025480 n).toNat) 2

end

end A099395.P15973536330324612935

namespace A099395

/-- `C(C(2, A025480(n)), 2)` -/
def P15973536330324612935.Spec : Prop :=
  ∀ n, (P15973536330324612935.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P9008359481967209022

`char[A083329(n)]-char[1]`
-/

namespace A099395.P9008359481967209022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A099395.P9008359481967209022

namespace A099395

/-- `char[A083329(n)]-char[1]` -/
def P9008359481967209022.Spec : Prop :=
  ∀ n, P9008359481967209022.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P8254894869739372737

`a(A028234(n+1)-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A099395.P8254894869739372737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (A028234 (n + 1) - 1).toNat

end

end A099395.P8254894869739372737

namespace A099395

/-- `a(A028234(n+1)-1)` -/
def P8254894869739372737.Spec : Prop :=
  ∀ n, (P8254894869739372737.a n : ℤ) = A099395 (n + 1)

end A099395

/-! ## A099395.P7102375885264387497

`A005369(A082908(n))`
-/

namespace A099395.P7102375885264387497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A082908 n).toNat

end

end A099395.P7102375885264387497

namespace A099395

/-- `A005369(A082908(n))` -/
def P7102375885264387497.Spec : Prop :=
  ∀ n, P7102375885264387497.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P5029470573598458423

`A055029(A153733(n))`
-/

namespace A099395.P5029470573598458423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A153733 n).toNat

end

end A099395.P5029470573598458423

namespace A099395

/-- `A055029(A153733(n))` -/
def P5029470573598458423.Spec : Prop :=
  ∀ n, P5029470573598458423.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P6929119062858095812

`A209229(A048967(n))`
-/

namespace A099395.P6929119062858095812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A048967 n).toNat

end

end A099395.P6929119062858095812

namespace A099395

/-- `A209229(A048967(n))` -/
def P6929119062858095812.Spec : Prop :=
  ∀ n, P6929119062858095812.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P10250429697343543736

`A209229(A086099(n))`
-/

namespace A099395.P10250429697343543736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A086099 n).toNat

end

end A099395.P10250429697343543736

namespace A099395

/-- `A209229(A086099(n))` -/
def P10250429697343543736.Spec : Prop :=
  ∀ n, P10250429697343543736.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P15976556685913880161

`A007949(A369029(n))`
-/

namespace A099395.P15976556685913880161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A369029 n).toNat

end

end A099395.P15976556685913880161

namespace A099395

/-- `A007949(A369029(n))` -/
def P15976556685913880161.Spec : Prop :=
  ∀ n, P15976556685913880161.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P16918259976956799200

`A049084(A003958(n+1))`
-/

namespace A099395.P16918259976956799200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A003958 (n + 1)).toNat

end

end A099395.P16918259976956799200

namespace A099395

/-- `A049084(A003958(n+1))` -/
def P16918259976956799200.Spec : Prop :=
  ∀ n, P16918259976956799200.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P5106775084071435054

`A036987(A047480(n+1))`
-/

namespace A099395.P5106775084071435054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A047480 (n + 1)).toNat

end

end A099395.P5106775084071435054

namespace A099395

/-- `A036987(A047480(n+1))` -/
def P5106775084071435054.Spec : Prop :=
  ∀ n, P5106775084071435054.a n = A099395 (n + 1)

end A099395

/-! ## A099395.P11662620049256471622

`A010051(A322250(n+1))`
-/

namespace A099395.P11662620049256471622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A322250 (n + 1)).toNat

end

end A099395.P11662620049256471622

namespace A099395

/-- `A010051(A322250(n+1))` -/
def P11662620049256471622.Spec : Prop :=
  ∀ n, P11662620049256471622.a n = A099395 (n + 1)

end A099395

/-!
# A099396: a(n) = floor(log_2((2/3)*n)) for n >= 2, a(1) = 0.

The programs for A099396, the canonical program `A099396.P2657648816339897871` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099396 has offset 1).

The definition of A099396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099396.P16611075354839873666

`ceil(log2((n+2)/3))`
-/

namespace A099396.P16611075354839873666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n + 2 : ℚ) / 3 : ℝ)⌉

end

end A099396.P16611075354839873666

namespace A099396

/-- `ceil(log2((n+2)/3))` -/
def P16611075354839873666.Spec : Prop :=
  ∀ n, P16611075354839873666.a n = A099396 (n + 1)

end A099396

/-! ## A099396.P2657648816339897871

`floor(log2(∑[(1-n%3)²]))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099396

/-- `floor(log2(∑[(1-n%3)²]))` -/
def P2657648816339897871.Spec : Prop :=
  ∀ n, (P2657648816339897871.a n : ℤ) = A099396 (n + 1)

theorem P2657648816339897871.correct : P2657648816339897871.Spec := by
  intro n
  simp only [A099396, Nat.add_sub_cancel]

end A099396

/-! ## A099396.P1559313565884214596

`floor(log2(∑[(n+2)²%3]))`
-/

namespace A099396.P1559313565884214596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099396.P1559313565884214596

namespace A099396

/-- `floor(log2(∑[(n+2)²%3]))` -/
def P1559313565884214596.Spec : Prop :=
  ∀ n, (P1559313565884214596.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P4100787496438355428

`∑[char[ogf((2-x)/(1-3x+2x^2))]]`
-/

namespace A099396.P4100787496438355428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -3, 2] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P4100787496438355428

namespace A099396

/-- `∑[char[ogf((2-x)/(1-3x+2x^2))]]` -/
def P4100787496438355428.Spec : Prop :=
  ∀ n, (P4100787496438355428.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P1813772000549540918

`∑[char[abs(1-lcm(3, 2^n))]]`
-/

namespace A099396.P1813772000549540918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 3 (2 ^ n) : ℤ)|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P1813772000549540918

namespace A099396

/-- `∑[char[abs(1-lcm(3, 2^n))]]` -/
def P1813772000549540918.Spec : Prop :=
  ∀ n, (P1813772000549540918.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P7833495168883582481

`floor(log2(∑[gcd(3, n+1)]-n))`
-/

namespace A099396.P7833495168883582481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)).toNat

end

end A099396.P7833495168883582481

namespace A099396

/-- `floor(log2(∑[gcd(3, n+1)]-n))` -/
def P7833495168883582481.Spec : Prop :=
  ∀ n, (P7833495168883582481.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P9088133182657209839

`a(floor((n-1)/2))+1` with `a(0)=0, a(1)=0`
-/

namespace A099396.P9088133182657209839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 1

end

end A099396.P9088133182657209839

namespace A099396

/-- `a(floor((n-1)/2))+1` -/
def P9088133182657209839.Spec : Prop :=
  ∀ n, (P9088133182657209839.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P17855706733295972376

`∑[char[2*a(n-1)+1]]` with `a(0)=2`
-/

namespace A099396.P17855706733295972376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P17855706733295972376

namespace A099396

/-- `∑[char[2*a(n-1)+1]]` -/
def P17855706733295972376.Spec : Prop :=
  ∀ n, (P17855706733295972376.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P4982011192691905140

`∑[char[∑[2*a(n-1)]]]` with `a(0)=2, a(1)=3`
-/

namespace A099396.P4982011192691905140
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P4982011192691905140

namespace A099396

/-- `∑[char[∑[2*a(n-1)]]]` -/
def P4982011192691905140.Spec : Prop :=
  ∀ n, (P4982011192691905140.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P16484735267274095490

`∑[char[a(n-1)+a(n-1)+1]]` with `a(0)=2`
-/

namespace A099396.P16484735267274095490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P16484735267274095490

namespace A099396

/-- `∑[char[a(n-1)+a(n-1)+1]]` -/
def P16484735267274095490.Spec : Prop :=
  ∀ n, (P16484735267274095490.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P1062880952393633224

`∑[char[A153893(n)]]`
-/

namespace A099396.P1062880952393633224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P1062880952393633224

namespace A099396

/-- `∑[char[A153893(n)]]` -/
def P1062880952393633224.Spec : Prop :=
  ∀ n, (P1062880952393633224.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P15870172105999143406

`∑[A099395(n+1)]`
-/

namespace A099396.P15870172105999143406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P15870172105999143406

namespace A099396

/-- `∑[A099395(n+1)]` -/
def P15870172105999143406.Spec : Prop :=
  ∀ n, P15870172105999143406.a n = A099396 (n + 1)

end A099396

/-! ## A099396.P14980522948709216759

`∑[char[∑[A042950(n)]]]`
-/

namespace A099396.P14980522948709216759
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P14980522948709216759

namespace A099396

/-- `∑[char[∑[A042950(n)]]]` -/
def P14980522948709216759.Spec : Prop :=
  ∀ n, (P14980522948709216759.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P10229590643704106214

`∑[char[Δ[A079583(n)]]]`
-/

namespace A099396.P10229590643704106214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P10229590643704106214

namespace A099396

/-- `∑[char[Δ[A079583(n)]]]` -/
def P10229590643704106214.Spec : Prop :=
  ∀ n, (P10229590643704106214.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P7414782371450138375

`floor(log2(A004396(n+1)))`
-/

namespace A099396.P7414782371450138375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A004396 (n + 1)).toNat

end

end A099396.P7414782371450138375

namespace A099396

/-- `floor(log2(A004396(n+1)))` -/
def P7414782371450138375.Spec : Prop :=
  ∀ n, (P7414782371450138375.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P1788742028009329971

`floor(log2(A006165(n+1)))`
-/

namespace A099396.P1788742028009329971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A006165 (n + 1)).toNat

end

end A099396.P1788742028009329971

namespace A099396

/-- `floor(log2(A006165(n+1)))` -/
def P1788742028009329971.Spec : Prop :=
  ∀ n, (P1788742028009329971.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P17871632876625282201

`floor(log2(A076895(n+1)))`
-/

namespace A099396.P17871632876625282201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A076895 (n + 1)).toNat

end

end A099396.P17871632876625282201

namespace A099396

/-- `floor(log2(A076895(n+1)))` -/
def P17871632876625282201.Spec : Prop :=
  ∀ n, (P17871632876625282201.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P16178588758124699687

`floor(log2(A096607(n+1)))`
-/

namespace A099396.P16178588758124699687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A096607 (n + 1)).toNat

end

end A099396.P16178588758124699687

namespace A099396

/-- `floor(log2(A096607(n+1)))` -/
def P16178588758124699687.Spec : Prop :=
  ∀ n, (P16178588758124699687.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P14867034332081281389

`floor(log2(A246592(n+1)))`
-/

namespace A099396.P14867034332081281389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A246592 (n + 1)).toNat

end

end A099396.P14867034332081281389

namespace A099396

/-- `floor(log2(A246592(n+1)))` -/
def P14867034332081281389.Spec : Prop :=
  ∀ n, (P14867034332081281389.a n : ℤ) = A099396 (n + 1)

end A099396

/-! ## A099396.P18265349316563400537

`∑[char[A033484(n)+1]]`
-/

namespace A099396.P18265349316563400537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099396.P18265349316563400537

namespace A099396

/-- `∑[char[A033484(n)+1]]` -/
def P18265349316563400537.Spec : Prop :=
  ∀ n, (P18265349316563400537.a n : ℤ) = A099396 (n + 1)

end A099396

/-!
# A099397: Chebyshev polynomial of the first kind, T(n,x), evaluated at x=51.

The programs for A099397, the canonical program `A099397.P4840792716525048451` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099397 has offset 0).

The definition of A099397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099397.P4840792716525048451

`102*a(n-1)-a(n-2)` with `a(0)=1, a(1)=51`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A099397

/-- `102*a(n-1)-a(n-2)` -/
def P4840792716525048451.Spec : Prop :=
  ∀ n, P4840792716525048451.a n = A099397 n

theorem P4840792716525048451.correct : P4840792716525048451.Spec := by
  intro n
  simp only [A099397]

end A099397

/-! ## A099397.P3523966875836349646

`A088320(2*n)`
-/

namespace A099397.P3523966875836349646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088320 (2 * n)

end

end A099397.P3523966875836349646

namespace A099397

/-- `A088320(2*n)` -/
def P3523966875836349646.Spec : Prop :=
  ∀ n, P3523966875836349646.a n = A099397 n

end A099397

/-! ## A099397.P9826704038857609133

`A086927(2*n)/2`
-/

namespace A099397.P9826704038857609133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086927 (2 * n) : ℚ) / 2

end

end A099397.P9826704038857609133

namespace A099397

/-- `A086927(2*n)/2` -/
def P9826704038857609133.Spec : Prop :=
  ∀ n, P9826704038857609133.a n = (A099397 n : ℚ)

end A099397

/-! ## A099397.P12589056867294291704

`floor(A086927(A005843(n))/2)`
-/

namespace A099397.P12589056867294291704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086927 (A005843 n).toNat : ℚ) / 2⌋

end

end A099397.P12589056867294291704

namespace A099397

/-- `floor(A086927(A005843(n))/2)` -/
def P12589056867294291704.Spec : Prop :=
  ∀ n, P12589056867294291704.a n = A099397 n

end A099397

/-! ## A099397.P14426185202392658006

`record[A088320(n)/A174503(n)]`
-/

namespace A099397.P14426185202392658006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088320 n : ℚ) / (A174503 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099397.P14426185202392658006

namespace A099397

/-- `record[A088320(n)/A174503(n)]` -/
def P14426185202392658006.Spec : Prop :=
  ∀ n, P14426185202392658006.a n = (A099397 n : ℚ)

end A099397

/-! ## A099397.P4900210935968876337

`record[gcd(A041040(n), A199573(n))]`
-/

namespace A099397.P4900210935968876337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041040 n) (A199573 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099397.P4900210935968876337

namespace A099397

/-- `record[gcd(A041040(n), A199573(n))]` -/
def P4900210935968876337.Spec : Prop :=
  ∀ n, (P4900210935968876337.a n : ℤ) = A099397 n

end A099397

/-! ## A099397.P6357879480995896810

`record[and(A033999(n), A041040(n))]`
-/

namespace A099397.P6357879480995896810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041040 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099397.P6357879480995896810

namespace A099397

/-- `record[and(A033999(n), A041040(n))]` -/
def P6357879480995896810.Spec : Prop :=
  ∀ n, P6357879480995896810.a n = A099397 n

end A099397

/-! ## A099397.P16150675925924496183

`record[A088320(and(n, A118830(n+1)))]`
-/

namespace A099397.P16150675925924496183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088320 (Int.land (n : ℤ) (A118830 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099397.P16150675925924496183

namespace A099397

/-- `record[A088320(and(n, A118830(n+1)))]` -/
def P16150675925924496183.Spec : Prop :=
  ∀ n, P16150675925924496183.a n = A099397 n

end A099397

/-! ## A099397.P4514430893906943840

`record[A088320(n)/A118830((n+1)²)²]`
-/

namespace A099397.P4514430893906943840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088320 n : ℚ) / (A118830 ((n + 1) ^ 2) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099397.P4514430893906943840

namespace A099397

/-- `record[A088320(n)/A118830((n+1)²)²]` -/
def P4514430893906943840.Spec : Prop :=
  ∀ n, P4514430893906943840.a n = (A099397 n : ℚ)

end A099397

/-! ## A099397.P13492119692380669096

`(A109108(2*n)+A015456(2*n))/2`
-/

namespace A099397.P13492119692380669096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109108 (2 * n) + A015456 (2 * n) : ℚ) / 2

end

end A099397.P13492119692380669096

namespace A099397

/-- `(A109108(2*n)+A015456(2*n))/2` -/
def P13492119692380669096.Spec : Prop :=
  ∀ n, P13492119692380669096.a n = (A099397 n : ℚ)

end A099397

/-!
# A099398: Numerators of rationals (in lowest terms) used in a certain high temperature expansion.

The programs for A099398, the canonical program `A099398.P16116864796008942121` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099398 has offset 0).

The definition of A099398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099398.P16116864796008942121

`A000108(n)/gcd(A000108(n), A001792(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099398

/-- `A000108(n)/gcd(A000108(n), A001792(n))` -/
def P16116864796008942121.Spec : Prop :=
  ∀ n, P16116864796008942121.a n = (A099398 n : ℚ)

end A099398

/-! ## A099398.P8946079145903357995

`lcm(∑[n+1], A001790(n))/∑[n+1]`
-/

namespace A099398.P8946079145903357995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A001790 n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A099398.P8946079145903357995

namespace A099398

/-- `lcm(∑[n+1], A001790(n))/∑[n+1]` -/
def P8946079145903357995.Spec : Prop :=
  ∀ n, P8946079145903357995.a n = (A099398 n : ℚ)

end A099398

/-! ## A099398.P4943440561702693186

`A395955(2*n)`
-/

namespace A099398.P4943440561702693186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395955 (2 * n)

end

end A099398.P4943440561702693186

namespace A099398

/-- `A395955(2*n)` -/
def P4943440561702693186.Spec : Prop :=
  ∀ n, P4943440561702693186.a n = A099398 n

end A099398

/-! ## A099398.P17300181463520236750

`A000984(n)/gcd(A000984(n), A038845(n))`
-/

namespace A099398.P17300181463520236750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (A000984 n) (A038845 n) : ℚ)

end

end A099398.P17300181463520236750

namespace A099398

/-- `A000984(n)/gcd(A000984(n), A038845(n))` -/
def P17300181463520236750.Spec : Prop :=
  ∀ n, P17300181463520236750.a n = (A099398 n : ℚ)

end A099398

/-! ## A099398.P13373840709285659056

`lcm(A001147(n), A051578(n))/A051578(n)`
-/

namespace A099398.P13373840709285659056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001147 n) (A051578 n) : ℚ) / (A051578 n : ℚ)

end

end A099398.P13373840709285659056

namespace A099398

/-- `lcm(A001147(n), A051578(n))/A051578(n)` -/
def P13373840709285659056.Spec : Prop :=
  ∀ n, P13373840709285659056.a n = (A099398 n : ℚ)

end A099398

/-!
# A099399: Denominators of rationals (in lowest terms) used in a certain high temperature expansion.

The programs for A099399, the canonical program `A099399.P16739772945462951370` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099399 has offset 0).

The definition of A099399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099399.P10681645111075665653

`A395956(2*n)`
-/

namespace A099399.P10681645111075665653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395956 (2 * n)

end

end A099399.P10681645111075665653

namespace A099399

/-- `A395956(2*n)` -/
def P10681645111075665653.Spec : Prop :=
  ∀ n, P10681645111075665653.a n = A099399 n

end A099399

/-! ## A099399.P16739772945462951370

`A038845(n)/gcd(A000984(n), A038845(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099399

/-- `A038845(n)/gcd(A000984(n), A038845(n))` -/
def P16739772945462951370.Spec : Prop :=
  ∀ n, P16739772945462951370.a n = (A099399 n : ℚ)

end A099399

/-! ## A099399.P11493846283238944262

`((n+1)²+n/2)*4^n/gcd(((n+1)²+n/2)*4^n, ∏[4-2/(n+1)]/2)`
-/

namespace A099399.P11493846283238944262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) + (n : ℚ) / 2) * (4 ^ n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) + (n : ℚ) / 2) * (4 ^ n : ℚ))) (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)) : ℚ)

end

end A099399.P11493846283238944262

namespace A099399

/-- `((n+1)²+n/2)*4^n/gcd(((n+1)²+n/2)*4^n, ∏[4-2/(n+1)]/2)` -/
def P11493846283238944262.Spec : Prop :=
  ∀ n, P11493846283238944262.a n = (A099399 n : ℚ)

end A099399

/-! ## A099399.P16969789727773575115

`A036064(A000384(n+3)+5)`
-/

namespace A099399.P16969789727773575115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036064 (A000384 (n + 3) + 5).toNat

end

end A099399.P16969789727773575115

namespace A099399

/-- `A036064(A000384(n+3)+5)` -/
def P16969789727773575115.Spec : Prop :=
  ∀ n, P16969789727773575115.a n = A099399 n

end A099399

/-! ## A099399.P16176876262561768063

`lcm(A001147(n), A051578(n))/A001147(n)`
-/

namespace A099399.P16176876262561768063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001147 n) (A051578 n) : ℚ) / (A001147 n : ℚ)

end

end A099399.P16176876262561768063

namespace A099399

/-- `lcm(A001147(n), A051578(n))/A001147(n)` -/
def P16176876262561768063.Spec : Prop :=
  ∀ n, P16176876262561768063.a n = (A099399 n : ℚ)

end A099399

