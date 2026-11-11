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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A391800: Primes indexed by A391797.

The programs for A391800, the canonical program `A391800.P14605006157481767480` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391800 has offset 1).

The definition of A391800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391797, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391800.P14605006157481767480

`A000040(A391797(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391800

/-- `A000040(A391797(n+1))` -/
def P14605006157481767480.Spec : Prop :=
  ∀ n, P14605006157481767480.a n = A391800 (n + 1)

theorem P14605006157481767480.correct : P14605006157481767480.Spec := by
  intro n
  simp only [A391800, Nat.add_sub_cancel]

end A391800

/-! ## A391800.P9796384230205833687

`A008578(A391797(n+1)+1)`
-/

namespace A391800.P9796384230205833687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A391797 (n + 1) + 1).toNat

end

end A391800.P9796384230205833687

namespace A391800

/-- `A008578(A391797(n+1)+1)` -/
def P9796384230205833687.Spec : Prop :=
  ∀ n, P9796384230205833687.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P4779563587137144303

`A065091(A391797(n+1)-1)`
-/

namespace A391800.P4779563587137144303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A391797 (n + 1) - 1).toNat

end

end A391800.P4779563587137144303

namespace A391800

/-- `A065091(A391797(n+1)-1)` -/
def P4779563587137144303.Spec : Prop :=
  ∀ n, P4779563587137144303.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P3542721918589413110

`A065091(lt[A155750(n+1), A155067(n+1)])`
-/

namespace A391800.P3542721918589413110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391800.P3542721918589413110

namespace A391800

/-- `A065091(lt[A155750(n+1), A155067(n+1)])` -/
def P3542721918589413110.Spec : Prop :=
  ∀ n, P3542721918589413110.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P10822149745530692580

`A006093(A391797(n+1))+A001221(A065091(n+1))`
-/

namespace A391800.P10822149745530692580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391797 (n + 1)).toNat + A001221 (A065091 (n + 1)).toNat

end

end A391800.P10822149745530692580

namespace A391800

/-- `A006093(A391797(n+1))+A001221(A065091(n+1))` -/
def P10822149745530692580.Spec : Prop :=
  ∀ n, P10822149745530692580.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P1979354574454335504

`A339846(A001358(n+1))+A006093(A391797(n+1))`
-/

namespace A391800.P1979354574454335504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (A001358 (n + 1)).toNat + A006093 (A391797 (n + 1)).toNat

end

end A391800.P1979354574454335504

namespace A391800

/-- `A339846(A001358(n+1))+A006093(A391797(n+1))` -/
def P1979354574454335504.Spec : Prop :=
  ∀ n, P1979354574454335504.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P16065627175015577131

`A006093(A391797(n+1))+A001221(A391802(n+1))`
-/

namespace A391800.P16065627175015577131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391797 (n + 1)).toNat + A001221 (A391802 (n + 1)).toNat

end

end A391800.P16065627175015577131

namespace A391800

/-- `A006093(A391797(n+1))+A001221(A391802(n+1))` -/
def P16065627175015577131.Spec : Prop :=
  ∀ n, P16065627175015577131.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P16838509201447643501

`A006093(A391797(n+1))+A001221(A391801(n+1))`
-/

namespace A391800.P16838509201447643501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391797 (n + 1)).toNat + A001221 (A391801 (n + 1)).toNat

end

end A391800.P16838509201447643501

namespace A391800

/-- `A006093(A391797(n+1))+A001221(A391801(n+1))` -/
def P16838509201447643501.Spec : Prop :=
  ∀ n, P16838509201447643501.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P2434891662829978008

`A006093(A391797(n+1))+A001221(A100202(n+1))`
-/

namespace A391800.P2434891662829978008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391797 (n + 1)).toNat + A001221 (A100202 (n + 1)).toNat

end

end A391800.P2434891662829978008

namespace A391800

/-- `A006093(A391797(n+1))+A001221(A100202(n+1))` -/
def P2434891662829978008.Spec : Prop :=
  ∀ n, P2434891662829978008.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P3965094994668956634

`A318812(A391802(n+2))+A006093(A391797(n+1))`
-/

namespace A391800.P3965094994668956634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (A391802 (n + 2)).toNat + A006093 (A391797 (n + 1)).toNat

end

end A391800.P3965094994668956634

namespace A391800

/-- `A318812(A391802(n+2))+A006093(A391797(n+1))` -/
def P3965094994668956634.Spec : Prop :=
  ∀ n, P3965094994668956634.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P11404893743032553589

`A179775(2*n+3)+A006093(A391797(n+1))`
-/

namespace A391800.P11404893743032553589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (2 * n + 3) + A006093 (A391797 (n + 1)).toNat

end

end A391800.P11404893743032553589

namespace A391800

/-- `A179775(2*n+3)+A006093(A391797(n+1))` -/
def P11404893743032553589.Spec : Prop :=
  ∀ n, P11404893743032553589.a n = A391800 (n + 1)

end A391800

/-! ## A391800.P12098219716469610285

`A008864(A391797(n+1))-A008966(A397112(n+4))`
-/

namespace A391800.P12098219716469610285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A391797 (n + 1)).toNat - A008966 (A397112 (n + 4)).toNat

end

end A391800.P12098219716469610285

namespace A391800

/-- `A008864(A391797(n+1))-A008966(A397112(n+4))` -/
def P12098219716469610285.Spec : Prop :=
  ∀ n, P12098219716469610285.a n = A391800 (n + 1)

end A391800

/-!
# A391801: Primes indexed by A391798.

The programs for A391801, the canonical program `A391801.P3803294598008946308` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391801 has offset 1).

The definition of A391801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391801.P9534864640617375011

`A000040(A391798(n+1))`
-/

namespace A391801.P9534864640617375011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391798 (n + 1)).toNat

end

end A391801.P9534864640617375011

namespace A391801

/-- `A000040(A391798(n+1))` -/
def P9534864640617375011.Spec : Prop :=
  ∀ n, P9534864640617375011.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P6012845898058673566

`A008578(A391798(n+1)+1)`
-/

namespace A391801.P6012845898058673566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A391798 (n + 1) + 1).toNat

end

end A391801.P6012845898058673566

namespace A391801

/-- `A008578(A391798(n+1)+1)` -/
def P6012845898058673566.Spec : Prop :=
  ∀ n, P6012845898058673566.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P6809327608564291892

`A065091(A391798(n+1)-1)`
-/

namespace A391801.P6809327608564291892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A391798 (n + 1) - 1).toNat

end

end A391801.P6809327608564291892

namespace A391801

/-- `A065091(A391798(n+1)-1)` -/
def P6809327608564291892.Spec : Prop :=
  ∀ n, P6809327608564291892.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P3803294598008946308

`A065091(eq[A155067(n+1), A155750(n+1)])`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391801

/-- `A065091(eq[A155067(n+1), A155750(n+1)])` -/
def P3803294598008946308.Spec : Prop :=
  ∀ n, P3803294598008946308.a n = A391801 (n + 1)

theorem P3803294598008946308.correct : P3803294598008946308.Spec := by
  intro n
  simp only [A391801, Nat.add_sub_cancel]

end A391801

/-! ## A391801.P13635055747714604829

`A006093(A391798(n+1))+A001221(A065091(n+1))`
-/

namespace A391801.P13635055747714604829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391798 (n + 1)).toNat + A001221 (A065091 (n + 1)).toNat

end

end A391801.P13635055747714604829

namespace A391801

/-- `A006093(A391798(n+1))+A001221(A065091(n+1))` -/
def P13635055747714604829.Spec : Prop :=
  ∀ n, P13635055747714604829.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P1526500086450538732

`A179184(A008864(n+1))+A006093(A391798(n+1))`
-/

namespace A391801.P1526500086450538732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A008864 (n + 1)).toNat + A006093 (A391798 (n + 1)).toNat

end

end A391801.P1526500086450538732

namespace A391801

/-- `A179184(A008864(n+1))+A006093(A391798(n+1))` -/
def P1526500086450538732.Spec : Prop :=
  ∀ n, P1526500086450538732.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P18033186740472848315

`A006093(A391798(n+1))+A001221(A391800(n+1))`
-/

namespace A391801.P18033186740472848315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391798 (n + 1)).toNat + A001221 (A391800 (n + 1)).toNat

end

end A391801.P18033186740472848315

namespace A391801

/-- `A006093(A391798(n+1))+A001221(A391800(n+1))` -/
def P18033186740472848315.Spec : Prop :=
  ∀ n, P18033186740472848315.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P10783284096324139014

`A006093(A391798(n+1))+A001221(A391802(n+1))`
-/

namespace A391801.P10783284096324139014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391798 (n + 1)).toNat + A001221 (A391802 (n + 1)).toNat

end

end A391801.P10783284096324139014

namespace A391801

/-- `A006093(A391798(n+1))+A001221(A391802(n+1))` -/
def P10783284096324139014.Spec : Prop :=
  ∀ n, P10783284096324139014.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P760351574754419008

`A006093(A391798(n+1))+A001221(A100202(n+1))`
-/

namespace A391801.P760351574754419008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391798 (n + 1)).toNat + A001221 (A100202 (n + 1)).toNat

end

end A391801.P760351574754419008

namespace A391801

/-- `A006093(A391798(n+1))+A001221(A100202(n+1))` -/
def P760351574754419008.Spec : Prop :=
  ∀ n, P760351574754419008.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P12158150324948811984

`A318812(A391802(n+2))+A006093(A391798(n+1))`
-/

namespace A391801.P12158150324948811984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (A391802 (n + 2)).toNat + A006093 (A391798 (n + 1)).toNat

end

end A391801.P12158150324948811984

namespace A391801

/-- `A318812(A391802(n+2))+A006093(A391798(n+1))` -/
def P12158150324948811984.Spec : Prop :=
  ∀ n, P12158150324948811984.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P15775009631101835159

`A065091(eq[0, A261470(1+2*n)])`
-/

namespace A391801.P15775009631101835159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (1 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A391801.P15775009631101835159

namespace A391801

/-- `A065091(eq[0, A261470(1+2*n)])` -/
def P15775009631101835159.Spec : Prop :=
  ∀ n, P15775009631101835159.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P10927081080419451483

`A179775(2*n+3)+A006093(A391798(n+1))`
-/

namespace A391801.P10927081080419451483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (2 * n + 3) + A006093 (A391798 (n + 1)).toNat

end

end A391801.P10927081080419451483

namespace A391801

/-- `A179775(2*n+3)+A006093(A391798(n+1))` -/
def P10927081080419451483.Spec : Prop :=
  ∀ n, P10927081080419451483.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P8768591496926544827

`A179184(A391798(2*(n+1)))+A006093(A391798(n+1))`
-/

namespace A391801.P8768591496926544827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A391798 (2 * (n + 1))).toNat + A006093 (A391798 (n + 1)).toNat

end

end A391801.P8768591496926544827

namespace A391801

/-- `A179184(A391798(2*(n+1)))+A006093(A391798(n+1))` -/
def P8768591496926544827.Spec : Prop :=
  ∀ n, P8768591496926544827.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P10075433872066922122

`A327670(A391800(3*(n+1)))+A006093(A391798(n+1))`
-/

namespace A391801.P10075433872066922122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327670 (A391800 (3 * (n + 1))).toNat + A006093 (A391798 (n + 1)).toNat

end

end A391801.P10075433872066922122

namespace A391801

/-- `A327670(A391800(3*(n+1)))+A006093(A391798(n+1))` -/
def P10075433872066922122.Spec : Prop :=
  ∀ n, P10075433872066922122.a n = A391801 (n + 1)

end A391801

/-! ## A391801.P9910435519889049640

`A341595(A391800(2*(n+1)))+A006093(A391798(n+1))`
-/

namespace A391801.P9910435519889049640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (A391800 (2 * (n + 1))).toNat + A006093 (A391798 (n + 1)).toNat

end

end A391801.P9910435519889049640

namespace A391801

/-- `A341595(A391800(2*(n+1)))+A006093(A391798(n+1))` -/
def P9910435519889049640.Spec : Prop :=
  ∀ n, P9910435519889049640.a n = A391801 (n + 1)

end A391801

/-!
# A391802: Primes indexed by A391799.

The programs for A391802, the canonical program `A391802.P17174835192210781463` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391802 has offset 1).

The definition of A391802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391802.P17174835192210781463

`A000040(A391799(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391802

/-- `A000040(A391799(n+1))` -/
def P17174835192210781463.Spec : Prop :=
  ∀ n, P17174835192210781463.a n = A391802 (n + 1)

theorem P17174835192210781463.correct : P17174835192210781463.Spec := by
  intro n
  simp only [A391802, Nat.add_sub_cancel]

end A391802

/-! ## A391802.P1595990612714588809

`A006093(A391799(n+1))+A001221(A065091(n+1))`
-/

namespace A391802.P1595990612714588809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391799 (n + 1)).toNat + A001221 (A065091 (n + 1)).toNat

end

end A391802.P1595990612714588809

namespace A391802

/-- `A006093(A391799(n+1))+A001221(A065091(n+1))` -/
def P1595990612714588809.Spec : Prop :=
  ∀ n, P1595990612714588809.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P1997333872744241530

`A008578(A391799(1+n)+1)`
-/

namespace A391802.P1997333872744241530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A391799 (1 + n) + 1).toNat

end

end A391802.P1997333872744241530

namespace A391802

/-- `A008578(A391799(1+n)+1)` -/
def P1997333872744241530.Spec : Prop :=
  ∀ n, P1997333872744241530.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P17148916903614690478

`A006093(A391799(n+1))+A001221(A391800(n+1))`
-/

namespace A391802.P17148916903614690478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391799 (n + 1)).toNat + A001221 (A391800 (n + 1)).toNat

end

end A391802.P17148916903614690478

namespace A391802

/-- `A006093(A391799(n+1))+A001221(A391800(n+1))` -/
def P17148916903614690478.Spec : Prop :=
  ∀ n, P17148916903614690478.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P13848841205121114856

`A006093(A391799(n+1))+A001221(A391801(n+1))`
-/

namespace A391802.P13848841205121114856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391799 (n + 1)).toNat + A001221 (A391801 (n + 1)).toNat

end

end A391802.P13848841205121114856

namespace A391802

/-- `A006093(A391799(n+1))+A001221(A391801(n+1))` -/
def P13848841205121114856.Spec : Prop :=
  ∀ n, P13848841205121114856.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P12991247474677564913

`A006093(A391799(n+1))+A001221(A100202(n+1))`
-/

namespace A391802.P12991247474677564913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A391799 (n + 1)).toNat + A001221 (A100202 (n + 1)).toNat

end

end A391802.P12991247474677564913

namespace A391802

/-- `A006093(A391799(n+1))+A001221(A100202(n+1))` -/
def P12991247474677564913.Spec : Prop :=
  ∀ n, P12991247474677564913.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P11119310977043561422

`A179775(2*n+5)+A006093(A391799(n+1))`
-/

namespace A391802.P11119310977043561422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (2 * n + 5) + A006093 (A391799 (n + 1)).toNat

end

end A391802.P11119310977043561422

namespace A391802

/-- `A179775(2*n+5)+A006093(A391799(n+1))` -/
def P11119310977043561422.Spec : Prop :=
  ∀ n, P11119310977043561422.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P7047616786665453031

`A327670(A391800(3*(n+1)))+A006093(A391799(n+1))`
-/

namespace A391802.P7047616786665453031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327670 (A391800 (3 * (n + 1))).toNat + A006093 (A391799 (n + 1)).toNat

end

end A391802.P7047616786665453031

namespace A391802

/-- `A327670(A391800(3*(n+1)))+A006093(A391799(n+1))` -/
def P7047616786665453031.Spec : Prop :=
  ∀ n, P7047616786665453031.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P4603570079594124304

`A341595(A391800(2*(n+1)))+A006093(A391799(n+1))`
-/

namespace A391802.P4603570079594124304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (A391800 (2 * (n + 1))).toNat + A006093 (A391799 (n + 1)).toNat

end

end A391802.P4603570079594124304

namespace A391802

/-- `A341595(A391800(2*(n+1)))+A006093(A391799(n+1))` -/
def P4603570079594124304.Spec : Prop :=
  ∀ n, P4603570079594124304.a n = A391802 (n + 1)

end A391802

/-! ## A391802.P8377098732494564396

`A126168(A391800(3*n+2))+A006093(A391799(n+1))`
-/

namespace A391802.P8377098732494564396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A391800 (3 * n + 2)).toNat + A006093 (A391799 (n + 1)).toNat

end

end A391802.P8377098732494564396

namespace A391802

/-- `A126168(A391800(3*n+2))+A006093(A391799(n+1))` -/
def P8377098732494564396.Spec : Prop :=
  ∀ n, P8377098732494564396.a n = A391802 (n + 1)

end A391802

/-!
# A391803: a(n) = floor(Sum_{k=1..n} n/prime(k)).

The programs for A391803, the canonical program `A391803.P13723493948651600256` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391803 has offset 1).

The definition of A391803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(∑{#}[n, (n+1)/A000040(#+1)])` (program `A391803.P13723493948651600256`, by `A391803.P13723493948651600256.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391803.P13723493948651600256

`floor(∑{#}[n, (n+1)/A000040(#+1)])`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391803

/-- `floor(∑{#}[n, (n+1)/A000040(#+1)])` -/
def P13723493948651600256.Spec : Prop :=
  ∀ n, P13723493948651600256.a n = A391803 (n + 1)

theorem P13723493948651600256.correct : P13723493948651600256.Spec := by
  intro n
  simp only [A391803, Nat.add_sub_cancel]

end A391803

/-! ## A391803.P13621689529039225950

`floor(∑[1/A000040(n+1)]*(n+1))`
-/

namespace A391803.P13621689529039225950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000040 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℚ)⌋

end

end A391803.P13621689529039225950

namespace A391803

/-- `floor(∑[1/A000040(n+1)]*(n+1))` -/
def P13621689529039225950.Spec : Prop :=
  ∀ n, P13621689529039225950.a n = A391803 (n + 1)

end A391803

/-! ## A391803.P418616489699622605

`lt[A351007(n), Δ[A008348(n)]]`
-/

namespace A391803.P418616489699622605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391803.P418616489699622605

namespace A391803

/-- `lt[A351007(n), Δ[A008348(n)]]` -/
def P418616489699622605.Spec : Prop :=
  ∀ n, (P418616489699622605.a n : ℤ) = A391803 (n + 1)

end A391803

/-! ## A391803.P18158389350306528523

`lt[A352514(2*(n+2)), Δ[A008348(n)]]`
-/

namespace A391803.P18158389350306528523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391803.P18158389350306528523

namespace A391803

/-- `lt[A352514(2*(n+2)), Δ[A008348(n)]]` -/
def P18158389350306528523.Spec : Prop :=
  ∀ n, (P18158389350306528523.a n : ℤ) = A391803 (n + 1)

end A391803

/-! ## A391803.P11661793944683353977

`lt[A008348(n), A011772(A034953(n+1))]`
-/

namespace A391803.P11661793944683353977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A034953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391803.P11661793944683353977

namespace A391803

/-- `lt[A008348(n), A011772(A034953(n+1))]` -/
def P11661793944683353977.Spec : Prop :=
  ∀ n, (P11661793944683353977.a n : ℤ) = A391803 (n + 1)

end A391803

/-!
# A391804: a(n) = least prime greater than prime(n)*prime(n+1).

The programs for A391804, the canonical program `A391804.P2522922692948596025` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391804 has offset 1).

The definition of A391804 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391804.P2522922692948596025

`A151800(A006094(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391804

/-- `A151800(A006094(n+1))` -/
def P2522922692948596025.Spec : Prop :=
  ∀ n, P2522922692948596025.a n = A391804 (n + 1)

theorem P2522922692948596025.correct : P2522922692948596025.Spec := by
  intro n
  simp only [A391804, Nat.add_sub_cancel]

end A391804

/-! ## A391804.P18385971489840318204

`A074928(n+1)+A006094(n+1)`
-/

namespace A391804.P18385971489840318204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074928 (n + 1) + A006094 (n + 1)

end

end A391804.P18385971489840318204

namespace A391804

/-- `A074928(n+1)+A006094(n+1)` -/
def P18385971489840318204.Spec : Prop :=
  ∀ n, P18385971489840318204.a n = A391804 (n + 1)

theorem P18385971489840318204.correct : P18385971489840318204.Spec := by
  intro n
  simp only [A391804, Nat.add_sub_cancel, A391804.P18385971489840318204.a, A391804.P2522922692948596025.a, A006094, A006094.P10257567645245129766.a, A074928, A074928.P1039295149223078673.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391804

/-! ## A391804.P6025866729199251715

`A378135(Δ[A007504(n)])`
-/

namespace A391804.P6025866729199251715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (f1 (n + 1) - f1 n).toNat

end

end A391804.P6025866729199251715

namespace A391804

/-- `A378135(Δ[A007504(n)])` -/
def P6025866729199251715.Spec : Prop :=
  ∀ n, P6025866729199251715.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P12220512754408671950

`A378135(record[A051698(n)])`
-/

namespace A391804.P12220512754408671950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391804.P12220512754408671950

namespace A391804

/-- `A378135(record[A051698(n)])` -/
def P12220512754408671950.Spec : Prop :=
  ∀ n, P12220512754408671950.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P15212488979032708327

`A378135(record[A162753(n)])`
-/

namespace A391804.P15212488979032708327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391804.P15212488979032708327

namespace A391804

/-- `A378135(record[A162753(n)])` -/
def P15212488979032708327.Spec : Prop :=
  ∀ n, P15212488979032708327.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P14008933719339266449

`A378135(A000040(1+n))`
-/

namespace A391804.P14008933719339266449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A000040 (1 + n)).toNat

end

end A391804.P14008933719339266449

namespace A391804

/-- `A378135(A000040(1+n))` -/
def P14008933719339266449.Spec : Prop :=
  ∀ n, P14008933719339266449.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P3974631277292687686

`A378135(A008578(n+2))`
-/

namespace A391804.P3974631277292687686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A008578 (n + 2)).toNat

end

end A391804.P3974631277292687686

namespace A391804

/-- `A378135(A008578(n+2))` -/
def P3974631277292687686.Spec : Prop :=
  ∀ n, P3974631277292687686.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P1522522806186151537

`A378135(A182986(n+2))`
-/

namespace A391804.P1522522806186151537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A182986 (n + 2)).toNat

end

end A391804.P1522522806186151537

namespace A391804

/-- `A378135(A182986(n+2))` -/
def P1522522806186151537.Spec : Prop :=
  ∀ n, P1522522806186151537.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P2636120405670219931

`A378135(abs(Δ[A008348(n)]))`
-/

namespace A391804.P2636120405670219931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 |f1 (n + 1) - f1 n|.toNat

end

end A391804.P2636120405670219931

namespace A391804

/-- `A378135(abs(Δ[A008348(n)]))` -/
def P2636120405670219931.Spec : Prop :=
  ∀ n, P2636120405670219931.a n = A391804 (n + 1)

end A391804

/-! ## A391804.P2026106286911009462

`A151800(A391805(n+1))`
-/

namespace A391804.P2026106286911009462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A391805 (n + 1)).toNat

end

end A391804.P2026106286911009462

namespace A391804

/-- `A151800(A391805(n+1))` -/
def P2026106286911009462.Spec : Prop :=
  ∀ n, P2026106286911009462.a n = A391804 (n + 1)

end A391804

/-!
# A391805: a(n) = greatest prime less than prime(n)*prime(n+1).

The programs for A391805, there is no canonical definition to state claims against.
-/

/-! ## A391805.P616207720458472691

`A006094(n+1)-A107058(n+1)`
-/

namespace A391805.P616207720458472691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A107058 (n + 1)

end

end A391805.P616207720458472691

/-! ## A391805.P8531671754704225796

`sqrt(A166329(1+n))-A107058(n+1)`
-/

namespace A391805.P8531671754704225796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (1 + n) : ℝ) - (A107058 (n + 1) : ℝ)

end

end A391805.P8531671754704225796

/-! ## A391805.P4957324629078628814

`A065091(n+1)+A037167(n+1)-A107058(n+1)`
-/

namespace A391805.P4957324629078628814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A037167 (n + 1) - A107058 (n + 1)

end

end A391805.P4957324629078628814

/-! ## A391805.P9806177247994996415

`A291463(n+1)+A001248(n+1)-A107058(n+1)`
-/

namespace A391805.P9806177247994996415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A001248 (n + 1) - A107058 (n + 1)

end

end A391805.P9806177247994996415

/-! ## A391805.P11737949997374767082

`A037165(n+1)+A011974(n+2)-A107058(n+1)`
-/

namespace A391805.P11737949997374767082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A011974 (n + 2) - A107058 (n + 1)

end

end A391805.P11737949997374767082

/-! ## A391805.P14628805910185976761

`record[A116570(n)]-A107058(n+1)`
-/

namespace A391805.P14628805910185976761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A107058 (n + 1)

end

end A391805.P14628805910185976761

/-! ## A391805.P2766605361752179781

`A116570(2*n)-A107058(n+1)`
-/

namespace A391805.P2766605361752179781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) - A107058 (n + 1)

end

end A391805.P2766605361752179781

/-! ## A391805.P14532551068309097692

`A151799(record[A116570(n)])`
-/

namespace A391805.P14532551068309097692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391805.P14532551068309097692

/-! ## A391805.P7339098747349450994

`A151799(A006094(n+1))`
-/

namespace A391805.P7339098747349450994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A006094 (n + 1)).toNat

end

end A391805.P7339098747349450994

/-! ## A391805.P16926360059001628074

`A151799(A391804(n+1))`
-/

namespace A391805.P16926360059001628074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A391804 (n + 1)).toNat

end

end A391805.P16926360059001628074

/-!
# A391806: a(n) = least k such that the sum of the first k odd primes is divisible by n.

The programs for A391806, there is no canonical definition to state claims against.
-/

/-! ## A391806.P3518000203083567862

`A398776(∑[n+1]+1)`
-/

namespace A391806.P3518000203083567862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398776 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A391806.P3518000203083567862

/-!
# A391807: a(n) is the least k such that the residues mod 3 of the primes prime(k), prime(k+1),... include a string of n 1's followed by 2.

The programs for A391807, there is no canonical definition to state claims against.
-/

/-! ## A391807.P13311501022829139043

`A392107(2^(n+2))`
-/

namespace A391807.P13311501022829139043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392107 (2 ^ (n + 2))

end

end A391807.P13311501022829139043

/-! ## A391807.P5879924500894913727

`A247816(n+1)+A227835(A111759(n+1))`
-/

namespace A391807.P5879924500894913727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247816 (n + 1) + A227835 (A111759 (n + 1)).toNat

end

end A391807.P5879924500894913727

/-! ## A391807.P2281303568333677409

`A000720(A390511(n+1))`
-/

namespace A391807.P2281303568333677409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A390511 (n + 1)).toNat

end

end A391807.P2281303568333677409

/-!
# A391809: A Beatty sequence: floor(n*x) for n >= 1 where x = Sum_{n>=0} 1/2^floor(n*x).

The programs for A391809, there is no canonical definition to state claims against.
-/

/-! ## A391809.P17878192944144686897

`floor((n+1)*2^tanh(tanh(2)))`
-/

namespace A391809.P17878192944144686897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (2 : ℝ) ^ (Real.tanh (Real.tanh (2 : ℝ)))⌋

end

end A391809.P17878192944144686897

/-! ## A391809.P16085894930377081561

`floor(3/4*sqrt(5)*(n+1))`
-/

namespace A391809.P16085894930377081561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 4 : ℝ) * Real.sqrt (5 : ℝ) * (n + 1 : ℝ)⌋

end

end A391809.P16085894930377081561

/-! ## A391809.P1928086406297612024

`comp[A057365(A008586(n))]`
-/

namespace A391809.P1928086406297612024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A008586 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A391809.P1928086406297612024

/-! ## A391809.P6793427980074738633

`A002265(A109235(n+1))`
-/

namespace A391809.P6793427980074738633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A109235 (n + 1)).toNat

end

end A391809.P6793427980074738633

/-! ## A391809.P3340836890088761903

`A016789(n)-A352675(n+1)`
-/

namespace A391809.P3340836890088761903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A352675 (n + 1)

end

end A391809.P3340836890088761903

/-! ## A391809.P7997660241777244627

`A329845(n+1)%A005360(n+1)`
-/

namespace A391809.P7997660241777244627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329845 (n + 1)) (A005360 (n + 1))

end

end A391809.P7997660241777244627

/-! ## A391809.P16659279423119581284

`A329845(n+1)+char[A374980(n+3)]`
-/

namespace A391809.P16659279423119581284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374980 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329845 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A391809.P16659279423119581284

/-!
# A391811: a(n) equals half the sum of the squares of the terms in row n of irregular triangle A391810.

The programs for A391811, there is no canonical definition to state claims against.
-/

/-! ## A391811.P16195541614883584608

`A224985(A026633(n))`
-/

namespace A391811.P16195541614883584608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224985 (A026633 n).toNat

end

end A391811.P16195541614883584608

/-! ## A391811.P13042451727534452454

`A046155(2*floor(n/2)+1+floor(A025178(2*n+1)/4))`
-/

namespace A391811.P13042451727534452454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (2 * ⌊(n : ℚ) / 2⌋ + 1 + ⌊(A025178 (2 * n + 1) : ℚ) / 4⌋).toNat

end

end A391811.P13042451727534452454

/-!
# A391813: Continued fraction of the constant x where a(n) = 2 - A391814(n+1) for n >= 0, and A391814 is the binary expansion of x starting with A391814(1) = 1.

The programs for A391813, there is no canonical definition to state claims against.
-/

/-! ## A391813.P11514064167245549297

`2-A391814(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391813.P11514064167245549297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A391814 (n + 1)

end

end A391813.P11514064167245549297

/-! ## A391813.P8428663080040938567

`A328580(A023693(n+1)^ceil(A391814(n+1)/2))`
-/

namespace A391813.P8428663080040938567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 (SequenceMachineLib.roundAway ((A023693 (n + 1) : ℚ) ^ (⌈(A391814 (n + 1) : ℚ) / 2⌉ : ℤ))).toNat

end

end A391813.P8428663080040938567

/-! ## A391813.P18150800085092803261

`A040001(A391814(n+1)+A096689(n+1))`
-/

namespace A391813.P18150800085092803261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A391814 (n + 1) + A096689 (n + 1)).toNat

end

end A391813.P18150800085092803261

/-! ## A391813.P12673997614178362037

`A328580(A226453(n+1)^ceil(A391814(n+1)/2))`
-/

namespace A391813.P12673997614178362037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 (SequenceMachineLib.roundAway ((A226453 (n + 1) : ℚ) ^ (⌈(A391814 (n + 1) : ℚ) / 2⌉ : ℤ))).toNat

end

end A391813.P12673997614178362037

/-! ## A391813.P10474436504350611621

`A328580(A002378(n)^ceil(A391814(n+1)/2))`
-/

namespace A391813.P10474436504350611621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 (SequenceMachineLib.roundAway ((A002378 n : ℚ) ^ (⌈(A391814 (n + 1) : ℚ) / 2⌉ : ℤ))).toNat

end

end A391813.P10474436504350611621

/-!
# A391814: Binary expansion of the constant x where a(n) = 2 - A391813(n-1) for n >= 1, and A391813 is the continued fraction of x starting with A391813(0) = 1.

The programs for A391814, there is no canonical definition to state claims against.
-/

/-! ## A391814.P4197968439743267897

`2-A391813(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391814.P4197968439743267897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A391813 n

end

end A391814.P4197968439743267897

/-! ## A391814.P13540681469343134894

`A056594(col(A391813(n)))`
-/

namespace A391814.P13540681469343134894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.triCol (A391813 n).toNat)

end

end A391814.P13540681469343134894

/-! ## A391814.P13189896184725144916

`A240467(col(A391813(n)))`
-/

namespace A391814.P13189896184725144916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (SequenceMachineLib.triCol (A391813 n).toNat)

end

end A391814.P13189896184725144916

/-! ## A391814.P4158170692487493306

`and(A000328(n), A391813(n))`
-/

namespace A391814.P4158170692487493306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A391813 n)

end

end A391814.P4158170692487493306

/-! ## A391814.P303770756637700063

`and(A001513(n), A391813(n))`
-/

namespace A391814.P303770756637700063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A391813 n)

end

end A391814.P303770756637700063

/-! ## A391814.P8397150963352532163

`and(A001535(n), A391813(n))`
-/

namespace A391814.P8397150963352532163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A391813 n)

end

end A391814.P8397150963352532163

/-! ## A391814.P17821196088855157685

`and(A001546(n), A391813(n))`
-/

namespace A391814.P17821196088855157685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A391813 n)

end

end A391814.P17821196088855157685

/-! ## A391814.P7467054045802905634

`and(A001844(n), A391813(n))`
-/

namespace A391814.P7467054045802905634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A391813 n)

end

end A391814.P7467054045802905634

/-! ## A391814.P6677835457028199875

`and(A001846(n), A391813(n))`
-/

namespace A391814.P6677835457028199875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A391813 n)

end

end A391814.P6677835457028199875

/-! ## A391814.P9548293780709524943

`and(A001848(n), A391813(n))`
-/

namespace A391814.P9548293780709524943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A391813 n)

end

end A391814.P9548293780709524943

/-! ## A391814.P1773259013157750955

`and(A003185(n), A391813(n))`
-/

namespace A391814.P1773259013157750955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A391813 n)

end

end A391814.P1773259013157750955

/-! ## A391814.P16265929009596794245

`and(A004768(n), A391813(n))`
-/

namespace A391814.P16265929009596794245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A391813 n)

end

end A391814.P16265929009596794245

/-! ## A391814.P4804192737446111921

`and(A007204(n), A391813(n))`
-/

namespace A391814.P4804192737446111921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A391813 n)

end

end A391814.P4804192737446111921

/-! ## A391814.P10785948235665634593

`and(A008349(n), A391813(n))`
-/

namespace A391814.P10785948235665634593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A391813 n)

end

end A391814.P10785948235665634593

/-! ## A391814.P7677672715908187151

`and(A008358(n), A391813(n))`
-/

namespace A391814.P7677672715908187151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008358 n) (A391813 n)

end

end A391814.P7677672715908187151

/-! ## A391814.P3727916416963106202

`and(A008362(n), A391813(n))`
-/

namespace A391814.P3727916416963106202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A391813 n)

end

end A391814.P3727916416963106202

/-! ## A391814.P5713846442647732975

`and(A008379(n), A391813(n))`
-/

namespace A391814.P5713846442647732975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A391813 n)

end

end A391814.P5713846442647732975

/-! ## A391814.P3506387115330569108

`and(A008417(n), A391813(n))`
-/

namespace A391814.P3506387115330569108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A391813 n)

end

end A391814.P3506387115330569108

/-! ## A391814.P4259377478568854521

`and(A008421(n), A391813(n))`
-/

namespace A391814.P4259377478568854521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008421 n) (A391813 n)

end

end A391814.P4259377478568854521

/-! ## A391814.P9762676594289521153

`and(A008514(n), A391813(n))`
-/

namespace A391814.P9762676594289521153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A391813 n)

end

end A391814.P9762676594289521153

/-!
# A391817: Number of topological sequences of three dimensional lattice points with index n and depth n - 2.

The programs for A391817, there is no canonical definition to state claims against.
-/

/-! ## A391817.P1650525126987447399

`A387672(A141214(n+3))`
-/

namespace A391817.P1650525126987447399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387672 (A141214 (n + 3)).toNat

end

end A391817.P1650525126987447399

/-! ## A391817.P16619270480399562830

`A387672(A052905(n+3)+2)`
-/

namespace A391817.P16619270480399562830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387672 (A052905 (n + 3) + 2).toNat

end

end A391817.P16619270480399562830

/-! ## A391817.P5147141410310803736

`A387672(A167487(n+5)-10)`
-/

namespace A391817.P5147141410310803736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387672 (A167487 (n + 5) - 10).toNat

end

end A391817.P5147141410310803736

/-!
# A391818: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected, a path of 1's from upper left corner to lower right corner, and no 1 having more than two 1's adjacent.

The programs for A391818, there is no canonical definition to state claims against.
-/

/-! ## A391818.P16805758924386458076

`A125087(A154337(n))`
-/

namespace A391818.P16805758924386458076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125087 (A154337 n).toNat

end

end A391818.P16805758924386458076

/-! ## A391818.P6248753364464153548

`A139338(A176331(n))`
-/

namespace A391818.P6248753364464153548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A176331 n).toNat

end

end A391818.P6248753364464153548

/-! ## A391818.P4588476131080761341

`A196176(A154983(n))`
-/

namespace A391818.P4588476131080761341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (A154983 n).toNat

end

end A391818.P4588476131080761341

/-! ## A391818.P17588138337074535585

`A262816(A174918(n))`
-/

namespace A391818.P17588138337074535585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262816 (A174918 n).toNat

end

end A391818.P17588138337074535585

/-! ## A391818.P6523609993713233974

`A287355(A157192(n))`
-/

namespace A391818.P6523609993713233974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A157192 n).toNat

end

end A391818.P6523609993713233974

/-!
# A391819: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected, all corners 1, and no 1 having more than two 1's adjacent.

The programs for A391819, there is no canonical definition to state claims against.
-/

/-! ## A391819.P17933133325001837509

`A282691(A254414(n))`
-/

namespace A391819.P17933133325001837509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A254414 n).toNat

end

end A391819.P17933133325001837509

/-! ## A391819.P5645770821454429893

`A333749(A376935(n))`
-/

namespace A391819.P5645770821454429893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (A376935 n).toNat

end

end A391819.P5645770821454429893

/-! ## A391819.P11223018161390066737

`A036054(A034368(n+2))`
-/

namespace A391819.P11223018161390066737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036054 (A034368 (n + 2)).toNat

end

end A391819.P11223018161390066737

/-! ## A391819.P6920390706857970233

`A085029(A281988(n+1)+1)`
-/

namespace A391819.P6920390706857970233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085029 (A281988 (n + 1) + 1).toNat

end

end A391819.P6920390706857970233

/-! ## A391819.P6967465805965099121

`A341975(A230819(n+1)+A028326(n))`
-/

namespace A391819.P6967465805965099121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341975 ((A230819 (n + 1) + A028326 n).toNat + 11)

end

end A391819.P6967465805965099121

/-!
# A391820: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected and no 1 having more than two 1's adjacent.

The programs for A391820, there is no canonical definition to state claims against.
-/

/-! ## A391820.P8703883383676948441

`or(A047999(A001703(n)), A360850(n+1))`
-/

namespace A391820.P8703883383676948441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047999 (A001703 n).toNat) (A360850 (n + 1))

end

end A391820.P8703883383676948441

/-! ## A391820.P9302804439005243161

`or(A105593(A088617(2*n)), A360850(n+1))`
-/

namespace A391820.P9302804439005243161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105593 (A088617 (2 * n)).toNat) (A360850 (n + 1))

end

end A391820.P9302804439005243161

/-! ## A391820.P8886424958103569366

`A379476(A255835(2*n+1))+A360850(n+1)`
-/

namespace A391820.P8886424958103569366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (A255835 (2 * n + 1)).toNat + A360850 (n + 1)

end

end A391820.P8886424958103569366

/-!
# A391821: Number of n X n binary arrays with all 1's connected and no 1 having more than two 1's adjacent.

The programs for A391821, there is no canonical definition to state claims against.
-/

/-! ## A391821.P5050300372339469275

`A297664(n+1)+A360200(n+1)+(n+1)²`
-/

namespace A391821.P5050300372339469275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297664 (n + 1) + A360200 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A391821.P5050300372339469275

/-! ## A391821.P819125234730377670

`A391820((n+1)²+n²)`
-/

namespace A391821.P819125234730377670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391820 ((n + 1) ^ 2 + n ^ 2)

end

end A391821.P819125234730377670

/-! ## A391821.P623742668007188425

`A391820(A001844(n))%A214954(3*n+1)`
-/

namespace A391821.P623742668007188425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391820 (A001844 n).toNat) (A214954 (3 * n + 1))

end

end A391821.P623742668007188425

/-! ## A391821.P17390118379408225923

`A391820(A001844(n))%A116481(2*(n+1))`
-/

namespace A391821.P17390118379408225923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391820 (A001844 n).toNat) (A116481 (2 * (n + 1)))

end

end A391821.P17390118379408225923

/-!
# A391823: Array read by antidiagonals: T(m,n) is the number of m X n binary arrays with all 1's connected, a path of 1's from top row to lower right corner, and no 1 having more than two 1's adjacent.

The programs for A391823, there is no canonical definition to state claims against.
-/

/-! ## A391823.P6040392377718986739

`or(A078812(n), A323162(A042167(n)))`
-/

namespace A391823.P6040392377718986739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078812 n) (A323162 (A042167 n).toNat)

end

end A391823.P6040392377718986739

/-!
# A391824: Array read by antidiagonals: T(m,n) is the number of partitions of the vertices of the grid graph P_m X P_n into dominating sets.

The programs for A391824, there is no canonical definition to state claims against.
-/

/-! ## A391824.P15841964516281309577

`1+A180771(C(row(n)+1, 2)+col(n)+1)+A230819(C(row(n)+1, 2)+col(n)+1)/2`
-/

namespace A391824.P15841964516281309577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A180771 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) : ℚ) + (A230819 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A391824.P15841964516281309577

/-! ## A391824.P12264887475280956269

`A339047(A056941(n))+A180771(n+1)`
-/

namespace A391824.P12264887475280956269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339047 (A056941 n).toNat + A180771 (n + 1)

end

end A391824.P12264887475280956269

/-! ## A391824.P18334660369997047638

`A131138(A299067(n+1))+A033999(A185284(n))`
-/

namespace A391824.P18334660369997047638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A299067 (n + 1)).toNat + A033999 (A185284 n).toNat

end

end A391824.P18334660369997047638

/-!
# A391825: Number of partitions of the vertices of the n X n grid graph into dominating sets.

The programs for A391825, there is no canonical definition to state claims against.
-/

/-! ## A391825.P12907277532068385350

`A391824(∑[4*n]+1)`
-/

namespace A391825.P12907277532068385350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A391825.P12907277532068385350

/-!
# A391826: Number of partitions of the vertices of the n-ladder graph into dominating sets.

The programs for A391826, the canonical program `A391826.P2783923816481553111` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391826 has offset 1).

The definition of A391826 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180762, A230813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391826.P2783923816481553111

`1+A180762(n+1)+A230813(n+1)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391826

/-- `1+A180762(n+1)+A230813(n+1)/2` -/
def P2783923816481553111.Spec : Prop :=
  ∀ n, P2783923816481553111.a n = (A391826 (n + 1) : ℚ)

end A391826

/-! ## A391826.P8135156994924123842

`ogf((2-8x+7x^2-13x^3+44x^4-24x^5+8x^6-34x^7+20x^8)/(1-6x+9x^2-3x^3+18x^4-31x^5+6x^6-2x^7+16x^8-8x^9))`
-/

namespace A391826.P8135156994924123842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8, 7, -13, 44, -24, 8, -34, 20] [1, -6, 9, -3, 18, -31, 6, -2, 16, -8] n

end

end A391826.P8135156994924123842

namespace A391826

/-- `ogf((2-8x+7x^2-13x^3+44x^4-24x^5+8x^6-34x^7+20x^8)/(1-6x+9x^2-3x^3+18x^4-31x^5+6x^6-2x^7+16x^8-8x^9))` -/
def P8135156994924123842.Spec : Prop :=
  ∀ n, P8135156994924123842.a n = A391826 (n + 1)

end A391826

/-! ## A391826.P13227521243696495130

`A391824(∑[n+2])`
-/

namespace A391826.P13227521243696495130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391826.P13227521243696495130

namespace A391826

/-- `A391824(∑[n+2])` -/
def P13227521243696495130.Spec : Prop :=
  ∀ n, P13227521243696495130.a n = A391826 (n + 1)

end A391826

/-!
# A391827: Number of partitions of the vertices of the n X 3 grid graph into dominating sets.

The programs for A391827, there is no canonical definition to state claims against.
-/

/-! ## A391827.P4030923309322478349

`1+A180763(n+1)+A230814(n+1)/2`
-/

namespace A391827.P4030923309322478349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A180763 (n + 1) : ℚ) + (A230814 (n + 1) : ℚ) / 2

end

end A391827.P4030923309322478349

/-! ## A391827.P17751708985322266147

`A391824(A167614(1+n))`
-/

namespace A391827.P17751708985322266147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (A167614 (1 + n)).toNat

end

end A391827.P17751708985322266147

/-! ## A391827.P16555776406252270013

`A391824(A373663(n+1))`
-/

namespace A391827.P16555776406252270013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (A373663 (n + 1)).toNat

end

end A391827.P16555776406252270013

/-! ## A391827.P9694997457736947499

`A391824(A034856(n+2))`
-/

namespace A391827.P9694997457736947499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (A034856 (n + 2)).toNat

end

end A391827.P9694997457736947499

/-! ## A391827.P10825409640639736179

`A391824(A000124(n+2)+2)`
-/

namespace A391827.P10825409640639736179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391824 (A000124 (n + 2) + 2).toNat

end

end A391827.P10825409640639736179

/-!
# A391828: Numbers k such that the map k -> k' reaches a nonzero cycle, where k' is the arithmetic derivative.

The programs for A391828, there is no canonical definition to state claims against.
-/

/-! ## A391828.P4482162403341162881

`A348329(n+3)`
-/

namespace A391828.P4482162403341162881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348329 (n + 3)

end

end A391828.P4482162403341162881

/-!
# A391829: a(n) = (1/4) * Sum_{k=0..n} (k+2) * binomial(2*k+2,2*n-2*k+1).

The programs for A391829, the canonical program `A391829.P17037046023141386241` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391829 has offset 0).

The definition of A391829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391829.P17037046023141386241

`ogf((1-x-x^2)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391829

/-- `ogf((1-x-x^2)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))` -/
def P17037046023141386241.Spec : Prop :=
  ∀ n, P17037046023141386241.a n = A391829 n

theorem P17037046023141386241.correct : P17037046023141386241.Spec := by
  intro n
  simp only [A391829]

end A391829

/-! ## A391829.P1900367510917387752

`1/4*∑{#}[n, (#+2)*C(2*#+2, 2*n-2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391829.P1900367510917387752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((∑ k ∈ Finset.range (f1 n + 1), (k + 2) * Nat.choose (2 * k + 2) ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat : ℕ) : ℚ)

end

end A391829.P1900367510917387752

namespace A391829

/-- `1/4*∑{#}[n, (#+2)*C(2*#+2, 2*n-2*#+1)]` -/
def P1900367510917387752.Spec : Prop :=
  ∀ n, P1900367510917387752.a n = (A391829 n : ℚ)

end A391829

/-!
# A391830: a(n) = (1/4) * Sum_{k=0..floor(n/2)} (k+2) * binomial(2*k+2,2*n-4*k+1).

The programs for A391830, the canonical program `A391830.P4852915684543029031` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391830 has offset 0).

The definition of A391830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391830.P4852915684543029031

`ogf((1-x^2-x^3)/(1-4x^2-4x^3+6x^4+4x^5+2x^6+4x^7+5x^8-8x^9+6x^10-4x^11+x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391830

/-- `ogf((1-x^2-x^3)/(1-4x^2-4x^3+6x^4+4x^5+2x^6+4x^7+5x^8-8x^9+6x^10-4x^11+x^12))` -/
def P4852915684543029031.Spec : Prop :=
  ∀ n, P4852915684543029031.a n = A391830 n

theorem P4852915684543029031.correct : P4852915684543029031.Spec := by
  intro n
  simp only [A391830]

end A391830

/-! ## A391830.P8289377257336167222

`1/4*∑{#}[floor(n/2), (#+2)*C(2*#+2, 2*n-4*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391830.P8289377257336167222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 2) * Nat.choose (2 * k + 2) ((2 * n : ℤ) - (4 * k : ℤ) + 1).toNat : ℕ) : ℚ)

end

end A391830.P8289377257336167222

namespace A391830

/-- `1/4*∑{#}[floor(n/2), (#+2)*C(2*#+2, 2*n-4*#+1)]` -/
def P8289377257336167222.Spec : Prop :=
  ∀ n, P8289377257336167222.a n = (A391830 n : ℚ)

end A391830

/-!
# A391831: a(n) = (1/4) * Sum_{k=0..floor(n/3)} (n-2*k+2) * binomial(2*n-4*k+2,2*k+1).

The programs for A391831, the canonical program `A391831.P10335566869908792713` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391831 has offset 0).

The definition of A391831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391831.P10335566869908792713

`ogf((1-x-x^3)/(1-4x+6x^2-8x^3+5x^4+4x^5+2x^6+4x^7+6x^8-4x^9-4x^10+x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391831

/-- `ogf((1-x-x^3)/(1-4x+6x^2-8x^3+5x^4+4x^5+2x^6+4x^7+6x^8-4x^9-4x^10+x^12))` -/
def P10335566869908792713.Spec : Prop :=
  ∀ n, P10335566869908792713.a n = A391831 n

theorem P10335566869908792713.correct : P10335566869908792713.Spec := by
  intro n
  simp only [A391831]

end A391831

/-! ## A391831.P12246177164840667775

`1/4*∑{#}[floor(n/3), (n-2*#+2)*C(2*n-4*#+2, 2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391831.P12246177164840667775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (2 * k : ℤ) + 2) * (Nat.choose ((2 * n : ℤ) - (4 * k : ℤ) + 2).toNat (2 * k + 1) : ℤ) : ℤ) : ℚ)

end

end A391831.P12246177164840667775

namespace A391831

/-- `1/4*∑{#}[floor(n/3), (n-2*#+2)*C(2*n-4*#+2, 2*#+1)]` -/
def P12246177164840667775.Spec : Prop :=
  ∀ n, P12246177164840667775.a n = (A391831 n : ℚ)

end A391831

/-!
# A391832: a(n) = (1/4) * Sum_{k=0..n} (k+2) * 2^k * binomial(2*k+2,2*n-2*k+1).

The programs for A391832, the canonical program `A391832.P644297148870690107` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391832 has offset 0).

The definition of A391832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391832.P644297148870690107

`ogf((1-2x-2x^2)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391832

/-- `ogf((1-2x-2x^2)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))` -/
def P644297148870690107.Spec : Prop :=
  ∀ n, P644297148870690107.a n = A391832 n

theorem P644297148870690107.correct : P644297148870690107.Spec := by
  intro n
  simp only [A391832]

end A391832

/-! ## A391832.P4407364628532799261

`1/4*∑{#}[n, (#+2)*2^#*C(2*#+2, 2*n-2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391832.P4407364628532799261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((∑ k ∈ Finset.range (f1 n + 1), (k + 2) * 2 ^ k * Nat.choose (2 * k + 2) ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat : ℕ) : ℚ)

end

end A391832.P4407364628532799261

namespace A391832

/-- `1/4*∑{#}[n, (#+2)*2^#*C(2*#+2, 2*n-2*#+1)]` -/
def P4407364628532799261.Spec : Prop :=
  ∀ n, P4407364628532799261.a n = (A391832 n : ℚ)

end A391832

/-!
# A391833: a(n) = (1/4) * Sum_{k=0..floor(n/2)} (k+2) * 2^k * binomial(2*k+2,2*n-4*k+1).

The programs for A391833, the canonical program `A391833.P16758744963164107791` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391833 has offset 0).

The definition of A391833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391833.P3949585335461872120

`1/4*∑{#}[floor(n/2), (#+2)*2^#*C(2*#+2, 2*n-4*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391833.P3949585335461872120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 2) * 2 ^ k * Nat.choose (2 * k + 2) ((2 * n : ℤ) - (4 * k : ℤ) + 1).toNat : ℕ) : ℚ)

end

end A391833.P3949585335461872120

namespace A391833

/-- `1/4*∑{#}[floor(n/2), (#+2)*2^#*C(2*#+2, 2*n-4*#+1)]` -/
def P3949585335461872120.Spec : Prop :=
  ∀ n, P3949585335461872120.a n = (A391833 n : ℚ)

end A391833

/-! ## A391833.P16758744963164107791

`ogf((1-2x^2-2x^3)/(1-8x^2-8x^3+24x^4+16x^5-8x^6+32x^7+48x^8-96x^9+96x^10-64x^11+16x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391833

/-- `ogf((1-2x^2-2x^3)/(1-8x^2-8x^3+24x^4+16x^5-8x^6+32x^7+48x^8-96x^9+96x^10-64x^11+16x^12))` -/
def P16758744963164107791.Spec : Prop :=
  ∀ n, P16758744963164107791.a n = A391833 n

theorem P16758744963164107791.correct : P16758744963164107791.Spec := by
  intro n
  simp only [A391833]

end A391833

/-!
# A391834: a(n) = (1/4) * Sum_{k=0..floor(n/3)} (n-2*k+2) * 2^(n-2*k) * binomial(2*n-4*k+2,2*k+1).

The programs for A391834, the canonical program `A391834.P11804289084655282713` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391834 has offset 0).

The definition of A391834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391834.P11804289084655282713

`ogf((1-2x-2x^3)/(1-8x+24x^2-40x^3+32x^4+32x^5-40x^6+32x^7+96x^8-32x^9-64x^10+16x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391834

/-- `ogf((1-2x-2x^3)/(1-8x+24x^2-40x^3+32x^4+32x^5-40x^6+32x^7+96x^8-32x^9-64x^10+16x^12))` -/
def P11804289084655282713.Spec : Prop :=
  ∀ n, P11804289084655282713.a n = A391834 n

theorem P11804289084655282713.correct : P11804289084655282713.Spec := by
  intro n
  simp only [A391834]

end A391834

/-!
# A391835: a(n) = (1/4) * Sum_{k=0..n} (k+2) * 2^(n-k) * binomial(2*k+2,2*n-2*k+1).

The programs for A391835, the canonical program `A391835.P10760615696932101022` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391835 has offset 0).

The definition of A391835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391835.P10760615696932101022

`ogf((1-x-2x^2)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391835

/-- `ogf((1-x-2x^2)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))` -/
def P10760615696932101022.Spec : Prop :=
  ∀ n, P10760615696932101022.a n = A391835 n

theorem P10760615696932101022.correct : P10760615696932101022.Spec := by
  intro n
  simp only [A391835]

end A391835

/-! ## A391835.P6256963367669988026

`1/4*∑{#}[n, (#+2)*2^(n-#)*C(2*#+2, 2*n-2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391835.P6256963367669988026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (∑ k ∈ Finset.range (f1 n + 1), (k + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k + 2) ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat : ℚ))

end

end A391835.P6256963367669988026

namespace A391835

/-- `1/4*∑{#}[n, (#+2)*2^(n-#)*C(2*#+2, 2*n-2*#+1)]` -/
def P6256963367669988026.Spec : Prop :=
  ∀ n, P6256963367669988026.a n = (A391835 n : ℚ)

end A391835

/-!
# A391836: a(n) = (1/4) * Sum_{k=0..floor(n/2)} (k+2) * 2^(n-2*k) * binomial(2*k+2,2*n-4*k+1).

The programs for A391836, the canonical program `A391836.P15819060928129807722` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391836 has offset 0).

The definition of A391836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391836.P15819060928129807722

`ogf((1-x^2-2x^3)/(1-4x^2-8x^3+6x^4+8x^5+20x^6+8x^7+17x^8-40x^9+24x^10-32x^11+16x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391836

/-- `ogf((1-x^2-2x^3)/(1-4x^2-8x^3+6x^4+8x^5+20x^6+8x^7+17x^8-40x^9+24x^10-32x^11+16x^12))` -/
def P15819060928129807722.Spec : Prop :=
  ∀ n, P15819060928129807722.a n = A391836 n

theorem P15819060928129807722.correct : P15819060928129807722.Spec := by
  intro n
  simp only [A391836]

end A391836

/-!
# A391837: a(n) = (1/4) * Sum_{k=0..floor(n/3)} (n-2*k+2) * 2^k * binomial(2*n-4*k+2,2*k+1).

The programs for A391837, the canonical program `A391837.P3713654881852669607` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391837 has offset 0).

The definition of A391837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391837.P3713654881852669607

`ogf((1-x-2x^3)/(1-4x+6x^2-12x^3+9x^4+8x^5+16x^6+16x^7+24x^8-32x^9-32x^10+16x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391837

/-- `ogf((1-x-2x^3)/(1-4x+6x^2-12x^3+9x^4+8x^5+16x^6+16x^7+24x^8-32x^9-32x^10+16x^12))` -/
def P3713654881852669607.Spec : Prop :=
  ∀ n, P3713654881852669607.a n = A391837 n

theorem P3713654881852669607.correct : P3713654881852669607.Spec := by
  intro n
  simp only [A391837]

end A391837

/-! ## A391837.P7452694433820845452

`A238785(A076665(n+1))`
-/

namespace A391837.P7452694433820845452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (A076665 (n + 1)).toNat

end

end A391837.P7452694433820845452

namespace A391837

/-- `A238785(A076665(n+1))` -/
def P7452694433820845452.Spec : Prop :=
  ∀ n, P7452694433820845452.a n = A391837 n

end A391837

/-!
# A391838: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - log(1-x^2)/x) ).

The programs for A391838, there is no canonical definition to state claims against.
-/

/-! ## A391838.P12865677346014650647

`A016727(A007559(n)-1)`
-/

namespace A391838.P12865677346014650647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (A007559 n - 1).toNat

end

end A391838.P12865677346014650647

/-! ## A391838.P8053802134918456385

`floor((A070087(n+9+A381570(n))+6)/21)`
-/

namespace A391838.P8053802134918456385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070087 ((n + 9 : ℤ) + A381570 n).toNat + 6 : ℚ) / 21⌋

end

end A391838.P8053802134918456385

/-!
# A391840: Base 16 sum of digits of prime(n).

The programs for A391840, the canonical program `A391840.P6091312888853669410` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391840 has offset 1).

The definition of A391840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053836, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391840.P6091312888853669410

`A053836(A000040(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A391840

/-- `A053836(A000040(n+1))` -/
def P6091312888853669410.Spec : Prop :=
  ∀ n, P6091312888853669410.a n = A391840 (n + 1)

theorem P6091312888853669410.correct : P6091312888853669410.Spec := by
  intro n
  simp only [A391840, Nat.add_sub_cancel]

end A391840

/-! ## A391840.P2587821655498801208

`A053836(Δ[A007504(n)])`
-/

namespace A391840.P2587821655498801208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (f1 (n + 1) - f1 n).toNat

end

end A391840.P2587821655498801208

namespace A391840

/-- `A053836(Δ[A007504(n)])` -/
def P2587821655498801208.Spec : Prop :=
  ∀ n, P2587821655498801208.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P10539936591248075146

`A053836(record[A051698(n)])`
-/

namespace A391840.P10539936591248075146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391840.P10539936591248075146

namespace A391840

/-- `A053836(record[A051698(n)])` -/
def P10539936591248075146.Spec : Prop :=
  ∀ n, P10539936591248075146.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P1168562006998521065

`A053836(A008578(2+n))`
-/

namespace A391840.P1168562006998521065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A008578 (2 + n)).toNat

end

end A391840.P1168562006998521065

namespace A391840

/-- `A053836(A008578(2+n))` -/
def P1168562006998521065.Spec : Prop :=
  ∀ n, P1168562006998521065.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P17897012960140401183

`A053836(A182986(n+2))`
-/

namespace A391840.P17897012960140401183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A182986 (n + 2)).toNat

end

end A391840.P17897012960140401183

namespace A391840

/-- `A053836(A182986(n+2))` -/
def P17897012960140401183.Spec : Prop :=
  ∀ n, P17897012960140401183.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P15148578019540442327

`A053836(A006093(n+1)+1)`
-/

namespace A391840.P15148578019540442327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A006093 (n + 1) + 1).toNat

end

end A391840.P15148578019540442327

namespace A391840

/-- `A053836(A006093(n+1)+1)` -/
def P15148578019540442327.Spec : Prop :=
  ∀ n, P15148578019540442327.a n = A391840 (n + 1)

theorem P15148578019540442327.correct : P15148578019540442327.Spec := by
  intro n
  simp only [A391840, Nat.add_sub_cancel, A391840.P15148578019540442327.a, A391840.P6091312888853669410.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A053836, A053836.P6566921165131624833.a, A054900, A054900.P10951327238473995848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391840

/-! ## A391840.P11763098082468277170

`A053836(A040976(n+1)+2)`
-/

namespace A391840.P11763098082468277170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A040976 (n + 1) + 2).toNat

end

end A391840.P11763098082468277170

namespace A391840

/-- `A053836(A040976(n+1)+2)` -/
def P11763098082468277170.Spec : Prop :=
  ∀ n, P11763098082468277170.a n = A391840 (n + 1)

theorem P11763098082468277170.correct : P11763098082468277170.Spec := by
  intro n
  simp only [A391840, Nat.add_sub_cancel, A391840.P11763098082468277170.a, A391840.P6091312888853669410.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A053836, A053836.P6566921165131624833.a, A054900, A054900.P10951327238473995848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391840

/-! ## A391840.P7239498105656393353

`A053836(record[A000010(n+1)]+1)`
-/

namespace A391840.P7239498105656393353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A391840.P7239498105656393353

namespace A391840

/-- `A053836(record[A000010(n+1)]+1)` -/
def P7239498105656393353.Spec : Prop :=
  ∀ n, P7239498105656393353.a n = A391840 (n + 1)

end A391840

/-! ## A391840.P12635950188248683936

`A053836(eq[n, A000010(n+1)]+1)`
-/

namespace A391840.P12635950188248683936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A391840.P12635950188248683936

namespace A391840

/-- `A053836(eq[n, A000010(n+1)]+1)` -/
def P12635950188248683936.Spec : Prop :=
  ∀ n, P12635950188248683936.a n = A391840 (n + 1)

end A391840

/-!
# A391842: Integers k such that d(k)*d(k+1) is a divisor of k*(k+1) where d(k) = A000005(k) is the number of divisors of k.

The programs for A391842, there is no canonical definition to state claims against.
-/

/-! ## A391842.P324651530663213305

`A345992(∩[A002378(n), A033950(n+1)])`
-/

namespace A391842.P324651530663213305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345992 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A391842.P324651530663213305

/-!
# A391843: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k+1,3*n-5*k).

The programs for A391843, the canonical program `A391843.P5634738381013263631` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391843 has offset 0).

The definition of A391843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/5), C(#+1, 3*n-5*#)]` (program `A391843.P5634738381013263631`, by `A391843.P5634738381013263631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391843.P16838443535144279414

`ogf((1-x^2)/(1-3x^2+3x^4-x^5-x^6))`
-/

namespace A391843.P16838443535144279414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, 0, -3, 0, 3, -1, -1] n

end

end A391843.P16838443535144279414

namespace A391843

/-- `ogf((1-x^2)/(1-3x^2+3x^4-x^5-x^6))` -/
def P16838443535144279414.Spec : Prop :=
  ∀ n, P16838443535144279414.a n = A391843 n

end A391843

/-! ## A391843.P11493510497588929288

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=1`
-/

namespace A391843.P11493510497588929288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3, 1] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 5) + a (n - 6)

end

end A391843.P11493510497588929288

namespace A391843

/-- `3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P11493510497588929288.Spec : Prop :=
  ∀ n, P11493510497588929288.a n = A391843 n

end A391843

/-! ## A391843.P5634738381013263631

`∑{#}[floor(3*n/5), C(#+1, 3*n-5*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391843

/-- `∑{#}[floor(3*n/5), C(#+1, 3*n-5*#)]` -/
def P5634738381013263631.Spec : Prop :=
  ∀ n, (P5634738381013263631.a n : ℤ) = A391843 n

theorem P5634738381013263631.correct : P5634738381013263631.Spec := by
  intro n
  simp only [A391843]

end A391843

/-! ## A391843.P11512028401842757550

`A017837(3*n+5)`
-/

namespace A391843.P11512028401842757550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (3 * n + 5)

end

end A391843.P11512028401842757550

namespace A391843

/-- `A017837(3*n+5)` -/
def P11512028401842757550.Spec : Prop :=
  ∀ n, P11512028401842757550.a n = A391843 n

end A391843

/-! ## A391843.P1600994405362693478

`A127840(A112414(n)+5)`
-/

namespace A391843.P1600994405362693478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A112414 n + 5).toNat

end

end A391843.P1600994405362693478

namespace A391843

/-- `A127840(A112414(n)+5)` -/
def P1600994405362693478.Spec : Prop :=
  ∀ n, P1600994405362693478.a n = A391843 n

end A391843

/-! ## A391843.P5803718229844865035

`A392271(n)+a(A023444(n))` with `a(0)=1, a(1)=0`
-/

namespace A391843.P5803718229844865035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A392271 n + a (A023444 n).toNat

end

end A391843.P5803718229844865035

namespace A391843

/-- `A392271(n)+a(A023444(n))` -/
def P5803718229844865035.Spec : Prop :=
  ∀ n, P5803718229844865035.a n = A391843 n

end A391843

/-!
# A391844: a(n) = 1 if the least prime not dividing the arithmetic derivative of n is equal to the least prime dividing n, otherwise 0. a(1) = 1 by convention.

The programs for A391844, there is no canonical definition to state claims against.
-/

/-! ## A391844.P8854743082238073042

`Δ[fp[A391845(n+1)]]`
-/

namespace A391844.P8854743082238073042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A391844.P8854743082238073042

/-! ## A391844.P1691561076785971766

`A339661(n+1)^A007814(A101942(n+3))`
-/

namespace A391844.P1691561076785971766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339661 (n + 1) : ℚ) ^ (A007814 (A101942 (n + 3)).toNat : ℤ)

end

end A391844.P1691561076785971766

/-! ## A391844.P12674800387528240909

`A000035(A359465(n+1)+A049616(n+3))`
-/

namespace A391844.P12674800387528240909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359465 (n + 1) + A049616 (n + 3)).toNat

end

end A391844.P12674800387528240909

/-! ## A391844.P14386647566977345465

`col(∏{e}[n+1, -floor(1/#)]+1)^A177886(n+1)`
-/

namespace A391844.P14386647566977345465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1).toNat : ℚ) ^ (A177886 (n + 1) : ℤ)

end

end A391844.P14386647566977345465

/-! ## A391844.P2591252809184711936

`A292628(∏{e}[n+1, -floor(1/#)]+1)^A177886(n+1)`
-/

namespace A391844.P2591252809184711936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292628 (∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1).toNat : ℚ) ^ (A177886 (n + 1) : ℤ)

end

end A391844.P2591252809184711936

/-!
# A391845: Numbers k such that the least prime not dividing the arithmetic derivative of k is equal to the least prime dividing k.

The programs for A391845, there is no canonical definition to state claims against.
-/

/-! ## A391845.P13272879912091407409

`lt[0, A391844(n+1)]+1`
-/

namespace A391845.P13272879912091407409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391845.P13272879912091407409

/-! ## A391845.P10560163536286523958

`eq[1, A391844(1+n)]+1`
-/

namespace A391845.P10560163536286523958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391844 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391845.P10560163536286523958

/-! ## A391845.P8486384576736243118

`∪[2*(2*n+1), A393065(n+1)]`
-/

namespace A391845.P8486384576736243118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391845.P8486384576736243118

/-! ## A391845.P3294237395101539211

`∪[A393065(n+1), A016825(n)]`
-/

namespace A391845.P3294237395101539211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391845.P3294237395101539211

/-! ## A391845.P5920324560748889519

`filter[A359821(n+1), A391844(#)]`
-/

namespace A391845.P5920324560748889519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P5920324560748889519

/-! ## A391845.P7517556413769007914

`filter[A317468(n+1), A391844(#)]`
-/

namespace A391845.P7517556413769007914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P7517556413769007914

/-! ## A391845.P13053545139125443219

`filter[A014528(n), A391844(#)]`
-/

namespace A391845.P13053545139125443219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13053545139125443219

/-! ## A391845.P3855783091641812201

`filter[A042968(n+1), A391844(#)]`
-/

namespace A391845.P3855783091641812201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P3855783091641812201

/-! ## A391845.P1468269908127768065

`filter[A119316(n+1), A391844(#)]`
-/

namespace A391845.P1468269908127768065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P1468269908127768065

/-! ## A391845.P13313483817609958854

`filter[A101513(n+1), A391844(#)]`
-/

namespace A391845.P13313483817609958854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13313483817609958854

/-! ## A391845.P14259807710853990799

`filter[A359794(n+1), A391844(#)]`
-/

namespace A391845.P14259807710853990799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P14259807710853990799

/-! ## A391845.P8540480478930872884

`filter[A387335(n+1), A391844(#)]`
-/

namespace A391845.P8540480478930872884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P8540480478930872884

/-! ## A391845.P548819226798261047

`filter[A047592(n+1), A391844(#)]`
-/

namespace A391845.P548819226798261047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P548819226798261047

/-! ## A391845.P12480264300743703536

`filter[A047588(n+2), A391844(#)]`
-/

namespace A391845.P12480264300743703536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P12480264300743703536

/-! ## A391845.P10935644980196332895

`filter[A065090(n+1), A391844(#)]`
-/

namespace A391845.P10935644980196332895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P10935644980196332895

/-! ## A391845.P9682561377942138676

`filter[A171581(n+1), A391844(#)]`
-/

namespace A391845.P9682561377942138676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P9682561377942138676

/-! ## A391845.P13606612557338182434

`filter[A173905(n+2), A391844(#)]`
-/

namespace A391845.P13606612557338182434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13606612557338182434

/-! ## A391845.P2165083294708747988

`filter[A338924(n+1), A391844(#)]`
-/

namespace A391845.P2165083294708747988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P2165083294708747988

/-! ## A391845.P2828256808810348608

`filter[A073900(n+1), A391844(#)]`
-/

namespace A391845.P2828256808810348608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P2828256808810348608

/-! ## A391845.P13041954326329583785

`filter[A073899(n+1), A391844(#)]`
-/

namespace A391845.P13041954326329583785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A391845.P13041954326329583785

/-!
# A391846: Numbers k such that 11*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391846, there is no canonical definition to state claims against.
-/

/-! ## A391846.P14070609861225309722

`∪[A048718(n), A115803(n+1)]`
-/

namespace A391846.P14070609861225309722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391846.P14070609861225309722

/-!
# A391847: Odd numbers k such that 11*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391847, there is no canonical definition to state claims against.
-/

/-! ## A391847.P11369105083232180137

`∩[2*n+1, A391846(n+1)]`
-/

namespace A391847.P11369105083232180137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391847.P11369105083232180137

/-! ## A391847.P17973140749760874434

`∩[A391846(n+1), A060747(n)]`
-/

namespace A391847.P17973140749760874434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391847.P17973140749760874434

/-! ## A391847.P13975349419444858253

`filter[A391846(1+n), A000035(#)]`
-/

namespace A391847.P13975349419444858253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391847.P13975349419444858253

/-!
# A391849: Odd numbers k such that 13*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391849, there is no canonical definition to state claims against.
-/

/-! ## A391849.P2842516366041004890

`∩[2*n+1, A391848(n+1)]`
-/

namespace A391849.P2842516366041004890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391849.P2842516366041004890

/-! ## A391849.P14534974168097595274

`∩[A391848(n+1), A060747(n)]`
-/

namespace A391849.P14534974168097595274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391849.P14534974168097595274

/-! ## A391849.P5633931271566124667

`∩[A391848(n+1), record[A000265(n+1)]]`
-/

namespace A391849.P5633931271566124667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391849.P5633931271566124667

/-! ## A391849.P13549823415089759953

`∩[A391848(n+1), A395364(A392177(n+1))]`
-/

namespace A391849.P13549823415089759953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (A392177 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391849.P13549823415089759953

/-! ## A391849.P6858540526427079633

`filter[A391848(n+1), A000035(#)]`
-/

namespace A391849.P6858540526427079633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391849.P6858540526427079633

/-!
# A391850: Numbers k such that 15*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391850, there is no canonical definition to state claims against.
-/

/-! ## A391850.P13983523658880746723

`∩[A391744(n+1)%A115772(2*n+1), A391848(n+1)]`
-/

namespace A391850.P13983523658880746723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391744 (n + 1)) (A115772 (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391850.P13983523658880746723

/-! ## A391850.P3529564271389347782

`A391848(n+1)%A340974(2*n+1)`
-/

namespace A391850.P3529564271389347782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391848 (n + 1)) (A340974 (2 * n + 1))

end

end A391850.P3529564271389347782

/-! ## A391850.P784648081499941500

`A391848(n+1)+A000007(A386676(n))`
-/

namespace A391850.P784648081499941500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1) + A000007 (A386676 n).toNat

end

end A391850.P784648081499941500

/-! ## A391850.P12044004799286966589

`A304327(A000230(n))*A391848(n+1)`
-/

namespace A391850.P12044004799286966589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304327 (A000230 n).toNat * A391848 (n + 1)

end

end A391850.P12044004799286966589

/-! ## A391850.P17617410838498960264

`A316439(A008300(n))*A391848(n+1)`
-/

namespace A391850.P17617410838498960264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316439 (A008300 n).toNat * A391848 (n + 1)

end

end A391850.P17617410838498960264

/-!
# A391851: Odd numbers k such that 15*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391851, there is no canonical definition to state claims against.
-/

/-! ## A391851.P1092566191208734565

`∩[A391584(n+1), A391850(n+1)]`
-/

namespace A391851.P1092566191208734565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391851.P1092566191208734565

/-! ## A391851.P6934817630992193092

`∩[2*n+1, A391850(n+1)]`
-/

namespace A391851.P6934817630992193092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391851.P6934817630992193092

/-! ## A391851.P7326619068207963666

`∩[A391850(n+1), A060747(n)]`
-/

namespace A391851.P7326619068207963666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391851.P7326619068207963666

/-! ## A391851.P9161713245745067683

`∩[A391850(n+1), A395364(A392177(n+1))]`
-/

namespace A391851.P9161713245745067683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (A392177 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391851.P9161713245745067683

/-! ## A391851.P12595159027777265498

`filter[A391850(n+1), A000035(#)]`
-/

namespace A391851.P12595159027777265498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391851.P12595159027777265498

/-!
# A391852: Numbers k such that 17*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391852, there is no canonical definition to state claims against.
-/

/-! ## A391852.P14871021739523115129

`∪[A115809(n), A115847(n)]`
-/

namespace A391852.P14871021739523115129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115847 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391852.P14871021739523115129

/-! ## A391852.P1129926785834332558

`∪[A115847(n), A397389(A082841(n))]`
-/

namespace A391852.P1129926785834332558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397389 (A082841 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391852.P1129926785834332558

/-! ## A391852.P3813172465759618301

`lt[A053281(3*n+1), A097159(A303948(n+3))]`
-/

namespace A391852.P3813172465759618301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053281 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097159 (A303948 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391852.P3813172465759618301

/-! ## A391852.P12710481668663299370

`lt[A199973(n+1), A000203(A335485(n+4))]`
-/

namespace A391852.P12710481668663299370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A335485 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391852.P12710481668663299370

/-! ## A391852.P13545073196268117809

`lt[A293216(n+1), A337194(A389082(2*n+5))]`
-/

namespace A391852.P13545073196268117809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (A389082 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391852.P13545073196268117809

/-!
# A391853: Odd numbers k such that 17*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391853, there is no canonical definition to state claims against.
-/

/-! ## A391853.P6753376323069325767

`∩[2*n+1, A391852(n+1)]`
-/

namespace A391853.P6753376323069325767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391853.P6753376323069325767

/-! ## A391853.P18396064587928149055

`∩[A391852(n+1), A060747(n)]`
-/

namespace A391853.P18396064587928149055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391853.P18396064587928149055

/-! ## A391853.P14698151101604362195

`filter[A391852(1+n), A000035(#)]`
-/

namespace A391853.P14698151101604362195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391853.P14698151101604362195

/-! ## A391853.P1061149434358154365

`∩[2*n+1, ∪[A115809(n), A115847(n)]]`
-/

namespace A391853.P1061149434358154365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115809 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115847 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A391853.P1061149434358154365

/-! ## A391853.P13746894142195743843

`record[A028234(A391852(n+5))]`
-/

namespace A391853.P13746894142195743843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A391852 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391853.P13746894142195743843

/-! ## A391853.P10958160978759587932

`eq[char[A391852(n+1)], A006519(3*n+4)]`
-/

namespace A391853.P10958160978759587932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A391853.P10958160978759587932

/-!
# A391854: Numbers k such that 19*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391854, there is no canonical definition to state claims against.
-/

/-! ## A391854.P10067054188801887770

`∩[A391744(n+1), A391858(n+1)]%A345003(2*n+1)`
-/

namespace A391854.P10067054188801887770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345003 (2 * n + 1))

end

end A391854.P10067054188801887770

/-! ## A391854.P17335590218462742421

`∩[A391852(n+1), A391858(n+1)]%A345003(2*n+1)`
-/

namespace A391854.P17335590218462742421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345003 (2 * n + 1))

end

end A391854.P17335590218462742421

/-! ## A391854.P7767413901960775046

`∩[A391852(n+1)%A347657(n+1), A391858(n+1)]`
-/

namespace A391854.P7767413901960775046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391852 (n + 1)) (A347657 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391854.P7767413901960775046

/-! ## A391854.P7107823963023884605

`∩[A391744(n+1)%A334276(2*n+1), A391858(n+1)]`
-/

namespace A391854.P7107823963023884605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391744 (n + 1)) (A334276 (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391854.P7107823963023884605

/-! ## A391854.P16840094997871111833

`∩[A335467(n+1), A391858(n+1)]`
-/

namespace A391854.P16840094997871111833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391854.P16840094997871111833

/-!
# A391855: Odd numbers k such that 19*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391855, there is no canonical definition to state claims against.
-/

/-! ## A391855.P18162089932676276408

`∩[2*n+1, A391854(n+1)]`
-/

namespace A391855.P18162089932676276408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391855.P18162089932676276408

/-! ## A391855.P6044469617831309554

`record[A000265(A391854(n+2))]`
-/

namespace A391855.P6044469617831309554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A391854 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391855.P6044469617831309554

/-! ## A391855.P4153885495810573256

`∩[A391854(n+1), A060747(n)]`
-/

namespace A391855.P4153885495810573256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391855.P4153885495810573256

/-! ## A391855.P10050350424494440060

`filter[A391854(1+n), A000035(#)]`
-/

namespace A391855.P10050350424494440060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391855.P10050350424494440060

/-!
# A391857: Odd numbers k such that 21*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391857, there is no canonical definition to state claims against.
-/

/-! ## A391857.P14327097444656745046

`∩[2*n+1, A391856(n+1)]`
-/

namespace A391857.P14327097444656745046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391857.P14327097444656745046

/-! ## A391857.P8398738448217142509

`∩[A391856(n+1), A060747(n)]`
-/

namespace A391857.P8398738448217142509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391857.P8398738448217142509

/-! ## A391857.P17607210568284805776

`filter[A391856(1+n), A000035(#)]`
-/

namespace A391857.P17607210568284805776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391857.P17607210568284805776

/-!
# A391858: Numbers k such that 25*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391858, there is no canonical definition to state claims against.
-/

/-! ## A391858.P6135362526826667986

`A391854(n+1)%A097159(2*n+1)`
-/

namespace A391858.P6135362526826667986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391854 (n + 1)) (A097159 (2 * n + 1))

end

end A391858.P6135362526826667986

/-! ## A391858.P17894817578427830013

`A391854(n+1)+A288352(A273177(n))`
-/

namespace A391858.P17894817578427830013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1) + A288352 (A273177 n).toNat

end

end A391858.P17894817578427830013

/-! ## A391858.P18208528779284879526

`A391854(n+1)%A000037(A001611(n))`
-/

namespace A391858.P18208528779284879526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391854 (n + 1)) (A000037 (A001611 n).toNat)

end

end A391858.P18208528779284879526

/-! ## A391858.P16065550485757554098

`A391854(n+1)+A010057(A334276(n+1))`
-/

namespace A391858.P16065550485757554098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1) + A010057 (A334276 (n + 1)).toNat

end

end A391858.P16065550485757554098

/-! ## A391858.P15115902815350015551

`A391854(n+1)+A010057(A344995(n+1))`
-/

namespace A391858.P15115902815350015551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1) + A010057 (A344995 (n + 1)).toNat

end

end A391858.P15115902815350015551

/-!
# A391859: Odd numbers k such that 25*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391859, there is no canonical definition to state claims against.
-/

/-! ## A391859.P247795530611015170

`filter[A391858(n+1), #%2]`
-/

namespace A391859.P247795530611015170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A391859.P247795530611015170

/-! ## A391859.P4435643521457168773

`∩[A391858(n+1), A060747(n)]`
-/

namespace A391859.P4435643521457168773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391859.P4435643521457168773

/-! ## A391859.P8339351378221421533

`filter[A391858(n+1), A000035(#)]`
-/

namespace A391859.P8339351378221421533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391859.P8339351378221421533

/-! ## A391859.P12741831192240889014

`∩[n+1+n, A391858(n+1)]+A000007(A032817(n+1))`
-/

namespace A391859.P12741831192240889014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) + A000007 (A032817 (n + 1)).toNat

end

end A391859.P12741831192240889014

/-! ## A391859.P2913724983812257943

`∩[A294748(n+1), A391858(n+1)]`
-/

namespace A391859.P2913724983812257943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391859.P2913724983812257943

/-!
# A391860: Numbers k such that 49*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391860, there is no canonical definition to state claims against.
-/

/-! ## A391860.P10078401618881770320

`lt[A353848(n), A171796(A304442(n))]`
-/

namespace A391860.P10078401618881770320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171796 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P10078401618881770320

/-! ## A391860.P7041088032675408298

`lt[A363726(n), A293076(A226602(n))]`
-/

namespace A391860.P7041088032675408298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293076 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P7041088032675408298

/-! ## A391860.P1988997353886607340

`lt[A347657(n+4), A030433(A298423(n))]`
-/

namespace A391860.P1988997353886607340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (A298423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P1988997353886607340

/-! ## A391860.P3624849189543616287

`lt[A365073(A051712(n+1)), A160497(n+1)]`
-/

namespace A391860.P3624849189543616287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365073 (A051712 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P3624849189543616287

/-! ## A391860.P18293226769467926872

`lt[A263414(2*(n+2)), A051866(A326842(n))]`
-/

namespace A391860.P18293226769467926872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263414 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 (A326842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391860.P18293226769467926872

/-!
# A391861: Odd numbers k such that 49*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391861, there is no canonical definition to state claims against.
-/

/-! ## A391861.P5661417303789161102

`∩[2*n+1, A391860(n+1)]`
-/

namespace A391861.P5661417303789161102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391861.P5661417303789161102

/-! ## A391861.P1775863671234147915

`∩[A391860(n+1), A060747(n)]`
-/

namespace A391861.P1775863671234147915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391861.P1775863671234147915

/-! ## A391861.P4535766493172438387

`filter[A391860(1+n), A000035(#)]`
-/

namespace A391861.P4535766493172438387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391861.P4535766493172438387

/-! ## A391861.P2551277120337961143

`∑[A206778(∑[A068875(n)])]`
-/

namespace A391861.P2551277120337961143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206778 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391861.P2551277120337961143

/-! ## A391861.P1300794518328736441

`∑[A082055(A331874(n+2)-1)]`
-/

namespace A391861.P1300794518328736441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082055 (A331874 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391861.P1300794518328736441

/-!
# A391862: Numbers k that are coprime to A276085(k), where A276085 is the primorial base log-function.

The programs for A391862, there is no canonical definition to state claims against.
-/

/-! ## A391862.P7954269909113733652

`eq[1, A373361(1+n)]+1`
-/

namespace A391862.P7954269909113733652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373361 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391862.P7954269909113733652

/-! ## A391862.P17889250073802102236

`record[(n+1)/A373361(n+1)]`
-/

namespace A391862.P17889250073802102236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A373361 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391862.P17889250073802102236

/-! ## A391862.P9508364192032085671

`lt[A373361(n+1)-2, char[A123667(n+1)]]+1`
-/

namespace A391862.P9508364192032085671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373361 (n + 1) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391862.P9508364192032085671

/-! ## A391862.P10582178153586189565

`eq[1, gcd(n+1, A276085(n+1))]+1`
-/

namespace A391862.P10582178153586189565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276085 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A391862.P10582178153586189565

/-! ## A391862.P8429777467483097733

`eq[1, gcd(n, A276085(A028310(n)))]`
-/

namespace A391862.P8429777467483097733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276085 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391862.P8429777467483097733

/-!
# A391863: Numbers k that are coprime to A276085(k) and that are not divisible by p^p for any prime p, where A276085 is the primorial base log-function.

The programs for A391863, there is no canonical definition to state claims against.
-/

/-! ## A391863.P11409950270662709404

`filter[A048103(n+1), A373361(#)]`
-/

namespace A391863.P11409950270662709404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373361 (f1 j).toNat = 1) n)

end

end A391863.P11409950270662709404

/-! ## A391863.P2197725237833686690

`filter[A391862(n+1), A359550(#)]`
-/

namespace A391863.P2197725237833686690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A391863.P2197725237833686690

/-! ## A391863.P9325524439545911391

`∩[A048103(n+1), A391862(n+1)]`
-/

namespace A391863.P9325524439545911391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P9325524439545911391

/-! ## A391863.P13868033820115117019

`∩[A387181(n+1), A391862(n+1)]`
-/

namespace A391863.P13868033820115117019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P13868033820115117019

/-! ## A391863.P7316482743269780736

`∩[A325368(n+1), A391862(n+1)]`
-/

namespace A391863.P7316482743269780736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P7316482743269780736

/-! ## A391863.P11125896356589173227

`∩[A342521(n+1), A391862(n+1)]`
-/

namespace A391863.P11125896356589173227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391863.P11125896356589173227

/-!
# A391864: Numbers k such that A003415(k) == A276085(k) (mod 2310), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A391864, there is no canonical definition to state claims against.
-/

/-! ## A391864.P16300824083358171815

`eq[A040787(n), A370117(n)]`
-/

namespace A391864.P16300824083358171815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391864.P16300824083358171815

/-! ## A391864.P8818183203266449611

`A369650(n+1)%A050950(n+1)`
-/

namespace A391864.P8818183203266449611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369650 (n + 1)) (A050950 (n + 1))

end

end A391864.P8818183203266449611

/-!
# A391868: Start with the list of positive integers 1,2,3,... . After each integer k, insert k empty positions. Fill these positions, from left to right, with the positive integers in order. Repeat this spacing-and-filling process indefinitely. The sequence consists of the positions of the last occurrence of 1 after each step.

The programs for A391868, the canonical program `A391868.P15801713376637900617` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391868 has offset 1).

The definition of A391868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391868.P15801713376637900617

`a(n-1)+A006893(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391868

/-- `a(n-1)+A006893(n-1)` -/
def P15801713376637900617.Spec : Prop :=
  ∀ n, P15801713376637900617.a n = A391868 (n + 1)

theorem P15801713376637900617.correct : P15801713376637900617.Spec := by
  intro n
  simp only [A391868, Nat.add_sub_cancel]

end A391868

/-! ## A391868.P17169117361142766879

`a(n-1)+A007501(n-2)-1` with `a(0)=1, a(1)=2`
-/

namespace A391868.P17169117361142766879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A007501 (n - 2) - 1

end

end A391868.P17169117361142766879

namespace A391868

/-- `a(n-1)+A007501(n-2)-1` -/
def P17169117361142766879.Spec : Prop :=
  ∀ n, P17169117361142766879.a n = A391868 (n + 1)

end A391868

/-! ## A391868.P11510715680979844550

`∑[C(2+a(n-1), 2)-1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A391868.P11510715680979844550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (Nat.choose (2 + f1 (n - 1)).toNat 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391868.P11510715680979844550

namespace A391868

/-- `∑[C(2+a(n-1), 2)-1]` -/
def P11510715680979844550.Spec : Prop :=
  ∀ n, P11510715680979844550.a n = A391868 (n + 1)

end A391868

/-! ## A391868.P9471935480205731642

`∑[a(n-1)*(a(n-1)+3)/2]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A391868.P9471935480205731642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) * (f1 (n - 1) + 3) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391868.P9471935480205731642

namespace A391868

/-- `∑[a(n-1)*(a(n-1)+3)/2]` -/
def P9471935480205731642.Spec : Prop :=
  ∀ n, P9471935480205731642.a n = (A391868 (n + 1) : ℚ)

end A391868

/-! ## A391868.P1150927321772816082

`∑[row(row(A006893(n+1)))]`
-/

namespace A391868.P1150927321772816082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A006893 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391868.P1150927321772816082

namespace A391868

/-- `∑[row(row(A006893(n+1)))]` -/
def P1150927321772816082.Spec : Prop :=
  ∀ n, (P1150927321772816082.a n : ℤ) = A391868 (n + 1)

end A391868

/-!
# A391870: Records in A210693.

The programs for A391870, there is no canonical definition to state claims against.
-/

/-! ## A391870.P1747087104350818279

`A210693(A391871(n+1))`
-/

namespace A391870.P1747087104350818279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210693 (A391871 (n + 1)).toNat

end

end A391870.P1747087104350818279

/-! ## A391870.P7126467216456466768

`record[A210693(n+1)]`
-/

namespace A391870.P7126467216456466768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391870.P7126467216456466768

/-!
# A391874: Nonsquare integers >= 2 for which the square of its largest prime factor equals the sum of the squares of its other prime factors, with multiplicity.

The programs for A391874, there is no canonical definition to state claims against.
-/

/-! ## A391874.P8397366022196279606

`filter[A390574(n+1), A294936(#)]`
-/

namespace A391874.P8397366022196279606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A391874.P8397366022196279606

/-! ## A391874.P14220706369287963579

`filter[A390574(n+1), A355447(#)]`
-/

namespace A391874.P14220706369287963579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391874.P14220706369287963579

/-! ## A391874.P8744722749393885443

`filter[A390574(n+1), A369048(#)]`
-/

namespace A391874.P8744722749393885443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A391874.P8744722749393885443

/-!
# A391875: a(n) = Sum_{k=0..n} 2^k * binomial(k+2,2) * binomial(2*k,2*(n-k)).

The programs for A391875, the canonical program `A391875.P17277342662208495746` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391875 has offset 0).

The definition of A391875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(#+2, 2)*C(2*#, 2*(n-#))]` (program `A391875.P17277342662208495746`, by `A391875.P17277342662208495746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391875.P17277342662208495746

`∑{#}[n, 2^#*C(#+2, 2)*C(2*#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391875

/-- `∑{#}[n, 2^#*C(#+2, 2)*C(2*#, 2*(n-#))]` -/
def P17277342662208495746.Spec : Prop :=
  ∀ n, (P17277342662208495746.a n : ℤ) = A391875 n

theorem P17277342662208495746.correct : P17277342662208495746.Spec := by
  intro n
  simp only [A391875]

end A391875

/-!
# A391876: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(k+2,2) * binomial(2*k,2*(n-k)).

The programs for A391876, the canonical program `A391876.P13555021781344664279` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391876 has offset 0).

The definition of A391876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391876.P13555021781344664279

`∑{#}[n, 2^(n-#)*C(#+2, 2)*C(2*#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391876

/-- `∑{#}[n, 2^(n-#)*C(#+2, 2)*C(2*#, 2*(n-#))]` -/
def P13555021781344664279.Spec : Prop :=
  ∀ n, P13555021781344664279.a n = (A391876 n : ℚ)

end A391876

/-!
# A391878: The number of vacuously transitive relations on an n-set.

The programs for A391878, the canonical program `A391878.P3023168596662486156` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391878 has offset 0).

The definition of A391878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391878.P3023168596662486156

`2^n*A001831(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391878

/-- `2^n*A001831(n)` -/
def P3023168596662486156.Spec : Prop :=
  ∀ n, P3023168596662486156.a n = A391878 n

theorem P3023168596662486156.correct : P3023168596662486156.Spec := by
  intro n
  simp only [A391878]

end A391878

/-! ## A391878.P10235323926823771964

`∑{#}[n, C(n, #)*(2^#-1)^(n-#)]*A000079(n)`
-/

namespace A391878.P10235323926823771964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * ((2 ^ k : ℤ) - 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) * (A000079 n : ℚ)

end

end A391878.P10235323926823771964

namespace A391878

/-- `∑{#}[n, C(n, #)*(2^#-1)^(n-#)]*A000079(n)` -/
def P10235323926823771964.Spec : Prop :=
  ∀ n, P10235323926823771964.a n = (A391878 n : ℚ)

end A391878

/-! ## A391878.P12376446188424095565

`lcm(A000079(n), A001831(n))`
-/

namespace A391878.P12376446188424095565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001831 n)

end

end A391878.P12376446188424095565

namespace A391878

/-- `lcm(A000079(n), A001831(n))` -/
def P12376446188424095565.Spec : Prop :=
  ∀ n, (P12376446188424095565.a n : ℤ) = A391878 n

end A391878

/-! ## A391878.P16776852846423037019

`A001831(n)*A011782(n+1)`
-/

namespace A391878.P16776852846423037019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n * A011782 (n + 1)

end

end A391878.P16776852846423037019

namespace A391878

/-- `A001831(n)*A011782(n+1)` -/
def P16776852846423037019.Spec : Prop :=
  ∀ n, P16776852846423037019.a n = A391878 n

end A391878

/-! ## A391878.P15183619616002298412

`A001831(n)*A099884(A000217(n))`
-/

namespace A391878.P15183619616002298412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n * A099884 (A000217 n).toNat

end

end A391878.P15183619616002298412

namespace A391878

/-- `A001831(n)*A099884(A000217(n))` -/
def P15183619616002298412.Spec : Prop :=
  ∀ n, P15183619616002298412.a n = A391878 n

end A391878

/-!
# A391879: Numbers k such that A392758(k) = A392758(k + 1), where A392758(k) = number of divisors of k which are not primorials.

The programs for A391879, there is no canonical definition to state claims against.
-/

/-! ## A391879.P5551727002674916844

`eq[A392758(n+1), A392758(n+2)]+1`
-/

namespace A391879.P5551727002674916844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392758 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A391879.P5551727002674916844

/-!
# A391883: a(n) = A000010(n) mod A048865(n).

The programs for A391883, the canonical program `A391883.P2614756072055188463` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391883 has offset 3).

The definition of A391883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391883.P2614756072055188463

`A000010(n+3)%A048865(n+3)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391883

/-- `A000010(n+3)%A048865(n+3)` -/
def P2614756072055188463.Spec : Prop :=
  ∀ n, P2614756072055188463.a n = A391883 (n + 3)

theorem P2614756072055188463.correct : P2614756072055188463.Spec := by
  intro n
  simp only [A391883, Nat.add_sub_cancel]

end A391883

/-!
# A391884: Numbers k such that k^2 - 1 is one of Ramanujan's largely composite numbers (A067128).

The programs for A391884, there is no canonical definition to state claims against.
-/

/-! ## A391884.P12944504358499060510

`A002267(A018350(n+1))`
-/

namespace A391884.P12944504358499060510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A018350 (n + 1)).toNat

end

end A391884.P12944504358499060510

/-! ## A391884.P7208022120608214571

`record[A372328(A363658(n+2)+1)]`
-/

namespace A391884.P7208022120608214571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 (A363658 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391884.P7208022120608214571

/-! ## A391884.P16826737933285876310

`A002267(record[A339367(3*(n+1))+1])`
-/

namespace A391884.P16826737933285876310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391884.P16826737933285876310

/-! ## A391884.P6554515479499587360

`∩[A000040(n+1), A137734(A004394(n+4))]`
-/

namespace A391884.P6554515479499587360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A004394 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391884.P6554515479499587360

/-! ## A391884.P3420958419325748137

`A000040(lt[A127987(n+1), A259180(n+1)]+1)`
-/

namespace A391884.P3420958419325748137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A391884.P3420958419325748137

/-!
# A391885: Numbers m such that the product m*(m+1) has a set of prime divisors, from greatest down to 2, that is missing exactly one prime divisor.

The programs for A391885, there is no canonical definition to state claims against.
-/

/-! ## A391885.P13497082502402990491

`eq[1, A391449(n+1)]+1`
-/

namespace A391885.P13497082502402990491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391885.P13497082502402990491

/-! ## A391885.P11438100226545516234

`eq[1, A079067(A028310(n²+n))]`
-/

namespace A391885.P11438100226545516234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A028310 (n ^ 2 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391885.P11438100226545516234

/-!
# A391886: Array read by downward antidiagonals: A(n,k) = A(n-1,k) + (k+1)*A(n-1,k+1) + k*A(n-1,k-1) with A(n,0) = A(n-1,0) + A(n-1,1), A(0,k) = 1.

The programs for A391886, there is no canonical definition to state claims against.
-/

/-! ## A391886.P1824676214074339961

`A117924(A121757(n))`
-/

namespace A391886.P1824676214074339961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A121757 n).toNat

end

end A391886.P1824676214074339961

/-!
# A391887: Alternately add and multiply the last two terms starting with 2, 1.

The programs for A391887, there is no canonical definition to state claims against.
-/

/-! ## A391887.P8816492982252250899

`A265496(Δ[n²])`
-/

namespace A391887.P8816492982252250899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A391887.P8816492982252250899

/-! ## A391887.P1775792734854341304

`min(A265496(2*n+1), A265496(2*(n+1)))`
-/

namespace A391887.P1775792734854341304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A265496 (2 * n + 1)) (A265496 (2 * (n + 1)))

end

end A391887.P1775792734854341304

/-! ## A391887.P5643698536950682796

`A265496(2*n+1)+A007814(A151573(n))`
-/

namespace A391887.P5643698536950682796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265496 (2 * n + 1) + A007814 (A151573 n).toNat

end

end A391887.P5643698536950682796

/-! ## A391887.P14755308017058319821

`A035343(A035343(n))*A265496(2*n+1)`
-/

namespace A391887.P14755308017058319821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 (A035343 n).toNat * A265496 (2 * n + 1)

end

end A391887.P14755308017058319821

/-! ## A391887.P4267760730763254321

`A265496(2*n+1)/A081408(A160324(n))`
-/

namespace A391887.P4267760730763254321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265496 (2 * n + 1) : ℚ) / (A081408 (A160324 n).toNat : ℚ)

end

end A391887.P4267760730763254321

/-!
# A391888: a(0)=5 and a(n) = n*(a(n-1) + 2) for n > 0.

The programs for A391888, the canonical program `A391888.P18368503689218933571` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391888 has offset 0).

The definition of A391888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+2)` (program `A391888.P18368503689218933571`, by `A391888.P18368503689218933571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391888.P18368503689218933571

`n*(a(n-1)+2)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391888

/-- `n*(a(n-1)+2)` -/
def P18368503689218933571.Spec : Prop :=
  ∀ n, (P18368503689218933571.a n : ℤ) = A391888 n

theorem P18368503689218933571.correct : P18368503689218933571.Spec := by
  intro n
  simp only [A391888]

end A391888

/-! ## A391888.P17027392168143415152

`5*n!+2*∑{#}[n-1, n!/#!]`
-/

namespace A391888.P17027392168143415152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * Nat.factorial n : ℚ) + 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.factorial n : ℚ) / (Nat.factorial k : ℚ))

end

end A391888.P17027392168143415152

namespace A391888

/-- `5*n!+2*∑{#}[n-1, n!/#!]` -/
def P17027392168143415152.Spec : Prop :=
  ∀ n, P17027392168143415152.a n = (A391888 n : ℚ)

end A391888

/-! ## A391888.P18054541164501676262

`(2+a(n-1))*n` with `a(0)=5`
-/

namespace A391888.P18054541164501676262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  (2 + a (n - 1)) * n

end

end A391888.P18054541164501676262

namespace A391888

/-- `(2+a(n-1))*n` -/
def P18054541164501676262.Spec : Prop :=
  ∀ n, (P18054541164501676262.a n : ℤ) = A391888 n

end A391888

/-! ## A391888.P16428897324032199645

`(2-floor(-a(n-1)))*n` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A391888.P16428897324032199645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (2 - (-a (n - 1))) * (n : ℤ)

end

end A391888.P16428897324032199645

namespace A391888

/-- `(2-floor(-a(n-1)))*n` -/
def P16428897324032199645.Spec : Prop :=
  ∀ n, P16428897324032199645.a n = A391888 n

end A391888

/-! ## A391888.P12245705582898737376

`(a(xor(-1, -n))+2)*n` with `a(0)=5`
-/

namespace A391888.P12245705582898737376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  (a (Int.xor (-1) (-(n : ℤ))).toNat + 2) * n

end

end A391888.P12245705582898737376

namespace A391888

/-- `(a(xor(-1, -n))+2)*n` -/
def P12245705582898737376.Spec : Prop :=
  ∀ n, (P12245705582898737376.a n : ℤ) = A391888 n

end A391888

/-! ## A391888.P9626701637832601402

`n*(2-ceil(-a(n-1)))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A391888.P9626701637832601402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A391888.P9626701637832601402

namespace A391888

/-- `n*(2-ceil(-a(n-1)))` -/
def P9626701637832601402.Spec : Prop :=
  ∀ n, P9626701637832601402.a n = A391888 n

end A391888

/-! ## A391888.P2380250268144784039

`n*(2-round(-a(n-1)))` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A391888.P2380250268144784039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) * (2 - (-a (n - 1)))

end

end A391888.P2380250268144784039

namespace A391888

/-- `n*(2-round(-a(n-1)))` -/
def P2380250268144784039.Spec : Prop :=
  ∀ n, P2380250268144784039.a n = A391888 n

end A391888

/-! ## A391888.P7654033291521963166

`(a(n-1)+2)/n^(-1)` with `a(0)=5`
-/

namespace A391888.P7654033291521963166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (a (n - 1) + 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A391888.P7654033291521963166

namespace A391888

/-- `(a(n-1)+2)/n^(-1)` -/
def P7654033291521963166.Spec : Prop :=
  ∀ n, P7654033291521963166.a n = (A391888 n : ℚ)

end A391888

/-! ## A391888.P16656514723295084457

`n*(4-(4/2-a(n-1)))` with `a(0)=5`
-/

namespace A391888.P16656514723295084457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℚ) * (4 - ((4 : ℚ) / 2 - a (n - 1)))

end

end A391888.P16656514723295084457

namespace A391888

/-- `n*(4-(4/2-a(n-1)))` -/
def P16656514723295084457.Spec : Prop :=
  ∀ n, P16656514723295084457.a n = (A391888 n : ℚ)

end A391888

/-! ## A391888.P7969508818078742717

`3*n-n*(1-a(n-1))` with `a(0)=5`
-/

namespace A391888.P7969508818078742717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (3 * n : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A391888.P7969508818078742717

namespace A391888

/-- `3*n-n*(1-a(n-1))` -/
def P7969508818078742717.Spec : Prop :=
  ∀ n, P7969508818078742717.a n = A391888 n

end A391888

/-!
# A391889: a(n) = (7*n)!/(n!*(2*n)!*(4*n)!).

The programs for A391889, the canonical program `A391889.P4388753595049388390` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391889 has offset 0).

The definition of A391889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391889.P4388753595049388390

`C(7*n, 3*n)*C(3*n, n)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391889

/-- `C(7*n, 3*n)*C(3*n, n)` -/
def P4388753595049388390.Spec : Prop :=
  ∀ n, (P4388753595049388390.a n : ℤ) = A391889 n

theorem P4388753595049388390.correct : P4388753595049388390.Spec := by
  intro n
  simp only [A391889]

end A391889

/-! ## A391889.P17218681815961468769

`A004368(n)*A005809(2*n)`
-/

namespace A391889.P17218681815961468769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004368 n * A005809 (2 * n)

end

end A391889.P17218681815961468769

namespace A391889

/-- `A004368(n)*A005809(2*n)` -/
def P17218681815961468769.Spec : Prop :=
  ∀ n, P17218681815961468769.a n = A391889 n

end A391889

/-! ## A391889.P16643896806788093144

`A394724(n)/A000984(n)`
-/

namespace A391889.P16643896806788093144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394724 n : ℚ) / (A000984 n : ℚ)

end

end A391889.P16643896806788093144

namespace A391889

/-- `A394724(n)/A000984(n)` -/
def P16643896806788093144.Spec : Prop :=
  ∀ n, P16643896806788093144.a n = (A391889 n : ℚ)

end A391889

/-! ## A391889.P2656851803972435722

`A394724(n)/A159965(A000217(n))`
-/

namespace A391889.P2656851803972435722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394724 n : ℚ) / (A159965 (A000217 n).toNat : ℚ)

end

end A391889.P2656851803972435722

namespace A391889

/-- `A394724(n)/A159965(A000217(n))` -/
def P2656851803972435722.Spec : Prop :=
  ∀ n, P2656851803972435722.a n = (A391889 n : ℚ)

end A391889

/-!
# A391890: a(n) = Sum_{k=0..n} (k+1) * binomial(2*k+1,2*n-2*k+1).

The programs for A391890, the canonical program `A391890.P4472835384881566263` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391890 has offset 0).

The definition of A391890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*C(2*#+1, 2*n-2*#+1)]` (program `A391890.P4472835384881566263`, by `A391890.P4472835384881566263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391890.P5472056330250731924

`ogf((1+2x-5x^2+2x^3+x^4)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))`
-/

namespace A391890.P5472056330250731924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -5, 2, 1] [1, -4, 2, 0, 11, 0, 2, -4, 1] n

end

end A391890.P5472056330250731924

namespace A391890

/-- `ogf((1+2x-5x^2+2x^3+x^4)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))` -/
def P5472056330250731924.Spec : Prop :=
  ∀ n, P5472056330250731924.a n = A391890 n

end A391890

/-! ## A391890.P4472835384881566263

`∑{#}[n, (#+1)*C(2*#+1, 2*n-2*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391890

/-- `∑{#}[n, (#+1)*C(2*#+1, 2*n-2*#+1)]` -/
def P4472835384881566263.Spec : Prop :=
  ∀ n, (P4472835384881566263.a n : ℤ) = A391890 n

theorem P4472835384881566263.correct : P4472835384881566263.Spec := by
  intro n
  simp only [A391890]

end A391890

/-! ## A391890.P6921018914580554124

`A387573(2*n+3)`
-/

namespace A391890.P6921018914580554124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387573 (2 * n + 3)

end

end A391890.P6921018914580554124

namespace A391890

/-- `A387573(2*n+3)` -/
def P6921018914580554124.Spec : Prop :=
  ∀ n, P6921018914580554124.a n = A391890 n

end A391890

/-! ## A391890.P8419598268209553469

`A391891(n+1)+A381421(n)-A381421(n+1)`
-/

namespace A391890.P8419598268209553469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391891 (n + 1) + (A381421 n - A381421 (n + 1))

end

end A391890.P8419598268209553469

namespace A391890

/-- `A391891(n+1)+A381421(n)-A381421(n+1)` -/
def P8419598268209553469.Spec : Prop :=
  ∀ n, P8419598268209553469.a n = A391890 n

end A391890

/-! ## A391890.P15693425901987605361

`A124369(A084849(n+1))`
-/

namespace A391890.P15693425901987605361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (A084849 (n + 1)).toNat

end

end A391890.P15693425901987605361

namespace A391890

/-- `A124369(A084849(n+1))` -/
def P15693425901987605361.Spec : Prop :=
  ∀ n, P15693425901987605361.a n = A391890 n

end A391890

/-!
# A391891: a(n) = Sum_{k=0..n} (k+1) * binomial(2*k+1,2*n-2*k).

The programs for A391891, the canonical program `A391891.P2805367208412182337` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391891 has offset 0).

The definition of A391891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*C(2*#+1, 2*n-2*#)]` (program `A391891.P2805367208412182337`, by `A391891.P2805367208412182337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391891.P4308983442609408257

`ogf((1-2x+3x^2+2x^3-3x^4)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))`
-/

namespace A391891.P4308983442609408257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, 2, -3] [1, -4, 2, 0, 11, 0, 2, -4, 1] n

end

end A391891.P4308983442609408257

namespace A391891

/-- `ogf((1-2x+3x^2+2x^3-3x^4)/(1-4x+2x^2+11x^4+2x^6-4x^7+x^8))` -/
def P4308983442609408257.Spec : Prop :=
  ∀ n, P4308983442609408257.a n = A391891 n

end A391891

/-! ## A391891.P2805367208412182337

`∑{#}[n, (#+1)*C(2*#+1, 2*n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391891

/-- `∑{#}[n, (#+1)*C(2*#+1, 2*n-2*#)]` -/
def P2805367208412182337.Spec : Prop :=
  ∀ n, (P2805367208412182337.a n : ℤ) = A391891 n

theorem P2805367208412182337.correct : P2805367208412182337.Spec := by
  intro n
  simp only [A391891]

end A391891

/-! ## A391891.P18263766600902140531

`A124369(A130883(n+1))`
-/

namespace A391891.P18263766600902140531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (A130883 (n + 1)).toNat

end

end A391891.P18263766600902140531

namespace A391891

/-- `A124369(A130883(n+1))` -/
def P18263766600902140531.Spec : Prop :=
  ∀ n, P18263766600902140531.a n = A391891 n

end A391891

/-! ## A391891.P12472992494537372053

`A124369(∑[A016813(n)]+1)`
-/

namespace A391891.P12472992494537372053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A391891.P12472992494537372053

namespace A391891

/-- `A124369(∑[A016813(n)]+1)` -/
def P12472992494537372053.Spec : Prop :=
  ∀ n, P12472992494537372053.a n = A391891 n

end A391891

/-! ## A391891.P18011944836772673749

`A124369(∑[A004280(2*(n+1))])`
-/

namespace A391891.P18011944836772673749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124369 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391891.P18011944836772673749

namespace A391891

/-- `A124369(∑[A004280(2*(n+1))])` -/
def P18011944836772673749.Spec : Prop :=
  ∀ n, P18011944836772673749.a n = A391891 n

end A391891

/-!
# A391892: a(n) = Sum_{k=0..n} (k+1) * 2^(n-k) * binomial(2*k+1,2*n-2*k+1).

The programs for A391892, the canonical program `A391892.P8798278820927832801` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391892 has offset 0).

The definition of A391892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391892.P18211754786694965539

`∑{#}[n, (#+1)*2^(n-#)*C(2*#+1, 2*n-2*#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391892.P18211754786694965539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (2 * k : ℤ) + 1).toNat : ℚ)

end

end A391892.P18211754786694965539

namespace A391892

/-- `∑{#}[n, (#+1)*2^(n-#)*C(2*#+1, 2*n-2*#+1)]` -/
def P18211754786694965539.Spec : Prop :=
  ∀ n, P18211754786694965539.a n = (A391892 n : ℚ)

end A391892

/-! ## A391892.P8798278820927832801

`ogf((1+2x-7x^2+4x^3+4x^4)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391892

/-- `ogf((1+2x-7x^2+4x^3+4x^4)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))` -/
def P8798278820927832801.Spec : Prop :=
  ∀ n, P8798278820927832801.a n = A391892 n

theorem P8798278820927832801.correct : P8798278820927832801.Spec := by
  intro n
  simp only [A391892]

end A391892

/-!
# A391893: a(n) = Sum_{k=0..n} (k+1) * 2^(n-k) * binomial(2*k+1,2*n-2*k).

The programs for A391893, the canonical program `A391893.P14910557574650200945` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391893 has offset 0).

The definition of A391893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391893.P12419852280467523903

`∑{#}[n, (#+1)*2^(n-#)*C(2*#+1, 2*n-2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391893.P12419852280467523903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k + 1) ((2 * n : ℤ) - (2 * k : ℤ)).toNat : ℚ)

end

end A391893.P12419852280467523903

namespace A391893

/-- `∑{#}[n, (#+1)*2^(n-#)*C(2*#+1, 2*n-2*#)]` -/
def P12419852280467523903.Spec : Prop :=
  ∀ n, P12419852280467523903.a n = (A391893 n : ℚ)

end A391893

/-! ## A391893.P14910557574650200945

`ogf((1-2x+5x^2+4x^3-12x^4)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391893

/-- `ogf((1-2x+5x^2+4x^3-12x^4)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))` -/
def P14910557574650200945.Spec : Prop :=
  ∀ n, P14910557574650200945.a n = A391893 n

theorem P14910557574650200945.correct : P14910557574650200945.Spec := by
  intro n
  simp only [A391893]

end A391893

/-!
# A391894: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(2*k+1,2*n-2*k+1).

The programs for A391894, the canonical program `A391894.P1295890113962551539` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391894 has offset 0).

The definition of A391894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*2^#*C(2*#+1, 2*n-2*#+1)]` (program `A391894.P1295890113962551539`, by `A391894.P1295890113962551539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391894.P1295890113962551539

`∑{#}[n, (#+1)*2^#*C(2*#+1, 2*n-2*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391894

/-- `∑{#}[n, (#+1)*2^#*C(2*#+1, 2*n-2*#+1)]` -/
def P1295890113962551539.Spec : Prop :=
  ∀ n, (P1295890113962551539.a n : ℤ) = A391894 n

theorem P1295890113962551539.correct : P1295890113962551539.Spec := by
  intro n
  simp only [A391894]

end A391894

/-! ## A391894.P14641035317198950674

`ogf((1+4x-16x^2+8x^3+4x^4)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))`
-/

namespace A391894.P14641035317198950674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -16, 8, 4] [1, -8, 16, -16, 72, -32, 64, -64, 16] n

end

end A391894.P14641035317198950674

namespace A391894

/-- `ogf((1+4x-16x^2+8x^3+4x^4)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))` -/
def P14641035317198950674.Spec : Prop :=
  ∀ n, P14641035317198950674.a n = A391894 n

end A391894

/-! ## A391894.P16290613687125962349

`A391895(n+1)+A390700(n)-A390700(n+1)`
-/

namespace A391894.P16290613687125962349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391895 (n + 1) + (A390700 n - A390700 (n + 1))

end

end A391894.P16290613687125962349

namespace A391894

/-- `A391895(n+1)+A390700(n)-A390700(n+1)` -/
def P16290613687125962349.Spec : Prop :=
  ∀ n, P16290613687125962349.a n = A391894 n

end A391894

/-!
# A391895: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(2*k+1,2*n-2*k).

The programs for A391895, the canonical program `A391895.P5801594733236481767` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391895 has offset 0).

The definition of A391895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*2^#*C(2*#+1, 2*n-2*#)]` (program `A391895.P5801594733236481767`, by `A391895.P5801594733236481767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391895.P5801594733236481767

`∑{#}[n, (#+1)*2^#*C(2*#+1, 2*n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391895

/-- `∑{#}[n, (#+1)*2^#*C(2*#+1, 2*n-2*#)]` -/
def P5801594733236481767.Spec : Prop :=
  ∀ n, (P5801594733236481767.a n : ℤ) = A391895 n

theorem P5801594733236481767.correct : P5801594733236481767.Spec := by
  intro n
  simp only [A391895]

end A391895

/-! ## A391895.P15246670088311445382

`ogf((1-4x+8x^2+8x^3-12x^4)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))`
-/

namespace A391895.P15246670088311445382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 8, 8, -12] [1, -8, 16, -16, 72, -32, 64, -64, 16] n

end

end A391895.P15246670088311445382

namespace A391895

/-- `ogf((1-4x+8x^2+8x^3-12x^4)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))` -/
def P15246670088311445382.Spec : Prop :=
  ∀ n, P15246670088311445382.a n = A391895 n

end A391895

/-!
# A391896: Cubefull numbers with exactly 2 distinct prime factors.

The programs for A391896, there is no canonical definition to state claims against.
-/

/-! ## A391896.P600262807098492256

`∩[A036966(1+n), A391921(n+1)]`
-/

namespace A391896.P600262807098492256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P600262807098492256

/-! ## A391896.P14254000325899186976

`∩[A372695(n+1), A391921(n+1)]`
-/

namespace A391896.P14254000325899186976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P14254000325899186976

/-! ## A391896.P7068241642331699080

`∩[A376936(n+1), A391921(n+1)]`
-/

namespace A391896.P7068241642331699080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P7068241642331699080

/-! ## A391896.P10199911250022554733

`∩[A036966(n+1), A355462(n+1)]`
-/

namespace A391896.P10199911250022554733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P10199911250022554733

/-! ## A391896.P366107877036197954

`∩[A355462(n+1), A372695(n+1)]`
-/

namespace A391896.P366107877036197954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P366107877036197954

/-! ## A391896.P16543159491121226674

`∩[A355462(n+1), A376936(n+1)]`
-/

namespace A391896.P16543159491121226674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P16543159491121226674

/-! ## A391896.P13568155874598370783

`∩[A355462(n+1), A391968(n+1)]`
-/

namespace A391896.P13568155874598370783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P13568155874598370783

/-! ## A391896.P3681465579074626832

`∩[A391921(n+1), A391968(n+1)]`
-/

namespace A391896.P3681465579074626832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P3681465579074626832

/-! ## A391896.P5074115522522671341

`∩[A036966(n+1), A338539(n+1)]`
-/

namespace A391896.P5074115522522671341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P5074115522522671341

/-! ## A391896.P3058928078684393736

`∩[A338539(n+1), A372695(n+1)]`
-/

namespace A391896.P3058928078684393736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391896.P3058928078684393736

/-!
# A391897: Partial products of A063659.

The programs for A391897, there is no canonical definition to state claims against.
-/

/-! ## A391897.P14682103771405356748

`∏[A063659(n+1)]`
-/

namespace A391897.P14682103771405356748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A391897.P14682103771405356748

/-! ## A391897.P15018366309263564135

`∏[A130106(∑[1+n])]`
-/

namespace A391897.P15018366309263564135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130106 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A391897.P15018366309263564135

/-! ## A391897.P6261876778875552096

`A063659(n²+n)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A391897.P6261876778875552096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A063659 (n ^ 2 + n) * a (n - 2)

end

end A391897.P6261876778875552096

/-! ## A391897.P11728178448492491543

`∑{d}[n+1, A130107(#)]*a(n-1)` with `a(0)=1`
-/

namespace A391897.P11728178448492491543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ d ∈ Nat.divisors (f1 n), A130107 d) * a (n - 1)

end

end A391897.P11728178448492491543

/-! ## A391897.P14129800209055493114

`(n+1-A063658(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A391897.P14129800209055493114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) + (1 - A063658 (n + 1))) * a (n - 1)

end

end A391897.P14129800209055493114

/-! ## A391897.P4408696473295839903

`A254520(n+1)/(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A391897.P4408696473295839903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A254520 (n + 1) : ℚ) / (n + 1 : ℚ) * a (n - 1)

end

end A391897.P4408696473295839903

/-! ## A391897.P10285343320224813930

`A130106(∑[n+1])*a(A004273(n)-n)` with `a(0)=1`
-/

namespace A391897.P10285343320224813930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130106 (∑ j ∈ Finset.range (n + 1), f1 j) * a (A004273 n - (n : ℤ)).toNat

end

end A391897.P10285343320224813930

/-!
# A391898: The maximum exponent in the prime factorization of the exponentially noncomposite numbers (A390439).

The programs for A391898, there is no canonical definition to state claims against.
-/

/-! ## A391898.P11018964781191581943

`A051903(A390439(n+1))`
-/

namespace A391898.P11018964781191581943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A390439 (n + 1)).toNat

end

end A391898.P11018964781191581943

/-! ## A391898.P12887467421330442808

`A051903(record[A366994(n+1)])`
-/

namespace A391898.P12887467421330442808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391898.P12887467421330442808

/-! ## A391898.P1708875035046938569

`A067132(record[A366994(n+1)])-1`
-/

namespace A391898.P1708875035046938569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A391898.P1708875035046938569

/-! ## A391898.P16802914358951959881

`val(A328400(record[A366994(n+1)]), 2)`
-/

namespace A391898.P16802914358951959881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A391898.P16802914358951959881

/-! ## A391898.P86286122982772039

`val(A359600(record[A366994(n+1)]), 3)`
-/

namespace A391898.P86286122982772039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359600 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 3

end

end A391898.P86286122982772039

/-! ## A391898.P15498996946833909905

`val(A278254(record[A366994(n+1)]), 4)`
-/

namespace A391898.P15498996946833909905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 4

end

end A391898.P15498996946833909905

/-! ## A391898.P10245971348632565101

`∑{e}[A238745(record[A366994(n+1)]), #]`
-/

namespace A391898.P10245971348632565101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A391898.P10245971348632565101

/-!
# A391899: The maximum exponent in the prime factorization of the exponentially squarefree numbers (A209061).

The programs for A391899, the canonical program `A391899.P10823638519009848898` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391899 has offset 1).

The definition of A391899 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391899.P10823638519009848898

`A051903(A209061(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391899

/-- `A051903(A209061(n+1))` -/
def P10823638519009848898.Spec : Prop :=
  ∀ n, P10823638519009848898.a n = A391899 (n + 1)

theorem P10823638519009848898.correct : P10823638519009848898.Spec := by
  intro n
  simp only [A391899, Nat.add_sub_cancel]

end A391899

/-! ## A391899.P4522224624201310342

`A386468(A209061(1+n))`
-/

namespace A391899.P4522224624201310342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386468 (A209061 (1 + n)).toNat

end

end A391899.P4522224624201310342

namespace A391899

/-- `A386468(A209061(1+n))` -/
def P4522224624201310342.Spec : Prop :=
  ∀ n, P4522224624201310342.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P7872483042408640563

`A051903(record[A383761(n+1)])`
-/

namespace A391899.P7872483042408640563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391899.P7872483042408640563

namespace A391899

/-- `A051903(record[A383761(n+1)])` -/
def P7872483042408640563.Spec : Prop :=
  ∀ n, P7872483042408640563.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P2405025059634121922

`A392278(A209061(C(n+1, n)))`
-/

namespace A391899.P2405025059634121922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392278 (A209061 (Nat.choose (n + 1) n)).toNat

end

end A391899.P2405025059634121922

namespace A391899

/-- `A392278(A209061(C(n+1, n)))` -/
def P2405025059634121922.Spec : Prop :=
  ∀ n, P2405025059634121922.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P10154400829332385171

`A392278(A209061(n+1))%A006137(n)`
-/

namespace A391899.P10154400829332385171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392278 (A209061 (n + 1)).toNat) (A006137 n)

end

end A391899.P10154400829332385171

namespace A391899

/-- `A392278(A209061(n+1))%A006137(n)` -/
def P10154400829332385171.Spec : Prop :=
  ∀ n, P10154400829332385171.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P13053027614786024800

`A392278(A209061(n+1)%A030514(n+1))`
-/

namespace A391899.P13053027614786024800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392278 (Int.tmod (A209061 (n + 1)) (A030514 (n + 1))).toNat

end

end A391899.P13053027614786024800

namespace A391899

/-- `A392278(A209061(n+1)%A030514(n+1))` -/
def P13053027614786024800.Spec : Prop :=
  ∀ n, P13053027614786024800.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P14573440542065523495

`A051903(A386803(n+1)%A340123(n+1))`
-/

namespace A391899.P14573440542065523495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.tmod (A386803 (n + 1)) (A340123 (n + 1))).toNat

end

end A391899.P14573440542065523495

namespace A391899

/-- `A051903(A386803(n+1)%A340123(n+1))` -/
def P14573440542065523495.Spec : Prop :=
  ∀ n, P14573440542065523495.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P9434390051070470243

`A051903(A386803(n+1)%A064668(n+1))`
-/

namespace A391899.P9434390051070470243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.tmod (A386803 (n + 1)) (A064668 (n + 1))).toNat

end

end A391899.P9434390051070470243

namespace A391899

/-- `A051903(A386803(n+1)%A064668(n+1))` -/
def P9434390051070470243.Spec : Prop :=
  ∀ n, P9434390051070470243.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P8527690326527233140

`A392278(lcm(A006530(n+1), A209061(n+1)))`
-/

namespace A391899.P8527690326527233140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392278 (Int.lcm (A006530 (n + 1)) (A209061 (n + 1)))

end

end A391899.P8527690326527233140

namespace A391899

/-- `A392278(lcm(A006530(n+1), A209061(n+1)))` -/
def P8527690326527233140.Spec : Prop :=
  ∀ n, P8527690326527233140.a n = A391899 (n + 1)

end A391899

/-! ## A391899.P4821714108722619211

`A392276(A209061(n+1)^2)`
-/

namespace A391899.P4821714108722619211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392276 (A209061 (n + 1) ^ 2).toNat

end

end A391899.P4821714108722619211

namespace A391899

/-- `A392276(A209061(n+1)^2)` -/
def P4821714108722619211.Spec : Prop :=
  ∀ n, P4821714108722619211.a n = A391899 (n + 1)

end A391899

