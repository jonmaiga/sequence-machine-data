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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A134002: Positive integers n such that n(n+5)=a(a+5)+b(b+5) is solvable in positive integers.

The programs for A134002, there is no canonical definition to state claims against.
-/

/-! ## A134002.P13313925571228306289

`comp[A134003(n+1)-1]+1`
-/

namespace A134002.P13313925571228306289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134003 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A134002.P13313925571228306289

/-! ## A134002.P2230374521975481331

`lt[1, A052344(A167614(n+1))]`
-/

namespace A134002.P2230374521975481331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A167614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134002.P2230374521975481331

/-! ## A134002.P11257458571533085449

`lt[1, A024316(A000217(n+2))]`
-/

namespace A134002.P11257458571533085449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (A000217 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134002.P11257458571533085449

/-! ## A134002.P10905852516386007586

`lt[1, A024316(A117142(2*n+3))]`
-/

namespace A134002.P10905852516386007586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (A117142 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134002.P10905852516386007586

/-! ## A134002.P11106116820036303774

`lt[1, A258257(A052905(n)+8)]+1`
-/

namespace A134002.P11106116820036303774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258257 (A052905 n + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A134002.P11106116820036303774

/-! ## A134002.P4099378775142240066

`lt[1, A258257(A133263(n+1)+1)]-1`
-/

namespace A134002.P4099378775142240066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258257 (A133263 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A134002.P4099378775142240066

/-! ## A134002.P17780843025047158400

`eq[A000007(n), A101264(A027691(n+2))]`
-/

namespace A134002.P17780843025047158400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A027691 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134002.P17780843025047158400

/-! ## A134002.P7641458260629757292

`eq[A000038(n), A101264(A027691(n+2))]`
-/

namespace A134002.P7641458260629757292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A027691 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134002.P7641458260629757292

/-! ## A134002.P2197126392212055150

`eq[A088917(n²), A101264(A027691(n+2))]`
-/

namespace A134002.P2197126392212055150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A027691 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134002.P2197126392212055150

/-!
# A134003: Positive integers n for which n^2+(n+5)^2 is prime.

The programs for A134003, there is no canonical definition to state claims against.
-/

/-! ## A134003.P16096533010445760046

`eq[1, A001222((n+5)²+n²)]`
-/

namespace A134003.P16096533010445760046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 5) ^ 2 + n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134003.P16096533010445760046

/-! ## A134003.P8683328935739958507

`eq[2, A000005((n+5)²+n²)]`
-/

namespace A134003.P8683328935739958507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 5) ^ 2 + n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134003.P8683328935739958507

/-! ## A134003.P13139532012387113392

`lt[A001222(2*((n+3)²-n)+7), 2]`
-/

namespace A134003.P13139532012387113392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (((n + 3) ^ 2 : ℤ) - (n : ℤ)) + 7).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134003.P13139532012387113392

/-! ## A134003.P10811517184260455116

`lt[A000005(4*(∑[n+1]+n+4)+5), 3]`
-/

namespace A134003.P10811517184260455116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (∑ j ∈ Finset.range (n + 1), f2 j + n + 4) + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A134003.P10811517184260455116

/-! ## A134003.P3355095652647062323

`eq[1, A307597(A167614(n+1))]`
-/

namespace A134003.P3355095652647062323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A167614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134003.P3355095652647062323

/-! ## A134003.P1216443540363616389

`eq[1, A101264(A027691(n+2))]`
-/

namespace A134003.P1216443540363616389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A027691 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134003.P1216443540363616389

/-! ## A134003.P13402143093985936959

`eq[1, A307597(A055998(n)+6)]`
-/

namespace A134003.P13402143093985936959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A055998 n + 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134003.P13402143093985936959

/-! ## A134003.P2103809931060591901

`eq[1, A307597(A046691(n)+7)]`
-/

namespace A134003.P2103809931060591901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A046691 n + 7).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134003.P2103809931060591901

/-! ## A134003.P2458066187925426368

`lt[A000005(4*A167614(n+2)+1), 3]+1`
-/

namespace A134003.P2458066187925426368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * A167614 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A134003.P2458066187925426368

/-! ## A134003.P6691586934655631844

`eq[2, A000005(4*(A052905(n)+8)+1)]+1`
-/

namespace A134003.P6691586934655631844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (A052905 n + 8) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134003.P6691586934655631844

/-!
# A134004: Expansion of (chi(-x) * chi(-x^19))^(-2) in powers of x where chi() is a Ramanujan theta function.

The programs for A134004, there is no canonical definition to state claims against.
-/

/-! ## A134004.P16814276008623403851

`A335462(A047030(3*n))+A022567(n)`
-/

namespace A134004.P16814276008623403851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A047030 (3 * n)).toNat + A022567 n

end

end A134004.P16814276008623403851

/-! ## A134004.P15142526935250305198

`2*A185284(A000931(n))+A290133(n)+A057427(n)`
-/

namespace A134004.P15142526935250305198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185284 (A000931 n).toNat + (A290133 n + A057427 n)

end

end A134004.P15142526935250305198

/-!
# A134006: a(n) = 1^n + 3^n + 5^n + 7^n.

The programs for A134006, the canonical program `A134006.P14118080059771152879` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134006 has offset 0).

The definition of A134006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+5^n+7^n` (program `A134006.P14118080059771152879`, by `A134006.P14118080059771152879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134006.P14118080059771152879

`1^n+3^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134006

/-- `1^n+3^n+5^n+7^n` -/
def P14118080059771152879.Spec : Prop :=
  ∀ n, (P14118080059771152879.a n : ℤ) = A134006 n

theorem P14118080059771152879.correct : P14118080059771152879.Spec := by
  intro n
  simp only [A134006]

end A134006

/-! ## A134006.P3434336792274609250

`lcm(2, A074552(n)+1)`
-/

namespace A134006.P3434336792274609250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A074552 n + 1)

end

end A134006.P3434336792274609250

namespace A134006

/-- `lcm(2, A074552(n)+1)` -/
def P3434336792274609250.Spec : Prop :=
  ∀ n, (P3434336792274609250.a n : ℤ) = A134006 n

end A134006

/-! ## A134006.P5854597050843996882

`abs(2^n-1-A135168(n))`
-/

namespace A134006.P5854597050843996882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A135168 n|

end

end A134006.P5854597050843996882

namespace A134006

/-- `abs(2^n-1-A135168(n))` -/
def P5854597050843996882.Spec : Prop :=
  ∀ n, P5854597050843996882.a n = A134006 n

end A134006

/-! ## A134006.P6634144647031159780

`2*(A081336(n)+A034478(n))`
-/

namespace A134006.P6634144647031159780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081336 n + A034478 n)

end

end A134006.P6634144647031159780

namespace A134006

/-- `2*(A081336(n)+A034478(n))` -/
def P6634144647031159780.Spec : Prop :=
  ∀ n, P6634144647031159780.a n = A134006 n

end A134006

/-! ## A134006.P1893559599882875173

`xor(2, A178674(n)+A074616(n))`
-/

namespace A134006.P1893559599882875173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A178674 n + A074616 n)

end

end A134006.P1893559599882875173

namespace A134006

/-- `xor(2, A178674(n)+A074616(n))` -/
def P1893559599882875173.Spec : Prop :=
  ∀ n, P1893559599882875173.a n = A134006 n

end A134006

/-! ## A134006.P18064640611730025807

`abs(1-(A011782(n+1)-A135168(n)))`
-/

namespace A134006.P18064640611730025807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A011782 (n + 1) - A135168 n)|

end

end A134006.P18064640611730025807

namespace A134006

/-- `abs(1-(A011782(n+1)-A135168(n)))` -/
def P18064640611730025807.Spec : Prop :=
  ∀ n, P18064640611730025807.a n = A134006 n

end A134006

/-! ## A134006.P3158731031563520689

`abs(A074552(n)+A052905(n)-A055999(n))`
-/

namespace A134006.P3158731031563520689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074552 n + (A052905 n - A055999 n)|

end

end A134006.P3158731031563520689

namespace A134006

/-- `abs(A074552(n)+A052905(n)-A055999(n))` -/
def P3158731031563520689.Spec : Prop :=
  ∀ n, P3158731031563520689.a n = A134006 n

end A134006

/-! ## A134006.P15522572403439494977

`abs(A001019(n)-A134007(n))`
-/

namespace A134006.P15522572403439494977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - A134007 n|

end

end A134006.P15522572403439494977

namespace A134006

/-- `abs(A001019(n)-A134007(n))` -/
def P15522572403439494977.Spec : Prop :=
  ∀ n, P15522572403439494977.a n = A134006 n

end A134006

/-!
# A134007: a(n) = 1^n + 3^n + 5^n + 7^n + 9^n.

The programs for A134007, the canonical program `A134007.P9662278182209704865` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134007 has offset 0).

The definition of A134007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+5^n+7^n+9^n` (program `A134007.P9662278182209704865`, by `A134007.P9662278182209704865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134007.P9662278182209704865

`1^n+3^n+5^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134007

/-- `1^n+3^n+5^n+7^n+9^n` -/
def P9662278182209704865.Spec : Prop :=
  ∀ n, (P9662278182209704865.a n : ℤ) = A134007 n

theorem P9662278182209704865.correct : P9662278182209704865.Spec := by
  intro n
  simp only [A134007]

end A134007

/-! ## A134007.P4926346619756666708

`or(1, A074559(n)+A000351(n))`
-/

namespace A134007.P4926346619756666708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074559 n + A000351 n)

end

end A134007.P4926346619756666708

namespace A134007

/-- `or(1, A074559(n)+A000351(n))` -/
def P4926346619756666708.Spec : Prop :=
  ∀ n, P4926346619756666708.a n = A134007 n

end A134007

/-! ## A134007.P14659628812546935966

`xor(1, A074616(n)+A074610(n))`
-/

namespace A134007.P14659628812546935966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074616 n + A074610 n)

end

end A134007.P14659628812546935966

namespace A134007

/-- `xor(1, A074616(n)+A074610(n))` -/
def P14659628812546935966.Spec : Prop :=
  ∀ n, P14659628812546935966.a n = A134007 n

end A134007

/-! ## A134007.P3042210906814092555

`xor(3, A074524(n)+A074507(n))`
-/

namespace A134007.P3042210906814092555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A074524 n + A074507 n)

end

end A134007.P3042210906814092555

namespace A134007

/-- `xor(3, A074524(n)+A074507(n))` -/
def P3042210906814092555.Spec : Prop :=
  ∀ n, P3042210906814092555.a n = A134007 n

end A134007

/-! ## A134007.P8961532591573364667

`xor(A074559(n)+A000351(n), A057427(n+1))`
-/

namespace A134007.P8961532591573364667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A074559 n + A000351 n) (A057427 (n + 1))

end

end A134007.P8961532591573364667

namespace A134007

/-- `xor(A074559(n)+A000351(n), A057427(n+1))` -/
def P8961532591573364667.Spec : Prop :=
  ∀ n, P8961532591573364667.a n = A134007 n

end A134007

/-!
# A134008: a(n) = 1^n + 3^n + 5^n + 7^n + 9^n + 11^n.

The programs for A134008, the canonical program `A134008.P7763736306758849786` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134008 has offset 0).

The definition of A134008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+5^n+7^n+9^n+11^n` (program `A134008.P7763736306758849786`, by `A134008.P7763736306758849786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134008.P7763736306758849786

`1^n+3^n+5^n+7^n+9^n+11^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134008

/-- `1^n+3^n+5^n+7^n+9^n+11^n` -/
def P7763736306758849786.Spec : Prop :=
  ∀ n, (P7763736306758849786.a n : ℤ) = A134008 n

theorem P7763736306758849786.correct : P7763736306758849786.Spec := by
  intro n
  simp only [A134008]

end A134008

/-!
# A134009: a(1) = 1; a(n+1) = round(sqrt(3)*a(n)).

The programs for A134009, the canonical program `A134009.P330398258108779160` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134009 has offset 1).

The definition of A134009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134009.P330398258108779160

`round(sqrt(3)*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134009

/-- `round(sqrt(3)*a(n-1))` -/
def P330398258108779160.Spec : Prop :=
  ∀ n, P330398258108779160.a n = A134009 (n + 1)

theorem P330398258108779160.correct : P330398258108779160.Spec := by
  intro n
  simp only [A134009, Nat.add_sub_cancel]

end A134009

/-! ## A134009.P7013696811299591366

`round(a(n-1)/sqrt(1/3))` with `a(0)=1`
-/

namespace A134009.P7013696811299591366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 3 : ℝ))

end

end A134009.P7013696811299591366

namespace A134009

/-- `round(a(n-1)/sqrt(1/3))` -/
def P7013696811299591366.Spec : Prop :=
  ∀ n, P7013696811299591366.a n = A134009 (n + 1)

end A134009

/-! ## A134009.P6960796807475406177

`floor((sqrt(12)*a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A134009.P6960796807475406177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (12 : ℝ) * (a (n - 1) : ℝ) + 1) / 2⌋

end

end A134009.P6960796807475406177

namespace A134009

/-- `floor((sqrt(12)*a(n-1)+1)/2)` -/
def P6960796807475406177.Spec : Prop :=
  ∀ n, P6960796807475406177.a n = A134009 (n + 1)

end A134009

/-! ## A134009.P1053627083758995905

`ceil(floor(2*sqrt(3)*a(n-1))/2)` with `a(0)=1`
-/

namespace A134009.P1053627083758995905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(⌊2 * (Real.sqrt (3 : ℝ) * (a (n - 1) : ℝ))⌋ : ℚ) / 2⌉

end

end A134009.P1053627083758995905

namespace A134009

/-- `ceil(floor(2*sqrt(3)*a(n-1))/2)` -/
def P1053627083758995905.Spec : Prop :=
  ∀ n, P1053627083758995905.a n = A134009 (n + 1)

end A134009

/-!
# A134010: a(n) = n^(initial digit of n).

The programs for A134010, the canonical program `A134010.P17267097740225297527` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134010 has offset 0).

The definition of A134010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134010.P17267097740225297527

`n^A000030(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A134010

/-- `n^A000030(n)` -/
def P17267097740225297527.Spec : Prop :=
  ∀ n, P17267097740225297527.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P16568714323578435338

`n^(A004086(n)%10)`
-/

namespace A134010.P16568714323578435338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A004086 n) 10 : ℤ)

end

end A134010.P16568714323578435338

namespace A134010

/-- `n^(A004086(n)%10)` -/
def P16568714323578435338.Spec : Prop :=
  ∀ n, P16568714323578435338.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P1862842887466259200

`n^(A056142(n)%10)`
-/

namespace A134010.P1862842887466259200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A056142 n) 10 : ℤ)

end

end A134010.P1862842887466259200

namespace A134010

/-- `n^(A056142(n)%10)` -/
def P1862842887466259200.Spec : Prop :=
  ∀ n, P1862842887466259200.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P4915836937568775130

`n^(A262037(n)%10)`
-/

namespace A134010.P4915836937568775130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A262037 n) 10 : ℤ)

end

end A134010.P4915836937568775130

namespace A134010

/-- `n^(A262037(n)%10)` -/
def P4915836937568775130.Spec : Prop :=
  ∀ n, P4915836937568775130.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P17576631817389718681

`n^(A182324(n)-n)`
-/

namespace A134010.P17576631817389718681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A182324 n - (n : ℤ) : ℤ)

end

end A134010.P17576631817389718681

namespace A134010

/-- `n^(A182324(n)-n)` -/
def P17576631817389718681.Spec : Prop :=
  ∀ n, P17576631817389718681.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P4727115156260111767

`n^A010879(A004086(n))`
-/

namespace A134010.P4727115156260111767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A010879 (A004086 n).toNat : ℤ)

end

end A134010.P4727115156260111767

namespace A134010

/-- `n^A010879(A004086(n))` -/
def P4727115156260111767.Spec : Prop :=
  ∀ n, P4727115156260111767.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P4964453647423089747

`n^(A167998(2*n+1)%Δ[n²])`
-/

namespace A134010.P4964453647423089747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A167998 (2 * n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A134010.P4964453647423089747

namespace A134010

/-- `n^(A167998(2*n+1)%Δ[n²])` -/
def P4964453647423089747.Spec : Prop :=
  ∀ n, P4964453647423089747.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P14096168283980427081

`n^A002993(A018851(n))`
-/

namespace A134010.P14096168283980427081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A002993 (A018851 n).toNat : ℤ)

end

end A134010.P14096168283980427081

namespace A134010

/-- `n^A002993(A018851(n))` -/
def P14096168283980427081.Spec : Prop :=
  ∀ n, P14096168283980427081.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P326378553112396628

`n^A000796(A014777(n))`
-/

namespace A134010.P326378553112396628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A000796 ((A014777 n).toNat + 1) : ℤ)

end

end A134010.P326378553112396628

namespace A134010

/-- `n^A000796(A014777(n))` -/
def P326378553112396628.Spec : Prop :=
  ∀ n, P326378553112396628.a n = (A134010 n : ℚ)

end A134010

/-! ## A134010.P11354907717344301469

`n^dr(A087052(n))`
-/

namespace A134010.P11354907717344301469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (A087052 n)

end

end A134010.P11354907717344301469

namespace A134010

/-- `n^dr(A087052(n))` -/
def P11354907717344301469.Spec : Prop :=
  ∀ n, (P11354907717344301469.a n : ℤ) = A134010 n

end A134010

/-!
# A134011: Period 9: repeat [1, 2, 3, 4, 5, 4, 3, 2, 1].

The programs for A134011, the canonical program `A134011.P7654896498376184745` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134011 has offset 0).

The definition of A134011 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A134011.anchor (n : ℕ) : A134011 n = (([1, 2, 3, 4, 5, 4, 3, 2, 1].getD (n % 9) 0 : ℕ) : ℤ)` in `Proof.A134.A134011`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134011.P7654896498376184745

`a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=4, a(6)=3, a(7)=2, a(8)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134011

/-- `a(n-9)` -/
def P7654896498376184745.Spec : Prop :=
  ∀ n, (P7654896498376184745.a n : ℤ) = A134011 n

theorem P7654896498376184745.correct : P7654896498376184745.Spec := by
  intro n
  simp only [A134011]

end A134011

/-!
# A134012: Period 5: repeat [1, 6, 11, 6, 1].

The programs for A134012, the canonical program `A134012.P12456057488560808509` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134012 has offset 0).

The definition of A134012 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A134012.anchor (n : ℕ) : A134012 n = [1, 6, 11, 6, 1].getD (n % 5) 0` in `Proof.A134.A134012`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134012.P12456057488560808509

`11-5*abs(n%5-2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134012

/-- `11-5*abs(n%5-2)` -/
def P12456057488560808509.Spec : Prop :=
  ∀ n, P12456057488560808509.a n = A134012 n

theorem P12456057488560808509.correct : P12456057488560808509.Spec := by
  intro n
  simp only [A134012]

end A134012

/-!
# A134013: Expansion of q * phi(q) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A134013, the canonical program `A134013.P3057946440017959852` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134013 has offset 1).

The definition of A134013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134013.P3057946440017959852

`(-1)^n*A112301(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A134013

/-- `(-1)^n*A112301(n+1)` -/
def P3057946440017959852.Spec : Prop :=
  ∀ n, P3057946440017959852.a n = A134013 (n + 1)

theorem P3057946440017959852.correct : P3057946440017959852.Spec := by
  intro n
  simp only [A134013, Nat.add_sub_cancel]

end A134013

/-! ## A134013.P2631844353189462862

`abs(A112301(n+1))`
-/

namespace A134013.P2631844353189462862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112301 (n + 1)|

end

end A134013.P2631844353189462862

namespace A134013

/-- `abs(A112301(n+1))` -/
def P2631844353189462862.Spec : Prop :=
  ∀ n, P2631844353189462862.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P2261155108220397547

`∑[1-and(2, n)]*A002654(n+1)`
-/

namespace A134013.P2261155108220397547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002654 (n + 1)

end

end A134013.P2261155108220397547

namespace A134013

/-- `∑[1-and(2, n)]*A002654(n+1)` -/
def P2261155108220397547.Spec : Prop :=
  ∀ n, P2261155108220397547.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P5022877243453852408

`A002654(n+1)*A130731(n)`
-/

namespace A134013.P5022877243453852408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A130731 n

end

end A134013.P5022877243453852408

namespace A134013

/-- `A002654(n+1)*A130731(n)` -/
def P5022877243453852408.Spec : Prop :=
  ∀ n, P5022877243453852408.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P17823834383224680823

`A035184(n+1)*A133872(n)`
-/

namespace A134013.P17823834383224680823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n + 1) * A133872 n

end

end A134013.P17823834383224680823

namespace A134013

/-- `A035184(n+1)*A133872(n)` -/
def P17823834383224680823.Spec : Prop :=
  ∀ n, P17823834383224680823.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P11192062406426768894

`A112301(n+1)*A219977(n)`
-/

namespace A134013.P11192062406426768894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (n + 1) * A219977 n

end

end A134013.P11192062406426768894

namespace A134013

/-- `A112301(n+1)*A219977(n)` -/
def P11192062406426768894.Spec : Prop :=
  ∀ n, P11192062406426768894.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P11690924619868991806

`gcd(A000038(n), A112301(n+1))`
-/

namespace A134013.P11690924619868991806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112301 (n + 1))

end

end A134013.P11690924619868991806

namespace A134013

/-- `gcd(A000038(n), A112301(n+1))` -/
def P11690924619868991806.Spec : Prop :=
  ∀ n, (P11690924619868991806.a n : ℤ) = A134013 (n + 1)

end A134013

/-! ## A134013.P1593302923205194634

`lcm(A000034(n), A112301(n+1))`
-/

namespace A134013.P1593302923205194634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A112301 (n + 1))

end

end A134013.P1593302923205194634

namespace A134013

/-- `lcm(A000034(n), A112301(n+1))` -/
def P1593302923205194634.Spec : Prop :=
  ∀ n, (P1593302923205194634.a n : ℤ) = A134013 (n + 1)

end A134013

/-! ## A134013.P12018091527197386349

`lcm(A035184(n+1), A128130(n))`
-/

namespace A134013.P12018091527197386349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035184 (n + 1)) (A128130 n)

end

end A134013.P12018091527197386349

namespace A134013

/-- `lcm(A035184(n+1), A128130(n))` -/
def P12018091527197386349.Spec : Prop :=
  ∀ n, (P12018091527197386349.a n : ℤ) = A134013 (n + 1)

end A134013

/-! ## A134013.P12989523429926597277

`∑{d}[A112301(n+1), A000010(#)]`
-/

namespace A134013.P12989523429926597277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A134013.P12989523429926597277

namespace A134013

/-- `∑{d}[A112301(n+1), A000010(#)]` -/
def P12989523429926597277.Spec : Prop :=
  ∀ n, P12989523429926597277.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P4895001010049789966

`A035184(A112299(n+1)²+n)`
-/

namespace A134013.P4895001010049789966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (A112299 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A134013.P4895001010049789966

namespace A134013

/-- `A035184(A112299(n+1)²+n)` -/
def P4895001010049789966.Spec : Prop :=
  ∀ n, P4895001010049789966.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P2275862637000570085

`A219977(n)²*A035184(n+1)`
-/

namespace A134013.P2275862637000570085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n ^ 2 * A035184 (n + 1)

end

end A134013.P2275862637000570085

namespace A134013

/-- `A219977(n)²*A035184(n+1)` -/
def P2275862637000570085.Spec : Prop :=
  ∀ n, P2275862637000570085.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P15939667224677475857

`A002654(n+1)*A010873(n+1)`
-/

namespace A134013.P15939667224677475857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A010873 (n + 1)

end

end A134013.P15939667224677475857

namespace A134013

/-- `A002654(n+1)*A010873(n+1)` -/
def P15939667224677475857.Spec : Prop :=
  ∀ n, P15939667224677475857.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P16113246791662561114

`(A101455(n)+1)*A002654(n+1)`
-/

namespace A134013.P16113246791662561114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101455 n + 1) * A002654 (n + 1)

end

end A134013.P16113246791662561114

namespace A134013

/-- `(A101455(n)+1)*A002654(n+1)` -/
def P16113246791662561114.Spec : Prop :=
  ∀ n, P16113246791662561114.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P14550990849117278433

`A112301(n+1)*A209615(n+1)`
-/

namespace A134013.P14550990849117278433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (n + 1) * A209615 (n + 1)

end

end A134013.P14550990849117278433

namespace A134013

/-- `A112301(n+1)*A209615(n+1)` -/
def P14550990849117278433.Spec : Prop :=
  ∀ n, P14550990849117278433.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P13970435047772234457

`A113652(n+1)*A230074(n+1)`
-/

namespace A134013.P13970435047772234457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (n + 1) * A230074 (n + 1)

end

end A134013.P13970435047772234457

namespace A134013

/-- `A113652(n+1)*A230074(n+1)` -/
def P13970435047772234457.Spec : Prop :=
  ∀ n, P13970435047772234457.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P17506271334558451526

`A112301(n+1)*A309873(n+1)`
-/

namespace A134013.P17506271334558451526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (n + 1) * A309873 (n + 1)

end

end A134013.P17506271334558451526

namespace A134013

/-- `A112301(n+1)*A309873(n+1)` -/
def P17506271334558451526.Spec : Prop :=
  ∀ n, P17506271334558451526.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P17849229409001011771

`∑{d}[n+1, A010684(#-1)*A112299((n+1)/#)]`
-/

namespace A134013.P17849229409001011771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010684 (d - 1) * A112299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A134013.P17849229409001011771

namespace A134013

/-- `∑{d}[n+1, A010684(#-1)*A112299((n+1)/#)]` -/
def P17849229409001011771.Spec : Prop :=
  ∀ n, P17849229409001011771.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P18222565273684587600

`A290081(n+1)+A290081(n+1)+A008442(n+1)`
-/

namespace A134013.P18222565273684587600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 (n + 1) + (A290081 (n + 1) + A008442 (n + 1))

end

end A134013.P18222565273684587600

namespace A134013

/-- `A290081(n+1)+A290081(n+1)+A008442(n+1)` -/
def P18222565273684587600.Spec : Prop :=
  ∀ n, P18222565273684587600.a n = A134013 (n + 1)

end A134013

/-! ## A134013.P9757777355417672091

`A134015(n+1)-A134015(2*(n+1))`
-/

namespace A134013.P9757777355417672091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134015 (n + 1) - A134015 (2 * (n + 1))

end

end A134013.P9757777355417672091

namespace A134013

/-- `A134015(n+1)-A134015(2*(n+1))` -/
def P9757777355417672091.Spec : Prop :=
  ∀ n, P9757777355417672091.a n = A134013 (n + 1)

end A134013

/-!
# A134014: Expansion of phi(-q) * phi(q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A134014, there is no canonical definition to state claims against.
-/

/-! ## A134014.P1600990429593467988

`(-1)^n*A004531(n)`
-/

namespace A134014.P1600990429593467988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004531 n

end

end A134014.P1600990429593467988

/-! ## A134014.P17796403521744088159

`A004531(n)*A033999(n)`
-/

namespace A134014.P17796403521744088159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A033999 n

end

end A134014.P17796403521744088159

/-! ## A134014.P6710555716716980443

`A004531(n)*A087960(n)`
-/

namespace A134014.P6710555716716980443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A087960 n

end

end A134014.P6710555716716980443

/-! ## A134014.P11611561961479746601

`A004531(n)*A094267(n)`
-/

namespace A134014.P11611561961479746601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A094267 n

end

end A134014.P11611561961479746601

/-! ## A134014.P17280074625378903522

`A004531(n)*A219977(n)`
-/

namespace A134014.P17280074625378903522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A219977 n

end

end A134014.P17280074625378903522

/-! ## A134014.P15522018921516569202

`A004531(n)*A071935(n+1)`
-/

namespace A134014.P15522018921516569202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A071935 (n + 1)

end

end A134014.P15522018921516569202

/-! ## A134014.P3738913969354287843

`A004531(n)*A309873(n+1)`
-/

namespace A134014.P3738913969354287843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A309873 (n + 1)

end

end A134014.P3738913969354287843

/-! ## A134014.P1322916250537803247

`A097141(A004531(n)+n)-A097141(n)`
-/

namespace A134014.P1322916250537803247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (A004531 n + (n : ℤ)).toNat - A097141 n

end

end A134014.P1322916250537803247

/-! ## A134014.P5581152304861466957

`2*A004531(A109043(n))-A004531(n)`
-/

namespace A134014.P5581152304861466957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004531 (A109043 n).toNat - A004531 n

end

end A134014.P5581152304861466957

/-! ## A134014.P4820358319799603685

`A004531(n)*A010892(3*n)`
-/

namespace A134014.P4820358319799603685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A010892 (3 * n)

end

end A134014.P4820358319799603685

/-!
# A134015: Expansion of (1 - phi(-q) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A134015, the canonical program `A134015.P8862688659031297198` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134015 has offset 1).

The definition of A134015 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134015.P8862688659031297198

`(-1)^n*A113406(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134015

/-- `(-1)^n*A113406(n+1)` -/
def P8862688659031297198.Spec : Prop :=
  ∀ n, P8862688659031297198.a n = A134015 (n + 1)

theorem P8862688659031297198.correct : P8862688659031297198.Spec := by
  intro n
  simp only [A134015, Nat.add_sub_cancel]

end A134015

/-! ## A134015.P15520650032211533511

`(1-A010873(n))*A002654(n+1)`
-/

namespace A134015.P15520650032211533511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010873 n) * A002654 (n + 1)

end

end A134015.P15520650032211533511

namespace A134015

/-- `(1-A010873(n))*A002654(n+1)` -/
def P15520650032211533511.Spec : Prop :=
  ∀ n, P15520650032211533511.a n = A134015 (n + 1)

end A134015

/-! ## A134015.P10326805449952986653

`(2-A130731(n))*A113652(n+1)`
-/

namespace A134015.P10326805449952986653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130731 n) * A113652 (n + 1)

end

end A134015.P10326805449952986653

namespace A134015

/-- `(2-A130731(n))*A113652(n+1)` -/
def P10326805449952986653.Spec : Prop :=
  ∀ n, P10326805449952986653.a n = A134015 (n + 1)

end A134015

/-! ## A134015.P8025904004347825942

`∑{d}[n+1, A069517(#)*A112301((n+1)/#)]`
-/

namespace A134015.P8025904004347825942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d * A112301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A134015.P8025904004347825942

namespace A134015

/-- `∑{d}[n+1, A069517(#)*A112301((n+1)/#)]` -/
def P8025904004347825942.Spec : Prop :=
  ∀ n, P8025904004347825942.a n = A134015 (n + 1)

end A134015

/-! ## A134015.P8102566147113390490

`-(A134014(n+1)/2)`
-/

namespace A134015.P8102566147113390490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A134014 (n + 1) : ℚ) / 2)

end

end A134015.P8102566147113390490

namespace A134015

/-- `-(A134014(n+1)/2)` -/
def P8102566147113390490.Spec : Prop :=
  ∀ n, P8102566147113390490.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P11611965886182129762

`A000038(n+1)-A134014(n+1)/2`
-/

namespace A134015.P11611965886182129762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) - (A134014 (n + 1) : ℚ) / 2

end

end A134015.P11611965886182129762

namespace A134015

/-- `A000038(n+1)-A134014(n+1)/2` -/
def P11611965886182129762.Spec : Prop :=
  ∀ n, P11611965886182129762.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P10384838428266712717

`A134014(n+1)/A134014(A094267(n+1)²)`
-/

namespace A134015.P10384838428266712717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134014 (n + 1) : ℚ) / (A134014 (A094267 (n + 1) ^ 2).toNat : ℚ)

end

end A134015.P10384838428266712717

namespace A134015

/-- `A134014(n+1)/A134014(A094267(n+1)²)` -/
def P10384838428266712717.Spec : Prop :=
  ∀ n, P10384838428266712717.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P14001033998583117473

`A134014(n+1)/(A083914(A198069(n)+1)-2)`
-/

namespace A134015.P14001033998583117473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134014 (n + 1) : ℚ) / (A083914 (A198069 n + 1).toNat - 2 : ℚ)

end

end A134015.P14001033998583117473

namespace A134015

/-- `A134014(n+1)/(A083914(A198069(n)+1)-2)` -/
def P14001033998583117473.Spec : Prop :=
  ∀ n, P14001033998583117473.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P6170453863824505192

`A004531(n+1)/(A094756(n+2)-A094756(3*n+1))`
-/

namespace A134015.P6170453863824505192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004531 (n + 1) : ℚ) / (A094756 (n + 2) - A094756 (3 * n + 1) : ℚ)

end

end A134015.P6170453863824505192

namespace A134015

/-- `A004531(n+1)/(A094756(n+2)-A094756(3*n+1))` -/
def P6170453863824505192.Spec : Prop :=
  ∀ n, P6170453863824505192.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P14887238004511298496

`A087960(2*n)/2*A004531(n+1)`
-/

namespace A134015.P14887238004511298496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n) : ℚ) / 2 * (A004531 (n + 1) : ℚ)

end

end A134015.P14887238004511298496

namespace A134015

/-- `A087960(2*n)/2*A004531(n+1)` -/
def P14887238004511298496.Spec : Prop :=
  ∀ n, P14887238004511298496.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P9885086694115589840

`A134014(n+1)/(A033999(2*n+1)-1)`
-/

namespace A134015.P9885086694115589840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134014 (n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A134015.P9885086694115589840

namespace A134015

/-- `A134014(n+1)/(A033999(2*n+1)-1)` -/
def P9885086694115589840.Spec : Prop :=
  ∀ n, P9885086694115589840.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P9752045683771391571

`A134013(2*(n+1))-A004531(n+1)/2`
-/

namespace A134015.P9752045683771391571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134013 (2 * (n + 1)) : ℚ) - (A004531 (n + 1) : ℚ) / 2

end

end A134015.P9752045683771391571

namespace A134015

/-- `A134013(2*(n+1))-A004531(n+1)/2` -/
def P9752045683771391571.Spec : Prop :=
  ∀ n, P9752045683771391571.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P6835213552380646521

`A083914(2*n+1)-A134014(n+1)/2`
-/

namespace A134015.P6835213552380646521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083914 (2 * n + 1) : ℚ) - (A134014 (n + 1) : ℚ) / 2

end

end A134015.P6835213552380646521

namespace A134015

/-- `A083914(2*n+1)-A134014(n+1)/2` -/
def P6835213552380646521.Spec : Prop :=
  ∀ n, P6835213552380646521.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P700730949329982756

`(A056594(2*n)-A056594(n+1))*A002654(n+1)`
-/

namespace A134015.P700730949329982756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (2 * n) - A056594 (n + 1)) * A002654 (n + 1)

end

end A134015.P700730949329982756

namespace A134015

/-- `(A056594(2*n)-A056594(n+1))*A002654(n+1)` -/
def P700730949329982756.Spec : Prop :=
  ∀ n, P700730949329982756.a n = A134015 (n + 1)

end A134015

/-! ## A134015.P8760428821063419764

`A134014(n+1)/A000034(2*n+1)-A134014(n+1)`
-/

namespace A134015.P8760428821063419764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134014 (n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A134014 (n + 1) : ℚ)

end

end A134015.P8760428821063419764

namespace A134015

/-- `A134014(n+1)/A000034(2*n+1)-A134014(n+1)` -/
def P8760428821063419764.Spec : Prop :=
  ∀ n, P8760428821063419764.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P15052462768060825025

`(A056594(n+1)-A056594(2*n))*A113652(2*(n+1))`
-/

namespace A134015.P15052462768060825025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (n + 1) - A056594 (2 * n)) * A113652 (2 * (n + 1))

end

end A134015.P15052462768060825025

namespace A134015

/-- `(A056594(n+1)-A056594(2*n))*A113652(2*(n+1))` -/
def P15052462768060825025.Spec : Prop :=
  ∀ n, P15052462768060825025.a n = A134015 (n + 1)

end A134015

/-! ## A134015.P9461054328343390133

`A094267(3*n)/2*A004531(n+1)`
-/

namespace A134015.P9461054328343390133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094267 (3 * n) : ℚ) / 2 * (A004531 (n + 1) : ℚ)

end

end A134015.P9461054328343390133

namespace A134015

/-- `A094267(3*n)/2*A004531(n+1)` -/
def P9461054328343390133.Spec : Prop :=
  ∀ n, P9461054328343390133.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P14261117701234507698

`A309873(3*n+1)/2*A004531(n+1)`
-/

namespace A134015.P14261117701234507698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309873 (3 * n + 1) : ℚ) / 2 * (A004531 (n + 1) : ℚ)

end

end A134015.P14261117701234507698

namespace A134015

/-- `A309873(3*n+1)/2*A004531(n+1)` -/
def P14261117701234507698.Spec : Prop :=
  ∀ n, P14261117701234507698.a n = (A134015 (n + 1) : ℚ)

end A134015

/-! ## A134015.P15085245432980362325

`A134014(n+1)/A134014(A094267(4*n))`
-/

namespace A134015.P15085245432980362325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134014 (n + 1) : ℚ) / (A134014 (A094267 (4 * n)).toNat : ℚ)

end

end A134015.P15085245432980362325

namespace A134015

/-- `A134014(n+1)/A134014(A094267(4*n))` -/
def P15085245432980362325.Spec : Prop :=
  ∀ n, P15085245432980362325.a n = (A134015 (n + 1) : ℚ)

end A134015

/-!
# A134016: Inverse score permutation of an Fibonacci -anti-Fibonacci zero sum game of 2 X 2 matrices.

The programs for A134016, the canonical program `A134016.P17603304716164411107` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134016 has offset 1).

The definition of A134016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134016.P17603304716164411107

`4*a(n-2)+a(n-4)` with `a(0)=2, a(1)=6, a(2)=10, a(3)=23`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134016

/-- `4*a(n-2)+a(n-4)` -/
def P17603304716164411107.Spec : Prop :=
  ∀ n, (P17603304716164411107.a n : ℤ) = A134016 (n + 1)

theorem P17603304716164411107.correct : P17603304716164411107.Spec := by
  intro n
  simp only [A134016, Nat.add_sub_cancel]

end A134016

/-!
# A134017: Period 9: repeat [1, 2, 4, 3, 5, 3, 4, 2, 1].

The programs for A134017, the canonical program `A134017.P1964262148705464539` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134017 has offset 0).

The definition of A134017 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A134017.anchor (n : ℕ) : A134017 n = (([1, 2, 4, 3, 5, 3, 4, 2, 1].getD (n % 9) 0 : ℕ) : ℤ)` in `Proof.A134.A134017`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134017.P1964262148705464539

`a(n-9)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=5, a(5)=3, a(6)=4, a(7)=2, a(8)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134017

/-- `a(n-9)` -/
def P1964262148705464539.Spec : Prop :=
  ∀ n, (P1964262148705464539.a n : ℤ) = A134017 n

theorem P1964262148705464539.correct : P1964262148705464539.Spec := by
  intro n
  simp only [A134017]

end A134017

/-!
# A134018: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are disjoint and for which either x is a subset of y or y is a subset of x, or 1) x and y are intersecting but for which x is not a subset of y and y is not a subset of x.

The programs for A134018, the canonical program `A134018.P16960506103177957056` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134018 has offset 0).

The definition of A134018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134018.P16960506103177957056

`1/2*(4^n-3^(n+1)+5*2^n-3)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134018

/-- `1/2*(4^n-3^(n+1)+5*2^n-3)` -/
def P16960506103177957056.Spec : Prop :=
  ∀ n, P16960506103177957056.a n = (A134018 n : ℚ)

end A134018

/-! ## A134018.P5781454583971291982

`and((2^n+4^n)/2-∑[3^n-2^n]-1, floor(acot(n))-1)`
-/

namespace A134018.P5781454583971291982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - 1)) (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A134018.P5781454583971291982

namespace A134018

/-- `and((2^n+4^n)/2-∑[3^n-2^n]-1, floor(acot(n))-1)` -/
def P5781454583971291982.Spec : Prop :=
  ∀ n, P5781454583971291982.a n = A134018 n

end A134018

/-! ## A134018.P14842482740957180198

`A134019(n)-1`
-/

namespace A134018.P14842482740957180198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n - 1

end

end A134018.P14842482740957180198

namespace A134018

/-- `A134019(n)-1` -/
def P14842482740957180198.Spec : Prop :=
  ∀ n, P14842482740957180198.a n = A134018 n

end A134018

/-! ## A134018.P15431984240948961400

`A134045(n)-2^n`
-/

namespace A134018.P15431984240948961400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134045 n - (2 ^ n : ℤ)

end

end A134018.P15431984240948961400

namespace A134018

/-- `A134045(n)-2^n` -/
def P15431984240948961400.Spec : Prop :=
  ∀ n, P15431984240948961400.a n = A134018 n

end A134018

/-! ## A134018.P1605296205550947009

`A032263(n+1)+2^n-1`
-/

namespace A134018.P1605296205550947009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + ((2 ^ n : ℤ) - 1)

end

end A134018.P1605296205550947009

namespace A134018

/-- `A032263(n+1)+2^n-1` -/
def P1605296205550947009.Spec : Prop :=
  ∀ n, P1605296205550947009.a n = A134018 n

end A134018

/-! ## A134018.P12267490085082690690

`abs(3^n-∑[2^n]-A053154(n))`
-/

namespace A134018.P12267490085082690690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053154 n|

end

end A134018.P12267490085082690690

namespace A134018

/-- `abs(3^n-∑[2^n]-A053154(n))` -/
def P12267490085082690690.Spec : Prop :=
  ∀ n, P12267490085082690690.a n = A134018 n

end A134018

/-! ## A134018.P2801829519874712644

`A000225(n)+(2^n+4^n)/2-(∑[3^n]+1-2^n)`
-/

namespace A134018.P2801829519874712644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) + ((2 ^ n + 4 ^ n : ℚ) / 2 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ)) : ℚ))

end

end A134018.P2801829519874712644

namespace A134018

/-- `A000225(n)+(2^n+4^n)/2-(∑[3^n]+1-2^n)` -/
def P2801829519874712644.Spec : Prop :=
  ∀ n, P2801829519874712644.a n = (A134018 n : ℚ)

end A134018

/-! ## A134018.P8930618859680259523

`A134165(n)-A007051(n)`
-/

namespace A134018.P8930618859680259523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - A007051 n

end

end A134018.P8930618859680259523

namespace A134018

/-- `A134165(n)-A007051(n)` -/
def P8930618859680259523.Spec : Prop :=
  ∀ n, P8930618859680259523.a n = A134018 n

end A134018

/-! ## A134018.P1442181108328321835

`A134168(n)-A083323(n)`
-/

namespace A134018.P1442181108328321835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - A083323 n

end

end A134018.P1442181108328321835

namespace A134018

/-- `A134168(n)-A083323(n)` -/
def P1442181108328321835.Spec : Prop :=
  ∀ n, P1442181108328321835.a n = A134018 n

end A134018

/-! ## A134018.P16827683442575233909

`A084869(n)-A134063(n)`
-/

namespace A134018.P16827683442575233909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - A134063 n

end

end A134018.P16827683442575233909

namespace A134018

/-- `A084869(n)-A134063(n)` -/
def P16827683442575233909.Spec : Prop :=
  ∀ n, P16827683442575233909.a n = A134018 n

end A134018

/-! ## A134018.P5665101170261119945

`A256873(n)-A067771(n)`
-/

namespace A134018.P5665101170261119945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n - A067771 n

end

end A134018.P5665101170261119945

namespace A134018

/-- `A256873(n)-A067771(n)` -/
def P5665101170261119945.Spec : Prop :=
  ∀ n, P5665101170261119945.a n = A134018 n

end A134018

/-! ## A134018.P11996769252127395577

`A053154(n)-A028243(n+1)`
-/

namespace A134018.P11996769252127395577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n - A028243 (n + 1)

end

end A134018.P11996769252127395577

namespace A134018

/-- `A053154(n)-A028243(n+1)` -/
def P11996769252127395577.Spec : Prop :=
  ∀ n, P11996769252127395577.a n = A134018 n

end A134018

/-! ## A134018.P17170126649126617048

`A133789(n)-A000392(n+1)`
-/

namespace A134018.P17170126649126617048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n - A000392 (n + 1)

end

end A134018.P17170126649126617048

namespace A134018

/-- `A133789(n)-A000392(n+1)` -/
def P17170126649126617048.Spec : Prop :=
  ∀ n, P17170126649126617048.a n = A134018 n

end A134018

/-! ## A134018.P17043062133539060489

`floor(A000225(n)+A028244(n+1)/2)`
-/

namespace A134018.P17043062133539060489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n : ℚ) + (A028244 (n + 1) : ℚ) / 2⌋

end

end A134018.P17043062133539060489

namespace A134018

/-- `floor(A000225(n)+A028244(n+1)/2)` -/
def P17043062133539060489.Spec : Prop :=
  ∀ n, P17043062133539060489.a n = A134018 n

end A134018

/-! ## A134018.P8731669549601438052

`A056326(2*n+1)-A000392(n+2)`
-/

namespace A134018.P8731669549601438052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (2 * n + 1) - A000392 (n + 2)

end

end A134018.P8731669549601438052

namespace A134018

/-- `A056326(2*n+1)-A000392(n+2)` -/
def P8731669549601438052.Spec : Prop :=
  ∀ n, P8731669549601438052.a n = A134018 n

end A134018

/-! ## A134018.P13420078710155455151

`A134165(n)-(A000392(n+1)+A000079(n))`
-/

namespace A134018.P13420078710155455151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - (A000392 (n + 1) + A000079 n)

end

end A134018.P13420078710155455151

namespace A134018

/-- `A134165(n)-(A000392(n+1)+A000079(n))` -/
def P13420078710155455151.Spec : Prop :=
  ∀ n, P13420078710155455151.a n = A134018 n

end A134018

/-! ## A134018.P2414269875277856398

`A134168(n)-(A028243(n+1)+A000079(n))`
-/

namespace A134018.P2414269875277856398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - (A028243 (n + 1) + A000079 n)

end

end A134018.P2414269875277856398

namespace A134018

/-- `A134168(n)-(A028243(n+1)+A000079(n))` -/
def P2414269875277856398.Spec : Prop :=
  ∀ n, P2414269875277856398.a n = A134018 n

end A134018

/-! ## A134018.P9595096722876190305

`floor(A000225(n)+A000919(n+1)/8)`
-/

namespace A134018.P9595096722876190305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n : ℚ) + (A000919 (n + 1) : ℚ) / 8⌋

end

end A134018.P9595096722876190305

namespace A134018

/-- `floor(A000225(n)+A000919(n+1)/8)` -/
def P9595096722876190305.Spec : Prop :=
  ∀ n, P9595096722876190305.a n = A134018 n

end A134018

/-!
# A134019: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are intersecting but for which x is not a subset of y and y is not a subset of x, or 1) x = y.

The programs for A134019, the canonical program `A134019.P17003051754613294007` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134019 has offset 0).

The definition of A134019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134019.P17003051754613294007

`(4^n-3^(n+1)+5*2^n-1)/2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134019

/-- `(4^n-3^(n+1)+5*2^n-1)/2` -/
def P17003051754613294007.Spec : Prop :=
  ∀ n, P17003051754613294007.a n = (A134019 n : ℚ)

end A134019

/-! ## A134019.P16933939709845238191

`A134018(n)+1`
-/

namespace A134019.P16933939709845238191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n + 1

end

end A134019.P16933939709845238191

namespace A134019

/-- `A134018(n)+1` -/
def P16933939709845238191.Spec : Prop :=
  ∀ n, P16933939709845238191.a n = A134019 n

end A134019

/-! ## A134019.P638367240802055835

`A032263(n+1)+2^n`
-/

namespace A134019.P638367240802055835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + (2 ^ n : ℤ)

end

end A134019.P638367240802055835

namespace A134019

/-- `A032263(n+1)+2^n` -/
def P638367240802055835.Spec : Prop :=
  ∀ n, P638367240802055835.a n = A134019 n

end A134019

/-! ## A134019.P869961691157149828

`abs(2^n-1-A134045(n))`
-/

namespace A134019.P869961691157149828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A134045 n|

end

end A134019.P869961691157149828

namespace A134019

/-- `abs(2^n-1-A134045(n))` -/
def P869961691157149828.Spec : Prop :=
  ∀ n, P869961691157149828.a n = A134019 n

end A134019

/-! ## A134019.P3817187050023600067

`2^n-1+(2^n+3)*2^(n-1)-3^n-A003462(n)`
-/

namespace A134019.P3817187050023600067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) + ((2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (3 ^ n : ℚ)) - (A003462 n : ℚ)

end

end A134019.P3817187050023600067

namespace A134019

/-- `2^n-1+(2^n+3)*2^(n-1)-3^n-A003462(n)` -/
def P3817187050023600067.Spec : Prop :=
  ∀ n, P3817187050023600067.a n = (A134019 n : ℚ)

end A134019

/-! ## A134019.P9715375431714565600

`A134045(n)-A000225(n)`
-/

namespace A134019.P9715375431714565600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134045 n - A000225 n

end

end A134019.P9715375431714565600

namespace A134019

/-- `A134045(n)-A000225(n)` -/
def P9715375431714565600.Spec : Prop :=
  ∀ n, P9715375431714565600.a n = A134019 n

end A134019

/-! ## A134019.P7369292588292077102

`A134168(n)-A001047(n)`
-/

namespace A134019.P7369292588292077102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - A001047 n

end

end A134019.P7369292588292077102

namespace A134019

/-- `A134168(n)-A001047(n)` -/
def P7369292588292077102.Spec : Prop :=
  ∀ n, P7369292588292077102.a n = A134019 n

end A134019

/-! ## A134019.P13760729968182741715

`A196836(n)-A002783(n)`
-/

namespace A134019.P13760729968182741715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196836 n - A002783 n

end

end A134019.P13760729968182741715

namespace A134019

/-- `A196836(n)-A002783(n)` -/
def P13760729968182741715.Spec : Prop :=
  ∀ n, P13760729968182741715.a n = A134019 n

end A134019

/-! ## A134019.P16521709284598844900

`A084869(n)-A000392(n+1)`
-/

namespace A134019.P16521709284598844900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - A000392 (n + 1)

end

end A134019.P16521709284598844900

namespace A134019

/-- `A084869(n)-A000392(n+1)` -/
def P16521709284598844900.Spec : Prop :=
  ∀ n, P16521709284598844900.a n = A134019 n

end A134019

/-! ## A134019.P12948990177604784342

`A134064(n)-A028243(n+1)`
-/

namespace A134019.P12948990177604784342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n - A028243 (n + 1)

end

end A134019.P12948990177604784342

namespace A134019

/-- `A134064(n)-A028243(n+1)` -/
def P12948990177604784342.Spec : Prop :=
  ∀ n, P12948990177604784342.a n = A134019 n

end A134019

/-! ## A134019.P3599128587894319008

`A257273(n)-A053156(n+1)`
-/

namespace A134019.P3599128587894319008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A053156 (n + 1)

end

end A134019.P3599128587894319008

namespace A134019

/-- `A257273(n)-A053156(n+1)` -/
def P3599128587894319008.Spec : Prop :=
  ∀ n, P3599128587894319008.a n = A134019 n

end A134019

/-! ## A134019.P1392312844760081365

`A257272(n)-A267799(n+1)`
-/

namespace A134019.P1392312844760081365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 n - A267799 (n + 1)

end

end A134019.P1392312844760081365

namespace A134019

/-- `A257272(n)-A267799(n+1)` -/
def P1392312844760081365.Spec : Prop :=
  ∀ n, P1392312844760081365.a n = A134019 n

end A134019

/-! ## A134019.P16292495680336698100

`A007582(n)-A000392(n+2)`
-/

namespace A134019.P16292495680336698100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A000392 (n + 2)

end

end A134019.P16292495680336698100

namespace A134019

/-- `A007582(n)-A000392(n+2)` -/
def P16292495680336698100.Spec : Prop :=
  ∀ n, P16292495680336698100.a n = A134019 n

end A134019

/-! ## A134019.P29470822864012607

`A134165(n)-(A000392(n+1)+A000225(n))`
-/

namespace A134019.P29470822864012607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - (A000392 (n + 1) + A000225 n)

end

end A134019.P29470822864012607

namespace A134019

/-- `A134165(n)-(A000392(n+1)+A000225(n))` -/
def P29470822864012607.Spec : Prop :=
  ∀ n, P29470822864012607.a n = A134019 n

end A134019

/-! ## A134019.P11160454839973473744

`A134168(n)-(A028243(n+1)+A000225(n))`
-/

namespace A134019.P11160454839973473744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - (A028243 (n + 1) + A000225 n)

end

end A134019.P11160454839973473744

namespace A134019

/-- `A134168(n)-(A028243(n+1)+A000225(n))` -/
def P11160454839973473744.Spec : Prop :=
  ∀ n, P11160454839973473744.a n = A134019 n

end A134019

/-! ## A134019.P2101952733047689359

`A083324(n)-(A053154(n)+A028243(n+1))`
-/

namespace A134019.P2101952733047689359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 n - (A053154 n + A028243 (n + 1))

end

end A134019.P2101952733047689359

namespace A134019

/-- `A083324(n)-(A053154(n)+A028243(n+1))` -/
def P2101952733047689359.Spec : Prop :=
  ∀ n, P2101952733047689359.a n = A134019 n

end A134019

/-! ## A134019.P5893137236747302450

`A000225(n+1)+A032263(n+1)-A000225(n)`
-/

namespace A134019.P5893137236747302450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A032263 (n + 1) - A000225 n)

end

end A134019.P5893137236747302450

namespace A134019

/-- `A000225(n+1)+A032263(n+1)-A000225(n)` -/
def P5893137236747302450.Spec : Prop :=
  ∀ n, P5893137236747302450.a n = A134019 n

end A134019

/-!
# A134020: Numbers that are one less than a square and have exactly 4 divisors.

The programs for A134020, the canonical program `A134020.P13261369741876060451` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134020 has offset 1).

The definition of A134020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134020.P4258383720087143486

`∪[A037074(n+1), A256423(n+1)]`
-/

namespace A134020.P4258383720087143486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P4258383720087143486

namespace A134020

/-- `∪[A037074(n+1), A256423(n+1)]` -/
def P4258383720087143486.Spec : Prop :=
  ∀ n, (P4258383720087143486.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P13261369741876060451

`(A124588(n+1)+2)*A124588(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A134020

/-- `(A124588(n+1)+2)*A124588(n+1)` -/
def P13261369741876060451.Spec : Prop :=
  ∀ n, P13261369741876060451.a n = A134020 (n + 1)

theorem P13261369741876060451.correct : P13261369741876060451.Spec := by
  intro n
  simp only [A134020, Nat.add_sub_cancel]

end A134020

/-! ## A134020.P7712583868105249765

`A037074(n)+A010051(a(A001222(n)))` with `a(0)=8`
-/

namespace A134020.P7712583868105249765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A037074 n + A010051 (a (A001222 n).toNat).toNat

end

end A134020.P7712583868105249765

namespace A134020

/-- `A037074(n)+A010051(a(A001222(n)))` -/
def P7712583868105249765.Spec : Prop :=
  ∀ n, P7712583868105249765.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P11923586576295531471

`(A099609(2*n+1)+2)*A099609(2*n+1)`
-/

namespace A134020.P11923586576295531471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099609 (2 * n + 1) + 2) * A099609 (2 * n + 1)

end

end A134020.P11923586576295531471

namespace A134020

/-- `(A099609(2*n+1)+2)*A099609(2*n+1)` -/
def P11923586576295531471.Spec : Prop :=
  ∀ n, P11923586576295531471.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P4247195392155117049

`(p?[A078444(n+1)]+1)²-1`
-/

namespace A134020.P4247195392155117049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 2 - 1

end

end A134020.P4247195392155117049

namespace A134020

/-- `(p?[A078444(n+1)]+1)²-1` -/
def P4247195392155117049.Spec : Prop :=
  ∀ n, P4247195392155117049.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P12244324843193862161

`(p?[A157049(n+1)]+1)²-1`
-/

namespace A134020.P12244324843193862161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 2 - 1

end

end A134020.P12244324843193862161

namespace A134020

/-- `(p?[A157049(n+1)]+1)²-1` -/
def P12244324843193862161.Spec : Prop :=
  ∀ n, P12244324843193862161.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P15038522184417501836

`xor(1, A094743(n+1))²-1`
-/

namespace A134020.P15038522184417501836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A094743 (n + 1)) ^ 2 - 1

end

end A134020.P15038522184417501836

namespace A134020

/-- `xor(1, A094743(n+1))²-1` -/
def P15038522184417501836.Spec : Prop :=
  ∀ n, P15038522184417501836.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P6265209058657641462

`∩[A089954(n+1), A156759(n+1)]`
-/

namespace A134020.P6265209058657641462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P6265209058657641462

namespace A134020

/-- `∩[A089954(n+1), A156759(n+1)]` -/
def P6265209058657641462.Spec : Prop :=
  ∀ n, (P6265209058657641462.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P351004917685329115

`∩[A079142(n), A386991(n+1)]`
-/

namespace A134020.P351004917685329115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P351004917685329115

namespace A134020

/-- `∩[A079142(n), A386991(n+1)]` -/
def P351004917685329115.Spec : Prop :=
  ∀ n, (P351004917685329115.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P3049497307508968010

`∩[A089954(n+1), A386991(n+1)]`
-/

namespace A134020.P3049497307508968010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P3049497307508968010

namespace A134020

/-- `∩[A089954(n+1), A386991(n+1)]` -/
def P3049497307508968010.Spec : Prop :=
  ∀ n, (P3049497307508968010.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P1461235948695212327

`∩[A156759(n+1), A386991(n+1)]`
-/

namespace A134020.P1461235948695212327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P1461235948695212327

namespace A134020

/-- `∩[A156759(n+1), A386991(n+1)]` -/
def P1461235948695212327.Spec : Prop :=
  ∀ n, (P1461235948695212327.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P3025086181324741459

`∩[A066079(n+1), A156759(n+1)]`
-/

namespace A134020.P3025086181324741459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P3025086181324741459

namespace A134020

/-- `∩[A066079(n+1), A156759(n+1)]` -/
def P3025086181324741459.Spec : Prop :=
  ∀ n, (P3025086181324741459.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P11657588079766304080

`∩[A066079(n+1), A386991(n+1)]`
-/

namespace A134020.P11657588079766304080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P11657588079766304080

namespace A134020

/-- `∩[A066079(n+1), A386991(n+1)]` -/
def P11657588079766304080.Spec : Prop :=
  ∀ n, (P11657588079766304080.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P1236659113817668744

`(p?[lt[n, A093074(n+1)]]+1)²-1`
-/

namespace A134020.P1236659113817668744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) ^ 2 : ℤ) - 1

end

end A134020.P1236659113817668744

namespace A134020

/-- `(p?[lt[n, A093074(n+1)]]+1)²-1` -/
def P1236659113817668744.Spec : Prop :=
  ∀ n, P1236659113817668744.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P12956447275454933641

`A005563(A124588(n+1))`
-/

namespace A134020.P12956447275454933641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A124588 (n + 1)).toNat

end

end A134020.P12956447275454933641

namespace A134020

/-- `A005563(A124588(n+1))` -/
def P12956447275454933641.Spec : Prop :=
  ∀ n, P12956447275454933641.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P2099450353433873128

`A106230(A094743(n+1))`
-/

namespace A134020.P2099450353433873128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (A094743 (n + 1)).toNat

end

end A134020.P2099450353433873128

namespace A134020

/-- `A106230(A094743(n+1))` -/
def P2099450353433873128.Spec : Prop :=
  ∀ n, P2099450353433873128.a n = A134020 (n + 1)

end A134020

/-! ## A134020.P1676292515123697802

`∩[A156759(n+1), A005563(n)]`
-/

namespace A134020.P1676292515123697802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P1676292515123697802

namespace A134020

/-- `∩[A156759(n+1), A005563(n)]` -/
def P1676292515123697802.Spec : Prop :=
  ∀ n, (P1676292515123697802.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P11064935443596491200

`∩[A156759(n+1), A132411(n)]`
-/

namespace A134020.P11064935443596491200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P11064935443596491200

namespace A134020

/-- `∩[A156759(n+1), A132411(n)]` -/
def P11064935443596491200.Spec : Prop :=
  ∀ n, (P11064935443596491200.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P10885456706041343425

`∩[A005563(n), A386991(n+1)]`
-/

namespace A134020.P10885456706041343425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134020.P10885456706041343425

namespace A134020

/-- `∩[A005563(n), A386991(n+1)]` -/
def P10885456706041343425.Spec : Prop :=
  ∀ n, (P10885456706041343425.a n : ℤ) = A134020 (n + 1)

end A134020

/-! ## A134020.P4429943234368475923

`A005563(lt[A062584(n), A093074(n+1)])`
-/

namespace A134020.P4429943234368475923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134020.P4429943234368475923

namespace A134020

/-- `A005563(lt[A062584(n), A093074(n+1)])` -/
def P4429943234368475923.Spec : Prop :=
  ∀ n, P4429943234368475923.a n = A134020 (n + 1)

end A134020

/-!
# A134021: Length of n in balanced ternary representation.

The programs for A134021, the canonical program `A134021.P13090086575172399183` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134021 has offset 0).

The definition of A134021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134021.P5083546230787896316

`A005812(n)+A134023(n)`
-/

namespace A134021.P5083546230787896316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n + A134023 n

end

end A134021.P5083546230787896316

namespace A134021

/-- `A005812(n)+A134023(n)` -/
def P5083546230787896316.Spec : Prop :=
  ∀ n, P5083546230787896316.a n = A134021 n

theorem P5083546230787896316.correct : P5083546230787896316.Spec := by
  intro n
  simp only [A134021, Nat.add_sub_cancel, A134021.P5083546230787896316.a, A134021.P13090086575172399183.a, A005812, A005812.P15868546208220252248.a, A134023, A134023.P10471742780946936654.a, A081134, A081134.P5939115943637325282.a, A006166, A006166.P11148542579983985411.f1, A006166.P11148542579983985411.f2, A006166.P11148542579983985411.a, A008585, A008585.P13732812384316341435.a, A157671, A157671.P16167228879042950369.f1, A157671.P16167228879042950369.f2, A157671.P16167228879042950369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134021

/-! ## A134021.P9116024871708061475

`A134022(n)+A134023(n)+A134024(n)`
-/

namespace A134021.P9116024871708061475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n + A134023 n + A134024 n

end

end A134021.P9116024871708061475

namespace A134021

/-- `A134022(n)+A134023(n)+A134024(n)` -/
def P9116024871708061475.Spec : Prop :=
  ∀ n, P9116024871708061475.a n = A134021 n

end A134021

/-! ## A134021.P13090086575172399183

`a(round(n/3))+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134021

/-- `a(round(n/3))+1` -/
def P13090086575172399183.Spec : Prop :=
  ∀ n, (P13090086575172399183.a n : ℤ) = A134021 n

theorem P13090086575172399183.correct : P13090086575172399183.Spec := by
  intro n
  simp only [A134021]

end A134021

/-! ## A134021.P15785823746279825741

`∑[char[∑[3^n]+1]]+1`
-/

namespace A134021.P15785823746279825741
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134021.P15785823746279825741

namespace A134021

/-- `∑[char[∑[3^n]+1]]+1` -/
def P15785823746279825741.Spec : Prop :=
  ∀ n, (P15785823746279825741.a n : ℤ) = A134021 n

end A134021

/-! ## A134021.P10670981580411788901

`ceil(log2(A081608(n+2)))`
-/

namespace A134021.P10670981580411788901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A081608 (n + 2) : ℝ)⌉

end

end A134021.P10670981580411788901

namespace A134021

/-- `ceil(log2(A081608(n+2)))` -/
def P10670981580411788901.Spec : Prop :=
  ∀ n, P10670981580411788901.a n = A134021 n

end A134021

/-! ## A134021.P13092125377817534894

`A064099((n-1)%(n+1))`
-/

namespace A134021.P13092125377817534894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A134021.P13092125377817534894

namespace A134021

/-- `A064099((n-1)%(n+1))` -/
def P13092125377817534894.Spec : Prop :=
  ∀ n, P13092125377817534894.a n = A134021 n

end A134021

/-! ## A134021.P6789940116579755828

`A070939(A065361(n))`
-/

namespace A134021.P6789940116579755828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A065361 n).toNat

end

end A134021.P6789940116579755828

namespace A134021

/-- `A070939(A065361(n))` -/
def P6789940116579755828.Spec : Prop :=
  ∀ n, P6789940116579755828.a n = A134021 n

end A134021

/-! ## A134021.P2354661649680713909

`A070939(A081608(n))`
-/

namespace A134021.P2354661649680713909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A081608 n).toNat

end

end A134021.P2354661649680713909

namespace A134021

/-- `A070939(A081608(n))` -/
def P2354661649680713909.Spec : Prop :=
  ∀ n, P2354661649680713909.a n = A134021 n

end A134021

/-! ## A134021.P3753466044044711901

`A064099(A128054(n))`
-/

namespace A134021.P3753466044044711901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A128054 n).toNat

end

end A134021.P3753466044044711901

namespace A134021

/-- `A064099(A128054(n))` -/
def P3753466044044711901.Spec : Prop :=
  ∀ n, P3753466044044711901.a n = A134021 n

end A134021

/-! ## A134021.P3626070912188168837

`A064099(n-A134024(n))`
-/

namespace A134021.P3626070912188168837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 ((n : ℤ) - A134024 n).toNat

end

end A134021.P3626070912188168837

namespace A134021

/-- `A064099(n-A134024(n))` -/
def P3626070912188168837.Spec : Prop :=
  ∀ n, P3626070912188168837.a n = A134021 n

end A134021

/-! ## A134021.P18415019458902603974

`∑[char[A216238(A007590(n+4))]]`
-/

namespace A134021.P18415019458902603974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 (A007590 (n + 4)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134021.P18415019458902603974

namespace A134021

/-- `∑[char[A216238(A007590(n+4))]]` -/
def P18415019458902603974.Spec : Prop :=
  ∀ n, (P18415019458902603974.a n : ℤ) = A134021 n

end A134021

/-! ## A134021.P9798068944931691447

`∑[char[A007051(n)-A131575(2*n)]]`
-/

namespace A134021.P9798068944931691447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A131575 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134021.P9798068944931691447

namespace A134021

/-- `∑[char[A007051(n)-A131575(2*n)]]` -/
def P9798068944931691447.Spec : Prop :=
  ∀ n, (P9798068944931691447.a n : ℤ) = A134021 n

end A134021

/-! ## A134021.P17281725381727685358

`∑[char[(A003462(n)+1)%A000244(n)]]`
-/

namespace A134021.P17281725381727685358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003462 n + 1) (A000244 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134021.P17281725381727685358

namespace A134021

/-- `∑[char[(A003462(n)+1)%A000244(n)]]` -/
def P17281725381727685358.Spec : Prop :=
  ∀ n, (P17281725381727685358.a n : ℤ) = A134021 n

end A134021

/-! ## A134021.P9543009518172558744

`A064099(A134023(n)-1+n)`
-/

namespace A134021.P9543009518172558744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A134023 n - 1 + (n : ℤ)).toNat

end

end A134021.P9543009518172558744

namespace A134021

/-- `A064099(A134023(n)-1+n)` -/
def P9543009518172558744.Spec : Prop :=
  ∀ n, P9543009518172558744.a n = A134021 n

end A134021

/-! ## A134021.P2930929323031566674

`A064099(n-A007949(n+2))`
-/

namespace A134021.P2930929323031566674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 ((n : ℤ) - A007949 (n + 2)).toNat

end

end A134021.P2930929323031566674

namespace A134021

/-- `A064099(n-A007949(n+2))` -/
def P2930929323031566674.Spec : Prop :=
  ∀ n, P2930929323031566674.a n = A134021 n

end A134021

/-! ## A134021.P10570183997499990216

`A064099(n-(1-A134023(n)))`
-/

namespace A134021.P10570183997499990216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 ((n : ℤ) - (1 - A134023 n)).toNat

end

end A134021.P10570183997499990216

namespace A134021

/-- `A064099(n-(1-A134023(n)))` -/
def P10570183997499990216.Spec : Prop :=
  ∀ n, P10570183997499990216.a n = A134021 n

end A134021

/-! ## A134021.P121955550589985721

`A064099(n-A065363(n))`
-/

namespace A134021.P121955550589985721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 ((n : ℤ) - A065363 n).toNat

end

end A134021.P121955550589985721

namespace A134021

/-- `A064099(n-A065363(n))` -/
def P121955550589985721.Spec : Prop :=
  ∀ n, P121955550589985721.a n = A134021 n

end A134021

/-! ## A134021.P12737411668182719484

`A081604(A060372(n))`
-/

namespace A134021.P12737411668182719484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A060372 n).toNat

end

end A134021.P12737411668182719484

namespace A134021

/-- `A081604(A060372(n))` -/
def P12737411668182719484.Spec : Prop :=
  ∀ n, P12737411668182719484.a n = A134021 n

end A134021

/-! ## A134021.P17559603217119416867

`A081604(A060374(n))`
-/

namespace A134021.P17559603217119416867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A060374 n).toNat

end

end A134021.P17559603217119416867

namespace A134021

/-- `A081604(A060374(n))` -/
def P17559603217119416867.Spec : Prop :=
  ∀ n, P17559603217119416867.a n = A134021 n

end A134021

/-! ## A134021.P15828041118663229477

`A081604(A138670(n))`
-/

namespace A134021.P15828041118663229477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A138670 n).toNat

end

end A134021.P15828041118663229477

namespace A134021

/-- `A081604(A138670(n))` -/
def P15828041118663229477.Spec : Prop :=
  ∀ n, P15828041118663229477.a n = A134021 n

end A134021

/-!
# A134022: Number of negative trits in balanced ternary representation of n.

The programs for A134022, the canonical program `A134022.P16948364718600787196` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134022 has offset 0).

The definition of A134022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134022.P14199660284383808328

`A005812(n)-A134024(n)`
-/

namespace A134022.P14199660284383808328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n - A134024 n

end

end A134022.P14199660284383808328

namespace A134022

/-- `A005812(n)-A134024(n)` -/
def P14199660284383808328.Spec : Prop :=
  ∀ n, P14199660284383808328.a n = A134022 n

end A134022

/-! ## A134022.P5614818881868296467

`A134024(n)-A065363(n)`
-/

namespace A134022.P5614818881868296467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n - A065363 n

end

end A134022.P5614818881868296467

namespace A134022

/-- `A134024(n)-A065363(n)` -/
def P5614818881868296467.Spec : Prop :=
  ∀ n, P5614818881868296467.a n = A134022 n

theorem P5614818881868296467.correct : P5614818881868296467.Spec := by
  intro n
  simp only [A134022, Nat.add_sub_cancel, A134022.P5614818881868296467.a, A134022.P16948364718600787196.a, A005812, A005812.P15868546208220252248.a, A065363, A065363.P10338292447349607337.a, A117966, A117966.P11599160912576478646.a, A134024, A134024.P16444693290474803119.a, A005836, A005836.P12367569128854000442.a, A053735, A053735.P3640341592284089632.a, A081134, A081134.P5939115943637325282.a, A289814, A289814.P11371932108795153936.a, A006166, A006166.P11148542579983985411.f1, A006166.P11148542579983985411.f2, A006166.P11148542579983985411.a, A054861, A054861.P6137810495506521191.a, A008585, A008585.P13732812384316341435.a, A157671, A157671.P16167228879042950369.f1, A157671.P16167228879042950369.f2, A157671.P16167228879042950369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134022

/-! ## A134022.P5171097950867658846

`A134021(n)-A134023(n)-A134024(n)`
-/

namespace A134022.P5171097950867658846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n - A134023 n - A134024 n

end

end A134022.P5171097950867658846

namespace A134022

/-- `A134021(n)-A134023(n)-A134024(n)` -/
def P5171097950867658846.Spec : Prop :=
  ∀ n, P5171097950867658846.a n = A134022 n

end A134022

/-! ## A134022.P14180252989613137427

`A005812(A060373(n))`
-/

namespace A134022.P14180252989613137427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A060373 n).toNat

end

end A134022.P14180252989613137427

namespace A134022

/-- `A005812(A060373(n))` -/
def P14180252989613137427.Spec : Prop :=
  ∀ n, P14180252989613137427.a n = A134022 n

end A134022

/-! ## A134022.P11327583093754280228

`A000989(A308364(n))`
-/

namespace A134022.P11327583093754280228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A308364 n).toNat

end

end A134022.P11327583093754280228

namespace A134022

/-- `A000989(A308364(n))` -/
def P11327583093754280228.Spec : Prop :=
  ∀ n, P11327583093754280228.a n = A134022 n

end A134022

/-! ## A134022.P6570058097476591233

`A005812(A060372(n)-n)`
-/

namespace A134022.P6570058097476591233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A060372 n - (n : ℤ)).toNat

end

end A134022.P6570058097476591233

namespace A134022

/-- `A005812(A060372(n)-n)` -/
def P6570058097476591233.Spec : Prop :=
  ∀ n, P6570058097476591233.a n = A134022 n

end A134022

/-! ## A134022.P7054286295439631220

`A053735(A060372(n)-n)`
-/

namespace A134022.P7054286295439631220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A060372 n - (n : ℤ)).toNat

end

end A134022.P7054286295439631220

namespace A134022

/-- `A053735(A060372(n)-n)` -/
def P7054286295439631220.Spec : Prop :=
  ∀ n, P7054286295439631220.a n = A134022 n

end A134022

/-! ## A134022.P665945641858227103

`A062756(A060372(n)-n)`
-/

namespace A134022.P665945641858227103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A060372 n - (n : ℤ)).toNat

end

end A134022.P665945641858227103

namespace A134022

/-- `A062756(A060372(n)-n)` -/
def P665945641858227103.Spec : Prop :=
  ∀ n, P665945641858227103.a n = A134022 n

end A134022

/-! ## A134022.P876803015257363150

`∑{digits}[A140267(n), A140287(#)]`
-/

namespace A134022.P876803015257363150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140287 x).sum

end

end A134022.P876803015257363150

namespace A134022

/-- `∑{digits}[A140267(n), A140287(#)]` -/
def P876803015257363150.Spec : Prop :=
  ∀ n, P876803015257363150.a n = A134022 n

end A134022

/-! ## A134022.P11132860359743834274

`∑{digits}[A140267(n), A140289(#)]`
-/

namespace A134022.P11132860359743834274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140289 x).sum

end

end A134022.P11132860359743834274

namespace A134022

/-- `∑{digits}[A140267(n), A140289(#)]` -/
def P11132860359743834274.Spec : Prop :=
  ∀ n, P11132860359743834274.a n = A134022 n

end A134022

/-! ## A134022.P9216077368735333281

`∑{digits}[A140267(n), A140302(#)]`
-/

namespace A134022.P9216077368735333281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140302 x).sum

end

end A134022.P9216077368735333281

namespace A134022

/-- `∑{digits}[A140267(n), A140302(#)]` -/
def P9216077368735333281.Spec : Prop :=
  ∀ n, P9216077368735333281.a n = A134022 n

end A134022

/-! ## A134022.P4016173487199432348

`A006287((A060374(n)-n)/2)`
-/

namespace A134022.P4016173487199432348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 (SequenceMachineLib.roundAway ((A060374 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A134022.P4016173487199432348

namespace A134022

/-- `A006287((A060374(n)-n)/2)` -/
def P4016173487199432348.Spec : Prop :=
  ∀ n, P4016173487199432348.a n = A134022 n

end A134022

/-! ## A134022.P15449927495068556935

`∑{digits}[A140267(n), A140313(#+1)]`
-/

namespace A134022.P15449927495068556935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140313 (x + 1)).sum

end

end A134022.P15449927495068556935

namespace A134022

/-- `∑{digits}[A140267(n), A140313(#+1)]` -/
def P15449927495068556935.Spec : Prop :=
  ∀ n, P15449927495068556935.a n = A134022 n

end A134022

/-! ## A134022.P15246420296062332356

`∑{digits}[A140267(n), #-A000045(#)]`
-/

namespace A134022.P15246420296062332356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - A000045 x).sum

end

end A134022.P15246420296062332356

namespace A134022

/-- `∑{digits}[A140267(n), #-A000045(#)]` -/
def P15246420296062332356.Spec : Prop :=
  ∀ n, P15246420296062332356.a n = A134022 n

end A134022

/-! ## A134022.P16948364718600787196

`A005812(A117966(2*n)+A117966(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134022

/-- `A005812(A117966(2*n)+A117966(n))` -/
def P16948364718600787196.Spec : Prop :=
  ∀ n, P16948364718600787196.a n = A134022 n

theorem P16948364718600787196.correct : P16948364718600787196.Spec := by
  intro n
  simp only [A134022]

end A134022

/-! ## A134022.P9128049930435578734

`A062756(A117967(n)-n)`
-/

namespace A134022.P9128049930435578734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A117967 n - (n : ℤ)).toNat

end

end A134022.P9128049930435578734

namespace A134022

/-- `A062756(A117967(n)-n)` -/
def P9128049930435578734.Spec : Prop :=
  ∀ n, P9128049930435578734.a n = A134022 n

end A134022

/-! ## A134022.P6117755611796881105

`A065363(A117967(n)-n)`
-/

namespace A134022.P6117755611796881105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A117967 n - (n : ℤ)).toNat

end

end A134022.P6117755611796881105

namespace A134022

/-- `A065363(A117967(n)-n)` -/
def P6117755611796881105.Spec : Prop :=
  ∀ n, P6117755611796881105.a n = A134022 n

end A134022

/-! ## A134022.P11746351006240164117

`A081603(2*(A060372(n)-n))`
-/

namespace A134022.P11746351006240164117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (2 * (A060372 n - (n : ℤ))).toNat

end

end A134022.P11746351006240164117

namespace A134022

/-- `A081603(2*(A060372(n)-n))` -/
def P11746351006240164117.Spec : Prop :=
  ∀ n, P11746351006240164117.a n = A134022 n

end A134022

/-! ## A134022.P10093422834098135822

`A053735(A117966(2*n)+A117966(n))`
-/

namespace A134022.P10093422834098135822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A117966 (2 * n) + A117966 n).toNat

end

end A134022.P10093422834098135822

namespace A134022

/-- `A053735(A117966(2*n)+A117966(n))` -/
def P10093422834098135822.Spec : Prop :=
  ∀ n, P10093422834098135822.a n = A134022 n

end A134022

/-! ## A134022.P13830628568080244269

`A065363(A117966(2*n)+A117966(n))`
-/

namespace A134022.P13830628568080244269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A117966 (2 * n) + A117966 n).toNat

end

end A134022.P13830628568080244269

namespace A134022

/-- `A065363(A117966(2*n)+A117966(n))` -/
def P13830628568080244269.Spec : Prop :=
  ∀ n, P13830628568080244269.a n = A134022 n

end A134022

/-!
# A134023: Number of zeros in balanced ternary representation of n.

The programs for A134023, the canonical program `A134023.P10471742780946936654` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134023 has offset 0).

The definition of A134023 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005812, A134021, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134023.P10471742780946936654

`A134021(n)-A005812(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134023

/-- `A134021(n)-A005812(n)` -/
def P10471742780946936654.Spec : Prop :=
  ∀ n, P10471742780946936654.a n = A134023 n

theorem P10471742780946936654.correct : P10471742780946936654.Spec := by
  intro n
  simp only [A134023]

end A134023

/-! ## A134023.P13039356335758936448

`A134021(n)-A134022(n)-A134024(n)`
-/

namespace A134023.P13039356335758936448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n - A134022 n - A134024 n

end

end A134023.P13039356335758936448

namespace A134023

/-- `A134021(n)-A134022(n)-A134024(n)` -/
def P13039356335758936448.Spec : Prop :=
  ∀ n, P13039356335758936448.a n = A134023 n

end A134023

/-! ## A134023.P8746082442465231067

`∑{digits}[A140267(n), A140313(#)]`
-/

namespace A134023.P8746082442465231067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140313 x).sum

end

end A134023.P8746082442465231067

namespace A134023

/-- `∑{digits}[A140267(n), A140313(#)]` -/
def P8746082442465231067.Spec : Prop :=
  ∀ n, P8746082442465231067.a n = A134023 n

end A134023

/-! ## A134023.P13790496457833144337

`∑{digits}[A140267(n), 1-A000045(#)]`
-/

namespace A134023.P13790496457833144337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000045 x).sum

end

end A134023.P13790496457833144337

namespace A134023

/-- `∑{digits}[A140267(n), 1-A000045(#)]` -/
def P13790496457833144337.Spec : Prop :=
  ∀ n, P13790496457833144337.a n = A134023 n

end A134023

/-! ## A134023.P3952106243847376728

`∑{digits}[A140267(n), A140287(2-#)]`
-/

namespace A134023.P3952106243847376728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140287 (2 - x)).sum

end

end A134023.P3952106243847376728

namespace A134023

/-- `∑{digits}[A140267(n), A140287(2-#)]` -/
def P3952106243847376728.Spec : Prop :=
  ∀ n, P3952106243847376728.a n = A134023 n

end A134023

/-! ## A134023.P12612286541602691625

`∑{digits}[A140267(n), A140289(2-#)]`
-/

namespace A134023.P12612286541602691625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140289 (2 - x)).sum

end

end A134023.P12612286541602691625

namespace A134023

/-- `∑{digits}[A140267(n), A140289(2-#)]` -/
def P12612286541602691625.Spec : Prop :=
  ∀ n, P12612286541602691625.a n = A134023 n

end A134023

/-! ## A134023.P18030785194786742995

`∑{digits}[A140267(n), A140302(2-#)]`
-/

namespace A134023.P18030785194786742995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140302 (2 - x)).sum

end

end A134023.P18030785194786742995

namespace A134023

/-- `∑{digits}[A140267(n), A140302(2-#)]` -/
def P18030785194786742995.Spec : Prop :=
  ∀ n, P18030785194786742995.a n = A134023 n

end A134023

/-! ## A134023.P994713618325902204

`A077267(A060374(n))`
-/

namespace A134023.P994713618325902204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A060374 n).toNat

end

end A134023.P994713618325902204

namespace A134023

/-- `A077267(A060374(n))` -/
def P994713618325902204.Spec : Prop :=
  ∀ n, P994713618325902204.a n = A134023 n

end A134023

/-! ## A134023.P12371776502274172487

`A077267(2*A060373(n)+n)`
-/

namespace A134023.P12371776502274172487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (2 * A060373 n + (n : ℤ)).toNat

end

end A134023.P12371776502274172487

namespace A134023

/-- `A077267(2*A060373(n)+n)` -/
def P12371776502274172487.Spec : Prop :=
  ∀ n, P12371776502274172487.a n = A134023 n

end A134023

/-! ## A134023.P9054995011626161285

`A077267(A060373(n)+A060373(n)+n)`
-/

namespace A134023.P9054995011626161285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A060373 n + (A060373 n + (n : ℤ))).toNat

end

end A134023.P9054995011626161285

namespace A134023

/-- `A077267(A060373(n)+A060373(n)+n)` -/
def P9054995011626161285.Spec : Prop :=
  ∀ n, P9054995011626161285.a n = A134023 n

end A134023

/-! ## A134023.P7957043348542293688

`A023416(A343231(n))`
-/

namespace A134023.P7957043348542293688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A343231 n).toNat

end

end A134023.P7957043348542293688

namespace A134023

/-- `A023416(A343231(n))` -/
def P7957043348542293688.Spec : Prop :=
  ∀ n, P7957043348542293688.a n = A134023 n

end A134023

/-! ## A134023.P9570095259848247023

`A081604(2*n)-A005812(n)`
-/

namespace A134023.P9570095259848247023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (2 * n) - A005812 n

end

end A134023.P9570095259848247023

namespace A134023

/-- `A081604(2*n)-A005812(n)` -/
def P9570095259848247023.Spec : Prop :=
  ∀ n, P9570095259848247023.a n = A134023 n

end A134023

/-! ## A134023.P1559827197928872134

`A077267(2*n)+A081603(2*n)-A062756(n)`
-/

namespace A134023.P1559827197928872134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (2 * n) + (A081603 (2 * n) - A062756 n)

end

end A134023.P1559827197928872134

namespace A134023

/-- `A077267(2*n)+A081603(2*n)-A062756(n)` -/
def P1559827197928872134.Spec : Prop :=
  ∀ n, P1559827197928872134.a n = A134023 n

end A134023

/-! ## A134023.P2951971239002423429

`A077267(A117967(n))`
-/

namespace A134023.P2951971239002423429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A117967 n).toNat

end

end A134023.P2951971239002423429

namespace A134023

/-- `A077267(A117967(n))` -/
def P2951971239002423429.Spec : Prop :=
  ∀ n, P2951971239002423429.a n = A134023 n

end A134023

/-! ## A134023.P15591950470665728959

`A062756(lt[A333773(n), A273514(n+1)])`
-/

namespace A134023.P15591950470665728959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134023.P15591950470665728959

namespace A134023

/-- `A062756(lt[A333773(n), A273514(n+1)])` -/
def P15591950470665728959.Spec : Prop :=
  ∀ n, P15591950470665728959.a n = A134023 n

end A134023

/-! ## A134023.P4002026735501806612

`A062756(lt[A333773(n), 2*A289814(n+1)])`
-/

namespace A134023.P4002026735501806612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134023.P4002026735501806612

namespace A134023

/-- `A062756(lt[A333773(n), 2*A289814(n+1)])` -/
def P4002026735501806612.Spec : Prop :=
  ∀ n, P4002026735501806612.a n = A134023 n

end A134023

/-! ## A134023.P15153981881071815358

`A062756(lt[A333773(n), A292371(2*n+3)])`
-/

namespace A134023.P15153981881071815358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134023.P15153981881071815358

namespace A134023

/-- `A062756(lt[A333773(n), A292371(2*n+3)])` -/
def P15153981881071815358.Spec : Prop :=
  ∀ n, P15153981881071815358.a n = A134023 n

end A134023

/-! ## A134023.P15255943498263781725

`A062756(lt[A333773(n), A005811(2*n)])`
-/

namespace A134023.P15255943498263781725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134023.P15255943498263781725

namespace A134023

/-- `A062756(lt[A333773(n), A005811(2*n)])` -/
def P15255943498263781725.Spec : Prop :=
  ∀ n, P15255943498263781725.a n = A134023 n

end A134023

/-! ## A134023.P14288620585303839810

`A064532(A140267(n))`
-/

namespace A134023.P14288620585303839810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A140267 n).toNat

end

end A134023.P14288620585303839810

namespace A134023

/-- `A064532(A140267(n))` -/
def P14288620585303839810.Spec : Prop :=
  ∀ n, P14288620585303839810.a n = A134023 n

end A134023

/-!
# A134024: Number of positive trits in balanced ternary representation of n.

The programs for A134024, the canonical program `A134024.P16444693290474803119` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134024 has offset 0).

The definition of A134024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134024.P16444693290474803119

`A134022(n)+A065363(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A134024

/-- `A134022(n)+A065363(n)` -/
def P16444693290474803119.Spec : Prop :=
  ∀ n, P16444693290474803119.a n = A134024 n

theorem P16444693290474803119.correct : P16444693290474803119.Spec := by
  intro n
  simp only [A134024]

end A134024

/-! ## A134024.P11193929787822139608

`A005812(n)-A134022(n)`
-/

namespace A134024.P11193929787822139608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n - A134022 n

end

end A134024.P11193929787822139608

namespace A134024

/-- `A005812(n)-A134022(n)` -/
def P11193929787822139608.Spec : Prop :=
  ∀ n, P11193929787822139608.a n = A134024 n

end A134024

/-! ## A134024.P16024523581120260532

`A134021(n)-A134022(n)-A134023(n)`
-/

namespace A134024.P16024523581120260532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n - A134022 n - A134023 n

end

end A134024.P16024523581120260532

namespace A134024

/-- `A134021(n)-A134022(n)-A134023(n)` -/
def P16024523581120260532.Spec : Prop :=
  ∀ n, P16024523581120260532.a n = A134024 n

end A134024

/-! ## A134024.P8290777825855293683

`A005812(A060372(n))`
-/

namespace A134024.P8290777825855293683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A060372 n).toNat

end

end A134024.P8290777825855293683

namespace A134024

/-- `A005812(A060372(n))` -/
def P8290777825855293683.Spec : Prop :=
  ∀ n, P8290777825855293683.a n = A134024 n

end A134024

/-! ## A134024.P3478191296115641598

`A089643(A308364(n))`
-/

namespace A134024.P3478191296115641598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A308364 n).toNat

end

end A134024.P3478191296115641598

namespace A134024

/-- `A089643(A308364(n))` -/
def P3478191296115641598.Spec : Prop :=
  ∀ n, P3478191296115641598.a n = A134024 n

end A134024

/-! ## A134024.P13044150769050125692

`A005812(A060373(n)+n)`
-/

namespace A134024.P13044150769050125692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A060373 n + (n : ℤ)).toNat

end

end A134024.P13044150769050125692

namespace A134024

/-- `A005812(A060373(n)+n)` -/
def P13044150769050125692.Spec : Prop :=
  ∀ n, P13044150769050125692.a n = A134024 n

end A134024

/-! ## A134024.P8159332389263750206

`∑{digits}[A140267(n), A140318(#²)]`
-/

namespace A134024.P8159332389263750206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140318 (x ^ 2)).sum

end

end A134024.P8159332389263750206

namespace A134024

/-- `∑{digits}[A140267(n), A140318(#²)]` -/
def P8159332389263750206.Spec : Prop :=
  ∀ n, P8159332389263750206.a n = A134024 n

end A134024

/-! ## A134024.P10196732702451238386

`∑{digits}[2*A140267(n), A140287(#)]`
-/

namespace A134024.P10196732702451238386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140287 x).sum

end

end A134024.P10196732702451238386

namespace A134024

/-- `∑{digits}[2*A140267(n), A140287(#)]` -/
def P10196732702451238386.Spec : Prop :=
  ∀ n, P10196732702451238386.a n = A134024 n

end A134024

/-! ## A134024.P18290308008921852449

`∑{digits}[2*A140267(n), A140302(#)]`
-/

namespace A134024.P18290308008921852449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140302 x).sum

end

end A134024.P18290308008921852449

namespace A134024

/-- `∑{digits}[2*A140267(n), A140302(#)]` -/
def P18290308008921852449.Spec : Prop :=
  ∀ n, P18290308008921852449.a n = A134024 n

end A134024

/-! ## A134024.P2679523132185746542

`A005812(n)-A005812(A060373(n))`
-/

namespace A134024.P2679523132185746542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n - A005812 (A060373 n).toNat

end

end A134024.P2679523132185746542

namespace A134024

/-- `A005812(n)-A005812(A060373(n))` -/
def P2679523132185746542.Spec : Prop :=
  ∀ n, P2679523132185746542.a n = A134024 n

end A134024

/-! ## A134024.P16559728920651186275

`∑{digits}[A140267(n), A140313(A140313(#²))]`
-/

namespace A134024.P16559728920651186275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140313 (A140313 (x ^ 2)).toNat).sum

end

end A134024.P16559728920651186275

namespace A134024

/-- `∑{digits}[A140267(n), A140313(A140313(#²))]` -/
def P16559728920651186275.Spec : Prop :=
  ∀ n, P16559728920651186275.a n = A134024 n

end A134024

/-! ## A134024.P877291343739136386

`dr(A046031(A060373(n)+n))`
-/

namespace A134024.P877291343739136386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046031 (A060373 n + (n : ℤ)).toNat)

end

end A134024.P877291343739136386

namespace A134024

/-- `dr(A046031(A060373(n)+n))` -/
def P877291343739136386.Spec : Prop :=
  ∀ n, (P877291343739136386.a n : ℤ) = A134024 n

end A134024

/-! ## A134024.P13376437153196274260

`A006287((A060374(n)+n)/2)`
-/

namespace A134024.P13376437153196274260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 (SequenceMachineLib.roundAway ((A060374 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A134024.P13376437153196274260

namespace A134024

/-- `A006287((A060374(n)+n)/2)` -/
def P13376437153196274260.Spec : Prop :=
  ∀ n, P13376437153196274260.a n = A134024 n

end A134024

/-! ## A134024.P18218929236158885047

`A160384(2*n)-A081603(n)`
-/

namespace A134024.P18218929236158885047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (2 * n) - A081603 n

end

end A134024.P18218929236158885047

namespace A134024

/-- `A160384(2*n)-A081603(n)` -/
def P18218929236158885047.Spec : Prop :=
  ∀ n, P18218929236158885047.a n = A134024 n

end A134024

/-! ## A134024.P9658173474159068640

`A000120(A343228(n))`
-/

namespace A134024.P9658173474159068640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A343228 n).toNat

end

end A134024.P9658173474159068640

namespace A134024

/-- `A000120(A343228(n))` -/
def P9658173474159068640.Spec : Prop :=
  ∀ n, P9658173474159068640.a n = A134024 n

end A134024

/-! ## A134024.P16691284630838871589

`A000120(A343231(n)-A343229(n))`
-/

namespace A134024.P16691284630838871589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A343231 n - A343229 n).toNat

end

end A134024.P16691284630838871589

namespace A134024

/-- `A000120(A343231(n)-A343229(n))` -/
def P16691284630838871589.Spec : Prop :=
  ∀ n, P16691284630838871589.a n = A134024 n

end A134024

/-! ## A134024.P15944894556855797189

`A053735(2*A308364(n))/2`
-/

namespace A134024.P15944894556855797189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 (2 * A308364 n).toNat : ℚ) / 2

end

end A134024.P15944894556855797189

namespace A134024

/-- `A053735(2*A308364(n))/2` -/
def P15944894556855797189.Spec : Prop :=
  ∀ n, P15944894556855797189.a n = (A134024 n : ℚ)

end A134024

/-! ## A134024.P2026887155220491521

`A081603(A005836(A081611(2*n))+n)`
-/

namespace A134024.P2026887155220491521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A005836 (A081611 (2 * n)).toNat + (n : ℤ)).toNat

end

end A134024.P2026887155220491521

namespace A134024

/-- `A081603(A005836(A081611(2*n))+n)` -/
def P2026887155220491521.Spec : Prop :=
  ∀ n, P2026887155220491521.a n = A134024 n

end A134024

/-! ## A134024.P746689649094600706

`A062756(A117967(n))`
-/

namespace A134024.P746689649094600706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A117967 n).toNat

end

end A134024.P746689649094600706

namespace A134024

/-- `A062756(A117967(n))` -/
def P746689649094600706.Spec : Prop :=
  ∀ n, P746689649094600706.a n = A134024 n

end A134024

/-! ## A134024.P456941236048883289

`A081603(2*A060372(n))`
-/

namespace A134024.P456941236048883289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (2 * A060372 n).toNat

end

end A134024.P456941236048883289

namespace A134024

/-- `A081603(2*A060372(n))` -/
def P456941236048883289.Spec : Prop :=
  ∀ n, P456941236048883289.a n = A134024 n

end A134024

/-!
# A134025: Numbers for which the balanced ternary representation is the same length as the ternary representation.

The programs for A134025, the canonical program `A134025.P761896749920526841` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134025 has offset 0).

The definition of A134025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134025.P761896749920526841

`record[(a(n-1)+n)%(2*n)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134025

/-- `record[(a(n-1)+n)%(2*n)]` -/
def P761896749920526841.Spec : Prop :=
  ∀ n, (P761896749920526841.a n : ℤ) = A134025 n

theorem P761896749920526841.correct : P761896749920526841.Spec := by
  intro n
  simp only [A134025]

end A134025

/-! ## A134025.P1900273584385905859

`lt[n-1, (2*n+a(n-1)-1)%(2*n)]` with `a(0)=0`
-/

namespace A134025.P1900273584385905859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.tmod ((2 * n : ℤ) + (f2 (n - 1) - 1)) (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134025.P1900273584385905859

namespace A134025

/-- `lt[n-1, (2*n+a(n-1)-1)%(2*n)]` -/
def P1900273584385905859.Spec : Prop :=
  ∀ n, (P1900273584385905859.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P15885934978382538183

`record[A008344(n+1)]`
-/

namespace A134025.P15885934978382538183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134025.P15885934978382538183

namespace A134025

/-- `record[A008344(n+1)]` -/
def P15885934978382538183.Spec : Prop :=
  ∀ n, P15885934978382538183.a n = A134025 n

end A134025

/-! ## A134025.P12006005698297872526

`lt[A117966(2*n), 1]`
-/

namespace A134025.P12006005698297872526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134025.P12006005698297872526

namespace A134025

/-- `lt[A117966(2*n), 1]` -/
def P12006005698297872526.Spec : Prop :=
  ∀ n, (P12006005698297872526.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P8122338432702798089

`lt[n, A300222(2*n)+1]`
-/

namespace A134025.P8122338432702798089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134025.P8122338432702798089

namespace A134025

/-- `lt[n, A300222(2*n)+1]` -/
def P8122338432702798089.Spec : Prop :=
  ∀ n, (P8122338432702798089.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P10113671146406108327

`A008344(A080276(n+1))`
-/

namespace A134025.P10113671146406108327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (A080276 (n + 1)).toNat

end

end A134025.P10113671146406108327

namespace A134025

/-- `A008344(A080276(n+1))` -/
def P10113671146406108327.Spec : Prop :=
  ∀ n, P10113671146406108327.a n = A134025 n

end A134025

/-! ## A134025.P6177568030047460707

`lt[A004488(2*n), A004488(n+1)+1]`
-/

namespace A134025.P6177568030047460707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134025.P6177568030047460707

namespace A134025

/-- `lt[A004488(2*n), A004488(n+1)+1]` -/
def P6177568030047460707.Spec : Prop :=
  ∀ n, (P6177568030047460707.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P17796590248666076294

`A008344(comp[A008344(n+1)-A008344(n+2)]+1)`
-/

namespace A134025.P17796590248666076294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (n + 1) - A008344 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A134025.P17796590248666076294

namespace A134025

/-- `A008344(comp[A008344(n+1)-A008344(n+2)]+1)` -/
def P17796590248666076294.Spec : Prop :=
  ∀ n, P17796590248666076294.a n = A134025 n

end A134025

/-! ## A134025.P13288944683075298249

`comp[A134026(n+1)]`
-/

namespace A134025.P13288944683075298249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134025.P13288944683075298249

namespace A134025

/-- `comp[A134026(n+1)]` -/
def P13288944683075298249.Spec : Prop :=
  ∀ n, (P13288944683075298249.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P18257684344127995644

`lt[0, A343602(n)+1]`
-/

namespace A134025.P18257684344127995644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343602 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134025.P18257684344127995644

namespace A134025

/-- `lt[0, A343602(n)+1]` -/
def P18257684344127995644.Spec : Prop :=
  ∀ n, (P18257684344127995644.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P14730843006419491046

`lt[n, A171960(n)+1]`
-/

namespace A134025.P14730843006419491046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134025.P14730843006419491046

namespace A134025

/-- `lt[n, A171960(n)+1]` -/
def P14730843006419491046.Spec : Prop :=
  ∀ n, (P14730843006419491046.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P532759087516265129

`lt[A338247(n), A338246(n)+1]`
-/

namespace A134025.P532759087516265129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134025.P532759087516265129

namespace A134025

/-- `lt[A338247(n), A338246(n)+1]` -/
def P532759087516265129.Spec : Prop :=
  ∀ n, (P532759087516265129.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P6108965325642600492

`eq[1, A081604(n)/A134021(n)]`
-/

namespace A134025.P6108965325642600492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081604 n : ℚ) / (A134021 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A134025.P6108965325642600492

namespace A134025

/-- `eq[1, A081604(n)/A134021(n)]` -/
def P6108965325642600492.Spec : Prop :=
  ∀ n, (P6108965325642600492.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P18079830778400067721

`eq[A330740(3*n)+n, A330740(4*n)]`
-/

namespace A134025.P18079830778400067721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (3 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134025.P18079830778400067721

namespace A134025

/-- `eq[A330740(3*n)+n, A330740(4*n)]` -/
def P18079830778400067721.Spec : Prop :=
  ∀ n, (P18079830778400067721.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P9954800209266410496

`record[(A000096(n)+a(n-1))%n]` with `a(0)=0`
-/

namespace A134025.P9954800209266410496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (A000096 n + f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134025.P9954800209266410496

namespace A134025

/-- `record[(A000096(n)+a(n-1))%n]` -/
def P9954800209266410496.Spec : Prop :=
  ∀ n, P9954800209266410496.a n = A134025 n

end A134025

/-! ## A134025.P368244038369526653

`record[(A194715(n)+a(n-1))%n]` with `a(0)=0`
-/

namespace A134025.P368244038369526653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (A194715 n + f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134025.P368244038369526653

namespace A134025

/-- `record[(A194715(n)+a(n-1))%n]` -/
def P368244038369526653.Spec : Prop :=
  ∀ n, P368244038369526653.a n = A134025 n

end A134025

/-! ## A134025.P4110361952790832782

`lt[A333780(n), n+1]`
-/

namespace A134025.P4110361952790832782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333780 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134025.P4110361952790832782

namespace A134025

/-- `lt[A333780(n), n+1]` -/
def P4110361952790832782.Spec : Prop :=
  ∀ n, (P4110361952790832782.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P5003816283168675239

`record[A373712(n)]`
-/

namespace A134025.P5003816283168675239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134025.P5003816283168675239

namespace A134025

/-- `record[A373712(n)]` -/
def P5003816283168675239.Spec : Prop :=
  ∀ n, P5003816283168675239.a n = A134025 n

end A134025

/-! ## A134025.P2574380309672015390

`lt[A333773(2*n), 1]`
-/

namespace A134025.P2574380309672015390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134025.P2574380309672015390

namespace A134025

/-- `lt[A333773(2*n), 1]` -/
def P2574380309672015390.Spec : Prop :=
  ∀ n, (P2574380309672015390.a n : ℤ) = A134025 n

end A134025

/-! ## A134025.P10431015482410143236

`lt[1, A343766(2*n)+2]`
-/

namespace A134025.P10431015482410143236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343766 (2 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134025.P10431015482410143236

namespace A134025

/-- `lt[1, A343766(2*n)+2]` -/
def P10431015482410143236.Spec : Prop :=
  ∀ n, (P10431015482410143236.a n : ℤ) = A134025 n

end A134025

/-!
# A134026: Numbers that are in balanced ternary representation longer than in ternary representation.

The programs for A134026, the canonical program `A134026.P5688060378031056418` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134026 has offset 1).

The definition of A134026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134026.P2957938864397708455

`comp[record[(a(n-1)+n)%(2*n)]]` with `a(0)=0`
-/

namespace A134026.P2957938864397708455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  (f2 (n - 1) + n) % (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A134026.P2957938864397708455

namespace A134026

/-- `comp[record[(a(n-1)+n)%(2*n)]]` -/
def P2957938864397708455.Spec : Prop :=
  ∀ n, (P2957938864397708455.a n : ℤ) = A134026 (n + 1)

end A134026

/-! ## A134026.P5688060378031056418

`lt[(2*n+a(n-1)-1)%(2*n), n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134026

/-- `lt[(2*n+a(n-1)-1)%(2*n), n]` -/
def P5688060378031056418.Spec : Prop :=
  ∀ n, (P5688060378031056418.a n : ℤ) = A134026 (n + 1)

theorem P5688060378031056418.correct : P5688060378031056418.Spec := by
  intro n
  simp only [A134026, Nat.add_sub_cancel]

end A134026

/-! ## A134026.P4490172590634086309

`lt[(2*n-(1-a(n-1)))%(2*n), n]` with `a(0)=0`
-/

namespace A134026.P4490172590634086309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod ((2 * n : ℤ) - (1 - f1 (n - 1))) (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134026.P4490172590634086309

namespace A134026

/-- `lt[(2*n-(1-a(n-1)))%(2*n), n]` -/
def P4490172590634086309.Spec : Prop :=
  ∀ n, (P4490172590634086309.a n : ℤ) = A134026 (n + 1)

theorem P4490172590634086309.correct : P4490172590634086309.Spec := by
  intro n
  simp only [A134026, Nat.add_sub_cancel, A134026.P4490172590634086309.f1, A134026.P4490172590634086309.f2, A134026.P4490172590634086309.a, A134026.P5688060378031056418.f1, A134026.P5688060378031056418.f2, A134026.P5688060378031056418.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134026

/-! ## A134026.P5095288273836014992

`comp[record[(2*n-(n-a(n-1)))%(2*n)]]` with `a(0)=0`
-/

namespace A134026.P5095288273836014992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.tmod ((2 * n : ℤ) - ((n : ℤ) - f2 (n - 1))) (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134026.P5095288273836014992

namespace A134026

/-- `comp[record[(2*n-(n-a(n-1)))%(2*n)]]` -/
def P5095288273836014992.Spec : Prop :=
  ∀ n, (P5095288273836014992.a n : ℤ) = A134026 (n + 1)

end A134026

/-! ## A134026.P4082568418980392955

`lt[-1, 2*a(floor(n/3))+n-3*floor(n/3)]` with `a(0)=-1`
-/

namespace A134026.P4082568418980392955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134026.P4082568418980392955

namespace A134026

/-- `lt[-1, 2*a(floor(n/3))+n-3*floor(n/3)]` -/
def P4082568418980392955.Spec : Prop :=
  ∀ n, (P4082568418980392955.a n : ℤ) = A134026 (n + 1)

end A134026

/-! ## A134026.P14919935320447022250

`comp[A134025(n)]`
-/

namespace A134026.P14919935320447022250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134026.P14919935320447022250

namespace A134026

/-- `comp[A134025(n)]` -/
def P14919935320447022250.Spec : Prop :=
  ∀ n, (P14919935320447022250.a n : ℤ) = A134026 (n + 1)

end A134026

/-! ## A134026.P17208624918157329558

`comp[A343603(n)]`
-/

namespace A134026.P17208624918157329558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134026.P17208624918157329558

namespace A134026

/-- `comp[A343603(n)]` -/
def P17208624918157329558.Spec : Prop :=
  ∀ n, (P17208624918157329558.a n : ℤ) = A134026 (n + 1)

end A134026

/-! ## A134026.P13271403006153899132

`comp[A353830(n)]`
-/

namespace A134026.P13271403006153899132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353830 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134026.P13271403006153899132

namespace A134026

/-- `comp[A353830(n)]` -/
def P13271403006153899132.Spec : Prop :=
  ∀ n, (P13271403006153899132.a n : ℤ) = A134026 (n + 1)

end A134026

/-! ## A134026.P5118151591844851867

`lt[A343602(n), 0]`
-/

namespace A134026.P5118151591844851867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343602 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134026.P5118151591844851867

namespace A134026

/-- `lt[A343602(n), 0]` -/
def P5118151591844851867.Spec : Prop :=
  ∀ n, (P5118151591844851867.a n : ℤ) = A134026 (n + 1)

end A134026

/-! ## A134026.P15189641335632780442

`comp[A373712(n)]`
-/

namespace A134026.P15189641335632780442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373712 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134026.P15189641335632780442

namespace A134026

/-- `comp[A373712(n)]` -/
def P15189641335632780442.Spec : Prop :=
  ∀ n, (P15189641335632780442.a n : ℤ) = A134026 (n + 1)

end A134026

/-!
# A134027: Nonnegative numbers that are palindromes in balanced ternary representation.

The programs for A134027, there is no canonical definition to state claims against.
-/

/-! ## A134027.P1396312668572968550

`record[A106610(A233010(n+1))]`
-/

namespace A134027.P1396312668572968550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A233010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134027.P1396312668572968550

/-! ## A134027.P7073469290566047694

`eq[n, A134028(n)]`
-/

namespace A134027.P7073469290566047694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134027.P7073469290566047694

/-! ## A134027.P9688796749881972542

`filter[A233010(n+1), A267208(#)]`
-/

namespace A134027.P9688796749881972542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A134027.P9688796749881972542

/-! ## A134027.P18030583010668946031

`eq[A274107(n)+n, A117966(n)]`
-/

namespace A134027.P18030583010668946031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274107 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134027.P18030583010668946031

/-! ## A134027.P12223741441177079408

`record[A134028(A233010(C(n+1, n)))]`
-/

namespace A134027.P12223741441177079408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A233010 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134027.P12223741441177079408

/-! ## A134027.P11751180205080833576

`lt[abs(n-A134028(n)), A000034(n)]`
-/

namespace A134027.P11751180205080833576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A134028 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134027.P11751180205080833576

/-! ## A134027.P1614833031362373918

`eq[n, A004488(n)-(A274107(n)+n)]`
-/

namespace A134027.P1614833031362373918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (A274107 n + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134027.P1614833031362373918

/-! ## A134027.P1605418053830496256

`lt[(n-A134028(n))², A133994(n+1)]`
-/

namespace A134027.P1605418053830496256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A134028 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134027.P1605418053830496256

/-! ## A134027.P6735407805401362652

`record[A134028(A233010(n+1)-A000038(n+1))]`
-/

namespace A134027.P6735407805401362652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A233010 (n + 1) - A000038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134027.P6735407805401362652

/-! ## A134027.P7320430794918572536

`record[A091684(A233010(n+1)%A224502(n+1))]`
-/

namespace A134027.P7320430794918572536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (Int.tmod (A233010 (n + 1)) (A224502 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134027.P7320430794918572536

/-! ## A134027.P14316274180674375856

`eq[n, A160652(A051176(n))]`
-/

namespace A134027.P14316274180674375856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A051176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134027.P14316274180674375856

/-! ## A134027.P17519113402068739616

`eq[n, A160652(A091684(n))]`
-/

namespace A134027.P17519113402068739616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A091684 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134027.P17519113402068739616

/-! ## A134027.P499975474333323586

`eq[n, A160652(A106610(n))]`
-/

namespace A134027.P499975474333323586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A106610 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134027.P499975474333323586

/-! ## A134027.P15189113121633415582

`eq[n, A160652(A186101(n))]`
-/

namespace A134027.P15189113121633415582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A186101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134027.P15189113121633415582

/-! ## A134027.P2256458683831901043

`eq[n, A160652(A335129(n+3))]`
-/

namespace A134027.P2256458683831901043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A335129 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134027.P2256458683831901043

/-!
# A134028: Reversal of n in balanced ternary representation.

The programs for A134028, there is no canonical definition to state claims against.
-/

/-! ## A134028.P10063510240511250348

`A117966(n)-A274107(n)`
-/

namespace A134028.P10063510240511250348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n - A274107 n

end

end A134028.P10063510240511250348

/-! ## A134028.P16294283683130572333

`A004488(n)-(A274107(n)+n)`
-/

namespace A134028.P16294283683130572333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (A274107 n + (n : ℤ))

end

end A134028.P16294283683130572333

/-! ## A134028.P14566854607415431439

`A327252(A117967(n))`
-/

namespace A134028.P14566854607415431439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 (A117967 n).toNat

end

end A134028.P14566854607415431439

/-! ## A134028.P2263627316491271056

`A327252(A117966(2*n)+A004488(n))`
-/

namespace A134028.P2263627316491271056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 (A117966 (2 * n) + A004488 n).toNat

end

end A134028.P2263627316491271056

/-! ## A134028.P8093863390770758000

`A160652(A030102(A030102(n)))`
-/

namespace A134028.P8093863390770758000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A030102 (A030102 n).toNat).toNat

end

end A134028.P8093863390770758000

/-! ## A134028.P357049511527030920

`A160652(n/A038500(A008574(n)))`
-/

namespace A134028.P357049511527030920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (SequenceMachineLib.roundAway ((n : ℚ) / (A038500 (A008574 n).toNat : ℚ))).toNat

end

end A134028.P357049511527030920

/-! ## A134028.P1538114742963367504

`A327252(A140263(2*n)-n)`
-/

namespace A134028.P1538114742963367504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 (A140263 (2 * n) - (n : ℤ)).toNat

end

end A134028.P1538114742963367504

/-! ## A134028.P2871530264055790020

`A001057(A140264(n))-A274107(n)`
-/

namespace A134028.P2871530264055790020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A140264 n).toNat - A274107 n

end

end A134028.P2871530264055790020

/-!
# A134029: Period 9: repeat 3, 2, 4, 1, 5, 1, 4, 2, 3.

The programs for A134029, there is no canonical definition to state claims against.
-/

/-! ## A134029.P7173530340804812105

`A175674(A175675(A118137(A118137(A007953(n+1)))))`
-/

namespace A134029.P7173530340804812105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175674 (A175675 (A118137 (A118137 (A007953 (n + 1)).toNat).toNat).toNat).toNat

end

end A134029.P7173530340804812105

/-!
# A134030: Area of regular n-sided polygon with length of each side equal to 1 (rounded).

The programs for A134030, the canonical program `A134030.P13056033963500137508` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134030 has offset 3).

The definition of A134030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134030.P13056033963500137508

`round((n+3)/(4*tan(π/(n+3))))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134030

/-- `round((n+3)/(4*tan(π/(n+3))))` -/
def P13056033963500137508.Spec : Prop :=
  ∀ n, P13056033963500137508.a n = A134030 (n + 3)

theorem P13056033963500137508.correct : P13056033963500137508.Spec := by
  intro n
  simp only [A134030, Nat.add_sub_cancel]

end A134030

/-!
# A134031: a(n) = floor(n^sqrt(e)).

The programs for A134031, the canonical program `A134031.P9111802567764851681` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134031 has offset 1).

The definition of A134031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^sqrt(e))` (program `A134031.P9111802567764851681`, by `A134031.P9111802567764851681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134031.P9111802567764851681

`floor((n+1)^sqrt(e))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134031

/-- `floor((n+1)^sqrt(e))` -/
def P9111802567764851681.Spec : Prop :=
  ∀ n, P9111802567764851681.a n = A134031 (n + 1)

theorem P9111802567764851681.correct : P9111802567764851681.Spec := by
  intro n
  simp only [A134031, Nat.add_sub_cancel]

end A134031

/-! ## A134031.P10535897251904149452

`record[floor(abs(1-n)^sqrt(e))]`
-/

namespace A134031.P10535897251904149452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) ^ (Real.sqrt (Real.exp 1))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134031.P10535897251904149452

namespace A134031

/-- `record[floor(abs(1-n)^sqrt(e))]` -/
def P10535897251904149452.Spec : Prop :=
  ∀ n, P10535897251904149452.a n = A134031 (n + 1)

end A134031

/-! ## A134031.P13187739571015093150

`ceil(A057428(n)+(n+1)^sqrt(e))`
-/

namespace A134031.P13187739571015093150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n + 1 : ℝ) ^ (Real.sqrt (Real.exp 1))⌉

end

end A134031.P13187739571015093150

namespace A134031

/-- `ceil(A057428(n)+(n+1)^sqrt(e))` -/
def P13187739571015093150.Spec : Prop :=
  ∀ n, P13187739571015093150.a n = A134031 (n + 1)

end A134031

/-! ## A134031.P17354828820640793774

`ceil((n+1)^sqrt(e)-A057427(n))`
-/

namespace A134031.P17354828820640793774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ (Real.sqrt (Real.exp 1)) - (A057427 n : ℝ)⌉

end

end A134031.P17354828820640793774

namespace A134031

/-- `ceil((n+1)^sqrt(e)-A057427(n))` -/
def P17354828820640793774.Spec : Prop :=
  ∀ n, P17354828820640793774.a n = A134031 (n + 1)

end A134031

/-! ## A134031.P5704379240841208396

`A069924(A166068(n+1))`
-/

namespace A134031.P5704379240841208396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (A166068 (n + 1)).toNat

end

end A134031.P5704379240841208396

namespace A134031

/-- `A069924(A166068(n+1))` -/
def P5704379240841208396.Spec : Prop :=
  ∀ n, P5704379240841208396.a n = A134031 (n + 1)

end A134031

/-!
# A134032: Rectangular array T(n,k) read by antidiagonals. Row n consists of numbers k for which {k*tau}<n/k, where tau=(1+sqrt(5))/2 and { } denotes fractional part.

The programs for A134032, there is no canonical definition to state claims against.
-/

/-! ## A134032.P7194342214634353615

`A137151(n+1)-A025466(A103446(n))`
-/

namespace A134032.P7194342214634353615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137151 (n + 1) - A025466 (A103446 n).toNat

end

end A134032.P7194342214634353615

/-! ## A134032.P5827630676674810344

`A137151(n+1)-A025466(A218482(n))`
-/

namespace A134032.P5827630676674810344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137151 (n + 1) - A025466 (A218482 n).toNat

end

end A134032.P5827630676674810344

/-! ## A134032.P5707224031490753861

`A137151(n+1)-A276791(A005183(n))`
-/

namespace A134032.P5707224031490753861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137151 (n + 1) - A276791 (A005183 n).toNat

end

end A134032.P5707224031490753861

/-! ## A134032.P15990160823474898754

`A318942(n+1)/A007318(A062399(n))`
-/

namespace A134032.P15990160823474898754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318942 (n + 1) : ℚ) / (A007318 (A062399 n).toNat : ℚ)

end

end A134032.P15990160823474898754

/-! ## A134032.P12312137682115044264

`A318942(n+1)/A134033(A168551(n))`
-/

namespace A134032.P12312137682115044264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318942 (n + 1) : ℚ) / (A134033 (A168551 n).toNat : ℚ)

end

end A134032.P12312137682115044264

/-!
# A134034: Number of primes between n^K and (n+1)^K, where K is 1.647862393566467... and n is an integer greater than 0.

The programs for A134034, there is no canonical definition to state claims against.
-/

/-! ## A134034.P12551338869710869196

`A325169(A053762(3*n+1)%A314508(n+3))`
-/

namespace A134034.P12551338869710869196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (Int.tmod (A053762 (3 * n + 1)) (A314508 (n + 3))).toNat

end

end A134034.P12551338869710869196

/-!
# A134037: Concatenated first and last digits of Mersenne prime reversals.

The programs for A134037, there is no canonical definition to state claims against.
-/

/-! ## A134037.P5592652471643221533

`A004086(A138841(n+1))`
-/

namespace A134037.P5592652471643221533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A138841 (n + 1)).toNat

end

end A134037.P5592652471643221533

/-! ## A134037.P11983543636078251625

`A367362(A138863(n+1))`
-/

namespace A134037.P11983543636078251625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (A138863 (n + 1)).toNat

end

end A134037.P11983543636078251625

/-! ## A134037.P9835757146585322767

`A032762(A138841(n+1)+1)`
-/

namespace A134037.P9835757146585322767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 (A138841 (n + 1) + 1).toNat

end

end A134037.P9835757146585322767

/-! ## A134037.P15990481181818090388

`A135020(2*A138841(n+1))`
-/

namespace A134037.P15990481181818090388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * A138841 (n + 1)).toNat

end

end A134037.P15990481181818090388

/-! ## A134037.P14000874648937159436

`A103168(10*A138841(n+1))`
-/

namespace A134037.P14000874648937159436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (10 * A138841 (n + 1)).toNat

end

end A134037.P14000874648937159436

/-!
# A134039: First prime divisor of odd composite Mersenne prime reversals.

The programs for A134039, there is no canonical definition to state claims against.
-/

/-! ## A134039.P16925956960122193177

`or(A037931(n+2), A037943(A037969(n+5)))`
-/

namespace A134039.P16925956960122193177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037931 (n + 2)) (A037943 (A037969 (n + 5)).toNat)

end

end A134039.P16925956960122193177

/-!
# A134040: a(0) = 1; for n>0, a(n) = number of binary partitions of the Catalan number A000108(n).

The programs for A134040, there is no canonical definition to state claims against.
-/

/-! ## A134040.P12232574647430558681

`A000123(record[Δ[A090192(n)]])`
-/

namespace A134040.P12232574647430558681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134040.P12232574647430558681

/-! ## A134040.P2375619118128393772

`A000123(record[Δ[A097331(n)]])`
-/

namespace A134040.P2375619118128393772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134040.P2375619118128393772

/-! ## A134040.P2471627298734944549

`A000123(record[A097331(n+2)])`
-/

namespace A134040.P2471627298734944549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134040.P2471627298734944549

/-! ## A134040.P1280638855167135677

`A000123(A000108(n)%∏[n!%2+n])`
-/

namespace A134040.P1280638855167135677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (Int.tmod (A000108 n) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A134040.P1280638855167135677

/-! ## A134040.P9796041732949290050

`A000123(A126324(2*n)%(n!*∑[1/n!]))`
-/

namespace A134040.P9796041732949290050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (Int.tmod (A126324 (2 * n)) (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat

end

end A134040.P9796041732949290050

/-!
# A134041: a(n) = number of binary partitions of the Fibonacci number F(n).

The programs for A134041, the canonical program `A134041.P7493600617532933187` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134041 has offset 0).

The definition of A134041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134041.P7493600617532933187

`A000123(A000045(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A134041

/-- `A000123(A000045(n))` -/
def P7493600617532933187.Spec : Prop :=
  ∀ n, P7493600617532933187.a n = A134041 n

theorem P7493600617532933187.correct : P7493600617532933187.Spec := by
  intro n
  simp only [A134041]

end A134041

/-! ## A134041.P14624815951393442116

`A000123(sqrt(A007598(n)))`
-/

namespace A134041.P14624815951393442116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (SequenceMachineLib.roundAway (Real.sqrt (A007598 n : ℝ))).toNat

end

end A134041.P14624815951393442116

namespace A134041

/-- `A000123(sqrt(A007598(n)))` -/
def P14624815951393442116.Spec : Prop :=
  ∀ n, P14624815951393442116.a n = A134041 n

end A134041

/-! ## A134041.P17640375498797994824

`A000123(A108617(∑[n]))`
-/

namespace A134041.P17640375498797994824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A108617 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A134041.P17640375498797994824

namespace A134041

/-- `A000123(A108617(∑[n]))` -/
def P17640375498797994824.Spec : Prop :=
  ∀ n, P17640375498797994824.a n = A134041 n

end A134041

/-! ## A134041.P10517298109549677517

`A000123(A228074(∑[n]))`
-/

namespace A134041.P10517298109549677517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A228074 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A134041.P10517298109549677517

namespace A134041

/-- `A000123(A228074(∑[n]))` -/
def P10517298109549677517.Spec : Prop :=
  ∀ n, P10517298109549677517.a n = A134041 n

end A134041

/-!
# A134043: Complete list of solutions to y^2 = x^3 + 113; sequence gives y values.

The programs for A134043, there is no canonical definition to state claims against.
-/

/-! ## A134043.P16336139325110555405

`eq[8, A028967(A115683(n+1))]`
-/

namespace A134043.P16336139325110555405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (A115683 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134043.P16336139325110555405

/-!
# A134044: Number of compositions of n with parts in N which avoid the pattern 221.

The programs for A134044, there is no canonical definition to state claims against.
-/

/-! ## A134044.P15537977353638846180

`A028310(A079967(n)-A025442(n))`
-/

namespace A134044.P15537977353638846180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A079967 n - A025442 n).toNat

end

end A134044.P15537977353638846180

/-! ## A134044.P17818394278526283196

`A058035(A079967(n)-A025442(n))`
-/

namespace A134044.P17818394278526283196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (A079967 n - A025442 n).toNat

end

end A134044.P17818394278526283196

/-! ## A134044.P9629245699987941272

`A028310(A079967(n)-A151795(n))`
-/

namespace A134044.P9629245699987941272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A079967 n - A151795 n).toNat

end

end A134044.P9629245699987941272

/-! ## A134044.P18083591661936512018

`A079967(n)-A185284(A002865(n))`
-/

namespace A134044.P18083591661936512018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079967 n - A185284 (A002865 n).toNat

end

end A134044.P18083591661936512018

/-! ## A134044.P6063528597723951475

`A058035(A079967(n)-A151795(n))`
-/

namespace A134044.P6063528597723951475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (A079967 n - A151795 n).toNat

end

end A134044.P6063528597723951475

/-!
# A134045: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are disjoint and for which either x is a subset of y or y is a subset of x, or 1) x and y are intersecting but for which x is not a subset of y and y is not a subset of x, or 2) x = y.

The programs for A134045, the canonical program `A134045.P17247240917119011260` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134045 has offset 0).

The definition of A134045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134045.P17247240917119011260

`(4^n-3^(n+1)+7*2^n-3)/2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134045

/-- `(4^n-3^(n+1)+7*2^n-3)/2` -/
def P17247240917119011260.Spec : Prop :=
  ∀ n, P17247240917119011260.a n = (A134045 n : ℚ)

end A134045

/-! ## A134045.P11389941201715787568

`A134018(n)+2^n`
-/

namespace A134045.P11389941201715787568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n + (2 ^ n : ℤ)

end

end A134045.P11389941201715787568

namespace A134045

/-- `A134018(n)+2^n` -/
def P11389941201715787568.Spec : Prop :=
  ∀ n, P11389941201715787568.a n = A134045 n

end A134045

/-! ## A134045.P4088244849878405486

`A134019(n)+2^n-1`
-/

namespace A134045.P4088244849878405486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n + ((2 ^ n : ℤ) - 1)

end

end A134045.P4088244849878405486

namespace A134045

/-- `A134019(n)+2^n-1` -/
def P4088244849878405486.Spec : Prop :=
  ∀ n, P4088244849878405486.a n = A134045 n

end A134045

/-! ## A134045.P16676764690834075406

`abs(∑[3^n]+2-A257272(n))`
-/

namespace A134045.P16676764690834075406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - A257272 n|

end

end A134045.P16676764690834075406

namespace A134045

/-- `abs(∑[3^n]+2-A257272(n))` -/
def P16676764690834075406.Spec : Prop :=
  ∀ n, P16676764690834075406.a n = A134045 n

end A134045

/-! ## A134045.P15322525234322968268

`A000225(n)+(2^n+4^n)/2-∑[3^n-2^n]`
-/

namespace A134045.P15322525234322968268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) + ((2 ^ n + 4 ^ n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A134045.P15322525234322968268

namespace A134045

/-- `A000225(n)+(2^n+4^n)/2-∑[3^n-2^n]` -/
def P15322525234322968268.Spec : Prop :=
  ∀ n, P15322525234322968268.a n = (A134045 n : ℚ)

end A134045

/-! ## A134045.P2068161935502520819

`A126646(n)+(2^n+4^n)/2-(∑[3^n]+1-2^n)`
-/

namespace A134045.P2068161935502520819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) + ((2 ^ n + 4 ^ n : ℚ) / 2 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ)) : ℚ))

end

end A134045.P2068161935502520819

namespace A134045

/-- `A126646(n)+(2^n+4^n)/2-(∑[3^n]+1-2^n)` -/
def P2068161935502520819.Spec : Prop :=
  ∀ n, P2068161935502520819.a n = (A134045 n : ℚ)

end A134045

/-! ## A134045.P1382443569102763003

`A257272(n)-A067771(n)`
-/

namespace A134045.P1382443569102763003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 n - A067771 n

end

end A134045.P1382443569102763003

namespace A134045

/-- `A257272(n)-A067771(n)` -/
def P1382443569102763003.Spec : Prop :=
  ∀ n, P1382443569102763003.a n = A134045 n

end A134045

/-! ## A134045.P10329449984817487043

`A134165(n)-A000392(n+1)`
-/

namespace A134045.P10329449984817487043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - A000392 (n + 1)

end

end A134045.P10329449984817487043

namespace A134045

/-- `A134165(n)-A000392(n+1)` -/
def P10329449984817487043.Spec : Prop :=
  ∀ n, P10329449984817487043.a n = A134045 n

end A134045

/-! ## A134045.P4241277230652768873

`A134168(n)-A028243(n+1)`
-/

namespace A134045.P4241277230652768873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - A028243 (n + 1)

end

end A134045.P4241277230652768873

namespace A134045

/-- `A134168(n)-A028243(n+1)` -/
def P4241277230652768873.Spec : Prop :=
  ∀ n, P4241277230652768873.a n = A134045 n

end A134045

/-! ## A134045.P4485860806848242015

`A032263(n+1)+A000225(n+1)`
-/

namespace A134045.P4485860806848242015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + A000225 (n + 1)

end

end A134045.P4485860806848242015

namespace A134045

/-- `A032263(n+1)+A000225(n+1)` -/
def P4485860806848242015.Spec : Prop :=
  ∀ n, P4485860806848242015.a n = A134045 n

end A134045

/-! ## A134045.P3276021902052157263

`A255047(n+1)+A032263(n+1)`
-/

namespace A134045.P3276021902052157263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) + A032263 (n + 1)

end

end A134045.P3276021902052157263

namespace A134045

/-- `A255047(n+1)+A032263(n+1)` -/
def P3276021902052157263.Spec : Prop :=
  ∀ n, P3276021902052157263.a n = A134045 n

end A134045

/-! ## A134045.P9540190572851136560

`A075427(2*n)+A032263(n+1)`
-/

namespace A134045.P9540190572851136560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (2 * n) + A032263 (n + 1)

end

end A134045.P9540190572851136560

namespace A134045

/-- `A075427(2*n)+A032263(n+1)` -/
def P9540190572851136560.Spec : Prop :=
  ∀ n, P9540190572851136560.a n = A134045 n

end A134045

/-! ## A134045.P218802268987795932

`A134165(n)-A056509(2*n+1)`
-/

namespace A134045.P218802268987795932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - A056509 (2 * n + 1)

end

end A134045.P218802268987795932

namespace A134045

/-- `A134165(n)-A056509(2*n+1)` -/
def P218802268987795932.Spec : Prop :=
  ∀ n, P218802268987795932.a n = A134045 n

end A134045

/-! ## A134045.P5979156842395869787

`A083330(n)-A384988(n+1)`
-/

namespace A134045.P5979156842395869787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083330 n - A384988 (n + 1)

end

end A134045.P5979156842395869787

namespace A134045

/-- `A083330(n)-A384988(n+1)` -/
def P5979156842395869787.Spec : Prop :=
  ∀ n, P5979156842395869787.a n = A134045 n

end A134045

/-! ## A134045.P4965508521025382467

`A032263(n+1)+A006516(n+1)/A000079(n)`
-/

namespace A134045.P4965508521025382467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032263 (n + 1) : ℚ) + (A006516 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A134045.P4965508521025382467

namespace A134045

/-- `A032263(n+1)+A006516(n+1)/A000079(n)` -/
def P4965508521025382467.Spec : Prop :=
  ∀ n, P4965508521025382467.a n = (A134045 n : ℚ)

end A134045

/-! ## A134045.P7921139245810442202

`A032263(n+1)+A053154(n+1)-A036239(n+1)`
-/

namespace A134045.P7921139245810442202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + (A053154 (n + 1) - A036239 (n + 1))

end

end A134045.P7921139245810442202

namespace A134045

/-- `A032263(n+1)+A053154(n+1)-A036239(n+1)` -/
def P7921139245810442202.Spec : Prop :=
  ∀ n, P7921139245810442202.a n = A134045 n

end A134045

/-! ## A134045.P2924331738171132450

`A032263(n+1)+A134018(n+1)-A032263(n+2)`
-/

namespace A134045.P2924331738171132450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + (A134018 (n + 1) - A032263 (n + 2))

end

end A134045.P2924331738171132450

namespace A134045

/-- `A032263(n+1)+A134018(n+1)-A032263(n+2)` -/
def P2924331738171132450.Spec : Prop :=
  ∀ n, P2924331738171132450.a n = A134045 n

end A134045

/-!
# A134046: G.f. A(x) satisfies: [x^n] A(x)^(2^n) = 4^n for n>=0.

The programs for A134046, there is no canonical definition to state claims against.
-/

/-! ## A134046.P8602166391660709036

`A163591(2^n)`
-/

namespace A134046.P8602166391660709036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163591 (2 ^ n)

end

end A134046.P8602166391660709036

/-! ## A134046.P8700768172553240576

`A163591(A000079(n))+char[6]`
-/

namespace A134046.P8700768172553240576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163591 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134046.P8700768172553240576

/-!
# A134047: a(n) = [x^n] G(x)^( 2^(n+1) ) / 4^n, where G(x) is the g.f. of A134046 such that G(x) satisfies: [x^n] G(x)^(2^n) = 4^n for n>=0.

The programs for A134047, there is no canonical definition to state claims against.
-/

/-! ## A134047.P3433923084586171203

`A330081(A088309(n))`
-/

namespace A134047.P3433923084586171203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330081 (A088309 n).toNat

end

end A134047.P3433923084586171203

/-!
# A134050: Column 0 of triangle A134049.

The programs for A134050, there is no canonical definition to state claims against.
-/

/-! ## A134050.P18101491815357673284

`A134049(∑[n])`
-/

namespace A134050.P18101491815357673284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134050.P18101491815357673284

/-! ## A134050.P16757383048355213116

`or(A000007(n), A134049(A000217(n)))`
-/

namespace A134050.P16757383048355213116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A134049 (A000217 n).toNat)

end

end A134050.P16757383048355213116

/-! ## A134050.P17825516872437884237

`A134049(A000217(n))+A000007(A093561(n))`
-/

namespace A134050.P17825516872437884237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134049 (A000217 n).toNat + A000007 (A093561 n).toNat

end

end A134050.P17825516872437884237

/-! ## A134050.P9607467959271668287

`A134049(A000217(n))+A000007(A117260(n))`
-/

namespace A134050.P9607467959271668287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134049 (A000217 n).toNat + A000007 (A117260 n).toNat

end

end A134050.P9607467959271668287

/-! ## A134050.P9771238032435374894

`A134049(A000217(n))+A000007(A011782(n))`
-/

namespace A134050.P9771238032435374894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134049 (A000217 n).toNat + A000007 (A011782 n).toNat

end

end A134050.P9771238032435374894

/-!
# A134051: Column 0 of matrix square of triangle A134049; a(n) = [A134049^2](n,0) = A134049(n+1,1)/2^n.

The programs for A134051, there is no canonical definition to state claims against.
-/

/-! ## A134051.P17401348381419578207

`A265227(A207136(n))+A004525(n+1)`
-/

namespace A134051.P17401348381419578207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (A207136 n).toNat + A004525 (n + 1)

end

end A134051.P17401348381419578207

/-!
# A134054: Row sums of triangle A134049.

The programs for A134054, there is no canonical definition to state claims against.
-/

/-! ## A134054.P15137741042440789187

`A126424(n*a(n-1)+n)-n+1` with `a(0)=1, a(1)=2`
-/

namespace A134054.P15137741042440789187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A126424 ((n : ℤ) * a (n - 1) + (n : ℤ)).toNat - (n : ℤ) + 1

end

end A134054.P15137741042440789187

/-!
# A134055: a(n) = Sum_{k=1..n} C(n-1,k-1) * S2(n,k) for n>0, a(0)=1, where S2(n,k) = A048993(n,k) are Stirling numbers of the 2nd kind.

The programs for A134055, there is no canonical definition to state claims against.
-/

/-! ## A134055.P13185392262628750799

`A271701(∑[n]+n)`
-/

namespace A134055.P13185392262628750799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271701 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A134055.P13185392262628750799

/-! ## A134055.P1498698022127269235

`A271701(A000096(n))%A051580(n+1)`
-/

namespace A134055.P1498698022127269235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271701 (A000096 n).toNat) (A051580 (n + 1))

end

end A134055.P1498698022127269235

/-!
# A134056: Least positive integer k such that (n!)! + k is prime.

The programs for A134056, there is no canonical definition to state claims against.
-/

/-! ## A134056.P17210304516017535079

`A033932((n+1)!)`
-/

namespace A134056.P17210304516017535079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (Nat.factorial (n + 1))

end

end A134056.P17210304516017535079

/-! ## A134056.P834174338841851340

`A033932(∏[n+1])`
-/

namespace A134056.P834174338841851340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A134056.P834174338841851340

/-!
# A134057: a(n) = binomial(2^n-1,2).

The programs for A134057, the canonical program `A134057.P13854464263331431297` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134057 has offset 0).

The definition of A134057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^n-1, 2)` (program `A134057.P13854464263331431297`, by `A134057.P13854464263331431297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134057.P3159417794654651391

`(2^n-1)*(2^(n-1)-1)`
-/

namespace A134057.P3159417794654651391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A134057.P3159417794654651391

namespace A134057

/-- `(2^n-1)*(2^(n-1)-1)` -/
def P3159417794654651391.Spec : Prop :=
  ∀ n, P3159417794654651391.a n = (A134057 n : ℚ)

end A134057

/-! ## A134057.P9164633654458104781

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A134057.P9164633654458104781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A134057.P9164633654458104781

namespace A134057

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P9164633654458104781.Spec : Prop :=
  ∀ n, P9164633654458104781.a n = A134057 n

end A134057

/-! ## A134057.P13854464263331431297

`C(2^n-1, 2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134057

/-- `C(2^n-1, 2)` -/
def P13854464263331431297.Spec : Prop :=
  ∀ n, (P13854464263331431297.a n : ℤ) = A134057 n

theorem P13854464263331431297.correct : P13854464263331431297.Spec := by
  intro n
  simp only [A134057]

end A134057

/-! ## A134057.P8319939682082537621

`∑[ogf(3x^2/(1-6x+8x^2))]`
-/

namespace A134057.P8319939682082537621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134057.P8319939682082537621

namespace A134057

/-- `∑[ogf(3x^2/(1-6x+8x^2))]` -/
def P8319939682082537621.Spec : Prop :=
  ∀ n, P8319939682082537621.a n = A134057 n

end A134057

/-! ## A134057.P13082084778506210804

`lcm(floor(2^(n-1))-1, 2^n-1)`
-/

namespace A134057.P13082084778506210804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - 1) ((2 ^ n : ℤ) - 1)

end

end A134057.P13082084778506210804

namespace A134057

/-- `lcm(floor(2^(n-1))-1, 2^n-1)` -/
def P13082084778506210804.Spec : Prop :=
  ∀ n, (P13082084778506210804.a n : ℤ) = A134057 n

end A134057

/-! ## A134057.P7292500788358420870

`xor((4^n-2^n)/2+1, 2^n)`
-/

namespace A134057.P7292500788358420870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 + 1)) (2 ^ n : ℤ)

end

end A134057.P7292500788358420870

namespace A134057

/-- `xor((4^n-2^n)/2+1, 2^n)` -/
def P7292500788358420870.Spec : Prop :=
  ∀ n, P7292500788358420870.a n = A134057 n

end A134057

/-! ## A134057.P11120360565560960527

`a(n-1)+a(n-1)+4^(n-1)-1` with `a(0)=0`
-/

namespace A134057.P11120360565560960527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1

end

end A134057.P11120360565560960527

namespace A134057

/-- `a(n-1)+a(n-1)+4^(n-1)-1` -/
def P11120360565560960527.Spec : Prop :=
  ∀ n, P11120360565560960527.a n = (A134057 n : ℚ)

end A134057

/-! ## A134057.P790965093271592325

`A027556(2*n)/2`
-/

namespace A134057.P790965093271592325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027556 (2 * n) : ℚ) / 2

end

end A134057.P790965093271592325

namespace A134057

/-- `A027556(2*n)/2` -/
def P790965093271592325.Spec : Prop :=
  ∀ n, P790965093271592325.a n = (A134057 n : ℚ)

end A134057

/-! ## A134057.P15669906353801518902

`A134169(n)-2^n`
-/

namespace A134057.P15669906353801518902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n - (2 ^ n : ℤ)

end

end A134057.P15669906353801518902

namespace A134057

/-- `A134169(n)-2^n` -/
def P15669906353801518902.Spec : Prop :=
  ∀ n, P15669906353801518902.a n = A134057 n

end A134057

/-! ## A134057.P9383580722311089401

`A006516(n)+1-2^n`
-/

namespace A134057.P9383580722311089401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + (1 - (2 ^ n : ℤ))

end

end A134057.P9383580722311089401

namespace A134057

/-- `A006516(n)+1-2^n` -/
def P9383580722311089401.Spec : Prop :=
  ∀ n, P9383580722311089401.a n = A134057 n

end A134057

/-! ## A134057.P10661918497683010344

`A281481(n)-2^(n+1)`
-/

namespace A134057.P10661918497683010344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n - (2 ^ (n + 1) : ℤ)

end

end A134057.P10661918497683010344

namespace A134057

/-- `A281481(n)-2^(n+1)` -/
def P10661918497683010344.Spec : Prop :=
  ∀ n, P10661918497683010344.a n = A134057 n

end A134057

/-! ## A134057.P10507235748643630649

`A274230(A004273(n))`
-/

namespace A134057.P10507235748643630649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (A004273 n).toNat

end

end A134057.P10507235748643630649

namespace A134057

/-- `A274230(A004273(n))` -/
def P10507235748643630649.Spec : Prop :=
  ∀ n, P10507235748643630649.a n = A134057 n

end A134057

/-! ## A134057.P15373966267878138717

`A394960(n)+A000918(n)`
-/

namespace A134057.P15373966267878138717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394960 n + A000918 n

end

end A134057.P15373966267878138717

namespace A134057

/-- `A394960(n)+A000918(n)` -/
def P15373966267878138717.Spec : Prop :=
  ∀ n, P15373966267878138717.a n = A134057 n

end A134057

/-! ## A134057.P16861877579410470157

`A394314(n)+A281773(n)`
-/

namespace A134057.P16861877579410470157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394314 n + A281773 n

end

end A134057.P16861877579410470157

namespace A134057

/-- `A394314(n)+A281773(n)` -/
def P16861877579410470157.Spec : Prop :=
  ∀ n, P16861877579410470157.a n = A134057 n

end A134057

/-! ## A134057.P9176316538615331362

`A020515(n)-A007582(n)`
-/

namespace A134057.P9176316538615331362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 n - A007582 n

end

end A134057.P9176316538615331362

namespace A134057

/-- `A020515(n)-A007582(n)` -/
def P9176316538615331362.Spec : Prop :=
  ∀ n, P9176316538615331362.a n = A134057 n

end A134057

/-! ## A134057.P12077392972663105208

`A094375(n)-A005056(n)`
-/

namespace A134057.P12077392972663105208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n - A005056 n

end

end A134057.P12077392972663105208

namespace A134057

/-- `A094375(n)-A005056(n)` -/
def P12077392972663105208.Spec : Prop :=
  ∀ n, P12077392972663105208.a n = A134057 n

end A134057

/-! ## A134057.P7449197801005948942

`A007582(n)-A126646(n)`
-/

namespace A134057.P7449197801005948942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A126646 n

end

end A134057.P7449197801005948942

namespace A134057

/-- `A007582(n)-A126646(n)` -/
def P7449197801005948942.Spec : Prop :=
  ∀ n, P7449197801005948942.a n = A134057 n

end A134057

/-! ## A134057.P13310981897537258729

`A005061(n)-A133789(n)`
-/

namespace A134057.P13310981897537258729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n - A133789 n

end

end A134057.P13310981897537258729

namespace A134057

/-- `A005061(n)-A133789(n)` -/
def P13310981897537258729.Spec : Prop :=
  ∀ n, P13310981897537258729.a n = A134057 n

end A134057

/-! ## A134057.P10527541661972991828

`A081294(n)-A083329(n)`
-/

namespace A134057.P10527541661972991828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A083329 n

end

end A134057.P10527541661972991828

namespace A134057

/-- `A081294(n)-A083329(n)` -/
def P10527541661972991828.Spec : Prop :=
  ∀ n, P10527541661972991828.a n = A134057 n

end A134057

/-! ## A134057.P2069182037535448194

`A083314(n)-A134168(n)`
-/

namespace A134057.P2069182037535448194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083314 n - A134168 n

end

end A134057.P2069182037535448194

namespace A134057

/-- `A083314(n)-A134168(n)` -/
def P2069182037535448194.Spec : Prop :=
  ∀ n, P2069182037535448194.a n = A134057 n

end A134057

/-!
# A134058: Triangle T(n, k) = 2*binomial(n, k) with T(0, 0) = 1, read by rows.

The programs for A134058, the canonical program `A134058.P11194950066351416818` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134058 has offset 0).

The definition of A134058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134058.P11256217180261125497

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A134058.P11256217180261125497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A134058.P11256217180261125497

namespace A134058

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P11256217180261125497.Spec : Prop :=
  ∀ n, (P11256217180261125497.a n : ℤ) = A134058 n

end A134058

/-! ## A134058.P5274193301751759707

`ceil(A135087(n)/2)`
-/

namespace A134058.P5274193301751759707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 2⌉

end

end A134058.P5274193301751759707

namespace A134058

/-- `ceil(A135087(n)/2)` -/
def P5274193301751759707.Spec : Prop :=
  ∀ n, P5274193301751759707.a n = A134058 n

end A134058

/-! ## A134058.P11194950066351416818

`2*A007318(and(1, a(n-1))+n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A134058

/-- `2*A007318(and(1, a(n-1))+n)` -/
def P11194950066351416818.Spec : Prop :=
  ∀ n, P11194950066351416818.a n = A134058 n

theorem P11194950066351416818.correct : P11194950066351416818.Spec := by
  intro n
  simp only [A134058]

end A134058

/-! ## A134058.P11747592951363263572

`2*A007318(n-and(1, a(n-1)))` with `a(0)=1`
-/

namespace A134058.P11747592951363263572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A007318 ((n : ℤ) - Int.land 1 (a (n - 1))).toNat

end

end A134058.P11747592951363263572

namespace A134058

/-- `2*A007318(n-and(1, a(n-1)))` -/
def P11747592951363263572.Spec : Prop :=
  ∀ n, P11747592951363263572.a n = A134058 n

end A134058

/-! ## A134058.P577620855388468948

`2*A007318(gcd(n, n*a(n-1)))` with `a(0)=1`
-/

namespace A134058.P577620855388468948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A007318 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))

end

end A134058.P577620855388468948

namespace A134058

/-- `2*A007318(gcd(n, n*a(n-1)))` -/
def P577620855388468948.Spec : Prop :=
  ∀ n, P577620855388468948.a n = A134058 n

end A134058

/-! ## A134058.P12963537419255258992

`A093560(n)+A008482(n)`
-/

namespace A134058.P12963537419255258992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n + A008482 n

end

end A134058.P12963537419255258992

namespace A134058

/-- `A093560(n)+A008482(n)` -/
def P12963537419255258992.Spec : Prop :=
  ∀ n, P12963537419255258992.a n = A134058 n

end A134058

/-! ## A134058.P15753210207622306876

`A109128(n)+A057427(n)`
-/

namespace A134058.P15753210207622306876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + A057427 n

end

end A134058.P15753210207622306876

namespace A134058

/-- `A109128(n)+A057427(n)` -/
def P15753210207622306876.Spec : Prop :=
  ∀ n, P15753210207622306876.a n = A134058 n

end A134058

/-! ## A134058.P1082834255161885095

`A124927(n)+A073424(n)`
-/

namespace A134058.P1082834255161885095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + A073424 n

end

end A134058.P1082834255161885095

namespace A134058

/-- `A124927(n)+A073424(n)` -/
def P1082834255161885095.Spec : Prop :=
  ∀ n, P1082834255161885095.a n = A134058 n

end A134058

/-! ## A134058.P596649950271475545

`A028326(n)-A000007(n)`
-/

namespace A134058.P596649950271475545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A000007 n

end

end A134058.P596649950271475545

namespace A134058

/-- `A028326(n)-A000007(n)` -/
def P596649950271475545.Spec : Prop :=
  ∀ n, P596649950271475545.a n = A134058 n

end A134058

/-! ## A134058.P2745640132336026199

`A093560(n)-A037012(n)`
-/

namespace A134058.P2745640132336026199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n - A037012 n

end

end A134058.P2745640132336026199

namespace A134058

/-- `A093560(n)-A037012(n)` -/
def P2745640132336026199.Spec : Prop :=
  ∀ n, P2745640132336026199.a n = A134058 n

end A134058

/-! ## A134058.P11706120736758547131

`A109128(n)-A057428(n)`
-/

namespace A134058.P11706120736758547131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n - A057428 n

end

end A134058.P11706120736758547131

namespace A134058

/-- `A109128(n)-A057428(n)` -/
def P11706120736758547131.Spec : Prop :=
  ∀ n, P11706120736758547131.a n = A134058 n

end A134058

/-! ## A134058.P507013007691584685

`A132749(n)*A238303(n)`
-/

namespace A134058.P507013007691584685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A238303 n

end

end A134058.P507013007691584685

namespace A134058

/-- `A132749(n)*A238303(n)` -/
def P507013007691584685.Spec : Prop :=
  ∀ n, P507013007691584685.a n = A134058 n

end A134058

/-! ## A134058.P13698325617706411144

`A028326(n)/A054977(n)`
-/

namespace A134058.P13698325617706411144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (A054977 n : ℚ)

end

end A134058.P13698325617706411144

namespace A134058

/-- `A028326(n)/A054977(n)` -/
def P13698325617706411144.Spec : Prop :=
  ∀ n, P13698325617706411144.a n = (A134058 n : ℚ)

end A134058

/-! ## A134058.P4024272888187864760

`gcd(A028326(n), A067804(n))`
-/

namespace A134058.P4024272888187864760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n) (A067804 n)

end

end A134058.P4024272888187864760

namespace A134058

/-- `gcd(A028326(n), A067804(n))` -/
def P4024272888187864760.Spec : Prop :=
  ∀ n, (P4024272888187864760.a n : ℤ) = A134058 n

end A134058

/-! ## A134058.P1483665950059395717

`lcm(A043529(n), A129994(n))`
-/

namespace A134058.P1483665950059395717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043529 n) (A129994 n)

end

end A134058.P1483665950059395717

namespace A134058

/-- `lcm(A043529(n), A129994(n))` -/
def P1483665950059395717.Spec : Prop :=
  ∀ n, (P1483665950059395717.a n : ℤ) = A134058 n

end A134058

/-! ## A134058.P14303892237922963807

`lcm(A132046(n), A280560(n))`
-/

namespace A134058.P14303892237922963807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132046 n) (A280560 n)

end

end A134058.P14303892237922963807

namespace A134058

/-- `lcm(A132046(n), A280560(n))` -/
def P14303892237922963807.Spec : Prop :=
  ∀ n, (P14303892237922963807.a n : ℤ) = A134058 n

end A134058

/-! ## A134058.P11705837788461850015

`A028326(n)-(A057428(n)+1)`
-/

namespace A134058.P11705837788461850015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (A057428 n + 1)

end

end A134058.P11705837788461850015

namespace A134058

/-- `A028326(n)-(A057428(n)+1)` -/
def P11705837788461850015.Spec : Prop :=
  ∀ n, P11705837788461850015.a n = A134058 n

end A134058

/-!
# A134059: Triangle T(n, k) = 3*binomial(n,k) with T(0, 0) = 1, read by rows.

The programs for A134059, the canonical program `A134059.P4235307889070285583` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134059 has offset 0).

The definition of A134059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134059.P16690803689677835802

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A134059.P16690803689677835802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A134059.P16690803689677835802

namespace A134059

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P16690803689677835802.Spec : Prop :=
  ∀ n, (P16690803689677835802.a n : ℤ) = A134059 n

end A134059

/-! ## A134059.P4235307889070285583

`3%(2*(n+1))*A007318(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A134059

/-- `3%(2*(n+1))*A007318(n)` -/
def P4235307889070285583.Spec : Prop :=
  ∀ n, P4235307889070285583.a n = A134059 n

theorem P4235307889070285583.correct : P4235307889070285583.Spec := by
  intro n
  simp only [A134059]

end A134059

/-! ## A134059.P10993256007185478996

`A135087(n)-A014473(n)`
-/

namespace A134059.P10993256007185478996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135087 n - A014473 n

end

end A134059.P10993256007185478996

namespace A134059

/-- `A135087(n)-A014473(n)` -/
def P10993256007185478996.Spec : Prop :=
  ∀ n, P10993256007185478996.a n = A134059 n

end A134059

/-! ## A134059.P13640683385899978993

`A007318(n)*A122553(n)`
-/

namespace A134059.P13640683385899978993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A122553 n

end

end A134059.P13640683385899978993

namespace A134059

/-- `A007318(n)*A122553(n)` -/
def P13640683385899978993.Spec : Prop :=
  ∀ n, P13640683385899978993.a n = A134059 n

end A134059

/-! ## A134059.P10601205199700004544

`lcm(A122553(n), A124928(n))`
-/

namespace A134059.P10601205199700004544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122553 n) (A124928 n)

end

end A134059.P10601205199700004544

namespace A134059

/-- `lcm(A122553(n), A124928(n))` -/
def P10601205199700004544.Spec : Prop :=
  ∀ n, (P10601205199700004544.a n : ℤ) = A134059 n

end A134059

/-! ## A134059.P12150458931107257596

`A135087(n)+1-A007318(n)`
-/

namespace A134059.P12150458931107257596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135087 n + (1 - A007318 n)

end

end A134059.P12150458931107257596

namespace A134059

/-- `A135087(n)+1-A007318(n)` -/
def P12150458931107257596.Spec : Prop :=
  ∀ n, P12150458931107257596.a n = A134059 n

end A134059

/-! ## A134059.P10242936986008374003

`A131060(n)+2-A000038(n)`
-/

namespace A134059.P10242936986008374003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (2 - A000038 n)

end

end A134059.P10242936986008374003

namespace A134059

/-- `A131060(n)+2-A000038(n)` -/
def P10242936986008374003.Spec : Prop :=
  ∀ n, P10242936986008374003.a n = A134059 n

end A134059

/-! ## A134059.P3586601539193239337

`(A014473(n)+1)*A122553(n)`
-/

namespace A134059.P3586601539193239337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A122553 n

end

end A134059.P3586601539193239337

namespace A134059

/-- `(A014473(n)+1)*A122553(n)` -/
def P3586601539193239337.Spec : Prop :=
  ∀ n, P3586601539193239337.a n = A134059 n

end A134059

/-! ## A134059.P16669855322746157416

`A131060(n)+2*A057427(n)`
-/

namespace A134059.P16669855322746157416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + 2 * A057427 n

end

end A134059.P16669855322746157416

namespace A134059

/-- `A131060(n)+2*A057427(n)` -/
def P16669855322746157416.Spec : Prop :=
  ∀ n, P16669855322746157416.a n = A134059 n

end A134059

/-! ## A134059.P6898975034436078300

`A124928(n)+2*A073424(n)`
-/

namespace A134059.P6898975034436078300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n + 2 * A073424 n

end

end A134059.P6898975034436078300

namespace A134059

/-- `A124928(n)+2*A073424(n)` -/
def P6898975034436078300.Spec : Prop :=
  ∀ n, P6898975034436078300.a n = A134059 n

end A134059

/-! ## A134059.P17515780357652864574

`2*A029618(n)-A093560(n)`
-/

namespace A134059.P17515780357652864574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029618 n - A093560 n

end

end A134059.P17515780357652864574

namespace A134059

/-- `2*A029618(n)-A093560(n)` -/
def P17515780357652864574.Spec : Prop :=
  ∀ n, P17515780357652864574.a n = A134059 n

end A134059

/-! ## A134059.P10743293655996756594

`2*A134058(n)-A007318(n)`
-/

namespace A134059.P10743293655996756594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134058 n - A007318 n

end

end A134059.P10743293655996756594

namespace A134059

/-- `2*A134058(n)-A007318(n)` -/
def P10743293655996756594.Spec : Prop :=
  ∀ n, P10743293655996756594.a n = A134059 n

end A134059

/-! ## A134059.P13235484484600620299

`(A135089(n)+A007318(n))/2`
-/

namespace A134059.P13235484484600620299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135089 n + A007318 n : ℚ) / 2

end

end A134059.P13235484484600620299

namespace A134059

/-- `(A135089(n)+A007318(n))/2` -/
def P13235484484600620299.Spec : Prop :=
  ∀ n, P13235484484600620299.a n = (A134059 n : ℚ)

end A134059

/-! ## A134059.P13905200673891693604

`(A134058(n)+A132200(n))/2`
-/

namespace A134059.P13905200673891693604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134058 n + A132200 n : ℚ) / 2

end

end A134059.P13905200673891693604

namespace A134059

/-- `(A134058(n)+A132200(n))/2` -/
def P13905200673891693604.Spec : Prop :=
  ∀ n, P13905200673891693604.a n = (A134059 n : ℚ)

end A134059

/-! ## A134059.P16070812229073747989

`2*A132200(n)-A135089(n)`
-/

namespace A134059.P16070812229073747989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132200 n - A135089 n

end

end A134059.P16070812229073747989

namespace A134059

/-- `2*A132200(n)-A135089(n)` -/
def P16070812229073747989.Spec : Prop :=
  ∀ n, P16070812229073747989.a n = A134059 n

end A134059

/-! ## A134059.P13386570503754009514

`(2-A153881(n+1))*A007318(n)`
-/

namespace A134059.P13386570503754009514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153881 (n + 1)) * A007318 n

end

end A134059.P13386570503754009514

namespace A134059

/-- `(2-A153881(n+1))*A007318(n)` -/
def P13386570503754009514.Spec : Prop :=
  ∀ n, P13386570503754009514.a n = A134059 n

end A134059

/-! ## A134059.P17065621165947015281

`(A171463(n+1)-n)*A007318(n)`
-/

namespace A134059.P17065621165947015281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171463 (n + 1) - (n : ℤ)) * A007318 n

end

end A134059.P17065621165947015281

namespace A134059

/-- `(A171463(n+1)-n)*A007318(n)` -/
def P17065621165947015281.Spec : Prop :=
  ∀ n, P17065621165947015281.a n = A134059 n

end A134059

/-! ## A134059.P16858902904928242613

`A007318(n)*A000032(2-C(2, n+2))`
-/

namespace A134059.P16858902904928242613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000032 (2 - Nat.choose 2 (n + 2))

end

end A134059.P16858902904928242613

namespace A134059

/-- `A007318(n)*A000032(2-C(2, n+2))` -/
def P16858902904928242613.Spec : Prop :=
  ∀ n, P16858902904928242613.a n = A134059 n

end A134059

/-! ## A134059.P10895060213620982491

`A007318(n)*A000203(2-C(2, n+2))`
-/

namespace A134059.P10895060213620982491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000203 (2 - Nat.choose 2 (n + 2))

end

end A134059.P10895060213620982491

namespace A134059

/-- `A007318(n)*A000203(2-C(2, n+2))` -/
def P10895060213620982491.Spec : Prop :=
  ∀ n, P10895060213620982491.a n = A134059 n

end A134059

/-! ## A134059.P10323860569430764775

`A007318(n)*A038573(A038573(n)+2)`
-/

namespace A134059.P10323860569430764775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A038573 (A038573 n + 2).toNat

end

end A134059.P10323860569430764775

namespace A134059

/-- `A007318(n)*A038573(A038573(n)+2)` -/
def P10323860569430764775.Spec : Prop :=
  ∀ n, P10323860569430764775.a n = A134059 n

end A134059

/-!
# A134060: Triangle T(n,k) = A124927(n,k) + A134058(n,k) - A007318(n,k), read by rows.

The programs for A134060, the canonical program `A134060.P5985046479831318220` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134060 has offset 0).

The definition of A134060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134060.P3333246769681216400

`A124928(n)+char[∑[n+1]]`
-/

namespace A134060.P3333246769681216400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134060.P3333246769681216400

namespace A134060

/-- `A124928(n)+char[∑[n+1]]` -/
def P3333246769681216400.Spec : Prop :=
  ∀ n, P3333246769681216400.a n = A134060 n

end A134060

/-! ## A134060.P5082241458682196835

`A134059(n)-char[∑[n+1]]`
-/

namespace A134060.P5082241458682196835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134060.P5082241458682196835

namespace A134060

/-- `A134059(n)-char[∑[n+1]]` -/
def P5082241458682196835.Spec : Prop :=
  ∀ n, P5082241458682196835.a n = A134060 n

end A134060

/-! ## A134060.P5985046479831318220

`lcm(A124928(n), A132749(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134060

/-- `lcm(A124928(n), A132749(n))` -/
def P5985046479831318220.Spec : Prop :=
  ∀ n, (P5985046479831318220.a n : ℤ) = A134060 n

theorem P5985046479831318220.correct : P5985046479831318220.Spec := by
  intro n
  simp only [A134060]

end A134060

/-! ## A134060.P9744502444674575279

`xor(A073424(n), A134059(n))`
-/

namespace A134060.P9744502444674575279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073424 n) (A134059 n)

end

end A134060.P9744502444674575279

namespace A134060

/-- `xor(A073424(n), A134059(n))` -/
def P9744502444674575279.Spec : Prop :=
  ∀ n, P9744502444674575279.a n = A134060 n

end A134060

/-! ## A134060.P17956703290715488701

`(A073424(n)+1)*A124928(n)`
-/

namespace A134060.P17956703290715488701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073424 n + 1) * A124928 n

end

end A134060.P17956703290715488701

namespace A134060

/-- `(A073424(n)+1)*A124928(n)` -/
def P17956703290715488701.Spec : Prop :=
  ∀ n, P17956703290715488701.a n = A134060 n

end A134060

/-! ## A134060.P10091282830254691648

`(A134061(n)+A007318(n))/2`
-/

namespace A134060.P10091282830254691648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134061 n + A007318 n : ℚ) / 2

end

end A134060.P10091282830254691648

namespace A134060

/-- `(A134061(n)+A007318(n))/2` -/
def P10091282830254691648.Spec : Prop :=
  ∀ n, P10091282830254691648.a n = (A134060 n : ℚ)

end A134060

/-! ## A134060.P3570702646405954413

`(A134059(n)+A124928(n))/2`
-/

namespace A134060.P3570702646405954413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 n + A124928 n : ℚ) / 2

end

end A134060.P3570702646405954413

namespace A134060

/-- `(A134059(n)+A124928(n))/2` -/
def P3570702646405954413.Spec : Prop :=
  ∀ n, P3570702646405954413.a n = (A134060 n : ℚ)

end A134060

/-! ## A134060.P17070912058698658905

`(A134065(n)+A124927(n))/2`
-/

namespace A134060.P17070912058698658905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134065 n + A124927 n : ℚ) / 2

end

end A134060.P17070912058698658905

namespace A134060

/-- `(A134065(n)+A124927(n))/2` -/
def P17070912058698658905.Spec : Prop :=
  ∀ n, P17070912058698658905.a n = (A134060 n : ℚ)

end A134060

/-! ## A134060.P10976434072910528659

`2*A134058(n)-A132749(n)`
-/

namespace A134060.P10976434072910528659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134058 n - A132749 n

end

end A134060.P10976434072910528659

namespace A134060

/-- `2*A134058(n)-A132749(n)` -/
def P10976434072910528659.Spec : Prop :=
  ∀ n, P10976434072910528659.a n = A134060 n

end A134060

/-! ## A134060.P16902172220054546925

`abs(A326822(n+1)-A134059(n))`
-/

namespace A134060.P16902172220054546925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326822 (n + 1) - A134059 n|

end

end A134060.P16902172220054546925

namespace A134060

/-- `abs(A326822(n+1)-A134059(n))` -/
def P16902172220054546925.Spec : Prop :=
  ∀ n, P16902172220054546925.a n = A134060 n

end A134060

/-! ## A134060.P3585942976469636723

`xor(A073423(n), A134059(A028310(n)))`
-/

namespace A134060.P3585942976469636723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073423 n) (A134059 (A028310 n).toNat)

end

end A134060.P3585942976469636723

namespace A134060

/-- `xor(A073423(n), A134059(A028310(n)))` -/
def P3585942976469636723.Spec : Prop :=
  ∀ n, P3585942976469636723.a n = A134060 n

end A134060

/-! ## A134060.P10936088869174276254

`A007318(n)+A124927(n)-A000007(n)`
-/

namespace A134060.P10936088869174276254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A124927 n - A000007 n)

end

end A134060.P10936088869174276254

namespace A134060

/-- `A007318(n)+A124927(n)-A000007(n)` -/
def P10936088869174276254.Spec : Prop :=
  ∀ n, P10936088869174276254.a n = A134060 n

end A134060

/-! ## A134060.P6404800454733540722

`A124927(n)+A134058(n)-A007318(n)`
-/

namespace A134060.P6404800454733540722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + (A134058 n - A007318 n)

end

end A134060.P6404800454733540722

namespace A134060

/-- `A124927(n)+A134058(n)-A007318(n)` -/
def P6404800454733540722.Spec : Prop :=
  ∀ n, P6404800454733540722.a n = A134060 n

end A134060

/-! ## A134060.P186530935872786511

`A124928(n)*A134058(n)/A124927(n)`
-/

namespace A134060.P186530935872786511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124928 n : ℚ) * ((A134058 n : ℚ) / (A124927 n : ℚ))

end

end A134060.P186530935872786511

namespace A134060

/-- `A124928(n)*A134058(n)/A124927(n)` -/
def P186530935872786511.Spec : Prop :=
  ∀ n, P186530935872786511.a n = (A134060 n : ℚ)

end A134060

/-! ## A134060.P3591353883541664811

`A124928(n)*A134058(A134058(n)-A124927(n))`
-/

namespace A134060.P3591353883541664811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n * A134058 (A134058 n - A124927 n).toNat

end

end A134060.P3591353883541664811

namespace A134060

/-- `A124928(n)*A134058(A134058(n)-A124927(n))` -/
def P3591353883541664811.Spec : Prop :=
  ∀ n, P3591353883541664811.a n = A134060 n

end A134060

/-! ## A134060.P17164108808980265586

`A002024(A028310(n))+A134059(n)-A002024(n+1)`
-/

namespace A134060.P17164108808980265586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A028310 n).toNat + (A134059 n - A002024 (n + 1))

end

end A134060.P17164108808980265586

namespace A134060

/-- `A002024(A028310(n))+A134059(n)-A002024(n+1)` -/
def P17164108808980265586.Spec : Prop :=
  ∀ n, P17164108808980265586.a n = A134060 n

end A134060

/-! ## A134060.P15166187596462195496

`A097805(n)+A134059(n)-A028310(A097805(n))`
-/

namespace A134060.P15166187596462195496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A134059 n - A028310 (A097805 n).toNat)

end

end A134060.P15166187596462195496

namespace A134060

/-- `A097805(n)+A134059(n)-A028310(A097805(n))` -/
def P15166187596462195496.Spec : Prop :=
  ∀ n, P15166187596462195496.a n = A134060 n

end A134060

/-! ## A134060.P12373751471998733037

`A318518(A134059(n)+A124928(n))`
-/

namespace A134060.P12373751471998733037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A134059 n + A124928 n).toNat

end

end A134060.P12373751471998733037

namespace A134060

/-- `A318518(A134059(n)+A124928(n))` -/
def P12373751471998733037.Spec : Prop :=
  ∀ n, P12373751471998733037.a n = A134060 n

end A134060

/-! ## A134060.P4227381255030107177

`A028310(A134059(n)-A010054(n))`
-/

namespace A134060.P4227381255030107177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A134059 n - A010054 n).toNat

end

end A134060.P4227381255030107177

namespace A134060

/-- `A028310(A134059(n)-A010054(n))` -/
def P4227381255030107177.Spec : Prop :=
  ∀ n, P4227381255030107177.a n = A134060 n

end A134060

/-! ## A134060.P16970301854575844682

`A157532(n+1)+A124928(n)-A157532(A124928(n))`
-/

namespace A134060.P16970301854575844682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + (A124928 n - A157532 (A124928 n).toNat)

end

end A134060.P16970301854575844682

namespace A134060

/-- `A157532(n+1)+A124928(n)-A157532(A124928(n))` -/
def P16970301854575844682.Spec : Prop :=
  ∀ n, P16970301854575844682.a n = A134060 n

end A134060

/-!
# A134061: Triangle read by rows: T(n,k) = A124928(n,k) + A134059(n,k) - A007318(n,k).

The programs for A134061, the canonical program `A134061.P7247591162381959497` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134061 has offset 0).

The definition of A134061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134061.P15330570683691352264

`ceil(A135089(n)/(char[∑[n]]+1))`
-/

namespace A134061.P15330570683691352264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌉

end

end A134061.P15330570683691352264

namespace A134061

/-- `ceil(A135089(n)/(char[∑[n]]+1))` -/
def P15330570683691352264.Spec : Prop :=
  ∀ n, P15330570683691352264.a n = A134061 n

end A134061

/-! ## A134061.P8133721119936309923

`A007318(n)*a(2-char[∑[n+1]])` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A134061.P8133721119936309923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A007318 n * a (2 - (if ∃ j, f1 j = n then 1 else 0))

end

end A134061.P8133721119936309923

namespace A134061

/-- `A007318(n)*a(2-char[∑[n+1]])` -/
def P8133721119936309923.Spec : Prop :=
  ∀ n, P8133721119936309923.a n = A134061 n

end A134061

/-! ## A134061.P7759527675114014527

`2*A134065(n)-A134059(n)`
-/

namespace A134061.P7759527675114014527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134065 n - A134059 n

end

end A134061.P7759527675114014527

namespace A134061

/-- `2*A134065(n)-A134059(n)` -/
def P7759527675114014527.Spec : Prop :=
  ∀ n, P7759527675114014527.a n = A134061 n

end A134061

/-! ## A134061.P1400118389657708469

`A124927(n)+A134065(n)-A007318(n)`
-/

namespace A134061.P1400118389657708469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + (A134065 n - A007318 n)

end

end A134061.P1400118389657708469

namespace A134061

/-- `A124927(n)+A134065(n)-A007318(n)` -/
def P1400118389657708469.Spec : Prop :=
  ∀ n, P1400118389657708469.a n = A134061 n

end A134061

/-! ## A134061.P7247591162381959497

`A124928(n)+A134059(n)-A007318(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134061

/-- `A124928(n)+A134059(n)-A007318(n)` -/
def P7247591162381959497.Spec : Prop :=
  ∀ n, P7247591162381959497.a n = A134061 n

theorem P7247591162381959497.correct : P7247591162381959497.Spec := by
  intro n
  simp only [A134061]

end A134061

/-! ## A134061.P199853190704529637

`floor(5*A134060(n)/3)`
-/

namespace A134061.P199853190704529637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((A134060 n : ℚ) / 3)⌋

end

end A134061.P199853190704529637

namespace A134061

/-- `floor(5*A134060(n)/3)` -/
def P199853190704529637.Spec : Prop :=
  ∀ n, P199853190704529637.a n = A134061 n

end A134061

/-! ## A134061.P7153145111260091008

`2*A134060(n)-A007318(n)`
-/

namespace A134061.P7153145111260091008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134060 n - A007318 n

end

end A134061.P7153145111260091008

namespace A134061

/-- `2*A134060(n)-A007318(n)` -/
def P7153145111260091008.Spec : Prop :=
  ∀ n, P7153145111260091008.a n = A134061 n

end A134061

/-! ## A134061.P12346571451108840323

`A047212(A134060(n))+1`
-/

namespace A134061.P12346571451108840323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (A134060 n).toNat + 1

end

end A134061.P12346571451108840323

namespace A134061

/-- `A047212(A134060(n))+1` -/
def P12346571451108840323.Spec : Prop :=
  ∀ n, P12346571451108840323.a n = A134061 n

end A134061

/-! ## A134061.P9501148092234621563

`A047220(A134060(n)+1)`
-/

namespace A134061.P9501148092234621563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (A134060 n + 1).toNat

end

end A134061.P9501148092234621563

namespace A134061

/-- `A047220(A134060(n)+1)` -/
def P9501148092234621563.Spec : Prop :=
  ∀ n, P9501148092234621563.a n = A134061 n

end A134061

/-! ## A134061.P6941135056728863541

`A001068(A134065(n))`
-/

namespace A134061.P6941135056728863541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A134065 n).toNat

end

end A134061.P6941135056728863541

namespace A134061

/-- `A001068(A134065(n))` -/
def P6941135056728863541.Spec : Prop :=
  ∀ n, P6941135056728863541.a n = A134061 n

end A134061

/-!
# A134062: Row sums of triangle A134061.

The programs for A134062, the canonical program `A134062.P14441664195841372043` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134062 has offset 0).

The definition of A134062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134062.P14441664195841372043

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=8, a(2)=18`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134062

/-- `3*a(n-1)-2*a(n-2)` -/
def P14441664195841372043.Spec : Prop :=
  ∀ n, P14441664195841372043.a n = A134062 n

theorem P14441664195841372043.correct : P14441664195841372043.Spec := by
  intro n
  simp only [A134062]

end A134062

/-! ## A134062.P4232146186494869403

`ogf((1+5x-4x^2)/(1-3x+2x^2))`
-/

namespace A134062.P4232146186494869403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -4] [1, -3, 2] n

end

end A134062.P4232146186494869403

namespace A134062

/-- `ogf((1+5x-4x^2)/(1-3x+2x^2))` -/
def P4232146186494869403.Spec : Prop :=
  ∀ n, P4232146186494869403.a n = A134062 n

end A134062

/-! ## A134062.P2433837873628478585

`2*(a(n-1)+1)` with `a(0)=1, a(1)=8`
-/

namespace A134062.P2433837873628478585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * (a (n - 1) + 1)

end

end A134062.P2433837873628478585

namespace A134062

/-- `2*(a(n-1)+1)` -/
def P2433837873628478585.Spec : Prop :=
  ∀ n, (P2433837873628478585.a n : ℤ) = A134062 n

end A134062

/-! ## A134062.P6546429117594418522

`lcm(2, a(n-1)+1)` with `a(0)=1, a(1)=8`
-/

namespace A134062.P6546429117594418522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A134062.P6546429117594418522

namespace A134062

/-- `lcm(2, a(n-1)+1)` -/
def P6546429117594418522.Spec : Prop :=
  ∀ n, (P6546429117594418522.a n : ℤ) = A134062 n

end A134062

/-! ## A134062.P9533641496949797888

`2*or(1, a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A134062.P9533641496949797888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A134062.P9533641496949797888

namespace A134062

/-- `2*or(1, a(n-1))` -/
def P9533641496949797888.Spec : Prop :=
  ∀ n, (P9533641496949797888.a n : ℤ) = A134062 n

end A134062

/-! ## A134062.P191630628723413700

`2*xor(1, a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A134062.P191630628723413700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A134062.P191630628723413700

namespace A134062

/-- `2*xor(1, a(n-1))` -/
def P191630628723413700.Spec : Prop :=
  ∀ n, (P191630628723413700.a n : ℤ) = A134062 n

end A134062

/-! ## A134062.P16412205047618880998

`∑[2*a(n-1)]` with `a(0)=1, a(1)=7, a(2)=10`
-/

namespace A134062.P16412205047618880998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 10] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134062.P16412205047618880998

namespace A134062

/-- `∑[2*a(n-1)]` -/
def P16412205047618880998.Spec : Prop :=
  ∀ n, (P16412205047618880998.a n : ℤ) = A134062 n

end A134062

/-! ## A134062.P4701108801920932013

`4-2*(1-a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A134062.P4701108801920932013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A134062.P4701108801920932013

namespace A134062

/-- `4-2*(1-a(n-1))` -/
def P4701108801920932013.Spec : Prop :=
  ∀ n, P4701108801920932013.a n = A134062 n

end A134062

/-! ## A134062.P8267918207408468059

`a(n-1)+a(n-1)+2` with `a(0)=1, a(1)=8`
-/

namespace A134062.P8267918207408468059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A134062.P8267918207408468059

namespace A134062

/-- `a(n-1)+a(n-1)+2` -/
def P8267918207408468059.Spec : Prop :=
  ∀ n, (P8267918207408468059.a n : ℤ) = A134062 n

end A134062

/-! ## A134062.P17465069066853908628

`xor(1, 5*A000225(n)+1)+1`
-/

namespace A134062.P17465069066853908628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (5 * A000225 n + 1) + 1

end

end A134062.P17465069066853908628

namespace A134062

/-- `xor(1, 5*A000225(n)+1)+1` -/
def P17465069066853908628.Spec : Prop :=
  ∀ n, P17465069066853908628.a n = A134062 n

end A134062

/-! ## A134062.P5307162673851042119

`abs(or(2^n-2, A094958(2*n+3)))`
-/

namespace A134062.P5307162673851042119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((2 ^ n : ℤ) - 2) (A094958 (2 * n + 3))|

end

end A134062.P5307162673851042119

namespace A134062

/-- `abs(or(2^n-2, A094958(2*n+3)))` -/
def P5307162673851042119.Spec : Prop :=
  ∀ n, P5307162673851042119.a n = A134062 n

end A134062

/-! ## A134062.P10370926090510634892

`A131051(A065475(n+1))`
-/

namespace A134062.P10370926090510634892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (A065475 (n + 1)).toNat

end

end A134062.P10370926090510634892

namespace A134062

/-- `A131051(A065475(n+1))` -/
def P10370926090510634892.Spec : Prop :=
  ∀ n, P10370926090510634892.a n = A134062 n

end A134062

/-! ## A134062.P15839241716124424998

`A131051(A181440(n+2))`
-/

namespace A134062.P15839241716124424998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (A181440 (n + 2)).toNat

end

end A134062.P15839241716124424998

namespace A134062

/-- `A131051(A181440(n+2))` -/
def P15839241716124424998.Spec : Prop :=
  ∀ n, P15839241716124424998.a n = A134062 n

end A134062

/-! ## A134062.P14634218531359771896

`A131051(A184985(n+2))`
-/

namespace A134062.P14634218531359771896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (A184985 (n + 2)).toNat

end

end A134062.P14634218531359771896

namespace A134062

/-- `A131051(A184985(n+2))` -/
def P14634218531359771896.Spec : Prop :=
  ∀ n, P14634218531359771896.a n = A134062 n

end A134062

/-! ## A134062.P2074285671112400233

`A155559(n)+A134067(n)`
-/

namespace A134062.P2074285671112400233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A134067 n

end

end A134062.P2074285671112400233

namespace A134062

/-- `A155559(n)+A134067(n)` -/
def P2074285671112400233.Spec : Prop :=
  ∀ n, P2074285671112400233.a n = A134062 n

end A134062

/-! ## A134062.P14713228442706610663

`A296953(n)+A135092(n)`
-/

namespace A134062.P14713228442706610663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + A135092 n

end

end A134062.P14713228442706610663

namespace A134062

/-- `A296953(n)+A135092(n)` -/
def P14713228442706610663.Spec : Prop :=
  ∀ n, P14713228442706610663.a n = A134062 n

end A134062

/-! ## A134062.P495078146148199769

`A051633(n)-A000038(n)`
-/

namespace A134062.P495078146148199769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051633 n - A000038 n

end

end A134062.P495078146148199769

namespace A134062

/-- `A051633(n)-A000038(n)` -/
def P495078146148199769.Spec : Prop :=
  ∀ n, P495078146148199769.a n = A134062 n

theorem P495078146148199769.correct : P495078146148199769.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A134062, Nat.add_sub_cancel, A134062.P495078146148199769.a, A134062.P14441664195841372043.a, A000038, A000038.P13734959004655594922.a, A051633, A051633.P11921586248056556725.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      simp only [A134062, Nat.add_sub_cancel, A134062.P495078146148199769.a, A134062.P14441664195841372043.a, A000038, A000038.P13734959004655594922.a, A051633, A051633.P11921586248056556725.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A134062

/-! ## A134062.P6235153541258205295

`A171494(n)-A164094(n)`
-/

namespace A134062.P6235153541258205295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171494 n - A164094 n

end

end A134062.P6235153541258205295

namespace A134062

/-- `A171494(n)-A164094(n)` -/
def P6235153541258205295.Spec : Prop :=
  ∀ n, P6235153541258205295.a n = A134062 n

end A134062

/-! ## A134062.P9875710145622226188

`and(A051633(n), A176448(n))`
-/

namespace A134062.P9875710145622226188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051633 n) (A176448 n)

end

end A134062.P9875710145622226188

namespace A134062

/-- `and(A051633(n), A176448(n))` -/
def P9875710145622226188.Spec : Prop :=
  ∀ n, P9875710145622226188.a n = A134062 n

end A134062

/-!
# A134063: a(n) = (1/2)*(3^n - 2^(n+1) + 3).

The programs for A134063, the canonical program `A134063.P4682340820159510411` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134063 has offset 0).

The definition of A134063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*(3^n-2^(n+1)+3)` (program `A134063.P9403702692300058406`, by `A134063.P9403702692300058406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134063.P14937452385624806663

`(3^n-2^(n+1)+3)/2`
-/

namespace A134063.P14937452385624806663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 3 : ℚ) / 2

end

end A134063.P14937452385624806663

namespace A134063

/-- `(3^n-2^(n+1)+3)/2` -/
def P14937452385624806663.Spec : Prop :=
  ∀ n, P14937452385624806663.a n = (A134063 n : ℚ)

theorem P14937452385624806663.correct : P14937452385624806663.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A134063, Nat.add_sub_cancel, A134063.P14937452385624806663.a, A134063.P4682340820159510411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A134063, Nat.add_sub_cancel, A134063.P14937452385624806663.a, A134063.P4682340820159510411.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A134063

/-! ## A134063.P9403702692300058406

`1/2*(3^n-2^(n+1)+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134063.P9403702692300058406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 3 : ℚ)

end

end A134063.P9403702692300058406

namespace A134063

/-- `1/2*(3^n-2^(n+1)+3)` -/
def P9403702692300058406.Spec : Prop :=
  ∀ n, P9403702692300058406.a n = (A134063 n : ℚ)

theorem P9403702692300058406.correct : P9403702692300058406.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A134063, Nat.add_sub_cancel, A134063.P9403702692300058406.a, A134063.P4682340820159510411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A134063, Nat.add_sub_cancel, A134063.P9403702692300058406.a, A134063.P4682340820159510411.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A134063

/-! ## A134063.P4682340820159510411

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134063

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P4682340820159510411.Spec : Prop :=
  ∀ n, P4682340820159510411.a n = A134063 n

theorem P4682340820159510411.correct : P4682340820159510411.Spec := by
  intro n
  simp only [A134063]

end A134063

/-! ## A134063.P12684958942095302689

`∑[ogf((1-5x+7x^2)/(1-5x+6x^2))]`
-/

namespace A134063.P12684958942095302689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134063.P12684958942095302689

namespace A134063

/-- `∑[ogf((1-5x+7x^2)/(1-5x+6x^2))]` -/
def P12684958942095302689.Spec : Prop :=
  ∀ n, P12684958942095302689.a n = A134063 n

end A134063

/-! ## A134063.P6744052504488708456

`∑[3*a(n-1)]-2^n` with `a(0)=2, a(1)=1`
-/

namespace A134063.P6744052504488708456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A134063.P6744052504488708456

namespace A134063

/-- `∑[3*a(n-1)]-2^n` -/
def P6744052504488708456.Spec : Prop :=
  ∀ n, P6744052504488708456.a n = A134063 n

end A134063

/-! ## A134063.P1543701909939333342

`A000392(n+1)+1`
-/

namespace A134063.P1543701909939333342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + 1

end

end A134063.P1543701909939333342

namespace A134063

/-- `A000392(n+1)+1` -/
def P1543701909939333342.Spec : Prop :=
  ∀ n, P1543701909939333342.a n = A134063 n

end A134063

/-! ## A134063.P5237245356469622019

`A115098(n)-2^n`
-/

namespace A134063.P5237245356469622019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - (2 ^ n : ℤ)

end

end A134063.P5237245356469622019

namespace A134063

/-- `A115098(n)-2^n` -/
def P5237245356469622019.Spec : Prop :=
  ∀ n, P5237245356469622019.a n = A134063 n

end A134063

/-! ## A134063.P14802330553538454027

`∑[A001047(abs(1-n))]`
-/

namespace A134063.P14802330553538454027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134063.P14802330553538454027

namespace A134063

/-- `∑[A001047(abs(1-n))]` -/
def P14802330553538454027.Spec : Prop :=
  ∀ n, P14802330553538454027.a n = A134063 n

end A134063

/-! ## A134063.P4096743498736432631

`A056509(Δ[n²])+1`
-/

namespace A134063.P4096743498736432631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A134063.P4096743498736432631

namespace A134063

/-- `A056509(Δ[n²])+1` -/
def P4096743498736432631.Spec : Prop :=
  ∀ n, P4096743498736432631.a n = A134063 n

end A134063

/-! ## A134063.P3037475396071901827

`abs(2^n-1-A007051(n))`
-/

namespace A134063.P3037475396071901827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A007051 n|

end

end A134063.P3037475396071901827

namespace A134063

/-- `abs(2^n-1-A007051(n))` -/
def P3037475396071901827.Spec : Prop :=
  ∀ n, P3037475396071901827.a n = A134063 n

end A134063

/-! ## A134063.P8072517531042979290

`∑[A133494(n)-floor(2^(n-1))]`
-/

namespace A134063.P8072517531042979290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134063.P8072517531042979290

namespace A134063

/-- `∑[A133494(n)-floor(2^(n-1))]` -/
def P8072517531042979290.Spec : Prop :=
  ∀ n, P8072517531042979290.a n = A134063 n

end A134063

/-! ## A134063.P13521299904870493283

`A094033(n)+A011782(n)`
-/

namespace A134063.P13521299904870493283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + A011782 n

end

end A134063.P13521299904870493283

namespace A134063

/-- `A094033(n)+A011782(n)` -/
def P13521299904870493283.Spec : Prop :=
  ∀ n, P13521299904870493283.a n = A134063 n

end A134063

/-! ## A134063.P4130734107375481881

`A285197(n)+A047790(n)`
-/

namespace A134063.P4130734107375481881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285197 n + A047790 n

end

end A134063.P4130734107375481881

namespace A134063

/-- `A285197(n)+A047790(n)` -/
def P4130734107375481881.Spec : Prop :=
  ∀ n, P4130734107375481881.a n = A134063 n

end A134063

/-! ## A134063.P7770126188871521721

`A003462(n)-A000918(n)`
-/

namespace A134063.P7770126188871521721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A000918 n

end

end A134063.P7770126188871521721

namespace A134063

/-- `A003462(n)-A000918(n)` -/
def P7770126188871521721.Spec : Prop :=
  ∀ n, P7770126188871521721.a n = A134063 n

end A134063

/-! ## A134063.P3240931673952449327

`A007051(n)-A000225(n)`
-/

namespace A134063.P3240931673952449327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A000225 n

end

end A134063.P3240931673952449327

namespace A134063

/-- `A007051(n)-A000225(n)` -/
def P3240931673952449327.Spec : Prop :=
  ∀ n, P3240931673952449327.a n = A134063 n

end A134063

/-! ## A134063.P3265702290837738613

`A046717(n)-A141023(n)`
-/

namespace A134063.P3265702290837738613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n - A141023 n

end

end A134063.P3265702290837738613

namespace A134063

/-- `A046717(n)-A141023(n)` -/
def P3265702290837738613.Spec : Prop :=
  ∀ n, P3265702290837738613.a n = A134063 n

end A134063

/-! ## A134063.P4673557619708354514

`A099754(n)-A126646(n)`
-/

namespace A134063.P4673557619708354514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A126646 n

end

end A134063.P4673557619708354514

namespace A134063

/-- `A099754(n)-A126646(n)` -/
def P4673557619708354514.Spec : Prop :=
  ∀ n, P4673557619708354514.a n = A134063 n

end A134063

/-! ## A134063.P10771214562800048962

`A103425(n)-A166920(n)`
-/

namespace A134063.P10771214562800048962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103425 n - A166920 n

end

end A134063.P10771214562800048962

namespace A134063

/-- `A103425(n)-A166920(n)` -/
def P10771214562800048962.Spec : Prop :=
  ∀ n, P10771214562800048962.a n = A134063 n

end A134063

/-! ## A134063.P1069208480852031088

`A233656(n)-A052944(n)`
-/

namespace A134063.P1069208480852031088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233656 n - A052944 n

end

end A134063.P1069208480852031088

namespace A134063

/-- `A233656(n)-A052944(n)` -/
def P1069208480852031088.Spec : Prop :=
  ∀ n, P1069208480852031088.a n = A134063 n

end A134063

/-! ## A134063.P16760557557735744065

`A293561(n)+A152947(n+1)`
-/

namespace A134063.P16760557557735744065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293561 n + A152947 (n + 1)

end

end A134063.P16760557557735744065

namespace A134063

/-- `A293561(n)+A152947(n+1)` -/
def P16760557557735744065.Spec : Prop :=
  ∀ n, P16760557557735744065.a n = A134063 n

end A134063

/-!
# A134064: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are intersecting but for which x is not a subset of y and y is not a subset of x, or 1) x and y are intersecting and for which either x is a proper subset of y or y is a proper subset of x, or 2) x = y.

The programs for A134064, the canonical program `A134064.P4128103731097677735` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134064 has offset 0).

The definition of A134064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134064.P4128103731097677735

`1/2*(4^n-3^n+2^n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134064

/-- `1/2*(4^n-3^n+2^n+1)` -/
def P4128103731097677735.Spec : Prop :=
  ∀ n, P4128103731097677735.a n = (A134064 n : ℚ)

end A134064

/-! ## A134064.P4107902192187225763

`floor((2^n+4^n-3^n)/2)+floor(atan(n))!`
-/

namespace A134064.P4107902192187225763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℤ) + ((4 ^ n : ℤ) - (3 ^ n : ℤ)) : ℚ) / 2⌋ + (Nat.factorial ⌊Real.arctan (n : ℝ)⌋.toNat : ℤ)

end

end A134064.P4107902192187225763

namespace A134064

/-- `floor((2^n+4^n-3^n)/2)+floor(atan(n))!` -/
def P4107902192187225763.Spec : Prop :=
  ∀ n, P4107902192187225763.a n = A134064 n

end A134064

/-! ## A134064.P4155919546594459112

`A053154(n)+1`
-/

namespace A134064.P4155919546594459112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n + 1

end

end A134064.P4155919546594459112

namespace A134064

/-- `A053154(n)+1` -/
def P4155919546594459112.Spec : Prop :=
  ∀ n, P4155919546594459112.a n = A134064 n

end A134064

/-! ## A134064.P3575135302247248313

`round(A083324(n)/2)`
-/

namespace A134064.P3575135302247248313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083324 n : ℚ) / 2)

end

end A134064.P3575135302247248313

namespace A134064

/-- `round(A083324(n)/2)` -/
def P3575135302247248313.Spec : Prop :=
  ∀ n, P3575135302247248313.a n = A134064 n

end A134064

/-! ## A134064.P5161532860311793730

`A196836(n)-3^n`
-/

namespace A134064.P5161532860311793730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196836 n - (3 ^ n : ℤ)

end

end A134064.P5161532860311793730

namespace A134064

/-- `A196836(n)-3^n` -/
def P5161532860311793730.Spec : Prop :=
  ∀ n, P5161532860311793730.a n = A134064 n

end A134064

/-! ## A134064.P8562492833761201687

`A083330(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A134064.P8562492833761201687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083330 (n - 1) + a (n - 1)

end

end A134064.P8562492833761201687

namespace A134064

/-- `A083330(n-1)+a(n-1)` -/
def P8562492833761201687.Spec : Prop :=
  ∀ n, P8562492833761201687.a n = A134064 n

end A134064

/-! ## A134064.P16970698406514403816

`A092880(n)-((2^n+4^n)/2-(∑[3^n]+1-2^n))`
-/

namespace A134064.P16970698406514403816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092880 n : ℚ) - ((2 ^ n + 4 ^ n : ℚ) / 2 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ)) : ℚ))

end

end A134064.P16970698406514403816

namespace A134064

/-- `A092880(n)-((2^n+4^n)/2-(∑[3^n]+1-2^n))` -/
def P16970698406514403816.Spec : Prop :=
  ∀ n, P16970698406514403816.a n = (A134064 n : ℚ)

end A134064

/-! ## A134064.P4228143396505900384

`A007582(n)-A003462(n)`
-/

namespace A134064.P4228143396505900384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A003462 n

end

end A134064.P4228143396505900384

namespace A134064

/-- `A007582(n)-A003462(n)` -/
def P4228143396505900384.Spec : Prop :=
  ∀ n, P4228143396505900384.a n = A134064 n

end A134064

/-! ## A134064.P9104734766319846146

`A083314(n)-A006516(n)`
-/

namespace A134064.P9104734766319846146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083314 n - A006516 n

end

end A134064.P9104734766319846146

namespace A134064

/-- `A083314(n)-A006516(n)` -/
def P9104734766319846146.Spec : Prop :=
  ∀ n, P9104734766319846146.a n = A134064 n

end A134064

/-! ## A134064.P14584595026884457639

`A134168(n)-A000225(n)`
-/

namespace A134064.P14584595026884457639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - A000225 n

end

end A134064.P14584595026884457639

namespace A134064

/-- `A134168(n)-A000225(n)` -/
def P14584595026884457639.Spec : Prop :=
  ∀ n, P14584595026884457639.a n = A134064 n

end A134064

/-! ## A134064.P6984393322652553190

`A083324(n)-A053154(n)`
-/

namespace A134064.P6984393322652553190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 n - A053154 n

end

end A134064.P6984393322652553190

namespace A134064

/-- `A083324(n)-A053154(n)` -/
def P6984393322652553190.Spec : Prop :=
  ∀ n, P6984393322652553190.a n = A134064 n

end A134064

/-! ## A134064.P10972774370417711347

`A001576(n)-A196836(n)`
-/

namespace A134064.P10972774370417711347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n - A196836 n

end

end A134064.P10972774370417711347

namespace A134064

/-- `A001576(n)-A196836(n)` -/
def P10972774370417711347.Spec : Prop :=
  ∀ n, P10972774370417711347.a n = A134064 n

end A134064

/-! ## A134064.P7033270735936832865

`A281481(n)-A007051(n)`
-/

namespace A134064.P7033270735936832865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n - A007051 n

end

end A134064.P7033270735936832865

namespace A134064

/-- `A281481(n)-A007051(n)` -/
def P7033270735936832865.Spec : Prop :=
  ∀ n, P7033270735936832865.a n = A134064 n

end A134064

/-! ## A134064.P18248482908100409422

`A257273(n)-A094374(n)`
-/

namespace A134064.P18248482908100409422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A094374 n

end

end A134064.P18248482908100409422

namespace A134064

/-- `A257273(n)-A094374(n)` -/
def P18248482908100409422.Spec : Prop :=
  ∀ n, P18248482908100409422.a n = A134064 n

end A134064

/-! ## A134064.P431622768315525065

`Δ[A007581(n)]-A003462(n)`
-/

namespace A134064.P431622768315525065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003462 n

end

end A134064.P431622768315525065

namespace A134064

/-- `Δ[A007581(n)]-A003462(n)` -/
def P431622768315525065.Spec : Prop :=
  ∀ n, P431622768315525065.a n = A134064 n

end A134064

/-! ## A134064.P11003903078668686442

`A084869(n)+A000392(n+1)`
-/

namespace A134064.P11003903078668686442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + A000392 (n + 1)

end

end A134064.P11003903078668686442

namespace A134064

/-- `A084869(n)+A000392(n+1)` -/
def P11003903078668686442.Spec : Prop :=
  ∀ n, P11003903078668686442.a n = A134064 n

end A134064

/-! ## A134064.P6265229180986544246

`A083323(n)+A032263(n+1)`
-/

namespace A134064.P6265229180986544246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n + A032263 (n + 1)

end

end A134064.P6265229180986544246

namespace A134064

/-- `A083323(n)+A032263(n+1)` -/
def P6265229180986544246.Spec : Prop :=
  ∀ n, P6265229180986544246.a n = A134064 n

end A134064

/-! ## A134064.P5101362201051632990

`A007582(n)+1-A007051(n)`
-/

namespace A134064.P5101362201051632990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + (1 - A007051 n)

end

end A134064.P5101362201051632990

namespace A134064

/-- `A007582(n)+1-A007051(n)` -/
def P5101362201051632990.Spec : Prop :=
  ∀ n, P5101362201051632990.a n = A134064 n

end A134064

/-! ## A134064.P2284902808300931297

`A081674(n)+1-A006095(n)`
-/

namespace A134064.P2284902808300931297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081674 n + (1 - A006095 n)

end

end A134064.P2284902808300931297

namespace A134064

/-- `A081674(n)+1-A006095(n)` -/
def P2284902808300931297.Spec : Prop :=
  ∀ n, P2284902808300931297.a n = A134064 n

end A134064

/-! ## A134064.P8002127186467053577

`A134168(n)+1-A000079(n)`
-/

namespace A134064.P8002127186467053577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n + (1 - A000079 n)

end

end A134064.P8002127186467053577

namespace A134064

/-- `A134168(n)+1-A000079(n)` -/
def P8002127186467053577.Spec : Prop :=
  ∀ n, P8002127186467053577.a n = A134064 n

end A134064

/-!
# A134065: Triangle read by rows: A134059 + A124927 - A007318 as infinite lower triangular matrices.

The programs for A134065, the canonical program `A134065.P13071345824488755756` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134065 has offset 0).

The definition of A134065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134065.P13071345824488755756

`A132200(n)-A073424(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134065

/-- `A132200(n)-A073424(n)` -/
def P13071345824488755756.Spec : Prop :=
  ∀ n, P13071345824488755756.a n = A134065 n

theorem P13071345824488755756.correct : P13071345824488755756.Spec := by
  intro n
  simp only [A134065]

end A134065

/-! ## A134065.P15816831671144364095

`(A134061(n)+A134059(n))/2`
-/

namespace A134065.P15816831671144364095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134061 n + A134059 n : ℚ) / 2

end

end A134065.P15816831671144364095

namespace A134065

/-- `(A134061(n)+A134059(n))/2` -/
def P15816831671144364095.Spec : Prop :=
  ∀ n, P15816831671144364095.a n = (A134065 n : ℚ)

end A134065

/-! ## A134065.P3059074446607809826

`A124927(n)+A134059(n)-A007318(n)`
-/

namespace A134065.P3059074446607809826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + (A134059 n - A007318 n)

end

end A134065.P3059074446607809826

namespace A134065

/-- `A124927(n)+A134059(n)-A007318(n)` -/
def P3059074446607809826.Spec : Prop :=
  ∀ n, P3059074446607809826.a n = A134065 n

end A134065

/-! ## A134065.P10079776065198261921

`A124927(n)+A134061(n)-A124928(n)`
-/

namespace A134065.P10079776065198261921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + (A134061 n - A124928 n)

end

end A134065.P10079776065198261921

namespace A134065

/-- `A124927(n)+A134061(n)-A124928(n)` -/
def P10079776065198261921.Spec : Prop :=
  ∀ n, P10079776065198261921.a n = A134065 n

end A134065

/-! ## A134065.P6759959188947976508

`2*A134060(n)-A124927(n)`
-/

namespace A134065.P6759959188947976508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134060 n - A124927 n

end

end A134065.P6759959188947976508

namespace A134065

/-- `2*A134060(n)-A124927(n)` -/
def P6759959188947976508.Spec : Prop :=
  ∀ n, P6759959188947976508.a n = A134065 n

end A134065

/-! ## A134065.P10043946859017004493

`A134058(n)+A134060(n)-A007318(n)`
-/

namespace A134065.P10043946859017004493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n + (A134060 n - A007318 n)

end

end A134065.P10043946859017004493

namespace A134065

/-- `A134058(n)+A134060(n)-A007318(n)` -/
def P10043946859017004493.Spec : Prop :=
  ∀ n, P10043946859017004493.a n = A134065 n

end A134065

/-! ## A134065.P9638229794589761316

`A134059(n)+A134060(n)-A134058(n)`
-/

namespace A134065.P9638229794589761316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n + (A134060 n - A134058 n)

end

end A134065.P9638229794589761316

namespace A134065

/-- `A134059(n)+A134060(n)-A134058(n)` -/
def P9638229794589761316.Spec : Prop :=
  ∀ n, P9638229794589761316.a n = A134065 n

end A134065

/-! ## A134065.P719925968142491307

`A098003(A134060(n))`
-/

namespace A134065.P719925968142491307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098003 (A134060 n).toNat

end

end A134065.P719925968142491307

namespace A134065

/-- `A098003(A134060(n))` -/
def P719925968142491307.Spec : Prop :=
  ∀ n, P719925968142491307.a n = A134065 n

end A134065

/-!
# A134066: Triangle read by rows: T(n,k) = A134060(n,k) + A124927(n,k) - A007318(n,k).

The programs for A134066, there is no canonical definition to state claims against.
-/

/-! ## A134066.P5445226461145981036

`A020639(A036035(n))*A124927(n)`
-/

namespace A134066.P5445226461145981036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036035 n).toNat * A124927 n

end

end A134066.P5445226461145981036

/-! ## A134066.P14320000126790791556

`A020639(A063008(n))*A124927(n)`
-/

namespace A134066.P14320000126790791556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063008 n).toNat * A124927 n

end

end A134066.P14320000126790791556

/-! ## A134066.P2232135568246893400

`A020639(A087443(n))*A124927(n)`
-/

namespace A134066.P2232135568246893400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A087443 n).toNat * A124927 n

end

end A134066.P2232135568246893400

/-! ## A134066.P16594594321490584940

`A124927(n)*A319702(A005897(3*n))`
-/

namespace A134066.P16594594321490584940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n * A319702 (A005897 (3 * n)).toNat

end

end A134066.P16594594321490584940

/-! ## A134066.P9640487611413328165

`A020639(A343599(n))*A134058(n)`
-/

namespace A134066.P9640487611413328165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A343599 n).toNat * A134058 n

end

end A134066.P9640487611413328165

/-!
# A134067: Row sums of triangle A134066.

The programs for A134067, the canonical program `A134067.P7250719761547310803` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134067 has offset 0).

The definition of A134067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134067.P7250719761547310803

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=6, a(2)=14`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134067

/-- `3*a(n-1)-2*a(n-2)` -/
def P7250719761547310803.Spec : Prop :=
  ∀ n, P7250719761547310803.a n = A134067 n

theorem P7250719761547310803.correct : P7250719761547310803.Spec := by
  intro n
  simp only [A134067]

end A134067

/-! ## A134067.P10637629701705691546

`ogf((1+3x-2x^2)/(1-3x+2x^2))`
-/

namespace A134067.P10637629701705691546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2] [1, -3, 2] n

end

end A134067.P10637629701705691546

namespace A134067

/-- `ogf((1+3x-2x^2)/(1-3x+2x^2))` -/
def P10637629701705691546.Spec : Prop :=
  ∀ n, P10637629701705691546.a n = A134067 n

end A134067

/-! ## A134067.P14319059269162484932

`lcm(4, a(n-1))+2` with `a(0)=1`
-/

namespace A134067.P14319059269162484932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 2

end

end A134067.P14319059269162484932

namespace A134067

/-- `lcm(4, a(n-1))+2` -/
def P14319059269162484932.Spec : Prop :=
  ∀ n, (P14319059269162484932.a n : ℤ) = A134067 n

end A134067

/-! ## A134067.P16081962170446732305

`2*or(3, a(n-1))` with `a(0)=1`
-/

namespace A134067.P16081962170446732305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.lor 3 (a (n - 1))

end

end A134067.P16081962170446732305

namespace A134067

/-- `2*or(3, a(n-1))` -/
def P16081962170446732305.Spec : Prop :=
  ∀ n, (P16081962170446732305.a n : ℤ) = A134067 n

end A134067

/-! ## A134067.P2116676868875384591

`lcm(2, or(3, a(n-1)))` with `a(0)=1`
-/

namespace A134067.P2116676868875384591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (Nat.lor 3 (a (n - 1)))

end

end A134067.P2116676868875384591

namespace A134067

/-- `lcm(2, or(3, a(n-1)))` -/
def P2116676868875384591.Spec : Prop :=
  ∀ n, (P2116676868875384591.a n : ℤ) = A134067 n

end A134067

/-! ## A134067.P6361656429438475627

`2*(a(n-1)+1)` with `a(0)=1, a(1)=6`
-/

namespace A134067.P6361656429438475627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * (a (n - 1) + 1)

end

end A134067.P6361656429438475627

namespace A134067

/-- `2*(a(n-1)+1)` -/
def P6361656429438475627.Spec : Prop :=
  ∀ n, (P6361656429438475627.a n : ℤ) = A134067 n

end A134067

/-! ## A134067.P17361100643348545531

`2*xor(1, a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A134067.P17361100643348545531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A134067.P17361100643348545531

namespace A134067

/-- `2*xor(1, a(n-1))` -/
def P17361100643348545531.Spec : Prop :=
  ∀ n, (P17361100643348545531.a n : ℤ) = A134067 n

end A134067

/-! ## A134067.P2242475335270015016

`∑[2*a(n-1)]` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A134067.P2242475335270015016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134067.P2242475335270015016

namespace A134067

/-- `∑[2*a(n-1)]` -/
def P2242475335270015016.Spec : Prop :=
  ∀ n, (P2242475335270015016.a n : ℤ) = A134067 n

end A134067

/-! ## A134067.P2811723356412904167

`ceil(atan(n+1))*∑[2^n]`
-/

namespace A134067.P2811723356412904167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134067.P2811723356412904167

namespace A134067

/-- `ceil(atan(n+1))*∑[2^n]` -/
def P2811723356412904167.Spec : Prop :=
  ∀ n, P2811723356412904167.a n = A134067 n

end A134067

/-! ## A134067.P1675383891547672120

`∑[2^(n+1)]-floor(acot(n))`
-/

namespace A134067.P1675383891547672120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A134067.P1675383891547672120

namespace A134067

/-- `∑[2^(n+1)]-floor(acot(n))` -/
def P1675383891547672120.Spec : Prop :=
  ∀ n, P1675383891547672120.a n = A134067 n

end A134067

/-! ## A134067.P7860249679960177135

`ceil(∑[2^(n+1)]-acot(n))`
-/

namespace A134067.P7860249679960177135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A134067.P7860249679960177135

namespace A134067

/-- `ceil(∑[2^(n+1)]-acot(n))` -/
def P7860249679960177135.Spec : Prop :=
  ∀ n, P7860249679960177135.a n = A134067 n

end A134067

/-! ## A134067.P9547541884930292837

`∑[2^(n+1)]/ceil(acot(n))`
-/

namespace A134067.P9547541884930292837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A134067.P9547541884930292837

namespace A134067

/-- `∑[2^(n+1)]/ceil(acot(n))` -/
def P9547541884930292837.Spec : Prop :=
  ∀ n, P9547541884930292837.a n = (A134067 n : ℚ)

end A134067

/-! ## A134067.P15265504761863009112

`record[2*a(n-2)]-2` with `a(0)=3, a(1)=8`
-/

namespace A134067.P15265504761863009112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2

end

end A134067.P15265504761863009112

namespace A134067

/-- `record[2*a(n-2)]-2` -/
def P15265504761863009112.Spec : Prop :=
  ∀ n, P15265504761863009112.a n = A134067 n

end A134067

/-! ## A134067.P9061160886870909067

`4-2*(1-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A134067.P9061160886870909067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A134067.P9061160886870909067

namespace A134067

/-- `4-2*(1-a(n-1))` -/
def P9061160886870909067.Spec : Prop :=
  ∀ n, P9061160886870909067.a n = A134067 n

end A134067

/-! ## A134067.P6503422475705215191

`a(n-1)+2^(n+1)` with `a(0)=1, a(1)=6`
-/

namespace A134067.P6503422475705215191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + 2 ^ (n + 1)

end

end A134067.P6503422475705215191

namespace A134067

/-- `a(n-1)+2^(n+1)` -/
def P6503422475705215191.Spec : Prop :=
  ∀ n, (P6503422475705215191.a n : ℤ) = A134067 n

end A134067

/-! ## A134067.P7476575753481544425

`∑[2^(n+1)]-C(2, n+2)`
-/

namespace A134067.P7476575753481544425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A134067.P7476575753481544425

namespace A134067

/-- `∑[2^(n+1)]-C(2, n+2)` -/
def P7476575753481544425.Spec : Prop :=
  ∀ n, P7476575753481544425.a n = A134067 n

end A134067

/-! ## A134067.P6952640130872132168

`∑[2^(n+1)]-(2^n)%2`
-/

namespace A134067.P6952640130872132168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((2 ^ n % 2 : ℕ) : ℤ)

end

end A134067.P6952640130872132168

namespace A134067

/-- `∑[2^(n+1)]-(2^n)%2` -/
def P6952640130872132168.Spec : Prop :=
  ∀ n, P6952640130872132168.a n = A134067 n

end A134067

/-! ## A134067.P7810408456242689449

`∑[2^(n+1)]/floor(ratio[n+1])`
-/

namespace A134067.P7810408456242689449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋ : ℚ)

end

end A134067.P7810408456242689449

namespace A134067

/-- `∑[2^(n+1)]/floor(ratio[n+1])` -/
def P7810408456242689449.Spec : Prop :=
  ∀ n, P7810408456242689449.a n = (A134067 n : ℚ)

end A134067

/-! ## A134067.P448234921084654316

`∑[2^(n+1)]^floor(atan(n+1))`
-/

namespace A134067.P448234921084654316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A134067.P448234921084654316

namespace A134067

/-- `∑[2^(n+1)]^floor(atan(n+1))` -/
def P448234921084654316.Spec : Prop :=
  ∀ n, P448234921084654316.a n = (A134067 n : ℚ)

end A134067

/-! ## A134067.P4578255845890801939

`round(∑[2^(n+1)]-acot(n+1))`
-/

namespace A134067.P4578255845890801939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))

end

end A134067.P4578255845890801939

namespace A134067

/-- `round(∑[2^(n+1)]-acot(n+1))` -/
def P4578255845890801939.Spec : Prop :=
  ∀ n, P4578255845890801939.a n = A134067 n

end A134067

/-!
# A134068: a(n) = 2*a(n-2) + 4*a(n-3), with initial terms 0, 3, 3.

The programs for A134068, the canonical program `A134068.P9759653500938742788` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134068 has offset 0).

The definition of A134068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+4*a(n-3)` (program `A134068.P9759653500938742788`, by `A134068.P9759653500938742788.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134068.P9759653500938742788

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134068

/-- `2*a(n-2)+4*a(n-3)` -/
def P9759653500938742788.Spec : Prop :=
  ∀ n, (P9759653500938742788.a n : ℤ) = A134068 n

theorem P9759653500938742788.correct : P9759653500938742788.Spec := by
  intro n
  simp only [A134068]

end A134068

/-! ## A134068.P6769496534093855833

`3*A134136(n)`
-/

namespace A134068.P6769496534093855833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A134136 n

end

end A134068.P6769496534093855833

namespace A134068

/-- `3*A134136(n)` -/
def P6769496534093855833.Spec : Prop :=
  ∀ n, P6769496534093855833.a n = A134068 n

end A134068

/-! ## A134068.P11263255421269611352

`ogf((3x+3x^2)/(1-2x^2-4x^3))`
-/

namespace A134068.P11263255421269611352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3] [1, 0, -2, -4] n

end

end A134068.P11263255421269611352

namespace A134068

/-- `ogf((3x+3x^2)/(1-2x^2-4x^3))` -/
def P11263255421269611352.Spec : Prop :=
  ∀ n, P11263255421269611352.a n = A134068 n

end A134068

/-! ## A134068.P17451148178112919260

`2^n-A134812(n+1)`
-/

namespace A134068.P17451148178112919260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A134812 (n + 1)

end

end A134068.P17451148178112919260

namespace A134068

/-- `2^n-A134812(n+1)` -/
def P17451148178112919260.Spec : Prop :=
  ∀ n, P17451148178112919260.a n = A134068 n

end A134068

/-! ## A134068.P5157743209780971817

`a(n-1)+a(n-1)-A134813(n)` with `a(0)=0`
-/

namespace A134068.P5157743209780971817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - A134813 n)

end

end A134068.P5157743209780971817

namespace A134068

/-- `a(n-1)+a(n-1)-A134813(n)` -/
def P5157743209780971817.Spec : Prop :=
  ∀ n, P5157743209780971817.a n = A134068 n

end A134068

/-! ## A134068.P8320907852367594667

`∑[A011782(n)-Δ[A134812(n)]]`
-/

namespace A134068.P8320907852367594667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134068.P8320907852367594667

namespace A134068

/-- `∑[A011782(n)-Δ[A134812(n)]]` -/
def P8320907852367594667.Spec : Prop :=
  ∀ n, P8320907852367594667.a n = A134068 n

end A134068

/-! ## A134068.P1024856165330499794

`3*(A078069(n+1)+3*A134812(n+1))`
-/

namespace A134068.P1024856165330499794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A078069 (n + 1) + 3 * A134812 (n + 1))

end

end A134068.P1024856165330499794

namespace A134068

/-- `3*(A078069(n+1)+3*A134812(n+1))` -/
def P1024856165330499794.Spec : Prop :=
  ∀ n, P1024856165330499794.a n = A134068 n

end A134068

/-! ## A134068.P14870322800019825147

`A038519(n+1)+A176739(n)-A108520(n)`
-/

namespace A134068.P14870322800019825147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (n + 1) + (A176739 n - A108520 n)

end

end A134068.P14870322800019825147

namespace A134068

/-- `A038519(n+1)+A176739(n)-A108520(n)` -/
def P14870322800019825147.Spec : Prop :=
  ∀ n, P14870322800019825147.a n = A134068 n

end A134068

/-! ## A134068.P440041522701912173

`A038518(n+1)+A176739(n)+A108520(n+1)`
-/

namespace A134068.P440041522701912173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) + (A176739 n + A108520 (n + 1))

end

end A134068.P440041522701912173

namespace A134068

/-- `A038518(n+1)+A176739(n)+A108520(n+1)` -/
def P440041522701912173.Spec : Prop :=
  ∀ n, P440041522701912173.a n = A134068 n

end A134068

/-! ## A134068.P7915903982557589289

`A001045(n+1)+A001045(n)-A134812(n+1)`
-/

namespace A134068.P7915903982557589289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A134812 (n + 1))

end

end A134068.P7915903982557589289

namespace A134068

/-- `A001045(n+1)+A001045(n)-A134812(n+1)` -/
def P7915903982557589289.Spec : Prop :=
  ∀ n, P7915903982557589289.a n = A134068 n

end A134068

/-! ## A134068.P15474598787666496951

`A038518(n+1)+A176739(n+1)-A176739(n)`
-/

namespace A134068.P15474598787666496951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) + (A176739 (n + 1) - A176739 n)

end

end A134068.P15474598787666496951

namespace A134068

/-- `A038518(n+1)+A176739(n+1)-A176739(n)` -/
def P15474598787666496951.Spec : Prop :=
  ∀ n, P15474598787666496951.a n = A134068 n

end A134068

/-!
# A134072: Concatenation of A000204 Lucas numbers (beginning at 1) in reverse order.

The programs for A134072, there is no canonical definition to state claims against.
-/

/-! ## A134072.P10472312752239826987

`∑[record[A323226(2*n)]*A011557(n)]`
-/

namespace A134072.P10472312752239826987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323226 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134072.P10472312752239826987

/-!
# A134073: Complete list of solutions to y^2 = x^3 + 73; sequence gives y values.

The programs for A134073, there is no canonical definition to state claims against.
-/

/-! ## A134073.P3644319620807063140

`A091274(or(A046974(n), A053624(n+1)))`
-/

namespace A134073.P3644319620807063140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091274 (Int.lor (A046974 n) (A053624 (n + 1))).toNat

end

end A134073.P3644319620807063140

/-!
# A134074: Complete list of solutions to y^2 = x^3 + 73; sequence gives x values.

The programs for A134074, there is no canonical definition to state claims against.
-/

/-! ## A134074.P2115010124608783531

`A008510(n+1)-A141746(A058212(n))`
-/

namespace A134074.P2115010124608783531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008510 (n + 1) - A141746 (A058212 n).toNat

end

end A134074.P2115010124608783531

/-!
# A134075: Primes of the form floor(Pi*p^2) where p is a prime.

The programs for A134075, there is no canonical definition to state claims against.
-/

/-! ## A134075.P8717078346492887358

`A066643(p?[A067559(n+1)])`
-/

namespace A134075.P8717078346492887358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134075.P8717078346492887358

/-! ## A134075.P4715595494542710077

`A135039(p?[A067559(n+1)])-1`
-/

namespace A134075.P4715595494542710077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A134075.P4715595494542710077

/-! ## A134075.P14610385074035096562

`A066643(∩[A000040(n+1), A067559(n+1)])`
-/

namespace A134075.P14610385074035096562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134075.P14610385074035096562

/-! ## A134075.P3120432592343992716

`A135039(∩[A000040(n+1), A067559(n+1)])-1`
-/

namespace A134075.P3120432592343992716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A134075.P3120432592343992716

/-! ## A134075.P6264754059202235713

`A066643(A134076(n+1))`
-/

namespace A134075.P6264754059202235713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (A134076 (n + 1)).toNat

end

end A134075.P6264754059202235713

/-!
# A134076: Primes p mentioned in A134075.

The programs for A134076, there is no canonical definition to state claims against.
-/

/-! ## A134076.P13163047585737705165

`p?[A067559(n+1)]`
-/

namespace A134076.P13163047585737705165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134076.P13163047585737705165

/-! ## A134076.P13070488483032263410

`p?[record[A067559(A133310(n))]]`
-/

namespace A134076.P13070488483032263410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134076.P13070488483032263410

/-! ## A134076.P12601207528368344584

`p?[record[A067559(A324347(n))]]`
-/

namespace A134076.P12601207528368344584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134076.P12601207528368344584

/-! ## A134076.P1654158079323543715

`record[A006530(A067559(n+3))]`
-/

namespace A134076.P1654158079323543715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067559 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134076.P1654158079323543715

/-! ## A134076.P9003666024090732774

`filter[A067559(n+1), A010051(#)]`
-/

namespace A134076.P9003666024090732774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A134076.P9003666024090732774

/-!
# A134077: Expansion of psi(x) * phi(-x)^3 / chi(-x^3)^3 in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A134077, the canonical program `A134077.P3704379988218628143` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134077 has offset 0).

The definition of A134077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134077.P1949605369544489610

`A118271(2*n+1)`
-/

namespace A134077.P1949605369544489610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (2 * n + 1)

end

end A134077.P1949605369544489610

namespace A134077

/-- `A118271(2*n+1)` -/
def P1949605369544489610.Spec : Prop :=
  ∀ n, P1949605369544489610.a n = A134077 n

end A134077

/-! ## A134077.P3704379988218628143

`A131944(2*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134077

/-- `A131944(2*n+1)` -/
def P3704379988218628143.Spec : Prop :=
  ∀ n, P3704379988218628143.a n = A134077 n

theorem P3704379988218628143.correct : P3704379988218628143.Spec := by
  intro n
  simp only [A134077]

end A134077

/-! ## A134077.P1220498838800101830

`A226139(Δ[n²])/3`
-/

namespace A134077.P1220498838800101830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A134077.P1220498838800101830

namespace A134077

/-- `A226139(Δ[n²])/3` -/
def P1220498838800101830.Spec : Prop :=
  ∀ n, P1220498838800101830.a n = (A134077 n : ℚ)

end A134077

/-! ## A134077.P10802009122845972436

`-(A131943(2*n+1)/3)`
-/

namespace A134077.P10802009122845972436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A131943 (2 * n + 1) : ℚ) / 3)

end

end A134077.P10802009122845972436

namespace A134077

/-- `-(A131943(2*n+1)/3)` -/
def P10802009122845972436.Spec : Prop :=
  ∀ n, P10802009122845972436.a n = (A134077 n : ℚ)

end A134077

/-! ## A134077.P7577788563467330134

`floor(A226139(2*n+1)/3)`
-/

namespace A134077.P7577788563467330134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226139 (2 * n + 1) : ℚ) / 3⌋

end

end A134077.P7577788563467330134

namespace A134077

/-- `floor(A226139(2*n+1)/3)` -/
def P7577788563467330134.Spec : Prop :=
  ∀ n, P7577788563467330134.a n = A134077 n

end A134077

/-! ## A134077.P1289105276384332838

`(1-4/2)*A214456(2*n+1)`
-/

namespace A134077.P1289105276384332838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) * (A214456 (2 * n + 1) : ℚ)

end

end A134077.P1289105276384332838

namespace A134077

/-- `(1-4/2)*A214456(2*n+1)` -/
def P1289105276384332838.Spec : Prop :=
  ∀ n, P1289105276384332838.a n = (A134077 n : ℚ)

end A134077

/-! ## A134077.P3871274016211061698

`A000035(2*n)-A214456(2*n+1)`
-/

namespace A134077.P3871274016211061698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A214456 (2 * n + 1)

end

end A134077.P3871274016211061698

namespace A134077

/-- `A000035(2*n)-A214456(2*n+1)` -/
def P3871274016211061698.Spec : Prop :=
  ∀ n, P3871274016211061698.a n = A134077 n

end A134077

/-! ## A134077.P14501734458276435941

`1-(A214456(2*n+1)+A000034(2*n))`
-/

namespace A134077.P14501734458276435941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A214456 (2 * n + 1) + A000034 (2 * n))

end

end A134077.P14501734458276435941

namespace A134077

/-- `1-(A214456(2*n+1)+A000034(2*n))` -/
def P14501734458276435941.Spec : Prop :=
  ∀ n, P14501734458276435941.a n = A134077 n

end A134077

/-! ## A134077.P8624055374842525457

`1-(A214456(2*n+1)+A010684(2*n))`
-/

namespace A134077.P8624055374842525457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A214456 (2 * n + 1) + A010684 (2 * n))

end

end A134077.P8624055374842525457

namespace A134077

/-- `1-(A214456(2*n+1)+A010684(2*n))` -/
def P8624055374842525457.Spec : Prop :=
  ∀ n, P8624055374842525457.a n = A134077 n

end A134077

/-! ## A134077.P5981585340151538092

`1-(A214456(2*n+1)+A033999(2*n))`
-/

namespace A134077.P5981585340151538092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A214456 (2 * n + 1) + A033999 (2 * n))

end

end A134077.P5981585340151538092

namespace A134077

/-- `1-(A214456(2*n+1)+A033999(2*n))` -/
def P5981585340151538092.Spec : Prop :=
  ∀ n, P5981585340151538092.a n = A134077 n

end A134077

/-! ## A134077.P5994016802384148225

`A282544(2*n+1)-A123532(2*n+1)`
-/

namespace A134077.P5994016802384148225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282544 (2 * n + 1) - A123532 (2 * n + 1)

end

end A134077.P5994016802384148225

namespace A134077

/-- `A282544(2*n+1)-A123532(2*n+1)` -/
def P5994016802384148225.Spec : Prop :=
  ∀ n, P5994016802384148225.a n = A134077 n

end A134077

/-! ## A134077.P9157001768355037341

`A226139(2*n+1)+2*A214456(2*n+1)`
-/

namespace A134077.P9157001768355037341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226139 (2 * n + 1) + 2 * A214456 (2 * n + 1)

end

end A134077.P9157001768355037341

namespace A134077

/-- `A226139(2*n+1)+2*A214456(2*n+1)` -/
def P9157001768355037341.Spec : Prop :=
  ∀ n, P9157001768355037341.a n = A134077 n

end A134077

/-! ## A134077.P348824420834553681

`A006353(2*n+1)-2*A282544(2*n+1)`
-/

namespace A134077.P348824420834553681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006353 (2 * n + 1) - 2 * A282544 (2 * n + 1)

end

end A134077.P348824420834553681

namespace A134077

/-- `A006353(2*n+1)-2*A282544(2*n+1)` -/
def P348824420834553681.Spec : Prop :=
  ∀ n, P348824420834553681.a n = A134077 n

end A134077

/-! ## A134077.P8116313466113021901

`2*A214456(2*n+1)-A131943(2*n+1)`
-/

namespace A134077.P8116313466113021901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214456 (2 * n + 1) - A131943 (2 * n + 1)

end

end A134077.P8116313466113021901

namespace A134077

/-- `2*A214456(2*n+1)-A131943(2*n+1)` -/
def P8116313466113021901.Spec : Prop :=
  ∀ n, P8116313466113021901.a n = A134077 n

end A134077

/-! ## A134077.P10527203686158963325

`A131943(2*n+1)/(A033999(2*n+1)-2)`
-/

namespace A134077.P10527203686158963325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 2 : ℚ)

end

end A134077.P10527203686158963325

namespace A134077

/-- `A131943(2*n+1)/(A033999(2*n+1)-2)` -/
def P10527203686158963325.Spec : Prop :=
  ∀ n, P10527203686158963325.a n = (A134077 n : ℚ)

end A134077

/-! ## A134077.P7061296706594579275

`A214456(2*n+1)/A124449(2*(n+1))*A214361(2*(n+1))`
-/

namespace A134077.P7061296706594579275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214456 (2 * n + 1) : ℚ) / (A124449 (2 * (n + 1)) : ℚ) * (A214361 (2 * (n + 1)) : ℚ)

end

end A134077.P7061296706594579275

namespace A134077

/-- `A214456(2*n+1)/A124449(2*(n+1))*A214361(2*(n+1))` -/
def P7061296706594579275.Spec : Prop :=
  ∀ n, P7061296706594579275.a n = (A134077 n : ℚ)

end A134077

/-! ## A134077.P1703552853516425076

`(A125514(2*n+1)-A282544(2*n+1))/2`
-/

namespace A134077.P1703552853516425076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125514 (2 * n + 1) - A282544 (2 * n + 1) : ℚ) / 2

end

end A134077.P1703552853516425076

namespace A134077

/-- `(A125514(2*n+1)-A282544(2*n+1))/2` -/
def P1703552853516425076.Spec : Prop :=
  ∀ n, P1703552853516425076.a n = (A134077 n : ℚ)

end A134077

/-! ## A134077.P12748705655536104223

`A282031(Δ[n²])/3`
-/

namespace A134077.P12748705655536104223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282031 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A134077.P12748705655536104223

namespace A134077

/-- `A282031(Δ[n²])/3` -/
def P12748705655536104223.Spec : Prop :=
  ∀ n, P12748705655536104223.a n = (A134077 n : ℚ)

end A134077

/-! ## A134077.P10232191655779300434

`A229615(A073762(n+1))`
-/

namespace A134077.P10232191655779300434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (A073762 (n + 1)).toNat

end

end A134077.P10232191655779300434

namespace A134077

/-- `A229615(A073762(n+1))` -/
def P10232191655779300434.Spec : Prop :=
  ∀ n, P10232191655779300434.a n = A134077 n

end A134077

/-!
# A134079: Expansion of q^(-2/3) * c(-q)^2 / 9 in powers of q where c(q) is a cubic AGM theta function.

The programs for A134079, the canonical program `A134079.P11608522256276491607` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134079 has offset 0).

The definition of A134079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134079.P11608522256276491607

`(-1)^n*A033686(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134079

/-- `(-1)^n*A033686(n)` -/
def P11608522256276491607.Spec : Prop :=
  ∀ n, P11608522256276491607.a n = A134079 n

theorem P11608522256276491607.correct : P11608522256276491607.Spec := by
  intro n
  simp only [A134079]

end A134079

/-! ## A134079.P14060860880537019295

`(-1)^n*A000203(3*n+2)/3`
-/

namespace A134079.P14060860880537019295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000203 (3 * n + 2) : ℚ) / 3

end

end A134079.P14060860880537019295

namespace A134079

/-- `(-1)^n*A000203(3*n+2)/3` -/
def P14060860880537019295.Spec : Prop :=
  ∀ n, P14060860880537019295.a n = (A134079 n : ℚ)

end A134079

/-! ## A134079.P17527378431599039486

`A033686(n)*A033999(n)`
-/

namespace A134079.P17527378431599039486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 n * A033999 n

end

end A134079.P17527378431599039486

namespace A134079

/-- `A033686(n)*A033999(n)` -/
def P17527378431599039486.Spec : Prop :=
  ∀ n, P17527378431599039486.a n = A134079 n

theorem P17527378431599039486.correct : P17527378431599039486.Spec := by
  intro n
  simp only [A134079, Nat.add_sub_cancel, A134079.P17527378431599039486.a, A134079.P11608522256276491607.a, A033686, A033686.P10800342706131622131.a, A033999, A033999.P17703899380244199787.a, A144615, A144615.P1433595682718935894.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134079

/-! ## A134079.P16607818155651109568

`A144615(n)/A174971(n)`
-/

namespace A134079.P16607818155651109568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144615 n : ℚ) / (A174971 n : ℚ)

end

end A134079.P16607818155651109568

namespace A134079

/-- `A144615(n)/A174971(n)` -/
def P16607818155651109568.Spec : Prop :=
  ∀ n, P16607818155651109568.a n = (A134079 n : ℚ)

end A134079

/-! ## A134079.P13623117931498903656

`A033686(n)*A098098(n)/A258831(n)`
-/

namespace A134079.P13623117931498903656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033686 n * A098098 n : ℚ) / (A258831 n : ℚ)

end

end A134079.P13623117931498903656

namespace A134079

/-- `A033686(n)*A098098(n)/A258831(n)` -/
def P13623117931498903656.Spec : Prop :=
  ∀ n, P13623117931498903656.a n = (A134079 n : ℚ)

end A134079

/-! ## A134079.P16113275331689100065

`A033686(n)*A206958(Δ[A004526(n)])`
-/

namespace A134079.P16113275331689100065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 n * A206958 (f1 (n + 1) - f1 n).toNat

end

end A134079.P16113275331689100065

namespace A134079

/-- `A033686(n)*A206958(Δ[A004526(n)])` -/
def P16113275331689100065.Spec : Prop :=
  ∀ n, P16113275331689100065.a n = A134079 n

end A134079

/-!
# A134080: Expansion of (f(-q^5)^5 / f(-q) + f(q^5)^5 / f(q)) / 2 in powers of q^2 where f() is a Ramanujan theta function.

The programs for A134080, the canonical program `A134080.P10459881647826391973` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134080 has offset 0).

The definition of A134080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134080.P2487245647363559831

`A053723(2*n)`
-/

namespace A134080.P2487245647363559831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053723 (2 * n)

end

end A134080.P2487245647363559831

namespace A134080

/-- `A053723(2*n)` -/
def P2487245647363559831.Spec : Prop :=
  ∀ n, P2487245647363559831.a n = A134080 n

end A134080

/-! ## A134080.P14197383451875779011

`A110712(2*n+1)`
-/

namespace A134080.P14197383451875779011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110712 (2 * n + 1)

end

end A134080.P14197383451875779011

namespace A134080

/-- `A110712(2*n+1)` -/
def P14197383451875779011.Spec : Prop :=
  ∀ n, P14197383451875779011.a n = A134080 n

end A134080

/-! ## A134080.P10459881647826391973

`A129303(2*n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134080

/-- `A129303(2*n+1)` -/
def P10459881647826391973.Spec : Prop :=
  ∀ n, P10459881647826391973.a n = A134080 n

theorem P10459881647826391973.correct : P10459881647826391973.Spec := by
  intro n
  simp only [A134080]

end A134080

/-! ## A134080.P14031788720825499465

`A138483(2*n+1)`
-/

namespace A134080.P14031788720825499465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138483 (2 * n + 1)

end

end A134080.P14031788720825499465

namespace A134080

/-- `A138483(2*n+1)` -/
def P14031788720825499465.Spec : Prop :=
  ∀ n, P14031788720825499465.a n = A134080 n

end A134080

/-! ## A134080.P12752714462636647452

`A138512(2*n+1)`
-/

namespace A134080.P12752714462636647452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138512 (2 * n + 1)

end

end A134080.P12752714462636647452

namespace A134080

/-- `A138512(2*n+1)` -/
def P12752714462636647452.Spec : Prop :=
  ∀ n, P12752714462636647452.a n = A134080 n

end A134080

/-! ## A134080.P2838141871344093261

`A138557(2*n+1)`
-/

namespace A134080.P2838141871344093261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138557 (2 * n + 1)

end

end A134080.P2838141871344093261

namespace A134080

/-- `A138557(2*n+1)` -/
def P2838141871344093261.Spec : Prop :=
  ∀ n, P2838141871344093261.a n = A134080 n

end A134080

/-! ## A134080.P9223108415349453077

`lcm(A060904(2*n+1)*A111580(2*n+1), A060904(2*n+1))`
-/

namespace A134080.P9223108415349453077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060904 (2 * n + 1) * A111580 (2 * n + 1)) (A060904 (2 * n + 1))

end

end A134080.P9223108415349453077

namespace A134080

/-- `lcm(A060904(2*n+1)*A111580(2*n+1), A060904(2*n+1))` -/
def P9223108415349453077.Spec : Prop :=
  ∀ n, (P9223108415349453077.a n : ℤ) = A134080 n

end A134080

/-! ## A134080.P8566495060835966066

`lcm(A132741(2*n+1)*A138558(2*n+1), A132741(2*n+1))`
-/

namespace A134080.P8566495060835966066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132741 (2 * n + 1) * A138558 (2 * n + 1)) (A132741 (2 * n + 1))

end

end A134080.P8566495060835966066

namespace A134080

/-- `lcm(A132741(2*n+1)*A138558(2*n+1), A132741(2*n+1))` -/
def P8566495060835966066.Spec : Prop :=
  ∀ n, (P8566495060835966066.a n : ℤ) = A134080 n

end A134080

/-!
# A134081: Triangle T(n, k) = binomial(n, k)*((2*k+1)*(n-k) +k+1)/(k+1), read by rows.

The programs for A134081, the canonical program `A134081.P4425281140155594639` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134081 has offset 0).

The definition of A134081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*((2*col(n)+1)*(row(n)-col(n))+col(n)+1)/(col(n)+1)` (program `A134081.P1881761778220164989`, by `A134081.P1881761778220164989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134081.P1881761778220164989

`C(row(n), col(n))*((2*col(n)+1)*(row(n)-col(n))+col(n)+1)/(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134081.P1881761778220164989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * ((2 * SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A134081.P1881761778220164989

namespace A134081

/-- `C(row(n), col(n))*((2*col(n)+1)*(row(n)-col(n))+col(n)+1)/(col(n)+1)` -/
def P1881761778220164989.Spec : Prop :=
  ∀ n, P1881761778220164989.a n = (A134081 n : ℚ)

theorem P1881761778220164989.correct : P1881761778220164989.Spec := by
  intro n
  simp only [A134081, Nat.add_sub_cancel, A134081.P1881761778220164989.a, A134081.P4425281140155594639.a, A156644, A156644.P7957006510931295094.a, A216973, A216973.P15863105142889415858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134081

/-! ## A134081.P4425281140155594639

`A156644(n)+2*A216973(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A134081

/-- `A156644(n)+2*A216973(n)` -/
def P4425281140155594639.Spec : Prop :=
  ∀ n, P4425281140155594639.a n = A134081 n

theorem P4425281140155594639.correct : P4425281140155594639.Spec := by
  intro n
  simp only [A134081]

end A134081

/-! ## A134081.P16212659300749954708

`2*A093375(n+1)-A135278(n)`
-/

namespace A134081.P16212659300749954708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093375 (n + 1) - A135278 n

end

end A134081.P16212659300749954708

namespace A134081

/-- `2*A093375(n+1)-A135278(n)` -/
def P16212659300749954708.Spec : Prop :=
  ∀ n, P16212659300749954708.a n = A134081 n

end A134081

/-! ## A134081.P15760831455503184754

`A156644(n)+A025581(n)*A028326(n)`
-/

namespace A134081.P15760831455503184754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n + A025581 n * A028326 n

end

end A134081.P15760831455503184754

namespace A134081

/-- `A156644(n)+A025581(n)*A028326(n)` -/
def P15760831455503184754.Spec : Prop :=
  ∀ n, P15760831455503184754.a n = A134081 n

theorem P15760831455503184754.correct : P15760831455503184754.Spec := by
  intro n
  simp only [A134081, Nat.add_sub_cancel, A134081.P15760831455503184754.a, A134081.P4425281140155594639.a, A025581, A025581.P16112744757063613497.a, A028326, A028326.P7676793339942299677.a, A156644, A156644.P7957006510931295094.a, A216973, A216973.P15863105142889415858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134081

/-! ## A134081.P3507392786742550301

`A156644(n)+A025581(n)*A134058(n)`
-/

namespace A134081.P3507392786742550301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n + A025581 n * A134058 n

end

end A134081.P3507392786742550301

namespace A134081

/-- `A156644(n)+A025581(n)*A134058(n)` -/
def P3507392786742550301.Spec : Prop :=
  ∀ n, P3507392786742550301.a n = A134081 n

end A134081

/-! ## A134081.P10489911038373472398

`A003506(n+1)-A002262(n)*A156644(n)`
-/

namespace A134081.P10489911038373472398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - A002262 n * A156644 n

end

end A134081.P10489911038373472398

namespace A134081

/-- `A003506(n+1)-A002262(n)*A156644(n)` -/
def P10489911038373472398.Spec : Prop :=
  ∀ n, P10489911038373472398.a n = A134081 n

theorem P10489911038373472398.correct : P10489911038373472398.Spec := by
  intro n
  simp only [A134081, Nat.add_sub_cancel, A134081.P10489911038373472398.a, A134081.P4425281140155594639.a, A002262, A002262.P17823619022233514403.a, A003506, A003506.P13263006833711295772.a, A156644, A156644.P7957006510931295094.a, A216973, A216973.P15863105142889415858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134081

/-! ## A134081.P12985207582688340544

`A004736(n+1)*A028326(n)-A135278(n)`
-/

namespace A134081.P12985207582688340544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A028326 n - A135278 n

end

end A134081.P12985207582688340544

namespace A134081

/-- `A004736(n+1)*A028326(n)-A135278(n)` -/
def P12985207582688340544.Spec : Prop :=
  ∀ n, P12985207582688340544.a n = A134081 n

end A134081

/-! ## A134081.P11009467386541720673

`A135278(n)+A005843(A093375(n+1)-A135278(n))`
-/

namespace A134081.P11009467386541720673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A005843 (A093375 (n + 1) - A135278 n).toNat

end

end A134081.P11009467386541720673

namespace A134081

/-- `A135278(n)+A005843(A093375(n+1)-A135278(n))` -/
def P11009467386541720673.Spec : Prop :=
  ∀ n, P11009467386541720673.a n = A134081 n

end A134081

/-! ## A134081.P7184143376829627849

`A156644(n)+A005843(A216973(n))`
-/

namespace A134081.P7184143376829627849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n + A005843 (A216973 n).toNat

end

end A134081.P7184143376829627849

namespace A134081

/-- `A156644(n)+A005843(A216973(n))` -/
def P7184143376829627849.Spec : Prop :=
  ∀ n, P7184143376829627849.a n = A134081 n

end A134081

/-! ## A134081.P17620787603803138704

`A005843(A093375(n+1))-A135278(n)`
-/

namespace A134081.P17620787603803138704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A093375 (n + 1)).toNat - A135278 n

end

end A134081.P17620787603803138704

namespace A134081

/-- `A005843(A093375(n+1))-A135278(n)` -/
def P17620787603803138704.Spec : Prop :=
  ∀ n, P17620787603803138704.a n = A134081 n

end A134081

/-!
# A134082: Triangle read by rows, (n-1) zeros followed by (2n, 1).

The programs for A134082, the canonical program `A134082.P10521144562507745432` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134082 has offset 0).

The definition of A134082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134082.P14755418022663891002

`(C(comp[∑[n]]-n, 2)-n)*A128229(n+1)`
-/

namespace A134082.P14755418022663891002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A128229 (n + 1)

end

end A134082.P14755418022663891002

namespace A134082

/-- `(C(comp[∑[n]]-n, 2)-n)*A128229(n+1)` -/
def P14755418022663891002.Spec : Prop :=
  ∀ n, P14755418022663891002.a n = A134082 n

end A134082

/-! ## A134082.P3135772046869300183

`A196389(n)+A132681(n)`
-/

namespace A134082.P3135772046869300183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n + A132681 n

end

end A134082.P3135772046869300183

namespace A134082

/-- `A196389(n)+A132681(n)` -/
def P3135772046869300183.Spec : Prop :=
  ∀ n, P3135772046869300183.a n = A134082 n

end A134082

/-! ## A134082.P13857325911618782409

`A038207(n)*A097806(n)`
-/

namespace A134082.P13857325911618782409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A097806 n

end

end A134082.P13857325911618782409

namespace A134082

/-- `A038207(n)*A097806(n)` -/
def P13857325911618782409.Spec : Prop :=
  ∀ n, P13857325911618782409.a n = A134082 n

end A134082

/-! ## A134082.P5124747062670470195

`A039598(n)*A097806(n)`
-/

namespace A134082.P5124747062670470195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n * A097806 n

end

end A134082.P5124747062670470195

namespace A134082

/-- `A039598(n)*A097806(n)` -/
def P5124747062670470195.Spec : Prop :=
  ∀ n, P5124747062670470195.a n = A134082 n

end A134082

/-! ## A134082.P16814980387959346959

`A054335(n)*A097806(n)`
-/

namespace A134082.P16814980387959346959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 n * A097806 n

end

end A134082.P16814980387959346959

namespace A134082

/-- `A054335(n)*A097806(n)` -/
def P16814980387959346959.Spec : Prop :=
  ∀ n, P16814980387959346959.a n = A134082 n

end A134082

/-! ## A134082.P7014166611348519205

`A054456(n)*A097806(n)`
-/

namespace A134082.P7014166611348519205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 n * A097806 n

end

end A134082.P7014166611348519205

namespace A134082

/-- `A054456(n)*A097806(n)` -/
def P7014166611348519205.Spec : Prop :=
  ∀ n, P7014166611348519205.a n = A134082 n

end A134082

/-! ## A134082.P17925824108148397600

`A073387(n)*A097806(n)`
-/

namespace A134082.P17925824108148397600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 n * A097806 n

end

end A134082.P17925824108148397600

namespace A134082

/-- `A073387(n)*A097806(n)` -/
def P17925824108148397600.Spec : Prop :=
  ∀ n, P17925824108148397600.a n = A134082 n

end A134082

/-! ## A134082.P10521144562507745432

`A078812(n)*A097806(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134082

/-- `A078812(n)*A097806(n)` -/
def P10521144562507745432.Spec : Prop :=
  ∀ n, P10521144562507745432.a n = A134082 n

theorem P10521144562507745432.correct : P10521144562507745432.Spec := by
  intro n
  simp only [A134082]

end A134082

/-! ## A134082.P5462465548633257876

`A094442(n)*A097806(n)`
-/

namespace A134082.P5462465548633257876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n * A097806 n

end

end A134082.P5462465548633257876

namespace A134082

/-- `A094442(n)*A097806(n)` -/
def P5462465548633257876.Spec : Prop :=
  ∀ n, P5462465548633257876.a n = A134082 n

end A134082

/-! ## A134082.P4295203100803985459

`A094527(n)*A097806(n)`
-/

namespace A134082.P4295203100803985459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A097806 n

end

end A134082.P4295203100803985459

namespace A134082

/-- `A094527(n)*A097806(n)` -/
def P4295203100803985459.Spec : Prop :=
  ∀ n, P4295203100803985459.a n = A134082 n

end A134082

/-! ## A134082.P13067325882384642014

`A097806(n)*A104259(n)`
-/

namespace A134082.P13067325882384642014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A104259 n

end

end A134082.P13067325882384642014

namespace A134082

/-- `A097806(n)*A104259(n)` -/
def P13067325882384642014.Spec : Prop :=
  ∀ n, P13067325882384642014.a n = A134082 n

end A134082

/-! ## A134082.P14065863684696413860

`A097806(n)*A104698(n)`
-/

namespace A134082.P14065863684696413860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A104698 n

end

end A134082.P14065863684696413860

namespace A134082

/-- `A097806(n)*A104698(n)` -/
def P14065863684696413860.Spec : Prop :=
  ∀ n, P14065863684696413860.a n = A134082 n

end A134082

/-! ## A134082.P8018599993059503986

`A097806(n)*A106246(n)`
-/

namespace A134082.P8018599993059503986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106246 n

end

end A134082.P8018599993059503986

namespace A134082

/-- `A097806(n)*A106246(n)` -/
def P8018599993059503986.Spec : Prop :=
  ∀ n, P8018599993059503986.a n = A134082 n

end A134082

/-! ## A134082.P11741081248523828798

`A097806(n)*A113413(n)`
-/

namespace A134082.P11741081248523828798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A113413 n

end

end A134082.P11741081248523828798

namespace A134082

/-- `A097806(n)*A113413(n)` -/
def P11741081248523828798.Spec : Prop :=
  ∀ n, P11741081248523828798.a n = A134082 n

end A134082

/-! ## A134082.P18035880904803047673

`lcm(A038207(n), A132013(n))`
-/

namespace A134082.P18035880904803047673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A132013 n)

end

end A134082.P18035880904803047673

namespace A134082

/-- `lcm(A038207(n), A132013(n))` -/
def P18035880904803047673.Spec : Prop :=
  ∀ n, (P18035880904803047673.a n : ℤ) = A134082 n

end A134082

/-! ## A134082.P11732493031528741332

`lcm(A039598(n), A167374(n))`
-/

namespace A134082.P11732493031528741332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039598 n) (A167374 n)

end

end A134082.P11732493031528741332

namespace A134082

/-- `lcm(A039598(n), A167374(n))` -/
def P11732493031528741332.Spec : Prop :=
  ∀ n, (P11732493031528741332.a n : ℤ) = A134082 n

end A134082

/-! ## A134082.P14911318029254303796

`lcm(A054335(n), A251635(n))`
-/

namespace A134082.P14911318029254303796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054335 n) (A251635 n)

end

end A134082.P14911318029254303796

namespace A134082

/-- `lcm(A054335(n), A251635(n))` -/
def P14911318029254303796.Spec : Prop :=
  ∀ n, (P14911318029254303796.a n : ℤ) = A134082 n

end A134082

/-! ## A134082.P12939987554699645240

`and(A038207(n), A147768(n))`
-/

namespace A134082.P12939987554699645240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038207 n) (A147768 n)

end

end A134082.P12939987554699645240

namespace A134082

/-- `and(A038207(n), A147768(n))` -/
def P12939987554699645240.Spec : Prop :=
  ∀ n, P12939987554699645240.a n = A134082 n

end A134082

/-! ## A134082.P16606680847855900299

`and(A038207(n), A167374(n))`
-/

namespace A134082.P16606680847855900299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038207 n) (A167374 n)

end

end A134082.P16606680847855900299

namespace A134082

/-- `and(A038207(n), A167374(n))` -/
def P16606680847855900299.Spec : Prop :=
  ∀ n, P16606680847855900299.a n = A134082 n

end A134082

/-! ## A134082.P7009442956927780034

`and(A073387(n), A147768(n))`
-/

namespace A134082.P7009442956927780034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073387 n) (A147768 n)

end

end A134082.P7009442956927780034

namespace A134082

/-- `and(A073387(n), A147768(n))` -/
def P7009442956927780034.Spec : Prop :=
  ∀ n, P7009442956927780034.a n = A134082 n

end A134082

/-!
# A134083: A007318 * A134082.

The programs for A134083, the canonical program `A134083.P13323167957523144321` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134083 has offset 0).

The definition of A134083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134083.P4275546136915322415

`T(n-1,k)+T(n-1,k-1)+2*C(row(n)-1, col(n))` with `a(0)=1`
-/

namespace A134083.P4275546136915322415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + 2 * Nat.choose ((SequenceMachineLib.triRow n : ℤ) - 1).toNat (SequenceMachineLib.triCol n)

end

end A134083.P4275546136915322415

namespace A134083

/-- `T(n-1,k)+T(n-1,k-1)+2*C(row(n)-1, col(n))` -/
def P4275546136915322415.Spec : Prop :=
  ∀ n, (P4275546136915322415.a n : ℤ) = A134083 n

end A134083

/-! ## A134083.P9668374161866882716

`(∑[2*n]%(comp[∑[n]]+1)+1)*A007318(n)`
-/

namespace A134083.P9668374161866882716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℤ) * A007318 n

end

end A134083.P9668374161866882716

namespace A134083

/-- `(∑[2*n]%(comp[∑[n]]+1)+1)*A007318(n)` -/
def P9668374161866882716.Spec : Prop :=
  ∀ n, P9668374161866882716.a n = A134083 n

end A134083

/-! ## A134083.P1791700456041637706

`A007318(n)*A099375(n)`
-/

namespace A134083.P1791700456041637706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A099375 n

end

end A134083.P1791700456041637706

namespace A134083

/-- `A007318(n)*A099375(n)` -/
def P1791700456041637706.Spec : Prop :=
  ∀ n, P1791700456041637706.a n = A134083 n

end A134083

/-! ## A134083.P10789326581356822355

`abs(A099375(n)*A108086(n))`
-/

namespace A134083.P10789326581356822355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099375 n * A108086 n|

end

end A134083.P10789326581356822355

namespace A134083

/-- `abs(A099375(n)*A108086(n))` -/
def P10789326581356822355.Spec : Prop :=
  ∀ n, P10789326581356822355.a n = A134083 n

end A134083

/-! ## A134083.P12074432848055833581

`abs(A099375(n)*A117440(n))`
-/

namespace A134083.P12074432848055833581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099375 n * A117440 n|

end

end A134083.P12074432848055833581

namespace A134083

/-- `abs(A099375(n)*A117440(n))` -/
def P12074432848055833581.Spec : Prop :=
  ∀ n, P12074432848055833581.a n = A134083 n

end A134083

/-! ## A134083.P12566012051255038285

`abs(A099375(n)*A130595(n))`
-/

namespace A134083.P12566012051255038285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099375 n * A130595 n|

end

end A134083.P12566012051255038285

namespace A134083

/-- `abs(A099375(n)*A130595(n))` -/
def P12566012051255038285.Spec : Prop :=
  ∀ n, P12566012051255038285.a n = A134083 n

end A134083

/-! ## A134083.P750318474365272594

`sqrt(A008459(n))*A099375(n)`
-/

namespace A134083.P750318474365272594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A099375 n : ℝ)

end

end A134083.P750318474365272594

namespace A134083

/-- `sqrt(A008459(n))*A099375(n)` -/
def P750318474365272594.Spec : Prop :=
  ∀ n, P750318474365272594.a n = (A134083 n : ℝ)

end A134083

/-! ## A134083.P15606080044857218943

`Δ[A102363(n)]*A099375(n)`
-/

namespace A134083.P15606080044857218943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A099375 n

end

end A134083.P15606080044857218943

namespace A134083

/-- `Δ[A102363(n)]*A099375(n)` -/
def P15606080044857218943.Spec : Prop :=
  ∀ n, P15606080044857218943.a n = A134083 n

end A134083

/-! ## A134083.P6156876300813044015

`A216973(n)+A093375(n+1)`
-/

namespace A134083.P6156876300813044015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A093375 (n + 1)

end

end A134083.P6156876300813044015

namespace A134083

/-- `A216973(n)+A093375(n+1)` -/
def P6156876300813044015.Spec : Prop :=
  ∀ n, P6156876300813044015.a n = A134083 n

end A134083

/-! ## A134083.P16911990649697147953

`(A014473(n)+1)*A099375(n)`
-/

namespace A134083.P16911990649697147953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A099375 n

end

end A134083.P16911990649697147953

namespace A134083

/-- `(A014473(n)+1)*A099375(n)` -/
def P16911990649697147953.Spec : Prop :=
  ∀ n, P16911990649697147953.a n = A134083 n

end A134083

/-! ## A134083.P3421128461026756356

`A007318(n)+2*A216973(n)`
-/

namespace A134083.P3421128461026756356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A216973 n

end

end A134083.P3421128461026756356

namespace A134083

/-- `A007318(n)+2*A216973(n)` -/
def P3421128461026756356.Spec : Prop :=
  ∀ n, P3421128461026756356.a n = A134083 n

end A134083

/-! ## A134083.P1985025123379424451

`A028326(n)/2*A099375(n)`
-/

namespace A134083.P1985025123379424451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A099375 n : ℚ)

end

end A134083.P1985025123379424451

namespace A134083

/-- `A028326(n)/2*A099375(n)` -/
def P1985025123379424451.Spec : Prop :=
  ∀ n, P1985025123379424451.a n = (A134083 n : ℚ)

end A134083

/-! ## A134083.P7807362958490121251

`2*A093375(n+1)-A007318(n)`
-/

namespace A134083.P7807362958490121251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093375 (n + 1) - A007318 n

end

end A134083.P7807362958490121251

namespace A134083

/-- `2*A093375(n+1)-A007318(n)` -/
def P7807362958490121251.Spec : Prop :=
  ∀ n, P7807362958490121251.a n = A134083 n

end A134083

/-! ## A134083.P16613408090351838839

`2*A003506(n+1)-A116666(n+1)`
-/

namespace A134083.P16613408090351838839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003506 (n + 1) - A116666 (n + 1)

end

end A134083.P16613408090351838839

namespace A134083

/-- `2*A003506(n+1)-A116666(n+1)` -/
def P16613408090351838839.Spec : Prop :=
  ∀ n, P16613408090351838839.a n = A134083 n

end A134083

/-! ## A134083.P13323167957523144321

`A074909(A083920(n))*A099375(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134083

/-- `A074909(A083920(n))*A099375(n)` -/
def P13323167957523144321.Spec : Prop :=
  ∀ n, P13323167957523144321.a n = A134083 n

theorem P13323167957523144321.correct : P13323167957523144321.Spec := by
  intro n
  simp only [A134083]

end A134083

/-! ## A134083.P16578633218234326554

`A004273(A004736(n+1))*A007318(n)`
-/

namespace A134083.P16578633218234326554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004736 (n + 1)).toNat * A007318 n

end

end A134083.P16578633218234326554

namespace A134083

/-- `A004273(A004736(n+1))*A007318(n)` -/
def P16578633218234326554.Spec : Prop :=
  ∀ n, P16578633218234326554.a n = A134083 n

end A134083

/-! ## A134083.P7474367731092860592

`A128821(n+1)/A001263(n+1)*A007318(n)`
-/

namespace A134083.P7474367731092860592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128821 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A134083.P7474367731092860592

namespace A134083

/-- `A128821(n+1)/A001263(n+1)*A007318(n)` -/
def P7474367731092860592.Spec : Prop :=
  ∀ n, P7474367731092860592.a n = (A134083 n : ℚ)

end A134083

/-! ## A134083.P17985946977691588253

`A116666(n+2)+A007318(n)-A007318(n+1)`
-/

namespace A134083.P17985946977691588253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116666 (n + 2) + (A007318 n - A007318 (n + 1))

end

end A134083.P17985946977691588253

namespace A134083

/-- `A116666(n+2)+A007318(n)-A007318(n+1)` -/
def P17985946977691588253.Spec : Prop :=
  ∀ n, P17985946977691588253.a n = A134083 n

end A134083

/-! ## A134083.P2629516679067732729

`A116666(∑[char[∑[n]]]²-n)`
-/

namespace A134083.P2629516679067732729
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116666 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A134083.P2629516679067732729

namespace A134083

/-- `A116666(∑[char[∑[n]]]²-n)` -/
def P2629516679067732729.Spec : Prop :=
  ∀ n, P2629516679067732729.a n = A134083 n

end A134083

/-! ## A134083.P13167205709784726921

`A003506(n+1)-A141692(n)`
-/

namespace A134083.P13167205709784726921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - A141692 n

end

end A134083.P13167205709784726921

namespace A134083

/-- `A003506(n+1)-A141692(n)` -/
def P13167205709784726921.Spec : Prop :=
  ∀ n, P13167205709784726921.a n = A134083 n

end A134083

/-!
# A134084: G.f. A(x) = G(2x) where G(x) satisfies [x^(n+1)] G(x)^(2^n) = [x^n] G(x)^(2^n) for n>=0.

The programs for A134084, there is no canonical definition to state claims against.
-/

/-! ## A134084.P5612118874259344217

`A160933(a(n-1)²)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A134084.P5612118874259344217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A160933 (a (n - 1) ^ 2).toNat

end

end A134084.P5612118874259344217

/-!
# A134085: G.f. A(x) satisfies: [x^(n+1)] A(x)^(2^(n-1)) = [x^n] A(x)^(2^(n-1)) for n>=0.

The programs for A134085, there is no canonical definition to state claims against.
-/

/-! ## A134085.P15838350124007716064

`1-A047263(A143674(n))+n`
-/

namespace A134085.P15838350124007716064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A047263 (A143674 n).toNat + (n : ℤ)

end

end A134085.P15838350124007716064

/-! ## A134085.P16041350731989666808

`A345139(n+1)-A189671(A002430(n+1))`
-/

namespace A134085.P16041350731989666808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345139 (n + 1) - A189671 (A002430 (n + 1)).toNat

end

end A134085.P16041350731989666808

/-!
# A134086: a(n) = [x^n] G(x)^(2^n) where G(x) satisfies: [x^(n+1)] G(x)^(2^n) = [x^n] G(x)^(2^n) for n>=0 and G(2x) is the g.f. of A134084.

The programs for A134086, there is no canonical definition to state claims against.
-/

/-! ## A134086.P14863718694463305582

`2^n*A134088(n)`
-/

namespace A134086.P14863718694463305582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A134088 n

end

end A134086.P14863718694463305582

/-! ## A134086.P13559152417560400515

`A134088(n)*A219676(n)`
-/

namespace A134086.P13559152417560400515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134088 n * A219676 n

end

end A134086.P13559152417560400515

/-! ## A134086.P14645950990455741767

`A134088(n)*A242420(A000079(n))`
-/

namespace A134086.P14645950990455741767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134088 n * A242420 (A000079 n).toNat

end

end A134086.P14645950990455741767

/-! ## A134086.P8051911159926599541

`A134088(n)*A329886(A000225(n))`
-/

namespace A134086.P8051911159926599541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134088 n * A329886 (A000225 n).toNat

end

end A134086.P8051911159926599541

/-! ## A134086.P12851535582440583019

`A134087(n)*A134088(n)/A134089(n)`
-/

namespace A134086.P12851535582440583019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134087 n * A134088 n : ℚ) / (A134089 n : ℚ)

end

end A134086.P12851535582440583019

/-!
# A134087: a(n) = [x^n] G(x)^(2^(n+1)) where G(x) satisfies: [x^(n+1)] G(x)^(2^n) = [x^n] G(x)^(2^n) for n>=0 and G(2x) is the g.f. of A134084.

The programs for A134087, there is no canonical definition to state claims against.
-/

/-! ## A134087.P8791511789896654417

`2^n*A134089(n)`
-/

namespace A134087.P8791511789896654417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A134089 n

end

end A134087.P8791511789896654417

/-! ## A134087.P3349575923644404901

`A134089(n)*A219531(n)`
-/

namespace A134087.P3349575923644404901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134089 n * A219531 n

end

end A134087.P3349575923644404901

/-! ## A134087.P15546233681394056001

`A134089(n)*A219676(n)`
-/

namespace A134087.P15546233681394056001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134089 n * A219676 n

end

end A134087.P15546233681394056001

/-! ## A134087.P8436879860819704996

`A134089(n)*A256999(A000079(n))`
-/

namespace A134087.P8436879860819704996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134089 n * A256999 (A000079 n).toNat

end

end A134087.P8436879860819704996

/-! ## A134087.P17332322786854394677

`A134086(n)*A134089(n)/A134088(n)`
-/

namespace A134087.P17332322786854394677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134086 n * A134089 n : ℚ) / (A134088 n : ℚ)

end

end A134087.P17332322786854394677

/-!
# A134088: a(n) = [x^n] G(x)^(2^n)/2^n where G(x) satisfies: [x^(n+1)] G(x)^(2^n) = [x^n] G(x)^(2^n) for n>=0 and G(2x) is the g.f. of A134084.

The programs for A134088, there is no canonical definition to state claims against.
-/

/-! ## A134088.P9554165248703706776

`A134086(n)/2^n`
-/

namespace A134088.P9554165248703706776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134086 n : ℚ) / (2 ^ n : ℚ)

end

end A134088.P9554165248703706776

/-! ## A134088.P4409219298539514687

`floor(A134086(n)/A000079(n))`
-/

namespace A134088.P4409219298539514687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134086 n : ℚ) / (A000079 n : ℚ)⌋

end

end A134088.P4409219298539514687

/-! ## A134088.P11036365973156366537

`ceil(A134086(n)/∑[A011782(n)])`
-/

namespace A134088.P11036365973156366537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134086 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A134088.P11036365973156366537

/-! ## A134088.P1117219897566177826

`ceil(A134086(n)/record[A140426(n)])`
-/

namespace A134088.P1117219897566177826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134086 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A134088.P1117219897566177826

/-! ## A134088.P10772533302256611731

`A134086(n)/A134087(n)*A134089(n)`
-/

namespace A134088.P10772533302256611731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134086 n : ℚ) / (A134087 n : ℚ) * (A134089 n : ℚ)

end

end A134088.P10772533302256611731

/-!
# A134089: a(n) = [x^n] G(x)^(2^(n+1))/2^n where G(x) satisfies: [x^(n+1)] G(x)^(2^n) = [x^n] G(x)^(2^n) for n>=0 and G(2x) is the g.f. of A134084.

The programs for A134089, there is no canonical definition to state claims against.
-/

/-! ## A134089.P10905054352115475910

`A134087(n)/2^n`
-/

namespace A134089.P10905054352115475910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134087 n : ℚ) / (2 ^ n : ℚ)

end

end A134089.P10905054352115475910

/-! ## A134089.P13916930572765073231

`floor(A134087(n)/A000079(n))`
-/

namespace A134089.P13916930572765073231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134087 n : ℚ) / (A000079 n : ℚ)⌋

end

end A134089.P13916930572765073231

/-! ## A134089.P11393216058313876695

`floor(A134087(n)/A219531(n))`
-/

namespace A134089.P11393216058313876695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134087 n : ℚ) / (A219531 n : ℚ)⌋

end

end A134089.P11393216058313876695

/-! ## A134089.P5559796447975276855

`ceil(A134087(n)/∑[A011782(n)])`
-/

namespace A134089.P5559796447975276855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134087 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A134089.P5559796447975276855

/-! ## A134089.P2431815238549088554

`A185284(n)+A134087(n)/A000079(n)`
-/

namespace A134089.P2431815238549088554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185284 n : ℚ) + (A134087 n : ℚ) / (A000079 n : ℚ)

end

end A134089.P2431815238549088554

/-!
# A134090: Triangle, read by rows, where T(n,k) = [(I + D*C)^n](n,k); that is, row n of T = row n of (I + D*C)^n for n>=0 where C denotes Pascal's triangle, I the identity matrix and D a matrix where D(n+1,n)=1 and zeros elsewhere.

The programs for A134090, there is no canonical definition to state claims against.
-/

/-! ## A134090.P8003104390599719493

`A367580(A200659(n))`
-/

namespace A134090.P8003104390599719493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367580 (A200659 n).toNat

end

end A134090.P8003104390599719493

/-! ## A134090.P3676278765099350394

`A285708(A200659(n)²)`
-/

namespace A134090.P3676278765099350394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285708 (A200659 n ^ 2).toNat

end

end A134090.P3676278765099350394

/-! ## A134090.P17079075023970950657

`A285708(A200659(n)^2)`
-/

namespace A134090.P17079075023970950657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285708 (A200659 n ^ 2).toNat

end

end A134090.P17079075023970950657

/-! ## A134090.P999060211890755063

`A285708(∏{d}[A200659(n), #])`
-/

namespace A134090.P999060211890755063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285708 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A134090.P999060211890755063

/-! ## A134090.P7511223154277554129

`A104980(n)+A056626(A000105(n))`
-/

namespace A134090.P7511223154277554129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n + A056626 (A000105 n).toNat

end

end A134090.P7511223154277554129

/-!
# A134091: Column 1 of triangle A134090.

The programs for A134091, there is no canonical definition to state claims against.
-/

/-! ## A134091.P6701244464240698718

`record[A134090(comp[∑[n]])]`
-/

namespace A134091.P6701244464240698718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134091.P6701244464240698718

/-! ## A134091.P15631168895167375734

`A134090(∑[n+1]+1)`
-/

namespace A134091.P15631168895167375734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134091.P15631168895167375734

/-! ## A134091.P18151580954171678107

`record[gcd(Δ[round(sqrt(2*n))²], A134090(n))]`
-/

namespace A134091.P18151580954171678107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f2 (n + 1) - f2 n) (A134090 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134091.P18151580954171678107

/-! ## A134091.P582765461699656706

`record[A133607(n)*A134090(n)]`
-/

namespace A134091.P582765461699656706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 n * A134090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134091.P582765461699656706

/-! ## A134091.P12791338795696379649

`record[A134090(n)/A131843(n)]`
-/

namespace A134091.P12791338795696379649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134090 n : ℚ) / (A131843 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134091.P12791338795696379649

/-!
# A134092: Column 2 of triangle A134090.

The programs for A134092, there is no canonical definition to state claims against.
-/

/-! ## A134092.P9330907274995939479

`record[A134090(∑[n]+2)]`
-/

namespace A134092.P9330907274995939479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134092.P9330907274995939479

/-! ## A134092.P16345647472825211778

`A134090(∑[n+2]+3)`
-/

namespace A134092.P16345647472825211778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A134092.P16345647472825211778

/-! ## A134092.P7915918955098451601

`record[gcd(A134090(n), A334568(n))]`
-/

namespace A134092.P7915918955098451601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134090 n) (A334568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134092.P7915918955098451601

/-! ## A134092.P15486044937250436395

`record[gcd(A134090(n+2), A163351(n))]`
-/

namespace A134092.P15486044937250436395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134090 (n + 2)) (A163351 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134092.P15486044937250436395

/-!
# A134093: Column 3 of triangle A134090.

The programs for A134093, there is no canonical definition to state claims against.
-/

/-! ## A134093.P4220371975314234643

`A134090(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A134093.P4220371975314234643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134093.P4220371975314234643

/-! ## A134093.P2354417349261488657

`A134090(A167614(n+2))`
-/

namespace A134093.P2354417349261488657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (A167614 (n + 2)).toNat

end

end A134093.P2354417349261488657

/-! ## A134093.P11448678923965161972

`A134090(A141214(n)+6)`
-/

namespace A134093.P11448678923965161972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (A141214 n + 6).toNat

end

end A134093.P11448678923965161972

/-!
# A134094: Binomial convolution of the Stirling numbers of the second kind.

The programs for A134094, there is no canonical definition to state claims against.
-/

/-! ## A134094.P9009542699184461031

`A271702(∑[n+2]-1)`
-/

namespace A134094.P9009542699184461031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A134094.P9009542699184461031

/-! ## A134094.P15994568457712007673

`record[A271702(gcd(n, A049310(n)))]`
-/

namespace A134094.P15994568457712007673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 (Int.gcd (n : ℤ) (A049310 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134094.P15994568457712007673

/-! ## A134094.P16956130380165986014

`record[A271702(and(n, A097807(n)))]`
-/

namespace A134094.P16956130380165986014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 (Int.land (n : ℤ) (A097807 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134094.P16956130380165986014

/-! ## A134094.P2185049101417280912

`record[A271702(A300997(n+1))]`
-/

namespace A134094.P2185049101417280912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 (A300997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134094.P2185049101417280912

/-! ## A134094.P5250261759164283040

`record[gcd(A101276(n), A271702(n))]`
-/

namespace A134094.P5250261759164283040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101276 n) (A271702 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134094.P5250261759164283040

/-!
# A134095: Expansion of e.g.f. A(x) = 1/(1 - LambertW(-x)^2).

The programs for A134095, there is no canonical definition to state claims against.
-/

/-! ## A134095.P17431876528819927273

`n*A133297(n)-A277458(n)`
-/

namespace A134095.P17431876528819927273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133297 n - A277458 n

end

end A134095.P17431876528819927273

/-! ## A134095.P15145529939390851164

`(A000312(n)-A277458(n))/2`
-/

namespace A134095.P15145529939390851164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n - A277458 n : ℚ) / 2

end

end A134095.P15145529939390851164

/-! ## A134095.P17966111923654326859

`A000312(n)-n*A133297(n)`
-/

namespace A134095.P17966111923654326859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - (n : ℤ) * A133297 n

end

end A134095.P17966111923654326859

/-! ## A134095.P6271013504767741095

`(A000038(n)+n)^n-n*A133297(n)`
-/

namespace A134095.P6271013504767741095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n + (n : ℤ)) ^ n - (n : ℤ) * A133297 n

end

end A134095.P6271013504767741095

/-! ## A134095.P6416375566150555478

`A000312(n)+n*A133297(n)*A057428(n)`
-/

namespace A134095.P6416375566150555478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + (n : ℤ) * A133297 n * A057428 n

end

end A134095.P6416375566150555478

/-!
# A134097: a(n) = 2^[n(n+1) - A000120(n)] * [x^n] 1/(1-x)^(1/2^n) for n>=0, where A000120(n) = number of 1's in binary expansion of n.

The programs for A134097, there is no canonical definition to state claims against.
-/

/-! ## A134097.P9412644961674675551

`lcm(8, A159558(n))/8`
-/

namespace A134097.P9412644961674675551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (A159558 n) : ℚ) / 8

end

end A134097.P9412644961674675551

/-! ## A134097.P157753847423247634

`A159558(n)/A001316(n)`
-/

namespace A134097.P157753847423247634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159558 n : ℚ) / (A001316 n : ℚ)

end

end A134097.P157753847423247634

/-! ## A134097.P17015947996774589281

`A159558(n)/Δ[A006046(n)]`
-/

namespace A134097.P17015947996774589281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159558 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A134097.P17015947996774589281

/-! ## A134097.P144124361751991045

`A159558(n)/(A038573(n)+1)`
-/

namespace A134097.P144124361751991045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159558 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A134097.P144124361751991045

/-! ## A134097.P3131906809296335855

`A159558(n)/gcd(8, A106184(n))`
-/

namespace A134097.P3131906809296335855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159558 n : ℚ) / (Int.gcd 8 (A106184 n) : ℚ)

end

end A134097.P3131906809296335855

/-!
# A134098: a(n) = 2^[n(n+1) - A000120(n)] * [x^n] (1+x)^(1/2^n) for n>=0, where A000120(n) = number of 1's in binary expansion of n.

The programs for A134098, there is no canonical definition to state claims against.
-/

/-! ## A134098.P8805027666171953504

`A159478(n)/A001316(n)`
-/

namespace A134098.P8805027666171953504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159478 n : ℚ) / (A001316 n : ℚ)

end

end A134098.P8805027666171953504

/-! ## A134098.P12112540580021757309

`A159478(n)/Δ[A006046(n)]`
-/

namespace A134098.P12112540580021757309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159478 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A134098.P12112540580021757309

/-! ## A134098.P3061586004385403092

`A159478(n)/(A038573(n)+1)`
-/

namespace A134098.P3061586004385403092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159478 n : ℚ) / (A038573 n + 1 : ℚ)

end

end A134098.P3061586004385403092

/-! ## A134098.P1954705541484514324

`A159478(n)/gcd(8, A106184(n))`
-/

namespace A134098.P1954705541484514324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159478 n : ℚ) / (Int.gcd 8 (A106184 n) : ℚ)

end

end A134098.P1954705541484514324

/-! ## A134098.P16642042358652305845

`A159478(n)/gcd(64, A159558(n))`
-/

namespace A134098.P16642042358652305845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159478 n : ℚ) / (Int.gcd 64 (A159558 n) : ℚ)

end

end A134098.P16642042358652305845

/-!
# A134099: Odd nonprimes np such that np-2 is a prime number but np+2 is not.

The programs for A134099, the canonical program `A134099.P11301646531831205665` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134099 has offset 1).

The definition of A134099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134099.P13798707439906506782

`A083370(n+1)+2`
-/

namespace A134099.P13798707439906506782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) + 2

end

end A134099.P13798707439906506782

namespace A134099

/-- `A083370(n+1)+2` -/
def P13798707439906506782.Spec : Prop :=
  ∀ n, P13798707439906506782.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P15278938982504235895

`A130038(n+1)-5`
-/

namespace A134099.P15278938982504235895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130038 (n + 1) - 5

end

end A134099.P15278938982504235895

namespace A134099

/-- `A130038(n+1)-5` -/
def P15278938982504235895.Spec : Prop :=
  ∀ n, P15278938982504235895.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P4864707090050066247

`eq[5, A175851(n+2)]`
-/

namespace A134099.P4864707090050066247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134099.P4864707090050066247

namespace A134099

/-- `eq[5, A175851(n+2)]` -/
def P4864707090050066247.Spec : Prop :=
  ∀ n, (P4864707090050066247.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P11750378881484066700

`eq[5, A103509(n+3)]`
-/

namespace A134099.P11750378881484066700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134099.P11750378881484066700

namespace A134099

/-- `eq[5, A103509(n+3)]` -/
def P11750378881484066700.Spec : Prop :=
  ∀ n, (P11750378881484066700.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P15785549705006405945

`p?[A264722(n+1)-2]+2`
-/

namespace A134099.P15785549705006405945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264722 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A134099.P15785549705006405945

namespace A134099

/-- `p?[A264722(n+1)-2]+2` -/
def P15785549705006405945.Spec : Prop :=
  ∀ n, P15785549705006405945.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P2676543363465839770

`p?[A025583(n+1)-4]+2`
-/

namespace A134099.P2676543363465839770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A134099.P2676543363465839770

namespace A134099

/-- `p?[A025583(n+1)-4]+2` -/
def P2676543363465839770.Spec : Prop :=
  ∀ n, P2676543363465839770.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P7698257249463176929

`A007429(A083370(n+1))`
-/

namespace A134099.P7698257249463176929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A083370 (n + 1)).toNat

end

end A134099.P7698257249463176929

namespace A134099

/-- `A007429(A083370(n+1))` -/
def P7698257249463176929.Spec : Prop :=
  ∀ n, P7698257249463176929.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P2183662966856306418

`A119257(A134101(n+1))`
-/

namespace A134099.P2183662966856306418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (A134101 (n + 1)).toNat

end

end A134099.P2183662966856306418

namespace A134099

/-- `A119257(A134101(n+1))` -/
def P2183662966856306418.Spec : Prop :=
  ∀ n, P2183662966856306418.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P15218146838836664182

`A049591(lt[1, A047846(n+1)])+2`
-/

namespace A134099.P15218146838836664182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 2

end

end A134099.P15218146838836664182

namespace A134099

/-- `A049591(lt[1, A047846(n+1)])+2` -/
def P15218146838836664182.Spec : Prop :=
  ∀ n, P15218146838836664182.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P11301646531831205665

`A045319(lt[1, A100820(n+1)])+2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134099

/-- `A045319(lt[1, A100820(n+1)])+2` -/
def P11301646531831205665.Spec : Prop :=
  ∀ n, P11301646531831205665.a n = A134099 (n + 1)

theorem P11301646531831205665.correct : P11301646531831205665.Spec := by
  intro n
  simp only [A134099, Nat.add_sub_cancel]

end A134099

/-! ## A134099.P6673840043305970850

`A065091(lt[1, A100820(n+1)])+2`
-/

namespace A134099.P6673840043305970850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 2

end

end A134099.P6673840043305970850

namespace A134099

/-- `A065091(lt[1, A100820(n+1)])+2` -/
def P6673840043305970850.Spec : Prop :=
  ∀ n, P6673840043305970850.a n = A134099 (n + 1)

end A134099

/-! ## A134099.P15381716313101143548

`∩[A007921(n+1), A051035(n+1)]`
-/

namespace A134099.P15381716313101143548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134099.P15381716313101143548

namespace A134099

/-- `∩[A007921(n+1), A051035(n+1)]` -/
def P15381716313101143548.Spec : Prop :=
  ∀ n, (P15381716313101143548.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P6299961735864175424

`∩[A007921(n+1), A107986(n+1)]`
-/

namespace A134099.P6299961735864175424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134099.P6299961735864175424

namespace A134099

/-- `∩[A007921(n+1), A107986(n+1)]` -/
def P6299961735864175424.Spec : Prop :=
  ∀ n, (P6299961735864175424.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P13142740295212848475

`∩[A007921(n+1), A107987(n+1)]`
-/

namespace A134099.P13142740295212848475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134099.P13142740295212848475

namespace A134099

/-- `∩[A007921(n+1), A107987(n+1)]` -/
def P13142740295212848475.Spec : Prop :=
  ∀ n, (P13142740295212848475.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P1200002404602060590

`∩[A048974(n+1), A076639(n+1)]`
-/

namespace A134099.P1200002404602060590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134099.P1200002404602060590

namespace A134099

/-- `∩[A048974(n+1), A076639(n+1)]` -/
def P1200002404602060590.Spec : Prop :=
  ∀ n, (P1200002404602060590.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P7245742058656132928

`∩[A052147(n+1), A076639(n+1)]`
-/

namespace A134099.P7245742058656132928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134099.P7245742058656132928

namespace A134099

/-- `∩[A052147(n+1), A076639(n+1)]` -/
def P7245742058656132928.Spec : Prop :=
  ∀ n, (P7245742058656132928.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P15706551672765939352

`∩[A007921(n+1), A160666(n+1)]`
-/

namespace A134099.P15706551672765939352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134099.P15706551672765939352

namespace A134099

/-- `∩[A007921(n+1), A160666(n+1)]` -/
def P15706551672765939352.Spec : Prop :=
  ∀ n, (P15706551672765939352.a n : ℤ) = A134099 (n + 1)

end A134099

/-! ## A134099.P449954997638744392

`∩[A076639(n+1), A107986(n+1)]`
-/

namespace A134099.P449954997638744392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134099.P449954997638744392

namespace A134099

/-- `∩[A076639(n+1), A107986(n+1)]` -/
def P449954997638744392.Spec : Prop :=
  ∀ n, (P449954997638744392.a n : ℤ) = A134099 (n + 1)

end A134099

