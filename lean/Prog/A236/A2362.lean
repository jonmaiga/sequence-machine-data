import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A236200: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236200, there is no canonical definition to state claims against.
-/

/-! ## A236200.P9864687406347968019

`A236202(∑[n+1]+2)`
-/

namespace A236200.P9864687406347968019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236202 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236200.P9864687406347968019

/-! ## A236200.P6981724521390445015

`record[A236202(floor(n*(ϕ+2))+2)]`
-/

namespace A236200.P6981724521390445015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236202 (⌊(n : ℝ) * (Real.goldenRatio + 2)⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236200.P6981724521390445015

/-! ## A236200.P14306419152657679336

`record[A106346(n)*A236202(n+3)]`
-/

namespace A236200.P14306419152657679336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106346 n * A236202 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236200.P14306419152657679336

/-!
# A236201: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236201, there is no canonical definition to state claims against.
-/

/-! ## A236201.P4952477584557411497

`A236202(∑[n+2]+4)`
-/

namespace A236201.P4952477584557411497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236202 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236201.P4952477584557411497

/-! ## A236201.P11603841538335945147

`lcm(2, A236202(A167614(n+1)))`
-/

namespace A236201.P11603841538335945147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236202 (A167614 (n + 1)).toNat)

end

end A236201.P11603841538335945147

/-!
# A236203: Interleave A005563(n), A028347(n).

The programs for A236203, the canonical program `A236203.P17272068379717617152` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236203 has offset 2).

The definition of A236203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236203.P17272068379717617152

`(2*(n+2)²+2*(n+2)-19-(2*(n+2)-11)*(-1)^(n+2))/8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236203

/-- `(2*(n+2)²+2*(n+2)-19-(2*(n+2)-11)*(-1)^(n+2))/8` -/
def P17272068379717617152.Spec : Prop :=
  ∀ n, P17272068379717617152.a n = (A236203 (n + 2) : ℚ)

end A236203

/-! ## A236203.P4887380161523529970

`a(n-2)+or(1, n+1)` with `a(0)=0, a(1)=0`
-/

namespace A236203.P4887380161523529970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + Nat.lor 1 (n + 1)

end

end A236203.P4887380161523529970

namespace A236203

/-- `a(n-2)+or(1, n+1)` -/
def P4887380161523529970.Spec : Prop :=
  ∀ n, (P4887380161523529970.a n : ℤ) = A236203 (n + 2)

end A236203

/-! ## A236203.P7426857014340798950

`∑[a(n-2)^(n%2)+2]` with `a(0)=0, a(1)=0`
-/

namespace A236203.P7426857014340798950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) ^ (n % 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236203.P7426857014340798950

namespace A236203

/-- `∑[a(n-2)^(n%2)+2]` -/
def P7426857014340798950.Spec : Prop :=
  ∀ n, (P7426857014340798950.a n : ℤ) = A236203 (n + 2)

end A236203

/-! ## A236203.P6739374109968011215

`gcd(2, n+1)+a(n-2)+n` with `a(0)=0, a(1)=0`
-/

namespace A236203.P6739374109968011215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.gcd 2 (n + 1) + (a (n - 2) + n)

end

end A236203.P6739374109968011215

namespace A236203

/-- `gcd(2, n+1)+a(n-2)+n` -/
def P6739374109968011215.Spec : Prop :=
  ∀ n, (P6739374109968011215.a n : ℤ) = A236203 (n + 2)

end A236203

/-! ## A236203.P6674103948997113228

`and(1, n)+a(n-2)+n+1` with `a(0)=0, a(1)=0`
-/

namespace A236203.P6674103948997113228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.land 1 n + (a (n - 2) + (n + 1))

end

end A236203.P6674103948997113228

namespace A236203

/-- `and(1, n)+a(n-2)+n+1` -/
def P6674103948997113228.Spec : Prop :=
  ∀ n, (P6674103948997113228.a n : ℤ) = A236203 (n + 2)

end A236203

/-! ## A236203.P5447755816453939688

`gcd(n, or(1, n))+∑[char[2*n]]²-2`
-/

namespace A236203.P5447755816453939688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd n (Nat.lor 1 n) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 2

end

end A236203.P5447755816453939688

namespace A236203

/-- `gcd(n, or(1, n))+∑[char[2*n]]²-2` -/
def P5447755816453939688.Spec : Prop :=
  ∀ n, P5447755816453939688.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P8100411396948386146

`a(n-2)+n²%2+n+1` with `a(0)=0, a(1)=0`
-/

namespace A236203.P8100411396948386146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (n ^ 2 % 2 + (n + 1))

end

end A236203.P8100411396948386146

namespace A236203

/-- `a(n-2)+n²%2+n+1` -/
def P8100411396948386146.Spec : Prop :=
  ∀ n, (P8100411396948386146.a n : ℤ) = A236203 (n + 2)

end A236203

/-! ## A236203.P2920011015428359977

`∑[a(n-2)+2]-a(n-1)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=5`
-/

namespace A236203.P2920011015428359977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 5] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A236203.P2920011015428359977

namespace A236203

/-- `∑[a(n-2)+2]-a(n-1)` -/
def P2920011015428359977.Spec : Prop :=
  ∀ n, P2920011015428359977.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P8817749487256572576

`∑[2*n-a(n-1)]-(a(n-1)-(n-3))` with `a(0)=0`
-/

namespace A236203.P8817749487256572576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) - ((n : ℤ) - 3))

end

end A236203.P8817749487256572576

namespace A236203

/-- `∑[2*n-a(n-1)]-(a(n-1)-(n-3))` -/
def P8817749487256572576.Spec : Prop :=
  ∀ n, P8817749487256572576.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P3103795468557730802

`A116940(n)-(a(n-1)+3)` with `a(0)=0`
-/

namespace A236203.P3103795468557730802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A116940 n - (a (n - 1) + 3)

end

end A236203.P3103795468557730802

namespace A236203

/-- `A116940(n)-(a(n-1)+3)` -/
def P3103795468557730802.Spec : Prop :=
  ∀ n, P3103795468557730802.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P8109021132218891036

`A227906(n)+A131805(n)`
-/

namespace A236203.P8109021132218891036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227906 n + A131805 n

end

end A236203.P8109021132218891036

namespace A236203

/-- `A227906(n)+A131805(n)` -/
def P8109021132218891036.Spec : Prop :=
  ∀ n, P8109021132218891036.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P15486540849045860329

`A266725(n)-A097140(n)²`
-/

namespace A236203.P15486540849045860329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n - A097140 n ^ 2

end

end A236203.P15486540849045860329

namespace A236203

/-- `A266725(n)-A097140(n)²` -/
def P15486540849045860329.Spec : Prop :=
  ∀ n, P15486540849045860329.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P4860144319814029878

`A198442(n+1)+A029578(n)`
-/

namespace A236203.P4860144319814029878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1) + A029578 n

end

end A236203.P4860144319814029878

namespace A236203

/-- `A198442(n+1)+A029578(n)` -/
def P4860144319814029878.Spec : Prop :=
  ∀ n, P4860144319814029878.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P2336939235374048610

`A001082(n+1)-A247375(n)`
-/

namespace A236203.P2336939235374048610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - A247375 n

end

end A236203.P2336939235374048610

namespace A236203

/-- `A001082(n+1)-A247375(n)` -/
def P2336939235374048610.Spec : Prop :=
  ∀ n, P2336939235374048610.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P5395942595780191467

`A036666(n+1)-A248825(n)`
-/

namespace A236203.P5395942595780191467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) - A248825 n

end

end A236203.P5395942595780191467

namespace A236203

/-- `A036666(n+1)-A248825(n)` -/
def P5395942595780191467.Spec : Prop :=
  ∀ n, P5395942595780191467.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P6098069669950163428

`A004526(n)*(A052938(n)+1)`
-/

namespace A236203.P6098069669950163428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * (A052938 n + 1)

end

end A236203.P6098069669950163428

namespace A236203

/-- `A004526(n)*(A052938(n)+1)` -/
def P6098069669950163428.Spec : Prop :=
  ∀ n, P6098069669950163428.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P12661163871257812884

`A004526(n)*A060762(n+1)`
-/

namespace A236203.P12661163871257812884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A060762 (n + 1)

end

end A236203.P12661163871257812884

namespace A236203

/-- `A004526(n)*A060762(n+1)` -/
def P12661163871257812884.Spec : Prop :=
  ∀ n, P12661163871257812884.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P3028077699016849374

`A084964(n)*A168230(n+1)`
-/

namespace A236203.P3028077699016849374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n * A168230 (n + 1)

end

end A236203.P3028077699016849374

namespace A236203

/-- `A084964(n)*A168230(n+1)` -/
def P3028077699016849374.Spec : Prop :=
  ∀ n, P3028077699016849374.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P2112679700891379528

`(A030451(n)+2)*A004526(n)`
-/

namespace A236203.P2112679700891379528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030451 n + 2) * A004526 n

end

end A236203.P2112679700891379528

namespace A236203

/-- `(A030451(n)+2)*A004526(n)` -/
def P2112679700891379528.Spec : Prop :=
  ∀ n, P2112679700891379528.a n = A236203 (n + 2)

end A236203

/-! ## A236203.P16555667893701787943

`A008794(n)+2*A029578(n)`
-/

namespace A236203.P16555667893701787943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n + 2 * A029578 n

end

end A236203.P16555667893701787943

namespace A236203

/-- `A008794(n)+2*A029578(n)` -/
def P16555667893701787943.Spec : Prop :=
  ∀ n, P16555667893701787943.a n = A236203 (n + 2)

end A236203

/-!
# A236204: Numbers not divisible by 2, 3 or 11.

The programs for A236204, the canonical program `A236204.P7299613055856895152` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236204 has offset 1).

The definition of A236204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236204.P7299613055856895152

`record[lcm(33, 2*n+1)/33]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236204

/-- `record[lcm(33, 2*n+1)/33]` -/
def P7299613055856895152.Spec : Prop :=
  ∀ n, P7299613055856895152.a n = (A236204 (n + 1) : ℚ)

end A236204

/-! ## A236204.P8495035382005326832

`eq[1, gcd(n, C(12, A020639(n+1)))]`
-/

namespace A236204.P8495035382005326832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 12 (A020639 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236204.P8495035382005326832

namespace A236204

/-- `eq[1, gcd(n, C(12, A020639(n+1)))]` -/
def P8495035382005326832.Spec : Prop :=
  ∀ n, (P8495035382005326832.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P12370096446254289583

`filter[A204454(n+1), A187074(#)]`
-/

namespace A236204.P12370096446254289583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A236204.P12370096446254289583

namespace A236204

/-- `filter[A204454(n+1), A187074(#)]` -/
def P12370096446254289583.Spec : Prop :=
  ∀ n, P12370096446254289583.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P13008838007072142538

`filter[A204454(n+1), A320106(#)]`
-/

namespace A236204.P13008838007072142538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A236204.P13008838007072142538

namespace A236204

/-- `filter[A204454(n+1), A320106(#)]` -/
def P13008838007072142538.Spec : Prop :=
  ∀ n, P13008838007072142538.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P6303809421955756148

`filter[A204454(n+1), A354354(#)]`
-/

namespace A236204.P6303809421955756148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A236204.P6303809421955756148

namespace A236204

/-- `filter[A204454(n+1), A354354(#)]` -/
def P6303809421955756148.Spec : Prop :=
  ∀ n, P6303809421955756148.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P4257444605275872270

`filter[A204454(n+1), A359374(#)]`
-/

namespace A236204.P4257444605275872270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A236204.P4257444605275872270

namespace A236204

/-- `filter[A204454(n+1), A359374(#)]` -/
def P4257444605275872270.Spec : Prop :=
  ∀ n, P4257444605275872270.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P12722872597776765800

`filter[A204454(n+1), A373155(#)]`
-/

namespace A236204.P12722872597776765800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A236204.P12722872597776765800

namespace A236204

/-- `filter[A204454(n+1), A373155(#)]` -/
def P12722872597776765800.Spec : Prop :=
  ∀ n, P12722872597776765800.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P15370679102414765935

`filter[A204454(n+1), A373156(#)]`
-/

namespace A236204.P15370679102414765935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A236204.P15370679102414765935

namespace A236204

/-- `filter[A204454(n+1), A373156(#)]` -/
def P15370679102414765935.Spec : Prop :=
  ∀ n, P15370679102414765935.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P6265121675412913928

`filter[A204454(n+1), A374043(#)]`
-/

namespace A236204.P6265121675412913928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A236204.P6265121675412913928

namespace A236204

/-- `filter[A204454(n+1), A374043(#)]` -/
def P6265121675412913928.Spec : Prop :=
  ∀ n, P6265121675412913928.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P1961542141726926164

`∩[A007310(n+1), A204454(n+1)]`
-/

namespace A236204.P1961542141726926164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236204.P1961542141726926164

namespace A236204

/-- `∩[A007310(n+1), A204454(n+1)]` -/
def P1961542141726926164.Spec : Prop :=
  ∀ n, (P1961542141726926164.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P7443186510856562847

`∩[A084087(n+1), A204454(n+1)]`
-/

namespace A236204.P7443186510856562847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236204.P7443186510856562847

namespace A236204

/-- `∩[A084087(n+1), A204454(n+1)]` -/
def P7443186510856562847.Spec : Prop :=
  ∀ n, (P7443186510856562847.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P16262553923103694360

`∩[A047259(n+1), A204454(n+1)]`
-/

namespace A236204.P16262553923103694360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236204.P16262553923103694360

namespace A236204

/-- `∩[A047259(n+1), A204454(n+1)]` -/
def P16262553923103694360.Spec : Prop :=
  ∀ n, (P16262553923103694360.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P16797335273104527950

`∩[A047268(n+1), A204454(n+1)]`
-/

namespace A236204.P16797335273104527950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236204.P16797335273104527950

namespace A236204

/-- `∩[A047268(n+1), A204454(n+1)]` -/
def P16797335273104527950.Spec : Prop :=
  ∀ n, (P16797335273104527950.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P3956976202211375867

`∩[A108118(n+1), A204454(n+1)]`
-/

namespace A236204.P3956976202211375867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236204.P3956976202211375867

namespace A236204

/-- `∩[A108118(n+1), A204454(n+1)]` -/
def P3956976202211375867.Spec : Prop :=
  ∀ n, (P3956976202211375867.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P8369064030638526457

`∩[A047266(n+1), A204454(n+1)]`
-/

namespace A236204.P8369064030638526457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236204.P8369064030638526457

namespace A236204

/-- `∩[A047266(n+1), A204454(n+1)]` -/
def P8369064030638526457.Spec : Prop :=
  ∀ n, (P8369064030638526457.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P2355819891671610012

`∩[2*n+1, A229968(n+1)]`
-/

namespace A236204.P2355819891671610012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236204.P2355819891671610012

namespace A236204

/-- `∩[2*n+1, A229968(n+1)]` -/
def P2355819891671610012.Spec : Prop :=
  ∀ n, (P2355819891671610012.a n : ℤ) = A236204 (n + 1)

end A236204

/-! ## A236204.P5507825021422275850

`filter[A229968(n+1), A093719(#)]`
-/

namespace A236204.P5507825021422275850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A236204.P5507825021422275850

namespace A236204

/-- `filter[A229968(n+1), A093719(#)]` -/
def P5507825021422275850.Spec : Prop :=
  ∀ n, P5507825021422275850.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P1555493637871725239

`filter[A229968(n+1), A320106(#)]`
-/

namespace A236204.P1555493637871725239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A236204.P1555493637871725239

namespace A236204

/-- `filter[A229968(n+1), A320106(#)]` -/
def P1555493637871725239.Spec : Prop :=
  ∀ n, P1555493637871725239.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P5962478638439126522

`filter[A229968(n+1), A354354(#)]`
-/

namespace A236204.P5962478638439126522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A236204.P5962478638439126522

namespace A236204

/-- `filter[A229968(n+1), A354354(#)]` -/
def P5962478638439126522.Spec : Prop :=
  ∀ n, P5962478638439126522.a n = A236204 (n + 1)

end A236204

/-! ## A236204.P18106552244235064887

`filter[A229968(n+1), A373156(#)]`
-/

namespace A236204.P18106552244235064887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A236204.P18106552244235064887

namespace A236204

/-- `filter[A229968(n+1), A373156(#)]` -/
def P18106552244235064887.Spec : Prop :=
  ∀ n, P18106552244235064887.a n = A236204 (n + 1)

end A236204

/-!
# A236206: Numbers not divisible by 3, 5 or 7.

The programs for A236206, the canonical program `A236206.P10023384627399408474` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236206 has offset 1).

The definition of A236206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236206.P10023384627399408474

`filter[A160545(n+1), A011558(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236206

/-- `filter[A160545(n+1), A011558(#)]` -/
def P10023384627399408474.Spec : Prop :=
  ∀ n, P10023384627399408474.a n = A236206 (n + 1)

theorem P10023384627399408474.correct : P10023384627399408474.Spec := by
  intro n
  simp only [A236206, Nat.add_sub_cancel]

end A236206

/-! ## A236206.P12298909091625212989

`filter[A160545(n+1), A358847(#)]`
-/

namespace A236206.P12298909091625212989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A236206.P12298909091625212989

namespace A236206

/-- `filter[A160545(n+1), A358847(#)]` -/
def P12298909091625212989.Spec : Prop :=
  ∀ n, P12298909091625212989.a n = A236206 (n + 1)

end A236206

/-! ## A236206.P3079604043170978832

`∩[A160545(n+1), A229829(n+1)]`
-/

namespace A236206.P3079604043170978832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236206.P3079604043170978832

namespace A236206

/-- `∩[A160545(n+1), A229829(n+1)]` -/
def P3079604043170978832.Spec : Prop :=
  ∀ n, (P3079604043170978832.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P15796565528846990536

`∩[A001651(n+1), A235933(n+1)]`
-/

namespace A236206.P15796565528846990536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236206.P15796565528846990536

namespace A236206

/-- `∩[A001651(n+1), A235933(n+1)]` -/
def P15796565528846990536.Spec : Prop :=
  ∀ n, (P15796565528846990536.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P1476727624660473783

`∩[A160545(n+1), A235933(n+1)]`
-/

namespace A236206.P1476727624660473783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236206.P1476727624660473783

namespace A236206

/-- `∩[A160545(n+1), A235933(n+1)]` -/
def P1476727624660473783.Spec : Prop :=
  ∀ n, (P1476727624660473783.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P8562897306529831331

`∩[A229829(n+1), A235933(n+1)]`
-/

namespace A236206.P8562897306529831331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236206.P8562897306529831331

namespace A236206

/-- `∩[A229829(n+1), A235933(n+1)]` -/
def P8562897306529831331.Spec : Prop :=
  ∀ n, (P8562897306529831331.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P9925118462131722565

`∩[A047201(n+1), A160545(n+1)]`
-/

namespace A236206.P9925118462131722565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236206.P9925118462131722565

namespace A236206

/-- `∩[A047201(n+1), A160545(n+1)]` -/
def P9925118462131722565.Spec : Prop :=
  ∀ n, (P9925118462131722565.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P10156700687283029273

`∩[A047304(n+1), A229829(n+1)]`
-/

namespace A236206.P10156700687283029273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236206.P10156700687283029273

namespace A236206

/-- `∩[A047304(n+1), A229829(n+1)]` -/
def P10156700687283029273.Spec : Prop :=
  ∀ n, (P10156700687283029273.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P1743123457242995912

`record[gcd(n+1, ∑[∑[n+1]^3])]`
-/

namespace A236206.P1743123457242995912
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236206.P1743123457242995912

namespace A236206

/-- `record[gcd(n+1, ∑[∑[n+1]^3])]` -/
def P1743123457242995912.Spec : Prop :=
  ∀ n, (P1743123457242995912.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P13165093547379554055

`lt[7, A252358(n)]`
-/

namespace A236206.P13165093547379554055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236206.P13165093547379554055

namespace A236206

/-- `lt[7, A252358(n)]` -/
def P13165093547379554055.Spec : Prop :=
  ∀ n, (P13165093547379554055.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P13812738949213966228

`eq[1, gcd(n, A190577(n+1)²)]`
-/

namespace A236206.P13812738949213966228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A190577 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236206.P13812738949213966228

namespace A236206

/-- `eq[1, gcd(n, A190577(n+1)²)]` -/
def P13812738949213966228.Spec : Prop :=
  ∀ n, (P13812738949213966228.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P989265991717499771

`eq[n, A116082(n)%(n+1)]+1`
-/

namespace A236206.P989265991717499771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116082 n) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236206.P989265991717499771

namespace A236206

/-- `eq[n, A116082(n)%(n+1)]+1` -/
def P989265991717499771.Spec : Prop :=
  ∀ n, (P989265991717499771.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P11929506574192071207

`record[A106616(A106608(n+1))]`
-/

namespace A236206.P11929506574192071207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A106608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236206.P11929506574192071207

namespace A236206

/-- `record[A106616(A106608(n+1))]` -/
def P11929506574192071207.Spec : Prop :=
  ∀ n, P11929506574192071207.a n = A236206 (n + 1)

end A236206

/-! ## A236206.P2553815065707047591

`filter[A235933(n+1), A011655(#)]`
-/

namespace A236206.P2553815065707047591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A236206.P2553815065707047591

namespace A236206

/-- `filter[A235933(n+1), A011655(#)]` -/
def P2553815065707047591.Spec : Prop :=
  ∀ n, P2553815065707047591.a n = A236206 (n + 1)

end A236206

/-! ## A236206.P9933013024529898147

`filter[A229829(n+1), A109720(#)]`
-/

namespace A236206.P9933013024529898147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A236206.P9933013024529898147

namespace A236206

/-- `filter[A229829(n+1), A109720(#)]` -/
def P9933013024529898147.Spec : Prop :=
  ∀ n, P9933013024529898147.a n = A236206 (n + 1)

end A236206

/-! ## A236206.P16844379477125137512

`filter[A235933(n+1), A267208(#)]`
-/

namespace A236206.P16844379477125137512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A236206.P16844379477125137512

namespace A236206

/-- `filter[A235933(n+1), A267208(#)]` -/
def P16844379477125137512.Spec : Prop :=
  ∀ n, P16844379477125137512.a n = A236206 (n + 1)

end A236206

/-! ## A236206.P16599782653719138819

`eq[A051176(n+1), A106608(A060791(n+1))]+1`
-/

namespace A236206.P16599782653719138819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A060791 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A236206.P16599782653719138819

namespace A236206

/-- `eq[A051176(n+1), A106608(A060791(n+1))]+1` -/
def P16599782653719138819.Spec : Prop :=
  ∀ n, (P16599782653719138819.a n : ℤ) = A236206 (n + 1)

end A236206

/-! ## A236206.P16831508803610671713

`record[A214962(2*A214962(2*(n+1)))]`
-/

namespace A236206.P16831508803610671713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214962 (2 * A214962 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236206.P16831508803610671713

namespace A236206

/-- `record[A214962(2*A214962(2*(n+1)))]` -/
def P16831508803610671713.Spec : Prop :=
  ∀ n, P16831508803610671713.a n = A236206 (n + 1)

end A236206

/-!
# A236207: Numbers not divisible by 5 or 11.

The programs for A236207, the canonical program `A236207.P9399892526492149631` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236207 has offset 1).

The definition of A236207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236207.P4927446373417379844

`record[lcm(55, n+1)/55]`
-/

namespace A236207.P4927446373417379844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 55 (n + 1) : ℚ) / 55

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236207.P4927446373417379844

namespace A236207

/-- `record[lcm(55, n+1)/55]` -/
def P4927446373417379844.Spec : Prop :=
  ∀ n, P4927446373417379844.a n = (A236207 (n + 1) : ℚ)

end A236207

/-! ## A236207.P9399892526492149631

`eq[gcd(55, n)+n, n+1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236207

/-- `eq[gcd(55, n)+n, n+1]` -/
def P9399892526492149631.Spec : Prop :=
  ∀ n, (P9399892526492149631.a n : ℤ) = A236207 (n + 1)

theorem P9399892526492149631.correct : P9399892526492149631.Spec := by
  intro n
  simp only [A236207, Nat.add_sub_cancel]

end A236207

/-! ## A236207.P5907721888852089911

`record[(n+1)/gcd(n+1, n+56)]`
-/

namespace A236207.P5907721888852089911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (n + 56) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236207.P5907721888852089911

namespace A236207

/-- `record[(n+1)/gcd(n+1, n+56)]` -/
def P5907721888852089911.Spec : Prop :=
  ∀ n, P5907721888852089911.a n = (A236207 (n + 1) : ℚ)

end A236207

/-! ## A236207.P4924525762661014536

`filter[A160542(n+1), A011558(#)]`
-/

namespace A236207.P4924525762661014536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A236207.P4924525762661014536

namespace A236207

/-- `filter[A160542(n+1), A011558(#)]` -/
def P4924525762661014536.Spec : Prop :=
  ∀ n, P4924525762661014536.a n = A236207 (n + 1)

end A236207

/-! ## A236207.P8586031140369199816

`∩[A047201(n+1), A160542(n+1)]`
-/

namespace A236207.P8586031140369199816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236207.P8586031140369199816

namespace A236207

/-- `∩[A047201(n+1), A160542(n+1)]` -/
def P8586031140369199816.Spec : Prop :=
  ∀ n, (P8586031140369199816.a n : ℤ) = A236207 (n + 1)

end A236207

/-! ## A236207.P3571374925335993798

`record[A060791(floor(n/10+n+1))]`
-/

namespace A236207.P3571374925335993798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 ⌊(n : ℚ) / 10 + (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236207.P3571374925335993798

namespace A236207

/-- `record[A060791(floor(n/10+n+1))]` -/
def P3571374925335993798.Spec : Prop :=
  ∀ n, P3571374925335993798.a n = A236207 (n + 1)

end A236207

/-! ## A236207.P14970534884271247418

`filter[A091703(n), A145568(#)]`
-/

namespace A236207.P14970534884271247418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A236207.P14970534884271247418

namespace A236207

/-- `filter[A091703(n), A145568(#)]` -/
def P14970534884271247418.Spec : Prop :=
  ∀ n, P14970534884271247418.a n = A236207 (n + 1)

end A236207

/-! ## A236207.P11565788453999869729

`record[A106612(A060791(n+1))]`
-/

namespace A236207.P11565788453999869729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A060791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236207.P11565788453999869729

namespace A236207

/-- `record[A106612(A060791(n+1))]` -/
def P11565788453999869729.Spec : Prop :=
  ∀ n, P11565788453999869729.a n = A236207 (n + 1)

end A236207

/-! ## A236207.P16956258945051527901

`filter[A047201(n+1), A145568(#)]`
-/

namespace A236207.P16956258945051527901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A236207.P16956258945051527901

namespace A236207

/-- `filter[A047201(n+1), A145568(#)]` -/
def P16956258945051527901.Spec : Prop :=
  ∀ n, P16956258945051527901.a n = A236207 (n + 1)

end A236207

/-! ## A236207.P9768035554421191642

`eq[A010208(n²), A178788(n)]`
-/

namespace A236207.P9768035554421191642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010208 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236207.P9768035554421191642

namespace A236207

/-- `eq[A010208(n²), A178788(n)]` -/
def P9768035554421191642.Spec : Prop :=
  ∀ n, (P9768035554421191642.a n : ℤ) = A236207 (n + 1)

end A236207

/-!
# A236208: Numbers not divisible by 2, 5 or 11.

The programs for A236208, the canonical program `A236208.P12466315113118299959` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236208 has offset 1).

The definition of A236208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236208.P12466315113118299959

`record[lcm(55, 2*n+1)/55]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236208

/-- `record[lcm(55, 2*n+1)/55]` -/
def P12466315113118299959.Spec : Prop :=
  ∀ n, P12466315113118299959.a n = (A236208 (n + 1) : ℚ)

end A236208

/-! ## A236208.P3758817380191759924

`eq[1, gcd(n, A020639(n+1)+53)]`
-/

namespace A236208.P3758817380191759924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A020639 (n + 1) + 53)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236208.P3758817380191759924

namespace A236208

/-- `eq[1, gcd(n, A020639(n+1)+53)]` -/
def P3758817380191759924.Spec : Prop :=
  ∀ n, (P3758817380191759924.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P13414226519638771992

`filter[A204454(n+1), A011558(#)]`
-/

namespace A236208.P13414226519638771992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A236208.P13414226519638771992

namespace A236208

/-- `filter[A204454(n+1), A011558(#)]` -/
def P13414226519638771992.Spec : Prop :=
  ∀ n, P13414226519638771992.a n = A236208 (n + 1)

end A236208

/-! ## A236208.P14693716790451406979

`∩[A045572(n+1), A204454(n+1)]`
-/

namespace A236208.P14693716790451406979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P14693716790451406979

namespace A236208

/-- `∩[A045572(n+1), A204454(n+1)]` -/
def P14693716790451406979.Spec : Prop :=
  ∀ n, (P14693716790451406979.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P4248842524667509236

`∩[A204454(n+1), A241662(n+1)]`
-/

namespace A236208.P4248842524667509236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P4248842524667509236

namespace A236208

/-- `∩[A204454(n+1), A241662(n+1)]` -/
def P4248842524667509236.Spec : Prop :=
  ∀ n, (P4248842524667509236.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P4994437492442930040

`∩[2*n+1, A236207(n+1)]`
-/

namespace A236208.P4994437492442930040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P4994437492442930040

namespace A236208

/-- `∩[2*n+1, A236207(n+1)]` -/
def P4994437492442930040.Spec : Prop :=
  ∀ n, (P4994437492442930040.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P11932540133236921655

`∩[A236207(n+1), A004273(n)]`
-/

namespace A236208.P11932540133236921655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P11932540133236921655

namespace A236208

/-- `∩[A236207(n+1), A004273(n)]` -/
def P11932540133236921655.Spec : Prop :=
  ∀ n, (P11932540133236921655.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P15467275136383265619

`∩[A236207(n+1), A060747(n)]`
-/

namespace A236208.P15467275136383265619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P15467275136383265619

namespace A236208

/-- `∩[A236207(n+1), A060747(n)]` -/
def P15467275136383265619.Spec : Prop :=
  ∀ n, (P15467275136383265619.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P4473513578229645051

`∩[A236207(n+1), A241662(n+1)]`
-/

namespace A236208.P4473513578229645051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P4473513578229645051

namespace A236208

/-- `∩[A236207(n+1), A241662(n+1)]` -/
def P4473513578229645051.Spec : Prop :=
  ∀ n, (P4473513578229645051.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P12637313012300745541

`∩[A236207(n+1), A277599(n+1)]`
-/

namespace A236208.P12637313012300745541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P12637313012300745541

namespace A236208

/-- `∩[A236207(n+1), A277599(n+1)]` -/
def P12637313012300745541.Spec : Prop :=
  ∀ n, (P12637313012300745541.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P15239687141205015768

`∩[A047201(n+1), A204454(n+1)]`
-/

namespace A236208.P15239687141205015768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P15239687141205015768

namespace A236208

/-- `∩[A047201(n+1), A204454(n+1)]` -/
def P15239687141205015768.Spec : Prop :=
  ∀ n, (P15239687141205015768.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P13061104471176258568

`∩[A045572(n+1), A160542(n+1)]`
-/

namespace A236208.P13061104471176258568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236208.P13061104471176258568

namespace A236208

/-- `∩[A045572(n+1), A160542(n+1)]` -/
def P13061104471176258568.Spec : Prop :=
  ∀ n, (P13061104471176258568.a n : ℤ) = A236208 (n + 1)

end A236208

/-! ## A236208.P1464038932768925909

`record[A106621(A106612(n+1))]`
-/

namespace A236208.P1464038932768925909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236208.P1464038932768925909

namespace A236208

/-- `record[A106621(A106612(n+1))]` -/
def P1464038932768925909.Spec : Prop :=
  ∀ n, P1464038932768925909.a n = A236208 (n + 1)

end A236208

/-! ## A236208.P6201426812068806142

`filter[A045572(n+1), A145568(#)]`
-/

namespace A236208.P6201426812068806142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A236208.P6201426812068806142

namespace A236208

/-- `filter[A045572(n+1), A145568(#)]` -/
def P6201426812068806142.Spec : Prop :=
  ∀ n, P6201426812068806142.a n = A236208 (n + 1)

end A236208

/-! ## A236208.P15152161455185064593

`filter[A236207(n+1), A000035(#)]`
-/

namespace A236208.P15152161455185064593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A236208.P15152161455185064593

namespace A236208

/-- `filter[A236207(n+1), A000035(#)]` -/
def P15152161455185064593.Spec : Prop :=
  ∀ n, P15152161455185064593.a n = A236208 (n + 1)

end A236208

/-! ## A236208.P17928637392737048889

`record[A106612(A060791(2*n+1))]`
-/

namespace A236208.P17928637392737048889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A060791 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236208.P17928637392737048889

namespace A236208

/-- `record[A106612(A060791(2*n+1))]` -/
def P17928637392737048889.Spec : Prop :=
  ∀ n, P17928637392737048889.a n = A236208 (n + 1)

end A236208

/-! ## A236208.P1474607123135620670

`filter[A091703(2*n+1), A145568(#)]`
-/

namespace A236208.P1474607123135620670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A236208.P1474607123135620670

namespace A236208

/-- `filter[A091703(2*n+1), A145568(#)]` -/
def P1474607123135620670.Spec : Prop :=
  ∀ n, P1474607123135620670.a n = A236208 (n + 1)

end A236208

/-! ## A236208.P5274733123687265055

`eq[A106612(n+1), A106621(n+1)]+1`
-/

namespace A236208.P5274733123687265055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A236208.P5274733123687265055

namespace A236208

/-- `eq[A106612(n+1), A106621(n+1)]+1` -/
def P5274733123687265055.Spec : Prop :=
  ∀ n, (P5274733123687265055.a n : ℤ) = A236208 (n + 1)

end A236208

/-!
# A236209: Sum of the seventh powers of the first n primes.

The programs for A236209, the canonical program `A236209.P8443258730828089445` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236209 has offset 1).

The definition of A236209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236209.P8443258730828089445

`∑[A092759(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236209

/-- `∑[A092759(n+1)]` -/
def P8443258730828089445.Spec : Prop :=
  ∀ n, P8443258730828089445.a n = A236209 (n + 1)

theorem P8443258730828089445.correct : P8443258730828089445.Spec := by
  intro n
  simp only [A236209, Nat.add_sub_cancel]

end A236209

/-! ## A236209.P17501656766055421569

`∑[A000040(n+1)^7]`
-/

namespace A236209.P17501656766055421569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P17501656766055421569

namespace A236209

/-- `∑[A000040(n+1)^7]` -/
def P17501656766055421569.Spec : Prop :=
  ∀ n, P17501656766055421569.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P17134198811455813390

`∑[A030078(n+1)²*A000040(n+1)]`
-/

namespace A236209.P17134198811455813390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P17134198811455813390

namespace A236209

/-- `∑[A030078(n+1)²*A000040(n+1)]` -/
def P17134198811455813390.Spec : Prop :=
  ∀ n, P17134198811455813390.a n = A236209 (n + 1)

theorem P17134198811455813390.correct : P17134198811455813390.Spec := by
  intro n
  simp only [A236209, Nat.add_sub_cancel, A236209.P17134198811455813390.f1, A236209.P17134198811455813390.a, A236209.P8443258730828089445.f1, A236209.P8443258730828089445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236209

/-! ## A236209.P9281213001618622862

`∑[A001248(n+1)²*A030078(n+1)]`
-/

namespace A236209.P9281213001618622862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P9281213001618622862

namespace A236209

/-- `∑[A001248(n+1)²*A030078(n+1)]` -/
def P9281213001618622862.Spec : Prop :=
  ∀ n, P9281213001618622862.a n = A236209 (n + 1)

theorem P9281213001618622862.correct : P9281213001618622862.Spec := by
  intro n
  simp only [A236209, Nat.add_sub_cancel, A236209.P9281213001618622862.f1, A236209.P9281213001618622862.a, A236209.P8443258730828089445.f1, A236209.P8443258730828089445.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A092759, A092759.P10365930146465751826.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236209

/-! ## A236209.P604527802878715037

`∑[A001248(n+1)²²/A000040(n+1)]`
-/

namespace A236209.P604527802878715037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001248 (n + 1) ^ 2) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P604527802878715037

namespace A236209

/-- `∑[A001248(n+1)²²/A000040(n+1)]` -/
def P604527802878715037.Spec : Prop :=
  ∀ n, P604527802878715037.a n = (A236209 (n + 1) : ℚ)

end A236209

/-! ## A236209.P17040128444079490908

`∑[record[A006530(n+2)^7]]`
-/

namespace A236209.P17040128444079490908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P17040128444079490908

namespace A236209

/-- `∑[record[A006530(n+2)^7]]` -/
def P17040128444079490908.Spec : Prop :=
  ∀ n, P17040128444079490908.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P15603499260851337018

`∑[record[A020639(n+2)^7]]`
-/

namespace A236209.P15603499260851337018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P15603499260851337018

namespace A236209

/-- `∑[record[A020639(n+2)^7]]` -/
def P15603499260851337018.Spec : Prop :=
  ∀ n, P15603499260851337018.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P15379898362264845924

`∑[(eq[1, A001222(n+1)]+1)^7]`
-/

namespace A236209.P15379898362264845924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P15379898362264845924

namespace A236209

/-- `∑[(eq[1, A001222(n+1)]+1)^7]` -/
def P15379898362264845924.Spec : Prop :=
  ∀ n, (P15379898362264845924.a n : ℤ) = A236209 (n + 1)

end A236209

/-! ## A236209.P9294626609799432993

`∑[(eq[n+2, A000203(n+1)]+1)^7]`
-/

namespace A236209.P9294626609799432993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P9294626609799432993

namespace A236209

/-- `∑[(eq[n+2, A000203(n+1)]+1)^7]` -/
def P9294626609799432993.Spec : Prop :=
  ∀ n, (P9294626609799432993.a n : ℤ) = A236209 (n + 1)

end A236209

/-! ## A236209.P11996696364662169938

`∑[A006530(lt[n, A006530(n+2)]+2)^7]`
-/

namespace A236209.P11996696364662169938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P11996696364662169938

namespace A236209

/-- `∑[A006530(lt[n, A006530(n+2)]+2)^7]` -/
def P11996696364662169938.Spec : Prop :=
  ∀ n, P11996696364662169938.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P16541426320812637896

`∑[(lt[A000010(n+1), A020639(n+1)]+1)^7]`
-/

namespace A236209.P16541426320812637896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P16541426320812637896

namespace A236209

/-- `∑[(lt[A000010(n+1), A020639(n+1)]+1)^7]` -/
def P16541426320812637896.Spec : Prop :=
  ∀ n, (P16541426320812637896.a n : ℤ) = A236209 (n + 1)

end A236209

/-! ## A236209.P3600245215783035014

`∑[∏{p}[p?[A207790(n+1)], #]^7]`
-/

namespace A236209.P3600245215783035014
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P3600245215783035014

namespace A236209

/-- `∑[∏{p}[p?[A207790(n+1)], #]^7]` -/
def P3600245215783035014.Spec : Prop :=
  ∀ n, (P3600245215783035014.a n : ℤ) = A236209 (n + 1)

end A236209

/-! ## A236209.P14470140694713378626

`∑[((A008864(n+1)-1)%p?[28*(n-1)+1+n]²)^7]`
-/

namespace A236209.P14470140694713378626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * ((n : ℤ) - 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P14470140694713378626

namespace A236209

/-- `∑[((A008864(n+1)-1)%p?[28*(n-1)+1+n]²)^7]` -/
def P14470140694713378626.Spec : Prop :=
  ∀ n, P14470140694713378626.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P14712652172497133192

`∑[record[A351195(n+2)]]`
-/

namespace A236209.P14712652172497133192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351195 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P14712652172497133192

namespace A236209

/-- `∑[record[A351195(n+2)]]` -/
def P14712652172497133192.Spec : Prop :=
  ∀ n, P14712652172497133192.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P11621069384747743044

`∑[record[A093074(n+1)]^7]`
-/

namespace A236209.P11621069384747743044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P11621069384747743044

namespace A236209

/-- `∑[record[A093074(n+1)]^7]` -/
def P11621069384747743044.Spec : Prop :=
  ∀ n, P11621069384747743044.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P11111256967868385193

`∑[record[A014963(n+2)^7]]`
-/

namespace A236209.P11111256967868385193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P11111256967868385193

namespace A236209

/-- `∑[record[A014963(n+2)^7]]` -/
def P11111256967868385193.Spec : Prop :=
  ∀ n, P11111256967868385193.a n = A236209 (n + 1)

end A236209

/-! ## A236209.P17321196643297688799

`∑[A001015(A000040(n+1))]`
-/

namespace A236209.P17321196643297688799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236209.P17321196643297688799

namespace A236209

/-- `∑[A001015(A000040(n+1))]` -/
def P17321196643297688799.Spec : Prop :=
  ∀ n, P17321196643297688799.a n = A236209 (n + 1)

end A236209

/-!
# A236212: Floor of the value of Riemann's xi function at n.

The programs for A236212, there is no canonical definition to state claims against.
-/

/-! ## A236212.P9236326820127243406

`A111660(A331964(n+2))`
-/

namespace A236212.P9236326820127243406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A331964 (n + 2)).toNat

end

end A236212.P9236326820127243406

/-! ## A236212.P7457292102220663039

`round(∑[A115854(n)/A116430(n)])`
-/

namespace A236212.P7457292102220663039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115854 n : ℚ) / (A116430 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236212.P7457292102220663039

/-!
# A236213: Number of units in the imaginary quadratic field Q(sqrt(-d)), where d > 0 is the n-th squarefree number.

The programs for A236213, there is no canonical definition to state claims against.
-/

/-! ## A236213.P8484611829147700679

`A092205(A005117(n+1))`
-/

namespace A236213.P8484611829147700679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092205 (A005117 (n + 1)).toNat

end

end A236213.P8484611829147700679

/-!
# A236214: Sum of the eighth powers of the first n primes.

The programs for A236214, the canonical program `A236214.P10912221979790008616` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236214 has offset 1).

The definition of A236214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236214.P10912221979790008616

`∑[A179645(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236214

/-- `∑[A179645(n+1)]` -/
def P10912221979790008616.Spec : Prop :=
  ∀ n, P10912221979790008616.a n = A236214 (n + 1)

theorem P10912221979790008616.correct : P10912221979790008616.Spec := by
  intro n
  simp only [A236214, Nat.add_sub_cancel]

end A236214

/-! ## A236214.P3393740334394949023

`∑[A030514(n+1)²]`
-/

namespace A236214.P3393740334394949023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P3393740334394949023

namespace A236214

/-- `∑[A030514(n+1)²]` -/
def P3393740334394949023.Spec : Prop :=
  ∀ n, P3393740334394949023.a n = A236214 (n + 1)

theorem P3393740334394949023.correct : P3393740334394949023.Spec := by
  intro n
  simp only [A236214, Nat.add_sub_cancel, A236214.P3393740334394949023.f1, A236214.P3393740334394949023.a, A236214.P10912221979790008616.f1, A236214.P10912221979790008616.a, A030514, A030514.P11974636125371552077.a, A179645, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236214

/-! ## A236214.P12941123850348153692

`∑[A001248(n+1)^4]`
-/

namespace A236214.P12941123850348153692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P12941123850348153692

namespace A236214

/-- `∑[A001248(n+1)^4]` -/
def P12941123850348153692.Spec : Prop :=
  ∀ n, P12941123850348153692.a n = A236214 (n + 1)

theorem P12941123850348153692.correct : P12941123850348153692.Spec := by
  intro n
  simp only [A236214, Nat.add_sub_cancel, A236214.P12941123850348153692.f1, A236214.P12941123850348153692.a, A236214.P10912221979790008616.f1, A236214.P10912221979790008616.a, A001248, A001248.P16278241061688229202.a, A179645, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236214

/-! ## A236214.P10851751021031789692

`∑[A000040(n+1)^8]`
-/

namespace A236214.P10851751021031789692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P10851751021031789692

namespace A236214

/-- `∑[A000040(n+1)^8]` -/
def P10851751021031789692.Spec : Prop :=
  ∀ n, P10851751021031789692.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P8632837107172260675

`∑[Δ[A007504(n)]²²²]`
-/

namespace A236214.P8632837107172260675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f2 (n + 1) - f2 n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P8632837107172260675

namespace A236214

/-- `∑[Δ[A007504(n)]²²²]` -/
def P8632837107172260675.Spec : Prop :=
  ∀ n, P8632837107172260675.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P14416883008851724105

`∑[(A172191(n+1)/2)²]`
-/

namespace A236214.P14416883008851724105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A172191 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P14416883008851724105

namespace A236214

/-- `∑[(A172191(n+1)/2)²]` -/
def P14416883008851724105.Spec : Prop :=
  ∀ n, P14416883008851724105.a n = (A236214 (n + 1) : ℚ)

end A236214

/-! ## A236214.P1234311875394999326

`∑[A000040(C(n+1, n))²²²]`
-/

namespace A236214.P1234311875394999326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 (Nat.choose (n + 1) n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P1234311875394999326

namespace A236214

/-- `∑[A000040(C(n+1, n))²²²]` -/
def P1234311875394999326.Spec : Prop :=
  ∀ n, P1234311875394999326.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P15655447663734511859

`∑[(A000040(2*n-(n-1))^4)²]`
-/

namespace A236214.P15655447663734511859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P15655447663734511859

namespace A236214

/-- `∑[(A000040(2*n-(n-1))^4)²]` -/
def P15655447663734511859.Spec : Prop :=
  ∀ n, P15655447663734511859.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P10496164186403625204

`∑[A000040(2*n+1-n)²²²]`
-/

namespace A236214.P10496164186403625204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 (2 * n + 1 - n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P10496164186403625204

namespace A236214

/-- `∑[A000040(2*n+1-n)²²²]` -/
def P10496164186403625204.Spec : Prop :=
  ∀ n, P10496164186403625204.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P12968432089094705987

`∑[A280076(n+2)^4]`
-/

namespace A236214.P12968432089094705987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P12968432089094705987

namespace A236214

/-- `∑[A280076(n+2)^4]` -/
def P12968432089094705987.Spec : Prop :=
  ∀ n, P12968432089094705987.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P447983577729968410

`∑[A008578(n+2)²²²]`
-/

namespace A236214.P447983577729968410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008578 (n + 2) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P447983577729968410

namespace A236214

/-- `∑[A008578(n+2)²²²]` -/
def P447983577729968410.Spec : Prop :=
  ∀ n, P447983577729968410.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P526189990067990876

`∑[record[A006530(n+2)^8]]`
-/

namespace A236214.P526189990067990876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P526189990067990876

namespace A236214

/-- `∑[record[A006530(n+2)^8]]` -/
def P526189990067990876.Spec : Prop :=
  ∀ n, P526189990067990876.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P15039340266145528930

`∑[record[A020639(n+2)^8]]`
-/

namespace A236214.P15039340266145528930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P15039340266145528930

namespace A236214

/-- `∑[record[A020639(n+2)^8]]` -/
def P15039340266145528930.Spec : Prop :=
  ∀ n, P15039340266145528930.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P4194945142577065802

`∑[(record[A000010(n+1)]+1)^8]`
-/

namespace A236214.P4194945142577065802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P4194945142577065802

namespace A236214

/-- `∑[(record[A000010(n+1)]+1)^8]` -/
def P4194945142577065802.Spec : Prop :=
  ∀ n, P4194945142577065802.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P10518499720728123703

`∑[record[A065642(n+2)²²]]`
-/

namespace A236214.P10518499720728123703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065642 (n + 2) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P10518499720728123703

namespace A236214

/-- `∑[record[A065642(n+2)²²]]` -/
def P10518499720728123703.Spec : Prop :=
  ∀ n, P10518499720728123703.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P12644446156016968292

`∑[A006530(2*A000040(n+1))²²²]`
-/

namespace A236214.P12644446156016968292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A006530 (2 * A000040 (n + 1)).toNat ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P12644446156016968292

namespace A236214

/-- `∑[A006530(2*A000040(n+1))²²²]` -/
def P12644446156016968292.Spec : Prop :=
  ∀ n, P12644446156016968292.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P7267720562149584030

`∑[A033476(2*n)²²]`
-/

namespace A236214.P7267720562149584030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033476 (2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P7267720562149584030

namespace A236214

/-- `∑[A033476(2*n)²²]` -/
def P7267720562149584030.Spec : Prop :=
  ∀ n, P7267720562149584030.a n = A236214 (n + 1)

end A236214

/-! ## A236214.P17580334201421200788

`∑[p?[comp[n²]]²²²]`
-/

namespace A236214.P17580334201421200788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P17580334201421200788

namespace A236214

/-- `∑[p?[comp[n²]]²²²]` -/
def P17580334201421200788.Spec : Prop :=
  ∀ n, (P17580334201421200788.a n : ℤ) = A236214 (n + 1)

end A236214

/-! ## A236214.P11898067401062197968

`∑[record[A351196(n+2)]]`
-/

namespace A236214.P11898067401062197968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351196 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236214.P11898067401062197968

namespace A236214

/-- `∑[record[A351196(n+2)]]` -/
def P11898067401062197968.Spec : Prop :=
  ∀ n, P11898067401062197968.a n = A236214 (n + 1)

end A236214

/-!
# A236215: Sum of the ninth powers of the first n primes.

The programs for A236215, the canonical program `A236215.P8665745897530177500` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236215 has offset 1).

The definition of A236215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236215.P8665745897530177500

`∑[A179665(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236215

/-- `∑[A179665(n+1)]` -/
def P8665745897530177500.Spec : Prop :=
  ∀ n, P8665745897530177500.a n = A236215 (n + 1)

theorem P8665745897530177500.correct : P8665745897530177500.Spec := by
  intro n
  simp only [A236215, Nat.add_sub_cancel]

end A236215

/-! ## A236215.P6135314131452078391

`∑[A030078(n+1)^3]`
-/

namespace A236215.P6135314131452078391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P6135314131452078391

namespace A236215

/-- `∑[A030078(n+1)^3]` -/
def P6135314131452078391.Spec : Prop :=
  ∀ n, P6135314131452078391.a n = A236215 (n + 1)

theorem P6135314131452078391.correct : P6135314131452078391.Spec := by
  intro n
  simp only [A236215, Nat.add_sub_cancel, A236215.P6135314131452078391.f1, A236215.P6135314131452078391.a, A236215.P8665745897530177500.f1, A236215.P8665745897530177500.a, A030078, A030078.P13819432151207990454.a, A179665, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236215

/-! ## A236215.P3892992010667195437

`∑[A000040(n+1)^9]`
-/

namespace A236215.P3892992010667195437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P3892992010667195437

namespace A236215

/-- `∑[A000040(n+1)^9]` -/
def P3892992010667195437.Spec : Prop :=
  ∀ n, P3892992010667195437.a n = A236215 (n + 1)

end A236215

/-! ## A236215.P12484462057506208615

`∑[(A006093(n+1)+1)^9]`
-/

namespace A236215.P12484462057506208615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P12484462057506208615

namespace A236215

/-- `∑[(A006093(n+1)+1)^9]` -/
def P12484462057506208615.Spec : Prop :=
  ∀ n, P12484462057506208615.a n = A236215 (n + 1)

theorem P12484462057506208615.correct : P12484462057506208615.Spec := by
  intro n
  simp only [A236215, Nat.add_sub_cancel, A236215.P12484462057506208615.f1, A236215.P12484462057506208615.a, A236215.P8665745897530177500.f1, A236215.P8665745897530177500.a, A006093, A006093.P2906174024863549003.a, A179665, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236215

/-! ## A236215.P7963407254436732456

`∑[sqrt(A030516(n+1))*A030516(n+1)]`
-/

namespace A236215.P7963407254436732456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 1) : ℝ) * (A030516 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P7963407254436732456

namespace A236215

/-- `∑[sqrt(A030516(n+1))*A030516(n+1)]` -/
def P7963407254436732456.Spec : Prop :=
  ∀ n, P7963407254436732456.a n = (A236215 (n + 1) : ℝ)

end A236215

/-! ## A236215.P10549962932576315087

`∑[A001248(n+1)²²*A000040(n+1)]`
-/

namespace A236215.P10549962932576315087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) ^ 2) ^ 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P10549962932576315087

namespace A236215

/-- `∑[A001248(n+1)²²*A000040(n+1)]` -/
def P10549962932576315087.Spec : Prop :=
  ∀ n, P10549962932576315087.a n = A236215 (n + 1)

theorem P10549962932576315087.correct : P10549962932576315087.Spec := by
  intro n
  simp only [A236215, Nat.add_sub_cancel, A236215.P10549962932576315087.f1, A236215.P10549962932576315087.a, A236215.P8665745897530177500.f1, A236215.P8665745897530177500.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A179665, A179665.P967492933399289079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236215

/-! ## A236215.P7914522502794392462

`∑[record[A006530(n+2)^9]]`
-/

namespace A236215.P7914522502794392462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P7914522502794392462

namespace A236215

/-- `∑[record[A006530(n+2)^9]]` -/
def P7914522502794392462.Spec : Prop :=
  ∀ n, P7914522502794392462.a n = A236215 (n + 1)

end A236215

/-! ## A236215.P4679204399057352515

`∑[record[A020639(n+2)^9]]`
-/

namespace A236215.P4679204399057352515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P4679204399057352515

namespace A236215

/-- `∑[record[A020639(n+2)^9]]` -/
def P4679204399057352515.Spec : Prop :=
  ∀ n, P4679204399057352515.a n = A236215 (n + 1)

end A236215

/-! ## A236215.P6165755546712572537

`∑[A006530(lt[n, A006530(n+2)]+2)^9]`
-/

namespace A236215.P6165755546712572537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P6165755546712572537

namespace A236215

/-- `∑[A006530(lt[n, A006530(n+2)]+2)^9]` -/
def P6165755546712572537.Spec : Prop :=
  ∀ n, P6165755546712572537.a n = A236215 (n + 1)

end A236215

/-! ## A236215.P1065581661673987711

`∑[(lt[A000010(n+1), A020639(n+1)]+1)^9]`
-/

namespace A236215.P1065581661673987711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1) ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P1065581661673987711

namespace A236215

/-- `∑[(lt[A000010(n+1), A020639(n+1)]+1)^9]` -/
def P1065581661673987711.Spec : Prop :=
  ∀ n, (P1065581661673987711.a n : ℤ) = A236215 (n + 1)

end A236215

/-! ## A236215.P6185285014190726544

`∑[record[A351197(n+2)]]`
-/

namespace A236215.P6185285014190726544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351197 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P6185285014190726544

namespace A236215

/-- `∑[record[A351197(n+2)]]` -/
def P6185285014190726544.Spec : Prop :=
  ∀ n, P6185285014190726544.a n = A236215 (n + 1)

end A236215

/-! ## A236215.P8682970490517625607

`∑[record[A014963(n+2)^9]]`
-/

namespace A236215.P8682970490517625607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P8682970490517625607

namespace A236215

/-- `∑[record[A014963(n+2)^9]]` -/
def P8682970490517625607.Spec : Prop :=
  ∀ n, P8682970490517625607.a n = A236215 (n + 1)

end A236215

/-! ## A236215.P18383938434158128118

`∑[A001017(A000040(n+1))]`
-/

namespace A236215.P18383938434158128118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236215.P18383938434158128118

namespace A236215

/-- `∑[A001017(A000040(n+1))]` -/
def P18383938434158128118.Spec : Prop :=
  ∀ n, P18383938434158128118.a n = A236215 (n + 1)

end A236215

/-!
# A236216: Sum of the tenth powers of the first n primes.

The programs for A236216, the canonical program `A236216.P6788692688263138763` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236216 has offset 1).

The definition of A236216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236216.P6788692688263138763

`∑[A030629(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236216

/-- `∑[A030629(n+1)]` -/
def P6788692688263138763.Spec : Prop :=
  ∀ n, P6788692688263138763.a n = A236216 (n + 1)

theorem P6788692688263138763.correct : P6788692688263138763.Spec := by
  intro n
  simp only [A236216, Nat.add_sub_cancel]

end A236216

/-! ## A236216.P12293689000541975714

`∑[A050997(n+1)²]`
-/

namespace A236216.P12293689000541975714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P12293689000541975714

namespace A236216

/-- `∑[A050997(n+1)²]` -/
def P12293689000541975714.Spec : Prop :=
  ∀ n, P12293689000541975714.a n = A236216 (n + 1)

theorem P12293689000541975714.correct : P12293689000541975714.Spec := by
  intro n
  simp only [A236216, Nat.add_sub_cancel, A236216.P12293689000541975714.f1, A236216.P12293689000541975714.a, A236216.P6788692688263138763.f1, A236216.P6788692688263138763.a, A030629, A030629.P13094375079477453645.a, A050997, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236216

/-! ## A236216.P9580999406200676062

`∑[A001248(n+1)^5]`
-/

namespace A236216.P9580999406200676062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P9580999406200676062

namespace A236216

/-- `∑[A001248(n+1)^5]` -/
def P9580999406200676062.Spec : Prop :=
  ∀ n, P9580999406200676062.a n = A236216 (n + 1)

theorem P9580999406200676062.correct : P9580999406200676062.Spec := by
  intro n
  simp only [A236216, Nat.add_sub_cancel, A236216.P9580999406200676062.f1, A236216.P9580999406200676062.a, A236216.P6788692688263138763.f1, A236216.P6788692688263138763.a, A001248, A001248.P16278241061688229202.a, A030629, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236216

/-! ## A236216.P14033391277403867284

`∑[A000040(n+1)^10]`
-/

namespace A236216.P14033391277403867284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P14033391277403867284

namespace A236216

/-- `∑[A000040(n+1)^10]` -/
def P14033391277403867284.Spec : Prop :=
  ∀ n, P14033391277403867284.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P1807186543289998429

`∑[(A000040(2*n-(n-1))^5)²]`
-/

namespace A236216.P1807186543289998429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P1807186543289998429

namespace A236216

/-- `∑[(A000040(2*n-(n-1))^5)²]` -/
def P1807186543289998429.Spec : Prop :=
  ∀ n, P1807186543289998429.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P15547423898169564285

`∑[(A001248(n+1)*A030078(n+1))²]`
-/

namespace A236216.P15547423898169564285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) * A030078 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P15547423898169564285

namespace A236216

/-- `∑[(A001248(n+1)*A030078(n+1))²]` -/
def P15547423898169564285.Spec : Prop :=
  ∀ n, P15547423898169564285.a n = A236216 (n + 1)

theorem P15547423898169564285.correct : P15547423898169564285.Spec := by
  intro n
  simp only [A236216, Nat.add_sub_cancel, A236216.P15547423898169564285.f1, A236216.P15547423898169564285.a, A236216.P6788692688263138763.f1, A236216.P6788692688263138763.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A030629, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236216

/-! ## A236216.P4249670246409510791

`∑[(A001248(n+1)²*A000040(n+1))²]`
-/

namespace A236216.P4249670246409510791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) ^ 2 * A000040 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P4249670246409510791

namespace A236216

/-- `∑[(A001248(n+1)²*A000040(n+1))²]` -/
def P4249670246409510791.Spec : Prop :=
  ∀ n, P4249670246409510791.a n = A236216 (n + 1)

theorem P4249670246409510791.correct : P4249670246409510791.Spec := by
  intro n
  simp only [A236216, Nat.add_sub_cancel, A236216.P4249670246409510791.f1, A236216.P4249670246409510791.a, A236216.P6788692688263138763.f1, A236216.P6788692688263138763.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030629, A030629.P13094375079477453645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236216

/-! ## A236216.P11818637693531635550

`∑[(A000040(n+1)²*A030078(n+1))²]`
-/

namespace A236216.P11818637693531635550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2 * A030078 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P11818637693531635550

namespace A236216

/-- `∑[(A000040(n+1)²*A030078(n+1))²]` -/
def P11818637693531635550.Spec : Prop :=
  ∀ n, P11818637693531635550.a n = A236216 (n + 1)

theorem P11818637693531635550.correct : P11818637693531635550.Spec := by
  intro n
  simp only [A236216, Nat.add_sub_cancel, A236216.P11818637693531635550.f1, A236216.P11818637693531635550.a, A236216.P6788692688263138763.f1, A236216.P6788692688263138763.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A030629, A030629.P13094375079477453645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236216

/-! ## A236216.P17213570406633259127

`∑[A030514(n+1)²*sqrt(A030514(n+1))]`
-/

namespace A236216.P17213570406633259127
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) ^ 2 : ℝ) * Real.sqrt (A030514 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P17213570406633259127

namespace A236216

/-- `∑[A030514(n+1)²*sqrt(A030514(n+1))]` -/
def P17213570406633259127.Spec : Prop :=
  ∀ n, P17213570406633259127.a n = (A236216 (n + 1) : ℝ)

end A236216

/-! ## A236216.P12277533517489020639

`∑[A280076(n+2)^5]`
-/

namespace A236216.P12277533517489020639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P12277533517489020639

namespace A236216

/-- `∑[A280076(n+2)^5]` -/
def P12277533517489020639.Spec : Prop :=
  ∀ n, P12277533517489020639.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P16622554379265650268

`∑[record[A006530(n+2)^10]]`
-/

namespace A236216.P16622554379265650268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P16622554379265650268

namespace A236216

/-- `∑[record[A006530(n+2)^10]]` -/
def P16622554379265650268.Spec : Prop :=
  ∀ n, P16622554379265650268.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P122461773205987260

`∑[record[A020639(n+2)^10]]`
-/

namespace A236216.P122461773205987260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P122461773205987260

namespace A236216

/-- `∑[record[A020639(n+2)^10]]` -/
def P122461773205987260.Spec : Prop :=
  ∀ n, P122461773205987260.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P10630469564061189077

`∑[A006530(lt[n, A006530(n+2)]+2)^10]`
-/

namespace A236216.P10630469564061189077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P10630469564061189077

namespace A236216

/-- `∑[A006530(lt[n, A006530(n+2)]+2)^10]` -/
def P10630469564061189077.Spec : Prop :=
  ∀ n, P10630469564061189077.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P13203474246000320917

`∑[(lt[A000010(n+1), A020639(n+1)]+1)^10]`
-/

namespace A236216.P13203474246000320917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1) ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P13203474246000320917

namespace A236216

/-- `∑[(lt[A000010(n+1), A020639(n+1)]+1)^10]` -/
def P13203474246000320917.Spec : Prop :=
  ∀ n, (P13203474246000320917.a n : ℤ) = A236216 (n + 1)

end A236216

/-! ## A236216.P9069569334609510492

`∑[record[A351198(n+2)]]`
-/

namespace A236216.P9069569334609510492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351198 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P9069569334609510492

namespace A236216

/-- `∑[record[A351198(n+2)]]` -/
def P9069569334609510492.Spec : Prop :=
  ∀ n, P9069569334609510492.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P1880491475338744857

`∑[record[A351193(n+2)²]]`
-/

namespace A236216.P1880491475338744857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P1880491475338744857

namespace A236216

/-- `∑[record[A351193(n+2)²]]` -/
def P1880491475338744857.Spec : Prop :=
  ∀ n, P1880491475338744857.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P10572623436194443639

`∑[A008454(A000040(n+1))]`
-/

namespace A236216.P10572623436194443639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P10572623436194443639

namespace A236216

/-- `∑[A008454(A000040(n+1))]` -/
def P10572623436194443639.Spec : Prop :=
  ∀ n, P10572623436194443639.a n = A236216 (n + 1)

end A236216

/-! ## A236216.P10602794720853764545

`∑[A069492(A258602(n+1))²]`
-/

namespace A236216.P10602794720853764545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (A258602 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236216.P10602794720853764545

namespace A236216

/-- `∑[A069492(A258602(n+1))²]` -/
def P10602794720853764545.Spec : Prop :=
  ∀ n, P10602794720853764545.a n = A236216 (n + 1)

end A236216

/-!
# A236217: Numbers not divisible by 3, 5 or 11.

The programs for A236217, the canonical program `A236217.P14395066498749290225` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236217 has offset 1).

The definition of A236217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236217.P14395066498749290225

`filter[A229968(n+1), A011558(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236217

/-- `filter[A229968(n+1), A011558(#)]` -/
def P14395066498749290225.Spec : Prop :=
  ∀ n, P14395066498749290225.a n = A236217 (n + 1)

theorem P14395066498749290225.correct : P14395066498749290225.Spec := by
  intro n
  simp only [A236217, Nat.add_sub_cancel]

end A236217

/-! ## A236217.P2543210620442922839

`∩[A229829(n+1), A229968(n+1)]`
-/

namespace A236217.P2543210620442922839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236217.P2543210620442922839

namespace A236217

/-- `∩[A229829(n+1), A229968(n+1)]` -/
def P2543210620442922839.Spec : Prop :=
  ∀ n, (P2543210620442922839.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P59395759663739055

`∩[A001651(n+1), A236207(n+1)]`
-/

namespace A236217.P59395759663739055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236217.P59395759663739055

namespace A236217

/-- `∩[A001651(n+1), A236207(n+1)]` -/
def P59395759663739055.Spec : Prop :=
  ∀ n, (P59395759663739055.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P13704002578264753423

`∩[A229829(n+1), A236207(n+1)]`
-/

namespace A236217.P13704002578264753423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236217.P13704002578264753423

namespace A236217

/-- `∩[A229829(n+1), A236207(n+1)]` -/
def P13704002578264753423.Spec : Prop :=
  ∀ n, (P13704002578264753423.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P11948599804322749121

`∩[A229968(n+1), A236207(n+1)]`
-/

namespace A236217.P11948599804322749121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236217.P11948599804322749121

namespace A236217

/-- `∩[A229968(n+1), A236207(n+1)]` -/
def P11948599804322749121.Spec : Prop :=
  ∀ n, (P11948599804322749121.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P1823503512594239965

`∩[A047201(n+1), A229968(n+1)]`
-/

namespace A236217.P1823503512594239965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236217.P1823503512594239965

namespace A236217

/-- `∩[A047201(n+1), A229968(n+1)]` -/
def P1823503512594239965.Spec : Prop :=
  ∀ n, (P1823503512594239965.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P16123486796622624065

`∩[A160542(n+1), A229829(n+1)]`
-/

namespace A236217.P16123486796622624065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236217.P16123486796622624065

namespace A236217

/-- `∩[A160542(n+1), A229829(n+1)]` -/
def P16123486796622624065.Spec : Prop :=
  ∀ n, (P16123486796622624065.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P11940499596771134158

`record[A106616(A106612(n+1))]`
-/

namespace A236217.P11940499596771134158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A106612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236217.P11940499596771134158

namespace A236217

/-- `record[A106616(A106612(n+1))]` -/
def P11940499596771134158.Spec : Prop :=
  ∀ n, P11940499596771134158.a n = A236217 (n + 1)

end A236217

/-! ## A236217.P4522497757317868727

`filter[A236207(n+1), A011655(#)]`
-/

namespace A236217.P4522497757317868727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A236217.P4522497757317868727

namespace A236217

/-- `filter[A236207(n+1), A011655(#)]` -/
def P4522497757317868727.Spec : Prop :=
  ∀ n, P4522497757317868727.a n = A236217 (n + 1)

end A236217

/-! ## A236217.P3174804285351189445

`filter[A229829(n+1), A145568(#)]`
-/

namespace A236217.P3174804285351189445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A236217.P3174804285351189445

namespace A236217

/-- `filter[A229829(n+1), A145568(#)]` -/
def P3174804285351189445.Spec : Prop :=
  ∀ n, P3174804285351189445.a n = A236217 (n + 1)

end A236217

/-! ## A236217.P12456493876072775313

`filter[A236207(n+1), A267208(#)]`
-/

namespace A236217.P12456493876072775313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A236217.P12456493876072775313

namespace A236217

/-- `filter[A236207(n+1), A267208(#)]` -/
def P12456493876072775313.Spec : Prop :=
  ∀ n, P12456493876072775313.a n = A236217 (n + 1)

end A236217

/-! ## A236217.P14944785239738204332

`record[A106612(A060791(A051176(n+1)))]`
-/

namespace A236217.P14944785239738204332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A060791 (A051176 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236217.P14944785239738204332

namespace A236217

/-- `record[A106612(A060791(A051176(n+1)))]` -/
def P14944785239738204332.Spec : Prop :=
  ∀ n, P14944785239738204332.a n = A236217 (n + 1)

end A236217

/-! ## A236217.P4221040739189892080

`eq[A051176(n+1), A106612(A060791(n+1))]+1`
-/

namespace A236217.P4221040739189892080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A060791 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A236217.P4221040739189892080

namespace A236217

/-- `eq[A051176(n+1), A106612(A060791(n+1))]+1` -/
def P4221040739189892080.Spec : Prop :=
  ∀ n, (P4221040739189892080.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P392836256339291606

`eq[A051724(n+1), A106621(A106612(n+1))]+1`
-/

namespace A236217.P392836256339291606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106612 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A236217.P392836256339291606

namespace A236217

/-- `eq[A051724(n+1), A106621(A106612(n+1))]+1` -/
def P392836256339291606.Spec : Prop :=
  ∀ n, (P392836256339291606.a n : ℤ) = A236217 (n + 1)

end A236217

/-! ## A236217.P2760445943551512176

`record[A060789(A106612(n+1)+A060791(n+1))]`
-/

namespace A236217.P2760445943551512176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A106612 (n + 1) + A060791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236217.P2760445943551512176

namespace A236217

/-- `record[A060789(A106612(n+1)+A060791(n+1))]` -/
def P2760445943551512176.Spec : Prop :=
  ∀ n, P2760445943551512176.a n = A236217 (n + 1)

end A236217

/-!
# A236218: Sum of the twelfth powers of the first n primes.

The programs for A236218, the canonical program `A236218.P7494143856053409080` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236218 has offset 1).

The definition of A236218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236218.P7494143856053409080

`∑[A030631(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236218

/-- `∑[A030631(n+1)]` -/
def P7494143856053409080.Spec : Prop :=
  ∀ n, P7494143856053409080.a n = A236218 (n + 1)

theorem P7494143856053409080.correct : P7494143856053409080.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel]

end A236218

/-! ## A236218.P12728080310280818933

`∑[A030516(n+1)²]`
-/

namespace A236218.P12728080310280818933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P12728080310280818933

namespace A236218

/-- `∑[A030516(n+1)²]` -/
def P12728080310280818933.Spec : Prop :=
  ∀ n, P12728080310280818933.a n = A236218 (n + 1)

theorem P12728080310280818933.correct : P12728080310280818933.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel, A236218.P12728080310280818933.f1, A236218.P12728080310280818933.a, A236218.P7494143856053409080.f1, A236218.P7494143856053409080.a, A030516, A030516.P1711246340231228216.a, A030631, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236218

/-! ## A236218.P11910958942855326651

`∑[A030514(n+1)^3]`
-/

namespace A236218.P11910958942855326651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P11910958942855326651

namespace A236218

/-- `∑[A030514(n+1)^3]` -/
def P11910958942855326651.Spec : Prop :=
  ∀ n, P11910958942855326651.a n = A236218 (n + 1)

theorem P11910958942855326651.correct : P11910958942855326651.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel, A236218.P11910958942855326651.f1, A236218.P11910958942855326651.a, A236218.P7494143856053409080.f1, A236218.P7494143856053409080.a, A030514, A030514.P11974636125371552077.a, A030631, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236218

/-! ## A236218.P5990105851839061719

`∑[A030078(n+1)^4]`
-/

namespace A236218.P5990105851839061719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P5990105851839061719

namespace A236218

/-- `∑[A030078(n+1)^4]` -/
def P5990105851839061719.Spec : Prop :=
  ∀ n, P5990105851839061719.a n = A236218 (n + 1)

theorem P5990105851839061719.correct : P5990105851839061719.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel, A236218.P5990105851839061719.f1, A236218.P5990105851839061719.a, A236218.P7494143856053409080.f1, A236218.P7494143856053409080.a, A030078, A030078.P13819432151207990454.a, A030631, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236218

/-! ## A236218.P10047621469501742810

`∑[A001248(n+1)^6]`
-/

namespace A236218.P10047621469501742810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P10047621469501742810

namespace A236218

/-- `∑[A001248(n+1)^6]` -/
def P10047621469501742810.Spec : Prop :=
  ∀ n, P10047621469501742810.a n = A236218 (n + 1)

theorem P10047621469501742810.correct : P10047621469501742810.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel, A236218.P10047621469501742810.f1, A236218.P10047621469501742810.a, A236218.P7494143856053409080.f1, A236218.P7494143856053409080.a, A001248, A001248.P16278241061688229202.a, A030631, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236218

/-! ## A236218.P5990300280518689412

`∑[A000040(n+1)^12]`
-/

namespace A236218.P5990300280518689412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P5990300280518689412

namespace A236218

/-- `∑[A000040(n+1)^12]` -/
def P5990300280518689412.Spec : Prop :=
  ∀ n, P5990300280518689412.a n = A236218 (n + 1)

end A236218

/-! ## A236218.P14878280023431182763

`∑[(A006093(n+1)+1)^12]`
-/

namespace A236218.P14878280023431182763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P14878280023431182763

namespace A236218

/-- `∑[(A006093(n+1)+1)^12]` -/
def P14878280023431182763.Spec : Prop :=
  ∀ n, P14878280023431182763.a n = A236218 (n + 1)

theorem P14878280023431182763.correct : P14878280023431182763.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel, A236218.P14878280023431182763.f1, A236218.P14878280023431182763.a, A236218.P7494143856053409080.f1, A236218.P7494143856053409080.a, A006093, A006093.P2906174024863549003.a, A030631, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236218

/-! ## A236218.P15251366879912612608

`∑[(A153481(n+1)+2)²²]`
-/

namespace A236218.P15251366879912612608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A153481 (n + 1) + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P15251366879912612608

namespace A236218

/-- `∑[(A153481(n+1)+2)²²]` -/
def P15251366879912612608.Spec : Prop :=
  ∀ n, P15251366879912612608.a n = A236218 (n + 1)

theorem P15251366879912612608.correct : P15251366879912612608.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel, A236218.P15251366879912612608.f1, A236218.P15251366879912612608.a, A236218.P7494143856053409080.f1, A236218.P7494143856053409080.a, A030631, A030631.P2128528168171137643.a, A153481, A153481.P3996597360084470413.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236218

/-! ## A236218.P6157001077768362122

`∑[(A172190(n+1)/2)²²]`
-/

namespace A236218.P6157001077768362122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A172190 (n + 1) : ℚ) / 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P6157001077768362122

namespace A236218

/-- `∑[(A172190(n+1)/2)²²]` -/
def P6157001077768362122.Spec : Prop :=
  ∀ n, P6157001077768362122.a n = (A236218 (n + 1) : ℚ)

end A236218

/-! ## A236218.P14360172096224866612

`∑[sqrt(A179645(n+1))*A179645(n+1)]`
-/

namespace A236218.P14360172096224866612
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179645 (n + 1) : ℝ) * (A179645 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P14360172096224866612

namespace A236218

/-- `∑[sqrt(A179645(n+1))*A179645(n+1)]` -/
def P14360172096224866612.Spec : Prop :=
  ∀ n, P14360172096224866612.a n = (A236218 (n + 1) : ℝ)

end A236218

/-! ## A236218.P15968831285613588261

`∑[(A000040(n+1)*A001248(n+1))²²]`
-/

namespace A236218.P15968831285613588261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) * A001248 (n + 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P15968831285613588261

namespace A236218

/-- `∑[(A000040(n+1)*A001248(n+1))²²]` -/
def P15968831285613588261.Spec : Prop :=
  ∀ n, P15968831285613588261.a n = A236218 (n + 1)

theorem P15968831285613588261.correct : P15968831285613588261.Spec := by
  intro n
  simp only [A236218, Nat.add_sub_cancel, A236218.P15968831285613588261.f1, A236218.P15968831285613588261.a, A236218.P7494143856053409080.f1, A236218.P7494143856053409080.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030631, A030631.P2128528168171137643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236218

/-! ## A236218.P12894303997129033287

`∑[(A280076(n+2)^3)²]`
-/

namespace A236218.P12894303997129033287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280076 (n + 2) ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P12894303997129033287

namespace A236218

/-- `∑[(A280076(n+2)^3)²]` -/
def P12894303997129033287.Spec : Prop :=
  ∀ n, P12894303997129033287.a n = A236218 (n + 1)

end A236218

/-! ## A236218.P16590747003165492425

`∑[record[A006530(n+2)]^12]`
-/

namespace A236218.P16590747003165492425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P16590747003165492425

namespace A236218

/-- `∑[record[A006530(n+2)]^12]` -/
def P16590747003165492425.Spec : Prop :=
  ∀ n, P16590747003165492425.a n = A236218 (n + 1)

end A236218

/-! ## A236218.P17917392162163102574

`∑[record[A020639(n+2)]^12]`
-/

namespace A236218.P17917392162163102574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P17917392162163102574

namespace A236218

/-- `∑[record[A020639(n+2)]^12]` -/
def P17917392162163102574.Spec : Prop :=
  ∀ n, P17917392162163102574.a n = A236218 (n + 1)

end A236218

/-! ## A236218.P13187209515267133372

`∑[A006530(lt[n, A006530(n+2)]+2)^12]`
-/

namespace A236218.P13187209515267133372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P13187209515267133372

namespace A236218

/-- `∑[A006530(lt[n, A006530(n+2)]+2)^12]` -/
def P13187209515267133372.Spec : Prop :=
  ∀ n, P13187209515267133372.a n = A236218 (n + 1)

end A236218

/-! ## A236218.P17868197881595072446

`∑[(lt[A000010(n+1), A020639(n+1)]+1)^12]`
-/

namespace A236218.P17868197881595072446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1) ^ 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P17868197881595072446

namespace A236218

/-- `∑[(lt[A000010(n+1), A020639(n+1)]+1)^12]` -/
def P17868197881595072446.Spec : Prop :=
  ∀ n, (P17868197881595072446.a n : ℤ) = A236218 (n + 1)

end A236218

/-! ## A236218.P5211935742696130741

`∑[record[A351194(n+2)²]]`
-/

namespace A236218.P5211935742696130741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351194 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P5211935742696130741

namespace A236218

/-- `∑[record[A351194(n+2)²]]` -/
def P5211935742696130741.Spec : Prop :=
  ∀ n, P5211935742696130741.a n = A236218 (n + 1)

end A236218

/-! ## A236218.P233871788378105486

`∑[A008456(A000040(n+1))]`
-/

namespace A236218.P233871788378105486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236218.P233871788378105486

namespace A236218

/-- `∑[A008456(A000040(n+1))]` -/
def P233871788378105486.Spec : Prop :=
  ∀ n, P233871788378105486.a n = A236218 (n + 1)

end A236218

/-!
# A236220: Cubes which when divided by their digital sum, become square.

The programs for A236220, there is no canonical definition to state claims against.
-/

/-! ## A236220.P3695097033953651793

`∩[A001102(n+1), n*n²]`
-/

namespace A236220.P3695097033953651793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001102 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A236220.P3695097033953651793

/-! ## A236220.P15864790128311772006

`∩[A000578(n), A001102(n+1)]`
-/

namespace A236220.P15864790128311772006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236220.P15864790128311772006

/-! ## A236220.P13371702147778422499

`∩[A118720(n+1), A001102(n+1)]`
-/

namespace A236220.P13371702147778422499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236220.P13371702147778422499

/-! ## A236220.P8826190637491435438

`∩[A236750(n+1), n*n²]`
-/

namespace A236220.P8826190637491435438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A236220.P8826190637491435438

/-! ## A236220.P14041299083624362628

`∩[A000578(n), A236750(n+1)]`
-/

namespace A236220.P14041299083624362628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236220.P14041299083624362628

/-!
# A236221: Sum of the thirteenth powers of the first n primes.

The programs for A236221, the canonical program `A236221.P10884310046436513075` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236221 has offset 1).

The definition of A236221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236221.P10884310046436513075

`∑[A138031(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236221

/-- `∑[A138031(n+1)]` -/
def P10884310046436513075.Spec : Prop :=
  ∀ n, P10884310046436513075.a n = A236221 (n + 1)

theorem P10884310046436513075.correct : P10884310046436513075.Spec := by
  intro n
  simp only [A236221, Nat.add_sub_cancel]

end A236221

/-! ## A236221.P15559045155028198814

`∑[A000040(n+1)^13]`
-/

namespace A236221.P15559045155028198814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236221.P15559045155028198814

namespace A236221

/-- `∑[A000040(n+1)^13]` -/
def P15559045155028198814.Spec : Prop :=
  ∀ n, P15559045155028198814.a n = A236221 (n + 1)

end A236221

/-! ## A236221.P5663400630308847642

`∑[A050997(n+1)²*A030078(n+1)]`
-/

namespace A236221.P5663400630308847642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 2 * A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236221.P5663400630308847642

namespace A236221

/-- `∑[A050997(n+1)²*A030078(n+1)]` -/
def P5663400630308847642.Spec : Prop :=
  ∀ n, P5663400630308847642.a n = A236221 (n + 1)

theorem P5663400630308847642.correct : P5663400630308847642.Spec := by
  intro n
  simp only [A236221, Nat.add_sub_cancel, A236221.P5663400630308847642.f1, A236221.P5663400630308847642.a, A236221.P10884310046436513075.f1, A236221.P10884310046436513075.a, A030078, A030078.P13819432151207990454.a, A050997, A050997.P5231147570234137425.a, A138031, A138031.P314039487929949151.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236221

/-! ## A236221.P221638808404847932

`∑[p?[A000961(n+1)]^13]`
-/

namespace A236221.P221638808404847932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236221.P221638808404847932

namespace A236221

/-- `∑[p?[A000961(n+1)]^13]` -/
def P221638808404847932.Spec : Prop :=
  ∀ n, P221638808404847932.a n = A236221 (n + 1)

end A236221

/-! ## A236221.P13645549660889244590

`∑[A010801(A000040(n+1))]`
-/

namespace A236221.P13645549660889244590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010801 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236221.P13645549660889244590

namespace A236221

/-- `∑[A010801(A000040(n+1))]` -/
def P13645549660889244590.Spec : Prop :=
  ∀ n, P13645549660889244590.a n = A236221 (n + 1)

end A236221

/-!
# A236222: Sum of the fourteenth powers of the first n primes.

The programs for A236222, the canonical program `A236222.P5013014953412716250` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236222 has offset 1).

The definition of A236222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236222.P5013014953412716250

`∑[A092759(n+1)²]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236222

/-- `∑[A092759(n+1)²]` -/
def P5013014953412716250.Spec : Prop :=
  ∀ n, P5013014953412716250.a n = A236222 (n + 1)

theorem P5013014953412716250.correct : P5013014953412716250.Spec := by
  intro n
  simp only [A236222, Nat.add_sub_cancel]

end A236222

/-! ## A236222.P9253457020566805981

`∑[A001248(n+1)^7]`
-/

namespace A236222.P9253457020566805981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236222.P9253457020566805981

namespace A236222

/-- `∑[A001248(n+1)^7]` -/
def P9253457020566805981.Spec : Prop :=
  ∀ n, P9253457020566805981.a n = A236222 (n + 1)

theorem P9253457020566805981.correct : P9253457020566805981.Spec := by
  intro n
  simp only [A236222, Nat.add_sub_cancel, A236222.P9253457020566805981.f1, A236222.P9253457020566805981.a, A236222.P5013014953412716250.f1, A236222.P5013014953412716250.a, A001248, A001248.P16278241061688229202.a, A092759, A092759.P10365930146465751826.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236222

/-! ## A236222.P3808080091416158744

`∑[A000040(n+1)^14]`
-/

namespace A236222.P3808080091416158744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236222.P3808080091416158744

namespace A236222

/-- `∑[A000040(n+1)^14]` -/
def P3808080091416158744.Spec : Prop :=
  ∀ n, P3808080091416158744.a n = A236222 (n + 1)

theorem P3808080091416158744.correct : P3808080091416158744.Spec := by
  intro n
  simp only [A236222, Nat.add_sub_cancel, A236222.P3808080091416158744.f1, A236222.P3808080091416158744.a, A236222.P5013014953412716250.f1, A236222.P5013014953412716250.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236222

/-! ## A236222.P16550957028212713846

`∑[record[A351195(n+2)²]]`
-/

namespace A236222.P16550957028212713846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351195 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236222.P16550957028212713846

namespace A236222

/-- `∑[record[A351195(n+2)²]]` -/
def P16550957028212713846.Spec : Prop :=
  ∀ n, P16550957028212713846.a n = A236222 (n + 1)

end A236222

/-! ## A236222.P16583883030104709411

`∑[A017692(A000040(n+1))]`
-/

namespace A236222.P16583883030104709411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017692 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236222.P16583883030104709411

namespace A236222

/-- `∑[A017692(A000040(n+1))]` -/
def P16583883030104709411.Spec : Prop :=
  ∀ n, P16583883030104709411.a n = A236222 (n + 1)

end A236222

/-!
# A236223: Sum of the fifteenth powers of the first n primes.

The programs for A236223, the canonical program `A236223.P9577004228190771243` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236223 has offset 1).

The definition of A236223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236223.P9577004228190771243

`∑[A050997(n+1)^3]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236223

/-- `∑[A050997(n+1)^3]` -/
def P9577004228190771243.Spec : Prop :=
  ∀ n, P9577004228190771243.a n = A236223 (n + 1)

theorem P9577004228190771243.correct : P9577004228190771243.Spec := by
  intro n
  simp only [A236223, Nat.add_sub_cancel]

end A236223

/-! ## A236223.P9106066242984250235

`∑[A030078(n+1)^5]`
-/

namespace A236223.P9106066242984250235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P9106066242984250235

namespace A236223

/-- `∑[A030078(n+1)^5]` -/
def P9106066242984250235.Spec : Prop :=
  ∀ n, P9106066242984250235.a n = A236223 (n + 1)

theorem P9106066242984250235.correct : P9106066242984250235.Spec := by
  intro n
  simp only [A236223, Nat.add_sub_cancel, A236223.P9106066242984250235.f1, A236223.P9106066242984250235.a, A236223.P9577004228190771243.f1, A236223.P9577004228190771243.a, A030078, A030078.P13819432151207990454.a, A050997, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236223

/-! ## A236223.P1290434013557592146

`∑[A000040(n+1)^15]`
-/

namespace A236223.P1290434013557592146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P1290434013557592146

namespace A236223

/-- `∑[A000040(n+1)^15]` -/
def P1290434013557592146.Spec : Prop :=
  ∀ n, P1290434013557592146.a n = A236223 (n + 1)

theorem P1290434013557592146.correct : P1290434013557592146.Spec := by
  intro n
  simp only [A236223, Nat.add_sub_cancel, A236223.P1290434013557592146.f1, A236223.P1290434013557592146.a, A236223.P9577004228190771243.f1, A236223.P9577004228190771243.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236223

/-! ## A236223.P17047606174336026433

`∑[sqrt(A030629(n+1))*A030629(n+1)]`
-/

namespace A236223.P17047606174336026433
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030629 (n + 1) : ℝ) * (A030629 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P17047606174336026433

namespace A236223

/-- `∑[sqrt(A030629(n+1))*A030629(n+1)]` -/
def P17047606174336026433.Spec : Prop :=
  ∀ n, P17047606174336026433.a n = (A236223 (n + 1) : ℝ)

end A236223

/-! ## A236223.P6954910421767040764

`∑[A030516(n+1)²*sqrt(A030516(n+1))]`
-/

namespace A236223.P6954910421767040764
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) ^ 2 : ℝ) * Real.sqrt (A030516 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P6954910421767040764

namespace A236223

/-- `∑[A030516(n+1)²*sqrt(A030516(n+1))]` -/
def P6954910421767040764.Spec : Prop :=
  ∀ n, P6954910421767040764.a n = (A236223 (n + 1) : ℝ)

end A236223

/-! ## A236223.P5121302206108024805

`∑[A010803(A000040(n+1))]`
-/

namespace A236223.P5121302206108024805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010803 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236223.P5121302206108024805

namespace A236223

/-- `∑[A010803(A000040(n+1))]` -/
def P5121302206108024805.Spec : Prop :=
  ∀ n, P5121302206108024805.a n = A236223 (n + 1)

end A236223

/-!
# A236224: 

The programs for A236224, there is no canonical definition to state claims against.
-/

/-! ## A236224.P18142753779533759052

`∑[A179645(n+1)²]`
-/

namespace A236224.P18142753779533759052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P18142753779533759052

/-! ## A236224.P9760306589678039896

`∑[A030514(n+1)^4]`
-/

namespace A236224.P9760306589678039896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P9760306589678039896

/-! ## A236224.P4207526359656092035

`∑[A001248(n+1)^8]`
-/

namespace A236224.P4207526359656092035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P4207526359656092035

/-! ## A236224.P3791610583110487827

`∑[A000040(n+1)^16]`
-/

namespace A236224.P3791610583110487827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P3791610583110487827

/-! ## A236224.P1274720182058294830

`∑[(A172191(n+1)/2)²²]`
-/

namespace A236224.P1274720182058294830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A172191 (n + 1) : ℚ) / 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P1274720182058294830

/-! ## A236224.P6746881838592620392

`∑[A280076(n+2)²²²]`
-/

namespace A236224.P6746881838592620392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A280076 (n + 2) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P6746881838592620392

/-! ## A236224.P2245862393964225602

`∑[p?[A000961(n+1)]^16]`
-/

namespace A236224.P2245862393964225602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P2245862393964225602

/-! ## A236224.P13227945841266179998

`∑[record[A006530(2*(n+1))^16]]`
-/

namespace A236224.P13227945841266179998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) ^ 16

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P13227945841266179998

/-! ## A236224.P10420058603034284309

`∑[A057602(2*n+2)²²²]`
-/

namespace A236224.P10420058603034284309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A057602 (2 * n + 2) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P10420058603034284309

/-! ## A236224.P82269884546722767

`∑[record[A117367(n+1)^16]]`
-/

namespace A236224.P82269884546722767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (n + 1) ^ 16

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P82269884546722767

/-! ## A236224.P425048441974651275

`∑[record[A005065(n+2)²²]]`
-/

namespace A236224.P425048441974651275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005065 (n + 2) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P425048441974651275

/-! ## A236224.P5226272342585734229

`∑[A010804(A000040(n+1))]`
-/

namespace A236224.P5226272342585734229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010804 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236224.P5226272342585734229

/-!
# A236225: 

The programs for A236225, there is no canonical definition to state claims against.
-/

/-! ## A236225.P10671942984154068656

`∑[A000040(n+1)^17]`
-/

namespace A236225.P10671942984154068656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236225.P10671942984154068656

/-! ## A236225.P18348880784051236450

`∑[p?[A000961(n+1)]^17]`
-/

namespace A236225.P18348880784051236450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236225.P18348880784051236450

/-! ## A236225.P13951228050436784966

`∑[p?[A037143(n+1)]^17]`
-/

namespace A236225.P13951228050436784966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236225.P13951228050436784966

/-! ## A236225.P5198125552454721447

`∑[p?[A000217(n)%(n+1)]^17]`
-/

namespace A236225.P5198125552454721447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236225.P5198125552454721447

/-! ## A236225.P1323617096905347948

`∑[p?[A107750(n)]^17]`
-/

namespace A236225.P1323617096905347948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236225.P1323617096905347948

/-! ## A236225.P3709957496442288079

`∑[A010805(A000040(n+1))]`
-/

namespace A236225.P3709957496442288079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010805 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236225.P3709957496442288079

/-! ## A236225.P13431316000306231470

`∑[A010805(p?[A129767(n+1)])]`
-/

namespace A236225.P13431316000306231470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010805 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236225.P13431316000306231470

/-!
# A236226: 

The programs for A236226, there is no canonical definition to state claims against.
-/

/-! ## A236226.P3013949814427677957

`∑[A179665(n+1)²]`
-/

namespace A236226.P3013949814427677957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179665 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P3013949814427677957

/-! ## A236226.P8274791513897824411

`∑[A030516(n+1)^3]`
-/

namespace A236226.P8274791513897824411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P8274791513897824411

/-! ## A236226.P3520637652147390841

`∑[A030078(n+1)^6]`
-/

namespace A236226.P3520637652147390841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P3520637652147390841

/-! ## A236226.P9903490413156062538

`∑[A001248(n+1)^9]`
-/

namespace A236226.P9903490413156062538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P9903490413156062538

/-! ## A236226.P9455004386425933925

`∑[A000040(n+1)^18]`
-/

namespace A236226.P9455004386425933925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P9455004386425933925

/-! ## A236226.P9399151117359653056

`∑[sqrt(A030631(n+1))*A030631(n+1)]`
-/

namespace A236226.P9399151117359653056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030631 (n + 1) : ℝ) * (A030631 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P9399151117359653056

/-! ## A236226.P15683193459071023227

`∑[p?[A000961(n+1)]^18]`
-/

namespace A236226.P15683193459071023227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P15683193459071023227

/-! ## A236226.P18159953998481333008

`∑[A010806(A000040(n+1))]`
-/

namespace A236226.P18159953998481333008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010806 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236226.P18159953998481333008

/-!
# A236227: 

The programs for A236227, there is no canonical definition to state claims against.
-/

/-! ## A236227.P1130970517721234627

`∑[A000040(n+1)^19]`
-/

namespace A236227.P1130970517721234627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P1130970517721234627

/-! ## A236227.P10474860222922698526

`∑[p?[A000961(n+1)]^19]`
-/

namespace A236227.P10474860222922698526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P10474860222922698526

/-! ## A236227.P5721738260968525695

`∑[record[A006530(n+2)^19]]`
-/

namespace A236227.P5721738260968525695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 19

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P5721738260968525695

/-! ## A236227.P5057633485788429129

`∑[p?[A004709(n+1)]^19]`
-/

namespace A236227.P5057633485788429129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P5057633485788429129

/-! ## A236227.P12346682151611211189

`∑[p?[A007916(n+1)]^19]`
-/

namespace A236227.P12346682151611211189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P12346682151611211189

/-! ## A236227.P7264983570835297354

`∑[A010807(p?[A014681(n)])]`
-/

namespace A236227.P7264983570835297354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010807 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P7264983570835297354

/-! ## A236227.P9650792147387008531

`∑[A010807(A000040(n+1))]`
-/

namespace A236227.P9650792147387008531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010807 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P9650792147387008531

/-! ## A236227.P10132517327470766384

`∑[p?[A056240(n+2)]^19]`
-/

namespace A236227.P10132517327470766384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236227.P10132517327470766384

/-!
# A236228: Number of solutions (x,y,z) to the Diophantine equation 2^x + p^y = z^2 where p = prime(n).

The programs for A236228, there is no canonical definition to state claims against.
-/

/-! ## A236228.P9483556628418241507

`A065331(A007913(n+1)*A054643(n+1))`
-/

namespace A236228.P9483556628418241507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A007913 (n + 1) * A054643 (n + 1)).toNat

end

end A236228.P9483556628418241507

/-! ## A236228.P16510851551072779275

`A089128(A007913(n+1)*A054643(n+1))`
-/

namespace A236228.P16510851551072779275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (A007913 (n + 1) * A054643 (n + 1)).toNat

end

end A236228.P16510851551072779275

/-! ## A236228.P5721563000645588627

`A065331(lcm(A007913(n+1), A054643(n+1)))`
-/

namespace A236228.P5721563000645588627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (Int.lcm (A007913 (n + 1)) (A054643 (n + 1)))

end

end A236228.P5721563000645588627

/-! ## A236228.P3635681402454938090

`A336643((n+1)*A105550(n+1))`
-/

namespace A236228.P3635681402454938090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 ((n + 1 : ℤ) * A105550 (n + 1)).toNat

end

end A236228.P3635681402454938090

/-! ## A236228.P14785036212238489257

`A193870(A270831(3*n+2))+A045778(n+1)`
-/

namespace A236228.P14785036212238489257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (A270831 (3 * n + 2)).toNat + A045778 (n + 1)

end

end A236228.P14785036212238489257

/-!
# A236234: Number of binary words of length n with exactly 5 (possibly overlapping) occurrences of the subword given by the binary expansion of n.

The programs for A236234, there is no canonical definition to state claims against.
-/

/-! ## A236234.P8183532313916533902

`A104477(xor(2, C(n+7, 7)))`
-/

namespace A236234.P8183532313916533902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (Nat.xor 2 (Nat.choose (n + 7) 7))

end

end A236234.P8183532313916533902

/-! ## A236234.P10654559163374942630

`A178516(A278667(n))`
-/

namespace A236234.P10654559163374942630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178516 (A278667 n).toNat

end

end A236234.P10654559163374942630

/-! ## A236234.P5014023059954067113

`A382954(A238159(n))`
-/

namespace A236234.P5014023059954067113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382954 (A238159 n).toNat

end

end A236234.P5014023059954067113

/-! ## A236234.P1523610089854312106

`A076948(A148566(n+1))`
-/

namespace A236234.P1523610089854312106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (A148566 (n + 1)).toNat

end

end A236234.P1523610089854312106

/-! ## A236234.P8632998726125337925

`A273666(C(A350260(n), n))`
-/

namespace A236234.P8632998726125337925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273666 (Nat.choose (A350260 n).toNat n)

end

end A236234.P8632998726125337925

/-!
# A236240: Multiples of 6 that either are Averages of Twin Prime Pairs (ATPP), or become ATPP when multiplied by 3.

The programs for A236240, there is no canonical definition to state claims against.
-/

/-! ## A236240.P1937854616836701486

`∑[A004016(A000786(n)²)]`
-/

namespace A236240.P1937854616836701486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A000786 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236240.P1937854616836701486

/-! ## A236240.P15936522125962165057

`∑[A004016(A108441(n)²)]`
-/

namespace A236240.P15936522125962165057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A108441 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236240.P15936522125962165057

/-! ## A236240.P588695902537935983

`∑[A004016(A124429(n)²)]`
-/

namespace A236240.P588695902537935983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A124429 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236240.P588695902537935983

/-! ## A236240.P1330298313565692684

`∑[A004016(A320067(n)²)]`
-/

namespace A236240.P1330298313565692684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A320067 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236240.P1330298313565692684

/-! ## A236240.P552419766154694008

`∑[A004016(A001224(n+1)²)]`
-/

namespace A236240.P552419766154694008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A001224 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236240.P552419766154694008

/-!
# A236244: Records in A235598.

The programs for A236244, there is no canonical definition to state claims against.
-/

/-! ## A236244.P3032165945325391690

`record[A235598(n)]`
-/

namespace A236244.P3032165945325391690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236244.P3032165945325391690

/-!
# A236245: Primes of the form C(2*m, m) + prime(m), where C(2*m, m) = (2*m)!/(m!)^2.

The programs for A236245, there is no canonical definition to state claims against.
-/

/-! ## A236245.P9930140869277863188

`A000984(A236242(n+1))+A000040(A236242(n+1))`
-/

namespace A236245.P9930140869277863188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A236242 (n + 1)).toNat + A000040 (A236242 (n + 1)).toNat

end

end A236245.P9930140869277863188

/-!
# A236246: Indices n for which A229037(n)=1.

The programs for A236246, there is no canonical definition to state claims against.
-/

/-! ## A236246.P6145638210144550605

`record[(n+1)/A229037(n+1)]`
-/

namespace A236246.P6145638210144550605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A229037 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236246.P6145638210144550605

/-! ## A236246.P17140695451765728060

`record[root(A000027(n+1), A229037(n+1))]`
-/

namespace A236246.P17140695451765728060
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A229037 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236246.P17140695451765728060

/-! ## A236246.P7916728777566436360

`eq[1, A229037(n+1)]+1`
-/

namespace A236246.P7916728777566436360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236246.P7916728777566436360

/-! ## A236246.P14432845310459241405

`eq[A057427(n), A229037(A028310(n))]`
-/

namespace A236246.P14432845310459241405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229037 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236246.P14432845310459241405

/-! ## A236246.P8987138884313846619

`record[gcd(n+1, A003002(A229037(n+1)-1))]`
-/

namespace A236246.P8987138884313846619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003002 (A229037 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236246.P8987138884313846619

/-!
# A236247: Sequence of distinct least squares such that the arithmetic mean of the first n squares is also a square.

The programs for A236247, there is no canonical definition to state claims against.
-/

/-! ## A236247.P14370588685737421264

`A141391(n+1)²`
-/

namespace A236247.P14370588685737421264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141391 (n + 1) ^ 2

end

end A236247.P14370588685737421264

/-! ## A236247.P1744388240274260729

`A141391(2*(n+1)-(n+1))^2`
-/

namespace A236247.P1744388240274260729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141391 (2 * (n + 1) - (n + 1)) ^ 2

end

end A236247.P1744388240274260729

/-! ## A236247.P1825827539572012062

`A141391(n+1)*A141391(-xor(n, -1))`
-/

namespace A236247.P1825827539572012062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141391 (n + 1) * A141391 (-Int.xor (n : ℤ) (-1)).toNat

end

end A236247.P1825827539572012062

/-! ## A236247.P16055037564248076339

`A141391(A000027(n+1))*A141391(n+1)`
-/

namespace A236247.P16055037564248076339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141391 (A000027 (n + 1)).toNat * A141391 (n + 1)

end

end A236247.P16055037564248076339

/-! ## A236247.P8869667899595614710

`A141391(n+1)*A141391((n+1)%A008383(n+1))`
-/

namespace A236247.P8869667899595614710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141391 (n + 1) * A141391 (Int.tmod (n + 1 : ℤ) (A008383 (n + 1))).toNat

end

end A236247.P8869667899595614710

/-!
# A236248: Numbers m with C(2*m, m) - prime(m) prime, where C(2*m, m) = (2*m)!/(m!)^2.

The programs for A236248, there is no canonical definition to state claims against.
-/

/-! ## A236248.P9000422105599810622

`A001222(A230744(n+1))+((1-n)²+n)*floor(n-atan(n))!`
-/

namespace A236248.P9000422105599810622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A230744 (n + 1)).toNat + ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ)

end

end A236248.P9000422105599810622

/-! ## A236248.P17761933852089349383

`A319434(A111439(Δ[n²])*A326358(n))`
-/

namespace A236248.P17761933852089349383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319434 (A111439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A326358 n).toNat

end

end A236248.P17761933852089349383

/-!
# A236251: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236251, there is no canonical definition to state claims against.
-/

/-! ## A236251.P5396181161875765627

`A236254(∑[n]+1)`
-/

namespace A236251.P5396181161875765627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236251.P5396181161875765627

/-! ## A236251.P15895477384002813356

`lcm(2, A236254(A000124(n)))`
-/

namespace A236251.P15895477384002813356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236254 (A000124 n).toNat)

end

end A236251.P15895477384002813356

/-! ## A236251.P3644997943003399966

`record[A236254(A246276(n+1))]`
-/

namespace A236251.P3644997943003399966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236251.P3644997943003399966

/-! ## A236251.P17941918807460456979

`record[A236254(A286244(n+1))]`
-/

namespace A236251.P17941918807460456979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236251.P17941918807460456979

/-! ## A236251.P7158891512680759762

`record[A010054(n)*A236254(n+1)]`
-/

namespace A236251.P7158891512680759762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236251.P7158891512680759762

/-!
# A236252: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236252, there is no canonical definition to state claims against.
-/

/-! ## A236252.P3604042551360159303

`A236254(∑[n+1]+2)`
-/

namespace A236252.P3604042551360159303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236252.P3604042551360159303

/-! ## A236252.P1101827219419071090

`record[A010054(n)*A236254(n+2)]`
-/

namespace A236252.P1101827219419071090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236254 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236252.P1101827219419071090

/-! ## A236252.P59165264268785677

`A236254(A000096(n)+3)+and(2, n²)`
-/

namespace A236252.P59165264268785677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (A000096 n + 3).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A236252.P59165264268785677

/-! ## A236252.P10976192540370271034

`record[A236254(A004736(3*(n+1)²-1))]`
-/

namespace A236252.P10976192540370271034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (A004736 (3 * (n + 1) ^ 2 - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236252.P10976192540370271034

/-!
# A236253: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236253, there is no canonical definition to state claims against.
-/

/-! ## A236253.P7832891979591765207

`A236254(A167614(n+1))`
-/

namespace A236253.P7832891979591765207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (A167614 (n + 1)).toNat

end

end A236253.P7832891979591765207

/-! ## A236253.P7753070238818572998

`A236254(∑[n+3]+1)`
-/

namespace A236253.P7753070238818572998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236253.P7753070238818572998

/-!
# A236255: Prime numbers s for which there exist primes p, q, r such that phi(p*q*s)=phi(r*s^3) and sigma(p*q*s)=sigma(r*s^3).

The programs for A236255, there is no canonical definition to state claims against.
-/

/-! ## A236255.P883194390020047939

`p?[lt[A301917(2*(n+1)), 55]]`
-/

namespace A236255.P883194390020047939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301917 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236255.P883194390020047939

/-! ## A236255.P13407316557903782342

`A301918(A245388(n+1))`
-/

namespace A236255.P13407316557903782342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301918 (A245388 (n + 1)).toNat

end

end A236255.P13407316557903782342

/-! ## A236255.P1825422626832173291

`A389810(A027748(n+1)*A256195(n))`
-/

namespace A236255.P1825422626832173291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389810 (A027748 (n + 1) * A256195 n).toNat

end

end A236255.P1825422626832173291

/-!
# A236257: a(n) = 2*n^2 - 7*n + 9.

The programs for A236257, the canonical program `A236257.P10668576513151047033` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236257 has offset 0).

The definition of A236257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²-7*n+9` (program `A236257.P10668576513151047033`, by `A236257.P10668576513151047033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236257.P10668576513151047033

`2*n²-7*n+9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236257

/-- `2*n²-7*n+9` -/
def P10668576513151047033.Spec : Prop :=
  ∀ n, P10668576513151047033.a n = A236257 n

theorem P10668576513151047033.correct : P10668576513151047033.Spec := by
  intro n
  simp only [A236257]

end A236257

/-! ## A236257.P5421520118364825853

`∑[a(n-1)+4]` with `a(0)=9, a(1)=-5`
-/

namespace A236257.P5421520118364825853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, -5] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236257.P5421520118364825853

namespace A236257

/-- `∑[a(n-1)+4]` -/
def P5421520118364825853.Spec : Prop :=
  ∀ n, P5421520118364825853.a n = A236257 n

end A236257

/-! ## A236257.P8623102365876905057

`abs(9-a(n-1)-4*n)` with `a(0)=9`
-/

namespace A236257.P8623102365876905057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  |9 - a (n - 1) - (4 * n : ℤ)|

end

end A236257.P8623102365876905057

namespace A236257

/-- `abs(9-a(n-1)-4*n)` -/
def P8623102365876905057.Spec : Prop :=
  ∀ n, P8623102365876905057.a n = A236257 n

end A236257

/-! ## A236257.P2703370897154698317

`abs(7*n-A339048(n))`
-/

namespace A236257.P2703370897154698317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A339048 n|

end

end A236257.P2703370897154698317

namespace A236257

/-- `abs(7*n-A339048(n))` -/
def P2703370897154698317.Spec : Prop :=
  ∀ n, P2703370897154698317.a n = A236257 n

end A236257

/-! ## A236257.P1501418138126432639

`abs(A016993(n)-A255845(n))`
-/

namespace A236257.P1501418138126432639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016993 n - A255845 n|

end

end A236257.P1501418138126432639

namespace A236257

/-- `abs(A016993(n)-A255845(n))` -/
def P1501418138126432639.Spec : Prop :=
  ∀ n, P1501418138126432639.a n = A236257 n

end A236257

/-! ## A236257.P7818450387364018851

`abs(A017041(n)-A255846(n))`
-/

namespace A236257.P7818450387364018851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017041 n - A255846 n|

end

end A236257.P7818450387364018851

namespace A236257

/-- `abs(A017041(n)-A255846(n))` -/
def P7818450387364018851.Spec : Prop :=
  ∀ n, P7818450387364018851.a n = A236257 n

end A236257

/-! ## A236257.P5566441155636098770

`gcd(A016993(n)-A255845(n), A000038(n+1))`
-/

namespace A236257.P5566441155636098770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016993 n - A255845 n) (A000038 (n + 1))

end

end A236257.P5566441155636098770

namespace A236257

/-- `gcd(A016993(n)-A255845(n), A000038(n+1))` -/
def P5566441155636098770.Spec : Prop :=
  ∀ n, (P5566441155636098770.a n : ℤ) = A236257 n

end A236257

/-! ## A236257.P1165474216494846385

`A114964(2*n+1)%A167487(2*(n+2))`
-/

namespace A236257.P1165474216494846385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114964 (2 * n + 1)) (A167487 (2 * (n + 2)))

end

end A236257.P1165474216494846385

namespace A236257

/-- `A114964(2*n+1)%A167487(2*(n+2))` -/
def P1165474216494846385.Spec : Prop :=
  ∀ n, P1165474216494846385.a n = A236257 n

end A236257

/-! ## A236257.P988424667783447741

`A000027(n+5-A147973(n+1))`
-/

namespace A236257.P988424667783447741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 5 : ℤ) - A147973 (n + 1)).toNat

end

end A236257.P988424667783447741

namespace A236257

/-- `A000027(n+5-A147973(n+1))` -/
def P988424667783447741.Spec : Prop :=
  ∀ n, P988424667783447741.a n = A236257 n

end A236257

/-! ## A236257.P4654534812058868423

`A000027(A001844(n)-(9*n-8))`
-/

namespace A236257.P4654534812058868423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001844 n - ((9 * n : ℤ) - 8)).toNat

end

end A236257.P4654534812058868423

namespace A236257

/-- `A000027(A001844(n)-(9*n-8))` -/
def P4654534812058868423.Spec : Prop :=
  ∀ n, P4654534812058868423.a n = A236257 n

end A236257

/-! ## A236257.P16831464252445001553

`-((A016993(n)-A255845(n))*A007318(∑[n]))`
-/

namespace A236257.P16831464252445001553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A016993 n - A255845 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A236257.P16831464252445001553

namespace A236257

/-- `-((A016993(n)-A255845(n))*A007318(∑[n]))` -/
def P16831464252445001553.Spec : Prop :=
  ∀ n, P16831464252445001553.a n = A236257 n

end A236257

/-!
# A236259: Number of (n+1)X(1+1) 0..3 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..3 introduced row-major order.

The programs for A236259, there is no canonical definition to state claims against.
-/

/-! ## A236259.P14324997411659952155

`A236262(∑[n]+1)`
-/

namespace A236259.P14324997411659952155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236259.P14324997411659952155

/-! ## A236259.P4367607929426838923

`record[A236262(A246276(n+1))]`
-/

namespace A236259.P4367607929426838923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236259.P4367607929426838923

/-! ## A236259.P5637838708522487080

`record[A236262(A254052(n+1))]`
-/

namespace A236259.P5637838708522487080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236259.P5637838708522487080

/-! ## A236259.P17094657446409447341

`record[A236262(A286235(n+1))]`
-/

namespace A236259.P17094657446409447341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236259.P17094657446409447341

/-! ## A236259.P17996665109450146336

`record[A236262(A252460(n+2)-1)]`
-/

namespace A236259.P17996665109450146336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (A252460 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236259.P17996665109450146336

/-!
# A236260: Number of (n+1)X(2+1) 0..3 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..3 introduced row-major order.

The programs for A236260, there is no canonical definition to state claims against.
-/

/-! ## A236260.P13512346748850014127

`A236262(∑[n+1]+2)`
-/

namespace A236260.P13512346748850014127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236260.P13512346748850014127

/-! ## A236260.P13267221887507156646

`record[A236262(A286235(n+1)+1)]`
-/

namespace A236260.P13267221887507156646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236260.P13267221887507156646

/-! ## A236260.P17214593102763228798

`record[A010054(n)*A236262(n+2)]`
-/

namespace A236260.P17214593102763228798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236260.P17214593102763228798

/-! ## A236260.P12549649979740519984

`record[gcd(A236262(n+2), A331781(n+1))]`
-/

namespace A236260.P12549649979740519984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236262 (n + 2)) (A331781 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236260.P12549649979740519984

/-!
# A236261: Number of (n+1)X(3+1) 0..3 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..3 introduced row-major order.

The programs for A236261, there is no canonical definition to state claims against.
-/

/-! ## A236261.P7843050831177295533

`A236262(∑[n+2]+4)`
-/

namespace A236261.P7843050831177295533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236261.P7843050831177295533

/-! ## A236261.P8862325767651963713

`A236262(A167614(n+1))+A086015(n)`
-/

namespace A236261.P8862325767651963713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (A167614 (n + 1)).toNat + A086015 n

end

end A236261.P8862325767651963713

/-! ## A236261.P16681171252512658903

`A236262(A167614(n+1))+A105516(n)`
-/

namespace A236261.P16681171252512658903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236262 (A167614 (n + 1)).toNat + A105516 n

end

end A236261.P16681171252512658903

/-!
# A236263: a(n) = |{0 < k < n: m = phi(k)/2 + phi(n-k)/8 is an integer with m! + prime(m) prime}|, where phi(.) is Euler's totient function.

The programs for A236263, there is no canonical definition to state claims against.
-/

/-! ## A236263.P706459943364087823

`A236412(n+1)+A121373(A062739(3*n+4))`
-/

namespace A236263.P706459943364087823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236412 (n + 1) + A121373 (A062739 (3 * n + 4)).toNat

end

end A236263.P706459943364087823

/-!
# A236264: Even indices of Fibonacci numbers which are the sum of two squares.

The programs for A236264, there is no canonical definition to state claims against.
-/

/-! ## A236264.P1635721407265630517

`record[2*and(1, n)*A124132(A152271(n))]`
-/

namespace A236264.P1635721407265630517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℤ) * A124132 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236264.P1635721407265630517

/-! ## A236264.P14708949099201087287

`A005843(A124132(A028310(n))%A078057(n))`
-/

namespace A236264.P14708949099201087287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A124132 (A028310 n).toNat) (A078057 n)).toNat

end

end A236264.P14708949099201087287

/-! ## A236264.P13960331933558584427

`A005843(n/A028310(n))*A124132(A028310(n))`
-/

namespace A236264.P13960331933558584427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat * A124132 (A028310 n).toNat

end

end A236264.P13960331933558584427

/-! ## A236264.P2563909148876260656

`record[A269966(A000265(n+1))%(n+1)²]`
-/

namespace A236264.P2563909148876260656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269966 (A000265 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236264.P2563909148876260656

/-! ## A236264.P12223772644533117926

`record[A000040(n+1)%2*A269966(A000265(n+1))]`
-/

namespace A236264.P12223772644533117926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A269966 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236264.P12223772644533117926

/-!
# A236266: Lexicographically earliest sequence of nonnegative integers such that no three points (i,a(i)), (j,a(j)), (n,a(n)) are collinear.

The programs for A236266, there is no canonical definition to state claims against.
-/

/-! ## A236266.P9746735420193968800

`A236335(n+1)-1`
-/

namespace A236266.P9746735420193968800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236335 (n + 1) - 1

end

end A236266.P9746735420193968800

/-! ## A236266.P9718687534353274367

`(A236335(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A236266.P9718687534353274367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236335 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A236266.P9718687534353274367

/-! ## A236266.P11972026691316844479

`(A236335(n+1)+A004793(n+1))%A033160(n+1)`
-/

namespace A236266.P11972026691316844479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236335 (n + 1) + A004793 (n + 1)) (A033160 (n + 1))

end

end A236266.P11972026691316844479

/-! ## A236266.P18244339804102065371

`floor(A005836(n+1)/A004793(n+1)*A236335(n+1))`
-/

namespace A236266.P18244339804102065371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005836 (n + 1) : ℚ) / (A004793 (n + 1) : ℚ) * (A236335 (n + 1) : ℚ)⌋

end

end A236266.P18244339804102065371

/-! ## A236266.P10961009539239781039

`A023443(A236335(n+1))`
-/

namespace A236266.P10961009539239781039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A236335 (n + 1)).toNat

end

end A236266.P10961009539239781039

/-!
# A236267: a(n) = 8*n^2 + 3*n + 1.

The programs for A236267, the canonical program `A236267.P9314982073022898083` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236267 has offset 0).

The definition of A236267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+3*n+1` (program `A236267.P9314982073022898083`, by `A236267.P9314982073022898083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236267.P9314982073022898083

`8*n²+3*n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236267

/-- `8*n²+3*n+1` -/
def P9314982073022898083.Spec : Prop :=
  ∀ n, (P9314982073022898083.a n : ℤ) = A236267 n

theorem P9314982073022898083.correct : P9314982073022898083.Spec := by
  intro n
  simp only [A236267]

end A236267

/-! ## A236267.P10814125889067898326

`∑[a(n-1)+16]` with `a(0)=1, a(1)=11`
-/

namespace A236267.P10814125889067898326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236267.P10814125889067898326

namespace A236267

/-- `∑[a(n-1)+16]` -/
def P10814125889067898326.Spec : Prop :=
  ∀ n, (P10814125889067898326.a n : ℤ) = A236267 n

end A236267

/-! ## A236267.P5233218157975905164

`∑[ogf((1+9x+6x^2)/(1-2x+x^2))]`
-/

namespace A236267.P5233218157975905164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236267.P5233218157975905164

namespace A236267

/-- `∑[ogf((1+9x+6x^2)/(1-2x+x^2))]` -/
def P5233218157975905164.Spec : Prop :=
  ∀ n, P5233218157975905164.a n = A236267 n

end A236267

/-! ## A236267.P8710278985403771764

`ogf((1+9x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A236267.P8710278985403771764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 6] [1, -3, 3, -1] n

end

end A236267.P8710278985403771764

namespace A236267

/-- `ogf((1+9x+6x^2)/(1-3x+3x^2-x^3))` -/
def P8710278985403771764.Spec : Prop :=
  ∀ n, P8710278985403771764.a n = A236267 n

end A236267

/-! ## A236267.P9999649203605332892

`abs(Δ[C(4*n, 3)/4]-n)`
-/

namespace A236267.P9999649203605332892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℚ)|

end

end A236267.P9999649203605332892

namespace A236267

/-- `abs(Δ[C(4*n, 3)/4]-n)` -/
def P9999649203605332892.Spec : Prop :=
  ∀ n, P9999649203605332892.a n = (A236267 n : ℚ)

end A236267

/-! ## A236267.P16783537013886769372

`(C(7*n+2+n, 2)+3)/4`
-/

namespace A236267.P16783537013886769372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n + 2 + n) 2 + 3 : ℚ) / 4

end

end A236267.P16783537013886769372

namespace A236267

/-- `(C(7*n+2+n, 2)+3)/4` -/
def P16783537013886769372.Spec : Prop :=
  ∀ n, P16783537013886769372.a n = (A236267 n : ℚ)

theorem P16783537013886769372.correct : P16783537013886769372.Spec := by
  intro n
  simp only [A236267, Nat.add_sub_cancel, A236267.P16783537013886769372.a, A236267.P9314982073022898083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A236267

/-! ## A236267.P8147822621435547504

`abs(4*C(2*n+1, 2)-(n-1))`
-/

namespace A236267.P8147822621435547504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * Nat.choose (2 * n + 1) 2 : ℤ) - ((n : ℤ) - 1)|

end

end A236267.P8147822621435547504

namespace A236267

/-- `abs(4*C(2*n+1, 2)-(n-1))` -/
def P8147822621435547504.Spec : Prop :=
  ∀ n, P8147822621435547504.a n = A236267 n

end A236267

/-! ## A236267.P6867152201688976181

`abs(lcm(2*n+1, 4*n)-(n-1))`
-/

namespace A236267.P6867152201688976181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 1) (4 * n) : ℤ) - ((n : ℤ) - 1)|

end

end A236267.P6867152201688976181

namespace A236267

/-- `abs(lcm(2*n+1, 4*n)-(n-1))` -/
def P6867152201688976181.Spec : Prop :=
  ∀ n, P6867152201688976181.a n = A236267 n

end A236267

/-! ## A236267.P4017949612592776736

`abs(n-A102083(n))`
-/

namespace A236267.P4017949612592776736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A102083 n|

end

end A236267.P4017949612592776736

namespace A236267

/-- `abs(n-A102083(n))` -/
def P4017949612592776736.Spec : Prop :=
  ∀ n, P4017949612592776736.a n = A236267 n

end A236267

/-! ## A236267.P16350649239264037475

`abs(A033566(n)+2+n)`
-/

namespace A236267.P16350649239264037475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033566 n + 2 + (n : ℤ)|

end

end A236267.P16350649239264037475

namespace A236267

/-- `abs(A033566(n)+2+n)` -/
def P16350649239264037475.Spec : Prop :=
  ∀ n, P16350649239264037475.a n = A236267 n

end A236267

/-! ## A236267.P16891731387985134137

`abs(n-(A033586(n)+1))`
-/

namespace A236267.P16891731387985134137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A033586 n + 1)|

end

end A236267.P16891731387985134137

namespace A236267

/-- `abs(n-(A033586(n)+1))` -/
def P16891731387985134137.Spec : Prop :=
  ∀ n, P16891731387985134137.a n = A236267 n

end A236267

/-! ## A236267.P304728949299030736

`abs(3*n-A014634(n))`
-/

namespace A236267.P304728949299030736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A014634 n|

end

end A236267.P304728949299030736

namespace A236267

/-- `abs(3*n-A014634(n))` -/
def P304728949299030736.Spec : Prop :=
  ∀ n, P304728949299030736.a n = A236267 n

end A236267

/-! ## A236267.P2608572582265618345

`∑[abs(4*(A008574(n)-1)-1)]`
-/

namespace A236267.P2608572582265618345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * (A008574 n - 1) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236267.P2608572582265618345

namespace A236267

/-- `∑[abs(4*(A008574(n)-1)-1)]` -/
def P2608572582265618345.Spec : Prop :=
  ∀ n, P2608572582265618345.a n = A236267 n

end A236267

/-! ## A236267.P3730261106753731911

`abs(A033586(n)-A023443(n))`
-/

namespace A236267.P3730261106753731911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033586 n - A023443 n|

end

end A236267.P3730261106753731911

namespace A236267

/-- `abs(A033586(n)-A023443(n))` -/
def P3730261106753731911.Spec : Prop :=
  ∀ n, P3730261106753731911.a n = A236267 n

end A236267

/-! ## A236267.P1911067825593084310

`abs(A008586(n)-A194268(n))`
-/

namespace A236267.P1911067825593084310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008586 n - A194268 n|

end

end A236267.P1911067825593084310

namespace A236267

/-- `abs(A008586(n)-A194268(n))` -/
def P1911067825593084310.Spec : Prop :=
  ∀ n, P1911067825593084310.a n = A236267 n

end A236267

/-! ## A236267.P14600315012787172982

`abs(2-∑[A017077(A004277(n)-1)+2])`
-/

namespace A236267.P14600315012787172982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A004277 n - 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A236267.P14600315012787172982

namespace A236267

/-- `abs(2-∑[A017077(A004277(n)-1)+2])` -/
def P14600315012787172982.Spec : Prop :=
  ∀ n, P14600315012787172982.a n = A236267 n

end A236267

/-! ## A236267.P9192475422891188917

`A057029(Δ[n²])`
-/

namespace A236267.P9192475422891188917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057029 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A236267.P9192475422891188917

namespace A236267

/-- `A057029(Δ[n²])` -/
def P9192475422891188917.Spec : Prop :=
  ∀ n, P9192475422891188917.a n = A236267 n

end A236267

/-! ## A236267.P8339756935273059109

`A185669(2*n)/2`
-/

namespace A236267.P8339756935273059109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185669 (2 * n) : ℚ) / 2

end

end A236267.P8339756935273059109

namespace A236267

/-- `A185669(2*n)/2` -/
def P8339756935273059109.Spec : Prop :=
  ∀ n, P8339756935273059109.a n = (A236267 n : ℚ)

theorem P8339756935273059109.correct : P8339756935273059109.Spec := by
  intro n
  simp only [A236267, Nat.add_sub_cancel, A236267.P8339756935273059109.a, A236267.P9314982073022898083.a, A185669, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236267

/-! ## A236267.P7862383774240612350

`ceil(A033951(2*n)/2)`
-/

namespace A236267.P7862383774240612350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033951 (2 * n) : ℚ) / 2⌉

end

end A236267.P7862383774240612350

namespace A236267

/-- `ceil(A033951(2*n)/2)` -/
def P7862383774240612350.Spec : Prop :=
  ∀ n, P7862383774240612350.a n = A236267 n

end A236267

/-! ## A236267.P12392146654453052996

`abs(A001844(2*n)-n)`
-/

namespace A236267.P12392146654453052996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 (2 * n) - (n : ℤ)|

end

end A236267.P12392146654453052996

namespace A236267

/-- `abs(A001844(2*n)-n)` -/
def P12392146654453052996.Spec : Prop :=
  ∀ n, P12392146654453052996.a n = A236267 n

end A236267

/-!
# A236269: First differences of Stanley sequence S(0,4) (A005487).

The programs for A236269, there is no canonical definition to state claims against.
-/

/-! ## A236269.P1546403919033290324

`Δ[A005487(n)]`
-/

namespace A236269.P1546403919033290324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236269.P1546403919033290324

/-! ## A236269.P3646324861609223783

`A005487(n+1)-A005487(n)`
-/

namespace A236269.P3646324861609223783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005487 (n + 1) - A005487 n

end

end A236269.P3646324861609223783

/-! ## A236269.P4930927516436230775

`Δ[A033158(n+1)]`
-/

namespace A236269.P4930927516436230775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236269.P4930927516436230775

/-! ## A236269.P16383213141565999315

`A033158(n+2)-A033158(n+1)`
-/

namespace A236269.P16383213141565999315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033158 (n + 2) - A033158 (n + 1)

end

end A236269.P16383213141565999315

/-! ## A236269.P2457374647876443179

`A236774(n+1)+A236313(n+1)`
-/

namespace A236269.P2457374647876443179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236774 (n + 1) + A236313 (n + 1)

end

end A236269.P2457374647876443179

/-! ## A236269.P15388545040588226751

`A236774(n+1)+A003278(A006519(n+1))`
-/

namespace A236269.P15388545040588226751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236774 (n + 1) + A003278 (A006519 (n + 1)).toNat

end

end A236269.P15388545040588226751

/-! ## A236269.P8120826907415046170

`A236774(n+1)+A005836(n+2)-A005836(n+1)`
-/

namespace A236269.P8120826907415046170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236774 (n + 1) + (A005836 (n + 2) - A005836 (n + 1))

end

end A236269.P8120826907415046170

/-!
# A236270: Number of (n+1)X(n+1) 0..2 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A236270, there is no canonical definition to state claims against.
-/

/-! ## A236270.P12478504070503691582

`A236278((n+1)²+n²)`
-/

namespace A236270.P12478504070503691582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 ((n + 1) ^ 2 + n ^ 2)

end

end A236270.P12478504070503691582

/-!
# A236271: Number of (n+1) X (1+1) 0..2 arrays with the upper median unequal to the lower median in every 2 X 2 subblock.

The programs for A236271, there is no canonical definition to state claims against.
-/

/-! ## A236271.P15692059264158410304

`A236278(∑[n]+1)`
-/

namespace A236271.P15692059264158410304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236271.P15692059264158410304

/-! ## A236271.P11112756791106086949

`record[A010054(n)*A236278(n+1)]`
-/

namespace A236271.P11112756791106086949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236271.P11112756791106086949

/-! ## A236271.P2504879090081528829

`record[A236278(n+1)/A157156(n)]`
-/

namespace A236271.P2504879090081528829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236278 (n + 1) : ℚ) / (A157156 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236271.P2504879090081528829

/-! ## A236271.P6054242930010556374

`record[root(A236278(n+1), A039756(n))]`
-/

namespace A236271.P6054242930010556374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236278 (n + 1) : ℝ) ^ (1 / (A039756 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236271.P6054242930010556374

/-! ## A236271.P10319625158052338740

`record[root(A236278(n+1), A193592(n))]`
-/

namespace A236271.P10319625158052338740
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236278 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236271.P10319625158052338740

/-!
# A236272: Number of (n+1)X(2+1) 0..2 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A236272, there is no canonical definition to state claims against.
-/

/-! ## A236272.P16425603344132006347

`A236278(∑[n+1]+2)`
-/

namespace A236272.P16425603344132006347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236272.P16425603344132006347

/-! ## A236272.P11222024450920100610

`lcm(2, A236278(A000096(n)+3))`
-/

namespace A236272.P11222024450920100610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236278 (A000096 n + 3).toNat)

end

end A236272.P11222024450920100610

/-! ## A236272.P10646508274786762210

`record[A010054(n)*A236278(n+2)]`
-/

namespace A236272.P10646508274786762210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236272.P10646508274786762210

/-! ## A236272.P415862887005920369

`record[gcd(A002262(n), A236278(n+2))]`
-/

namespace A236272.P415862887005920369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236278 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236272.P415862887005920369

/-! ## A236272.P6833216833033051369

`A184303(n+1)*A236278(A000096(n)+3)`
-/

namespace A236272.P6833216833033051369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A236278 (A000096 n + 3).toNat

end

end A236272.P6833216833033051369

/-!
# A236273: Number of (n+1)X(3+1) 0..2 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A236273, there is no canonical definition to state claims against.
-/

/-! ## A236273.P13226301823424470269

`A236278(∑[n+2]+4)`
-/

namespace A236273.P13226301823424470269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236273.P13226301823424470269

/-! ## A236273.P1249980966843454925

`lcm(2, A236278(A167614(n+1)))`
-/

namespace A236273.P1249980966843454925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236278 (A167614 (n + 1)).toNat)

end

end A236273.P1249980966843454925

/-! ## A236273.P16163362355701267473

`A236278(A167614(n+1))+A025466(n)`
-/

namespace A236273.P16163362355701267473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A167614 (n + 1)).toNat + A025466 n

end

end A236273.P16163362355701267473

/-! ## A236273.P120566228103429345

`A236278(A167614(n+1))+A025469(n)`
-/

namespace A236273.P120566228103429345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A167614 (n + 1)).toNat + A025469 n

end

end A236273.P120566228103429345

/-! ## A236273.P17477902611859484774

`A236278(A167614(n+1))+A185284(n)`
-/

namespace A236273.P17477902611859484774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A167614 (n + 1)).toNat + A185284 n

end

end A236273.P17477902611859484774

/-!
# A236274: Number of (n+1)X(4+1) 0..2 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A236274, there is no canonical definition to state claims against.
-/

/-! ## A236274.P15869677729714714250

`A236278(A141214(n)+7)`
-/

namespace A236274.P15869677729714714250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A141214 n + 7).toNat

end

end A236274.P15869677729714714250

/-! ## A236274.P15826037752374219124

`A236278(A052905(n)+9)`
-/

namespace A236274.P15826037752374219124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A052905 n + 9).toNat

end

end A236274.P15826037752374219124

/-! ## A236274.P17803154537564519008

`A236278(A055999(n)+10)`
-/

namespace A236274.P17803154537564519008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A055999 n + 10).toNat

end

end A236274.P17803154537564519008

/-! ## A236274.P7019472401555267090

`A236278(A167614(n+2)+1)`
-/

namespace A236274.P7019472401555267090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A167614 (n + 2) + 1).toNat

end

end A236274.P7019472401555267090

/-! ## A236274.P14088649274082647017

`A236278(eq[5, A131818(n+1)])`
-/

namespace A236274.P14088649274082647017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236274.P14088649274082647017

/-!
# A236275: Number of (n+1)X(5+1) 0..2 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A236275, there is no canonical definition to state claims against.
-/

/-! ## A236275.P13285460055506282988

`A236278(A167499(n+3))`
-/

namespace A236275.P13285460055506282988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A167499 (n + 3)).toNat

end

end A236275.P13285460055506282988

/-! ## A236275.P488562788637377594

`A236278(A051936(n+4)+14)`
-/

namespace A236275.P488562788637377594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A051936 (n + 4) + 14).toNat

end

end A236275.P488562788637377594

/-! ## A236275.P10300109258919092972

`A236278(eq[6, A131818(n+1)])`
-/

namespace A236275.P10300109258919092972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236275.P10300109258919092972

/-! ## A236275.P15638403304896040530

`A236278(A374005(n+1))`
-/

namespace A236275.P15638403304896040530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A374005 (n + 1)).toNat

end

end A236275.P15638403304896040530

/-! ## A236275.P7110626984516526307

`A236278(eq[4, A193592(n)])`
-/

namespace A236275.P7110626984516526307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236275.P7110626984516526307

/-!
# A236276: Number of (n+1)X(6+1) 0..2 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A236276, there is no canonical definition to state claims against.
-/

/-! ## A236276.P6486029742888454007

`A236278(eq[7, A131818(n+1)])`
-/

namespace A236276.P6486029742888454007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236276.P6486029742888454007

/-! ## A236276.P775260655441421375

`A236278(A374007(n+1))`
-/

namespace A236276.P775260655441421375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A374007 (n + 1)).toNat

end

end A236276.P775260655441421375

/-! ## A236276.P4979316474028527990

`A236278(A052905(n+3))`
-/

namespace A236276.P4979316474028527990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A052905 (n + 3)).toNat

end

end A236276.P4979316474028527990

/-! ## A236276.P506479398150529303

`A236278(eq[5, A193592(n)])`
-/

namespace A236276.P506479398150529303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236276.P506479398150529303

/-! ## A236276.P17664826712135860530

`A236278(eq[6, A200370(n+1)])`
-/

namespace A236276.P17664826712135860530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236276.P17664826712135860530

/-!
# A236277: Number of (n+1)X(7+1) 0..2 arrays with the upper median unequal to the lower median in every 2X2 subblock.

The programs for A236277, there is no canonical definition to state claims against.
-/

/-! ## A236277.P1191543189302280380

`A236278(eq[8, A131818(n+1)])`
-/

namespace A236277.P1191543189302280380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236277.P1191543189302280380

/-! ## A236277.P14809490792661889327

`A236278(A374008(n+1))`
-/

namespace A236277.P14809490792661889327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (A374008 (n + 1)).toNat

end

end A236277.P14809490792661889327

/-! ## A236277.P10814669770096167479

`A236278(eq[6, A193592(n)])`
-/

namespace A236277.P10814669770096167479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236277.P10814669770096167479

/-! ## A236277.P7012608326162390482

`A236278(eq[7, A200370(n+1)])`
-/

namespace A236277.P7012608326162390482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236277.P7012608326162390482

/-! ## A236277.P5913394151831093284

`A236278(eq[10, A185782(n+1)])`
-/

namespace A236277.P5913394151831093284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236277.P5913394151831093284

/-!
# A236279: Number of (n+1)X(2+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and columnwise.

The programs for A236279, there is no canonical definition to state claims against.
-/

/-! ## A236279.P5642167754237292686

`A236282(∑[n+1]+2)`
-/

namespace A236279.P5642167754237292686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236279.P5642167754237292686

/-! ## A236279.P5638032201152375108

`record[A010054(n)*A236282(n+2)]`
-/

namespace A236279.P5638032201152375108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236279.P5638032201152375108

/-! ## A236279.P11579296326553953011

`record[gcd(A002262(n), A236282(n+2))]`
-/

namespace A236279.P11579296326553953011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236282 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236279.P11579296326553953011

/-! ## A236279.P17982010647184448126

`record[gcd(A025581(n), A236282(n+3))]`
-/

namespace A236279.P17982010647184448126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A236282 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236279.P17982010647184448126

/-! ## A236279.P5381892769794310215

`record[root(A236282(n+2), A022168(n+2))]`
-/

namespace A236279.P5381892769794310215
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236282 (n + 2) : ℝ) ^ (1 / (A022168 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236279.P5381892769794310215

/-!
# A236280: Number of (n+1)X(3+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and columnwise.

The programs for A236280, there is no canonical definition to state claims against.
-/

/-! ## A236280.P1676410098706536993

`A236282(∑[n+2]+4)`
-/

namespace A236280.P1676410098706536993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236280.P1676410098706536993

/-! ## A236280.P17249454997803827532

`A236282(A167614(n+1))+A025465(n)`
-/

namespace A236280.P17249454997803827532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (A167614 (n + 1)).toNat + A025465 n

end

end A236280.P17249454997803827532

/-! ## A236280.P6119773398091784801

`A236282(A167614(n+1))+A033483(n)`
-/

namespace A236280.P6119773398091784801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (A167614 (n + 1)).toNat + A033483 n

end

end A236280.P6119773398091784801

/-! ## A236280.P14876354391706165410

`A236282(A167614(n+1))+A185255(n)`
-/

namespace A236280.P14876354391706165410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (A167614 (n + 1)).toNat + A185255 n

end

end A236280.P14876354391706165410

/-! ## A236280.P8897615960237458426

`A043562(n)*A236282(A167614(n+1))`
-/

namespace A236280.P8897615960237458426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A236282 (A167614 (n + 1)).toNat

end

end A236280.P8897615960237458426

/-!
# A236281: Number of (n+1)X(4+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and columnwise.

The programs for A236281, there is no canonical definition to state claims against.
-/

/-! ## A236281.P6993901376609283279

`A236282(A374004(n+1))`
-/

namespace A236281.P6993901376609283279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (A374004 (n + 1)).toNat

end

end A236281.P6993901376609283279

/-! ## A236281.P862670985462049063

`A236282(A141214(n)+7)`
-/

namespace A236281.P862670985462049063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (A141214 n + 7).toNat

end

end A236281.P862670985462049063

/-! ## A236281.P3456439638597988577

`A236282(A052905(n)+9)`
-/

namespace A236281.P3456439638597988577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (A052905 n + 9).toNat

end

end A236281.P3456439638597988577

/-! ## A236281.P3086937870808356081

`A236282(A055999(n)+10)`
-/

namespace A236281.P3086937870808356081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236282 (A055999 n + 10).toNat

end

end A236281.P3086937870808356081

/-!
# A236282: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and columnwise.

The programs for A236282, there is no canonical definition to state claims against.
-/

/-! ## A236282.P5129596898526773729

`A235421(n+1)+A193581(A260620(n))`
-/

namespace A236282.P5129596898526773729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (n + 1) + A193581 (A260620 n).toNat

end

end A236282.P5129596898526773729

/-!
# A236283: The number of orbits of triples of {1,2,...,n} under the action of the dihedral group of order 2n.

The programs for A236283, the canonical program `A236283.P7658795798633447851` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236283 has offset 1).

The definition of A236283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236283.P2166287708011536511

`(5+3*(-1)^(n+1)+2*(n+1)²)/4`
-/

namespace A236283.P2166287708011536511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 + 3 * (-1) ^ (n + 1) + (2 * (n + 1) ^ 2 : ℤ) : ℚ) / 4

end

end A236283.P2166287708011536511

namespace A236283

/-- `(5+3*(-1)^(n+1)+2*(n+1)²)/4` -/
def P2166287708011536511.Spec : Prop :=
  ∀ n, P2166287708011536511.a n = (A236283 (n + 1) : ℚ)

end A236283

/-! ## A236283.P7658795798633447851

`A081352(n)-A116940(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236283

/-- `A081352(n)-A116940(n)` -/
def P7658795798633447851.Spec : Prop :=
  ∀ n, P7658795798633447851.a n = A236283 (n + 1)

theorem P7658795798633447851.correct : P7658795798633447851.Spec := by
  intro n
  simp only [A236283, Nat.add_sub_cancel]

end A236283

/-! ## A236283.P9872310715406173647

`abs(xor(∑[or(1, n)], -2))`
-/

namespace A236283.P9872310715406173647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)|

end

end A236283.P9872310715406173647

namespace A236283

/-- `abs(xor(∑[or(1, n)], -2))` -/
def P9872310715406173647.Spec : Prop :=
  ∀ n, P9872310715406173647.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P2700682066826453293

`xor(1, ∑[or(1, n)])+1`
-/

namespace A236283.P2700682066826453293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A236283.P2700682066826453293

namespace A236283

/-- `xor(1, ∑[or(1, n)])+1` -/
def P2700682066826453293.Spec : Prop :=
  ∀ n, (P2700682066826453293.a n : ℤ) = A236283 (n + 1)

end A236283

/-! ## A236283.P11939410240980306921

`xor(2, ∑[or(1, xor(2, n))])`
-/

namespace A236283.P11939410240980306921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.xor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236283.P11939410240980306921

namespace A236283

/-- `xor(2, ∑[or(1, xor(2, n))])` -/
def P11939410240980306921.Spec : Prop :=
  ∀ n, (P11939410240980306921.a n : ℤ) = A236283 (n + 1)

end A236283

/-! ## A236283.P9692242923819963998

`∑[abs(Δ[n*gcd(2, n)])]`
-/

namespace A236283.P9692242923819963998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236283.P9692242923819963998

namespace A236283

/-- `∑[abs(Δ[n*gcd(2, n)])]` -/
def P9692242923819963998.Spec : Prop :=
  ∀ n, P9692242923819963998.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P13869787585985134948

`ceil(xor(3, (n+1)²)/2)`
-/

namespace A236283.P13869787585985134948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A236283.P13869787585985134948

namespace A236283

/-- `ceil(xor(3, (n+1)²)/2)` -/
def P13869787585985134948.Spec : Prop :=
  ∀ n, P13869787585985134948.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P3373857558982381684

`round(xor(3, (n+1)²)/2)`
-/

namespace A236283.P3373857558982381684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 ((n + 1) ^ 2) : ℚ) / 2)

end

end A236283.P3373857558982381684

namespace A236283

/-- `round(xor(3, (n+1)²)/2)` -/
def P3373857558982381684.Spec : Prop :=
  ∀ n, P3373857558982381684.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P15753187437251583666

`∑[a(n-2)+2]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A236283.P15753187437251583666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236283.P15753187437251583666

namespace A236283

/-- `∑[a(n-2)+2]` -/
def P15753187437251583666.Spec : Prop :=
  ∀ n, (P15753187437251583666.a n : ℤ) = A236283 (n + 1)

end A236283

/-! ## A236283.P7829395971694384624

`a(n-2)+2*n` with `a(0)=1, a(1)=4`
-/

namespace A236283.P7829395971694384624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 2 * n

end

end A236283.P7829395971694384624

namespace A236283

/-- `a(n-2)+2*n` -/
def P7829395971694384624.Spec : Prop :=
  ∀ n, (P7829395971694384624.a n : ℤ) = A236283 (n + 1)

end A236283

/-! ## A236283.P4788029501089711706

`a(n-2)+n+n` with `a(0)=1, a(1)=4`
-/

namespace A236283.P4788029501089711706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + n + n

end

end A236283.P4788029501089711706

namespace A236283

/-- `a(n-2)+n+n` -/
def P4788029501089711706.Spec : Prop :=
  ∀ n, (P4788029501089711706.a n : ℤ) = A236283 (n + 1)

end A236283

/-! ## A236283.P2001428338909211832

`or(1, ∑[or(1, n+1)])-n`
-/

namespace A236283.P2001428338909211832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)

end

end A236283.P2001428338909211832

namespace A236283

/-- `or(1, ∑[or(1, n+1)])-n` -/
def P2001428338909211832.Spec : Prop :=
  ∀ n, P2001428338909211832.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P11506836127465685308

`∑[2*n-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A236283.P11506836127465685308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236283.P11506836127465685308

namespace A236283

/-- `∑[2*n-a(n-1)]` -/
def P11506836127465685308.Spec : Prop :=
  ∀ n, P11506836127465685308.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P5003175603478102968

`∑[n-(a(n-1)-n)]` with `a(0)=1, a(1)=3`
-/

namespace A236283.P5003175603478102968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n : ℤ) - (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236283.P5003175603478102968

namespace A236283

/-- `∑[n-(a(n-1)-n)]` -/
def P5003175603478102968.Spec : Prop :=
  ∀ n, P5003175603478102968.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P6506419757279624423

`ogf((1+2x-3x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A236283.P6506419757279624423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -3, 2] [1, -2, 0, 2, -1] n

end

end A236283.P6506419757279624423

namespace A236283

/-- `ogf((1+2x-3x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P6506419757279624423.Spec : Prop :=
  ∀ n, P6506419757279624423.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P682498354040195342

`3*n-(n-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A236283.P682498354040195342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 2))

end

end A236283.P682498354040195342

namespace A236283

/-- `3*n-(n-a(n-2))` -/
def P682498354040195342.Spec : Prop :=
  ∀ n, P682498354040195342.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P16845762655455669276

`3-(a(n-1)-n-n²)` with `a(0)=1`
-/

namespace A236283.P16845762655455669276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (a (n - 1) - (n : ℤ) - (n ^ 2 : ℤ))

end

end A236283.P16845762655455669276

namespace A236283

/-- `3-(a(n-1)-n-n²)` -/
def P16845762655455669276.Spec : Prop :=
  ∀ n, P16845762655455669276.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P7916785669655282685

`∑[or(1, A014681(n))]`
-/

namespace A236283.P7916785669655282685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014681 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236283.P7916785669655282685

namespace A236283

/-- `∑[or(1, A014681(n))]` -/
def P7916785669655282685.Spec : Prop :=
  ∀ n, P7916785669655282685.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P9543551338948824656

`A178218(n+1)-n`
-/

namespace A236283.P9543551338948824656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (n + 1) - (n : ℤ)

end

end A236283.P9543551338948824656

namespace A236283

/-- `A178218(n+1)-n` -/
def P9543551338948824656.Spec : Prop :=
  ∀ n, P9543551338948824656.a n = A236283 (n + 1)

end A236283

/-! ## A236283.P17215562601239591455

`A030451(n)+A000124(n)`
-/

namespace A236283.P17215562601239591455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n + A000124 n

end

end A236283.P17215562601239591455

namespace A236283

/-- `A030451(n)+A000124(n)` -/
def P17215562601239591455.Spec : Prop :=
  ∀ n, P17215562601239591455.a n = A236283 (n + 1)

end A236283

/-!
# A236284: a(n) = tau(n)^n, where tau(n) = A000005(n) = the number of divisors of n.

The programs for A236284, the canonical program `A236284.P9106495769996058109` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236284 has offset 1).

The definition of A236284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236284.P9106495769996058109

`A000005(n+1)^(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236284

/-- `A000005(n+1)^(n+1)` -/
def P9106495769996058109.Spec : Prop :=
  ∀ n, P9106495769996058109.a n = A236284 (n + 1)

theorem P9106495769996058109.correct : P9106495769996058109.Spec := by
  intro n
  simp only [A236284, Nat.add_sub_cancel]

end A236284

/-! ## A236284.P2959385770605937521

`∏{e}[n+1, (#+1)^(n+1)]`
-/

namespace A236284.P2959385770605937521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) ^ (n + 1)

end

end A236284.P2959385770605937521

namespace A236284

/-- `∏{e}[n+1, (#+1)^(n+1)]` -/
def P2959385770605937521.Spec : Prop :=
  ∀ n, (P2959385770605937521.a n : ℤ) = A236284 (n + 1)

end A236284

/-! ## A236284.P5257648938086538050

`∑{d}[n+1, gcd(n, #)]^(n+1)`
-/

namespace A236284.P5257648938086538050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) ^ (n + 1)

end

end A236284.P5257648938086538050

namespace A236284

/-- `∑{d}[n+1, gcd(n, #)]^(n+1)` -/
def P5257648938086538050.Spec : Prop :=
  ∀ n, (P5257648938086538050.a n : ℤ) = A236284 (n + 1)

end A236284

/-! ## A236284.P17206318448230468643

`∑{d}[n+1, ceil(acot(#))]^(n+1)`
-/

namespace A236284.P17206318448230468643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉) ^ (n + 1)

end

end A236284.P17206318448230468643

namespace A236284

/-- `∑{d}[n+1, ceil(acot(#))]^(n+1)` -/
def P17206318448230468643.Spec : Prop :=
  ∀ n, P17206318448230468643.a n = A236284 (n + 1)

end A236284

/-! ## A236284.P2717869072618051857

`∑{d}[n+1, ceil(1/#)]^(n+1)`
-/

namespace A236284.P2717869072618051857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉) ^ (n + 1)

end

end A236284.P2717869072618051857

namespace A236284

/-- `∑{d}[n+1, ceil(1/#)]^(n+1)` -/
def P2717869072618051857.Spec : Prop :=
  ∀ n, P2717869072618051857.a n = A236284 (n + 1)

end A236284

/-! ## A236284.P5034005272683141546

`A109974(∑[n])^(n+1)`
-/

namespace A236284.P5034005272683141546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A236284.P5034005272683141546

namespace A236284

/-- `A109974(∑[n])^(n+1)` -/
def P5034005272683141546.Spec : Prop :=
  ∀ n, P5034005272683141546.a n = A236284 (n + 1)

end A236284

/-! ## A236284.P9503880180374775405

`A114896(∑[n])^(n+1)`
-/

namespace A236284.P9503880180374775405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114896 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A236284.P9503880180374775405

namespace A236284

/-- `A114896(∑[n])^(n+1)` -/
def P9503880180374775405.Spec : Prop :=
  ∀ n, P9503880180374775405.a n = A236284 (n + 1)

end A236284

/-! ## A236284.P16237598193354718909

`A130267(∑[n])^(n+1)`
-/

namespace A236284.P16237598193354718909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130267 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A236284.P16237598193354718909

namespace A236284

/-- `A130267(∑[n])^(n+1)` -/
def P16237598193354718909.Spec : Prop :=
  ∀ n, P16237598193354718909.a n = A236284 (n + 1)

end A236284

/-! ## A236284.P11106895131953279264

`A144515(∑[n])^(n+1)`
-/

namespace A236284.P11106895131953279264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144515 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A236284.P11106895131953279264

namespace A236284

/-- `A144515(∑[n])^(n+1)` -/
def P11106895131953279264.Spec : Prop :=
  ∀ n, P11106895131953279264.a n = A236284 (n + 1)

end A236284

/-! ## A236284.P11660061142746811744

`Δ[A006218(n)]^(n+1)`
-/

namespace A236284.P11660061142746811744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A236284.P11660061142746811744

namespace A236284

/-- `Δ[A006218(n)]^(n+1)` -/
def P11660061142746811744.Spec : Prop :=
  ∀ n, P11660061142746811744.a n = A236284 (n + 1)

end A236284

/-!
# A236285: a(n) = tau(n)^sigma(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

The programs for A236285, the canonical program `A236285.P7829773990434493690` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236285 has offset 1).

The definition of A236285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236285.P7829773990434493690

`A000005(n+1)^A000203(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236285

/-- `A000005(n+1)^A000203(n+1)` -/
def P7829773990434493690.Spec : Prop :=
  ∀ n, P7829773990434493690.a n = (A236285 (n + 1) : ℚ)

end A236285

/-! ## A236285.P17750990375236147250

`∏{e}[n+1, #+1]^∑{d}[n+1, #]`
-/

namespace A236285.P17750990375236147250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ (∑ d ∈ Nat.divisors (f2 n), d)

end

end A236285.P17750990375236147250

namespace A236285

/-- `∏{e}[n+1, #+1]^∑{d}[n+1, #]` -/
def P17750990375236147250.Spec : Prop :=
  ∀ n, (P17750990375236147250.a n : ℤ) = A236285 (n + 1)

end A236285

/-! ## A236285.P6460560559359616947

`∑{d}[n+1, gcd(n, #)]^∑{d}[n+1, #]`
-/

namespace A236285.P6460560559359616947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) ^ (∑ d ∈ Nat.divisors (f2 n), d)

end

end A236285.P6460560559359616947

namespace A236285

/-- `∑{d}[n+1, gcd(n, #)]^∑{d}[n+1, #]` -/
def P6460560559359616947.Spec : Prop :=
  ∀ n, (P6460560559359616947.a n : ℤ) = A236285 (n + 1)

end A236285

/-! ## A236285.P10778329712293756289

`∑{d}[n+1, ceil(acot(#))]^∑{d}[n+1, #]`
-/

namespace A236285.P10778329712293756289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉) ^ (∑ d ∈ Nat.divisors (f2 n), d)

end

end A236285.P10778329712293756289

namespace A236285

/-- `∑{d}[n+1, ceil(acot(#))]^∑{d}[n+1, #]` -/
def P10778329712293756289.Spec : Prop :=
  ∀ n, P10778329712293756289.a n = A236285 (n + 1)

end A236285

/-! ## A236285.P11176833379969732236

`∑{d}[n+1, gcd(n, #)]^Δ[A160664(n)]`
-/

namespace A236285.P11176833379969732236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A236285.P11176833379969732236

namespace A236285

/-- `∑{d}[n+1, gcd(n, #)]^Δ[A160664(n)]` -/
def P11176833379969732236.Spec : Prop :=
  ∀ n, P11176833379969732236.a n = (A236285 (n + 1) : ℚ)

end A236285

/-!
# A236286: a(n) = tau(n)^sigma(n) / tau(n)^n, where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

The programs for A236286, the canonical program `A236286.P5783426394669148059` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236286 has offset 1).

The definition of A236286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236286.P5783426394669148059

`A000005(n+1)^A001065(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236286

/-- `A000005(n+1)^A001065(n+1)` -/
def P5783426394669148059.Spec : Prop :=
  ∀ n, P5783426394669148059.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P10677219723216697010

`∏{e}[n+1, #+1]^(∑{d}[n+1, #]-(n+1))`
-/

namespace A236286.P10677219723216697010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A236286.P10677219723216697010

namespace A236286

/-- `∏{e}[n+1, #+1]^(∑{d}[n+1, #]-(n+1))` -/
def P10677219723216697010.Spec : Prop :=
  ∀ n, P10677219723216697010.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P2357134361627174093

`∏{e}[n+1, #+1]^A173455(n+1)`
-/

namespace A236286.P2357134361627174093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (A173455 (n + 1) : ℤ)

end

end A236286.P2357134361627174093

namespace A236286

/-- `∏{e}[n+1, #+1]^A173455(n+1)` -/
def P2357134361627174093.Spec : Prop :=
  ∀ n, P2357134361627174093.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P2892252057166814617

`A000005(ceil(sqrt(n²+4)))^(∑{d}[n+1, #]-(n+1))`
-/

namespace A236286.P2892252057166814617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat : ℚ) ^ (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A236286.P2892252057166814617

namespace A236286

/-- `A000005(ceil(sqrt(n²+4)))^(∑{d}[n+1, #]-(n+1))` -/
def P2892252057166814617.Spec : Prop :=
  ∀ n, P2892252057166814617.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P17893561289388243875

`Δ[A006218(n)]^A001065(n+1)`
-/

namespace A236286.P17893561289388243875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001065 (n + 1) : ℤ)

end

end A236286.P17893561289388243875

namespace A236286

/-- `Δ[A006218(n)]^A001065(n+1)` -/
def P17893561289388243875.Spec : Prop :=
  ∀ n, P17893561289388243875.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P2110863710873312178

`Δ[A054519(n)]^A001065(n+1)`
-/

namespace A236286.P2110863710873312178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001065 (n + 1) : ℤ)

end

end A236286.P2110863710873312178

namespace A236286

/-- `Δ[A054519(n)]^A001065(n+1)` -/
def P2110863710873312178.Spec : Prop :=
  ∀ n, P2110863710873312178.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P10317505965990342770

`Δ[A006218(n)]^A173455(n+1)`
-/

namespace A236286.P10317505965990342770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A173455 (n + 1) : ℤ)

end

end A236286.P10317505965990342770

namespace A236286

/-- `Δ[A006218(n)]^A173455(n+1)` -/
def P10317505965990342770.Spec : Prop :=
  ∀ n, P10317505965990342770.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P5163945241601342657

`A000005(n+1)^(A000203(n+1)-(n+1))`
-/

namespace A236286.P5163945241601342657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A000203 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A236286.P5163945241601342657

namespace A236286

/-- `A000005(n+1)^(A000203(n+1)-(n+1))` -/
def P5163945241601342657.Spec : Prop :=
  ∀ n, P5163945241601342657.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P4953864740228497913

`(∑{d}[n+1, A020639(2*#)]/2)^A001065(n+1)`
-/

namespace A236286.P4953864740228497913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2) ^ (A001065 (n + 1) : ℤ)

end

end A236286.P4953864740228497913

namespace A236286

/-- `(∑{d}[n+1, A020639(2*#)]/2)^A001065(n+1)` -/
def P4953864740228497913.Spec : Prop :=
  ∀ n, P4953864740228497913.a n = (A236286 (n + 1) : ℚ)

end A236286

/-! ## A236286.P1555794763422118764

`∑{d}[n+1, A000040(#+1)%2]^A001065(n+1)`
-/

namespace A236286.P1555794763422118764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2 : ℤ) : ℚ) ^ (A001065 (n + 1) : ℤ)

end

end A236286.P1555794763422118764

namespace A236286

/-- `∑{d}[n+1, A000040(#+1)%2]^A001065(n+1)` -/
def P1555794763422118764.Spec : Prop :=
  ∀ n, P1555794763422118764.a n = (A236286 (n + 1) : ℚ)

end A236286

/-!
# A236287: a(n) = sigma(n)^tau(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

The programs for A236287, the canonical program `A236287.P8329458404916216592` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236287 has offset 1).

The definition of A236287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236287.P8329458404916216592

`A000203(n+1)^A000005(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236287

/-- `A000203(n+1)^A000005(n+1)` -/
def P8329458404916216592.Spec : Prop :=
  ∀ n, P8329458404916216592.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P7134999529158814662

`∑{d}[n+1, #]^∏{e}[n+1, #+1]`
-/

namespace A236287.P7134999529158814662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A236287.P7134999529158814662

namespace A236287

/-- `∑{d}[n+1, #]^∏{e}[n+1, #+1]` -/
def P7134999529158814662.Spec : Prop :=
  ∀ n, (P7134999529158814662.a n : ℤ) = A236287 (n + 1)

end A236287

/-! ## A236287.P8951903466878695957

`∏{d}[n+1, A000203(lcm(#, n+1))]`
-/

namespace A236287.P8951903466878695957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 (Nat.lcm d (n + 1))

end

end A236287.P8951903466878695957

namespace A236287

/-- `∏{d}[n+1, A000203(lcm(#, n+1))]` -/
def P8951903466878695957.Spec : Prop :=
  ∀ n, P8951903466878695957.a n = A236287 (n + 1)

end A236287

/-! ## A236287.P10156287732046439910

`Δ[A160664(n)]^Δ[A006218(n)]`
-/

namespace A236287.P10156287732046439910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A236287.P10156287732046439910

namespace A236287

/-- `Δ[A160664(n)]^Δ[A006218(n)]` -/
def P10156287732046439910.Spec : Prop :=
  ∀ n, P10156287732046439910.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P1466756439922549899

`A000203(n+1)^Δ[A006218(n)]`
-/

namespace A236287.P1466756439922549899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A236287.P1466756439922549899

namespace A236287

/-- `A000203(n+1)^Δ[A006218(n)]` -/
def P1466756439922549899.Spec : Prop :=
  ∀ n, P1466756439922549899.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P16758091383940338

`A000203(n+1)^Δ[A054519(n)]`
-/

namespace A236287.P16758091383940338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A236287.P16758091383940338

namespace A236287

/-- `A000203(n+1)^Δ[A054519(n)]` -/
def P16758091383940338.Spec : Prop :=
  ∀ n, P16758091383940338.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P8487227772023090652

`Δ[A160664(n)]^A000005(n+1)`
-/

namespace A236287.P8487227772023090652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P8487227772023090652

namespace A236287

/-- `Δ[A160664(n)]^A000005(n+1)` -/
def P8487227772023090652.Spec : Prop :=
  ∀ n, P8487227772023090652.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P11631923968984120880

`∏{d}[A131738(n), A064987(n+1)/#²]`
-/

namespace A236287.P11631923968984120880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A064987 (n + 1) : ℚ) / (d ^ 2 : ℚ)

end

end A236287.P11631923968984120880

namespace A236287

/-- `∏{d}[A131738(n), A064987(n+1)/#²]` -/
def P11631923968984120880.Spec : Prop :=
  ∀ n, P11631923968984120880.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P4544095887928486584

`A000203(n+1)^A069157(2*(n+1))`
-/

namespace A236287.P4544095887928486584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A069157 (2 * (n + 1)) : ℤ)

end

end A236287.P4544095887928486584

namespace A236287

/-- `A000203(n+1)^A069157(2*(n+1))` -/
def P4544095887928486584.Spec : Prop :=
  ∀ n, P4544095887928486584.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P15588428992450711000

`A000203(n+1)^A183063(2*(n+1))`
-/

namespace A236287.P15588428992450711000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A183063 (2 * (n + 1)) : ℤ)

end

end A236287.P15588428992450711000

namespace A236287

/-- `A000203(n+1)^A183063(2*(n+1))` -/
def P15588428992450711000.Spec : Prop :=
  ∀ n, P15588428992450711000.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P15893430597378534910

`A245092(2*n+1)^A000005(n+1)`
-/

namespace A236287.P15893430597378534910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P15893430597378534910

namespace A236287

/-- `A245092(2*n+1)^A000005(n+1)` -/
def P15893430597378534910.Spec : Prop :=
  ∀ n, P15893430597378534910.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P395974796107543848

`(A001065(n+1)+1+n)^A000005(n+1)`
-/

namespace A236287.P395974796107543848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P395974796107543848

namespace A236287

/-- `(A001065(n+1)+1+n)^A000005(n+1)` -/
def P395974796107543848.Spec : Prop :=
  ∀ n, P395974796107543848.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P1538328944259059546

`(A155085(n+1)-(n+1))^A000005(n+1)`
-/

namespace A236287.P1538328944259059546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P1538328944259059546

namespace A236287

/-- `(A155085(n+1)-(n+1))^A000005(n+1)` -/
def P1538328944259059546.Spec : Prop :=
  ∀ n, P1538328944259059546.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P2961160291415871887

`A000203(n+1)^(A038040(n+1)/(n+1))`
-/

namespace A236287.P2961160291415871887
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℝ) ^ ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A236287.P2961160291415871887

namespace A236287

/-- `A000203(n+1)^(A038040(n+1)/(n+1))` -/
def P2961160291415871887.Spec : Prop :=
  ∀ n, P2961160291415871887.a n = (A236287 (n + 1) : ℝ)

end A236287

/-! ## A236287.P7812854736817277763

`(A064987(n+1)/(n+1))^A000005(n+1)`
-/

namespace A236287.P7812854736817277763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P7812854736817277763

namespace A236287

/-- `(A064987(n+1)/(n+1))^A000005(n+1)` -/
def P7812854736817277763.Spec : Prop :=
  ∀ n, P7812854736817277763.a n = (A236287 (n + 1) : ℚ)

end A236287

/-! ## A236287.P5851941940249878110

`A245092(2*n+1)^(A038040(n+1)/(n+1))`
-/

namespace A236287.P5851941940249878110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℝ) ^ ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A236287.P5851941940249878110

namespace A236287

/-- `A245092(2*n+1)^(A038040(n+1)/(n+1))` -/
def P5851941940249878110.Spec : Prop :=
  ∀ n, P5851941940249878110.a n = (A236287 (n + 1) : ℝ)

end A236287

/-! ## A236287.P543792351758073166

`(A064987(n+1)/(n+1))^(A038040(n+1)/(n+1))`
-/

namespace A236287.P543792351758073166
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) ^ ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A236287.P543792351758073166

namespace A236287

/-- `(A064987(n+1)/(n+1))^(A038040(n+1)/(n+1))` -/
def P543792351758073166.Spec : Prop :=
  ∀ n, P543792351758073166.a n = (A236287 (n + 1) : ℝ)

end A236287

/-!
# A236288: a(n) = sigma(n)^n / sigma(n)^tau(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

The programs for A236288, the canonical program `A236288.P3577133205354347482` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236288 has offset 1).

The definition of A236288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236288.P3577133205354347482

`A000203(n+1)^A049820(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236288

/-- `A000203(n+1)^A049820(n+1)` -/
def P3577133205354347482.Spec : Prop :=
  ∀ n, P3577133205354347482.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P15015635925190504048

`A217872(n+1)/A236287(n+1)`
-/

namespace A236288.P15015635925190504048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217872 (n + 1) : ℚ) / (A236287 (n + 1) : ℚ)

end

end A236288.P15015635925190504048

namespace A236288

/-- `A217872(n+1)/A236287(n+1)` -/
def P15015635925190504048.Spec : Prop :=
  ∀ n, P15015635925190504048.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P4751214394851044537

`A000203(n+1)^(n+1)/A000203(n+1)^A000005(n+1)`
-/

namespace A236288.P4751214394851044537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) ^ (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236288.P4751214394851044537

namespace A236288

/-- `A000203(n+1)^(n+1)/A000203(n+1)^A000005(n+1)` -/
def P4751214394851044537.Spec : Prop :=
  ∀ n, P4751214394851044537.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P4299607693918076130

`∑{d}[n+1, #]^(n-∑{d}[n+1, n²%#])`
-/

namespace A236288.P4299607693918076130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ ((n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d : ℕ) : ℤ) : ℤ)

end

end A236288.P4299607693918076130

namespace A236288

/-- `∑{d}[n+1, #]^(n-∑{d}[n+1, n²%#])` -/
def P4299607693918076130.Spec : Prop :=
  ∀ n, P4299607693918076130.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P15881724851633175567

`∑{d}[n+1, #]^(n+1-∏{e}[n+1, #+1])`
-/

namespace A236288.P15881724851633175567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) : ℤ)

end

end A236288.P15881724851633175567

namespace A236288

/-- `∑{d}[n+1, #]^(n+1-∏{e}[n+1, #+1])` -/
def P15881724851633175567.Spec : Prop :=
  ∀ n, P15881724851633175567.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P12600222261512051106

`∑{d}[n+1, #]^(n+1-Δ[A006218(n)])`
-/

namespace A236288.P12600222261512051106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ ((n + 1 : ℤ) - (f2 (n + 1) - f2 n) : ℤ)

end

end A236288.P12600222261512051106

namespace A236288

/-- `∑{d}[n+1, #]^(n+1-Δ[A006218(n)])` -/
def P12600222261512051106.Spec : Prop :=
  ∀ n, P12600222261512051106.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P3359295120985511050

`Δ[A160664(n)]^A049820(n+1)`
-/

namespace A236288.P3359295120985511050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A049820 (n + 1) : ℤ)

end

end A236288.P3359295120985511050

namespace A236288

/-- `Δ[A160664(n)]^A049820(n+1)` -/
def P3359295120985511050.Spec : Prop :=
  ∀ n, P3359295120985511050.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P767509782099580107

`A097012(n+1)^A049820(n+1)`
-/

namespace A236288.P767509782099580107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097012 (n + 1) : ℚ) ^ (A049820 (n + 1) : ℤ)

end

end A236288.P767509782099580107

namespace A236288

/-- `A097012(n+1)^A049820(n+1)` -/
def P767509782099580107.Spec : Prop :=
  ∀ n, P767509782099580107.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P17778997527021065081

`A000203(n+1)^A338236((n+1)²)`
-/

namespace A236288.P17778997527021065081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A338236 ((n + 1) ^ 2) : ℤ)

end

end A236288.P17778997527021065081

namespace A236288

/-- `A000203(n+1)^A338236((n+1)²)` -/
def P17778997527021065081.Spec : Prop :=
  ∀ n, P17778997527021065081.a n = (A236288 (n + 1) : ℚ)

end A236288

/-! ## A236288.P9735607637951357347

`A000203(n+1)^A338430((n+1)²)`
-/

namespace A236288.P9735607637951357347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A338430 ((n + 1) ^ 2) : ℤ)

end

end A236288.P9735607637951357347

namespace A236288

/-- `A000203(n+1)^A338430((n+1)²)` -/
def P9735607637951357347.Spec : Prop :=
  ∀ n, P9735607637951357347.a n = (A236288 (n + 1) : ℚ)

end A236288

/-!
# A236290: Decimal expansion of (sqrt(33) - 1) / 2.

The programs for A236290, there is no canonical definition to state claims against.
-/

/-! ## A236290.P6907908366867610780

`A222132(n)+A235162(n)-A178255(n)`
-/

namespace A236290.P6907908366867610780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) + (A235162 (n + 1) - A178255 (n + 1))

end

end A236290.P6907908366867610780

/-!
# A236291: Number of length n binary words that contain an even number of 0's or exactly two 1's.

The programs for A236291, the canonical program `A236291.P10993209874262571537` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236291 has offset 0).

The definition of A236291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236291.P10993209874262571537

`A011782(n)+C(n, A347558(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236291

/-- `A011782(n)+C(n, A347558(n+2))` -/
def P10993209874262571537.Spec : Prop :=
  ∀ n, P10993209874262571537.a n = A236291 n

theorem P10993209874262571537.correct : P10993209874262571537.Spec := by
  intro n
  simp only [A236291]

end A236291

/-! ## A236291.P1450556944552502188

`A011782(n)+A000217(xor(1, n)%(n+1))`
-/

namespace A236291.P1450556944552502188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A000217 (Nat.xor 1 n % (n + 1))

end

end A236291.P1450556944552502188

namespace A236291

/-- `A011782(n)+A000217(xor(1, n)%(n+1))` -/
def P1450556944552502188.Spec : Prop :=
  ∀ n, P1450556944552502188.a n = A236291 n

end A236291

/-! ## A236291.P17054347587331080203

`A050187(A093178(n))+A011782(n)`
-/

namespace A236291.P17054347587331080203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050187 (A093178 n).toNat + A011782 n

end

end A236291.P17054347587331080203

namespace A236291

/-- `A050187(A093178(n))+A011782(n)` -/
def P17054347587331080203.Spec : Prop :=
  ∀ n, P17054347587331080203.a n = A236291 n

end A236291

/-! ## A236291.P7741838633670218461

`A011782(n)+A001971(A266072(n))`
-/

namespace A236291.P7741838633670218461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A001971 (A266072 n).toNat

end

end A236291.P7741838633670218461

namespace A236291

/-- `A011782(n)+A001971(A266072(n))` -/
def P7741838633670218461.Spec : Prop :=
  ∀ n, P7741838633670218461.a n = A236291 n

end A236291

/-! ## A236291.P5212533242642496786

`A069981(A266662(n))+A011782(n)`
-/

namespace A236291.P5212533242642496786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069981 (A266662 n).toNat + A011782 n

end

end A236291.P5212533242642496786

namespace A236291

/-- `A069981(A266662(n))+A011782(n)` -/
def P5212533242642496786.Spec : Prop :=
  ∀ n, P5212533242642496786.a n = A236291 n

end A236291

/-! ## A236291.P16715036434960035242

`∑[A034008(n)]+A161680(n*A000035(n))`
-/

namespace A236291.P16715036434960035242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A161680 ((n : ℤ) * A000035 n).toNat

end

end A236291.P16715036434960035242

namespace A236291

/-- `∑[A034008(n)]+A161680(n*A000035(n))` -/
def P16715036434960035242.Spec : Prop :=
  ∀ n, P16715036434960035242.a n = A236291 n

end A236291

/-! ## A236291.P17621244581937033273

`A279416(A084263(n))+A011782(n)`
-/

namespace A236291.P17621244581937033273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279416 (A084263 n).toNat + A011782 n

end

end A236291.P17621244581937033273

namespace A236291

/-- `A279416(A084263(n))+A011782(n)` -/
def P17621244581937033273.Spec : Prop :=
  ∀ n, P17621244581937033273.a n = A236291 n

end A236291

/-! ## A236291.P8059241611449927597

`or(A011782(n), A155998(A133263(n)))`
-/

namespace A236291.P8059241611449927597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A155998 (A133263 n).toNat)

end

end A236291.P8059241611449927597

namespace A236291

/-- `or(A011782(n), A155998(A133263(n)))` -/
def P8059241611449927597.Spec : Prop :=
  ∀ n, P8059241611449927597.a n = A236291 n

end A236291

/-!
# A236292: Number of distinct cyclic permutations of the partitions of n; see comments.

The programs for A236292, there is no canonical definition to state claims against.
-/

/-! ## A236292.P11085295069326457147

`A220477(n+1)+A000005(n+1)`
-/

namespace A236292.P11085295069326457147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (n + 1) + A000005 (n + 1)

end

end A236292.P11085295069326457147

/-! ## A236292.P11073130888525578266

`A006128(n+1)-A065608(n+1)`
-/

namespace A236292.P11073130888525578266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A065608 (n + 1)

end

end A236292.P11073130888525578266

/-! ## A236292.P9335896174494962323

`A000005(n+1)+A006128(n+1)-A000203(n+1)`
-/

namespace A236292.P9335896174494962323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A006128 (n + 1) - A000203 (n + 1))

end

end A236292.P9335896174494962323

/-! ## A236292.P16812405338817553218

`A000041(n+1)+A220477(n+1)-A144300(n+1)`
-/

namespace A236292.P16812405338817553218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A220477 (n + 1) - A144300 (n + 1))

end

end A236292.P16812405338817553218

/-!
# A236293: Triangular array T: T(n,1) = number of constant partitions of n; T(n,k) = number of nonconstant partitions of n that have length k, for k = 2..n-1, for n >= 2.

The programs for A236293, there is no canonical definition to state claims against.
-/

/-! ## A236293.P14524133151539141341

`A097847(xor(6, A111863(n+1)))`
-/

namespace A236293.P14524133151539141341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097847 (Int.xor 6 (A111863 (n + 1))).toNat

end

end A236293.P14524133151539141341

/-! ## A236293.P1373280436468173170

`A001221(xor(A181224(2*n+5), A347441(n+1)))`
-/

namespace A236293.P1373280436468173170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A181224 (2 * n + 5)) (A347441 (n + 1))).toNat

end

end A236293.P1373280436468173170

/-! ## A236293.P13805017269549338124

`A001221(A203181(5*(n+1))+31)`
-/

namespace A236293.P13805017269549338124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A203181 (5 * (n + 1)) + 31).toNat

end

end A236293.P13805017269549338124

/-! ## A236293.P2937957599338927549

`A084558(gcd(A000079(n), A349061(3*n+1)))`
-/

namespace A236293.P2937957599338927549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.gcd (A000079 n) (A349061 (3 * n + 1)))

end

end A236293.P2937957599338927549

/-! ## A236293.P14918813562181710236

`A137921(A020596(2*(n+1))%A136140(n+4))`
-/

namespace A236293.P14918813562181710236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (Int.tmod (A020596 (2 * (n + 1))) (A136140 (n + 4))).toNat

end

end A236293.P14918813562181710236

/-!
# A236294: a(n) = max( a(n-1) + a(n-3), 2*a(n-2) ) - a(n-4), with a(0)=1, a(1)=1, a(2)=2, a(3)=3.

The programs for A236294, the canonical program `A236294.P17686924681662183359` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236294 has offset 0).

The definition of A236294 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220838, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236294.P17686924681662183359

`A220838(n+5)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236294

/-- `A220838(n+5)` -/
def P17686924681662183359.Spec : Prop :=
  ∀ n, P17686924681662183359.a n = A236294 n

theorem P17686924681662183359.correct : P17686924681662183359.Spec := by
  intro n
  simp only [A236294]

end A236294

/-! ## A236294.P6652496249937825938

`ceil(∑[or(2, A030451(n))]/4)`
-/

namespace A236294.P6652496249937825938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A030451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉

end

end A236294.P6652496249937825938

namespace A236294

/-- `ceil(∑[or(2, A030451(n))]/4)` -/
def P6652496249937825938.Spec : Prop :=
  ∀ n, P6652496249937825938.a n = A236294 n

end A236294

/-! ## A236294.P1580016404422255718

`A014017(n)+∑[A110656(n)]`
-/

namespace A236294.P1580016404422255718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236294.P1580016404422255718

namespace A236294

/-- `A014017(n)+∑[A110656(n)]` -/
def P1580016404422255718.Spec : Prop :=
  ∀ n, P1580016404422255718.a n = A236294 n

end A236294

/-! ## A236294.P11180990188898205869

`A357745(n+1)-A259042(n)`
-/

namespace A236294.P11180990188898205869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357745 (n + 1) - A259042 n

end

end A236294.P11180990188898205869

namespace A236294

/-- `A357745(n+1)-A259042(n)` -/
def P11180990188898205869.Spec : Prop :=
  ∀ n, P11180990188898205869.a n = A236294 n

end A236294

/-! ## A236294.P5748936901051648551

`A056594(A004525(n))+∑[A110656(n)]`
-/

namespace A236294.P5748936901051648551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A004525 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236294.P5748936901051648551

namespace A236294

/-- `A056594(A004525(n))+∑[A110656(n)]` -/
def P5748936901051648551.Spec : Prop :=
  ∀ n, P5748936901051648551.a n = A236294 n

end A236294

/-! ## A236294.P13556854327079074486

`A122056(n+1)+A014017(n)-A122056(n)`
-/

namespace A236294.P13556854327079074486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122056 (n + 1) + (A014017 n - A122056 n)

end

end A236294.P13556854327079074486

namespace A236294

/-- `A122056(n+1)+A014017(n)-A122056(n)` -/
def P13556854327079074486.Spec : Prop :=
  ∀ n, P13556854327079074486.a n = A236294 n

end A236294

/-! ## A236294.P10091760222592775134

`A056594(A047273(n+1))+∑[A110656(n)]`
-/

namespace A236294.P10091760222592775134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A047273 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236294.P10091760222592775134

namespace A236294

/-- `A056594(A047273(n+1))+∑[A110656(n)]` -/
def P10091760222592775134.Spec : Prop :=
  ∀ n, P10091760222592775134.a n = A236294 n

end A236294

/-! ## A236294.P15367002898247676060

`A110655(∑[or(2, A030451(n))])`
-/

namespace A236294.P15367002898247676060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A030451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236294.P15367002898247676060

namespace A236294

/-- `A110655(∑[or(2, A030451(n))])` -/
def P15367002898247676060.Spec : Prop :=
  ∀ n, P15367002898247676060.a n = A236294 n

end A236294

/-! ## A236294.P5195854345957754193

`round((A004525(A034856(n+1))/(n+1))²)`
-/

namespace A236294.P5195854345957754193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A004525 (A034856 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)) ^ 2)

end

end A236294.P5195854345957754193

namespace A236294

/-- `round((A004525(A034856(n+1))/(n+1))²)` -/
def P5195854345957754193.Spec : Prop :=
  ∀ n, P5195854345957754193.a n = A236294 n

end A236294

/-!
# A236296: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median plus the minimum of every 2X2 subblock.

The programs for A236296, there is no canonical definition to state claims against.
-/

/-! ## A236296.P10252731066010215805

`A236299(∑[n]+1)`
-/

namespace A236296.P10252731066010215805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236296.P10252731066010215805

/-! ## A236296.P17013603665346852514

`lcm(2, A236299(A000124(n)))`
-/

namespace A236296.P17013603665346852514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236299 (A000124 n).toNat)

end

end A236296.P17013603665346852514

/-! ## A236296.P3366859794278150399

`record[A236299(A246276(n+1))]`
-/

namespace A236296.P3366859794278150399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236299 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236296.P3366859794278150399

/-! ## A236296.P11406235232445262038

`record[A010054(n)*A236299(n+1)]`
-/

namespace A236296.P11406235232445262038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236296.P11406235232445262038

/-!
# A236297: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median plus the minimum of every 2X2 subblock.

The programs for A236297, there is no canonical definition to state claims against.
-/

/-! ## A236297.P3786413166991671014

`A236299(∑[n+1]+2)`
-/

namespace A236297.P3786413166991671014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236299 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236297.P3786413166991671014

/-! ## A236297.P12891710042177728656

`record[A010054(n)*A236299(n+2)]`
-/

namespace A236297.P12891710042177728656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236297.P12891710042177728656

/-! ## A236297.P13904635530228924364

`record[gcd(A168068(n), A236299(n+2))]`
-/

namespace A236297.P13904635530228924364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168068 n) (A236299 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236297.P13904635530228924364

/-!
# A236298: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the upper median plus the minimum of every 2X2 subblock.

The programs for A236298, there is no canonical definition to state claims against.
-/

/-! ## A236298.P5922247293627344966

`A236299(∑[n+2]+4)`
-/

namespace A236298.P5922247293627344966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236299 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236298.P5922247293627344966

/-! ## A236298.P17554354134586832738

`record[A236299(n+4)*A319933(n)]`
-/

namespace A236298.P17554354134586832738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236299 (n + 4) * A319933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236298.P17554354134586832738

