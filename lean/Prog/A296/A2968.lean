import SequenceMachineLib.Basic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A296800: Number of nX4 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1s.

The programs for A296800, there is no canonical definition to state claims against.
-/

/-! ## A296800.P8881434898974619723

`A296804(A055999(n)+10)`
-/

namespace A296800.P8881434898974619723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A055999 n + 10).toNat

end

end A296800.P8881434898974619723

/-! ## A296800.P11254862397706753255

`A296804(A167614(n+2)+1)`
-/

namespace A296800.P11254862397706753255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A167614 (n + 2) + 1).toNat

end

end A296800.P11254862397706753255

/-! ## A296800.P5445881652012674692

`A296804(A000217(n+3)+4)`
-/

namespace A296800.P5445881652012674692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A000217 (n + 3) + 4).toNat

end

end A296800.P5445881652012674692

/-! ## A296800.P8276780314228995020

`A296804(Δ[A023545(n+1)-n²])`
-/

namespace A296800.P8276780314228995020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (f1 (n + 1) - f1 n).toNat

end

end A296800.P8276780314228995020

/-! ## A296800.P15769512745486705125

`A296804(A141214(n+1))`
-/

namespace A296800.P15769512745486705125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A141214 (n + 1)).toNat

end

end A296800.P15769512745486705125

/-!
# A296801: Number of nX5 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1s.

The programs for A296801, there is no canonical definition to state claims against.
-/

/-! ## A296801.P16717196881798087917

`A296804(A167499(n+3))`
-/

namespace A296801.P16717196881798087917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A167499 (n + 3)).toNat

end

end A296801.P16717196881798087917

/-! ## A296801.P4464212458967722589

`A296804(A155212(n)+13)`
-/

namespace A296801.P4464212458967722589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A155212 n + 13).toNat

end

end A296801.P4464212458967722589

/-! ## A296801.P4454514384207402334

`A296804(A056000(n)+15)`
-/

namespace A296801.P4454514384207402334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A056000 n + 15).toNat

end

end A296801.P4454514384207402334

/-! ## A296801.P11851478550193148988

`A296804(eq[7, A066657(n)])`
-/

namespace A296801.P11851478550193148988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296801.P11851478550193148988

/-! ## A296801.P2811020112490277871

`A296804(A374005(n+1))`
-/

namespace A296801.P2811020112490277871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A374005 (n + 1)).toNat

end

end A296801.P2811020112490277871

/-!
# A296802: Number of n X 6 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1's.

The programs for A296802, there is no canonical definition to state claims against.
-/

/-! ## A296802.P1970454623307123268

`A296804(A167499(n+4)+1)`
-/

namespace A296802.P1970454623307123268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A167499 (n + 4) + 1).toNat

end

end A296802.P1970454623307123268

/-! ## A296802.P6494923669700188008

`A296804(A000217(n+5)+6)`
-/

namespace A296802.P6494923669700188008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A000217 (n + 5) + 6).toNat

end

end A296802.P6494923669700188008

/-! ## A296802.P16340764897035193240

`A296804(eq[7, A131818(n+1)])`
-/

namespace A296802.P16340764897035193240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296802.P16340764897035193240

/-! ## A296802.P16226662432812993250

`A296804(Δ[A023545(n+1)]+10)`
-/

namespace A296802.P16226662432812993250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (f1 (n + 1) - f1 n + 10).toNat

end

end A296802.P16226662432812993250

/-! ## A296802.P14564961585815535964

`A296804(A374007(n+1))`
-/

namespace A296802.P14564961585815535964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A374007 (n + 1)).toNat

end

end A296802.P14564961585815535964

/-!
# A296803: Number of nX7 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1s.

The programs for A296803, there is no canonical definition to state claims against.
-/

/-! ## A296803.P17082896221685296802

`A296804(eq[11, A066657(n)])`
-/

namespace A296803.P17082896221685296802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296803.P17082896221685296802

/-! ## A296803.P18047721500940294454

`A296804(eq[8, A131818(n+1)])`
-/

namespace A296803.P18047721500940294454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296803.P18047721500940294454

/-! ## A296803.P6641940850919648499

`A296804(A374008(n+1))`
-/

namespace A296803.P6641940850919648499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A374008 (n + 1)).toNat

end

end A296803.P6641940850919648499

/-! ## A296803.P11397510056912048156

`A296804(A055999(n+4))`
-/

namespace A296803.P11397510056912048156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (A055999 (n + 4)).toNat

end

end A296803.P11397510056912048156

/-! ## A296803.P6017992966433573788

`A296804(eq[4, A219347(n)])`
-/

namespace A296803.P6017992966433573788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296803.P6017992966433573788

/-!
# A296804: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 1, 3 or 4 king-move neighboring 1s.

The programs for A296804, there is no canonical definition to state claims against.
-/

/-! ## A296804.P8828229382180989189

`A295943(∑[A088153(n)!])`
-/

namespace A296804.P8828229382180989189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296804.P8828229382180989189

/-! ## A296804.P14422954336930507507

`A295943(A088153(n)!+n)`
-/

namespace A296804.P14422954336930507507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (Nat.factorial (A088153 n).toNat + n)

end

end A296804.P14422954336930507507

/-! ## A296804.P12641974383451687974

`or(A184219(A157221(n)), A295943(n+1))`
-/

namespace A296804.P12641974383451687974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184219 (A157221 n).toNat) (A295943 (n + 1))

end

end A296804.P12641974383451687974

/-! ## A296804.P12842800700635013271

`A295943(A160542(n+1)-A185284(3*n+2))`
-/

namespace A296804.P12842800700635013271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A160542 (n + 1) - A185284 (3 * n + 2)).toNat

end

end A296804.P12842800700635013271

/-!
# A296805: Sum of the larger parts in the partitions of n into two distinct parts with the larger part even.

The programs for A296805, the canonical program `A296805.P5590668815453869995` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296805 has offset 1).

The definition of A296805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296805.P3558138199478909326

`ogf((2x^2-2x^3+4x^4+2x^6)/(1-x-2x^4+2x^5+x^8-x^9))`
-/

namespace A296805.P3558138199478909326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -2, 4, 0, 2] [1, -1, 0, 0, -2, 2, 0, 0, 1, -1] n

end

end A296805.P3558138199478909326

namespace A296805

/-- `ogf((2x^2-2x^3+4x^4+2x^6)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P3558138199478909326.Spec : Prop :=
  ∀ n, P3558138199478909326.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P5590668815453869995

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=4, a(5)=4, a(6)=10, a(7)=6, a(8)=14`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296805

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P5590668815453869995.Spec : Prop :=
  ∀ n, P5590668815453869995.a n = A296805 (n + 1)

theorem P5590668815453869995.correct : P5590668815453869995.Spec := by
  intro n
  simp only [A296805, Nat.add_sub_cancel]

end A296805

/-! ## A296805.P4236430563065993917

`∑[floor(2*n/gcd(n+1, n-3)-n)]`
-/

namespace A296805.P4236430563065993917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3) : ℚ) - (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296805.P4236430563065993917

namespace A296805

/-- `∑[floor(2*n/gcd(n+1, n-3)-n)]` -/
def P4236430563065993917.Spec : Prop :=
  ∀ n, P4236430563065993917.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P3226439677774580744

`2*A308160(n+1)`
-/

namespace A296805.P3226439677774580744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308160 (n + 1)

end

end A296805.P3226439677774580744

namespace A296805

/-- `2*A308160(n+1)` -/
def P3226439677774580744.Spec : Prop :=
  ∀ n, P3226439677774580744.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P15048622322920222762

`A272212(n)+A059169(n+1)`
-/

namespace A296805.P15048622322920222762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 n + A059169 (n + 1)

end

end A296805.P15048622322920222762

namespace A296805

/-- `A272212(n)+A059169(n+1)` -/
def P15048622322920222762.Spec : Prop :=
  ∀ n, P15048622322920222762.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P1078796310667997751

`A037915(n)*A059169(n+1)`
-/

namespace A296805.P1078796310667997751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 n * A059169 (n + 1)

end

end A296805.P1078796310667997751

namespace A296805

/-- `A037915(n)*A059169(n+1)` -/
def P1078796310667997751.Spec : Prop :=
  ∀ n, P1078796310667997751.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P16123578593319578436

`A308123(n+1)-A296141(n+1)`
-/

namespace A296805.P16123578593319578436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308123 (n + 1) - A296141 (n + 1)

end

end A296805.P16123578593319578436

namespace A296805

/-- `A308123(n+1)-A296141(n+1)` -/
def P16123578593319578436.Spec : Prop :=
  ∀ n, P16123578593319578436.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P5191878184606387487

`(A057353(n)+1)*A059169(n+1)`
-/

namespace A296805.P5191878184606387487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057353 n + 1) * A059169 (n + 1)

end

end A296805.P5191878184606387487

namespace A296805

/-- `(A057353(n)+1)*A059169(n+1)` -/
def P5191878184606387487.Spec : Prop :=
  ∀ n, P5191878184606387487.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P1493616640567789642

`∑[2*(A060819(n+1)-A008619(n))]`
-/

namespace A296805.P1493616640567789642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060819 (n + 1) - A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296805.P1493616640567789642

namespace A296805

/-- `∑[2*(A060819(n+1)-A008619(n))]` -/
def P1493616640567789642.Spec : Prop :=
  ∀ n, P1493616640567789642.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P8667050575768653280

`A110660(n)-A110660(A065033(n))`
-/

namespace A296805.P8667050575768653280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 (A065033 n).toNat

end

end A296805.P8667050575768653280

namespace A296805

/-- `A110660(n)-A110660(A065033(n))` -/
def P8667050575768653280.Spec : Prop :=
  ∀ n, P8667050575768653280.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P8084794002654164679

`A110660(n)-A110660(A110654(n))`
-/

namespace A296805.P8084794002654164679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 (A110654 n).toNat

end

end A296805.P8084794002654164679

namespace A296805

/-- `A110660(n)-A110660(A110654(n))` -/
def P8084794002654164679.Spec : Prop :=
  ∀ n, P8084794002654164679.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P13457851438219732529

`A110660(n)-A110660(∑[A000035(n)])`
-/

namespace A296805.P13457851438219732529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296805.P13457851438219732529

namespace A296805

/-- `A110660(n)-A110660(∑[A000035(n)])` -/
def P13457851438219732529.Spec : Prop :=
  ∀ n, P13457851438219732529.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P16290749361018814237

`A110660(n)-A110660(A004524(n)+1)`
-/

namespace A296805.P16290749361018814237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 (A004524 n + 1).toNat

end

end A296805.P16290749361018814237

namespace A296805

/-- `A110660(n)-A110660(A004524(n)+1)` -/
def P16290749361018814237.Spec : Prop :=
  ∀ n, P16290749361018814237.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P11397642315263470201

`A110660(n)-A110660(A004525(n+1))`
-/

namespace A296805.P11397642315263470201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 (A004525 (n + 1)).toNat

end

end A296805.P11397642315263470201

namespace A296805

/-- `A110660(n)-A110660(A004525(n+1))` -/
def P11397642315263470201.Spec : Prop :=
  ∀ n, P11397642315263470201.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P16714661230764979021

`A110660(n)-A110660(n-A004525(n))`
-/

namespace A296805.P16714661230764979021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 ((n : ℤ) - A004525 n).toNat

end

end A296805.P16714661230764979021

namespace A296805

/-- `A110660(n)-A110660(n-A004525(n))` -/
def P16714661230764979021.Spec : Prop :=
  ∀ n, P16714661230764979021.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P3931044830811084026

`A110660(n)-A110660(n-A004526(n))`
-/

namespace A296805.P3931044830811084026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 ((n : ℤ) - A004526 n).toNat

end

end A296805.P3931044830811084026

namespace A296805

/-- `A110660(n)-A110660(n-A004526(n))` -/
def P3931044830811084026.Spec : Prop :=
  ∀ n, P3931044830811084026.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P17304457647088171187

`(A110654(n)+A008624(n))*A059169(n+1)`
-/

namespace A296805.P17304457647088171187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n + A008624 n) * A059169 (n + 1)

end

end A296805.P17304457647088171187

namespace A296805

/-- `(A110654(n)+A008624(n))*A059169(n+1)` -/
def P17304457647088171187.Spec : Prop :=
  ∀ n, P17304457647088171187.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P9374276124291254297

`(A109613(n)-A059169(n+1))*A059169(n+1)`
-/

namespace A296805.P9374276124291254297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - A059169 (n + 1)) * A059169 (n + 1)

end

end A296805.P9374276124291254297

namespace A296805

/-- `(A109613(n)-A059169(n+1))*A059169(n+1)` -/
def P9374276124291254297.Spec : Prop :=
  ∀ n, P9374276124291254297.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P9777237805739796074

`A110660(n)-A110660(A109613(n)-A028242(n))`
-/

namespace A296805.P9777237805739796074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 (A109613 n - A028242 n).toNat

end

end A296805.P9777237805739796074

namespace A296805

/-- `A110660(n)-A110660(A109613(n)-A028242(n))` -/
def P9777237805739796074.Spec : Prop :=
  ∀ n, P9777237805739796074.a n = A296805 (n + 1)

end A296805

/-! ## A296805.P11825734805759306891

`A110660(n)-A110660(A135276(n)-A110660(n))`
-/

namespace A296805.P11825734805759306891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n - A110660 (A135276 n - A110660 n).toNat

end

end A296805.P11825734805759306891

namespace A296805

/-- `A110660(n)-A110660(A135276(n)-A110660(n))` -/
def P11825734805759306891.Spec : Prop :=
  ∀ n, P11825734805759306891.a n = A296805 (n + 1)

end A296805

/-!
# A296806: Take a prime, convert it to base 2, remove its most significant digit and its least significant digit and convert it back to base 10. Sequence lists primes that generate another prime by this process.

The programs for A296806, the canonical program `A296806.P9586310270846408031` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296806 has offset 1).

The definition of A296806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296806.P15584288332085718533

`p?[(2*n+3)*A001222(1-A053644(n)+n)]`
-/

namespace A296806.P15584288332085718533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A001222 (1 - A053644 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296806.P15584288332085718533

namespace A296806

/-- `p?[(2*n+3)*A001222(1-A053644(n)+n)]` -/
def P15584288332085718533.Spec : Prop :=
  ∀ n, P15584288332085718533.a n = A296806 (n + 1)

end A296806

/-! ## A296806.P2786901592377250128

`p?[A032741(A053645(n+1))*A062545(n)]`
-/

namespace A296806.P2786901592377250128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A053645 (n + 1)).toNat * A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296806.P2786901592377250128

namespace A296806

/-- `p?[A032741(A053645(n+1))*A062545(n)]` -/
def P2786901592377250128.Spec : Prop :=
  ∀ n, P2786901592377250128.a n = A296806 (n + 1)

end A296806

/-! ## A296806.P9586310270846408031

`p?[A005408(n)*A032741(n-A053644(n))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A296806

/-- `p?[A005408(n)*A032741(n-A053644(n))]` -/
def P9586310270846408031.Spec : Prop :=
  ∀ n, P9586310270846408031.a n = A296806 (n + 1)

theorem P9586310270846408031.correct : P9586310270846408031.Spec := by
  intro n
  simp only [A296806, Nat.add_sub_cancel]

end A296806

/-! ## A296806.P9247678575485461757

`p?[A001222(1-A053644(n)+n)*A144396(n+1)]`
-/

namespace A296806.P9247678575485461757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 - A053644 n + (n : ℤ)).toNat * A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296806.P9247678575485461757

namespace A296806

/-- `p?[A001222(1-A053644(n)+n)*A144396(n+1)]` -/
def P9247678575485461757.Spec : Prop :=
  ∀ n, P9247678575485461757.a n = A296806 (n + 1)

end A296806

/-! ## A296806.P1973379512476628145

`p?[A003415(A164089(2*n+1))*A005408(n)]`
-/

namespace A296806.P1973379512476628145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A164089 (2 * n + 1)).toNat * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296806.P1973379512476628145

namespace A296806

/-- `p?[A003415(A164089(2*n+1))*A005408(n)]` -/
def P1973379512476628145.Spec : Prop :=
  ∀ n, P1973379512476628145.a n = A296806 (n + 1)

end A296806

/-!
# A296807: Take a prime, convert it to base 2. Consider it as a string of digits and delete its leftmost and rightmost digit. Leading zeros are kept. Repeat the process. a(n) is the least prime that, in the first n steps of this process, generates a string that is a prime read in base 2.

The programs for A296807, there is no canonical definition to state claims against.
-/

/-! ## A296807.P10786213132934035527

`p?[A154614(∑[ceil(2^(n-1))])]`
-/

namespace A296807.P10786213132934035527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296807.P10786213132934035527

/-!
# A296808: Take a squarefree semiprime and take the difference between its prime factors. If this difference is a squarefree semiprime repeat the process. Sequence lists the smallest squarefree semiprime that generates other squarefree semiprimes in the first n steps of this process.

The programs for A296808, there is no canonical definition to state claims against.
-/

/-! ## A296808.P1839591170213428776

`∏{p}[A233510(n+2)², #]`
-/

namespace A296808.P1839591170213428776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233510 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A296808.P1839591170213428776

/-!
# A296813: Take a squarefree semiprime and take the difference of its prime factors. If it is a squarefree semiprime repeat the process. Sequence lists the squarefree semiprimes that generate other squarefree semiprimes only in the first k steps of this process. Case k = 6.

The programs for A296813, there is no canonical definition to state claims against.
-/

/-! ## A296813.P14534991894894412094

`A296812(or(A147773(n+1), A268388(n+1)))`
-/

namespace A296813.P14534991894894412094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296812 (Int.lor (A147773 (n + 1)) (A268388 (n + 1))).toNat

end

end A296813.P14534991894894412094

/-!
# A296816: a(n) = a(a(n-1)) + a(n-a(n-2)) with a(1) = a(2) = a(3) = 1.

The programs for A296816, the canonical program `A296816.P30941808870984054` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296816 has offset 1).

The definition of A296816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-2))` (program `A296816.P30941808870984054`, by `A296816.P30941808870984054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296816.P30941808870984054

`a(a(n-1)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296816

/-- `a(a(n-1)-1)+a(n-a(n-2))` -/
def P30941808870984054.Spec : Prop :=
  ∀ n, (P30941808870984054.a n : ℤ) = A296816 (n + 1)

theorem P30941808870984054.correct : P30941808870984054.Spec := by
  intro n
  simp only [A296816, Nat.add_sub_cancel]

end A296816

/-!
# A296817: Expansion of 1/Sum_{k>=0} (2*k+1)^2*x^k.

The programs for A296817, the canonical program `A296817.P7195134293254911692` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296817 has offset 0).

The definition of A296817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296817.P7195134293254911692

`ogf((1-3x+3x^2-x^3)/(1+6x+x^2))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296817

/-- `ogf((1-3x+3x^2-x^3)/(1+6x+x^2))` -/
def P7195134293254911692.Spec : Prop :=
  ∀ n, P7195134293254911692.a n = A296817 n

theorem P7195134293254911692.correct : P7195134293254911692.Spec := by
  intro n
  simp only [A296817]

end A296817

/-!
# A296819: Maximum detour index of any bipartite graph on n nodes.

The programs for A296819, the canonical program `A296819.P3087407841275494038` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296819 has offset 1).

The definition of A296819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296819.P3087407841275494038

`ogf((x+3x^2+9x^3+7x^4+4x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296819

/-- `ogf((x+3x^2+9x^3+7x^4+4x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P3087407841275494038.Spec : Prop :=
  ∀ n, P3087407841275494038.a n = A296819 (n + 1)

theorem P3087407841275494038.correct : P3087407841275494038.Spec := by
  intro n
  simp only [A296819, Nat.add_sub_cancel]

end A296819

/-! ## A296819.P11695686937393646933

`ceil((n/2)²*A014601(n))`
-/

namespace A296819.P11695686937393646933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2 * (A014601 n : ℚ)⌉

end

end A296819.P11695686937393646933

namespace A296819

/-- `ceil((n/2)²*A014601(n))` -/
def P11695686937393646933.Spec : Prop :=
  ∀ n, P11695686937393646933.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P616230559499513622

`∑[A000326(n)]-2*A123596(n)`
-/

namespace A296819.P616230559499513622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A123596 n

end

end A296819.P616230559499513622

namespace A296819

/-- `∑[A000326(n)]-2*A123596(n)` -/
def P616230559499513622.Spec : Prop :=
  ∀ n, P616230559499513622.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P3475164535812045360

`A131475(n)+n*A065033(n)²`
-/

namespace A296819.P3475164535812045360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131475 n + (n : ℤ) * A065033 n ^ 2

end

end A296819.P3475164535812045360

namespace A296819

/-- `A131475(n)+n*A065033(n)²` -/
def P3475164535812045360.Spec : Prop :=
  ∀ n, P3475164535812045360.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P3044325022200681215

`A131475(n)+n*A110654(n)²`
-/

namespace A296819.P3044325022200681215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131475 n + (n : ℤ) * A110654 n ^ 2

end

end A296819.P3044325022200681215

namespace A296819

/-- `A131475(n)+n*A110654(n)²` -/
def P3044325022200681215.Spec : Prop :=
  ∀ n, P3044325022200681215.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P12931101539312957368

`A131474(n)+n*∑[A004526(n)]`
-/

namespace A296819.P12931101539312957368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296819.P12931101539312957368

namespace A296819

/-- `A131474(n)+n*∑[A004526(n)]` -/
def P12931101539312957368.Spec : Prop :=
  ∀ n, P12931101539312957368.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P491448931686350652

`A008794(A237420(n+1))+n*A007590(n)`
-/

namespace A296819.P491448931686350652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A237420 (n + 1)).toNat + (n : ℤ) * A007590 n

end

end A296819.P491448931686350652

namespace A296819

/-- `A008794(A237420(n+1))+n*A007590(n)` -/
def P491448931686350652.Spec : Prop :=
  ∀ n, P491448931686350652.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P2243633097691386701

`A002411(n)-A000034(n+1)*A002620(n)`
-/

namespace A296819.P2243633097691386701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - A000034 (n + 1) * A002620 n

end

end A296819.P2243633097691386701

namespace A296819

/-- `A002411(n)-A000034(n+1)*A002620(n)` -/
def P2243633097691386701.Spec : Prop :=
  ∀ n, P2243633097691386701.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P13762398371597976115

`n²*A002620(n+1)-A059403(2*n)`
-/

namespace A296819.P13762398371597976115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002620 (n + 1) - A059403 (2 * n)

end

end A296819.P13762398371597976115

namespace A296819

/-- `n²*A002620(n+1)-A059403(2*n)` -/
def P13762398371597976115.Spec : Prop :=
  ∀ n, P13762398371597976115.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P10947384130661893750

`n²*A002620(n+1)-A060494(2*n)`
-/

namespace A296819.P10947384130661893750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002620 (n + 1) - A060494 (2 * n)

end

end A296819.P10947384130661893750

namespace A296819

/-- `n²*A002620(n+1)-A060494(2*n)` -/
def P10947384130661893750.Spec : Prop :=
  ∀ n, P10947384130661893750.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P1037501092409881105

`n*∑[n]-A025480(n²)`
-/

namespace A296819.P1037501092409881105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A025480 (n ^ 2)

end

end A296819.P1037501092409881105

namespace A296819

/-- `n*∑[n]-A025480(n²)` -/
def P1037501092409881105.Spec : Prop :=
  ∀ n, P1037501092409881105.a n = A296819 (n + 1)

end A296819

/-! ## A296819.P1952120663804814416

`A002620(A002378(n))-A002522(n)*A002620(n)`
-/

namespace A296819.P1952120663804814416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002378 n).toNat - A002522 n * A002620 n

end

end A296819.P1952120663804814416

namespace A296819

/-- `A002620(A002378(n))-A002522(n)*A002620(n)` -/
def P1952120663804814416.Spec : Prop :=
  ∀ n, P1952120663804814416.a n = A296819 (n + 1)

end A296819

/-!
# A296820: Number of n X n 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1's.

The programs for A296820, there is no canonical definition to state claims against.
-/

/-! ## A296820.P13198535732872636944

`A296827(∑[4*n]+1)`
-/

namespace A296820.P13198535732872636944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296820.P13198535732872636944

/-! ## A296820.P3601202296361565993

`record[gcd(A049581(n), A296827(n+1))]`
-/

namespace A296820.P3601202296361565993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A296827 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296820.P3601202296361565993

/-! ## A296820.P6888629299396119289

`A296827(A001844(n))^A136400(n)`
-/

namespace A296820.P6888629299396119289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296827 (A001844 n).toNat : ℚ) ^ (A136400 n : ℤ)

end

end A296820.P6888629299396119289

/-! ## A296820.P5028944910850929837

`A296827(A001844(n))^A178334(n)`
-/

namespace A296820.P5028944910850929837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296827 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A296820.P5028944910850929837

/-! ## A296820.P14750451312724878449

`lcm(A047000(n), A296827(A001844(n)))`
-/

namespace A296820.P14750451312724878449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047000 n) (A296827 (A001844 n).toNat)

end

end A296820.P14750451312724878449

/-!
# A296821: Number of n X 2 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1s.

The programs for A296821, the canonical program `A296821.P13297849273448399170` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296821 has offset 1).

The definition of A296821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296821.P13297849273448399170

`ogf((1+3x+3x^2-12x^3-18x^4-8x^5)/(1-3x-5x^3+2x^4+10x^5+8x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296821

/-- `ogf((1+3x+3x^2-12x^3-18x^4-8x^5)/(1-3x-5x^3+2x^4+10x^5+8x^6))` -/
def P13297849273448399170.Spec : Prop :=
  ∀ n, P13297849273448399170.a n = A296821 (n + 1)

theorem P13297849273448399170.correct : P13297849273448399170.Spec := by
  intro n
  simp only [A296821, Nat.add_sub_cancel]

end A296821

/-! ## A296821.P10761503289790985413

`record[ratio[A296827(n+1)]]`
-/

namespace A296821.P10761503289790985413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296821.P10761503289790985413

namespace A296821

/-- `record[ratio[A296827(n+1)]]` -/
def P10761503289790985413.Spec : Prop :=
  ∀ n, P10761503289790985413.a n = (A296821 (n + 1) : ℚ)

end A296821

/-! ## A296821.P16535065875858994116

`A296827(∑[n+1]+2)`
-/

namespace A296821.P16535065875858994116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296821.P16535065875858994116

namespace A296821

/-- `A296827(∑[n+1]+2)` -/
def P16535065875858994116.Spec : Prop :=
  ∀ n, P16535065875858994116.a n = A296821 (n + 1)

end A296821

/-! ## A296821.P9932725781360051200

`record[A296827(A278512(n+1))]`
-/

namespace A296821.P9932725781360051200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A278512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296821.P9932725781360051200

namespace A296821

/-- `record[A296827(A278512(n+1))]` -/
def P9932725781360051200.Spec : Prop :=
  ∀ n, P9932725781360051200.a n = A296821 (n + 1)

end A296821

/-! ## A296821.P2598550935602875665

`record[A296827(n+1)/A296827(A028310(n))]`
-/

namespace A296821.P2598550935602875665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296827 (n + 1) : ℚ) / (A296827 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296821.P2598550935602875665

namespace A296821

/-- `record[A296827(n+1)/A296827(A028310(n))]` -/
def P2598550935602875665.Spec : Prop :=
  ∀ n, P2598550935602875665.a n = (A296821 (n + 1) : ℚ)

end A296821

/-!
# A296822: Number of nX3 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1s.

The programs for A296822, there is no canonical definition to state claims against.
-/

/-! ## A296822.P16634135487436078030

`A296827(∑[n+2]+4)`
-/

namespace A296822.P16634135487436078030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296822.P16634135487436078030

/-! ## A296822.P478646879467623711

`record[A296827(A278512(2*n+1))]`
-/

namespace A296822.P478646879467623711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A278512 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296822.P478646879467623711

/-! ## A296822.P10194290497100216564

`A296827(A167614(n+1))%((12*n+3)^6)`
-/

namespace A296822.P10194290497100216564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296827 (A167614 (n + 1)).toNat) ((12 * n + 3) ^ 6 : ℤ)

end

end A296822.P10194290497100216564

/-! ## A296822.P3824799231602209539

`A254730(n)*A296827(A167614(n+1))`
-/

namespace A296822.P3824799231602209539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 n * A296827 (A167614 (n + 1)).toNat

end

end A296822.P3824799231602209539

/-! ## A296822.P7464883485975410449

`lcm(A020985(n), A296827(A167614(n+1)))`
-/

namespace A296822.P7464883485975410449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A296827 (A167614 (n + 1)).toNat)

end

end A296822.P7464883485975410449

/-!
# A296823: Number of nX4 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1s.

The programs for A296823, there is no canonical definition to state claims against.
-/

/-! ## A296823.P3614838988773424592

`A296827(∑[n+3]+7)`
-/

namespace A296823.P3614838988773424592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A296823.P3614838988773424592

/-! ## A296823.P9835863273589890994

`A254730(n)*A296827(A141214(n+1))`
-/

namespace A296823.P9835863273589890994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 n * A296827 (A141214 (n + 1)).toNat

end

end A296823.P9835863273589890994

/-! ## A296823.P10627186488797476205

`A296827(A141214(n+1))^A178334(n)`
-/

namespace A296823.P10627186488797476205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296827 (A141214 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A296823.P10627186488797476205

/-! ## A296823.P13374605330725020167

`lcm(A020985(n), A296827(A141214(n+1)))`
-/

namespace A296823.P13374605330725020167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A296827 (A141214 (n + 1)).toNat)

end

end A296823.P13374605330725020167

/-! ## A296823.P10622602118558414301

`A296827(A141214(n+1))^A254730(n+2)`
-/

namespace A296823.P10622602118558414301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296827 (A141214 (n + 1)).toNat : ℚ) ^ (A254730 (n + 2) : ℤ)

end

end A296823.P10622602118558414301

/-!
# A296824: Number of n X 5 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1's.

The programs for A296824, there is no canonical definition to state claims against.
-/

/-! ## A296824.P8097246362371321826

`A296827(A374005(n+1))`
-/

namespace A296824.P8097246362371321826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A374005 (n + 1)).toNat

end

end A296824.P8097246362371321826

/-! ## A296824.P15131606002759657187

`A296827(A167499(n+3))`
-/

namespace A296824.P15131606002759657187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A167499 (n + 3)).toNat

end

end A296824.P15131606002759657187

/-! ## A296824.P5371948203613863665

`A296827(A155212(n)+13)`
-/

namespace A296824.P5371948203613863665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A155212 n + 13).toNat

end

end A296824.P5371948203613863665

/-! ## A296824.P12675931993771339904

`A296827(eq[4, A054123(n)])`
-/

namespace A296824.P12675931993771339904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296824.P12675931993771339904

/-! ## A296824.P18148882558416007476

`A296827(Δ[A023545(n+1)])`
-/

namespace A296824.P18148882558416007476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (f1 (n + 1) - f1 n).toNat

end

end A296824.P18148882558416007476

/-!
# A296825: Number of nX6 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1s.

The programs for A296825, there is no canonical definition to state claims against.
-/

/-! ## A296825.P4410699373008671491

`A296827(A374007(n+1))`
-/

namespace A296825.P4410699373008671491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A374007 (n + 1)).toNat

end

end A296825.P4410699373008671491

/-! ## A296825.P3164986126037672132

`A296827(A167614(n+4)+3)`
-/

namespace A296825.P3164986126037672132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A167614 (n + 4) + 3).toNat

end

end A296825.P3164986126037672132

/-! ## A296825.P6431660129546372361

`A296827(A133263(n+5)+4)`
-/

namespace A296825.P6431660129546372361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A133263 (n + 5) + 4).toNat

end

end A296825.P6431660129546372361

/-! ## A296825.P3066512881523521040

`A296827(eq[6, A130270(n+1)])`
-/

namespace A296825.P3066512881523521040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296825.P3066512881523521040

/-! ## A296825.P6472961601274795930

`A296827(A052905(n+3))`
-/

namespace A296825.P6472961601274795930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A052905 (n + 3)).toNat

end

end A296825.P6472961601274795930

/-!
# A296826: Number of nX7 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1s.

The programs for A296826, there is no canonical definition to state claims against.
-/

/-! ## A296826.P10410543258353670594

`A296827(A374008(n+1))`
-/

namespace A296826.P10410543258353670594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A374008 (n + 1)).toNat

end

end A296826.P10410543258353670594

/-! ## A296826.P10405043852119826985

`A296827(A167487(n+5))`
-/

namespace A296826.P10405043852119826985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (A167487 (n + 5)).toNat

end

end A296826.P10405043852119826985

/-! ## A296826.P3606387004084959758

`A296827(eq[11, A066657(n)])`
-/

namespace A296826.P3606387004084959758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296826.P3606387004084959758

/-! ## A296826.P9872596369056072645

`A296827(eq[8, A131818(n+1)])`
-/

namespace A296826.P9872596369056072645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296826.P9872596369056072645

/-! ## A296826.P17760792635033158392

`A296827(eq[4, A219347(n)])`
-/

namespace A296826.P17760792635033158392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296826.P17760792635033158392

/-!
# A296827: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 2, 3 or 4 king-move neighboring 1s.

The programs for A296827, there is no canonical definition to state claims against.
-/

/-! ## A296827.P18044727963181666789

`A056941(n)%A111592(A100978(n+1))`
-/

namespace A296827.P18044727963181666789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056941 n) (A111592 (A100978 (n + 1)).toNat)

end

end A296827.P18044727963181666789

/-! ## A296827.P1346505109287548624

`A056941(n)%A141214(A038690(n))`
-/

namespace A296827.P1346505109287548624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056941 n) (A141214 (A038690 n).toNat)

end

end A296827.P1346505109287548624

/-!
# A296828: Number of n X n 0..1 arrays with each 1 adjacent to 0, 3 or 5 king-move neighboring 1's.

The programs for A296828, there is no canonical definition to state claims against.
-/

/-! ## A296828.P1377201361603353960

`A296834(∑[4*n]+1)`
-/

namespace A296828.P1377201361603353960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296828.P1377201361603353960

/-! ## A296828.P9438019783093764736

`record[A296834(A330613(n+1))]`
-/

namespace A296828.P9438019783093764736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296828.P9438019783093764736

/-! ## A296828.P7809310770917803970

`A296834(A001844(n))+char[10]`
-/

namespace A296828.P7809310770917803970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296828.P7809310770917803970

/-! ## A296828.P16625986597790780905

`record[A296834(Δ[A079824(n+1)])]`
-/

namespace A296828.P16625986597790780905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296828.P16625986597790780905

/-! ## A296828.P9942065062287137806

`record[A003982(n)*A296834(n+1)]`
-/

namespace A296828.P9942065062287137806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296828.P9942065062287137806

/-!
# A296829: Number of nX3 0..1 arrays with each 1 adjacent to 0, 3 or 5 king-move neighboring 1s.

The programs for A296829, there is no canonical definition to state claims against.
-/

/-! ## A296829.P7025346819179860125

`A296834(∑[n+2]+4)`
-/

namespace A296829.P7025346819179860125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296829.P7025346819179860125

/-! ## A296829.P11219028646734824777

`A296834(A167614(n+1))+char[18]`
-/

namespace A296829.P11219028646734824777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296829.P11219028646734824777

/-! ## A296829.P4568245273940789474

`A296834(A152949(n+4))+char[29]`
-/

namespace A296829.P4568245273940789474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A152949 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296829.P4568245273940789474

/-! ## A296829.P11739597441561324209

`lcm(A033999(n), A296834(A167614(n+1)))`
-/

namespace A296829.P11739597441561324209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296834 (A167614 (n + 1)).toNat)

end

end A296829.P11739597441561324209

/-! ## A296829.P16299902819513080622

`A178489(n+1)*A296834(A167614(n+1))`
-/

namespace A296829.P16299902819513080622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (n + 1) * A296834 (A167614 (n + 1)).toNat

end

end A296829.P16299902819513080622

/-!
# A296830: Number of nX4 0..1 arrays with each 1 adjacent to 0, 3 or 5 king-move neighboring 1s.

The programs for A296830, there is no canonical definition to state claims against.
-/

/-! ## A296830.P17555379548352349112

`A296834(∑[n+3]+7)`
-/

namespace A296830.P17555379548352349112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A296830.P17555379548352349112

/-! ## A296830.P3210439775713659910

`xor(1, xor(1, A296834(A141214(n)+7)))`
-/

namespace A296830.P3210439775713659910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A296834 (A141214 n + 7).toNat))

end

end A296830.P3210439775713659910

/-! ## A296830.P2189915617051589897

`lcm((-1)^n, A296834(A052905(n)+9))`
-/

namespace A296830.P2189915617051589897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A296834 (A052905 n + 9).toNat)

end

end A296830.P2189915617051589897

/-! ## A296830.P14320248107587709940

`A000041(C(n, 47))*A296834(A052905(n)+9)`
-/

namespace A296830.P14320248107587709940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 47) * A296834 (A052905 n + 9).toNat

end

end A296830.P14320248107587709940

/-!
# A296831: Number of nX5 0..1 arrays with each 1 adjacent to 0, 3 or 5 king-move neighboring 1s.

The programs for A296831, there is no canonical definition to state claims against.
-/

/-! ## A296831.P16891856105728806950

`A296834(A167499(n+3))`
-/

namespace A296831.P16891856105728806950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A167499 (n + 3)).toNat

end

end A296831.P16891856105728806950

/-! ## A296831.P325177671636946670

`A296834(A155212(n)+13)`
-/

namespace A296831.P325177671636946670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A155212 n + 13).toNat

end

end A296831.P325177671636946670

/-! ## A296831.P6996570452718675332

`A296834(A056000(n)+15)`
-/

namespace A296831.P6996570452718675332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A056000 n + 15).toNat

end

end A296831.P6996570452718675332

/-! ## A296831.P12948384420652139804

`A296834(eq[7, A066657(n)])`
-/

namespace A296831.P12948384420652139804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296831.P12948384420652139804

/-! ## A296831.P8871205665292392905

`A296834(A167614(n+3)+2)`
-/

namespace A296831.P8871205665292392905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A167614 (n + 3) + 2).toNat

end

end A296831.P8871205665292392905

/-!
# A296832: Number of nX6 0..1 arrays with each 1 adjacent to 0, 3 or 5 king-move neighboring 1s.

The programs for A296832, there is no canonical definition to state claims against.
-/

/-! ## A296832.P9026527192115790255

`A296834(A166136(n+4))`
-/

namespace A296832.P9026527192115790255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A166136 (n + 4)).toNat

end

end A296832.P9026527192115790255

/-! ## A296832.P10915476900141969171

`A296834(Δ[A264443(n)]+10)`
-/

namespace A296832.P10915476900141969171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (f1 (n + 1) - f1 n + 10).toNat

end

end A296832.P10915476900141969171

/-! ## A296832.P7007719094840277806

`A296834(A167499(n+4)+1)`
-/

namespace A296832.P7007719094840277806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A167499 (n + 4) + 1).toNat

end

end A296832.P7007719094840277806

/-! ## A296832.P12871492239523374293

`A296834(A167614(n+4)+3)`
-/

namespace A296832.P12871492239523374293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A167614 (n + 4) + 3).toNat

end

end A296832.P12871492239523374293

/-! ## A296832.P15461078635184558188

`A296834(A133263(n+5)+4)`
-/

namespace A296832.P15461078635184558188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A133263 (n + 5) + 4).toNat

end

end A296832.P15461078635184558188

/-!
# A296833: Number of nX7 0..1 arrays with each 1 adjacent to 0, 3 or 5 king-move neighboring 1s.

The programs for A296833, there is no canonical definition to state claims against.
-/

/-! ## A296833.P9571740136954389464

`A296834(A056119(n)+28)`
-/

namespace A296833.P9571740136954389464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A056119 n + 28).toNat

end

end A296833.P9571740136954389464

/-! ## A296833.P17318252665033567792

`A296834(eq[11, A066657(n)])`
-/

namespace A296833.P17318252665033567792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296833.P17318252665033567792

/-! ## A296833.P4078611141019756820

`A296834(A166136(n+5)+1)`
-/

namespace A296833.P4078611141019756820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A166136 (n + 5) + 1).toNat

end

end A296833.P4078611141019756820

/-! ## A296833.P10943818506443349859

`A296834(A167614(n+5)+4)`
-/

namespace A296833.P10943818506443349859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A167614 (n + 5) + 4).toNat

end

end A296833.P10943818506443349859

/-! ## A296833.P12577061856087788165

`A296834(A000124(n+6)+6)`
-/

namespace A296833.P12577061856087788165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296834 (A000124 (n + 6) + 6).toNat

end

end A296833.P12577061856087788165

/-!
# A296834: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 0, 3 or 5 king-move neighboring 1s.

The programs for A296834, there is no canonical definition to state claims against.
-/

/-! ## A296834.P8896619017636481847

`A204553(A223440(n+1))`
-/

namespace A296834.P8896619017636481847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A223440 (n + 1)).toNat

end

end A296834.P8896619017636481847

/-! ## A296834.P9600476723158840571

`A351202(A032020(n))+A252836(n+1)`
-/

namespace A296834.P9600476723158840571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (A032020 n).toNat + A252836 (n + 1)

end

end A296834.P9600476723158840571

/-! ## A296834.P1299464956338255152

`A252836(n+1)+A000034(A154382(n+1))`
-/

namespace A296834.P1299464956338255152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252836 (n + 1) + A000034 (A154382 (n + 1)).toNat

end

end A296834.P1299464956338255152

/-!
# A296835: Expansion of e.g.f. exp(x*tan(x/2)) (even powers only).

The programs for A296835, there is no canonical definition to state claims against.
-/

/-! ## A296835.P867313010308893455

`A296856(n)+A296854(n)`
-/

namespace A296835.P867313010308893455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296856 n + A296854 n

end

end A296835.P867313010308893455

/-! ## A296835.P14473289719149590474

`A296856(n)+A296941(n)%A008486(A328857(n+1))`
-/

namespace A296835.P14473289719149590474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296856 n + Int.tmod (A296941 n) (A008486 (A328857 (n + 1)).toNat)

end

end A296835.P14473289719149590474

/-!
# A296836: Expansion of e.g.f. exp(x*tanh(x/2)) (even powers only).

The programs for A296836, there is no canonical definition to state claims against.
-/

/-! ## A296836.P18133728987101436113

`A007306(n)*A195841(A000079(n))`
-/

namespace A296836.P18133728987101436113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n * A195841 (A000079 n).toNat

end

end A296836.P18133728987101436113

/-! ## A296836.P15280419098364074995

`∑[A116598(n)]*A195841(A000079(n))`
-/

namespace A296836.P15280419098364074995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A195841 (A000079 n).toNat

end

end A296836.P15280419098364074995

/-! ## A296836.P11455225965723731553

`A257572(A000831(n))-A065261(n+1)`
-/

namespace A296836.P11455225965723731553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257572 (A000831 n).toNat - A065261 (n + 1)

end

end A296836.P11455225965723731553

/-!
# A296837: Expansion of e.g.f. log(1 + x*tan(x/2)) (even powers only).

The programs for A296837, there is no canonical definition to state claims against.
-/

/-! ## A296837.P18102455218878872406

`n*A001057(A275923(n))`
-/

namespace A296837.P18102455218878872406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001057 (A275923 n).toNat

end

end A296837.P18102455218878872406

/-!
# A296839: Expansion of e.g.f. tan(x*tan(x/2)) (even powers only).

The programs for A296839, there is no canonical definition to state claims against.
-/

/-! ## A296839.P213059938562683634

`∑{p}[n+1, gcd(n, #)]*A087883(n!)`
-/

namespace A296839.P213059938562683634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) * A087883 (Nat.factorial n)

end

end A296839.P213059938562683634

/-!
# A296840: The smallest positive integer whose greedy representation as a sum of 3-smooth numbers (A003586) requires n terms.

The programs for A296840, there is no canonical definition to state claims against.
-/

/-! ## A296840.P8587897468109045972

`A362403(A016789(n²))`
-/

namespace A296840.P8587897468109045972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362403 (A016789 (n ^ 2)).toNat

end

end A296840.P8587897468109045972

/-!
# A296841: Expansion of e.g.f. sin(x*tan(x/2)) (even powers only).

The programs for A296841, there is no canonical definition to state claims against.
-/

/-! ## A296841.P14561944383297581388

`n-A054897(A000180(n))`
-/

namespace A296841.P14561944383297581388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054897 (A000180 n).toNat

end

end A296841.P14561944383297581388

/-!
# A296843: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n+1), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, b(3) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296843, there is no canonical definition to state claims against.
-/

/-! ## A296843.P14836807021486995432

`A295958(n)-A316843(A137551(n))`
-/

namespace A296843.P14836807021486995432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295958 n - A316843 (A137551 n).toNat

end

end A296843.P14836807021486995432

/-! ## A296843.P10334870121782121873

`A294541(A004903(n+1))+A019274(n+1)`
-/

namespace A296843.P10334870121782121873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294541 (A004903 (n + 1)).toNat + A019274 (n + 1)

end

end A296843.P10334870121782121873

/-! ## A296843.P11579733664578927065

`A295956(n)+A083896(A000984(n))`
-/

namespace A296843.P11579733664578927065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295956 n + A083896 (A000984 n).toNat

end

end A296843.P11579733664578927065

/-! ## A296843.P2308616285268681854

`A333382(A333375(n))+A295956(n)`
-/

namespace A296843.P2308616285268681854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A333375 n).toNat + A295956 n

end

end A296843.P2308616285268681854

/-!
# A296846: Solution of the complementary equation a(n) = a(n-1) + a(n-2) - b(n-2), where a(0) = 3, a(1) = 5, b(0) = 1, b(1) = 2, b(2) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296846, there is no canonical definition to state claims against.
-/

/-! ## A296846.P3803514572877701384

`A344414(A000048(n)+2*n+1)`
-/

namespace A296846.P3803514572877701384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344414 (A000048 n + (2 * n + 1 : ℤ)).toNat

end

end A296846.P3803514572877701384

/-! ## A296846.P8519517514048213995

`2*(n+1)+∑[A063993(A000108(n))]+1`
-/

namespace A296846.P8519517514048213995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296846.P8519517514048213995

/-! ## A296846.P15265156132634103119

`A000621(n+1)+A000005(A008776(n))`
-/

namespace A296846.P15265156132634103119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000621 (n + 1) + A000005 (A008776 n).toNat

end

end A296846.P15265156132634103119

/-! ## A296846.P10450365889077980724

`A000621(n+1)+A000005(A204086(n+1))`
-/

namespace A296846.P10450365889077980724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000621 (n + 1) + A000005 (A204086 (n + 1)).toNat

end

end A296846.P10450365889077980724

/-!
# A296849: Solution of the complementary equation a(n) = 2*a(n-1) + a(n-2) + b(n), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296849, there is no canonical definition to state claims against.
-/

/-! ## A296849.P16251313444670938764

`A295143(n)+A004526(A001333(n))`
-/

namespace A296849.P16251313444670938764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295143 n + A004526 (A001333 n).toNat

end

end A296849.P16251313444670938764

/-! ## A296849.P9411131033954056718

`A295141(n)+A029578(A001333(n))`
-/

namespace A296849.P9411131033954056718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295141 n + A029578 (A001333 n).toNat

end

end A296849.P9411131033954056718

/-! ## A296849.P16391465775840116251

`A004277(A295143(n))-A295141(n)`
-/

namespace A296849.P16391465775840116251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A295143 n).toNat - A295141 n

end

end A296849.P16391465775840116251

/-! ## A296849.P10204019681128655689

`A295144(n)-A135660(A000110(n+1))`
-/

namespace A296849.P10204019681128655689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295144 n - A135660 (A000110 (n + 1)).toNat

end

end A296849.P10204019681128655689

/-!
# A296853: Expansion of e.g.f. tanh(x*tan(x/2)) (even powers only).

The programs for A296853, there is no canonical definition to state claims against.
-/

/-! ## A296853.P8672967940124030548

`n²-A057356(A201550(n))`
-/

namespace A296853.P8672967940124030548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A057356 (A201550 n).toNat

end

end A296853.P8672967940124030548

/-!
# A296854: Expansion of e.g.f. sinh(x*tan(x/2)) (even powers only).

The programs for A296854, there is no canonical definition to state claims against.
-/

/-! ## A296854.P10316289358564865192

`A296835(n)-A296856(n)`
-/

namespace A296854.P10316289358564865192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296835 n - A296856 n

end

end A296854.P10316289358564865192

/-! ## A296854.P4976107673837874264

`A296941(n)%A008486(A328857(n+1))`
-/

namespace A296854.P4976107673837874264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296941 n) (A008486 (A328857 (n + 1)).toNat)

end

end A296854.P4976107673837874264

/-!
# A296855: Domination number of the n-cube-connected cycle graph.

The programs for A296855, there is no canonical definition to state claims against.
-/

/-! ## A296855.P15902107699407620084

`A364676(n+3)-char[2]`
-/

namespace A296855.P15902107699407620084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364676 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296855.P15902107699407620084

/-!
# A296856: Expansion of e.g.f. cosh(x*tan(x/2)) (even powers only).

The programs for A296856, there is no canonical definition to state claims against.
-/

/-! ## A296856.P15418250246488811259

`A296835(n)-A296854(n)`
-/

namespace A296856.P15418250246488811259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296835 n - A296854 n

end

end A296856.P15418250246488811259

/-! ## A296856.P507630318140932833

`A296835(n)-A296941(n)%A008486(A328857(n+1))`
-/

namespace A296856.P507630318140932833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296835 n - Int.tmod (A296941 n) (A008486 (A328857 (n + 1)).toNat)

end

end A296856.P507630318140932833

/-!
# A296857: For any number n > 0, let f(n) be the function that associates k to the prime(k)-adic valuation of n (where prime(k) denotes the k-th prime); f establishes a bijection between the positive numbers and the arithmetic functions with nonnegative integer values and a finite number of nonzero values; let g be the inverse of f; a(n) = g(f(n) * f(n)) (where i * j denotes the Dirichlet convolution of i and j).

The programs for A296857, there is no canonical definition to state claims against.
-/

/-! ## A296857.P2645263773064311855

`A248601(∑[4*n]+1)`
-/

namespace A296857.P2645263773064311855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296857.P2645263773064311855

/-! ## A296857.P17107738936184535786

`A268918(A349582(n))+n`
-/

namespace A296857.P17107738936184535786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268918 (A349582 n).toNat + (n : ℤ)

end

end A296857.P17107738936184535786

/-!
# A296858: Numbers whose base-2 digits have #(pits) = #(peaks); see Comments.

The programs for A296858, the canonical program `A296858.P9743264355443788003` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296858 has offset 1).

The definition of A296858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3673 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296858.P9743264355443788003

`eq[A056976(n+1), A056979(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A296858

/-- `eq[A056976(n+1), A056979(n+1)]+1` -/
def P9743264355443788003.Spec : Prop :=
  ∀ n, (P9743264355443788003.a n : ℤ) = A296858 (n + 1)

theorem P9743264355443788003.correct : P9743264355443788003.Spec := by
  intro n
  simp only [A296858, Nat.add_sub_cancel]

end A296858

/-! ## A296858.P15536539491631286137

`eq[A124766(n), A124778(A180409(n+1))]`
-/

namespace A296858.P15536539491631286137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A180409 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296858.P15536539491631286137

namespace A296858

/-- `eq[A124766(n), A124778(A180409(n+1))]` -/
def P15536539491631286137.Spec : Prop :=
  ∀ n, (P15536539491631286137.a n : ℤ) = A296858 (n + 1)

end A296858

/-! ## A296858.P13518032603437672251

`eq[A089309(A008687(n)), A124778(n)]`
-/

namespace A296858.P13518032603437672251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A008687 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296858.P13518032603437672251

namespace A296858

/-- `eq[A089309(A008687(n)), A124778(n)]` -/
def P13518032603437672251.Spec : Prop :=
  ∀ n, (P13518032603437672251.a n : ℤ) = A296858 (n + 1)

end A296858

/-! ## A296858.P12777785112166144131

`eq[A124778(n), A300820(A332815(n))]`
-/

namespace A296858.P12777785112166144131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (A332815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296858.P12777785112166144131

namespace A296858

/-- `eq[A124778(n), A300820(A332815(n))]` -/
def P12777785112166144131.Spec : Prop :=
  ∀ n, (P12777785112166144131.a n : ℤ) = A296858 (n + 1)

end A296858

/-! ## A296858.P2818221654007008862

`eq[A124778(n), A300820(A005940(n+1))]`
-/

namespace A296858.P2818221654007008862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296858.P2818221654007008862

namespace A296858

/-- `eq[A124778(n), A300820(A005940(n+1))]` -/
def P2818221654007008862.Spec : Prop :=
  ∀ n, (P2818221654007008862.a n : ℤ) = A296858 (n + 1)

end A296858

/-!
# A296859: Numbers whose base-2 digits have #(pits) > #(peaks); see Comments.

The programs for A296859, the canonical program `A296859.P7142739317736375428` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296859 has offset 1).

The definition of A296859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3631 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296859.P7142739317736375428

`lt[A056976(n+1), A056979(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A296859

/-- `lt[A056976(n+1), A056979(n+1)]+1` -/
def P7142739317736375428.Spec : Prop :=
  ∀ n, (P7142739317736375428.a n : ℤ) = A296859 (n + 1)

theorem P7142739317736375428.correct : P7142739317736375428.Spec := by
  intro n
  simp only [A296859, Nat.add_sub_cancel]

end A296859

/-! ## A296859.P13088766784893397927

`lt[A037800(or(n, 2*n)), A056977(2*n+1)]`
-/

namespace A296859.P13088766784893397927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Nat.lor n (2 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296859.P13088766784893397927

namespace A296859

/-- `lt[A037800(or(n, 2*n)), A056977(2*n+1)]` -/
def P13088766784893397927.Spec : Prop :=
  ∀ n, (P13088766784893397927.a n : ℤ) = A296859 (n + 1)

end A296859

/-! ## A296859.P11843959581256798546

`record[A292371(A296865(n+1))]`
-/

namespace A296859.P11843959581256798546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A296865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296859.P11843959581256798546

namespace A296859

/-- `record[A292371(A296865(n+1))]` -/
def P11843959581256798546.Spec : Prop :=
  ∀ n, P11843959581256798546.a n = A296859 (n + 1)

end A296859

/-! ## A296859.P15393223053830371628

`lt[A019565(3*n+1), A005187(A019565(n))]`
-/

namespace A296859.P15393223053830371628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296859.P15393223053830371628

namespace A296859

/-- `lt[A019565(3*n+1), A005187(A019565(n))]` -/
def P15393223053830371628.Spec : Prop :=
  ∀ n, (P15393223053830371628.a n : ℤ) = A296859 (n + 1)

end A296859

/-! ## A296859.P2363835012284479845

`lt[A052330(3*n+1), A066022(A052330(n))]`
-/

namespace A296859.P2363835012284479845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (A052330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296859.P2363835012284479845

namespace A296859

/-- `lt[A052330(3*n+1), A066022(A052330(n))]` -/
def P2363835012284479845.Spec : Prop :=
  ∀ n, (P2363835012284479845.a n : ℤ) = A296859 (n + 1)

end A296859

/-!
# A296860: Numbers k whose base-2 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296860, the canonical program `A296860.P18957858670379426` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296860 has offset 1).

The definition of A296860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296860.P18957858670379426

`lt[A056979(n+1), A056976(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A296860

/-- `lt[A056979(n+1), A056976(n+1)]+1` -/
def P18957858670379426.Spec : Prop :=
  ∀ n, (P18957858670379426.a n : ℤ) = A296860 (n + 1)

theorem P18957858670379426.correct : P18957858670379426.Spec := by
  intro n
  simp only [A296860, Nat.add_sub_cancel]

end A296860

/-! ## A296860.P4981668474312656490

`lt[A056977(2*n+1), A037800(or(n, 2*n))]`
-/

namespace A296860.P4981668474312656490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Nat.lor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296860.P4981668474312656490

namespace A296860

/-- `lt[A056977(2*n+1), A037800(or(n, 2*n))]` -/
def P4981668474312656490.Spec : Prop :=
  ∀ n, (P4981668474312656490.a n : ℤ) = A296860 (n + 1)

end A296860

/-!
# A296864: Numbers whose base-4 digits d(m), d(m-1), ..., d(0) have #(pits) = #(peaks); see Comments.

The programs for A296864, there is no canonical definition to state claims against.
-/

/-! ## A296864.P7867715439302840655

`∑[A077565(A077569(n+1)+A077546(n+1))]`
-/

namespace A296864.P7867715439302840655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (A077569 (n + 1) + A077546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296864.P7867715439302840655

/-! ## A296864.P6166138171199293696

`∑[A201162(A029372(n)!)]`
-/

namespace A296864.P6166138171199293696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201162 (Nat.factorial (A029372 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296864.P6166138171199293696

/-! ## A296864.P14579123447964262620

`∑[A216320(A128770(A029239(n)))]`
-/

namespace A296864.P14579123447964262620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216320 (A128770 (A029239 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296864.P14579123447964262620

/-! ## A296864.P3513559027720038679

`∑[A210850(A007318(A318256(n)))]`
-/

namespace A296864.P3513559027720038679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (A007318 (A318256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296864.P3513559027720038679

/-! ## A296864.P13893002978550348569

`lt[A266025(A227690(2*(n+1))), A180704(n+1)]`
-/

namespace A296864.P13893002978550348569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A227690 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296864.P13893002978550348569

/-!
# A296865: Numbers whose base-4 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296865, there is no canonical definition to state claims against.
-/

/-! ## A296865.P5648254717256638464

`A032875(A077168(n)+6)`
-/

namespace A296865.P5648254717256638464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032875 (A077168 n + 6).toNat

end

end A296865.P5648254717256638464

/-! ## A296865.P11724423709713338456

`A032859(A077168(n)+10)`
-/

namespace A296865.P11724423709713338456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032859 (A077168 n + 10).toNat

end

end A296865.P11724423709713338456

/-! ## A296865.P16647815158263632456

`∩[A032859(n+1), A043594(n+1)]`
-/

namespace A296865.P16647815158263632456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296865.P16647815158263632456

/-! ## A296865.P17545757651501733852

`∩[A032875(n+1), A043594(n+1)]`
-/

namespace A296865.P17545757651501733852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296865.P17545757651501733852

/-!
# A296867: Numbers whose base-5 digits d(m), d(m-1), ..., d(0) have #(pits) = #(peaks); see Comments.

The programs for A296867, there is no canonical definition to state claims against.
-/

/-! ## A296867.P961293985045745850

`lt[A093645(A353357(n+1)), A353389(n+1)]`
-/

namespace A296867.P961293985045745850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093645 (A353357 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296867.P961293985045745850

/-! ## A296867.P3553934409919018134

`∑[A329291(p?[A226219(n)])]`
-/

namespace A296867.P3553934409919018134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329291 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296867.P3553934409919018134

/-! ## A296867.P9537074790727638804

`∑[A128629(A265991(n+1))]`
-/

namespace A296867.P9537074790727638804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128629 (A265991 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296867.P9537074790727638804

/-! ## A296867.P7166786958613616257

`∑[A346094(A346091(n+2))]`
-/

namespace A296867.P7166786958613616257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346094 (A346091 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296867.P7166786958613616257

/-! ## A296867.P1835143685685719507

`∑[A139147(A046205(comp[3*n]))]`
-/

namespace A296867.P1835143685685719507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139147 (A046205 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296867.P1835143685685719507

/-!
# A296868: Numbers whose base-5 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296868, there is no canonical definition to state claims against.
-/

/-! ## A296868.P6700543181386588103

`A331362(A032860(n+16)²)`
-/

namespace A296868.P6700543181386588103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A032860 (n + 16) ^ 2).toNat

end

end A296868.P6700543181386588103

/-! ## A296868.P10448863999888199623

`A032860(n+16)%A138254(n+1)`
-/

namespace A296868.P10448863999888199623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032860 (n + 16)) (A138254 (n + 1))

end

end A296868.P10448863999888199623

/-! ## A296868.P11490206042991501083

`A032876(n+11)%A207973(n+8)`
-/

namespace A296868.P11490206042991501083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032876 (n + 11)) (A207973 (n + 8))

end

end A296868.P11490206042991501083

/-! ## A296868.P16175062551692950380

`∩[A032860(n+1), A043603(n+1)]`
-/

namespace A296868.P16175062551692950380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296868.P16175062551692950380

/-! ## A296868.P17529449961896887408

`∩[A032876(n+1), A043603(n+1)]`
-/

namespace A296868.P17529449961896887408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296868.P17529449961896887408

/-!
# A296869: Numbers whose base-5 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296869, there is no canonical definition to state claims against.
-/

/-! ## A296869.P758869297838341453

`A000188(A032843(n+11)²)`
-/

namespace A296869.P758869297838341453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A032843 (n + 11) ^ 2).toNat

end

end A296869.P758869297838341453

/-! ## A296869.P15088983655659966425

`A000194(A032843(n+11)²)`
-/

namespace A296869.P15088983655659966425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A032843 (n + 11) ^ 2).toNat

end

end A296869.P15088983655659966425

/-! ## A296869.P1276791678052375726

`A000196(A032843(n+11)²)`
-/

namespace A296869.P1276791678052375726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A032843 (n + 11) ^ 2).toNat

end

end A296869.P1276791678052375726

/-! ## A296869.P6356838462565576859

`A000196(A032884(n+15)²)`
-/

namespace A296869.P6356838462565576859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A032884 (n + 15) ^ 2).toNat

end

end A296869.P6356838462565576859

/-! ## A296869.P15420630227922452703

`∩[A032843(n+1), A043603(n+1)]`
-/

namespace A296869.P15420630227922452703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296869.P15420630227922452703

/-!
# A296870: Numbers whose base-6 digits d(m), d(m-1), ..., d(0) have #(pits) = #(peaks); see Comments.

The programs for A296870, there is no canonical definition to state claims against.
-/

/-! ## A296870.P10261923541423075298

`lt[A349443(A144470(n+1)+1), A210991(n)]`
-/

namespace A296870.P10261923541423075298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349443 (A144470 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296870.P10261923541423075298

/-! ## A296870.P6448784095379173094

`lt[A007742(3*n+1), A057615(A049078(n+1))]`
-/

namespace A296870.P6448784095379173094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057615 (A049078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296870.P6448784095379173094

/-! ## A296870.P2649843750054696054

`lt[A104786(A279041(n)), A151723(n)]`
-/

namespace A296870.P2649843750054696054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104786 (A279041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296870.P2649843750054696054

/-! ## A296870.P12289292153889518828

`lt[A104786(A279041(n)), A117679(n+1)]`
-/

namespace A296870.P12289292153889518828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104786 (A279041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296870.P12289292153889518828

/-! ## A296870.P9374426922346975854

`A093128(A172358(A172358(n+1)))+n`
-/

namespace A296870.P9374426922346975854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093128 (A172358 (A172358 (n + 1)).toNat).toNat + (n : ℤ)

end

end A296870.P9374426922346975854

/-!
# A296871: Numbers whose base-6 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296871, there is no canonical definition to state claims against.
-/

/-! ## A296871.P17258326249456707666

`∩[A032861(n+1), A043611(n+1)]`
-/

namespace A296871.P17258326249456707666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296871.P17258326249456707666

/-! ## A296871.P7180837224770557107

`∩[A032877(n+1), A043611(n+1)]`
-/

namespace A296871.P7180837224770557107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296871.P7180837224770557107

/-! ## A296871.P14122520827325676798

`A032861(A187829(n+1)+21)`
-/

namespace A296871.P14122520827325676798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032861 (A187829 (n + 1) + 21).toNat

end

end A296871.P14122520827325676798

/-! ## A296871.P7962301856670421252

`lt[A255691(n), A265517(n)]`
-/

namespace A296871.P7962301856670421252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296871.P7962301856670421252

/-! ## A296871.P6501075160742882923

`lt[A030105(A255591(n)), A265517(n)]`
-/

namespace A296871.P6501075160742882923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A255591 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296871.P6501075160742882923

/-!
# A296872: Numbers whose base-6 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296872, there is no canonical definition to state claims against.
-/

/-! ## A296872.P16113327496849384287

`A032844(n+16)%A031565(n+1)`
-/

namespace A296872.P16113327496849384287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032844 (n + 16)) (A031565 (n + 1))

end

end A296872.P16113327496849384287

/-! ## A296872.P15305187411018912039

`∩[A032844(n+1), A043611(n+1)]`
-/

namespace A296872.P15305187411018912039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296872.P15305187411018912039

/-! ## A296872.P14450632962666320943

`∩[A032885(n+1), A043611(n+1)]`
-/

namespace A296872.P14450632962666320943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296872.P14450632962666320943

/-! ## A296872.P8179141776400062280

`A000203(A010894(n)!)*A032844(n+16)`
-/

namespace A296872.P8179141776400062280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial (A010894 (n + 21)).toNat) * A032844 (n + 16)

end

end A296872.P8179141776400062280

/-! ## A296872.P10079253653814378316

`A006530(A010894(n)!)*A032844(n+16)`
-/

namespace A296872.P10079253653814378316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A010894 (n + 21)).toNat) * A032844 (n + 16)

end

end A296872.P10079253653814378316

/-!
# A296873: Numbers whose base-7 digits d(m), d(m-1), ..., d(0) have #(pits) = #(peaks); see Comments.

The programs for A296873, there is no canonical definition to state claims against.
-/

/-! ## A296873.P13200893654689034835

`A307847(p?[A124798(n+1)])+n`
-/

namespace A296873.P13200893654689034835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307847 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + (n : ℤ)

end

end A296873.P13200893654689034835

/-! ## A296873.P15972469057720726435

`A239700(A087121(2*(n+1)))+n`
-/

namespace A296873.P15972469057720726435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (A087121 (2 * (n + 1))).toNat + (n : ℤ)

end

end A296873.P15972469057720726435

/-! ## A296873.P8248617876180088009

`a(n-1)+gcd(n, A088296(A047764(n+1)+1))` with `a(0)=1`
-/

namespace A296873.P8248617876180088009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd (n : ℤ) (A088296 (A047764 (n + 1) + 1).toNat)

end

end A296873.P8248617876180088009

/-!
# A296874: Numbers whose base-7 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296874, there is no canonical definition to state claims against.
-/

/-! ## A296874.P2319422095620764117

`∩[A032862(n+1), A043618(n+1)]`
-/

namespace A296874.P2319422095620764117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296874.P2319422095620764117

/-! ## A296874.P5411433115065983887

`∩[A032878(n+1), A043618(n+1)]`
-/

namespace A296874.P5411433115065983887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296874.P5411433115065983887

/-! ## A296874.P16882542089303700024

`A032862(A187829(n+1)+28)`
-/

namespace A296874.P16882542089303700024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032862 (A187829 (n + 1) + 28).toNat

end

end A296874.P16882542089303700024

/-! ## A296874.P11775064067074978486

`A032862(A077168(n)+28)`
-/

namespace A296874.P11775064067074978486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032862 (A077168 n + 28).toNat

end

end A296874.P11775064067074978486

/-!
# A296875: Numbers whose base-7 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296875, there is no canonical definition to state claims against.
-/

/-! ## A296875.P4068083224992920065

`∩[A032845(n+1), A043618(n+1)]`
-/

namespace A296875.P4068083224992920065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296875.P4068083224992920065

/-! ## A296875.P7236865594979049321

`∩[A032886(n+1), A043618(n+1)]`
-/

namespace A296875.P7236865594979049321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296875.P7236865594979049321

/-! ## A296875.P9626380011251943867

`A296703(A187829(n+1)+19)`
-/

namespace A296875.P9626380011251943867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296703 (A187829 (n + 1) + 19).toNat

end

end A296875.P9626380011251943867

/-! ## A296875.P17483979150200066221

`A296703(A077168(n)+19)`
-/

namespace A296875.P17483979150200066221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296703 (A077168 n + 19).toNat

end

end A296875.P17483979150200066221

/-! ## A296875.P2656037804272484922

`lt[A303929(3*n), A185254(A064458(2*n+1))]`
-/

namespace A296875.P2656037804272484922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (A064458 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296875.P2656037804272484922

/-!
# A296876: Numbers whose base-8 digits d(m), d(m-1), ..., d(0) have #(pits) = #(peaks); see Comments.

The programs for A296876, there is no canonical definition to state claims against.
-/

/-! ## A296876.P10522293935499446884

`a(n-1)+A239700(A198461(n+2)+1)^3` with `a(0)=1`
-/

namespace A296876.P10522293935499446884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A239700 (A198461 (n + 2) + 1).toNat ^ 3

end

end A296876.P10522293935499446884

/-! ## A296876.P6196336139290417521

`A258210(A184955(floor(n/4)))+n`
-/

namespace A296876.P6196336139290417521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (A184955 ⌊(n : ℚ) / 4⌋.toNat).toNat + (n : ℤ)

end

end A296876.P6196336139290417521

/-! ## A296876.P16252383866662501797

`A010127(A312561(C(n, 64)))+n`
-/

namespace A296876.P16252383866662501797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A312561 (Nat.choose n 64)).toNat + (n : ℤ)

end

end A296876.P16252383866662501797

/-! ## A296876.P10782849560203815547

`A062395(A375034(C(n, 64)+1))+n-1`
-/

namespace A296876.P10782849560203815547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062395 (A375034 (Nat.choose n 64 + 1)).toNat + ((n : ℤ) - 1)

end

end A296876.P10782849560203815547

/-! ## A296876.P17642163347025084290

`A001917(A095815(C(n, 64)+1))^3+n`
-/

namespace A296876.P17642163347025084290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (A095815 (Nat.choose n 64 + 1)).toNat ^ 3 + (n : ℤ)

end

end A296876.P17642163347025084290

/-! ## A296876.P5898557450493772415

`A010689(C(n, 64)²)+n`
-/

namespace A296876.P5898557450493772415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (Nat.choose n 64 ^ 2) + (n : ℤ)

end

end A296876.P5898557450493772415

/-! ## A296876.P989354395140142158

`A001906(3^C(n, 64)²)+n`
-/

namespace A296876.P989354395140142158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (3 ^ Nat.choose n 64 ^ 2) + (n : ℤ)

end

end A296876.P989354395140142158

/-! ## A296876.P13221882415866774634

`A005581(3^C(n, 64)²)+n+1`
-/

namespace A296876.P13221882415866774634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (3 ^ Nat.choose n 64 ^ 2) + (n + 1 : ℤ)

end

end A296876.P13221882415866774634

/-! ## A296876.P16124803870748137305

`A000096(3^C(n, 64)²)+n-1`
-/

namespace A296876.P16124803870748137305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (3 ^ Nat.choose n 64 ^ 2) + ((n : ℤ) - 1)

end

end A296876.P16124803870748137305

/-! ## A296876.P3138464628861448800

`A000118(A000045(C(n, 64)²))+n`
-/

namespace A296876.P3138464628861448800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000045 (Nat.choose n 64 ^ 2)).toNat + (n : ℤ)

end

end A296876.P3138464628861448800

/-!
# A296877: Numbers whose base-8 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296877, there is no canonical definition to state claims against.
-/

/-! ## A296877.P14206999893033722672

`∩[A032863(n+1), A043625(n+1)]`
-/

namespace A296877.P14206999893033722672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296877.P14206999893033722672

/-! ## A296877.P11179878590888314415

`∩[A032879(n+1), A043625(n+1)]`
-/

namespace A296877.P11179878590888314415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296877.P11179878590888314415

/-! ## A296877.P2114455346675173152

`A032879(A077168(n)+28)`
-/

namespace A296877.P2114455346675173152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032879 (A077168 n + 28).toNat

end

end A296877.P2114455346675173152

/-!
# A296878: Numbers whose base-8 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296878, there is no canonical definition to state claims against.
-/

/-! ## A296878.P4243793765697532881

`∩[A032846(n+1), A043625(n+1)]`
-/

namespace A296878.P4243793765697532881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296878.P4243793765697532881

/-! ## A296878.P16958578645972323284

`∩[A032887(n+1), A043625(n+1)]`
-/

namespace A296878.P16958578645972323284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296878.P16958578645972323284

/-! ## A296878.P13301776995765613643

`∩[A032846(n+1), A266916(n+1)+1]`
-/

namespace A296878.P13301776995765613643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266916 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296878.P13301776995765613643

/-! ## A296878.P3517568609405456216

`∩[A032887(n+2), A266916(n+2)+2]`
-/

namespace A296878.P3517568609405456216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032887 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266916 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296878.P3517568609405456216

/-! ## A296878.P6782825682033208453

`∩[A032846(n+1), A266916(n+1)]`
-/

namespace A296878.P6782825682033208453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296878.P6782825682033208453

/-!
# A296880: Numbers whose base-9 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296880, there is no canonical definition to state claims against.
-/

/-! ## A296880.P1884883369492723676

`∩[A032864(n+1), A043632(n+1)]`
-/

namespace A296880.P1884883369492723676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296880.P1884883369492723676

/-! ## A296880.P17973185663107869521

`∩[A032880(n+1), A043632(n+1)]`
-/

namespace A296880.P17973185663107869521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296880.P17973185663107869521

/-!
# A296881: Numbers whose base-9 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296881, there is no canonical definition to state claims against.
-/

/-! ## A296881.P14318596646775519263

`∩[A032847(n+1), A043632(n+1)]`
-/

namespace A296881.P14318596646775519263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296881.P14318596646775519263

/-! ## A296881.P168633456973365754

`∩[A032888(n+1), A043632(n+1)]`
-/

namespace A296881.P168633456973365754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296881.P168633456973365754

/-! ## A296881.P11156693206513472082

`record[A330859(n)-(A040114(n)+n)]`
-/

namespace A296881.P11156693206513472082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330859 (n + 100) - (A040114 (n + 10) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296881.P11156693206513472082

/-! ## A296881.P914234004546216633

`record[A330859(n)-(A080465(n)+n)]`
-/

namespace A296881.P914234004546216633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330859 (n + 100) - (A080465 (n + 10) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296881.P914234004546216633

/-! ## A296881.P13229266742316263713

`A115843(A173639(n+2))`
-/

namespace A296881.P13229266742316263713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115843 (A173639 (n + 2)).toNat

end

end A296881.P13229266742316263713

/-!
# A296882: Numbers whose base-10 digits d(m), d(m-1), ..., d(0) have #(pits) = #(peaks); see Comments.

The programs for A296882, there is no canonical definition to state claims against.
-/

/-! ## A296882.P9539101736251498814

`A333939(A196222(n))+n`
-/

namespace A296882.P9539101736251498814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (A196222 n).toNat + (n : ℤ)

end

end A296882.P9539101736251498814

/-! ## A296882.P3977156364602325577

`A276335(A196222(n))+A000027(n+1)`
-/

namespace A296882.P3977156364602325577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276335 (A196222 n).toNat + A000027 (n + 1)

end

end A296882.P3977156364602325577

/-! ## A296882.P17651047184144782248

`A264668(A118759(n))+A000027(n+1)`
-/

namespace A296882.P17651047184144782248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (A118759 n).toNat + A000027 (n + 1)

end

end A296882.P17651047184144782248

/-!
# A296883: 

The programs for A296883, there is no canonical definition to state claims against.
-/

/-! ## A296883.P10189363154890066285

`∩[A032865(n+1), A043639(n+1)]`
-/

namespace A296883.P10189363154890066285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296883.P10189363154890066285

/-! ## A296883.P1271476578328179256

`∩[A032881(n+1), A043639(n+1)]`
-/

namespace A296883.P1271476578328179256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296883.P1271476578328179256

/-! ## A296883.P11902418687778526086

`∩[A032865(n+1), A135641(n+1)]`
-/

namespace A296883.P11902418687778526086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296883.P11902418687778526086

/-! ## A296883.P9473540543390466755

`∩[A032881(n+1), A135641(n+1)]`
-/

namespace A296883.P9473540543390466755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296883.P9473540543390466755

/-! ## A296883.P3308002081059654896

`A183086(n+1)%A006960(n)`
-/

namespace A296883.P3308002081059654896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183086 (n + 1)) (A006960 n)

end

end A296883.P3308002081059654896

/-! ## A296883.P1964395742479925539

`A183086(n+1)%A003539(n)`
-/

namespace A296883.P1964395742479925539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183086 (n + 1)) (A003539 n)

end

end A296883.P1964395742479925539

/-!
# A296884: Numbers whose base-10 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296884, there is no canonical definition to state claims against.
-/

/-! ## A296884.P11892603614657772659

`lt[12, A213217(A283001(n))]`
-/

namespace A296884.P11892603614657772659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A283001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296884.P11892603614657772659

/-! ## A296884.P9227634735016700489

`∩[A032848(n+1), A043639(n+1)]`
-/

namespace A296884.P9227634735016700489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296884.P9227634735016700489

/-! ## A296884.P2727513664943194173

`∩[A032889(n+1), A043639(n+1)]`
-/

namespace A296884.P2727513664943194173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296884.P2727513664943194173

/-! ## A296884.P5731844641256750334

`∩[A032848(n+1), A135642(n+1)]`
-/

namespace A296884.P5731844641256750334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296884.P5731844641256750334

/-! ## A296884.P5330323563558983046

`∩[A032889(n+1), A135642(n+1)]`
-/

namespace A296884.P5330323563558983046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296884.P5330323563558983046

/-! ## A296884.P11978128075387902057

`∩[A043639(n+1), A134853(n+1)]`
-/

namespace A296884.P11978128075387902057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296884.P11978128075387902057

/-! ## A296884.P11410679742394592532

`lt[A020723(A056964(n)), A052008(n)]`
-/

namespace A296884.P11410679742394592532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296884.P11410679742394592532

/-! ## A296884.P5158982253275598061

`lt[A056964(A233583(n+1)), A052008(n)]`
-/

namespace A296884.P5158982253275598061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296884.P5158982253275598061

/-!
# A296886: Numbers whose base-11 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296886, there is no canonical definition to state claims against.
-/

/-! ## A296886.P16809244832576006493

`A043646(A171120(n+1)+1)`
-/

namespace A296886.P16809244832576006493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043646 (A171120 (n + 1) + 1).toNat

end

end A296886.P16809244832576006493

/-! ## A296886.P10810225998001457024

`A171397(A252480(n+1))+A000041(A244173(n))`
-/

namespace A296886.P10810225998001457024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A252480 (n + 1)).toNat + A000041 (A244173 (n + 10)).toNat

end

end A296886.P10810225998001457024

/-! ## A296886.P17140925265222440501

`A171397(A252480(n+1))+A000108(A244173(n)²)`
-/

namespace A296886.P17140925265222440501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A252480 (n + 1)).toNat + A000108 (A244173 (n + 10) ^ 2).toNat

end

end A296886.P17140925265222440501

/-! ## A296886.P8017676921752924227

`A171397(A252480(n+1))+A008683(A132657(n+1))`
-/

namespace A296886.P8017676921752924227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A252480 (n + 1)).toNat + A008683 (A132657 (n + 1)).toNat

end

end A296886.P8017676921752924227

/-!
# A296887: Numbers whose base-11 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296887, there is no canonical definition to state claims against.
-/

/-! ## A296887.P3019044241717328299

`A296744(A187829(n+1)+31)`
-/

namespace A296887.P3019044241717328299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296744 (A187829 (n + 1) + 31).toNat

end

end A296887.P3019044241717328299

/-! ## A296887.P5215730627458216774

`A296744(A077168(n)+31)`
-/

namespace A296887.P5215730627458216774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296744 (A077168 n + 31).toNat

end

end A296887.P5215730627458216774

/-! ## A296887.P16226296074404042425

`A007095(A296884(n+1)^A043562(n))`
-/

namespace A296887.P16226296074404042425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A296884 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A296887.P16226296074404042425

/-! ## A296887.P6734795872119216085

`A029742(A296884(n+1)^A043562(n))`
-/

namespace A296887.P6734795872119216085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (SequenceMachineLib.roundAway ((A296884 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A296887.P6734795872119216085

/-! ## A296887.P11992969452884765538

`A171397(A296884(n+1)^A043562(n))`
-/

namespace A296887.P11992969452884765538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.roundAway ((A296884 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A296887.P11992969452884765538

/-!
# A296890: Numbers whose base-12 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296890, there is no canonical definition to state claims against.
-/

/-! ## A296890.P7992125800992002316

`A296747(A187829(n+1)+34)`
-/

namespace A296890.P7992125800992002316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296747 (A187829 (n + 1) + 34).toNat

end

end A296890.P7992125800992002316

/-! ## A296890.P1577435904713863401

`A171397(A296887(n+1)%A111441(n+4))`
-/

namespace A296890.P1577435904713863401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Int.tmod (A296887 (n + 1)) (A111441 (n + 4))).toNat

end

end A296890.P1577435904713863401

/-! ## A296890.P8072473860459087906

`A171397(A296887(n+1)^A107711(n))`
-/

namespace A296890.P8072473860459087906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.roundAway ((A296887 (n + 1) : ℚ) ^ (A107711 n : ℤ))).toNat

end

end A296890.P8072473860459087906

/-! ## A296890.P15537718168119082508

`A171397(C(A296887(n+1), A107711(n)))`
-/

namespace A296890.P15537718168119082508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Nat.choose (A296887 (n + 1)).toNat (A107711 n).toNat)

end

end A296890.P15537718168119082508

/-! ## A296890.P16358972308836300658

`A171397(A107711(n)²²*A296887(n+1))`
-/

namespace A296890.P16358972308836300658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 ((A107711 n ^ 2) ^ 2 * A296887 (n + 1)).toNat

end

end A296890.P16358972308836300658

/-!
# A296893: Numbers whose base-13 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296893, there is no canonical definition to state claims against.
-/

/-! ## A296893.P11102194617012923707

`A033949(A300006(n+1)^A219347(n))`
-/

namespace A296893.P11102194617012923707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (SequenceMachineLib.roundAway ((A300006 (n + 1) : ℚ) ^ (A219347 n : ℤ))).toNat

end

end A296893.P11102194617012923707

/-! ## A296893.P12488957973410740117

`lt[A000720(A000217(2*(n+1))), A360764(n)]`
-/

namespace A296893.P12488957973410740117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000217 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296893.P12488957973410740117

/-!
# A296896: Numbers whose base-14 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296896, there is no canonical definition to state claims against.
-/

/-! ## A296896.P1558583792066926074

`A296753(A187829(n+1)+40)`
-/

namespace A296896.P1558583792066926074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296753 (A187829 (n + 1) + 40).toNat

end

end A296896.P1558583792066926074

