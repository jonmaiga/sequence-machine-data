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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A313200: Coordination sequence Gal.6.581.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313200, there is no canonical definition to state claims against.
-/

/-! ## A313200.P10840368775977289624

`A312561(n)-A343631(A309731(n+1))`
-/

namespace A313200.P10840368775977289624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A343631 (A309731 (n + 1)).toNat

end

end A313200.P10840368775977289624

/-!
# A313201: Coordination sequence Gal.5.115.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313201, the canonical program `A313201.P17274935370983792056` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313201 has offset 0).

The definition of A313201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313201.P17274935370983792056

`A313026(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313201

/-- `A313026(n)+Δ[A011862(n)]` -/
def P17274935370983792056.Spec : Prop :=
  ∀ n, P17274935370983792056.a n = A313201 n

theorem P17274935370983792056.correct : P17274935370983792056.Spec := by
  intro n
  simp only [A313201]

end A313201

/-! ## A313201.P16140543898201490825

`A312893(n)+Δ[2*A011862(n)]`
-/

namespace A313201.P16140543898201490825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + (f1 (n + 1) - f1 n)

end

end A313201.P16140543898201490825

namespace A313201

/-- `A312893(n)+Δ[2*A011862(n)]` -/
def P16140543898201490825.Spec : Prop :=
  ∀ n, P16140543898201490825.a n = A313201 n

theorem P16140543898201490825.correct : P16140543898201490825.Spec := by
  intro n
  simp only [A313201, Nat.add_sub_cancel, A313201.P16140543898201490825.f1, A313201.P16140543898201490825.a, A313201.P17274935370983792056.f1, A313201.P17274935370983792056.a, A011862, A011862.P9485299441699197278.a, A312893, A312893.P922128372979076951.a, A313026, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A004396, A004396.P17032557045289780609.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313201

/-! ## A313201.P1264021307274079148

`A093390(A062545(n))+A008574(n)`
-/

namespace A313201.P1264021307274079148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A062545 n).toNat + A008574 n

end

end A313201.P1264021307274079148

namespace A313201

/-- `A093390(A062545(n))+A008574(n)` -/
def P1264021307274079148.Spec : Prop :=
  ∀ n, P1264021307274079148.a n = A313201 n

end A313201

/-! ## A313201.P2081678797331402547

`A313683(n)-A134667(A004396(n))`
-/

namespace A313201.P2081678797331402547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - A134667 (A004396 n).toNat

end

end A313201.P2081678797331402547

namespace A313201

/-- `A313683(n)-A134667(A004396(n))` -/
def P2081678797331402547.Spec : Prop :=
  ∀ n, P2081678797331402547.a n = A313201 n

end A313201

/-! ## A313201.P15049897022243044834

`A313538(n)-A128834(2*A004396(n))`
-/

namespace A313201.P15049897022243044834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n - A128834 (2 * A004396 n).toNat

end

end A313201.P15049897022243044834

namespace A313201

/-- `A313538(n)-A128834(2*A004396(n))` -/
def P15049897022243044834.Spec : Prop :=
  ∀ n, P15049897022243044834.a n = A313201 n

end A313201

/-! ## A313201.P6996926341718344630

`A314848(n)-A128834(A004396(2*n))`
-/

namespace A313201.P6996926341718344630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A128834 (A004396 (2 * n)).toNat

end

end A313201.P6996926341718344630

namespace A313201

/-- `A314848(n)-A128834(A004396(2*n))` -/
def P6996926341718344630.Spec : Prop :=
  ∀ n, P6996926341718344630.a n = A313201 n

end A313201

/-! ## A313201.P3967354735335249580

`A314848(n)-A128834(2*A006369(n))`
-/

namespace A313201.P3967354735335249580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A128834 (2 * A006369 n).toNat

end

end A313201.P3967354735335249580

namespace A313201

/-- `A314848(n)-A128834(2*A006369(n))` -/
def P3967354735335249580.Spec : Prop :=
  ∀ n, P3967354735335249580.a n = A313201 n

end A313201

/-! ## A313201.P9094467617304282858

`A312484(n)+A004396(n-A004396(n))`
-/

namespace A313201.P9094467617304282858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313201.P9094467617304282858

namespace A313201

/-- `A312484(n)+A004396(n-A004396(n))` -/
def P9094467617304282858.Spec : Prop :=
  ∀ n, P9094467617304282858.a n = A313201 n

end A313201

/-! ## A313201.P11038166823311518402

`A004396(n)+A313026(n)-A004396(A004396(n))`
-/

namespace A313201.P11038166823311518402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313026 n - A004396 (A004396 n).toNat)

end

end A313201.P11038166823311518402

namespace A313201

/-- `A004396(n)+A313026(n)-A004396(A004396(n))` -/
def P11038166823311518402.Spec : Prop :=
  ∀ n, P11038166823311518402.a n = A313201 n

end A313201

/-! ## A313201.P8041613752893081722

`A310493(n)-A004396(n-A004396(n))`
-/

namespace A313201.P8041613752893081722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310493 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313201.P8041613752893081722

namespace A313201

/-- `A310493(n)-A004396(n-A004396(n))` -/
def P8041613752893081722.Spec : Prop :=
  ∀ n, P8041613752893081722.a n = A313201 n

end A313201

/-! ## A313201.P12395727359203711723

`A313860(n)-A004396(A004396(n))`
-/

namespace A313201.P12395727359203711723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n - A004396 (A004396 n).toNat

end

end A313201.P12395727359203711723

namespace A313201

/-- `A313860(n)-A004396(A004396(n))` -/
def P12395727359203711723.Spec : Prop :=
  ∀ n, P12395727359203711723.a n = A313201 n

end A313201

/-! ## A313201.P11692534842454139262

`abs(10*n-A315427(n))`
-/

namespace A313201.P11692534842454139262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315427 n|

end

end A313201.P11692534842454139262

namespace A313201

/-- `abs(10*n-A315427(n))` -/
def P11692534842454139262.Spec : Prop :=
  ∀ n, P11692534842454139262.a n = A313201 n

end A313201

/-! ## A313201.P5510692258410813732

`2*A008706(n)-A315427(n)`
-/

namespace A313201.P5510692258410813732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315427 n

end

end A313201.P5510692258410813732

namespace A313201

/-- `2*A008706(n)-A315427(n)` -/
def P5510692258410813732.Spec : Prop :=
  ∀ n, P5510692258410813732.a n = A313201 n

end A313201

/-! ## A313201.P14404502695999640387

`A008458(n)+A008574(n)-A315427(n)`
-/

namespace A313201.P14404502695999640387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315427 n)

end

end A313201.P14404502695999640387

namespace A313201

/-- `A008458(n)+A008574(n)-A315427(n)` -/
def P14404502695999640387.Spec : Prop :=
  ∀ n, P14404502695999640387.a n = A313201 n

end A313201

/-! ## A313201.P16596867809962967172

`A315427(n)-A005843(A315427(n)-A008706(n))`
-/

namespace A313201.P16596867809962967172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n - A005843 (A315427 n - A008706 n).toNat

end

end A313201.P16596867809962967172

namespace A313201

/-- `A315427(n)-A005843(A315427(n)-A008706(n))` -/
def P16596867809962967172.Spec : Prop :=
  ∀ n, P16596867809962967172.a n = A313201 n

end A313201

/-! ## A313201.P2033403819308041421

`A315535(n)-2*A004396(A004396(n))`
-/

namespace A313201.P2033403819308041421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - 2 * A004396 (A004396 n).toNat

end

end A313201.P2033403819308041421

namespace A313201

/-- `A315535(n)-2*A004396(A004396(n))` -/
def P2033403819308041421.Spec : Prop :=
  ∀ n, P2033403819308041421.a n = A313201 n

end A313201

/-! ## A313201.P13655325560010680362

`A005843(A008706(n))-A315427(n)`
-/

namespace A313201.P13655325560010680362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315427 n

end

end A313201.P13655325560010680362

namespace A313201

/-- `A005843(A008706(n))-A315427(n)` -/
def P13655325560010680362.Spec : Prop :=
  ∀ n, P13655325560010680362.a n = A313201 n

end A313201

/-! ## A313201.P5820635634996375955

`A004525(A310538(n))+2*n`
-/

namespace A313201.P5820635634996375955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310538 n).toNat + (2 * n : ℤ)

end

end A313201.P5820635634996375955

namespace A313201

/-- `A004525(A310538(n))+2*n` -/
def P5820635634996375955.Spec : Prop :=
  ∀ n, P5820635634996375955.a n = A313201 n

end A313201

/-! ## A313201.P6024600010325449064

`A005843(n)+A004525(A310538(n))`
-/

namespace A313201.P6024600010325449064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310538 n).toNat

end

end A313201.P6024600010325449064

namespace A313201

/-- `A005843(n)+A004525(A310538(n))` -/
def P6024600010325449064.Spec : Prop :=
  ∀ n, P6024600010325449064.a n = A313201 n

end A313201

/-! ## A313201.P6433949305831289924

`A004396(A004396(n)+A310538(n)+n)`
-/

namespace A313201.P6433949305831289924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A310538 n + (n : ℤ))).toNat

end

end A313201.P6433949305831289924

namespace A313201

/-- `A004396(A004396(n)+A310538(n)+n)` -/
def P6433949305831289924.Spec : Prop :=
  ∀ n, P6433949305831289924.a n = A313201 n

end A313201

/-!
# A313202: Coordination sequence Gal.4.96.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313202, the canonical program `A313202.P16962560134668645847` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313202 has offset 0).

The definition of A313202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313202.P16962560134668645847

`A004396(n)+A313053(n)-A004525(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313202

/-- `A004396(n)+A313053(n)-A004525(n)` -/
def P16962560134668645847.Spec : Prop :=
  ∀ n, P16962560134668645847.a n = A313202 n

theorem P16962560134668645847.correct : P16962560134668645847.Spec := by
  intro n
  simp only [A313202]

end A313202

/-! ## A313202.P17680413154734244511

`A301672(n)+A313053(n)-A008574(n)`
-/

namespace A313202.P17680413154734244511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + (A313053 n - A008574 n)

end

end A313202.P17680413154734244511

namespace A313202

/-- `A301672(n)+A313053(n)-A008574(n)` -/
def P17680413154734244511.Spec : Prop :=
  ∀ n, P17680413154734244511.a n = A313202 n

end A313202

/-! ## A313202.P16778223818946557984

`A002264(2*n+1)+A313053(n)-A004525(n)`
-/

namespace A313202.P16778223818946557984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n + 1) + (A313053 n - A004525 n)

end

end A313202.P16778223818946557984

namespace A313202

/-- `A002264(2*n+1)+A313053(n)-A004525(n)` -/
def P16778223818946557984.Spec : Prop :=
  ∀ n, P16778223818946557984.a n = A313202 n

theorem P16778223818946557984.correct : P16778223818946557984.Spec := by
  intro n
  simp only [A313202, Nat.add_sub_cancel, A313202.P16778223818946557984.a, A313202.P16962560134668645847.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A313053, A313053.P8254110359425895258.a, A002266, A002266.P12055520221930490546.a, A312903, A312903.P5186887365123370171.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P8729701065839544525.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313202

/-! ## A313202.P5315228647239087861

`n-A002264(n+1)+A313053(n)-A004525(n)`
-/

namespace A313202.P5315228647239087861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002264 (n + 1) + (A313053 n - A004525 n)

end

end A313202.P5315228647239087861

namespace A313202

/-- `n-A002264(n+1)+A313053(n)-A004525(n)` -/
def P5315228647239087861.Spec : Prop :=
  ∀ n, P5315228647239087861.a n = A313202 n

end A313202

/-! ## A313202.P18327210505161421867

`A301672(n)+A313873(n)-A314886(n)`
-/

namespace A313202.P18327210505161421867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + (A313873 n - A314886 n)

end

end A313202.P18327210505161421867

namespace A313202

/-- `A301672(n)+A313873(n)-A314886(n)` -/
def P18327210505161421867.Spec : Prop :=
  ∀ n, P18327210505161421867.a n = A313202 n

end A313202

/-!
# A313203: Coordination sequence Gal.5.188.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313203, there is no canonical definition to state claims against.
-/

/-! ## A313203.P866980702153216511

`A314897(n)-A101455(n)`
-/

namespace A313203.P866980702153216511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314897 n - A101455 n

end

end A313203.P866980702153216511

/-! ## A313203.P7485741365006497273

`A314897(n)+A056594(n+1)`
-/

namespace A313203.P7485741365006497273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314897 n + A056594 (n + 1)

end

end A313203.P7485741365006497273

/-! ## A313203.P14997444525727019133

`A314897(n)+A075553(2*n)`
-/

namespace A313203.P14997444525727019133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314897 n + A075553 (2 * n)

end

end A313203.P14997444525727019133

/-! ## A313203.P17686672458957505481

`A314897(n)-A128834(A007494(n))`
-/

namespace A313203.P17686672458957505481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314897 n - A128834 (A007494 n).toNat

end

end A313203.P17686672458957505481

/-! ## A313203.P12934082858885854224

`A314897(n)+A128834(A007494(n)²)`
-/

namespace A313203.P12934082858885854224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314897 n + A128834 (A007494 n ^ 2).toNat

end

end A313203.P12934082858885854224

/-!
# A313204: Coordination sequence Gal.6.450.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313204, there is no canonical definition to state claims against.
-/

/-! ## A313204.P8025416373848739494

`A313170(n)+A001222(A006720(n))`
-/

namespace A313204.P8025416373848739494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313170 n + A001222 (A006720 n).toNat

end

end A313204.P8025416373848739494

/-! ## A313204.P15955491474399154568

`A313203(n)+A064911(A006720(n))`
-/

namespace A313204.P15955491474399154568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n + A064911 (A006720 n).toNat

end

end A313204.P15955491474399154568

/-! ## A313204.P1764857280214296091

`A340998(A027379(n))+A313203(n)`
-/

namespace A313204.P1764857280214296091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A027379 n).toNat + 140) + A313203 n

end

end A313204.P1764857280214296091

/-! ## A313204.P7730786877948407651

`A313213(n)-A107846(A182780(n))`
-/

namespace A313204.P7730786877948407651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n - A107846 (A182780 n).toNat

end

end A313204.P7730786877948407651

/-! ## A313204.P17117982278528681825

`A313213(n)-A000035(A101174(∑[n+1]))`
-/

namespace A313204.P17117982278528681825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n - A000035 (A101174 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A313204.P17117982278528681825

/-!
# A313205: Coordination sequence Gal.6.384.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313205, there is no canonical definition to state claims against.
-/

/-! ## A313205.P12304679608576328045

`A341524(n+1)+A018892(floor(4*3^(n-1)))`
-/

namespace A313205.P12304679608576328045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341524 (n + 1) + A018892 ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A313205.P12304679608576328045

/-! ## A313205.P1844855778029066164

`A313196(n)+A045887(A000271(n))`
-/

namespace A313205.P1844855778029066164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313196 n + A045887 (A000271 n).toNat

end

end A313205.P1844855778029066164

/-! ## A313205.P15176745501528359729

`A313203(n)+A248639(A058731(n))`
-/

namespace A313205.P15176745501528359729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n + A248639 (A058731 n).toNat

end

end A313205.P15176745501528359729

/-! ## A313205.P5993837258276541801

`A312507(n)+A281116(A126373(n))`
-/

namespace A313205.P5993837258276541801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 n + A281116 (A126373 n).toNat

end

end A313205.P5993837258276541801

/-! ## A313205.P12495040642488922424

`A313100(n)+A224447(A271619(n))`
-/

namespace A313205.P12495040642488922424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A224447 (A271619 n).toNat

end

end A313205.P12495040642488922424

/-!
# A313206: Coordination sequence Gal.6.539.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313206, there is no canonical definition to state claims against.
-/

/-! ## A313206.P14400698671811131815

`A339968(3*n+1)+A171588(A233139(n+4))`
-/

namespace A313206.P14400698671811131815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339968 (3 * n + 1) + A171588 (A233139 (n + 4)).toNat

end

end A313206.P14400698671811131815

/-! ## A313206.P17336120353232819639

`or(A051903(A002533(n)), A313099(n))`
-/

namespace A313206.P17336120353232819639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051903 (A002533 n).toNat) (A313099 n)

end

end A313206.P17336120353232819639

/-! ## A313206.P3300440987469918941

`or(A001221(A068870(n)), A313051(n))`
-/

namespace A313206.P3300440987469918941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A068870 n).toNat) (A313051 n)

end

end A313206.P3300440987469918941

/-! ## A313206.P12643149668359987704

`or(A001221(A068870(n)), A313099(n))`
-/

namespace A313206.P12643149668359987704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A068870 n).toNat) (A313099 n)

end

end A313206.P12643149668359987704

/-! ## A313206.P15424208625564127530

`or(A037828(A222848(n+1)), A313031(n))`
-/

namespace A313206.P15424208625564127530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037828 (A222848 (n + 1)).toNat) (A313031 n)

end

end A313206.P15424208625564127530

/-!
# A313207: Coordination sequence Gal.5.202.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313207, there is no canonical definition to state claims against.
-/

/-! ## A313207.P10471085372404055003

`A314901(n)-A101455(n)`
-/

namespace A313207.P10471085372404055003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314901 n - A101455 n

end

end A313207.P10471085372404055003

/-! ## A313207.P7090613855832980742

`A314901(n)+A056594(n+1)`
-/

namespace A313207.P7090613855832980742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314901 n + A056594 (n + 1)

end

end A313207.P7090613855832980742

/-! ## A313207.P17508897367985103152

`A314901(n)+A049310(∑[n+1])`
-/

namespace A313207.P17508897367985103152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314901 n + A049310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313207.P17508897367985103152

/-! ## A313207.P3844085790709154047

`A315053(n)-A365832(A003309(2*(n+2)))`
-/

namespace A313207.P3844085790709154047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n - A365832 (A003309 (2 * (n + 2))).toNat

end

end A313207.P3844085790709154047

/-! ## A313207.P3421156418492985097

`A312360(n)+A001222(A000679(n))`
-/

namespace A313207.P3421156418492985097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312360 n + A001222 (A000679 n).toNat

end

end A313207.P3421156418492985097

/-!
# A313208: Coordination sequence Gal.6.212.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313208, there is no canonical definition to state claims against.
-/

/-! ## A313208.P15547922674506617205

`A313209(A108887(∑[n]))`
-/

namespace A313208.P15547922674506617205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313209 (A108887 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A313208.P15547922674506617205

/-! ## A313208.P233079405870540517

`record[A313209(A307298(n))]`
-/

namespace A313208.P233079405870540517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313209 (A307298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313208.P233079405870540517

/-! ## A313208.P3182088395410167007

`record[A313209(abs(A158810(n)))]`
-/

namespace A313208.P3182088395410167007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313209 |A158810 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313208.P3182088395410167007

/-! ## A313208.P9526374994522474240

`∏{e}[A000244(n), A313209(#)]`
-/

namespace A313208.P9526374994522474240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A313209 (Nat.factorization (f1 n).natAbs p)

end

end A313208.P9526374994522474240

/-! ## A313208.P9759761689116298985

`A351870(A313209(n)+1)-1`
-/

namespace A313208.P9759761689116298985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A313209 n + 1).toNat - 1

end

end A313208.P9759761689116298985

/-!
# A313209: Coordination sequence Gal.6.211.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313209, there is no canonical definition to state claims against.
-/

/-! ## A313209.P13496390486565717361

`or(A243841(A000701(n)), A313208(n))`
-/

namespace A313209.P13496390486565717361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243841 (A000701 n).toNat) (A313208 n)

end

end A313209.P13496390486565717361

/-!
# A313210: Coordination sequence Gal.6.580.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313210, there is no canonical definition to state claims against.
-/

/-! ## A313210.P7352169317052277941

`A313206(n)+A083894(A343669(n))`
-/

namespace A313210.P7352169317052277941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313206 n + A083894 (A343669 n).toNat

end

end A313210.P7352169317052277941

/-! ## A313210.P3590051951523808102

`A313614(n)-A332814(A007483(n))`
-/

namespace A313210.P3590051951523808102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n - A332814 (A007483 n).toNat

end

end A313210.P3590051951523808102

/-! ## A313210.P1740822394572940204

`A072273(A153678(n+1))+A008579(n)`
-/

namespace A313210.P1740822394572940204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A153678 (n + 1)).toNat + A008579 n

end

end A313210.P1740822394572940204

/-! ## A313210.P1951595510402406262

`A066208(2*(n+1))-A306437(A342529(n))`
-/

namespace A313210.P1951595510402406262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (2 * (n + 1)) - A306437 (A342529 n).toNat

end

end A313210.P1951595510402406262

/-! ## A313210.P8791411243050304912

`A005243(3*n+2)-A193509(A055438(n+1))`
-/

namespace A313210.P8791411243050304912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005243 (3 * n + 2) - A193509 (A055438 (n + 1)).toNat

end

end A313210.P8791411243050304912

/-!
# A313211: Coordination sequence Gal.6.77.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313211, there is no canonical definition to state claims against.
-/

/-! ## A313211.P10440041963659666912

`A313090(A087051(n))+A111573(A028422(n+1))`
-/

namespace A313211.P10440041963659666912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 (A087051 n).toNat + A111573 (A028422 (n + 1)).toNat

end

end A313211.P10440041963659666912

/-! ## A313211.P8846473396299260146

`∑[A001222(A071857(n+1))+1]`
-/

namespace A313211.P8846473396299260146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071857 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313211.P8846473396299260146

/-! ## A313211.P11905832937527522974

`∑[A000120(A103087(2*n+3))]`
-/

namespace A313211.P11905832937527522974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A103087 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313211.P11905832937527522974

/-! ## A313211.P15761124796983220578

`A311207(n)+A124874(A019464(n))`
-/

namespace A313211.P15761124796983220578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n + A124874 (A019464 n).toNat

end

end A313211.P15761124796983220578

/-! ## A313211.P7663672004680652629

`A311861(n)+A001222(A149640(n))`
-/

namespace A313211.P7663672004680652629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A001222 (A149640 n).toNat

end

end A313211.P7663672004680652629

/-!
# A313212: Coordination sequence Gal.6.263.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313212, the canonical program `A313212.P14429204760756307954` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313212 has offset 0).

The definition of A313212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313212.P1858607222939886491

`abs(10*n-A315426(n))`
-/

namespace A313212.P1858607222939886491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315426 n|

end

end A313212.P1858607222939886491

namespace A313212

/-- `abs(10*n-A315426(n))` -/
def P1858607222939886491.Spec : Prop :=
  ∀ n, P1858607222939886491.a n = A313212 n

end A313212

/-! ## A313212.P9449994499986457012

`2*A008706(n)-A315426(n)`
-/

namespace A313212.P9449994499986457012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315426 n

end

end A313212.P9449994499986457012

namespace A313212

/-- `2*A008706(n)-A315426(n)` -/
def P9449994499986457012.Spec : Prop :=
  ∀ n, P9449994499986457012.a n = A313212 n

end A313212

/-! ## A313212.P17661343929787276625

`A008458(n)+A008574(n)-A315426(n)`
-/

namespace A313212.P17661343929787276625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315426 n)

end

end A313212.P17661343929787276625

namespace A313212

/-- `A008458(n)+A008574(n)-A315426(n)` -/
def P17661343929787276625.Spec : Prop :=
  ∀ n, P17661343929787276625.a n = A313212 n

end A313212

/-! ## A313212.P10449389584030591789

`A315426(n)-A005843(A315426(n)-A008706(n))`
-/

namespace A313212.P10449389584030591789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315426 n - A005843 (A315426 n - A008706 n).toNat

end

end A313212.P10449389584030591789

namespace A313212

/-- `A315426(n)-A005843(A315426(n)-A008706(n))` -/
def P10449389584030591789.Spec : Prop :=
  ∀ n, P10449389584030591789.a n = A313212 n

end A313212

/-! ## A313212.P5066962597846434458

`A005843(A008706(n))-A315426(n)`
-/

namespace A313212.P5066962597846434458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315426 n

end

end A313212.P5066962597846434458

namespace A313212

/-- `A005843(A008706(n))-A315426(n)` -/
def P5066962597846434458.Spec : Prop :=
  ∀ n, P5066962597846434458.a n = A313212 n

end A313212

/-! ## A313212.P2243488896523529085

`A313089(n)+Δ[A011864(n)]`
-/

namespace A313212.P2243488896523529085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313089 n + (f1 (n + 1) - f1 n)

end

end A313212.P2243488896523529085

namespace A313212

/-- `A313089(n)+Δ[A011864(n)]` -/
def P2243488896523529085.Spec : Prop :=
  ∀ n, P2243488896523529085.a n = A313212 n

end A313212

/-! ## A313212.P14429204760756307954

`A004396(A310501(n)+2*n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313212

/-- `A004396(A310501(n)+2*n)` -/
def P14429204760756307954.Spec : Prop :=
  ∀ n, P14429204760756307954.a n = A313212 n

theorem P14429204760756307954.correct : P14429204760756307954.Spec := by
  intro n
  simp only [A313212]

end A313212

/-! ## A313212.P13210459691383486574

`A274616(A310501(n)+2*n)`
-/

namespace A313212.P13210459691383486574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A310501 n + (2 * n : ℤ)).toNat

end

end A313212.P13210459691383486574

namespace A313212

/-- `A274616(A310501(n)+2*n)` -/
def P13210459691383486574.Spec : Prop :=
  ∀ n, P13210459691383486574.a n = A313212 n

end A313212

/-! ## A313212.P12650745178780771147

`A004396(2*(A313045(n)-n))`
-/

namespace A313212.P12650745178780771147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313045 n - (n : ℤ))).toNat

end

end A313212.P12650745178780771147

namespace A313212

/-- `A004396(2*(A313045(n)-n))` -/
def P12650745178780771147.Spec : Prop :=
  ∀ n, P12650745178780771147.a n = A313212 n

end A313212

/-! ## A313212.P6203993154968697200

`A004396(A310501(n)+n+n)`
-/

namespace A313212.P6203993154968697200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310501 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313212.P6203993154968697200

namespace A313212

/-- `A004396(A310501(n)+n+n)` -/
def P6203993154968697200.Spec : Prop :=
  ∀ n, P6203993154968697200.a n = A313212 n

theorem P6203993154968697200.correct : P6203993154968697200.Spec := by
  intro n
  simp only [A313212, Nat.add_sub_cancel, A313212.P6203993154968697200.a, A313212.P14429204760756307954.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A313212

/-! ## A313212.P14249852743777551168

`A274616(A310501(n)+n+n)`
-/

namespace A313212.P14249852743777551168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A310501 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313212.P14249852743777551168

namespace A313212

/-- `A274616(A310501(n)+n+n)` -/
def P14249852743777551168.Spec : Prop :=
  ∀ n, P14249852743777551168.a n = A313212 n

end A313212

/-! ## A313212.P11296824682347162359

`A311889(2*n)-4*n`
-/

namespace A313212.P11296824682347162359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311889 (2 * n) - (4 * n : ℤ)

end

end A313212.P11296824682347162359

namespace A313212

/-- `A311889(2*n)-4*n` -/
def P11296824682347162359.Spec : Prop :=
  ∀ n, P11296824682347162359.a n = A313212 n

end A313212

/-! ## A313212.P2320503342553552014

`2*A008574(2*n)-A315702(2*n)`
-/

namespace A313212.P2320503342553552014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315702 (2 * n)

end

end A313212.P2320503342553552014

namespace A313212

/-- `2*A008574(2*n)-A315702(2*n)` -/
def P2320503342553552014.Spec : Prop :=
  ∀ n, P2320503342553552014.a n = A313212 n

end A313212

/-! ## A313212.P8623511912066794320

`A004525(A312151(2*n))`
-/

namespace A313212.P8623511912066794320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312151 (2 * n)).toNat

end

end A313212.P8623511912066794320

namespace A313212

/-- `A004525(A312151(2*n))` -/
def P8623511912066794320.Spec : Prop :=
  ∀ n, P8623511912066794320.a n = A313212 n

end A313212

/-! ## A313212.P5146558016706791515

`A002264(A016813(A313045(n)-n))`
-/

namespace A313212.P5146558016706791515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A016813 (A313045 n - (n : ℤ)).toNat).toNat

end

end A313212.P5146558016706791515

namespace A313212

/-- `A002264(A016813(A313045(n)-n))` -/
def P5146558016706791515.Spec : Prop :=
  ∀ n, P5146558016706791515.a n = A313212 n

end A313212

/-!
# A313213: Coordination sequence Gal.6.260.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313213, the canonical program `A313213.P3463055026651004297` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313213 has offset 0).

The definition of A313213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313213.P13105772238966753551

`A311924(n)+Δ[floor(C(n, 2)/2)]`
-/

namespace A313213.P13105772238966753551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + (f1 (n + 1) - f1 n)

end

end A313213.P13105772238966753551

namespace A313213

/-- `A311924(n)+Δ[floor(C(n, 2)/2)]` -/
def P13105772238966753551.Spec : Prop :=
  ∀ n, P13105772238966753551.a n = A313213 n

end A313213

/-! ## A313213.P4855394661337636169

`A311924(n)+∑[A021913(n)]`
-/

namespace A313213.P4855394661337636169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313213.P4855394661337636169

namespace A313213

/-- `A311924(n)+∑[A021913(n)]` -/
def P4855394661337636169.Spec : Prop :=
  ∀ n, P4855394661337636169.a n = A313213 n

end A313213

/-! ## A313213.P12202006454419995403

`A311924(n)+Δ[A011848(n)]`
-/

namespace A313213.P12202006454419995403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + (f1 (n + 1) - f1 n)

end

end A313213.P12202006454419995403

namespace A313213

/-- `A311924(n)+Δ[A011848(n)]` -/
def P12202006454419995403.Spec : Prop :=
  ∀ n, P12202006454419995403.a n = A313213 n

end A313213

/-! ## A313213.P3463055026651004297

`A313099(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313213

/-- `A313099(n)+Δ[A011865(n)]` -/
def P3463055026651004297.Spec : Prop :=
  ∀ n, P3463055026651004297.a n = A313213 n

theorem P3463055026651004297.correct : P3463055026651004297.Spec := by
  intro n
  simp only [A313213]

end A313213

/-! ## A313213.P4968085763537927527

`A311924(n)+A004524(n+1)`
-/

namespace A313213.P4968085763537927527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + A004524 (n + 1)

end

end A313213.P4968085763537927527

namespace A313213

/-- `A311924(n)+A004524(n+1)` -/
def P4968085763537927527.Spec : Prop :=
  ∀ n, P4968085763537927527.a n = A313213 n

end A313213

/-! ## A313213.P11827555853334706356

`A311924(n)+n-A004525(n)`
-/

namespace A313213.P11827555853334706356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + ((n : ℤ) - A004525 n)

end

end A313213.P11827555853334706356

namespace A313213

/-- `A311924(n)+n-A004525(n)` -/
def P11827555853334706356.Spec : Prop :=
  ∀ n, P11827555853334706356.a n = A313213 n

end A313213

/-! ## A313213.P7860997237457132655

`A312526(n)+A004396(n-A004525(n))`
-/

namespace A313213.P7860997237457132655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313213.P7860997237457132655

namespace A313213

/-- `A312526(n)+A004396(n-A004525(n))` -/
def P7860997237457132655.Spec : Prop :=
  ∀ n, P7860997237457132655.a n = A313213 n

end A313213

/-! ## A313213.P18163041371350813224

`A314912(n)-A101455(n)`
-/

namespace A313213.P18163041371350813224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n - A101455 n

end

end A313213.P18163041371350813224

namespace A313213

/-- `A314912(n)-A101455(n)` -/
def P18163041371350813224.Spec : Prop :=
  ∀ n, P18163041371350813224.a n = A313213 n

end A313213

/-! ## A313213.P16127556225451709093

`abs(A008592(n)-A315425(n))`
-/

namespace A313213.P16127556225451709093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315425 n|

end

end A313213.P16127556225451709093

namespace A313213

/-- `abs(A008592(n)-A315425(n))` -/
def P16127556225451709093.Spec : Prop :=
  ∀ n, P16127556225451709093.a n = A313213 n

end A313213

/-! ## A313213.P3784788328874156749

`2*A008706(n)-A315425(n)`
-/

namespace A313213.P3784788328874156749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315425 n

end

end A313213.P3784788328874156749

namespace A313213

/-- `2*A008706(n)-A315425(n)` -/
def P3784788328874156749.Spec : Prop :=
  ∀ n, P3784788328874156749.a n = A313213 n

end A313213

/-! ## A313213.P3194600823743105296

`A008458(n)+A008574(n)-A315425(n)`
-/

namespace A313213.P3194600823743105296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315425 n)

end

end A313213.P3194600823743105296

namespace A313213

/-- `A008458(n)+A008574(n)-A315425(n)` -/
def P3194600823743105296.Spec : Prop :=
  ∀ n, P3194600823743105296.a n = A313213 n

end A313213

/-! ## A313213.P4982597841320604046

`A315425(n)-A005843(A315425(n)-A008706(n))`
-/

namespace A313213.P4982597841320604046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n - A005843 (A315425 n - A008706 n).toNat

end

end A313213.P4982597841320604046

namespace A313213

/-- `A315425(n)-A005843(A315425(n)-A008706(n))` -/
def P4982597841320604046.Spec : Prop :=
  ∀ n, P4982597841320604046.a n = A313213 n

end A313213

/-! ## A313213.P2096572678145159248

`A313837(n)-A004396(A004525(n))`
-/

namespace A313213.P2096572678145159248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - A004396 (A004525 n).toNat

end

end A313213.P2096572678145159248

namespace A313213

/-- `A313837(n)-A004396(A004525(n))` -/
def P2096572678145159248.Spec : Prop :=
  ∀ n, P2096572678145159248.a n = A313213 n

theorem P2096572678145159248.correct : P2096572678145159248.Spec := by
  intro n
  simp only [A313213, Nat.add_sub_cancel, A313213.P2096572678145159248.a, A313213.P3463055026651004297.f1, A313213.P3463055026651004297.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A011865, A011865.P18048699183673763300.a, A313099, A313099.P14754823964277209654.a, A313837, A313837.P17641795558428794836.a, A047273, A047273.P5050912492785340480.a, A311426, A311426.P12408021461851380809.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313213

/-! ## A313213.P10620257585039989126

`A313833(n)-A004525(A004396(n))`
-/

namespace A313213.P10620257585039989126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n - A004525 (A004396 n).toNat

end

end A313213.P10620257585039989126

namespace A313213

/-- `A313833(n)-A004525(A004396(n))` -/
def P10620257585039989126.Spec : Prop :=
  ∀ n, P10620257585039989126.a n = A313213 n

end A313213

/-! ## A313213.P8668674410634992615

`A313891(n)-A004525(n)`
-/

namespace A313213.P8668674410634992615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - A004525 n

end

end A313213.P8668674410634992615

namespace A313213

/-- `A313891(n)-A004525(n)` -/
def P8668674410634992615.Spec : Prop :=
  ∀ n, P8668674410634992615.a n = A313213 n

theorem P8668674410634992615.correct : P8668674410634992615.Spec := by
  intro n
  simp only [A313213, Nat.add_sub_cancel, A313213.P8668674410634992615.a, A313213.P3463055026651004297.f1, A313213.P3463055026651004297.a, A004525, A004525.P4158271949796742323.a, A011865, A011865.P18048699183673763300.a, A313099, A313099.P14754823964277209654.a, A313891, A313891.P9038549751761829655.a, A047273, A047273.P5050912492785340480.a, A311426, A311426.P12408021461851380809.a, A004396, A004396.P17032557045289780609.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313213

/-! ## A313213.P664218071068100077

`A313891(n)-Δ[A054925(n)]`
-/

namespace A313213.P664218071068100077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - (f1 (n + 1) - f1 n)

end

end A313213.P664218071068100077

namespace A313213

/-- `A313891(n)-Δ[A054925(n)]` -/
def P664218071068100077.Spec : Prop :=
  ∀ n, P664218071068100077.a n = A313213 n

end A313213

/-! ## A313213.P11171832958959576892

`∑[A021913(n)]+A313891(n)-n`
-/

namespace A313213.P11171832958959576892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313891 n - (n : ℤ))

end

end A313213.P11171832958959576892

namespace A313213

/-- `∑[A021913(n)]+A313891(n)-n` -/
def P11171832958959576892.Spec : Prop :=
  ∀ n, P11171832958959576892.a n = A313213 n

end A313213

/-! ## A313213.P3151723688442318986

`Δ[A011848(n)]+A313891(n)-n`
-/

namespace A313213.P3151723688442318986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313891 n - (n : ℤ))

end

end A313213.P3151723688442318986

namespace A313213

/-- `Δ[A011848(n)]+A313891(n)-n` -/
def P3151723688442318986.Spec : Prop :=
  ∀ n, P3151723688442318986.a n = A313213 n

end A313213

/-! ## A313213.P17348018495832866755

`A313924(n)-A004396(2*A004525(n))`
-/

namespace A313213.P17348018495832866755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A004396 (2 * A004525 n).toNat

end

end A313213.P17348018495832866755

namespace A313213

/-- `A313924(n)-A004396(2*A004525(n))` -/
def P17348018495832866755.Spec : Prop :=
  ∀ n, P17348018495832866755.a n = A313213 n

end A313213

/-! ## A313213.P10868959635274253208

`A005843(A008706(n))-A315425(n)`
-/

namespace A313213.P10868959635274253208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315425 n

end

end A313213.P10868959635274253208

namespace A313213

/-- `A005843(A008706(n))-A315425(n)` -/
def P10868959635274253208.Spec : Prop :=
  ∀ n, P10868959635274253208.a n = A313213 n

end A313213

/-!
# A313214: Coordination sequence Gal.6.381.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313214, there is no canonical definition to state claims against.
-/

/-! ## A313214.P9172497794587769386

`or(A001842(A014151(n)), A312190(n))`
-/

namespace A313214.P9172497794587769386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001842 (A014151 n).toNat) (A312190 n)

end

end A313214.P9172497794587769386

/-! ## A313214.P17748371438575575768

`A337810(2*n+1)-A096693(A218160(2*n+5))`
-/

namespace A313214.P17748371438575575768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337810 (2 * n + 1) - A096693 (A218160 (2 * n + 5)).toNat

end

end A313214.P17748371438575575768

/-!
# A313215: Coordination sequence Gal.6.558.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313215, there is no canonical definition to state claims against.
-/

/-! ## A313215.P17903238889043105767

`or(A303838(ceil(2^(n-1))), A313107(n))`
-/

namespace A313215.P17903238889043105767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A303838 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A313107 n)

end

end A313215.P17903238889043105767

/-! ## A313215.P15967240340943078671

`A313335(n)-A011765(A004643(n))`
-/

namespace A313215.P15967240340943078671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313335 n - A011765 (A004643 n).toNat

end

end A313215.P15967240340943078671

/-! ## A313215.P5431558855522842558

`A313333(n)-A257000(A252784(n))`
-/

namespace A313215.P5431558855522842558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313333 n - A257000 (A252784 n).toNat

end

end A313215.P5431558855522842558

/-! ## A313215.P2710729292892216675

`or(A011765(A004643(n)), A313107(n))`
-/

namespace A313215.P2710729292892216675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011765 (A004643 n).toNat) (A313107 n)

end

end A313215.P2710729292892216675

/-! ## A313215.P14977940824752710406

`xor(A001221(A000302(n)), A314488(n))`
-/

namespace A313215.P14977940824752710406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A000302 n).toNat) (A314488 n)

end

end A313215.P14977940824752710406

/-!
# A313216: Coordination sequence Gal.6.367.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313216, the canonical program `A313216.P820868789034450638` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313216 has offset 0).

The definition of A313216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313216.P820868789034450638

`ogf((1+2x+3x^2+4x^3+2x^4+6x^5+3x^7-2x^8+2x^9-x^10+x^11-x^12)/(1-2x+2x^2-x^3-x^4+2x^5-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A313216

/-- `ogf((1+2x+3x^2+4x^3+2x^4+6x^5+3x^7-2x^8+2x^9-x^10+x^11-x^12)/(1-2x+2x^2-x^3-x^4+2x^5-2x^6+x^7))` -/
def P820868789034450638.Spec : Prop :=
  ∀ n, P820868789034450638.a n = A313216 n

theorem P820868789034450638.correct : P820868789034450638.Spec := by
  intro n
  simp only [A313216]

end A313216

/-! ## A313216.P10425039558318065907

`A313271(A087051(n))-A091247(n)`
-/

namespace A313216.P10425039558318065907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313271 (A087051 n).toNat - A091247 n

end

end A313216.P10425039558318065907

namespace A313216

/-- `A313271(A087051(n))-A091247(n)` -/
def P10425039558318065907.Spec : Prop :=
  ∀ n, P10425039558318065907.a n = A313216 n

end A313216

/-! ## A313216.P14133541018288943984

`A221170(A052547(n))+A047412(3*n+1)`
-/

namespace A313216.P14133541018288943984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (A052547 n).toNat + A047412 (3 * n + 1)

end

end A313216.P14133541018288943984

namespace A313216

/-- `A221170(A052547(n))+A047412(3*n+1)` -/
def P14133541018288943984.Spec : Prop :=
  ∀ n, P14133541018288943984.a n = A313216 n

end A313216

/-! ## A313216.P16568781580744976493

`A311961(n)+A001221(n!)`
-/

namespace A313216.P16568781580744976493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311961 n + A001221 (Nat.factorial n)

end

end A313216.P16568781580744976493

namespace A313216

/-- `A311961(n)+A001221(n!)` -/
def P16568781580744976493.Spec : Prop :=
  ∀ n, P16568781580744976493.a n = A313216 n

end A313216

/-! ## A313216.P11180792673758793084

`A311961(n)+A001221(A000142(n))`
-/

namespace A313216.P11180792673758793084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311961 n + A001221 (A000142 n).toNat

end

end A313216.P11180792673758793084

namespace A313216

/-- `A311961(n)+A001221(A000142(n))` -/
def P11180792673758793084.Spec : Prop :=
  ∀ n, P11180792673758793084.a n = A313216 n

end A313216

/-!
# A313217: Coordination sequence Gal.6.382.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313217, there is no canonical definition to state claims against.
-/

/-! ## A313217.P2197354841532823123

`A301680(n)-A327051(A225910(2*n+3))`
-/

namespace A313217.P2197354841532823123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - A327051 (A225910 (2 * n + 3)).toNat

end

end A313217.P2197354841532823123

/-! ## A313217.P9048246614383030100

`A301680(n)-(∏{e}[A000142(n)+1, #]-1)`
-/

namespace A313217.P9048246614383030100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1)

end

end A313217.P9048246614383030100

/-! ## A313217.P5971312924021988393

`A310503(n)-A005614(A148356(n))`
-/

namespace A313217.P5971312924021988393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A005614 (A148356 n).toNat

end

end A313217.P5971312924021988393

/-! ## A313217.P3769273149431437774

`A301680(n)-A047999(A063990(n+1))`
-/

namespace A313217.P3769273149431437774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - A047999 (A063990 (n + 1)).toNat

end

end A313217.P3769273149431437774

/-! ## A313217.P10286430467341114949

`A310446(n)-A016389(A248923(n+1))`
-/

namespace A313217.P10286430467341114949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310446 n - A016389 (A248923 (n + 1)).toNat

end

end A313217.P10286430467341114949

/-!
# A313218: Coordination sequence Gal.6.573.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313218, there is no canonical definition to state claims against.
-/

/-! ## A313218.P1507378681452655390

`A313913(n)-A001221(A150001(n))`
-/

namespace A313218.P1507378681452655390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313913 n - A001221 (A150001 n).toNat

end

end A313218.P1507378681452655390

/-! ## A313218.P14505037925676439069

`A312123(A087051(n))+A280686(n+1)%A028310(n)`
-/

namespace A313218.P14505037925676439069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 (A087051 n).toNat + Int.tmod (A280686 (n + 1)) (A028310 n)

end

end A313218.P14505037925676439069

/-! ## A313218.P12254346791799354844

`A301299(n)+A001222(A319789(n))`
-/

namespace A313218.P12254346791799354844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A001222 (A319789 n).toNat

end

end A313218.P12254346791799354844

/-! ## A313218.P18308672474373981114

`A250120(n)-A135929(A001731(n))`
-/

namespace A313218.P18308672474373981114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A135929 (A001731 n).toNat

end

end A313218.P18308672474373981114

/-!
# A313219: Coordination sequence Gal.6.572.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313219, there is no canonical definition to state claims against.
-/

/-! ## A313219.P3863930204168119567

`A313337(n)-A257990(A130220(n))`
-/

namespace A313219.P3863930204168119567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313337 n - A257990 (A130220 n).toNat

end

end A313219.P3863930204168119567

/-! ## A313219.P12110020174988606830

`xor(A001221(A149669(n)), A312398(n))`
-/

namespace A313219.P12110020174988606830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A149669 n).toNat) (A312398 n)

end

end A313219.P12110020174988606830

/-! ## A313219.P17258403167543257206

`or(A007814(A242144(n+1)), A312742(n))`
-/

namespace A313219.P17258403167543257206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A242144 (n + 1)).toNat) (A312742 n)

end

end A313219.P17258403167543257206

/-! ## A313219.P5159109244545823796

`A311978(n)+A001221(n!)`
-/

namespace A313219.P5159109244545823796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311978 n + A001221 (Nat.factorial n)

end

end A313219.P5159109244545823796

/-! ## A313219.P8112494701010923910

`A311979(n)+A001221(n!)`
-/

namespace A313219.P8112494701010923910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311979 n + A001221 (Nat.factorial n)

end

end A313219.P8112494701010923910

/-!
# A313220: Coordination sequence Gal.6.428.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313220, there is no canonical definition to state claims against.
-/

/-! ## A313220.P9621658862158726900

`or(A163351(A048328(n)), A313121(n))`
-/

namespace A313220.P9621658862158726900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163351 (A048328 n).toNat) (A313121 n)

end

end A313220.P9621658862158726900

/-!
# A313221: Coordination sequence Gal.6.427.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313221, there is no canonical definition to state claims against.
-/

/-! ## A313221.P10268931377243396207

`A355454(A252251(3*n+2))+A320628(2*n+1)`
-/

namespace A313221.P10268931377243396207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355454 (A252251 (3 * n + 2)).toNat + A320628 (2 * n + 1)

end

end A313221.P10268931377243396207

/-!
# A313222: Coordination sequence Gal.6.456.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313222, there is no canonical definition to state claims against.
-/

/-! ## A313222.P13513723590599410784

`A312634(n)+A090239(A149217(n))`
-/

namespace A313222.P13513723590599410784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312634 n + A090239 (A149217 n).toNat

end

end A313222.P13513723590599410784

/-! ## A313222.P3698221029694083203

`A312732(n)+A266377(A056302(n+1))`
-/

namespace A313222.P3698221029694083203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312732 n + A266377 (A056302 (n + 1)).toNat

end

end A313222.P3698221029694083203

/-! ## A313222.P6904098879601846337

`record[A001222(A225773(n+1))*A064881(n+1)]`
-/

namespace A313222.P6904098879601846337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225773 (n + 1)).toNat * A064881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313222.P6904098879601846337

/-! ## A313222.P6048809089128591110

`A339895(2*(n+2))+A312349(n)+A001822(A001790(n))`
-/

namespace A313222.P6048809089128591110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (2 * (n + 2)) + (A312349 n + A001822 (A001790 n).toNat)

end

end A313222.P6048809089128591110

/-! ## A313222.P16123822180271229649

`A339895(2*(n+2))+A312744(n)+A015854(A081125(n))`
-/

namespace A313222.P16123822180271229649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (2 * (n + 2)) + (A312744 n + A015854 (A081125 n).toNat)

end

end A313222.P16123822180271229649

/-!
# A313223: Coordination sequence Gal.5.275.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313223, there is no canonical definition to state claims against.
-/

/-! ## A313223.P1454789327508788317

`A115772(n)+A008683(A175934(n))`
-/

namespace A313223.P1454789327508788317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 n + A008683 (A175934 n).toNat

end

end A313223.P1454789327508788317

/-! ## A313223.P8778416982500613876

`or(A000120(A187693(n)), A008574(n))`
-/

namespace A313223.P8778416982500613876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A187693 n).toNat) (A008574 n)

end

end A313223.P8778416982500613876

/-! ## A313223.P10257618494284388968

`or(A084556(A033312(n)), A311247(n))`
-/

namespace A313223.P10257618494284388968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084556 (A033312 n).toNat) (A311247 n)

end

end A313223.P10257618494284388968

/-!
# A313225: Coordination sequence Gal.6.474.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313225, there is no canonical definition to state claims against.
-/

/-! ## A313225.P10275973230202721214

`A313852(n)+A057428(n²²)`
-/

namespace A313225.P10275973230202721214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313852 n + A057428 ((n ^ 2) ^ 2)

end

end A313225.P10275973230202721214

/-! ## A313225.P415802808016637683

`A313196(n)+A043545(A143955(n))`
-/

namespace A313225.P415802808016637683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313196 n + A043545 (A143955 n).toNat

end

end A313225.P415802808016637683

/-! ## A313225.P13438535896827985013

`A313852(n)-A060576(A039300(n))`
-/

namespace A313225.P13438535896827985013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313852 n - A060576 (A039300 n).toNat

end

end A313225.P13438535896827985013

/-! ## A313225.P13755015934753146859

`A313852(n)-A057428(A005001(n))²`
-/

namespace A313225.P13755015934753146859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313852 n - A057428 (A005001 n).toNat ^ 2

end

end A313225.P13755015934753146859

/-! ## A313225.P6914147878929082973

`A313852(n)-A023532(A249432(n+1))`
-/

namespace A313225.P6914147878929082973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313852 n - A023532 (A249432 (n + 1)).toNat

end

end A313225.P6914147878929082973

/-!
# A313226: Coordination sequence Gal.6.588.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313226, the canonical program `A313226.P17564789701576195448` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313226 has offset 0).

The definition of A313226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313226.P532551497969579127

`(A310516(n)+A008579(n))/2`
-/

namespace A313226.P532551497969579127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310516 n + A008579 n : ℚ) / 2

end

end A313226.P532551497969579127

namespace A313226

/-- `(A310516(n)+A008579(n))/2` -/
def P532551497969579127.Spec : Prop :=
  ∀ n, P532551497969579127.a n = (A313226 n : ℚ)

end A313226

/-! ## A313226.P17564789701576195448

`A014682(A310516(n)+A008579(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313226

/-- `A014682(A310516(n)+A008579(n))` -/
def P17564789701576195448.Spec : Prop :=
  ∀ n, P17564789701576195448.a n = A313226 n

theorem P17564789701576195448.correct : P17564789701576195448.Spec := by
  intro n
  simp only [A313226]

end A313226

/-! ## A313226.P9036325246357957384

`A008579(n)+A004525(A310516(n)-A008579(n))`
-/

namespace A313226.P9036325246357957384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A310516 n - A008579 n).toNat

end

end A313226.P9036325246357957384

namespace A313226

/-- `A008579(n)+A004525(A310516(n)-A008579(n))` -/
def P9036325246357957384.Spec : Prop :=
  ∀ n, P9036325246357957384.a n = A313226 n

end A313226

/-! ## A313226.P3519169901442579363

`A008579(n)+A006370(A310516(n)-A008579(n))`
-/

namespace A313226.P3519169901442579363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A006370 (A310516 n - A008579 n).toNat

end

end A313226.P3519169901442579363

namespace A313226

/-- `A008579(n)+A006370(A310516(n)-A008579(n))` -/
def P3519169901442579363.Spec : Prop :=
  ∀ n, P3519169901442579363.a n = A313226 n

end A313226

/-! ## A313226.P9755140399833467216

`A310516(n)-A004526(A310516(n)-A008579(n))`
-/

namespace A313226.P9755140399833467216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310516 n - A004526 (A310516 n - A008579 n).toNat

end

end A313226.P9755140399833467216

namespace A313226

/-- `A310516(n)-A004526(A310516(n)-A008579(n))` -/
def P9755140399833467216.Spec : Prop :=
  ∀ n, P9755140399833467216.a n = A313226 n

end A313226

/-! ## A313226.P18233397694944274089

`A004525(A310516(n)+A008579(n))`
-/

namespace A313226.P18233397694944274089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310516 n + A008579 n).toNat

end

end A313226.P18233397694944274089

namespace A313226

/-- `A004525(A310516(n)+A008579(n))` -/
def P18233397694944274089.Spec : Prop :=
  ∀ n, P18233397694944274089.a n = A313226 n

end A313226

/-! ## A313226.P3913753229208157915

`A004526(A310516(n)+A008579(n))`
-/

namespace A313226.P3913753229208157915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310516 n + A008579 n).toNat

end

end A313226.P3913753229208157915

namespace A313226

/-- `A004526(A310516(n)+A008579(n))` -/
def P3913753229208157915.Spec : Prop :=
  ∀ n, P3913753229208157915.a n = A313226 n

end A313226

/-! ## A313226.P6099060210657457273

`A006370(A310516(n)+A008579(n))`
-/

namespace A313226.P6099060210657457273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A310516 n + A008579 n).toNat

end

end A313226.P6099060210657457273

namespace A313226

/-- `A006370(A310516(n)+A008579(n))` -/
def P6099060210657457273.Spec : Prop :=
  ∀ n, P6099060210657457273.a n = A313226 n

end A313226

/-! ## A313226.P3123654114892010602

`A065033(A310516(n)+A008579(n))`
-/

namespace A313226.P3123654114892010602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A310516 n + A008579 n).toNat

end

end A313226.P3123654114892010602

namespace A313226

/-- `A065033(A310516(n)+A008579(n))` -/
def P3123654114892010602.Spec : Prop :=
  ∀ n, P3123654114892010602.a n = A313226 n

end A313226

/-! ## A313226.P14508681825366187907

`A110654(A310516(n)+A008579(n))`
-/

namespace A313226.P14508681825366187907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A310516 n + A008579 n).toNat

end

end A313226.P14508681825366187907

namespace A313226

/-- `A110654(A310516(n)+A008579(n))` -/
def P14508681825366187907.Spec : Prop :=
  ∀ n, P14508681825366187907.a n = A313226 n

end A313226

/-! ## A313226.P3295490084464696872

`abs(A001057(A310516(n)+A008579(n)))`
-/

namespace A313226.P3295490084464696872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A310516 n + A008579 n).toNat|

end

end A313226.P3295490084464696872

namespace A313226

/-- `abs(A001057(A310516(n)+A008579(n)))` -/
def P3295490084464696872.Spec : Prop :=
  ∀ n, P3295490084464696872.a n = A313226 n

end A313226

/-! ## A313226.P7824641067310088396

`A028242(A008579(n)+A310516(n)+1)`
-/

namespace A313226.P7824641067310088396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008579 n + (A310516 n + 1)).toNat

end

end A313226.P7824641067310088396

namespace A313226

/-- `A028242(A008579(n)+A310516(n)+1)` -/
def P7824641067310088396.Spec : Prop :=
  ∀ n, P7824641067310088396.a n = A313226 n

end A313226

/-! ## A313226.P14427639149213225221

`A000463(A008579(n)+A310516(n)-1)`
-/

namespace A313226.P14427639149213225221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008579 n + (A310516 n - 1)).toNat

end

end A313226.P14427639149213225221

namespace A313226

/-- `A000463(A008579(n)+A310516(n)-1)` -/
def P14427639149213225221.Spec : Prop :=
  ∀ n, P14427639149213225221.a n = A313226 n

end A313226

/-! ## A313226.P13280153729776732789

`A001057(A008579(n)+A310516(n)-1)`
-/

namespace A313226.P13280153729776732789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008579 n + (A310516 n - 1)).toNat

end

end A313226.P13280153729776732789

namespace A313226

/-- `A001057(A008579(n)+A310516(n)-1)` -/
def P13280153729776732789.Spec : Prop :=
  ∀ n, P13280153729776732789.a n = A313226 n

end A313226

/-! ## A313226.P506818904372329395

`A052938(A310516(n)+A008579(n))-1`
-/

namespace A313226.P506818904372329395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A310516 n + A008579 n).toNat - 1

end

end A313226.P506818904372329395

namespace A313226

/-- `A052938(A310516(n)+A008579(n))-1` -/
def P506818904372329395.Spec : Prop :=
  ∀ n, P506818904372329395.a n = A313226 n

end A313226

/-! ## A313226.P3711807374314002975

`A000463(A008579(n)-(1-A310516(n)))`
-/

namespace A313226.P3711807374314002975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008579 n - (1 - A310516 n)).toNat

end

end A313226.P3711807374314002975

namespace A313226

/-- `A000463(A008579(n)-(1-A310516(n)))` -/
def P3711807374314002975.Spec : Prop :=
  ∀ n, P3711807374314002975.a n = A313226 n

end A313226

/-! ## A313226.P18337815172451164233

`A001057(A008579(n)-(1-A310516(n)))`
-/

namespace A313226.P18337815172451164233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008579 n - (1 - A310516 n)).toNat

end

end A313226.P18337815172451164233

namespace A313226

/-- `A001057(A008579(n)-(1-A310516(n)))` -/
def P18337815172451164233.Spec : Prop :=
  ∀ n, P18337815172451164233.a n = A313226 n

end A313226

/-! ## A313226.P2745274647413542714

`A065033(A008579(n)-(1-A310516(n)))`
-/

namespace A313226.P2745274647413542714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008579 n - (1 - A310516 n)).toNat

end

end A313226.P2745274647413542714

namespace A313226

/-- `A065033(A008579(n)-(1-A310516(n)))` -/
def P2745274647413542714.Spec : Prop :=
  ∀ n, P2745274647413542714.a n = A313226 n

end A313226

/-! ## A313226.P5822657446863434615

`A110654(A008579(n)-(1-A310516(n)))`
-/

namespace A313226.P5822657446863434615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008579 n - (1 - A310516 n)).toNat

end

end A313226.P5822657446863434615

namespace A313226

/-- `A110654(A008579(n)-(1-A310516(n)))` -/
def P5822657446863434615.Spec : Prop :=
  ∀ n, P5822657446863434615.a n = A313226 n

end A313226

/-! ## A313226.P16420592486062048742

`A028242(A008579(n)-(2-A310516(n)))`
-/

namespace A313226.P16420592486062048742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008579 n - (2 - A310516 n)).toNat

end

end A313226.P16420592486062048742

namespace A313226

/-- `A028242(A008579(n)-(2-A310516(n)))` -/
def P16420592486062048742.Spec : Prop :=
  ∀ n, P16420592486062048742.a n = A313226 n

end A313226

/-!
# A313227: Coordination sequence Gal.5.201.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313227, there is no canonical definition to state claims against.
-/

/-! ## A313227.P5092656168895538784

`A312581(n)+A153247(A153251(n))`
-/

namespace A313227.P5092656168895538784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312581 n + A153247 (A153251 n).toNat

end

end A313227.P5092656168895538784

/-! ## A313227.P15525685932406713614

`A313233(n)-A102683(A340329(n))`
-/

namespace A313227.P15525685932406713614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313233 n - A102683 (A340329 n).toNat

end

end A313227.P15525685932406713614

/-!
# A313228: Coordination sequence Gal.6.155.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313228, the canonical program `A313228.P2561284602986671939` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313228 has offset 0).

The definition of A313228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313228.P2561284602986671939

`A313859(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313228

/-- `A313859(n)-A004525(A004396(n))` -/
def P2561284602986671939.Spec : Prop :=
  ∀ n, P2561284602986671939.a n = A313228 n

theorem P2561284602986671939.correct : P2561284602986671939.Spec := by
  intro n
  simp only [A313228]

end A313228

/-! ## A313228.P11285250701063340319

`A313684(n)-A128834(n)`
-/

namespace A313228.P11285250701063340319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313684 n - A128834 n

end

end A313228.P11285250701063340319

namespace A313228

/-- `A313684(n)-A128834(n)` -/
def P11285250701063340319.Spec : Prop :=
  ∀ n, P11285250701063340319.a n = A313228 n

end A313228

/-! ## A313228.P8644944479310839037

`A313684(n)+A010892(n+2)`
-/

namespace A313228.P8644944479310839037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313684 n + A010892 (n + 2)

end

end A313228.P8644944479310839037

namespace A313228

/-- `A313684(n)+A010892(n+2)` -/
def P8644944479310839037.Spec : Prop :=
  ∀ n, P8644944479310839037.a n = A313228 n

end A313228

/-! ## A313228.P4382495379872165357

`A313912(n)-A004525(n)`
-/

namespace A313228.P4382495379872165357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313912 n - A004525 n

end

end A313228.P4382495379872165357

namespace A313228

/-- `A313912(n)-A004525(n)` -/
def P4382495379872165357.Spec : Prop :=
  ∀ n, P4382495379872165357.a n = A313228 n

end A313228

/-! ## A313228.P5340170097265624530

`A313912(n)-Δ[A054925(n)]`
-/

namespace A313228.P5340170097265624530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313912 n - (f1 (n + 1) - f1 n)

end

end A313228.P5340170097265624530

namespace A313228

/-- `A313912(n)-Δ[A054925(n)]` -/
def P5340170097265624530.Spec : Prop :=
  ∀ n, P5340170097265624530.a n = A313228 n

end A313228

/-! ## A313228.P3721413682848989133

`abs(10*n-A315421(n))`
-/

namespace A313228.P3721413682848989133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315421 n|

end

end A313228.P3721413682848989133

namespace A313228

/-- `abs(10*n-A315421(n))` -/
def P3721413682848989133.Spec : Prop :=
  ∀ n, P3721413682848989133.a n = A313228 n

end A313228

/-! ## A313228.P14410714922864330338

`2*A008706(n)-A315421(n)`
-/

namespace A313228.P14410714922864330338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315421 n

end

end A313228.P14410714922864330338

namespace A313228

/-- `2*A008706(n)-A315421(n)` -/
def P14410714922864330338.Spec : Prop :=
  ∀ n, P14410714922864330338.a n = A313228 n

end A313228

/-! ## A313228.P10071189874997627265

`A008458(n)+A008574(n)-A315421(n)`
-/

namespace A313228.P10071189874997627265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315421 n)

end

end A313228.P10071189874997627265

namespace A313228

/-- `A008458(n)+A008574(n)-A315421(n)` -/
def P10071189874997627265.Spec : Prop :=
  ∀ n, P10071189874997627265.a n = A313228 n

end A313228

/-! ## A313228.P15525348315181858112

`∑{d}[A008592(n)-A315421(n), A000010(#)]`
-/

namespace A313228.P15525348315181858112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313228.P15525348315181858112

namespace A313228

/-- `∑{d}[A008592(n)-A315421(n), A000010(#)]` -/
def P15525348315181858112.Spec : Prop :=
  ∀ n, P15525348315181858112.a n = A313228 n

end A313228

/-! ## A313228.P13207237238695449183

`A315421(n)-A005843(A315421(n)-A008706(n))`
-/

namespace A313228.P13207237238695449183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315421 n - A005843 (A315421 n - A008706 n).toNat

end

end A313228.P13207237238695449183

namespace A313228

/-- `A315421(n)-A005843(A315421(n)-A008706(n))` -/
def P13207237238695449183.Spec : Prop :=
  ∀ n, P13207237238695449183.a n = A313228 n

end A313228

/-! ## A313228.P6942402391972791089

`A005843(A008706(n))-A315421(n)`
-/

namespace A313228.P6942402391972791089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315421 n

end

end A313228.P6942402391972791089

namespace A313228

/-- `A005843(A008706(n))-A315421(n)` -/
def P6942402391972791089.Spec : Prop :=
  ∀ n, P6942402391972791089.a n = A313228 n

end A313228

/-! ## A313228.P9204172300457110297

`A004396(2*(A313088(n)-n))`
-/

namespace A313228.P9204172300457110297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313088 n - (n : ℤ))).toNat

end

end A313228.P9204172300457110297

namespace A313228

/-- `A004396(2*(A313088(n)-n))` -/
def P9204172300457110297.Spec : Prop :=
  ∀ n, P9204172300457110297.a n = A313228 n

end A313228

/-!
# A313229: Coordination sequence Gal.6.201.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313229, the canonical program `A313229.P566980447496653158` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313229 has offset 0).

The definition of A313229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313229.P6359566885298327933

`abs(10*n-A315420(n))`
-/

namespace A313229.P6359566885298327933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315420 n|

end

end A313229.P6359566885298327933

namespace A313229

/-- `abs(10*n-A315420(n))` -/
def P6359566885298327933.Spec : Prop :=
  ∀ n, P6359566885298327933.a n = A313229 n

end A313229

/-! ## A313229.P16853923023473648430

`2*A008706(n)-A315420(n)`
-/

namespace A313229.P16853923023473648430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315420 n

end

end A313229.P16853923023473648430

namespace A313229

/-- `2*A008706(n)-A315420(n)` -/
def P16853923023473648430.Spec : Prop :=
  ∀ n, P16853923023473648430.a n = A313229 n

end A313229

/-! ## A313229.P1696063903249107633

`A008458(n)+A008574(n)-A315420(n)`
-/

namespace A313229.P1696063903249107633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315420 n)

end

end A313229.P1696063903249107633

namespace A313229

/-- `A008458(n)+A008574(n)-A315420(n)` -/
def P1696063903249107633.Spec : Prop :=
  ∀ n, P1696063903249107633.a n = A313229 n

end A313229

/-! ## A313229.P16978749395841428304

`∑{d}[A008592(n)-A315420(n), A000010(#)]`
-/

namespace A313229.P16978749395841428304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313229.P16978749395841428304

namespace A313229

/-- `∑{d}[A008592(n)-A315420(n), A000010(#)]` -/
def P16978749395841428304.Spec : Prop :=
  ∀ n, P16978749395841428304.a n = A313229 n

end A313229

/-! ## A313229.P14472569402709206298

`A315420(n)-A005843(A315420(n)-A008706(n))`
-/

namespace A313229.P14472569402709206298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315420 n - A005843 (A315420 n - A008706 n).toNat

end

end A313229.P14472569402709206298

namespace A313229

/-- `A315420(n)-A005843(A315420(n)-A008706(n))` -/
def P14472569402709206298.Spec : Prop :=
  ∀ n, P14472569402709206298.a n = A313229 n

end A313229

/-! ## A313229.P3204061320112737712

`A005843(A008706(n))-A315420(n)`
-/

namespace A313229.P3204061320112737712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315420 n

end

end A313229.P3204061320112737712

namespace A313229

/-- `A005843(A008706(n))-A315420(n)` -/
def P3204061320112737712.Spec : Prop :=
  ∀ n, P3204061320112737712.a n = A313229 n

end A313229

/-! ## A313229.P566980447496653158

`A004396(A310517(n)+2*n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A313229

/-- `A004396(A310517(n)+2*n)` -/
def P566980447496653158.Spec : Prop :=
  ∀ n, P566980447496653158.a n = A313229 n

theorem P566980447496653158.correct : P566980447496653158.Spec := by
  intro n
  simp only [A313229]

end A313229

/-! ## A313229.P10126724427508051560

`A004396(A310517(n)+n+n)`
-/

namespace A313229.P10126724427508051560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310517 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313229.P10126724427508051560

namespace A313229

/-- `A004396(A310517(n)+n+n)` -/
def P10126724427508051560.Spec : Prop :=
  ∀ n, P10126724427508051560.a n = A313229 n

theorem P10126724427508051560.correct : P10126724427508051560.Spec := by
  intro n
  simp only [A313229, Nat.add_sub_cancel, A313229.P10126724427508051560.a, A313229.P566980447496653158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A313229

/-! ## A313229.P1938753536518897168

`A311481(2*n)-4*n`
-/

namespace A313229.P1938753536518897168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311481 (2 * n) - (4 * n : ℤ)

end

end A313229.P1938753536518897168

namespace A313229

/-- `A311481(2*n)-4*n` -/
def P1938753536518897168.Spec : Prop :=
  ∀ n, P1938753536518897168.a n = A313229 n

end A313229

/-! ## A313229.P17149992892762190583

`A004396(A311613(2*n)-A005843(n))`
-/

namespace A313229.P17149992892762190583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311613 (2 * n) - A005843 n).toNat

end

end A313229.P17149992892762190583

namespace A313229

/-- `A004396(A311613(2*n)-A005843(n))` -/
def P17149992892762190583.Spec : Prop :=
  ∀ n, P17149992892762190583.a n = A313229 n

end A313229

/-! ## A313229.P7543922516151744316

`A004396(A311541(2*n)-A005843(n))`
-/

namespace A313229.P7543922516151744316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311541 (2 * n) - A005843 n).toNat

end

end A313229.P7543922516151744316

namespace A313229

/-- `A004396(A311541(2*n)-A005843(n))` -/
def P7543922516151744316.Spec : Prop :=
  ∀ n, P7543922516151744316.a n = A313229 n

end A313229

/-! ## A313229.P11020994967280287062

`2*A008574(2*n)-A315746(2*n)`
-/

namespace A313229.P11020994967280287062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315746 (2 * n)

end

end A313229.P11020994967280287062

namespace A313229

/-- `2*A008574(2*n)-A315746(2*n)` -/
def P11020994967280287062.Spec : Prop :=
  ∀ n, P11020994967280287062.a n = A313229 n

end A313229

/-! ## A313229.P10719324193012899342

`A004525(A311553(2*n))`
-/

namespace A313229.P10719324193012899342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311553 (2 * n)).toNat

end

end A313229.P10719324193012899342

namespace A313229

/-- `A004525(A311553(2*n))` -/
def P10719324193012899342.Spec : Prop :=
  ∀ n, P10719324193012899342.a n = A313229 n

end A313229

/-! ## A313229.P3278313816553249554

`A233583(A017281(n))-A315420(n)`
-/

namespace A313229.P3278313816553249554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315420 n

end

end A313229.P3278313816553249554

namespace A313229

/-- `A233583(A017281(n))-A315420(n)` -/
def P3278313816553249554.Spec : Prop :=
  ∀ n, P3278313816553249554.a n = A313229 n

end A313229

/-!
# A313230: Coordination sequence Gal.5.219.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313230, there is no canonical definition to state claims against.
-/

/-! ## A313230.P16246756768313398852

`(A310269(n)+A219529(n))/2`
-/

namespace A313230.P16246756768313398852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310269 n + A219529 n : ℚ) / 2

end

end A313230.P16246756768313398852

/-! ## A313230.P6551948366584554013

`A014682(A310269(n)+A219529(n))`
-/

namespace A313230.P6551948366584554013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A310269 n + A219529 n).toNat

end

end A313230.P6551948366584554013

/-! ## A313230.P11312403530757085508

`A310269(n)+A001281(A219529(n)-A310269(n))`
-/

namespace A313230.P11312403530757085508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310269 n + A001281 (A219529 n - A310269 n).toNat

end

end A313230.P11312403530757085508

/-! ## A313230.P9480762521252508440

`A310269(n)+A004525(A219529(n)-A310269(n))`
-/

namespace A313230.P9480762521252508440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310269 n + A004525 (A219529 n - A310269 n).toNat

end

end A313230.P9480762521252508440

/-! ## A313230.P4428009217572162530

`A310269(n)+A025480(A219529(n)-A310269(n))`
-/

namespace A313230.P4428009217572162530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310269 n + A025480 (A219529 n - A310269 n).toNat

end

end A313230.P4428009217572162530

/-! ## A313230.P4816793226904651696

`A310269(n)+A026741(A219529(n)-A310269(n))`
-/

namespace A313230.P4816793226904651696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310269 n + A026741 (A219529 n - A310269 n).toNat

end

end A313230.P4816793226904651696

/-! ## A313230.P4999534344773690436

`A219529(n)-A004526(A219529(n)-A310269(n))`
-/

namespace A313230.P4999534344773690436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004526 (A219529 n - A310269 n).toNat

end

end A313230.P4999534344773690436

/-! ## A313230.P542263980626206307

`abs(10*n-A315419(n))`
-/

namespace A313230.P542263980626206307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315419 n|

end

end A313230.P542263980626206307

/-! ## A313230.P2578912840082910168

`2*A008706(n)-A315419(n)`
-/

namespace A313230.P2578912840082910168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315419 n

end

end A313230.P2578912840082910168

/-! ## A313230.P3477953057642793964

`A008458(n)+A008574(n)-A315419(n)`
-/

namespace A313230.P3477953057642793964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315419 n)

end

end A313230.P3477953057642793964

/-! ## A313230.P16390659538309408799

`A315419(n)-A005843(A315419(n)-A008706(n))`
-/

namespace A313230.P16390659538309408799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315419 n - A005843 (A315419 n - A008706 n).toNat

end

end A313230.P16390659538309408799

/-! ## A313230.P14873426816198532799

`A005843(A008706(n))-A315419(n)`
-/

namespace A313230.P14873426816198532799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315419 n

end

end A313230.P14873426816198532799

/-! ## A313230.P2789066175989925768

`A001281(A310269(n)+A219529(n))`
-/

namespace A313230.P2789066175989925768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310269 n + A219529 n).toNat

end

end A313230.P2789066175989925768

/-! ## A313230.P3361817118302176838

`A004525(A310269(n)+A219529(n))`
-/

namespace A313230.P3361817118302176838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310269 n + A219529 n).toNat

end

end A313230.P3361817118302176838

/-! ## A313230.P6120879496573607707

`A004526(A310269(n)+A219529(n))`
-/

namespace A313230.P6120879496573607707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310269 n + A219529 n).toNat

end

end A313230.P6120879496573607707

/-! ## A313230.P11638908571817204680

`A025480(A310269(n)+A219529(n))`
-/

namespace A313230.P11638908571817204680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A310269 n + A219529 n).toNat

end

end A313230.P11638908571817204680

/-! ## A313230.P15539401312880075374

`A026741(A310269(n)+A219529(n))`
-/

namespace A313230.P15539401312880075374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A310269 n + A219529 n).toNat

end

end A313230.P15539401312880075374

/-! ## A313230.P9185380527300997527

`A001057(A219529(n)+A310269(n)-1)`
-/

namespace A313230.P9185380527300997527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A219529 n + (A310269 n - 1)).toNat

end

end A313230.P9185380527300997527

/-! ## A313230.P2357263496049791676

`A001057(A219529(n)-(1-A310269(n)))`
-/

namespace A313230.P2357263496049791676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A219529 n - (1 - A310269 n)).toNat

end

end A313230.P2357263496049791676

/-!
# A313231: Coordination sequence Gal.5.224.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313231, there is no canonical definition to state claims against.
-/

/-! ## A313231.P6880953266491227756

`A313230(n)+A053470(A079782(n+1))`
-/

namespace A313231.P6880953266491227756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313230 n + A053470 (A079782 (n + 1)).toNat

end

end A313231.P6880953266491227756

/-! ## A313231.P2690835420451151103

`A313230(n)+A067898(A083685(n+1))`
-/

namespace A313231.P2690835420451151103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313230 n + A067898 (A083685 (n + 1)).toNat

end

end A313231.P2690835420451151103

/-! ## A313231.P3244976076563473354

`A313233(n)-A173677(A235319(n+1))`
-/

namespace A313231.P3244976076563473354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313233 n - A173677 (A235319 (n + 1)).toNat

end

end A313231.P3244976076563473354

/-! ## A313231.P12841227816586136187

`A314263(n)-A001222(A107962(n))`
-/

namespace A313231.P12841227816586136187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314263 n - A001222 (A107962 n).toNat

end

end A313231.P12841227816586136187

/-! ## A313231.P10519892672970327809

`A313871(n)-A001222(A151095(n))`
-/

namespace A313231.P10519892672970327809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313871 n - A001222 (A151095 n).toNat

end

end A313231.P10519892672970327809

/-!
# A313232: Coordination sequence Gal.3.14.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313232, the canonical program `A313232.P979105180797442420` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313232 has offset 0).

The definition of A313232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313232.P11741578647747217132

`A265227(n+1)+floor(3/acot(n))`
-/

namespace A313232.P11741578647747217132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A313232.P11741578647747217132

namespace A313232

/-- `A265227(n+1)+floor(3/acot(n))` -/
def P11741578647747217132.Spec : Prop :=
  ∀ n, P11741578647747217132.a n = A313232 n

end A313232

/-! ## A313232.P10512810314663178792

`A313568(n)-A244895(n)`
-/

namespace A313232.P10512810314663178792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n - A244895 n

end

end A313232.P10512810314663178792

namespace A313232

/-- `A313568(n)-A244895(n)` -/
def P10512810314663178792.Spec : Prop :=
  ∀ n, P10512810314663178792.a n = A313232 n

end A313232

/-! ## A313232.P979105180797442420

`A312475(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313232

/-- `A312475(n)+Δ[A011858(n)]` -/
def P979105180797442420.Spec : Prop :=
  ∀ n, P979105180797442420.a n = A313232 n

theorem P979105180797442420.correct : P979105180797442420.Spec := by
  intro n
  simp only [A313232]

end A313232

/-! ## A313232.P5186993543368926377

`A310518(n)-Δ[A011858(n)]`
-/

namespace A313232.P5186993543368926377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 n - (f1 (n + 1) - f1 n)

end

end A313232.P5186993543368926377

namespace A313232

/-- `A310518(n)-Δ[A011858(n)]` -/
def P5186993543368926377.Spec : Prop :=
  ∀ n, P5186993543368926377.a n = A313232 n

end A313232

/-! ## A313232.P4493144733228414815

`A265227(n+1)+A008486(n)`
-/

namespace A313232.P4493144733228414815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A008486 n

end

end A313232.P4493144733228414815

namespace A313232

/-- `A265227(n+1)+A008486(n)` -/
def P4493144733228414815.Spec : Prop :=
  ∀ n, P4493144733228414815.a n = A313232 n

end A313232

/-! ## A313232.P16811240214791308021

`A348236(n)+A047538(n+1)`
-/

namespace A313232.P16811240214791308021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 n + A047538 (n + 1)

end

end A313232.P16811240214791308021

namespace A313232

/-- `A348236(n)+A047538(n+1)` -/
def P16811240214791308021.Spec : Prop :=
  ∀ n, P16811240214791308021.a n = A313232 n

end A313232

/-! ## A313232.P9781341239201307131

`A265227(n+1)+A004277(n)+n`
-/

namespace A313232.P9781341239201307131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A004277 n + (n : ℤ))

end

end A313232.P9781341239201307131

namespace A313232

/-- `A265227(n+1)+A004277(n)+n` -/
def P9781341239201307131.Spec : Prop :=
  ∀ n, P9781341239201307131.a n = A313232 n

end A313232

/-! ## A313232.P11899495693420727202

`A265227(n+1)+A008574(n)-n`
-/

namespace A313232.P11899495693420727202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A008574 n - (n : ℤ))

end

end A313232.P11899495693420727202

namespace A313232

/-- `A265227(n+1)+A008574(n)-n` -/
def P11899495693420727202.Spec : Prop :=
  ∀ n, P11899495693420727202.a n = A313232 n

end A313232

/-! ## A313232.P6168840577755134641

`A265227(n+1)+record[A006368(n+1)]`
-/

namespace A313232.P6168840577755134641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313232.P6168840577755134641

namespace A313232

/-- `A265227(n+1)+record[A006368(n+1)]` -/
def P6168840577755134641.Spec : Prop :=
  ∀ n, P6168840577755134641.a n = A313232 n

end A313232

/-! ## A313232.P3268360732294071545

`A107750(A047486(n+1)+2*n+1)`
-/

namespace A313232.P3268360732294071545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (A047486 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A313232.P3268360732294071545

namespace A313232

/-- `A107750(A047486(n+1)+2*n+1)` -/
def P3268360732294071545.Spec : Prop :=
  ∀ n, P3268360732294071545.a n = A313232 n

end A313232

/-! ## A313232.P578302611988194660

`A008458(2*n)-A265227(4*n+1)`
-/

namespace A313232.P578302611988194660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (2 * n) - A265227 (4 * n + 1)

end

end A313232.P578302611988194660

namespace A313232

/-- `A008458(2*n)-A265227(4*n+1)` -/
def P578302611988194660.Spec : Prop :=
  ∀ n, P578302611988194660.a n = A313232 n

end A313232

/-! ## A313232.P110752676832331813

`n+1+A265227(n+1)+A004273(n)`
-/

namespace A313232.P110752676832331813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A265227 (n + 1) + A004273 n)

end

end A313232.P110752676832331813

namespace A313232

/-- `n+1+A265227(n+1)+A004273(n)` -/
def P110752676832331813.Spec : Prop :=
  ∀ n, P110752676832331813.a n = A313232 n

end A313232

/-! ## A313232.P5792150989993339444

`A047263(A008574(n)+1)-A244895(n)`
-/

namespace A313232.P5792150989993339444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008574 n + 1).toNat - A244895 n

end

end A313232.P5792150989993339444

namespace A313232

/-- `A047263(A008574(n)+1)-A244895(n)` -/
def P5792150989993339444.Spec : Prop :=
  ∀ n, P5792150989993339444.a n = A313232 n

end A313232

/-! ## A313232.P10530705170874030379

`A151988(2*n+1)+A151988(A004273(n))`
-/

namespace A313232.P10530705170874030379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n + 1) + A151988 (A004273 n).toNat

end

end A313232.P10530705170874030379

namespace A313232

/-- `A151988(2*n+1)+A151988(A004273(n))` -/
def P10530705170874030379.Spec : Prop :=
  ∀ n, P10530705170874030379.a n = A313232 n

end A313232

/-! ## A313232.P2372131898592753572

`A008486(n)+∪[A054966(n+1), A008486(n)]`
-/

namespace A313232.P2372131898592753572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A313232.P2372131898592753572

namespace A313232

/-- `A008486(n)+∪[A054966(n+1), A008486(n)]` -/
def P2372131898592753572.Spec : Prop :=
  ∀ n, P2372131898592753572.a n = A313232 n

end A313232

/-! ## A313232.P9568973768434529190

`A151988(A004273(n))+A151988(A005408(n))`
-/

namespace A313232.P9568973768434529190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004273 n).toNat + A151988 (A005408 n).toNat

end

end A313232.P9568973768434529190

namespace A313232

/-- `A151988(A004273(n))+A151988(A005408(n))` -/
def P9568973768434529190.Spec : Prop :=
  ∀ n, P9568973768434529190.a n = A313232 n

end A313232

/-! ## A313232.P9405471222669495734

`2*A250120(n)-A316026(n)`
-/

namespace A313232.P9405471222669495734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250120 n - A316026 n

end

end A313232.P9405471222669495734

namespace A313232

/-- `2*A250120(n)-A316026(n)` -/
def P9405471222669495734.Spec : Prop :=
  ∀ n, P9405471222669495734.a n = A313232 n

end A313232

/-! ## A313232.P13845753250660077855

`A008458(n)+A008574(n)-A315418(n)`
-/

namespace A313232.P13845753250660077855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315418 n)

end

end A313232.P13845753250660077855

namespace A313232

/-- `A008458(n)+A008574(n)-A315418(n)` -/
def P13845753250660077855.Spec : Prop :=
  ∀ n, P13845753250660077855.a n = A313232 n

end A313232

/-! ## A313232.P6966431637122331730

`A301718(n)-A057354(2*n+1)`
-/

namespace A313232.P6966431637122331730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A057354 (2 * n + 1)

end

end A313232.P6966431637122331730

namespace A313232

/-- `A301718(n)-A057354(2*n+1)` -/
def P6966431637122331730.Spec : Prop :=
  ∀ n, P6966431637122331730.a n = A313232 n

end A313232

/-! ## A313232.P12757816904179189645

`A311958(2*n)-4*n`
-/

namespace A313232.P12757816904179189645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 (2 * n) - (4 * n : ℤ)

end

end A313232.P12757816904179189645

namespace A313232

/-- `A311958(2*n)-4*n` -/
def P12757816904179189645.Spec : Prop :=
  ∀ n, P12757816904179189645.a n = A313232 n

end A313232

/-!
# A313233: Coordination sequence Gal.6.484.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313233, there is no canonical definition to state claims against.
-/

/-! ## A313233.P9004879498650134155

`A098968(n)+A072464(A001671(n))`
-/

namespace A313233.P9004879498650134155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 n + A072464 (A001671 n).toNat

end

end A313233.P9004879498650134155

/-! ## A313233.P9893238932008914237

`A313231(n)+A173677(A235319(n+1))`
-/

namespace A313233.P9893238932008914237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313231 n + A173677 (A235319 (n + 1)).toNat

end

end A313233.P9893238932008914237

/-! ## A313233.P15383189763309192034

`A313905(n)-A001221(A195558(n+1))`
-/

namespace A313233.P15383189763309192034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n - A001221 (A195558 (n + 1)).toNat

end

end A313233.P15383189763309192034

/-! ## A313233.P4398547056280927892

`A337019(2*n+3)+comp[a(floor(n/3))+n]` with `a(0)=2`
-/

namespace A313233.P4398547056280927892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337019 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A313233.P4398547056280927892

/-! ## A313233.P13934224190613335734

`A313856(n)-A055396(A319206(n+1))`
-/

namespace A313233.P13934224190613335734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313856 n - A055396 (A319206 (n + 1)).toNat

end

end A313233.P13934224190613335734

/-!
# A313234: Coordination sequence Gal.6.495.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313234, there is no canonical definition to state claims against.
-/

/-! ## A313234.P9419893006117144712

`A313241(n)-Δ[A216577(n²)]`
-/

namespace A313234.P9419893006117144712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216577 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - (f1 (n + 1) - f1 n)

end

end A313234.P9419893006117144712

/-! ## A313234.P8007063630665257879

`A312613(n)+A005614(A045723(n))`
-/

namespace A313234.P8007063630665257879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312613 n + A005614 (A045723 n).toNat

end

end A313234.P8007063630665257879

/-! ## A313234.P7043875057743273031

`A313241(n)+A014053(A088218(n))`
-/

namespace A313234.P7043875057743273031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n + A014053 (A088218 n).toNat

end

end A313234.P7043875057743273031

/-! ## A313234.P12453041654624073042

`A312082(n)+A001221(A256207(n))`
-/

namespace A313234.P12453041654624073042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312082 n + A001221 (A256207 n).toNat

end

end A313234.P12453041654624073042

/-!
# A313235: Coordination sequence Gal.4.92.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313235, there is no canonical definition to state claims against.
-/

/-! ## A313235.P4871128383149332944

`A315044(n)-A134667(n)`
-/

namespace A313235.P4871128383149332944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315044 n - A134667 n

end

end A313235.P4871128383149332944

/-! ## A313235.P903049950076192144

`A315044(n)+A033999(n)*A134667(n)`
-/

namespace A313235.P903049950076192144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315044 n + A033999 n * A134667 n

end

end A313235.P903049950076192144

/-! ## A313235.P5305897721438605137

`A315044(n)+A134667(n)*A280193(n)`
-/

namespace A313235.P5305897721438605137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315044 n + A134667 n * A280193 n

end

end A313235.P5305897721438605137

/-! ## A313235.P2979273731375638114

`A310517(n)-A304465(A042167(n))`
-/

namespace A313235.P2979273731375638114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310517 n - A304465 (A042167 n).toNat

end

end A313235.P2979273731375638114

/-! ## A313235.P13636206857483403678

`A008706(n)-(A321090(A036765(n))+A134667(n))`
-/

namespace A313235.P13636206857483403678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (A321090 (A036765 n).toNat + A134667 n)

end

end A313235.P13636206857483403678

/-!
# A313236: Coordination sequence Gal.5.186.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313236, there is no canonical definition to state claims against.
-/

/-! ## A313236.P13404230025544259770

`A315045(n)-A134667(n)`
-/

namespace A313236.P13404230025544259770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315045 n - A134667 n

end

end A313236.P13404230025544259770

/-! ## A313236.P11585680214714953769

`A315045(n)+A033999(n)*A134667(n)`
-/

namespace A313236.P11585680214714953769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315045 n + A033999 n * A134667 n

end

end A313236.P11585680214714953769

/-! ## A313236.P392229317963391947

`A315045(n)+A134667(n)/A134824(n+2)`
-/

namespace A313236.P392229317963391947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315045 n : ℚ) + (A134667 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A313236.P392229317963391947

/-! ## A313236.P834012690504208686

`A314879(n)+A185118(A282662(n))-A134667(n)`
-/

namespace A313236.P834012690504208686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n + A185118 (A282662 n).toNat - A134667 n

end

end A313236.P834012690504208686

/-! ## A313236.P12349261389655661163

`A313247(n)-A326476(A110218(n+1))`
-/

namespace A313236.P12349261389655661163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313247 n - A326476 (A110218 (n + 1)).toNat

end

end A313236.P12349261389655661163

/-!
# A313237: Coordination sequence Gal.6.202.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313237, the canonical program `A313237.P14637761332733740404` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313237 has offset 0).

The definition of A313237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313237.P5615438709789995799

`A314953(n)-A101455(n)`
-/

namespace A313237.P5615438709789995799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314953 n - A101455 n

end

end A313237.P5615438709789995799

namespace A313237

/-- `A314953(n)-A101455(n)` -/
def P5615438709789995799.Spec : Prop :=
  ∀ n, P5615438709789995799.a n = A313237 n

end A313237

/-! ## A313237.P14637761332733740404

`A312065(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313237

/-- `A312065(n)+∑[A021913(n)]` -/
def P14637761332733740404.Spec : Prop :=
  ∀ n, P14637761332733740404.a n = A313237 n

theorem P14637761332733740404.correct : P14637761332733740404.Spec := by
  intro n
  simp only [A313237]

end A313237

/-! ## A313237.P4914716809421311110

`A301672(n)+∑[A131735(n)]`
-/

namespace A313237.P4914716809421311110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313237.P4914716809421311110

namespace A313237

/-- `A301672(n)+∑[A131735(n)]` -/
def P4914716809421311110.Spec : Prop :=
  ∀ n, P4914716809421311110.a n = A313237 n

end A313237

/-! ## A313237.P17602233388357181727

`A312065(n)+Δ[A011848(n)]`
-/

namespace A313237.P17602233388357181727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + (f1 (n + 1) - f1 n)

end

end A313237.P17602233388357181727

namespace A313237

/-- `A312065(n)+Δ[A011848(n)]` -/
def P17602233388357181727.Spec : Prop :=
  ∀ n, P17602233388357181727.a n = A313237 n

end A313237

/-! ## A313237.P16299647914123539937

`A310511(n)-∑[A022003(n)]`
-/

namespace A313237.P16299647914123539937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313237.P16299647914123539937

namespace A313237

/-- `A310511(n)-∑[A022003(n)]` -/
def P16299647914123539937.Spec : Prop :=
  ∀ n, P16299647914123539937.a n = A313237 n

end A313237

/-! ## A313237.P8828981476131026956

`A312065(n)+A004524(n+1)`
-/

namespace A313237.P8828981476131026956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A004524 (n + 1)

end

end A313237.P8828981476131026956

namespace A313237

/-- `A312065(n)+A004524(n+1)` -/
def P8828981476131026956.Spec : Prop :=
  ∀ n, P8828981476131026956.a n = A313237 n

end A313237

/-! ## A313237.P12259097396760871584

`A310511(n)-A002264(n+1)`
-/

namespace A313237.P12259097396760871584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - A002264 (n + 1)

end

end A313237.P12259097396760871584

namespace A313237

/-- `A310511(n)-A002264(n+1)` -/
def P12259097396760871584.Spec : Prop :=
  ∀ n, P12259097396760871584.a n = A313237 n

end A313237

/-! ## A313237.P17557389808849372642

`A004396(n)+A310511(n)-n`
-/

namespace A313237.P17557389808849372642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310511 n - (n : ℤ))

end

end A313237.P17557389808849372642

namespace A313237

/-- `A004396(n)+A310511(n)-n` -/
def P17557389808849372642.Spec : Prop :=
  ∀ n, P17557389808849372642.a n = A313237 n

end A313237

/-! ## A313237.P2608878056531328683

`A312065(n)+n-A004525(n)`
-/

namespace A313237.P2608878056531328683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + ((n : ℤ) - A004525 n)

end

end A313237.P2608878056531328683

namespace A313237

/-- `A312065(n)+n-A004525(n)` -/
def P2608878056531328683.Spec : Prop :=
  ∀ n, P2608878056531328683.a n = A313237 n

end A313237

/-! ## A313237.P8249556299251170182

`A312065(n)+n-Δ[A054925(n)]`
-/

namespace A313237.P8249556299251170182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313237.P8249556299251170182

namespace A313237

/-- `A312065(n)+n-Δ[A054925(n)]` -/
def P8249556299251170182.Spec : Prop :=
  ∀ n, P8249556299251170182.a n = A313237 n

end A313237

/-! ## A313237.P13448882459428741209

`A310511(n)-A008615(2*n+1)`
-/

namespace A313237.P13448882459428741209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - A008615 (2 * n + 1)

end

end A313237.P13448882459428741209

namespace A313237

/-- `A310511(n)-A008615(2*n+1)` -/
def P13448882459428741209.Spec : Prop :=
  ∀ n, P13448882459428741209.a n = A313237 n

end A313237

/-! ## A313237.P14272129206818459108

`A301672(n)+n-A004525(A004396(n))`
-/

namespace A313237.P14272129206818459108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313237.P14272129206818459108

namespace A313237

/-- `A301672(n)+n-A004525(A004396(n))` -/
def P14272129206818459108.Spec : Prop :=
  ∀ n, P14272129206818459108.a n = A313237 n

end A313237

/-! ## A313237.P5942398036604557750

`A008576(n)+A310511(n)-A008486(n)`
-/

namespace A313237.P5942398036604557750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310511 n - A008486 n)

end

end A313237.P5942398036604557750

namespace A313237

/-- `A008576(n)+A310511(n)-A008486(n)` -/
def P5942398036604557750.Spec : Prop :=
  ∀ n, P5942398036604557750.a n = A313237 n

end A313237

/-! ## A313237.P4815994122406447663

`A313687(n)-A128834(n)`
-/

namespace A313237.P4815994122406447663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 n - A128834 n

end

end A313237.P4815994122406447663

namespace A313237

/-- `A313687(n)-A128834(n)` -/
def P4815994122406447663.Spec : Prop :=
  ∀ n, P4815994122406447663.a n = A313237 n

theorem P4815994122406447663.correct : P4815994122406447663.Spec := by
  intro n
  simp only [A313237, Nat.add_sub_cancel, A313237.P4815994122406447663.a, A313237.P14637761332733740404.f1, A313237.P14637761332733740404.a, A021913, A021913.P3902253882929539198.a, A128834, A128834.P4430347604004376390.a, A312065, A312065.P12266081500591104946.a, A313687, A313687.P12936372802294180480.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313237

/-! ## A313237.P15366941939480576535

`A313687(n)+A010892(n+2)`
-/

namespace A313237.P15366941939480576535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 n + A010892 (n + 2)

end

end A313237.P15366941939480576535

namespace A313237

/-- `A313687(n)+A010892(n+2)` -/
def P15366941939480576535.Spec : Prop :=
  ∀ n, P15366941939480576535.a n = A313237 n

end A313237

/-! ## A313237.P12304439804194551493

`A004525(A004396(n))+A313280(n)-A004525(n)`
-/

namespace A313237.P12304439804194551493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313280 n - A004525 n)

end

end A313237.P12304439804194551493

namespace A313237

/-- `A004525(A004396(n))+A313280(n)-A004525(n)` -/
def P12304439804194551493.Spec : Prop :=
  ∀ n, P12304439804194551493.a n = A313237 n

end A313237

/-! ## A313237.P4495255337391273549

`A313872(n)-A004396(A004525(n))`
-/

namespace A313237.P4495255337391273549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - A004396 (A004525 n).toNat

end

end A313237.P4495255337391273549

namespace A313237

/-- `A313872(n)-A004396(A004525(n))` -/
def P4495255337391273549.Spec : Prop :=
  ∀ n, P4495255337391273549.a n = A313237 n

end A313237

/-! ## A313237.P1658295039279755307

`A301697(n)-A004525(n)`
-/

namespace A313237.P1658295039279755307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A004525 n

end

end A313237.P1658295039279755307

namespace A313237

/-- `A301697(n)-A004525(n)` -/
def P1658295039279755307.Spec : Prop :=
  ∀ n, P1658295039279755307.a n = A313237 n

end A313237

/-! ## A313237.P9437249575056552901

`abs(10*n-A315417(n))`
-/

namespace A313237.P9437249575056552901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315417 n|

end

end A313237.P9437249575056552901

namespace A313237

/-- `abs(10*n-A315417(n))` -/
def P9437249575056552901.Spec : Prop :=
  ∀ n, P9437249575056552901.a n = A313237 n

end A313237

/-! ## A313237.P16131862956550999827

`A008458(n)+A008574(n)-A315417(n)`
-/

namespace A313237.P16131862956550999827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315417 n)

end

end A313237.P16131862956550999827

namespace A313237

/-- `A008458(n)+A008574(n)-A315417(n)` -/
def P16131862956550999827.Spec : Prop :=
  ∀ n, P16131862956550999827.a n = A313237 n

end A313237

/-!
# A313238: Coordination sequence Gal.5.198.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313238, there is no canonical definition to state claims against.
-/

/-! ## A313238.P4304891825610799724

`A008576(n)+A313054(n)-A072154(n)`
-/

namespace A313238.P4304891825610799724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313054 n - A072154 n)

end

end A313238.P4304891825610799724

/-! ## A313238.P16431285727593658750

`A004396(A008574(n))+A313054(n)-A072154(n)`
-/

namespace A313238.P16431285727593658750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 n).toNat + (A313054 n - A072154 n)

end

end A313238.P16431285727593658750

/-! ## A313238.P9474595647086028271

`A301718(n)-A004523(A077168(n))`
-/

namespace A313238.P9474595647086028271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A004523 (A077168 n).toNat

end

end A313238.P9474595647086028271

/-! ## A313238.P2851646456922798220

`A313090(n)+A004216(A083582(n))`
-/

namespace A313238.P2851646456922798220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 n + A004216 (A083582 n).toNat

end

end A313238.P2851646456922798220

/-! ## A313238.P16344893512483464334

`A047486(n+1)+A036741(A008486(n))`
-/

namespace A313238.P16344893512483464334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + A036741 (A008486 n).toNat

end

end A313238.P16344893512483464334

/-!
# A313239: Coordination sequence Gal.6.467.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313239, there is no canonical definition to state claims against.
-/

/-! ## A313239.P2019768192434513197

`xor(A000035(n²²), A314954(n))`
-/

namespace A313239.P2019768192434513197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 ((n ^ 2) ^ 2)) (A314954 n)

end

end A313239.P2019768192434513197

/-! ## A313239.P1304559948102801084

`A315050(n)-A058343(A013984(n))`
-/

namespace A313239.P1304559948102801084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315050 n - A058343 (A013984 n).toNat

end

end A313239.P1304559948102801084

/-! ## A313239.P4572871657725777154

`xor(A003815(A140429(n)), A314954(n))`
-/

namespace A313239.P4572871657725777154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003815 (A140429 n).toNat) (A314954 n)

end

end A313239.P4572871657725777154

/-! ## A313239.P5546443969595885460

`xor(A018843(A126120(n)), A314954(n))`
-/

namespace A313239.P5546443969595885460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018843 (A126120 n).toNat) (A314954 n)

end

end A313239.P5546443969595885460

/-!
# A313240: Coordination sequence Gal.5.220.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313240, there is no canonical definition to state claims against.
-/

/-! ## A313240.P15445831638398522994

`A313241(n)-A185284(A258834(n))`
-/

namespace A313240.P15445831638398522994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A185284 (A258834 n).toNat

end

end A313240.P15445831638398522994

/-! ## A313240.P15974016061172447954

`A313241(n)-A219463(A249391(n))`
-/

namespace A313240.P15974016061172447954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A219463 (A249391 n).toNat

end

end A313240.P15974016061172447954

/-! ## A313240.P5940343564721429894

`A313241(n)-A185284(A047235(n+1))`
-/

namespace A313240.P5940343564721429894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A185284 (A047235 (n + 1)).toNat

end

end A313240.P5940343564721429894

/-! ## A313240.P13824319411136494662

`A313241(n)-A124761(A126085(n+1))`
-/

namespace A313240.P13824319411136494662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A124761 (A126085 (n + 1)).toNat

end

end A313240.P13824319411136494662

/-! ## A313240.P7245971951401037952

`A313241(n)-A124761(A265447(n+1))`
-/

namespace A313240.P7245971951401037952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A124761 (A265447 (n + 1)).toNat

end

end A313240.P7245971951401037952

/-!
# A313241: Coordination sequence Gal.5.86.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313241, the canonical program `A313241.P6304044137677485136` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313241 has offset 0).

The definition of A313241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313241.P8054387944971912962

`ogf((1+3x+5x^2+6x^3+5x^4+4x^5+5x^6+6x^7+5x^8+3x^9+x^10)/(1-x-x^9+x^10))`
-/

namespace A313241.P8054387944971912962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 6, 5, 4, 5, 6, 5, 3, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A313241.P8054387944971912962

namespace A313241

/-- `ogf((1+3x+5x^2+6x^3+5x^4+4x^5+5x^6+6x^7+5x^8+3x^9+x^10)/(1-x-x^9+x^10))` -/
def P8054387944971912962.Spec : Prop :=
  ∀ n, P8054387944971912962.a n = A313241 n

end A313241

/-! ## A313241.P6304044137677485136

`A313100(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313241

/-- `A313100(n)+Δ[A011862(n)]` -/
def P6304044137677485136.Spec : Prop :=
  ∀ n, P6304044137677485136.a n = A313241 n

theorem P6304044137677485136.correct : P6304044137677485136.Spec := by
  intro n
  simp only [A313241]

end A313241

/-! ## A313241.P8230464294252575362

`A312932(n)+Δ[2*A011862(n)]`
-/

namespace A313241.P8230464294252575362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + (f1 (n + 1) - f1 n)

end

end A313241.P8230464294252575362

namespace A313241

/-- `A312932(n)+Δ[2*A011862(n)]` -/
def P8230464294252575362.Spec : Prop :=
  ∀ n, P8230464294252575362.a n = A313241 n

theorem P8230464294252575362.correct : P8230464294252575362.Spec := by
  intro n
  simp only [A313241, Nat.add_sub_cancel, A313241.P8230464294252575362.f1, A313241.P8230464294252575362.a, A313241.P6304044137677485136.f1, A313241.P6304044137677485136.a, A011862, A011862.P9485299441699197278.a, A312932, A312932.P265636690513476108.a, A313100, A313100.P9368663845500705119.f1, A313100.P9368663845500705119.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313241

/-! ## A313241.P9881793856982146798

`2*A008574(2*n)-A315696(2*n)`
-/

namespace A313241.P9881793856982146798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315696 (2 * n)

end

end A313241.P9881793856982146798

namespace A313241

/-- `2*A008574(2*n)-A315696(2*n)` -/
def P9881793856982146798.Spec : Prop :=
  ∀ n, P9881793856982146798.a n = A313241 n

end A313241

/-! ## A313241.P14707826661148323288

`A310509(n)-A004396(n-A004396(n))`
-/

namespace A313241.P14707826661148323288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313241.P14707826661148323288

namespace A313241

/-- `A310509(n)-A004396(n-A004396(n))` -/
def P14707826661148323288.Spec : Prop :=
  ∀ n, P14707826661148323288.a n = A313241 n

end A313241

/-! ## A313241.P17697758946665552501

`A004396(n)+A313100(n)-A004396(A004396(n))`
-/

namespace A313241.P17697758946665552501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313100 n - A004396 (A004396 n).toNat)

end

end A313241.P17697758946665552501

namespace A313241

/-- `A004396(n)+A313100(n)-A004396(A004396(n))` -/
def P17697758946665552501.Spec : Prop :=
  ∀ n, P17697758946665552501.a n = A313241 n

end A313241

/-! ## A313241.P8412188197322883364

`abs(10*n-A315416(n))`
-/

namespace A313241.P8412188197322883364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315416 n|

end

end A313241.P8412188197322883364

namespace A313241

/-- `abs(10*n-A315416(n))` -/
def P8412188197322883364.Spec : Prop :=
  ∀ n, P8412188197322883364.a n = A313241 n

end A313241

/-! ## A313241.P17574784989630562074

`A008458(n)+A008574(n)-A315416(n)`
-/

namespace A313241.P17574784989630562074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315416 n)

end

end A313241.P17574784989630562074

namespace A313241

/-- `A008458(n)+A008574(n)-A315416(n)` -/
def P17574784989630562074.Spec : Prop :=
  ∀ n, P17574784989630562074.a n = A313241 n

end A313241

/-! ## A313241.P1170095262984340237

`A313909(n)-A004396(A004396(n))`
-/

namespace A313241.P1170095262984340237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313909 n - A004396 (A004396 n).toNat

end

end A313241.P1170095262984340237

namespace A313241

/-- `A313909(n)-A004396(A004396(n))` -/
def P1170095262984340237.Spec : Prop :=
  ∀ n, P1170095262984340237.a n = A313241 n

end A313241

/-! ## A313241.P723091856723244751

`(A312484(n)+A151988(A312484(n)))/2`
-/

namespace A313241.P723091856723244751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312484 n + A151988 (A312484 n).toNat : ℚ) / 2

end

end A313241.P723091856723244751

namespace A313241

/-- `(A312484(n)+A151988(A312484(n)))/2` -/
def P723091856723244751.Spec : Prop :=
  ∀ n, P723091856723244751.a n = (A313241 n : ℚ)

end A313241

/-! ## A313241.P1934357776795024558

`A004396(n)+A004396(A310521(n)+n)`
-/

namespace A313241.P1934357776795024558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A310521 n + (n : ℤ)).toNat

end

end A313241.P1934357776795024558

namespace A313241

/-- `A004396(n)+A004396(A310521(n)+n)` -/
def P1934357776795024558.Spec : Prop :=
  ∀ n, P1934357776795024558.a n = A313241 n

end A313241

/-! ## A313241.P13753643337427794890

`A004396(n)+A004396(A310538(n)+n)`
-/

namespace A313241.P13753643337427794890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A310538 n + (n : ℤ)).toNat

end

end A313241.P13753643337427794890

namespace A313241

/-- `A004396(n)+A004396(A310538(n)+n)` -/
def P13753643337427794890.Spec : Prop :=
  ∀ n, P13753643337427794890.a n = A313241 n

end A313241

/-! ## A313241.P4439395558067036865

`A004396(A310521(n)+2*n)`
-/

namespace A313241.P4439395558067036865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310521 n + (2 * n : ℤ)).toNat

end

end A313241.P4439395558067036865

namespace A313241

/-- `A004396(A310521(n)+2*n)` -/
def P4439395558067036865.Spec : Prop :=
  ∀ n, P4439395558067036865.a n = A313241 n

end A313241

/-! ## A313241.P1526549003761455355

`A004396(A310538(n)+2*n)`
-/

namespace A313241.P1526549003761455355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310538 n + (2 * n : ℤ)).toNat

end

end A313241.P1526549003761455355

namespace A313241

/-- `A004396(A310538(n)+2*n)` -/
def P1526549003761455355.Spec : Prop :=
  ∀ n, P1526549003761455355.a n = A313241 n

end A313241

/-! ## A313241.P18311590310558471465

`A004396(2*(A313100(n)-n))`
-/

namespace A313241.P18311590310558471465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313100 n - (n : ℤ))).toNat

end

end A313241.P18311590310558471465

namespace A313241

/-- `A004396(2*(A313100(n)-n))` -/
def P18311590310558471465.Spec : Prop :=
  ∀ n, P18311590310558471465.a n = A313241 n

end A313241

/-! ## A313241.P11947823857860528367

`A004396(A310521(n)+n+n)`
-/

namespace A313241.P11947823857860528367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310521 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313241.P11947823857860528367

namespace A313241

/-- `A004396(A310521(n)+n+n)` -/
def P11947823857860528367.Spec : Prop :=
  ∀ n, P11947823857860528367.a n = A313241 n

end A313241

/-! ## A313241.P8193300309275903259

`A004396(A310538(n)+n+n)`
-/

namespace A313241.P8193300309275903259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310538 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313241.P8193300309275903259

namespace A313241

/-- `A004396(A310538(n)+n+n)` -/
def P8193300309275903259.Spec : Prop :=
  ∀ n, P8193300309275903259.a n = A313241 n

end A313241

/-! ## A313241.P2006554158326491906

`A311993(2*n)+n-5*n`
-/

namespace A313241.P2006554158326491906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A313241.P2006554158326491906

namespace A313241

/-- `A311993(2*n)+n-5*n` -/
def P2006554158326491906.Spec : Prop :=
  ∀ n, P2006554158326491906.a n = A313241 n

end A313241

/-! ## A313241.P4016009785421725528

`A004396(A312160(2*n)-A005843(n))`
-/

namespace A313241.P4016009785421725528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312160 (2 * n) - A005843 n).toNat

end

end A313241.P4016009785421725528

namespace A313241

/-- `A004396(A312160(2*n)-A005843(n))` -/
def P4016009785421725528.Spec : Prop :=
  ∀ n, P4016009785421725528.a n = A313241 n

end A313241

/-! ## A313241.P7228926423585443305

`A004396(A312160(2*n))-A004396(2*n)`
-/

namespace A313241.P7228926423585443305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312160 (2 * n)).toNat - A004396 (2 * n)

end

end A313241.P7228926423585443305

namespace A313241

/-- `A004396(A312160(2*n))-A004396(2*n)` -/
def P7228926423585443305.Spec : Prop :=
  ∀ n, P7228926423585443305.a n = A313241 n

end A313241

/-!
# A313242: Coordination sequence Gal.4.107.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313242, there is no canonical definition to state claims against.
-/

/-! ## A313242.P6979016353476111845

`A008706(n)-Δ[A001222(A101879(n))]`
-/

namespace A313242.P6979016353476111845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A101879 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A313242.P6979016353476111845

/-! ## A313242.P5355144443206979308

`A353354(A160525(2*(n+2)))+A310442(n)`
-/

namespace A313242.P5355144443206979308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A160525 (2 * (n + 2))).toNat + A310442 n

end

end A313242.P5355144443206979308

/-! ## A313242.P11462995807923774083

`A313243(n)-A235145(A005725(n))`
-/

namespace A313242.P11462995807923774083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313243 n - A235145 (A005725 n).toNat

end

end A313242.P11462995807923774083

/-! ## A313242.P6290668823969737143

`A313243(n)-A185284(A313206(n))`
-/

namespace A313242.P6290668823969737143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313243 n - A185284 (A313206 n).toNat

end

end A313242.P6290668823969737143

/-!
# A313243: Coordination sequence Gal.5.221.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313243, there is no canonical definition to state claims against.
-/

/-! ## A313243.P9650938253958650111

`A008683(A197550(n+1))+5*n`
-/

namespace A313243.P9650938253958650111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A197550 (n + 1)).toNat + (5 * n : ℤ)

end

end A313243.P9650938253958650111

/-! ## A313243.P813671705460129899

`A008587(n)+A008683(A026748(n))`
-/

namespace A313243.P813671705460129899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + A008683 (A026748 n).toNat

end

end A313243.P813671705460129899

/-! ## A313243.P16587876902307026537

`A312079(n)+A001222(A177381(n))`
-/

namespace A313243.P16587876902307026537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n + A001222 (A177381 n).toNat

end

end A313243.P16587876902307026537

/-! ## A313243.P10482720146998087412

`A312034(n)+A001221(A324132(n))`
-/

namespace A313243.P10482720146998087412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312034 n + A001221 (A324132 n).toNat

end

end A313243.P10482720146998087412

/-! ## A313243.P6011891650028400106

`A310498(n)-A021913(A006190(n))`
-/

namespace A313243.P6011891650028400106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310498 n - A021913 (A006190 n).toNat

end

end A313243.P6011891650028400106

/-!
# A313244: Coordination sequence Gal.6.361.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313244, there is no canonical definition to state claims against.
-/

/-! ## A313244.P1080719400871523281

`xor(A002262(A345761(n+1)), A313275(n))`
-/

namespace A313244.P1080719400871523281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A345761 (n + 1)).toNat) (A313275 n)

end

end A313244.P1080719400871523281

/-!
# A313245: Coordination sequence Gal.5.227.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313245, there is no canonical definition to state claims against.
-/

/-! ## A313245.P2315068710711593207

`round(1/acot(5*n))-A248640((n+1)²)`
-/

namespace A313245.P2315068710711593207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) - A248640 ((n + 1) ^ 2)

end

end A313245.P2315068710711593207

/-! ## A313245.P11881526465817581558

`A312556(n)+A007814(A045631(n))`
-/

namespace A313245.P11881526465817581558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 n + A007814 (A045631 n).toNat

end

end A313245.P11881526465817581558

/-! ## A313245.P16385551000114651225

`A312076(n)+A001221(A345194(n))`
-/

namespace A313245.P16385551000114651225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 n + A001221 (A345194 n).toNat

end

end A313245.P16385551000114651225

/-! ## A313245.P5483144414328169135

`A250120(n)+A089497(A134611(n+3))`
-/

namespace A313245.P5483144414328169135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A089497 (A134611 (n + 3)).toNat

end

end A313245.P5483144414328169135

/-! ## A313245.P12433460956538941963

`A250120(n)+A056594(A319003(n+4))`
-/

namespace A313245.P12433460956538941963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A056594 (A319003 (n + 4)).toNat

end

end A313245.P12433460956538941963

/-!
# A313246: Coordination sequence Gal.6.264.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313246, the canonical program `A313246.P15329026928054582960` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313246 has offset 0).

The definition of A313246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313246.P361551831136576229

`A313136(n)+Δ[A011865(n)]`
-/

namespace A313246.P361551831136576229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + (f1 (n + 1) - f1 n)

end

end A313246.P361551831136576229

namespace A313246

/-- `A313136(n)+Δ[A011865(n)]` -/
def P361551831136576229.Spec : Prop :=
  ∀ n, P361551831136576229.a n = A313246 n

end A313246

/-! ## A313246.P15329026928054582960

`A312620(n)+A004525(n-A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313246

/-- `A312620(n)+A004525(n-A004396(n))` -/
def P15329026928054582960.Spec : Prop :=
  ∀ n, P15329026928054582960.a n = A313246 n

theorem P15329026928054582960.correct : P15329026928054582960.Spec := by
  intro n
  simp only [A313246]

end A313246

/-! ## A313246.P5487328024595789417

`A310511(n)-A004396(n-A004525(n))`
-/

namespace A313246.P5487328024595789417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313246.P5487328024595789417

namespace A313246

/-- `A310511(n)-A004396(n-A004525(n))` -/
def P5487328024595789417.Spec : Prop :=
  ∀ n, P5487328024595789417.a n = A313246 n

end A313246

/-! ## A313246.P14699143101781136134

`A313693(n)-A128834(n)`
-/

namespace A313246.P14699143101781136134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - A128834 n

end

end A313246.P14699143101781136134

namespace A313246

/-- `A313693(n)-A128834(n)` -/
def P14699143101781136134.Spec : Prop :=
  ∀ n, P14699143101781136134.a n = A313246 n

end A313246

/-! ## A313246.P6477271529587811681

`A313693(n)+A010892(n+2)`
-/

namespace A313246.P6477271529587811681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A010892 (n + 2)

end

end A313246.P6477271529587811681

namespace A313246

/-- `A313693(n)+A010892(n+2)` -/
def P6477271529587811681.Spec : Prop :=
  ∀ n, P6477271529587811681.a n = A313246 n

end A313246

/-! ## A313246.P16222129362415411359

`A004396(A004525(n))+A313280(n)-A004525(n)`
-/

namespace A313246.P16222129362415411359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313280 n - A004525 n)

end

end A313246.P16222129362415411359

namespace A313246

/-- `A004396(A004525(n))+A313280(n)-A004525(n)` -/
def P16222129362415411359.Spec : Prop :=
  ∀ n, P16222129362415411359.a n = A313246 n

end A313246

/-! ## A313246.P1531512098693674289

`A313884(n)-A004396(A004525(n))`
-/

namespace A313246.P1531512098693674289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313884 n - A004396 (A004525 n).toNat

end

end A313246.P1531512098693674289

namespace A313246

/-- `A313884(n)-A004396(A004525(n))` -/
def P1531512098693674289.Spec : Prop :=
  ∀ n, P1531512098693674289.a n = A313246 n

end A313246

/-! ## A313246.P7297219189410810109

`abs(10*n-A315415(n))`
-/

namespace A313246.P7297219189410810109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315415 n|

end

end A313246.P7297219189410810109

namespace A313246

/-- `abs(10*n-A315415(n))` -/
def P7297219189410810109.Spec : Prop :=
  ∀ n, P7297219189410810109.a n = A313246 n

end A313246

/-! ## A313246.P3390775470842723882

`2*A008706(n)-A315415(n)`
-/

namespace A313246.P3390775470842723882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315415 n

end

end A313246.P3390775470842723882

namespace A313246

/-- `2*A008706(n)-A315415(n)` -/
def P3390775470842723882.Spec : Prop :=
  ∀ n, P3390775470842723882.a n = A313246 n

end A313246

/-! ## A313246.P9714286377215553182

`A008458(n)+A008574(n)-A315415(n)`
-/

namespace A313246.P9714286377215553182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315415 n)

end

end A313246.P9714286377215553182

namespace A313246

/-- `A008458(n)+A008574(n)-A315415(n)` -/
def P9714286377215553182.Spec : Prop :=
  ∀ n, P9714286377215553182.a n = A313246 n

end A313246

/-! ## A313246.P1238504183539911383

`A313872(n)-A004525(A004396(n))`
-/

namespace A313246.P1238504183539911383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - A004525 (A004396 n).toNat

end

end A313246.P1238504183539911383

namespace A313246

/-- `A313872(n)-A004525(A004396(n))` -/
def P1238504183539911383.Spec : Prop :=
  ∀ n, P1238504183539911383.a n = A313246 n

end A313246

/-! ## A313246.P5451622335946113792

`A313922(n)-A004525(n)`
-/

namespace A313246.P5451622335946113792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313922 n - A004525 n

end

end A313246.P5451622335946113792

namespace A313246

/-- `A313922(n)-A004525(n)` -/
def P5451622335946113792.Spec : Prop :=
  ∀ n, P5451622335946113792.a n = A313246 n

theorem P5451622335946113792.correct : P5451622335946113792.Spec := by
  intro n
  simp only [A313246, Nat.add_sub_cancel, A313246.P5451622335946113792.a, A313246.P15329026928054582960.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312620, A312620.P764241885793850481.a, A313922, A313922.P17676570645266848054.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313246

/-! ## A313246.P1708403841834924060

`A315540(n)-(A004525(A004396(n))+A004525(n))`
-/

namespace A313246.P1708403841834924060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - (A004525 (A004396 n).toNat + A004525 n)

end

end A313246.P1708403841834924060

namespace A313246

/-- `A315540(n)-(A004525(A004396(n))+A004525(n))` -/
def P1708403841834924060.Spec : Prop :=
  ∀ n, P1708403841834924060.a n = A313246 n

end A313246

/-! ## A313246.P4816112535832226091

`A004525(A312152(2*n))`
-/

namespace A313246.P4816112535832226091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312152 (2 * n)).toNat

end

end A313246.P4816112535832226091

namespace A313246

/-- `A004525(A312152(2*n))` -/
def P4816112535832226091.Spec : Prop :=
  ∀ n, P4816112535832226091.a n = A313246 n

end A313246

/-! ## A313246.P11825756907409400395

`A004525(A314974(2*n)-n)`
-/

namespace A313246.P11825756907409400395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314974 (2 * n) - (n : ℤ)).toNat

end

end A313246.P11825756907409400395

namespace A313246

/-- `A004525(A314974(2*n)-n)` -/
def P11825756907409400395.Spec : Prop :=
  ∀ n, P11825756907409400395.a n = A313246 n

end A313246

/-! ## A313246.P13737502980142792694

`A008611(A314159(n)+9*n-1)`
-/

namespace A313246.P13737502980142792694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A314159 n + ((9 * n : ℤ) - 1)).toNat

end

end A313246.P13737502980142792694

namespace A313246

/-- `A008611(A314159(n)+9*n-1)` -/
def P13737502980142792694.Spec : Prop :=
  ∀ n, P13737502980142792694.a n = A313246 n

end A313246

/-!
# A313247: Coordination sequence Gal.6.261.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313247, the canonical program `A313247.P14752324548149291645` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313247 has offset 0).

The definition of A313247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313247.P10828511043978556697

`abs(10*n-A315414(n))`
-/

namespace A313247.P10828511043978556697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315414 n|

end

end A313247.P10828511043978556697

namespace A313247

/-- `abs(10*n-A315414(n))` -/
def P10828511043978556697.Spec : Prop :=
  ∀ n, P10828511043978556697.a n = A313247 n

end A313247

/-! ## A313247.P265443826995992320

`2*A008706(n)-A315414(n)`
-/

namespace A313247.P265443826995992320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315414 n

end

end A313247.P265443826995992320

namespace A313247

/-- `2*A008706(n)-A315414(n)` -/
def P265443826995992320.Spec : Prop :=
  ∀ n, P265443826995992320.a n = A313247 n

end A313247

/-! ## A313247.P11721661252654130680

`A008458(n)+A008574(n)-A315414(n)`
-/

namespace A313247.P11721661252654130680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315414 n)

end

end A313247.P11721661252654130680

namespace A313247

/-- `A008458(n)+A008574(n)-A315414(n)` -/
def P11721661252654130680.Spec : Prop :=
  ∀ n, P11721661252654130680.a n = A313247 n

end A313247

/-! ## A313247.P16698292567416658840

`(A008592(n)-A315414(n))^(1-A000007(n))`
-/

namespace A313247.P16698292567416658840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315414 n : ℚ) ^ (1 - A000007 n : ℤ)

end

end A313247.P16698292567416658840

namespace A313247

/-- `(A008592(n)-A315414(n))^(1-A000007(n))` -/
def P16698292567416658840.Spec : Prop :=
  ∀ n, P16698292567416658840.a n = (A313247 n : ℚ)

end A313247

/-! ## A313247.P3038992809902765841

`gcd(A008592(n)-A315414(n), A005129((n+2)%(n+1)))`
-/

namespace A313247.P3038992809902765841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A315414 n) (A005129 ((n + 2) % (n + 1)))

end

end A313247.P3038992809902765841

namespace A313247

/-- `gcd(A008592(n)-A315414(n), A005129((n+2)%(n+1)))` -/
def P3038992809902765841.Spec : Prop :=
  ∀ n, (P3038992809902765841.a n : ℤ) = A313247 n

end A313247

/-! ## A313247.P14504558626866854441

`A315414(n)-A005843(A315414(n)-A008706(n))`
-/

namespace A313247.P14504558626866854441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315414 n - A005843 (A315414 n - A008706 n).toNat

end

end A313247.P14504558626866854441

namespace A313247

/-- `A315414(n)-A005843(A315414(n)-A008706(n))` -/
def P14504558626866854441.Spec : Prop :=
  ∀ n, P14504558626866854441.a n = A313247 n

end A313247

/-! ## A313247.P7503536471357775752

`A310513(n)-A004525(A310513(n)-A312606(n))`
-/

namespace A313247.P7503536471357775752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310513 n - A004525 (A310513 n - A312606 n).toNat

end

end A313247.P7503536471357775752

namespace A313247

/-- `A310513(n)-A004525(A310513(n)-A312606(n))` -/
def P7503536471357775752.Spec : Prop :=
  ∀ n, P7503536471357775752.a n = A313247 n

end A313247

/-! ## A313247.P14752324548149291645

`A313137(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A313247

/-- `A313137(n)+Δ[A011864(n)]` -/
def P14752324548149291645.Spec : Prop :=
  ∀ n, P14752324548149291645.a n = A313247 n

theorem P14752324548149291645.correct : P14752324548149291645.Spec := by
  intro n
  simp only [A313247]

end A313247

/-! ## A313247.P10555408648475535144

`A312507(n)+A004525(A310523(n)-A312507(n))`
-/

namespace A313247.P10555408648475535144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 n + A004525 (A310523 n - A312507 n).toNat

end

end A313247.P10555408648475535144

namespace A313247

/-- `A312507(n)+A004525(A310523(n)-A312507(n))` -/
def P10555408648475535144.Spec : Prop :=
  ∀ n, P10555408648475535144.a n = A313247 n

end A313247

/-! ## A313247.P497639670100500114

`A180004(A313113(n))`
-/

namespace A313247.P497639670100500114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313113 n).toNat

end

end A313247.P497639670100500114

namespace A313247

/-- `A180004(A313113(n))` -/
def P497639670100500114.Spec : Prop :=
  ∀ n, P497639670100500114.a n = A313247 n

end A313247

/-! ## A313247.P5035816650432862117

`A000007(a(n-1))+A008592(n)-A315414(n)` with `a(0)=1`
-/

namespace A313247.P5035816650432862117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1)).toNat + (A008592 n - A315414 n)

end

end A313247.P5035816650432862117

namespace A313247

/-- `A000007(a(n-1))+A008592(n)-A315414(n)` -/
def P5035816650432862117.Spec : Prop :=
  ∀ n, P5035816650432862117.a n = A313247 n

end A313247

/-! ## A313247.P6187682478304654462

`A005843(A008706(n))-A315414(n)`
-/

namespace A313247.P6187682478304654462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315414 n

end

end A313247.P6187682478304654462

namespace A313247

/-- `A005843(A008706(n))-A315414(n)` -/
def P6187682478304654462.Spec : Prop :=
  ∀ n, P6187682478304654462.a n = A313247 n

end A313247

/-! ## A313247.P17173599086655005378

`A065502(A008458(n))-A315414(n)`
-/

namespace A313247.P17173599086655005378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315414 n

end

end A313247.P17173599086655005378

namespace A313247

/-- `A065502(A008458(n))-A315414(n)` -/
def P17173599086655005378.Spec : Prop :=
  ∀ n, P17173599086655005378.a n = A313247 n

end A313247

/-! ## A313247.P7685531558203885985

`A313899(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313247.P7685531558203885985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313899 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313247.P7685531558203885985

namespace A313247

/-- `A313899(2*n)+A008458(n+1)-(12*n+6)` -/
def P7685531558203885985.Spec : Prop :=
  ∀ n, P7685531558203885985.a n = A313247 n

end A313247

/-! ## A313247.P6153843664597953835

`A004525(A312562(2*n))`
-/

namespace A313247.P6153843664597953835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312562 (2 * n)).toNat

end

end A313247.P6153843664597953835

namespace A313247

/-- `A004525(A312562(2*n))` -/
def P6153843664597953835.Spec : Prop :=
  ∀ n, P6153843664597953835.a n = A313247 n

end A313247

/-! ## A313247.P2990270307050420480

`A004526(A312562(2*n)+1)`
-/

namespace A313247.P2990270307050420480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312562 (2 * n) + 1).toNat

end

end A313247.P2990270307050420480

namespace A313247

/-- `A004526(A312562(2*n)+1)` -/
def P2990270307050420480.Spec : Prop :=
  ∀ n, P2990270307050420480.a n = A313247 n

end A313247

/-! ## A313247.P5407567008556153606

`A065033(A312562(2*n)-1)`
-/

namespace A313247.P5407567008556153606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312562 (2 * n) - 1).toNat

end

end A313247.P5407567008556153606

namespace A313247

/-- `A065033(A312562(2*n)-1)` -/
def P5407567008556153606.Spec : Prop :=
  ∀ n, P5407567008556153606.a n = A313247 n

end A313247

/-! ## A313247.P12951775412878897562

`A004525(A312507(n)+A310523(n))`
-/

namespace A313247.P12951775412878897562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312507 n + A310523 n).toNat

end

end A313247.P12951775412878897562

namespace A313247

/-- `A004525(A312507(n)+A310523(n))` -/
def P12951775412878897562.Spec : Prop :=
  ∀ n, P12951775412878897562.a n = A313247 n

end A313247

/-! ## A313247.P3407850736081535496

`A004525(A312606(n)+A310513(n))`
-/

namespace A313247.P3407850736081535496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312606 n + A310513 n).toNat

end

end A313247.P3407850736081535496

namespace A313247

/-- `A004525(A312606(n)+A310513(n))` -/
def P3407850736081535496.Spec : Prop :=
  ∀ n, P3407850736081535496.a n = A313247 n

end A313247

/-! ## A313247.P16580424931848396930

`A233583(A017281(n))-A315414(n)`
-/

namespace A313247.P16580424931848396930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315414 n

end

end A313247.P16580424931848396930

namespace A313247

/-- `A233583(A017281(n))-A315414(n)` -/
def P16580424931848396930.Spec : Prop :=
  ∀ n, P16580424931848396930.a n = A313247 n

end A313247

/-!
# A313248: Coordination sequence Gal.6.494.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313248, there is no canonical definition to state claims against.
-/

/-! ## A313248.P9208110893381838738

`∑[A245908(A245962(3*n+1)²)]`
-/

namespace A313248.P9208110893381838738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245908 (A245962 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313248.P9208110893381838738

/-! ## A313248.P17749819269085335851

`A219529(n)-A001222(A150116(n))`
-/

namespace A313248.P17749819269085335851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A001222 (A150116 n).toNat

end

end A313248.P17749819269085335851

/-! ## A313248.P6891554508451488573

`A314263(n)-A001222(A233291(n))`
-/

namespace A313248.P6891554508451488573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314263 n - A001222 (A233291 n).toNat

end

end A313248.P6891554508451488573

/-! ## A313248.P16764850505808636561

`A313259(n)-A204427(A038481(n))`
-/

namespace A313248.P16764850505808636561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313259 n - A204427 (A038481 n).toNat

end

end A313248.P16764850505808636561

/-! ## A313248.P3677418685138866633

`A312071(n)+A001221(A000142(n))`
-/

namespace A313248.P3677418685138866633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312071 n + A001221 (A000142 n).toNat

end

end A313248.P3677418685138866633

/-!
# A313249: Coordination sequence Gal.6.462.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313249, there is no canonical definition to state claims against.
-/

/-! ## A313249.P15504217233876089855

`A313110(n)+A160385(A113405(n))`
-/

namespace A313249.P15504217233876089855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A160385 (A113405 n).toNat

end

end A313249.P15504217233876089855

/-! ## A313249.P11652193823350894863

`A008706(n)-A021913(A022100(n))`
-/

namespace A313249.P11652193823350894863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A021913 (A022100 n).toNat

end

end A313249.P11652193823350894863

/-! ## A313249.P7202594181971360193

`A008706(n)-A000035(A055662(n))`
-/

namespace A313249.P7202594181971360193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A000035 (A055662 n).toNat

end

end A313249.P7202594181971360193

/-! ## A313249.P7981957677080809502

`A008706(n)-A000035(A120940(n))`
-/

namespace A313249.P7981957677080809502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A000035 (A120940 n).toNat

end

end A313249.P7981957677080809502

/-! ## A313249.P17662393288440374408

`A008706(n)-A000035(A190062(n))`
-/

namespace A313249.P17662393288440374408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A000035 (A190062 n).toNat

end

end A313249.P17662393288440374408

/-!
# A313250: Coordination sequence Gal.6.367.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313250, there is no canonical definition to state claims against.
-/

/-! ## A313250.P2961280894732699449

`A313251(n)-A055641(A056354(n))`
-/

namespace A313250.P2961280894732699449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n - A055641 (A056354 n).toNat

end

end A313250.P2961280894732699449

/-! ## A313250.P7505953334515057467

`A313251(n)-A025466(A101785(n))`
-/

namespace A313250.P7505953334515057467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n - A025466 (A101785 n).toNat

end

end A313250.P7505953334515057467

/-! ## A313250.P3404104552368045776

`A313872(n)-A327103(A000096(n))`
-/

namespace A313250.P3404104552368045776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - A327103 (A000096 n).toNat

end

end A313250.P3404104552368045776

/-! ## A313250.P639899363545241087

`A121373(A099485(n))+A008587(n)`
-/

namespace A313250.P639899363545241087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A099485 n).toNat + A008587 n

end

end A313250.P639899363545241087

/-! ## A313250.P2759024079492417635

`A126257(A338754(n)-A061984(n))`
-/

namespace A313250.P2759024079492417635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A338754 n - A061984 n).toNat

end

end A313250.P2759024079492417635

/-!
# A313251: Coordination sequence Gal.6.203.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313251, the canonical program `A313251.P8215173569806842908` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313251 has offset 0).

The definition of A313251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313251.P11537363832205853884

`A315053(n)-A134667(n)`
-/

namespace A313251.P11537363832205853884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n - A134667 n

end

end A313251.P11537363832205853884

namespace A313251

/-- `A315053(n)-A134667(n)` -/
def P11537363832205853884.Spec : Prop :=
  ∀ n, P11537363832205853884.a n = A313251 n

end A313251

/-! ## A313251.P8367538220068537966

`A312123(n)+Δ[A011848(n)]`
-/

namespace A313251.P8367538220068537966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + (f1 (n + 1) - f1 n)

end

end A313251.P8367538220068537966

namespace A313251

/-- `A312123(n)+Δ[A011848(n)]` -/
def P8367538220068537966.Spec : Prop :=
  ∀ n, P8367538220068537966.a n = A313251 n

end A313251

/-! ## A313251.P13169836775439726873

`A312123(n)+n-A004525(n)`
-/

namespace A313251.P13169836775439726873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + ((n : ℤ) - A004525 n)

end

end A313251.P13169836775439726873

namespace A313251

/-- `A312123(n)+n-A004525(n)` -/
def P13169836775439726873.Spec : Prop :=
  ∀ n, P13169836775439726873.a n = A313251 n

end A313251

/-! ## A313251.P10129546019478492994

`A311924(n)+n-A004396(A004525(n))`
-/

namespace A313251.P10129546019478492994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313251.P10129546019478492994

namespace A313251

/-- `A311924(n)+n-A004396(A004525(n))` -/
def P10129546019478492994.Spec : Prop :=
  ∀ n, P10129546019478492994.a n = A313251 n

end A313251

/-! ## A313251.P8215173569806842908

`A312620(n)+A004396(n-A004525(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313251

/-- `A312620(n)+A004396(n-A004525(n))` -/
def P8215173569806842908.Spec : Prop :=
  ∀ n, P8215173569806842908.a n = A313251 n

theorem P8215173569806842908.correct : P8215173569806842908.Spec := by
  intro n
  simp only [A313251]

end A313251

/-! ## A313251.P10821114055294754994

`A310511(n)-A004525(n-A004396(n))`
-/

namespace A313251.P10821114055294754994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313251.P10821114055294754994

namespace A313251

/-- `A310511(n)-A004525(n-A004396(n))` -/
def P10821114055294754994.Spec : Prop :=
  ∀ n, P10821114055294754994.a n = A313251 n

end A313251

/-! ## A313251.P8038623323872513816

`A004396(n)+A313057(n)-A004525(A004396(n))`
-/

namespace A313251.P8038623323872513816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313057 n - A004525 (A004396 n).toNat)

end

end A313251.P8038623323872513816

namespace A313251

/-- `A004396(n)+A313057(n)-A004525(A004396(n))` -/
def P8038623323872513816.Spec : Prop :=
  ∀ n, P8038623323872513816.a n = A313251 n

end A313251

/-! ## A313251.P11538004695320579946

`A004525(n)+A313213(n)-A004396(A004525(n))`
-/

namespace A313251.P11538004695320579946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313213 n - A004396 (A004525 n).toNat)

end

end A313251.P11538004695320579946

namespace A313251

/-- `A004525(n)+A313213(n)-A004396(A004525(n))` -/
def P11538004695320579946.Spec : Prop :=
  ∀ n, P11538004695320579946.a n = A313251 n

end A313251

/-! ## A313251.P10371531872638844714

`A313698(n)-A128834(n)`
-/

namespace A313251.P10371531872638844714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A128834 n

end

end A313251.P10371531872638844714

namespace A313251

/-- `A313698(n)-A128834(n)` -/
def P10371531872638844714.Spec : Prop :=
  ∀ n, P10371531872638844714.a n = A313251 n

theorem P10371531872638844714.correct : P10371531872638844714.Spec := by
  intro n
  simp only [A313251, Nat.add_sub_cancel, A313251.P10371531872638844714.a, A313251.P8215173569806842908.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A128834, A128834.P4430347604004376390.a, A312620, A312620.P764241885793850481.a, A313698, A313698.P13755199689401812010.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313251

/-! ## A313251.P2506247134878290021

`A313698(n)+A010892(n+2)`
-/

namespace A313251.P2506247134878290021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A010892 (n + 2)

end

end A313251.P2506247134878290021

namespace A313251

/-- `A313698(n)+A010892(n+2)` -/
def P2506247134878290021.Spec : Prop :=
  ∀ n, P2506247134878290021.a n = A313251 n

end A313251

/-! ## A313251.P13309260406988685690

`abs(10*n-A315413(n))`
-/

namespace A313251.P13309260406988685690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315413 n|

end

end A313251.P13309260406988685690

namespace A313251

/-- `abs(10*n-A315413(n))` -/
def P13309260406988685690.Spec : Prop :=
  ∀ n, P13309260406988685690.a n = A313251 n

end A313251

/-! ## A313251.P15983938333252873782

`A008458(n)+A008574(n)-A315413(n)`
-/

namespace A313251.P15983938333252873782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315413 n)

end

end A313251.P15983938333252873782

namespace A313251

/-- `A008458(n)+A008574(n)-A315413(n)` -/
def P15983938333252873782.Spec : Prop :=
  ∀ n, P15983938333252873782.a n = A313251 n

end A313251

/-! ## A313251.P6182360426510243398

`A313023(n)+∑[A021913(A313023(n))]`
-/

namespace A313251.P6182360426510243398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313023 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313251.P6182360426510243398

namespace A313251

/-- `A313023(n)+∑[A021913(A313023(n))]` -/
def P6182360426510243398.Spec : Prop :=
  ∀ n, P6182360426510243398.a n = A313251 n

end A313251

/-! ## A313251.P2301528831543395244

`A313891(n)-A004396(A004525(n))`
-/

namespace A313251.P2301528831543395244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - A004396 (A004525 n).toNat

end

end A313251.P2301528831543395244

namespace A313251

/-- `A313891(n)-A004396(A004525(n))` -/
def P2301528831543395244.Spec : Prop :=
  ∀ n, P2301528831543395244.a n = A313251 n

end A313251

/-! ## A313251.P18136602184836292788

`A313879(n)-A004525(A004396(n))`
-/

namespace A313251.P18136602184836292788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A004525 (A004396 n).toNat

end

end A313251.P18136602184836292788

namespace A313251

/-- `A313879(n)-A004525(A004396(n))` -/
def P18136602184836292788.Spec : Prop :=
  ∀ n, P18136602184836292788.a n = A313251 n

end A313251

/-! ## A313251.P16549893979773843284

`A313924(n)-A004525(n)`
-/

namespace A313251.P16549893979773843284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A004525 n

end

end A313251.P16549893979773843284

namespace A313251

/-- `A313924(n)-A004525(n)` -/
def P16549893979773843284.Spec : Prop :=
  ∀ n, P16549893979773843284.a n = A313251 n

theorem P16549893979773843284.correct : P16549893979773843284.Spec := by
  intro n
  simp only [A313251, Nat.add_sub_cancel, A313251.P16549893979773843284.a, A313251.P8215173569806842908.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312620, A312620.P764241885793850481.a, A313924, A313924.P10563583441028807303.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313251

/-! ## A313251.P16150674085121931001

`A074067(A315413(n))`
-/

namespace A313251.P16150674085121931001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315413 n).toNat

end

end A313251.P16150674085121931001

namespace A313251

/-- `A074067(A315413(n))` -/
def P16150674085121931001.Spec : Prop :=
  ∀ n, P16150674085121931001.a n = A313251 n

end A313251

/-!
# A313252: Coordination sequence Gal.5.210.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313252, there is no canonical definition to state claims against.
-/

/-! ## A313252.P290696885930076137

`A313251(n)+A278700(A265447(n+1))`
-/

namespace A313252.P290696885930076137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A278700 (A265447 (n + 1)).toNat

end

end A313252.P290696885930076137

/-! ## A313252.P14555483991232862834

`A313251(n)+A174615(C(n, ∑{digits}[n, #]))`
-/

namespace A313252.P14555483991232862834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A174615 (Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A313252.P14555483991232862834

/-! ## A313252.P1411471408504001294

`A313251(n)+A010894(A311882(n))`
-/

namespace A313252.P1411471408504001294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A010894 ((A311882 n).toNat + 21)

end

end A313252.P1411471408504001294

/-! ## A313252.P10903978105483175044

`A313251(n)+A285005(A306730(n))`
-/

namespace A313252.P10903978105483175044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A285005 (A306730 n).toNat

end

end A313252.P10903978105483175044

/-! ## A313252.P5272868222119850246

`A313251(n)+A235145(A209897(n+1))`
-/

namespace A313252.P5272868222119850246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A235145 (A209897 (n + 1)).toNat

end

end A313252.P5272868222119850246

/-!
# A313253: Coordination sequence Gal.5.212.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313253, there is no canonical definition to state claims against.
-/

/-! ## A313253.P363574848317919272

`or(A313252(n), A368844(A023393(n)))`
-/

namespace A313253.P363574848317919272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313252 n) (A368844 (A023393 n).toNat)

end

end A313253.P363574848317919272

/-! ## A313253.P4918642833432604296

`A313250(n)+A002262(A208059(n+2))`
-/

namespace A313253.P4918642833432604296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313250 n + A002262 (A208059 (n + 2)).toNat

end

end A313253.P4918642833432604296

/-! ## A313253.P9127630710603149109

`A313251(n)+A285005(A306730(n)+2)`
-/

namespace A313253.P9127630710603149109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A285005 (A306730 n + 2).toNat

end

end A313253.P9127630710603149109

/-! ## A313253.P7426774305220009193

`or(A001842(A271843(n+1)), A313251(n))`
-/

namespace A313253.P7426774305220009193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001842 (A271843 (n + 1)).toNat) (A313251 n)

end

end A313253.P7426774305220009193

/-! ## A313253.P17286704384433247203

`or(A018843(A235700(n+2)), A313251(n))`
-/

namespace A313253.P17286704384433247203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 (A235700 (n + 2)).toNat) (A313251 n)

end

end A313253.P17286704384433247203

/-!
# A313254: Coordination sequence Gal.6.495.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313254, there is no canonical definition to state claims against.
-/

/-! ## A313254.P853408204535743369

`A313100(A120126(n))+A057354(n)`
-/

namespace A313254.P853408204535743369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 (A120126 n).toNat + A057354 n

end

end A313254.P853408204535743369

/-! ## A313254.P10103231210300307186

`A313100(n)+A057354(A351870(n))`
-/

namespace A313254.P10103231210300307186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A057354 (A351870 n).toNat

end

end A313254.P10103231210300307186

/-! ## A313254.P5732754230909017297

`or(A001842(A208059(n+3)), A313250(n))`
-/

namespace A313254.P5732754230909017297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001842 (A208059 (n + 3)).toNat) (A313250 n)

end

end A313254.P5732754230909017297

/-! ## A313254.P9774120049823466043

`A352576(A000110(n))+A158919(2*n)`
-/

namespace A313254.P9774120049823466043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352576 (A000110 n).toNat + A158919 (2 * n)

end

end A313254.P9774120049823466043

/-!
# A313255: Coordination sequence Gal.5.87.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313255, the canonical program `A313255.P1594934984092539332` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313255 has offset 0).

The definition of A313255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313255.P946532373201204270

`ogf((1+2x+3x^2+3x^3+2x^4+3x^5+2x^6+3x^7+3x^8+2x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))`
-/

namespace A313255.P946532373201204270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 3, 2, 3, 2, 3, 3, 2, 1] [1, -2, 2, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A313255.P946532373201204270

namespace A313255

/-- `ogf((1+2x+3x^2+3x^3+2x^4+3x^5+2x^6+3x^7+3x^8+2x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))` -/
def P946532373201204270.Spec : Prop :=
  ∀ n, P946532373201204270.a n = A313255 n

end A313255

/-! ## A313255.P12599245376519714564

`A310238(n)+n`
-/

namespace A313255.P12599245376519714564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310238 n + (n : ℤ)

end

end A313255.P12599245376519714564

namespace A313255

/-- `A310238(n)+n` -/
def P12599245376519714564.Spec : Prop :=
  ∀ n, P12599245376519714564.a n = A313255 n

end A313255

/-! ## A313255.P5313312586018269821

`A313589(n)-A244895(n)`
-/

namespace A313255.P5313312586018269821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n - A244895 n

end

end A313255.P5313312586018269821

namespace A313255

/-- `A313589(n)-A244895(n)` -/
def P5313312586018269821.Spec : Prop :=
  ∀ n, P5313312586018269821.a n = A313255 n

end A313255

/-! ## A313255.P5965314489607830003

`A313855(n)-A330025(n)`
-/

namespace A313255.P5965314489607830003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313855 n - A330025 n

end

end A313255.P5965314489607830003

namespace A313255

/-- `A313855(n)-A330025(n)` -/
def P5965314489607830003.Spec : Prop :=
  ∀ n, P5965314489607830003.a n = A313255 n

end A313255

/-! ## A313255.P1594934984092539332

`A313116(n)+A002266(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313255

/-- `A313116(n)+A002266(n+2)` -/
def P1594934984092539332.Spec : Prop :=
  ∀ n, P1594934984092539332.a n = A313255 n

theorem P1594934984092539332.correct : P1594934984092539332.Spec := by
  intro n
  simp only [A313255]

end A313255

/-! ## A313255.P12444728566491720563

`A313589(n)-A330025(2*n)`
-/

namespace A313255.P12444728566491720563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 n - A330025 (2 * n)

end

end A313255.P12444728566491720563

namespace A313255

/-- `A313589(n)-A330025(2*n)` -/
def P12444728566491720563.Spec : Prop :=
  ∀ n, P12444728566491720563.a n = A313255 n

end A313255

/-! ## A313255.P6388595886324828603

`A005843(n)-(n-A310238(n))`
-/

namespace A313255.P6388595886324828603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A310238 n)

end

end A313255.P6388595886324828603

namespace A313255

/-- `A005843(n)-(n-A310238(n))` -/
def P6388595886324828603.Spec : Prop :=
  ∀ n, P6388595886324828603.a n = A313255 n

end A313255

/-! ## A313255.P8013085243240074501

`A008619(Δ[n²])-(1-A310238(n))`
-/

namespace A313255.P8013085243240074501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (1 - A310238 n)

end

end A313255.P8013085243240074501

namespace A313255

/-- `A008619(Δ[n²])-(1-A310238(n))` -/
def P8013085243240074501.Spec : Prop :=
  ∀ n, P8013085243240074501.a n = A313255 n

end A313255

/-! ## A313255.P12983013192966176714

`abs(A008592(n)-A315412(n))`
-/

namespace A313255.P12983013192966176714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315412 n|

end

end A313255.P12983013192966176714

namespace A313255

/-- `abs(A008592(n)-A315412(n))` -/
def P12983013192966176714.Spec : Prop :=
  ∀ n, P12983013192966176714.a n = A313255 n

end A313255

/-! ## A313255.P17320182366577271652

`floor(A010015(n)/A315412(n))`
-/

namespace A313255.P17320182366577271652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315412 n : ℚ)⌋

end

end A313255.P17320182366577271652

namespace A313255

/-- `floor(A010015(n)/A315412(n))` -/
def P17320182366577271652.Spec : Prop :=
  ∀ n, P17320182366577271652.a n = A313255 n

end A313255

/-! ## A313255.P7338397582613900733

`2*A008706(n)-A315412(n)`
-/

namespace A313255.P7338397582613900733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315412 n

end

end A313255.P7338397582613900733

namespace A313255

/-- `2*A008706(n)-A315412(n)` -/
def P7338397582613900733.Spec : Prop :=
  ∀ n, P7338397582613900733.a n = A313255 n

end A313255

/-! ## A313255.P17407499439154799993

`abs(A008591(n)+n-A315412(n))`
-/

namespace A313255.P17407499439154799993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A315412 n)|

end

end A313255.P17407499439154799993

namespace A313255

/-- `abs(A008591(n)+n-A315412(n))` -/
def P17407499439154799993.Spec : Prop :=
  ∀ n, P17407499439154799993.a n = A313255 n

end A313255

/-! ## A313255.P1975464344557055204

`A008458(n)+A008574(n)-A315412(n)`
-/

namespace A313255.P1975464344557055204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315412 n)

end

end A313255.P1975464344557055204

namespace A313255

/-- `A008458(n)+A008574(n)-A315412(n)` -/
def P1975464344557055204.Spec : Prop :=
  ∀ n, P1975464344557055204.a n = A313255 n

end A313255

/-! ## A313255.P7027185109712406007

`A313898(n)-A047363(n+1)+n`
-/

namespace A313255.P7027185109712406007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n - A047363 (n + 1) + (n : ℤ)

end

end A313255.P7027185109712406007

namespace A313255

/-- `A313898(n)-A047363(n+1)+n` -/
def P7027185109712406007.Spec : Prop :=
  ∀ n, P7027185109712406007.a n = A313255 n

end A313255

/-! ## A313255.P18180993097243728971

`A314252(n)-A057354(2*n+1)`
-/

namespace A313255.P18180993097243728971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A057354 (2 * n + 1)

end

end A313255.P18180993097243728971

namespace A313255

/-- `A314252(n)-A057354(2*n+1)` -/
def P18180993097243728971.Spec : Prop :=
  ∀ n, P18180993097243728971.a n = A313255 n

end A313255

/-! ## A313255.P13438088237594539234

`A074067(A315412(n))`
-/

namespace A313255.P13438088237594539234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315412 n).toNat

end

end A313255.P13438088237594539234

namespace A313255

/-- `A074067(A315412(n))` -/
def P13438088237594539234.Spec : Prop :=
  ∀ n, P13438088237594539234.a n = A313255 n

end A313255

/-!
# A313256: Coordination sequence Gal.6.319.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313256, there is no canonical definition to state claims against.
-/

/-! ## A313256.P18335148694609121020

`A329313(A218631(n))+A313253(n)`
-/

namespace A313256.P18335148694609121020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A218631 n).toNat + A313253 n

end

end A313256.P18335148694609121020

/-! ## A313256.P13478857198087950184

`∑[A000120(A062337(3*n+1)+A062298(n+1))]`
-/

namespace A313256.P13478857198087950184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A062337 (3 * n + 1) + A062298 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313256.P13478857198087950184

/-! ## A313256.P7335675387474332746

`A139338(∑[∑[A175362(n)]])`
-/

namespace A313256.P7335675387474332746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A313256.P7335675387474332746

/-! ## A313256.P9921322884827426147

`∑[A327399(A208154(n+4))]-2`
-/

namespace A313256.P9921322884827426147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327399 (A208154 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A313256.P9921322884827426147

/-!
# A313257: Coordination sequence Gal.6.493.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313257, the canonical program `A313257.P5487829084158906719` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313257 has offset 0).

The definition of A313257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313257.P5487829084158906719

`A313232(n)+A313255(n)-A313229(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A313257

/-- `A313232(n)+A313255(n)-A313229(n)` -/
def P5487829084158906719.Spec : Prop :=
  ∀ n, P5487829084158906719.a n = A313257 n

theorem P5487829084158906719.correct : P5487829084158906719.Spec := by
  intro n
  simp only [A313257]

end A313257

/-! ## A313257.P5196340326415318358

`A301718(n)-A001221(A322199(n))`
-/

namespace A313257.P5196340326415318358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A001221 (A322199 n).toNat

end

end A313257.P5196340326415318358

namespace A313257

/-- `A301718(n)-A001221(A322199(n))` -/
def P5196340326415318358.Spec : Prop :=
  ∀ n, P5196340326415318358.a n = A313257 n

end A313257

/-! ## A313257.P17574938949747579018

`xor(A090330(A001497(n)), A313262(n))`
-/

namespace A313257.P17574938949747579018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A090330 (A001497 n).toNat) (A313262 n)

end

end A313257.P17574938949747579018

namespace A313257

/-- `xor(A090330(A001497(n)), A313262(n))` -/
def P17574938949747579018.Spec : Prop :=
  ∀ n, P17574938949747579018.a n = A313257 n

end A313257

/-! ## A313257.P2779937951776140356

`A313877(n)-A060003(n+1)%A046921(n)`
-/

namespace A313257.P2779937951776140356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313877 n - Int.tmod (A060003 (n + 1)) (A046921 n)

end

end A313257.P2779937951776140356

namespace A313257

/-- `A313877(n)-A060003(n+1)%A046921(n)` -/
def P2779937951776140356.Spec : Prop :=
  ∀ n, P2779937951776140356.a n = A313257 n

end A313257

/-!
# A313258: Coordination sequence Gal.4.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313258, the canonical program `A313258.P7563474035421243589` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313258 has offset 0).

The definition of A313258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313258.P752967784560768405

`abs(10*n-A315411(n))`
-/

namespace A313258.P752967784560768405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315411 n|

end

end A313258.P752967784560768405

namespace A313258

/-- `abs(10*n-A315411(n))` -/
def P752967784560768405.Spec : Prop :=
  ∀ n, P752967784560768405.a n = A313258 n

end A313258

/-! ## A313258.P7563474035421243589

`A313115(n)+Δ[floor(C(n, 2)/4)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313258

/-- `A313115(n)+Δ[floor(C(n, 2)/4)]` -/
def P7563474035421243589.Spec : Prop :=
  ∀ n, P7563474035421243589.a n = A313258 n

theorem P7563474035421243589.correct : P7563474035421243589.Spec := by
  intro n
  simp only [A313258]

end A313258

/-! ## A313258.P13939891803731481780

`A313826(n)-A046978(n)`
-/

namespace A313258.P13939891803731481780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n - A046978 n

end

end A313258.P13939891803731481780

namespace A313258

/-- `A313826(n)-A046978(n)` -/
def P13939891803731481780.Spec : Prop :=
  ∀ n, P13939891803731481780.a n = A313258 n

end A313258

/-! ## A313258.P14529066411989707508

`A314969(n)-A101455(n)`
-/

namespace A313258.P14529066411989707508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n - A101455 n

end

end A313258.P14529066411989707508

namespace A313258

/-- `A314969(n)-A101455(n)` -/
def P14529066411989707508.Spec : Prop :=
  ∀ n, P14529066411989707508.a n = A313258 n

end A313258

/-! ## A313258.P14676325567225579090

`floor(A010015(n)/A315411(n))`
-/

namespace A313258.P14676325567225579090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315411 n : ℚ)⌋

end

end A313258.P14676325567225579090

namespace A313258

/-- `floor(A010015(n)/A315411(n))` -/
def P14676325567225579090.Spec : Prop :=
  ∀ n, P14676325567225579090.a n = A313258 n

end A313258

/-! ## A313258.P6301653750252128881

`A312140(n)+∑[A021913(n)]`
-/

namespace A313258.P6301653750252128881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313258.P6301653750252128881

namespace A313258

/-- `A312140(n)+∑[A021913(n)]` -/
def P6301653750252128881.Spec : Prop :=
  ∀ n, P6301653750252128881.a n = A313258 n

end A313258

/-! ## A313258.P2166849894498251371

`A312140(n)+Δ[A011848(n)]`
-/

namespace A313258.P2166849894498251371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + (f1 (n + 1) - f1 n)

end

end A313258.P2166849894498251371

namespace A313258

/-- `A312140(n)+Δ[A011848(n)]` -/
def P2166849894498251371.Spec : Prop :=
  ∀ n, P2166849894498251371.a n = A313258 n

end A313258

/-! ## A313258.P10361300530666704233

`A313115(n)+Δ[A011861(n)]`
-/

namespace A313258.P10361300530666704233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (f1 (n + 1) - f1 n)

end

end A313258.P10361300530666704233

namespace A313258

/-- `A313115(n)+Δ[A011861(n)]` -/
def P10361300530666704233.Spec : Prop :=
  ∀ n, P10361300530666704233.a n = A313258 n

end A313258

/-! ## A313258.P15461835658417359021

`A314969(n)-A046978(2*n)`
-/

namespace A313258.P15461835658417359021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n - A046978 (2 * n)

end

end A313258.P15461835658417359021

namespace A313258

/-- `A314969(n)-A046978(2*n)` -/
def P15461835658417359021.Spec : Prop :=
  ∀ n, P15461835658417359021.a n = A313258 n

end A313258

/-! ## A313258.P11487701531201843699

`A312140(n)+n-A004525(n)`
-/

namespace A313258.P11487701531201843699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ((n : ℤ) - A004525 n)

end

end A313258.P11487701531201843699

namespace A313258

/-- `A312140(n)+n-A004525(n)` -/
def P11487701531201843699.Spec : Prop :=
  ∀ n, P11487701531201843699.a n = A313258 n

end A313258

/-! ## A313258.P2846622907975946996

`A312140(n)+n-Δ[A054925(n)]`
-/

namespace A313258.P2846622907975946996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313258.P2846622907975946996

namespace A313258

/-- `A312140(n)+n-Δ[A054925(n)]` -/
def P2846622907975946996.Spec : Prop :=
  ∀ n, P2846622907975946996.a n = A313258 n

end A313258

/-! ## A313258.P9459541782628419576

`A008706(n)-A046978(A046978(n)+n)`
-/

namespace A313258.P9459541782628419576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A313258.P9459541782628419576

namespace A313258

/-- `A008706(n)-A046978(A046978(n)+n)` -/
def P9459541782628419576.Spec : Prop :=
  ∀ n, P9459541782628419576.a n = A313258 n

end A313258

/-! ## A313258.P10063323390067400060

`A311843(n)+n-A004525(A004525(n))`
-/

namespace A313258.P10063323390067400060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313258.P10063323390067400060

namespace A313258

/-- `A311843(n)+n-A004525(A004525(n))` -/
def P10063323390067400060.Spec : Prop :=
  ∀ n, P10063323390067400060.a n = A313258 n

end A313258

/-! ## A313258.P16040310188371384824

`A008458(n)+A008574(n)-A315411(n)`
-/

namespace A313258.P16040310188371384824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315411 n)

end

end A313258.P16040310188371384824

namespace A313258

/-- `A008458(n)+A008574(n)-A315411(n)` -/
def P16040310188371384824.Spec : Prop :=
  ∀ n, P16040310188371384824.a n = A313258 n

end A313258

/-! ## A313258.P15871234739540532016

`A312682(n)+A046978(n-A046978(n))`
-/

namespace A313258.P15871234739540532016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A313258.P15871234739540532016

namespace A313258

/-- `A312682(n)+A046978(n-A046978(n))` -/
def P15871234739540532016.Spec : Prop :=
  ∀ n, P15871234739540532016.a n = A313258 n

end A313258

/-! ## A313258.P1972267996444423265

`A313875(n)-A004525(A004525(n))`
-/

namespace A313258.P1972267996444423265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n - A004525 (A004525 n).toNat

end

end A313258.P1972267996444423265

namespace A313258

/-- `A313875(n)-A004525(A004525(n))` -/
def P1972267996444423265.Spec : Prop :=
  ∀ n, P1972267996444423265.a n = A313258 n

end A313258

/-! ## A313258.P16034501194513996363

`A313926(n)-A004525(n)`
-/

namespace A313258.P16034501194513996363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313926 n - A004525 n

end

end A313258.P16034501194513996363

namespace A313258

/-- `A313926(n)-A004525(n)` -/
def P16034501194513996363.Spec : Prop :=
  ∀ n, P16034501194513996363.a n = A313258 n

end A313258

/-! ## A313258.P17298777723819950648

`∑[A021913(n)]+A313926(n)-n`
-/

namespace A313258.P17298777723819950648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313926 n - (n : ℤ))

end

end A313258.P17298777723819950648

namespace A313258

/-- `∑[A021913(n)]+A313926(n)-n` -/
def P17298777723819950648.Spec : Prop :=
  ∀ n, P17298777723819950648.a n = A313258 n

end A313258

/-! ## A313258.P7693155502416855852

`Δ[A011848(n)]+A313926(n)-n`
-/

namespace A313258.P7693155502416855852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313926 n - (n : ℤ))

end

end A313258.P7693155502416855852

namespace A313258

/-- `Δ[A011848(n)]+A313926(n)-n` -/
def P7693155502416855852.Spec : Prop :=
  ∀ n, P7693155502416855852.a n = A313258 n

end A313258

/-! ## A313258.P8823017348519831870

`A315520(n)-2*A004525(A004525(n))`
-/

namespace A313258.P8823017348519831870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - 2 * A004525 (A004525 n).toNat

end

end A313258.P8823017348519831870

namespace A313258

/-- `A315520(n)-2*A004525(A004525(n))` -/
def P8823017348519831870.Spec : Prop :=
  ∀ n, P8823017348519831870.a n = A313258 n

end A313258

/-!
# A313259: Coordination sequence Gal.6.204.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313259, the canonical program `A313259.P1861422749685330600` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313259 has offset 0).

The definition of A313259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313259.P14423484441134350707

`ogf((1+3x+5x^2+6x^3+5x^4+5x^5+6x^6+5x^7+5x^8+6x^9+5x^10+3x^11+x^12)/(1-x-x^11+x^12))`
-/

namespace A313259.P14423484441134350707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 6, 5, 5, 6, 5, 5, 6, 5, 3, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A313259.P14423484441134350707

namespace A313259

/-- `ogf((1+3x+5x^2+6x^3+5x^4+5x^5+6x^6+5x^7+5x^8+6x^9+5x^10+3x^11+x^12)/(1-x-x^11+x^12))` -/
def P14423484441134350707.Spec : Prop :=
  ∀ n, P14423484441134350707.a n = A313259 n

end A313259

/-! ## A313259.P18234198266087087624

`abs(10*n-A315410(n))`
-/

namespace A313259.P18234198266087087624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315410 n|

end

end A313259.P18234198266087087624

namespace A313259

/-- `abs(10*n-A315410(n))` -/
def P18234198266087087624.Spec : Prop :=
  ∀ n, P18234198266087087624.a n = A313259 n

end A313259

/-! ## A313259.P11972472278054172138

`2*A008706(n)-A315410(n)`
-/

namespace A313259.P11972472278054172138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315410 n

end

end A313259.P11972472278054172138

namespace A313259

/-- `2*A008706(n)-A315410(n)` -/
def P11972472278054172138.Spec : Prop :=
  ∀ n, P11972472278054172138.a n = A313259 n

end A313259

/-! ## A313259.P14549100775419481031

`A135042(2*n+1)-A315410(n)`
-/

namespace A313259.P14549100775419481031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315410 n

end

end A313259.P14549100775419481031

namespace A313259

/-- `A135042(2*n+1)-A315410(n)` -/
def P14549100775419481031.Spec : Prop :=
  ∀ n, P14549100775419481031.a n = A313259 n

end A313259

/-! ## A313259.P16999959551707302862

`A008458(n)+A008574(n)-A315410(n)`
-/

namespace A313259.P16999959551707302862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315410 n)

end

end A313259.P16999959551707302862

namespace A313259

/-- `A008458(n)+A008574(n)-A315410(n)` -/
def P16999959551707302862.Spec : Prop :=
  ∀ n, P16999959551707302862.a n = A313259 n

end A313259

/-! ## A313259.P5264439080383379469

`A005843(A008706(n))-A315410(n)`
-/

namespace A313259.P5264439080383379469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315410 n

end

end A313259.P5264439080383379469

namespace A313259

/-- `A005843(A008706(n))-A315410(n)` -/
def P5264439080383379469.Spec : Prop :=
  ∀ n, P5264439080383379469.a n = A313259 n

end A313259

/-! ## A313259.P1861422749685330600

`A004396(A310533(n)+2*n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313259

/-- `A004396(A310533(n)+2*n)` -/
def P1861422749685330600.Spec : Prop :=
  ∀ n, P1861422749685330600.a n = A313259 n

theorem P1861422749685330600.correct : P1861422749685330600.Spec := by
  intro n
  simp only [A313259]

end A313259

/-! ## A313259.P5757875663038739299

`A274616(A310533(n)+2*n)`
-/

namespace A313259.P5757875663038739299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A310533 n + (2 * n : ℤ)).toNat

end

end A313259.P5757875663038739299

namespace A313259

/-- `A274616(A310533(n)+2*n)` -/
def P5757875663038739299.Spec : Prop :=
  ∀ n, P5757875663038739299.a n = A313259 n

end A313259

/-! ## A313259.P12038579872276336544

`A004396(A310533(n)+n+n)`
-/

namespace A313259.P12038579872276336544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310533 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313259.P12038579872276336544

namespace A313259

/-- `A004396(A310533(n)+n+n)` -/
def P12038579872276336544.Spec : Prop :=
  ∀ n, P12038579872276336544.a n = A313259 n

theorem P12038579872276336544.correct : P12038579872276336544.Spec := by
  intro n
  simp only [A313259, Nat.add_sub_cancel, A313259.P12038579872276336544.a, A313259.P1861422749685330600.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A313259

/-! ## A313259.P11478240044411955889

`A274616(A310533(n)+n+n)`
-/

namespace A313259.P11478240044411955889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A310533 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313259.P11478240044411955889

namespace A313259

/-- `A274616(A310533(n)+n+n)` -/
def P11478240044411955889.Spec : Prop :=
  ∀ n, P11478240044411955889.a n = A313259 n

end A313259

/-!
# A313260: Coordination sequence Gal.6.496.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313260, there is no canonical definition to state claims against.
-/

/-! ## A313260.P6371267323909644793

`A314250(n)-A001221(A001700(n))`
-/

namespace A313260.P6371267323909644793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n - A001221 (A001700 n).toNat

end

end A313260.P6371267323909644793

/-! ## A313260.P14978683701740693494

`or(A001222(A280628(n)), A313258(n))`
-/

namespace A313260.P14978683701740693494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A280628 n).toNat) (A313258 n)

end

end A313260.P14978683701740693494

/-! ## A313260.P16124757485945572483

`xor(A287360(A018242(n)), A313259(n))`
-/

namespace A313260.P16124757485945572483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A287360 (A018242 n).toNat) (A313259 n)

end

end A313260.P16124757485945572483

/-! ## A313260.P1998391698476048273

`A121373(A000045(2*n+1))+A083034(3*n+1)`
-/

namespace A313260.P1998391698476048273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A000045 (2 * n + 1)).toNat + A083034 (3 * n + 1)

end

end A313260.P1998391698476048273

/-! ## A313260.P9943620011022325492

`A323014(A135881(n))+A301684(n)`
-/

namespace A313260.P9943620011022325492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A135881 n).toNat + A301684 n

end

end A313260.P9943620011022325492

/-!
# A313261: Coordination sequence Gal.6.482.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313261, there is no canonical definition to state claims against.
-/

/-! ## A313261.P10399380739185374062

`A313909(n)-A001221(A149988(n))`
-/

namespace A313261.P10399380739185374062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313909 n - A001221 (A149988 n).toNat

end

end A313261.P10399380739185374062

/-! ## A313261.P1315211260006879179

`A080057(2*n+1)+A062756(A080040(n))`
-/

namespace A313261.P1315211260006879179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080057 (2 * n + 1) + A062756 (A080040 n).toNat

end

end A313261.P1315211260006879179

/-! ## A313261.P16539255325808381790

`A071030(A001333(n+2))-(A071035(n)-A313833(n))`
-/

namespace A313261.P16539255325808381790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (A001333 (n + 2)).toNat - (A071035 n - A313833 n)

end

end A313261.P16539255325808381790

/-! ## A313261.P12452646440761437582

`A055229(A000108(n))*A311928(n)+n-A001221(n+1)`
-/

namespace A313261.P12452646440761437582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A000108 n).toNat * A311928 n + (n : ℤ) - A001221 (n + 1)

end

end A313261.P12452646440761437582

/-! ## A313261.P5421002099887215425

`A301710(n)-A001221(A003947(n))`
-/

namespace A313261.P5421002099887215425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A001221 (A003947 n).toNat

end

end A313261.P5421002099887215425

/-!
# A313262: Coordination sequence Gal.6.205.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313262, the canonical program `A313262.P4986091702170886326` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313262 has offset 0).

The definition of A313262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313262.P4986091702170886326

`A312144(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313262

/-- `A312144(n)+∑[A021913(n)]` -/
def P4986091702170886326.Spec : Prop :=
  ∀ n, P4986091702170886326.a n = A313262 n

theorem P4986091702170886326.correct : P4986091702170886326.Spec := by
  intro n
  simp only [A313262]

end A313262

/-! ## A313262.P13094610293285004636

`A312144(n)+Δ[A011848(n)]`
-/

namespace A313262.P13094610293285004636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + (f1 (n + 1) - f1 n)

end

end A313262.P13094610293285004636

namespace A313262

/-- `A312144(n)+Δ[A011848(n)]` -/
def P13094610293285004636.Spec : Prop :=
  ∀ n, P13094610293285004636.a n = A313262 n

end A313262

/-! ## A313262.P16609189731557168117

`A312144(n)+A004524(n+1)`
-/

namespace A313262.P16609189731557168117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A004524 (n + 1)

end

end A313262.P16609189731557168117

namespace A313262

/-- `A312144(n)+A004524(n+1)` -/
def P16609189731557168117.Spec : Prop :=
  ∀ n, P16609189731557168117.a n = A313262 n

end A313262

/-! ## A313262.P5788417849414170556

`A312144(n)+n-A004525(n)`
-/

namespace A313262.P5788417849414170556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ((n : ℤ) - A004525 n)

end

end A313262.P5788417849414170556

namespace A313262

/-- `A312144(n)+n-A004525(n)` -/
def P5788417849414170556.Spec : Prop :=
  ∀ n, P5788417849414170556.a n = A313262 n

end A313262

/-! ## A313262.P4935047419995548655

`A312144(n)+n-Δ[A054925(n)]`
-/

namespace A313262.P4935047419995548655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313262.P4935047419995548655

namespace A313262

/-- `A312144(n)+n-Δ[A054925(n)]` -/
def P4935047419995548655.Spec : Prop :=
  ∀ n, P4935047419995548655.a n = A313262 n

end A313262

/-! ## A313262.P10157450171713610717

`A314970(n)-A101455(n)`
-/

namespace A313262.P10157450171713610717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314970 n - A101455 n

end

end A313262.P10157450171713610717

namespace A313262

/-- `A314970(n)-A101455(n)` -/
def P10157450171713610717.Spec : Prop :=
  ∀ n, P10157450171713610717.a n = A313262 n

end A313262

/-! ## A313262.P14589330877065429157

`A313930(n)-A004525(n)`
-/

namespace A313262.P14589330877065429157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - A004525 n

end

end A313262.P14589330877065429157

namespace A313262

/-- `A313930(n)-A004525(n)` -/
def P14589330877065429157.Spec : Prop :=
  ∀ n, P14589330877065429157.a n = A313262 n

end A313262

/-! ## A313262.P14516538049510007811

`A313930(n)-Δ[A054925(n)]`
-/

namespace A313262.P14516538049510007811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - (f1 (n + 1) - f1 n)

end

end A313262.P14516538049510007811

namespace A313262

/-- `A313930(n)-Δ[A054925(n)]` -/
def P14516538049510007811.Spec : Prop :=
  ∀ n, P14516538049510007811.a n = A313262 n

end A313262

/-! ## A313262.P7048848484303595763

`∑[A021913(n)]+A313930(n)-n`
-/

namespace A313262.P7048848484303595763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313930 n - (n : ℤ))

end

end A313262.P7048848484303595763

namespace A313262

/-- `∑[A021913(n)]+A313930(n)-n` -/
def P7048848484303595763.Spec : Prop :=
  ∀ n, P7048848484303595763.a n = A313262 n

end A313262

/-! ## A313262.P5726262724806070323

`Δ[A011848(n)]+A313930(n)-n`
-/

namespace A313262.P5726262724806070323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313930 n - (n : ℤ))

end

end A313262.P5726262724806070323

namespace A313262

/-- `Δ[A011848(n)]+A313930(n)-n` -/
def P5726262724806070323.Spec : Prop :=
  ∀ n, P5726262724806070323.a n = A313262 n

end A313262

/-! ## A313262.P5194382565935447181

`abs(10*n-A315409(n))`
-/

namespace A313262.P5194382565935447181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315409 n|

end

end A313262.P5194382565935447181

namespace A313262

/-- `abs(10*n-A315409(n))` -/
def P5194382565935447181.Spec : Prop :=
  ∀ n, P5194382565935447181.a n = A313262 n

end A313262

/-! ## A313262.P16577110921635102911

`2*A008706(n)-A315409(n)`
-/

namespace A313262.P16577110921635102911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315409 n

end

end A313262.P16577110921635102911

namespace A313262

/-- `2*A008706(n)-A315409(n)` -/
def P16577110921635102911.Spec : Prop :=
  ∀ n, P16577110921635102911.a n = A313262 n

end A313262

/-! ## A313262.P7591564065298030747

`A008458(n)+A008574(n)-A315409(n)`
-/

namespace A313262.P7591564065298030747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315409 n)

end

end A313262.P7591564065298030747

namespace A313262

/-- `A008458(n)+A008574(n)-A315409(n)` -/
def P7591564065298030747.Spec : Prop :=
  ∀ n, P7591564065298030747.a n = A313262 n

end A313262

/-!
# A313263: Coordination sequence Gal.6.488.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313263, there is no canonical definition to state claims against.
-/

/-! ## A313263.P18213516330753741186

`A313264(n)-A340507(A006189(n))`
-/

namespace A313263.P18213516330753741186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313264 n - A340507 (A006189 n).toNat

end

end A313263.P18213516330753741186

/-! ## A313263.P17794425600047205035

`∑[dr(A349414(A279784(2*n+1)))]`
-/

namespace A313263.P17794425600047205035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A349414 (A279784 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313263.P17794425600047205035

/-! ## A313263.P5520310538058074204

`A301680(n)-A011745(A048855(n))`
-/

namespace A313263.P5520310538058074204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - A011745 (A048855 n).toNat

end

end A313263.P5520310538058074204

/-! ## A313263.P89952908546582976

`A301680(n)-A046080(A053556(n))`
-/

namespace A313263.P89952908546582976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - A046080 (A053556 n).toNat

end

end A313263.P89952908546582976

/-! ## A313263.P11880103242523071204

`A313286(n)-A123262(A000213(n))`
-/

namespace A313263.P11880103242523071204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313286 n - A123262 (A000213 n).toNat

end

end A313263.P11880103242523071204

/-!
# A313264: Coordination sequence Gal.5.216.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313264, there is no canonical definition to state claims against.
-/

/-! ## A313264.P17425435301625617825

`A301680(n)-A016389(A224146(n+5))`
-/

namespace A313264.P17425435301625617825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - A016389 (A224146 (n + 5)).toNat

end

end A313264.P17425435301625617825

/-! ## A313264.P9887064890341994285

`A313876(n)-A328372(A283075(n+1))`
-/

namespace A313264.P9887064890341994285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313876 n - A328372 (A283075 (n + 1)).toNat

end

end A313264.P9887064890341994285

/-! ## A313264.P9123291866512635127

`A313266(n)-A014306(A165655(n))`
-/

namespace A313264.P9123291866512635127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313266 n - A014306 (A165655 n).toNat

end

end A313264.P9123291866512635127

/-! ## A313264.P16127862636896246417

`A313258(n)+A112765(A228515(n+1))`
-/

namespace A313264.P16127862636896246417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313258 n + A112765 (A228515 (n + 1)).toNat

end

end A313264.P16127862636896246417

/-! ## A313264.P16763466113988592498

`A346130(A312131(n))`
-/

namespace A313264.P16763466113988592498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A312131 n).toNat

end

end A313264.P16763466113988592498

/-!
# A313265: Coordination sequence Gal.6.475.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313265, the canonical program `A313265.P13254990176052456694` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313265 has offset 0).

The definition of A313265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313265.P13254990176052456694

`ogf((1+3x+6x^2+9x^3+11x^4+13x^5+15x^6+13x^7+11x^8+10x^9+7x^10+2x^11+2x^12-x^14)/(1-x+x^2-x^3+x^4-2x^5+2x^6-2x^7+x^8-x^9+x^10-x^11+x^12))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A313265

/-- `ogf((1+3x+6x^2+9x^3+11x^4+13x^5+15x^6+13x^7+11x^8+10x^9+7x^10+2x^11+2x^12-x^14)/(1-x+x^2-x^3+x^4-2x^5+2x^6-2x^7+x^8-x^9+x^10-x^11+x^12))` -/
def P13254990176052456694.Spec : Prop :=
  ∀ n, P13254990176052456694.a n = A313265 n

theorem P13254990176052456694.correct : P13254990176052456694.Spec := by
  intro n
  simp only [A313265]

end A313265

/-! ## A313265.P4356877374003888999

`A346130(A312136(n))`
-/

namespace A313265.P4356877374003888999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A312136 n).toNat

end

end A313265.P4356877374003888999

namespace A313265

/-- `A346130(A312136(n))` -/
def P4356877374003888999.Spec : Prop :=
  ∀ n, P4356877374003888999.a n = A313265 n

end A313265

/-! ## A313265.P15896224108767037436

`A346130(A312137(n))`
-/

namespace A313265.P15896224108767037436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A312137 n).toNat

end

end A313265.P15896224108767037436

namespace A313265

/-- `A346130(A312137(n))` -/
def P15896224108767037436.Spec : Prop :=
  ∀ n, P15896224108767037436.a n = A313265 n

end A313265

/-! ## A313265.P17063659092750205333

`A346130(A312131(n)+char[7])`
-/

namespace A313265.P17063659092750205333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A312131 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A313265.P17063659092750205333

namespace A313265

/-- `A346130(A312131(n)+char[7])` -/
def P17063659092750205333.Spec : Prop :=
  ∀ n, P17063659092750205333.a n = A313265 n

end A313265

/-! ## A313265.P865274858758870801

`A313264(n)+A073267(A283301(n))`
-/

namespace A313265.P865274858758870801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313264 n + A073267 (A283301 n).toNat

end

end A313265.P865274858758870801

namespace A313265

/-- `A313264(n)+A073267(A283301(n))` -/
def P865274858758870801.Spec : Prop :=
  ∀ n, P865274858758870801.a n = A313265 n

end A313265

/-!
# A313266: Coordination sequence Gal.5.222.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313266, there is no canonical definition to state claims against.
-/

/-! ## A313266.P170640791114853224

`A301726(n)-A124010(A197459(n+2))`
-/

namespace A313266.P170640791114853224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A124010 (A197459 (n + 2)).toNat

end

end A313266.P170640791114853224

/-! ## A313266.P17525602035981923633

`A003056(A009927(n)^(1-(∑{digits}[n, #]-n)))`
-/

namespace A313266.P17525602035981923633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A009927 n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A313266.P17525602035981923633

/-! ## A313266.P4704232964847843525

`A310464(n)-A000035(A221677(n+1))`
-/

namespace A313266.P4704232964847843525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310464 n - A000035 (A221677 (n + 1)).toNat

end

end A313266.P4704232964847843525

/-! ## A313266.P13792807143389637367

`A313237(n)+A140361(A147394(n+2))`
-/

namespace A313266.P13792807143389637367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A140361 (A147394 (n + 2)).toNat

end

end A313266.P13792807143389637367

/-! ## A313266.P13585364314656235560

`A003056(A009927(n)^A115576(n+1))`
-/

namespace A313266.P13585364314656235560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A009927 n : ℚ) ^ (A115576 (n + 1) : ℤ))).toNat

end

end A313266.P13585364314656235560

/-!
# A313267: Coordination sequence Gal.6.496.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313267, there is no canonical definition to state claims against.
-/

/-! ## A313267.P15283989121089515704

`A313245(n)+A293520(A352421(n))`
-/

namespace A313267.P15283989121089515704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313245 n + A293520 (A352421 n).toNat

end

end A313267.P15283989121089515704

/-! ## A313267.P7230636601603089257

`A005187(A226595(n+1))+A000005(A279567(n))`
-/

namespace A313267.P7230636601603089257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A226595 (n + 1)).toNat + A000005 (A279567 n).toNat

end

end A313267.P7230636601603089257

/-! ## A313267.P7481668146443003272

`A008574(n)+A003434(A328432(n))`
-/

namespace A313267.P7481668146443003272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A003434 (A328432 n).toNat

end

end A313267.P7481668146443003272

/-! ## A313267.P2328194386279417695

`or(A010054(A024026(n)), A312681(n))`
-/

namespace A313267.P2328194386279417695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A024026 n).toNat) (A312681 n)

end

end A313267.P2328194386279417695

/-! ## A313267.P16689293258475610639

`A055086(A003022(3*n+2))-(A124760(n)+A019426(2*n))`
-/

namespace A313267.P16689293258475610639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A003022 (3 * n + 2)).toNat - (A124760 n + A019426 (2 * n))

end

end A313267.P16689293258475610639

/-!
# A313269: Coordination sequence Gal.5.200.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313269, there is no canonical definition to state claims against.
-/

/-! ## A313269.P4697399838281882845

`A313272(n)-A033909(A009227(n))`
-/

namespace A313269.P4697399838281882845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313272 n - A033909 (A009227 n).toNat

end

end A313269.P4697399838281882845

/-! ## A313269.P6246453965710785722

`A219529(n)-A324117(A002387(n))`
-/

namespace A313269.P6246453965710785722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A324117 (A002387 n).toNat

end

end A313269.P6246453965710785722

/-! ## A313269.P7124179483792860759

`A312065(n)+A048881(A000244(n))`
-/

namespace A313269.P7124179483792860759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A048881 (A000244 n).toNat

end

end A313269.P7124179483792860759

/-! ## A313269.P8118699887025880091

`A312140(n)+A001221(A177553(n))`
-/

namespace A313269.P8118699887025880091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A001221 (A177553 n).toNat

end

end A313269.P8118699887025880091

/-!
# A313270: Coordination sequence Gal.6.440.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313270, there is no canonical definition to state claims against.
-/

/-! ## A313270.P18005400565227957498

`A313271(n)-A185037(A196347(n))`
-/

namespace A313270.P18005400565227957498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313271 n - A185037 (A196347 n).toNat

end

end A313270.P18005400565227957498

/-! ## A313270.P12394493410895681311

`A313271(n)-A078926(A078918(n+1))`
-/

namespace A313270.P12394493410895681311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313271 n - A078926 (A078918 (n + 1)).toNat

end

end A313270.P12394493410895681311

/-! ## A313270.P13636896085901957774

`A313271(n)-A185284(A065091(n+1))`
-/

namespace A313270.P13636896085901957774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313271 n - A185284 (A065091 (n + 1)).toNat

end

end A313270.P13636896085901957774

/-! ## A313270.P17912917249475778230

`A313271(A087051(n))`
-/

namespace A313270.P17912917249475778230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313271 (A087051 n).toNat

end

end A313270.P17912917249475778230

/-! ## A313270.P6481196255738267992

`A313271(A227549(n+1))`
-/

namespace A313270.P6481196255738267992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313271 (A227549 (n + 1)).toNat

end

end A313270.P6481196255738267992

/-!
# A313271: Coordination sequence Gal.6.439.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313271, there is no canonical definition to state claims against.
-/

/-! ## A313271.P11038679483608302814

`A313270(n)+A185037(A196347(n))`
-/

namespace A313271.P11038679483608302814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313270 n + A185037 (A196347 n).toNat

end

end A313271.P11038679483608302814

/-! ## A313271.P16310942907369645065

`A301680(n)-A001877(A185335(n))`
-/

namespace A313271.P16310942907369645065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - A001877 (A185335 n).toNat

end

end A313271.P16310942907369645065

/-! ## A313271.P11451383119887809257

`A313270(n)+A078926(A078918(n+1))`
-/

namespace A313271.P11451383119887809257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313270 n + A078926 (A078918 (n + 1)).toNat

end

end A313271.P11451383119887809257

/-! ## A313271.P2741557035245599260

`A313270(n)+A185284(A065091(n+1))`
-/

namespace A313271.P2741557035245599260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313270 n + A185284 (A065091 (n + 1)).toNat

end

end A313271.P2741557035245599260

/-!
# A313272: Coordination sequence Gal.6.503.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313272, there is no canonical definition to state claims against.
-/

/-! ## A313272.P1150400648315433589

`A313269(n)+A033909(A009227(n))`
-/

namespace A313272.P1150400648315433589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313269 n + A033909 (A009227 n).toNat

end

end A313272.P1150400648315433589

/-! ## A313272.P13242780885653165460

`∑[dr(A328882(A105723(n)))]`
-/

namespace A313272.P13242780885653165460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A328882 (A105723 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313272.P13242780885653165460

/-! ## A313272.P13723238512513317979

`A313269(n)+A193095(A014417(n))`
-/

namespace A313272.P13723238512513317979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313269 n + A193095 (A014417 n).toNat

end

end A313272.P13723238512513317979

/-! ## A313272.P13052367354004137652

`A313269(n)+A070108(A032559(n+1))`
-/

namespace A313272.P13052367354004137652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313269 n + A070108 (A032559 (n + 1)).toNat

end

end A313272.P13052367354004137652

/-!
# A313274: Coordination sequence Gal.5.269.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313274, there is no canonical definition to state claims against.
-/

/-! ## A313274.P224077099410960622

`A314148(n)-A244231(A001353(n))`
-/

namespace A313274.P224077099410960622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 n - A244231 (A001353 n).toNat

end

end A313274.P224077099410960622

/-! ## A313274.P14703326557775112505

`record[A155212(n)-A192269(n+1)]`
-/

namespace A313274.P14703326557775112505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n - A192269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313274.P14703326557775112505

/-! ## A313274.P9533130668556999042

`A312027(n)+A008481(A008485(n))`
-/

namespace A313274.P9533130668556999042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312027 n + A008481 (A008485 n).toNat

end

end A313274.P9533130668556999042

/-! ## A313274.P8867342828702394409

`A312643(n)+A054861(A032555(n+1))`
-/

namespace A313274.P8867342828702394409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312643 n + A054861 (A032555 (n + 1)).toNat

end

end A313274.P8867342828702394409

/-!
# A313275: Coordination sequence Gal.6.559.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313275, there is no canonical definition to state claims against.
-/

/-! ## A313275.P2124962930771900981

`xor(A002262(A345761(n+1)), A313244(n))`
-/

namespace A313275.P2124962930771900981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A345761 (n + 1)).toNat) (A313244 n)

end

end A313275.P2124962930771900981

/-!
# A313276: Coordination sequence Gal.6.265.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313276, the canonical program `A313276.P18153507226389362215` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313276 has offset 0).

The definition of A313276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313276.P12386645280662959426

`abs(10*n-A315406(n))`
-/

namespace A313276.P12386645280662959426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315406 n|

end

end A313276.P12386645280662959426

namespace A313276

/-- `abs(10*n-A315406(n))` -/
def P12386645280662959426.Spec : Prop :=
  ∀ n, P12386645280662959426.a n = A313276 n

end A313276

/-! ## A313276.P10694107826833311116

`2*A008706(n)-A315406(n)`
-/

namespace A313276.P10694107826833311116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315406 n

end

end A313276.P10694107826833311116

namespace A313276

/-- `2*A008706(n)-A315406(n)` -/
def P10694107826833311116.Spec : Prop :=
  ∀ n, P10694107826833311116.a n = A313276 n

end A313276

/-! ## A313276.P4740063460985603352

`A135042(2*n+1)-A315406(n)`
-/

namespace A313276.P4740063460985603352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315406 n

end

end A313276.P4740063460985603352

namespace A313276

/-- `A135042(2*n+1)-A315406(n)` -/
def P4740063460985603352.Spec : Prop :=
  ∀ n, P4740063460985603352.a n = A313276 n

end A313276

/-! ## A313276.P7651409245006228826

`A184418(A008574(n))-A315406(n)`
-/

namespace A313276.P7651409245006228826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315406 n

end

end A313276.P7651409245006228826

namespace A313276

/-- `A184418(A008574(n))-A315406(n)` -/
def P7651409245006228826.Spec : Prop :=
  ∀ n, P7651409245006228826.a n = A313276 n

end A313276

/-! ## A313276.P1931852227109026333

`A008458(n)+A008574(n)-A315406(n)`
-/

namespace A313276.P1931852227109026333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315406 n)

end

end A313276.P1931852227109026333

namespace A313276

/-- `A008458(n)+A008574(n)-A315406(n)` -/
def P1931852227109026333.Spec : Prop :=
  ∀ n, P1931852227109026333.a n = A313276 n

end A313276

/-! ## A313276.P18153507226389362215

`A180004(A313137(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A313276

/-- `A180004(A313137(n))` -/
def P18153507226389362215.Spec : Prop :=
  ∀ n, P18153507226389362215.a n = A313276 n

theorem P18153507226389362215.correct : P18153507226389362215.Spec := by
  intro n
  simp only [A313276]

end A313276

/-! ## A313276.P143565386858708934

`A005843(A008706(n))-A315406(n)`
-/

namespace A313276.P143565386858708934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315406 n

end

end A313276.P143565386858708934

namespace A313276

/-- `A005843(A008706(n))-A315406(n)` -/
def P143565386858708934.Spec : Prop :=
  ∀ n, P143565386858708934.a n = A313276 n

end A313276

/-! ## A313276.P8860053208554908408

`(A312656(n)+A310517(n))/2`
-/

namespace A313276.P8860053208554908408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312656 n + A310517 n : ℚ) / 2

end

end A313276.P8860053208554908408

namespace A313276

/-- `(A312656(n)+A310517(n))/2` -/
def P8860053208554908408.Spec : Prop :=
  ∀ n, P8860053208554908408.a n = (A313276 n : ℚ)

end A313276

/-! ## A313276.P4785780362472546972

`A312656(n)+A001281(A310517(n)-A312656(n))`
-/

namespace A313276.P4785780362472546972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312656 n + A001281 (A310517 n - A312656 n).toNat

end

end A313276.P4785780362472546972

namespace A313276

/-- `A312656(n)+A001281(A310517(n)-A312656(n))` -/
def P4785780362472546972.Spec : Prop :=
  ∀ n, P4785780362472546972.a n = A313276 n

end A313276

/-! ## A313276.P2857450422850556982

`A065502(A008458(n))-A315406(n)`
-/

namespace A313276.P2857450422850556982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315406 n

end

end A313276.P2857450422850556982

namespace A313276

/-- `A065502(A008458(n))-A315406(n)` -/
def P2857450422850556982.Spec : Prop :=
  ∀ n, P2857450422850556982.a n = A313276 n

end A313276

/-! ## A313276.P13641741257255467966

`A313802(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313276.P13641741257255467966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313802 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313276.P13641741257255467966

namespace A313276

/-- `A313802(2*n)+A008458(n+1)-(12*n+6)` -/
def P13641741257255467966.Spec : Prop :=
  ∀ n, P13641741257255467966.a n = A313276 n

end A313276

/-! ## A313276.P14806426792476557558

`A313802(2*n)+A271114(n+1)-(12*n+7)`
-/

namespace A313276.P14806426792476557558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313802 (2 * n) + (A271114 (n + 1) - (12 * n + 7 : ℤ))

end

end A313276.P14806426792476557558

namespace A313276

/-- `A313802(2*n)+A271114(n+1)-(12*n+7)` -/
def P14806426792476557558.Spec : Prop :=
  ∀ n, P14806426792476557558.a n = A313276 n

end A313276

/-! ## A313276.P15862954724185095943

`A004525(A311635(2*n))`
-/

namespace A313276.P15862954724185095943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311635 (2 * n)).toNat

end

end A313276.P15862954724185095943

namespace A313276

/-- `A004525(A311635(2*n))` -/
def P15862954724185095943.Spec : Prop :=
  ∀ n, P15862954724185095943.a n = A313276 n

end A313276

/-! ## A313276.P16185981651777841378

`A004525(A312163(2*n))`
-/

namespace A313276.P16185981651777841378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312163 (2 * n)).toNat

end

end A313276.P16185981651777841378

namespace A313276

/-- `A004525(A312163(2*n))` -/
def P16185981651777841378.Spec : Prop :=
  ∀ n, P16185981651777841378.a n = A313276 n

end A313276

/-! ## A313276.P11632343196393062197

`A004526(A311635(2*n)+1)`
-/

namespace A313276.P11632343196393062197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311635 (2 * n) + 1).toNat

end

end A313276.P11632343196393062197

namespace A313276

/-- `A004526(A311635(2*n)+1)` -/
def P11632343196393062197.Spec : Prop :=
  ∀ n, P11632343196393062197.a n = A313276 n

end A313276

/-! ## A313276.P16764344297020439597

`A001281(A312656(n)+A310517(n))`
-/

namespace A313276.P16764344297020439597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312656 n + A310517 n).toNat

end

end A313276.P16764344297020439597

namespace A313276

/-- `A001281(A312656(n)+A310517(n))` -/
def P16764344297020439597.Spec : Prop :=
  ∀ n, P16764344297020439597.a n = A313276 n

end A313276

/-! ## A313276.P18116637832614939599

`lcm(A008592(n)-A315406(n), A000213(n)%2)`
-/

namespace A313276.P18116637832614939599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A315406 n) (Int.tmod (A000213 n) 2)

end

end A313276.P18116637832614939599

namespace A313276

/-- `lcm(A008592(n)-A315406(n), A000213(n)%2)` -/
def P18116637832614939599.Spec : Prop :=
  ∀ n, (P18116637832614939599.a n : ℤ) = A313276 n

end A313276

/-! ## A313276.P16532364345678002402

`A233583(A017281(n))-A315406(n)`
-/

namespace A313276.P16532364345678002402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315406 n

end

end A313276.P16532364345678002402

namespace A313276

/-- `A233583(A017281(n))-A315406(n)` -/
def P16532364345678002402.Spec : Prop :=
  ∀ n, P16532364345678002402.a n = A313276 n

end A313276

/-!
# A313277: Coordination sequence Gal.5.218.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313277, there is no canonical definition to state claims against.
-/

/-! ## A313277.P13765719069813016506

`or(A312662(n), A323077(A173185(n)))`
-/

namespace A313277.P13765719069813016506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312662 n) (A323077 (A173185 n).toNat)

end

end A313277.P13765719069813016506

/-! ## A313277.P2619654692079434325

`A313905(n)+A057428(n²²)`
-/

namespace A313277.P2619654692079434325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n + A057428 ((n ^ 2) ^ 2)

end

end A313277.P2619654692079434325

/-! ## A313277.P10426745596005811140

`A313905(n)-A069283(A067906(n+1))`
-/

namespace A313277.P10426745596005811140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n - A069283 (A067906 (n + 1)).toNat

end

end A313277.P10426745596005811140

/-! ## A313277.P15852554235999202360

`A016873(n)-A191770(A047461(2*n+3))`
-/

namespace A313277.P15852554235999202360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A191770 (A047461 (2 * n + 3)).toNat

end

end A313277.P15852554235999202360

/-! ## A313277.P10288169116070914395

`xor(A067278(n)+1+n, A280710(A355387(n+2)))`
-/

namespace A313277.P10288169116070914395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067278 n + 1 + (n : ℤ)) (A280710 (A355387 (n + 2)).toNat)

end

end A313277.P10288169116070914395

/-!
# A313278: Coordination sequence Gal.6.319.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313278, there is no canonical definition to state claims against.
-/

/-! ## A313278.P14225642717966111608

`A347705(A185030(n))+A312656(n)`
-/

namespace A313278.P14225642717966111608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347705 (A185030 n).toNat + A312656 n

end

end A313278.P14225642717966111608

/-! ## A313278.P16577225204961421147

`A311808(n)+A284051(A189177(n))`
-/

namespace A313278.P16577225204961421147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311808 n + A284051 (A189177 n).toNat

end

end A313278.P16577225204961421147

/-! ## A313278.P5245757271670846759

`A313975(n)-A001221(A296771(n))`
-/

namespace A313278.P5245757271670846759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A001221 (A296771 n).toNat

end

end A313278.P5245757271670846759

/-! ## A313278.P7055179103112248585

`A311822(n)+A091954(A317875(n+1))`
-/

namespace A313278.P7055179103112248585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n + A091954 (A317875 (n + 1)).toNat

end

end A313278.P7055179103112248585

/-!
# A313279: Coordination sequence Gal.5.229.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313279, there is no canonical definition to state claims against.
-/

/-! ## A313279.P2010311950878014929

`A310509(n)-A295895(A295910(n+2))`
-/

namespace A313279.P2010311950878014929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - A295895 (A295910 (n + 2)).toNat

end

end A313279.P2010311950878014929

/-! ## A313279.P10682203686207689971

`A313975(n)-A001221(A001075(n))`
-/

namespace A313279.P10682203686207689971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A001221 (A001075 n).toNat

end

end A313279.P10682203686207689971

/-! ## A313279.P14706170659381106923

`or(A082023(n), A313251(A087051(n)))`
-/

namespace A313279.P14706170659381106923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082023 n) (A313251 (A087051 n).toNat)

end

end A313279.P14706170659381106923

/-! ## A313279.P10271533211727380016

`or(A046080(A130129(n)), A313251(n))`
-/

namespace A313279.P10271533211727380016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046080 (A130129 n).toNat) (A313251 n)

end

end A313279.P10271533211727380016

/-! ## A313279.P11680848741989822702

`A313254(n)+A008683(A254260(n+1))`
-/

namespace A313279.P11680848741989822702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313254 n + A008683 (A254260 (n + 1)).toNat

end

end A313279.P11680848741989822702

/-!
# A313280: Coordination sequence Gal.3.15.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313280, the canonical program `A313280.P4241272236735790494` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313280 has offset 0).

The definition of A313280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313280.P4241272236735790494

`∑[∑[a(n-1)-a(n-2)]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A313280

/-- `∑[∑[a(n-1)-a(n-2)]]` -/
def P4241272236735790494.Spec : Prop :=
  ∀ n, P4241272236735790494.a n = A313280 n

theorem P4241272236735790494.correct : P4241272236735790494.Spec := by
  intro n
  simp only [A313280]

end A313280

/-! ## A313280.P16164725373003612680

`3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=15, a(4)=21`
-/

namespace A313280.P16164725373003612680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 15, 21] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A313280.P16164725373003612680

namespace A313280

/-- `3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` -/
def P16164725373003612680.Spec : Prop :=
  ∀ n, P16164725373003612680.a n = A313280 n

end A313280

/-! ## A313280.P6846825620629395987

`A163810(n)+5*n`
-/

namespace A313280.P6846825620629395987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n + (5 * n : ℤ)

end

end A313280.P6846825620629395987

namespace A313280

/-- `A163810(n)+5*n` -/
def P6846825620629395987.Spec : Prop :=
  ∀ n, P6846825620629395987.a n = A313280 n

end A313280

/-! ## A313280.P6382653651586772449

`abs(5*n-A163806(n))`
-/

namespace A313280.P6382653651586772449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n : ℤ) - A163806 n|

end

end A313280.P6382653651586772449

namespace A313280

/-- `abs(5*n-A163806(n))` -/
def P6382653651586772449.Spec : Prop :=
  ∀ n, P6382653651586772449.a n = A313280 n

end A313280

/-! ## A313280.P6176505877686274254

`A008706(n)-round(sin(n%6))`
-/

namespace A313280.P6176505877686274254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A313280.P6176505877686274254

namespace A313280

/-- `A008706(n)-round(sin(n%6))` -/
def P6176505877686274254.Spec : Prop :=
  ∀ n, P6176505877686274254.a n = A313280 n

end A313280

/-! ## A313280.P13513416999453409521

`a(n-1)+5-A010892(n)` with `a(0)=1, a(1)=4`
-/

namespace A313280.P13513416999453409521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (5 - A010892 n)

end

end A313280.P13513416999453409521

namespace A313280

/-- `a(n-1)+5-A010892(n)` -/
def P13513416999453409521.Spec : Prop :=
  ∀ n, P13513416999453409521.a n = A313280 n

end A313280

/-! ## A313280.P11976318577992447527

`A008706(n)-A128834(n)`
-/

namespace A313280.P11976318577992447527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A128834 n

end

end A313280.P11976318577992447527

namespace A313280

/-- `A008706(n)-A128834(n)` -/
def P11976318577992447527.Spec : Prop :=
  ∀ n, P11976318577992447527.a n = A313280 n

end A313280

/-! ## A313280.P7321920528523760260

`A010892(n+2)+A008706(n)`
-/

namespace A313280.P7321920528523760260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 2) + A008706 n

end

end A313280.P7321920528523760260

namespace A313280

/-- `A010892(n+2)+A008706(n)` -/
def P7321920528523760260.Spec : Prop :=
  ∀ n, P7321920528523760260.a n = A313280 n

end A313280

/-! ## A313280.P13139116620125793896

`A008574(n)+A030118(n)-1`
-/

namespace A313280.P13139116620125793896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A030118 n - 1)

end

end A313280.P13139116620125793896

namespace A313280

/-- `A008574(n)+A030118(n)-1` -/
def P13139116620125793896.Spec : Prop :=
  ∀ n, P13139116620125793896.a n = A313280 n

end A313280

/-! ## A313280.P12251713495389844827

`A030118(n)+A004273(2*n)`
-/

namespace A313280.P12251713495389844827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n + A004273 (2 * n)

end

end A313280.P12251713495389844827

namespace A313280

/-- `A030118(n)+A004273(2*n)` -/
def P12251713495389844827.Spec : Prop :=
  ∀ n, P12251713495389844827.a n = A313280 n

end A313280

/-! ## A313280.P8519156695693328617

`A008458(n)-(A128834(n)+n)`
-/

namespace A313280.P8519156695693328617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A128834 n + (n : ℤ))

end

end A313280.P8519156695693328617

namespace A313280

/-- `A008458(n)-(A128834(n)+n)` -/
def P8519156695693328617.Spec : Prop :=
  ∀ n, P8519156695693328617.a n = A313280 n

end A313280

/-! ## A313280.P6695961900007331907

`A008574(n)+n-A128834(n)`
-/

namespace A313280.P6695961900007331907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A128834 n)

end

end A313280.P6695961900007331907

namespace A313280

/-- `A008574(n)+n-A128834(n)` -/
def P6695961900007331907.Spec : Prop :=
  ∀ n, P6695961900007331907.a n = A313280 n

end A313280

/-! ## A313280.P8298962227350072134

`2*A008574(2*n)-A315697(2*n)`
-/

namespace A313280.P8298962227350072134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315697 (2 * n)

end

end A313280.P8298962227350072134

namespace A313280

/-- `2*A008574(2*n)-A315697(2*n)` -/
def P8298962227350072134.Spec : Prop :=
  ∀ n, P8298962227350072134.a n = A313280 n

end A313280

/-! ## A313280.P3349911569869583084

`A005843(A005843(n))+A163810(n)+n`
-/

namespace A313280.P3349911569869583084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 n).toNat + (A163810 n + (n : ℤ))

end

end A313280.P3349911569869583084

namespace A313280

/-- `A005843(A005843(n))+A163810(n)+n` -/
def P3349911569869583084.Spec : Prop :=
  ∀ n, P3349911569869583084.a n = A313280 n

end A313280

/-! ## A313280.P8488490658956333395

`A008576(n)+A310525(n)-A008486(n)`
-/

namespace A313280.P8488490658956333395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310525 n - A008486 n)

end

end A313280.P8488490658956333395

namespace A313280

/-- `A008576(n)+A310525(n)-A008486(n)` -/
def P8488490658956333395.Spec : Prop :=
  ∀ n, P8488490658956333395.a n = A313280 n

end A313280

/-! ## A313280.P13841342179341239538

`A008486(n)+A312655(n)-A008576(n)`
-/

namespace A313280.P13841342179341239538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312655 n - A008576 n)

end

end A313280.P13841342179341239538

namespace A313280

/-- `A008486(n)+A312655(n)-A008576(n)` -/
def P13841342179341239538.Spec : Prop :=
  ∀ n, P13841342179341239538.a n = A313280 n

end A313280

/-! ## A313280.P1032869148050745904

`A315075(n)-A134667(n)`
-/

namespace A313280.P1032869148050745904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n - A134667 n

end

end A313280.P1032869148050745904

namespace A313280

/-- `A315075(n)-A134667(n)` -/
def P1032869148050745904.Spec : Prop :=
  ∀ n, P1032869148050745904.a n = A313280 n

end A313280

/-! ## A313280.P8363855686064275386

`A310461(n)-A128834(n-A128834(n))`
-/

namespace A313280.P8363855686064275386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310461 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A313280.P8363855686064275386

namespace A313280

/-- `A310461(n)-A128834(n-A128834(n))` -/
def P8363855686064275386.Spec : Prop :=
  ∀ n, P8363855686064275386.a n = A313280 n

end A313280

/-! ## A313280.P18280524803763394877

`A314015(n)-A186809(n)`
-/

namespace A313280.P18280524803763394877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n - A186809 n

end

end A313280.P18280524803763394877

namespace A313280

/-- `A314015(n)-A186809(n)` -/
def P18280524803763394877.Spec : Prop :=
  ∀ n, P18280524803763394877.a n = A313280 n

end A313280

/-! ## A313280.P47565970741547071

`A008458(n)+A008574(n)-A315405(n)`
-/

namespace A313280.P47565970741547071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315405 n)

end

end A313280.P47565970741547071

namespace A313280

/-- `A008458(n)+A008574(n)-A315405(n)` -/
def P47565970741547071.Spec : Prop :=
  ∀ n, P47565970741547071.a n = A313280 n

end A313280

/-!
# A313281: Coordination sequence Gal.6.206.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313281, the canonical program `A313281.P12140066614401043895` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313281 has offset 0).

The definition of A313281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313281.P10428741258978803992

`abs(10*n-A315404(n))`
-/

namespace A313281.P10428741258978803992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315404 n|

end

end A313281.P10428741258978803992

namespace A313281

/-- `abs(10*n-A315404(n))` -/
def P10428741258978803992.Spec : Prop :=
  ∀ n, P10428741258978803992.a n = A313281 n

end A313281

/-! ## A313281.P17970691418711213699

`2*A008706(n)-A315404(n)`
-/

namespace A313281.P17970691418711213699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315404 n

end

end A313281.P17970691418711213699

namespace A313281

/-- `2*A008706(n)-A315404(n)` -/
def P17970691418711213699.Spec : Prop :=
  ∀ n, P17970691418711213699.a n = A313281 n

end A313281

/-! ## A313281.P3250693161709626589

`A135042(2*n+1)-A315404(n)`
-/

namespace A313281.P3250693161709626589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315404 n

end

end A313281.P3250693161709626589

namespace A313281

/-- `A135042(2*n+1)-A315404(n)` -/
def P3250693161709626589.Spec : Prop :=
  ∀ n, P3250693161709626589.a n = A313281 n

end A313281

/-! ## A313281.P1474157155248983338

`A184418(A008574(n))-A315404(n)`
-/

namespace A313281.P1474157155248983338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315404 n

end

end A313281.P1474157155248983338

namespace A313281

/-- `A184418(A008574(n))-A315404(n)` -/
def P1474157155248983338.Spec : Prop :=
  ∀ n, P1474157155248983338.a n = A313281 n

end A313281

/-! ## A313281.P10636103878417143323

`A000038(n)+A008592(n)-A315404(n)`
-/

namespace A313281.P10636103878417143323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A315404 n)

end

end A313281.P10636103878417143323

namespace A313281

/-- `A000038(n)+A008592(n)-A315404(n)` -/
def P10636103878417143323.Spec : Prop :=
  ∀ n, P10636103878417143323.a n = A313281 n

end A313281

/-! ## A313281.P12584161237885334811

`A008458(n)+A008574(n)-A315404(n)`
-/

namespace A313281.P12584161237885334811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315404 n)

end

end A313281.P12584161237885334811

namespace A313281

/-- `A008458(n)+A008574(n)-A315404(n)` -/
def P12584161237885334811.Spec : Prop :=
  ∀ n, P12584161237885334811.a n = A313281 n

end A313281

/-! ## A313281.P14364304298543368518

`gcd(A008592(n)-A315404(n), A000038(2*n))`
-/

namespace A313281.P14364304298543368518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A315404 n) (A000038 (2 * n))

end

end A313281.P14364304298543368518

namespace A313281

/-- `gcd(A008592(n)-A315404(n), A000038(2*n))` -/
def P14364304298543368518.Spec : Prop :=
  ∀ n, (P14364304298543368518.a n : ℤ) = A313281 n

end A313281

/-! ## A313281.P17910233158997099907

`A005843(A008706(n))-A315404(n)`
-/

namespace A313281.P17910233158997099907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315404 n

end

end A313281.P17910233158997099907

namespace A313281

/-- `A005843(A008706(n))-A315404(n)` -/
def P17910233158997099907.Spec : Prop :=
  ∀ n, P17910233158997099907.a n = A313281 n

end A313281

/-! ## A313281.P16376580017758150082

`A065502(A008458(n))-A315404(n)`
-/

namespace A313281.P16376580017758150082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315404 n

end

end A313281.P16376580017758150082

namespace A313281

/-- `A065502(A008458(n))-A315404(n)` -/
def P16376580017758150082.Spec : Prop :=
  ∀ n, P16376580017758150082.a n = A313281 n

end A313281

/-! ## A313281.P12140066614401043895

`A311994(2*n)-4*n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A313281

/-- `A311994(2*n)-4*n` -/
def P12140066614401043895.Spec : Prop :=
  ∀ n, P12140066614401043895.a n = A313281 n

theorem P12140066614401043895.correct : P12140066614401043895.Spec := by
  intro n
  simp only [A313281]

end A313281

/-! ## A313281.P2094059528389107099

`2*A008574(2*n)-A315695(2*n)`
-/

namespace A313281.P2094059528389107099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315695 (2 * n)

end

end A313281.P2094059528389107099

namespace A313281

/-- `2*A008574(2*n)-A315695(2*n)` -/
def P2094059528389107099.Spec : Prop :=
  ∀ n, P2094059528389107099.a n = A313281 n

end A313281

/-! ## A313281.P4097575603972543604

`A004525(A312209(2*n))`
-/

namespace A313281.P4097575603972543604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312209 (2 * n)).toNat

end

end A313281.P4097575603972543604

namespace A313281

/-- `A004525(A312209(2*n))` -/
def P4097575603972543604.Spec : Prop :=
  ∀ n, P4097575603972543604.a n = A313281 n

end A313281

/-! ## A313281.P7529826087793075487

`A233583(A017281(n))-A315404(n)`
-/

namespace A313281.P7529826087793075487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315404 n

end

end A313281.P7529826087793075487

namespace A313281

/-- `A233583(A017281(n))-A315404(n)` -/
def P7529826087793075487.Spec : Prop :=
  ∀ n, P7529826087793075487.a n = A313281 n

end A313281

/-!
# A313282: Coordination sequence Gal.6.491.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313282, there is no canonical definition to state claims against.
-/

/-! ## A313282.P7436086714620178533

`A313281(n)+A185284(A310074(n))`
-/

namespace A313282.P7436086714620178533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313281 n + A185284 (A310074 n).toNat

end

end A313282.P7436086714620178533

/-! ## A313282.P3102860397636106942

`A310520(n)-A109925(A007051(n))`
-/

namespace A313282.P3102860397636106942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310520 n - A109925 (A007051 n).toNat

end

end A313282.P3102860397636106942

/-! ## A313282.P9411594866947161381

`A314248(n)-A122922(A005563(n))`
-/

namespace A313282.P9411594866947161381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314248 n - A122922 (A005563 n).toNat

end

end A313282.P9411594866947161381

/-! ## A313282.P14442821580346372337

`A313281(n)+A022003(A005065(n+1))`
-/

namespace A313282.P14442821580346372337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313281 n + A022003 (A005065 (n + 1)).toNat

end

end A313282.P14442821580346372337

/-!
# A313283: Coordination sequence Gal.6.207.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313283, the canonical program `A313283.P1676533140886781686` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313283 has offset 0).

The definition of A313283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313283.P1676533140886781686

`abs(10*n-A315403(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313283

/-- `abs(10*n-A315403(n))` -/
def P1676533140886781686.Spec : Prop :=
  ∀ n, P1676533140886781686.a n = A313283 n

theorem P1676533140886781686.correct : P1676533140886781686.Spec := by
  intro n
  simp only [A313283]

end A313283

/-! ## A313283.P5731203462913258666

`A312184(n)+∑[A021913(n)]`
-/

namespace A313283.P5731203462913258666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313283.P5731203462913258666

namespace A313283

/-- `A312184(n)+∑[A021913(n)]` -/
def P5731203462913258666.Spec : Prop :=
  ∀ n, P5731203462913258666.a n = A313283 n

end A313283

/-! ## A313283.P1983046502942472924

`A312184(n)+Δ[A011848(n)]`
-/

namespace A313283.P1983046502942472924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + (f1 (n + 1) - f1 n)

end

end A313283.P1983046502942472924

namespace A313283

/-- `A312184(n)+Δ[A011848(n)]` -/
def P1983046502942472924.Spec : Prop :=
  ∀ n, P1983046502942472924.a n = A313283 n

end A313283

/-! ## A313283.P1622301064720263358

`A312184(n)+n-A004525(n)`
-/

namespace A313283.P1622301064720263358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + ((n : ℤ) - A004525 n)

end

end A313283.P1622301064720263358

namespace A313283

/-- `A312184(n)+n-A004525(n)` -/
def P1622301064720263358.Spec : Prop :=
  ∀ n, P1622301064720263358.a n = A313283 n

end A313283

/-! ## A313283.P8289205779070059369

`A312184(n)+A004525(∑[and(2, n)])`
-/

namespace A313283.P8289205779070059369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + A004525 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313283.P8289205779070059369

namespace A313283

/-- `A312184(n)+A004525(∑[and(2, n)])` -/
def P8289205779070059369.Spec : Prop :=
  ∀ n, P8289205779070059369.a n = A313283 n

end A313283

/-! ## A313283.P15479279699702490036

`A312123(n)+n-A004396(A004525(n))`
-/

namespace A313283.P15479279699702490036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313283.P15479279699702490036

namespace A313283

/-- `A312123(n)+n-A004396(A004525(n))` -/
def P15479279699702490036.Spec : Prop :=
  ∀ n, P15479279699702490036.a n = A313283 n

end A313283

/-! ## A313283.P10299233927056209248

`A008458(n)+A008574(n)-A315403(n)`
-/

namespace A313283.P10299233927056209248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315403 n)

end

end A313283.P10299233927056209248

namespace A313283

/-- `A008458(n)+A008574(n)-A315403(n)` -/
def P10299233927056209248.Spec : Prop :=
  ∀ n, P10299233927056209248.a n = A313283 n

end A313283

/-! ## A313283.P16700996648321168179

`A313739(n)-A128834(n)`
-/

namespace A313283.P16700996648321168179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A128834 n

end

end A313283.P16700996648321168179

namespace A313283

/-- `A313739(n)-A128834(n)` -/
def P16700996648321168179.Spec : Prop :=
  ∀ n, P16700996648321168179.a n = A313283 n

end A313283

/-! ## A313283.P4205832183978942503

`A313739(n)+A010892(n+2)`
-/

namespace A313283.P4205832183978942503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A010892 (n + 2)

end

end A313283.P4205832183978942503

namespace A313283

/-- `A313739(n)+A010892(n+2)` -/
def P4205832183978942503.Spec : Prop :=
  ∀ n, P4205832183978942503.a n = A313283 n

end A313283

/-! ## A313283.P5925747957636905702

`A313924(n)-A004396(A004525(n))`
-/

namespace A313283.P5925747957636905702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A004396 (A004525 n).toNat

end

end A313283.P5925747957636905702

namespace A313283

/-- `A313924(n)-A004396(A004525(n))` -/
def P5925747957636905702.Spec : Prop :=
  ∀ n, P5925747957636905702.a n = A313283 n

end A313283

/-!
# A313284: Coordination sequence Gal.5.88.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313284, the canonical program `A313284.P7231035941228258190` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313284 has offset 0).

The definition of A313284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313284.P11695456296483532899

`abs(10*n-A315402(n))`
-/

namespace A313284.P11695456296483532899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315402 n|

end

end A313284.P11695456296483532899

namespace A313284

/-- `abs(10*n-A315402(n))` -/
def P11695456296483532899.Spec : Prop :=
  ∀ n, P11695456296483532899.a n = A313284 n

end A313284

/-! ## A313284.P7231035941228258190

`A314203(n)-A253262(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313284

/-- `A314203(n)-A253262(n)` -/
def P7231035941228258190.Spec : Prop :=
  ∀ n, P7231035941228258190.a n = A313284 n

theorem P7231035941228258190.correct : P7231035941228258190.Spec := by
  intro n
  simp only [A313284]

end A313284

/-! ## A313284.P143662958217259407

`A313905(n)-A330025(n)`
-/

namespace A313284.P143662958217259407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n - A330025 n

end

end A313284.P143662958217259407

namespace A313284

/-- `A313905(n)-A330025(n)` -/
def P143662958217259407.Spec : Prop :=
  ∀ n, P143662958217259407.a n = A313284 n

end A313284

/-! ## A313284.P4914320183866417519

`2*A008706(n)-A315402(n)`
-/

namespace A313284.P4914320183866417519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315402 n

end

end A313284.P4914320183866417519

namespace A313284

/-- `2*A008706(n)-A315402(n)` -/
def P4914320183866417519.Spec : Prop :=
  ∀ n, P4914320183866417519.a n = A313284 n

end A313284

/-! ## A313284.P3390501980821285540

`A008458(n)+A008574(n)-A315402(n)`
-/

namespace A313284.P3390501980821285540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315402 n)

end

end A313284.P3390501980821285540

namespace A313284

/-- `A008458(n)+A008574(n)-A315402(n)` -/
def P3390501980821285540.Spec : Prop :=
  ∀ n, P3390501980821285540.a n = A313284 n

end A313284

/-! ## A313284.P8388555321480868970

`A313295(n)+n-A151988(n)`
-/

namespace A313284.P8388555321480868970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313295 n + ((n : ℤ) - A151988 n)

end

end A313284.P8388555321480868970

namespace A313284

/-- `A313295(n)+n-A151988(n)` -/
def P8388555321480868970.Spec : Prop :=
  ∀ n, P8388555321480868970.a n = A313284 n

end A313284

/-! ## A313284.P15955364803495630527

`A265227(n+1)+A313801(n)-2*n`
-/

namespace A313284.P15955364803495630527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A313801 n - (2 * n : ℤ))

end

end A313284.P15955364803495630527

namespace A313284

/-- `A265227(n+1)+A313801(n)-2*n` -/
def P15955364803495630527.Spec : Prop :=
  ∀ n, P15955364803495630527.a n = A313284 n

end A313284

/-! ## A313284.P8199102524592492272

`A005843(A008706(n))-A315402(n)`
-/

namespace A313284.P8199102524592492272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315402 n

end

end A313284.P8199102524592492272

namespace A313284

/-- `A005843(A008706(n))-A315402(n)` -/
def P8199102524592492272.Spec : Prop :=
  ∀ n, P8199102524592492272.a n = A313284 n

end A313284

/-!
# A313285: Coordination sequence Gal.6.473.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313285, there is no canonical definition to state claims against.
-/

/-! ## A313285.P13541325055496406888

`or(A063962(A000108(n)), A313276(n))`
-/

namespace A313285.P13541325055496406888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063962 (A000108 n).toNat) (A313276 n)

end

end A313285.P13541325055496406888

/-! ## A313285.P15585702481004554807

`or(A001221(A149066(n)), A313232(n))`
-/

namespace A313285.P15585702481004554807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A149066 n).toNat) (A313232 n)

end

end A313285.P15585702481004554807

/-! ## A313285.P15936679623538622146

`or(A001221(A149066(n)), A313247(n))`
-/

namespace A313285.P15936679623538622146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A149066 n).toNat) (A313247 n)

end

end A313285.P15936679623538622146

/-! ## A313285.P10302494645586235935

`or(A001221(A149066(n)), A313280(n))`
-/

namespace A313285.P10302494645586235935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A149066 n).toNat) (A313280 n)

end

end A313285.P10302494645586235935

/-! ## A313285.P6617713416292457340

`or(A313280(n), A331718(A327351(n)))`
-/

namespace A313285.P6617713416292457340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313280 n) (A331718 (A327351 n).toNat)

end

end A313285.P6617713416292457340

/-!
# A313286: Coordination sequence Gal.6.463.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313286, there is no canonical definition to state claims against.
-/

/-! ## A313286.P2281543590201069018

`A313289(n)-A011744(A259592(n))`
-/

namespace A313286.P2281543590201069018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313289 n - A011744 (A259592 n).toNat

end

end A313286.P2281543590201069018

/-! ## A313286.P4133684770055880059

`A312680(n)+A001221(A080872(n))`
-/

namespace A313286.P4133684770055880059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312680 n + A001221 (A080872 n).toNat

end

end A313286.P4133684770055880059

/-! ## A313286.P16256573690337807362

`A313285(n)-A014037(A052156(n))`
-/

namespace A313286.P16256573690337807362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313285 n - A014037 (A052156 n).toNat

end

end A313286.P16256573690337807362

/-! ## A313286.P1040192306649044047

`A313285(n)+A055641(A226335(n+1))`
-/

namespace A313286.P1040192306649044047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313285 n + A055641 (A226335 (n + 1)).toNat

end

end A313286.P1040192306649044047

/-! ## A313286.P2357051492569813440

`A313285(n)+A288223(A160055(n+1))`
-/

namespace A313286.P2357051492569813440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313285 n + A288223 (A160055 (n + 1)).toNat

end

end A313286.P2357051492569813440

/-!
# A313287: Coordination sequence Gal.6.442.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313287, there is no canonical definition to state claims against.
-/

/-! ## A313287.P9556112063953334801

`A313870(n)-A046978(n)`
-/

namespace A313287.P9556112063953334801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313870 n - A046978 n

end

end A313287.P9556112063953334801

/-! ## A313287.P15726529615792323205

`A313870(n)-A330025(A001068(n))`
-/

namespace A313287.P15726529615792323205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313870 n - A330025 (A001068 n).toNat

end

end A313287.P15726529615792323205

/-! ## A313287.P6700211558642893813

`A330025(A001068(n+4))+A313870(n)`
-/

namespace A313287.P6700211558642893813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A001068 (n + 4)).toNat + A313870 n

end

end A313287.P6700211558642893813

/-! ## A313287.P11838189055291234074

`A313288(n)+A313870(n)-A313871(n)`
-/

namespace A313287.P11838189055291234074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313288 n + (A313870 n - A313871 n)

end

end A313287.P11838189055291234074

/-! ## A313287.P16418936223571644552

`A313288(n)-A188009(A146824(n+1))`
-/

namespace A313287.P16418936223571644552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313288 n - A188009 (A146824 (n + 1)).toNat

end

end A313287.P16418936223571644552

/-!
# A313288: Coordination sequence Gal.6.441.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313288, there is no canonical definition to state claims against.
-/

/-! ## A313288.P5804999401452361321

`A313871(n)-A046978(n)`
-/

namespace A313288.P5804999401452361321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313871 n - A046978 n

end

end A313288.P5804999401452361321

/-! ## A313288.P2747726425395016997

`A313871(n)-A330025(A001068(n))`
-/

namespace A313288.P2747726425395016997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313871 n - A330025 (A001068 n).toNat

end

end A313288.P2747726425395016997

/-! ## A313288.P18046193306974536000

`A330025(A001068(n+4))+A313871(n)`
-/

namespace A313288.P18046193306974536000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A001068 (n + 4)).toNat + A313871 n

end

end A313288.P18046193306974536000

/-! ## A313288.P6384310549427269255

`A313287(n)+A313871(n)-A313870(n)`
-/

namespace A313288.P6384310549427269255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313287 n + (A313871 n - A313870 n)

end

end A313288.P6384310549427269255

/-! ## A313288.P12048429893931544032

`A313287(n)+A283316(A001333(n))`
-/

namespace A313288.P12048429893931544032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313287 n + A283316 (A001333 n).toNat

end

end A313288.P12048429893931544032

/-!
# A313289: Coordination sequence Gal.4.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313289, the canonical program `A313289.P4085022440508008481` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313289 has offset 0).

The definition of A313289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313289.P13029201062978957176

`abs(10*n-A315401(n))`
-/

namespace A313289.P13029201062978957176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315401 n|

end

end A313289.P13029201062978957176

namespace A313289

/-- `abs(10*n-A315401(n))` -/
def P13029201062978957176.Spec : Prop :=
  ∀ n, P13029201062978957176.a n = A313289 n

end A313289

/-! ## A313289.P4085022440508008481

`A313147(n)+Δ[A011860(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313289

/-- `A313147(n)+Δ[A011860(n)]` -/
def P4085022440508008481.Spec : Prop :=
  ∀ n, P4085022440508008481.a n = A313289 n

theorem P4085022440508008481.correct : P4085022440508008481.Spec := by
  intro n
  simp only [A313289]

end A313289

/-! ## A313289.P12298125197135615567

`2*A008706(n)-A315401(n)`
-/

namespace A313289.P12298125197135615567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315401 n

end

end A313289.P12298125197135615567

namespace A313289

/-- `2*A008706(n)-A315401(n)` -/
def P12298125197135615567.Spec : Prop :=
  ∀ n, P12298125197135615567.a n = A313289 n

end A313289

/-! ## A313289.P10971977742492720347

`(A312680(n)+A310529(n))/2`
-/

namespace A313289.P10971977742492720347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312680 n + A310529 n : ℚ) / 2

end

end A313289.P10971977742492720347

namespace A313289

/-- `(A312680(n)+A310529(n))/2` -/
def P10971977742492720347.Spec : Prop :=
  ∀ n, P10971977742492720347.a n = (A313289 n : ℚ)

end A313289

/-! ## A313289.P684329431626117405

`A312974(n)+Δ[2*A011860(n)]`
-/

namespace A313289.P684329431626117405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + (f1 (n + 1) - f1 n)

end

end A313289.P684329431626117405

namespace A313289

/-- `A312974(n)+Δ[2*A011860(n)]` -/
def P684329431626117405.Spec : Prop :=
  ∀ n, P684329431626117405.a n = A313289 n

end A313289

/-! ## A313289.P4994246163019058848

`A008458(n)+A008574(n)-A315401(n)`
-/

namespace A313289.P4994246163019058848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315401 n)

end

end A313289.P4994246163019058848

namespace A313289

/-- `A008458(n)+A008574(n)-A315401(n)` -/
def P4994246163019058848.Spec : Prop :=
  ∀ n, P4994246163019058848.a n = A313289 n

end A313289

/-! ## A313289.P1931155498761612441

`A299910(n)+A299911(n)-A008458(n)`
-/

namespace A313289.P1931155498761612441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299910 n + (A299911 n - A008458 n)

end

end A313289.P1931155498761612441

namespace A313289

/-- `A299910(n)+A299911(n)-A008458(n)` -/
def P1931155498761612441.Spec : Prop :=
  ∀ n, P1931155498761612441.a n = A313289 n

end A313289

/-! ## A313289.P11706951423251518067

`A310503(n)-A175629(n-A175629(n))`
-/

namespace A313289.P11706951423251518067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A175629 ((n : ℤ) - A175629 n).toNat

end

end A313289.P11706951423251518067

namespace A313289

/-- `A310503(n)-A175629(n-A175629(n))` -/
def P11706951423251518067.Spec : Prop :=
  ∀ n, P11706951423251518067.a n = A313289 n

end A313289

/-! ## A313289.P493018534781841353

`∑{d}[A008592(n)-A315401(n), A000010(#)]`
-/

namespace A313289.P493018534781841353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313289.P493018534781841353

namespace A313289

/-- `∑{d}[A008592(n)-A315401(n), A000010(#)]` -/
def P493018534781841353.Spec : Prop :=
  ∀ n, P493018534781841353.a n = A313289 n

end A313289

/-! ## A313289.P1897150769970210349

`A312680(n)+A004525(A310529(n)-A312680(n))`
-/

namespace A313289.P1897150769970210349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312680 n + A004525 (A310529 n - A312680 n).toNat

end

end A313289.P1897150769970210349

namespace A313289

/-- `A312680(n)+A004525(A310529(n)-A312680(n))` -/
def P1897150769970210349.Spec : Prop :=
  ∀ n, P1897150769970210349.a n = A313289 n

end A313289

/-! ## A313289.P1538663933619412253

`A312183(n)+A004523(A145569(n))`
-/

namespace A313289.P1538663933619412253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n + A004523 (A145569 n).toNat

end

end A313289.P1538663933619412253

namespace A313289

/-- `A312183(n)+A004523(A145569(n))` -/
def P1538663933619412253.Spec : Prop :=
  ∀ n, P1538663933619412253.a n = A313289 n

end A313289

/-! ## A313289.P10778966344361183980

`A314249(n)-A242062(A008586(n))`
-/

namespace A313289.P10778966344361183980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n - A242062 (A008586 n).toNat

end

end A313289.P10778966344361183980

namespace A313289

/-- `A314249(n)-A242062(A008586(n))` -/
def P10778966344361183980.Spec : Prop :=
  ∀ n, P10778966344361183980.a n = A313289 n

end A313289

/-! ## A313289.P13692747850976809585

`A005843(A008706(n))-A315401(n)`
-/

namespace A313289.P13692747850976809585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315401 n

end

end A313289.P13692747850976809585

namespace A313289

/-- `A005843(A008706(n))-A315401(n)` -/
def P13692747850976809585.Spec : Prop :=
  ∀ n, P13692747850976809585.a n = A313289 n

end A313289

/-! ## A313289.P9026022042203596117

`A004396(2*(A313147(n)-n))`
-/

namespace A313289.P9026022042203596117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313147 n - (n : ℤ))).toNat

end

end A313289.P9026022042203596117

namespace A313289

/-- `A004396(2*(A313147(n)-n))` -/
def P9026022042203596117.Spec : Prop :=
  ∀ n, P9026022042203596117.a n = A313289 n

end A313289

/-! ## A313289.P8000062098214618918

`A004525(A312680(n)+A310529(n))`
-/

namespace A313289.P8000062098214618918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312680 n + A310529 n).toNat

end

end A313289.P8000062098214618918

namespace A313289

/-- `A004525(A312680(n)+A310529(n))` -/
def P8000062098214618918.Spec : Prop :=
  ∀ n, P8000062098214618918.a n = A313289 n

end A313289

/-!
# A313290: Coordination sequence Gal.6.208.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313290, the canonical program `A313290.P4481954043169253142` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313290 has offset 0).

The definition of A313290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313290.P6441976183185428006

`abs(10*n-A315400(n))`
-/

namespace A313290.P6441976183185428006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315400 n|

end

end A313290.P6441976183185428006

namespace A313290

/-- `abs(10*n-A315400(n))` -/
def P6441976183185428006.Spec : Prop :=
  ∀ n, P6441976183185428006.a n = A313290 n

end A313290

/-! ## A313290.P11553125140384699950

`A313754(n)-A128834(n)`
-/

namespace A313290.P11553125140384699950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - A128834 n

end

end A313290.P11553125140384699950

namespace A313290

/-- `A313754(n)-A128834(n)` -/
def P11553125140384699950.Spec : Prop :=
  ∀ n, P11553125140384699950.a n = A313290 n

end A313290

/-! ## A313290.P6127597907830016721

`A311312(n)+∑[A021823(n)]`
-/

namespace A313290.P6127597907830016721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313290.P6127597907830016721

namespace A313290

/-- `A311312(n)+∑[A021823(n)]` -/
def P6127597907830016721.Spec : Prop :=
  ∀ n, P6127597907830016721.a n = A313290 n

end A313290

/-! ## A313290.P7508915294665678816

`A312144(n)+∑[A131735(n)]`
-/

namespace A313290.P7508915294665678816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313290.P7508915294665678816

namespace A313290

/-- `A312144(n)+∑[A131735(n)]` -/
def P7508915294665678816.Spec : Prop :=
  ∀ n, P7508915294665678816.a n = A313290 n

end A313290

/-! ## A313290.P15982907091401492352

`A313754(n)+A010892(n+2)`
-/

namespace A313290.P15982907091401492352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n + A010892 (n + 2)

end

end A313290.P15982907091401492352

namespace A313290

/-- `A313754(n)+A010892(n+2)` -/
def P15982907091401492352.Spec : Prop :=
  ∀ n, P15982907091401492352.a n = A313290 n

end A313290

/-! ## A313290.P14406853501051036383

`2*A008706(n)-A315400(n)`
-/

namespace A313290.P14406853501051036383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315400 n

end

end A313290.P14406853501051036383

namespace A313290

/-- `2*A008706(n)-A315400(n)` -/
def P14406853501051036383.Spec : Prop :=
  ∀ n, P14406853501051036383.a n = A313290 n

end A313290

/-! ## A313290.P4481954043169253142

`A301697(n)-A128834(A004525(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313290

/-- `A301697(n)-A128834(A004525(n))` -/
def P4481954043169253142.Spec : Prop :=
  ∀ n, P4481954043169253142.a n = A313290 n

theorem P4481954043169253142.correct : P4481954043169253142.Spec := by
  intro n
  simp only [A313290]

end A313290

/-! ## A313290.P7849011071474035664

`A312144(n)+n-A004525(A004396(n))`
-/

namespace A313290.P7849011071474035664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313290.P7849011071474035664

namespace A313290

/-- `A312144(n)+n-A004525(A004396(n))` -/
def P7849011071474035664.Spec : Prop :=
  ∀ n, P7849011071474035664.a n = A313290 n

end A313290

/-! ## A313290.P15770858526376023573

`A008458(n)+A008574(n)-A315400(n)`
-/

namespace A313290.P15770858526376023573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315400 n)

end

end A313290.P15770858526376023573

namespace A313290

/-- `A008458(n)+A008574(n)-A315400(n)` -/
def P15770858526376023573.Spec : Prop :=
  ∀ n, P15770858526376023573.a n = A313290 n

end A313290

/-! ## A313290.P6622677871218120151

`∑[A131735(n)]+A313930(n)-n`
-/

namespace A313290.P6622677871218120151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313930 n - (n : ℤ))

end

end A313290.P6622677871218120151

namespace A313290

/-- `∑[A131735(n)]+A313930(n)-n` -/
def P6622677871218120151.Spec : Prop :=
  ∀ n, P6622677871218120151.a n = A313290 n

end A313290

/-! ## A313290.P9725635574421796512

`A313930(n)-A004525(A004396(n))`
-/

namespace A313290.P9725635574421796512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - A004525 (A004396 n).toNat

end

end A313290.P9725635574421796512

namespace A313290

/-- `A313930(n)-A004525(A004396(n))` -/
def P9725635574421796512.Spec : Prop :=
  ∀ n, P9725635574421796512.a n = A313290 n

end A313290

/-! ## A313290.P10153938746714623518

`A005843(A008706(n))-A315400(n)`
-/

namespace A313290.P10153938746714623518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315400 n

end

end A313290.P10153938746714623518

namespace A313290

/-- `A005843(A008706(n))-A315400(n)` -/
def P10153938746714623518.Spec : Prop :=
  ∀ n, P10153938746714623518.a n = A313290 n

end A313290

/-!
# A313291: Coordination sequence Gal.4.101.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313291, there is no canonical definition to state claims against.
-/

/-! ## A313291.P13904349059539290728

`floor(log2(A000162(2*n+3)))`
-/

namespace A313291.P13904349059539290728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A000162 (2 * n + 3)).toNat

end

end A313291.P13904349059539290728

/-! ## A313291.P8075015840286051156

`∑[A051727(∑[A051717(3*n+1)])]`
-/

namespace A313291.P8075015840286051156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051727 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313291.P8075015840286051156

/-! ## A313291.P16877906413786423181

`A005041(A005897(n)%A267491(n+1))`
-/

namespace A313291.P16877906413786423181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.tmod (A005897 n) (A267491 (n + 1))).toNat

end

end A313291.P16877906413786423181

/-! ## A313291.P16001438170594688531

`A005041(A005897(n))%A362235(n+2)`
-/

namespace A313291.P16001438170594688531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005041 (A005897 n).toNat) (A362235 (n + 2))

end

end A313291.P16001438170594688531

/-! ## A313291.P10258442651999148622

`∑[A002034(A146891(n))]`
-/

namespace A313291.P10258442651999148622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A146891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313291.P10258442651999148622

/-!
# A313292: Coordination sequence Gal.4.56.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313292, the canonical program `A313292.P15392932412953787641` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313292 has offset 0).

The definition of A313292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313292.P15392932412953787641

`A312205(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313292

/-- `A312205(n)+∑[A021913(n)]` -/
def P15392932412953787641.Spec : Prop :=
  ∀ n, P15392932412953787641.a n = A313292 n

theorem P15392932412953787641.correct : P15392932412953787641.Spec := by
  intro n
  simp only [A313292]

end A313292

/-! ## A313292.P11521375489495354533

`A312205(n)+Δ[A011848(n)]`
-/

namespace A313292.P11521375489495354533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + (f1 (n + 1) - f1 n)

end

end A313292.P11521375489495354533

namespace A313292

/-- `A312205(n)+Δ[A011848(n)]` -/
def P11521375489495354533.Spec : Prop :=
  ∀ n, P11521375489495354533.a n = A313292 n

end A313292

/-! ## A313292.P5817674767640512776

`A313152(n)+Δ[A011861(n)]`
-/

namespace A313292.P5817674767640512776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + (f1 (n + 1) - f1 n)

end

end A313292.P5817674767640512776

namespace A313292

/-- `A313152(n)+Δ[A011861(n)]` -/
def P5817674767640512776.Spec : Prop :=
  ∀ n, P5817674767640512776.a n = A313292 n

end A313292

/-! ## A313292.P6939819509653105022

`A312205(n)+A004524(n+1)`
-/

namespace A313292.P6939819509653105022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + A004524 (n + 1)

end

end A313292.P6939819509653105022

namespace A313292

/-- `A312205(n)+A004524(n+1)` -/
def P6939819509653105022.Spec : Prop :=
  ∀ n, P6939819509653105022.a n = A313292 n

end A313292

/-! ## A313292.P3312358586876598503

`A312205(n)+n-A004525(n)`
-/

namespace A313292.P3312358586876598503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + ((n : ℤ) - A004525 n)

end

end A313292.P3312358586876598503

namespace A313292

/-- `A312205(n)+n-A004525(n)` -/
def P3312358586876598503.Spec : Prop :=
  ∀ n, P3312358586876598503.a n = A313292 n

end A313292

/-! ## A313292.P7330555139350379619

`A312140(n)+n-A004525(A004525(n))`
-/

namespace A313292.P7330555139350379619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313292.P7330555139350379619

namespace A313292

/-- `A312140(n)+n-A004525(A004525(n))` -/
def P7330555139350379619.Spec : Prop :=
  ∀ n, P7330555139350379619.a n = A313292 n

end A313292

/-! ## A313292.P17265398563345057950

`A310530(n)-A004525(n-A004525(n))`
-/

namespace A313292.P17265398563345057950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A313292.P17265398563345057950

namespace A313292

/-- `A310530(n)-A004525(n-A004525(n))` -/
def P17265398563345057950.Spec : Prop :=
  ∀ n, P17265398563345057950.a n = A313292 n

end A313292

/-! ## A313292.P3213468296524944650

`A004525(n)+A313258(n)-A004525(A004525(n))`
-/

namespace A313292.P3213468296524944650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313258 n - A004525 (A004525 n).toNat)

end

end A313292.P3213468296524944650

namespace A313292

/-- `A004525(n)+A313258(n)-A004525(A004525(n))` -/
def P3213468296524944650.Spec : Prop :=
  ∀ n, P3213468296524944650.a n = A313292 n

end A313292

/-! ## A313292.P457177619093543157

`A313875(n)-A046978(n)`
-/

namespace A313292.P457177619093543157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n - A046978 n

end

end A313292.P457177619093543157

namespace A313292

/-- `A313875(n)-A046978(n)` -/
def P457177619093543157.Spec : Prop :=
  ∀ n, P457177619093543157.a n = A313292 n

end A313292

/-! ## A313292.P1591470380342189582

`A313875(n)+A046980(n+2)`
-/

namespace A313292.P1591470380342189582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n + A046980 (n + 2)

end

end A313292.P1591470380342189582

namespace A313292

/-- `A313875(n)+A046980(n+2)` -/
def P1591470380342189582.Spec : Prop :=
  ∀ n, P1591470380342189582.a n = A313292 n

end A313292

/-! ## A313292.P4862848416573068755

`abs(10*n-A315399(n))`
-/

namespace A313292.P4862848416573068755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315399 n|

end

end A313292.P4862848416573068755

namespace A313292

/-- `abs(10*n-A315399(n))` -/
def P4862848416573068755.Spec : Prop :=
  ∀ n, P4862848416573068755.a n = A313292 n

end A313292

/-! ## A313292.P15501840897999544593

`A008458(n)+A008574(n)-A315399(n)`
-/

namespace A313292.P15501840897999544593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315399 n)

end

end A313292.P15501840897999544593

namespace A313292

/-- `A008458(n)+A008574(n)-A315399(n)` -/
def P15501840897999544593.Spec : Prop :=
  ∀ n, P15501840897999544593.a n = A313292 n

end A313292

/-! ## A313292.P4386745649282801544

`A313793(n)-A046978(A046978(n)+n)`
-/

namespace A313292.P4386745649282801544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A313292.P4386745649282801544

namespace A313292

/-- `A313793(n)-A046978(A046978(n)+n)` -/
def P4386745649282801544.Spec : Prop :=
  ∀ n, P4386745649282801544.a n = A313292 n

end A313292

/-! ## A313292.P7456168938491798024

`A313926(n)-A004525(A004525(n))`
-/

namespace A313292.P7456168938491798024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313926 n - A004525 (A004525 n).toNat

end

end A313292.P7456168938491798024

namespace A313292

/-- `A313926(n)-A004525(A004525(n))` -/
def P7456168938491798024.Spec : Prop :=
  ∀ n, P7456168938491798024.a n = A313292 n

end A313292

/-! ## A313292.P8681572825467218313

`A315543(n)-2*A004525(A004525(n))`
-/

namespace A313292.P8681572825467218313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - 2 * A004525 (A004525 n).toNat

end

end A313292.P8681572825467218313

namespace A313292

/-- `A315543(n)-2*A004525(A004525(n))` -/
def P8681572825467218313.Spec : Prop :=
  ∀ n, P8681572825467218313.a n = A313292 n

end A313292

/-!
# A313293: Coordination sequence Gal.5.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313293, the canonical program `A313293.P9420717771788987788` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313293 has offset 0).

The definition of A313293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313293.P9638096757205238350

`abs(10*n-A315398(n))`
-/

namespace A313293.P9638096757205238350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315398 n|

end

end A313293.P9638096757205238350

namespace A313293

/-- `abs(10*n-A315398(n))` -/
def P9638096757205238350.Spec : Prop :=
  ∀ n, P9638096757205238350.a n = A313293 n

end A313293

/-! ## A313293.P14325738362906903757

`A313153(n)+Δ[A011862(n)]`
-/

namespace A313293.P14325738362906903757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 n + (f1 (n + 1) - f1 n)

end

end A313293.P14325738362906903757

namespace A313293

/-- `A313153(n)+Δ[A011862(n)]` -/
def P14325738362906903757.Spec : Prop :=
  ∀ n, P14325738362906903757.a n = A313293 n

end A313293

/-! ## A313293.P15358540162895881376

`2*A008706(n)-A315398(n)`
-/

namespace A313293.P15358540162895881376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315398 n

end

end A313293.P15358540162895881376

namespace A313293

/-- `2*A008706(n)-A315398(n)` -/
def P15358540162895881376.Spec : Prop :=
  ∀ n, P15358540162895881376.a n = A313293 n

end A313293

/-! ## A313293.P17774253018574905790

`A311633(n)+A093390(A062545(n))`
-/

namespace A313293.P17774253018574905790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n + A093390 (A062545 n).toNat

end

end A313293.P17774253018574905790

namespace A313293

/-- `A311633(n)+A093390(A062545(n))` -/
def P17774253018574905790.Spec : Prop :=
  ∀ n, P17774253018574905790.a n = A313293 n

end A313293

/-! ## A313293.P9420717771788987788

`A313894(n)-A128834(A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313293

/-- `A313894(n)-A128834(A004396(n))` -/
def P9420717771788987788.Spec : Prop :=
  ∀ n, P9420717771788987788.a n = A313293 n

theorem P9420717771788987788.correct : P9420717771788987788.Spec := by
  intro n
  simp only [A313293]

end A313293

/-! ## A313293.P14336899823882666960

`A313799(n)-A134667(A004396(n))`
-/

namespace A313293.P14336899823882666960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A134667 (A004396 n).toNat

end

end A313293.P14336899823882666960

namespace A313293

/-- `A313799(n)-A134667(A004396(n))` -/
def P14336899823882666960.Spec : Prop :=
  ∀ n, P14336899823882666960.a n = A313293 n

end A313293

/-! ## A313293.P8745608252134185561

`A184418(A008574(n))-A315398(n)`
-/

namespace A313293.P8745608252134185561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315398 n

end

end A313293.P8745608252134185561

namespace A313293

/-- `A184418(A008574(n))-A315398(n)` -/
def P8745608252134185561.Spec : Prop :=
  ∀ n, P8745608252134185561.a n = A313293 n

end A313293

/-! ## A313293.P11066435155547616075

`A310521(n)+A128834(A006369(2*n))`
-/

namespace A313293.P11066435155547616075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n + A128834 (A006369 (2 * n)).toNat

end

end A313293.P11066435155547616075

namespace A313293

/-- `A310521(n)+A128834(A006369(2*n))` -/
def P11066435155547616075.Spec : Prop :=
  ∀ n, P11066435155547616075.a n = A313293 n

end A313293

/-! ## A313293.P4764393411887955823

`A313894(n)+A102283(A006369(n)+n)`
-/

namespace A313293.P4764393411887955823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A102283 (A006369 n + (n : ℤ)).toNat

end

end A313293.P4764393411887955823

namespace A313293

/-- `A313894(n)+A102283(A006369(n)+n)` -/
def P4764393411887955823.Spec : Prop :=
  ∀ n, P4764393411887955823.a n = A313293 n

end A313293

/-! ## A313293.P14483983261695502323

`A008458(n)+A008574(n)-A315398(n)`
-/

namespace A313293.P14483983261695502323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315398 n)

end

end A313293.P14483983261695502323

namespace A313293

/-- `A008458(n)+A008574(n)-A315398(n)` -/
def P14483983261695502323.Spec : Prop :=
  ∀ n, P14483983261695502323.a n = A313293 n

end A313293

/-! ## A313293.P9981293524238835703

`A310521(n)-A102283(n-A004396(n))`
-/

namespace A313293.P9981293524238835703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n - A102283 ((n : ℤ) - A004396 n).toNat

end

end A313293.P9981293524238835703

namespace A313293

/-- `A310521(n)-A102283(n-A004396(n))` -/
def P9981293524238835703.Spec : Prop :=
  ∀ n, P9981293524238835703.a n = A313293 n

end A313293

/-! ## A313293.P18093582618269228099

`A005843(A008706(n))-A315398(n)`
-/

namespace A313293.P18093582618269228099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315398 n

end

end A313293.P18093582618269228099

namespace A313293

/-- `A005843(A008706(n))-A315398(n)` -/
def P18093582618269228099.Spec : Prop :=
  ∀ n, P18093582618269228099.a n = A313293 n

end A313293

/-! ## A313293.P15207101242706671285

`A310521(n)-A102283(A004396(5*n))`
-/

namespace A313293.P15207101242706671285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n - A102283 (A004396 (5 * n)).toNat

end

end A313293.P15207101242706671285

namespace A313293

/-- `A310521(n)-A102283(A004396(5*n))` -/
def P15207101242706671285.Spec : Prop :=
  ∀ n, P15207101242706671285.a n = A313293 n

end A313293

/-! ## A313293.P12328722231051286543

`A313894(n)+A102283(A006369(4*n))`
-/

namespace A313293.P12328722231051286543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A102283 (A006369 (4 * n)).toNat

end

end A313293.P12328722231051286543

namespace A313293

/-- `A313894(n)+A102283(A006369(4*n))` -/
def P12328722231051286543.Spec : Prop :=
  ∀ n, P12328722231051286543.a n = A313293 n

end A313293

/-! ## A313293.P10185052091853552232

`A065502(A008458(n))-A315398(n)`
-/

namespace A313293.P10185052091853552232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315398 n

end

end A313293.P10185052091853552232

namespace A313293

/-- `A065502(A008458(n))-A315398(n)` -/
def P10185052091853552232.Spec : Prop :=
  ∀ n, P10185052091853552232.a n = A313293 n

end A313293

/-! ## A313293.P2370562384283701838

`A313153(n)+A033183(A004771(n))`
-/

namespace A313293.P2370562384283701838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 n + A033183 (A004771 n).toNat

end

end A313293.P2370562384283701838

namespace A313293

/-- `A313153(n)+A033183(A004771(n))` -/
def P2370562384283701838.Spec : Prop :=
  ∀ n, P2370562384283701838.a n = A313293 n

end A313293

/-!
# A313294: Coordination sequence Gal.6.483.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313294, there is no canonical definition to state claims against.
-/

/-! ## A313294.P13196791740592757213

`A308017(A004277(2*n)^A267429(n+1))`
-/

namespace A313294.P13196791740592757213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308017 (SequenceMachineLib.roundAway ((A004277 (2 * n) : ℚ) ^ (A267429 (n + 1) : ℤ))).toNat

end

end A313294.P13196791740592757213

/-! ## A313294.P2610743855563113454

`A257639(lcm(A101096(n+1), A242180(n+1)))`
-/

namespace A313294.P2610743855563113454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lcm (A101096 (n + 1)) (A242180 (n + 1)))

end

end A313294.P2610743855563113454

/-! ## A313294.P12104223351540465012

`A308017(A004277(2*n))%A005808(n+1)`
-/

namespace A313294.P12104223351540465012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308017 (A004277 (2 * n)).toNat) (A005808 (n + 1))

end

end A313294.P12104223351540465012

/-! ## A313294.P3904885951565032229

`A308012(2*n+1)+A154272(A260126(n+1))`
-/

namespace A313294.P3904885951565032229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308012 (2 * n + 1) + A154272 (A260126 (n + 1)).toNat

end

end A313294.P3904885951565032229

/-! ## A313294.P4168395178734175527

`xor(A003849(A194615(n+2)), A004281(3*n))`
-/

namespace A313294.P4168395178734175527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003849 (A194615 (n + 2)).toNat) (A004281 (3 * n))

end

end A313294.P4168395178734175527

/-!
# A313295: Coordination sequence Gal.5.90.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313295, the canonical program `A313295.P668024408772330037` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313295 has offset 0).

The definition of A313295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313295.P18394432544723161763

`ogf((1+2x+3x^2+3x^3+3x^4+3x^5+3x^6+3x^7+3x^8+2x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))`
-/

namespace A313295.P18394432544723161763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 3, 3, 3, 3, 3, 3, 2, 1] [1, -2, 2, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A313295.P18394432544723161763

namespace A313295

/-- `ogf((1+2x+3x^2+3x^3+3x^4+3x^5+3x^6+3x^7+3x^8+2x^9+x^10)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))` -/
def P18394432544723161763.Spec : Prop :=
  ∀ n, P18394432544723161763.a n = A313295 n

end A313295

/-! ## A313295.P3557297774447856716

`abs(A008592(n)-A315397(n))`
-/

namespace A313295.P3557297774447856716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315397 n|

end

end A313295.P3557297774447856716

namespace A313295

/-- `abs(A008592(n)-A315397(n))` -/
def P3557297774447856716.Spec : Prop :=
  ∀ n, P3557297774447856716.a n = A313295 n

end A313295

/-! ## A313295.P668024408772330037

`A313154(n)+A002266(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313295

/-- `A313154(n)+A002266(n+2)` -/
def P668024408772330037.Spec : Prop :=
  ∀ n, P668024408772330037.a n = A313295 n

theorem P668024408772330037.correct : P668024408772330037.Spec := by
  intro n
  simp only [A313295]

end A313295

/-! ## A313295.P14596700643995960414

`2*A008706(n)-A315397(n)`
-/

namespace A313295.P14596700643995960414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315397 n

end

end A313295.P14596700643995960414

namespace A313295

/-- `2*A008706(n)-A315397(n)` -/
def P14596700643995960414.Spec : Prop :=
  ∀ n, P14596700643995960414.a n = A313295 n

end A313295

/-! ## A313295.P13577512296557271645

`2*A313116(n)-A312892(n)`
-/

namespace A313295.P13577512296557271645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313116 n - A312892 n

end

end A313295.P13577512296557271645

namespace A313295

/-- `2*A313116(n)-A312892(n)` -/
def P13577512296557271645.Spec : Prop :=
  ∀ n, P13577512296557271645.a n = A313295 n

end A313295

/-! ## A313295.P523350820970856609

`A313154(n)+A008676(A016777(n))`
-/

namespace A313295.P523350820970856609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A008676 (A016777 n).toNat

end

end A313295.P523350820970856609

namespace A313295

/-- `A313154(n)+A008676(A016777(n))` -/
def P523350820970856609.Spec : Prop :=
  ∀ n, P523350820970856609.a n = A313295 n

end A313295

/-! ## A313295.P17773125650108792450

`A313154(n)+A110654(A057354(n))`
-/

namespace A313295.P17773125650108792450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A110654 (A057354 n).toNat

end

end A313295.P17773125650108792450

namespace A313295

/-- `A313154(n)+A110654(A057354(n))` -/
def P17773125650108792450.Spec : Prop :=
  ∀ n, P17773125650108792450.a n = A313295 n

end A313295

/-! ## A313295.P1653600260126935608

`A008458(n)+A008574(n)-A315397(n)`
-/

namespace A313295.P1653600260126935608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315397 n)

end

end A313295.P1653600260126935608

namespace A313295

/-- `A008458(n)+A008574(n)-A315397(n)` -/
def P1653600260126935608.Spec : Prop :=
  ∀ n, P1653600260126935608.a n = A313295 n

end A313295

/-! ## A313295.P11634494261924180525

`A310532(n)-A004525(A310532(n)-A313284(n))`
-/

namespace A313295.P11634494261924180525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n - A004525 (A310532 n - A313284 n).toNat

end

end A313295.P11634494261924180525

namespace A313295

/-- `A310532(n)-A004525(A310532(n)-A313284(n))` -/
def P11634494261924180525.Spec : Prop :=
  ∀ n, P11634494261924180525.a n = A313295 n

end A313295

/-! ## A313295.P443468062414040699

`A313916(n)-A330025(n)`
-/

namespace A313295.P443468062414040699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - A330025 n

end

end A313295.P443468062414040699

namespace A313295

/-- `A313916(n)-A330025(n)` -/
def P443468062414040699.Spec : Prop :=
  ∀ n, P443468062414040699.a n = A313295 n

end A313295

/-! ## A313295.P8411306670895841517

`A313916(n)+1-∑[A014019(n)]`
-/

namespace A313295.P8411306670895841517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313295.P8411306670895841517

namespace A313295

/-- `A313916(n)+1-∑[A014019(n)]` -/
def P8411306670895841517.Spec : Prop :=
  ∀ n, P8411306670895841517.a n = A313295 n

end A313295

/-! ## A313295.P1118995072480126275

`A314209(n)-A253262(n)`
-/

namespace A313295.P1118995072480126275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314209 n - A253262 n

end

end A313295.P1118995072480126275

namespace A313295

/-- `A314209(n)-A253262(n)` -/
def P1118995072480126275.Spec : Prop :=
  ∀ n, P1118995072480126275.a n = A313295 n

end A313295

/-! ## A313295.P15139494244533764348

`A313898(n)-A330025(A330025(n)+n)`
-/

namespace A313295.P15139494244533764348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313295.P15139494244533764348

namespace A313295

/-- `A313898(n)-A330025(A330025(n)+n)` -/
def P15139494244533764348.Spec : Prop :=
  ∀ n, P15139494244533764348.a n = A313295 n

end A313295

/-! ## A313295.P11490236558412182649

`A005843(A313116(n))-A312892(n)`
-/

namespace A313295.P11490236558412182649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313116 n).toNat - A312892 n

end

end A313295.P11490236558412182649

namespace A313295

/-- `A005843(A313116(n))-A312892(n)` -/
def P11490236558412182649.Spec : Prop :=
  ∀ n, P11490236558412182649.a n = A313295 n

end A313295

/-! ## A313295.P10520512807537176641

`A005843(A008706(n))-A315397(n)`
-/

namespace A313295.P10520512807537176641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315397 n

end

end A313295.P10520512807537176641

namespace A313295

/-- `A005843(A008706(n))-A315397(n)` -/
def P10520512807537176641.Spec : Prop :=
  ∀ n, P10520512807537176641.a n = A313295 n

end A313295

/-! ## A313295.P7022399414454665152

`A180004(A313154(n))`
-/

namespace A313295.P7022399414454665152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313154 n).toNat

end

end A313295.P7022399414454665152

namespace A313295

/-- `A180004(A313154(n))` -/
def P7022399414454665152.Spec : Prop :=
  ∀ n, P7022399414454665152.a n = A313295 n

end A313295

/-! ## A313295.P16275941871381899716

`A004525(A313284(n)+A310532(n))`
-/

namespace A313295.P16275941871381899716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313284 n + A310532 n).toNat

end

end A313295.P16275941871381899716

namespace A313295

/-- `A004525(A313284(n)+A310532(n))` -/
def P16275941871381899716.Spec : Prop :=
  ∀ n, P16275941871381899716.a n = A313295 n

end A313295

/-!
# A313296: Coordination sequence Gal.6.209.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313296, the canonical program `A313296.P16360759782772671985` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313296 has offset 0).

The definition of A313296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313296.P7710200089699496704

`ogf((1+3x+5x^2+6x^3+6x^4+6x^5+6x^6+6x^7+6x^8+6x^9+5x^10+3x^11+x^12)/(1-x-x^11+x^12))`
-/

namespace A313296.P7710200089699496704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 6, 6, 6, 6, 6, 6, 6, 5, 3, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A313296.P7710200089699496704

namespace A313296

/-- `ogf((1+3x+5x^2+6x^3+6x^4+6x^5+6x^6+6x^7+6x^8+6x^9+5x^10+3x^11+x^12)/(1-x-x^11+x^12))` -/
def P7710200089699496704.Spec : Prop :=
  ∀ n, P7710200089699496704.a n = A313296 n

end A313296

/-! ## A313296.P5792211530338580034

`abs(A008592(n)-A315396(n))`
-/

namespace A313296.P5792211530338580034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315396 n|

end

end A313296.P5792211530338580034

namespace A313296

/-- `abs(A008592(n)-A315396(n))` -/
def P5792211530338580034.Spec : Prop :=
  ∀ n, P5792211530338580034.a n = A313296 n

end A313296

/-! ## A313296.P17796520960165575758

`2*A008706(n)-A315396(n)`
-/

namespace A313296.P17796520960165575758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315396 n

end

end A313296.P17796520960165575758

namespace A313296

/-- `2*A008706(n)-A315396(n)` -/
def P17796520960165575758.Spec : Prop :=
  ∀ n, P17796520960165575758.a n = A313296 n

end A313296

/-! ## A313296.P4513315200947647750

`A135042(2*n+1)-A315396(n)`
-/

namespace A313296.P4513315200947647750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315396 n

end

end A313296.P4513315200947647750

namespace A313296

/-- `A135042(2*n+1)-A315396(n)` -/
def P4513315200947647750.Spec : Prop :=
  ∀ n, P4513315200947647750.a n = A313296 n

end A313296

/-! ## A313296.P14493836966898254346

`A184418(A008574(n))-A315396(n)`
-/

namespace A313296.P14493836966898254346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315396 n

end

end A313296.P14493836966898254346

namespace A313296

/-- `A184418(A008574(n))-A315396(n)` -/
def P14493836966898254346.Spec : Prop :=
  ∀ n, P14493836966898254346.a n = A313296 n

end A313296

/-! ## A313296.P8541992732434330844

`A008458(n)+A008574(n)-A315396(n)`
-/

namespace A313296.P8541992732434330844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315396 n)

end

end A313296.P8541992732434330844

namespace A313296

/-- `A008458(n)+A008574(n)-A315396(n)` -/
def P8541992732434330844.Spec : Prop :=
  ∀ n, P8541992732434330844.a n = A313296 n

end A313296

/-! ## A313296.P10916209078020028701

`∑{d}[A008592(n)-A315396(n), A000010(#)]`
-/

namespace A313296.P10916209078020028701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313296.P10916209078020028701

namespace A313296

/-- `∑{d}[A008592(n)-A315396(n), A000010(#)]` -/
def P10916209078020028701.Spec : Prop :=
  ∀ n, P10916209078020028701.a n = A313296 n

end A313296

/-! ## A313296.P6908147939073824666

`(A312685(n)+A310533(n))/2`
-/

namespace A313296.P6908147939073824666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312685 n + A310533 n : ℚ) / 2

end

end A313296.P6908147939073824666

namespace A313296

/-- `(A312685(n)+A310533(n))/2` -/
def P6908147939073824666.Spec : Prop :=
  ∀ n, P6908147939073824666.a n = (A313296 n : ℚ)

end A313296

/-! ## A313296.P6329853236494461569

`A005843(A008706(n))-A315396(n)`
-/

namespace A313296.P6329853236494461569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315396 n

end

end A313296.P6329853236494461569

namespace A313296

/-- `A005843(A008706(n))-A315396(n)` -/
def P6329853236494461569.Spec : Prop :=
  ∀ n, P6329853236494461569.a n = A313296 n

end A313296

/-! ## A313296.P7551195180743263772

`A093545(A008458(n))-A315396(n)`
-/

namespace A313296.P7551195180743263772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A008458 n).toNat - A315396 n

end

end A313296.P7551195180743263772

namespace A313296

/-- `A093545(A008458(n))-A315396(n)` -/
def P7551195180743263772.Spec : Prop :=
  ∀ n, P7551195180743263772.a n = A313296 n

end A313296

/-! ## A313296.P16360759782772671985

`A004396(2*(A313148(n)-n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A313296

/-- `A004396(2*(A313148(n)-n))` -/
def P16360759782772671985.Spec : Prop :=
  ∀ n, P16360759782772671985.a n = A313296 n

theorem P16360759782772671985.correct : P16360759782772671985.Spec := by
  intro n
  simp only [A313296]

end A313296

/-! ## A313296.P14162901698167369998

`A274616(2*(A313148(n)-n))`
-/

namespace A313296.P14162901698167369998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (2 * (A313148 n - (n : ℤ))).toNat

end

end A313296.P14162901698167369998

namespace A313296

/-- `A274616(2*(A313148(n)-n))` -/
def P14162901698167369998.Spec : Prop :=
  ∀ n, P14162901698167369998.a n = A313296 n

end A313296

/-! ## A313296.P746613586461633589

`A004396(A313148(n)+A313148(n)-A004277(n))`
-/

namespace A313296.P746613586461633589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313148 n + (A313148 n - A004277 n)).toNat

end

end A313296.P746613586461633589

namespace A313296

/-- `A004396(A313148(n)+A313148(n)-A004277(n))` -/
def P746613586461633589.Spec : Prop :=
  ∀ n, P746613586461633589.a n = A313296 n

end A313296

/-! ## A313296.P8563319479390434981

`A004396(A313148(n)+A313148(n)-A005843(n))`
-/

namespace A313296.P8563319479390434981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313148 n + (A313148 n - A005843 n)).toNat

end

end A313296.P8563319479390434981

namespace A313296

/-- `A004396(A313148(n)+A313148(n)-A005843(n))` -/
def P8563319479390434981.Spec : Prop :=
  ∀ n, P8563319479390434981.a n = A313296 n

theorem P8563319479390434981.correct : P8563319479390434981.Spec := by
  intro n
  simp only [A313296, Nat.add_sub_cancel, A313296.P8563319479390434981.a, A313296.P16360759782772671985.a, A004396, A004396.P17032557045289780609.a, A005843, A005843.P3167286115683555970.a, A313148, A313148.P2982835423397816264.a, A001281, A001281.P15107032606590422584.a, A310423, A310423.P3461946807328285737.a, A312668, A312668.P1763801044699896301.a, A008458, A008458.P7339383310184415644.a, A008592, A008592.P4981059802862696142.a, A313918, A313918.P15568199343954860452.a, A315302, A315302.P6791131573123663794.a, A008574, A008574.P1300280032690682112.a, A314826, A314826.P16073624034831469492.a, A314849, A314849.P12102171247342340479.f1, A314849.P12102171247342340479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313296

/-! ## A313296.P2426241931782776889

`A274616(A313148(n)+A313148(n)-A005843(n))`
-/

namespace A313296.P2426241931782776889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313148 n + (A313148 n - A005843 n)).toNat

end

end A313296.P2426241931782776889

namespace A313296

/-- `A274616(A313148(n)+A313148(n)-A005843(n))` -/
def P2426241931782776889.Spec : Prop :=
  ∀ n, P2426241931782776889.a n = A313296 n

end A313296

/-! ## A313296.P8217524650032661869

`A004396(A313148(n)-(A004277(n)-A313148(n)))`
-/

namespace A313296.P8217524650032661869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313148 n - (A004277 n - A313148 n)).toNat

end

end A313296.P8217524650032661869

namespace A313296

/-- `A004396(A313148(n)-(A004277(n)-A313148(n)))` -/
def P8217524650032661869.Spec : Prop :=
  ∀ n, P8217524650032661869.a n = A313296 n

end A313296

/-! ## A313296.P8204258361498615816

`A004396(A313148(n)-(A005843(n)-A313148(n)))`
-/

namespace A313296.P8204258361498615816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313148 n - (A005843 n - A313148 n)).toNat

end

end A313296.P8204258361498615816

namespace A313296

/-- `A004396(A313148(n)-(A005843(n)-A313148(n)))` -/
def P8204258361498615816.Spec : Prop :=
  ∀ n, P8204258361498615816.a n = A313296 n

theorem P8204258361498615816.correct : P8204258361498615816.Spec := by
  intro n
  simp only [A313296, Nat.add_sub_cancel, A313296.P8204258361498615816.a, A313296.P16360759782772671985.a, A004396, A004396.P17032557045289780609.a, A005843, A005843.P3167286115683555970.a, A313148, A313148.P2982835423397816264.a, A001281, A001281.P15107032606590422584.a, A310423, A310423.P3461946807328285737.a, A312668, A312668.P1763801044699896301.a, A008458, A008458.P7339383310184415644.a, A008592, A008592.P4981059802862696142.a, A313918, A313918.P15568199343954860452.a, A315302, A315302.P6791131573123663794.a, A008574, A008574.P1300280032690682112.a, A314826, A314826.P16073624034831469492.a, A314849, A314849.P12102171247342340479.f1, A314849.P12102171247342340479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313296

/-! ## A313296.P534758128907639336

`A274616(A313148(n)-(A005843(n)-A313148(n)))`
-/

namespace A313296.P534758128907639336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313148 n - (A005843 n - A313148 n)).toNat

end

end A313296.P534758128907639336

namespace A313296

/-- `A274616(A313148(n)-(A005843(n)-A313148(n)))` -/
def P534758128907639336.Spec : Prop :=
  ∀ n, P534758128907639336.a n = A313296 n

end A313296

/-! ## A313296.P15049153093442106421

`A233583(A017281(n))-A315396(n)`
-/

namespace A313296.P15049153093442106421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315396 n

end

end A313296.P15049153093442106421

namespace A313296

/-- `A233583(A017281(n))-A315396(n)` -/
def P15049153093442106421.Spec : Prop :=
  ∀ n, P15049153093442106421.a n = A313296 n

end A313296

/-!
# A313297: Coordination sequence Gal.6.210.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313297, the canonical program `A313297.P8971349673296799465` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313297 has offset 0).

The definition of A313297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313297.P13370511303355312259

`ogf((1+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+x^10)/(1-3x+4x^2-3x^3+x^4+x^6-3x^7+4x^8-3x^9+x^10))`
-/

namespace A313297.P13370511303355312259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1] [1, -3, 4, -3, 1, 0, 1, -3, 4, -3, 1] n

end

end A313297.P13370511303355312259

namespace A313297

/-- `ogf((1+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+x^10)/(1-3x+4x^2-3x^3+x^4+x^6-3x^7+4x^8-3x^9+x^10))` -/
def P13370511303355312259.Spec : Prop :=
  ∀ n, P13370511303355312259.a n = A313297 n

end A313297

/-! ## A313297.P8971349673296799465

`abs(A008592(n)-A315395(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313297

/-- `abs(A008592(n)-A315395(n))` -/
def P8971349673296799465.Spec : Prop :=
  ∀ n, P8971349673296799465.a n = A313297 n

theorem P8971349673296799465.correct : P8971349673296799465.Spec := by
  intro n
  simp only [A313297]

end A313297

/-! ## A313297.P14341697769216243243

`A312206(n)+∑[A021913(n)]`
-/

namespace A313297.P14341697769216243243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312206 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313297.P14341697769216243243

namespace A313297

/-- `A312206(n)+∑[A021913(n)]` -/
def P14341697769216243243.Spec : Prop :=
  ∀ n, P14341697769216243243.a n = A313297 n

end A313297

/-! ## A313297.P7622017609057417442

`A312152(n)+∑[A131735(n)]`
-/

namespace A313297.P7622017609057417442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313297.P7622017609057417442

namespace A313297

/-- `A312152(n)+∑[A131735(n)]` -/
def P7622017609057417442.Spec : Prop :=
  ∀ n, P7622017609057417442.a n = A313297 n

end A313297

/-! ## A313297.P2191366520833096548

`A312206(n)+Δ[A011848(n)]`
-/

namespace A313297.P2191366520833096548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312206 n + (f1 (n + 1) - f1 n)

end

end A313297.P2191366520833096548

namespace A313297

/-- `A312206(n)+Δ[A011848(n)]` -/
def P2191366520833096548.Spec : Prop :=
  ∀ n, P2191366520833096548.a n = A313297 n

end A313297

/-! ## A313297.P1266050816979401200

`A312206(n)+A004524(n+1)`
-/

namespace A313297.P1266050816979401200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312206 n + A004524 (n + 1)

end

end A313297.P1266050816979401200

namespace A313297

/-- `A312206(n)+A004524(n+1)` -/
def P1266050816979401200.Spec : Prop :=
  ∀ n, P1266050816979401200.a n = A313297 n

end A313297

/-! ## A313297.P8614432065059003420

`2*A008706(n)-A315395(n)`
-/

namespace A313297.P8614432065059003420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315395 n

end

end A313297.P8614432065059003420

namespace A313297

/-- `2*A008706(n)-A315395(n)` -/
def P8614432065059003420.Spec : Prop :=
  ∀ n, P8614432065059003420.a n = A313297 n

end A313297

/-! ## A313297.P42137447161311331

`A312206(n)+n-A004525(n)`
-/

namespace A313297.P42137447161311331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312206 n + ((n : ℤ) - A004525 n)

end

end A313297.P42137447161311331

namespace A313297

/-- `A312206(n)+n-A004525(n)` -/
def P42137447161311331.Spec : Prop :=
  ∀ n, P42137447161311331.a n = A313297 n

end A313297

/-! ## A313297.P5202892323346399956

`A312152(n)+A002264(A030118(n)+n)`
-/

namespace A313297.P5202892323346399956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + A002264 (A030118 n + (n : ℤ)).toNat

end

end A313297.P5202892323346399956

namespace A313297

/-- `A312152(n)+A002264(A030118(n)+n)` -/
def P5202892323346399956.Spec : Prop :=
  ∀ n, P5202892323346399956.a n = A313297 n

end A313297

/-! ## A313297.P14230290210946734029

`A008458(n)+A008574(n)-A315395(n)`
-/

namespace A313297.P14230290210946734029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315395 n)

end

end A313297.P14230290210946734029

namespace A313297

/-- `A008458(n)+A008574(n)-A315395(n)` -/
def P14230290210946734029.Spec : Prop :=
  ∀ n, P14230290210946734029.a n = A313297 n

end A313297

/-! ## A313297.P2452785805935620796

`A313900(n)-A134667(A004525(n))`
-/

namespace A313297.P2452785805935620796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n - A134667 (A004525 n).toNat

end

end A313297.P2452785805935620796

namespace A313297

/-- `A313900(n)-A134667(A004525(n))` -/
def P2452785805935620796.Spec : Prop :=
  ∀ n, P2452785805935620796.a n = A313297 n

end A313297

/-! ## A313297.P17623031848636400496

`A313924(n)-A046978(A004396(n))`
-/

namespace A313297.P17623031848636400496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A046978 (A004396 n).toNat

end

end A313297.P17623031848636400496

namespace A313297

/-- `A313924(n)-A046978(A004396(n))` -/
def P17623031848636400496.Spec : Prop :=
  ∀ n, P17623031848636400496.a n = A313297 n

end A313297

/-! ## A313297.P4742596757455399923

`A005843(A008706(n))-A315395(n)`
-/

namespace A313297.P4742596757455399923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315395 n

end

end A313297.P4742596757455399923

namespace A313297

/-- `A005843(A008706(n))-A315395(n)` -/
def P4742596757455399923.Spec : Prop :=
  ∀ n, P4742596757455399923.a n = A313297 n

end A313297

/-! ## A313297.P9164058279425279705

`A313126(n)+∑[A021913(A313126(n))]`
-/

namespace A313297.P9164058279425279705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313297.P9164058279425279705

namespace A313297

/-- `A313126(n)+∑[A021913(A313126(n))]` -/
def P9164058279425279705.Spec : Prop :=
  ∀ n, P9164058279425279705.a n = A313297 n

end A313297

/-! ## A313297.P9096919790192423042

`A008458(A313803(2*n))-A313803(A313803(2*n))`
-/

namespace A313297.P9096919790192423042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A313803 (2 * n)).toNat - A313803 (A313803 (2 * n)).toNat

end

end A313297.P9096919790192423042

namespace A313297

/-- `A008458(A313803(2*n))-A313803(A313803(2*n))` -/
def P9096919790192423042.Spec : Prop :=
  ∀ n, P9096919790192423042.a n = A313297 n

end A313297

/-!
# A313298: Coordination sequence Gal.6.499.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313298, there is no canonical definition to state claims against.
-/

/-! ## A313298.P15679580869019392379

`A172334(n)+A011615(A085185(2*(n+1)))`
-/

namespace A313298.P15679580869019392379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172334 n + A011615 (A085185 (2 * (n + 1))).toNat

end

end A313298.P15679580869019392379

/-! ## A313298.P4981039705042386024

`A313299(n)-A343606(A138526(n))`
-/

namespace A313298.P4981039705042386024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313299 n - A343606 (A138526 n).toNat

end

end A313298.P4981039705042386024

/-! ## A313298.P16063120782773376653

`A330025(A293151(n))+A313287(n)-char[5]`
-/

namespace A313298.P16063120782773376653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A293151 n).toNat + A313287 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A313298.P16063120782773376653

/-! ## A313298.P13522433951749577824

`A067139(2*(n+1))-A001221(A190820(2*n))-char[5]`
-/

namespace A313298.P13522433951749577824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067139 (2 * (n + 1)) - A001221 (A190820 (2 * n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A313298.P13522433951749577824

/-!
# A313299: Coordination sequence Gal.6.500.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313299, there is no canonical definition to state claims against.
-/

/-! ## A313299.P4529176757828874703

`A343606(A138526(n))+A313298(n)`
-/

namespace A313299.P4529176757828874703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343606 (A138526 n).toNat + A313298 n

end

end A313299.P4529176757828874703

/-! ## A313299.P3610735495072715262

`A330025(A293151(n))+A313287(n)`
-/

namespace A313299.P3610735495072715262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A293151 n).toNat + A313287 n

end

end A313299.P3610735495072715262

/-! ## A313299.P5324072709783162119

`A330025(A293151(n))+A313288(n)`
-/

namespace A313299.P5324072709783162119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A293151 n).toNat + A313288 n

end

end A313299.P5324072709783162119

/-! ## A313299.P16837410157948098067

`A313298(n)+A285963(A299284(2*n+1))`
-/

namespace A313299.P16837410157948098067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313298 n + A285963 (A299284 (2 * n + 1)).toNat

end

end A313299.P16837410157948098067

/-! ## A313299.P14355459699245392450

`A067139(2*(n+1))-A001221(A190820(2*n))`
-/

namespace A313299.P14355459699245392450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067139 (2 * (n + 1)) - A001221 (A190820 (2 * n)).toNat

end

end A313299.P14355459699245392450

