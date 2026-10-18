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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A055700: Numbers k such that k | sigma_6(k) + phi(k)^6.

The programs for A055700, there is no canonical definition to state claims against.
-/

/-! ## A055700.P3091616659113231930

`A003963(or(n!-1, Δ[Δ[n!]]))`
-/

namespace A055700.P3091616659113231930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor ((Nat.factorial n : ℤ) - 1) (f1 (n + 1) - f1 n)).toNat

end

end A055700.P3091616659113231930

/-! ## A055700.P8402160685612645910

`A331267(A068911(∑[n]))`
-/

namespace A055700.P8402160685612645910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331267 (A068911 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055700.P8402160685612645910

/-!
# A055702: Numbers n such that n | Sigma_8(n) + Phi(n)^8.

The programs for A055702, there is no canonical definition to state claims against.
-/

/-! ## A055702.P1651947744739360302

`A082481(∏[∑[A111281(n)]])`
-/

namespace A055702.P1651947744739360302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082481 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055702.P1651947744739360302

/-!
# A055704: Numbers k such that n | sigma_10(k) + phi(k)^10.

The programs for A055704, there is no canonical definition to state claims against.
-/

/-! ## A055704.P17470596391556024100

`A005117(A007306(n)+A002485(n))`
-/

namespace A055704.P17470596391556024100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A007306 n + A002485 n).toNat

end

end A055704.P17470596391556024100

/-! ## A055704.P16971869547800418981

`A161152(A007318(n)+A002485(n))`
-/

namespace A055704.P16971869547800418981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161152 (A007318 n + A002485 n).toNat

end

end A055704.P16971869547800418981

/-!
# A055705: Numbers k such that k | sigma_11(k) - phi(k)^11.

The programs for A055705, there is no canonical definition to state claims against.
-/

/-! ## A055705.P3067988337729641321

`A225530(∑{d}[n+1, #%2]+3^n)`
-/

namespace A055705.P3067988337729641321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (∑ d ∈ Nat.divisors (f1 n), d % 2 + 3 ^ n)

end

end A055705.P3067988337729641321

/-! ## A055705.P14469935093126533576

`A225530(A089408(n)+3^n)`
-/

namespace A055705.P14469935093126533576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A089408 n + (3 ^ n : ℤ)).toNat

end

end A055705.P14469935093126533576

/-!
# A055706: Numbers n such that n | sigma_12(n) + phi(n)^12.

The programs for A055706, there is no canonical definition to state claims against.
-/

/-! ## A055706.P12928976960470506096

`A164947(record[A185896(n)])`
-/

namespace A055706.P12928976960470506096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055706.P12928976960470506096

/-!
# A055709: Numbers k such that k | sigma_5(k).

The programs for A055709, there is no canonical definition to state claims against.
-/

/-! ## A055709.P17822554777238755173

`record[gcd(n+1, A001160(n+1))]`
-/

namespace A055709.P17822554777238755173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001160 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055709.P17822554777238755173

/-! ## A055709.P6992397617693898054

`record[gcd(n+2, A279364(n+2))]`
-/

namespace A055709.P6992397617693898054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A279364 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055709.P6992397617693898054

/-! ## A055709.P15951170017411992953

`record[gcd(A001160(n+1), A153152(n))]`
-/

namespace A055709.P15951170017411992953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001160 (n + 1)) (A153152 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055709.P15951170017411992953

/-! ## A055709.P16011591420111352422

`record[gcd(A282751(n+1)/(n+1)², A131738(n))]`
-/

namespace A055709.P16011591420111352422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A282751 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ))) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055709.P16011591420111352422

/-! ## A055709.P3577686226804405431

`record[gcd(A282050(n+1)/(n+1), A000027(n+1))]`
-/

namespace A055709.P3577686226804405431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A282050 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055709.P3577686226804405431

/-!
# A055710: Numbers k such that k | sigma_6(k).

The programs for A055710, there is no canonical definition to state claims against.
-/

/-! ## A055710.P13146203308976114139

`lt[A013954(n+1)%(n+1), 1]+1`
-/

namespace A055710.P13146203308976114139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013954 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A055710.P13146203308976114139

/-!
# A055711: Numbers k such that k | sigma_7(k).

The programs for A055711, there is no canonical definition to state claims against.
-/

/-! ## A055711.P13041338285492753935

`A108337(A008090(n))`
-/

namespace A055711.P13041338285492753935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108337 (A008090 n).toNat

end

end A055711.P13041338285492753935

/-!
# A055713: Numbers k such that k | sigma_9(k).

The programs for A055713, there is no canonical definition to state claims against.
-/

/-! ## A055713.P4948467322746787741

`A315187(eq[1, A068451(n+1)])`
-/

namespace A055713.P4948467322746787741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055713.P4948467322746787741

/-!
# A055715: Numbers k such that k | sigma_11(k).

The programs for A055715, there is no canonical definition to state claims against.
-/

/-! ## A055715.P13952571131934345658

`A338546(A008121(n))`
-/

namespace A055715.P13952571131934345658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338546 (A008121 n).toNat

end

end A055715.P13952571131934345658

/-!
# A055717: Numbers n such that n | sigma_13(n).

The programs for A055717, there is no canonical definition to state claims against.
-/

/-! ## A055717.P7783925039507801144

`A083573(A307398(n))+A027598(n+1)`
-/

namespace A055717.P7783925039507801144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083573 (A307398 n).toNat + A027598 (n + 1)

end

end A055717.P7783925039507801144

/-!
# A055719: d(n)-1 | n and n is not prime.

The programs for A055719, there is no canonical definition to state claims against.
-/

/-! ## A055719.P3937635173712763317

`filter[A054010(n+1), A005171(#)]`
-/

namespace A055719.P3937635173712763317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A055719.P3937635173712763317

/-! ## A055719.P4373746177640591118

`filter[A054010(n+1), A066247(#)]`
-/

namespace A055719.P4373746177640591118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A055719.P4373746177640591118

/-! ## A055719.P17496405582578607794

`∩[A048753(n+1), A054010(n+1)]`
-/

namespace A055719.P17496405582578607794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055719.P17496405582578607794

/-! ## A055719.P14752694424878035800

`∩[A002808(n+1), A054010(n+1)]`
-/

namespace A055719.P14752694424878035800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055719.P14752694424878035800

/-! ## A055719.P15083727073180913665

`∩[A018252(n+1), A054010(n+1)]`
-/

namespace A055719.P15083727073180913665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055719.P15083727073180913665

/-! ## A055719.P4844241082503910068

`∩[A054010(n+1), A141468(n+1)]`
-/

namespace A055719.P4844241082503910068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055719.P4844241082503910068

/-! ## A055719.P13674846378610245372

`eq[1, (n+1)%A257088(A032741(n))]`
-/

namespace A055719.P13674846378610245372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A257088 (A032741 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055719.P13674846378610245372

/-! ## A055719.P12841521174070508848

`eq[Δ[A048656(n+1)], A054009(n+2)]+2`
-/

namespace A055719.P12841521174070508848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 2

end

end A055719.P12841521174070508848

/-!
# A055720: Numbers k such that d(k)+1 | k.

The programs for A055720, the canonical program `A055720.P4153619795851742296` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055720 has offset 1).

The definition of A055720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055720.P4153619795851742296

`eq[1, (n+2)%(A000005(n+1)+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055720

/-- `eq[1, (n+2)%(A000005(n+1)+1)]+1` -/
def P4153619795851742296.Spec : Prop :=
  ∀ n, (P4153619795851742296.a n : ℤ) = A055720 (n + 1)

theorem P4153619795851742296.correct : P4153619795851742296.Spec := by
  intro n
  simp only [A055720, Nat.add_sub_cancel]

end A055720

/-! ## A055720.P13101226716561613274

`lt[A262906((n+1)%(A000005(n+1)+1)), 1]+1`
-/

namespace A055720.P13101226716561613274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262906 (Int.tmod (n + 1 : ℤ) (A000005 (n + 1) + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A055720.P13101226716561613274

namespace A055720

/-- `lt[A262906((n+1)%(A000005(n+1)+1)), 1]+1` -/
def P13101226716561613274.Spec : Prop :=
  ∀ n, (P13101226716561613274.a n : ℤ) = A055720 (n + 1)

end A055720

/-! ## A055720.P6849496211176189927

`eq[2, (n+2)%(A032741(n)+2)]`
-/

namespace A055720.P6849496211176189927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A032741 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055720.P6849496211176189927

namespace A055720

/-- `eq[2, (n+2)%(A032741(n)+2)]` -/
def P6849496211176189927.Spec : Prop :=
  ∀ n, (P6849496211176189927.a n : ℤ) = A055720 (n + 1)

end A055720

/-! ## A055720.P8263588321969509013

`eq[n%(A032741(n)+2), A000038(n)]`
-/

namespace A055720.P8263588321969509013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A032741 n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055720.P8263588321969509013

namespace A055720

/-- `eq[n%(A032741(n)+2), A000038(n)]` -/
def P8263588321969509013.Spec : Prop :=
  ∀ n, (P8263588321969509013.a n : ℤ) = A055720 (n + 1)

end A055720

/-! ## A055720.P15406435008524911294

`eq[n, lcm(A032741(n)+2, A233583(n+1))]`
-/

namespace A055720.P15406435008524911294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032741 n + 2) (A233583 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055720.P15406435008524911294

namespace A055720

/-- `eq[n, lcm(A032741(n)+2, A233583(n+1))]` -/
def P15406435008524911294.Spec : Prop :=
  ∀ n, (P15406435008524911294.a n : ℤ) = A055720 (n + 1)

end A055720

/-!
# A055721: Numbers n such that sigma_2(n)/n > sigma_2(k)/k for all k < n.

The programs for A055721, there is no canonical definition to state claims against.
-/

/-! ## A055721.P9206409582024460092

`A027656(lt[A001651(n+1), A259825(2*n+3)])`
-/

namespace A055721.P9206409582024460092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A055721.P9206409582024460092

/-! ## A055721.P8391441172981875272

`A027656(lt[A027656(3*n+2), A259825(2*n+3)])`
-/

namespace A055721.P8391441172981875272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A055721.P8391441172981875272

/-! ## A055721.P2462630198694851754

`∪[∏{e}[2^n, A064376(#)], A064376(n+1)]`
-/

namespace A055721.P2462630198694851754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A064376 (Nat.factorization (f2 n) p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A055721.P2462630198694851754

/-! ## A055721.P3621966046376808129

`A045718(lt[A315079(n), A315091(n+2)])`
-/

namespace A055721.P3621966046376808129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A055721.P3621966046376808129

/-! ## A055721.P15789297408991818046

`∏{e}[2^n, A064376(#)]`
-/

namespace A055721.P15789297408991818046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A064376 (Nat.factorization (f1 n) p)

end

end A055721.P15789297408991818046

/-!
# A055722: Sigma_3(n)/n > Sigma_3(k)/k for all k < n.

The programs for A055722, there is no canonical definition to state claims against.
-/

/-! ## A055722.P10702957251866944746

`lt[A048059(n+1), A005384(A283762(3*(n+1)))]`
-/

namespace A055722.P10702957251866944746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (A283762 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055722.P10702957251866944746

/-! ## A055722.P1230909973960171787

`lt[A151933(n), acot(A273298(n))]`
-/

namespace A055722.P1230909973960171787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A273298 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A055722.P1230909973960171787

/-! ## A055722.P5606726250744755181

`lt[log2(A133854(n+1)), A078898(n)]`
-/

namespace A055722.P5606726250744755181
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A133854 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A055722.P5606726250744755181

/-! ## A055722.P12107827511707435814

`lt[A035453(n+5), A000463(n+2)]`
-/

namespace A055722.P12107827511707435814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035453 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055722.P12107827511707435814

/-! ## A055722.P529038667753921470

`lt[A270325(n), A142006(n+1)/4]`
-/

namespace A055722.P529038667753921470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270325 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142006 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A055722.P529038667753921470

/-!
# A055723: Number of lucky numbers (A000959) <= 10^n.

The programs for A055723, there is no canonical definition to state claims against.
-/

/-! ## A055723.P13570832679896275551

`A109497(10^n-1)`
-/

namespace A055723.P13570832679896275551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (10 ^ n - 1)

end

end A055723.P13570832679896275551

/-!
# A055724: Number of lucky twins <= 10^n.

The programs for A055724, there is no canonical definition to state claims against.
-/

/-! ## A055724.P4400783865792524164

`round((A055723(n)-A055725(n))/2)`
-/

namespace A055724.P4400783865792524164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055723 n - A055725 n : ℚ) / 2)

end

end A055724.P4400783865792524164

/-! ## A055724.P10088847320047051693

`(A055723(n)-A055725(n))/A047935(n+1)`
-/

namespace A055724.P10088847320047051693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055723 n - A055725 n : ℚ) / (A047935 (n + 1) : ℚ)

end

end A055724.P10088847320047051693

/-! ## A055724.P9004686058717041526

`(A055723(n)-A055725(n))/A073180(∏{e}[n+1, #+1])`
-/

namespace A055724.P9004686058717041526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055723 n - A055725 n : ℚ) / (A073180 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ)

end

end A055724.P9004686058717041526

/-! ## A055724.P11710464139254908489

`(A055723(n)-A055725(n))/A016001(A006530(n+1))`
-/

namespace A055724.P11710464139254908489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055723 n - A055725 n : ℚ) / (A016001 (A006530 (n + 1)).toNat : ℚ)

end

end A055724.P11710464139254908489

/-!
# A055725: Number of isolated lucky numbers <= 10^n.

The programs for A055725, there is no canonical definition to state claims against.
-/

/-! ## A055725.P857190520871562786

`A053392(3*A153191(n))`
-/

namespace A055725.P857190520871562786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (3 * A153191 n).toNat

end

end A055725.P857190520871562786

/-!
# A055726: Number of lucky 2,6 triples <= 10^n.

The programs for A055726, there is no canonical definition to state claims against.
-/

/-! ## A055726.P15235401437859944790

`A057907(A047046(n))`
-/

namespace A055726.P15235401437859944790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057907 (A047046 n).toNat

end

end A055726.P15235401437859944790

/-! ## A055726.P12785902310131528807

`A165199(A289541(n))+n`
-/

namespace A055726.P12785902310131528807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A289541 n).toNat + (n : ℤ)

end

end A055726.P12785902310131528807

/-!
# A055727: Number of lucky 4,6 triples <= 10^n.

The programs for A055727, there is no canonical definition to state claims against.
-/

/-! ## A055727.P15430142726372886400

`A243164(A046090(n))+n`
-/

namespace A055727.P15430142726372886400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243164 (A046090 n).toNat + (n : ℤ)

end

end A055727.P15430142726372886400

/-! ## A055727.P13608136100226684469

`A255072(A052582(n)+n)`
-/

namespace A055727.P13608136100226684469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A052582 n + (n : ℤ)).toNat

end

end A055727.P13608136100226684469

/-!
# A055728: Number of prime lucky numbers

The programs for A055728, there is no canonical definition to state claims against.
-/

/-! ## A055728.P17430224176453644205

`floor(sqrt(A327472(n²+(n+1)²)))`
-/

namespace A055728.P17430224176453644205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A327472 (n ^ 2 + (n + 1) ^ 2))

end

end A055728.P17430224176453644205

/-!
# A055729: Number of primes <= 3^n.

The programs for A055729, the canonical program `A055729.P3454769409147421049` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055729 has offset 0).

The definition of A055729 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055729.P3454769409147421049

`A000720(A000244(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055729

/-- `A000720(A000244(n))` -/
def P3454769409147421049.Spec : Prop :=
  ∀ n, P3454769409147421049.a n = A055729 n

theorem P3454769409147421049.correct : P3454769409147421049.Spec := by
  intro n
  simp only [A055729]

end A055729

/-! ## A055729.P3931579763815147198

`A086680(n)-A076959(A028310(n))`
-/

namespace A055729.P3931579763815147198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 n - A076959 (A028310 n).toNat

end

end A055729.P3931579763815147198

namespace A055729

/-- `A086680(n)-A076959(A028310(n))` -/
def P3931579763815147198.Spec : Prop :=
  ∀ n, P3931579763815147198.a n = A055729 n

end A055729

/-! ## A055729.P11677131484473784390

`A007053(2*n)-A076959(A028310(n))`
-/

namespace A055729.P11677131484473784390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * n) - A076959 (A028310 n).toNat

end

end A055729.P11677131484473784390

namespace A055729

/-- `A007053(2*n)-A076959(A028310(n))` -/
def P11677131484473784390.Spec : Prop :=
  ∀ n, P11677131484473784390.a n = A055729 n

end A055729

/-! ## A055729.P4516815431067995463

`record[A007053(n)/(-1)^n]-A076959(A028310(n))`
-/

namespace A055729.P4516815431067995463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007053 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A076959 (A028310 n).toNat : ℚ)

end

end A055729.P4516815431067995463

namespace A055729

/-- `record[A007053(n)/(-1)^n]-A076959(A028310(n))` -/
def P4516815431067995463.Spec : Prop :=
  ∀ n, P4516815431067995463.a n = (A055729 n : ℚ)

end A055729

/-! ## A055729.P17291818427607414689

`A185192(A004277(n))-A076959(A028310(n))`
-/

namespace A055729.P17291818427607414689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (A004277 n).toNat - A076959 (A028310 n).toNat

end

end A055729.P17291818427607414689

namespace A055729

/-- `A185192(A004277(n))-A076959(A028310(n))` -/
def P17291818427607414689.Spec : Prop :=
  ∀ n, P17291818427607414689.a n = A055729 n

end A055729

/-!
# A055730: Number of primes <= 5^n.

The programs for A055730, the canonical program `A055730.P14807854093821775361` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055730 has offset 0).

The definition of A055730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055730.P14807854093821775361

`A000720(A000351(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055730

/-- `A000720(A000351(n))` -/
def P14807854093821775361.Spec : Prop :=
  ∀ n, P14807854093821775361.a n = A055730 n

theorem P14807854093821775361.correct : P14807854093821775361.Spec := by
  intro n
  simp only [A055730]

end A055730

/-! ## A055730.P255591090530135635

`A000720(5^n)`
-/

namespace A055730.P255591090530135635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 ^ n)

end

end A055730.P255591090530135635

namespace A055730

/-- `A000720(5^n)` -/
def P255591090530135635.Spec : Prop :=
  ∀ n, P255591090530135635.a n = A055730 n

end A055730

/-! ## A055730.P17110903359263842049

`A099801(ceil(5^n/2)-1)`
-/

namespace A055730.P17110903359263842049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (⌈(5 ^ n : ℚ) / 2⌉ - 1).toNat

end

end A055730.P17110903359263842049

namespace A055730

/-- `A099801(ceil(5^n/2)-1)` -/
def P17110903359263842049.Spec : Prop :=
  ∀ n, P17110903359263842049.a n = A055730 n

end A055730

/-! ## A055730.P9727876805923631597

`record[A000720(A152717(n))]`
-/

namespace A055730.P9727876805923631597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A152717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055730.P9727876805923631597

namespace A055730

/-- `record[A000720(A152717(n))]` -/
def P9727876805923631597.Spec : Prop :=
  ∀ n, P9727876805923631597.a n = A055730 n

end A055730

/-!
# A055731: Number of primes < 6^n.

The programs for A055731, the canonical program `A055731.P7960467946028738766` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055731 has offset 0).

The definition of A055731 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055731.P7960467946028738766

`A000720(A000400(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055731

/-- `A000720(A000400(n))` -/
def P7960467946028738766.Spec : Prop :=
  ∀ n, P7960467946028738766.a n = A055731 n

theorem P7960467946028738766.correct : P7960467946028738766.Spec := by
  intro n
  simp only [A055731]

end A055731

/-! ## A055731.P8252539816333026804

`A000720(6^n)`
-/

namespace A055731.P8252539816333026804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 ^ n)

end

end A055731.P8252539816333026804

namespace A055731

/-- `A000720(6^n)` -/
def P8252539816333026804.Spec : Prop :=
  ∀ n, P8252539816333026804.a n = A055731 n

end A055731

/-! ## A055731.P8561699510477919548

`A329622(A063766(n))`
-/

namespace A055731.P8561699510477919548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A063766 n).toNat

end

end A055731.P8561699510477919548

namespace A055731

/-- `A329622(A063766(n))` -/
def P8561699510477919548.Spec : Prop :=
  ∀ n, P8561699510477919548.a n = A055731 n

end A055731

/-!
# A055732: Number of primes <= 7^n.

The programs for A055732, the canonical program `A055732.P15158235199988869026` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055732 has offset 0).

The definition of A055732 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055732.P15158235199988869026

`A000720(A000420(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055732

/-- `A000720(A000420(n))` -/
def P15158235199988869026.Spec : Prop :=
  ∀ n, P15158235199988869026.a n = A055732 n

theorem P15158235199988869026.correct : P15158235199988869026.Spec := by
  intro n
  simp only [A055732]

end A055732

/-! ## A055732.P7053308170495338906

`A000720(7^n)`
-/

namespace A055732.P7053308170495338906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (7 ^ n)

end

end A055732.P7053308170495338906

namespace A055732

/-- `A000720(7^n)` -/
def P7053308170495338906.Spec : Prop :=
  ∀ n, P7053308170495338906.a n = A055732 n

end A055732

/-!
# A055733: Sum of third powers of coefficients in full expansion of (z1+z2+...+zn)^n.

The programs for A055733, there is no canonical definition to state claims against.
-/

/-! ## A055733.P5700135426991744843

`A245397(∑[n+3]+n+3)`
-/

namespace A055733.P5700135426991744843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A055733.P5700135426991744843

/-! ## A055733.P10925678828045688392

`A245397(A046691(n+2))%A000396(n+1)`
-/

namespace A055733.P10925678828045688392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245397 (A046691 (n + 2)).toNat) (A000396 (n + 1))

end

end A055733.P10925678828045688392

/-!
# A055734: Number of distinct primes dividing phi(n).

The programs for A055734, the canonical program `A055734.P10166142649885258030` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055734 has offset 1).

The definition of A055734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055734.P10166142649885258030

`A001221(A000010(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055734

/-- `A001221(A000010(n+1))` -/
def P10166142649885258030.Spec : Prop :=
  ∀ n, P10166142649885258030.a n = A055734 (n + 1)

theorem P10166142649885258030.correct : P10166142649885258030.Spec := by
  intro n
  simp only [A055734, Nat.add_sub_cancel]

end A055734

/-! ## A055734.P15947125190411243465

`∑{e}[A080400(n+1), #]`
-/

namespace A055734.P15947125190411243465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A055734.P15947125190411243465

namespace A055734

/-- `∑{e}[A080400(n+1), #]` -/
def P15947125190411243465.Spec : Prop :=
  ∀ n, (P15947125190411243465.a n : ℤ) = A055734 (n + 1)

end A055734

/-! ## A055734.P13088525917763486747

`∑{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A056169(#)]`
-/

namespace A055734.P13088525917763486747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A056169 p

end

end A055734.P13088525917763486747

namespace A055734

/-- `∑{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A056169(#)]` -/
def P13088525917763486747.Spec : Prop :=
  ∀ n, P13088525917763486747.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P8536687746753716840

`A001222(∏{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])`
-/

namespace A055734.P8536687746753716840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A055734.P8536687746753716840

namespace A055734

/-- `A001222(∏{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])` -/
def P8536687746753716840.Spec : Prop :=
  ∀ n, P8536687746753716840.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P3161837281817457953

`A056169(∏{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])`
-/

namespace A055734.P3161837281817457953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A055734.P3161837281817457953

namespace A055734

/-- `A056169(∏{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])` -/
def P3161837281817457953.Spec : Prop :=
  ∀ n, P3161837281817457953.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P14863936351337028043

`A001221(Δ[A002088(n)])`
-/

namespace A055734.P14863936351337028043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A055734.P14863936351337028043

namespace A055734

/-- `A001221(Δ[A002088(n)])` -/
def P14863936351337028043.Spec : Prop :=
  ∀ n, P14863936351337028043.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P14850965800232634417

`A001221(Δ[A005728(n)])`
-/

namespace A055734.P14850965800232634417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A055734.P14850965800232634417

namespace A055734

/-- `A001221(Δ[A005728(n)])` -/
def P14850965800232634417.Spec : Prop :=
  ∀ n, P14850965800232634417.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P2431395436519579570

`A001221(A002322(n+1))`
-/

namespace A055734.P2431395436519579570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002322 (n + 1)).toNat

end

end A055734.P2431395436519579570

namespace A055734

/-- `A001221(A002322(n+1))` -/
def P2431395436519579570.Spec : Prop :=
  ∀ n, P2431395436519579570.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P7075817568446525770

`A001221(A011773(n+1))`
-/

namespace A055734.P7075817568446525770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011773 (n + 1)).toNat

end

end A055734.P7075817568446525770

namespace A055734

/-- `A001221(A011773(n+1))` -/
def P7075817568446525770.Spec : Prop :=
  ∀ n, P7075817568446525770.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P13528418071075205270

`A001221(A080400(n+1))`
-/

namespace A055734.P13528418071075205270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080400 (n + 1)).toNat

end

end A055734.P13528418071075205270

namespace A055734

/-- `A001221(A080400(n+1))` -/
def P13528418071075205270.Spec : Prop :=
  ∀ n, P13528418071075205270.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P9067402721864739431

`A001221(A277906(n+1))`
-/

namespace A055734.P9067402721864739431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A277906 (n + 1)).toNat

end

end A055734.P9067402721864739431

namespace A055734

/-- `A001221(A277906(n+1))` -/
def P9067402721864739431.Spec : Prop :=
  ∀ n, P9067402721864739431.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P15889366235618275112

`A001221(A322321(n+1))`
-/

namespace A055734.P15889366235618275112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322321 (n + 1)).toNat

end

end A055734.P15889366235618275112

namespace A055734

/-- `A001221(A322321(n+1))` -/
def P15889366235618275112.Spec : Prop :=
  ∀ n, P15889366235618275112.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P13470765091331285808

`A001222(∏{p}[Δ[A002088(n)], #])`
-/

namespace A055734.P13470765091331285808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A055734.P13470765091331285808

namespace A055734

/-- `A001222(∏{p}[Δ[A002088(n)], #])` -/
def P13470765091331285808.Spec : Prop :=
  ∀ n, P13470765091331285808.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P805809229919364537

`A001221(A109606(n+1)+1)`
-/

namespace A055734.P805809229919364537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A109606 (n + 1) + 1).toNat

end

end A055734.P805809229919364537

namespace A055734

/-- `A001221(A109606(n+1)+1)` -/
def P805809229919364537.Spec : Prop :=
  ∀ n, P805809229919364537.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P5647898757132704991

`A001221(A039649(n+1)-1)`
-/

namespace A055734.P5647898757132704991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039649 (n + 1) - 1).toNat

end

end A055734.P5647898757132704991

namespace A055734

/-- `A001221(A039649(n+1)-1)` -/
def P5647898757132704991.Spec : Prop :=
  ∀ n, P5647898757132704991.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P10112335376782676868

`∑{p}[A000010(n+1), A001222(#)]`
-/

namespace A055734.P10112335376782676868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A055734.P10112335376782676868

namespace A055734

/-- `∑{p}[A000010(n+1), A001222(#)]` -/
def P10112335376782676868.Spec : Prop :=
  ∀ n, P10112335376782676868.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P4524836548424347849

`A001222(∏{p}[A000010(n+1), #])`
-/

namespace A055734.P4524836548424347849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A055734.P4524836548424347849

namespace A055734

/-- `A001222(∏{p}[A000010(n+1), #])` -/
def P4524836548424347849.Spec : Prop :=
  ∀ n, P4524836548424347849.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P2121173678842647618

`∑{p}[A000010(n+1), abs(A008683(#))]`
-/

namespace A055734.P2121173678842647618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008683 p|

end

end A055734.P2121173678842647618

namespace A055734

/-- `∑{p}[A000010(n+1), abs(A008683(#))]` -/
def P2121173678842647618.Spec : Prop :=
  ∀ n, P2121173678842647618.a n = A055734 (n + 1)

end A055734

/-! ## A055734.P14387889993464161529

`∑{p}[A000010(n+1), log2(A000005(#))]`
-/

namespace A055734.P14387889993464161529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (A000005 p : ℝ)

end

end A055734.P14387889993464161529

namespace A055734

/-- `∑{p}[A000010(n+1), log2(A000005(#))]` -/
def P14387889993464161529.Spec : Prop :=
  ∀ n, P14387889993464161529.a n = (A055734 (n + 1) : ℝ)

end A055734

/-!
# A055736: Difference between number of prime factors of n and of phi(n).

The programs for A055736, the canonical program `A055736.P12144362201627634542` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055736 has offset 1).

The definition of A055736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055736.P12144362201627634542

`A001221(n+1)-A001221(A000010(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055736

/-- `A001221(n+1)-A001221(A000010(n+1))` -/
def P12144362201627634542.Spec : Prop :=
  ∀ n, P12144362201627634542.a n = A055736 (n + 1)

theorem P12144362201627634542.correct : P12144362201627634542.Spec := by
  intro n
  simp only [A055736, Nat.add_sub_cancel]

end A055736

/-! ## A055736.P10735579288671413486

`A001221(n+1)-A055734(n+1)`
-/

namespace A055736.P10735579288671413486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A055734 (n + 1)

end

end A055736.P10735579288671413486

namespace A055736

/-- `A001221(n+1)-A055734(n+1)` -/
def P10735579288671413486.Spec : Prop :=
  ∀ n, P10735579288671413486.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P17029830965274629200

`A083399(n+1)-A083399((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A055736.P17029830965274629200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) - A083399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A055736.P17029830965274629200

namespace A055736

/-- `A083399(n+1)-A083399((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P17029830965274629200.Spec : Prop :=
  ∀ n, P17029830965274629200.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P4867616723867793770

`A001221(n+1)-A001221(Δ[A002088(n)])`
-/

namespace A055736.P4867616723867793770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (f1 (n + 1) - f1 n).toNat

end

end A055736.P4867616723867793770

namespace A055736

/-- `A001221(n+1)-A001221(Δ[A002088(n)])` -/
def P4867616723867793770.Spec : Prop :=
  ∀ n, P4867616723867793770.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P2124754445002910541

`A001221(n+1)-A001221(Δ[A005728(n)])`
-/

namespace A055736.P2124754445002910541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (f1 (n + 1) - f1 n).toNat

end

end A055736.P2124754445002910541

namespace A055736

/-- `A001221(n+1)-A001221(Δ[A005728(n)])` -/
def P2124754445002910541.Spec : Prop :=
  ∀ n, P2124754445002910541.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P5734182312396537817

`A001221(n+1)-A001221(A002322(n+1))`
-/

namespace A055736.P5734182312396537817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A002322 (n + 1)).toNat

end

end A055736.P5734182312396537817

namespace A055736

/-- `A001221(n+1)-A001221(A002322(n+1))` -/
def P5734182312396537817.Spec : Prop :=
  ∀ n, P5734182312396537817.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P9228750711479644607

`A001221(n+1)-A001221(A011773(n+1))`
-/

namespace A055736.P9228750711479644607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A011773 (n + 1)).toNat

end

end A055736.P9228750711479644607

namespace A055736

/-- `A001221(n+1)-A001221(A011773(n+1))` -/
def P9228750711479644607.Spec : Prop :=
  ∀ n, P9228750711479644607.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P708700884030766886

`A001221(n+1)-A001221(A080400(n+1))`
-/

namespace A055736.P708700884030766886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A080400 (n + 1)).toNat

end

end A055736.P708700884030766886

namespace A055736

/-- `A001221(n+1)-A001221(A080400(n+1))` -/
def P708700884030766886.Spec : Prop :=
  ∀ n, P708700884030766886.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P6630858034031007617

`A083399(n+1)-A083399(A000010(n+1))`
-/

namespace A055736.P6630858034031007617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) - A083399 (A000010 (n + 1)).toNat

end

end A055736.P6630858034031007617

namespace A055736

/-- `A083399(n+1)-A083399(A000010(n+1))` -/
def P6630858034031007617.Spec : Prop :=
  ∀ n, P6630858034031007617.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P15665149744368700086

`A083399(n+1)-A083399(A002322(n+1))`
-/

namespace A055736.P15665149744368700086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) - A083399 (A002322 (n + 1)).toNat

end

end A055736.P15665149744368700086

namespace A055736

/-- `A083399(n+1)-A083399(A002322(n+1))` -/
def P15665149744368700086.Spec : Prop :=
  ∀ n, P15665149744368700086.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P13585458368997149314

`A001221(n+1)-A001221(A277906(n+1))`
-/

namespace A055736.P13585458368997149314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A277906 (n + 1)).toNat

end

end A055736.P13585458368997149314

namespace A055736

/-- `A001221(n+1)-A001221(A277906(n+1))` -/
def P13585458368997149314.Spec : Prop :=
  ∀ n, P13585458368997149314.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P16478098736147259222

`A001221(n+1)-A001221(A322321(n+1))`
-/

namespace A055736.P16478098736147259222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A322321 (n + 1)).toNat

end

end A055736.P16478098736147259222

namespace A055736

/-- `A001221(n+1)-A001221(A322321(n+1))` -/
def P16478098736147259222.Spec : Prop :=
  ∀ n, P16478098736147259222.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P13981510476652844713

`A001221(n+1)-A001221(A109606(n+1)+1)`
-/

namespace A055736.P13981510476652844713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A109606 (n + 1) + 1).toNat

end

end A055736.P13981510476652844713

namespace A055736

/-- `A001221(n+1)-A001221(A109606(n+1)+1)` -/
def P13981510476652844713.Spec : Prop :=
  ∀ n, P13981510476652844713.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P1684501479058302848

`A083399(n+1)-A083399(A109606(n+1)+1)`
-/

namespace A055736.P1684501479058302848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) - A083399 (A109606 (n + 1) + 1).toNat

end

end A055736.P1684501479058302848

namespace A055736

/-- `A083399(n+1)-A083399(A109606(n+1)+1)` -/
def P1684501479058302848.Spec : Prop :=
  ∀ n, P1684501479058302848.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P13263576076523996975

`A001221(n+1)-A001221(A039649(n+1)-1)`
-/

namespace A055736.P13263576076523996975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A039649 (n + 1) - 1).toNat

end

end A055736.P13263576076523996975

namespace A055736

/-- `A001221(n+1)-A001221(A039649(n+1)-1)` -/
def P13263576076523996975.Spec : Prop :=
  ∀ n, P13263576076523996975.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P1380023435818257274

`A083399(n+1)-A083399(A039649(n+1)-1)`
-/

namespace A055736.P1380023435818257274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) - A083399 (A039649 (n + 1) - 1).toNat

end

end A055736.P1380023435818257274

namespace A055736

/-- `A083399(n+1)-A083399(A039649(n+1)-1)` -/
def P1380023435818257274.Spec : Prop :=
  ∀ n, P1380023435818257274.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P14674880587373170922

`A001221(n+1)-A001221(A000203(n+1)-A051612(n+1))`
-/

namespace A055736.P14674880587373170922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A000203 (n + 1) - A051612 (n + 1)).toNat

end

end A055736.P14674880587373170922

namespace A055736

/-- `A001221(n+1)-A001221(A000203(n+1)-A051612(n+1))` -/
def P14674880587373170922.Spec : Prop :=
  ∀ n, P14674880587373170922.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P880937340599848392

`A001221(n+1)-A001221(A057859(n+1)-A001221(n+1))`
-/

namespace A055736.P880937340599848392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A057859 (n + 1) - A001221 (n + 1)).toNat

end

end A055736.P880937340599848392

namespace A055736

/-- `A001221(n+1)-A001221(A057859(n+1)-A001221(n+1))` -/
def P880937340599848392.Spec : Prop :=
  ∀ n, P880937340599848392.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P1093504732231847983

`A001221(n+1)-A001221(A003557(n+1)*A173557(n+1))`
-/

namespace A055736.P1093504732231847983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A003557 (n + 1) * A173557 (n + 1)).toNat

end

end A055736.P1093504732231847983

namespace A055736

/-- `A001221(n+1)-A001221(A003557(n+1)*A173557(n+1))` -/
def P1093504732231847983.Spec : Prop :=
  ∀ n, P1093504732231847983.a n = A055736 (n + 1)

end A055736

/-! ## A055736.P138090149532688089

`A001221(n+1)-A001221(A308828(n+1))`
-/

namespace A055736.P138090149532688089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A308828 (n + 1)).toNat

end

end A055736.P138090149532688089

namespace A055736

/-- `A001221(n+1)-A001221(A308828(n+1))` -/
def P138090149532688089.Spec : Prop :=
  ∀ n, P138090149532688089.a n = A055736 (n + 1)

end A055736

/-!
# A055737: Number of prime triples < 10^n, where a prime triple means 3 successive primes of the form {p, p+2, p+4} or {p, p+4, p+6}.

The programs for A055737, there is no canonical definition to state claims against.
-/

/-! ## A055737.P1974486144403767211

`A080841(n+1)-A093738(n+1)`
-/

namespace A055737.P1974486144403767211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080841 (n + 1) - A093738 (n + 1)

end

end A055737.P1974486144403767211

/-!
# A055738: Number of prime quadruples < 10^n, where a prime quadruple means 4 successive primes {p, p', p'', p'''} with p''' = p + 8.

The programs for A055738, there is no canonical definition to state claims against.
-/

/-! ## A055738.P17194047407668142324

`A050258(n+1)+ceil(n/19)`
-/

namespace A055738.P17194047407668142324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050258 (n + 1) + ⌈(n : ℚ) / 19⌉

end

end A055738.P17194047407668142324

/-! ## A055738.P6370711329759557988

`A057427(n)+A050258(n+1)`
-/

namespace A055738.P6370711329759557988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A050258 (n + 1)

end

end A055738.P6370711329759557988

/-! ## A055738.P2805374306853956006

`A178334(n)+A050258(n+1)`
-/

namespace A055738.P2805374306853956006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A050258 (n + 1)

end

end A055738.P2805374306853956006

/-! ## A055738.P9143955852031242088

`A265404(n)+A050258(n+1)`
-/

namespace A055738.P9143955852031242088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265404 n + A050258 (n + 1)

end

end A055738.P9143955852031242088

/-! ## A055738.P15662565909952296909

`A323022(n+1)+A050258(n+1)`
-/

namespace A055738.P15662565909952296909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (n + 1) + A050258 (n + 1)

end

end A055738.P15662565909952296909

/-!
# A055739: [e^n]-th prime.

The programs for A055739, there is no canonical definition to state claims against.
-/

/-! ## A055739.P17965651953456773351

`A000040(floor(exp(n)))`
-/

namespace A055739.P17965651953456773351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A055739.P17965651953456773351

/-! ## A055739.P4773754075749832234

`A161847(floor(exp(n)))`
-/

namespace A055739.P4773754075749832234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A055739.P4773754075749832234

/-! ## A055739.P16969306575394460704

`A383578(floor(exp(n)))`
-/

namespace A055739.P16969306575394460704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A055739.P16969306575394460704

/-! ## A055739.P10533791807529796575

`sqrt(A001248(floor(exp(n))))`
-/

namespace A055739.P10533791807529796575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 ⌊Real.exp (n : ℝ)⌋.toNat : ℝ)

end

end A055739.P10533791807529796575

/-! ## A055739.P14339461136576023229

`A006093(floor(exp(n)))+1`
-/

namespace A055739.P14339461136576023229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ⌊Real.exp (n : ℝ)⌋.toNat + 1

end

end A055739.P14339461136576023229

/-!
# A055740: Sum of fourth powers of coefficients in full expansion of (z1+z2+...+zn)^n.

The programs for A055740, there is no canonical definition to state claims against.
-/

/-! ## A055740.P12497818677702040913

`A245397(eq[3, A212551(n)])`
-/

namespace A055740.P12497818677702040913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055740.P12497818677702040913

/-! ## A055740.P10911867960964830671

`A245397(eq[4, A025581(n)])`
-/

namespace A055740.P10911867960964830671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055740.P10911867960964830671

/-! ## A055740.P9314544310839866876

`A245397(Δ[A055831(n+4)])`
-/

namespace A055740.P9314544310839866876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (f1 (n + 1) - f1 n).toNat

end

end A055740.P9314544310839866876

/-! ## A055740.P14503927306525792815

`A245397(A055999(n+2)+1)`
-/

namespace A055740.P14503927306525792815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (A055999 (n + 2) + 1).toNat

end

end A055740.P14503927306525792815

/-! ## A055740.P3837921819290481116

`A245397(A056000(n+1)+5)`
-/

namespace A055740.P3837921819290481116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (A056000 (n + 1) + 5).toNat

end

end A055740.P3837921819290481116

/-!
# A055741: Phi(n) has more distinct prime factors than n.

The programs for A055741, the canonical program `A055741.P7823549928393762310` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055741 has offset 1).

The definition of A055741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055741.P7823549928393762310

`lt[A001221(n+1), A001221(A000010(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055741

/-- `lt[A001221(n+1), A001221(A000010(n+1))]+1` -/
def P7823549928393762310.Spec : Prop :=
  ∀ n, (P7823549928393762310.a n : ℤ) = A055741 (n + 1)

theorem P7823549928393762310.correct : P7823549928393762310.Spec := by
  intro n
  simp only [A055741, Nat.add_sub_cancel]

end A055741

/-! ## A055741.P18289301567008472552

`lt[A055736(n+1), 0]+1`
-/

namespace A055741.P18289301567008472552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A055741.P18289301567008472552

namespace A055741

/-- `lt[A055736(n+1), 0]+1` -/
def P18289301567008472552.Spec : Prop :=
  ∀ n, (P18289301567008472552.a n : ℤ) = A055741 (n + 1)

end A055741

/-! ## A055741.P2000501420074260405

`lt[A055736(gcd(n, C(2, n))), 0]`
-/

namespace A055741.P2000501420074260405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (Nat.gcd n (Nat.choose 2 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055741.P2000501420074260405

namespace A055741

/-- `lt[A055736(gcd(n, C(2, n))), 0]` -/
def P2000501420074260405.Spec : Prop :=
  ∀ n, (P2000501420074260405.a n : ℤ) = A055741 (n + 1)

end A055741

/-! ## A055741.P3778734646276265825

`A020725(lt[A055736(n+1), 0])`
-/

namespace A055741.P3778734646276265825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A055741.P3778734646276265825

namespace A055741

/-- `A020725(lt[A055736(n+1), 0])` -/
def P3778734646276265825.Spec : Prop :=
  ∀ n, P3778734646276265825.a n = A055741 (n + 1)

end A055741

/-! ## A055741.P16263420453002463013

`lt[A055736(A028310(n))+1, 1]`
-/

namespace A055741.P16263420453002463013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055741.P16263420453002463013

namespace A055741

/-- `lt[A055736(A028310(n))+1, 1]` -/
def P16263420453002463013.Spec : Prop :=
  ∀ n, (P16263420453002463013.a n : ℤ) = A055741 (n + 1)

end A055741

/-!
# A055742: Numbers k such that k and EulerPhi(k) have same number of prime factors, counted without multiplicity.

The programs for A055742, the canonical program `A055742.P14231494332674757041` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055742 has offset 1).

The definition of A055742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055742.P14231494332674757041

`eq[A001221(A000010(n+1)), A001221(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055742

/-- `eq[A001221(A000010(n+1)), A001221(n+1)]+1` -/
def P14231494332674757041.Spec : Prop :=
  ∀ n, (P14231494332674757041.a n : ℤ) = A055742 (n + 1)

theorem P14231494332674757041.correct : P14231494332674757041.Spec := by
  intro n
  simp only [A055742, Nat.add_sub_cancel]

end A055742

/-! ## A055742.P3720196429583882485

`eq[0, A055736(n+1)]+1`
-/

namespace A055742.P3720196429583882485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055742.P3720196429583882485

namespace A055742

/-- `eq[0, A055736(n+1)]+1` -/
def P3720196429583882485.Spec : Prop :=
  ∀ n, (P3720196429583882485.a n : ℤ) = A055742 (n + 1)

end A055742

/-! ## A055742.P5617501049069055186

`eq[A001221(n+1), A055734(n+1)]+1`
-/

namespace A055742.P5617501049069055186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055742.P5617501049069055186

namespace A055742

/-- `eq[A001221(n+1), A055734(n+1)]+1` -/
def P5617501049069055186.Spec : Prop :=
  ∀ n, (P5617501049069055186.a n : ℤ) = A055742 (n + 1)

end A055742

/-! ## A055742.P403606868729772162

`eq[A001221(n+1), A001221(A002322(n+1))]+1`
-/

namespace A055742.P403606868729772162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055742.P403606868729772162

namespace A055742

/-- `eq[A001221(n+1), A001221(A002322(n+1))]+1` -/
def P403606868729772162.Spec : Prop :=
  ∀ n, (P403606868729772162.a n : ℤ) = A055742 (n + 1)

end A055742

/-! ## A055742.P8772611816199415337

`eq[A034444(A000010(n+1)), A034444(n+1)]+1`
-/

namespace A055742.P8772611816199415337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055742.P8772611816199415337

namespace A055742

/-- `eq[A034444(A000010(n+1)), A034444(n+1)]+1` -/
def P8772611816199415337.Spec : Prop :=
  ∀ n, (P8772611816199415337.a n : ℤ) = A055742 (n + 1)

end A055742

/-! ## A055742.P5221325874891571878

`eq[A001221(n+1), A001221(A127473(n+1))]+1`
-/

namespace A055742.P5221325874891571878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A127473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055742.P5221325874891571878

namespace A055742

/-- `eq[A001221(n+1), A001221(A127473(n+1))]+1` -/
def P5221325874891571878.Spec : Prop :=
  ∀ n, (P5221325874891571878.a n : ℤ) = A055742 (n + 1)

end A055742

/-!
# A055743: Phi(n) has fewer distinct prime divisors than n.

The programs for A055743, the canonical program `A055743.P3181542319350071640` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055743 has offset 1).

The definition of A055743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055743.P3181542319350071640

`lt[A001221(A000010(n+1)), A001221(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055743

/-- `lt[A001221(A000010(n+1)), A001221(n+1)]+1` -/
def P3181542319350071640.Spec : Prop :=
  ∀ n, (P3181542319350071640.a n : ℤ) = A055743 (n + 1)

theorem P3181542319350071640.correct : P3181542319350071640.Spec := by
  intro n
  simp only [A055743, Nat.add_sub_cancel]

end A055743

/-! ## A055743.P14436933641599970212

`lt[0, A055736(n+1)]+1`
-/

namespace A055743.P14436933641599970212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A055743.P14436933641599970212

namespace A055743

/-- `lt[0, A055736(n+1)]+1` -/
def P14436933641599970212.Spec : Prop :=
  ∀ n, (P14436933641599970212.a n : ℤ) = A055743 (n + 1)

end A055743

/-! ## A055743.P15618966165872436004

`lt[0, A055736(A028310(n))]`
-/

namespace A055743.P15618966165872436004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055743.P15618966165872436004

namespace A055743

/-- `lt[0, A055736(A028310(n))]` -/
def P15618966165872436004.Spec : Prop :=
  ∀ n, (P15618966165872436004.a n : ℤ) = A055743 (n + 1)

end A055743

/-! ## A055743.P9703053802917917051

`A020725(lt[0, A055736(n+1)])`
-/

namespace A055743.P9703053802917917051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A055743.P9703053802917917051

namespace A055743

/-- `A020725(lt[0, A055736(n+1)])` -/
def P9703053802917917051.Spec : Prop :=
  ∀ n, P9703053802917917051.a n = A055743 (n + 1)

end A055743

/-! ## A055743.P12864529423848633966

`lt[A034444(A000010(n+1)), A034444(n+1)]+1`
-/

namespace A055743.P12864529423848633966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055743.P12864529423848633966

namespace A055743

/-- `lt[A034444(A000010(n+1)), A034444(n+1)]+1` -/
def P12864529423848633966.Spec : Prop :=
  ∀ n, (P12864529423848633966.a n : ℤ) = A055743 (n + 1)

end A055743

/-!
# A055744: Numbers k such that k and phi(k) have the same prime factors.

The programs for A055744, there is no canonical definition to state claims against.
-/

/-! ## A055744.P17740144356087833896

`eq[A007947(A000010(n+1)), A007947(n+1)]+1`
-/

namespace A055744.P17740144356087833896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055744.P17740144356087833896

/-! ## A055744.P4949547627416233123

`∩[A055742(n+1), A151999(n+1)]`
-/

namespace A055744.P4949547627416233123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055744.P4949547627416233123

/-! ## A055744.P4787791045895736149

`eq[A007947(n+1), A080400(n+1)]+1`
-/

namespace A055744.P4787791045895736149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055744.P4787791045895736149

/-! ## A055744.P9152815130623020831

`A015906(eq[A007947(n+1), A080400(n+1)])`
-/

namespace A055744.P9152815130623020831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A055744.P9152815130623020831

/-! ## A055744.P9760720869635736198

`eq[A007947(A002322(n+1)), A007947(n+1)]+1`
-/

namespace A055744.P9760720869635736198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002322 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055744.P9760720869635736198

/-! ## A055744.P7612423440007702098

`eq[A007947(n+1), A007947(A011773(n+1))]+1`
-/

namespace A055744.P7612423440007702098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A011773 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055744.P7612423440007702098

/-! ## A055744.P4776908913881416396

`A015906(eq[A080400(n+1)+1, A076618(n+1)])`
-/

namespace A055744.P4776908913881416396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A055744.P4776908913881416396

/-! ## A055744.P768278756932571902

`A015906(eq[A073353(n+1)-(n+1), A080400(n+1)])`
-/

namespace A055744.P768278756932571902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A055744.P768278756932571902

/-! ## A055744.P17482282883090762371

`A015906(eq[(n+1)/A003557(n+1), A080400(n+1)])`
-/

namespace A055744.P17482282883090762371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A055744.P17482282883090762371

/-! ## A055744.P9095817325370429825

`A015906(eq[A064549(n+1)/(n+1), A080400(n+1)])`
-/

namespace A055744.P9095817325370429825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A055744.P9095817325370429825

/-!
# A055745: Squarefree numbers not of form ab + bc + ca for 1 <= a <= b <= c (probably the list is complete).

The programs for A055745, there is no canonical definition to state claims against.
-/

/-! ## A055745.P1953181160613861492

`∏{e}[2^n, A034168(#)]`
-/

namespace A055745.P1953181160613861492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034168 (Nat.factorization (f1 n) p)

end

end A055745.P1953181160613861492

/-! ## A055745.P10252942838670526603

`record[∏{p}[A025052(n+1), #]]`
-/

namespace A055745.P10252942838670526603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055745.P10252942838670526603

/-! ## A055745.P1839002075105454957

`A025052(comp[Δ[A007713(n)]])`
-/

namespace A055745.P1839002075105454957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007713 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A055745.P1839002075105454957

/-! ## A055745.P14943654146538716353

`A025052(comp[Δ[A007716(n)]])`
-/

namespace A055745.P14943654146538716353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A055745.P14943654146538716353

/-! ## A055745.P11934896686256515869

`record[A007913(A025052(n+1))]`
-/

namespace A055745.P11934896686256515869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A025052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055745.P11934896686256515869

/-!
# A055746: Product of first n terms of A003046.

The programs for A055746, there is no canonical definition to state claims against.
-/

/-! ## A055746.P11122603438780733962

`∏[∏[C(2*n, n)/(n+1)]]`
-/

namespace A055746.P11122603438780733962
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055746.P11122603438780733962

/-! ## A055746.P15587779949829796106

`∏[∏[(4-6/(n+1))*a(n-1)]]` with `a(0)=1`
-/

namespace A055746.P15587779949829796106
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055746.P15587779949829796106

/-! ## A055746.P6137521410451245275

`∏[A003046(n)]`
-/

namespace A055746.P6137521410451245275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055746.P6137521410451245275

/-! ## A055746.P17190513215890447949

`∏[∏[A000108(n)]]`
-/

namespace A055746.P17190513215890447949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055746.P17190513215890447949

/-! ## A055746.P4612875109532104236

`∏[∏[abs(A168491(n))]]`
-/

namespace A055746.P4612875109532104236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055746.P4612875109532104236

/-!
# A055747: Expansion of Jacobi form of weight 12 and index 1 for the Niemeier lattice of type E_8^3 or D_16+E_8.

The programs for A055747, there is no canonical definition to state claims against.
-/

/-! ## A055747.P11493058470681439845

`2*A055750(n)-A055754(n)`
-/

namespace A055747.P11493058470681439845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055750 n - A055754 n

end

end A055747.P11493058470681439845

/-! ## A055747.P16012856150311229822

`(A055754(n)+A055749(n))/2`
-/

namespace A055747.P16012856150311229822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055754 n + A055749 n : ℚ) / 2

end

end A055747.P16012856150311229822

/-! ## A055747.P1089473950640654992

`A055749(n)+A055762(n)-A055750(n)`
-/

namespace A055747.P1089473950640654992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055749 n + (A055762 n - A055750 n)

end

end A055747.P1089473950640654992

/-! ## A055747.P1393799153272540070

`A055749(n)+A055759(n)-A055751(n)`
-/

namespace A055747.P1393799153272540070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055749 n + (A055759 n - A055751 n)

end

end A055747.P1393799153272540070

/-! ## A055747.P786940853141661595

`2*A055752(n)-A055762(n)`
-/

namespace A055747.P786940853141661595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055752 n - A055762 n

end

end A055747.P786940853141661595

/-! ## A055747.P17282580648270059545

`A055751(n)+A055752(n)-A055756(n)`
-/

namespace A055747.P17282580648270059545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055752 n - A055756 n)

end

end A055747.P17282580648270059545

/-! ## A055747.P5517786908936257749

`2*A055753(n)-A055766(n)`
-/

namespace A055747.P5517786908936257749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055766 n

end

end A055747.P5517786908936257749

/-!
# A055748: A chaotic cousin of the Hofstadter-Conway sequence A004001.

The programs for A055748, the canonical program `A055748.P8898530340644746947` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055748 has offset 1).

The definition of A055748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055748.P8898530340644746947

`a(a(n-1)-1)+a(n-a(n-2)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055748

/-- `a(a(n-1)-1)+a(n-a(n-2)-1)` -/
def P8898530340644746947.Spec : Prop :=
  ∀ n, (P8898530340644746947.a n : ℤ) = A055748 (n + 1)

theorem P8898530340644746947.correct : P8898530340644746947.Spec := by
  intro n
  simp only [A055748, Nat.add_sub_cancel]

end A055748

/-! ## A055748.P13705583240090290422

`A005185(n+1)-A284478(n+1)`
-/

namespace A055748.P13705583240090290422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) - A284478 (n + 1)

end

end A055748.P13705583240090290422

namespace A055748

/-- `A005185(n+1)-A284478(n+1)` -/
def P13705583240090290422.Spec : Prop :=
  ∀ n, P13705583240090290422.a n = A055748 (n + 1)

end A055748

/-! ## A055748.P8942358857737588326

`∑[A081827(A028310(n))]+1-A284478(n+1)`
-/

namespace A055748.P8942358857737588326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A284478 (n + 1)

end

end A055748.P8942358857737588326

namespace A055748

/-- `∑[A081827(A028310(n))]+1-A284478(n+1)` -/
def P8942358857737588326.Spec : Prop :=
  ∀ n, P8942358857737588326.a n = A055748 (n + 1)

end A055748

/-! ## A055748.P16162352512119185376

`A005185(n+1)+A057428(n)*A284478(n+1)`
-/

namespace A055748.P16162352512119185376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) + A057428 n * A284478 (n + 1)

end

end A055748.P16162352512119185376

namespace A055748

/-- `A005185(n+1)+A057428(n)*A284478(n+1)` -/
def P16162352512119185376.Spec : Prop :=
  ∀ n, P16162352512119185376.a n = A055748 (n + 1)

end A055748

/-! ## A055748.P17856775666123694791

`A004001(n+1)-(A284478(n+1)+A284019(n+1))`
-/

namespace A055748.P17856775666123694791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - (A284478 (n + 1) + A284019 (n + 1))

end

end A055748.P17856775666123694791

namespace A055748

/-- `A004001(n+1)-(A284478(n+1)+A284019(n+1))` -/
def P17856775666123694791.Spec : Prop :=
  ∀ n, P17856775666123694791.a n = A055748 (n + 1)

end A055748

/-! ## A055748.P11891669042366510076

`∑[A081827(n+1)]+1-A081827(n+1)-A284478(n+1)`
-/

namespace A055748.P11891669042366510076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A081827 (n + 1)) - A284478 (n + 1)

end

end A055748.P11891669042366510076

namespace A055748

/-- `∑[A081827(n+1)]+1-A081827(n+1)-A284478(n+1)` -/
def P11891669042366510076.Spec : Prop :=
  ∀ n, P11891669042366510076.a n = A055748 (n + 1)

end A055748

/-! ## A055748.P7423872986308711238

`2-A080677(n+1)+n-(A284478(n+1)+A284019(n+1))`
-/

namespace A055748.P7423872986308711238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (n + 1) + (n : ℤ) - (A284478 (n + 1) + A284019 (n + 1))

end

end A055748.P7423872986308711238

namespace A055748

/-- `2-A080677(n+1)+n-(A284478(n+1)+A284019(n+1))` -/
def P7423872986308711238.Spec : Prop :=
  ∀ n, P7423872986308711238.a n = A055748 (n + 1)

end A055748

/-! ## A055748.P14573883355145630611

`(A004074(n+1)+n+1)/2-A284019(n+1)-A284478(n+1)`
-/

namespace A055748.P14573883355145630611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (n + 1) + (n + 1 : ℤ) : ℚ) / 2 - (A284019 (n + 1) : ℚ) - (A284478 (n + 1) : ℚ)

end

end A055748.P14573883355145630611

namespace A055748

/-- `(A004074(n+1)+n+1)/2-A284019(n+1)-A284478(n+1)` -/
def P14573883355145630611.Spec : Prop :=
  ∀ n, P14573883355145630611.a n = (A055748 (n + 1) : ℚ)

end A055748

/-! ## A055748.P10808326441547848397

`A008619(A004074(n+1)+n)-A284019(n+1)-A284478(n+1)`
-/

namespace A055748.P10808326441547848397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004074 (n + 1) + (n : ℤ)).toNat - A284019 (n + 1) - A284478 (n + 1)

end

end A055748.P10808326441547848397

namespace A055748

/-- `A008619(A004074(n+1)+n)-A284019(n+1)-A284478(n+1)` -/
def P10808326441547848397.Spec : Prop :=
  ∀ n, P10808326441547848397.a n = A055748 (n + 1)

end A055748

/-! ## A055748.P11498927504471032590

`A030451(A004074(n+1)+1+n)-A284019(n+1)-A284478(n+1)`
-/

namespace A055748.P11498927504471032590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A004074 (n + 1) + 1 + (n : ℤ)).toNat - A284019 (n + 1) - A284478 (n + 1)

end

end A055748.P11498927504471032590

namespace A055748

/-- `A030451(A004074(n+1)+1+n)-A284019(n+1)-A284478(n+1)` -/
def P11498927504471032590.Spec : Prop :=
  ∀ n, P11498927504471032590.a n = A055748 (n + 1)

end A055748

/-!
# A055749: Jacobi form of weight 12 and index 1 for the Niemeier lattice of type D_24.

The programs for A055749, there is no canonical definition to state claims against.
-/

/-! ## A055749.P11693025202227836767

`2*A055747(n)-A055754(n)`
-/

namespace A055749.P11693025202227836767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055747 n - A055754 n

end

end A055749.P11693025202227836767

/-! ## A055749.P6148282171612833544

`A055747(n)+A055750(n)-A055762(n)`
-/

namespace A055749.P6148282171612833544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055750 n - A055762 n)

end

end A055749.P6148282171612833544

/-! ## A055749.P2857441172867788669

`2*A055751(n)-A055764(n)`
-/

namespace A055749.P2857441172867788669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055751 n - A055764 n

end

end A055749.P2857441172867788669

/-! ## A055749.P18439071384580280470

`A055747(n)+A055751(n)-A055759(n)`
-/

namespace A055749.P18439071384580280470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055751 n - A055759 n)

end

end A055749.P18439071384580280470

/-! ## A055749.P13702941996204343824

`A055747(n)+A055752(n)-A055766(n)`
-/

namespace A055749.P13702941996204343824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055752 n - A055766 n)

end

end A055749.P13702941996204343824

/-! ## A055749.P14204758132526563724

`A055750(n)+A055751(n)-A056948(n)`
-/

namespace A055749.P14204758132526563724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055751 n - A056948 n)

end

end A055749.P14204758132526563724

/-!
# A055750: Jacobi form of weight 12 and index 1 for the Niemeier lattice of type D_12^2.

The programs for A055750, there is no canonical definition to state claims against.
-/

/-! ## A055750.P18325690659231944461

`(A055754(n)+A055747(n))/2`
-/

namespace A055750.P18325690659231944461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055754 n + A055747 n : ℚ) / 2

end

end A055750.P18325690659231944461

/-! ## A055750.P14573450933785851570

`2*A055754(n)-A055762(n)`
-/

namespace A055750.P14573450933785851570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055762 n

end

end A055750.P14573450933785851570

/-! ## A055750.P11598082194838868117

`A055749(n)+A055762(n)-A055747(n)`
-/

namespace A055750.P11598082194838868117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055749 n + (A055762 n - A055747 n)

end

end A055750.P11598082194838868117

/-! ## A055750.P9467471668333879433

`2*A055756(n)-A055764(n)`
-/

namespace A055750.P9467471668333879433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055764 n

end

end A055750.P9467471668333879433

/-! ## A055750.P3741859430288726877

`A055747(n)+A055760(n)-A055753(n)`
-/

namespace A055750.P3741859430288726877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055760 n - A055753 n)

end

end A055750.P3741859430288726877

/-! ## A055750.P9537330467939367401

`2*A055752(n)-A055754(n)`
-/

namespace A055750.P9537330467939367401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055752 n - A055754 n

end

end A055750.P9537330467939367401

/-! ## A055750.P2846326323820449421

`2*A055753(n)-A055758(n)`
-/

namespace A055750.P2846326323820449421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055758 n

end

end A055750.P2846326323820449421

/-! ## A055750.P8409790021927056391

`A055751(n)+A055758(n)-A055756(n)`
-/

namespace A055750.P8409790021927056391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055758 n - A055756 n)

end

end A055750.P8409790021927056391

/-! ## A055750.P8228439005051681035

`A055753(n)+A055759(n)-A055765(n)`
-/

namespace A055750.P8228439005051681035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055759 n - A055765 n)

end

end A055750.P8228439005051681035

/-! ## A055750.P13803783016909572688

`A055751(n)+A056950(n)-A055754(n)`
-/

namespace A055750.P13803783016909572688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A056950 n - A055754 n)

end

end A055750.P13803783016909572688

/-! ## A055750.P14436973934307283629

`2*A055757(n)-A055766(n)`
-/

namespace A055750.P14436973934307283629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055766 n

end

end A055750.P14436973934307283629

/-! ## A055750.P7136831038235420033

`A055747(n)+A055766(n)-A055758(n)`
-/

namespace A055750.P7136831038235420033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055766 n - A055758 n)

end

end A055750.P7136831038235420033

/-! ## A055750.P9224022198510356364

`A055753(n)+A055760(n)-A055766(n)`
-/

namespace A055750.P9224022198510356364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055760 n - A055766 n)

end

end A055750.P9224022198510356364

/-! ## A055750.P3521474934726412211

`2*A056950(n)-A056945(n)`
-/

namespace A055750.P3521474934726412211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056950 n - A056945 n

end

end A055750.P3521474934726412211

/-! ## A055750.P155160634537103582

`A055747(n)+A056945(n)-A055760(n)`
-/

namespace A055750.P155160634537103582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A056945 n - A055760 n)

end

end A055750.P155160634537103582

/-!
# A055751: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_24.

The programs for A055751, there is no canonical definition to state claims against.
-/

/-! ## A055751.P1353516849628376124

`2*A055753(n)-A055761(n)`
-/

namespace A055751.P1353516849628376124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055761 n

end

end A055751.P1353516849628376124

/-! ## A055751.P3060953573826392206

`(A055764(n)+A055749(n))/2`
-/

namespace A055751.P3060953573826392206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055764 n + A055749 n : ℚ) / 2

end

end A055751.P3060953573826392206

/-! ## A055751.P5188002726867866431

`A055747(n)+A055759(n)-A055754(n)`
-/

namespace A055751.P5188002726867866431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055759 n - A055754 n)

end

end A055751.P5188002726867866431

/-! ## A055751.P8773431943314676109

`A055747(n)+A055756(n)-A055752(n)`
-/

namespace A055751.P8773431943314676109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055756 n - A055752 n)

end

end A055751.P8773431943314676109

/-! ## A055751.P1248461574189587370

`2*A055754(n)-A055765(n)`
-/

namespace A055751.P1248461574189587370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055765 n

end

end A055751.P1248461574189587370

/-! ## A055751.P12625132327753454240

`A055747(n)+A055765(n)-A055760(n)`
-/

namespace A055751.P12625132327753454240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055765 n - A055760 n)

end

end A055751.P12625132327753454240

/-! ## A055751.P13233727488503431619

`A055750(n)+A055762(n)-A055765(n)`
-/

namespace A055751.P13233727488503431619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055762 n - A055765 n)

end

end A055751.P13233727488503431619

/-! ## A055751.P5514297770840727802

`A055752(n)+A055758(n)-A055765(n)`
-/

namespace A055751.P5514297770840727802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055758 n - A055765 n)

end

end A055751.P5514297770840727802

/-! ## A055751.P11331141650104720964

`A055753(n)+A055757(n)-A055765(n)`
-/

namespace A055751.P11331141650104720964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055757 n - A055765 n)

end

end A055751.P11331141650104720964

/-! ## A055751.P1980929165690519092

`2*A055752(n)-A056950(n)`
-/

namespace A055751.P1980929165690519092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055752 n - A056950 n

end

end A055751.P1980929165690519092

/-! ## A055751.P3631337716101920070

`A055747(n)+A055762(n)-A056950(n)`
-/

namespace A055751.P3631337716101920070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055762 n - A056950 n)

end

end A055751.P3631337716101920070

/-! ## A055751.P634198662109807099

`A055750(n)+A055754(n)-A056950(n)`
-/

namespace A055751.P634198662109807099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055754 n - A056950 n)

end

end A055751.P634198662109807099

/-! ## A055751.P7705787793103670774

`A055747(n)+A055766(n)-A055761(n)`
-/

namespace A055751.P7705787793103670774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055766 n - A055761 n)

end

end A055751.P7705787793103670774

/-! ## A055751.P4311763578191036769

`A055749(n)+A056948(n)-A055750(n)`
-/

namespace A055751.P4311763578191036769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055749 n + (A056948 n - A055750 n)

end

end A055751.P4311763578191036769

/-! ## A055751.P4921575813828593205

`A055750(n)+A055764(n)-A056948(n)`
-/

namespace A055751.P4921575813828593205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055764 n - A056948 n)

end

end A055751.P4921575813828593205

/-!
# A055752: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_17*E_7 or D_10*E_7^2.

The programs for A055752, there is no canonical definition to state claims against.
-/

/-! ## A055752.P7703214652758860325

`2*A055753(n)-A055754(n)`
-/

namespace A055752.P7703214652758860325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055754 n

end

end A055752.P7703214652758860325

/-! ## A055752.P10794070514012570120

`(A055754(n)+A055750(n))/2`
-/

namespace A055752.P10794070514012570120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055754 n + A055750 n : ℚ) / 2

end

end A055752.P10794070514012570120

/-! ## A055752.P5123354794592151694

`(A055762(n)+A055747(n))/2`
-/

namespace A055752.P5123354794592151694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055762 n + A055747 n : ℚ) / 2

end

end A055752.P5123354794592151694

/-! ## A055752.P5285450508265417392

`2*A055756(n)-A055760(n)`
-/

namespace A055752.P5285450508265417392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055760 n

end

end A055752.P5285450508265417392

/-! ## A055752.P8704725850920301752

`2*A055757(n)-A055762(n)`
-/

namespace A055752.P8704725850920301752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055762 n

end

end A055752.P8704725850920301752

/-! ## A055752.P16543575582017870579

`A055747(n)+A055764(n)-A055753(n)`
-/

namespace A055752.P16543575582017870579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055764 n - A055753 n)

end

end A055752.P16543575582017870579

/-! ## A055752.P10086443834933284735

`2*A055754(n)-A055758(n)`
-/

namespace A055752.P10086443834933284735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055758 n

end

end A055752.P10086443834933284735

/-! ## A055752.P4351022987459566971

`A055753(n)+A055763(n)-A055765(n)`
-/

namespace A055752.P4351022987459566971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055763 n - A055765 n)

end

end A055752.P4351022987459566971

/-! ## A055752.P12958708793793047524

`(A056950(n)+A055751(n))/2`
-/

namespace A055752.P12958708793793047524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056950 n + A055751 n : ℚ) / 2

end

end A055752.P12958708793793047524

/-! ## A055752.P4829386093885113755

`2*A055758(n)-A055766(n)`
-/

namespace A055752.P4829386093885113755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055766 n

end

end A055752.P4829386093885113755

/-! ## A055752.P16603684643384678472

`A055747(n)+A055766(n)-A055754(n)`
-/

namespace A055752.P16603684643384678472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055766 n - A055754 n)

end

end A055752.P16603684643384678472

/-! ## A055752.P6712194232521676988

`A055753(n)+A055764(n)-A055766(n)`
-/

namespace A055752.P6712194232521676988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055764 n - A055766 n)

end

end A055752.P6712194232521676988

/-!
# A055753: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_15 D_9.

The programs for A055753, there is no canonical definition to state claims against.
-/

/-! ## A055753.P12253279066700876815

`2*A055754(n)-A055757(n)`
-/

namespace A055753.P12253279066700876815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055757 n

end

end A055753.P12253279066700876815

/-! ## A055753.P4252524690488493366

`2*A055757(n)-A055760(n)`
-/

namespace A055753.P4252524690488493366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055760 n

end

end A055753.P4252524690488493366

/-! ## A055753.P2919853522871044093

`(A055761(n)+A055751(n))/2`
-/

namespace A055753.P2919853522871044093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055761 n + A055751 n : ℚ) / 2

end

end A055753.P2919853522871044093

/-! ## A055753.P6429838387177608342

`(A055754(n)+A055752(n))/2`
-/

namespace A055753.P6429838387177608342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055754 n + A055752 n : ℚ) / 2

end

end A055753.P6429838387177608342

/-! ## A055753.P9864734468170587604

`2*A055756(n)-A055758(n)`
-/

namespace A055753.P9864734468170587604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055758 n

end

end A055753.P9864734468170587604

/-! ## A055753.P4909967115801277473

`(A055758(n)+A055750(n))/2`
-/

namespace A055753.P4909967115801277473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055758 n + A055750 n : ℚ) / 2

end

end A055753.P4909967115801277473

/-! ## A055753.P934691629298486460

`2*A056950(n)-A055762(n)`
-/

namespace A055753.P934691629298486460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056950 n - A055762 n

end

end A055753.P934691629298486460

/-! ## A055753.P70359541817686602

`A055747(n)+A056950(n)-A055751(n)`
-/

namespace A055753.P70359541817686602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A056950 n - A055751 n)

end

end A055753.P70359541817686602

/-! ## A055753.P2347864120215617834

`(A055766(n)+A055747(n))/2`
-/

namespace A055753.P2347864120215617834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055747 n : ℚ) / 2

end

end A055753.P2347864120215617834

/-! ## A055753.P11035579254015379004

`2*A055759(n)-A055766(n)`
-/

namespace A055753.P11035579254015379004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055766 n

end

end A055753.P11035579254015379004

/-! ## A055753.P12961213056969139967

`2*A055760(n)-A056945(n)`
-/

namespace A055753.P12961213056969139967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A056945 n

end

end A055753.P12961213056969139967

/-!
# A055754: Jacobi form of weight 12 and index 1 for Niemeier lattice of type D_8^3.

The programs for A055754, there is no canonical definition to state claims against.
-/

/-! ## A055754.P4614979326246371603

`2*A055750(n)-A055747(n)`
-/

namespace A055754.P4614979326246371603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055750 n - A055747 n

end

end A055754.P4614979326246371603

/-! ## A055754.P4253159598225302592

`(A055762(n)+A055750(n))/2`
-/

namespace A055754.P4253159598225302592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055762 n + A055750 n : ℚ) / 2

end

end A055754.P4253159598225302592

/-! ## A055754.P8900080568287518955

`A055747(n)+A055762(n)-A055750(n)`
-/

namespace A055754.P8900080568287518955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055762 n - A055750 n)

end

end A055754.P8900080568287518955

/-! ## A055754.P3560894915927898118

`2*A055747(n)-A055749(n)`
-/

namespace A055754.P3560894915927898118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055747 n - A055749 n

end

end A055754.P3560894915927898118

/-! ## A055754.P2993938112465445917

`2*A055756(n)-A055757(n)`
-/

namespace A055754.P2993938112465445917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055757 n

end

end A055754.P2993938112465445917

/-! ## A055754.P6850493790460220208

`(A055757(n)+A055753(n))/2`
-/

namespace A055754.P6850493790460220208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055757 n + A055753 n : ℚ) / 2

end

end A055754.P6850493790460220208

/-! ## A055754.P3863208956727398279

`A055747(n)+A055759(n)-A055751(n)`
-/

namespace A055754.P3863208956727398279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055759 n - A055751 n)

end

end A055754.P3863208956727398279

/-! ## A055754.P6297119437888411983

`2*A055752(n)-A055750(n)`
-/

namespace A055754.P6297119437888411983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055752 n - A055750 n

end

end A055754.P6297119437888411983

/-! ## A055754.P17865187500987963636

`2*A055753(n)-A055752(n)`
-/

namespace A055754.P17865187500987963636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055752 n

end

end A055754.P17865187500987963636

/-! ## A055754.P4161458903636328149

`2*A055757(n)-A055758(n)`
-/

namespace A055754.P4161458903636328149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055758 n

end

end A055754.P4161458903636328149

/-! ## A055754.P2555143388582800633

`(A055758(n)+A055752(n))/2`
-/

namespace A055754.P2555143388582800633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055758 n + A055752 n : ℚ) / 2

end

end A055754.P2555143388582800633

/-! ## A055754.P5054706298551518929

`(A055765(n)+A055751(n))/2`
-/

namespace A055754.P5054706298551518929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055765 n + A055751 n : ℚ) / 2

end

end A055754.P5054706298551518929

/-! ## A055754.P15783591309904238727

`A055753(n)+A055765(n)-A055763(n)`
-/

namespace A055754.P15783591309904238727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055763 n)

end

end A055754.P15783591309904238727

/-! ## A055754.P4412504610300977199

`2*A056950(n)-A055760(n)`
-/

namespace A055754.P4412504610300977199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056950 n - A055760 n

end

end A055754.P4412504610300977199

/-! ## A055754.P6556677344555763215

`A055751(n)+A056950(n)-A055750(n)`
-/

namespace A055754.P6556677344555763215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A056950 n - A055750 n)

end

end A055754.P6556677344555763215

/-! ## A055754.P37623346982385307

`2*A055760(n)-A055766(n)`
-/

namespace A055754.P37623346982385307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055766 n

end

end A055754.P37623346982385307

/-! ## A055754.P11761859595329050893

`A055747(n)+A055766(n)-A055752(n)`
-/

namespace A055754.P11761859595329050893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055766 n - A055752 n)

end

end A055754.P11761859595329050893

/-! ## A055754.P11723073582850161005

`A055753(n)+A055766(n)-A055764(n)`
-/

namespace A055754.P11723073582850161005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055764 n)

end

end A055754.P11723073582850161005

/-! ## A055754.P13981819449696270933

`A055756(n)+A055765(n)-A055766(n)`
-/

namespace A055754.P13981819449696270933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055756 n + (A055765 n - A055766 n)

end

end A055754.P13981819449696270933

/-!
# A055755: 4n^2+1, 2n^2+1, 2n^2-1 are all prime.

The programs for A055755, there is no canonical definition to state claims against.
-/

/-! ## A055755.P14145937820592709727

`∩[A001912(n+1), A173165(n+1)]`
-/

namespace A055755.P14145937820592709727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055755.P14145937820592709727

/-! ## A055755.P7262439468671773800

`∩[ceil(A089593(n+1)/2), A173165(n+1)]`
-/

namespace A055755.P7262439468671773800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089593 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055755.P7262439468671773800

/-!
# A055756: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_12^2.

The programs for A055756, there is no canonical definition to state claims against.
-/

/-! ## A055756.P3835405325446789322

`2*A055759(n)-A055763(n)`
-/

namespace A055756.P3835405325446789322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055763 n

end

end A055756.P3835405325446789322

/-! ## A055756.P3543160163998965496

`(A055757(n)+A055754(n))/2`
-/

namespace A055756.P3543160163998965496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055757 n + A055754 n : ℚ) / 2

end

end A055756.P3543160163998965496

/-! ## A055756.P14963348715571096404

`(A055764(n)+A055750(n))/2`
-/

namespace A055756.P14963348715571096404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055764 n + A055750 n : ℚ) / 2

end

end A055756.P14963348715571096404

/-! ## A055756.P16986166329078809882

`A055750(n)+A055753(n)-A055751(n)`
-/

namespace A055756.P16986166329078809882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055753 n - A055751 n)

end

end A055756.P16986166329078809882

/-! ## A055756.P17914005259557653717

`(A055760(n)+A055752(n))/2`
-/

namespace A055756.P17914005259557653717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055760 n + A055752 n : ℚ) / 2

end

end A055756.P17914005259557653717

/-! ## A055756.P6079438938880462747

`A055751(n)+A055752(n)-A055747(n)`
-/

namespace A055756.P6079438938880462747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055752 n - A055747 n)

end

end A055756.P6079438938880462747

/-! ## A055756.P471583828163052663

`A055751(n)+A055762(n)-A055752(n)`
-/

namespace A055756.P471583828163052663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055762 n - A055752 n)

end

end A055756.P471583828163052663

/-! ## A055756.P11182273879092957922

`(A055758(n)+A055753(n))/2`
-/

namespace A055756.P11182273879092957922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055758 n + A055753 n : ℚ) / 2

end

end A055756.P11182273879092957922

/-! ## A055756.P15980452083376331727

`2*A055758(n)-A055761(n)`
-/

namespace A055756.P15980452083376331727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055761 n

end

end A055756.P15980452083376331727

/-! ## A055756.P4491224603355285003

`2*A055760(n)-A055765(n)`
-/

namespace A055756.P4491224603355285003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055765 n

end

end A055756.P4491224603355285003

/-! ## A055756.P17746857434917215341

`A055753(n)+A055765(n)-A055762(n)`
-/

namespace A055756.P17746857434917215341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055762 n)

end

end A055756.P17746857434917215341

/-! ## A055756.P6729282505781170641

`A055752(n)+A056950(n)-A055753(n)`
-/

namespace A055756.P6729282505781170641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A056950 n - A055753 n)

end

end A055756.P6729282505781170641

/-! ## A055756.P1998232688420710453

`A055753(n)+A055766(n)-A055763(n)`
-/

namespace A055756.P1998232688420710453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055763 n)

end

end A055756.P1998232688420710453

/-! ## A055756.P10403925711815292281

`A055754(n)+A055766(n)-A055765(n)`
-/

namespace A055756.P10403925711815292281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055754 n + (A055766 n - A055765 n)

end

end A055756.P10403925711815292281

/-! ## A055756.P10982722547246228958

`A055757(n)+A055765(n)-A055766(n)`
-/

namespace A055756.P10982722547246228958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055757 n + (A055765 n - A055766 n)

end

end A055756.P10982722547246228958

/-! ## A055756.P10950947175330832036

`(A056948(n)+A055751(n))/2`
-/

namespace A055756.P10950947175330832036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056948 n + A055751 n : ℚ) / 2

end

end A055756.P10950947175330832036

/-!
# A055757: Jacobi form of weight 12 and index 1 for Niemeier lattice of type E_6^4 or A_11 D_7 E_6.

The programs for A055757, there is no canonical definition to state claims against.
-/

/-! ## A055757.P9749428065407888821

`2*A055756(n)-A055754(n)`
-/

namespace A055757.P9749428065407888821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055754 n

end

end A055757.P9749428065407888821

/-! ## A055757.P9588555391976520640

`2*A055759(n)-A055762(n)`
-/

namespace A055757.P9588555391976520640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055762 n

end

end A055757.P9588555391976520640

/-! ## A055757.P9953193976962575370

`A055747(n)+A055764(n)-A055750(n)`
-/

namespace A055757.P9953193976962575370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055764 n - A055750 n)

end

end A055757.P9953193976962575370

/-! ## A055757.P11037164771806774361

`2*A055754(n)-A055753(n)`
-/

namespace A055757.P11037164771806774361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055753 n

end

end A055757.P11037164771806774361

/-! ## A055757.P13310440009274979358

`(A055760(n)+A055753(n))/2`
-/

namespace A055757.P13310440009274979358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055760 n + A055753 n : ℚ) / 2

end

end A055757.P13310440009274979358

/-! ## A055757.P5581791854174545432

`(A055762(n)+A055752(n))/2`
-/

namespace A055757.P5581791854174545432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055762 n + A055752 n : ℚ) / 2

end

end A055757.P5581791854174545432

/-! ## A055757.P13609033923421569013

`A055752(n)+A055753(n)-A055750(n)`
-/

namespace A055757.P13609033923421569013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055753 n - A055750 n)

end

end A055757.P13609033923421569013

/-! ## A055757.P10810448357911532813

`A055753(n)+A055754(n)-A055752(n)`
-/

namespace A055757.P10810448357911532813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055754 n - A055752 n)

end

end A055757.P10810448357911532813

/-! ## A055757.P13288760616796270068

`2*A055758(n)-A055760(n)`
-/

namespace A055757.P13288760616796270068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055760 n

end

end A055757.P13288760616796270068

/-! ## A055757.P1704275654092918707

`(A055758(n)+A055754(n))/2`
-/

namespace A055757.P1704275654092918707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055758 n + A055754 n : ℚ) / 2

end

end A055757.P1704275654092918707

/-! ## A055757.P8050636590208799043

`A055751(n)+A055765(n)-A055753(n)`
-/

namespace A055757.P8050636590208799043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055765 n - A055753 n)

end

end A055757.P8050636590208799043

/-! ## A055757.P846848490815951801

`A055753(n)+A055765(n)-A055761(n)`
-/

namespace A055757.P846848490815951801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055761 n)

end

end A055757.P846848490815951801

/-! ## A055757.P2908873442415119225

`2*A055761(n)-A055766(n)`
-/

namespace A055757.P2908873442415119225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055766 n

end

end A055757.P2908873442415119225

/-! ## A055757.P4925553185985771090

`A055753(n)+A055766(n)-A055762(n)`
-/

namespace A055757.P4925553185985771090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055762 n)

end

end A055757.P4925553185985771090

/-! ## A055757.P249315128110705407

`A055756(n)+A055766(n)-A055765(n)`
-/

namespace A055757.P249315128110705407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055756 n + (A055766 n - A055765 n)

end

end A055757.P249315128110705407

/-! ## A055757.P18063824707037838336

`2*A055762(n)-A056945(n)`
-/

namespace A055757.P18063824707037838336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A056945 n

end

end A055757.P18063824707037838336

/-! ## A055757.P11683604479214587219

`A055751(n)+A056948(n)-A055754(n)`
-/

namespace A055757.P11683604479214587219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A056948 n - A055754 n)

end

end A055757.P11683604479214587219

/-! ## A055757.P5250469669499389960

`A055750(n)+A056948(n)-A056950(n)`
-/

namespace A055757.P5250469669499389960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A056948 n - A056950 n)

end

end A055757.P5250469669499389960

/-!
# A055758: Jacobi form of weight 12 and index 1 for Niemeier lattice of type D_6^4 or A_9^2 D_6.

The programs for A055758, there is no canonical definition to state claims against.
-/

/-! ## A055758.P14641030683228436983

`2*A055753(n)-A055750(n)`
-/

namespace A055758.P14641030683228436983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055750 n

end

end A055758.P14641030683228436983

/-! ## A055758.P8303182014839694207

`2*A055754(n)-A055752(n)`
-/

namespace A055758.P8303182014839694207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055752 n

end

end A055758.P8303182014839694207

/-! ## A055758.P15615504778379255558

`2*A055756(n)-A055753(n)`
-/

namespace A055758.P15615504778379255558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055753 n

end

end A055758.P15615504778379255558

/-! ## A055758.P7213012891463141934

`2*A055757(n)-A055754(n)`
-/

namespace A055758.P7213012891463141934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055754 n

end

end A055758.P7213012891463141934

/-! ## A055758.P16505881308192114684

`2*A055759(n)-A055760(n)`
-/

namespace A055758.P16505881308192114684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055760 n

end

end A055758.P16505881308192114684

/-! ## A055758.P3583762945843572683

`2*A055760(n)-A055762(n)`
-/

namespace A055758.P3583762945843572683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055762 n

end

end A055758.P3583762945843572683

/-! ## A055758.P2967164484356673453

`(A055760(n)+A055757(n))/2`
-/

namespace A055758.P2967164484356673453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055760 n + A055757 n : ℚ) / 2

end

end A055758.P2967164484356673453

/-! ## A055758.P2791804044182883558

`(A055761(n)+A055756(n))/2`
-/

namespace A055758.P2791804044182883558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055761 n + A055756 n : ℚ) / 2

end

end A055758.P2791804044182883558

/-! ## A055758.P15024277322026590418

`(A055762(n)+A055754(n))/2`
-/

namespace A055758.P15024277322026590418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055762 n + A055754 n : ℚ) / 2

end

end A055758.P15024277322026590418

/-! ## A055758.P560376149016414229

`(A055764(n)+A055753(n))/2`
-/

namespace A055758.P560376149016414229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055764 n + A055753 n : ℚ) / 2

end

end A055758.P560376149016414229

/-! ## A055758.P10187909064488022212

`2*A055761(n)-A055764(n)`
-/

namespace A055758.P10187909064488022212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055764 n

end

end A055758.P10187909064488022212

/-! ## A055758.P11081579320511781386

`A055750(n)+A055752(n)-A055747(n)`
-/

namespace A055758.P11081579320511781386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055752 n - A055747 n)

end

end A055758.P11081579320511781386

/-! ## A055758.P807966157397133376

`A055752(n)+A055754(n)-A055750(n)`
-/

namespace A055758.P807966157397133376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055754 n - A055750 n)

end

end A055758.P807966157397133376

/-! ## A055758.P3340982700442849485

`A055753(n)+A055765(n)-A055759(n)`
-/

namespace A055758.P3340982700442849485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055759 n)

end

end A055758.P3340982700442849485

/-! ## A055758.P1931401509490612448

`(A055766(n)+A055752(n))/2`
-/

namespace A055758.P1931401509490612448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055752 n : ℚ) / 2

end

end A055758.P1931401509490612448

/-! ## A055758.P13783208864549812917

`2*A055762(n)-A055766(n)`
-/

namespace A055758.P13783208864549812917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A055766 n

end

end A055758.P13783208864549812917

/-! ## A055758.P7337668166202766079

`A055753(n)+A055766(n)-A055760(n)`
-/

namespace A055758.P7337668166202766079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055760 n)

end

end A055758.P7337668166202766079

/-! ## A055758.P2341146324200312861

`A055759(n)+A055765(n)-A055766(n)`
-/

namespace A055758.P2341146324200312861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055759 n + (A055765 n - A055766 n)

end

end A055758.P2341146324200312861

/-!
# A055759: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_8^3.

The programs for A055759, there is no canonical definition to state claims against.
-/

/-! ## A055759.P16290307835854032979

`2*A055761(n)-A055763(n)`
-/

namespace A055759.P16290307835854032979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055763 n

end

end A055759.P16290307835854032979

/-! ## A055759.P13435008447641415313

`(A055763(n)+A055756(n))/2`
-/

namespace A055759.P13435008447641415313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055763 n + A055756 n : ℚ) / 2

end

end A055759.P13435008447641415313

/-! ## A055759.P2133341847030734763

`(A055762(n)+A055757(n))/2`
-/

namespace A055759.P2133341847030734763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055762 n + A055757 n : ℚ) / 2

end

end A055759.P2133341847030734763

/-! ## A055759.P4929587341300646216

`(A055764(n)+A055754(n))/2`
-/

namespace A055759.P4929587341300646216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055764 n + A055754 n : ℚ) / 2

end

end A055759.P4929587341300646216

/-! ## A055759.P10809315361289543877

`A055747(n)+A055751(n)-A055749(n)`
-/

namespace A055759.P10809315361289543877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055751 n - A055749 n)

end

end A055759.P10809315361289543877

/-! ## A055759.P13852895991142647524

`A055751(n)+A055754(n)-A055747(n)`
-/

namespace A055759.P13852895991142647524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055754 n - A055747 n)

end

end A055759.P13852895991142647524

/-! ## A055759.P12400129047538325157

`A055752(n)+A055753(n)-A055751(n)`
-/

namespace A055759.P12400129047538325157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055753 n - A055751 n)

end

end A055759.P12400129047538325157

/-! ## A055759.P13726726887297764957

`(A055760(n)+A055758(n))/2`
-/

namespace A055759.P13726726887297764957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055760 n + A055758 n : ℚ) / 2

end

end A055759.P13726726887297764957

/-! ## A055759.P17590414473004068643

`2*A055762(n)-A055765(n)`
-/

namespace A055759.P17590414473004068643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A055765 n

end

end A055759.P17590414473004068643

/-! ## A055759.P8640369680231812006

`A055753(n)+A055765(n)-A055758(n)`
-/

namespace A055759.P8640369680231812006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055758 n)

end

end A055759.P8640369680231812006

/-! ## A055759.P8377404904687951878

`A055753(n)+A056950(n)-A055752(n)`
-/

namespace A055759.P8377404904687951878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A056950 n - A055752 n)

end

end A055759.P8377404904687951878

/-! ## A055759.P11376631897556728945

`(A055766(n)+A055753(n))/2`
-/

namespace A055759.P11376631897556728945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055753 n : ℚ) / 2

end

end A055759.P11376631897556728945

/-! ## A055759.P446356697081209310

`A055758(n)+A055766(n)-A055765(n)`
-/

namespace A055759.P446356697081209310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055758 n + (A055766 n - A055765 n)

end

end A055759.P446356697081209310

/-! ## A055759.P8992326298228733943

`A055760(n)+A055765(n)-A055766(n)`
-/

namespace A055759.P8992326298228733943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055760 n + (A055765 n - A055766 n)

end

end A055759.P8992326298228733943

/-! ## A055759.P14836921246677133567

`A055747(n)+A056948(n)-A055750(n)`
-/

namespace A055759.P14836921246677133567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A056948 n - A055750 n)

end

end A055759.P14836921246677133567

/-! ## A055759.P2417670284198235566

`A055750(n)+A056948(n)-A055754(n)`
-/

namespace A055759.P2417670284198235566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A056948 n - A055754 n)

end

end A055759.P2417670284198235566

/-!
# A055760: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_7^2 D_5^2.

The programs for A055760, there is no canonical definition to state claims against.
-/

/-! ## A055760.P959749101774051472

`(A055761(n)+A055759(n))/2`
-/

namespace A055760.P959749101774051472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055761 n + A055759 n : ℚ) / 2

end

end A055760.P959749101774051472

/-! ## A055760.P18253332501412339660

`2*A055761(n)-A055762(n)`
-/

namespace A055760.P18253332501412339660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055762 n

end

end A055760.P18253332501412339660

/-! ## A055760.P3938230513083520720

`2*A055762(n)-A055764(n)`
-/

namespace A055760.P3938230513083520720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A055764 n

end

end A055760.P3938230513083520720

/-! ## A055760.P1073833559687184995

`2*A055757(n)-A055753(n)`
-/

namespace A055760.P1073833559687184995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055753 n

end

end A055760.P1073833559687184995

/-! ## A055760.P17237319943019152814

`A055750(n)+A055753(n)-A055747(n)`
-/

namespace A055760.P17237319943019152814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055753 n - A055747 n)

end

end A055760.P17237319943019152814

/-! ## A055760.P8003738414936489395

`A055753(n)+A055754(n)-A055750(n)`
-/

namespace A055760.P8003738414936489395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055754 n - A055750 n)

end

end A055760.P8003738414936489395

/-! ## A055760.P18113968703908796598

`2*A055756(n)-A055752(n)`
-/

namespace A055760.P18113968703908796598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055752 n

end

end A055760.P18113968703908796598

/-! ## A055760.P14513821916450978992

`A055752(n)+A055762(n)-A055753(n)`
-/

namespace A055760.P14513821916450978992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055762 n - A055753 n)

end

end A055760.P14513821916450978992

/-! ## A055760.P1319472388047006751

`2*A055758(n)-A055757(n)`
-/

namespace A055760.P1319472388047006751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055757 n

end

end A055760.P1319472388047006751

/-! ## A055760.P1731435659132755966

`2*A055759(n)-A055758(n)`
-/

namespace A055760.P1731435659132755966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055758 n

end

end A055760.P1731435659132755966

/-! ## A055760.P14940389288807661647

`(A055765(n)+A055756(n))/2`
-/

namespace A055760.P14940389288807661647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055765 n + A055756 n : ℚ) / 2

end

end A055760.P14940389288807661647

/-! ## A055760.P776342758408838154

`A055747(n)+A055765(n)-A055751(n)`
-/

namespace A055760.P776342758408838154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055765 n - A055751 n)

end

end A055760.P776342758408838154

/-! ## A055760.P494726322199646792

`2*A056950(n)-A055754(n)`
-/

namespace A055760.P494726322199646792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056950 n - A055754 n

end

end A055760.P494726322199646792

/-! ## A055760.P8975664995623123973

`A055750(n)+A056950(n)-A055751(n)`
-/

namespace A055760.P8975664995623123973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A056950 n - A055751 n)

end

end A055760.P8975664995623123973

/-! ## A055760.P7895040482738723409

`(A055766(n)+A055754(n))/2`
-/

namespace A055760.P7895040482738723409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055754 n : ℚ) / 2

end

end A055760.P7895040482738723409

/-! ## A055760.P10487534693421159053

`2*A055763(n)-A055766(n)`
-/

namespace A055760.P10487534693421159053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055763 n - A055766 n

end

end A055760.P10487534693421159053

/-! ## A055760.P17522999553764545515

`A055753(n)+A055766(n)-A055758(n)`
-/

namespace A055760.P17522999553764545515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055758 n)

end

end A055760.P17522999553764545515

/-! ## A055760.P15254079662044661329

`A055759(n)+A055766(n)-A055765(n)`
-/

namespace A055760.P15254079662044661329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055759 n + (A055766 n - A055765 n)

end

end A055760.P15254079662044661329

/-! ## A055760.P904124177755670224

`A055761(n)+A055765(n)-A055766(n)`
-/

namespace A055760.P904124177755670224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055761 n + (A055765 n - A055766 n)

end

end A055760.P904124177755670224

/-! ## A055760.P13802738742289505938

`A055752(n)+A056948(n)-A056950(n)`
-/

namespace A055760.P13802738742289505938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A056948 n - A056950 n)

end

end A055760.P13802738742289505938

/-!
# A055761: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_6^4.

The programs for A055761, there is no canonical definition to state claims against.
-/

/-! ## A055761.P13666610393465383537

`2*A055760(n)-A055759(n)`
-/

namespace A055761.P13666610393465383537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055759 n

end

end A055761.P13666610393465383537

/-! ## A055761.P13372214682875783322

`(A055762(n)+A055760(n))/2`
-/

namespace A055761.P13372214682875783322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055762 n + A055760 n : ℚ) / 2

end

end A055761.P13372214682875783322

/-! ## A055761.P12185852051663453602

`(A055763(n)+A055759(n))/2`
-/

namespace A055761.P12185852051663453602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055763 n + A055759 n : ℚ) / 2

end

end A055761.P12185852051663453602

/-! ## A055761.P17129068620201256607

`2*A055753(n)-A055751(n)`
-/

namespace A055761.P17129068620201256607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055751 n

end

end A055761.P17129068620201256607

/-! ## A055761.P8489059434009693484

`A055752(n)+A055754(n)-A055751(n)`
-/

namespace A055761.P8489059434009693484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055754 n - A055751 n)

end

end A055761.P8489059434009693484

/-! ## A055761.P1686913096627533842

`2*A055758(n)-A055756(n)`
-/

namespace A055761.P1686913096627533842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055756 n

end

end A055761.P1686913096627533842

/-! ## A055761.P4714373630869487695

`2*A055763(n)-A055765(n)`
-/

namespace A055761.P4714373630869487695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055763 n - A055765 n

end

end A055761.P4714373630869487695

/-! ## A055761.P5046560782960215493

`A055753(n)+A055765(n)-A055757(n)`
-/

namespace A055761.P5046560782960215493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055757 n)

end

end A055761.P5046560782960215493

/-! ## A055761.P7013270880106533844

`A055752(n)+A056950(n)-A055750(n)`
-/

namespace A055761.P7013270880106533844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A056950 n - A055750 n)

end

end A055761.P7013270880106533844

/-! ## A055761.P17932657592423892528

`(A055766(n)+A055757(n))/2`
-/

namespace A055761.P17932657592423892528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055757 n : ℚ) / 2

end

end A055761.P17932657592423892528

/-! ## A055761.P12219048253437175663

`A055747(n)+A055766(n)-A055751(n)`
-/

namespace A055761.P12219048253437175663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055766 n - A055751 n)

end

end A055761.P12219048253437175663

/-! ## A055761.P17212245879062936564

`A055760(n)+A055766(n)-A055765(n)`
-/

namespace A055761.P17212245879062936564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055760 n + (A055766 n - A055765 n)

end

end A055761.P17212245879062936564

/-! ## A055761.P11349086963354013154

`A055762(n)+A055765(n)-A055766(n)`
-/

namespace A055761.P11349086963354013154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055762 n + (A055765 n - A055766 n)

end

end A055761.P11349086963354013154

/-! ## A055761.P5031138184845885995

`2*A055764(n)-A056948(n)`
-/

namespace A055761.P5031138184845885995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055764 n - A056948 n

end

end A055761.P5031138184845885995

/-! ## A055761.P4372165397436170911

`A055750(n)+A056948(n)-A055753(n)`
-/

namespace A055761.P4372165397436170911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A056948 n - A055753 n)

end

end A055761.P4372165397436170911

/-!
# A055762: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_5^4 D_4 or D_4^6.

The programs for A055762, there is no canonical definition to state claims against.
-/

/-! ## A055762.P2808729013785979425

`2*A055754(n)-A055750(n)`
-/

namespace A055762.P2808729013785979425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055750 n

end

end A055762.P2808729013785979425

/-! ## A055762.P3992670933484700300

`A055750(n)+A055754(n)-A055747(n)`
-/

namespace A055762.P3992670933484700300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A055754 n - A055747 n)

end

end A055762.P3992670933484700300

/-! ## A055762.P7304801789532389922

`(A055763(n)+A055761(n))/2`
-/

namespace A055762.P7304801789532389922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055763 n + A055761 n : ℚ) / 2

end

end A055762.P7304801789532389922

/-! ## A055762.P11188012281265643823

`A055747(n)+A055750(n)-A055749(n)`
-/

namespace A055762.P11188012281265643823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055750 n - A055749 n)

end

end A055762.P11188012281265643823

/-! ## A055762.P1139383451688925822

`2*A055759(n)-A055757(n)`
-/

namespace A055762.P1139383451688925822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055757 n

end

end A055762.P1139383451688925822

/-! ## A055762.P16603844071483571703

`2*A055763(n)-A055764(n)`
-/

namespace A055762.P16603844071483571703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055763 n - A055764 n

end

end A055762.P16603844071483571703

/-! ## A055762.P176930763501940560

`2*A055752(n)-A055747(n)`
-/

namespace A055762.P176930763501940560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055752 n - A055747 n

end

end A055762.P176930763501940560

/-! ## A055762.P9835899018913535260

`2*A055757(n)-A055752(n)`
-/

namespace A055762.P9835899018913535260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055752 n

end

end A055762.P9835899018913535260

/-! ## A055762.P2975982382267886179

`A055752(n)+A055756(n)-A055751(n)`
-/

namespace A055762.P2975982382267886179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055756 n - A055751 n)

end

end A055762.P2975982382267886179

/-! ## A055762.P10039698043494767148

`2*A055758(n)-A055754(n)`
-/

namespace A055762.P10039698043494767148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055754 n

end

end A055762.P10039698043494767148

/-! ## A055762.P11017986267713294567

`2*A055760(n)-A055758(n)`
-/

namespace A055762.P11017986267713294567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055758 n

end

end A055762.P11017986267713294567

/-! ## A055762.P6547346012632703054

`(A055765(n)+A055759(n))/2`
-/

namespace A055762.P6547346012632703054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055765 n + A055759 n : ℚ) / 2

end

end A055762.P6547346012632703054

/-! ## A055762.P2966903094810964359

`A055753(n)+A055765(n)-A055756(n)`
-/

namespace A055762.P2966903094810964359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055756 n)

end

end A055762.P2966903094810964359

/-! ## A055762.P13598650176670413305

`2*A056950(n)-A055753(n)`
-/

namespace A055762.P13598650176670413305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056950 n - A055753 n

end

end A055762.P13598650176670413305

/-! ## A055762.P18247531023703075867

`A055751(n)+A056950(n)-A055747(n)`
-/

namespace A055762.P18247531023703075867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A056950 n - A055747 n)

end

end A055762.P18247531023703075867

/-! ## A055762.P15366106186668681806

`2*A055764(n)-A055766(n)`
-/

namespace A055762.P15366106186668681806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055764 n - A055766 n

end

end A055762.P15366106186668681806

/-! ## A055762.P2217909425191235847

`(A055766(n)+A055758(n))/2`
-/

namespace A055762.P2217909425191235847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055758 n : ℚ) / 2

end

end A055762.P2217909425191235847

/-! ## A055762.P15667791088874319510

`A055753(n)+A055766(n)-A055757(n)`
-/

namespace A055762.P15667791088874319510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055757 n)

end

end A055762.P15667791088874319510

/-! ## A055762.P12855043221420741121

`A055761(n)+A055766(n)-A055765(n)`
-/

namespace A055762.P12855043221420741121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055761 n + (A055766 n - A055765 n)

end

end A055762.P12855043221420741121

/-! ## A055762.P18317391580301088963

`A055763(n)+A055765(n)-A055766(n)`
-/

namespace A055762.P18317391580301088963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055763 n + (A055765 n - A055766 n)

end

end A055762.P18317391580301088963

/-!
# A055763: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_4^6.

The programs for A055763, there is no canonical definition to state claims against.
-/

/-! ## A055763.P5774559966787523573

`2*A055759(n)-A055756(n)`
-/

namespace A055763.P5774559966787523573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055756 n

end

end A055763.P5774559966787523573

/-! ## A055763.P10808452105861624868

`2*A055761(n)-A055759(n)`
-/

namespace A055763.P10808452105861624868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055759 n

end

end A055763.P10808452105861624868

/-! ## A055763.P17054970622818644803

`2*A055762(n)-A055761(n)`
-/

namespace A055763.P17054970622818644803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A055761 n

end

end A055763.P17054970622818644803

/-! ## A055763.P17293088501014689508

`(A055764(n)+A055762(n))/2`
-/

namespace A055763.P17293088501014689508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055764 n + A055762 n : ℚ) / 2

end

end A055763.P17293088501014689508

/-! ## A055763.P9169789886720442472

`A055753(n)+A055754(n)-A055751(n)`
-/

namespace A055763.P9169789886720442472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055754 n - A055751 n)

end

end A055763.P9169789886720442472

/-! ## A055763.P6971998328730219245

`A055756(n)+A055758(n)-A055752(n)`
-/

namespace A055763.P6971998328730219245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055756 n + (A055758 n - A055752 n)

end

end A055763.P6971998328730219245

/-! ## A055763.P8530505049289570783

`2*A055764(n)-A055765(n)`
-/

namespace A055763.P8530505049289570783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055764 n - A055765 n

end

end A055763.P8530505049289570783

/-! ## A055763.P9003046577136737471

`(A055765(n)+A055761(n))/2`
-/

namespace A055763.P9003046577136737471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055765 n + A055761 n : ℚ) / 2

end

end A055763.P9003046577136737471

/-! ## A055763.P14907913524392423556

`A055752(n)+A055765(n)-A055753(n)`
-/

namespace A055763.P14907913524392423556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055765 n - A055753 n)

end

end A055763.P14907913524392423556

/-! ## A055763.P5694576989736611606

`A055753(n)+A055765(n)-A055754(n)`
-/

namespace A055763.P5694576989736611606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055765 n - A055754 n)

end

end A055763.P5694576989736611606

/-! ## A055763.P10102032282471572392

`2*A055760(n)-A056950(n)`
-/

namespace A055763.P10102032282471572392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A056950 n

end

end A055763.P10102032282471572392

/-! ## A055763.P10824519888084305911

`A055753(n)+A056950(n)-A055750(n)`
-/

namespace A055763.P10824519888084305911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A056950 n - A055750 n)

end

end A055763.P10824519888084305911

/-! ## A055763.P4386200899117707948

`(A055766(n)+A055760(n))/2`
-/

namespace A055763.P4386200899117707948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055760 n : ℚ) / 2

end

end A055763.P4386200899117707948

/-! ## A055763.P10276530963489855187

`A055753(n)+A055766(n)-A055756(n)`
-/

namespace A055763.P10276530963489855187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055756 n)

end

end A055763.P10276530963489855187

/-! ## A055763.P1096929227973229754

`A055762(n)+A055766(n)-A055765(n)`
-/

namespace A055763.P1096929227973229754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055762 n + (A055766 n - A055765 n)

end

end A055763.P1096929227973229754

/-! ## A055763.P2052989450852474441

`A055764(n)+A055765(n)-A055766(n)`
-/

namespace A055763.P2052989450852474441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055764 n + (A055765 n - A055766 n)

end

end A055763.P2052989450852474441

/-! ## A055763.P17751390620979403206

`A055750(n)+A056948(n)-A055752(n)`
-/

namespace A055763.P17751390620979403206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A056948 n - A055752 n)

end

end A055763.P17751390620979403206

/-! ## A055763.P5173569164835210764

`A056945(n)+A056950(n)-A055762(n)`
-/

namespace A055763.P5173569164835210764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056945 n + (A056950 n - A055762 n)

end

end A055763.P5173569164835210764

/-!
# A055764: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_3^8.

The programs for A055764, there is no canonical definition to state claims against.
-/

/-! ## A055764.P14971535238113779907

`2*A055756(n)-A055750(n)`
-/

namespace A055764.P14971535238113779907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055756 n - A055750 n

end

end A055764.P14971535238113779907

/-! ## A055764.P12519422241762557332

`2*A055759(n)-A055754(n)`
-/

namespace A055764.P12519422241762557332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055754 n

end

end A055764.P12519422241762557332

/-! ## A055764.P7964648650627389147

`2*A055760(n)-A055757(n)`
-/

namespace A055764.P7964648650627389147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055757 n

end

end A055764.P7964648650627389147

/-! ## A055764.P8749916022552639690

`2*A055762(n)-A055760(n)`
-/

namespace A055764.P8749916022552639690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A055760 n

end

end A055764.P8749916022552639690

/-! ## A055764.P5015461321494105424

`2*A055751(n)-A055749(n)`
-/

namespace A055764.P5015461321494105424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055751 n - A055749 n

end

end A055764.P5015461321494105424

/-! ## A055764.P17952689283611683235

`A055751(n)+A055759(n)-A055747(n)`
-/

namespace A055764.P17952689283611683235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A055759 n - A055747 n)

end

end A055764.P17952689283611683235

/-! ## A055764.P10628380105201158694

`A055752(n)+A055753(n)-A055747(n)`
-/

namespace A055764.P10628380105201158694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055753 n - A055747 n)

end

end A055764.P10628380105201158694

/-! ## A055764.P10440163069925340000

`A055753(n)+A055762(n)-A055752(n)`
-/

namespace A055764.P10440163069925340000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055762 n - A055752 n)

end

end A055764.P10440163069925340000

/-! ## A055764.P7261044763180156313

`2*A055758(n)-A055753(n)`
-/

namespace A055764.P7261044763180156313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055753 n

end

end A055764.P7261044763180156313

/-! ## A055764.P9454494248457324420

`2*A055761(n)-A055758(n)`
-/

namespace A055764.P9454494248457324420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055761 n - A055758 n

end

end A055764.P9454494248457324420

/-! ## A055764.P8669664490255091471

`(A055765(n)+A055763(n))/2`
-/

namespace A055764.P8669664490255091471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055765 n + A055763 n : ℚ) / 2

end

end A055764.P8669664490255091471

/-! ## A055764.P12792781299297529935

`2*A056950(n)-A055752(n)`
-/

namespace A055764.P12792781299297529935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056950 n - A055752 n

end

end A055764.P12792781299297529935

/-! ## A055764.P7681547892033343532

`2*A055765(n)-A055766(n)`
-/

namespace A055764.P7681547892033343532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055765 n - A055766 n

end

end A055764.P7681547892033343532

/-! ## A055764.P7816935470431569030

`(A055766(n)+A055762(n))/2`
-/

namespace A055764.P7816935470431569030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055762 n : ℚ) / 2

end

end A055764.P7816935470431569030

/-! ## A055764.P13351828290602518666

`A055752(n)+A055766(n)-A055753(n)`
-/

namespace A055764.P13351828290602518666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055766 n - A055753 n)

end

end A055764.P13351828290602518666

/-! ## A055764.P3910171645388660095

`A055753(n)+A055766(n)-A055754(n)`
-/

namespace A055764.P3910171645388660095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055753 n + (A055766 n - A055754 n)

end

end A055764.P3910171645388660095

/-! ## A055764.P13273454236969721632

`A055763(n)+A055766(n)-A055765(n)`
-/

namespace A055764.P13273454236969721632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055763 n + (A055766 n - A055765 n)

end

end A055764.P13273454236969721632

/-! ## A055764.P6487463530647497490

`2*A055766(n)-A056945(n)`
-/

namespace A055764.P6487463530647497490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055766 n - A056945 n

end

end A055764.P6487463530647497490

/-! ## A055764.P8252715838198317031

`A055751(n)+A056948(n)-A055750(n)`
-/

namespace A055764.P8252715838198317031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055751 n + (A056948 n - A055750 n)

end

end A055764.P8252715838198317031

/-! ## A055764.P7114425487227744829

`A055754(n)+A056948(n)-A056950(n)`
-/

namespace A055764.P7114425487227744829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055754 n + (A056948 n - A056950 n)

end

end A055764.P7114425487227744829

/-!
# A055765: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_2^12.

The programs for A055765, there is no canonical definition to state claims against.
-/

/-! ## A055765.P3588358611133430992

`2*A055754(n)-A055751(n)`
-/

namespace A055765.P3588358611133430992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055754 n - A055751 n

end

end A055765.P3588358611133430992

/-! ## A055765.P6179273504127481126

`2*A055760(n)-A055756(n)`
-/

namespace A055765.P6179273504127481126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055756 n

end

end A055765.P6179273504127481126

/-! ## A055765.P11088522143562998295

`2*A055762(n)-A055759(n)`
-/

namespace A055765.P11088522143562998295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055762 n - A055759 n

end

end A055765.P11088522143562998295

/-! ## A055765.P12502048990616691755

`2*A055763(n)-A055761(n)`
-/

namespace A055765.P12502048990616691755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055763 n - A055761 n

end

end A055765.P12502048990616691755

/-! ## A055765.P5097567563640601226

`2*A055764(n)-A055763(n)`
-/

namespace A055765.P5097567563640601226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055764 n - A055763 n

end

end A055765.P5097567563640601226

/-! ## A055765.P16562042347779720696

`A055752(n)+A055758(n)-A055751(n)`
-/

namespace A055765.P16562042347779720696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055758 n - A055751 n)

end

end A055765.P16562042347779720696

/-! ## A055765.P17649357474921538290

`A055750(n)+A056950(n)-A055747(n)`
-/

namespace A055765.P17649357474921538290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055750 n + (A056950 n - A055747 n)

end

end A055765.P17649357474921538290

/-! ## A055765.P11761488031212596475

`A055754(n)+A056950(n)-A055750(n)`
-/

namespace A055765.P11761488031212596475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055754 n + (A056950 n - A055750 n)

end

end A055765.P11761488031212596475

/-! ## A055765.P3933291304203740067

`(A055766(n)+A055764(n))/2`
-/

namespace A055765.P3933291304203740067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055766 n + A055764 n : ℚ) / 2

end

end A055765.P3933291304203740067

/-! ## A055765.P7672732571733343742

`(A056945(n)+A055762(n))/2`
-/

namespace A055765.P7672732571733343742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056945 n + A055762 n : ℚ) / 2

end

end A055765.P7672732571733343742

/-! ## A055765.P4170870791863903797

`A055752(n)+A056948(n)-A055753(n)`
-/

namespace A055765.P4170870791863903797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A056948 n - A055753 n)

end

end A055765.P4170870791863903797

/-! ## A055765.P1221229793469909424

`A056945(n)+A056950(n)-A055760(n)`
-/

namespace A055765.P1221229793469909424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056945 n + (A056950 n - A055760 n)

end

end A055765.P1221229793469909424

/-!
# A055766: Jacobi form of weight 12 and index 1 for Niemeier lattice of type A_1^24.

The programs for A055766, there is no canonical definition to state claims against.
-/

/-! ## A055766.P6712907177490196727

`2*A055753(n)-A055747(n)`
-/

namespace A055766.P6712907177490196727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055753 n - A055747 n

end

end A055766.P6712907177490196727

/-! ## A055766.P4277187096197537335

`2*A055757(n)-A055750(n)`
-/

namespace A055766.P4277187096197537335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055757 n - A055750 n

end

end A055766.P4277187096197537335

/-! ## A055766.P1976746384594292826

`2*A055758(n)-A055752(n)`
-/

namespace A055766.P1976746384594292826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055758 n - A055752 n

end

end A055766.P1976746384594292826

/-! ## A055766.P10448298108326122924

`2*A055759(n)-A055753(n)`
-/

namespace A055766.P10448298108326122924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055759 n - A055753 n

end

end A055766.P10448298108326122924

/-! ## A055766.P5632002601014620011

`2*A055760(n)-A055754(n)`
-/

namespace A055766.P5632002601014620011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055760 n - A055754 n

end

end A055766.P5632002601014620011

/-! ## A055766.P14156830458286211596

`2*A055764(n)-A055762(n)`
-/

namespace A055766.P14156830458286211596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055764 n - A055762 n

end

end A055766.P14156830458286211596

/-! ## A055766.P10437134697767270397

`2*A055765(n)-A055764(n)`
-/

namespace A055766.P10437134697767270397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055765 n - A055764 n

end

end A055766.P10437134697767270397

/-! ## A055766.P11060264701836404078

`A055747(n)+A055752(n)-A055749(n)`
-/

namespace A055766.P11060264701836404078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055747 n + (A055752 n - A055749 n)

end

end A055766.P11060264701836404078

/-! ## A055766.P8417798197713873365

`A055752(n)+A055754(n)-A055747(n)`
-/

namespace A055766.P8417798197713873365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055752 n + (A055754 n - A055747 n)

end

end A055766.P8417798197713873365

/-!
# A055767: Index (or subscript) k of the largest primorial A002110(k) that divides the Euler phi of the n-th primorial (A005867(n)).

The programs for A055767, there is no canonical definition to state claims against.
-/

/-! ## A055767.P9605968271294071856

`comp[A000593(A342559(n+1))]-n`
-/

namespace A055767.P9605968271294071856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A342559 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A055767.P9605968271294071856

/-!
# A055768: Number of distinct primes dividing phi of n-th primorial number.

The programs for A055768, there is no canonical definition to state claims against.
-/

/-! ## A055768.P2352858315429143544

`∑[char[A307805(n+1)-1]]`
-/

namespace A055768.P2352858315429143544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307805 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P2352858315429143544

/-! ## A055768.P16258454113213337950

`∑[char[A071349(n+2)-1]]`
-/

namespace A055768.P16258454113213337950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071349 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P16258454113213337950

/-! ## A055768.P15449328007993124100

`∑[A010051(A132948(n+1))]`
-/

namespace A055768.P15449328007993124100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A132948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P15449328007993124100

/-! ## A055768.P18122152773048355482

`∑[char[A023443(A071349(n+2))]]`
-/

namespace A055768.P18122152773048355482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A071349 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P18122152773048355482

/-! ## A055768.P15368460559288075956

`A028310(a(n-1))+A010051(A132948(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A055768.P15368460559288075956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A028310 (a (n - 1)).toNat + A010051 (A132948 (n + 1)).toNat

end

end A055768.P15368460559288075956

/-! ## A055768.P15166005321954007195

`∑[A001221(ratio[A058250(n)])]`
-/

namespace A055768.P15166005321954007195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P15166005321954007195

/-! ## A055768.P12421528464411423665

`∑[A001222(ratio[A058250(n)])]`
-/

namespace A055768.P12421528464411423665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P12421528464411423665

/-! ## A055768.P13253682400880579271

`∑[A010051(ratio[A058250(n)])]`
-/

namespace A055768.P13253682400880579271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P13253682400880579271

/-! ## A055768.P16358463119761261523

`∑[A010051(A093416(n+1))]`
-/

namespace A055768.P16358463119761261523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A093416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055768.P16358463119761261523

/-!
# A055769: Largest prime dividing phi of the n-th primorial.

The programs for A055769, the canonical program `A055769.P9933774416069110779` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055769 has offset 1).

The definition of A055769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055769.P9933774416069110779

`A006530(a(n-1)*A023503(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A055769

/-- `A006530(a(n-1)*A023503(n+1))` -/
def P9933774416069110779.Spec : Prop :=
  ∀ n, P9933774416069110779.a n = A055769 (n + 1)

theorem P9933774416069110779.correct : P9933774416069110779.Spec := by
  intro n
  simp only [A055769, Nat.add_sub_cancel]

end A055769

/-! ## A055769.P17801568085134124000

`A006530(a(n-1)*A039638(n+1))` with `a(0)=1`
-/

namespace A055769.P17801568085134124000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A039638 (n + 1)).toNat

end

end A055769.P17801568085134124000

namespace A055769

/-- `A006530(a(n-1)*A039638(n+1))` -/
def P17801568085134124000.Spec : Prop :=
  ∀ n, P17801568085134124000.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P3931044180030305977

`A006530(a(n-1)*A039640(n+1))` with `a(0)=1`
-/

namespace A055769.P3931044180030305977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A039640 (n + 1)).toNat

end

end A055769.P3931044180030305977

namespace A055769

/-- `A006530(a(n-1)*A039640(n+1))` -/
def P3931044180030305977.Spec : Prop :=
  ∀ n, P3931044180030305977.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P3881128674450171227

`A006530(a(n-1)*A132948(n+1))` with `a(0)=1`
-/

namespace A055769.P3881128674450171227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A132948 (n + 1)).toNat

end

end A055769.P3881128674450171227

namespace A055769

/-- `A006530(a(n-1)*A132948(n+1))` -/
def P3881128674450171227.Spec : Prop :=
  ∀ n, P3881128674450171227.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P2747320599871995799

`A006530(lcm(a(n-1), A132948(n+1)))` with `a(0)=1`
-/

namespace A055769.P2747320599871995799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (A132948 (n + 1)))

end

end A055769.P2747320599871995799

namespace A055769

/-- `A006530(lcm(a(n-1), A132948(n+1)))` -/
def P2747320599871995799.Spec : Prop :=
  ∀ n, P2747320599871995799.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P13690845562935284059

`A006530(a(n-1)*A006530(A006093(n+1)))` with `a(0)=1`
-/

namespace A055769.P13690845562935284059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A006530 (A006093 (n + 1)).toNat).toNat

end

end A055769.P13690845562935284059

namespace A055769

/-- `A006530(a(n-1)*A006530(A006093(n+1)))` -/
def P13690845562935284059.Spec : Prop :=
  ∀ n, P13690845562935284059.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P10464458054332476453

`A006530(a(n-1)*A006530(record[A000010(n+1)]))` with `a(0)=1`
-/

namespace A055769.P10464458054332476453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A055769.P10464458054332476453

namespace A055769

/-- `A006530(a(n-1)*A006530(record[A000010(n+1)]))` -/
def P10464458054332476453.Spec : Prop :=
  ∀ n, P10464458054332476453.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P7897568648571127757

`A006530(a(n-1)*A082654(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A055769.P7897568648571127757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (a (n - 1) * A082654 (n + 1)).toNat

end

end A055769.P7897568648571127757

namespace A055769

/-- `A006530(a(n-1)*A082654(n+1))` -/
def P7897568648571127757.Spec : Prop :=
  ∀ n, P7897568648571127757.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P9082036932182751496

`A006530(a(n-1)*A241195(n+1))` with `a(0)=1`
-/

namespace A055769.P9082036932182751496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A241195 (n + 1)).toNat

end

end A055769.P9082036932182751496

namespace A055769

/-- `A006530(a(n-1)*A241195(n+1))` -/
def P9082036932182751496.Spec : Prop :=
  ∀ n, P9082036932182751496.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P1869890939565510187

`A006530(a(n-1)*A102781(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A055769.P1869890939565510187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (a (n - 1) * A102781 (n + 1)).toNat

end

end A055769.P1869890939565510187

namespace A055769

/-- `A006530(a(n-1)*A102781(n+1))` -/
def P1869890939565510187.Spec : Prop :=
  ∀ n, P1869890939565510187.a n = A055769 (n + 1)

end A055769

/-! ## A055769.P78389537812453493

`A006530(a(n-1)*A130290(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A055769.P78389537812453493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (a (n - 1) * A130290 (n + 1)).toNat

end

end A055769.P78389537812453493

namespace A055769

/-- `A006530(a(n-1)*A130290(n+1))` -/
def P78389537812453493.Spec : Prop :=
  ∀ n, P78389537812453493.a n = A055769 (n + 1)

end A055769

/-!
# A055770: Largest factorial number which divides n.

The programs for A055770, the canonical program `A055770.P10085862936855628698` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055770 has offset 1).

The definition of A055770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055770.P10085862936855628698

`A055881(n+1)!`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055770

/-- `A055881(n+1)!` -/
def P10085862936855628698.Spec : Prop :=
  ∀ n, (P10085862936855628698.a n : ℤ) = A055770 (n + 1)

theorem P10085862936855628698.correct : P10085862936855628698.Spec := by
  intro n
  simp only [A055770, Nat.add_sub_cancel]

end A055770

/-! ## A055770.P7495047067472805349

`(A230403(n+1)+1)!`
-/

namespace A055770.P7495047067472805349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230403 (n + 1) + 1).toNat

end

end A055770.P7495047067472805349

namespace A055770

/-- `(A230403(n+1)+1)!` -/
def P7495047067472805349.Spec : Prop :=
  ∀ n, (P7495047067472805349.a n : ℤ) = A055770 (n + 1)

end A055770

/-! ## A055770.P8451001072438268001

`(n+1)/A076934(n+1)`
-/

namespace A055770.P8451001072438268001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076934 (n + 1) : ℚ)

end

end A055770.P8451001072438268001

namespace A055770

/-- `(n+1)/A076934(n+1)` -/
def P8451001072438268001.Spec : Prop :=
  ∀ n, P8451001072438268001.a n = (A055770 (n + 1) : ℚ)

end A055770

/-! ## A055770.P12892287374762777154

`A257686(A073575(n+1))`
-/

namespace A055770.P12892287374762777154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (A073575 (n + 1)).toNat

end

end A055770.P12892287374762777154

namespace A055770

/-- `A257686(A073575(n+1))` -/
def P12892287374762777154.Spec : Prop :=
  ∀ n, P12892287374762777154.a n = A055770 (n + 1)

end A055770

/-! ## A055770.P1747378173736661532

`Δ[A060832(n)]!`
-/

namespace A055770.P1747378173736661532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A055770.P1747378173736661532

namespace A055770

/-- `Δ[A060832(n)]!` -/
def P1747378173736661532.Spec : Prop :=
  ∀ n, (P1747378173736661532.a n : ℤ) = A055770 (n + 1)

end A055770

/-! ## A055770.P10443387727067715178

`A129655(A060832(n+1)-A060832(n))`
-/

namespace A055770.P10443387727067715178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129655 (A060832 (n + 1) - A060832 n).toNat

end

end A055770.P10443387727067715178

namespace A055770

/-- `A129655(A060832(n+1)-A060832(n))` -/
def P10443387727067715178.Spec : Prop :=
  ∀ n, P10443387727067715178.a n = A055770 (n + 1)

end A055770

/-! ## A055770.P3522729492012585749

`A276162(A286143(n+1))`
-/

namespace A055770.P3522729492012585749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276162 (A286143 (n + 1)).toNat

end

end A055770.P3522729492012585749

namespace A055770

/-- `A276162(A286143(n+1))` -/
def P3522729492012585749.Spec : Prop :=
  ∀ n, P3522729492012585749.a n = A055770 (n + 1)

end A055770

/-! ## A055770.P5277695356643059098

`A000119(A073575(n+1)²)`
-/

namespace A055770.P5277695356643059098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A073575 (n + 1) ^ 2).toNat

end

end A055770.P5277695356643059098

namespace A055770

/-- `A000119(A073575(n+1)²)` -/
def P5277695356643059098.Spec : Prop :=
  ∀ n, P5277695356643059098.a n = A055770 (n + 1)

end A055770

/-!
# A055771: Multiplicity of irreducible character IRR2 of Monster simple group in n-th head character.

The programs for A055771, there is no canonical definition to state claims against.
-/

/-! ## A055771.P11263365864624492545

`A055791(∑[n+1]+1)`
-/

namespace A055771.P11263365864624492545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055771.P11263365864624492545

/-! ## A055771.P15416527456041229279

`A055791(A134869(n+1))-A000007(n)`
-/

namespace A055771.P15416527456041229279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A134869 (n + 1)).toNat - A000007 n

end

end A055771.P15416527456041229279

/-! ## A055771.P1847097187058301063

`A055791(A134869(n+1))%A074801(n)`
-/

namespace A055771.P1847097187058301063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055791 (A134869 (n + 1)).toNat) (A074801 n)

end

end A055771.P1847097187058301063

/-! ## A055771.P11780739769735963454

`A055791(A134869(n+1))-char[A061998(n)]`
-/

namespace A055771.P11780739769735963454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A134869 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055771.P11780739769735963454

/-! ## A055771.P3652237603883118313

`and(1, A171501(n))*A055791(A134869(n+1))`
-/

namespace A055771.P3652237603883118313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A171501 n) * A055791 (A134869 (n + 1)).toNat

end

end A055771.P3652237603883118313

/-! ## A055771.P13709306039275734752

`A055791(A134869(n+1))-A008683((n+1)²)`
-/

namespace A055771.P13709306039275734752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A134869 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A055771.P13709306039275734752

/-! ## A055771.P18435277721514814132

`A055791(A134869(n+1))-char[A179426(n+1)]`
-/

namespace A055771.P18435277721514814132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A134869 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055771.P18435277721514814132

/-! ## A055771.P2654986665105983050

`A055791(A134869(n+1))-char[A179427(n+1)]`
-/

namespace A055771.P2654986665105983050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179427 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A134869 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055771.P2654986665105983050

/-! ## A055771.P11436021087951678806

`A055791(A134869(n+1))-char[A194653(n+1)]`
-/

namespace A055771.P11436021087951678806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194653 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055791 (A134869 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055771.P11436021087951678806

/-! ## A055771.P17292635360056507076

`(A087156(n+1)-n)*A055791(A134869(n+1))`
-/

namespace A055771.P17292635360056507076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) - (n : ℤ)) * A055791 (A134869 (n + 1)).toNat

end

end A055771.P17292635360056507076

/-! ## A055771.P8496915293816769550

`A000225(round(n/(n+1)))*A055791(A134869(n+1))`
-/

namespace A055771.P8496915293816769550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat * A055791 (A134869 (n + 1)).toNat

end

end A055771.P8496915293816769550

/-! ## A055771.P7674013358534015411

`A000578(round(n/(n+1)))*A055791(A134869(n+1))`
-/

namespace A055771.P7674013358534015411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat * A055791 (A134869 (n + 1)).toNat

end

end A055771.P7674013358534015411

/-!
# A055772: Square root of largest square dividing n!.

The programs for A055772, the canonical program `A055772.P17344968557640667669` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055772 has offset 1).

The definition of A055772 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055772.P17344968557640667669

`sqrt(A055071(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055772

/-- `sqrt(A055071(n+1))` -/
def P17344968557640667669.Spec : Prop :=
  ∀ n, P17344968557640667669.a n = (A055772 (n + 1) : ℝ)

end A055772

/-! ## A055772.P13289614313520857452

`A065033(n)!*A056043(n+1)`
-/

namespace A055772.P13289614313520857452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A065033 n).toNat : ℤ) * A056043 (n + 1)

end

end A055772.P13289614313520857452

namespace A055772

/-- `A065033(n)!*A056043(n+1)` -/
def P13289614313520857452.Spec : Prop :=
  ∀ n, P13289614313520857452.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P4341918441022818047

`A110654(n)!*A056043(n+1)`
-/

namespace A055772.P4341918441022818047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A110654 n).toNat : ℤ) * A056043 (n + 1)

end

end A055772.P4341918441022818047

namespace A055772

/-- `A110654(n)!*A056043(n+1)` -/
def P4341918441022818047.Spec : Prop :=
  ∀ n, P4341918441022818047.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P7032299357187140307

`A055230(n+1)*A056627(n+1)`
-/

namespace A055772.P7032299357187140307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1) * A056627 (n + 1)

end

end A055772.P7032299357187140307

namespace A055772

/-- `A055230(n+1)*A056627(n+1)` -/
def P7032299357187140307.Spec : Prop :=
  ∀ n, P7032299357187140307.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P17727794676057277236

`A056038(n+1)*A056044(n+1)`
-/

namespace A055772.P17727794676057277236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056038 (n + 1) * A056044 (n + 1)

end

end A055772.P17727794676057277236

namespace A055772

/-- `A056038(n+1)*A056044(n+1)` -/
def P17727794676057277236.Spec : Prop :=
  ∀ n, P17727794676057277236.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P6005823674212182964

`A056043(n+1)*A081123(n+1)`
-/

namespace A055772.P6005823674212182964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (n + 1) * A081123 (n + 1)

end

end A055772.P6005823674212182964

namespace A055772

/-- `A056043(n+1)*A081123(n+1)` -/
def P6005823674212182964.Spec : Prop :=
  ∀ n, P6005823674212182964.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P17587180365815793565

`A248765(n+1)²*A240505(n+1)`
-/

namespace A055772.P17587180365815793565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248765 (n + 1) ^ 2 * A240505 (n + 1)

end

end A055772.P17587180365815793565

namespace A055772

/-- `A248765(n+1)²*A240505(n+1)` -/
def P17587180365815793565.Spec : Prop :=
  ∀ n, P17587180365815793565.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P864339103832078732

`A056039(n+1)!*A056044(n+1)`
-/

namespace A055772.P864339103832078732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A056039 (n + 1)).toNat : ℤ) * A056044 (n + 1)

end

end A055772.P864339103832078732

namespace A055772

/-- `A056039(n+1)!*A056044(n+1)` -/
def P864339103832078732.Spec : Prop :=
  ∀ n, P864339103832078732.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P6268849521360269597

`A000142(A004526(n+1))*A056043(n+1)`
-/

namespace A055772.P6268849521360269597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A004526 (n + 1)).toNat * A056043 (n + 1)

end

end A055772.P6268849521360269597

namespace A055772

/-- `A000142(A004526(n+1))*A056043(n+1)` -/
def P6268849521360269597.Spec : Prop :=
  ∀ n, P6268849521360269597.a n = A055772 (n + 1)

end A055772

/-! ## A055772.P8352432435732515574

`A065887(n+1)/A055204(n+1)`
-/

namespace A055772.P8352432435732515574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065887 (n + 1) : ℚ) / (A055204 (n + 1) : ℚ)

end

end A055772.P8352432435732515574

namespace A055772

/-- `A065887(n+1)/A055204(n+1)` -/
def P8352432435732515574.Spec : Prop :=
  ∀ n, P8352432435732515574.a n = (A055772 (n + 1) : ℚ)

end A055772

/-!
# A055773: a(n) = Product_{p in P_n} where P_n = {p prime, n/2 < p <= n }.

The programs for A055773, the canonical program `A055773.P829103840923017238` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055773 has offset 0).

The definition of A055773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055773.P14585723191592828270

`A056040(n)/A182923(n)`
-/

namespace A055773.P14585723191592828270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A182923 n : ℚ)

end

end A055773.P14585723191592828270

namespace A055773

/-- `A056040(n)/A182923(n)` -/
def P14585723191592828270.Spec : Prop :=
  ∀ n, P14585723191592828270.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P11562562536334688467

`A008336(n+1)/A370971(n+1)`
-/

namespace A055773.P11562562536334688467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008336 (n + 1) : ℚ) / (A370971 (n + 1) : ℚ)

end

end A055773.P11562562536334688467

namespace A055773

/-- `A008336(n+1)/A370971(n+1)` -/
def P11562562536334688467.Spec : Prop :=
  ∀ n, P11562562536334688467.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P7207881796672152999

`A034386(n)/A300951(n)`
-/

namespace A055773.P7207881796672152999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A300951 n : ℚ)

end

end A055773.P7207881796672152999

namespace A055773

/-- `A034386(n)/A300951(n)` -/
def P7207881796672152999.Spec : Prop :=
  ∀ n, P7207881796672152999.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P829103840923017238

`A300951(2*n)/A300951(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A055773

/-- `A300951(2*n)/A300951(n)` -/
def P829103840923017238.Spec : Prop :=
  ∀ n, P829103840923017238.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P14151909850304169533

`A034386(n)/A034386(floor(n/2))`
-/

namespace A055773.P14151909850304169533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A034386 ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A055773.P14151909850304169533

namespace A055773

/-- `A034386(n)/A034386(floor(n/2))` -/
def P14151909850304169533.Spec : Prop :=
  ∀ n, P14151909850304169533.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P6170692478803984070

`A066838(A151800(n))/A300951(n)`
-/

namespace A055773.P6170692478803984070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A151800 n).toNat : ℚ) / (A300951 n : ℚ)

end

end A055773.P6170692478803984070

namespace A055773

/-- `A066838(A151800(n))/A300951(n)` -/
def P6170692478803984070.Spec : Prop :=
  ∀ n, P6170692478803984070.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P6185588033253366410

`A066838(A159477(n+1))/A300951(n)`
-/

namespace A055773.P6185588033253366410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A159477 (n + 1)).toNat : ℚ) / (A300951 n : ℚ)

end

end A055773.P6185588033253366410

namespace A055773

/-- `A066838(A159477(n+1))/A300951(n)` -/
def P6185588033253366410.Spec : Prop :=
  ∀ n, P6185588033253366410.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P6301070587131737736

`A002110(A095117(n)-n)/A300951(n)`
-/

namespace A055773.P6301070587131737736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A095117 n - (n : ℤ)).toNat : ℚ) / (A300951 n : ℚ)

end

end A055773.P6301070587131737736

namespace A055773

/-- `A002110(A095117(n)-n)/A300951(n)` -/
def P6301070587131737736.Spec : Prop :=
  ∀ n, P6301070587131737736.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P11309584615475247814

`A034386(n)/gcd(A034386(n), A139550(n))`
-/

namespace A055773.P11309584615475247814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (Int.gcd (A034386 n) (A139550 n) : ℚ)

end

end A055773.P11309584615475247814

namespace A055773

/-- `A034386(n)/gcd(A034386(n), A139550(n))` -/
def P11309584615475247814.Spec : Prop :=
  ∀ n, P11309584615475247814.a n = (A055773 n : ℚ)

end A055773

/-! ## A055773.P4813360669621228459

`A056040(n)/gcd(A049614(n), A056040(n))`
-/

namespace A055773.P4813360669621228459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (Int.gcd (A049614 n) (A056040 n) : ℚ)

end

end A055773.P4813360669621228459

namespace A055773

/-- `A056040(n)/gcd(A049614(n), A056040(n))` -/
def P4813360669621228459.Spec : Prop :=
  ∀ n, P4813360669621228459.a n = (A055773 n : ℚ)

end A055773

/-!
# A055774: Least common multiple of n! and n^n.

The programs for A055774, there is no canonical definition to state claims against.
-/

/-! ## A055774.P4377482981044824750

`A000312(n+1)*A000142(n+1)/A051696(n+1)`
-/

namespace A055774.P4377482981044824750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) * A000142 (n + 1) : ℚ) / (A051696 (n + 1) : ℚ)

end

end A055774.P4377482981044824750

/-! ## A055774.P11743927955193768210

`lcm((n+1)^(n+1), n!)`
-/

namespace A055774.P11743927955193768210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ (n + 1)) (Nat.factorial n)

end

end A055774.P11743927955193768210

/-! ## A055774.P14130993138760731493

`lcm((-(n+1))^(n+1), ∏[n+1])`
-/

namespace A055774.P14130993138760731493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-(n + 1 : ℤ)) ^ (n + 1)) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055774.P14130993138760731493

/-! ## A055774.P18067145032718648832

`A000142(n+1)*A036505(n)`
-/

namespace A055774.P18067145032718648832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A036505 n

end

end A055774.P18067145032718648832

/-! ## A055774.P9785333400757513928

`A000142(n)*A395543(n+1)`
-/

namespace A055774.P9785333400757513928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A395543 (n + 1)

end

end A055774.P9785333400757513928

/-!
# A055775: a(n) = floor(n^n / n!).

The programs for A055775, the canonical program `A055775.P5930319360301394312` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055775 has offset 0).

The definition of A055775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^n/n!)` (program `A055775.P5930319360301394312`, by `A055775.P5930319360301394312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055775.P5930319360301394312

`floor(n^n/n!)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055775

/-- `floor(n^n/n!)` -/
def P5930319360301394312.Spec : Prop :=
  ∀ n, P5930319360301394312.a n = A055775 n

theorem P5930319360301394312.correct : P5930319360301394312.Spec := by
  intro n
  simp only [A055775]

end A055775

/-! ## A055775.P14832949645071928312

`floor(A000312(n)/A000142(n))`
-/

namespace A055775.P14832949645071928312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000312 n : ℚ) / (A000142 n : ℚ)⌋

end

end A055775.P14832949645071928312

namespace A055775

/-- `floor(A000312(n)/A000142(n))` -/
def P14832949645071928312.Spec : Prop :=
  ∀ n, P14832949645071928312.a n = A055775 n

end A055775

/-! ## A055775.P5020078058227019836

`A114854(A004277(n))`
-/

namespace A055775.P5020078058227019836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A004277 n).toNat

end

end A055775.P5020078058227019836

namespace A055775

/-- `A114854(A004277(n))` -/
def P5020078058227019836.Spec : Prop :=
  ∀ n, P5020078058227019836.a n = A055775 n

end A055775

/-! ## A055775.P18262444748941657389

`A114863(A008486(n))`
-/

namespace A055775.P18262444748941657389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A008486 n).toNat

end

end A055775.P18262444748941657389

namespace A055775

/-- `A114863(A008486(n))` -/
def P18262444748941657389.Spec : Prop :=
  ∀ n, P18262444748941657389.a n = A055775 n

end A055775

/-! ## A055775.P3026143249104875275

`A114968(A008458(n))`
-/

namespace A055775.P3026143249104875275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114968 (A008458 n).toNat

end

end A055775.P3026143249104875275

namespace A055775

/-- `A114968(A008458(n))` -/
def P3026143249104875275.Spec : Prop :=
  ∀ n, P3026143249104875275.a n = A055775 n

end A055775

/-! ## A055775.P11131399017863091303

`A114868(A008574(n))`
-/

namespace A055775.P11131399017863091303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114868 (A008574 n).toNat

end

end A055775.P11131399017863091303

namespace A055775

/-- `A114868(A008574(n))` -/
def P11131399017863091303.Spec : Prop :=
  ∀ n, P11131399017863091303.a n = A055775 n

end A055775

/-! ## A055775.P2648291234003086520

`A114869(A008706(n))`
-/

namespace A055775.P2648291234003086520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114869 (A008706 n).toNat

end

end A055775.P2648291234003086520

namespace A055775

/-- `A114869(A008706(n))` -/
def P2648291234003086520.Spec : Prop :=
  ∀ n, P2648291234003086520.a n = A055775 n

end A055775

/-! ## A055775.P17967466525527356865

`A114854(A004275(n+1))`
-/

namespace A055775.P17967466525527356865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A004275 (n + 1)).toNat

end

end A055775.P17967466525527356865

namespace A055775

/-- `A114854(A004275(n+1))` -/
def P17967466525527356865.Spec : Prop :=
  ∀ n, P17967466525527356865.a n = A055775 n

end A055775

/-! ## A055775.P10536780204875485393

`A114854(A092535(n+1))`
-/

namespace A055775.P10536780204875485393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A092535 (n + 1)).toNat

end

end A055775.P10536780204875485393

namespace A055775

/-- `A114854(A092535(n+1))` -/
def P10536780204875485393.Spec : Prop :=
  ∀ n, P10536780204875485393.a n = A055775 n

end A055775

/-! ## A055775.P8667040515882611944

`A114854(A004278(n+2))`
-/

namespace A055775.P8667040515882611944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A004278 (n + 2)).toNat

end

end A055775.P8667040515882611944

namespace A055775

/-- `A114854(A004278(n+2))` -/
def P8667040515882611944.Spec : Prop :=
  ∀ n, P8667040515882611944.a n = A055775 n

end A055775

/-! ## A055775.P11999875703474654278

`A114854(A058992(n+2))`
-/

namespace A055775.P11999875703474654278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A058992 (n + 2)).toNat

end

end A055775.P11999875703474654278

namespace A055775

/-- `A114854(A058992(n+2))` -/
def P11999875703474654278.Spec : Prop :=
  ∀ n, P11999875703474654278.a n = A055775 n

end A055775

/-! ## A055775.P3553000034375156670

`A114854(A300576(n+2))`
-/

namespace A055775.P3553000034375156670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A300576 (n + 2)).toNat

end

end A055775.P3553000034375156670

namespace A055775

/-- `A114854(A300576(n+2))` -/
def P3553000034375156670.Spec : Prop :=
  ∀ n, P3553000034375156670.a n = A055775 n

end A055775

/-! ## A055775.P7404198798119785310

`A114863(A028310(3*n))`
-/

namespace A055775.P7404198798119785310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A028310 (3 * n)).toNat

end

end A055775.P7404198798119785310

namespace A055775

/-- `A114863(A028310(3*n))` -/
def P7404198798119785310.Spec : Prop :=
  ∀ n, P7404198798119785310.a n = A055775 n

end A055775

/-! ## A055775.P3623655630158900412

`A114854(A051755(n+2)-2)`
-/

namespace A055775.P3623655630158900412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114854 (A051755 (n + 2) - 2).toNat

end

end A055775.P3623655630158900412

namespace A055775

/-- `A114854(A051755(n+2)-2)` -/
def P3623655630158900412.Spec : Prop :=
  ∀ n, P3623655630158900412.a n = A055775 n

end A055775

/-! ## A055775.P173648053299174044

`A114863(A008706(n)-2*n)`
-/

namespace A055775.P173648053299174044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A008706 n - (2 * n : ℤ)).toNat

end

end A055775.P173648053299174044

namespace A055775

/-- `A114863(A008706(n)-2*n)` -/
def P173648053299174044.Spec : Prop :=
  ∀ n, P173648053299174044.a n = A055775 n

end A055775

/-! ## A055775.P3084596503341002825

`A114863(A028310(n)+n+n)`
-/

namespace A055775.P3084596503341002825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A028310 n + (n : ℤ) + (n : ℤ)).toNat

end

end A055775.P3084596503341002825

namespace A055775

/-- `A114863(A028310(n)+n+n)` -/
def P3084596503341002825.Spec : Prop :=
  ∀ n, P3084596503341002825.a n = A055775 n

end A055775

/-! ## A055775.P2677071397673421445

`A114863(A008706(n)-n-n)`
-/

namespace A055775.P2677071397673421445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A008706 n - (n : ℤ) - (n : ℤ)).toNat

end

end A055775.P2677071397673421445

namespace A055775

/-- `A114863(A008706(n)-n-n)` -/
def P2677071397673421445.Spec : Prop :=
  ∀ n, P2677071397673421445.a n = A055775 n

end A055775

/-! ## A055775.P15862188745037574199

`A114863(A028310(n)+A005843(n))`
-/

namespace A055775.P15862188745037574199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114863 (A028310 n + A005843 n).toNat

end

end A055775.P15862188745037574199

namespace A055775

/-- `A114863(A028310(n)+A005843(n))` -/
def P15862188745037574199.Spec : Prop :=
  ∀ n, P15862188745037574199.a n = A055775 n

end A055775

/-! ## A055775.P12232320138707144165

`A073225(n)-A001222(A056813(n+1))`
-/

namespace A055775.P12232320138707144165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073225 n - A001222 (A056813 (n + 1)).toNat

end

end A055775.P12232320138707144165

namespace A055775

/-- `A073225(n)-A001222(A056813(n+1))` -/
def P12232320138707144165.Spec : Prop :=
  ∀ n, P12232320138707144165.a n = A055775 n

end A055775

/-! ## A055775.P3025484330569410308

`A073225(n)-A088705(A337461(n))`
-/

namespace A055775.P3025484330569410308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073225 n - A088705 (A337461 n).toNat

end

end A055775.P3025484330569410308

namespace A055775

/-- `A073225(n)-A088705(A337461(n))` -/
def P3025484330569410308.Spec : Prop :=
  ∀ n, P3025484330569410308.a n = A055775 n

end A055775

/-!
# A055776: a(n) = a(n-1)^3 + a(n-1)^2 + a(n-1) + 1.

The programs for A055776, there is no canonical definition to state claims against.
-/

/-! ## A055776.P5344505682822055677

`(a(n-1)+1)*(a(n-1)²+1)` with `a(0)=0`
-/

namespace A055776.P5344505682822055677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (a (n - 1) ^ 2 + 1)

end

end A055776.P5344505682822055677

/-! ## A055776.P11725736902491935695

`(a(n-1)+1)*(a(n-1)*a(n-1)+1)` with `a(0)=0`
-/

namespace A055776.P11725736902491935695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (a (n - 1) * a (n - 1) + 1)

end

end A055776.P11725736902491935695

/-! ## A055776.P5839431159564494740

`a(n-1)^3+a(n-1)²+a(n-1)+1` with `a(0)=0`
-/

namespace A055776.P5839431159564494740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 3 + a (n - 1) ^ 2 + (a (n - 1) + 1)

end

end A055776.P5839431159564494740

/-!
# A055777: 

The programs for A055777, there is no canonical definition to state claims against.
-/

/-! ## A055777.P18027170388694722287

`3^3^n`
-/

namespace A055777.P18027170388694722287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ 3 ^ n

end

end A055777.P18027170388694722287

/-!
# A055778: Number of 1's in the base-phi representation of n.

The programs for A055778, there is no canonical definition to state claims against.
-/

/-! ## A055778.P1935870808317063260

`dr(A105424(n))+dr(A341722(n))`
-/

namespace A055778.P1935870808317063260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A105424 n) + SequenceMachineLib.digitalRoot (A341722 n)

end

end A055778.P1935870808317063260

/-! ## A055778.P15624806802122575737

`A007895(A188015(n+1)-1)+dr(A341722(n))`
-/

namespace A055778.P15624806802122575737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A188015 (n + 1) - 1).toNat + (SequenceMachineLib.digitalRoot (A341722 n) : ℤ)

end

end A055778.P15624806802122575737

/-! ## A055778.P771874575397766451

`A000120(A105425(n))+dr(A341722(n))`
-/

namespace A055778.P771874575397766451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105425 n).toNat + (SequenceMachineLib.digitalRoot (A341722 n) : ℤ)

end

end A055778.P771874575397766451

/-! ## A055778.P14432753830903447814

`A000120(A105425(n))+A341722(n)%A100401(n)`
-/

namespace A055778.P14432753830903447814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105425 n).toNat + Int.tmod (A341722 n) (A100401 n)

end

end A055778.P14432753830903447814

/-! ## A055778.P11819435989424331266

`A007895(89*n)`
-/

namespace A055778.P11819435989424331266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (89 * n)

end

end A055778.P11819435989424331266

/-! ## A055778.P2099384308117081879

`A362756(n)+A362716(n)`
-/

namespace A055778.P2099384308117081879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362756 n + A362716 n

end

end A055778.P2099384308117081879

/-! ## A055778.P8397692558561092802

`dr(A362756(n)+A105424(n))`
-/

namespace A055778.P8397692558561092802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A362756 n + A105424 n)

end

end A055778.P8397692558561092802

/-! ## A055778.P15935102551346674063

`A116543(A004945(n))`
-/

namespace A055778.P15935102551346674063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A004945 n).toNat

end

end A055778.P15935102551346674063

/-! ## A055778.P12013338827717185699

`A116543(A004965(n))`
-/

namespace A055778.P12013338827717185699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A004965 n).toNat

end

end A055778.P12013338827717185699

/-! ## A055778.P12854286350519068370

`A116543(A057427(n)+A004925(n))`
-/

namespace A055778.P12854286350519068370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A057427 n + A004925 n).toNat

end

end A055778.P12854286350519068370

/-!
# A055779: Number of fat trees on n labeled vertices.

The programs for A055779, there is no canonical definition to state claims against.
-/

/-! ## A055779.P189525567107269984

`A295623(n+1)/(n+1)²`
-/

namespace A055779.P189525567107269984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295623 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A055779.P189525567107269984

/-!
# A055780: Number of symmetric types of (3,2n)-hypergraphs under action of complementing group C(3,2).

The programs for A055780, the canonical program `A055780.P6929690655284740272` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055780 has offset 0).

The definition of A055780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055780.P6929690655284740272

`A121262(n)+7*A006918(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055780

/-- `A121262(n)+7*A006918(n)` -/
def P6929690655284740272.Spec : Prop :=
  ∀ n, P6929690655284740272.a n = A055780 n

theorem P6929690655284740272.correct : P6929690655284740272.Spec := by
  intro n
  simp only [A055780]

end A055780

/-! ## A055780.P16806009939095454807

`∑[A008721(7*n+5)+round(cos(exp(n%4)))]`
-/

namespace A055780.P16806009939095454807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 (7 * n + 5) + SequenceMachineLib.roundAway (Real.cos (Real.exp ((n % 4 : ℕ) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055780.P16806009939095454807

namespace A055780

/-- `∑[A008721(7*n+5)+round(cos(exp(n%4)))]` -/
def P16806009939095454807.Spec : Prop :=
  ∀ n, P16806009939095454807.a n = A055780 n

end A055780

/-! ## A055780.P1379704804166761240

`A008842(A008818(n))+7*A006918(n)`
-/

namespace A055780.P1379704804166761240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008842 (A008818 n).toNat + 7 * A006918 n

end

end A055780.P1379704804166761240

namespace A055780

/-- `A008842(A008818(n))+7*A006918(n)` -/
def P1379704804166761240.Spec : Prop :=
  ∀ n, P1379704804166761240.a n = A055780 n

end A055780

/-! ## A055780.P5238939434981040426

`A272727(A329450(n))+A011979(2*(n+2))`
-/

namespace A055780.P5238939434981040426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272727 (A329450 n).toNat + A011979 (2 * (n + 2))

end

end A055780.P5238939434981040426

namespace A055780

/-- `A272727(A329450(n))+A011979(2*(n+2))` -/
def P5238939434981040426.Spec : Prop :=
  ∀ n, P5238939434981040426.a n = A055780 n

end A055780

/-!
# A055781: Primes q of the form q = 10p + 1, where p is also prime.

The programs for A055781, there is no canonical definition to state claims against.
-/

/-! ## A055781.P2721631130388637991

`10*A023237(n+1)+1`
-/

namespace A055781.P2721631130388637991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A023237 (n + 1) + 1

end

end A055781.P2721631130388637991

/-! ## A055781.P17517831718645451502

`∩[A141884(n+1), A227919(n+1)]`
-/

namespace A055781.P17517831718645451502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P17517831718645451502

/-! ## A055781.P14538211781149426908

`p?[A142342(n+1)+1]`
-/

namespace A055781.P14538211781149426908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055781.P14538211781149426908

/-! ## A055781.P8166608367629736643

`p?[2*A001750(n+1)+1]`
-/

namespace A055781.P8166608367629736643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001750 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055781.P8166608367629736643

/-! ## A055781.P16903854996753764830

`p?[5*A100484(n+1)+1]`
-/

namespace A055781.P16903854996753764830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A100484 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055781.P16903854996753764830

/-! ## A055781.P13699758400452115033

`p?[10*A000040(n+1)+1]`
-/

namespace A055781.P13699758400452115033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055781.P13699758400452115033

/-! ## A055781.P6706152971553214380

`p?[10*A065091(n+1)+1]`
-/

namespace A055781.P6706152971553214380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A065091 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055781.P6706152971553214380

/-! ## A055781.P5628497140966963361

`p?[10*A008578(n+2)+1]`
-/

namespace A055781.P5628497140966963361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008578 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055781.P5628497140966963361

/-! ## A055781.P16677650230063641634

`p?[10*record[A006530(n+2)]+1]`
-/

namespace A055781.P16677650230063641634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055781.P16677650230063641634

/-! ## A055781.P9391909690057248036

`∩[A063640(n+1), A141884(n+1)]`
-/

namespace A055781.P9391909690057248036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P9391909690057248036

/-! ## A055781.P7906127297849299431

`p?[10*(eq[n+2, A000203(n+1)]+1)+1]`
-/

namespace A055781.P7906127297849299431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A055781.P7906127297849299431

/-! ## A055781.P4605867274096949256

`∩[A030430(n+1), A063640(n+1)]`
-/

namespace A055781.P4605867274096949256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P4605867274096949256

/-! ## A055781.P499531954965927651

`∩[A045453(n+1), A063640(n+1)]`
-/

namespace A055781.P499531954965927651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P499531954965927651

/-! ## A055781.P15320863466649781036

`∩[A030430(n+1), A227919(n+1)]`
-/

namespace A055781.P15320863466649781036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P15320863466649781036

/-! ## A055781.P16544218611611557280

`∩[A045453(n+1), A227919(n+1)]`
-/

namespace A055781.P16544218611611557280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P16544218611611557280

/-! ## A055781.P13977174670836380651

`∩[A063640(n+1), A090756(n+1)]`
-/

namespace A055781.P13977174670836380651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P13977174670836380651

/-! ## A055781.P1274897904144244241

`∩[A090756(n+1), A227919(n+1)]`
-/

namespace A055781.P1274897904144244241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P1274897904144244241

/-! ## A055781.P11609204936186933677

`∩[A063640(n+1), A327752(n+1)]`
-/

namespace A055781.P11609204936186933677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P11609204936186933677

/-! ## A055781.P9953943451616876241

`∩[A227919(n+1), A327752(n+1)]`
-/

namespace A055781.P9953943451616876241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P9953943451616876241

/-! ## A055781.P8932478069180559599

`∩[A004615(n+1), A063640(n+1)]`
-/

namespace A055781.P8932478069180559599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055781.P8932478069180559599

/-!
# A055782: Primes q of the form q = 10p + 3, where p is also prime.

The programs for A055782, there is no canonical definition to state claims against.
-/

/-! ## A055782.P14095938741660966955

`10*A023238(n+1)+3`
-/

namespace A055782.P14095938741660966955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A023238 (n + 1) + 3

end

end A055782.P14095938741660966955

/-! ## A055782.P15017563877128109

`∪[A057667(n+1), A087527(n+1)]`
-/

namespace A055782.P15017563877128109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055782.P15017563877128109

/-! ## A055782.P10040489743684993869

`∪[A057667(n+1), A214360(n+1)]`
-/

namespace A055782.P10040489743684993869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055782.P10040489743684993869

/-! ## A055782.P8422207732043055162

`p?[10*A000040(n+1)+3]`
-/

namespace A055782.P8422207732043055162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055782.P8422207732043055162

/-! ## A055782.P9149220636737952284

`p?[10*p?[A089237(n+1)]+3]`
-/

namespace A055782.P9149220636737952284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055782.P9149220636737952284

/-! ## A055782.P5118956871602211127

`∩[A030431(n+1), A227919(n+1)]`
-/

namespace A055782.P5118956871602211127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055782.P5118956871602211127

/-! ## A055782.P3114896997156829333

`∩[A045414(n+1), A227919(n+1)]`
-/

namespace A055782.P3114896997156829333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055782.P3114896997156829333

/-! ## A055782.P13251395240340200970

`∩[A004617(n+1), A227919(n+1)]`
-/

namespace A055782.P13251395240340200970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055782.P13251395240340200970

/-! ## A055782.P4237833308187703927

`p?[A017305(p?[xor(1, n)])]`
-/

namespace A055782.P4237833308187703927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055782.P4237833308187703927

/-! ## A055782.P13484604327257374016

`p?[record[A112375(n+1)+2]]`
-/

namespace A055782.P13484604327257374016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112375 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055782.P13484604327257374016

/-! ## A055782.P2770178636351674519

`A017305(A023238(n+1))`
-/

namespace A055782.P2770178636351674519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A023238 (n + 1)).toNat

end

end A055782.P2770178636351674519

/-! ## A055782.P109176628259788984

`p?[A017305(A000040(n+1))]`
-/

namespace A055782.P109176628259788984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055782.P109176628259788984

/-! ## A055782.P13568507099967711138

`p?[A019428(A072055(n+1))]`
-/

namespace A055782.P13568507099967711138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A072055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055782.P13568507099967711138

/-! ## A055782.P7228633731384244150

`A017305(p?[A102338(n+1)])`
-/

namespace A055782.P7228633731384244150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055782.P7228633731384244150

/-! ## A055782.P17092937441991229927

`∩[A227919(n+1), A017305(n)]`
-/

namespace A055782.P17092937441991229927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055782.P17092937441991229927

/-! ## A055782.P11181911838741237514

`record[A006530(A112375(n+1)+2)]`
-/

namespace A055782.P11181911838741237514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112375 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055782.P11181911838741237514

/-! ## A055782.P15620613964289039343

`p?[A067599(p?[A000961(n+1)])+2]`
-/

namespace A055782.P15620613964289039343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055782.P15620613964289039343

/-! ## A055782.P10337735555816714138

`record[A006530(A017305(A006530(n+2)))]`
-/

namespace A055782.P10337735555816714138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017305 (A006530 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055782.P10337735555816714138

/-! ## A055782.P11078685130275523965

`record[A020639(A017305(A020639(n+2)))]`
-/

namespace A055782.P11078685130275523965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017305 (A020639 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055782.P11078685130275523965

/-! ## A055782.P1874699332230507518

`∩[A227919(n+1), A277590(n+1)]`
-/

namespace A055782.P1874699332230507518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055782.P1874699332230507518

/-!
# A055783: Primes q of form q=10p+7, where p is also prime.

The programs for A055783, the canonical program `A055783.P3116272067737530295` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055783 has offset 1).

The definition of A055783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055783.P4506362031113122439

`∩[A141886(n+1), A227919(n+1)]`
-/

namespace A055783.P4506362031113122439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055783.P4506362031113122439

namespace A055783

/-- `∩[A141886(n+1), A227919(n+1)]` -/
def P4506362031113122439.Spec : Prop :=
  ∀ n, (P4506362031113122439.a n : ℤ) = A055783 (n + 1)

end A055783

/-! ## A055783.P3116272067737530295

`p?[A142342(n+1)+7]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055783

/-- `p?[A142342(n+1)+7]` -/
def P3116272067737530295.Spec : Prop :=
  ∀ n, P3116272067737530295.a n = A055783 (n + 1)

theorem P3116272067737530295.correct : P3116272067737530295.Spec := by
  intro n
  simp only [A055783, Nat.add_sub_cancel]

end A055783

/-! ## A055783.P5270853589448515516

`p?[2*A001750(n+1)+7]`
-/

namespace A055783.P5270853589448515516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001750 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P5270853589448515516

namespace A055783

/-- `p?[2*A001750(n+1)+7]` -/
def P5270853589448515516.Spec : Prop :=
  ∀ n, P5270853589448515516.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P12155836650995295576

`p?[5*A100484(n+1)+7]`
-/

namespace A055783.P12155836650995295576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A100484 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P12155836650995295576

namespace A055783

/-- `p?[5*A100484(n+1)+7]` -/
def P12155836650995295576.Spec : Prop :=
  ∀ n, P12155836650995295576.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P984806955183889001

`p?[10*A008864(n+1)-3]`
-/

namespace A055783.P984806955183889001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008864 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P984806955183889001

namespace A055783

/-- `p?[10*A008864(n+1)-3]` -/
def P984806955183889001.Spec : Prop :=
  ∀ n, P984806955183889001.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P14635618457854327268

`p?[10*A000040(n+1)+7]`
-/

namespace A055783.P14635618457854327268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P14635618457854327268

namespace A055783

/-- `p?[10*A000040(n+1)+7]` -/
def P14635618457854327268.Spec : Prop :=
  ∀ n, P14635618457854327268.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P3824054949829168586

`p?[10*A008578(n+2)+7]`
-/

namespace A055783.P3824054949829168586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008578 (n + 2) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P3824054949829168586

namespace A055783

/-- `p?[10*A008578(n+2)+7]` -/
def P3824054949829168586.Spec : Prop :=
  ∀ n, P3824054949829168586.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P18179726034825874909

`∩[A030432(n+1), A227919(n+1)]`
-/

namespace A055783.P18179726034825874909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055783.P18179726034825874909

namespace A055783

/-- `∩[A030432(n+1), A227919(n+1)]` -/
def P18179726034825874909.Spec : Prop :=
  ∀ n, (P18179726034825874909.a n : ℤ) = A055783 (n + 1)

end A055783

/-! ## A055783.P11091820314493469214

`∩[A045357(n+1), A227919(n+1)]`
-/

namespace A055783.P11091820314493469214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055783.P11091820314493469214

namespace A055783

/-- `∩[A045357(n+1), A227919(n+1)]` -/
def P11091820314493469214.Spec : Prop :=
  ∀ n, (P11091820314493469214.a n : ℤ) = A055783 (n + 1)

end A055783

/-! ## A055783.P14916864403493743372

`∩[A045380(n+1), A227919(n+1)]`
-/

namespace A055783.P14916864403493743372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055783.P14916864403493743372

namespace A055783

/-- `∩[A045380(n+1), A227919(n+1)]` -/
def P14916864403493743372.Spec : Prop :=
  ∀ n, (P14916864403493743372.a n : ℤ) = A055783 (n + 1)

end A055783

/-! ## A055783.P972448089801762027

`∩[A090652(n+1), A227919(n+1)]`
-/

namespace A055783.P972448089801762027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055783.P972448089801762027

namespace A055783

/-- `∩[A090652(n+1), A227919(n+1)]` -/
def P972448089801762027.Spec : Prop :=
  ∀ n, (P972448089801762027.a n : ℤ) = A055783 (n + 1)

end A055783

/-! ## A055783.P16791645293315357062

`p?[5*A088707(n+1)+2]`
-/

namespace A055783.P16791645293315357062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A088707 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P16791645293315357062

namespace A055783

/-- `p?[5*A088707(n+1)+2]` -/
def P16791645293315357062.Spec : Prop :=
  ∀ n, P16791645293315357062.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P12598154192356185515

`∩[A004616(n+1), A227919(n+1)]`
-/

namespace A055783.P12598154192356185515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055783.P12598154192356185515

namespace A055783

/-- `∩[A004616(n+1), A227919(n+1)]` -/
def P12598154192356185515.Spec : Prop :=
  ∀ n, (P12598154192356185515.a n : ℤ) = A055783 (n + 1)

end A055783

/-! ## A055783.P28015495252262048

`p?[A017353(p?[xor(1, n)])]`
-/

namespace A055783.P28015495252262048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P28015495252262048

namespace A055783

/-- `p?[A017353(p?[xor(1, n)])]` -/
def P28015495252262048.Spec : Prop :=
  ∀ n, P28015495252262048.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P16270192278634809772

`p?[A017353(p?[2*n+1])]`
-/

namespace A055783.P16270192278634809772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P16270192278634809772

namespace A055783

/-- `p?[A017353(p?[2*n+1])]` -/
def P16270192278634809772.Spec : Prop :=
  ∀ n, P16270192278634809772.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P7139974410008886957

`A017353(A023239(n+1))`
-/

namespace A055783.P7139974410008886957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A023239 (n + 1)).toNat

end

end A055783.P7139974410008886957

namespace A055783

/-- `A017353(A023239(n+1))` -/
def P7139974410008886957.Spec : Prop :=
  ∀ n, P7139974410008886957.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P12025205965948305443

`p?[A017353(A000040(n+1))]`
-/

namespace A055783.P12025205965948305443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P12025205965948305443

namespace A055783

/-- `p?[A017353(A000040(n+1))]` -/
def P12025205965948305443.Spec : Prop :=
  ∀ n, P12025205965948305443.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P6750401128498499415

`A017353(p?[A102342(n+1)])`
-/

namespace A055783.P6750401128498499415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055783.P6750401128498499415

namespace A055783

/-- `A017353(p?[A102342(n+1)])` -/
def P6750401128498499415.Spec : Prop :=
  ∀ n, P6750401128498499415.a n = A055783 (n + 1)

end A055783

/-! ## A055783.P8997102785314324687

`∩[A227919(n+1), A017353(n)]`
-/

namespace A055783.P8997102785314324687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055783.P8997102785314324687

namespace A055783

/-- `∩[A227919(n+1), A017353(n)]` -/
def P8997102785314324687.Spec : Prop :=
  ∀ n, (P8997102785314324687.a n : ℤ) = A055783 (n + 1)

end A055783

/-!
# A055784: Primes q of form q = 10p + 9, where p is also prime.

The programs for A055784, the canonical program `A055784.P2761531798314925887` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055784 has offset 1).

The definition of A055784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055784.P2761531798314925887

`p?[2*A001750(n+1)+9]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055784

/-- `p?[2*A001750(n+1)+9]` -/
def P2761531798314925887.Spec : Prop :=
  ∀ n, P2761531798314925887.a n = A055784 (n + 1)

theorem P2761531798314925887.correct : P2761531798314925887.Spec := by
  intro n
  simp only [A055784, Nat.add_sub_cancel]

end A055784

/-! ## A055784.P17470867611118882871

`p?[10*A008864(n+1)-1]`
-/

namespace A055784.P17470867611118882871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P17470867611118882871

namespace A055784

/-- `p?[10*A008864(n+1)-1]` -/
def P17470867611118882871.Spec : Prop :=
  ∀ n, P17470867611118882871.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P17429070747771202149

`p?[10*A000040(n+1)+9]`
-/

namespace A055784.P17429070747771202149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P17429070747771202149

namespace A055784

/-- `p?[10*A000040(n+1)+9]` -/
def P17429070747771202149.Spec : Prop :=
  ∀ n, P17429070747771202149.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P2271572456471627827

`p?[record[10*A000010(n+1)+19]]`
-/

namespace A055784.P2271572456471627827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000010 (n + 1) + 19

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P2271572456471627827

namespace A055784

/-- `p?[record[10*A000010(n+1)+19]]` -/
def P2271572456471627827.Spec : Prop :=
  ∀ n, P2271572456471627827.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P16769465047411583332

`∩[A030433(n+1), A227919(n+1)]`
-/

namespace A055784.P16769465047411583332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055784.P16769465047411583332

namespace A055784

/-- `∩[A030433(n+1), A227919(n+1)]` -/
def P16769465047411583332.Spec : Prop :=
  ∀ n, (P16769465047411583332.a n : ℤ) = A055784 (n + 1)

end A055784

/-! ## A055784.P15652165922706645020

`∩[A045457(n+1), A227919(n+1)]`
-/

namespace A055784.P15652165922706645020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055784.P15652165922706645020

namespace A055784

/-- `∩[A045457(n+1), A227919(n+1)]` -/
def P15652165922706645020.Spec : Prop :=
  ∀ n, (P15652165922706645020.a n : ℤ) = A055784 (n + 1)

end A055784

/-! ## A055784.P2589429336164207617

`∩[A227919(n+1), A327753(n+1)]`
-/

namespace A055784.P2589429336164207617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055784.P2589429336164207617

namespace A055784

/-- `∩[A227919(n+1), A327753(n+1)]` -/
def P2589429336164207617.Spec : Prop :=
  ∀ n, (P2589429336164207617.a n : ℤ) = A055784 (n + 1)

end A055784

/-! ## A055784.P12379498419588593766

`∩[A004618(n+1), A227919(n+1)]`
-/

namespace A055784.P12379498419588593766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055784.P12379498419588593766

namespace A055784

/-- `∩[A004618(n+1), A227919(n+1)]` -/
def P12379498419588593766.Spec : Prop :=
  ∀ n, (P12379498419588593766.a n : ℤ) = A055784 (n + 1)

end A055784

/-! ## A055784.P14129749011602521735

`A017377(A023240(n+1))`
-/

namespace A055784.P14129749011602521735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A023240 (n + 1)).toNat

end

end A055784.P14129749011602521735

namespace A055784

/-- `A017377(A023240(n+1))` -/
def P14129749011602521735.Spec : Prop :=
  ∀ n, P14129749011602521735.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P7646102443834729959

`p?[A017377(A000040(n+1))]`
-/

namespace A055784.P7646102443834729959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P7646102443834729959

namespace A055784

/-- `p?[A017377(A000040(n+1))]` -/
def P7646102443834729959.Spec : Prop :=
  ∀ n, P7646102443834729959.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P16399330095650154809

`∩[A227919(n+1), A017377(n)]`
-/

namespace A055784.P16399330095650154809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055784.P16399330095650154809

namespace A055784

/-- `∩[A227919(n+1), A017377(n)]` -/
def P16399330095650154809.Spec : Prop :=
  ∀ n, (P16399330095650154809.a n : ℤ) = A055784 (n + 1)

end A055784

/-! ## A055784.P12542729166789041620

`p?[A017377(p?[n*A032741(n)])]`
-/

namespace A055784.P12542729166789041620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P12542729166789041620

namespace A055784

/-- `p?[A017377(p?[n*A032741(n)])]` -/
def P12542729166789041620.Spec : Prop :=
  ∀ n, P12542729166789041620.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P2713058971432599058

`p?[A017377(A008864(n+1)-1)]`
-/

namespace A055784.P2713058971432599058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P2713058971432599058

namespace A055784

/-- `p?[A017377(A008864(n+1)-1)]` -/
def P2713058971432599058.Spec : Prop :=
  ∀ n, P2713058971432599058.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P10470810867699416266

`p?[(A107393(n)+2)*A017377(n)]`
-/

namespace A055784.P10470810867699416266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107393 n + 2) * A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P10470810867699416266

namespace A055784

/-- `p?[(A107393(n)+2)*A017377(n)]` -/
def P10470810867699416266.Spec : Prop :=
  ∀ n, P10470810867699416266.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P6014925175845827819

`∩[A190876(n+1), A227919(n+1)]`
-/

namespace A055784.P6014925175845827819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055784.P6014925175845827819

namespace A055784

/-- `∩[A190876(n+1), A227919(n+1)]` -/
def P6014925175845827819.Spec : Prop :=
  ∀ n, (P6014925175845827819.a n : ℤ) = A055784 (n + 1)

end A055784

/-! ## A055784.P775189512986241187

`∩[A227919(n+1), A017353(n)+2]`
-/

namespace A055784.P775189512986241187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055784.P775189512986241187

namespace A055784

/-- `∩[A227919(n+1), A017353(n)+2]` -/
def P775189512986241187.Spec : Prop :=
  ∀ n, (P775189512986241187.a n : ℤ) = A055784 (n + 1)

end A055784

/-! ## A055784.P12990348093158825830

`record[A006530(10*A000040(n+1)+9)]`
-/

namespace A055784.P12990348093158825830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * A000040 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055784.P12990348093158825830

namespace A055784

/-- `record[A006530(10*A000040(n+1)+9)]` -/
def P12990348093158825830.Spec : Prop :=
  ∀ n, P12990348093158825830.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P2259727873525798112

`record[A020639(10*A000040(n+1)+9)]`
-/

namespace A055784.P2259727873525798112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * A000040 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055784.P2259727873525798112

namespace A055784

/-- `record[A020639(10*A000040(n+1)+9)]` -/
def P2259727873525798112.Spec : Prop :=
  ∀ n, P2259727873525798112.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P2876369220407559402

`p?[A008592(record[A020639(n+2)+1])-1]`
-/

namespace A055784.P2876369220407559402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P2876369220407559402

namespace A055784

/-- `p?[A008592(record[A020639(n+2)+1])-1]` -/
def P2876369220407559402.Spec : Prop :=
  ∀ n, P2876369220407559402.a n = A055784 (n + 1)

end A055784

/-! ## A055784.P6606006531137033594

`p?[A008592(eq[2, A000005(n+1)]+1)+9]`
-/

namespace A055784.P6606006531137033594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P6606006531137033594

namespace A055784

/-- `p?[A008592(eq[2, A000005(n+1)]+1)+9]` -/
def P6606006531137033594.Spec : Prop :=
  ∀ n, P6606006531137033594.a n = A055784 (n + 1)

end A055784

/-!
# A055785: a(n) = smallest prime q of form q=-1+(p+1)*10^w, where p is n-th prime, or 0 if there is no such prime.

The programs for A055785, there is no canonical definition to state claims against.
-/

/-! ## A055785.P7285367642295995693

`A373859(A000040(n+1))+A063524(n)`
-/

namespace A055785.P7285367642295995693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373859 (A000040 (n + 1)).toNat + A063524 n

end

end A055785.P7285367642295995693

/-! ## A055785.P5952720809123501565

`A373859(A000040(n+1))+n%A301282(3*n+2)`
-/

namespace A055785.P5952720809123501565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373859 (A000040 (n + 1)).toNat + Int.tmod (n : ℤ) (A301282 (3 * n + 2))

end

end A055785.P5952720809123501565

/-!
# A055786: Numerators of Taylor series expansion of arcsin(x). Also arises from arccos(x), arccsc(x), arcsec(x), arcsinh(x).

The programs for A055786, the canonical program `A055786.P1330688624360433329` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055786 has offset 0).

The definition of A055786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055786.P1330688624360433329

`A001790(n)/gcd(A002596(n), A005408(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055786

/-- `A001790(n)/gcd(A002596(n), A005408(n))` -/
def P1330688624360433329.Spec : Prop :=
  ∀ n, P1330688624360433329.a n = (A055786 n : ℚ)

end A055786

/-! ## A055786.P5940393125405735130

`A056616(n)/A001316(n)`
-/

namespace A055786.P5940393125405735130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056616 n : ℚ) / (A001316 n : ℚ)

end

end A055786.P5940393125405735130

namespace A055786

/-- `A056616(n)/A001316(n)` -/
def P5940393125405735130.Spec : Prop :=
  ∀ n, P5940393125405735130.a n = (A055786 n : ℚ)

end A055786

/-! ## A055786.P6633949817622506323

`gcd(A001790(n), A056616(n))`
-/

namespace A055786.P6633949817622506323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001790 n) (A056616 n)

end

end A055786.P6633949817622506323

namespace A055786

/-- `gcd(A001790(n), A056616(n))` -/
def P6633949817622506323.Spec : Prop :=
  ∀ n, (P6633949817622506323.a n : ℤ) = A055786 n

end A055786

/-! ## A055786.P12584583409270560812

`A056616(n)/A060632(2*n)`
-/

namespace A055786.P12584583409270560812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056616 n : ℚ) / (A060632 (2 * n) : ℚ)

end

end A055786.P12584583409270560812

namespace A055786

/-- `A056616(n)/A060632(2*n)` -/
def P12584583409270560812.Spec : Prop :=
  ∀ n, P12584583409270560812.a n = (A055786 n : ℚ)

end A055786

/-! ## A055786.P12368750586919129651

`A056616(n)/A000079(A000120(n))`
-/

namespace A055786.P12368750586919129651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056616 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A055786.P12368750586919129651

namespace A055786

/-- `A056616(n)/A000079(A000120(n))` -/
def P12368750586919129651.Spec : Prop :=
  ∀ n, P12368750586919129651.a n = (A055786 n : ℚ)

end A055786

/-! ## A055786.P2210123181132573365

`A001790(n)/A000984(n)*A056616(n)`
-/

namespace A055786.P2210123181132573365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A000984 n : ℚ) * (A056616 n : ℚ)

end

end A055786.P2210123181132573365

namespace A055786

/-- `A001790(n)/A000984(n)*A056616(n)` -/
def P2210123181132573365.Spec : Prop :=
  ∀ n, P2210123181132573365.a n = (A055786 n : ℚ)

end A055786

/-! ## A055786.P236231999384463610

`A000984(n)/gcd(A000984(n), A014480(n))`
-/

namespace A055786.P236231999384463610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (A000984 n) (A014480 n) : ℚ)

end

end A055786.P236231999384463610

namespace A055786

/-- `A000984(n)/gcd(A000984(n), A014480(n))` -/
def P236231999384463610.Spec : Prop :=
  ∀ n, P236231999384463610.a n = (A055786 n : ℚ)

end A055786

/-! ## A055786.P12540217113232013504

`A143581(A254667(n+1))`
-/

namespace A055786.P12540217113232013504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143581 (A254667 (n + 1)).toNat

end

end A055786.P12540217113232013504

namespace A055786

/-- `A143581(A254667(n+1))` -/
def P12540217113232013504.Spec : Prop :=
  ∀ n, P12540217113232013504.a n = A055786 n

end A055786

/-! ## A055786.P10714658837553733342

`A143581(A233583(n+2))`
-/

namespace A055786.P10714658837553733342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143581 (A233583 (n + 2)).toNat

end

end A055786.P10714658837553733342

namespace A055786

/-- `A143581(A233583(n+2))` -/
def P10714658837553733342.Spec : Prop :=
  ∀ n, P10714658837553733342.a n = A055786 n

end A055786

/-! ## A055786.P15379315732672668075

`A143581(A054977(n)+n)`
-/

namespace A055786.P15379315732672668075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143581 (A054977 n + (n : ℤ)).toNat

end

end A055786.P15379315732672668075

namespace A055786

/-- `A143581(A054977(n)+n)` -/
def P15379315732672668075.Spec : Prop :=
  ∀ n, P15379315732672668075.a n = A055786 n

end A055786

/-! ## A055786.P14519670592511650233

`A143581(n+1)-A000007(n)`
-/

namespace A055786.P14519670592511650233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143581 (n + 1) - A000007 n

end

end A055786.P14519670592511650233

namespace A055786

/-- `A143581(n+1)-A000007(n)` -/
def P14519670592511650233.Spec : Prop :=
  ∀ n, P14519670592511650233.a n = A055786 n

end A055786

/-! ## A055786.P17109468500445898206

`gcd(A000984(n), A143581(n+1))`
-/

namespace A055786.P17109468500445898206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A143581 (n + 1))

end

end A055786.P17109468500445898206

namespace A055786

/-- `gcd(A000984(n), A143581(n+1))` -/
def P17109468500445898206.Spec : Prop :=
  ∀ n, (P17109468500445898206.a n : ℤ) = A055786 n

end A055786

/-!
# A055787: a(n) = 2^(4*n-1) - 2^(2*n-1)*binomial(2*n,n).

The programs for A055787, there is no canonical definition to state claims against.
-/

/-! ## A055787.P2075328862180382793

`(4^n)²%A045952(n)`
-/

namespace A055787.P2075328862180382793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((4 ^ n) ^ 2 : ℤ) (A045952 n)

end

end A055787.P2075328862180382793

/-! ## A055787.P3611260744439738301

`A068551(n)*A081294(n)`
-/

namespace A055787.P3611260744439738301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 n * A081294 n

end

end A055787.P3611260744439738301

/-! ## A055787.P9474080603807797862

`A000302(n)²-A045952(n)`
-/

namespace A055787.P9474080603807797862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n ^ 2 - A045952 n

end

end A055787.P9474080603807797862

/-! ## A055787.P10013206425682402614

`A000302(2*n)-A045952(n)`
-/

namespace A055787.P10013206425682402614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (2 * n) - A045952 n

end

end A055787.P10013206425682402614

/-! ## A055787.P17595989370226997038

`A081294(2*n)-A098402(n)`
-/

namespace A055787.P17595989370226997038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (2 * n) - A098402 n

end

end A055787.P17595989370226997038

/-! ## A055787.P241411106818903074

`A000302(n)*A058622(2*n)`
-/

namespace A055787.P241411106818903074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A058622 (2 * n)

end

end A055787.P241411106818903074

/-! ## A055787.P15710008384856281476

`(A001025(n)-A098430(n))/2`
-/

namespace A055787.P15710008384856281476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001025 n - A098430 n : ℚ) / 2

end

end A055787.P15710008384856281476

/-! ## A055787.P2580586921041892216

`A058622(2*n)*A155543(n)`
-/

namespace A055787.P2580586921041892216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n) * A155543 n

end

end A055787.P2580586921041892216

/-! ## A055787.P8527810614278845883

`A000302(n)*A294175(2*n)`
-/

namespace A055787.P8527810614278845883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A294175 (2 * n)

end

end A055787.P8527810614278845883

/-! ## A055787.P5064496834626018262

`A000079(n)²*A058622(2*n)`
-/

namespace A055787.P5064496834626018262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A058622 (2 * n)

end

end A055787.P5064496834626018262

/-!
# A055789: a(n) = binomial(n, round(sqrt(n))).

The programs for A055789, the canonical program `A055789.P3920294655806143237` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055789 has offset 0).

The definition of A055789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, round(sqrt(n)))` (program `A055789.P3920294655806143237`, by `A055789.P3920294655806143237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055789.P3920294655806143237

`C(n, round(sqrt(n)))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055789

/-- `C(n, round(sqrt(n)))` -/
def P3920294655806143237.Spec : Prop :=
  ∀ n, (P3920294655806143237.a n : ℤ) = A055789 n

theorem P3920294655806143237.correct : P3920294655806143237.Spec := by
  intro n
  simp only [A055789]

end A055789

/-! ## A055789.P1455834791478169839

`A074909(∑[n]-A000194(n))`
-/

namespace A055789.P1455834791478169839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000194 n).toNat

end

end A055789.P1455834791478169839

namespace A055789

/-- `A074909(∑[n]-A000194(n))` -/
def P1455834791478169839.Spec : Prop :=
  ∀ n, P1455834791478169839.a n = A055789 n

end A055789

/-! ## A055789.P10503482046372452183

`A007318(round(∑[n]+sqrt(n)))`
-/

namespace A055789.P10503482046372452183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (n : ℝ))).toNat

end

end A055789.P10503482046372452183

namespace A055789

/-- `A007318(round(∑[n]+sqrt(n)))` -/
def P10503482046372452183.Spec : Prop :=
  ∀ n, P10503482046372452183.a n = A055789 n

end A055789

/-! ## A055789.P12046670262921609151

`A131923(A000217(n)+A000194(n))-n`
-/

namespace A055789.P12046670262921609151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 (A000217 n + A000194 n).toNat - (n : ℤ)

end

end A055789.P12046670262921609151

namespace A055789

/-- `A131923(A000217(n)+A000194(n))-n` -/
def P12046670262921609151.Spec : Prop :=
  ∀ n, P12046670262921609151.a n = A055789 n

end A055789

/-! ## A055789.P17480802455337684646

`A097805(A000096(n+1)-A000194(n))`
-/

namespace A055789.P17480802455337684646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000096 (n + 1) - A000194 n).toNat

end

end A055789.P17480802455337684646

namespace A055789

/-- `A097805(A000096(n+1)-A000194(n))` -/
def P17480802455337684646.Spec : Prop :=
  ∀ n, P17480802455337684646.a n = A055789 n

end A055789

/-! ## A055789.P17536907082088112937

`A097805(A000096(n)+A000194(n)+2)`
-/

namespace A055789.P17536907082088112937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000096 n + (A000194 n + 2)).toNat

end

end A055789.P17536907082088112937

namespace A055789

/-- `A097805(A000096(n)+A000194(n)+2)` -/
def P17536907082088112937.Spec : Prop :=
  ∀ n, P17536907082088112937.a n = A055789 n

end A055789

/-!
# A055790: a(n) = n*a(n-1) + (n-2)*a(n-2), a(0) = 0, a(1) = 2.

The programs for A055790, the canonical program `A055790.P7453737914471877605` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055790 has offset 0).

The definition of A055790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(n-2)*a(n-2)` (program `A055790.P7453737914471877605`, by `A055790.P7453737914471877605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055790.P7453737914471877605

`n*a(n-1)+(n-2)*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055790

/-- `n*a(n-1)+(n-2)*a(n-2)` -/
def P7453737914471877605.Spec : Prop :=
  ∀ n, P7453737914471877605.a n = A055790 n

theorem P7453737914471877605.correct : P7453737914471877605.Spec := by
  intro n
  simp only [A055790]

end A055790

/-! ## A055790.P2333021052160587650

`2*A000153(n)`
-/

namespace A055790.P2333021052160587650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000153 n

end

end A055790.P2333021052160587650

namespace A055790

/-- `2*A000153(n)` -/
def P2333021052160587650.Spec : Prop :=
  ∀ n, P2333021052160587650.a n = A055790 n

end A055790

/-! ## A055790.P7443628917875002894

`A068106(∑[C(2, n)*and(1, n)+1+n])`
-/

namespace A055790.P7443628917875002894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n * Nat.land 1 n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055790.P7443628917875002894

namespace A055790

/-- `A068106(∑[C(2, n)*and(1, n)+1+n])` -/
def P7443628917875002894.Spec : Prop :=
  ∀ n, P7443628917875002894.a n = A055790 n

end A055790

/-! ## A055790.P274536750056519600

`2*A086764(A056943(∑[n+3]))`
-/

namespace A055790.P274536750056519600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086764 (A056943 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055790.P274536750056519600

namespace A055790

/-- `2*A086764(A056943(∑[n+3]))` -/
def P274536750056519600.Spec : Prop :=
  ∀ n, P274536750056519600.a n = A055790 n

end A055790

/-! ## A055790.P3093323343426262245

`A259834(n+1)+A000166(n+1)`
-/

namespace A055790.P3093323343426262245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259834 (n + 1) + A000166 (n + 1)

end

end A055790.P3093323343426262245

namespace A055790

/-- `A259834(n+1)+A000166(n+1)` -/
def P3093323343426262245.Spec : Prop :=
  ∀ n, P3093323343426262245.a n = A055790 n

end A055790

/-! ## A055790.P13518297716500302526

`A259834(n+1)+abs(A182386(n+1))`
-/

namespace A055790.P13518297716500302526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259834 (n + 1) + |A182386 (n + 1)|

end

end A055790.P13518297716500302526

namespace A055790

/-- `A259834(n+1)+abs(A182386(n+1))` -/
def P13518297716500302526.Spec : Prop :=
  ∀ n, P13518297716500302526.a n = A055790 n

end A055790

/-! ## A055790.P17586938017072324972

`2*A000166(n+1)-A331007(n+1)`
-/

namespace A055790.P17586938017072324972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000166 (n + 1) - A331007 (n + 1)

end

end A055790.P17586938017072324972

namespace A055790

/-- `2*A000166(n+1)-A331007(n+1)` -/
def P17586938017072324972.Spec : Prop :=
  ∀ n, P17586938017072324972.a n = A055790 n

end A055790

/-! ## A055790.P4714142574926757528

`A116853(A133263(n))*A178334(n)`
-/

namespace A055790.P4714142574926757528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116853 (A133263 n).toNat * A178334 n

end

end A055790.P4714142574926757528

namespace A055790

/-- `A116853(A133263(n))*A178334(n)` -/
def P4714142574926757528.Spec : Prop :=
  ∀ n, P4714142574926757528.a n = A055790 n

end A055790

/-! ## A055790.P9408343366321933299

`lcm(A000153(n), A116853(A133263(n)))`
-/

namespace A055790.P9408343366321933299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000153 n) (A116853 (A133263 n).toNat)

end

end A055790.P9408343366321933299

namespace A055790

/-- `lcm(A000153(n), A116853(A133263(n)))` -/
def P9408343366321933299.Spec : Prop :=
  ∀ n, (P9408343366321933299.a n : ℤ) = A055790 n

end A055790

/-! ## A055790.P14914246439555285241

`2*A060475(A027379(n)+A000007(n))`
-/

namespace A055790.P14914246439555285241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060475 (A027379 n + A000007 n).toNat

end

end A055790.P14914246439555285241

namespace A055790

/-- `2*A060475(A027379(n)+A000007(n))` -/
def P14914246439555285241.Spec : Prop :=
  ∀ n, P14914246439555285241.a n = A055790 n

end A055790

/-!
# A055791: Table giving multiplicity of k-th irreducible character of Monster simple group in n-th head character, read by antidiagonals.

The programs for A055791, there is no canonical definition to state claims against.
-/

/-! ## A055791.P952883914009463671

`A001221(C(A202503(n+4), A202452(n+1)))`
-/

namespace A055791.P952883914009463671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A202503 (n + 4)).toNat (A202452 (n + 1)).toNat)

end

end A055791.P952883914009463671

/-! ## A055791.P3070929004085619290

`A043562(A129361(n))-A002262(n)`
-/

namespace A055791.P3070929004085619290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A129361 n).toNat - A002262 n

end

end A055791.P3070929004085619290

/-! ## A055791.P1639117587814786210

`A005136(2*A201701(n))`
-/

namespace A055791.P1639117587814786210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (2 * A201701 n).toNat

end

end A055791.P1639117587814786210

/-! ## A055791.P5514455174228135288

`A272604(A185209(n+1)²)`
-/

namespace A055791.P5514455174228135288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A185209 (n + 1) ^ 2).toNat

end

end A055791.P5514455174228135288

/-! ## A055791.P8552762413402610355

`A275946(A063886(n)*A220062(n))`
-/

namespace A055791.P8552762413402610355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 (A063886 n * A220062 n).toNat

end

end A055791.P8552762413402610355

/-!
# A055792: a(n) and floor(a(n)/2) are both squares; i.e., squares which remain squares when written in base 2 and last digit is removed.

The programs for A055792, the canonical program `A055792.P3296439545844401084` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055792 has offset 0).

The definition of A055792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055792.P3296439545844401084

`34*a(n-1)-a(n-2)-16` with `a(0)=0, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055792

/-- `34*a(n-1)-a(n-2)-16` -/
def P3296439545844401084.Spec : Prop :=
  ∀ n, P3296439545844401084.a n = A055792 n

theorem P3296439545844401084.correct : P3296439545844401084.Spec := by
  intro n
  simp only [A055792]

end A055792

/-! ## A055792.P12890648278243951826

`record[a(n-2)-a(n-1)-a(n-1)]²` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A055792.P12890648278243951826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A055792.P12890648278243951826

namespace A055792

/-- `record[a(n-2)-a(n-1)-a(n-1)]²` -/
def P12890648278243951826.Spec : Prop :=
  ∀ n, P12890648278243951826.a n = A055792 n

end A055792

/-! ## A055792.P11123640648053729931

`floor(sqrt(A098706(n)))²`
-/

namespace A055792.P11123640648053729931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A098706 n) ^ 2

end

end A055792.P11123640648053729931

namespace A055792

/-- `floor(sqrt(A098706(n)))²` -/
def P11123640648053729931.Spec : Prop :=
  ∀ n, P11123640648053729931.a n = A055792 n

end A055792

/-! ## A055792.P58678426341633413

`A055872(2*n+1)/4`
-/

namespace A055792.P58678426341633413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055872 (2 * n + 1) : ℚ) / 4

end

end A055792.P58678426341633413

namespace A055792

/-- `A055872(2*n+1)/4` -/
def P58678426341633413.Spec : Prop :=
  ∀ n, P58678426341633413.a n = (A055792 n : ℚ)

end A055792

/-! ## A055792.P12663020009172134161

`A322836(∑[n+3]-1)²`
-/

namespace A055792.P12663020009172134161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A055792.P12663020009172134161

namespace A055792

/-- `A322836(∑[n+3]-1)²` -/
def P12663020009172134161.Spec : Prop :=
  ∀ n, P12663020009172134161.a n = A055792 n

end A055792

/-! ## A055792.P4898621658836435785

`(A204514(2*n+1)/2)²`
-/

namespace A055792.P4898621658836435785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A204514 (2 * n + 1) : ℚ) / 2) ^ 2

end

end A055792.P4898621658836435785

namespace A055792

/-- `(A204514(2*n+1)/2)²` -/
def P4898621658836435785.Spec : Prop :=
  ∀ n, P4898621658836435785.a n = (A055792 n : ℚ)

end A055792

/-! ## A055792.P12612012738479609273

`A055872(comp[2*(n+1)]+1)`
-/

namespace A055792.P12612012738479609273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055872 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A055792.P12612012738479609273

namespace A055792

/-- `A055872(comp[2*(n+1)]+1)` -/
def P12612012738479609273.Spec : Prop :=
  ∀ n, P12612012738479609273.a n = A055792 n

end A055792

/-! ## A055792.P4864750514485294987

`A001108(comp[2*n+3])+floor(atan(n))`
-/

namespace A055792.P4864750514485294987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ⌊Real.arctan (n : ℝ)⌋

end

end A055792.P4864750514485294987

namespace A055792

/-- `A001108(comp[2*n+3])+floor(atan(n))` -/
def P4864750514485294987.Spec : Prop :=
  ∀ n, P4864750514485294987.a n = A055792 n

end A055792

/-! ## A055792.P7278429108590876826

`A204514(A004277(n))²`
-/

namespace A055792.P7278429108590876826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204514 (A004277 n).toNat ^ 2

end

end A055792.P7278429108590876826

namespace A055792

/-- `A204514(A004277(n))²` -/
def P7278429108590876826.Spec : Prop :=
  ∀ n, P7278429108590876826.a n = A055792 n

end A055792

/-! ## A055792.P17645074033177660374

`A098706(n)-A057427(n)`
-/

namespace A055792.P17645074033177660374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098706 n - A057427 n

end

end A055792.P17645074033177660374

namespace A055792

/-- `A098706(n)-A057427(n)` -/
def P17645074033177660374.Spec : Prop :=
  ∀ n, P17645074033177660374.a n = A055792 n

end A055792

/-!
# A055793: Numbers k such that k and floor[k/3] are both squares; i.e., squares which remain squares when written in base 3 and last digit is removed.

The programs for A055793, the canonical program `A055793.P16165514153291796079` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055793 has offset 1).

The definition of A055793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055793.P16165514153291796079

`14*a(n-1)-a(n-2)-6` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055793

/-- `14*a(n-1)-a(n-2)-6` -/
def P16165514153291796079.Spec : Prop :=
  ∀ n, P16165514153291796079.a n = A055793 (n + 1)

theorem P16165514153291796079.correct : P16165514153291796079.Spec := by
  intro n
  simp only [A055793, Nat.add_sub_cancel]

end A055793

/-! ## A055793.P2769347342811752190

`∑[lcm(4, a(n-1))-a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A055793.P2769347342811752190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 5] fun n f1 =>
  (Int.lcm 4 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A055793.P2769347342811752190

namespace A055793

/-- `∑[lcm(4, a(n-1))-a(n-2)]²` -/
def P2769347342811752190.Spec : Prop :=
  ∀ n, P2769347342811752190.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P16815160868740419785

`(A077235(n)%A001834(n))²`
-/

namespace A055793.P16815160868740419785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077235 n) (A001834 n) ^ 2

end

end A055793.P16815160868740419785

namespace A055793

/-- `(A077235(n)%A001834(n))²` -/
def P16815160868740419785.Spec : Prop :=
  ∀ n, P16815160868740419785.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P4220098764724980758

`record[(A000035(n)*A005246(n))²]`
-/

namespace A055793.P4220098764724980758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n * A005246 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055793.P4220098764724980758

namespace A055793

/-- `record[(A000035(n)*A005246(n))²]` -/
def P4220098764724980758.Spec : Prop :=
  ∀ n, P4220098764724980758.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P16768057985940759988

`(Δ[A001571(n)]%A001352(n))²`
-/

namespace A055793.P16768057985940759988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001352 n) ^ 2

end

end A055793.P16768057985940759988

namespace A055793

/-- `(Δ[A001571(n)]%A001352(n))²` -/
def P16768057985940759988.Spec : Prop :=
  ∀ n, P16768057985940759988.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P2436094120517380255

`(A001075(n+2)%A001834(n))²`
-/

namespace A055793.P2436094120517380255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001075 (n + 2)) (A001834 n) ^ 2

end

end A055793.P2436094120517380255

namespace A055793

/-- `(A001075(n+2)%A001834(n))²` -/
def P2436094120517380255.Spec : Prop :=
  ∀ n, P2436094120517380255.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P8889263582490599764

`(A002531(2*(n+2))%A001834(n))²`
-/

namespace A055793.P8889263582490599764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002531 (2 * (n + 2))) (A001834 n) ^ 2

end

end A055793.P8889263582490599764

namespace A055793

/-- `(A002531(2*(n+2))%A001834(n))²` -/
def P8889263582490599764.Spec : Prop :=
  ∀ n, P8889263582490599764.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P15501812241275585399

`(A001075(n)-A002531(A004273(n)))²`
-/

namespace A055793.P15501812241275585399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001075 n - A002531 (A004273 n).toNat) ^ 2

end

end A055793.P15501812241275585399

namespace A055793

/-- `(A001075(n)-A002531(A004273(n)))²` -/
def P15501812241275585399.Spec : Prop :=
  ∀ n, P15501812241275585399.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P4447932014924972319

`(A005246(A004273(n))*A057428(n))²`
-/

namespace A055793.P4447932014924972319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005246 (A004273 n).toNat * A057428 n) ^ 2

end

end A055793.P4447932014924972319

namespace A055793

/-- `(A005246(A004273(n))*A057428(n))²` -/
def P4447932014924972319.Spec : Prop :=
  ∀ n, P4447932014924972319.a n = A055793 (n + 1)

end A055793

/-! ## A055793.P13588680478790930383

`(A005246(A004273(n))%A001834(n))²`
-/

namespace A055793.P13588680478790930383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005246 (A004273 n).toNat) (A001834 n) ^ 2

end

end A055793.P13588680478790930383

namespace A055793

/-- `(A005246(A004273(n))%A001834(n))²` -/
def P13588680478790930383.Spec : Prop :=
  ∀ n, P13588680478790930383.a n = A055793 (n + 1)

end A055793

/-!
# A055794: Triangle T read by rows: T(i,0)=1 for i >= 0; T(i,i)=1 for i=0,1,2,3; T(i,i)=0 for i >= 4; T(i,j) = T(i-1,j) + T(i-2,j-1) for 1<=j<=i-1.

The programs for A055794, there is no canonical definition to state claims against.
-/

/-! ## A055794.P1602155475616253920

`A052509(n)-A054908(A059268(n))`
-/

namespace A055794.P1602155475616253920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n - A054908 (A059268 n).toNat

end

end A055794.P1602155475616253920

/-! ## A055794.P15082868862285498851

`A172119(n)-A054908(A059268(n))`
-/

namespace A055794.P15082868862285498851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172119 n - A054908 (A059268 n).toNat

end

end A055794.P15082868862285498851

/-! ## A055794.P17302773914447533960

`A052509(n)-A023969(A052326(n+4))`
-/

namespace A055794.P17302773914447533960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n - A023969 (A052326 (n + 4)).toNat

end

end A055794.P17302773914447533960

/-! ## A055794.P15685953576259069600

`A172119(n)-A023969(A052326(n+4))`
-/

namespace A055794.P15685953576259069600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172119 n - A023969 (A052326 (n + 4)).toNat

end

end A055794.P15685953576259069600

/-! ## A055794.P9253188251391623572

`A052509(n)-A023969(A273712(n+4))`
-/

namespace A055794.P9253188251391623572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n - A023969 (A273712 (n + 4)).toNat

end

end A055794.P9253188251391623572

/-!
# A055795: a(n) = binomial(n,4) + binomial(n,2).

The programs for A055795, the canonical program `A055795.P17285801603062217731` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055795 has offset 1).

The definition of A055795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, 4)+C(n+1, 2)` (program `A055795.P17285801603062217731`, by `A055795.P17285801603062217731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055795.P17285801603062217731

`C(n+1, 4)+C(n+1, 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055795

/-- `C(n+1, 4)+C(n+1, 2)` -/
def P17285801603062217731.Spec : Prop :=
  ∀ n, (P17285801603062217731.a n : ℤ) = A055795 (n + 1)

theorem P17285801603062217731.correct : P17285801603062217731.Spec := by
  intro n
  simp only [A055795, Nat.add_sub_cancel]

end A055795

/-! ## A055795.P11274283363670634625

`(n+1)*((n+1)^3-6*(n+1)²+23*(n+1)-18)/24`
-/

namespace A055795.P11274283363670634625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((((n + 1) ^ 3 : ℤ) - (6 * (n + 1) ^ 2 : ℤ) + (23 * (n + 1) : ℤ) - 18 : ℚ) / 24)

end

end A055795.P11274283363670634625

namespace A055795

/-- `(n+1)*((n+1)^3-6*(n+1)²+23*(n+1)-18)/24` -/
def P11274283363670634625.Spec : Prop :=
  ∀ n, P11274283363670634625.a n = (A055795 (n + 1) : ℚ)

end A055795

/-! ## A055795.P1456784242612869114

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=15`
-/

namespace A055795.P1456784242612869114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7, 15] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A055795.P1456784242612869114

namespace A055795

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1456784242612869114.Spec : Prop :=
  ∀ n, P1456784242612869114.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P6097725686173730603

`A000127(n+1)-1`
-/

namespace A055795.P6097725686173730603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - 1

end

end A055795.P6097725686173730603

namespace A055795

/-- `A000127(n+1)-1` -/
def P6097725686173730603.Spec : Prop :=
  ∀ n, P6097725686173730603.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P4750630789128998149

`a(n-1)+1+A004006(n-1)` with `a(0)=0`
-/

namespace A055795.P4750630789128998149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 + A004006 (n - 1))

end

end A055795.P4750630789128998149

namespace A055795

/-- `a(n-1)+1+A004006(n-1)` -/
def P4750630789128998149.Spec : Prop :=
  ∀ n, P4750630789128998149.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P811995221257632850

`A000332(n+1)+A000217(n)`
-/

namespace A055795.P811995221257632850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + A000217 n

end

end A055795.P811995221257632850

namespace A055795

/-- `A000332(n+1)+A000217(n)` -/
def P811995221257632850.Spec : Prop :=
  ∀ n, P811995221257632850.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P7107474317745844278

`∑[C(n, 3)+n]`
-/

namespace A055795.P7107474317745844278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055795.P7107474317745844278

namespace A055795

/-- `∑[C(n, 3)+n]` -/
def P7107474317745844278.Spec : Prop :=
  ∀ n, (P7107474317745844278.a n : ℤ) = A055795 (n + 1)

end A055795

/-! ## A055795.P12430965536463255719

`floor(∑[∑[∑[a(n-1)+1]]])` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A055795.P12430965536463255719
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055795.P12430965536463255719

namespace A055795

/-- `floor(∑[∑[∑[a(n-1)+1]]])` -/
def P12430965536463255719.Spec : Prop :=
  ∀ n, (P12430965536463255719.a n : ℤ) = A055795 (n + 1)

end A055795

/-! ## A055795.P14455797969041639768

`floor(∑[∑[a(n-1)-(2-n)]])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A055795.P14455797969041639768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) - (2 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055795.P14455797969041639768

namespace A055795

/-- `floor(∑[∑[a(n-1)-(2-n)]])` -/
def P14455797969041639768.Spec : Prop :=
  ∀ n, P14455797969041639768.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P15299164434378322519

`Δ[2*a(n-1)-C(n-1, 5)]-1` with `a(0)=1`
-/

namespace A055795.P15299164434378322519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - (Nat.choose ((n : ℤ) - 1).toNat 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A055795.P15299164434378322519

namespace A055795

/-- `Δ[2*a(n-1)-C(n-1, 5)]-1` -/
def P15299164434378322519.Spec : Prop :=
  ∀ n, P15299164434378322519.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P1317101302487554440

`∑[a(n-1)-2+n]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A055795.P1317101302487554440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A055795.P1317101302487554440

namespace A055795

/-- `∑[a(n-1)-2+n]+a(n-1)` -/
def P1317101302487554440.Spec : Prop :=
  ∀ n, P1317101302487554440.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P15938456077212863263

`Δ[A006261(n)]-1`
-/

namespace A055795.P15938456077212863263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A055795.P15938456077212863263

namespace A055795

/-- `Δ[A006261(n)]-1` -/
def P15938456077212863263.Spec : Prop :=
  ∀ n, P15938456077212863263.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P7287602760620219219

`∑[A046127(n)]/2`
-/

namespace A055795.P7287602760620219219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046127 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A055795.P7287602760620219219

namespace A055795

/-- `∑[A046127(n)]/2` -/
def P7287602760620219219.Spec : Prop :=
  ∀ n, P7287602760620219219.a n = (A055795 (n + 1) : ℚ)

end A055795

/-! ## A055795.P3029636239011250749

`A055417(n)-(n+1)`
-/

namespace A055795.P3029636239011250749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n - (n + 1 : ℤ)

end

end A055795.P3029636239011250749

namespace A055795

/-- `A055417(n)-(n+1)` -/
def P3029636239011250749.Spec : Prop :=
  ∀ n, P3029636239011250749.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P2308214212886124744

`A318054(n)-∑[∑[n]]`
-/

namespace A055795.P2308214212886124744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055795.P2308214212886124744

namespace A055795

/-- `A318054(n)-∑[∑[n]]` -/
def P2308214212886124744.Spec : Prop :=
  ∀ n, P2308214212886124744.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P11773245502672688058

`A005582(n)-n*∑[n]`
-/

namespace A055795.P11773245502672688058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A055795.P11773245502672688058

namespace A055795

/-- `A005582(n)-n*∑[n]` -/
def P11773245502672688058.Spec : Prop :=
  ∀ n, P11773245502672688058.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P3773955804000667059

`A059173(n+1)/2-1`
-/

namespace A055795.P3773955804000667059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059173 (n + 1) : ℚ) / 2 - 1

end

end A055795.P3773955804000667059

namespace A055795

/-- `A059173(n+1)/2-1` -/
def P3773955804000667059.Spec : Prop :=
  ∀ n, P3773955804000667059.a n = (A055795 (n + 1) : ℚ)

end A055795

/-! ## A055795.P10893244443040843392

`A014626(n+1)+∑[n-1]`
-/

namespace A055795.P10893244443040843392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055795.P10893244443040843392

namespace A055795

/-- `A014626(n+1)+∑[n-1]` -/
def P10893244443040843392.Spec : Prop :=
  ∀ n, P10893244443040843392.a n = A055795 (n + 1)

end A055795

/-! ## A055795.P9982579160039316372

`A004006(n)+A000332(n)`
-/

namespace A055795.P9982579160039316372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + A000332 n

end

end A055795.P9982579160039316372

namespace A055795

/-- `A004006(n)+A000332(n)` -/
def P9982579160039316372.Spec : Prop :=
  ∀ n, P9982579160039316372.a n = A055795 (n + 1)

end A055795

/-!
# A055796: T(2n+3,n), array T as in A055794.

The programs for A055796, the canonical program `A055796.P8916994286070137888` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055796 has offset 0).

The definition of A055796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055796.P8916994286070137888

`∑[∑[∑[∑[C(n, 2)+1]]]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055796

/-- `∑[∑[∑[∑[C(n, 2)+1]]]]` -/
def P8916994286070137888.Spec : Prop :=
  ∀ n, (P8916994286070137888.a n : ℤ) = A055796 n

theorem P8916994286070137888.correct : P8916994286070137888.Spec := by
  intro n
  simp only [A055796]

end A055796

/-! ## A055796.P10598844582102136150

`∑[∑[∑[∑[∑[abs(1-n)]]]]]`
-/

namespace A055796.P10598844582102136150
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055796.P10598844582102136150

namespace A055796

/-- `∑[∑[∑[∑[∑[abs(1-n)]]]]]` -/
def P10598844582102136150.Spec : Prop :=
  ∀ n, P10598844582102136150.a n = A055796 n

end A055796

/-! ## A055796.P18342258185358774721

`A027660(n)+a(n-1)` with `a(0)=1`
-/

namespace A055796.P18342258185358774721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027660 n + a (n - 1)

end

end A055796.P18342258185358774721

namespace A055796

/-- `A027660(n)+a(n-1)` -/
def P18342258185358774721.Spec : Prop :=
  ∀ n, P18342258185358774721.a n = A055796 n

end A055796

/-! ## A055796.P14263823310087465908

`∑[A027928(n+3)]+∑[∑[n]]`
-/

namespace A055796.P14263823310087465908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A055796.P14263823310087465908

namespace A055796

/-- `∑[A027928(n+3)]+∑[∑[n]]` -/
def P14263823310087465908.Spec : Prop :=
  ∀ n, P14263823310087465908.a n = A055796 n

end A055796

/-! ## A055796.P364817323848688925

`A095669(n)-A006411(n+1)`
-/

namespace A055796.P364817323848688925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A006411 (n + 1)

end

end A055796.P364817323848688925

namespace A055796

/-- `A095669(n)-A006411(n+1)` -/
def P364817323848688925.Spec : Prop :=
  ∀ n, P364817323848688925.a n = A055796 n

end A055796

/-! ## A055796.P16613342437664519892

`A000292(n)+∑[A027928(n+3)]`
-/

namespace A055796.P16613342437664519892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055796.P16613342437664519892

namespace A055796

/-- `A000292(n)+∑[A027928(n+3)]` -/
def P16613342437664519892.Spec : Prop :=
  ∀ n, P16613342437664519892.a n = A055796 n

end A055796

/-! ## A055796.P11385503383482859158

`A278670(n+1)-A130857(n+1)`
-/

namespace A055796.P11385503383482859158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) - A130857 (n + 1)

end

end A055796.P11385503383482859158

namespace A055796

/-- `A278670(n+1)-A130857(n+1)` -/
def P11385503383482859158.Spec : Prop :=
  ∀ n, P11385503383482859158.a n = A055796 n

end A055796

/-! ## A055796.P16094309240317881502

`A055797(n+1)-(A055797(n)+A027660(n+1))`
-/

namespace A055796.P16094309240317881502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055797 (n + 1) - (A055797 n + A027660 (n + 1))

end

end A055796.P16094309240317881502

namespace A055796

/-- `A055797(n+1)-(A055797(n)+A027660(n+1))` -/
def P16094309240317881502.Spec : Prop :=
  ∀ n, P16094309240317881502.a n = A055796 n

end A055796

/-! ## A055796.P7920717435025260037

`A257199(n+1)+A000579(n+3)`
-/

namespace A055796.P7920717435025260037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 1) + A000579 (n + 3)

end

end A055796.P7920717435025260037

namespace A055796

/-- `A257199(n+1)+A000579(n+3)` -/
def P7920717435025260037.Spec : Prop :=
  ∀ n, P7920717435025260037.a n = A055796 n

end A055796

/-! ## A055796.P196661955449531420

`A008859(n+3)-A000124(n+3)`
-/

namespace A055796.P196661955449531420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (n + 3) - A000124 (n + 3)

end

end A055796.P196661955449531420

namespace A055796

/-- `A008859(n+3)-A000124(n+3)` -/
def P196661955449531420.Spec : Prop :=
  ∀ n, P196661955449531420.a n = A055796 n

end A055796

/-! ## A055796.P1140942379694387412

`A115567(n+3)-A000217(n+3)`
-/

namespace A055796.P1140942379694387412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 (n + 3) - A000217 (n + 3)

end

end A055796.P1140942379694387412

namespace A055796

/-- `A115567(n+3)-A000217(n+3)` -/
def P1140942379694387412.Spec : Prop :=
  ∀ n, P1140942379694387412.a n = A055796 n

end A055796

/-! ## A055796.P11038811404216127550

`A000579(n+4)+A000332(n+4)`
-/

namespace A055796.P11038811404216127550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 4) + A000332 (n + 4)

end

end A055796.P11038811404216127550

namespace A055796

/-- `A000579(n+4)+A000332(n+4)` -/
def P11038811404216127550.Spec : Prop :=
  ∀ n, P11038811404216127550.a n = A055796 n

end A055796

/-! ## A055796.P11609219045424812909

`A002662(n+3)-A035039(n+3)`
-/

namespace A055796.P11609219045424812909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 (n + 3) - A035039 (n + 3)

end

end A055796.P11609219045424812909

namespace A055796

/-- `A002662(n+3)-A035039(n+3)` -/
def P11609219045424812909.Spec : Prop :=
  ∀ n, P11609219045424812909.a n = A055796 n

end A055796

/-! ## A055796.P12191583559833882817

`A159853(A005843(n)+A055999(n+2)+12)`
-/

namespace A055796.P12191583559833882817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (A005843 n + (A055999 (n + 2) + 12)).toNat

end

end A055796.P12191583559833882817

namespace A055796

/-- `A159853(A005843(n)+A055999(n+2)+12)` -/
def P12191583559833882817.Spec : Prop :=
  ∀ n, P12191583559833882817.a n = A055796 n

end A055796

/-! ## A055796.P4763096219335624032

`A051601(A167499(n+3))%A198971(n)`
-/

namespace A055796.P4763096219335624032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051601 (A167499 (n + 3)).toNat) (A198971 n)

end

end A055796.P4763096219335624032

namespace A055796

/-- `A051601(A167499(n+3))%A198971(n)` -/
def P4763096219335624032.Spec : Prop :=
  ∀ n, P4763096219335624032.a n = A055796 n

end A055796

/-!
# A055797: T(2n+4,n), array T as in A055794.

The programs for A055797, the canonical program `A055797.P16795167256582758076` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055797 has offset 0).

The definition of A055797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055797.P16795167256582758076

`∑[∑[∑[∑[∑[C(n, 2)+1]]]]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055797

/-- `∑[∑[∑[∑[∑[C(n, 2)+1]]]]]` -/
def P16795167256582758076.Spec : Prop :=
  ∀ n, (P16795167256582758076.a n : ℤ) = A055797 n

theorem P16795167256582758076.correct : P16795167256582758076.Spec := by
  intro n
  simp only [A055797]

end A055797

/-! ## A055797.P8973744090200943889

`∑[∑[∑[∑[∑[∑[abs(1-n)]]]]]]`
-/

namespace A055797.P8973744090200943889
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055797.P8973744090200943889

namespace A055797

/-- `∑[∑[∑[∑[∑[∑[abs(1-n)]]]]]]` -/
def P8973744090200943889.Spec : Prop :=
  ∀ n, P8973744090200943889.a n = A055797 n

end A055797

/-! ## A055797.P17995288650668280874

`A055796(n)+a(n-1)` with `a(0)=1`
-/

namespace A055797.P17995288650668280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055796 n + a (n - 1)

end

end A055797.P17995288650668280874

namespace A055797

/-- `A055796(n)+a(n-1)` -/
def P17995288650668280874.Spec : Prop :=
  ∀ n, P17995288650668280874.a n = A055797 n

end A055797

/-! ## A055797.P18251931409006712534

`lcm(∑[A055796(n)], A000034(n))`
-/

namespace A055797.P18251931409006712534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A055797.P18251931409006712534

namespace A055797

/-- `lcm(∑[A055796(n)], A000034(n))` -/
def P18251931409006712534.Spec : Prop :=
  ∀ n, (P18251931409006712534.a n : ℤ) = A055797 n

end A055797

/-! ## A055797.P17291409667982081963

`or(∑[A055796(n)], A000007(n))`
-/

namespace A055797.P17291409667982081963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A055797.P17291409667982081963

namespace A055797

/-- `or(∑[A055796(n)], A000007(n))` -/
def P17291409667982081963.Spec : Prop :=
  ∀ n, P17291409667982081963.a n = A055797 n

end A055797

/-! ## A055797.P5573598863320591919

`A095670(n)-A112459(n+3)`
-/

namespace A055797.P5573598863320591919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095670 n - A112459 (n + 3)

end

end A055797.P5573598863320591919

namespace A055797

/-- `A095670(n)-A112459(n+3)` -/
def P5573598863320591919.Spec : Prop :=
  ∀ n, P5573598863320591919.a n = A055797 n

end A055797

/-! ## A055797.P10545891180672337028

`and(∑[A055796(n)], A153881(n+1))`
-/

namespace A055797.P10545891180672337028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A153881 (n + 1))

end

end A055797.P10545891180672337028

namespace A055797

/-- `and(∑[A055796(n)], A153881(n+1))` -/
def P10545891180672337028.Spec : Prop :=
  ∀ n, P10545891180672337028.a n = A055797 n

end A055797

/-! ## A055797.P14454486319899377914

`A055798(n+1)-(A055798(n)+A055796(n+1))`
-/

namespace A055797.P14454486319899377914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055798 (n + 1) - (A055798 n + A055796 (n + 1))

end

end A055797.P14454486319899377914

namespace A055797

/-- `A055798(n+1)-(A055798(n)+A055796(n+1))` -/
def P14454486319899377914.Spec : Prop :=
  ∀ n, P14454486319899377914.a n = A055797 n

end A055797

/-! ## A055797.P7551103170497032855

`∑[A055796(n)]%A024964(n+1)`
-/

namespace A055797.P7551103170497032855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A024964 (n + 1))

end

end A055797.P7551103170497032855

namespace A055797

/-- `∑[A055796(n)]%A024964(n+1)` -/
def P7551103170497032855.Spec : Prop :=
  ∀ n, P7551103170497032855.a n = A055797 n

end A055797

/-! ## A055797.P3480489864321965343

`A051601((A000217(n+5)+6)%A183133(n+1))`
-/

namespace A055797.P3480489864321965343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (Int.tmod (A000217 (n + 5) + 6) (A183133 (n + 1))).toNat

end

end A055797.P3480489864321965343

namespace A055797

/-- `A051601((A000217(n+5)+6)%A183133(n+1))` -/
def P3480489864321965343.Spec : Prop :=
  ∀ n, P3480489864321965343.a n = A055797 n

end A055797

/-!
# A055798: T(2n+5,n), array T as in A055794.

The programs for A055798, the canonical program `A055798.P2743027344319038780` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055798 has offset 0).

The definition of A055798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055798.P2743027344319038780

`∑[∑[∑[∑[∑[∑[∑[abs(1-n)]]]]]]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055798

/-- `∑[∑[∑[∑[∑[∑[∑[abs(1-n)]]]]]]]` -/
def P2743027344319038780.Spec : Prop :=
  ∀ n, P2743027344319038780.a n = A055798 n

theorem P2743027344319038780.correct : P2743027344319038780.Spec := by
  intro n
  simp only [A055798]

end A055798

/-! ## A055798.P10853703581175614530

`2*∑[A055797(n)/2]`
-/

namespace A055798.P10853703581175614530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055797 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055798.P10853703581175614530

namespace A055798

/-- `2*∑[A055797(n)/2]` -/
def P10853703581175614530.Spec : Prop :=
  ∀ n, P10853703581175614530.a n = (A055798 n : ℚ)

end A055798

/-! ## A055798.P8913053676058011529

`or(∑[A055797(n)], A000007(n))`
-/

namespace A055798.P8913053676058011529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A055798.P8913053676058011529

namespace A055798

/-- `or(∑[A055797(n)], A000007(n))` -/
def P8913053676058011529.Spec : Prop :=
  ∀ n, P8913053676058011529.a n = A055798 n

end A055798

/-! ## A055798.P1937670793636047097

`Δ[A055799(n)]-A055797(n+1)`
-/

namespace A055798.P1937670793636047097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A055797 (n + 1)

end

end A055798.P1937670793636047097

namespace A055798

/-- `Δ[A055799(n)]-A055797(n+1)` -/
def P1937670793636047097.Spec : Prop :=
  ∀ n, P1937670793636047097.a n = A055798 n

end A055798

/-! ## A055798.P6018222101564000802

`Δ[A055799(n)-A055797(n)]-A055797(n)`
-/

namespace A055798.P6018222101564000802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055799 n - A055797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A055797 n

end

end A055798.P6018222101564000802

namespace A055798

/-- `Δ[A055799(n)-A055797(n)]-A055797(n)` -/
def P6018222101564000802.Spec : Prop :=
  ∀ n, P6018222101564000802.a n = A055798 n

end A055798

/-! ## A055798.P15795762214861832658

`A055799(n+1)-(A055799(n)+A055797(n+1))`
-/

namespace A055798.P15795762214861832658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055799 (n + 1) - (A055799 n + A055797 (n + 1))

end

end A055798.P15795762214861832658

namespace A055798

/-- `A055799(n+1)-(A055799(n)+A055797(n+1))` -/
def P15795762214861832658.Spec : Prop :=
  ∀ n, P15795762214861832658.a n = A055798 n

end A055798

/-! ## A055798.P14135943986601990977

`A051601((A046691(n+4)+11)%∑[A005897(2*(n+1))])`
-/

namespace A055798.P14135943986601990977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (Int.tmod (A046691 (n + 4) + 11) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055798.P14135943986601990977

namespace A055798

/-- `A051601((A046691(n+4)+11)%∑[A005897(2*(n+1))])` -/
def P14135943986601990977.Spec : Prop :=
  ∀ n, P14135943986601990977.a n = A055798 n

end A055798

/-! ## A055798.P13579489549932377706

`A159853(A166136(n+8)-15)`
-/

namespace A055798.P13579489549932377706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (A166136 (n + 8) - 15).toNat

end

end A055798.P13579489549932377706

namespace A055798

/-- `A159853(A166136(n+8)-15)` -/
def P13579489549932377706.Spec : Prop :=
  ∀ n, P13579489549932377706.a n = A055798 n

end A055798

/-! ## A055798.P14581852797124823758

`A055794(A268581(n+1))`
-/

namespace A055798.P14581852797124823758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055794 (A268581 (n + 1)).toNat

end

end A055798.P14581852797124823758

namespace A055798

/-- `A055794(A268581(n+1))` -/
def P14581852797124823758.Spec : Prop :=
  ∀ n, P14581852797124823758.a n = A055798 n

end A055798

/-!
# A055799: T(2n+6,n), array T as in A055794.

The programs for A055799, the canonical program `A055799.P168949601754108284` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055799 has offset 0).

The definition of A055799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055799.P168949601754108284

`∑[∑[∑[∑[∑[∑[∑[∑[abs(1-n)]]]]]]]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055799

/-- `∑[∑[∑[∑[∑[∑[∑[∑[abs(1-n)]]]]]]]]` -/
def P168949601754108284.Spec : Prop :=
  ∀ n, P168949601754108284.a n = A055799 n

theorem P168949601754108284.correct : P168949601754108284.Spec := by
  intro n
  simp only [A055799]

end A055799

/-! ## A055799.P2100788907223730860

`2*∑[A055798(n)/2]`
-/

namespace A055799.P2100788907223730860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055798 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055799.P2100788907223730860

namespace A055799

/-- `2*∑[A055798(n)/2]` -/
def P2100788907223730860.Spec : Prop :=
  ∀ n, P2100788907223730860.a n = (A055799 n : ℚ)

end A055799

/-! ## A055799.P14868150954377835906

`2*∑[∑[A055797(n)/2]]`
-/

namespace A055799.P14868150954377835906
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055797 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055799.P14868150954377835906

namespace A055799

/-- `2*∑[∑[A055797(n)/2]]` -/
def P14868150954377835906.Spec : Prop :=
  ∀ n, P14868150954377835906.a n = (A055799 n : ℚ)

end A055799

/-! ## A055799.P8453262071191843595

`gcd(∑[A055798(n)], A000038(n))`
-/

namespace A055799.P8453262071191843595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A055799.P8453262071191843595

namespace A055799

/-- `gcd(∑[A055798(n)], A000038(n))` -/
def P8453262071191843595.Spec : Prop :=
  ∀ n, (P8453262071191843595.a n : ℤ) = A055799 n

end A055799

/-! ## A055799.P2138119421919079601

`lcm(∑[A055798(n)], A000034(n))`
-/

namespace A055799.P2138119421919079601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A055799.P2138119421919079601

namespace A055799

/-- `lcm(∑[A055798(n)], A000034(n))` -/
def P2138119421919079601.Spec : Prop :=
  ∀ n, (P2138119421919079601.a n : ℤ) = A055799 n

end A055799

/-! ## A055799.P14653072843571566542

`or(∑[A055798(n)], A000007(n))`
-/

namespace A055799.P14653072843571566542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A055799.P14653072843571566542

namespace A055799

/-- `or(∑[A055798(n)], A000007(n))` -/
def P14653072843571566542.Spec : Prop :=
  ∀ n, P14653072843571566542.a n = A055799 n

end A055799

/-! ## A055799.P17435887829507967140

`A000582(n+9)-n/4*A000580(n+7)`
-/

namespace A055799.P17435887829507967140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (n + 9) : ℚ) - (n : ℚ) / 4 * (A000580 (n + 7) : ℚ)

end

end A055799.P17435887829507967140

namespace A055799

/-- `A000582(n+9)-n/4*A000580(n+7)` -/
def P17435887829507967140.Spec : Prop :=
  ∀ n, P17435887829507967140.a n = (A055799 n : ℚ)

end A055799

/-! ## A055799.P167770700488027270

`∑[A055798(n)]*A323022(A000040(n+1))`
-/

namespace A055799.P167770700488027270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A323022 (A000040 (n + 1)).toNat

end

end A055799.P167770700488027270

namespace A055799

/-- `∑[A055798(n)]*A323022(A000040(n+1))` -/
def P167770700488027270.Spec : Prop :=
  ∀ n, P167770700488027270.a n = A055799 n

end A055799

/-! ## A055799.P1976330811578383395

`∑[A055798(n)]^A014963(4*n+2)`
-/

namespace A055799.P1976330811578383395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055798 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A055799.P1976330811578383395

namespace A055799

/-- `∑[A055798(n)]^A014963(4*n+2)` -/
def P1976330811578383395.Spec : Prop :=
  ∀ n, P1976330811578383395.a n = (A055799 n : ℚ)

end A055799

/-! ## A055799.P8374371386894043791

`∑[A055798(n)]%A110212(n+1)`
-/

namespace A055799.P8374371386894043791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A110212 (n + 1))

end

end A055799.P8374371386894043791

namespace A055799

/-- `∑[A055798(n)]%A110212(n+1)` -/
def P8374371386894043791.Spec : Prop :=
  ∀ n, P8374371386894043791.a n = A055799 n

end A055799

/-! ## A055799.P18403827219232376023

`A051601((A167499(n+6)+3)%A006471(n+1))`
-/

namespace A055799.P18403827219232376023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (Int.tmod (A167499 (n + 6) + 3) (A006471 (n + 1))).toNat

end

end A055799.P18403827219232376023

namespace A055799

/-- `A051601((A167499(n+6)+3)%A006471(n+1))` -/
def P18403827219232376023.Spec : Prop :=
  ∀ n, P18403827219232376023.a n = A055799 n

end A055799

/-! ## A055799.P2774967813656757634

`A159853(A166136(n+8)+3)`
-/

namespace A055799.P2774967813656757634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (A166136 (n + 8) + 3).toNat

end

end A055799.P2774967813656757634

namespace A055799

/-- `A159853(A166136(n+8)+3)` -/
def P2774967813656757634.Spec : Prop :=
  ∀ n, P2774967813656757634.a n = A055799 n

end A055799

