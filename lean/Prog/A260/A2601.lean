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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A260100: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260100, there is no canonical definition to state claims against.
-/

/-! ## A260100.P5416733661095556979

`A260106(∑[n+1]+2)`
-/

namespace A260100.P5416733661095556979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260100.P5416733661095556979

/-! ## A260100.P11065284735903954872

`record[A010054(n)*A260106(n+2)]`
-/

namespace A260100.P11065284735903954872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260100.P11065284735903954872

/-! ## A260100.P10081774155226931165

`record[gcd(A260106(n+2), A338033(n+1))]`
-/

namespace A260100.P10081774155226931165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260106 (n + 2)) (A338033 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260100.P10081774155226931165

/-! ## A260100.P12888197034631073927

`record[A260106(n+2)/A262616(n+2)]`
-/

namespace A260100.P12888197034631073927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260106 (n + 2) : ℚ) / (A262616 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260100.P12888197034631073927

/-! ## A260100.P2431183573326559264

`A260106(A000096(n+1))*A340785(2*n+1)`
-/

namespace A260100.P2431183573326559264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A000096 (n + 1)).toNat * A340785 (2 * n + 1)

end

end A260100.P2431183573326559264

/-!
# A260101: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260101, there is no canonical definition to state claims against.
-/

/-! ## A260101.P17774173011346594184

`A260106(∑[n+2]+4)`
-/

namespace A260101.P17774173011346594184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260101.P17774173011346594184

/-! ## A260101.P8052383810548620214

`and(-1, A260106(A167614(n+1)))`
-/

namespace A260101.P8052383810548620214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A260106 (A167614 (n + 1)).toNat)

end

end A260101.P8052383810548620214

/-! ## A260101.P7955570775147999720

`record[A260106(n+4)/A078812(n)]`
-/

namespace A260101.P7955570775147999720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260106 (n + 4) : ℚ) / (A078812 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260101.P7955570775147999720

/-! ## A260101.P8960320152827959676

`record[gcd(A260106(n+4), A338033(n+2))]`
-/

namespace A260101.P8960320152827959676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260106 (n + 4)) (A338033 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260101.P8960320152827959676

/-!
# A260102: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260102, there is no canonical definition to state claims against.
-/

/-! ## A260102.P5381352607543457136

`A260106(∑[n+3]+7)`
-/

namespace A260102.P5381352607543457136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260102.P5381352607543457136

/-! ## A260102.P3199784974143029138

`or(char[1], A260106(A052905(n)+9))`
-/

namespace A260102.P3199784974143029138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260106 (A052905 n + 9).toNat)

end

end A260102.P3199784974143029138

/-! ## A260102.P17581885154483079219

`A007318(C(2, n))*A260106(A052905(n)+9)`
-/

namespace A260102.P17581885154483079219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260106 (A052905 n + 9).toNat

end

end A260102.P17581885154483079219

/-! ## A260102.P15522358217107170888

`A260106(A052905(n)+9)+A008683(4*(n+1))`
-/

namespace A260102.P15522358217107170888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A052905 n + 9).toNat + A008683 (4 * (n + 1))

end

end A260102.P15522358217107170888

/-! ## A260102.P15305638593757987235

`A007318(val(n+1, 4))*A260106(A052905(n)+9)`
-/

namespace A260102.P15305638593757987235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A260106 (A052905 n + 9).toNat

end

end A260102.P15305638593757987235

/-!
# A260103: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260103, there is no canonical definition to state claims against.
-/

/-! ## A260103.P14557429114727393086

`A260106(A374005(n+1))`
-/

namespace A260103.P14557429114727393086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A374005 (n + 1)).toNat

end

end A260103.P14557429114727393086

/-! ## A260103.P4931377787161735852

`A260106(A155212(n)+13)`
-/

namespace A260103.P4931377787161735852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A155212 n + 13).toNat

end

end A260103.P4931377787161735852

/-! ## A260103.P17798851998466080721

`A260106(A056000(n)+15)`
-/

namespace A260103.P17798851998466080721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A056000 n + 15).toNat

end

end A260103.P17798851998466080721

/-! ## A260103.P1664958967746356659

`A260106(∑[A020705(n)]+11)`
-/

namespace A260103.P1664958967746356659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A260103.P1664958967746356659

/-! ## A260103.P16345735229183055516

`A260106(A145018(n+5)+1)`
-/

namespace A260103.P16345735229183055516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A145018 (n + 5) + 1).toNat

end

end A260103.P16345735229183055516

/-!
# A260104: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260104, there is no canonical definition to state claims against.
-/

/-! ## A260104.P9402272454949961153

`A260106(∑[n+5]+16)`
-/

namespace A260104.P9402272454949961153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A260104.P9402272454949961153

/-! ## A260104.P14655230909644310265

`A260106(A000124(n+5)+5)+char[24]`
-/

namespace A260104.P14655230909644310265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260104.P14655230909644310265

/-! ## A260104.P296782647891904855

`A007318(C(2, n))*A260106(A000124(n+5)+5)`
-/

namespace A260104.P296782647891904855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260106 (A000124 (n + 5) + 5).toNat

end

end A260104.P296782647891904855

/-! ## A260104.P14626045970946178893

`A000041(and(1, -n))*A260106(A000124(n+5)+5)`
-/

namespace A260104.P14626045970946178893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A260106 (A000124 (n + 5) + 5).toNat

end

end A260104.P14626045970946178893

/-! ## A260104.P16213327944905405679

`A000041(C(2, n+2))*A260106(A000124(n+5)+5)`
-/

namespace A260104.P16213327944905405679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A260106 (A000124 (n + 5) + 5).toNat

end

end A260104.P16213327944905405679

/-!
# A260105: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260105, there is no canonical definition to state claims against.
-/

/-! ## A260105.P12173424097109393886

`A260106(A374008(n+1))`
-/

namespace A260105.P12173424097109393886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A374008 (n + 1)).toNat

end

end A260105.P12173424097109393886

/-! ## A260105.P7321091057988808675

`A260106(A056119(n)+28)`
-/

namespace A260105.P7321091057988808675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A056119 n + 28).toNat

end

end A260105.P7321091057988808675

/-! ## A260105.P6367992348640965865

`A260106(A000124(n+6)+6)`
-/

namespace A260105.P6367992348640965865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A000124 (n + 6) + 6).toNat

end

end A260105.P6367992348640965865

/-! ## A260105.P7890407342792543852

`A260106(A000096(n+5)+8)`
-/

namespace A260105.P7890407342792543852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A000096 (n + 5) + 8).toNat

end

end A260105.P7890407342792543852

/-! ## A260105.P13039901107006738123

`A260106(A000217(n+6)+7)`
-/

namespace A260105.P13039901107006738123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A000217 (n + 6) + 7).toNat

end

end A260105.P13039901107006738123

/-!
# A260108: Primes of the form sigma(k) + product of divisors of k.

The programs for A260108, there is no canonical definition to state claims against.
-/

/-! ## A260108.P11414987070735027110

`A076720(A259973(n+1))`
-/

namespace A260108.P11414987070735027110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (A259973 (n + 1)).toNat

end

end A260108.P11414987070735027110

/-! ## A260108.P4615821498347759639

`p?[A076720(A133813(n+1))]`
-/

namespace A260108.P4615821498347759639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (A133813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260108.P4615821498347759639

/-! ## A260108.P12937629974855243649

`p?[A076720(n+1)]`
-/

namespace A260108.P12937629974855243649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260108.P12937629974855243649

/-!
# A260109: Expansion of f(x^3) * f(-x^3)^2 * psi(x)^2 / psi(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A260109, the canonical program `A260109.P720565460012442485` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260109 has offset 0).

The definition of A260109 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260109.P720565460012442485

`A124815(2*n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A260109

/-- `A124815(2*n+1)` -/
def P720565460012442485.Spec : Prop :=
  ∀ n, P720565460012442485.a n = A260109 n

theorem P720565460012442485.correct : P720565460012442485.Spec := by
  intro n
  simp only [A260109]

end A260109

/-! ## A260109.P13779546799260168037

`abs(A209613(2*n+1))`
-/

namespace A260109.P13779546799260168037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209613 (2 * n + 1)|

end

end A260109.P13779546799260168037

namespace A260109

/-- `abs(A209613(2*n+1))` -/
def P13779546799260168037.Spec : Prop :=
  ∀ n, P13779546799260168037.a n = A260109 n

end A260109

/-! ## A260109.P15651568364720163295

`lcm(A209613(2*n+1), A209615(n+1))`
-/

namespace A260109.P15651568364720163295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A209613 (2 * n + 1)) (A209615 (n + 1))

end

end A260109.P15651568364720163295

namespace A260109

/-- `lcm(A209613(2*n+1), A209615(n+1))` -/
def P15651568364720163295.Spec : Prop :=
  ∀ n, (P15651568364720163295.a n : ℤ) = A260109 n

end A260109

/-! ## A260109.P6129713036281581962

`A034947(2*n+1)*A209613(2*n+1)`
-/

namespace A260109.P6129713036281581962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A209613 (2 * n + 1)

end

end A260109.P6129713036281581962

namespace A260109

/-- `A034947(2*n+1)*A209613(2*n+1)` -/
def P6129713036281581962.Spec : Prop :=
  ∀ n, P6129713036281581962.a n = A260109 n

end A260109

/-! ## A260109.P4109172161748905758

`A209613(2*n+1)*A209615(2*n+1)`
-/

namespace A260109.P4109172161748905758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209613 (2 * n + 1) * A209615 (2 * n + 1)

end

end A260109.P4109172161748905758

namespace A260109

/-- `A209613(2*n+1)*A209615(2*n+1)` -/
def P4109172161748905758.Spec : Prop :=
  ∀ n, P4109172161748905758.a n = A260109 n

end A260109

/-! ## A260109.P10177495766734141674

`A124815(A005408(n))%A016969(n)`
-/

namespace A260109.P10177495766734141674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124815 (A005408 n).toNat) (A016969 n)

end

end A260109.P10177495766734141674

namespace A260109

/-- `A124815(A005408(n))%A016969(n)` -/
def P10177495766734141674.Spec : Prop :=
  ∀ n, P10177495766734141674.a n = A260109 n

end A260109

/-! ## A260109.P4540619038404261244

`A209613(A123168(n+2))`
-/

namespace A260109.P4540619038404261244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209613 (A123168 (n + 2)).toNat

end

end A260109.P4540619038404261244

namespace A260109

/-- `A209613(A123168(n+2))` -/
def P4540619038404261244.Spec : Prop :=
  ∀ n, P4540619038404261244.a n = A260109 n

end A260109

/-! ## A260109.P13262769956724509864

`A124815(A016813(n)+1)/2`
-/

namespace A260109.P13262769956724509864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124815 (A016813 n + 1).toNat : ℚ) / 2

end

end A260109.P13262769956724509864

namespace A260109

/-- `A124815(A016813(n)+1)/2` -/
def P13262769956724509864.Spec : Prop :=
  ∀ n, P13262769956724509864.a n = (A260109 n : ℚ)

end A260109

/-! ## A260109.P15191199318293714815

`A124815(2*A005408(n))/2`
-/

namespace A260109.P15191199318293714815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124815 (2 * A005408 n).toNat : ℚ) / 2

end

end A260109.P15191199318293714815

namespace A260109

/-- `A124815(2*A005408(n))/2` -/
def P15191199318293714815.Spec : Prop :=
  ∀ n, P15191199318293714815.a n = (A260109 n : ℚ)

end A260109

/-! ## A260109.P10820876060031565803

`A209613(A123169(n+2))`
-/

namespace A260109.P10820876060031565803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209613 (A123169 (n + 2)).toNat

end

end A260109.P10820876060031565803

namespace A260109

/-- `A209613(A123169(n+2))` -/
def P10820876060031565803.Spec : Prop :=
  ∀ n, P10820876060031565803.a n = A260109 n

end A260109

/-!
# A260110: Expansion of f(-x, -x) * f(x^4, x^8) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A260110, there is no canonical definition to state claims against.
-/

/-! ## A260110.P11591153875866362843

`A134177(3*n)`
-/

namespace A260110.P11591153875866362843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (3 * n)

end

end A260110.P11591153875866362843

/-! ## A260110.P4152507989236333502

`A190615(3*n)`
-/

namespace A260110.P4152507989236333502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (3 * n)

end

end A260110.P4152507989236333502

/-! ## A260110.P17594288886923101500

`A229723(6*n+1)`
-/

namespace A260110.P17594288886923101500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229723 (6 * n + 1)

end

end A260110.P17594288886923101500

/-! ## A260110.P5563830250825482199

`A033999(n)*A261115(n)`
-/

namespace A260110.P5563830250825482199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261115 n

end

end A260110.P5563830250825482199

/-! ## A260110.P16605942869336502362

`A087960(n)*A261115(n)`
-/

namespace A260110.P16605942869336502362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A261115 n

end

end A260110.P16605942869336502362

/-! ## A260110.P6983515426435626525

`A094267(n)*A261115(n)`
-/

namespace A260110.P6983515426435626525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A261115 n

end

end A260110.P6983515426435626525

/-! ## A260110.P15256850036977993839

`A219977(n)*A261115(n)`
-/

namespace A260110.P15256850036977993839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A261115 n

end

end A260110.P15256850036977993839

/-! ## A260110.P6013853707583889692

`A071935(n+1)*A261115(n)`
-/

namespace A260110.P6013853707583889692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A261115 n

end

end A260110.P6013853707583889692

/-! ## A260110.P1058161142471609052

`A261115(n)*A309873(n+1)`
-/

namespace A260110.P1058161142471609052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261115 n * A309873 (n + 1)

end

end A260110.P1058161142471609052

/-! ## A260110.P4176190447230193955

`A033999(n)*A263571(2*n)`
-/

namespace A260110.P4176190447230193955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263571 (2 * n)

end

end A260110.P4176190447230193955

/-! ## A260110.P3820111463054213904

`A033999(n)*A279947(2*n)`
-/

namespace A260110.P3820111463054213904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A279947 (2 * n)

end

end A260110.P3820111463054213904

/-! ## A260110.P7408122377271476962

`A020985(2*n+1)*A020985(n)*A128580(3*n)`
-/

namespace A260110.P7408122377271476962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A128580 (3 * n)

end

end A260110.P7408122377271476962

/-! ## A260110.P674927725849595321

`A257921(A071045(3*n))`
-/

namespace A260110.P674927725849595321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (A071045 (3 * n)).toNat

end

end A260110.P674927725849595321

/-! ## A260110.P10460358077388642811

`A259668(A014682(3*n))`
-/

namespace A260110.P10460358077388642811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (A014682 (3 * n)).toNat

end

end A260110.P10460358077388642811

/-! ## A260110.P16810346449028875574

`A000377(A008458(n)+1)*A087960(n)`
-/

namespace A260110.P16810346449028875574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A008458 n + 1).toNat * A087960 n

end

end A260110.P16810346449028875574

/-! ## A260110.P4730441206394995172

`A009001(2*n)*A192013(A016777(2*n))`
-/

namespace A260110.P4730441206394995172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A192013 (A016777 (2 * n)).toNat

end

end A260110.P4730441206394995172

/-! ## A260110.P1632379293312552810

`A000377(A067745(2*n+1))*A034947(2*n+1)`
-/

namespace A260110.P1632379293312552810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A067745 (2 * n + 1)).toNat * A034947 (2 * n + 1)

end

end A260110.P1632379293312552810

/-! ## A260110.P7302386976985350663

`A190611(A123167(3*n+1))`
-/

namespace A260110.P7302386976985350663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (A123167 (3 * n + 1)).toNat

end

end A260110.P7302386976985350663

/-! ## A260110.P16749544423488477079

`A261122(A063122(n+1))`
-/

namespace A260110.P16749544423488477079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (A063122 (n + 1)).toNat

end

end A260110.P16749544423488477079

/-! ## A260110.P8302273316680200027

`A261122(A298035(n+1))`
-/

namespace A260110.P8302273316680200027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (A298035 (n + 1)).toNat

end

end A260110.P8302273316680200027

/-!
# A260112: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 4.

The programs for A260112, the canonical program `A260112.P11147998696318706904` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260112 has offset 0).

The definition of A260112 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260112.P11147998696318706904

`A053737(n)+A110591(n)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260112

/-- `A053737(n)+A110591(n)-1` -/
def P11147998696318706904.Spec : Prop :=
  ∀ n, P11147998696318706904.a n = A260112 n

theorem P11147998696318706904.correct : P11147998696318706904.Spec := by
  intro n
  simp only [A260112]

end A260112

/-! ## A260112.P4301309991260484517

`a(floor(n/4))+n%4+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A260112.P4301309991260484517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + n % 4 + 1

end

end A260112.P4301309991260484517

namespace A260112

/-- `a(floor(n/4))+n%4+1` -/
def P4301309991260484517.Spec : Prop :=
  ∀ n, (P4301309991260484517.a n : ℤ) = A260112 n

end A260112

/-! ## A260112.P12543000654735730747

`∑{digits}[A007090(n), #+1]-1`
-/

namespace A260112.P12543000654735730747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).sum : ℕ) : ℤ) - 1

end

end A260112.P12543000654735730747

namespace A260112

/-- `∑{digits}[A007090(n), #+1]-1` -/
def P12543000654735730747.Spec : Prop :=
  ∀ n, P12543000654735730747.a n = A260112 n

end A260112

/-! ## A260112.P14934334022818039712

`A252464(A101942(n))`
-/

namespace A260112.P14934334022818039712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A101942 n).toNat

end

end A260112.P14934334022818039712

namespace A260112

/-- `A252464(A101942(n))` -/
def P14934334022818039712.Spec : Prop :=
  ∀ n, P14934334022818039712.a n = A260112 n

end A260112

/-!
# A260113: Maximum number of queens on an n X n chessboard such that no queen attacks more than one other queen.

The programs for A260113, there is no canonical definition to state claims against.
-/

/-! ## A260113.P12546908683372030740

`comp[a(n-1)+4]` with `a(0)=0, a(1)=6, a(2)=7`
-/

namespace A260113.P12546908683372030740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 7] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A260113.P12546908683372030740

/-! ## A260113.P11982096824611334057

`comp[∑[and(4, a(n-3))]]` with `a(0)=0, a(1)=6, a(2)=1`
-/

namespace A260113.P11982096824611334057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 1] fun n f2 =>
  Nat.land 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A260113.P11982096824611334057

/-! ## A260113.P7210535318839944164

`comp[record[xor(n, a(n-1))]]` with `a(0)=0, a(1)=6, a(2)=0`
-/

namespace A260113.P7210535318839944164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 0] fun n f2 =>
  Nat.xor n (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A260113.P7210535318839944164

/-! ## A260113.P2936019825840229734

`comp[C(3, n²)+4*n-1]`
-/

namespace A260113.P2936019825840229734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (n ^ 2) + 4 * n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A260113.P2936019825840229734

/-! ## A260113.P8966053973557126916

`comp[xor(4*n, C(3, n²))-1]`
-/

namespace A260113.P8966053973557126916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (4 * n) (Nat.choose 3 (n ^ 2)) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A260113.P8966053973557126916

/-!
# A260114: Expansion of f(x)^4 * phi(-x^3) / phi(-x) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A260114, the canonical program `A260114.P13465454968350675607` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260114 has offset 0).

The definition of A260114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260114.P3273913171637551222

`A113421(6*n+1)`
-/

namespace A260114.P3273913171637551222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113421 (6 * n + 1)

end

end A260114.P3273913171637551222

namespace A260114

/-- `A113421(6*n+1)` -/
def P3273913171637551222.Spec : Prop :=
  ∀ n, P3273913171637551222.a n = A260114 n

end A260114

/-! ## A260114.P13465454968350675607

`A124815(6*n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A260114

/-- `A124815(6*n+1)` -/
def P13465454968350675607.Spec : Prop :=
  ∀ n, P13465454968350675607.a n = A260114 n

theorem P13465454968350675607.correct : P13465454968350675607.Spec := by
  intro n
  simp only [A260114]

end A260114

/-! ## A260114.P15637101172242431456

`A010684(n)*A279261(2*n)`
-/

namespace A260114.P15637101172242431456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A279261 (2 * n)

end

end A260114.P15637101172242431456

namespace A260114

/-- `A010684(n)*A279261(2*n)` -/
def P15637101172242431456.Spec : Prop :=
  ∀ n, P15637101172242431456.a n = A260114 n

end A260114

/-! ## A260114.P15129322306483870346

`A260109(3*n)`
-/

namespace A260114.P15129322306483870346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260109 (3 * n)

end

end A260114.P15129322306483870346

namespace A260114

/-- `A260109(3*n)` -/
def P15129322306483870346.Spec : Prop :=
  ∀ n, P15129322306483870346.a n = A260114 n

theorem P15129322306483870346.correct : P15129322306483870346.Spec := by
  intro n
  simp only [A260114, Nat.add_sub_cancel, A260114.P15129322306483870346.a, A260114.P13465454968350675607.a, A124815, A124815.P7342009755196343803.f1, A124815.P7342009755196343803.a, A260109, A260109.P720565460012442485.a, A080512, A080512.P14368604902377273702.a, A091338, A091338.P7387993790083234101.f1, A091338.P7387993790083234101.a, A005811, A005811.P8696411420205566785.a, A049347, A049347.P9996747395155426839.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A260114

/-! ## A260114.P10117733020938352229

`A260109(A008585(n))%A065765(n+1)`
-/

namespace A260114.P10117733020938352229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260109 (A008585 n).toNat) (A065765 (n + 1))

end

end A260114.P10117733020938352229

namespace A260114

/-- `A260109(A008585(n))%A065765(n+1)` -/
def P10117733020938352229.Spec : Prop :=
  ∀ n, P10117733020938352229.a n = A260114 n

end A260114

/-! ## A260114.P8665710870411237410

`A320150(A016921(n))/2`
-/

namespace A260114.P8665710870411237410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320150 (A016921 n).toNat : ℚ) / 2

end

end A260114.P8665710870411237410

namespace A260114

/-- `A320150(A016921(n))/2` -/
def P8665710870411237410.Spec : Prop :=
  ∀ n, P8665710870411237410.a n = (A260114 n : ℚ)

end A260114

/-! ## A260114.P11312948941861423628

`abs(A257656(A005408(3*n)))`
-/

namespace A260114.P11312948941861423628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257656 (A005408 (3 * n)).toNat|

end

end A260114.P11312948941861423628

namespace A260114

/-- `abs(A257656(A005408(3*n)))` -/
def P11312948941861423628.Spec : Prop :=
  ∀ n, P11312948941861423628.a n = A260114 n

end A260114

/-!
# A260118: Expansion of f(-x, -x^5) * psi(x^4) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A260118, there is no canonical definition to state claims against.
-/

/-! ## A260118.P8765775058433154880

`(-1)^n*A128582(n)`
-/

namespace A260118.P8765775058433154880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128582 n

end

end A260118.P8765775058433154880

/-! ## A260118.P11552194166178172806

`A128582(n)*A219977(n)`
-/

namespace A260118.P11552194166178172806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128582 n * A219977 n

end

end A260118.P11552194166178172806

/-! ## A260118.P2293461984190969614

`A128582(n)*A309873(n+1)`
-/

namespace A260118.P2293461984190969614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128582 n * A309873 (n + 1)

end

end A260118.P2293461984190969614

/-! ## A260118.P5125209816152943760

`A258587(2*n+1)/(2*A033999(n+1))`
-/

namespace A260118.P5125209816152943760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258587 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A260118.P5125209816152943760

/-! ## A260118.P12754613364479510088

`A190615(3*n+2)/2`
-/

namespace A260118.P12754613364479510088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190615 (3 * n + 2) : ℚ) / 2

end

end A260118.P12754613364479510088

/-!
# A260122: a(n) = floor( Product_{k = 1..n} k^(k/2) ).

The programs for A260122, there is no canonical definition to state claims against.
-/

/-! ## A260122.P13127268932523240348

`floor(sqrt(A002109(n+1)))`
-/

namespace A260122.P13127268932523240348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002109 (n + 1))

end

end A260122.P13127268932523240348

/-! ## A260122.P7654330445262287086

`floor(∏[sqrt((n+1)^(n+1))])`
-/

namespace A260122.P7654330445262287086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1) ^ (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A260122.P7654330445262287086

/-!
# A260123: The second infinite sequence of positive integers such that a(n) = A037445(a(1)+a(2)+...+a(n)) for all n>=1 (see also A260085).

The programs for A260123, there is no canonical definition to state claims against.
-/

/-! ## A260123.P6233338206929768363

`A260085(n+1)/2`
-/

namespace A260123.P6233338206929768363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260085 (n + 1) : ℚ) / 2

end

end A260123.P6233338206929768363

/-! ## A260123.P4016949152743249905

`A000010(A260085(n+1))`
-/

namespace A260123.P4016949152743249905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A260085 (n + 1)).toNat

end

end A260123.P4016949152743249905

/-! ## A260123.P4203632368638757583

`A057828(A260085(n+1)²)`
-/

namespace A260123.P4203632368638757583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A260085 (n + 1) ^ 2).toNat

end

end A260123.P4203632368638757583

/-! ## A260123.P16165174241309559859

`A274923(A260085(n+1)²)`
-/

namespace A260123.P16165174241309559859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A260085 (n + 1) ^ 2).toNat

end

end A260123.P16165174241309559859

/-! ## A260123.P17953342760369038147

`A004207(log2(A260085(n+1)))`
-/

namespace A260123.P17953342760369038147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 (SequenceMachineLib.roundAway (Real.logb 2 (A260085 (n + 1) : ℝ))).toNat

end

end A260123.P17953342760369038147

/-! ## A260123.P266747531637334830

`A004526(A260085(n+1)+1)`
-/

namespace A260123.P266747531637334830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A260085 (n + 1) + 1).toNat

end

end A260123.P266747531637334830

/-! ## A260123.P6226244548452401651

`A057979(A260085(n+1)+1)`
-/

namespace A260123.P6226244548452401651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A260085 (n + 1) + 1).toNat

end

end A260123.P6226244548452401651

/-! ## A260123.P15529491117432910163

`A168230(A260085(n+1)+1)`
-/

namespace A260123.P15529491117432910163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (A260085 (n + 1) + 1).toNat

end

end A260123.P15529491117432910163

/-! ## A260123.P12193214338066889741

`A003188(A260085(n+1)-1)`
-/

namespace A260123.P12193214338066889741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A260085 (n + 1) - 1).toNat

end

end A260123.P12193214338066889741

/-! ## A260123.P8780204699852646375

`A001316(A260085(n+1)-2)`
-/

namespace A260123.P8780204699852646375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A260085 (n + 1) - 2).toNat

end

end A260123.P8780204699852646375

/-! ## A260123.P397681935765628908

`A002265(2*A260085(n+1))`
-/

namespace A260123.P397681935765628908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A260085 (n + 1)).toNat

end

end A260123.P397681935765628908

/-! ## A260123.P6098704310554190455

`A000030(5*A260085(n+1))`
-/

namespace A260123.P6098704310554190455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (5 * A260085 (n + 1)).toNat

end

end A260123.P6098704310554190455

/-! ## A260123.P17566076817968878444

`A000005(log2(A260085(n+1))!)`
-/

namespace A260123.P17566076817968878444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A260085 (n + 1) : ℝ))).toNat)

end

end A260123.P17566076817968878444

/-! ## A260123.P2885552331618305824

`A260090(∏{e}[A260085(n+1), #])`
-/

namespace A260123.P2885552331618305824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260090 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A260123.P2885552331618305824

/-! ## A260123.P8745665150971254409

`A000079(log2(A260085(n+1))-1)`
-/

namespace A260123.P8745665150971254409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway (Real.logb 2 (A260085 (n + 1) : ℝ) - 1)).toNat

end

end A260123.P8745665150971254409

/-! ## A260123.P9430839983275089707

`A001222(sqrt(2^A260085(n+1)))`
-/

namespace A260123.P9430839983275089707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt ((2 : ℚ) ^ (A260085 (n + 1) : ℤ) : ℝ))).toNat

end

end A260123.P9430839983275089707

/-! ## A260123.P16139151919460249622

`A000005(val(A260085(n+1), 2)!)`
-/

namespace A260123.P16139151919460249622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (SequenceMachineLib.valuation (A260085 (n + 1)).toNat 2))

end

end A260123.P16139151919460249622

/-! ## A260123.P2249835871498264596

`and(15, A000108(A260085(n+1)-2))`
-/

namespace A260123.P2249835871498264596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A000108 (A260085 (n + 1) - 2).toNat)

end

end A260123.P2249835871498264596

/-! ## A260123.P13791344987518180116

`A000224(A260085(n+1)-ceil(atan(n+1)))`
-/

namespace A260123.P13791344987518180116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A260085 (n + 1) - ⌈Real.arctan (n + 1 : ℝ)⌉).toNat

end

end A260123.P13791344987518180116

/-! ## A260123.P3126246612457886268

`∏{p}[A000045(A260085(n+1)), A000005(#)]`
-/

namespace A260123.P3126246612457886268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A260085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p

end

end A260123.P3126246612457886268

/-!
# A260124: The second infinite sequence starting with a(0)=0 such that A(a(k)) = a(k-1) for all k>=1, where A(n) = n - A037445(n) (cf. A260084).

The programs for A260124, there is no canonical definition to state claims against.
-/

/-! ## A260124.P9290250674328864423

`A260084(n)/2`
-/

namespace A260124.P9290250674328864423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260084 n : ℚ) / 2

end

end A260124.P9290250674328864423

/-! ## A260124.P8868885376823675606

`A260123(n)+a(n-1)` with `a(0)=0`
-/

namespace A260124.P8868885376823675606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A260123 n + a (n - 1)

end

end A260124.P8868885376823675606

/-! ## A260124.P14478622355262146647

`a(n-1)+A260085(n)/2` with `a(0)=0`
-/

namespace A260124.P14478622355262146647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A260085 n : ℚ) / 2

end

end A260124.P14478622355262146647

/-! ## A260124.P10977929062177772126

`∑[A260123(abs(1-n)+1)]-2`
-/

namespace A260124.P10977929062177772126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A260124.P10977929062177772126

/-! ## A260124.P14169036199607216741

`∑[A260085(floor(acot(n)+n))/2]-1`
-/

namespace A260124.P14169036199607216741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260085 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260124.P14169036199607216741

/-! ## A260124.P2402693174795155906

`∑[A260085(abs(1-n)+1)/2]-2`
-/

namespace A260124.P2402693174795155906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260085 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A260124.P2402693174795155906

/-! ## A260124.P14321893081177757635

`(∑[A260085(round(sqrt(n²+1)))]-2)/2`
-/

namespace A260124.P14321893081177757635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260085 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 2 : ℤ) : ℚ) / 2

end

end A260124.P14321893081177757635

/-! ## A260124.P10187710525232210967

`abs(∑[A260123(A028310(n))]-1)`
-/

namespace A260124.P10187710525232210967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A260124.P10187710525232210967

/-! ## A260124.P12771235283757692306

`∪[∑[A260123(n+1)], A008605(n)²]`
-/

namespace A260124.P12771235283757692306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A260124.P12771235283757692306

/-! ## A260124.P11490638885361201945

`∑[(A260085(A028310(n))/2)%A157466(n)]`
-/

namespace A260124.P11490638885361201945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A260085 (A028310 n).toNat : ℚ) / 2)) (A157466 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260124.P11490638885361201945

/-!
# A260125: Primes having only {0, 2, 3} as digits.

The programs for A260125, there is no canonical definition to state claims against.
-/

/-! ## A260125.P8254205327488588277

`∩[A386042(n+1), A386045(n+1)]`
-/

namespace A260125.P8254205327488588277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P8254205327488588277

/-! ## A260125.P1255364313295837697

`∩[A386041(n+1), A386042(n+1)]`
-/

namespace A260125.P1255364313295837697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P1255364313295837697

/-! ## A260125.P14394660474384456939

`∩[A386041(n+1), A386045(n+1)]`
-/

namespace A260125.P14394660474384456939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P14394660474384456939

/-! ## A260125.P11112597786085299349

`∩[A386041(n+1), A386043(n+1)]`
-/

namespace A260125.P11112597786085299349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P11112597786085299349

/-! ## A260125.P15299425978682491733

`∩[A386042(n+1), A386043(n+1)]`
-/

namespace A260125.P15299425978682491733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P15299425978682491733

/-! ## A260125.P7163976839373497462

`∩[A386043(n+1), A386045(n+1)]`
-/

namespace A260125.P7163976839373497462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P7163976839373497462

/-! ## A260125.P3535635853711817817

`∩[A386041(n+1), A386044(n+1)]`
-/

namespace A260125.P3535635853711817817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P3535635853711817817

/-! ## A260125.P7993334224008956206

`∩[A386042(n+1), A386044(n+1)]`
-/

namespace A260125.P7993334224008956206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P7993334224008956206

/-! ## A260125.P14555853394448076871

`∩[A386043(n+1), A386044(n+1)]`
-/

namespace A260125.P14555853394448076871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P14555853394448076871

/-! ## A260125.P10132354772784707392

`∩[A386044(n+1), A386045(n+1)]`
-/

namespace A260125.P10132354772784707392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P10132354772784707392

/-! ## A260125.P6264260923195055318

`∩[A386041(n+1), A386046(n+1)]`
-/

namespace A260125.P6264260923195055318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P6264260923195055318

/-! ## A260125.P14487194528614571538

`∩[A386042(n+1), A386046(n+1)]`
-/

namespace A260125.P14487194528614571538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P14487194528614571538

/-! ## A260125.P16362405069449087433

`∩[A386043(n+1), A386046(n+1)]`
-/

namespace A260125.P16362405069449087433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P16362405069449087433

/-! ## A260125.P12691735034780101456

`∩[A386044(n+1), A386046(n+1)]`
-/

namespace A260125.P12691735034780101456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P12691735034780101456

/-! ## A260125.P7122031501456448327

`∩[A386045(n+1), A386046(n+1)]`
-/

namespace A260125.P7122031501456448327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P7122031501456448327

/-! ## A260125.P1998720465393182946

`∩[A107715(n+1), A386041(n+1)]`
-/

namespace A260125.P1998720465393182946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P1998720465393182946

/-! ## A260125.P14637307487634010376

`∩[A107715(n+1), A386042(n+1)]`
-/

namespace A260125.P14637307487634010376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P14637307487634010376

/-! ## A260125.P2914530873106379482

`∩[A107715(n+1), A386043(n+1)]`
-/

namespace A260125.P2914530873106379482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P2914530873106379482

/-! ## A260125.P13780837213570469438

`∩[A107715(n+1), A386044(n+1)]`
-/

namespace A260125.P13780837213570469438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P13780837213570469438

/-! ## A260125.P6998166688766732615

`∩[A107715(n+1), A386045(n+1)]`
-/

namespace A260125.P6998166688766732615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260125.P6998166688766732615

/-!
# A260126: Primes having only {2, 3, 6} as digits.

The programs for A260126, there is no canonical definition to state claims against.
-/

/-! ## A260126.P1986763152778142867

`∩[A386043(n+1), A386148(n+1)]`
-/

namespace A260126.P1986763152778142867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P1986763152778142867

/-! ## A260126.P2692772695456096135

`∩[A386043(n+1), A386144(n+1)]`
-/

namespace A260126.P2692772695456096135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P2692772695456096135

/-! ## A260126.P7736649910397158316

`∩[A386144(n+1), A386148(n+1)]`
-/

namespace A260126.P7736649910397158316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P7736649910397158316

/-! ## A260126.P5600028197376795669

`∩[A386043(n+1), A386140(n+1)]`
-/

namespace A260126.P5600028197376795669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P5600028197376795669

/-! ## A260126.P12821680145878618129

`∩[A386140(n+1), A386144(n+1)]`
-/

namespace A260126.P12821680145878618129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P12821680145878618129

/-! ## A260126.P14348475673170750076

`∩[A386140(n+1), A386148(n+1)]`
-/

namespace A260126.P14348475673170750076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P14348475673170750076

/-! ## A260126.P5103107870294175969

`∩[A386043(n+1), A386147(n+1)]`
-/

namespace A260126.P5103107870294175969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P5103107870294175969

/-! ## A260126.P7361078818665805876

`∩[A386043(n+1), A386149(n+1)]`
-/

namespace A260126.P7361078818665805876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P7361078818665805876

/-! ## A260126.P10428263989995291397

`∩[A386140(n+1), A386147(n+1)]`
-/

namespace A260126.P10428263989995291397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P10428263989995291397

/-! ## A260126.P3086062158950554871

`∩[A386140(n+1), A386149(n+1)]`
-/

namespace A260126.P3086062158950554871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P3086062158950554871

/-! ## A260126.P9128027851736405463

`∩[A386144(n+1), A386147(n+1)]`
-/

namespace A260126.P9128027851736405463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P9128027851736405463

/-! ## A260126.P4683995310195557821

`∩[A386144(n+1), A386149(n+1)]`
-/

namespace A260126.P4683995310195557821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P4683995310195557821

/-! ## A260126.P14155940731164908098

`∩[A386147(n+1), A386148(n+1)]`
-/

namespace A260126.P14155940731164908098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P14155940731164908098

/-! ## A260126.P8377451922752963343

`∩[A386147(n+1), A386149(n+1)]`
-/

namespace A260126.P8377451922752963343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P8377451922752963343

/-! ## A260126.P6699302082644206326

`∩[A386148(n+1), A386149(n+1)]`
-/

namespace A260126.P6699302082644206326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P6699302082644206326

/-! ## A260126.P678896026041505755

`∩[A386043(n+1), A386087(n+1)]`
-/

namespace A260126.P678896026041505755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P678896026041505755

/-! ## A260126.P2113105832327795888

`∩[A386087(n+1), A386140(n+1)]`
-/

namespace A260126.P2113105832327795888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P2113105832327795888

/-! ## A260126.P815836324621135462

`∩[A386087(n+1), A386144(n+1)]`
-/

namespace A260126.P815836324621135462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P815836324621135462

/-! ## A260126.P13866130410007041856

`∩[A386087(n+1), A386147(n+1)]`
-/

namespace A260126.P13866130410007041856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P13866130410007041856

/-! ## A260126.P6210723742432199397

`∩[A386087(n+1), A386148(n+1)]`
-/

namespace A260126.P6210723742432199397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260126.P6210723742432199397

/-!
# A260127: Primes having only {2, 3, 8} as digits.

The programs for A260127, there is no canonical definition to state claims against.
-/

/-! ## A260127.P4190831518563782783

`∩[A386045(n+1), A386148(n+1)]`
-/

namespace A260127.P4190831518563782783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P4190831518563782783

/-! ## A260127.P13968811466013867384

`∩[A386045(n+1), A386145(n+1)]`
-/

namespace A260127.P13968811466013867384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P13968811466013867384

/-! ## A260127.P8763081888178076835

`∩[A386145(n+1), A386148(n+1)]`
-/

namespace A260127.P8763081888178076835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P8763081888178076835

/-! ## A260127.P10636644253594869415

`∩[A386045(n+1), A386142(n+1)]`
-/

namespace A260127.P10636644253594869415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P10636644253594869415

/-! ## A260127.P9577614378745294099

`∩[A386142(n+1), A386145(n+1)]`
-/

namespace A260127.P9577614378745294099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P9577614378745294099

/-! ## A260127.P3127722419787164797

`∩[A386142(n+1), A386148(n+1)]`
-/

namespace A260127.P3127722419787164797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P3127722419787164797

/-! ## A260127.P16650974358302676313

`∩[A386045(n+1), A386152(n+1)]`
-/

namespace A260127.P16650974358302676313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P16650974358302676313

/-! ## A260127.P4979921013962372917

`∩[A386142(n+1), A386152(n+1)]`
-/

namespace A260127.P4979921013962372917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P4979921013962372917

/-! ## A260127.P12746144155916131084

`∩[A386145(n+1), A386152(n+1)]`
-/

namespace A260127.P12746144155916131084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P12746144155916131084

/-! ## A260127.P18195851607242875442

`∩[A386148(n+1), A386152(n+1)]`
-/

namespace A260127.P18195851607242875442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P18195851607242875442

/-! ## A260127.P2094428145480978002

`∩[A386045(n+1), A386150(n+1)]`
-/

namespace A260127.P2094428145480978002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P2094428145480978002

/-! ## A260127.P8406405706636136697

`∩[A386142(n+1), A386150(n+1)]`
-/

namespace A260127.P8406405706636136697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P8406405706636136697

/-! ## A260127.P18130351621631994690

`∩[A386145(n+1), A386150(n+1)]`
-/

namespace A260127.P18130351621631994690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P18130351621631994690

/-! ## A260127.P13201170704319169251

`∩[A386148(n+1), A386150(n+1)]`
-/

namespace A260127.P13201170704319169251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P13201170704319169251

/-! ## A260127.P14120413700276547541

`∩[A386150(n+1), A386152(n+1)]`
-/

namespace A260127.P14120413700276547541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P14120413700276547541

/-! ## A260127.P7389932667987572509

`∩[A386045(n+1), A386089(n+1)]`
-/

namespace A260127.P7389932667987572509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P7389932667987572509

/-! ## A260127.P10176304526621772765

`∩[A386089(n+1), A386142(n+1)]`
-/

namespace A260127.P10176304526621772765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P10176304526621772765

/-! ## A260127.P7004681007625421937

`∩[A386089(n+1), A386145(n+1)]`
-/

namespace A260127.P7004681007625421937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P7004681007625421937

/-! ## A260127.P3189388564696710910

`∩[A386089(n+1), A386148(n+1)]`
-/

namespace A260127.P3189388564696710910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P3189388564696710910

/-! ## A260127.P9606806221689158043

`∩[A386089(n+1), A386150(n+1)]`
-/

namespace A260127.P9606806221689158043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260127.P9606806221689158043

/-!
# A260128: Primes having only {2, 3, 9} as digits.

The programs for A260128, there is no canonical definition to state claims against.
-/

/-! ## A260128.P1210952849578389640

`∩[A386046(n+1), A386146(n+1)]`
-/

namespace A260128.P1210952849578389640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P1210952849578389640

/-! ## A260128.P7449497630518351590

`∩[A386046(n+1), A386152(n+1)]`
-/

namespace A260128.P7449497630518351590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P7449497630518351590

/-! ## A260128.P11224423726762331579

`∩[A386146(n+1), A386152(n+1)]`
-/

namespace A260128.P11224423726762331579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P11224423726762331579

/-! ## A260128.P16689734184596349650

`∩[A386046(n+1), A386143(n+1)]`
-/

namespace A260128.P16689734184596349650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P16689734184596349650

/-! ## A260128.P8776483221689611238

`∩[A386143(n+1), A386146(n+1)]`
-/

namespace A260128.P8776483221689611238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P8776483221689611238

/-! ## A260128.P12079771326433443482

`∩[A386143(n+1), A386152(n+1)]`
-/

namespace A260128.P12079771326433443482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P12079771326433443482

/-! ## A260128.P2199581622073541902

`∩[A386046(n+1), A386149(n+1)]`
-/

namespace A260128.P2199581622073541902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P2199581622073541902

/-! ## A260128.P4454832505161999637

`∩[A386143(n+1), A386149(n+1)]`
-/

namespace A260128.P4454832505161999637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P4454832505161999637

/-! ## A260128.P5947458905463074133

`∩[A386146(n+1), A386149(n+1)]`
-/

namespace A260128.P5947458905463074133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P5947458905463074133

/-! ## A260128.P6233448744242871494

`∩[A386149(n+1), A386152(n+1)]`
-/

namespace A260128.P6233448744242871494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P6233448744242871494

/-! ## A260128.P6546179570344066702

`∩[A386046(n+1), A386151(n+1)]`
-/

namespace A260128.P6546179570344066702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P6546179570344066702

/-! ## A260128.P16073030867161152181

`∩[A386143(n+1), A386151(n+1)]`
-/

namespace A260128.P16073030867161152181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P16073030867161152181

/-! ## A260128.P6204431124721301699

`∩[A386146(n+1), A386151(n+1)]`
-/

namespace A260128.P6204431124721301699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P6204431124721301699

/-! ## A260128.P17591523807939217437

`∩[A386149(n+1), A386151(n+1)]`
-/

namespace A260128.P17591523807939217437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P17591523807939217437

/-! ## A260128.P11280134906463588124

`∩[A386046(n+1), A386090(n+1)]`
-/

namespace A260128.P11280134906463588124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P11280134906463588124

/-! ## A260128.P6726894030431435314

`∩[A386090(n+1), A386143(n+1)]`
-/

namespace A260128.P6726894030431435314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P6726894030431435314

/-! ## A260128.P16876768106669803993

`∩[A386090(n+1), A386146(n+1)]`
-/

namespace A260128.P16876768106669803993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P16876768106669803993

/-! ## A260128.P349994402775943852

`∩[A386090(n+1), A386149(n+1)]`
-/

namespace A260128.P349994402775943852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P349994402775943852

/-! ## A260128.P11146542223889006898

`∩[A386090(n+1), A386151(n+1)]`
-/

namespace A260128.P11146542223889006898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P11146542223889006898

/-! ## A260128.P14049369064493891700

`∩[A386090(n+1), A386152(n+1)]`
-/

namespace A260128.P14049369064493891700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260128.P14049369064493891700

/-!
# A260130: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260130, there is no canonical definition to state claims against.
-/

/-! ## A260130.P15872946338975114908

`2*A259634(n+1)`
-/

namespace A260130.P15872946338975114908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259634 (n + 1)

end

end A260130.P15872946338975114908

/-! ## A260130.P14579605650842587230

`A260138((n+1)²+n²)`
-/

namespace A260130.P14579605650842587230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260138 ((n + 1) ^ 2 + n ^ 2)

end

end A260130.P14579605650842587230

/-! ## A260130.P604232184590860340

`2*A259642((n+1)*2*n+1)`
-/

namespace A260130.P604232184590860340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 ((n + 1) * (2 * n) + 1)

end

end A260130.P604232184590860340

/-! ## A260130.P15769919285286511890

`record[A003982(n)*A260138(n+1)]`
-/

namespace A260130.P15769919285286511890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260130.P15769919285286511890

/-! ## A260130.P14619884946647753387

`record[root(A260138(n+1), A331886(n))]`
-/

namespace A260130.P14619884946647753387
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260138 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260130.P14619884946647753387

/-!
# A260131: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260131, the canonical program `A260131.P15947087999194590137` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260131 has offset 1).

The definition of A260131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260131.P15947087999194590137

`a(n-1)+3*a(n-3)+a(n-4)` with `a(0)=36, a(1)=58, a(2)=138, a(3)=266, a(4)=472`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260131

/-- `a(n-1)+3*a(n-3)+a(n-4)` -/
def P15947087999194590137.Spec : Prop :=
  ∀ n, (P15947087999194590137.a n : ℤ) = A260131 (n + 1)

theorem P15947087999194590137.correct : P15947087999194590137.Spec := by
  intro n
  simp only [A260131, Nat.add_sub_cancel]

end A260131

/-! ## A260131.P12431024796301723115

`2*A259635(n+1)`
-/

namespace A260131.P12431024796301723115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259635 (n + 1)

end

end A260131.P12431024796301723115

namespace A260131

/-- `2*A259635(n+1)` -/
def P12431024796301723115.Spec : Prop :=
  ∀ n, P12431024796301723115.a n = A260131 (n + 1)

end A260131

/-! ## A260131.P10928575346070547412

`A259635(A000027(n+1))+A259635(n+1)`
-/

namespace A260131.P10928575346070547412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259635 (A000027 (n + 1)).toNat + A259635 (n + 1)

end

end A260131.P10928575346070547412

namespace A260131

/-- `A259635(A000027(n+1))+A259635(n+1)` -/
def P10928575346070547412.Spec : Prop :=
  ∀ n, P10928575346070547412.a n = A260131 (n + 1)

end A260131

/-! ## A260131.P15859983155768622266

`A259635(n+1)+A259635(A005408(n)-n)`
-/

namespace A260131.P15859983155768622266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259635 (n + 1) + A259635 (A005408 n - (n : ℤ)).toNat

end

end A260131.P15859983155768622266

namespace A260131

/-- `A259635(n+1)+A259635(A005408(n)-n)` -/
def P15859983155768622266.Spec : Prop :=
  ∀ n, P15859983155768622266.a n = A260131 (n + 1)

end A260131

/-! ## A260131.P9498909072366901161

`A259635(n+1)+A259635((n+1)%A000040(n+1))`
-/

namespace A260131.P9498909072366901161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259635 (n + 1) + A259635 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A260131.P9498909072366901161

namespace A260131

/-- `A259635(n+1)+A259635((n+1)%A000040(n+1))` -/
def P9498909072366901161.Spec : Prop :=
  ∀ n, P9498909072366901161.a n = A260131 (n + 1)

end A260131

/-! ## A260131.P17450258226958423991

`A259635(n+1)+A259635(n+1)%A259636(n+1)`
-/

namespace A260131.P17450258226958423991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259635 (n + 1) + Int.tmod (A259635 (n + 1)) (A259636 (n + 1))

end

end A260131.P17450258226958423991

namespace A260131

/-- `A259635(n+1)+A259635(n+1)%A259636(n+1)` -/
def P17450258226958423991.Spec : Prop :=
  ∀ n, P17450258226958423991.a n = A260131 (n + 1)

end A260131

/-! ## A260131.P13054681042225895675

`A259635(n+1)+A259635(A051597(∑[n]))`
-/

namespace A260131.P13054681042225895675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259635 (n + 1) + A259635 (A051597 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A260131.P13054681042225895675

namespace A260131

/-- `A259635(n+1)+A259635(A051597(∑[n]))` -/
def P13054681042225895675.Spec : Prop :=
  ∀ n, P13054681042225895675.a n = A260131 (n + 1)

end A260131

/-!
# A260132: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260132, there is no canonical definition to state claims against.
-/

/-! ## A260132.P11810530826582531359

`2*A259636(n+1)`
-/

namespace A260132.P11810530826582531359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259636 (n + 1)

end

end A260132.P11810530826582531359

/-! ## A260132.P418367160868386814

`A259636(n+1)/abs(A065357(n)/2)`
-/

namespace A260132.P418367160868386814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259636 (n + 1) : ℚ) / |(A065357 n : ℚ) / 2|

end

end A260132.P418367160868386814

/-! ## A260132.P17289144421240940582

`A259636(n+1)+A259636(Δ[n²]-n)`
-/

namespace A260132.P17289144421240940582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259636 (n + 1) + A259636 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A260132.P17289144421240940582

/-! ## A260132.P7782171359793506611

`A259636(n+1)+or(A000007(n), A259636(n+1))`
-/

namespace A260132.P7782171359793506611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259636 (n + 1) + Int.lor (A000007 n) (A259636 (n + 1))

end

end A260132.P7782171359793506611

/-! ## A260132.P9386463170455309639

`A259636(n+1)+record[A259636(A002260(n+1))]`
-/

namespace A260132.P9386463170455309639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259636 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259636 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260132.P9386463170455309639

/-!
# A260133: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260133, there is no canonical definition to state claims against.
-/

/-! ## A260133.P2651660437208689772

`2*A259637(n+1)`
-/

namespace A260133.P2651660437208689772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259637 (n + 1)

end

end A260133.P2651660437208689772

/-! ## A260133.P15418675586364817107

`A259637(n+1)+A259637(n%(n+1)+1)`
-/

namespace A260133.P15418675586364817107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259637 (n + 1) + A259637 (n % (n + 1) + 1)

end

end A260133.P15418675586364817107

/-! ## A260133.P2660917476484322761

`lcm(A000005(A090798(n+1)), A259637(n+1))`
-/

namespace A260133.P2660917476484322761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A090798 (n + 1)).toNat) (A259637 (n + 1))

end

end A260133.P2660917476484322761

/-! ## A260133.P8306011890209723184

`A259637(n+1)+A259637((n+1)%A060192(n))`
-/

namespace A260133.P8306011890209723184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259637 (n + 1) + A259637 (Int.tmod (n + 1 : ℤ) (A060192 n)).toNat

end

end A260133.P8306011890209723184

/-! ## A260133.P12057404321108666474

`2*A259642(A167614(n+1))`
-/

namespace A260133.P12057404321108666474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (A167614 (n + 1)).toNat

end

end A260133.P12057404321108666474

/-!
# A260134: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260134, there is no canonical definition to state claims against.
-/

/-! ## A260134.P12433166492857123969

`2*A259638(n+1)`
-/

namespace A260134.P12433166492857123969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259638 (n + 1)

end

end A260134.P12433166492857123969

/-! ## A260134.P1942453054527493782

`A259638(A000027(n+1))+A259638(n+1)`
-/

namespace A260134.P1942453054527493782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259638 (A000027 (n + 1)).toNat + A259638 (n + 1)

end

end A260134.P1942453054527493782

/-! ## A260134.P14079937143296680856

`A259638(n+1)+A259638(A124072(Δ[n²]))`
-/

namespace A260134.P14079937143296680856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259638 (n + 1) + A259638 (A124072 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A260134.P14079937143296680856

/-! ## A260134.P12634388536694044590

`A259638(n+1)+or(A000007(n), A259638(n+1))`
-/

namespace A260134.P12634388536694044590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259638 (n + 1) + Int.lor (A000007 n) (A259638 (n + 1))

end

end A260134.P12634388536694044590

/-! ## A260134.P5350715840200236952

`A259638(n+1)+A259638(n+1)%A259639(n+1)`
-/

namespace A260134.P5350715840200236952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259638 (n + 1) + Int.tmod (A259638 (n + 1)) (A259639 (n + 1))

end

end A260134.P5350715840200236952

/-!
# A260135: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260135, there is no canonical definition to state claims against.
-/

/-! ## A260135.P18434825668801777959

`2*A259639(n+1)`
-/

namespace A260135.P18434825668801777959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259639 (n + 1)

end

end A260135.P18434825668801777959

/-! ## A260135.P4198203243545221411

`A259639(A000027(n+1))+A259639(n+1)`
-/

namespace A260135.P4198203243545221411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259639 (A000027 (n + 1)).toNat + A259639 (n + 1)

end

end A260135.P4198203243545221411

/-! ## A260135.P16935387657626742776

`A259639(n+1)+A259639(n+1)%A255098(n+1)`
-/

namespace A260135.P16935387657626742776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259639 (n + 1) + Int.tmod (A259639 (n + 1)) (A255098 (n + 1))

end

end A260135.P16935387657626742776

/-! ## A260135.P17979297866489380958

`2*A259642(A374005(n+1))`
-/

namespace A260135.P17979297866489380958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (A374005 (n + 1)).toNat

end

end A260135.P17979297866489380958

/-!
# A260136: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260136, there is no canonical definition to state claims against.
-/

/-! ## A260136.P6881356945482922062

`2*A259640(n+1)`
-/

namespace A260136.P6881356945482922062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259640 (n + 1)

end

end A260136.P6881356945482922062

/-! ## A260136.P10063842757026600949

`A259640(A000027(n+1))+A259640(n+1)`
-/

namespace A260136.P10063842757026600949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259640 (A000027 (n + 1)).toNat + A259640 (n + 1)

end

end A260136.P10063842757026600949

/-! ## A260136.P17726281184078173237

`2*A259642(A374007(n+1))`
-/

namespace A260136.P17726281184078173237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (A374007 (n + 1)).toNat

end

end A260136.P17726281184078173237

/-! ## A260136.P2598532245138243514

`2*A259642(A166136(n+4))`
-/

namespace A260136.P2598532245138243514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (A166136 (n + 4)).toNat

end

end A260136.P2598532245138243514

/-! ## A260136.P17778498137842129345

`A259640(n+1)+A259640(A175213(n²))`
-/

namespace A260136.P17778498137842129345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259640 (n + 1) + A259640 (A175213 (n ^ 2)).toNat

end

end A260136.P17778498137842129345

/-!
# A260137: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260137, there is no canonical definition to state claims against.
-/

/-! ## A260137.P7551040999441248371

`2*A259641(n+1)`
-/

namespace A260137.P7551040999441248371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259641 (n + 1)

end

end A260137.P7551040999441248371

/-! ## A260137.P11557034125445018443

`A259641(A000027(n+1))+A259641(n+1)`
-/

namespace A260137.P11557034125445018443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259641 (A000027 (n + 1)).toNat + A259641 (n + 1)

end

end A260137.P11557034125445018443

/-! ## A260137.P9910918001380309257

`2*A259642(A374008(n+1))`
-/

namespace A260137.P9910918001380309257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (A374008 (n + 1)).toNat

end

end A260137.P9910918001380309257

/-! ## A260137.P14679674812202740112

`2*A259642(A000217(n+5)+n+13)`
-/

namespace A260137.P14679674812202740112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (A000217 (n + 5) + (n + 13 : ℤ)).toNat

end

end A260137.P14679674812202740112

/-! ## A260137.P11062005472963507917

`2*A259642(A005408(n+8)+A000124(n+4))`
-/

namespace A260137.P11062005472963507917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A260137.P11062005472963507917

/-!
# A260138: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 01010101 or 01010111.

The programs for A260138, there is no canonical definition to state claims against.
-/

/-! ## A260138.P4282544506789951722

`2*A259642(n+1)`
-/

namespace A260138.P4282544506789951722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259642 (n + 1)

end

end A260138.P4282544506789951722

/-! ## A260138.P7598302475194637758

`A259642(A000027(n+1))+A259642(n+1)`
-/

namespace A260138.P7598302475194637758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A000027 (n + 1)).toNat + A259642 (n + 1)

end

end A260138.P7598302475194637758

/-! ## A260138.P14717574808279035288

`A259642(A038722(n+1))+A259642(n+1)`
-/

namespace A260138.P14717574808279035288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A038722 (n + 1)).toNat + A259642 (n + 1)

end

end A260138.P14717574808279035288

/-! ## A260138.P6061064127751140314

`A259642(n+1)+A259642(A005408(n)-n)`
-/

namespace A260138.P6061064127751140314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (n + 1) + A259642 (A005408 n - (n : ℤ)).toNat

end

end A260138.P6061064127751140314

/-! ## A260138.P2765568334586746060

`A259642(n+1)+A259642(A124072(Δ[n²]))`
-/

namespace A260138.P2765568334586746060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (n + 1) + A259642 (A124072 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A260138.P2765568334586746060

/-! ## A260138.P7680194302868435814

`A259642(n+1)+A259642((n+1)%A259642(n+1))`
-/

namespace A260138.P7680194302868435814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (n + 1) + A259642 (Int.tmod (n + 1 : ℤ) (A259642 (n + 1))).toNat

end

end A260138.P7680194302868435814

/-! ## A260138.P12916506414971391195

`A259642(n+1)+A259642(n+1)%A254364(n)`
-/

namespace A260138.P12916506414971391195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (n + 1) + Int.tmod (A259642 (n + 1)) (A254364 n)

end

end A260138.P12916506414971391195

/-!
# A260139: For any term a(k), there are exactly a(k) terms strictly smaller than 3*a(k); this is the lexicographically first increasing sequence of nonnegative integers with this property.

The programs for A260139, there is no canonical definition to state claims against.
-/

/-! ## A260139.P3910380150271786718

`lt[A001065(A005899(n)), A242614(3*n+1)]`
-/

namespace A260139.P3910380150271786718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005899 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242614 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260139.P3910380150271786718

/-!
# A260143: Runs of consecutive integers with same prime signature.

The programs for A260143, the canonical program `A260143.P3436632720027351610` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260143 has offset 1).

The definition of A260143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260143.P3436632720027351610

`∪[A052213(n+1), A083793(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A260143

/-- `∪[A052213(n+1), A083793(n+1)]` -/
def P3436632720027351610.Spec : Prop :=
  ∀ n, (P3436632720027351610.a n : ℤ) = A260143 (n + 1)

theorem P3436632720027351610.correct : P3436632720027351610.Spec := by
  intro n
  simp only [A260143, Nat.add_sub_cancel]

end A260143

/-! ## A260143.P16842671471468009240

`∪[A052213(A000027(n+1))+1, A052213(n+1)]`
-/

namespace A260143.P16842671471468009240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (A000027 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260143.P16842671471468009240

namespace A260143

/-- `∪[A052213(A000027(n+1))+1, A052213(n+1)]` -/
def P16842671471468009240.Spec : Prop :=
  ∀ n, (P16842671471468009240.a n : ℤ) = A260143 (n + 1)

end A260143

/-! ## A260143.P2890030431916663011

`∪[eq[1, A085072(n+2)]+2, A083793(n+1)]`
-/

namespace A260143.P2890030431916663011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085072 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A260143.P2890030431916663011

namespace A260143

/-- `∪[eq[1, A085072(n+2)]+2, A083793(n+1)]` -/
def P2890030431916663011.Spec : Prop :=
  ∀ n, (P2890030431916663011.a n : ℤ) = A260143 (n + 1)

end A260143

/-! ## A260143.P7331651498460143278

`A028310(∪[A083793(n+1)-1, A083793(n+1)])`
-/

namespace A260143.P7331651498460143278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A260143.P7331651498460143278

namespace A260143

/-- `A028310(∪[A083793(n+1)-1, A083793(n+1)])` -/
def P7331651498460143278.Spec : Prop :=
  ∀ n, P7331651498460143278.a n = A260143 (n + 1)

end A260143

/-! ## A260143.P7167321253306983522

`∪[A083793(n+1)-1, A065475(A083793(n+1)-1)]`
-/

namespace A260143.P7167321253306983522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A083793 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260143.P7167321253306983522

namespace A260143

/-- `∪[A083793(n+1)-1, A065475(A083793(n+1)-1)]` -/
def P7167321253306983522.Spec : Prop :=
  ∀ n, (P7167321253306983522.a n : ℤ) = A260143 (n + 1)

end A260143

/-! ## A260143.P15501708705766488322

`∪[eq[1, A085073(n+1)]+1, A083793(n+1)]`
-/

namespace A260143.P15501708705766488322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085073 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A260143.P15501708705766488322

namespace A260143

/-- `∪[eq[1, A085073(n+1)]+1, A083793(n+1)]` -/
def P15501708705766488322.Spec : Prop :=
  ∀ n, (P15501708705766488322.a n : ℤ) = A260143 (n + 1)

end A260143

/-!
# A260145: Expansion of x * (psi(x^4) / phi(x))^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A260145, there is no canonical definition to state claims against.
-/

/-! ## A260145.P11217313157874476477

`(-1)^n*A107035(n+1)`
-/

namespace A260145.P11217313157874476477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A107035 (n + 1)

end

end A260145.P11217313157874476477

/-! ## A260145.P16489458790775413345

`A107035(n+1)/A033999(n)`
-/

namespace A260145.P16489458790775413345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A260145.P16489458790775413345

/-! ## A260145.P10776329004240100575

`A131126(n+1)/((1-6/2)*A280560(n+1))`
-/

namespace A260145.P10776329004240100575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 (n + 1) : ℚ) / ((1 - (6 : ℚ) / 2) * (A280560 (n + 1) : ℚ))

end

end A260145.P10776329004240100575

/-! ## A260145.P2137148595642270830

`A107035(n+1)/A112128(n)*A208933(n)`
-/

namespace A260145.P2137148595642270830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (n + 1) : ℚ) / (A112128 n : ℚ) * (A208933 n : ℚ)

end

end A260145.P2137148595642270830

/-! ## A260145.P9593767641570567466

`A107035(n+1)/A187154(n)*A210063(n)`
-/

namespace A260145.P9593767641570567466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (n + 1) : ℚ) / (A187154 n : ℚ) * (A210063 n : ℚ)

end

end A260145.P9593767641570567466

/-! ## A260145.P847123078043592945

`A107035(n+1)/A123655(n+1)*A208605(n+1)`
-/

namespace A260145.P847123078043592945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (n + 1) : ℚ) / (A123655 (n + 1) : ℚ) * (A208605 (n + 1) : ℚ)

end

end A260145.P847123078043592945

/-! ## A260145.P11291586965689829149

`A208605(2*(n+1))/(2*A033999(n+1))`
-/

namespace A260145.P11291586965689829149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208605 (2 * (n + 1)) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A260145.P11291586965689829149

/-! ## A260145.P8919754153099768979

`A107035(n+1)/A131126(n)*A210066(n)`
-/

namespace A260145.P8919754153099768979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (n + 1) : ℚ) / (A131126 n : ℚ) * (A210066 n : ℚ)

end

end A260145.P8919754153099768979

/-! ## A260145.P16907306958601834419

`A210066(n+1)/(A280560(2*n+1)-2)`
-/

namespace A260145.P16907306958601834419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210066 (n + 1) : ℚ) / (A280560 (2 * n + 1) - 2 : ℚ)

end

end A260145.P16907306958601834419

/-! ## A260145.P16137064861400695496

`a(n-1)/A210066(n)*A210066(n+1)` with `a(0)=1`
-/

namespace A260145.P16137064861400695496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (A210066 n : ℚ) * (A210066 (n + 1) : ℚ)

end

end A260145.P16137064861400695496

/-! ## A260145.P7341791152304553367

`A107035(n+1)/A014969(n)*A139820(n)`
-/

namespace A260145.P7341791152304553367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (n + 1) : ℚ) / (A014969 n : ℚ) * (A139820 n : ℚ)

end

end A260145.P7341791152304553367

/-! ## A260145.P1630429506298432314

`A139820(n+1)/A139820(n)*a(n-1)` with `a(0)=1`
-/

namespace A260145.P1630429506298432314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A139820 (n + 1) : ℚ) / (A139820 n : ℚ) * a (n - 1)

end

end A260145.P1630429506298432314

/-! ## A260145.P4357532087916962452

`A139820(n+1)/A139820(A340346(2*n+1))`
-/

namespace A260145.P4357532087916962452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139820 (n + 1) : ℚ) / (A139820 (A340346 (2 * n + 1)).toNat : ℚ)

end

end A260145.P4357532087916962452

/-! ## A260145.P14673683325788377067

`A107035(2*n+1)/A210066(2*n+1)*A210066(n+1)`
-/

namespace A260145.P14673683325788377067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (2 * n + 1) : ℚ) / (A210066 (2 * n + 1) : ℚ) * (A210066 (n + 1) : ℚ)

end

end A260145.P14673683325788377067

/-! ## A260145.P15775117455533982520

`A107035(2*n+1)/A139820(2*n+1)*A139820(n+1)`
-/

namespace A260145.P15775117455533982520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107035 (2 * n + 1) : ℚ) / (A139820 (2 * n + 1) : ℚ) * (A139820 (n + 1) : ℚ)

end

end A260145.P15775117455533982520

/-!
# A260146: Number of positive divisors of hyperfactorial(n).

The programs for A260146, there is no canonical definition to state claims against.
-/

/-! ## A260146.P8780488908881526176

`A241405(n!)`
-/

namespace A260146.P8780488908881526176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (Nat.factorial n)

end

end A260146.P8780488908881526176

/-! ## A260146.P2921574040545753583

`A241405(∏[round(1/acot(n))])`
-/

namespace A260146.P2921574040545753583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260146.P2921574040545753583

/-! ## A260146.P14402386412348651878

`A241405(∏[n+1]/(n+1))`
-/

namespace A260146.P14402386412348651878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A260146.P14402386412348651878

/-! ## A260146.P13063856309236044305

`A241405(-∏[n-C(2, n+2)])+A102683(n)`
-/

namespace A260146.P13063856309236044305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat + A102683 n

end

end A260146.P13063856309236044305

/-!
# A260147: G.f. A(x) = Sum_{n=-oo..+oo} x^n * (1 + x^n)^(2*n).

The programs for A260147, there is no canonical definition to state claims against.
-/

/-! ## A260147.P9946589486399238895

`(A260148(2*n)+A217668(2*n))/2`
-/

namespace A260147.P9946589486399238895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260148 (2 * n) + A217668 (2 * n) : ℚ) / 2

end

end A260147.P9946589486399238895

/-! ## A260147.P6973136675866718039

`A014682(A260148(2*n)+A217668(2*n))`
-/

namespace A260147.P6973136675866718039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A260148 (2 * n) + A217668 (2 * n)).toNat

end

end A260147.P6973136675866718039

/-! ## A260147.P11049149269455194950

`A273943(A260148(2*n)+A217668(2*n))`
-/

namespace A260147.P11049149269455194950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A260148 (2 * n) + A217668 (2 * n)).toNat

end

end A260147.P11049149269455194950

/-! ## A260147.P16641615866744618081

`A302042(A260148(2*n)+A217668(2*n))`
-/

namespace A260147.P16641615866744618081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A260148 (2 * n) + A217668 (2 * n)).toNat

end

end A260147.P16641615866744618081

/-! ## A260147.P9470905845506728268

`A260361(n)/2`
-/

namespace A260147.P9470905845506728268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260361 n : ℚ) / 2

end

end A260147.P9470905845506728268

/-! ## A260147.P6085587650301920199

`A014682(A260361(n))`
-/

namespace A260147.P6085587650301920199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A260361 n).toNat

end

end A260147.P6085587650301920199

/-! ## A260147.P12708135765588879173

`A273943(lcm(2, A260361(n)))`
-/

namespace A260147.P12708135765588879173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A260361 n))

end

end A260147.P12708135765588879173

/-! ## A260147.P1607678387982467067

`A302042(A260361(n)+2)-1`
-/

namespace A260147.P1607678387982467067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A260361 n + 2).toNat - 1

end

end A260147.P1607678387982467067

/-! ## A260147.P4215944194297621310

`A302042(A260361(n)+A000007(n))`
-/

namespace A260147.P4215944194297621310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A260361 n + A000007 n).toNat

end

end A260147.P4215944194297621310

/-! ## A260147.P10165922090386166998

`A302042(A260361(n))%∑[A000032(n)]`
-/

namespace A260147.P10165922090386166998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302042 (A260361 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260147.P10165922090386166998

/-!
# A260149: Expansion of f(q) * phi(q) in powers of q where f() is a Ramanujan theta function and phi() is a 6th-order mock theta function.

The programs for A260149, there is no canonical definition to state claims against.
-/

/-! ## A260149.P5418854934495062240

`A121450(A283642(n)+8)`
-/

namespace A260149.P5418854934495062240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (A283642 n + 8).toNat

end

end A260149.P5418854934495062240

/-! ## A260149.P234538971813962329

`A184334(lcm(n, A103015(n+1)))`
-/

namespace A260149.P234538971813962329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184334 (Int.lcm (n : ℤ) (A103015 (n + 1)))

end

end A260149.P234538971813962329

/-! ## A260149.P15534109736148002206

`(1-2*n%2)*A035208(A300164(3*n+5))`
-/

namespace A260149.P15534109736148002206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * A035208 (A300164 (3 * n + 5)).toNat

end

end A260149.P15534109736148002206

/-! ## A260149.P3820759849483767246

`A123063(n)-A123063(A217725(n+1))`
-/

namespace A260149.P3820759849483767246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n - A123063 (A217725 (n + 1)).toNat

end

end A260149.P3820759849483767246

/-! ## A260149.P8651460955525933109

`A071993(A250120(n)*A312501(3*n))`
-/

namespace A260149.P8651460955525933109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071993 (A250120 n * A312501 (3 * n)).toNat

end

end A260149.P8651460955525933109

/-!
# A260150: Expansion of f(x, x^5)^3 / (f(-x, -x^5) * f(-x^2, -x^2)^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A260150, there is no canonical definition to state claims against.
-/

/-! ## A260150.P2701948727293577301

`(-1)^n*A260057(n)`
-/

namespace A260150.P2701948727293577301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A260057 n

end

end A260150.P2701948727293577301

/-! ## A260150.P18145703220479544847

`A261154(3*n+2)`
-/

namespace A260150.P18145703220479544847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 (3 * n + 2)

end

end A260150.P18145703220479544847

/-! ## A260150.P17751840556054638913

`abs(A260057(n))`
-/

namespace A260150.P17751840556054638913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260057 n|

end

end A260150.P17751840556054638913

/-! ## A260150.P11760328495687327818

`gcd(A000038(n), A260057(n))`
-/

namespace A260150.P11760328495687327818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260057 n)

end

end A260150.P11760328495687327818

/-! ## A260150.P13942322816728505912

`lcm(A000034(n), A260057(n))`
-/

namespace A260150.P13942322816728505912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260057 n)

end

end A260150.P13942322816728505912

/-! ## A260150.P17465558134158381201

`A260057(n)/A260215(n)*A261156(n)`
-/

namespace A260150.P17465558134158381201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260057 n : ℚ) / (A260215 n : ℚ) * (A261156 n : ℚ)

end

end A260150.P17465558134158381201

/-! ## A260150.P12472867102042800413

`A260057(n)/A261325(n)*A261446(n)`
-/

namespace A260150.P12472867102042800413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260057 n : ℚ) / (A261325 n : ℚ) * (A261446 n : ℚ)

end

end A260150.P12472867102042800413

/-! ## A260150.P18297778214752125292

`A233693(3*n+2)`
-/

namespace A260150.P18297778214752125292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (3 * n + 2)

end

end A260150.P18297778214752125292

/-! ## A260150.P15984271991436228879

`A261156(3*n+2)/2`
-/

namespace A260150.P15984271991436228879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 (3 * n + 2) : ℚ) / 2

end

end A260150.P15984271991436228879

/-!
# A260152: a(n) is the number of distinct sums s + t where s, t are divisors of n.

The programs for A260152, there is no canonical definition to state claims against.
-/

/-! ## A260152.P17573384344401342917

`A129510(n+1)+A000005(A187829(n+1))`
-/

namespace A260152.P17573384344401342917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129510 (n + 1) + A000005 (A187829 (n + 1)).toNat

end

end A260152.P17573384344401342917

/-! ## A260152.P9350095029833279681

`A179941(n+1)+A129510(A187829(n+1))`
-/

namespace A260152.P9350095029833279681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1) + A129510 (A187829 (n + 1)).toNat

end

end A260152.P9350095029833279681

/-! ## A260152.P15112489859364735058

`A129510(A187829(n+1))+A334954(n+1)-1`
-/

namespace A260152.P15112489859364735058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129510 (A187829 (n + 1)).toNat + (A334954 (n + 1) - 1)

end

end A260152.P15112489859364735058

/-! ## A260152.P12410052367390277583

`A046523(n+1)-A334540(A187829(n+1))+∑{d}[n+1, n²%#]+1`
-/

namespace A260152.P12410052367390277583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A334540 (A187829 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℤ)

end

end A260152.P12410052367390277583

/-! ## A260152.P5326118561225698454

`A000005(n+1)+A046523(n+1)-A334540(A187829(n+1))`
-/

namespace A260152.P5326118561225698454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A046523 (n + 1) - A334540 (A187829 (n + 1)).toNat)

end

end A260152.P5326118561225698454

/-!
# A260153: Number of walks of length n on the square lattice (with steps N, E, S, W) that start at (0,0) and avoid the West quadrant {(i,j): i < -|j|}.

The programs for A260153, there is no canonical definition to state claims against.
-/

/-! ## A260153.P14923492922826758220

`A170964(A196442(n+1))+∑[A155116(n)]`
-/

namespace A260153.P14923492922826758220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170964 (A196442 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260153.P14923492922826758220

/-! ## A260153.P8462320095207272554

`A196472(n+1)+A170964(A196442(n+1))`
-/

namespace A260153.P8462320095207272554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196472 (n + 1) + A170964 (A196442 (n + 1)).toNat

end

end A260153.P8462320095207272554

/-!
# A260154: Number of square lattice walks of length 2n starting and ending at (0,0) and avoiding the West quadrant {(i,j): i < -|j|}.

The programs for A260154, there is no canonical definition to state claims against.
-/

/-! ## A260154.P2654325995914344387

`A026741((n+1)*A246860(n+1)-(n-1))`
-/

namespace A260154.P2654325995914344387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 1 : ℤ) * A246860 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A260154.P2654325995914344387

/-!
# A260155: Number of walks of length 2n on the square lattice that start and end at (0,0) and avoid the negative quadrant.

The programs for A260155, there is no canonical definition to state claims against.
-/

/-! ## A260155.P6986247452114539201

`A284013(A099912(n))+1`
-/

namespace A260155.P6986247452114539201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284013 (A099912 n).toNat + 1

end

end A260155.P6986247452114539201

/-!
# A260156: Number of minimal overlapping permutations starting with 1 of length n.

The programs for A260156, there is no canonical definition to state claims against.
-/

/-! ## A260156.P5794677729206967054

`A130936(A360704(n))`
-/

namespace A260156.P5794677729206967054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 (A360704 n).toNat

end

end A260156.P5794677729206967054

/-! ## A260156.P9274829705926427549

`A357413(A376075(n))`
-/

namespace A260156.P9274829705926427549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357413 (A376075 n).toNat

end

end A260156.P9274829705926427549

/-!
# A260157: Smallest term of the first run of at least n consecutive integers which are not sums of 2 squares.

The programs for A260157, there is no canonical definition to state claims against.
-/

/-! ## A260157.P15998089623064429820

`A104271(n+1)/A050873(A072243(n)+1)`
-/

namespace A260157.P15998089623064429820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104271 (n + 1) : ℚ) / (A050873 (A072243 n + 1).toNat : ℚ)

end

end A260157.P15998089623064429820

/-! ## A260157.P9332626164669401678

`A104271(n+1)/A051903(A390505(n+1))`
-/

namespace A260157.P9332626164669401678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104271 (n + 1) : ℚ) / (A051903 (A390505 (n + 1)).toNat : ℚ)

end

end A260157.P9332626164669401678

/-! ## A260157.P4759334458778177506

`A104271(n+1)/A333768(A276959(n+1))`
-/

namespace A260157.P4759334458778177506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104271 (n + 1) : ℚ) / (A333768 (A276959 (n + 1)).toNat : ℚ)

end

end A260157.P4759334458778177506

/-! ## A260157.P8588246126306923319

`A104271(n+1)/A354512(A295133(n+1))`
-/

namespace A260157.P8588246126306923319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104271 (n + 1) : ℚ) / (A354512 (A295133 (n + 1)).toNat : ℚ)

end

end A260157.P8588246126306923319

/-!
# A260158: Expansion of psi(x)^4 * psi(-x^3) / f(x) in powers of x where psi, f() are Ramanujan theta functions.

The programs for A260158, there is no canonical definition to state claims against.
-/

/-! ## A260158.P16701526766708671629

`A320195(A016969(n))/4`
-/

namespace A260158.P16701526766708671629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320195 (A016969 n).toNat : ℚ) / 4

end

end A260158.P16701526766708671629

/-! ## A260158.P14765454088172536459

`A320127(A005408(3*n+2))/8`
-/

namespace A260158.P14765454088172536459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320127 (A005408 (3 * n + 2)).toNat : ℚ) / 8

end

end A260158.P14765454088172536459

/-!
# A260159: Number of minimal overlapping permutations starting with 2 of length n.

The programs for A260159, there is no canonical definition to state claims against.
-/

/-! ## A260159.P8874049038416607472

`A275409(A000166(n+1)-n)+A000166(n+1)`
-/

namespace A260159.P8874049038416607472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275409 (A000166 (n + 1) - (n : ℤ)).toNat + A000166 (n + 1)

end

end A260159.P8874049038416607472

/-! ## A260159.P11368309088561497975

`A281910(char[1]+1+n)+C(n, 2)`
-/

namespace A260159.P11368309088561497975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281910 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + (Nat.choose n 2 : ℤ)

end

end A260159.P11368309088561497975

/-!
# A260160: a(n) = a(n-2) + a(n-6) - a(n-8) with n>8, the first eight terms are 0 except that for a(5) = a(7) = 1.

The programs for A260160, the canonical program `A260160.P13941898575108484220` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260160 has offset 1).

The definition of A260160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-6)-a(n-8)` (program `A260160.P13941898575108484220`, by `A260160.P13941898575108484220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260160.P12007458810179204604

`(1-(-1)^(n+1))*floor((n+1)/6+1/3)/2`
-/

namespace A260160.P12007458810179204604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (-1) ^ (n + 1)) * ⌊(n + 1 : ℚ) / 6 + (1 : ℚ) / 3⌋ : ℚ) / 2

end

end A260160.P12007458810179204604

namespace A260160

/-- `(1-(-1)^(n+1))*floor((n+1)/6+1/3)/2` -/
def P12007458810179204604.Spec : Prop :=
  ∀ n, P12007458810179204604.a n = (A260160 (n + 1) : ℚ)

end A260160

/-! ## A260160.P13941898575108484220

`a(n-2)+a(n-6)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260160

/-- `a(n-2)+a(n-6)-a(n-8)` -/
def P13941898575108484220.Spec : Prop :=
  ∀ n, P13941898575108484220.a n = A260160 (n + 1)

theorem P13941898575108484220.correct : P13941898575108484220.Spec := by
  intro n
  simp only [A260160, Nat.add_sub_cancel]

end A260160

/-! ## A260160.P4274823900911041108

`round(gcd(n, n%2)/6)`
-/

namespace A260160.P4274823900911041108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd n (n % 2) : ℚ) / 6)

end

end A260160.P4274823900911041108

namespace A260160

/-- `round(gcd(n, n%2)/6)` -/
def P4274823900911041108.Spec : Prop :=
  ∀ n, P4274823900911041108.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P7127509472725169585

`floor((lcm(2, n+1)-n)/6)`
-/

namespace A260160.P7127509472725169585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 (n + 1) : ℤ) - (n : ℤ) : ℚ) / 6⌋

end

end A260160.P7127509472725169585

namespace A260160

/-- `floor((lcm(2, n+1)-n)/6)` -/
def P7127509472725169585.Spec : Prop :=
  ∀ n, P7127509472725169585.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P8953997625961599562

`floor(gcd(n+2, and(1, n))/6)`
-/

namespace A260160.P8953997625961599562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 2) (Nat.land 1 n) : ℚ) / 6⌋

end

end A260160.P8953997625961599562

namespace A260160

/-- `floor(gcd(n+2, and(1, n))/6)` -/
def P8953997625961599562.Spec : Prop :=
  ∀ n, P8953997625961599562.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P18138876281508278273

`round(C(n, (n+1)%2)/6)`
-/

namespace A260160.P18138876281508278273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n ((n + 1) % 2) : ℚ) / 6)

end

end A260160.P18138876281508278273

namespace A260160

/-- `round(C(n, (n+1)%2)/6)` -/
def P18138876281508278273.Spec : Prop :=
  ∀ n, P18138876281508278273.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P9400522109394365676

`ceil((3*n)%or(1, n)/6)`
-/

namespace A260160.P9400522109394365676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * n % Nat.lor 1 n : ℕ) : ℚ) / 6⌉

end

end A260160.P9400522109394365676

namespace A260160

/-- `ceil((3*n)%or(1, n)/6)` -/
def P9400522109394365676.Spec : Prop :=
  ∀ n, P9400522109394365676.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P2877401580681890922

`round(gcd(n², ∑[and(1, n)])/3)`
-/

namespace A260160.P2877401580681890922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3)

end

end A260160.P2877401580681890922

namespace A260160

/-- `round(gcd(n², ∑[and(1, n)])/3)` -/
def P2877401580681890922.Spec : Prop :=
  ∀ n, P2877401580681890922.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P7696385480226888092

`floor(∑[n+1]%(n+2)/3)`
-/

namespace A260160.P7696385480226888092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℚ) / 3⌋

end

end A260160.P7696385480226888092

namespace A260160

/-- `floor(∑[n+1]%(n+2)/3)` -/
def P7696385480226888092.Spec : Prop :=
  ∀ n, P7696385480226888092.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P1990091601057298023

`floor((n+2)/6-a(n-1))` with `a(0)=0`
-/

namespace A260160.P1990091601057298023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 2 : ℚ) / 6 - (a (n - 1) : ℚ)⌋

end

end A260160.P1990091601057298023

namespace A260160

/-- `floor((n+2)/6-a(n-1))` -/
def P1990091601057298023.Spec : Prop :=
  ∀ n, P1990091601057298023.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P10795964702407033174

`round((n-1)/6-a(n-1))` with `a(0)=0`
-/

namespace A260160.P10795964702407033174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 6 - (a (n - 1) : ℚ))

end

end A260160.P10795964702407033174

namespace A260160

/-- `round((n-1)/6-a(n-1))` -/
def P10795964702407033174.Spec : Prop :=
  ∀ n, P10795964702407033174.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P8512510970539289557

`round(A266258(n)/12)`
-/

namespace A260160.P8512510970539289557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266258 n : ℚ) / 12)

end

end A260160.P8512510970539289557

namespace A260160

/-- `round(A266258(n)/12)` -/
def P8512510970539289557.Spec : Prop :=
  ∀ n, P8512510970539289557.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P5634512815102697378

`A264041(n+1)-(n+1)*(n+2)/2`
-/

namespace A260160.P5634512815102697378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264041 (n + 1) : ℚ) - (n + 1 : ℚ) * ((n + 2 : ℚ) / 2)

end

end A260160.P5634512815102697378

namespace A260160

/-- `A264041(n+1)-(n+1)*(n+2)/2` -/
def P5634512815102697378.Spec : Prop :=
  ∀ n, P5634512815102697378.a n = (A260160 (n + 1) : ℚ)

end A260160

/-! ## A260160.P1068748960764573110

`A002264(A027656(n))`
-/

namespace A260160.P1068748960764573110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A027656 n).toNat

end

end A260160.P1068748960764573110

namespace A260160

/-- `A002264(A027656(n))` -/
def P1068748960764573110.Spec : Prop :=
  ∀ n, P1068748960764573110.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P13278533555921379779

`A002264(A158416(n))`
-/

namespace A260160.P13278533555921379779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A158416 n).toNat

end

end A260160.P13278533555921379779

namespace A260160

/-- `A002264(A158416(n))` -/
def P13278533555921379779.Spec : Prop :=
  ∀ n, P13278533555921379779.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P15348654154092127461

`A008615(A093178(n+1))`
-/

namespace A260160.P15348654154092127461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A093178 (n + 1)).toNat

end

end A260160.P15348654154092127461

namespace A260160

/-- `A008615(A093178(n+1))` -/
def P15348654154092127461.Spec : Prop :=
  ∀ n, P15348654154092127461.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P16035459625238030857

`A002264(A142150(n)+1)`
-/

namespace A260160.P16035459625238030857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A142150 n + 1).toNat

end

end A260160.P16035459625238030857

namespace A260160

/-- `A002264(A142150(n)+1)` -/
def P16035459625238030857.Spec : Prop :=
  ∀ n, P16035459625238030857.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P617907731966263371

`A008615(A193356(n+1))`
-/

namespace A260160.P617907731966263371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A193356 (n + 1)).toNat

end

end A260160.P617907731966263371

namespace A260160

/-- `A008615(A193356(n+1))` -/
def P617907731966263371.Spec : Prop :=
  ∀ n, P617907731966263371.a n = A260160 (n + 1)

end A260160

/-! ## A260160.P17409659379344399860

`A004523(A348537(n+2))`
-/

namespace A260160.P17409659379344399860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A348537 (n + 2)).toNat

end

end A260160.P17409659379344399860

namespace A260160

/-- `A004523(A348537(n+2))` -/
def P17409659379344399860.Spec : Prop :=
  ∀ n, P17409659379344399860.a n = A260160 (n + 1)

end A260160

/-!
# A260161: a(n) is the a(n-1)-th a(n-2)-dimensional simplex number, starting with the terms 1, 2.

The programs for A260161, there is no canonical definition to state claims against.
-/

/-! ## A260161.P10764932014948246042

`C(a(n-1)+a(n-2)-1, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A260161.P10764932014948246042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose ((a (n - 1) : ℤ) + ((a (n - 2) : ℤ) - 1)).toNat (a (n - 2))

end

end A260161.P10764932014948246042

/-! ## A260161.P1682239961848319609

`C(a(n-1)-(1-a(n-2)), a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A260161.P1682239961848319609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose ((a (n - 1) : ℤ) - (1 - (a (n - 2) : ℤ))).toNat (a (n - 2))

end

end A260161.P1682239961848319609

/-!
# A260162: Expansion of phi(-x) / psi(-x^3) in powers of x where psi(), phi() are Ramanujan theta functions.

The programs for A260162, there is no canonical definition to state claims against.
-/

/-! ## A260162.P1580878221807808372

`A260942((n+1)^A327401(n+1))`
-/

namespace A260162.P1580878221807808372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260942 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A327401 (n + 1) : ℤ))).toNat

end

end A260162.P1580878221807808372

/-! ## A260162.P12930940542049141534

`A260942(n+1)%A046525(n+1)`
-/

namespace A260162.P12930940542049141534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260942 (n + 1)) (A046525 (n + 1))

end

end A260162.P12930940542049141534

/-! ## A260162.P6298420845865433866

`A260942(A061395(p?[A325361(n+1)]))`
-/

namespace A260162.P6298420845865433866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260942 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A260162.P6298420845865433866

/-! ## A260162.P12728410240154901883

`A260942(n+1)%A061412(A028815(n))`
-/

namespace A260162.P12728410240154901883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260942 (n + 1)) (A061412 (A028815 n).toNat)

end

end A260162.P12728410240154901883

/-! ## A260162.P12124722792806337897

`A010060(A181985(n+1))*A260942(n+1)`
-/

namespace A260162.P12124722792806337897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A181985 (n + 1)).toNat * A260942 (n + 1)

end

end A260162.P12124722792806337897

/-!
# A260163: Expansion of f(x^2)^2 / f(-x) in powers of x where f() is a Ramanujan theta function.

The programs for A260163, there is no canonical definition to state claims against.
-/

/-! ## A260163.P3339261118997757415

`A132965(2*n)`
-/

namespace A260163.P3339261118997757415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132965 (2 * n)

end

end A260163.P3339261118997757415

/-! ## A260163.P17058019187761170306

`A132965(n+n)^A001222(A151800(n))`
-/

namespace A260163.P17058019187761170306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 (n + n) : ℚ) ^ (A001222 (A151800 n).toNat : ℤ)

end

end A260163.P17058019187761170306

/-! ## A260163.P9853337020316646104

`A132965(record[A237420(n)])/A158388(n)²`
-/

namespace A260163.P9853337020316646104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A158388 n ^ 2 : ℚ)

end

end A260163.P9853337020316646104

/-! ## A260163.P4213558591773521887

`A132965(record[A237420(n)])^A057428(n)²`
-/

namespace A260163.P4213558591773521887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A260163.P4213558591773521887

/-! ## A260163.P17202143299868681294

`A132965(record[A014681(n)])+A000007(n+1)`
-/

namespace A260163.P17202143299868681294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 (n + 1)

end

end A260163.P17202143299868681294

/-! ## A260163.P6683421234868769406

`A132965(record[A237420(n)])/A158388(n+1)`
-/

namespace A260163.P6683421234868769406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A158388 (n + 1) : ℚ)

end

end A260163.P6683421234868769406

/-! ## A260163.P10486139452238845978

`A132965(record[A237420(n)])/A109613(n)%2`
-/

namespace A260163.P10486139452238845978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (Int.tmod (A109613 n) 2 : ℚ)

end

end A260163.P10486139452238845978

/-! ## A260163.P16497005849628308301

`A132965(record[A237420(n)])^(A000007(n)-1)²`
-/

namespace A260163.P16497005849628308301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ ((A000007 n - 1) ^ 2 : ℤ)

end

end A260163.P16497005849628308301

/-! ## A260163.P8045657011909871670

`A132965(record[A237420(n)])+A044370(n+1)%2`
-/

namespace A260163.P8045657011909871670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + Int.tmod (A044370 (n + 1)) 2

end

end A260163.P8045657011909871670

/-! ## A260163.P7913378994712491961

`A132965(record[A014681(n)])%A022118(n)`
-/

namespace A260163.P7913378994712491961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A022118 n)

end

end A260163.P7913378994712491961

/-! ## A260163.P18034310608790458301

`A132965(record[A237420(n)])%A022118(n)`
-/

namespace A260163.P18034310608790458301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A022118 n)

end

end A260163.P18034310608790458301

/-! ## A260163.P4420240554845288479

`A132965(record[A237420(n)])/A093421(n+1)%2`
-/

namespace A260163.P4420240554845288479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (Int.tmod (A093421 (n + 1)) 2 : ℚ)

end

end A260163.P4420240554845288479

/-! ## A260163.P10510682461484338901

`A132965(record[A237420(n)])+A003285((n+1)²)`
-/

namespace A260163.P10510682461484338901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A003285 ((n + 1) ^ 2)

end

end A260163.P10510682461484338901

/-! ## A260163.P13490035280049961449

`A132965(record[A237420(n)])+A049084((n+1)²)`
-/

namespace A260163.P13490035280049961449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A049084 ((n + 1) ^ 2)

end

end A260163.P13490035280049961449

/-!
# A260164: Expansion of f(-x^8)^2 / f(-x) in powers of x where f() is a Ramanujan theta function.

The programs for A260164, there is no canonical definition to state claims against.
-/

/-! ## A260164.P540406662251540136

`A132965(Δ[n²])/2`
-/

namespace A260164.P540406662251540136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A260164.P540406662251540136

/-! ## A260164.P10517552557603846841

`ceil(A132965(comp[2*n])/2)`
-/

namespace A260164.P10517552557603846841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132965 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A260164.P10517552557603846841

/-! ## A260164.P12950213017084004270

`floor(A132965(2*n+1)/2)`
-/

namespace A260164.P12950213017084004270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132965 (2 * n + 1) : ℚ) / 2⌋

end

end A260164.P12950213017084004270

/-! ## A260164.P4119401966829143197

`1/2*A132965(A005408(n))`
-/

namespace A260164.P4119401966829143197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A132965 (A005408 n).toNat : ℚ)

end

end A260164.P4119401966829143197

/-! ## A260164.P17359528908565814821

`round(A132965(A004275(n+1)+1)/2)`
-/

namespace A260164.P17359528908565814821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A132965 (A004275 (n + 1) + 1).toNat : ℚ) / 2)

end

end A260164.P17359528908565814821

/-! ## A260164.P4914948736936687707

`abs(A065357(n)/2)*A132965(2*n+1)`
-/

namespace A260164.P4914948736936687707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A065357 n : ℚ) / 2| * (A132965 (2 * n + 1) : ℚ)

end

end A260164.P4914948736936687707

/-! ## A260164.P2030288150037127217

`(A132965(comp[2*n])/2)%A001565(n)`
-/

namespace A260164.P2030288150037127217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A132965 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2)) (A001565 n)

end

end A260164.P2030288150037127217

/-! ## A260164.P6695536485106250162

`A000027(A132965(2*n+1)/2)`
-/

namespace A260164.P6695536485106250162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A132965 (2 * n + 1) : ℚ) / 2)).toNat

end

end A260164.P6695536485106250162

/-!
# A260165: Expansion of f(x, x^2) * f(x, x^3)^3 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A260165, there is no canonical definition to state claims against.
-/

/-! ## A260165.P12547535184927437122

`A260158(2*n)`
-/

namespace A260165.P12547535184927437122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260158 (2 * n)

end

end A260165.P12547535184927437122

/-! ## A260165.P9020122285709392285

`A260158(A005843(n))%A016825(n)`
-/

namespace A260165.P9020122285709392285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260158 (A005843 n).toNat) (A016825 n)

end

end A260165.P9020122285709392285

/-! ## A260165.P1100668290460090045

`A260158(n+n)+A000007(A260158(n))`
-/

namespace A260165.P1100668290460090045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260158 (n + n) + A000007 (A260158 n).toNat

end

end A260165.P1100668290460090045

/-! ## A260165.P11844443207944570512

`A260158(n+n)+A000122(A000040(n+1))`
-/

namespace A260165.P11844443207944570512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260158 (n + n) + A000122 (A000040 (n + 1)).toNat

end

end A260165.P11844443207944570512

/-! ## A260165.P11784848024283801992

`A263021(A017197(n))/4`
-/

namespace A260165.P11784848024283801992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263021 (A017197 n).toNat : ℚ) / 4

end

end A260165.P11784848024283801992

/-! ## A260165.P16420640073549065745

`A260158(n+n)%A000132(A008444(n))`
-/

namespace A260165.P16420640073549065745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260158 (n + n)) (A000132 (A008444 n).toNat)

end

end A260165.P16420640073549065745

/-! ## A260165.P14200185470659809172

`A260158(n+n)+A199918(A142463(n+1))`
-/

namespace A260165.P14200185470659809172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260158 (n + n) + A199918 (A142463 (n + 1)).toNat

end

end A260165.P14200185470659809172

/-!
# A260166: Expansion of phi(x^2) * f(-x^3)^3 / chi(-x)^2 in powers of x where phi(), chi(), f() are Ramanujan theta functions.

The programs for A260166, the canonical program `A260166.P15996052265045843287` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260166 has offset 0).

The definition of A260166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260166.P15996052265045843287

`A260295(2*n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A260166

/-- `A260295(2*n)` -/
def P15996052265045843287.Spec : Prop :=
  ∀ n, P15996052265045843287.a n = A260166 n

theorem P15996052265045843287.correct : P15996052265045843287.Spec := by
  intro n
  simp only [A260166]

end A260166

/-! ## A260166.P137791225949785104

`xor(1, xor(1, A260295(n+n)))`
-/

namespace A260166.P137791225949785104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A260295 (n + n)))

end

end A260166.P137791225949785104

namespace A260166

/-- `xor(1, xor(1, A260295(n+n)))` -/
def P137791225949785104.Spec : Prop :=
  ∀ n, P137791225949785104.a n = A260166 n

end A260166

/-! ## A260166.P4541278347994093809

`A260295(A005843(n))%(n+2)²`
-/

namespace A260166.P4541278347994093809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260295 (A005843 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A260166.P4541278347994093809

namespace A260166

/-- `A260295(A005843(n))%(n+2)²` -/
def P4541278347994093809.Spec : Prop :=
  ∀ n, P4541278347994093809.a n = A260166 n

end A260166

/-! ## A260166.P13697622317302055986

`A260295(n+n)%A119416(A260295(n))`
-/

namespace A260166.P13697622317302055986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260295 (n + n)) (A119416 (A260295 n).toNat)

end

end A260166.P13697622317302055986

namespace A260166

/-- `A260295(n+n)%A119416(A260295(n))` -/
def P13697622317302055986.Spec : Prop :=
  ∀ n, P13697622317302055986.a n = A260166 n

end A260166

/-! ## A260166.P9563225459766331601

`A260158(4*n+1)/3`
-/

namespace A260166.P9563225459766331601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260158 (4 * n + 1) : ℚ) / 3

end

end A260166.P9563225459766331601

namespace A260166

/-- `A260158(4*n+1)/3` -/
def P9563225459766331601.Spec : Prop :=
  ∀ n, P9563225459766331601.a n = (A260166 n : ℚ)

end A260166

/-! ## A260166.P1818027536854962801

`A263021(A016933(n))/4`
-/

namespace A260166.P1818027536854962801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263021 (A016933 n).toNat : ℚ) / 4

end

end A260166.P1818027536854962801

namespace A260166

/-- `A263021(A016933(n))/4` -/
def P1818027536854962801.Spec : Prop :=
  ∀ n, P1818027536854962801.a n = (A260166 n : ℚ)

end A260166

/-!
# A260167: Expansion of psi(x^4) * f(-x^3)^3 / chi(-x)^2 in powers of x where psi(), chi(), f() are Ramanujan theta functions.

The programs for A260167, the canonical program `A260167.P17124022594414374465` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260167 has offset 0).

The definition of A260167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260167.P17124022594414374465

`A260295(Δ[n²])/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A260167

/-- `A260295(Δ[n²])/2` -/
def P17124022594414374465.Spec : Prop :=
  ∀ n, P17124022594414374465.a n = (A260167 n : ℚ)

end A260167

/-! ## A260167.P13387577823500777846

`A032742(A260295(Δ[n²]))`
-/

namespace A260167.P13387577823500777846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A260295 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A260167.P13387577823500777846

namespace A260167

/-- `A032742(A260295(Δ[n²]))` -/
def P13387577823500777846.Spec : Prop :=
  ∀ n, P13387577823500777846.a n = A260167 n

end A260167

/-! ## A260167.P12789057507996225401

`A001281(A260295(2*n+1))`
-/

namespace A260167.P12789057507996225401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A260295 (2 * n + 1)).toNat

end

end A260167.P12789057507996225401

namespace A260167

/-- `A001281(A260295(2*n+1))` -/
def P12789057507996225401.Spec : Prop :=
  ∀ n, P12789057507996225401.a n = A260167 n

end A260167

/-! ## A260167.P15429857393696454645

`A142150(A260295(xor(1, 2*n)))`
-/

namespace A260167.P15429857393696454645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A260295 (Nat.xor 1 (2 * n))).toNat

end

end A260167.P15429857393696454645

namespace A260167

/-- `A142150(A260295(xor(1, 2*n)))` -/
def P15429857393696454645.Spec : Prop :=
  ∀ n, P15429857393696454645.a n = A260167 n

end A260167

/-! ## A260167.P6769229251753016909

`A029578(A260295(n+1+n))`
-/

namespace A260167.P6769229251753016909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A260295 (n + 1 + n)).toNat

end

end A260167.P6769229251753016909

namespace A260167

/-- `A029578(A260295(n+1+n))` -/
def P6769229251753016909.Spec : Prop :=
  ∀ n, P6769229251753016909.a n = A260167 n

end A260167

/-! ## A260167.P5987141793998122515

`A004525(A260295(record[n^and(1, n)]))`
-/

namespace A260167.P5987141793998122515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A260295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A260167.P5987141793998122515

namespace A260167

/-- `A004525(A260295(record[n^and(1, n)]))` -/
def P5987141793998122515.Spec : Prop :=
  ∀ n, P5987141793998122515.a n = A260167 n

end A260167

/-! ## A260167.P1264443982488044585

`A004526(A260295(2*n+1)+1)`
-/

namespace A260167.P1264443982488044585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A260295 (2 * n + 1) + 1).toNat

end

end A260167.P1264443982488044585

namespace A260167

/-- `A004526(A260295(2*n+1)+1)` -/
def P1264443982488044585.Spec : Prop :=
  ∀ n, P1264443982488044585.a n = A260167 n

end A260167

/-! ## A260167.P15776120919505819518

`A131732(A260295(2*n+1)-2)`
-/

namespace A260167.P15776120919505819518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A260295 (2 * n + 1) - 2).toNat

end

end A260167.P15776120919505819518

namespace A260167

/-- `A131732(A260295(2*n+1)-2)` -/
def P15776120919505819518.Spec : Prop :=
  ∀ n, P15776120919505819518.a n = A260167 n

end A260167

/-! ## A260167.P12228172334253398507

`A142150(2*n+1)+A142150(A260295(2*n+1))`
-/

namespace A260167.P12228172334253398507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + A142150 (A260295 (2 * n + 1)).toNat

end

end A260167.P12228172334253398507

namespace A260167

/-- `A142150(2*n+1)+A142150(A260295(2*n+1))` -/
def P12228172334253398507.Spec : Prop :=
  ∀ n, P12228172334253398507.a n = A260167 n

end A260167

/-! ## A260167.P5063307552070732446

`A134824(A085058(n))+A131732(A260295(2*n+1))`
-/

namespace A260167.P5063307552070732446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A085058 n).toNat + A131732 (A260295 (2 * n + 1)).toNat

end

end A260167.P5063307552070732446

namespace A260167

/-- `A134824(A085058(n))+A131732(A260295(2*n+1))` -/
def P5063307552070732446.Spec : Prop :=
  ∀ n, P5063307552070732446.a n = A260167 n

end A260167

/-! ## A260167.P16549760023327458593

`A134824(A260295(n+1))+A131732(A260295(2*n+1))`
-/

namespace A260167.P16549760023327458593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A260295 (n + 1)).toNat + A131732 (A260295 (2 * n + 1)).toNat

end

end A260167.P16549760023327458593

namespace A260167

/-- `A134824(A260295(n+1))+A131732(A260295(2*n+1))` -/
def P16549760023327458593.Spec : Prop :=
  ∀ n, P16549760023327458593.a n = A260167 n

end A260167

/-! ## A260167.P6523802831184373095

`A131505(2*A260295(2*n+1))`
-/

namespace A260167.P6523802831184373095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (2 * A260295 (2 * n + 1)).toNat

end

end A260167.P6523802831184373095

namespace A260167

/-- `A131505(2*A260295(2*n+1))` -/
def P6523802831184373095.Spec : Prop :=
  ∀ n, P6523802831184373095.a n = A260167 n

end A260167

/-! ## A260167.P6690857993512869088

`A131508(2*A260295(2*n+1))`
-/

namespace A260167.P6690857993512869088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * A260295 (2 * n + 1)).toNat

end

end A260167.P6690857993512869088

namespace A260167

/-- `A131508(2*A260295(2*n+1))` -/
def P6690857993512869088.Spec : Prop :=
  ∀ n, P6690857993512869088.a n = A260167 n

end A260167

/-!
# A260168: Expansion of f(-x)^6 * f(-x^3)^2 / phi(-x^3)^8 in powers of q where phi(), f() are Ramanujan theta functions.

The programs for A260168, there is no canonical definition to state claims against.
-/

/-! ## A260168.P16595582707698472704

`-(A261576(2*n+1)/2)`
-/

namespace A260168.P16595582707698472704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A261576 (2 * n + 1) : ℚ) / 2)

end

end A260168.P16595582707698472704

/-!
# A260169: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260169, there is no canonical definition to state claims against.
-/

/-! ## A260169.P5900265907948454679

`A260177(∑[4*n]+1)`
-/

namespace A260169.P5900265907948454679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260169.P5900265907948454679

/-! ## A260169.P12325056418471501040

`A260177(A001844(n))+char[17]`
-/

namespace A260169.P12325056418471501040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260169.P12325056418471501040

/-! ## A260169.P11514834448076852656

`record[A003982(n)*A260177(n+1)]`
-/

namespace A260169.P11514834448076852656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260169.P11514834448076852656

/-! ## A260169.P3725611667323997639

`record[gcd(A008482(n), A260177(n+1))]`
-/

namespace A260169.P3725611667323997639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A260177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260169.P3725611667323997639

/-! ## A260169.P6153721821788273953

`A308978(n)+A260177(A001844(n))`
-/

namespace A260169.P6153721821788273953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308978 n + A260177 (A001844 n).toNat

end

end A260169.P6153721821788273953

/-!
# A260170: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260170, there is no canonical definition to state claims against.
-/

/-! ## A260170.P5835733763312864338

`A260177(∑[n]+1)`
-/

namespace A260170.P5835733763312864338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260170.P5835733763312864338

/-! ## A260170.P16224595299596872849

`record[A260177(n+1)/A007318(n)]`
-/

namespace A260170.P16224595299596872849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260177 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260170.P16224595299596872849

/-! ## A260170.P7557792743625625936

`record[A260177(n+1)/A008459(n)]`
-/

namespace A260170.P7557792743625625936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260177 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260170.P7557792743625625936

/-! ## A260170.P8452994757004092656

`record[A260177(n+1)/A013613(n)]`
-/

namespace A260170.P8452994757004092656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260177 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260170.P8452994757004092656

/-! ## A260170.P17328789778129584470

`record[A260177(n+1)/A164844(n)]`
-/

namespace A260170.P17328789778129584470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260177 (n + 1) : ℚ) / (A164844 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260170.P17328789778129584470

/-!
# A260171: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260171, there is no canonical definition to state claims against.
-/

/-! ## A260171.P9896568908451189842

`A260177(∑[n+1]+2)`
-/

namespace A260171.P9896568908451189842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260171.P9896568908451189842

/-! ## A260171.P11266386774242935166

`record[A260177(n+2)/A013613(n)]`
-/

namespace A260171.P11266386774242935166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260177 (n + 2) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260171.P11266386774242935166

/-! ## A260171.P17513251847712561378

`record[A260177(n+2)/A164844(n)]`
-/

namespace A260171.P17513251847712561378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260177 (n + 2) : ℚ) / (A164844 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260171.P17513251847712561378

/-! ## A260171.P10217990822481500000

`A000203(gcd(n, n+1))*A260177(A000124(n+1)+1)`
-/

namespace A260171.P10217990822481500000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A260177 (A000124 (n + 1) + 1).toNat

end

end A260171.P10217990822481500000

/-! ## A260171.P12693710419649106203

`A014963(A000217(n+5))*A260177(A000124(n+1)+1)`
-/

namespace A260171.P12693710419649106203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 5)).toNat * A260177 (A000124 (n + 1) + 1).toNat

end

end A260171.P12693710419649106203

/-!
# A260172: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260172, there is no canonical definition to state claims against.
-/

/-! ## A260172.P8294548763767967467

`A260177(∑[n+2]+4)`
-/

namespace A260172.P8294548763767967467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260172.P8294548763767967467

/-! ## A260172.P12234783162860620364

`A260177(A167614(n+1))+A011745(n)`
-/

namespace A260172.P12234783162860620364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A167614 (n + 1)).toNat + A011745 n

end

end A260172.P12234783162860620364

/-! ## A260172.P15066151345930224115

`lcm(A033999(n), A260177(A167614(n+1)))`
-/

namespace A260172.P15066151345930224115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A260177 (A167614 (n + 1)).toNat)

end

end A260172.P15066151345930224115

/-! ## A260172.P8970644457903811555

`or(A000007(n), A260177(A167614(n+1)))`
-/

namespace A260172.P8970644457903811555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A260177 (A167614 (n + 1)).toNat)

end

end A260172.P8970644457903811555

/-! ## A260172.P14488585110517777557

`A260177(A167614(n+1))%A204415(n+1)`
-/

namespace A260172.P14488585110517777557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260177 (A167614 (n + 1)).toNat) (A204415 (n + 1))

end

end A260172.P14488585110517777557

/-!
# A260173: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260173, there is no canonical definition to state claims against.
-/

/-! ## A260173.P16103473156245440728

`A260177(A374004(n+1))`
-/

namespace A260173.P16103473156245440728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A374004 (n + 1)).toNat

end

end A260173.P16103473156245440728

/-! ## A260173.P7335353043213460821

`A260177(A141214(n)+7)`
-/

namespace A260173.P7335353043213460821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A141214 n + 7).toNat

end

end A260173.P7335353043213460821

/-! ## A260173.P11126343193762990777

`A260177(A052905(n)+9)`
-/

namespace A260173.P11126343193762990777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A052905 n + 9).toNat

end

end A260173.P11126343193762990777

/-! ## A260173.P4874643039391998704

`A260177(A055999(n)+10)`
-/

namespace A260173.P4874643039391998704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A055999 n + 10).toNat

end

end A260173.P4874643039391998704

/-! ## A260173.P9846005911023700610

`A260177(A167614(n+2)+1)`
-/

namespace A260173.P9846005911023700610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A167614 (n + 2) + 1).toNat

end

end A260173.P9846005911023700610

/-!
# A260174: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260174, there is no canonical definition to state claims against.
-/

/-! ## A260174.P9073640847969542473

`A260177(A374005(n+1))`
-/

namespace A260174.P9073640847969542473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A374005 (n + 1)).toNat

end

end A260174.P9073640847969542473

/-! ## A260174.P16624671360288849244

`A260177(A155212(n)+13)`
-/

namespace A260174.P16624671360288849244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A155212 n + 13).toNat

end

end A260174.P16624671360288849244

/-! ## A260174.P6877029812784551596

`A260177(A055998(n+2)+8)`
-/

namespace A260174.P6877029812784551596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A055998 (n + 2) + 8).toNat

end

end A260174.P6877029812784551596

/-! ## A260174.P13381564476511993963

`A260177(A052905(n+1)+10)`
-/

namespace A260174.P13381564476511993963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A052905 (n + 1) + 10).toNat

end

end A260174.P13381564476511993963

/-! ## A260174.P14083432830324587832

`A260177(A000124(n+5)-(n+1))`
-/

namespace A260174.P14083432830324587832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A260174.P14083432830324587832

/-!
# A260175: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260175, there is no canonical definition to state claims against.
-/

/-! ## A260175.P13929803464934686313

`A260177(A374007(n+1))`
-/

namespace A260175.P13929803464934686313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A374007 (n + 1)).toNat

end

end A260175.P13929803464934686313

/-! ## A260175.P3496715640176019663

`A260177(A167487(n+4)-1)`
-/

namespace A260175.P3496715640176019663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A167487 (n + 4) - 1).toNat

end

end A260175.P3496715640176019663

/-! ## A260175.P17812496364165865362

`A260177(A133263(n+5)+4)`
-/

namespace A260175.P17812496364165865362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A133263 (n + 5) + 4).toNat

end

end A260175.P17812496364165865362

/-! ## A260175.P4166027725192350179

`A260177(A000217(n+5)+6)`
-/

namespace A260175.P4166027725192350179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A000217 (n + 5) + 6).toNat

end

end A260175.P4166027725192350179

/-! ## A260175.P2003471489411283994

`A260177(A000124(n+6)-(n+1))`
-/

namespace A260175.P2003471489411283994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A260175.P2003471489411283994

/-!
# A260176: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010001.

The programs for A260176, there is no canonical definition to state claims against.
-/

/-! ## A260176.P1851040408604998505

`A260177(A374008(n+1))`
-/

namespace A260176.P1851040408604998505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A374008 (n + 1)).toNat

end

end A260176.P1851040408604998505

/-! ## A260176.P12544377087519610810

`A260177(A167487(n+5))`
-/

namespace A260176.P12544377087519610810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A167487 (n + 5)).toNat

end

end A260176.P12544377087519610810

/-! ## A260176.P7615557286650714147

`A260177(A000217(n+6)+7)`
-/

namespace A260176.P7615557286650714147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A000217 (n + 6) + 7).toNat

end

end A260176.P7615557286650714147

/-! ## A260176.P17431946948938661274

`A260177(A155212(n)+A004277(n+13))`
-/

namespace A260176.P17431946948938661274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A155212 n + A004277 (n + 13)).toNat

end

end A260176.P17431946948938661274

/-! ## A260176.P2598240640267212785

`A260177(A052905(n+5)-A004273(n+2))`
-/

namespace A260176.P2598240640267212785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260177 (A052905 (n + 5) - A004273 (n + 2)).toNat

end

end A260176.P2598240640267212785

/-!
# A260178: a(n) = hyperfactorial(prime(n)-1) mod prime(n).

The programs for A260178, there is no canonical definition to state claims against.
-/

/-! ## A260178.P3794087662506905575

`A000040(n+1)-A260297(n+1)`
-/

namespace A260178.P3794087662506905575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A260297 (n + 1)

end

end A260178.P3794087662506905575

/-! ## A260178.P17100331708346052864

`A014689(n+1)+n+1-A260297(n+1)`
-/

namespace A260178.P17100331708346052864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + ((n + 1 : ℤ) - A260297 (n + 1))

end

end A260178.P17100331708346052864

/-! ## A260178.P11515014940379454757

`A008578(n+2)-A260297(n+1)`
-/

namespace A260178.P11515014940379454757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A260297 (n + 1)

end

end A260178.P11515014940379454757

/-! ## A260178.P11234362259333378887

`p?[A000961(n+1)]-A260297(n+1)`
-/

namespace A260178.P11234362259333378887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260297 (n + 1)

end

end A260178.P11234362259333378887

/-! ## A260178.P3328102973678946907

`A151800(eq[2, A000005(n+1)])-A260297(n+1)`
-/

namespace A260178.P3328102973678946907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A260297 (n + 1)

end

end A260178.P3328102973678946907

/-! ## A260178.P8329212664668281531

`p?[A325314(n+1)]-A260297(n+1)`
-/

namespace A260178.P8329212664668281531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260297 (n + 1)

end

end A260178.P8329212664668281531

/-! ## A260178.P17528555173345157963

`A347309(A347313(n+1))-A260297(n+1)`
-/

namespace A260178.P17528555173345157963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347309 (A347313 (n + 1)).toNat - A260297 (n + 1)

end

end A260178.P17528555173345157963

/-!
# A260179: Primes pr(k) such that pr(k)+pr(k+1)+pr(k+6)+pr(k+7) = pr(k+2)+pr(k+3)+pr(k+4)+pr(k+5).

The programs for A260179, there is no canonical definition to state claims against.
-/

/-! ## A260179.P12723454390243535505

`A082372(eq[n, A305252(n+1)])`
-/

namespace A260179.P12723454390243535505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260179.P12723454390243535505

/-!
# A260180: G.f.: Sum_{n>=0} x^n * (1 - x^n)^n.

The programs for A260180, there is no canonical definition to state claims against.
-/

/-! ## A260180.P10909225661747236241

`A055327(A046671(n+4))-A142150(n)`
-/

namespace A260180.P10909225661747236241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055327 (A046671 (n + 4)).toNat - A142150 n

end

end A260180.P10909225661747236241

/-! ## A260180.P3892699083636636591

`A007318(A089841(n))-(n-gcd(n, ∑[n]))`
-/

namespace A260180.P3892699083636636591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A089841 n).toNat - ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A260180.P3892699083636636591

/-! ## A260180.P16966357950183277862

`A007318(A089841(n))-A142150(n)`
-/

namespace A260180.P16966357950183277862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A089841 n).toNat - A142150 n

end

end A260180.P16966357950183277862

/-! ## A260180.P11435861684493362742

`A046799(A138960(n+1))-A142150(n)`
-/

namespace A260180.P11435861684493362742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A138960 (n + 1)).toNat - A142150 n

end

end A260180.P11435861684493362742

/-! ## A260180.P7307743430096959744

`A001055(A228107(3*n+1))-A142150(n)`
-/

namespace A260180.P7307743430096959744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A228107 (3 * n + 1)).toNat - A142150 n

end

end A260180.P7307743430096959744

/-!
# A260181: Numbers whose last digit is prime.

The programs for A260181, the canonical program `A260181.P2485934344326140222` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260181 has offset 1).

The definition of A260181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260181.P2485934344326140222

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=12`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260181

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P2485934344326140222.Spec : Prop :=
  ∀ n, P2485934344326140222.a n = A260181 (n + 1)

theorem P2485934344326140222.correct : P2485934344326140222.Spec := by
  intro n
  simp only [A260181, Nat.add_sub_cancel]

end A260181

/-! ## A260181.P16970566117192235804

`a(n-4)+10` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A260181.P16970566117192235804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 4) + 10

end

end A260181.P16970566117192235804

namespace A260181

/-- `a(n-4)+10` -/
def P16970566117192235804.Spec : Prop :=
  ∀ n, (P16970566117192235804.a n : ℤ) = A260181 (n + 1)

end A260181

/-! ## A260181.P9555516354884517122

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A260181.P9555516354884517122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260181.P9555516354884517122

namespace A260181

/-- `∑[floor(a(n-4))]` -/
def P9555516354884517122.Spec : Prop :=
  ∀ n, (P9555516354884517122.a n : ℤ) = A260181 (n + 1)

end A260181

/-! ## A260181.P3397128860651244931

`∑[a(n-4)%6]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=5`
-/

namespace A260181.P3397128860651244931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 5] fun n f1 =>
  f1 (n - 4) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260181.P3397128860651244931

namespace A260181

/-- `∑[a(n-4)%6]` -/
def P3397128860651244931.Spec : Prop :=
  ∀ n, (P3397128860651244931.a n : ℤ) = A260181 (n + 1)

end A260181

/-! ## A260181.P12469917783180231982

`∑[∑[ogf((x+2x^2+2x^3+5x^4)/(1+x+x^2+x^3))]]+2`
-/

namespace A260181.P12469917783180231982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 5] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A260181.P12469917783180231982

namespace A260181

/-- `∑[∑[ogf((x+2x^2+2x^3+5x^4)/(1+x+x^2+x^3))]]+2` -/
def P12469917783180231982.Spec : Prop :=
  ∀ n, P12469917783180231982.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P16962235568875189632

`A109613(floor(n/2))+char[4*n]+2*n`
-/

namespace A260181.P16962235568875189632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ⌊(n : ℚ) / 2⌋.toNat + (((if ∃ j, f1 j = n then 1 else 0) + 2 * n : ℕ) : ℤ)

end

end A260181.P16962235568875189632

namespace A260181

/-- `A109613(floor(n/2))+char[4*n]+2*n` -/
def P16962235568875189632.Spec : Prop :=
  ∀ n, P16962235568875189632.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P13792819048043276609

`A028835(n+1)+A002265(n)`
-/

namespace A260181.P13792819048043276609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1) + A002265 n

end

end A260181.P13792819048043276609

namespace A260181

/-- `A028835(n+1)+A002265(n)` -/
def P13792819048043276609.Spec : Prop :=
  ∀ n, P13792819048043276609.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P16172804225955166942

`A047417(n+1)+A004526(n)`
-/

namespace A260181.P16172804225955166942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047417 (n + 1) + A004526 n

end

end A260181.P16172804225955166942

namespace A260181

/-- `A047417(n+1)+A004526(n)` -/
def P16172804225955166942.Spec : Prop :=
  ∀ n, P16172804225955166942.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P15141578282981006076

`A047447(n+1)+A004524(n)`
-/

namespace A260181.P15141578282981006076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047447 (n + 1) + A004524 n

end

end A260181.P15141578282981006076

namespace A260181

/-- `A047447(n+1)+A004524(n)` -/
def P15141578282981006076.Spec : Prop :=
  ∀ n, P15141578282981006076.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P17843915070778504568

`A047606(n+1)+A008619(n)`
-/

namespace A260181.P17843915070778504568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1) + A008619 n

end

end A260181.P17843915070778504568

namespace A260181

/-- `A047606(n+1)+A008619(n)` -/
def P17843915070778504568.Spec : Prop :=
  ∀ n, P17843915070778504568.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P11032840113622967035

`A047338(n+1)+A037915(n)`
-/

namespace A260181.P11032840113622967035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047338 (n + 1) + A037915 n

end

end A260181.P11032840113622967035

namespace A260181

/-- `A047338(n+1)+A037915(n)` -/
def P11032840113622967035.Spec : Prop :=
  ∀ n, P11032840113622967035.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P6711746219716563693

`A057353(n)+A047362(n+1)`
-/

namespace A260181.P6711746219716563693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A047362 (n + 1)

end

end A260181.P6711746219716563693

namespace A260181

/-- `A057353(n)+A047362(n+1)` -/
def P6711746219716563693.Spec : Prop :=
  ∀ n, P6711746219716563693.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P14821010887356195056

`A106249(n)+A047600(n+1)`
-/

namespace A260181.P14821010887356195056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n + A047600 (n + 1)

end

end A260181.P14821010887356195056

namespace A260181

/-- `A106249(n)+A047600(n+1)` -/
def P14821010887356195056.Spec : Prop :=
  ∀ n, P14821010887356195056.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P8394418183514090337

`A122461(n)+A047487(n+1)`
-/

namespace A260181.P8394418183514090337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 n + A047487 (n + 1)

end

end A260181.P8394418183514090337

namespace A260181

/-- `A122461(n)+A047487(n+1)` -/
def P8394418183514090337.Spec : Prop :=
  ∀ n, P8394418183514090337.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P18055917304540294925

`A129756(n)+A047411(n+1)`
-/

namespace A260181.P18055917304540294925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n + A047411 (n + 1)

end

end A260181.P18055917304540294925

namespace A260181

/-- `A129756(n)+A047411(n+1)` -/
def P18055917304540294925.Spec : Prop :=
  ∀ n, P18055917304540294925.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P17126031581244792689

`A130766(n)+A047380(n+1)`
-/

namespace A260181.P17126031581244792689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047380 (n + 1)

end

end A260181.P17126031581244792689

namespace A260181

/-- `A130766(n)+A047380(n+1)` -/
def P17126031581244792689.Spec : Prop :=
  ∀ n, P17126031581244792689.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P4307728718996771213

`A187321(n)+A047300(n+1)`
-/

namespace A260181.P4307728718996771213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 n + A047300 (n + 1)

end

end A260181.P4307728718996771213

namespace A260181

/-- `A187321(n)+A047300(n+1)` -/
def P4307728718996771213.Spec : Prop :=
  ∀ n, P4307728718996771213.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P2010078078275241525

`A168484(n+1)-A002265(n)`
-/

namespace A260181.P2010078078275241525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) - A002265 n

end

end A260181.P2010078078275241525

namespace A260181

/-- `A168484(n+1)-A002265(n)` -/
def P2010078078275241525.Spec : Prop :=
  ∀ n, P2010078078275241525.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P17198661705555905494

`A080460(n+1)-A215415(n)`
-/

namespace A260181.P17198661705555905494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080460 (n + 1) - A215415 n

end

end A260181.P17198661705555905494

namespace A260181

/-- `A080460(n+1)-A215415(n)` -/
def P17198661705555905494.Spec : Prop :=
  ∀ n, P17198661705555905494.a n = A260181 (n + 1)

end A260181

/-! ## A260181.P635866019467468449

`A217562(n+1)-A166486(n)`
-/

namespace A260181.P635866019467468449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1) - A166486 n

end

end A260181.P635866019467468449

namespace A260181

/-- `A217562(n+1)-A166486(n)` -/
def P635866019467468449.Spec : Prop :=
  ∀ n, P635866019467468449.a n = A260181 (n + 1)

end A260181

/-!
# A260183: Expansion of f(x, x^2) * f(x^4, x^8) / f(-x^3, -x^6)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A260183, there is no canonical definition to state claims against.
-/

/-! ## A260183.P232803046196519078

`A003105(2*n)`
-/

namespace A260183.P232803046196519078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 (2 * n)

end

end A260183.P232803046196519078

/-! ## A260183.P10319058954099115056

`xor(1, xor(1, A003105(n+n)))`
-/

namespace A260183.P10319058954099115056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A003105 (n + n)))

end

end A260183.P10319058954099115056

/-! ## A260183.P18088673900284363213

`A003105(n+n)%A098151(n+1)`
-/

namespace A260183.P18088673900284363213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003105 (n + n)) (A098151 (n + 1))

end

end A260183.P18088673900284363213

/-! ## A260183.P15242123232013361492

`A227398(2*n)`
-/

namespace A260183.P15242123232013361492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227398 (2 * n)

end

end A260183.P15242123232013361492

/-! ## A260183.P7648433607950754085

`A380481(2*n)+A011655(n)`
-/

namespace A260183.P7648433607950754085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380481 (2 * n) + A011655 n

end

end A260183.P7648433607950754085

/-! ## A260183.P197782879961294737

`A227398(n+n)+A025439(A000005(n+1))`
-/

namespace A260183.P197782879961294737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227398 (n + n) + A025439 (A000005 (n + 1)).toNat

end

end A260183.P197782879961294737

/-! ## A260183.P2017127026234989092

`A112207(12*n)`
-/

namespace A260183.P2017127026234989092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112207 (12 * n)

end

end A260183.P2017127026234989092

/-! ## A260183.P1474491595353378535

`A112208(12*n)`
-/

namespace A260183.P1474491595353378535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 (12 * n)

end

end A260183.P1474491595353378535

/-! ## A260183.P10178924255503364931

`A290307((n+3)*Δ[n²])`
-/

namespace A260183.P10178924255503364931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 ((n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A260183.P10178924255503364931

/-!
# A260184: Numbers n written in base 10 that are palindromic in exactly three bases b, 2 <= b <= 10 and not simultaneously bases 2, 4 and 8.

The programs for A260184, there is no canonical definition to state claims against.
-/

/-! ## A260184.P3168497286806563296

`∩[A209887(n+1), A214425(n+1)]`
-/

namespace A260184.P3168497286806563296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260184.P3168497286806563296

/-!
# A260185: a(n) is the number of ways to select an ordered pair of subsets of {2,...,n} such that each pair of elements from different subsets are relatively prime.

The programs for A260185, there is no canonical definition to state claims against.
-/

/-! ## A260185.P15147562711797210812

`A213622(C(A110110(n), 2))`
-/

namespace A260185.P15147562711797210812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213622 (Nat.choose (A110110 n).toNat 2)

end

end A260185.P15147562711797210812

/-! ## A260185.P5533570962296093584

`record[gcd(A002113(n+1), A145511(3*n+2))]`
-/

namespace A260185.P5533570962296093584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002113 (n + 1)) (A145511 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260185.P5533570962296093584

/-! ## A260185.P7008594953946863247

`A057493(A003592(n+1)%A072252(n+1))`
-/

namespace A260185.P7008594953946863247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057493 (Int.tmod (A003592 (n + 1)) (A072252 (n + 1))).toNat

end

end A260185.P7008594953946863247

/-!
# A260186: Expansion of (phi(q^4) / phi(q))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A260186, there is no canonical definition to state claims against.
-/

/-! ## A260186.P5021346366612103393

`(A210066(n)+A189925(n))/2`
-/

namespace A260186.P5021346366612103393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210066 n + A189925 n : ℚ) / 2

end

end A260186.P5021346366612103393

/-! ## A260186.P7847321901903559860

`A006983(A277087(n))-A085750(n+2)`
-/

namespace A260186.P7847321901903559860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (A277087 n).toNat - A085750 (n + 2)

end

end A260186.P7847321901903559860

/-!
# A260187: a(n) = n modulo the greatest primorial <= n.

The programs for A260187, the canonical program `A260187.P12900667191599328450` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260187 has offset 1).

The definition of A260187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260187.P12900667191599328450

`(n+1)%A260188(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A260187

/-- `(n+1)%A260188(n+1)` -/
def P12900667191599328450.Spec : Prop :=
  ∀ n, P12900667191599328450.a n = A260187 (n + 1)

theorem P12900667191599328450.correct : P12900667191599328450.Spec := by
  intro n
  simp only [A260187, Nat.add_sub_cancel]

end A260187

/-! ## A260187.P3629526753542263629

`(n+1)%A276157(A109613(n))`
-/

namespace A260187.P3629526753542263629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276157 (A109613 n).toNat)

end

end A260187.P3629526753542263629

namespace A260187

/-- `(n+1)%A276157(A109613(n))` -/
def P3629526753542263629.Spec : Prop :=
  ∀ n, P3629526753542263629.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P14776775250212895476

`A000027(n+1)%A276157(or(1, n))`
-/

namespace A260187.P14776775250212895476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A276157 (Nat.lor 1 n))

end

end A260187.P14776775250212895476

namespace A260187

/-- `A000027(n+1)%A276157(or(1, n))` -/
def P14776775250212895476.Spec : Prop :=
  ∀ n, P14776775250212895476.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P17765098320952699662

`n+1-A060735(A276150(A343045(n+1)))`
-/

namespace A260187.P17765098320952699662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060735 (A276150 (A343045 (n + 1)).toNat).toNat

end

end A260187.P17765098320952699662

namespace A260187

/-- `n+1-A060735(A276150(A343045(n+1)))` -/
def P17765098320952699662.Spec : Prop :=
  ∀ n, P17765098320952699662.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P7303652311698774991

`A111701(n+1)%A276157(n+1)*A053589(n+1)`
-/

namespace A260187.P7303652311698774991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111701 (n + 1)) (A276157 (n + 1)) * A053589 (n + 1)

end

end A260187.P7303652311698774991

namespace A260187

/-- `A111701(n+1)%A276157(n+1)*A053589(n+1)` -/
def P7303652311698774991.Spec : Prop :=
  ∀ n, P7303652311698774991.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P2466193558306402641

`A008619(2*n)%A276157(or(1, n))`
-/

namespace A260187.P2466193558306402641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (A276157 (Nat.lor 1 n))

end

end A260187.P2466193558306402641

namespace A260187

/-- `A008619(2*n)%A276157(or(1, n))` -/
def P2466193558306402641.Spec : Prop :=
  ∀ n, P2466193558306402641.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P1646681934430206011

`A003602(2*n+1)%A276157(or(1, n))`
-/

namespace A260187.P1646681934430206011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (2 * n + 1)) (A276157 (Nat.lor 1 n))

end

end A260187.P1646681934430206011

namespace A260187

/-- `A003602(2*n+1)%A276157(or(1, n))` -/
def P1646681934430206011.Spec : Prop :=
  ∀ n, P1646681934430206011.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P17067263626711091339

`A003056(∑[n+1])%A007947(A293780(n+1))`
-/

namespace A260187.P17067263626711091339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)) (A007947 (A293780 (n + 1)).toNat)

end

end A260187.P17067263626711091339

namespace A260187

/-- `A003056(∑[n+1])%A007947(A293780(n+1))` -/
def P17067263626711091339.Spec : Prop :=
  ∀ n, P17067263626711091339.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P18267229913440890347

`A285328(A065642(n+1))%A007947(A293780(n+1))`
-/

namespace A260187.P18267229913440890347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285328 (A065642 (n + 1)).toNat) (A007947 (A293780 (n + 1)).toNat)

end

end A260187.P18267229913440890347

namespace A260187

/-- `A285328(A065642(n+1))%A007947(A293780(n+1))` -/
def P18267229913440890347.Spec : Prop :=
  ∀ n, P18267229913440890347.a n = A260187 (n + 1)

end A260187

/-! ## A260187.P975367275427528965

`A195507(n+1)%A343122(n+2)`
-/

namespace A260187.P975367275427528965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195507 (n + 1)) (A343122 (n + 2))

end

end A260187.P975367275427528965

namespace A260187

/-- `A195507(n+1)%A343122(n+2)` -/
def P975367275427528965.Spec : Prop :=
  ∀ n, P975367275427528965.a n = A260187 (n + 1)

end A260187

/-!
# A260188: Greatest primorial less than or equal to n.

The programs for A260188, the canonical program `A260188.P5872051986536960582` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260188 has offset 1).

The definition of A260188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260188.P2842307643259505014

`A276157(or(1, n+1))`
-/

namespace A260188.P2842307643259505014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (Nat.lor 1 (n + 1))

end

end A260188.P2842307643259505014

namespace A260188

/-- `A276157(or(1, n+1))` -/
def P2842307643259505014.Spec : Prop :=
  ∀ n, P2842307643259505014.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P5872051986536960582

`lcm(a(n-1), A105561(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260188

/-- `lcm(a(n-1), A105561(n+1))` -/
def P5872051986536960582.Spec : Prop :=
  ∀ n, (P5872051986536960582.a n : ℤ) = A260188 (n + 1)

theorem P5872051986536960582.correct : P5872051986536960582.Spec := by
  intro n
  simp only [A260188, Nat.add_sub_cancel]

end A260188

/-! ## A260188.P2337582024141598588

`A276157(A109613(n+1))`
-/

namespace A260188.P2337582024141598588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (A109613 (n + 1)).toNat

end

end A260188.P2337582024141598588

namespace A260188

/-- `A276157(A109613(n+1))` -/
def P2337582024141598588.Spec : Prop :=
  ∀ n, P2337582024141598588.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P14394318172618886304

`A276157(A343045(n+1))`
-/

namespace A260188.P14394318172618886304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (A343045 (n + 1)).toNat

end

end A260188.P14394318172618886304

namespace A260188

/-- `A276157(A343045(n+1))` -/
def P14394318172618886304.Spec : Prop :=
  ∀ n, P14394318172618886304.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P7655518776196027808

`A276157(A290562(n)+2)`
-/

namespace A260188.P7655518776196027808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (A290562 n + 2).toNat

end

end A260188.P7655518776196027808

namespace A260188

/-- `A276157(A290562(n)+2)` -/
def P7655518776196027808.Spec : Prop :=
  ∀ n, P7655518776196027808.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P16653442226614112829

`A276157(A053589(n+1)+n)`
-/

namespace A260188.P16653442226614112829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (A053589 (n + 1) + (n : ℤ)).toNat

end

end A260188.P16653442226614112829

namespace A260188

/-- `A276157(A053589(n+1)+n)` -/
def P16653442226614112829.Spec : Prop :=
  ∀ n, P16653442226614112829.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P4930796077400246037

`A007947(1-A260187(n+1)+n)`
-/

namespace A260188.P4930796077400246037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (1 - A260187 (n + 1) + (n : ℤ)).toNat

end

end A260188.P4930796077400246037

namespace A260188

/-- `A007947(1-A260187(n+1)+n)` -/
def P4930796077400246037.Spec : Prop :=
  ∀ n, P4930796077400246037.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P4148370263850107707

`A053589(1-A260187(n+1)+n)`
-/

namespace A260188.P4148370263850107707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (1 - A260187 (n + 1) + (n : ℤ)).toNat

end

end A260188.P4148370263850107707

namespace A260188

/-- `A053589(1-A260187(n+1)+n)` -/
def P4148370263850107707.Spec : Prop :=
  ∀ n, P4148370263850107707.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P1713101648086217680

`A276157(2-A260187(n+1)+n)`
-/

namespace A260188.P1713101648086217680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (2 - A260187 (n + 1) + (n : ℤ)).toNat

end

end A260188.P1713101648086217680

namespace A260188

/-- `A276157(2-A260187(n+1)+n)` -/
def P1713101648086217680.Spec : Prop :=
  ∀ n, P1713101648086217680.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P7694345697201015255

`lcm(A276157(n+1), A276157(n+2))`
-/

namespace A260188.P7694345697201015255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A276157 (n + 1)) (A276157 (n + 2))

end

end A260188.P7694345697201015255

namespace A260188

/-- `lcm(A276157(n+1), A276157(n+2))` -/
def P7694345697201015255.Spec : Prop :=
  ∀ n, (P7694345697201015255.a n : ℤ) = A260188 (n + 1)

end A260188

/-! ## A260188.P14430406115504159420

`A002110(∑[char[A002110(n+1)-1]])`
-/

namespace A260188.P14430406115504159420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260188.P14430406115504159420

namespace A260188

/-- `A002110(∑[char[A002110(n+1)-1]])` -/
def P14430406115504159420.Spec : Prop :=
  ∀ n, P14430406115504159420.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P10748868470115434416

`A276085(A006530(A328571(n+1)))`
-/

namespace A260188.P10748868470115434416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A006530 (A328571 (n + 1)).toNat).toNat

end

end A260188.P10748868470115434416

namespace A260188

/-- `A276085(A006530(A328571(n+1)))` -/
def P10748868470115434416.Spec : Prop :=
  ∀ n, P10748868470115434416.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P4881923509208963905

`A034386(A006530(n+1-A260187(n+1)))`
-/

namespace A260188.P4881923509208963905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A006530 ((n + 1 : ℤ) - A260187 (n + 1)).toNat).toNat

end

end A260188.P4881923509208963905

namespace A260188

/-- `A034386(A006530(n+1-A260187(n+1)))` -/
def P4881923509208963905.Spec : Prop :=
  ∀ n, P4881923509208963905.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P18023615221324913680

`A276157(A063196(n+2))`
-/

namespace A260188.P18023615221324913680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (A063196 (n + 2)).toNat

end

end A260188.P18023615221324913680

namespace A260188

/-- `A276157(A063196(n+2))` -/
def P18023615221324913680.Spec : Prop :=
  ∀ n, P18023615221324913680.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P10620036494441266289

`A276157(Δ[A000982(n+1)])`
-/

namespace A260188.P10620036494441266289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (f1 (n + 1) - f1 n).toNat

end

end A260188.P10620036494441266289

namespace A260188

/-- `A276157(Δ[A000982(n+1)])` -/
def P10620036494441266289.Spec : Prop :=
  ∀ n, P10620036494441266289.a n = A260188 (n + 1)

end A260188

/-! ## A260188.P10456945676631331271

`A002110(A079067(A079068(A328613(n+1))))`
-/

namespace A260188.P10456945676631331271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A079067 (A079068 (A328613 (n + 1)).toNat).toNat).toNat

end

end A260188.P10456945676631331271

namespace A260188

/-- `A002110(A079067(A079068(A328613(n+1))))` -/
def P10456945676631331271.Spec : Prop :=
  ∀ n, P10456945676631331271.a n = A260188 (n + 1)

end A260188

/-!
# A260189: a(n) = A033148(n) / 2^floor(n/4).

The programs for A260189, there is no canonical definition to state claims against.
-/

/-! ## A260189.P8425698064242580444

`A033148(n+1)/2^floor((n+1)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260189.P8425698064242580444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 4⌋ : ℤ)

end

end A260189.P8425698064242580444

/-!
# A260190: Kronecker symbol(-6 / 2*n + 1).

The programs for A260190, there is no canonical definition to state claims against.
-/

/-! ## A260190.P9963818568986107344

`A109017(2*n+1)`
-/

namespace A260190.P9963818568986107344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (2 * n + 1)

end

end A260190.P9963818568986107344

/-!
# A260191: Numbers m such that there exists no square whose base-m digit sum is binomial(m,2).

The programs for A260191, there is no canonical definition to state claims against.
-/

/-! ## A260191.P6909413949229697010

`2*lt[and(n+2, -n)%3, 1]+3`
-/

namespace A260191.P6909413949229697010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 2 : ℤ) (-(n : ℤ))) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A260191.P6909413949229697010

/-! ## A260191.P7066504113815869916

`record[3-2*n/(-1)^val(n+1, 2)]`
-/

namespace A260191.P7066504113815869916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (2 * n : ℚ) / ((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260191.P7066504113815869916

/-! ## A260191.P12202485471406246712

`record[or(n^(n%2)+1, (-1)^val(n+1, 2))]`
-/

namespace A260191.P12202485471406246712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ (n % 2) + 1 : ℤ) ((-1) ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260191.P12202485471406246712

/-! ## A260191.P1668470091960684269

`A249034(n%a(n-1))` with `a(0)=3`
-/

namespace A260191.P1668470091960684269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A249034 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A260191.P1668470091960684269

/-! ## A260191.P554203174831602975

`A161641(record[lcm(2, n)+1])+3`
-/

namespace A260191.P554203174831602975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 3

end

end A260191.P554203174831602975

/-! ## A260191.P16307829172910912744

`record[2*n*A096268(n)+3]`
-/

namespace A260191.P16307829172910912744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A096268 n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260191.P16307829172910912744

/-! ## A260191.P17662028273248637672

`or(1, A344346(comp[2*(n+1)]+1))`
-/

namespace A260191.P17662028273248637672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344346 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1))

end

end A260191.P17662028273248637672

/-! ## A260191.P6469972327700537190

`record[xor(ceil(acot(n)), A214682(2*(n+1)))]`
-/

namespace A260191.P6469972327700537190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈SequenceMachineLib.acot (n : ℝ)⌉ (A214682 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260191.P6469972327700537190

/-! ## A260191.P13385135961022920509

`record[or((-1)^val(n+1, 2), A133265(n))]`
-/

namespace A260191.P13385135961022920509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A133265 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260191.P13385135961022920509

/-! ## A260191.P8402604268990325468

`2*eq[1, A000005(a(and(n, -n)%3-1))]+1` with `a(0)=2, a(1)=1`
-/

namespace A260191.P8402604268990325468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000005 (f2 (Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3 - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260191.P8402604268990325468

/-!
# A260192: Kronecker symbol(-6 / 2*n + 7).

The programs for A260192, there is no canonical definition to state claims against.
-/

/-! ## A260192.P11234909248895382344

`A117441(n+1)`
-/

namespace A260192.P11234909248895382344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117441 (n + 1)

end

end A260192.P11234909248895382344

/-!
# A260194: a(n+1) = a(n) + gcd(a(n),a(n-2)), with a(1) = a(2) = a(3) = 1.

The programs for A260194, the canonical program `A260194.P14306436894660551201` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260194 has offset 1).

The definition of A260194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260194.P14306436894660551201

`a(n-1)+gcd(a(n-1), a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260194

/-- `a(n-1)+gcd(a(n-1), a(n-3))` -/
def P14306436894660551201.Spec : Prop :=
  ∀ n, (P14306436894660551201.a n : ℤ) = A260194 (n + 1)

theorem P14306436894660551201.correct : P14306436894660551201.Spec := by
  intro n
  simp only [A260194, Nat.add_sub_cancel]

end A260194

/-!
# A260195: Number of integer triples [x, y, z] such that 1 <= min(x,z), max(x,z) <= y, y^2 - (x^2 - x + z^2 - z) / 2 = n.

The programs for A260195, there is no canonical definition to state claims against.
-/

/-! ## A260195.P4271724805635589275

`A238872(n)%(n+1)`
-/

namespace A260195.P4271724805635589275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238872 n) (n + 1 : ℤ)

end

end A260195.P4271724805635589275

/-! ## A260195.P18142421575219407790

`A238872(n-char[1])-floor(acot(n))`
-/

namespace A260195.P18142421575219407790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (n - (if ∃ j, f1 j = n then 1 else 0)) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A260195.P18142421575219407790

/-! ## A260195.P2908604914092108857

`abs(A292511(abs(1-n))%(n+1))`
-/

namespace A260195.P2908604914092108857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.tmod (A292511 |1 - (n : ℤ)|.toNat) (n + 1 : ℤ))|

end

end A260195.P2908604914092108857

/-! ## A260195.P15478846498688612033

`A238872(n)-A000007(n)`
-/

namespace A260195.P15478846498688612033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 n - A000007 n

end

end A260195.P15478846498688612033

/-! ## A260195.P16568392252792348662

`A238872(n)-A151878(n)`
-/

namespace A260195.P16568392252792348662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 n - A151878 n

end

end A260195.P16568392252792348662

/-! ## A260195.P11346106973507657422

`A238872(n)-A151909(n)`
-/

namespace A260195.P11346106973507657422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 n - A151909 n

end

end A260195.P11346106973507657422

/-! ## A260195.P4566869143073177417

`A238872(n)-A151933(n)`
-/

namespace A260195.P4566869143073177417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 n - A151933 n

end

end A260195.P4566869143073177417

/-! ## A260195.P16524098251431541195

`A057427(n)*A238872(n)`
-/

namespace A260195.P16524098251431541195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A238872 n

end

end A260195.P16524098251431541195

/-! ## A260195.P415765344875919399

`A178334(n)*A238872(n)`
-/

namespace A260195.P415765344875919399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A238872 n

end

end A260195.P415765344875919399

/-! ## A260195.P5078325662331390773

`and(A000225(n), A238872(n))`
-/

namespace A260195.P5078325662331390773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A238872 n)

end

end A260195.P5078325662331390773

/-!
# A260196: 1, -3, followed by -1's.

The programs for A260196, the canonical program `A260196.P12598155231434087214` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260196 has offset 0).

The definition of A260196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260196.P12598155231434087214

`a(n-1)` with `a(0)=1, a(1)=-3, a(2)=-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260196

/-- `a(n-1)` -/
def P12598155231434087214.Spec : Prop :=
  ∀ n, P12598155231434087214.a n = A260196 n

theorem P12598155231434087214.correct : P12598155231434087214.Spec := by
  intro n
  simp only [A260196]

end A260196

/-!
# A260199: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260199, there is no canonical definition to state claims against.
-/

/-! ## A260199.P17947270202749106583

`A260207((n+1)²+n²)`
-/

namespace A260199.P17947270202749106583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 ((n + 1) ^ 2 + n ^ 2)

end

end A260199.P17947270202749106583

/-! ## A260199.P9079281684675697561

`record[gcd(A114327(n), A260207(n+1))]`
-/

namespace A260199.P9079281684675697561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A260207 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260199.P9079281684675697561

/-! ## A260199.P4662801369919509839

`record[A077606(n+1)*A260207(n+1)]`
-/

namespace A260199.P4662801369919509839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A260207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260199.P4662801369919509839

/-! ## A260199.P13999097901933480297

`A007318(∑[n])*A260207(A001844(n))`
-/

namespace A260199.P13999097901933480297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A260207 (A001844 n).toNat

end

end A260199.P13999097901933480297

/-! ## A260199.P16510562331119994590

`A260207(A001844(n))/A007318(C(n+2, 2))`
-/

namespace A260199.P16510562331119994590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260207 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose (n + 2) 2) : ℚ)

end

end A260199.P16510562331119994590

