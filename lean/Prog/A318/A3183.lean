import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A318301: Triangle T(n, k) read by rows: T(0, 0) = 1 and T(n, k) = Sum_{i=0..k-1} T(n, i) + Sum_{i=k..n-1} T(n-1, i).

The programs for A318301, there is no canonical definition to state claims against.
-/

/-! ## A318301.P15959450496651880832

`Δ[A096796(n)%A036880(n+1)]`
-/

namespace A318301.P15959450496651880832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096796 n) (A036880 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318301.P15959450496651880832

/-! ## A318301.P8775503288297133573

`Δ[A096796(n)]%A334325(n+1)`
-/

namespace A318301.P8775503288297133573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A334325 (n + 1))

end

end A318301.P8775503288297133573

/-! ## A318301.P2224960328399025984

`Δ[A096824(n+1)%A199638(n+4)]`
-/

namespace A318301.P2224960328399025984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096824 (n + 1)) (A199638 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318301.P2224960328399025984

/-! ## A318301.P3547490318536204862

`Δ[A096796(n)%A003271(A014601(n))]`
-/

namespace A318301.P3547490318536204862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096796 n) (A003271 (A014601 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318301.P3547490318536204862

/-! ## A318301.P16841552477525609126

`A000194(A148116(n))`
-/

namespace A318301.P16841552477525609126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148116 n).toNat

end

end A318301.P16841552477525609126

/-!
# A318303: a(0) = 0, a(n) = n + a(n-1) if n is odd, a(n) = -3*a(n/2) if n is even.

The programs for A318303, the canonical program `A318303.P12905835891502158968` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318303 has offset 0).

The definition of A318303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318303.P12905835891502158968

`lcm(2, n)-(3*a(floor(n/2))+n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318303

/-- `lcm(2, n)-(3*a(floor(n/2))+n)` -/
def P12905835891502158968.Spec : Prop :=
  ∀ n, P12905835891502158968.a n = A318303 n

theorem P12905835891502158968.correct : P12905835891502158968.Spec := by
  intro n
  simp only [A318303]

end A318303

/-! ## A318303.P17348482704974651728

`A004525(A266437(n))-3*a(floor(n/2))` with `a(0)=0`
-/

namespace A318303.P17348482704974651728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004525 (A266437 n).toNat - 3 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A318303.P17348482704974651728

namespace A318303

/-- `A004525(A266437(n))-3*a(floor(n/2))` -/
def P17348482704974651728.Spec : Prop :=
  ∀ n, P17348482704974651728.a n = A318303 n

end A318303

/-!
# A318304: a(n) = A083254(n)/A003557(n) = (2*A173557(n) - A007947(n)).

The programs for A318304, the canonical program `A318304.P11675093229014342811` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318304 has offset 1).

The definition of A318304 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318304.P18028551999240413556

`A173557(n+1)-A318305(n+1)`
-/

namespace A318304.P18028551999240413556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) - A318305 (n + 1)

end

end A318304.P18028551999240413556

namespace A318304

/-- `A173557(n+1)-A318305(n+1)` -/
def P18028551999240413556.Spec : Prop :=
  ∀ n, P18028551999240413556.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P194639777794711819

`A083254(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318304.P194639777794711819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083254 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A318304.P194639777794711819

namespace A318304

/-- `A083254(n+1)/A003557(n+1)` -/
def P194639777794711819.Spec : Prop :=
  ∀ n, P194639777794711819.a n = (A318304 (n + 1) : ℚ)

end A318304

/-! ## A318304.P11675093229014342811

`2*A173557(n+1)-A007947(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318304

/-- `2*A173557(n+1)-A007947(n+1)` -/
def P11675093229014342811.Spec : Prop :=
  ∀ n, P11675093229014342811.a n = A318304 (n + 1)

theorem P11675093229014342811.correct : P11675093229014342811.Spec := by
  intro n
  simp only [A318304, Nat.add_sub_cancel]

end A318304

/-! ## A318304.P6559015289278051242

`A083254(∏{p}[n+1, #])`
-/

namespace A318304.P6559015289278051242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318304.P6559015289278051242

namespace A318304

/-- `A083254(∏{p}[n+1, #])` -/
def P6559015289278051242.Spec : Prop :=
  ∀ n, P6559015289278051242.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P17825490540500589333

`∏{p}[n+1, #-1]-A051953(∏{p}[n+1, #])`
-/

namespace A318304.P17825490540500589333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) - A051953 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A318304.P17825490540500589333

namespace A318304

/-- `∏{p}[n+1, #-1]-A051953(∏{p}[n+1, #])` -/
def P17825490540500589333.Spec : Prop :=
  ∀ n, P17825490540500589333.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P16066342975028214144

`A083254(A007947(n+1))`
-/

namespace A318304.P16066342975028214144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A007947 (n + 1)).toNat

end

end A318304.P16066342975028214144

namespace A318304

/-- `A083254(A007947(n+1))` -/
def P16066342975028214144.Spec : Prop :=
  ∀ n, P16066342975028214144.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P15437871636189767018

`A007947(n+1)-2*A318305(n+1)`
-/

namespace A318304.P15437871636189767018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - 2 * A318305 (n + 1)

end

end A318304.P15437871636189767018

namespace A318304

/-- `A007947(n+1)-2*A318305(n+1)` -/
def P15437871636189767018.Spec : Prop :=
  ∀ n, P15437871636189767018.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P16595610776890987533

`abs(2*A023900(n+1))-A007947(n+1)`
-/

namespace A318304.P16595610776890987533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A023900 (n + 1)| - A007947 (n + 1)

end

end A318304.P16595610776890987533

namespace A318304

/-- `abs(2*A023900(n+1))-A007947(n+1)` -/
def P16595610776890987533.Spec : Prop :=
  ∀ n, P16595610776890987533.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P12883636921267845597

`A083254(A318305(n+1)+A173557(n+1))`
-/

namespace A318304.P12883636921267845597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A318305 (n + 1) + A173557 (n + 1)).toNat

end

end A318304.P12883636921267845597

namespace A318304

/-- `A083254(A318305(n+1)+A173557(n+1))` -/
def P12883636921267845597.Spec : Prop :=
  ∀ n, P12883636921267845597.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P421258794851667729

`A062570(A099985(n+1))-A007947(n+1)`
-/

namespace A318304.P421258794851667729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A099985 (n + 1)).toNat - A007947 (n + 1)

end

end A318304.P421258794851667729

namespace A318304

/-- `A062570(A099985(n+1))-A007947(n+1)` -/
def P421258794851667729.Spec : Prop :=
  ∀ n, P421258794851667729.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P15686928482754247540

`A173557(n+1)-A051953(A007947(n+1))`
-/

namespace A318304.P15686928482754247540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) - A051953 (A007947 (n + 1)).toNat

end

end A318304.P15686928482754247540

namespace A318304

/-- `A173557(n+1)-A051953(A007947(n+1))` -/
def P15686928482754247540.Spec : Prop :=
  ∀ n, P15686928482754247540.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P14181067035995961081

`A000010(A007947(n+1))-A318305(n+1)`
-/

namespace A318304.P14181067035995961081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat - A318305 (n + 1)

end

end A318304.P14181067035995961081

namespace A318304

/-- `A000010(A007947(n+1))-A318305(n+1)` -/
def P14181067035995961081.Spec : Prop :=
  ∀ n, P14181067035995961081.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P8074317806245636916

`(A000010(n+1)-A051953(n+1))/A003557(n+1)`
-/

namespace A318304.P8074317806245636916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A051953 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A318304.P8074317806245636916

namespace A318304

/-- `(A000010(n+1)-A051953(n+1))/A003557(n+1)` -/
def P8074317806245636916.Spec : Prop :=
  ∀ n, P8074317806245636916.a n = (A318304 (n + 1) : ℚ)

end A318304

/-! ## A318304.P14181527371814652179

`A173557(n+1)-A051953(n+1)/A003557(n+1)`
-/

namespace A318304.P14181527371814652179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) - (A051953 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A318304.P14181527371814652179

namespace A318304

/-- `A173557(n+1)-A051953(n+1)/A003557(n+1)` -/
def P14181527371814652179.Spec : Prop :=
  ∀ n, P14181527371814652179.a n = (A318304 (n + 1) : ℚ)

end A318304

/-! ## A318304.P11729256322083672303

`A000010(n+1)/A003557(n+1)-A318305(n+1)`
-/

namespace A318304.P11729256322083672303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) - (A318305 (n + 1) : ℚ)

end

end A318304.P11729256322083672303

namespace A318304

/-- `A000010(n+1)/A003557(n+1)-A318305(n+1)` -/
def P11729256322083672303.Spec : Prop :=
  ∀ n, P11729256322083672303.a n = (A318304 (n + 1) : ℚ)

end A318304

/-! ## A318304.P11695374232641883086

`A083254(n+1)/A000010(n+1)*A173557(n+1)`
-/

namespace A318304.P11695374232641883086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083254 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A318304.P11695374232641883086

namespace A318304

/-- `A083254(n+1)/A000010(n+1)*A173557(n+1)` -/
def P11695374232641883086.Spec : Prop :=
  ∀ n, P11695374232641883086.a n = (A318304 (n + 1) : ℚ)

end A318304

/-! ## A318304.P6068296207929580270

`2*A173557(n+1)-A007913(A102631(n+1))`
-/

namespace A318304.P6068296207929580270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173557 (n + 1) - A007913 (A102631 (n + 1)).toNat

end

end A318304.P6068296207929580270

namespace A318304

/-- `2*A173557(n+1)-A007913(A102631(n+1))` -/
def P6068296207929580270.Spec : Prop :=
  ∀ n, P6068296207929580270.a n = A318304 (n + 1)

end A318304

/-! ## A318304.P13573929410170233771

`A083254(A015052(n+1)²)/A015052(n+1)`
-/

namespace A318304.P13573929410170233771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083254 (A015052 (n + 1) ^ 2).toNat : ℚ) / (A015052 (n + 1) : ℚ)

end

end A318304.P13573929410170233771

namespace A318304

/-- `A083254(A015052(n+1)²)/A015052(n+1)` -/
def P13573929410170233771.Spec : Prop :=
  ∀ n, P13573929410170233771.a n = (A318304 (n + 1) : ℚ)

end A318304

/-! ## A318304.P3166855531838960508

`A083254(A015053(n+1)²)/A015053(n+1)`
-/

namespace A318304.P3166855531838960508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083254 (A015053 (n + 1) ^ 2).toNat : ℚ) / (A015053 (n + 1) : ℚ)

end

end A318304.P3166855531838960508

namespace A318304

/-- `A083254(A015053(n+1)²)/A015053(n+1)` -/
def P3166855531838960508.Spec : Prop :=
  ∀ n, P3166855531838960508.a n = (A318304 (n + 1) : ℚ)

end A318304

/-!
# A318305: a(n) = Product_{primes p dividing n} p - Product_{primes p dividing n} (p-1).

The programs for A318305, the canonical program `A318305.P17845263951644339002` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318305 has offset 1).

The definition of A318305 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318305.P17845263951644339002

`A007947(n+1)-A173557(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318305

/-- `A007947(n+1)-A173557(n+1)` -/
def P17845263951644339002.Spec : Prop :=
  ∀ n, P17845263951644339002.a n = A318305 (n + 1)

theorem P17845263951644339002.correct : P17845263951644339002.Spec := by
  intro n
  simp only [A318305, Nat.add_sub_cancel]

end A318305

/-! ## A318305.P16585846492722768054

`A173557(n+1)-A318304(n+1)`
-/

namespace A318305.P16585846492722768054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) - A318304 (n + 1)

end

end A318305.P16585846492722768054

namespace A318305

/-- `A173557(n+1)-A318304(n+1)` -/
def P16585846492722768054.Spec : Prop :=
  ∀ n, P16585846492722768054.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P5387342514656872689

`A051953(n+1)/A003557(n+1)`
-/

namespace A318305.P5387342514656872689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A318305.P5387342514656872689

namespace A318305

/-- `A051953(n+1)/A003557(n+1)` -/
def P5387342514656872689.Spec : Prop :=
  ∀ n, P5387342514656872689.a n = (A318305 (n + 1) : ℚ)

end A318305

/-! ## A318305.P11948637585821395840

`(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)/floor((n+1)/∏{p}[n+1, #])`
-/

namespace A318305.P11948637585821395840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) / (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌋ : ℚ)

end

end A318305.P11948637585821395840

namespace A318305

/-- `(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)/floor((n+1)/∏{p}[n+1, #])` -/
def P11948637585821395840.Spec : Prop :=
  ∀ n, P11948637585821395840.a n = (A318305 (n + 1) : ℚ)

end A318305

/-! ## A318305.P5246072365148150188

`(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)/round((n+1)/∏{p}[n+1, #])`
-/

namespace A318305.P5246072365148150188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) / (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)) : ℚ)

end

end A318305.P5246072365148150188

namespace A318305

/-- `(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)/round((n+1)/∏{p}[n+1, #])` -/
def P5246072365148150188.Spec : Prop :=
  ∀ n, P5246072365148150188.a n = (A318305 (n + 1) : ℚ)

end A318305

/-! ## A318305.P7375497813244131173

`A051953(∏{p}[n+1, #])`
-/

namespace A318305.P7375497813244131173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P7375497813244131173

namespace A318305

/-- `A051953(∏{p}[n+1, #])` -/
def P7375497813244131173.Spec : Prop :=
  ∀ n, P7375497813244131173.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P5788664712800518739

`A318841(∏{p}[n+1, #])`
-/

namespace A318305.P5788664712800518739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318841 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P5788664712800518739

namespace A318305

/-- `A318841(∏{p}[n+1, #])` -/
def P5788664712800518739.Spec : Prop :=
  ∀ n, P5788664712800518739.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P8096430766365992309

`A322582(∏{p}[n+1, #])`
-/

namespace A318305.P8096430766365992309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P8096430766365992309

namespace A318305

/-- `A322582(∏{p}[n+1, #])` -/
def P8096430766365992309.Spec : Prop :=
  ∀ n, P8096430766365992309.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P7308106609590886437

`A323410(∏{p}[n+1, #])`
-/

namespace A318305.P7308106609590886437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P7308106609590886437

namespace A318305

/-- `A323410(∏{p}[n+1, #])` -/
def P7308106609590886437.Spec : Prop :=
  ∀ n, P7308106609590886437.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P2801195545890206554

`A323413(∏{p}[n+1, #])`
-/

namespace A318305.P2801195545890206554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323413 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P2801195545890206554

namespace A318305

/-- `A323413(∏{p}[n+1, #])` -/
def P2801195545890206554.Spec : Prop :=
  ∀ n, P2801195545890206554.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P15670300745611794552

`A344439(∏{p}[n+1, #])`
-/

namespace A318305.P15670300745611794552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344439 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P15670300745611794552

namespace A318305

/-- `A344439(∏{p}[n+1, #])` -/
def P15670300745611794552.Spec : Prop :=
  ∀ n, P15670300745611794552.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P10836051028597360444

`A348971(∏{p}[n+1, #])`
-/

namespace A318305.P10836051028597360444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P10836051028597360444

namespace A318305

/-- `A348971(∏{p}[n+1, #])` -/
def P10836051028597360444.Spec : Prop :=
  ∀ n, P10836051028597360444.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P13962627522055653548

`A384655(∏{p}[n+1, #])`
-/

namespace A318305.P13962627522055653548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384655 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P13962627522055653548

namespace A318305

/-- `A384655(∏{p}[n+1, #])` -/
def P13962627522055653548.Spec : Prop :=
  ∀ n, P13962627522055653548.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P6664814752522344751

`A384656(∏{p}[n+1, #])`
-/

namespace A318305.P6664814752522344751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384656 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P6664814752522344751

namespace A318305

/-- `A384656(∏{p}[n+1, #])` -/
def P6664814752522344751.Spec : Prop :=
  ∀ n, P6664814752522344751.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P18104743710390177390

`A385133(∏{p}[n+1, #])`
-/

namespace A318305.P18104743710390177390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385133 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318305.P18104743710390177390

namespace A318305

/-- `A385133(∏{p}[n+1, #])` -/
def P18104743710390177390.Spec : Prop :=
  ∀ n, P18104743710390177390.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P15099423114826994838

`∏{p}[n+1, #]-A000010(∏{p}[n+1, #])`
-/

namespace A318305.P15099423114826994838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A000010 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A318305.P15099423114826994838

namespace A318305

/-- `∏{p}[n+1, #]-A000010(∏{p}[n+1, #])` -/
def P15099423114826994838.Spec : Prop :=
  ∀ n, P15099423114826994838.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P9868335795904788712

`A051953(A007947(n+1))`
-/

namespace A318305.P9868335795904788712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A007947 (n + 1)).toNat

end

end A318305.P9868335795904788712

namespace A318305

/-- `A051953(A007947(n+1))` -/
def P9868335795904788712.Spec : Prop :=
  ∀ n, P9868335795904788712.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P4825569444451736335

`A318841(n+1)-A066503(n+1)`
-/

namespace A318305.P4825569444451736335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318841 (n + 1) - A066503 (n + 1)

end

end A318305.P4825569444451736335

namespace A318305

/-- `A318841(n+1)-A066503(n+1)` -/
def P4825569444451736335.Spec : Prop :=
  ∀ n, P4825569444451736335.a n = A318305 (n + 1)

end A318305

/-! ## A318305.P11802285349826489302

`A053650(n+1)/A102631(n+1)`
-/

namespace A318305.P11802285349826489302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (A102631 (n + 1) : ℚ)

end

end A318305.P11802285349826489302

namespace A318305

/-- `A053650(n+1)/A102631(n+1)` -/
def P11802285349826489302.Spec : Prop :=
  ∀ n, P11802285349826489302.a n = (A318305 (n + 1) : ℚ)

end A318305

/-! ## A318305.P10430587810943809747

`A384655((n+1)/A003557(n+1))`
-/

namespace A318305.P10430587810943809747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A318305.P10430587810943809747

namespace A318305

/-- `A384655((n+1)/A003557(n+1))` -/
def P10430587810943809747.Spec : Prop :=
  ∀ n, P10430587810943809747.a n = A318305 (n + 1)

end A318305

/-!
# A318306: Additive with a(p^e) = A002487(e).

The programs for A318306, the canonical program `A318306.P1364741733644479395` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318306 has offset 1).

The definition of A318306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318306.P5591549421768766707

`A007814(A318307(n+1))`
-/

namespace A318306.P5591549421768766707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318307 (n + 1)).toNat

end

end A318306.P5591549421768766707

namespace A318306

/-- `A007814(A318307(n+1))` -/
def P5591549421768766707.Spec : Prop :=
  ∀ n, P5591549421768766707.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P1364741733644479395

`∑{e}[n+1, A002487(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318306

/-- `∑{e}[n+1, A002487(#)]` -/
def P1364741733644479395.Spec : Prop :=
  ∀ n, P1364741733644479395.a n = A318306 (n + 1)

theorem P1364741733644479395.correct : P1364741733644479395.Spec := by
  intro n
  simp only [A318306, Nat.add_sub_cancel]

end A318306

/-! ## A318306.P11028568941588906719

`∑{e}[A318470(n+1), #]`
-/

namespace A318306.P11028568941588906719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A318306.P11028568941588906719

namespace A318306

/-- `∑{e}[A318470(n+1), #]` -/
def P11028568941588906719.Spec : Prop :=
  ∀ n, (P11028568941588906719.a n : ℤ) = A318306 (n + 1)

end A318306

/-! ## A318306.P15057280116503999559

`A001222(A318470(n+1))`
-/

namespace A318306.P15057280116503999559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318470 (n + 1)).toNat

end

end A318306.P15057280116503999559

namespace A318306

/-- `A001222(A318470(n+1))` -/
def P15057280116503999559.Spec : Prop :=
  ∀ n, P15057280116503999559.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P12697454738564237815

`A000120(A318307(n+1)-1)`
-/

namespace A318306.P12697454738564237815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318307 (n + 1) - 1).toNat

end

end A318306.P12697454738564237815

namespace A318306

/-- `A000120(A318307(n+1)-1)` -/
def P12697454738564237815.Spec : Prop :=
  ∀ n, P12697454738564237815.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P12783558555074639737

`A002487(A318307(n+1)-1)`
-/

namespace A318306.P12783558555074639737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A318307 (n + 1) - 1).toNat

end

end A318306.P12783558555074639737

namespace A318306

/-- `A002487(A318307(n+1)-1)` -/
def P12783558555074639737.Spec : Prop :=
  ∀ n, P12783558555074639737.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P16066065776539428267

`A321154(2*A318307(n+1))`
-/

namespace A318306.P16066065776539428267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 (2 * A318307 (n + 1)).toNat

end

end A318306.P16066065776539428267

namespace A318306

/-- `A321154(2*A318307(n+1))` -/
def P16066065776539428267.Spec : Prop :=
  ∀ n, P16066065776539428267.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P13258954963702111661

`∑{d}[A318307(n+1), A001221(#)]`
-/

namespace A318306.P13258954963702111661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A318306.P13258954963702111661

namespace A318306

/-- `∑{d}[A318307(n+1), A001221(#)]` -/
def P13258954963702111661.Spec : Prop :=
  ∀ n, P13258954963702111661.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P1860366286201930011

`A032741(A318307(n+1)²)/2`
-/

namespace A318306.P1860366286201930011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (A318307 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318306.P1860366286201930011

namespace A318306

/-- `A032741(A318307(n+1)²)/2` -/
def P1860366286201930011.Spec : Prop :=
  ∀ n, P1860366286201930011.a n = (A318306 (n + 1) : ℚ)

end A318306

/-! ## A318306.P11767822742228544527

`A317837(A318307(n+1)²)/2`
-/

namespace A318306.P11767822742228544527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317837 (A318307 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318306.P11767822742228544527

namespace A318306

/-- `A317837(A318307(n+1)²)/2` -/
def P11767822742228544527.Spec : Prop :=
  ∀ n, P11767822742228544527.a n = (A318306 (n + 1) : ℚ)

end A318306

/-! ## A318306.P10175894054403631175

`A007306(A318307(n+1)+1)-2`
-/

namespace A318306.P10175894054403631175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A318307 (n + 1) + 1).toNat - 2

end

end A318306.P10175894054403631175

namespace A318306

/-- `A007306(A318307(n+1)+1)-2` -/
def P10175894054403631175.Spec : Prop :=
  ∀ n, P10175894054403631175.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P9473697597336795509

`A317837(A318307(2*n+1-n))`
-/

namespace A318306.P9473697597336795509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (A318307 (2 * n + 1 - n)).toNat

end

end A318306.P9473697597336795509

namespace A318306

/-- `A317837(A318307(2*n+1-n))` -/
def P9473697597336795509.Spec : Prop :=
  ∀ n, P9473697597336795509.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P8363372031166099838

`val(A318307(n+1)*A318351(n), 2)`
-/

namespace A318306.P8363372031166099838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318307 (n + 1) * A318351 n).toNat 2

end

end A318306.P8363372031166099838

namespace A318306

/-- `val(A318307(n+1)*A318351(n), 2)` -/
def P8363372031166099838.Spec : Prop :=
  ∀ n, (P8363372031166099838.a n : ℤ) = A318306 (n + 1)

end A318306

/-! ## A318306.P11521940621947565085

`A032741(A318307(n+1))*A057427(n)`
-/

namespace A318306.P11521940621947565085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A318307 (n + 1)).toNat * A057427 n

end

end A318306.P11521940621947565085

namespace A318306

/-- `A032741(A318307(n+1))*A057427(n)` -/
def P11521940621947565085.Spec : Prop :=
  ∀ n, P11521940621947565085.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P805228895838934504

`val(A318307(n+1), A318307(A318351(n)))`
-/

namespace A318306.P805228895838934504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318307 (n + 1)).toNat (A318307 (A318351 n).toNat).toNat

end

end A318306.P805228895838934504

namespace A318306

/-- `val(A318307(n+1), A318307(A318351(n)))` -/
def P805228895838934504.Spec : Prop :=
  ∀ n, (P805228895838934504.a n : ℤ) = A318306 (n + 1)

end A318306

/-! ## A318306.P558519076869718381

`val(A318307(n+1), A014963(A318307(n+2)))`
-/

namespace A318306.P558519076869718381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318307 (n + 1)).toNat (A014963 (A318307 (n + 2)).toNat).toNat

end

end A318306.P558519076869718381

namespace A318306

/-- `val(A318307(n+1), A014963(A318307(n+2)))` -/
def P558519076869718381.Spec : Prop :=
  ∀ n, (P558519076869718381.a n : ℤ) = A318306 (n + 1)

end A318306

/-! ## A318306.P15466510827962076727

`A048675(A318470(A318470(A193231(A193231(n+1)))))`
-/

namespace A318306.P15466510827962076727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A318470 (A318470 (A193231 (A193231 (n + 1)).toNat).toNat).toNat).toNat

end

end A318306.P15466510827962076727

namespace A318306

/-- `A048675(A318470(A318470(A193231(A193231(n+1)))))` -/
def P15466510827962076727.Spec : Prop :=
  ∀ n, P15466510827962076727.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P7729197177136909701

`A048675(A318470(A003961(A318470(A003961(n+1)))))`
-/

namespace A318306.P7729197177136909701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A318470 (A003961 (A318470 (A003961 (n + 1)).toNat).toNat).toNat).toNat

end

end A318306.P7729197177136909701

namespace A318306

/-- `A048675(A318470(A003961(A318470(A003961(n+1)))))` -/
def P7729197177136909701.Spec : Prop :=
  ∀ n, P7729197177136909701.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P17784608525411403914

`∑{e}[n+1, A001222(4^#+1)]`
-/

namespace A318306.P17784608525411403914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (4 ^ Nat.factorization (f1 n) p + 1)

end

end A318306.P17784608525411403914

namespace A318306

/-- `∑{e}[n+1, A001222(4^#+1)]` -/
def P17784608525411403914.Spec : Prop :=
  ∀ n, P17784608525411403914.a n = A318306 (n + 1)

end A318306

/-! ## A318306.P6070692319577292708

`A058061(A370566(n+1))`
-/

namespace A318306.P6070692319577292708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A370566 (n + 1)).toNat

end

end A318306.P6070692319577292708

namespace A318306

/-- `A058061(A370566(n+1))` -/
def P6070692319577292708.Spec : Prop :=
  ∀ n, P6070692319577292708.a n = A318306 (n + 1)

end A318306

/-!
# A318307: Multiplicative with a(p^e) = 2^A002487(e).

The programs for A318307, the canonical program `A318307.P12888497718899274042` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318307 has offset 1).

The definition of A318307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318306, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318307.P12888497718899274042

`2^A318306(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318307

/-- `2^A318306(n+1)` -/
def P12888497718899274042.Spec : Prop :=
  ∀ n, P12888497718899274042.a n = (A318307 (n + 1) : ℚ)

end A318307

/-! ## A318307.P17536958498433655936

`A061142(A318470(n+1))`
-/

namespace A318307.P17536958498433655936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A318470 (n + 1)).toNat

end

end A318307.P17536958498433655936

namespace A318307

/-- `A061142(A318470(n+1))` -/
def P17536958498433655936.Spec : Prop :=
  ∀ n, P17536958498433655936.a n = A318307 (n + 1)

end A318307

/-! ## A318307.P15616904204599829122

`∏{e}[∏{e}[n+1, A260443(#)], 2^#]`
-/

namespace A318307.P15616904204599829122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A260443 (Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p

end

end A318307.P15616904204599829122

namespace A318307

/-- `∏{e}[∏{e}[n+1, A260443(#)], 2^#]` -/
def P15616904204599829122.Spec : Prop :=
  ∀ n, (P15616904204599829122.a n : ℤ) = A318307 (n + 1)

end A318307

/-! ## A318307.P9444031038091937226

`A000079(∑{e}[n+1, A002487(#)])`
-/

namespace A318307.P9444031038091937226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), A002487 (Nat.factorization (f1 n) p)).toNat

end

end A318307.P9444031038091937226

namespace A318307

/-- `A000079(∑{e}[n+1, A002487(#)])` -/
def P9444031038091937226.Spec : Prop :=
  ∀ n, P9444031038091937226.a n = A318307 (n + 1)

end A318307

/-! ## A318307.P8096087852173407905

`A020639(2*(n+2))^A001222(A318470(n+1))`
-/

namespace A318307.P8096087852173407905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 2)) : ℚ) ^ (A001222 (A318470 (n + 1)).toNat : ℤ)

end

end A318307.P8096087852173407905

namespace A318307

/-- `A020639(2*(n+2))^A001222(A318470(n+1))` -/
def P8096087852173407905.Spec : Prop :=
  ∀ n, P8096087852173407905.a n = (A318307 (n + 1) : ℚ)

end A318307

/-! ## A318307.P8539297126062518089

`A000079(A318306(n+1)+A007814(2*n+1))`
-/

namespace A318307.P8539297126062518089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318306 (n + 1) + A007814 (2 * n + 1)).toNat

end

end A318307.P8539297126062518089

namespace A318307

/-- `A000079(A318306(n+1)+A007814(2*n+1))` -/
def P8539297126062518089.Spec : Prop :=
  ∀ n, P8539297126062518089.a n = A318307 (n + 1)

end A318307

/-! ## A318307.P5286266848186239331

`A000079(n)/A000079(n-A318306(n+1))`
-/

namespace A318307.P5286266848186239331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000079 ((n : ℤ) - A318306 (n + 1)).toNat : ℚ)

end

end A318307.P5286266848186239331

namespace A318307

/-- `A000079(n)/A000079(n-A318306(n+1))` -/
def P5286266848186239331.Spec : Prop :=
  ∀ n, P5286266848186239331.a n = (A318307 (n + 1) : ℚ)

end A318307

/-! ## A318307.P17070695999387205630

`A000079(A318306(n+1)+n)/A000079(n)`
-/

namespace A318307.P17070695999387205630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A318306 (n + 1) + (n : ℤ)).toNat : ℚ) / (A000079 n : ℚ)

end

end A318307.P17070695999387205630

namespace A318307

/-- `A000079(A318306(n+1)+n)/A000079(n)` -/
def P17070695999387205630.Spec : Prop :=
  ∀ n, P17070695999387205630.a n = (A318307 (n + 1) : ℚ)

end A318307

/-! ## A318307.P1842259592023921533

`∏{e}[n+1, A127973(#²)]`
-/

namespace A318307.P1842259592023921533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A127973 (Nat.factorization (f1 n) p ^ 2)

end

end A318307.P1842259592023921533

namespace A318307

/-- `∏{e}[n+1, A127973(#²)]` -/
def P1842259592023921533.Spec : Prop :=
  ∀ n, P1842259592023921533.a n = A318307 (n + 1)

end A318307

/-! ## A318307.P11390477482972937690

`A318316((n+1)²)/A318316(n+1)`
-/

namespace A318307.P11390477482972937690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318316 ((n + 1) ^ 2) : ℚ) / (A318316 (n + 1) : ℚ)

end

end A318307.P11390477482972937690

namespace A318307

/-- `A318316((n+1)²)/A318316(n+1)` -/
def P11390477482972937690.Spec : Prop :=
  ∀ n, P11390477482972937690.a n = (A318307 (n + 1) : ℚ)

end A318307

/-! ## A318307.P2040478237432837033

`A003958(A247513((n+1)²))`
-/

namespace A318307.P2040478237432837033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A247513 ((n + 1) ^ 2)).toNat

end

end A318307.P2040478237432837033

namespace A318307

/-- `A003958(A247513((n+1)²))` -/
def P2040478237432837033.Spec : Prop :=
  ∀ n, P2040478237432837033.a n = A318307 (n + 1)

end A318307

/-! ## A318307.P3213175637585938032

`A000010(2*A287620((n+1)²))`
-/

namespace A318307.P3213175637585938032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A287620 ((n + 1) ^ 2)).toNat

end

end A318307.P3213175637585938032

namespace A318307

/-- `A000010(2*A287620((n+1)²))` -/
def P3213175637585938032.Spec : Prop :=
  ∀ n, P3213175637585938032.a n = A318307 (n + 1)

end A318307

/-!
# A318310: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000120(i) = A000120(j) and A033879(i) = A033879(j), for all i, j >= 0.

The programs for A318310, there is no canonical definition to state claims against.
-/

/-! ## A318310.P16071370192759710782

`xor(A185274(A092517(n+1)), A286449(n+1))`
-/

namespace A318310.P16071370192759710782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185274 (A092517 (n + 1)).toNat) (A286449 (n + 1))

end

end A318310.P16071370192759710782

/-!
# A318311: Filter sequence combining A278222(n) and A294898(n).

The programs for A318311, there is no canonical definition to state claims against.
-/

/-! ## A318311.P2103769801558996100

`A324346(n)-A059801(n+1)%2`
-/

namespace A318311.P2103769801558996100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324346 n - Int.tmod (A059801 (n + 1)) 2

end

end A318311.P2103769801558996100

/-! ## A318311.P4993556432026941444

`A324400(n+1)-A057427(∑[2*n²])`
-/

namespace A318311.P4993556432026941444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1) - A057427 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318311.P4993556432026941444

/-! ## A318311.P12628492940934383206

`A324347(n)-A057427(∑[4*C(n, 2)]+n)`
-/

namespace A318311.P12628492940934383206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 n - A057427 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A318311.P12628492940934383206

/-! ## A318311.P7148115249703702602

`A324400(n+1)-A000035(p?[round(8*n/7)]²)`
-/

namespace A318311.P7148115249703702602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1) - A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A318311.P7148115249703702602

/-! ## A318311.P10410636952597405756

`A324346(n)+A057428(A006331(n))`
-/

namespace A318311.P10410636952597405756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324346 n + A057428 (A006331 n).toNat

end

end A318311.P10410636952597405756

/-!
# A318312: Multiplicative with a(p^e) = 2^A000041(e).

The programs for A318312, there is no canonical definition to state claims against.
-/

/-! ## A318312.P4597181154502148176

`2^A008481(n+1)`
-/

namespace A318312.P4597181154502148176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008481 (n + 1) : ℤ)

end

end A318312.P4597181154502148176

/-! ## A318312.P2897109554750089148

`2^∑{e}[n+1, A000041(#)]`
-/

namespace A318312.P2897109554750089148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p) : ℤ)

end

end A318312.P2897109554750089148

/-! ## A318312.P10219637458872006042

`2^∑{e}[n+1, A330643(#)]`
-/

namespace A318312.P10219637458872006042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A330643 (Nat.factorization (f1 n) p) : ℤ)

end

end A318312.P10219637458872006042

/-! ## A318312.P2923730524970082360

`A000079(A008481(n+1))`
-/

namespace A318312.P2923730524970082360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008481 (n + 1)).toNat

end

end A318312.P2923730524970082360

/-! ## A318312.P9478478292001586199

`A011782(A008481(n+1)+1)`
-/

namespace A318312.P9478478292001586199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008481 (n + 1) + 1).toNat

end

end A318312.P9478478292001586199

/-! ## A318312.P16780023619545423484

`A131577(A008481(n+1)+1)`
-/

namespace A318312.P16780023619545423484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A008481 (n + 1) + 1).toNat

end

end A318312.P16780023619545423484

/-! ## A318312.P17122924765576098437

`A000079(∑{e}[n+1, A000041(#)])`
-/

namespace A318312.P17122924765576098437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)).toNat

end

end A318312.P17122924765576098437

/-! ## A318312.P532610485878754561

`A059268(2*A008481(n+1)²)`
-/

namespace A318312.P532610485878754561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A008481 (n + 1) ^ 2).toNat

end

end A318312.P532610485878754561

/-! ## A318312.P16202566163423694283

`A059268(2*A008481(n+1)*A008481(n+1))`
-/

namespace A318312.P16202566163423694283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A008481 (n + 1) * A008481 (n + 1)).toNat

end

end A318312.P16202566163423694283

/-!
# A318313: Numerators of the sequence whose Dirichlet convolution with itself yields A068068, number of odd unitary divisors of n.

The programs for A318313, the canonical program `A318313.P9581478745777910388` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318313 has offset 1).

The definition of A318313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318313.P9581478745777910388

`A046643(lcm(A000188(n+1), A006519(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318313

/-- `A046643(lcm(A000188(n+1), A006519(n+1)))` -/
def P9581478745777910388.Spec : Prop :=
  ∀ n, P9581478745777910388.a n = A318313 (n + 1)

theorem P9581478745777910388.correct : P9581478745777910388.Spec := by
  intro n
  simp only [A318313, Nat.add_sub_cancel]

end A318313

/-! ## A318313.P16813728031025323978

`A317933((n+1)*(n+1-and(n, n+1)))`
-/

namespace A318313.P16813728031025323978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 ((n + 1 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))).toNat

end

end A318313.P16813728031025323978

namespace A318313

/-- `A317933((n+1)*(n+1-and(n, n+1)))` -/
def P16813728031025323978.Spec : Prop :=
  ∀ n, P16813728031025323978.a n = A318313 (n + 1)

end A318313

/-! ## A318313.P11515817084003250826

`A317933((n+1)*A006519(n+1))`
-/

namespace A318313.P11515817084003250826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 ((n + 1 : ℤ) * A006519 (n + 1)).toNat

end

end A318313.P11515817084003250826

namespace A318313

/-- `A317933((n+1)*A006519(n+1))` -/
def P11515817084003250826.Spec : Prop :=
  ∀ n, P11515817084003250826.a n = A318313 (n + 1)

end A318313

/-! ## A318313.P15363438135213340978

`A317933(A166700(n+1))`
-/

namespace A318313.P15363438135213340978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A166700 (n + 1)).toNat

end

end A318313.P15363438135213340978

namespace A318313

/-- `A317933(A166700(n+1))` -/
def P15363438135213340978.Spec : Prop :=
  ∀ n, P15363438135213340978.a n = A318313 (n + 1)

end A318313

/-! ## A318313.P5918851950221363755

`A317933(A006519(n+1)*A103517(n))`
-/

namespace A318313.P5918851950221363755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (A006519 (n + 1) * A103517 n).toNat

end

end A318313.P5918851950221363755

namespace A318313

/-- `A317933(A006519(n+1)*A103517(n))` -/
def P5918851950221363755.Spec : Prop :=
  ∀ n, P5918851950221363755.a n = A318313 (n + 1)

end A318313

/-! ## A318313.P3049088838305115183

`A026741(A053164(n+1)*A318453(n+1))`
-/

namespace A318313.P3049088838305115183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A053164 (n + 1) * A318453 (n + 1)).toNat

end

end A318313.P3049088838305115183

namespace A318313

/-- `A026741(A053164(n+1)*A318453(n+1))` -/
def P3049088838305115183.Spec : Prop :=
  ∀ n, P3049088838305115183.a n = A318313 (n + 1)

end A318313

/-! ## A318313.P58796146514005177

`A071471(A008835(n+1))*A318453(n+1)`
-/

namespace A318313.P58796146514005177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071471 (A008835 (n + 1)).toNat * A318453 (n + 1)

end

end A318313.P58796146514005177

namespace A318313

/-- `A071471(A008835(n+1))*A318453(n+1)` -/
def P58796146514005177.Spec : Prop :=
  ∀ n, P58796146514005177.a n = A318313 (n + 1)

end A318313

/-! ## A318313.P13237063742220352699

`A318453(n+1)+A308857(A290600(A003557(n+1)))`
-/

namespace A318313.P13237063742220352699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318453 (n + 1) + A308857 (A290600 (A003557 (n + 1)).toNat).toNat

end

end A318313.P13237063742220352699

namespace A318313

/-- `A318453(n+1)+A308857(A290600(A003557(n+1)))` -/
def P13237063742220352699.Spec : Prop :=
  ∀ n, P13237063742220352699.a n = A318313 (n + 1)

end A318313

/-! ## A318313.P1571924107659955839

`or(A147850(n+1), A318317(A079065(n+1)))`
-/

namespace A318313.P1571924107659955839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147850 (n + 1)) (A318317 (A079065 (n + 1)).toNat)

end

end A318313.P1571924107659955839

namespace A318313

/-- `or(A147850(n+1), A318317(A079065(n+1)))` -/
def P1571924107659955839.Spec : Prop :=
  ∀ n, P1571924107659955839.a n = A318313 (n + 1)

end A318313

/-!
# A318314: Denominators of the sequence whose Dirichlet convolution with itself yields A068068, number of odd unitary divisors of n.

The programs for A318314, the canonical program `A318314.P6359373759309910718` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318314 has offset 1).

The definition of A318314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317934, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318314.P15044645783497285213

`2^A318315(n+1)`
-/

namespace A318314.P15044645783497285213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318315 (n + 1) : ℤ)

end

end A318314.P15044645783497285213

namespace A318314

/-- `2^A318315(n+1)` -/
def P15044645783497285213.Spec : Prop :=
  ∀ n, P15044645783497285213.a n = (A318314 (n + 1) : ℚ)

end A318314

/-! ## A318314.P6359373759309910718

`A006519(n+1)*A317934(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318314

/-- `A006519(n+1)*A317934(n+1)` -/
def P6359373759309910718.Spec : Prop :=
  ∀ n, P6359373759309910718.a n = A318314 (n + 1)

theorem P6359373759309910718.correct : P6359373759309910718.Spec := by
  intro n
  simp only [A318314, Nat.add_sub_cancel]

end A318314

/-! ## A318314.P19956796750720160

`2^val((n+1)*∏{e}[n+1, #!], 2)`
-/

namespace A318314.P19956796750720160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))) 2

end

end A318314.P19956796750720160

namespace A318314

/-- `2^val((n+1)*∏{e}[n+1, #!], 2)` -/
def P19956796750720160.Spec : Prop :=
  ∀ n, (P19956796750720160.a n : ℤ) = A318314 (n + 1)

end A318314

/-! ## A318314.P8832459598198523726

`2^val((n+1)*A112624(n+1), 2)`
-/

namespace A318314.P8832459598198523726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation ((n + 1 : ℤ) * A112624 (n + 1)).toNat 2

end

end A318314.P8832459598198523726

namespace A318314

/-- `2^val((n+1)*A112624(n+1), 2)` -/
def P8832459598198523726.Spec : Prop :=
  ∀ n, (P8832459598198523726.a n : ℤ) = A318314 (n + 1)

end A318314

/-! ## A318314.P6718353884584850576

`A000079(A318315(n+1))`
-/

namespace A318314.P6718353884584850576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318315 (n + 1)).toNat

end

end A318314.P6718353884584850576

namespace A318314

/-- `A000079(A318315(n+1))` -/
def P6718353884584850576.Spec : Prop :=
  ∀ n, P6718353884584850576.a n = A318314 (n + 1)

end A318314

/-! ## A318314.P1890495755520879021

`2^(A317946(n+1)+A007814(n+1))`
-/

namespace A318314.P1890495755520879021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317946 (n + 1) + A007814 (n + 1) : ℤ)

end

end A318314.P1890495755520879021

namespace A318314

/-- `2^(A317946(n+1)+A007814(n+1))` -/
def P1890495755520879021.Spec : Prop :=
  ∀ n, P1890495755520879021.a n = (A318314 (n + 1) : ℚ)

end A318314

/-! ## A318314.P15426162242949255859

`A000079(A007814(n+1))*A317934(n+1)`
-/

namespace A318314.P15426162242949255859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A317934 (n + 1)

end

end A318314.P15426162242949255859

namespace A318314

/-- `A000079(A007814(n+1))*A317934(n+1)` -/
def P15426162242949255859.Spec : Prop :=
  ∀ n, P15426162242949255859.a n = A318314 (n + 1)

end A318314

/-! ## A318314.P4799600475819395974

`A046644(n+1)/A299150(n+1)*A317934(n+1)`
-/

namespace A318314.P4799600475819395974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ) * (A317934 (n + 1) : ℚ)

end

end A318314.P4799600475819395974

namespace A318314

/-- `A046644(n+1)/A299150(n+1)*A317934(n+1)` -/
def P4799600475819395974.Spec : Prop :=
  ∀ n, P4799600475819395974.a n = (A318314 (n + 1) : ℚ)

end A318314

/-! ## A318314.P16393236622947233439

`A317934(A370564(n+1))`
-/

namespace A318314.P16393236622947233439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (A370564 (n + 1)).toNat

end

end A318314.P16393236622947233439

namespace A318314

/-- `A317934(A370564(n+1))` -/
def P16393236622947233439.Spec : Prop :=
  ∀ n, P16393236622947233439.a n = A318314 (n + 1)

end A318314

/-! ## A318314.P466558987421602381

`A006519(n+1)*A006519(A112624(n+1))`
-/

namespace A318314.P466558987421602381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A006519 (A112624 (n + 1)).toNat

end

end A318314.P466558987421602381

namespace A318314

/-- `A006519(n+1)*A006519(A112624(n+1))` -/
def P466558987421602381.Spec : Prop :=
  ∀ n, P466558987421602381.a n = A318314 (n + 1)

end A318314

/-!
# A318315: The 2-adic valuation of A318314.

The programs for A318315, the canonical program `A318315.P13571981915240890591` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318315 has offset 1).

The definition of A318315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318315.P17723095645034257656

`val(A318314(n+1), 2)`
-/

namespace A318315.P17723095645034257656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318314 (n + 1)).toNat 2

end

end A318315.P17723095645034257656

namespace A318315

/-- `val(A318314(n+1), 2)` -/
def P17723095645034257656.Spec : Prop :=
  ∀ n, (P17723095645034257656.a n : ℤ) = A318315 (n + 1)

end A318315

/-! ## A318315.P13571981915240890591

`A007814(A318314(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318315

/-- `A007814(A318314(n+1))` -/
def P13571981915240890591.Spec : Prop :=
  ∀ n, P13571981915240890591.a n = A318315 (n + 1)

theorem P13571981915240890591.correct : P13571981915240890591.Spec := by
  intro n
  simp only [A318315, Nat.add_sub_cancel]

end A318315

/-! ## A318315.P10302370035083396327

`val((n+1)*∏{e}[n+1, #!], 2)`
-/

namespace A318315.P10302370035083396327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))) 2

end

end A318315.P10302370035083396327

namespace A318315

/-- `val((n+1)*∏{e}[n+1, #!], 2)` -/
def P10302370035083396327.Spec : Prop :=
  ∀ n, (P10302370035083396327.a n : ℤ) = A318315 (n + 1)

end A318315

/-! ## A318315.P16285329949790355751

`val(n+1, 2)+log2(A317934(n+1))`
-/

namespace A318315.P16285329949790355751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℝ) + Real.logb 2 (A317934 (n + 1) : ℝ)

end

end A318315.P16285329949790355751

namespace A318315

/-- `val(n+1, 2)+log2(A317934(n+1))` -/
def P16285329949790355751.Spec : Prop :=
  ∀ n, P16285329949790355751.a n = (A318315 (n + 1) : ℝ)

end A318315

/-! ## A318315.P5846380353503079770

`A317946(n+1)+A007814(n+1)`
-/

namespace A318315.P5846380353503079770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (n + 1) + A007814 (n + 1)

end

end A318315.P5846380353503079770

namespace A318315

/-- `A317946(n+1)+A007814(n+1)` -/
def P5846380353503079770.Spec : Prop :=
  ∀ n, P5846380353503079770.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P10225117227866288629

`A046645(n+1)-A087436(n+1)`
-/

namespace A318315.P10225117227866288629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A087436 (n + 1)

end

end A318315.P10225117227866288629

namespace A318315

/-- `A046645(n+1)-A087436(n+1)` -/
def P10225117227866288629.Spec : Prop :=
  ∀ n, P10225117227866288629.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P6654193055978093203

`A305439(n+1)-A106799(n+1)`
-/

namespace A318315.P6654193055978093203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305439 (n + 1) - A106799 (n + 1)

end

end A318315.P6654193055978093203

namespace A318315

/-- `A305439(n+1)-A106799(n+1)` -/
def P6654193055978093203.Spec : Prop :=
  ∀ n, P6654193055978093203.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P6795580447907427823

`log2(A006519(n+1)*A317934(n+1))`
-/

namespace A318315.P6795580447907427823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006519 (n + 1) * A317934 (n + 1) : ℝ)

end

end A318315.P6795580447907427823

namespace A318315

/-- `log2(A006519(n+1)*A317934(n+1))` -/
def P6795580447907427823.Spec : Prop :=
  ∀ n, P6795580447907427823.a n = (A318315 (n + 1) : ℝ)

end A318315

/-! ## A318315.P10973219915577576302

`A007814(n+1)+A007814(A317934(n+1))`
-/

namespace A318315.P10973219915577576302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A317934 (n + 1)).toNat

end

end A318315.P10973219915577576302

namespace A318315

/-- `A007814(n+1)+A007814(A317934(n+1))` -/
def P10973219915577576302.Spec : Prop :=
  ∀ n, P10973219915577576302.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P2364493975174970625

`A011371(n+1)+A317946(n+1)-A011371(n)`
-/

namespace A318315.P2364493975174970625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A317946 (n + 1) - A011371 n)

end

end A318315.P2364493975174970625

namespace A318315

/-- `A011371(n+1)+A317946(n+1)-A011371(n)` -/
def P2364493975174970625.Spec : Prop :=
  ∀ n, P2364493975174970625.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P10524018863618814771

`A007814(n+1)+A046645(n+1)-A001222(n+1)`
-/

namespace A318315.P10524018863618814771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A046645 (n + 1) - A001222 (n + 1))

end

end A318315.P10524018863618814771

namespace A318315

/-- `A007814(n+1)+A046645(n+1)-A001222(n+1)` -/
def P10524018863618814771.Spec : Prop :=
  ∀ n, P10524018863618814771.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P3894360906569268136

`A337821(2*n+1)+A317946(n+1)`
-/

namespace A318315.P3894360906569268136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (2 * n + 1) + A317946 (n + 1)

end

end A318315.P3894360906569268136

namespace A318315

/-- `A337821(2*n+1)+A317946(n+1)` -/
def P3894360906569268136.Spec : Prop :=
  ∀ n, P3894360906569268136.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P8430324478841787023

`∑{d}[A318314(n+1), A001221(#)]`
-/

namespace A318315.P8430324478841787023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A318315.P8430324478841787023

namespace A318315

/-- `∑{d}[A318314(n+1), A001221(#)]` -/
def P8430324478841787023.Spec : Prop :=
  ∀ n, P8430324478841787023.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P16418820134361321477

`A001222(A318314(n+1)+A063524(n))`
-/

namespace A318315.P16418820134361321477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318314 (n + 1) + A063524 n).toNat

end

end A318315.P16418820134361321477

namespace A318315

/-- `A001222(A318314(n+1)+A063524(n))` -/
def P16418820134361321477.Spec : Prop :=
  ∀ n, P16418820134361321477.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P18348229907776123749

`A001222(A318314(n+1))%A046644(n+1)`
-/

namespace A318315.P18348229907776123749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A318314 (n + 1)).toNat) (A046644 (n + 1))

end

end A318315.P18348229907776123749

namespace A318315

/-- `A001222(A318314(n+1))%A046644(n+1)` -/
def P18348229907776123749.Spec : Prop :=
  ∀ n, P18348229907776123749.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P6201246236740631813

`A001222(lcm(A317934(n+1), A318314(n+1)))`
-/

namespace A318315.P6201246236740631813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A317934 (n + 1)) (A318314 (n + 1)))

end

end A318315.P6201246236740631813

namespace A318315

/-- `A001222(lcm(A317934(n+1), A318314(n+1)))` -/
def P6201246236740631813.Spec : Prop :=
  ∀ n, P6201246236740631813.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P6232668159558846555

`A317946((n+1)*A006519(n+1))`
-/

namespace A318315.P6232668159558846555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 ((n + 1 : ℤ) * A006519 (n + 1)).toNat

end

end A318315.P6232668159558846555

namespace A318315

/-- `A317946((n+1)*A006519(n+1))` -/
def P6232668159558846555.Spec : Prop :=
  ∀ n, P6232668159558846555.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P2368671542796054729

`A317946(A370564(n+1))`
-/

namespace A318315.P2368671542796054729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (A370564 (n + 1)).toNat

end

end A318315.P2368671542796054729

namespace A318315

/-- `A317946(A370564(n+1))` -/
def P2368671542796054729.Spec : Prop :=
  ∀ n, P2368671542796054729.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P13872350528253498260

`A000120(A318314(n+1)-1)`
-/

namespace A318315.P13872350528253498260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318314 (n + 1) - 1).toNat

end

end A318315.P13872350528253498260

namespace A318315

/-- `A000120(A318314(n+1)-1)` -/
def P13872350528253498260.Spec : Prop :=
  ∀ n, P13872350528253498260.a n = A318315 (n + 1)

end A318315

/-! ## A318315.P12405069439166116355

`A002487(A318314(n+1)-1)`
-/

namespace A318315.P12405069439166116355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A318314 (n + 1) - 1).toNat

end

end A318315.P12405069439166116355

namespace A318315

/-- `A002487(A318314(n+1)-1)` -/
def P12405069439166116355.Spec : Prop :=
  ∀ n, P12405069439166116355.a n = A318315 (n + 1)

end A318315

/-!
# A318316: Multiplicative with a(p^e) = 2^A007306(e).

The programs for A318316, the canonical program `A318316.P7822985467475682579` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318316 has offset 1).

The definition of A318316 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318316.P7822985467475682579

`2^A318322(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A318316

/-- `2^A318322(n+1)` -/
def P7822985467475682579.Spec : Prop :=
  ∀ n, P7822985467475682579.a n = (A318316 (n + 1) : ℚ)

end A318316

/-! ## A318316.P9859458693996370261

`A318307(A003557(n+1))*A318307(n+1)`
-/

namespace A318316.P9859458693996370261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (A003557 (n + 1)).toNat * A318307 (n + 1)

end

end A318316.P9859458693996370261

namespace A318316

/-- `A318307(A003557(n+1))*A318307(n+1)` -/
def P9859458693996370261.Spec : Prop :=
  ∀ n, P9859458693996370261.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P3544446324475997033

`A318307(A003557((n+1)²))`
-/

namespace A318316.P3544446324475997033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (A003557 ((n + 1) ^ 2)).toNat

end

end A318316.P3544446324475997033

namespace A318316

/-- `A318307(A003557((n+1)²))` -/
def P3544446324475997033.Spec : Prop :=
  ∀ n, P3544446324475997033.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P707753949785006727

`2^∑{e}[n+1, A007306(#)]`
-/

namespace A318316.P707753949785006727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A007306 (Nat.factorization (f1 n) p) : ℤ)

end

end A318316.P707753949785006727

namespace A318316

/-- `2^∑{e}[n+1, A007306(#)]` -/
def P707753949785006727.Spec : Prop :=
  ∀ n, P707753949785006727.a n = (A318316 (n + 1) : ℚ)

end A318316

/-! ## A318316.P2464146794583612878

`A000079(A318322(n+1))`
-/

namespace A318316.P2464146794583612878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318322 (n + 1)).toNat

end

end A318316.P2464146794583612878

namespace A318316

/-- `A000079(A318322(n+1))` -/
def P2464146794583612878.Spec : Prop :=
  ∀ n, P2464146794583612878.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P1695185610839447797

`A320487(A318322(n+1)%(n+1))`
-/

namespace A318316.P1695185610839447797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (Int.tmod (A318322 (n + 1)) (n + 1 : ℤ)).toNat

end

end A318316.P1695185610839447797

namespace A318316

/-- `A320487(A318322(n+1)%(n+1))` -/
def P1695185610839447797.Spec : Prop :=
  ∀ n, P1695185610839447797.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P16105954604663717186

`A318307(A102631(n+1))`
-/

namespace A318316.P16105954604663717186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (A102631 (n + 1)).toNat

end

end A318316.P16105954604663717186

namespace A318316

/-- `A318307(A102631(n+1))` -/
def P16105954604663717186.Spec : Prop :=
  ∀ n, P16105954604663717186.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P3736900163176845278

`A318307((n+1)*A003557(n+1))`
-/

namespace A318316.P3736900163176845278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A318316.P3736900163176845278

namespace A318316

/-- `A318307((n+1)*A003557(n+1))` -/
def P3736900163176845278.Spec : Prop :=
  ∀ n, P3736900163176845278.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P4582355699648386268

`A061142(A318470(A003557(∑[2*n+1])))`
-/

namespace A318316.P4582355699648386268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A318470 (A003557 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A318316.P4582355699648386268

namespace A318316

/-- `A061142(A318470(A003557(∑[2*n+1])))` -/
def P4582355699648386268.Spec : Prop :=
  ∀ n, P4582355699648386268.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P8715958167053070422

`A278908(n+1)²*A278908(A011262(n+1))`
-/

namespace A318316.P8715958167053070422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (n + 1) ^ 2 * A278908 (A011262 (n + 1)).toNat

end

end A318316.P8715958167053070422

namespace A318316

/-- `A278908(n+1)²*A278908(A011262(n+1))` -/
def P8715958167053070422.Spec : Prop :=
  ∀ n, P8715958167053070422.a n = A318316 (n + 1)

end A318316

/-! ## A318316.P6588244887377495271

`A061142(A117657(n+1)²)/A061142(A117657(n+1))`
-/

namespace A318316.P6588244887377495271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (A117657 (n + 1) ^ 2).toNat : ℚ) / (A061142 (A117657 (n + 1)).toNat : ℚ)

end

end A318316.P6588244887377495271

namespace A318316

/-- `A061142(A117657(n+1)²)/A061142(A117657(n+1))` -/
def P6588244887377495271.Spec : Prop :=
  ∀ n, P6588244887377495271.a n = (A318316 (n + 1) : ℚ)

end A318316

/-!
# A318317: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A173557.

The programs for A318317, there is no canonical definition to state claims against.
-/

/-! ## A318317.P4583919379871820822

`abs(A107450(A107461(n+1)²)²-A004525(n+2))`
-/

namespace A318317.P4583919379871820822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107450 (A107461 (n + 1) ^ 2).toNat ^ 2 - A004525 (n + 2)|

end

end A318317.P4583919379871820822

/-! ## A318317.P8630366403806573687

`abs(A001221(A285572(2*(n+1))!)²-A004525(n+2))`
-/

namespace A318317.P8630366403806573687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001221 (Nat.factorial (A285572 (2 * (n + 1))).toNat) ^ 2 - A004525 (n + 2)|

end

end A318317.P8630366403806573687

/-!
# A318318: 

The programs for A318318, there is no canonical definition to state claims against.
-/

/-! ## A318318.P14214379930888356209

`A317926(n+1)^and(1, A318317(n+1))`
-/

namespace A318318.P14214379930888356209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317926 (n + 1) : ℚ) ^ (Int.land 1 (A318317 (n + 1)) : ℤ)

end

end A318318.P14214379930888356209

/-!
# A318319: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A064989.

The programs for A318319, the canonical program `A318319.P11531726744480288100` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318319 has offset 1).

The definition of A318319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318319.P11531726744480288100

`A000265(A064989(n+1))*A046643(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A318319

/-- `A000265(A064989(n+1))*A046643(n+1)` -/
def P11531726744480288100.Spec : Prop :=
  ∀ n, P11531726744480288100.a n = A318319 (n + 1)

theorem P11531726744480288100.correct : P11531726744480288100.Spec := by
  intro n
  simp only [A318319, Nat.add_sub_cancel]

end A318319

/-! ## A318319.P11829664193281205300

`A000265(A064989(n+1)*A317848(n+1))`
-/

namespace A318319.P11829664193281205300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A064989 (n + 1) * A317848 (n + 1)).toNat

end

end A318319.P11829664193281205300

namespace A318319

/-- `A000265(A064989(n+1)*A317848(n+1))` -/
def P11829664193281205300.Spec : Prop :=
  ∀ n, P11829664193281205300.a n = A318319 (n + 1)

end A318319

/-! ## A318319.P4944658265695483483

`A000265(A252463(A000265(n+1))*A317848(n+1))`
-/

namespace A318319.P4944658265695483483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A252463 (A000265 (n + 1)).toNat * A317848 (n + 1)).toNat

end

end A318319.P4944658265695483483

namespace A318319

/-- `A000265(A252463(A000265(n+1))*A317848(n+1))` -/
def P4944658265695483483.Spec : Prop :=
  ∀ n, P4944658265695483483.a n = A318319 (n + 1)

end A318319

/-! ## A318319.P13830839329833706867

`A003961(A064989(A046643(n+1)*A064989(n+1)))`
-/

namespace A318319.P13830839329833706867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A046643 (n + 1) * A064989 (n + 1)).toNat).toNat

end

end A318319.P13830839329833706867

namespace A318319

/-- `A003961(A064989(A046643(n+1)*A064989(n+1)))` -/
def P13830839329833706867.Spec : Prop :=
  ∀ n, P13830839329833706867.a n = A318319 (n + 1)

end A318319

/-! ## A318319.P5596074751521176849

`A003961(A064989(A064989(n+1)*A317848(n+1)))`
-/

namespace A318319.P5596074751521176849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A064989 (n + 1) * A317848 (n + 1)).toNat).toNat

end

end A318319.P5596074751521176849

namespace A318319

/-- `A003961(A064989(A064989(n+1)*A317848(n+1)))` -/
def P5596074751521176849.Spec : Prop :=
  ∀ n, P5596074751521176849.a n = A318319 (n + 1)

end A318319

/-!
# A318320: a(n) = (psi(n) - phi(n))/2.

The programs for A318320, the canonical program `A318320.P3093360369618625706` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318320 has offset 1).

The definition of A318320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A291784, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318320.P8094306701382715472

`A292786(n+1)/2`
-/

namespace A318320.P8094306701382715472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292786 (n + 1) : ℚ) / 2

end

end A318320.P8094306701382715472

namespace A318320

/-- `A292786(n+1)/2` -/
def P8094306701382715472.Spec : Prop :=
  ∀ n, P8094306701382715472.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P15112362692861945941

`A318326(n+1)+A318442(n+1)`
-/

namespace A318320.P15112362692861945941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (n + 1) + A318442 (n + 1)

end

end A318320.P15112362692861945941

namespace A318320

/-- `A318326(n+1)+A318442(n+1)` -/
def P15112362692861945941.Spec : Prop :=
  ∀ n, P15112362692861945941.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P3093360369618625706

`A291784(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A318320

/-- `A291784(n+1)-A000010(n+1)` -/
def P3093360369618625706.Spec : Prop :=
  ∀ n, P3093360369618625706.a n = A318320 (n + 1)

theorem P3093360369618625706.correct : P3093360369618625706.Spec := by
  intro n
  simp only [A318320, Nat.add_sub_cancel]

end A318320

/-! ## A318320.P5605812904700408508

`(A001615(n+1)-A000010(n+1))/2`
-/

namespace A318320.P5605812904700408508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A000010 (n + 1) : ℚ) / 2

end

end A318320.P5605812904700408508

namespace A318320

/-- `(A001615(n+1)-A000010(n+1))/2` -/
def P5605812904700408508.Spec : Prop :=
  ∀ n, P5605812904700408508.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P9595152029235576721

`∑{d}[n+1, #*A252233((n+1)/#)]`
-/

namespace A318320.P9595152029235576721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A252233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P9595152029235576721

namespace A318320

/-- `∑{d}[n+1, #*A252233((n+1)/#)]` -/
def P9595152029235576721.Spec : Prop :=
  ∀ n, P9595152029235576721.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P17437297237256203590

`A001615(n+1)-A291784(n+1)`
-/

namespace A318320.P17437297237256203590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - A291784 (n + 1)

end

end A318320.P17437297237256203590

namespace A318320

/-- `A001615(n+1)-A291784(n+1)` -/
def P17437297237256203590.Spec : Prop :=
  ∀ n, P17437297237256203590.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P13149596706143599965

`A157223(n+1)-A329152(n+1)`
-/

namespace A318320.P13149596706143599965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157223 (n + 1) - A329152 (n + 1)

end

end A318320.P13149596706143599965

namespace A318320

/-- `A157223(n+1)-A329152(n+1)` -/
def P13149596706143599965.Spec : Prop :=
  ∀ n, P13149596706143599965.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P7192321447867548449

`(A001615(n+1)-Δ[A002088(n)])/2`
-/

namespace A318320.P7192321447867548449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A318320.P7192321447867548449

namespace A318320

/-- `(A001615(n+1)-Δ[A002088(n)])/2` -/
def P7192321447867548449.Spec : Prop :=
  ∀ n, P7192321447867548449.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P4590331690110422145

`(A306927(n+1)+A051953(n+1))/2`
-/

namespace A318320.P4590331690110422145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306927 (n + 1) + A051953 (n + 1) : ℚ) / 2

end

end A318320.P4590331690110422145

namespace A318320

/-- `(A306927(n+1)+A051953(n+1))/2` -/
def P4590331690110422145.Spec : Prop :=
  ∀ n, P4590331690110422145.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P13964138480804838845

`(A344705(n+1)+A228947(n+1))/2`
-/

namespace A318320.P13964138480804838845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344705 (n + 1) + A228947 (n + 1) : ℚ) / 2

end

end A318320.P13964138480804838845

namespace A318320

/-- `(A344705(n+1)+A228947(n+1))/2` -/
def P13964138480804838845.Spec : Prop :=
  ∀ n, P13964138480804838845.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P9328808592729248624

`(A051612(n+1)-A244963(n+1))/2`
-/

namespace A318320.P9328808592729248624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) - A244963 (n + 1) : ℚ) / 2

end

end A318320.P9328808592729248624

namespace A318320

/-- `(A051612(n+1)-A244963(n+1))/2` -/
def P9328808592729248624.Spec : Prop :=
  ∀ n, P9328808592729248624.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P10150561457845231035

`(A344753(n+1)-A051709(n+1))/2`
-/

namespace A318320.P10150561457845231035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344753 (n + 1) - A051709 (n + 1) : ℚ) / 2

end

end A318320.P10150561457845231035

namespace A318320

/-- `(A344753(n+1)-A051709(n+1))/2` -/
def P10150561457845231035.Spec : Prop :=
  ∀ n, P10150561457845231035.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P1378616542760919063

`(A001615(n+1)-(A039649(n+1)-1))/2`
-/

namespace A318320.P1378616542760919063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - (A039649 (n + 1) - 1) : ℚ) / 2

end

end A318320.P1378616542760919063

namespace A318320

/-- `(A001615(n+1)-(A039649(n+1)-1))/2` -/
def P1378616542760919063.Spec : Prop :=
  ∀ n, P1378616542760919063.a n = (A318320 (n + 1) : ℚ)

end A318320

/-! ## A318320.P9515012764599039242

`∑{d}[n+1, A007432(#)*A066446((n+1)/#)]`
-/

namespace A318320.P9515012764599039242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A066446 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P9515012764599039242

namespace A318320

/-- `∑{d}[n+1, A007432(#)*A066446((n+1)/#)]` -/
def P9515012764599039242.Spec : Prop :=
  ∀ n, P9515012764599039242.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P4764159657776973075

`∑{d}[n+1, A063659(#)*A066829((n+1)/#)]`
-/

namespace A318320.P4764159657776973075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A066829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P4764159657776973075

namespace A318320

/-- `∑{d}[n+1, A063659(#)*A066829((n+1)/#)]` -/
def P4764159657776973075.Spec : Prop :=
  ∀ n, P4764159657776973075.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P3962070005869583554

`∑{d}[n+1, A056924(#)*A130107((n+1)/#)]`
-/

namespace A318320.P3962070005869583554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056924 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P3962070005869583554

namespace A318320

/-- `∑{d}[n+1, A056924(#)*A130107((n+1)/#)]` -/
def P3962070005869583554.Spec : Prop :=
  ∀ n, P3962070005869583554.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P60611841550676121

`∑{d}[n+1, A074206(#)*A318442((n+1)/#)]`
-/

namespace A318320.P60611841550676121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074206 d * A318442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P60611841550676121

namespace A318320

/-- `∑{d}[n+1, A074206(#)*A318442((n+1)/#)]` -/
def P60611841550676121.Spec : Prop :=
  ∀ n, P60611841550676121.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P5462506355438755172

`∑{d}[n+1, A271102(#)*A378543((n+1)/#)]`
-/

namespace A318320.P5462506355438755172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A378543 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P5462506355438755172

namespace A318320

/-- `∑{d}[n+1, A271102(#)*A378543((n+1)/#)]` -/
def P5462506355438755172.Spec : Prop :=
  ∀ n, P5462506355438755172.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P17865755942822153118

`∑{d}[n+1, A359548(#)*A378549((n+1)/#)]`
-/

namespace A318320.P17865755942822153118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359548 d * A378549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P17865755942822153118

namespace A318320

/-- `∑{d}[n+1, A359548(#)*A378549((n+1)/#)]` -/
def P17865755942822153118.Spec : Prop :=
  ∀ n, P17865755942822153118.a n = A318320 (n + 1)

end A318320

/-! ## A318320.P14536231866496613454

`∑{d}[n+1, A002033(#-1)*A318442((n+1)/#)]`
-/

namespace A318320.P14536231866496613454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A318442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318320.P14536231866496613454

namespace A318320

/-- `∑{d}[n+1, A002033(#-1)*A318442((n+1)/#)]` -/
def P14536231866496613454.Spec : Prop :=
  ∀ n, P14536231866496613454.a n = A318320 (n + 1)

end A318320

/-!
# A318321: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A003961.

The programs for A318321, the canonical program `A318321.P3593742784170705023` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318321 has offset 1).

The definition of A318321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318321.P3593742784170705023

`A003961(n+1)*A046643(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A318321

/-- `A003961(n+1)*A046643(n+1)` -/
def P3593742784170705023.Spec : Prop :=
  ∀ n, P3593742784170705023.a n = A318321 (n + 1)

theorem P3593742784170705023.correct : P3593742784170705023.Spec := by
  intro n
  simp only [A318321, Nat.add_sub_cancel]

end A318321

/-! ## A318321.P8875164120969229657

`A003961(n+1)/A000265(n+1)*A299149(n+1)`
-/

namespace A318321.P8875164120969229657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ) * (A299149 (n + 1) : ℚ)

end

end A318321.P8875164120969229657

namespace A318321

/-- `A003961(n+1)/A000265(n+1)*A299149(n+1)` -/
def P8875164120969229657.Spec : Prop :=
  ∀ n, P8875164120969229657.a n = (A318321 (n + 1) : ℚ)

end A318321

/-! ## A318321.P7521966252281224325

`A299149(A003961(n+1))`
-/

namespace A318321.P7521966252281224325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A003961 (n + 1)).toNat

end

end A318321.P7521966252281224325

namespace A318321

/-- `A299149(A003961(n+1))` -/
def P7521966252281224325.Spec : Prop :=
  ∀ n, P7521966252281224325.a n = A318321 (n + 1)

end A318321

/-! ## A318321.P3719035937590015733

`A299149(A045965(n+1))`
-/

namespace A318321.P3719035937590015733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A045965 (n + 1)).toNat

end

end A318321.P3719035937590015733

namespace A318321

/-- `A299149(A045965(n+1))` -/
def P3719035937590015733.Spec : Prop :=
  ∀ n, P3719035937590015733.a n = A318321 (n + 1)

end A318321

/-! ## A318321.P11960041513653547339

`A299149(A253885(n)+1)`
-/

namespace A318321.P11960041513653547339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A253885 n + 1).toNat

end

end A318321.P11960041513653547339

namespace A318321

/-- `A299149(A253885(n)+1)` -/
def P11960041513653547339.Spec : Prop :=
  ∀ n, P11960041513653547339.a n = A318321 (n + 1)

end A318321

/-! ## A318321.P3634885150563791771

`A003961(n+1)*A318449(2*A003961(n+1))`
-/

namespace A318321.P3634885150563791771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A318449 (2 * A003961 (n + 1)).toNat

end

end A318321.P3634885150563791771

namespace A318321

/-- `A003961(n+1)*A318449(2*A003961(n+1))` -/
def P3634885150563791771.Spec : Prop :=
  ∀ n, P3634885150563791771.a n = A318321 (n + 1)

end A318321

/-! ## A318321.P1640055353669870071

`A318319(A045966(n+1))`
-/

namespace A318321.P1640055353669870071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318319 (A045966 (n + 1)).toNat

end

end A318321.P1640055353669870071

namespace A318321

/-- `A318319(A045966(n+1))` -/
def P1640055353669870071.Spec : Prop :=
  ∀ n, P1640055353669870071.a n = A318321 (n + 1)

end A318321

/-! ## A318321.P6999635336172025421

`A318319(A357852(n+1))`
-/

namespace A318321.P6999635336172025421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318319 (A357852 (n + 1)).toNat

end

end A318321.P6999635336172025421

namespace A318321

/-- `A318319(A357852(n+1))` -/
def P6999635336172025421.Spec : Prop :=
  ∀ n, P6999635336172025421.a n = A318321 (n + 1)

end A318321

/-! ## A318321.P4028259179281550919

`A318319(A003961(A003961(A003602(2*n+1))))`
-/

namespace A318321.P4028259179281550919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318319 (A003961 (A003961 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A318321.P4028259179281550919

namespace A318321

/-- `A318319(A003961(A003961(A003602(2*n+1))))` -/
def P4028259179281550919.Spec : Prop :=
  ∀ n, P4028259179281550919.a n = A318321 (n + 1)

end A318321

/-!
# A318322: Additive with a(p^e) = A007306(e).

The programs for A318322, the canonical program `A318322.P15992978516204358098` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318322 has offset 1).

The definition of A318322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318322.P4431438148934923606

`A007814(A318316(n+1))`
-/

namespace A318322.P4431438148934923606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318316 (n + 1)).toNat

end

end A318322.P4431438148934923606

namespace A318322

/-- `A007814(A318316(n+1))` -/
def P4431438148934923606.Spec : Prop :=
  ∀ n, P4431438148934923606.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P15992978516204358098

`∑{e}[n+1, A007306(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A318322

/-- `∑{e}[n+1, A007306(#)]` -/
def P15992978516204358098.Spec : Prop :=
  ∀ n, P15992978516204358098.a n = A318322 (n + 1)

theorem P15992978516204358098.correct : P15992978516204358098.Spec := by
  intro n
  simp only [A318322, Nat.add_sub_cancel]

end A318322

/-! ## A318322.P9209503438123001230

`∑{e}[n+1, A288003(4*(#-1)+1)]`
-/

namespace A318322.P9209503438123001230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A288003 (4 * ((Nat.factorization (f1 n) p : ℤ) - 1) + 1).toNat

end

end A318322.P9209503438123001230

namespace A318322

/-- `∑{e}[n+1, A288003(4*(#-1)+1)]` -/
def P9209503438123001230.Spec : Prop :=
  ∀ n, P9209503438123001230.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P2455951862848267457

`A000120(A318316(n+1)-1)`
-/

namespace A318322.P2455951862848267457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318316 (n + 1) - 1).toNat

end

end A318322.P2455951862848267457

namespace A318322

/-- `A000120(A318316(n+1)-1)` -/
def P2455951862848267457.Spec : Prop :=
  ∀ n, P2455951862848267457.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P11922640285386853322

`A002487(A318316(n+1)-1)`
-/

namespace A318322.P11922640285386853322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A318316 (n + 1) - 1).toNat

end

end A318322.P11922640285386853322

namespace A318322

/-- `A002487(A318316(n+1)-1)` -/
def P11922640285386853322.Spec : Prop :=
  ∀ n, P11922640285386853322.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P12831473651662463282

`A000005(2*A318316(n+1))-2`
-/

namespace A318322.P12831473651662463282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A318316 (n + 1)).toNat - 2

end

end A318322.P12831473651662463282

namespace A318322

/-- `A000005(2*A318316(n+1))-2` -/
def P12831473651662463282.Spec : Prop :=
  ∀ n, P12831473651662463282.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P1516091553339186133

`A174980(A318316(2*n+1-n))`
-/

namespace A318322.P1516091553339186133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A318316 (2 * n + 1 - n)).toNat

end

end A318322.P1516091553339186133

namespace A318322

/-- `A174980(A318316(2*n+1-n))` -/
def P1516091553339186133.Spec : Prop :=
  ∀ n, P1516091553339186133.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P3167091844663209510

`A032741(A318316(n+1))%A161715(n)`
-/

namespace A318322.P3167091844663209510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A318316 (n + 1)).toNat) (A161715 n)

end

end A318322.P3167091844663209510

namespace A318322

/-- `A032741(A318316(n+1))%A161715(n)` -/
def P3167091844663209510.Spec : Prop :=
  ∀ n, P3167091844663209510.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P10847734920768619993

`val(A318316(n+1), A000005(A318351(n)))`
-/

namespace A318322.P10847734920768619993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318316 (n + 1)).toNat (A000005 (A318351 n).toNat).toNat

end

end A318322.P10847734920768619993

namespace A318322

/-- `val(A318316(n+1), A000005(A318351(n)))` -/
def P10847734920768619993.Spec : Prop :=
  ∀ n, (P10847734920768619993.a n : ℤ) = A318322 (n + 1)

end A318322

/-! ## A318322.P16188720135249312401

`A318306(A003557(n+1))+A318306(n+1)`
-/

namespace A318322.P16188720135249312401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A003557 (n + 1)).toNat + A318306 (n + 1)

end

end A318322.P16188720135249312401

namespace A318322

/-- `A318306(A003557(n+1))+A318306(n+1)` -/
def P16188720135249312401.Spec : Prop :=
  ∀ n, P16188720135249312401.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P15027725782918620997

`val(A318316(n+1), A014963(A318307(n+2)))`
-/

namespace A318322.P15027725782918620997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318316 (n + 1)).toNat (A014963 (A318307 (n + 2)).toNat).toNat

end

end A318322.P15027725782918620997

namespace A318322

/-- `val(A318316(n+1), A014963(A318307(n+2)))` -/
def P15027725782918620997.Spec : Prop :=
  ∀ n, (P15027725782918620997.a n : ℤ) = A318322 (n + 1)

end A318322

/-! ## A318322.P11821899584707297486

`val(A318316(n+1), A318307(A318351(n+3)))`
-/

namespace A318322.P11821899584707297486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318316 (n + 1)).toNat (A318307 (A318351 (n + 3)).toNat).toNat

end

end A318322.P11821899584707297486

namespace A318322

/-- `val(A318316(n+1), A318307(A318351(n+3)))` -/
def P11821899584707297486.Spec : Prop :=
  ∀ n, (P11821899584707297486.a n : ℤ) = A318322 (n + 1)

end A318322

/-! ## A318322.P11080013123529115208

`A000360(A318316(n+1)²)`
-/

namespace A318322.P11080013123529115208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A318316 (n + 1) ^ 2).toNat

end

end A318322.P11080013123529115208

namespace A318322

/-- `A000360(A318316(n+1)²)` -/
def P11080013123529115208.Spec : Prop :=
  ∀ n, P11080013123529115208.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P288100626956123236

`A032741(A318316(n+1)²)/2`
-/

namespace A318322.P288100626956123236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (A318316 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318322.P288100626956123236

namespace A318322

/-- `A032741(A318316(n+1)²)/2` -/
def P288100626956123236.Spec : Prop :=
  ∀ n, P288100626956123236.a n = (A318322 (n + 1) : ℚ)

end A318322

/-! ## A318322.P11961701535371989204

`A174980(A318316(n+1)²)/2`
-/

namespace A318322.P11961701535371989204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174980 (A318316 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A318322.P11961701535371989204

namespace A318322

/-- `A174980(A318316(n+1)²)/2` -/
def P11961701535371989204.Spec : Prop :=
  ∀ n, P11961701535371989204.a n = (A318322 (n + 1) : ℚ)

end A318322

/-! ## A318322.P12556945323662138771

`A174980(A318316(n+1)²-A318316(n+1))`
-/

namespace A318322.P12556945323662138771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A318316 (n + 1) ^ 2 - A318316 (n + 1)).toNat

end

end A318322.P12556945323662138771

namespace A318322

/-- `A174980(A318316(n+1)²-A318316(n+1))` -/
def P12556945323662138771.Spec : Prop :=
  ∀ n, P12556945323662138771.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P13712331596928026324

`A318306((n+1)*A003557(n+1))`
-/

namespace A318322.P13712331596928026324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A318322.P13712331596928026324

namespace A318322

/-- `A318306((n+1)*A003557(n+1))` -/
def P13712331596928026324.Spec : Prop :=
  ∀ n, P13712331596928026324.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P15536807829453178220

`A032741(A318316(n+1)%A318284(2*n+3))`
-/

namespace A318322.P15536807829453178220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.tmod (A318316 (n + 1)) (A318284 (2 * n + 3))).toNat

end

end A318322.P15536807829453178220

namespace A318322

/-- `A032741(A318316(n+1)%A318284(2*n+3))` -/
def P15536807829453178220.Spec : Prop :=
  ∀ n, P15536807829453178220.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P18027583296411929358

`A067029(A108951(A108951(A293442(n+1))))`
-/

namespace A318322.P18027583296411929358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A108951 (A108951 (A293442 (n + 1)).toNat).toNat).toNat

end

end A318322.P18027583296411929358

namespace A318322

/-- `A067029(A108951(A108951(A293442(n+1))))` -/
def P18027583296411929358.Spec : Prop :=
  ∀ n, P18027583296411929358.a n = A318322 (n + 1)

end A318322

/-! ## A318322.P8644428100504436161

`A333355(A278254(n+1))`
-/

namespace A318322.P8644428100504436161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333355 (A278254 (n + 1)).toNat

end

end A318322.P8644428100504436161

namespace A318322

/-- `A333355(A278254(n+1))` -/
def P8644428100504436161.Spec : Prop :=
  ∀ n, P8644428100504436161.a n = A318322 (n + 1)

end A318322

/-!
# A318323: Numerators of rational valued sequence whose Dirichlet convolution with itself yields A046523, smallest number with same prime signature as n.

The programs for A318323, there is no canonical definition to state claims against.
-/

/-! ## A318323.P5156888694001506745

`A024640(A295935(A003961(n+1)))`
-/

namespace A318323.P5156888694001506745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024640 (A295935 (A003961 (n + 1)).toNat).toNat

end

end A318323.P5156888694001506745

/-! ## A318323.P1502705025191448394

`A004737(2*A318256(A050356(n+1)))`
-/

namespace A318323.P1502705025191448394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * A318256 (A050356 (n + 1)).toNat).toNat

end

end A318323.P1502705025191448394

/-! ## A318323.P3984924575826686399

`A289618(A007955(n+1))+A046643(n+1)`
-/

namespace A318323.P3984924575826686399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (A007955 (n + 1)).toNat + A046643 (n + 1)

end

end A318323.P3984924575826686399

/-! ## A318323.P90127504923590237

`A317937(n+1)-A289618(A007955(n+1))`
-/

namespace A318323.P90127504923590237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317937 (n + 1) - A289618 (A007955 (n + 1)).toNat

end

end A318323.P90127504923590237

/-! ## A318323.P13527694149472491561

`A317933((n+1)²)+A289618(A007955(n+1))`
-/

namespace A318323.P13527694149472491561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 ((n + 1) ^ 2) + A289618 (A007955 (n + 1)).toNat

end

end A318323.P13527694149472491561

/-!
# A318324: Denominators of rational valued sequence whose Dirichlet convolution with itself yields A046523, smallest number with same prime signature as n.

The programs for A318324, there is no canonical definition to state claims against.
-/

/-! ## A318324.P17824212836871009605

`gcd(A084699(A181819(n+1)), A112624(n+1))`
-/

namespace A318324.P17824212836871009605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084699 (A181819 (n + 1)).toNat) (A112624 (n + 1))

end

end A318324.P17824212836871009605

/-! ## A318324.P11940380691258380827

`gcd(A281446(A007425(n+1)), A317934(n+1))`
-/

namespace A318324.P11940380691258380827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281446 (A007425 (n + 1)).toNat) (A317934 (n + 1))

end

end A318324.P11940380691258380827

/-! ## A318324.P17843735769998160163

`gcd(2^∑{e}[n+1, val(#!, 2)], A126174(∏{e}[n+1, C(2*#, #)]))`
-/

namespace A318324.P17843735769998160163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2) : ℤ) (A126174 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (2 * Nat.factorization (f2 n) p) (Nat.factorization (f2 n) p)))

end

end A318324.P17843735769998160163

/-! ## A318324.P6255540462971317721

`A317934(n+1)/A317934(A046644(n+1)²+1)`
-/

namespace A318324.P6255540462971317721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317934 (n + 1) : ℚ) / (A317934 (A046644 (n + 1) ^ 2 + 1).toNat : ℚ)

end

end A318324.P6255540462971317721

/-! ## A318324.P3763835906924227911

`gcd(A061397(A322856(n)), A317934(n+1))`
-/

namespace A318324.P3763835906924227911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061397 (A322856 n).toNat) (A317934 (n + 1))

end

end A318324.P3763835906924227911

/-!
# A318325: a(n) = Sum_{d|n} [moebius(n/d) > 0]*(sigma(d)-d).

The programs for A318325, the canonical program `A318325.P6590032439412958240` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318325 has offset 1).

The definition of A318325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318325.P4509733673930068446

`A051953(n+1)+A318326(n+1)`
-/

namespace A318325.P4509733673930068446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A318326 (n + 1)

end

end A318325.P4509733673930068446

namespace A318325

/-- `A051953(n+1)+A318326(n+1)` -/
def P4509733673930068446.Spec : Prop :=
  ∀ n, P4509733673930068446.a n = A318325 (n + 1)

end A318325

/-! ## A318325.P3475623481770068685

`A291784(n+1)-A318441(n+1)`
-/

namespace A318325.P3475623481770068685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) - A318441 (n + 1)

end

end A318325.P3475623481770068685

namespace A318325

/-- `A291784(n+1)-A318441(n+1)` -/
def P3475623481770068685.Spec : Prop :=
  ∀ n, P3475623481770068685.a n = A318325 (n + 1)

end A318325

/-! ## A318325.P15211153886433791218

`∑{d}[n+1, A007875(#)*A051953((n+1)/#)]`
-/

namespace A318325.P15211153886433791218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318325.P15211153886433791218

namespace A318325

/-- `∑{d}[n+1, A007875(#)*A051953((n+1)/#)]` -/
def P15211153886433791218.Spec : Prop :=
  ∀ n, P15211153886433791218.a n = A318325 (n + 1)

end A318325

/-! ## A318325.P10426814696639358143

`∑{d}[n+1, A018892(#)*A062790((n+1)/#)]`
-/

namespace A318325.P10426814696639358143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 d * A062790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318325.P10426814696639358143

namespace A318325

/-- `∑{d}[n+1, A018892(#)*A062790((n+1)/#)]` -/
def P10426814696639358143.Spec : Prop :=
  ∀ n, P10426814696639358143.a n = A318325 (n + 1)

end A318325

/-! ## A318325.P506083505439018158

`∑{d}[n+1, A001065(#)*A353629((n+1)/#)]`
-/

namespace A318325.P506083505439018158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318325.P506083505439018158

namespace A318325

/-- `∑{d}[n+1, A001065(#)*A353629((n+1)/#)]` -/
def P506083505439018158.Spec : Prop :=
  ∀ n, P506083505439018158.a n = A318325 (n + 1)

end A318325

/-! ## A318325.P6590032439412958240

`∑{d}[n+1, A057427(#-1)*A291784((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A318325

/-- `∑{d}[n+1, A057427(#-1)*A291784((n+1)/#)]` -/
def P6590032439412958240.Spec : Prop :=
  ∀ n, P6590032439412958240.a n = A318325 (n + 1)

theorem P6590032439412958240.correct : P6590032439412958240.Spec := by
  intro n
  simp only [A318325, Nat.add_sub_cancel]

end A318325

/-! ## A318325.P2472427761601490314

`A051953(n+1)+A318320(n+1)-A318442(n+1)`
-/

namespace A318325.P2472427761601490314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A318320 (n + 1) - A318442 (n + 1))

end

end A318325.P2472427761601490314

namespace A318325

/-- `A051953(n+1)+A318320(n+1)-A318442(n+1)` -/
def P2472427761601490314.Spec : Prop :=
  ∀ n, P2472427761601490314.a n = A318325 (n + 1)

end A318325

/-! ## A318325.P16278471330588326413

`A291784(n+1)-(A318442(n+1)+A083254(n+1))`
-/

namespace A318325.P16278471330588326413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) - (A318442 (n + 1) + A083254 (n + 1))

end

end A318325.P16278471330588326413

namespace A318325

/-- `A291784(n+1)-(A318442(n+1)+A083254(n+1))` -/
def P16278471330588326413.Spec : Prop :=
  ∀ n, P16278471330588326413.a n = A318325 (n + 1)

end A318325

/-!
# A318326: a(n) = Sum_{d|n} [moebius(n/d) < 0]*(sigma(d)-d).

The programs for A318326, the canonical program `A318326.P16485873540069210944` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318326 has offset 1).

The definition of A318326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318326.P16485873540069210944

`A318325(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A318326

/-- `A318325(n+1)-A051953(n+1)` -/
def P16485873540069210944.Spec : Prop :=
  ∀ n, P16485873540069210944.a n = A318326 (n + 1)

theorem P16485873540069210944.correct : P16485873540069210944.Spec := by
  intro n
  simp only [A318326, Nat.add_sub_cancel]

end A318326

/-! ## A318326.P16142521233551500309

`A318320(n+1)-A318442(n+1)`
-/

namespace A318326.P16142521233551500309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (n + 1) - A318442 (n + 1)

end

end A318326.P16142521233551500309

namespace A318326

/-- `A318320(n+1)-A318442(n+1)` -/
def P16142521233551500309.Spec : Prop :=
  ∀ n, P16142521233551500309.a n = A318326 (n + 1)

end A318326

/-! ## A318326.P7667662734297483732

`A000010(n+1)-(n+1-A318325(n+1))`
-/

namespace A318326.P7667662734297483732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ((n + 1 : ℤ) - A318325 (n + 1))

end

end A318326.P7667662734297483732

namespace A318326

/-- `A000010(n+1)-(n+1-A318325(n+1))` -/
def P7667662734297483732.Spec : Prop :=
  ∀ n, P7667662734297483732.a n = A318326 (n + 1)

end A318326

/-! ## A318326.P10626024591910640724

`∑{d}[n+1, A062790(#)*A063647((n+1)/#)]`
-/

namespace A318326.P10626024591910640724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d * A063647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318326.P10626024591910640724

namespace A318326

/-- `∑{d}[n+1, A062790(#)*A063647((n+1)/#)]` -/
def P10626024591910640724.Spec : Prop :=
  ∀ n, P10626024591910640724.a n = A318326 (n + 1)

end A318326

/-! ## A318326.P10541747720517127022

`∑{d}[n+1, A001065(#)*A252233((n+1)/#)]`
-/

namespace A318326.P10541747720517127022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A252233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318326.P10541747720517127022

namespace A318326

/-- `∑{d}[n+1, A001065(#)*A252233((n+1)/#)]` -/
def P10541747720517127022.Spec : Prop :=
  ∀ n, P10541747720517127022.a n = A318326 (n + 1)

end A318326

/-! ## A318326.P2798087038636736656

`∑{d}[n+1, A007431(#)*A275387((n+1)/#)]`
-/

namespace A318326.P2798087038636736656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A275387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318326.P2798087038636736656

namespace A318326

/-- `∑{d}[n+1, A007431(#)*A275387((n+1)/#)]` -/
def P2798087038636736656.Spec : Prop :=
  ∀ n, P2798087038636736656.a n = A318326 (n + 1)

end A318326

/-! ## A318326.P13142258127127312595

`A291784(n+1)-(A318441(n+1)+A051953(n+1))`
-/

namespace A318326.P13142258127127312595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) - (A318441 (n + 1) + A051953 (n + 1))

end

end A318326.P13142258127127312595

namespace A318326

/-- `A291784(n+1)-(A318441(n+1)+A051953(n+1))` -/
def P13142258127127312595.Spec : Prop :=
  ∀ n, P13142258127127312595.a n = A318326 (n + 1)

end A318326

/-! ## A318326.P14526517898622340106

`A083254(n+1)+A318320(n+1)-A318441(n+1)`
-/

namespace A318326.P14526517898622340106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + (A318320 (n + 1) - A318441 (n + 1))

end

end A318326.P14526517898622340106

namespace A318326

/-- `A083254(n+1)+A318320(n+1)-A318441(n+1)` -/
def P14526517898622340106.Spec : Prop :=
  ∀ n, P14526517898622340106.a n = A318326 (n + 1)

end A318326

/-!
# A318337: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318337, there is no canonical definition to state claims against.
-/

/-! ## A318337.P6158217802315905665

`A318343(∑[4*n]+1)`
-/

namespace A318337.P6158217802315905665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318337.P6158217802315905665

/-! ## A318337.P9357196329422122694

`record[gcd(A157521(n), A318343(n+1))]`
-/

namespace A318337.P9357196329422122694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157521 n) (A318343 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318337.P9357196329422122694

/-! ## A318337.P5963766923563442377

`gcd(A000038(n), A318343(A001844(n)))`
-/

namespace A318337.P5963766923563442377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318343 (A001844 n).toNat)

end

end A318337.P5963766923563442377

/-! ## A318337.P6340646748533060860

`lcm(A033999(n), A318343(A001844(n)))`
-/

namespace A318337.P6340646748533060860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318343 (A001844 n).toNat)

end

end A318337.P6340646748533060860

/-! ## A318337.P3042032680963603171

`A015600(2*(n+1))*A318343(A001844(n))`
-/

namespace A318337.P3042032680963603171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 (2 * (n + 1)) * A318343 (A001844 n).toNat

end

end A318337.P3042032680963603171

/-!
# A318338: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318338, there is no canonical definition to state claims against.
-/

/-! ## A318338.P16430411316879803982

`A318343(∑[n+2]+4)`
-/

namespace A318338.P16430411316879803982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318338.P16430411316879803982

/-! ## A318338.P3811934863844335786

`lcm(2, A318343(A167614(n+1)))`
-/

namespace A318338.P3811934863844335786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A318343 (A167614 (n + 1)).toNat)

end

end A318338.P3811934863844335786

/-! ## A318338.P7304229419721067493

`xor(1, A318343(A000217(n+2)+3)+1)`
-/

namespace A318338.P7304229419721067493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A318343 (A000217 (n + 2) + 3).toNat + 1)

end

end A318338.P7304229419721067493

/-! ## A318338.P16331072104029352872

`A015600(n)*A318343(A167614(n+1))`
-/

namespace A318338.P16331072104029352872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A318343 (A167614 (n + 1)).toNat

end

end A318338.P16331072104029352872

/-! ## A318338.P15366001842485653139

`A318343(A167614(n+1))%A318071(n+1)`
-/

namespace A318338.P15366001842485653139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318343 (A167614 (n + 1)).toNat) (A318071 (n + 1))

end

end A318338.P15366001842485653139

/-!
# A318339: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318339, there is no canonical definition to state claims against.
-/

/-! ## A318339.P9607275352511834246

`A318343(A374004(n+1))`
-/

namespace A318339.P9607275352511834246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A374004 (n + 1)).toNat

end

end A318339.P9607275352511834246

/-! ## A318339.P14355573910480312600

`A318343(A141214(n)+7)`
-/

namespace A318339.P14355573910480312600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A141214 n + 7).toNat

end

end A318339.P14355573910480312600

/-! ## A318339.P4884619273421394357

`A318343(A052905(n)+9)`
-/

namespace A318339.P4884619273421394357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A052905 n + 9).toNat

end

end A318339.P4884619273421394357

/-! ## A318339.P17216073031565686204

`A318343(A055999(n)+10)`
-/

namespace A318339.P17216073031565686204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A055999 n + 10).toNat

end

end A318339.P17216073031565686204

/-! ## A318339.P2808061344106279037

`A318343(A167614(n+2)+1)`
-/

namespace A318339.P2808061344106279037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A167614 (n + 2) + 1).toNat

end

end A318339.P2808061344106279037

/-!
# A318340: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318340, there is no canonical definition to state claims against.
-/

/-! ## A318340.P8245824907969079399

`A318343(A374005(n+1))`
-/

namespace A318340.P8245824907969079399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A374005 (n + 1)).toNat

end

end A318340.P8245824907969079399

/-! ## A318340.P17273175505962074841

`A318343(A167499(n+3))`
-/

namespace A318340.P17273175505962074841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A167499 (n + 3)).toNat

end

end A318340.P17273175505962074841

/-! ## A318340.P17186583422320250160

`A318343(A167614(n+3)+2)`
-/

namespace A318340.P17186583422320250160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A167614 (n + 3) + 2).toNat

end

end A318340.P17186583422320250160

/-! ## A318340.P12641540255927583634

`A318343(A000096(n+3)+6)`
-/

namespace A318340.P12641540255927583634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A000096 (n + 3) + 6).toNat

end

end A318340.P12641540255927583634

/-! ## A318340.P10554487109459801276

`A318343(A027379(n+2)+8)`
-/

namespace A318340.P10554487109459801276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A027379 (n + 2) + 8).toNat

end

end A318340.P10554487109459801276

/-!
# A318341: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318341, there is no canonical definition to state claims against.
-/

/-! ## A318341.P8346393959845592972

`A318343(A374007(n+1))`
-/

namespace A318341.P8346393959845592972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A374007 (n + 1)).toNat

end

end A318341.P8346393959845592972

/-! ## A318341.P3043752820128215494

`A318343(A000217(n+5)+6)`
-/

namespace A318341.P3043752820128215494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A000217 (n + 5) + 6).toNat

end

end A318341.P3043752820128215494

/-! ## A318341.P222939584697616115

`A318343(A055998(n)+A008585(n+7))`
-/

namespace A318341.P222939584697616115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A055998 n + A008585 (n + 7)).toNat

end

end A318341.P222939584697616115

/-! ## A318341.P6685922781537738991

`A318343(A133263(n+3)+A005408(n+6))`
-/

namespace A318341.P6685922781537738991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A133263 (n + 3) + A005408 (n + 6)).toNat

end

end A318341.P6685922781537738991

/-! ## A318341.P13108151427924837026

`A318343(A000096(n+6)-A005843(n+3))`
-/

namespace A318341.P13108151427924837026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A318341.P13108151427924837026

/-!
# A318342: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318342, there is no canonical definition to state claims against.
-/

/-! ## A318342.P6638745524407447654

`A318343(A374008(n+1))`
-/

namespace A318342.P6638745524407447654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A374008 (n + 1)).toNat

end

end A318342.P6638745524407447654

/-! ## A318342.P5852316552730740883

`A318343(A000096(n+5)+8)`
-/

namespace A318342.P5852316552730740883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A000096 (n + 5) + 8).toNat

end

end A318342.P5852316552730740883

/-! ## A318342.P16891844235738374616

`A318343(A000217(n+6)+7)`
-/

namespace A318342.P16891844235738374616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A000217 (n + 6) + 7).toNat

end

end A318342.P16891844235738374616

/-! ## A318342.P4976634794695720779

`A318343(A022856(n+10)+5)`
-/

namespace A318342.P4976634794695720779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A022856 (n + 10) + 5).toNat

end

end A318342.P4976634794695720779

/-! ## A318342.P15219951857178102481

`A318343(A055999(n+4))`
-/

namespace A318342.P15219951857178102481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (A055999 (n + 4)).toNat

end

end A318342.P15219951857178102481

/-!
# A318343: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318343, there is no canonical definition to state claims against.
-/

/-! ## A318343.P4640544095103832505

`A317764(A299905(n)!+n)`
-/

namespace A318343.P4640544095103832505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (Nat.factorial (A299905 n).toNat + n)

end

end A318343.P4640544095103832505

/-! ## A318343.P7993928470024559610

`A318075(A299905(n)!+n)`
-/

namespace A318343.P7993928470024559610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (Nat.factorial (A299905 n).toNat + n)

end

end A318343.P7993928470024559610

/-! ## A318343.P11723561472956337546

`A318075(n+1)+A057498(A059922(n))`
-/

namespace A318343.P11723561472956337546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (n + 1) + A057498 (A059922 n).toNat

end

end A318343.P11723561472956337546

/-! ## A318343.P15078066330404522700

`A317764(n+1)+A184955(A054142(n))`
-/

namespace A318343.P15078066330404522700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (n + 1) + A184955 (A054142 n).toNat

end

end A318343.P15078066330404522700

/-! ## A318343.P12878703507995599088

`A318075(n+1)+A185044(A099608(n))`
-/

namespace A318343.P12878703507995599088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (n + 1) + A185044 (A099608 n).toNat

end

end A318343.P12878703507995599088

/-!
# A318344: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318344, there is no canonical definition to state claims against.
-/

/-! ## A318344.P14041332661177643650

`A318350(∑[4*n]+1)`
-/

namespace A318344.P14041332661177643650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318344.P14041332661177643650

/-! ## A318344.P14809623055261900478

`record[A214505(n)*A318350(n+1)]`
-/

namespace A318344.P14809623055261900478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A318350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318344.P14809623055261900478

/-! ## A318344.P9730901283913817517

`record[gcd(A037012(n), A318350(n+1))]`
-/

namespace A318344.P9730901283913817517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A318350 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318344.P9730901283913817517

/-! ## A318344.P7332256081718015603

`A318350(A001844(n))+A025466(n)`
-/

namespace A318344.P7332256081718015603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A001844 n).toNat + A025466 n

end

end A318344.P7332256081718015603

/-! ## A318344.P5948031581617484955

`gcd(A151909(n), A318350(A001844(n)))`
-/

namespace A318344.P5948031581617484955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151909 n) (A318350 (A001844 n).toNat)

end

end A318344.P5948031581617484955

/-!
# A318345: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318345, there is no canonical definition to state claims against.
-/

/-! ## A318345.P17067706966841892848

`A318350(∑[n+2]+4)`
-/

namespace A318345.P17067706966841892848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318345.P17067706966841892848

/-! ## A318345.P9706428067512500175

`A291168(n)*A318350(A167614(n+1))`
-/

namespace A318345.P9706428067512500175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A318350 (A167614 (n + 1)).toNat

end

end A318345.P9706428067512500175

/-! ## A318345.P1048850465058555217

`A318350(A167614(n+1))%A041596(n)`
-/

namespace A318345.P1048850465058555217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318350 (A167614 (n + 1)).toNat) (A041596 n)

end

end A318345.P1048850465058555217

/-! ## A318345.P8888886800192984470

`lcm(A033999(n), A318350(A167614(n+1)))`
-/

namespace A318345.P8888886800192984470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318350 (A167614 (n + 1)).toNat)

end

end A318345.P8888886800192984470

/-! ## A318345.P5544260531962630460

`or(A000007(n), A318350(A167614(n+1)))`
-/

namespace A318345.P5544260531962630460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318350 (A167614 (n + 1)).toNat)

end

end A318345.P5544260531962630460

/-!
# A318346: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318346, there is no canonical definition to state claims against.
-/

/-! ## A318346.P11935183697512647830

`A318350(A145018(n+4))`
-/

namespace A318346.P11935183697512647830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A145018 (n + 4)).toNat

end

end A318346.P11935183697512647830

/-! ## A318346.P9890346543425033987

`A318350(A141214(n)+7)`
-/

namespace A318346.P9890346543425033987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A141214 n + 7).toNat

end

end A318346.P9890346543425033987

/-! ## A318346.P8453530814791413423

`A318350(A052905(n)+9)`
-/

namespace A318346.P8453530814791413423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A052905 n + 9).toNat

end

end A318346.P8453530814791413423

/-! ## A318346.P1922303233013071275

`A318350(A055999(n)+10)`
-/

namespace A318346.P1922303233013071275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A055999 n + 10).toNat

end

end A318346.P1922303233013071275

/-! ## A318346.P11780863785924889379

`A318350(A167614(n+2)+1)`
-/

namespace A318346.P11780863785924889379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A167614 (n + 2) + 1).toNat

end

end A318346.P11780863785924889379

/-!
# A318347: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318347, there is no canonical definition to state claims against.
-/

/-! ## A318347.P14508672977081784033

`A318350(A167499(n+3))`
-/

namespace A318347.P14508672977081784033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A167499 (n + 3)).toNat

end

end A318347.P14508672977081784033

/-! ## A318347.P10254215793873939444

`A318350(A155212(n)+13)`
-/

namespace A318347.P10254215793873939444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A155212 n + 13).toNat

end

end A318347.P10254215793873939444

/-! ## A318347.P11403589818571483256

`A318350(A056000(n)+15)`
-/

namespace A318347.P11403589818571483256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A056000 n + 15).toNat

end

end A318347.P11403589818571483256

/-! ## A318347.P4228586137321353966

`A318350(A133263(n+4)+3)`
-/

namespace A318347.P4228586137321353966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A133263 (n + 4) + 3).toNat

end

end A318347.P4228586137321353966

/-! ## A318347.P12875709973971685440

`A318350(A034856(n+3)+7)`
-/

namespace A318347.P12875709973971685440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A034856 (n + 3) + 7).toNat

end

end A318347.P12875709973971685440

/-!
# A318348: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318348, there is no canonical definition to state claims against.
-/

/-! ## A318348.P8893196756513218006

`A318350(A167614(n+4)+3)`
-/

namespace A318348.P8893196756513218006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A167614 (n + 4) + 3).toNat

end

end A318348.P8893196756513218006

/-! ## A318348.P15989302279598630398

`A318350(A000217(n+5)+6)`
-/

namespace A318348.P15989302279598630398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A000217 (n + 5) + 6).toNat

end

end A318348.P15989302279598630398

/-! ## A318348.P3766275687002037003

`A318350(A171463(n+15)+∑[n+4])`
-/

namespace A318348.P3766275687002037003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A171463 (n + 15) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A318348.P3766275687002037003

/-!
# A318349: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318349, there is no canonical definition to state claims against.
-/

/-! ## A318349.P4793971824667429610

`A318350(A000124(n+6)+6)`
-/

namespace A318349.P4793971824667429610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A000124 (n + 6) + 6).toNat

end

end A318349.P4793971824667429610

/-! ## A318349.P649585299569289441

`A318350(A000217(n+6)+7)`
-/

namespace A318349.P649585299569289441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A000217 (n + 6) + 7).toNat

end

end A318349.P649585299569289441

/-! ## A318349.P7019094604316763605

`A318350(A089071(n+8)+5)`
-/

namespace A318349.P7019094604316763605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A089071 (n + 8) + 5).toNat

end

end A318349.P7019094604316763605

/-! ## A318349.P11030778568791457362

`A318350(A027379(n+4)+10)`
-/

namespace A318349.P11030778568791457362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A027379 (n + 4) + 10).toNat

end

end A318349.P11030778568791457362

/-! ## A318349.P8046275449046675472

`A318350(A055999(n+3)+13)`
-/

namespace A318349.P8046275449046675472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318350 (A055999 (n + 3) + 13).toNat

end

end A318349.P8046275449046675472

/-!
# A318350: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318350, there is no canonical definition to state claims against.
-/

/-! ## A318350.P9463348873194534994

`A317773(n+1)+A124763(A099594(n))`
-/

namespace A318350.P9463348873194534994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (n + 1) + A124763 (A099594 n).toNat

end

end A318350.P9463348873194534994

/-! ## A318350.P11320764385074966854

`A318082(n+1)+A124763(A099594(n))`
-/

namespace A318350.P11320764385074966854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (n + 1) + A124763 (A099594 n).toNat

end

end A318350.P11320764385074966854

/-! ## A318350.P9427025006702107199

`A317773(n+1)+A124763(A174545(n))`
-/

namespace A318350.P9427025006702107199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (n + 1) + A124763 (A174545 n).toNat

end

end A318350.P9427025006702107199

/-! ## A318350.P28584640372846639

`A318082(n+1)+A124763(A174545(n))`
-/

namespace A318350.P28584640372846639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (n + 1) + A124763 (A174545 n).toNat

end

end A318350.P28584640372846639

/-! ## A318350.P6683076201621403274

`A317773(n+1)+A124763(A331406(n))`
-/

namespace A318350.P6683076201621403274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (n + 1) + A124763 (A331406 n).toNat

end

end A318350.P6683076201621403274

/-!
# A318351: a(n) is the smallest prime p such that the sum of the first 2*n + 1 odd primes starting with p is prime.

The programs for A318351, there is no canonical definition to state claims against.
-/

/-! ## A318351.P2957396037890297130

`or(1, A089793(n))`
-/

namespace A318351.P2957396037890297130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089793 n)

end

end A318351.P2957396037890297130

/-! ## A318351.P5277244133502891655

`A069902(A089793(n))`
-/

namespace A318351.P5277244133502891655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (A089793 n).toNat

end

end A318351.P5277244133502891655

/-! ## A318351.P14352961555975757226

`A063196(A089793(n)+1)`
-/

namespace A318351.P14352961555975757226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A089793 n + 1).toNat

end

end A318351.P14352961555975757226

/-! ## A318351.P13389442200703235804

`A006530(3*A089793(n))`
-/

namespace A318351.P13389442200703235804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A089793 n).toNat

end

end A318351.P13389442200703235804

/-! ## A318351.P4657849427867238901

`A006530(lcm(3, A089793(n)))`
-/

namespace A318351.P4657849427867238901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 3 (A089793 n))

end

end A318351.P4657849427867238901

/-! ## A318351.P4252848810465998117

`or(1, A000040(A215235(n)))`
-/

namespace A318351.P4252848810465998117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (A215235 n).toNat)

end

end A318351.P4252848810465998117

/-! ## A318351.P4916979536082671096

`A089793(n)+A000007(n)`
-/

namespace A318351.P4916979536082671096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089793 n + A000007 n

end

end A318351.P4916979536082671096

/-! ## A318351.P357929570935893098

`A000265(lcm(2, 1-A089793(n))+1)`
-/

namespace A318351.P357929570935893098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm 2 (1 - A089793 n) + 1)

end

end A318351.P357929570935893098

/-! ## A318351.P7359158636151624483

`A089793(n)+char[A089780(2*(n+2))]`
-/

namespace A318351.P7359158636151624483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089780 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089793 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318351.P7359158636151624483

/-! ## A318351.P17153053753701336371

`A323879(A089793(n)+2)+A089793(n)`
-/

namespace A318351.P17153053753701336371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323879 (A089793 n + 2).toNat + A089793 n

end

end A318351.P17153053753701336371

/-! ## A318351.P13900721447938978656

`A112316(A089793(n)-2)+A089793(n)`
-/

namespace A318351.P13900721447938978656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (A089793 n - 2).toNat + A089793 n

end

end A318351.P13900721447938978656

/-! ## A318351.P14760009268875522447

`A089801(A089801(n)+n)+A089793(n)`
-/

namespace A318351.P14760009268875522447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (A089801 n + (n : ℤ)).toNat + A089793 n

end

end A318351.P14760009268875522447

/-! ## A318351.P4916910928529644502

`A082244(n)+A089793(n)-A070934(n)`
-/

namespace A318351.P4916910928529644502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082244 n + (A089793 n - A070934 n)

end

end A318351.P4916910928529644502

/-! ## A318351.P11628359318213064141

`A000720(A000040(n+1)+1)+A089793(n)-(n+1)`
-/

namespace A318351.P11628359318213064141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + 1).toNat + (A089793 n - (n + 1 : ℤ))

end

end A318351.P11628359318213064141

/-! ## A318351.P8112221402024880129

`or(1, A007610(2*n+1))`
-/

namespace A318351.P8112221402024880129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007610 (2 * n + 1))

end

end A318351.P8112221402024880129

/-! ## A318351.P10688016203501284135

`or(1, A068066(2*n+1))`
-/

namespace A318351.P10688016203501284135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A068066 (2 * n + 1))

end

end A318351.P10688016203501284135

/-! ## A318351.P6689650702640385031

`A089793(n)+A049084(2*(n+1))`
-/

namespace A318351.P6689650702640385031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089793 n + A049084 (2 * (n + 1))

end

end A318351.P6689650702640385031

/-! ## A318351.P6582612720887732868

`A007610(2*n+1)+1-A057427(n)`
-/

namespace A318351.P6582612720887732868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (2 * n + 1) + (1 - A057427 n)

end

end A318351.P6582612720887732868

/-! ## A318351.P17720349259052702548

`A049084(2*(n+1))+A007610(2*n+1)`
-/

namespace A318351.P17720349259052702548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1)) + A007610 (2 * n + 1)

end

end A318351.P17720349259052702548

/-! ## A318351.P7710897942185586352

`A007610(2*n+1)+char[A348325(A007610(2*(n+1)))]`
-/

namespace A318351.P7710897942185586352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 (A007610 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318351.P7710897942185586352

/-!
# A318354: Triangle read by rows: T(n,k) is the number of permutations p of {1..n} such that p(1)=k and p(i+1) < p(i) iff a strict majority of {1..n} \ {p(1)..p(i)} are < p(i).

The programs for A318354, there is no canonical definition to state claims against.
-/

/-! ## A318354.P10071574494563959767

`A346517(n)+A216763(A011856(n+1))`
-/

namespace A318354.P10071574494563959767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 n + A216763 (A011856 (n + 1)).toNat

end

end A318354.P10071574494563959767

/-!
# A318357: Number of non-isomorphic strict multiset partitions of the multiset of prime indices of n.

The programs for A318357, there is no canonical definition to state claims against.
-/

/-! ## A318357.P17267395956891467235

`A318287(A181819(n+1))`
-/

namespace A318357.P17267395956891467235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318287 (A181819 (n + 1)).toNat

end

end A318357.P17267395956891467235

/-! ## A318357.P8021412878648785264

`A318287(∏{e}[n+1, A000040(#)])`
-/

namespace A318357.P8021412878648785264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318287 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A318357.P8021412878648785264

/-! ## A318357.P15627111549158399348

`A318287(∏{e}[n+1, A095320(#)])`
-/

namespace A318357.P15627111549158399348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318287 (∏ p ∈ Nat.primeFactors (f1 n), A095320 (Nat.factorization (f1 n) p)).toNat

end

end A318357.P15627111549158399348

/-! ## A318357.P57166531069081416

`A318287(∏{e}[n+1, A109611(#)])`
-/

namespace A318357.P57166531069081416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318287 (∏ p ∈ Nat.primeFactors (f1 n), A109611 (Nat.factorization (f1 n) p)).toNat

end

end A318357.P57166531069081416

/-! ## A318357.P16028615407311961425

`A318287(∏{e}[n+1, A005180(#+1)])`
-/

namespace A318357.P16028615407311961425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318287 (∏ p ∈ Nat.primeFactors (f1 n), A005180 (Nat.factorization (f1 n) p + 1)).toNat

end

end A318357.P16028615407311961425

/-! ## A318357.P16280187097395915716

`A045778(n+1)-A225639(A306268(n+1))`
-/

namespace A318357.P16280187097395915716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A225639 (A306268 (n + 1)).toNat

end

end A318357.P16280187097395915716

/-! ## A318357.P2839839670948382666

`∑{d}[A335434(n+1), A277446(#²)]`
-/

namespace A318357.P2839839670948382666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A277446 (d ^ 2)

end

end A318357.P2839839670948382666

/-!
# A318360: Number of set multipartitions (multisets of sets) of a multiset whose multiplicities are the prime indices of n.

The programs for A318360, there is no canonical definition to state claims against.
-/

/-! ## A318360.P6958447787001776711

`A050320(A181821(n+1))`
-/

namespace A318360.P6958447787001776711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A181821 (n + 1)).toNat

end

end A318360.P6958447787001776711

/-! ## A318360.P16144938018952697459

`A050325(A361808(n+1))`
-/

namespace A318360.P16144938018952697459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050325 (A361808 (n + 1)).toNat

end

end A318360.P16144938018952697459

/-! ## A318360.P11496016263484490473

`A050320(A304660(n+1))`
-/

namespace A318360.P11496016263484490473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A304660 (n + 1)).toNat

end

end A318360.P11496016263484490473

/-! ## A318360.P18162479151773598502

`A050320(A259939(n))`
-/

namespace A318360.P18162479151773598502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A259939 n).toNat

end

end A318360.P18162479151773598502

/-! ## A318360.P770428893917982080

`A050320(A037019(n+1))`
-/

namespace A318360.P770428893917982080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A037019 (n + 1)).toNat

end

end A318360.P770428893917982080

/-!
# A318361: Number of strict set multipartitions (sets of sets) of a multiset whose multiplicities are the prime indices of n.

The programs for A318361, there is no canonical definition to state claims against.
-/

/-! ## A318361.P8475772812027255951

`A050326(A181821(n+1))`
-/

namespace A318361.P8475772812027255951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A181821 (n + 1)).toNat

end

end A318361.P8475772812027255951

/-! ## A318361.P14333219443981619274

`A050327(A361808(n+1))`
-/

namespace A318361.P14333219443981619274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050327 (A361808 (n + 1)).toNat

end

end A318361.P14333219443981619274

/-! ## A318361.P5531102399223042903

`A050326(A304660(n+1))`
-/

namespace A318361.P5531102399223042903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A304660 (n + 1)).toNat

end

end A318361.P5531102399223042903

/-! ## A318361.P14153513419632250253

`A321188(2*(n+1))+A321188(n+1)`
-/

namespace A318361.P14153513419632250253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321188 (2 * (n + 1)) + A321188 (n + 1)

end

end A318361.P14153513419632250253

/-! ## A318361.P14825297990126853523

`A050326(A259939(n))`
-/

namespace A318361.P14825297990126853523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A259939 n).toNat

end

end A318361.P14825297990126853523

/-!
# A318362: Number of non-isomorphic set multipartitions (multisets of sets) of a multiset whose multiplicities are the prime indices of n.

The programs for A318362, there is no canonical definition to state claims against.
-/

/-! ## A318362.P15023746514808794026

`A318369(A181821(n+1))`
-/

namespace A318362.P15023746514808794026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318369 (A181821 (n + 1)).toNat

end

end A318362.P15023746514808794026

/-! ## A318362.P6034062744081556006

`A276227(A078899(n+1))^Δ[A004885(n+1)]`
-/

namespace A318362.P6034062744081556006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276227 (A078899 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A318362.P6034062744081556006

/-! ## A318362.P2805667642337919790

`A276227(A078899(n+1))+A033684(A032385(n+1))`
-/

namespace A318362.P2805667642337919790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276227 (A078899 (n + 1)).toNat + A033684 (A032385 (n + 1)).toNat

end

end A318362.P2805667642337919790

/-! ## A318362.P12982713282020969113

`A078899(A000043(n+1))*A276227(A078899(n+1))`
-/

namespace A318362.P12982713282020969113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (A000043 (n + 1)).toNat * A276227 (A078899 (n + 1)).toNat

end

end A318362.P12982713282020969113

/-! ## A318362.P3783452143451701947

`A276227(A078899(n+1))^A147085(A007733(n+1))`
-/

namespace A318362.P3783452143451701947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276227 (A078899 (n + 1)).toNat : ℚ) ^ (A147085 (A007733 (n + 1)).toNat : ℤ)

end

end A318362.P3783452143451701947

/-!
# A318363: Multiplicative with a(prime(i)^k) = prime(k)^(2^(i-1)).

The programs for A318363, there is no canonical definition to state claims against.
-/

/-! ## A318363.P2024205072544119151

`A308317(n+1)+char[15]`
-/

namespace A318363.P2024205072544119151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308317 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318363.P2024205072544119151

/-! ## A318363.P117198189097257542

`or(A112526(n+1), A308317(n+1))`
-/

namespace A318363.P117198189097257542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112526 (n + 1)) (A308317 (n + 1))

end

end A318363.P117198189097257542

/-! ## A318363.P4677187902484489460

`A335487(A019555(n+1))+A308317(n+1)`
-/

namespace A318363.P4677187902484489460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335487 (A019555 (n + 1)).toNat + A308317 (n + 1)

end

end A318363.P4677187902484489460

/-! ## A318363.P16197900215285811317

`A308349(A324912(n+1))+A308317(n+1)`
-/

namespace A318363.P16197900215285811317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308349 (A324912 (n + 1)).toNat + A308317 (n + 1)

end

end A318363.P16197900215285811317

/-! ## A318363.P13237808292073954577

`xor(A015595(A014312(n+1)), A308317(n+1))`
-/

namespace A318363.P13237808292073954577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015595 (A014312 (n + 1)).toNat) (A308317 (n + 1))

end

end A318363.P13237808292073954577

/-!
# A318364: Expansion of e.g.f. exp(x*exp(x)/(1 - x)).

The programs for A318364, there is no canonical definition to state claims against.
-/

/-! ## A318364.P3346396896321982254

`A327206(∏[abs(1-2*n)])-A327198(n)`
-/

namespace A318364.P3346396896321982254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327206 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - A327198 n

end

end A318364.P3346396896321982254

/-! ## A318364.P17505659286980983874

`A034888(A366401(n)-A358014(n))`
-/

namespace A318364.P17505659286980983874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A366401 n - A358014 n).toNat

end

end A318364.P17505659286980983874

/-!
# A318365: Expansion of e.g.f. exp(x*exp(-x)/(1 - x)).

The programs for A318365, there is no canonical definition to state claims against.
-/

/-! ## A318365.P16763046334263712697

`A097992(A203268(n)+A125953(n))`
-/

namespace A318365.P16763046334263712697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A203268 n + A125953 n).toNat

end

end A318365.P16763046334263712697

/-! ## A318365.P12154688934368064197

`A157221(n)+A059995(A188113(n+1))`
-/

namespace A318365.P12154688934368064197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157221 n + A059995 (A188113 (n + 1)).toNat

end

end A318365.P12154688934368064197

/-! ## A318365.P11477474175907585938

`A007318(A077939(n))%A018658(n+2)`
-/

namespace A318365.P11477474175907585938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A077939 n).toNat) (A018658 (n + 2))

end

end A318365.P11477474175907585938

/-!
# A318366: a(n) = Sum_{d|n} bigomega(d)*bigomega(n/d).

The programs for A318366, the canonical program `A318366.P15355875202424512208` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318366 has offset 1).

The definition of A318366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318366.P2780388708475852578

`A322375(A101296(n+1))`
-/

namespace A318366.P2780388708475852578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322375 (A101296 (n + 1)).toNat

end

end A318366.P2780388708475852578

namespace A318366

/-- `A322375(A101296(n+1))` -/
def P2780388708475852578.Spec : Prop :=
  ∀ n, P2780388708475852578.a n = A318366 (n + 1)

end A318366

/-! ## A318366.P10738070944586203787

`∑{d}[n+1, A001222(#)*A001222((n+1)/#)]`
-/

namespace A318366.P10738070944586203787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d * A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318366.P10738070944586203787

namespace A318366

/-- `∑{d}[n+1, A001222(#)*A001222((n+1)/#)]` -/
def P10738070944586203787.Spec : Prop :=
  ∀ n, P10738070944586203787.a n = A318366 (n + 1)

end A318366

/-! ## A318366.P15355875202424512208

`∑{d}[n+1, A069264(#)*A069513((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318366

/-- `∑{d}[n+1, A069264(#)*A069513((n+1)/#)]` -/
def P15355875202424512208.Spec : Prop :=
  ∀ n, P15355875202424512208.a n = A318366 (n + 1)

theorem P15355875202424512208.correct : P15355875202424512208.Spec := by
  intro n
  simp only [A318366, Nat.add_sub_cancel]

end A318366

/-! ## A318366.P2605569925272473996

`∑{d}[n+1, A001222(((n+1)/#)^A001222(#))]`
-/

namespace A318366.P2605569925272473996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (d : ℚ)) ^ (A001222 d : ℤ))).toNat

end

end A318366.P2605569925272473996

namespace A318366

/-- `∑{d}[n+1, A001222(((n+1)/#)^A001222(#))]` -/
def P2605569925272473996.Spec : Prop :=
  ∀ n, P2605569925272473996.a n = A318366 (n + 1)

end A318366

/-! ## A318366.P654959639603265743

`∑{e}[∏{d}[n+1, #]/(n+1), A360015(#)]`
-/

namespace A318366.P654959639603265743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A360015 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A318366.P654959639603265743

namespace A318366

/-- `∑{e}[∏{d}[n+1, #]/(n+1), A360015(#)]` -/
def P654959639603265743.Spec : Prop :=
  ∀ n, P654959639603265743.a n = A318366 (n + 1)

end A318366

/-!
# A318367: a(n) = Sum_{d|n} (-1)^(n/d+1)*d*prime(d).

The programs for A318367, the canonical program `A318367.P16805591933240273274` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318367 has offset 1).

The definition of A318367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318367.P16805591933240273274

`∑{d}[n+1, A033286(#)*A033999((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318367

/-- `∑{d}[n+1, A033286(#)*A033999((n+1)/#-1)]` -/
def P16805591933240273274.Spec : Prop :=
  ∀ n, P16805591933240273274.a n = A318367 (n + 1)

theorem P16805591933240273274.correct : P16805591933240273274.Spec := by
  intro n
  simp only [A318367, Nat.add_sub_cancel]

end A318367

/-!
# A318368: a(n) = Sum_{d|n} (-1)^(n/d+1)*d*2^(d-1).

The programs for A318368, the canonical program `A318368.P4332297916626157429` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318368 has offset 1).

The definition of A318368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318368.P4332297916626157429

`∑{d}[n+1, #*A007179(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318368

/-- `∑{d}[n+1, #*A007179(#)]` -/
def P4332297916626157429.Spec : Prop :=
  ∀ n, P4332297916626157429.a n = A318368 (n + 1)

theorem P4332297916626157429.correct : P4332297916626157429.Spec := by
  intro n
  simp only [A318368, Nat.add_sub_cancel]

end A318368

/-! ## A318368.P801222180345326168

`A209839(A369683(n))`
-/

namespace A318368.P801222180345326168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209839 (A369683 n).toNat

end

end A318368.P801222180345326168

namespace A318368

/-- `A209839(A369683(n))` -/
def P801222180345326168.Spec : Prop :=
  ∀ n, P801222180345326168.a n = A318368 (n + 1)

end A318368

/-!
# A318369: Number of non-isomorphic set multipartitions (multisets of sets) of the multiset of prime indices of n.

The programs for A318369, there is no canonical definition to state claims against.
-/

/-! ## A318369.P8405653328703565681

`floor(cosh(∏{e}[n+1, #+1]/(∑{e}[n+1, #]+1)))`
-/

namespace A318369.P8405653328703565681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1 : ℕ) : ℚ) : ℝ)⌋

end

end A318369.P8405653328703565681

/-! ## A318369.P251818981412908446

`ceil(sqrt(A096825(n+1)!))`
-/

namespace A318369.P251818981412908446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial (A096825 (n + 1)).toNat : ℝ)⌉

end

end A318369.P251818981412908446

/-! ## A318369.P8354140233359198063

`ceil(sqrt(A345926(n+1)!))`
-/

namespace A318369.P8354140233359198063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial (A345926 (n + 1)).toNat : ℝ)⌉

end

end A318369.P8354140233359198063

/-! ## A318369.P17569930984682776826

`round(sqrt(A285572(n+1)+1))`
-/

namespace A318369.P17569930984682776826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A285572 (n + 1) + 1 : ℝ))

end

end A318369.P17569930984682776826

/-! ## A318369.P18050662971505930853

`round(sqrt(A305150((n+1)²)+1))`
-/

namespace A318369.P18050662971505930853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A305150 ((n + 1) ^ 2) + 1 : ℝ))

end

end A318369.P18050662971505930853

/-! ## A318369.P11620673287985195543

`A006530(floor(cosh(∑{e}[n+1, tanh(#)]))!)`
-/

namespace A318369.P11620673287985195543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial ⌊Real.cosh (∑ p ∈ Nat.primeFactors (f1 n), Real.tanh (Nat.factorization (f1 n) p : ℝ))⌋.toNat)

end

end A318369.P11620673287985195543

/-! ## A318369.P9730922628451742327

`A000041(floor(∏{e}[(n+1)², 2-acot(#)]))`
-/

namespace A318369.P9730922628451742327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋.toNat

end

end A318369.P9730922628451742327

/-! ## A318369.P7972699942324185473

`A002243(floor(∏{e}[(n+1)², 2-acot(#)]))`
-/

namespace A318369.P7972699942324185473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002243 ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋.toNat

end

end A318369.P7972699942324185473

/-! ## A318369.P17696322957896769162

`A060000(floor(∏{e}[(n+1)², 2-acot(#)]))`
-/

namespace A318369.P17696322957896769162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋.toNat

end

end A318369.P17696322957896769162

/-! ## A318369.P3303064026073001650

`A094739(floor(∏{e}[(n+1)², 2-acot(#)]))`
-/

namespace A318369.P3303064026073001650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094739 ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋.toNat

end

end A318369.P3303064026073001650

/-!
# A318370: Number of non-isomorphic strict set multipartitions (sets of sets) of the multiset of prime indices of n.

The programs for A318370, there is no canonical definition to state claims against.
-/

/-! ## A318370.P2695823115822792269

`ceil(γ*A050326(n+1))`
-/

namespace A318370.P2695823115822792269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A050326 (n + 1) : ℝ)⌉

end

end A318370.P2695823115822792269

/-! ## A318370.P17398409778092248755

`floor(sqrt(3*A339742(n+1)))`
-/

namespace A318370.P17398409778092248755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A339742 (n + 1))

end

end A318370.P17398409778092248755

/-! ## A318370.P13905719148939105193

`floor(sqrt(3*A381633(n+1)))`
-/

namespace A318370.P13905719148939105193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A381633 (n + 1))

end

end A318370.P13905719148939105193

/-! ## A318370.P1405766718015688372

`C(∑{p}[n+1, gcd(n, #)], A051903(n+1))`
-/

namespace A318370.P1405766718015688372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) (A051903 (n + 1)).toNat

end

end A318370.P1405766718015688372

/-! ## A318370.P10771329626718665973

`A030530(A050326(n+1))`
-/

namespace A318370.P10771329626718665973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A050326 (n + 1)).toNat

end

end A318370.P10771329626718665973

/-! ## A318370.P14446170507288228074

`A029931(A339742(n+1))`
-/

namespace A318370.P14446170507288228074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A339742 (n + 1)).toNat

end

end A318370.P14446170507288228074

/-! ## A318370.P8174643511624283426

`A318371(A181819(n+1))`
-/

namespace A318370.P8174643511624283426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318371 (A181819 (n + 1)).toNat

end

end A318370.P8174643511624283426

/-! ## A318370.P763847561480615767

`A000720(A050326(n+1)+1)`
-/

namespace A318370.P763847561480615767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A050326 (n + 1) + 1).toNat

end

end A318370.P763847561480615767

/-! ## A318370.P14843736197563178612

`A056239(A050326(n+1)+1)`
-/

namespace A318370.P14843736197563178612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A050326 (n + 1) + 1).toNat

end

end A318370.P14843736197563178612

/-!
# A318371: Number of non-isomorphic strict set multipartitions (sets of sets) of a multiset whose multiplicities are the prime indices of n.

The programs for A318371, there is no canonical definition to state claims against.
-/

/-! ## A318371.P9307427645038065311

`A318370(A181821(n+1))`
-/

namespace A318371.P9307427645038065311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318370 (A181821 (n + 1)).toNat

end

end A318371.P9307427645038065311

/-! ## A318371.P10422116909558159091

`A295306(A000079(n))+A000688(n+1)`
-/

namespace A318371.P10422116909558159091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A000079 n).toNat + A000688 (n + 1)

end

end A318371.P10422116909558159091

/-! ## A318371.P16061900595760334929

`A328855(n+1)+A295306(A000079(n))`
-/

namespace A318371.P16061900595760334929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (n + 1) + A295306 (A000079 n).toNat

end

end A318371.P16061900595760334929

/-! ## A318371.P2009235973578407848

`A105560(n+1)-A001221(A289095(n))`
-/

namespace A318371.P2009235973578407848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1) - A001221 (A289095 n).toNat

end

end A318371.P2009235973578407848

/-! ## A318371.P4630080252278455186

`A036042(A318361(n+1)^A292193(n))`
-/

namespace A318371.P4630080252278455186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (SequenceMachineLib.roundAway ((A318361 (n + 1) : ℚ) ^ (A292193 n : ℤ))).toNat

end

end A318371.P4630080252278455186

/-!
# A318372: a(1) = 1; a(n+1) = Sum_{d|n} d*a(d).

The programs for A318372, there is no canonical definition to state claims against.
-/

/-! ## A318372.P14439318394497381842

`A123108(A219661(n+1)-1+n)`
-/

namespace A318372.P14439318394497381842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A219661 (n + 1) - 1 + (n : ℤ)).toNat

end

end A318372.P14439318394497381842

/-! ## A318372.P13379432972205753693

`A004526(A219661(n+1)+abs(1-n))`
-/

namespace A318372.P13379432972205753693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A219661 (n + 1) + |1 - (n : ℤ)|).toNat

end

end A318372.P13379432972205753693

/-! ## A318372.P12301342126479327884

`A156253(A107504(n)+A007526(n))`
-/

namespace A318372.P12301342126479327884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A107504 n + A007526 n).toNat

end

end A318372.P12301342126479327884

/-!
# A318376: a(n) = F(n+1)^3 - 3*F(n-1)*F(n)^2, where F(n) = A000045(n), the n-th Fibonacci number.

The programs for A318376, the canonical program `A318376.P2467751550996038567` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318376 has offset 0).

The definition of A318376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318376.P2467751550996038567

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=15`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318376

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P2467751550996038567.Spec : Prop :=
  ∀ n, P2467751550996038567.a n = A318376 n

theorem P2467751550996038567.correct : P2467751550996038567.Spec := by
  intro n
  simp only [A318376]

end A318376

/-! ## A318376.P2114129687829191468

`A001611(3*n)-2*A005968(n)`
-/

namespace A318376.P2114129687829191468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (3 * n) - 2 * A005968 n

end

end A318376.P2114129687829191468

namespace A318376

/-- `A001611(3*n)-2*A005968(n)` -/
def P2114129687829191468.Spec : Prop :=
  ∀ n, P2114129687829191468.a n = A318376 n

end A318376

/-! ## A318376.P17540342241469892349

`A318405(∑[n+3])`
-/

namespace A318376.P17540342241469892349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318376.P17540342241469892349

namespace A318376

/-- `A318405(∑[n+3])` -/
def P17540342241469892349.Spec : Prop :=
  ∀ n, P17540342241469892349.a n = A318376 n

end A318376

/-! ## A318376.P6400261919325955843

`or(1, A318405(A141214(n)))`
-/

namespace A318376.P6400261919325955843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A318405 (A141214 n).toNat)

end

end A318376.P6400261919325955843

namespace A318376

/-- `or(1, A318405(A141214(n)))` -/
def P6400261919325955843.Spec : Prop :=
  ∀ n, P6400261919325955843.a n = A318376 n

end A318376

/-! ## A318376.P13498758895759196169

`A007318(A007318(n))*A318405(A141214(n))`
-/

namespace A318376.P13498758895759196169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * A318405 (A141214 n).toNat

end

end A318376.P13498758895759196169

namespace A318376

/-- `A007318(A007318(n))*A318405(A141214(n))` -/
def P13498758895759196169.Spec : Prop :=
  ∀ n, P13498758895759196169.a n = A318376 n

end A318376

/-!
# A318387: Starting with a(1) = 6, a(n) is the smallest number whose sum of prime divisors (taken with multiplicity) is a(n-1). In other words, a(n) = A056240(a(n-1)).

The programs for A318387, there is no canonical definition to state claims against.
-/

/-! ## A318387.P7619414325696511017

`A056240(a(n-1))` with `a(0)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318387.P7619414325696511017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A056240 (a (n - 1)).toNat

end

end A318387.P7619414325696511017

/-! ## A318387.P2547982559498591206

`A386524(n+2)+A203568(A281955(2*(n+2)))`
-/

namespace A318387.P2547982559498591206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386524 (n + 2) + A203568 (A281955 (2 * (n + 2))).toNat

end

end A318387.P2547982559498591206

/-! ## A318387.P15781954687303119038

`A386524(n+2)+A195470(A164090(2*n+3))`
-/

namespace A318387.P15781954687303119038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386524 (n + 2) + A195470 (A164090 (2 * n + 3)).toNat

end

end A318387.P15781954687303119038

/-! ## A318387.P11490102772340390898

`A288814(a(n-1))` with `a(0)=6`
-/

namespace A318387.P11490102772340390898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A288814 (a (n - 1)).toNat

end

end A318387.P11490102772340390898

/-! ## A318387.P3744833989144732571

`A288814(A386524(n+1))`
-/

namespace A318387.P3744833989144732571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A386524 (n + 1)).toNat

end

end A318387.P3744833989144732571

/-!
# A318389: Regular triangle where T(n,k) is the number of pairs of set partitions of {1,...,n} with meet {{1},...,{n}} and join of length k.

The programs for A318389, there is no canonical definition to state claims against.
-/

/-! ## A318389.P6231142094246139158

`A318393(A332699(n)+1)`
-/

namespace A318389.P6231142094246139158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318393 (A332699 n + 1).toNat

end

end A318389.P6231142094246139158

/-!
# A318390: Regular triangle where T(n,k) is the number of pairs of set partitions of {1,...,n} with join {{1,...,n}} and meet of length k.

The programs for A318390, there is no canonical definition to state claims against.
-/

/-! ## A318390.P9158055591372897765

`A008277(n+1)*A181939(A002260(n+1))`
-/

namespace A318390.P9158055591372897765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A181939 (A002260 (n + 1)).toNat

end

end A318390.P9158055591372897765

/-! ## A318390.P6430379616730887825

`A048993(A014132(n+1))*A181939(A002260(n+1))`
-/

namespace A318390.P6430379616730887825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014132 (n + 1)).toNat * A181939 (A002260 (n + 1)).toNat

end

end A318390.P6430379616730887825

/-! ## A318390.P16809939373620156902

`A008278(A061579(n)+1)*A181939(A002260(n+1))`
-/

namespace A318390.P16809939373620156902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A061579 n + 1).toNat * A181939 (A002260 (n + 1)).toNat

end

end A318390.P16809939373620156902

/-! ## A318390.P14177328462621287998

`A181939(A002260(n+1))*A285012(A064801(n+1))`
-/

namespace A318390.P14177328462621287998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181939 (A002260 (n + 1)).toNat * A285012 (A064801 (n + 1)).toNat

end

end A318390.P14177328462621287998

/-! ## A318390.P11387932096981480094

`A181939(A002260(n+1))/A140303(n)*A075498(n+1)`
-/

namespace A318390.P11387932096981480094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181939 (A002260 (n + 1)).toNat : ℚ) / (A140303 n : ℚ) * (A075498 (n + 1) : ℚ)

end

end A318390.P11387932096981480094

/-!
# A318391: Regular triangle where T(n,k) is the number of pairs of set partitions of {1,...,n} with meet of length k.

The programs for A318391, there is no canonical definition to state claims against.
-/

/-! ## A318391.P18206707815788447087

`A008277(n+1)*A059849(A002260(n+1))`
-/

namespace A318391.P18206707815788447087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A059849 (A002260 (n + 1)).toNat

end

end A318391.P18206707815788447087

/-! ## A318391.P681190841012138295

`A008278(A061579(n)+1)*A059849(A002260(n+1))`
-/

namespace A318391.P681190841012138295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A061579 n + 1).toNat * A059849 (A002260 (n + 1)).toNat

end

end A318391.P681190841012138295

/-! ## A318391.P13695503998578467975

`A059849(A002260(n+1))*A075498(n+1)/A140303(n)`
-/

namespace A318391.P13695503998578467975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059849 (A002260 (n + 1)).toNat * A075498 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A318391.P13695503998578467975

/-! ## A318391.P3407005895442119825

`A059849(A002260(n+1))/A002260(n+1)*A321331(n)`
-/

namespace A318391.P3407005895442119825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059849 (A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A321331 n : ℚ)

end

end A318391.P3407005895442119825

/-! ## A318391.P6531443184364869011

`A075499(n+1)/A130321(n)²*A059849(A002260(n+1))`
-/

namespace A318391.P6531443184364869011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ) * (A059849 (A002260 (n + 1)).toNat : ℚ)

end

end A318391.P6531443184364869011

/-!
# A318392: Regular triangle where T(n,k) is the number of pairs of set partitions of {1,...,n} with join of length k.

The programs for A318392, there is no canonical definition to state claims against.
-/

/-! ## A318392.P16246760988763103058

`A326966(A008969(n+2)+1)`
-/

namespace A318392.P16246760988763103058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326966 (A008969 (n + 2) + 1).toNat

end

end A318392.P16246760988763103058

/-! ## A318392.P16579422680787464907

`A269950(n)+A051775(A353256(n))`
-/

namespace A318392.P16579422680787464907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269950 n + A051775 (A353256 n).toNat

end

end A318392.P16579422680787464907

/-! ## A318392.P12446445699163002413

`A099375(A025581(n)*A213228(n))`
-/

namespace A318392.P12446445699163002413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A025581 n * A213228 n).toNat

end

end A318392.P12446445699163002413

/-!
# A318395: Number of nonnegative integer matrices with values summing to n, up to transposition and permutation of rows and columns.

The programs for A318395, there is no canonical definition to state claims against.
-/

/-! ## A318395.P8431250792032820384

`(A007716(n)+A316983(n))/2`
-/

namespace A318395.P8431250792032820384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007716 n + A316983 n : ℚ) / 2

end

end A318395.P8431250792032820384

/-! ## A318395.P9987591771060530271

`(A318795((1-n)²+n²)+A316983(n))/2`
-/

namespace A318395.P9987591771060530271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318795 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat + A316983 n : ℚ) / 2

end

end A318395.P9987591771060530271

/-! ## A318395.P12983032861163756564

`A014682(A316983(n)+A007716(n))`
-/

namespace A318395.P12983032861163756564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A316983 n + A007716 n).toNat

end

end A318395.P12983032861163756564

/-! ## A318395.P16196612318278532233

`A273943(A316983(n)+A007716(n))`
-/

namespace A318395.P16196612318278532233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A316983 n + A007716 n).toNat

end

end A318395.P16196612318278532233

/-! ## A318395.P6852163884799136577

`A302042(A316983(n)+A007716(n))`
-/

namespace A318395.P6852163884799136577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A316983 n + A007716 n).toNat

end

end A318395.P6852163884799136577

/-!
# A318396: Number of pairs of integer partitions (y, v) of n such that there exists a pair of set partitions of {1,...,n} with meet {{1},...,{n}}, the first having block sizes y and the second v.

The programs for A318396, there is no canonical definition to state claims against.
-/

/-! ## A318396.P11966234569677691318

`(A182988(n)+A000041(n))/2`
-/

namespace A318396.P11966234569677691318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182988 n + A000041 n : ℚ) / 2

end

end A318396.P11966234569677691318

/-! ## A318396.P5722670778796624392

`(A182988(n)+∑[A002865(n)])/2`
-/

namespace A318396.P5722670778796624392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A182988 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A318396.P5722670778796624392

/-! ## A318396.P11111416151020627056

`(A182988(n)+A133041(n)-n)/2`
-/

namespace A318396.P11111416151020627056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182988 n + (A133041 n - (n : ℤ)) : ℚ) / 2

end

end A318396.P11111416151020627056

/-! ## A318396.P13668245523487663542

`(A182988(n)+A028310(n)+A000094(n+1))/2`
-/

namespace A318396.P13668245523487663542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182988 n + (A028310 n + A000094 (n + 1)) : ℚ) / 2

end

end A318396.P13668245523487663542

/-! ## A318396.P11045396861188619835

`(A001255(n)-A248476(A028310(n))+A133041(n)-n)/2`
-/

namespace A318396.P11045396861188619835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001255 n - A248476 (A028310 n).toNat + (A133041 n - (n : ℤ)) : ℚ) / 2

end

end A318396.P11045396861188619835

/-!
# A318397: Triangle read by rows: T(n,k) = binomial(n,k)^2 * binomial(2*(n-k), n-k).

The programs for A318397, the canonical program `A318397.P14949350863624515228` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318397 has offset 0).

The definition of A318397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))²*C(2*(row(n)-col(n)), row(n)-col(n))` (program `A318397.P14949350863624515228`, by `A318397.P14949350863624515228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318397.P14949350863624515228

`C(row(n), col(n))²*C(2*(row(n)-col(n)), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318397

/-- `C(row(n), col(n))²*C(2*(row(n)-col(n)), row(n)-col(n))` -/
def P14949350863624515228.Spec : Prop :=
  ∀ n, (P14949350863624515228.a n : ℤ) = A318397 n

theorem P14949350863624515228.correct : P14949350863624515228.Spec := by
  intro n
  simp only [A318397]

end A318397

/-! ## A318397.P8160052247062023379

`A367177(A061579(n))`
-/

namespace A318397.P8160052247062023379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367177 (A061579 n).toNat

end

end A318397.P8160052247062023379

namespace A318397

/-- `A367177(A061579(n))` -/
def P8160052247062023379.Spec : Prop :=
  ∀ n, P8160052247062023379.a n = A318397 n

end A318397

/-! ## A318397.P5800206911682622285

`A367177(A038722(n+2))`
-/

namespace A318397.P5800206911682622285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367177 (A038722 (n + 2)).toNat

end

end A318397.P5800206911682622285

namespace A318397

/-- `A367177(A038722(n+2))` -/
def P5800206911682622285.Spec : Prop :=
  ∀ n, P5800206911682622285.a n = A318397 n

end A318397

/-! ## A318397.P11651447552600665572

`A008459(n)*A106187(n)`
-/

namespace A318397.P11651447552600665572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A106187 n

end

end A318397.P11651447552600665572

namespace A318397

/-- `A008459(n)*A106187(n)` -/
def P11651447552600665572.Spec : Prop :=
  ∀ n, P11651447552600665572.a n = A318397 n

theorem P11651447552600665572.correct : P11651447552600665572.Spec := by
  intro n
  simp only [A318397, Nat.add_sub_cancel, A318397.P11651447552600665572.a, A318397.P14949350863624515228.a, A008459, A008459.P3220700038138124146.a, A106187, A106187.P17798266359033400310.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318397

/-! ## A318397.P214394410800916410

`A007318(n)*A117852(n)`
-/

namespace A318397.P214394410800916410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A117852 n

end

end A318397.P214394410800916410

namespace A318397

/-- `A007318(n)*A117852(n)` -/
def P214394410800916410.Spec : Prop :=
  ∀ n, P214394410800916410.a n = A318397 n

end A318397

/-! ## A318397.P1810253859110995907

`abs(A108086(n)*A117852(n))`
-/

namespace A318397.P1810253859110995907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A117852 n|

end

end A318397.P1810253859110995907

namespace A318397

/-- `abs(A108086(n)*A117852(n))` -/
def P1810253859110995907.Spec : Prop :=
  ∀ n, P1810253859110995907.a n = A318397 n

end A318397

/-! ## A318397.P3737246436775961435

`abs(A117852(n)*A130595(n))`
-/

namespace A318397.P3737246436775961435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117852 n * A130595 n|

end

end A318397.P3737246436775961435

namespace A318397

/-- `abs(A117852(n)*A130595(n))` -/
def P3737246436775961435.Spec : Prop :=
  ∀ n, P3737246436775961435.a n = A318397 n

end A318397

/-! ## A318397.P3931738511295108758

`A007318(n)²*A106187(n)`
-/

namespace A318397.P3931738511295108758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A106187 n

end

end A318397.P3931738511295108758

namespace A318397

/-- `A007318(n)²*A106187(n)` -/
def P3931738511295108758.Spec : Prop :=
  ∀ n, P3931738511295108758.a n = A318397 n

theorem P3931738511295108758.correct : P3931738511295108758.Spec := by
  intro n
  simp only [A318397, Nat.add_sub_cancel, A318397.P3931738511295108758.a, A318397.P14949350863624515228.a, A007318, A007318.P11755526479805562006.a, A106187, A106187.P17798266359033400310.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318397

/-! ## A318397.P3331731333700820300

`A130595(n)²*A106187(n)`
-/

namespace A318397.P3331731333700820300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A106187 n

end

end A318397.P3331731333700820300

namespace A318397

/-- `A130595(n)²*A106187(n)` -/
def P3331731333700820300.Spec : Prop :=
  ∀ n, P3331731333700820300.a n = A318397 n

end A318397

/-! ## A318397.P2963293827609481584

`sqrt(A008459(n))*A117852(n)`
-/

namespace A318397.P2963293827609481584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A117852 n : ℝ)

end

end A318397.P2963293827609481584

namespace A318397

/-- `sqrt(A008459(n))*A117852(n)` -/
def P2963293827609481584.Spec : Prop :=
  ∀ n, P2963293827609481584.a n = (A318397 n : ℝ)

end A318397

