import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063300: Dimension of the space of weight n cuspidal newforms for Gamma_1( 27 ).

The programs for A063300, the canonical program `A063300.P4555800188597653628` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063300 has offset 2).

The definition of A063300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063300.P6365462416919088174

`ogf((-1+14x+22x^2+22x^3+7x^4)/(1-x-x^3+x^4))`
-/

namespace A063300.P6365462416919088174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 14, 22, 22, 7] [1, -1, 0, -1, 1] n

end

end A063300.P6365462416919088174

namespace A063300

/-- `ogf((-1+14x+22x^2+22x^3+7x^4)/(1-x-x^3+x^4))` -/
def P6365462416919088174.Spec : Prop :=
  ∀ n, P6365462416919088174.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P4555800188597653628

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=-1, a(1)=13, a(2)=35, a(3)=56, a(4)=77`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063300

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P4555800188597653628.Spec : Prop :=
  ∀ n, P4555800188597653628.a n = A063300 (n + 2)

theorem P4555800188597653628.correct : P4555800188597653628.Spec := by
  intro n
  simp only [A063300, Nat.add_sub_cancel]

end A063300

/-! ## A063300.P1568296633243778613

`8*(A008486(n)-1)-A008576(n)`
-/

namespace A063300.P1568296633243778613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A008486 n - 1) - A008576 n

end

end A063300.P1568296633243778613

namespace A063300

/-- `8*(A008486(n)-1)-A008576(n)` -/
def P1568296633243778613.Spec : Prop :=
  ∀ n, P1568296633243778613.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P4819701902228407924

`record[2*A110185(n)-A219529(n)]`
-/

namespace A063300.P4819701902228407924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110185 n - A219529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063300.P4819701902228407924

namespace A063300

/-- `record[2*A110185(n)-A219529(n)]` -/
def P4819701902228407924.Spec : Prop :=
  ∀ n, P4819701902228407924.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P17857887047211489096

`2*A110185(2*n)-A219529(2*n)`
-/

namespace A063300.P17857887047211489096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110185 (2 * n) - A219529 (2 * n)

end

end A063300.P17857887047211489096

namespace A063300

/-- `2*A110185(2*n)-A219529(2*n)` -/
def P17857887047211489096.Spec : Prop :=
  ∀ n, P17857887047211489096.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P5417982758496063146

`A151973(A008574(n))-A008576(n)`
-/

namespace A063300.P5417982758496063146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (A008574 n).toNat - A008576 n

end

end A063300.P5417982758496063146

namespace A063300

/-- `A151973(A008574(n))-A008576(n)` -/
def P5417982758496063146.Spec : Prop :=
  ∀ n, P5417982758496063146.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P9609861247313809982

`A008586(record[A006370(n)])-A008576(n)`
-/

namespace A063300.P9609861247313809982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A008576 n

end

end A063300.P9609861247313809982

namespace A063300

/-- `A008586(record[A006370(n)])-A008576(n)` -/
def P9609861247313809982.Spec : Prop :=
  ∀ n, P9609861247313809982.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P2420852482913057477

`A111284(A008458(n))-A047480(n+1)`
-/

namespace A063300.P2420852482913057477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A008458 n).toNat - A047480 (n + 1)

end

end A063300.P2420852482913057477

namespace A063300

/-- `A111284(A008458(n))-A047480(n+1)` -/
def P2420852482913057477.Spec : Prop :=
  ∀ n, P2420852482913057477.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P397463604726807395

`A008586(A008458(n)-A040000(n))-A008576(n)`
-/

namespace A063300.P397463604726807395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A008458 n - A040000 n).toNat - A008576 n

end

end A063300.P397463604726807395

namespace A063300

/-- `A008586(A008458(n)-A040000(n))-A008576(n)` -/
def P397463604726807395.Spec : Prop :=
  ∀ n, P397463604726807395.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P186456076737015445

`A008576(A022144(n))-A040015(2*n)`
-/

namespace A063300.P186456076737015445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A022144 n).toNat - A040015 (2 * n)

end

end A063300.P186456076737015445

namespace A063300

/-- `A008576(A022144(n))-A040015(2*n)` -/
def P186456076737015445.Spec : Prop :=
  ∀ n, P186456076737015445.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P13854069872934055959

`A111284(A008458(n))-A002264(A004771(n))`
-/

namespace A063300.P13854069872934055959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A008458 n).toNat - A002264 (A004771 n).toNat

end

end A063300.P13854069872934055959

namespace A063300

/-- `A111284(A008458(n))-A002264(A004771(n))` -/
def P13854069872934055959.Spec : Prop :=
  ∀ n, P13854069872934055959.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P8321027520630498562

`record[A005843(A110185(n))-A219529(n)]`
-/

namespace A063300.P8321027520630498562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A110185 n).toNat - A219529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063300.P8321027520630498562

namespace A063300

/-- `record[A005843(A110185(n))-A219529(n)]` -/
def P8321027520630498562.Spec : Prop :=
  ∀ n, P8321027520630498562.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P12836641364747150583

`A005843(A110185(2*n))-A219529(2*n)`
-/

namespace A063300.P12836641364747150583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A110185 (2 * n)).toNat - A219529 (2 * n)

end

end A063300.P12836641364747150583

namespace A063300

/-- `A005843(A110185(2*n))-A219529(2*n)` -/
def P12836641364747150583.Spec : Prop :=
  ∀ n, P12836641364747150583.a n = A063300 (n + 2)

end A063300

/-! ## A063300.P5763205772755165603

`A072154(A008579(2*n))-(A008576(n)+3)`
-/

namespace A063300.P5763205772755165603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A008579 (2 * n)).toNat - (A008576 n + 3)

end

end A063300.P5763205772755165603

namespace A063300

/-- `A072154(A008579(2*n))-(A008576(n)+3)` -/
def P5763205772755165603.Spec : Prop :=
  ∀ n, P5763205772755165603.a n = A063300 (n + 2)

end A063300

/-!
# A063301: Dimension of the space of weight n cuspidal newforms for Gamma_1( 28 ).

The programs for A063301, the canonical program `A063301.P13015074015793001127` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063301 has offset 2).

The definition of A063301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063301.P13015074015793001127

`ogf((-1+8x+22x^2+36x^3+49x^4+54x^5+53x^6+48x^7+30x^8+20x^9+3x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063301

/-- `ogf((-1+8x+22x^2+36x^3+49x^4+54x^5+53x^6+48x^7+30x^8+20x^9+3x^10)/(1-x^4-x^6+x^10))` -/
def P13015074015793001127.Spec : Prop :=
  ∀ n, P13015074015793001127.a n = A063301 (n + 2)

theorem P13015074015793001127.correct : P13015074015793001127.Spec := by
  intro n
  simp only [A063301, Nat.add_sub_cancel]

end A063301

/-! ## A063301.P2802643989900346227

`A063293(n+2)+A063296(n+2)-A063292(n+2)`
-/

namespace A063301.P2802643989900346227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063293 (n + 2) + (A063296 (n + 2) - A063292 (n + 2))

end

end A063301.P2802643989900346227

namespace A063301

/-- `A063293(n+2)+A063296(n+2)-A063292(n+2)` -/
def P2802643989900346227.Spec : Prop :=
  ∀ n, P2802643989900346227.a n = A063301 (n + 2)

end A063301

/-! ## A063301.P16167814496162689226

`A063302(n+2)+A063325(n+2)-A063314(n+2)`
-/

namespace A063301.P16167814496162689226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063325 (n + 2) - A063314 (n + 2))

end

end A063301.P16167814496162689226

namespace A063301

/-- `A063302(n+2)+A063325(n+2)-A063314(n+2)` -/
def P16167814496162689226.Spec : Prop :=
  ∀ n, P16167814496162689226.a n = A063301 (n + 2)

end A063301

/-!
# A063302: Dimension of the space of weight n cuspidal newforms for Gamma_1( 29 ).

The programs for A063302, the canonical program `A063302.P10176134406005880102` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063302 has offset 2).

The definition of A063302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063302.P10176134406005880102

`ogf((-1+22x+56x^2+91x^3+127x^4+139x^5+141x^6+118x^7+84x^8+49x^9+13x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063302

/-- `ogf((-1+22x+56x^2+91x^3+127x^4+139x^5+141x^6+118x^7+84x^8+49x^9+13x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P10176134406005880102.Spec : Prop :=
  ∀ n, P10176134406005880102.a n = A063302 (n + 2)

theorem P10176134406005880102.correct : P10176134406005880102.Spec := by
  intro n
  simp only [A063302, Nat.add_sub_cancel]

end A063302

/-! ## A063302.P9336685326490512653

`A063304(n+2)+1-A008706(n)`
-/

namespace A063302.P9336685326490512653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (1 - A008706 n)

end

end A063302.P9336685326490512653

namespace A063302

/-- `A063304(n+2)+1-A008706(n)` -/
def P9336685326490512653.Spec : Prop :=
  ∀ n, P9336685326490512653.a n = A063302 (n + 2)

end A063302

/-! ## A063302.P7483690147028682572

`A063304(n+2)+1-A008458(n)+n`
-/

namespace A063302.P7483690147028682572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (1 - A008458 n + (n : ℤ))

end

end A063302.P7483690147028682572

namespace A063302

/-- `A063304(n+2)+1-A008458(n)+n` -/
def P7483690147028682572.Spec : Prop :=
  ∀ n, P7483690147028682572.a n = A063302 (n + 2)

end A063302

/-! ## A063302.P2560092169971809612

`A063304(n+2)+2-A271114(n)+n`
-/

namespace A063302.P2560092169971809612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (2 - A271114 n + (n : ℤ))

end

end A063302.P2560092169971809612

namespace A063302

/-- `A063304(n+2)+2-A271114(n)+n` -/
def P2560092169971809612.Spec : Prop :=
  ∀ n, P2560092169971809612.a n = A063302 (n + 2)

end A063302

/-! ## A063302.P12056882222813720761

`A063304(n+2)-(A080513(n)+A063289(n+2))`
-/

namespace A063302.P12056882222813720761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) - (A080513 n + A063289 (n + 2))

end

end A063302.P12056882222813720761

namespace A063302

/-- `A063304(n+2)-(A080513(n)+A063289(n+2))` -/
def P12056882222813720761.Spec : Prop :=
  ∀ n, P12056882222813720761.a n = A063302 (n + 2)

end A063302

/-! ## A063302.P2973720549448640569

`A063301(n+2)+A063314(n+2)-A063325(n+2)`
-/

namespace A063302.P2973720549448640569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063301 (n + 2) + (A063314 (n + 2) - A063325 (n + 2))

end

end A063302.P2973720549448640569

namespace A063302

/-- `A063301(n+2)+A063314(n+2)-A063325(n+2)` -/
def P2973720549448640569.Spec : Prop :=
  ∀ n, P2973720549448640569.a n = A063302 (n + 2)

end A063302

/-!
# A063303: Dimension of the space of weight n cuspidal newforms for Gamma_1( 30 ).

The programs for A063303, the canonical program `A063303.P5843076304764493434` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063303 has offset 2).

The definition of A063303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063303.P5843076304764493434

`ogf((-1+8x+5x^2+3x^3+13x^4+5x^5+3x^6+9x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063303

/-- `ogf((-1+8x+5x^2+3x^3+13x^4+5x^5+3x^6+9x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P5843076304764493434.Spec : Prop :=
  ∀ n, P5843076304764493434.a n = A063303 (n + 2)

theorem P5843076304764493434.correct : P5843076304764493434.Spec := by
  intro n
  simp only [A063303, Nat.add_sub_cancel]

end A063303

/-! ## A063303.P15755481562121906813

`A063315(n+2)-6*n`
-/

namespace A063303.P15755481562121906813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) - (6 * n : ℤ)

end

end A063303.P15755481562121906813

namespace A063303

/-- `A063315(n+2)-6*n` -/
def P15755481562121906813.Spec : Prop :=
  ∀ n, P15755481562121906813.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P990565597252639525

`A063339(n+2)-A008606(n)`
-/

namespace A063303.P990565597252639525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) - A008606 n

end

end A063303.P990565597252639525

namespace A063303

/-- `A063339(n+2)-A008606(n)` -/
def P990565597252639525.Spec : Prop :=
  ∀ n, P990565597252639525.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P17811574185110073368

`A063351(n+2)-A044102(n)`
-/

namespace A063303.P17811574185110073368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063351 (n + 2) - A044102 n

end

end A063303.P17811574185110073368

namespace A063303

/-- `A063351(n+2)-A044102(n)` -/
def P17811574185110073368.Spec : Prop :=
  ∀ n, P17811574185110073368.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P3738886001904323535

`A063315(n+2)+1-A016921(n)`
-/

namespace A063303.P3738886001904323535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + 1 - A016921 n

end

end A063303.P3738886001904323535

namespace A063303

/-- `A063315(n+2)+1-A016921(n)` -/
def P3738886001904323535.Spec : Prop :=
  ∀ n, P3738886001904323535.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P2072605999561651707

`A063339(n+2)-2*A008594(n)`
-/

namespace A063303.P2072605999561651707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) - 2 * A008594 n

end

end A063303.P2072605999561651707

namespace A063303

/-- `A063339(n+2)-2*A008594(n)` -/
def P2072605999561651707.Spec : Prop :=
  ∀ n, P2072605999561651707.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P14953622224987477462

`ceil(A063315(n+2)-sqrt(A016910(n)))`
-/

namespace A063303.P14953622224987477462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063315 (n + 2) : ℝ) - Real.sqrt (A016910 n : ℝ)⌉

end

end A063303.P14953622224987477462

namespace A063303

/-- `ceil(A063315(n+2)-sqrt(A016910(n)))` -/
def P14953622224987477462.Spec : Prop :=
  ∀ n, P14953622224987477462.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P6440657505657886765

`A063315(n+2)+A008588(n)-A008594(n)`
-/

namespace A063303.P6440657505657886765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + A008588 n - A008594 n

end

end A063303.P6440657505657886765

namespace A063303

/-- `A063315(n+2)+A008588(n)-A008594(n)` -/
def P6440657505657886765.Spec : Prop :=
  ∀ n, P6440657505657886765.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P2311744328800698561

`A249674(n)+A063315(n+2)-A044102(n)`
-/

namespace A063303.P2311744328800698561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063315 (n + 2) - A044102 n

end

end A063303.P2311744328800698561

namespace A063303

/-- `A249674(n)+A063315(n+2)-A044102(n)` -/
def P2311744328800698561.Spec : Prop :=
  ∀ n, P2311744328800698561.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P2158628601993943473

`A063315(n+2)-A005843(n)-A005843(n)-A005843(n)`
-/

namespace A063303.P2158628601993943473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) - A005843 n - A005843 n - A005843 n

end

end A063303.P2158628601993943473

namespace A063303

/-- `A063315(n+2)-A005843(n)-A005843(n)-A005843(n)` -/
def P2158628601993943473.Spec : Prop :=
  ∀ n, P2158628601993943473.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P4302160941478711329

`A063315(n+2)+6-A008588(n+1)`
-/

namespace A063303.P4302160941478711329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + 6 - A008588 (n + 1)

end

end A063303.P4302160941478711329

namespace A063303

/-- `A063315(n+2)+6-A008588(n+1)` -/
def P4302160941478711329.Spec : Prop :=
  ∀ n, P4302160941478711329.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P13265336134032208549

`A063339(n+2)-A008594(2*n)`
-/

namespace A063303.P13265336134032208549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) - A008594 (2 * n)

end

end A063303.P13265336134032208549

namespace A063303

/-- `A063339(n+2)-A008594(2*n)` -/
def P13265336134032208549.Spec : Prop :=
  ∀ n, P13265336134032208549.a n = A063303 (n + 2)

end A063303

/-! ## A063303.P7126688829263254335

`A063343(n+2)-A063942(2*n+1)-A008588(A008588(n))`
-/

namespace A063303.P7126688829263254335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063343 (n + 2) - A063942 (2 * n + 1) - A008588 (A008588 n).toNat

end

end A063303.P7126688829263254335

namespace A063303

/-- `A063343(n+2)-A063942(2*n+1)-A008588(A008588(n))` -/
def P7126688829263254335.Spec : Prop :=
  ∀ n, P7126688829263254335.a n = A063303 (n + 2)

end A063303

/-!
# A063304: Dimension of the space of weight n cuspidal newforms for Gamma_1( 31 ).

The programs for A063304, the canonical program `A063304.P96353603920478857` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063304 has offset 2).

The definition of A063304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063304.P96353603920478857

`ogf((-1+26x+65x^2+105x^3+146x^4+159x^5+161x^6+134x^7+95x^8+55x^9+14x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063304

/-- `ogf((-1+26x+65x^2+105x^3+146x^4+159x^5+161x^6+134x^7+95x^8+55x^9+14x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P96353603920478857.Spec : Prop :=
  ∀ n, P96353603920478857.a n = A063304 (n + 2)

theorem P96353603920478857.correct : P96353603920478857.Spec := by
  intro n
  simp only [A063304, Nat.add_sub_cancel]

end A063304

/-! ## A063304.P1572749382362458749

`A063302(n+2)+A008706(n)-1`
-/

namespace A063304.P1572749382362458749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A008706 n - 1)

end

end A063304.P1572749382362458749

namespace A063304

/-- `A063302(n+2)+A008706(n)-1` -/
def P1572749382362458749.Spec : Prop :=
  ∀ n, P1572749382362458749.a n = A063304 (n + 2)

end A063304

/-! ## A063304.P220074489454925596

`A063296(n+2)+A063305(n+2)+1`
-/

namespace A063304.P220074489454925596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063296 (n + 2) + (A063305 (n + 2) + 1)

end

end A063304.P220074489454925596

namespace A063304

/-- `A063296(n+2)+A063305(n+2)+1` -/
def P220074489454925596.Spec : Prop :=
  ∀ n, P220074489454925596.a n = A063304 (n + 2)

end A063304

/-! ## A063304.P411040228518687080

`A063302(n+2)+A008458(n)-(n+1)`
-/

namespace A063304.P411040228518687080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A008458 n - (n + 1 : ℤ))

end

end A063304.P411040228518687080

namespace A063304

/-- `A063302(n+2)+A008458(n)-(n+1)` -/
def P411040228518687080.Spec : Prop :=
  ∀ n, P411040228518687080.a n = A063304 (n + 2)

end A063304

/-! ## A063304.P2025304915187365878

`A063296(n+2)+A063313(n+2)-A063297(n+2)`
-/

namespace A063304.P2025304915187365878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063296 (n + 2) + (A063313 (n + 2) - A063297 (n + 2))

end

end A063304.P2025304915187365878

namespace A063304

/-- `A063296(n+2)+A063313(n+2)-A063297(n+2)` -/
def P2025304915187365878.Spec : Prop :=
  ∀ n, P2025304915187365878.a n = A063304 (n + 2)

end A063304

/-! ## A063304.P9325115610524021575

`A063293(n+2)+A063340(n+2)-A063365(n+2)`
-/

namespace A063304.P9325115610524021575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063293 (n + 2) + (A063340 (n + 2) - A063365 (n + 2))

end

end A063304.P9325115610524021575

namespace A063304

/-- `A063293(n+2)+A063340(n+2)-A063365(n+2)` -/
def P9325115610524021575.Spec : Prop :=
  ∀ n, P9325115610524021575.a n = A063304 (n + 2)

end A063304

/-! ## A063304.P957965865457994657

`A063302(n+2)+A008486(A005843(n))-(n+1)`
-/

namespace A063304.P957965865457994657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A008486 (A005843 n).toNat - (n + 1 : ℤ))

end

end A063304.P957965865457994657

namespace A063304

/-- `A063302(n+2)+A008486(A005843(n))-(n+1)` -/
def P957965865457994657.Spec : Prop :=
  ∀ n, P957965865457994657.a n = A063304 (n + 2)

end A063304

/-!
# A063305: Dimension of the space S_n^{new}(Gamma_1(32)) of weight n cuspidal newforms for Gamma_1( 32 ).

The programs for A063305, the canonical program `A063305.P10382220479113917782` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063305 has offset 2).

The definition of A063305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063305.P10382220479113917782

`ogf((-1+15x+4x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063305

/-- `ogf((-1+15x+4x^2)/(1-2x+x^2))` -/
def P10382220479113917782.Spec : Prop :=
  ∀ n, P10382220479113917782.a n = A063305 (n + 2)

theorem P10382220479113917782.correct : P10382220479113917782.Spec := by
  intro n
  simp only [A063305, Nat.add_sub_cancel]

end A063305

/-!
# A063306: Dimension of the space of weight n cuspidal newforms for Gamma_1( 33 ).

The programs for A063306, the canonical program `A063306.P9472407110758922280` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063306 has offset 2).

The definition of A063306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063306.P9472407110758922280

`ogf((-1+20x+31x^2+29x^3+51x^4+39x^5+29x^6+31x^7+6x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063306

/-- `ogf((-1+20x+31x^2+29x^3+51x^4+39x^5+29x^6+31x^7+6x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P9472407110758922280.Spec : Prop :=
  ∀ n, P9472407110758922280.a n = A063306 (n + 2)

theorem P9472407110758922280.correct : P9472407110758922280.Spec := by
  intro n
  simp only [A063306, Nat.add_sub_cancel]

end A063306

/-! ## A063306.P2384848320995532210

`A063294(n+2)+A063305(n+2)+1`
-/

namespace A063306.P2384848320995532210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063305 (n + 2) + 1)

end

end A063306.P2384848320995532210

namespace A063306

/-- `A063294(n+2)+A063305(n+2)+1` -/
def P2384848320995532210.Spec : Prop :=
  ∀ n, P2384848320995532210.a n = A063306 (n + 2)

end A063306

/-! ## A063306.P17112050713547736131

`A063294(n+2)+A063304(n+2)-A063296(n+2)`
-/

namespace A063306.P17112050713547736131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063304 (n + 2) - A063296 (n + 2))

end

end A063306.P17112050713547736131

namespace A063306

/-- `A063294(n+2)+A063304(n+2)-A063296(n+2)` -/
def P17112050713547736131.Spec : Prop :=
  ∀ n, P17112050713547736131.a n = A063306 (n + 2)

end A063306

/-! ## A063306.P17937613978559444237

`A063294(n+2)+A063313(n+2)-A063297(n+2)`
-/

namespace A063306.P17937613978559444237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063313 (n + 2) - A063297 (n + 2))

end

end A063306.P17937613978559444237

namespace A063306

/-- `A063294(n+2)+A063313(n+2)-A063297(n+2)` -/
def P17937613978559444237.Spec : Prop :=
  ∀ n, P17937613978559444237.a n = A063306 (n + 2)

end A063306

/-! ## A063306.P18313030005534373616

`A063288(n+2)+record[A006370(n)]+A063305(n+2)+1`
-/

namespace A063306.P18313030005534373616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A063305 (n + 2) + 1)

end

end A063306.P18313030005534373616

namespace A063306

/-- `A063288(n+2)+record[A006370(n)]+A063305(n+2)+1` -/
def P18313030005534373616.Spec : Prop :=
  ∀ n, P18313030005534373616.a n = A063306 (n + 2)

end A063306

/-! ## A063306.P14407551084248960626

`A063288(n+2)+A004275(3*n)+A063305(n+2)+1`
-/

namespace A063306.P14407551084248960626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + A004275 (3 * n) + (A063305 (n + 2) + 1)

end

end A063306.P14407551084248960626

namespace A063306

/-- `A063288(n+2)+A004275(3*n)+A063305(n+2)+1` -/
def P14407551084248960626.Spec : Prop :=
  ∀ n, P14407551084248960626.a n = A063306 (n + 2)

end A063306

/-!
# A063307: Dimension of the space of weight n cuspidal newforms for Gamma_1( 34 ).

The programs for A063307, the canonical program `A063307.P894075395257273104` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063307 has offset 2).

The definition of A063307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063307.P894075395257273104

`ogf((-1+11x+24x^2+36x^3+49x^4+49x^5+49x^6+35x^7+24x^8+10x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063307

/-- `ogf((-1+11x+24x^2+36x^3+49x^4+49x^5+49x^6+35x^7+24x^8+10x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P894075395257273104.Spec : Prop :=
  ∀ n, P894075395257273104.a n = A063307 (n + 2)

theorem P894075395257273104.correct : P894075395257273104.Spec := by
  intro n
  simp only [A063307, Nat.add_sub_cancel]

end A063307

/-! ## A063307.P9461509141047444631

`A063311(2+n)-3*n`
-/

namespace A063307.P9461509141047444631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (2 + n) - (3 * n : ℤ)

end

end A063307.P9461509141047444631

namespace A063307

/-- `A063311(2+n)-3*n` -/
def P9461509141047444631.Spec : Prop :=
  ∀ n, P9461509141047444631.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P13929725571922590265

`A063299(n+2)+5*n`
-/

namespace A063307.P13929725571922590265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (5 * n : ℤ)

end

end A063307.P13929725571922590265

namespace A063307

/-- `A063299(n+2)+5*n` -/
def P13929725571922590265.Spec : Prop :=
  ∀ n, P13929725571922590265.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P2914694743014743009

`A063295(n+2)+7*n`
-/

namespace A063307.P2914694743014743009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (7 * n : ℤ)

end

end A063307.P2914694743014743009

namespace A063307

/-- `A063295(n+2)+7*n` -/
def P2914694743014743009.Spec : Prop :=
  ∀ n, P2914694743014743009.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P7563406015170575724

`A063287(n+2)+10*n`
-/

namespace A063307.P7563406015170575724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (10 * n : ℤ)

end

end A063307.P7563406015170575724

namespace A063307

/-- `A063287(n+2)+10*n` -/
def P7563406015170575724.Spec : Prop :=
  ∀ n, P7563406015170575724.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P2480477106532614943

`A063283(n+2)+11*n`
-/

namespace A063307.P2480477106532614943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + (11 * n : ℤ)

end

end A063307.P2480477106532614943

namespace A063307

/-- `A063283(n+2)+11*n` -/
def P2480477106532614943.Spec : Prop :=
  ∀ n, P2480477106532614943.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P9953343789329517611

`A063319(n+2)-10*n`
-/

namespace A063307.P9953343789329517611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - (10 * n : ℤ)

end

end A063307.P9953343789329517611

namespace A063307

/-- `A063319(n+2)-10*n` -/
def P9953343789329517611.Spec : Prop :=
  ∀ n, P9953343789329517611.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P13522380760206179629

`A063331(n+2)-A008605(n)`
-/

namespace A063307.P13522380760206179629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A008605 n

end

end A063307.P13522380760206179629

namespace A063307

/-- `A063331(n+2)-A008605(n)` -/
def P13522380760206179629.Spec : Prop :=
  ∀ n, P13522380760206179629.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P13498807785950980806

`A063335(n+2)-A135628(n)`
-/

namespace A063307.P13498807785950980806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A135628 n

end

end A063307.P13498807785950980806

namespace A063307

/-- `A063335(n+2)-A135628(n)` -/
def P13498807785950980806.Spec : Prop :=
  ∀ n, P13498807785950980806.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P3619937213835028745

`A063331(n+2)-(A008604(n)+n)`
-/

namespace A063307.P3619937213835028745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - (A008604 n + (n : ℤ))

end

end A063307.P3619937213835028745

namespace A063307

/-- `A063331(n+2)-(A008604(n)+n)` -/
def P3619937213835028745.Spec : Prop :=
  ∀ n, P3619937213835028745.a n = A063307 (n + 2)

end A063307

/-! ## A063307.P13472797716321300580

`A008587(n)+A063287(n+2)+A008587(n)`
-/

namespace A063307.P13472797716321300580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + (A063287 (n + 2) + A008587 n)

end

end A063307.P13472797716321300580

namespace A063307

/-- `A008587(n)+A063287(n+2)+A008587(n)` -/
def P13472797716321300580.Spec : Prop :=
  ∀ n, P13472797716321300580.a n = A063307 (n + 2)

end A063307

/-!
# A063308: Dimension of the space of weight n cuspidal newforms for Gamma_1( 35 ).

The programs for A063308, the canonical program `A063308.P2862424135995292276` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063308 has offset 2).

The definition of A063308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063308.P2862424135995292276

`ogf((-1+25x+70x^2+112x^3+155x^4+171x^5+169x^6+143x^7+98x^8+56x^9+13x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063308

/-- `ogf((-1+25x+70x^2+112x^3+155x^4+171x^5+169x^6+143x^7+98x^8+56x^9+13x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P2862424135995292276.Spec : Prop :=
  ∀ n, P2862424135995292276.a n = A063308 (n + 2)

theorem P2862424135995292276.correct : P2862424135995292276.Spec := by
  intro n
  simp only [A063308, Nat.add_sub_cancel]

end A063308

/-! ## A063308.P1932552635247651659

`A063288(n+2)+A063328(n+2)-A063324(n+2)`
-/

namespace A063308.P1932552635247651659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + (A063328 (n + 2) - A063324 (n + 2))

end

end A063308.P1932552635247651659

namespace A063308

/-- `A063288(n+2)+A063328(n+2)-A063324(n+2)` -/
def P1932552635247651659.Spec : Prop :=
  ∀ n, P1932552635247651659.a n = A063308 (n + 2)

end A063308

/-! ## A063308.P13475936830539528884

`A063288(n+2)+A063328(n+2)-(A063330(n+2)-A004275(9*n))`
-/

namespace A063308.P13475936830539528884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + (A063328 (n + 2) - (A063330 (n + 2) - A004275 (9 * n)))

end

end A063308.P13475936830539528884

namespace A063308

/-- `A063288(n+2)+A063328(n+2)-(A063330(n+2)-A004275(9*n))` -/
def P13475936830539528884.Spec : Prop :=
  ∀ n, P13475936830539528884.a n = A063308 (n + 2)

end A063308

/-!
# A063309: Dimension of the space of weight n cuspidal newforms for Gamma_1( 36 ).

The programs for A063309, the canonical program `A063309.P6965884478250627444` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063309 has offset 2).

The definition of A063309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063309.P6965884478250627444

`ogf((-1+13x+28x^2+45x^3+64x^4+65x^5+69x^6+53x^7+38x^8+21x^9+4x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063309

/-- `ogf((-1+13x+28x^2+45x^3+64x^4+65x^5+69x^6+53x^7+38x^8+21x^9+4x^10)/(1-x^4-x^6+x^10))` -/
def P6965884478250627444.Spec : Prop :=
  ∀ n, P6965884478250627444.a n = A063309 (n + 2)

theorem P6965884478250627444.correct : P6965884478250627444.Spec := by
  intro n
  simp only [A063309, Nat.add_sub_cancel]

end A063309

/-!
# A063310: Dimension of the space of weight n cuspidal newforms for Gamma_1( 37 ).

The programs for A063310, the canonical program `A063310.P9509044389489348224` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063310 has offset 2).

The definition of A063310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063310.P9509044389489348224

`ogf((-1+40x+96x^2+153x^3+211x^4+227x^5+229x^6+188x^7+132x^8+75x^9+17x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063310

/-- `ogf((-1+40x+96x^2+153x^3+211x^4+227x^5+229x^6+188x^7+132x^8+75x^9+17x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P9509044389489348224.Spec : Prop :=
  ∀ n, P9509044389489348224.a n = A063310 (n + 2)

theorem P9509044389489348224.correct : P9509044389489348224.Spec := by
  intro n
  simp only [A063310, Nat.add_sub_cancel]

end A063310

/-! ## A063310.P16703473732112294263

`A063306(n+2)+A063326(n+2)-A063330(n+2)`
-/

namespace A063310.P16703473732112294263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063306 (n + 2) + (A063326 (n + 2) - A063330 (n + 2))

end

end A063310.P16703473732112294263

namespace A063310

/-- `A063306(n+2)+A063326(n+2)-A063330(n+2)` -/
def P16703473732112294263.Spec : Prop :=
  ∀ n, P16703473732112294263.a n = A063310 (n + 2)

end A063310

/-!
# A063311: Dimension of the space of weight n cuspidal newforms for Gamma_1( 38 ).

The programs for A063311, the canonical program `A063311.P3445457209685154757` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063311 has offset 2).

The definition of A063311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063311.P3445457209685154757

`ogf((-1+14x+30x^2+45x^3+61x^4+61x^5+61x^6+44x^7+30x^8+13x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063311

/-- `ogf((-1+14x+30x^2+45x^3+61x^4+61x^5+61x^6+44x^7+30x^8+13x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P3445457209685154757.Spec : Prop :=
  ∀ n, P3445457209685154757.a n = A063311 (n + 2)

theorem P3445457209685154757.correct : P3445457209685154757.Spec := by
  intro n
  simp only [A063311, Nat.add_sub_cancel]

end A063311

/-! ## A063311.P976806651671679624

`A063307(n+2)+3*n`
-/

namespace A063311.P976806651671679624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (3 * n : ℤ)

end

end A063311.P976806651671679624

namespace A063311

/-- `A063307(n+2)+3*n` -/
def P976806651671679624.Spec : Prop :=
  ∀ n, P976806651671679624.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P2406245965574998959

`A063299(n+2)+8*n`
-/

namespace A063311.P2406245965574998959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (8 * n : ℤ)

end

end A063311.P2406245965574998959

namespace A063311

/-- `A063299(n+2)+8*n` -/
def P2406245965574998959.Spec : Prop :=
  ∀ n, P2406245965574998959.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P2772159813636892032

`A063295(n+2)+10*n`
-/

namespace A063311.P2772159813636892032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (10 * n : ℤ)

end

end A063311.P2772159813636892032

namespace A063311

/-- `A063295(n+2)+10*n` -/
def P2772159813636892032.Spec : Prop :=
  ∀ n, P2772159813636892032.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P14236076445006078277

`A063283(n+2)+A008596(n)`
-/

namespace A063311.P14236076445006078277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + A008596 n

end

end A063311.P14236076445006078277

namespace A063311

/-- `A063283(n+2)+A008596(n)` -/
def P14236076445006078277.Spec : Prop :=
  ∀ n, P14236076445006078277.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P2863854184145879625

`A063287(n+2)+A008595(n)`
-/

namespace A063311.P2863854184145879625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + A008595 n

end

end A063311.P2863854184145879625

namespace A063311

/-- `A063287(n+2)+A008595(n)` -/
def P2863854184145879625.Spec : Prop :=
  ∀ n, P2863854184145879625.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P14703706843834878790

`A063319(n+2)-A008589(n)`
-/

namespace A063311.P14703706843834878790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - A008589 n

end

end A063311.P14703706843834878790

namespace A063311

/-- `A063319(n+2)-A008589(n)` -/
def P14703706843834878790.Spec : Prop :=
  ∀ n, P14703706843834878790.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P154527980950579865

`A063331(n+2)-A008602(n)`
-/

namespace A063311.P154527980950579865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A008602 n

end

end A063311.P154527980950579865

namespace A063311

/-- `A063331(n+2)-A008602(n)` -/
def P154527980950579865.Spec : Prop :=
  ∀ n, P154527980950579865.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P9593574907397794287

`A063335(n+2)-A008607(n)`
-/

namespace A063311.P9593574907397794287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A008607 n

end

end A063311.P9593574907397794287

namespace A063311

/-- `A063335(n+2)-A008607(n)` -/
def P9593574907397794287.Spec : Prop :=
  ∀ n, P9593574907397794287.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P15907616606549479320

`A063331(n+2)-A008587(4*n)`
-/

namespace A063311.P15907616606549479320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A008587 (4 * n)

end

end A063311.P15907616606549479320

namespace A063311

/-- `A063331(n+2)-A008587(4*n)` -/
def P15907616606549479320.Spec : Prop :=
  ∀ n, P15907616606549479320.a n = A063311 (n + 2)

end A063311

/-! ## A063311.P6862246993892528766

`A063335(n+2)-A008587(A008587(n))`
-/

namespace A063311.P6862246993892528766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A008587 (A008587 n).toNat

end

end A063311.P6862246993892528766

namespace A063311

/-- `A063335(n+2)-A008587(A008587(n))` -/
def P6862246993892528766.Spec : Prop :=
  ∀ n, P6862246993892528766.a n = A063311 (n + 2)

end A063311

/-!
# A063312: Dimension of the space of weight n cuspidal newforms for Gamma_1( 39 ).

The programs for A063312, the canonical program `A063312.P3431220036516263772` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063312 has offset 2).

The definition of A063312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063312.P3431220036516263772

`ogf((-1+30x+43x^2+41x^3+73x^4+53x^5+41x^6+43x^7+8x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063312

/-- `ogf((-1+30x+43x^2+41x^3+73x^4+53x^5+41x^6+43x^7+8x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P3431220036516263772.Spec : Prop :=
  ∀ n, P3431220036516263772.a n = A063312 (n + 2)

theorem P3431220036516263772.correct : P3431220036516263772.Spec := by
  intro n
  simp only [A063312, Nat.add_sub_cancel]

end A063312

/-! ## A063312.P5274348721402009313

`A063320(n+2)+A063360(n+2)-A063352(n+2)`
-/

namespace A063312.P5274348721402009313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063320 (n + 2) + (A063360 (n + 2) - A063352 (n + 2))

end

end A063312.P5274348721402009313

namespace A063312

/-- `A063320(n+2)+A063360(n+2)-A063352(n+2)` -/
def P5274348721402009313.Spec : Prop :=
  ∀ n, P5274348721402009313.a n = A063312 (n + 2)

theorem P5274348721402009313.correct : P5274348721402009313.Spec := by
  intro n
  simp only [A063312, Nat.add_sub_cancel, A063312.P5274348721402009313.a, A063312.P3431220036516263772.a, A063320, A063320.P9215198888039176748.a, A063352, A063352.P226120115990009649.a, A063360, A063360.P14220350401855993139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063312

/-! ## A063312.P16956510049165416455

`A063330(n+2)-A063354(n+2)%A063337(n+2)`
-/

namespace A063312.P16956510049165416455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) - Int.tmod (A063354 (n + 2)) (A063337 (n + 2))

end

end A063312.P16956510049165416455

namespace A063312

/-- `A063330(n+2)-A063354(n+2)%A063337(n+2)` -/
def P16956510049165416455.Spec : Prop :=
  ∀ n, P16956510049165416455.a n = A063312 (n + 2)

end A063312

/-! ## A063312.P14081872087645221829

`A063288(n+2)+A005843(A063305(n+2)+1)`
-/

namespace A063312.P14081872087645221829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + A005843 (A063305 (n + 2) + 1).toNat

end

end A063312.P14081872087645221829

namespace A063312

/-- `A063288(n+2)+A005843(A063305(n+2)+1)` -/
def P14081872087645221829.Spec : Prop :=
  ∀ n, P14081872087645221829.a n = A063312 (n + 2)

end A063312

/-!
# A063313: Dimension of the space of weight n cuspidal newforms for Gamma_1( 40 ).

The programs for A063313, the canonical program `A063313.P6802900432498550628` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063313 has offset 2).

The definition of A063313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063313.P1159458134716699435

`ogf((-1+19x+45x^2+48x^3+51x^4+31x^5+5x^6)/(1-x^2-x^4+x^6))`
-/

namespace A063313.P1159458134716699435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 19, 45, 48, 51, 31, 5] [1, 0, -1, 0, -1, 0, 1] n

end

end A063313.P1159458134716699435

namespace A063313

/-- `ogf((-1+19x+45x^2+48x^3+51x^4+31x^5+5x^6)/(1-x^2-x^4+x^6))` -/
def P1159458134716699435.Spec : Prop :=
  ∀ n, P1159458134716699435.a n = A063313 (n + 2)

end A063313

/-! ## A063313.P6802900432498550628

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=19, a(2)=44, a(3)=67, a(4)=94, a(5)=117, a(6)=144`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063313

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P6802900432498550628.Spec : Prop :=
  ∀ n, P6802900432498550628.a n = A063313 (n + 2)

theorem P6802900432498550628.correct : P6802900432498550628.Spec := by
  intro n
  simp only [A063313, Nat.add_sub_cancel]

end A063313

/-! ## A063313.P3256519851239206215

`A063297(n+2)+A063305(n+2)+1`
-/

namespace A063313.P3256519851239206215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063297 (n + 2) + (A063305 (n + 2) + 1)

end

end A063313.P3256519851239206215

namespace A063313

/-- `A063297(n+2)+A063305(n+2)+1` -/
def P3256519851239206215.Spec : Prop :=
  ∀ n, P3256519851239206215.a n = A063313 (n + 2)

end A063313

/-! ## A063313.P10511264388093916318

`A063297(n+2)+A063304(n+2)-A063296(n+2)`
-/

namespace A063313.P10511264388093916318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063297 (n + 2) + (A063304 (n + 2) - A063296 (n + 2))

end

end A063313.P10511264388093916318

namespace A063313

/-- `A063297(n+2)+A063304(n+2)-A063296(n+2)` -/
def P10511264388093916318.Spec : Prop :=
  ∀ n, P10511264388093916318.a n = A063313 (n + 2)

end A063313

/-! ## A063313.P15437980937736421384

`A063297(n+2)+A063306(n+2)-A063294(n+2)`
-/

namespace A063313.P15437980937736421384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063297 (n + 2) + (A063306 (n + 2) - A063294 (n + 2))

end

end A063313.P15437980937736421384

namespace A063313

/-- `A063297(n+2)+A063306(n+2)-A063294(n+2)` -/
def P15437980937736421384.Spec : Prop :=
  ∀ n, P15437980937736421384.a n = A063313 (n + 2)

end A063313

/-! ## A063313.P5862061123008328309

`A063361(n+2)%A017221(A131098(n+1))`
-/

namespace A063313.P5862061123008328309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063361 (n + 2)) (A017221 (A131098 (n + 1)).toNat)

end

end A063313.P5862061123008328309

namespace A063313

/-- `A063361(n+2)%A017221(A131098(n+1))` -/
def P5862061123008328309.Spec : Prop :=
  ∀ n, P5862061123008328309.a n = A063313 (n + 2)

end A063313

/-!
# A063314: Dimension of the space of weight n cuspidal newforms for Gamma_1( 41 ).

The programs for A063314, the canonical program `A063314.P12238948854124564830` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063314 has offset 2).

The definition of A063314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063314.P12238948854124564830

`ogf((-1+51x+120x^2+190x^3+261x^4+279x^5+281x^6+229x^7+160x^8+90x^9+19x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063314

/-- `ogf((-1+51x+120x^2+190x^3+261x^4+279x^5+281x^6+229x^7+160x^8+90x^9+19x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P12238948854124564830.Spec : Prop :=
  ∀ n, P12238948854124564830.a n = A063314 (n + 2)

theorem P12238948854124564830.correct : P12238948854124564830.Spec := by
  intro n
  simp only [A063314, Nat.add_sub_cancel]

end A063314

/-! ## A063314.P11447562407372895020

`A063302(n+2)+A063325(n+2)-A063301(n+2)`
-/

namespace A063314.P11447562407372895020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063325 (n + 2) - A063301 (n + 2))

end

end A063314.P11447562407372895020

namespace A063314

/-- `A063302(n+2)+A063325(n+2)-A063301(n+2)` -/
def P11447562407372895020.Spec : Prop :=
  ∀ n, P11447562407372895020.a n = A063314 (n + 2)

end A063314

/-!
# A063315: Dimension of the space of weight n cuspidal newforms for Gamma_1( 42 ).

The programs for A063315, the canonical program `A063315.P17549560948284592736` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063315 has offset 2).

The definition of A063315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063315.P17549560948284592736

`ogf((-1+14x+11x^2+9x^3+25x^4+11x^5+9x^6+15x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063315

/-- `ogf((-1+14x+11x^2+9x^3+25x^4+11x^5+9x^6+15x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P17549560948284592736.Spec : Prop :=
  ∀ n, P17549560948284592736.a n = A063315 (n + 2)

theorem P17549560948284592736.correct : P17549560948284592736.Spec := by
  intro n
  simp only [A063315, Nat.add_sub_cancel]

end A063315

/-! ## A063315.P1378698408915533162

`6*n+A063303(n+2)`
-/

namespace A063315.P1378698408915533162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + A063303 (n + 2)

end

end A063315.P1378698408915533162

namespace A063315

/-- `6*n+A063303(n+2)` -/
def P1378698408915533162.Spec : Prop :=
  ∀ n, P1378698408915533162.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P1559925025324028794

`A063303(n+2)+A008588(n)`
-/

namespace A063315.P1559925025324028794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A008588 n

end

end A063315.P1559925025324028794

namespace A063315

/-- `A063303(n+2)+A008588(n)` -/
def P1559925025324028794.Spec : Prop :=
  ∀ n, P1559925025324028794.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P6395664182565922616

`A063339(n+2)-A008600(n)`
-/

namespace A063315.P6395664182565922616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) - A008600 n

end

end A063315.P6395664182565922616

namespace A063315

/-- `A063339(n+2)-A008600(n)` -/
def P6395664182565922616.Spec : Prop :=
  ∀ n, P6395664182565922616.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P940112708080679318

`A063351(n+2)-A249674(n)`
-/

namespace A063315.P940112708080679318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063351 (n + 2) - A249674 n

end

end A063315.P940112708080679318

namespace A063315

/-- `A063351(n+2)-A249674(n)` -/
def P940112708080679318.Spec : Prop :=
  ∀ n, P940112708080679318.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P9183002547407825325

`A063303(n+2)+sqrt(A016910(n))`
-/

namespace A063315.P9183002547407825325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063303 (n + 2) : ℝ) + Real.sqrt (A016910 n : ℝ)

end

end A063315.P9183002547407825325

namespace A063315

/-- `A063303(n+2)+sqrt(A016910(n))` -/
def P9183002547407825325.Spec : Prop :=
  ∀ n, P9183002547407825325.a n = (A063315 (n + 2) : ℝ)

end A063315

/-! ## A063315.P5920232584483001004

`A063303(n+2)+A016921(n)-1`
-/

namespace A063315.P5920232584483001004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + (A016921 n - 1)

end

end A063315.P5920232584483001004

namespace A063315

/-- `A063303(n+2)+A016921(n)-1` -/
def P5920232584483001004.Spec : Prop :=
  ∀ n, P5920232584483001004.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P18377199119371919163

`A063303(n+2)+A008594(n)/2`
-/

namespace A063315.P18377199119371919163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063303 (n + 2) : ℚ) + (A008594 n : ℚ) / 2

end

end A063315.P18377199119371919163

namespace A063315

/-- `A063303(n+2)+A008594(n)/2` -/
def P18377199119371919163.Spec : Prop :=
  ∀ n, P18377199119371919163.a n = (A063315 (n + 2) : ℚ)

end A063315

/-! ## A063315.P16672483278467521687

`A063303(n+2)+Δ[A242658(n)]`
-/

namespace A063315.P16672483278467521687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + (f1 (n + 1) - f1 n)

end

end A063315.P16672483278467521687

namespace A063315

/-- `A063303(n+2)+Δ[A242658(n)]` -/
def P16672483278467521687.Spec : Prop :=
  ∀ n, P16672483278467521687.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P15947711584589065986

`A063303(n+2)+A008585(A005843(n))`
-/

namespace A063315.P15947711584589065986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A008585 (A005843 n).toNat

end

end A063315.P15947711584589065986

namespace A063315

/-- `A063303(n+2)+A008585(A005843(n))` -/
def P15947711584589065986.Spec : Prop :=
  ∀ n, P15947711584589065986.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P463054326242393176

`A063303(n+2)+A004523(A008591(n))`
-/

namespace A063315.P463054326242393176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A004523 (A008591 n).toNat

end

end A063315.P463054326242393176

namespace A063315

/-- `A063303(n+2)+A004523(A008591(n))` -/
def P463054326242393176.Spec : Prop :=
  ∀ n, P463054326242393176.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P17072161400988395708

`A063303(n+2)+A004525(A008594(n))`
-/

namespace A063315.P17072161400988395708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A004525 (A008594 n).toNat

end

end A063315.P17072161400988395708

namespace A063315

/-- `A063303(n+2)+A004525(A008594(n))` -/
def P17072161400988395708.Spec : Prop :=
  ∀ n, P17072161400988395708.a n = A063315 (n + 2)

end A063315

/-! ## A063315.P9033117330279175014

`A063303(n+2)+A002264(A008600(n))`
-/

namespace A063315.P9033117330279175014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A002264 (A008600 n).toNat

end

end A063315.P9033117330279175014

namespace A063315

/-- `A063303(n+2)+A002264(A008600(n))` -/
def P9033117330279175014.Spec : Prop :=
  ∀ n, P9033117330279175014.a n = A063315 (n + 2)

end A063315

/-!
# A063316: Dimension of the space of weight n cuspidal newforms for Gamma_1( 43 ).

The programs for A063316, the canonical program `A063316.P11471415884564112616` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063316 has offset 2).

The definition of A063316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063316.P11471415884564112616

`ogf((-1+57x+133x^2+210x^3+288x^4+307x^5+309x^6+251x^7+175x^8+98x^9+20x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063316

/-- `ogf((-1+57x+133x^2+210x^3+288x^4+307x^5+309x^6+251x^7+175x^8+98x^9+20x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P11471415884564112616.Spec : Prop :=
  ∀ n, P11471415884564112616.a n = A063316 (n + 2)

theorem P11471415884564112616.correct : P11471415884564112616.Spec := by
  intro n
  simp only [A063316, Nat.add_sub_cancel]

end A063316

/-! ## A063316.P9276347209187027126

`A063338(n+2)+A063340(n+2)-A063358(n+2)`
-/

namespace A063316.P9276347209187027126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063338 (n + 2) + (A063340 (n + 2) - A063358 (n + 2))

end

end A063316.P9276347209187027126

namespace A063316

/-- `A063338(n+2)+A063340(n+2)-A063358(n+2)` -/
def P9276347209187027126.Spec : Prop :=
  ∀ n, P9276347209187027126.a n = A063316 (n + 2)

end A063316

/-!
# A063317: Dimension of the space of weight n cuspidal newforms for Gamma_1( 44 ).

The programs for A063317, the canonical program `A063317.P8879854693810221328` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063317 has offset 2).

The definition of A063317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063317.P8879854693810221328

`ogf((-1+25x+60x^2+95x^3+129x^4+138x^5+137x^6+115x^7+76x^8+45x^9+7x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063317

/-- `ogf((-1+25x+60x^2+95x^3+129x^4+138x^5+137x^6+115x^7+76x^8+45x^9+7x^10)/(1-x^4-x^6+x^10))` -/
def P8879854693810221328.Spec : Prop :=
  ∀ n, P8879854693810221328.a n = A063317 (n + 2)

theorem P8879854693810221328.correct : P8879854693810221328.Spec := by
  intro n
  simp only [A063317, Nat.add_sub_cancel]

end A063317

/-!
# A063318: Dimension of the space of weight n cuspidal newforms for Gamma_1( 45 ).

The programs for A063318, the canonical program `A063318.P2476820560107289287` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063318 has offset 2).

The definition of A063318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063318.P2476820560107289287

`ogf((-1+39x+92x^2+143x^3+195x^4+210x^5+209x^6+169x^7+120x^8+65x^9+13x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063318

/-- `ogf((-1+39x+92x^2+143x^3+195x^4+210x^5+209x^6+169x^7+120x^8+65x^9+13x^10)/(1-x^4-x^6+x^10))` -/
def P2476820560107289287.Spec : Prop :=
  ∀ n, P2476820560107289287.a n = A063318 (n + 2)

theorem P2476820560107289287.correct : P2476820560107289287.Spec := by
  intro n
  simp only [A063318, Nat.add_sub_cancel]

end A063318

/-! ## A063318.P6035652046149837607

`A063302(n+2)+A063336(n+2)-A063320(n+2)`
-/

namespace A063318.P6035652046149837607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063336 (n + 2) - A063320 (n + 2))

end

end A063318.P6035652046149837607

namespace A063318

/-- `A063302(n+2)+A063336(n+2)-A063320(n+2)` -/
def P6035652046149837607.Spec : Prop :=
  ∀ n, P6035652046149837607.a n = A063318 (n + 2)

end A063318

/-!
# A063319: Dimension of the space of weight n cuspidal newforms for Gamma_1( 46 ).

The programs for A063319, the canonical program `A063319.P9152503650532995565` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063319 has offset 2).

The definition of A063319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063319.P9152503650532995565

`ogf((-1+21x+44x^2+66x^3+89x^4+89x^5+89x^6+65x^7+44x^8+20x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063319

/-- `ogf((-1+21x+44x^2+66x^3+89x^4+89x^5+89x^6+65x^7+44x^8+20x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P9152503650532995565.Spec : Prop :=
  ∀ n, P9152503650532995565.a n = A063319 (n + 2)

theorem P9152503650532995565.correct : P9152503650532995565.Spec := by
  intro n
  simp only [A063319, Nat.add_sub_cancel]

end A063319

/-! ## A063319.P2068075954507333105

`A063311(n+2)+7*n`
-/

namespace A063319.P2068075954507333105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + (7 * n : ℤ)

end

end A063319.P2068075954507333105

namespace A063319

/-- `A063311(n+2)+7*n` -/
def P2068075954507333105.Spec : Prop :=
  ∀ n, P2068075954507333105.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P16145144528810621052

`A063307(n+2)+10*n`
-/

namespace A063319.P16145144528810621052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (10 * n : ℤ)

end

end A063319.P16145144528810621052

namespace A063319

/-- `A063307(n+2)+10*n` -/
def P16145144528810621052.Spec : Prop :=
  ∀ n, P16145144528810621052.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P14360719026433000485

`A063331(n+2)-13*n`
-/

namespace A063319.P14360719026433000485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - (13 * n : ℤ)

end

end A063319.P14360719026433000485

namespace A063319

/-- `A063331(n+2)-13*n` -/
def P14360719026433000485.Spec : Prop :=
  ∀ n, P14360719026433000485.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P4662564572941246717

`A063299(n+2)+15*n`
-/

namespace A063319.P4662564572941246717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (15 * n : ℤ)

end

end A063319.P4662564572941246717

namespace A063319

/-- `A063299(n+2)+15*n` -/
def P4662564572941246717.Spec : Prop :=
  ∀ n, P4662564572941246717.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P3200047131475365647

`A063295(n+2)+17*n`
-/

namespace A063319.P3200047131475365647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (17 * n : ℤ)

end

end A063319.P3200047131475365647

namespace A063319

/-- `A063295(n+2)+17*n` -/
def P3200047131475365647.Spec : Prop :=
  ∀ n, P3200047131475365647.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P13117102171606042626

`A063283(n+2)+A008603(n)`
-/

namespace A063319.P13117102171606042626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + A008603 n

end

end A063319.P13117102171606042626

namespace A063319

/-- `A063283(n+2)+A008603(n)` -/
def P13117102171606042626.Spec : Prop :=
  ∀ n, P13117102171606042626.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P10309008407270180074

`A063287(n+2)+A008602(n)`
-/

namespace A063319.P10309008407270180074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + A008602 n

end

end A063319.P10309008407270180074

namespace A063319

/-- `A063287(n+2)+A008602(n)` -/
def P10309008407270180074.Spec : Prop :=
  ∀ n, P10309008407270180074.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P4254395715700753800

`A063335(n+2)-A008600(n)`
-/

namespace A063319.P4254395715700753800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A008600 n

end

end A063319.P4254395715700753800

namespace A063319

/-- `A063335(n+2)-A008600(n)` -/
def P4254395715700753800.Spec : Prop :=
  ∀ n, P4254395715700753800.a n = A063319 (n + 2)

end A063319

/-! ## A063319.P13704721605145148702

`A063335(n+2)-(A008599(n)+n)`
-/

namespace A063319.P13704721605145148702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - (A008599 n + (n : ℤ))

end

end A063319.P13704721605145148702

namespace A063319

/-- `A063335(n+2)-(A008599(n)+n)` -/
def P13704721605145148702.Spec : Prop :=
  ∀ n, P13704721605145148702.a n = A063319 (n + 2)

end A063319

/-!
# A063320: Dimension of the space of weight n cuspidal newforms for Gamma_1( 47 ).

The programs for A063320, the canonical program `A063320.P9215198888039176748` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063320 has offset 2).

The definition of A063320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063320.P9215198888039176748

`ogf((-1+70x+161x^2+253x^3+346x^4+367x^5+369x^6+298x^7+207x^8+115x^9+22x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063320

/-- `ogf((-1+70x+161x^2+253x^3+346x^4+367x^5+369x^6+298x^7+207x^8+115x^9+22x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P9215198888039176748.Spec : Prop :=
  ∀ n, P9215198888039176748.a n = A063320 (n + 2)

theorem P9215198888039176748.correct : P9215198888039176748.Spec := by
  intro n
  simp only [A063320, Nat.add_sub_cancel]

end A063320

/-! ## A063320.P14439987561823794700

`A063302(n+2)+A063336(n+2)-A063318(n+2)`
-/

namespace A063320.P14439987561823794700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063336 (n + 2) - A063318 (n + 2))

end

end A063320.P14439987561823794700

namespace A063320

/-- `A063302(n+2)+A063336(n+2)-A063318(n+2)` -/
def P14439987561823794700.Spec : Prop :=
  ∀ n, P14439987561823794700.a n = A063320 (n + 2)

end A063320

/-! ## A063320.P17984114473412149494

`A063312(n+2)+A063352(n+2)-A063360(n+2)`
-/

namespace A063320.P17984114473412149494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063312 (n + 2) + (A063352 (n + 2) - A063360 (n + 2))

end

end A063320.P17984114473412149494

namespace A063320

/-- `A063312(n+2)+A063352(n+2)-A063360(n+2)` -/
def P17984114473412149494.Spec : Prop :=
  ∀ n, P17984114473412149494.a n = A063320 (n + 2)

theorem P17984114473412149494.correct : P17984114473412149494.Spec := by
  intro n
  simp only [A063320, Nat.add_sub_cancel, A063320.P17984114473412149494.a, A063320.P9215198888039176748.a, A063312, A063312.P3431220036516263772.a, A063352, A063352.P226120115990009649.a, A063360, A063360.P14220350401855993139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063320

/-!
# A063321: Dimension of the space of weight n cuspidal newforms for Gamma_1( 48 ).

The programs for A063321, the canonical program `A063321.P2430824081364252262` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063321 has offset 2).

The definition of A063321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063321.P15659635259056933600

`ogf((-1+24x+27x^2+4x^3)/(1-x-x^2+x^3))`
-/

namespace A063321.P15659635259056933600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 24, 27, 4] [1, -1, -1, 1] n

end

end A063321.P15659635259056933600

namespace A063321

/-- `ogf((-1+24x+27x^2+4x^3)/(1-x-x^2+x^3))` -/
def P15659635259056933600.Spec : Prop :=
  ∀ n, P15659635259056933600.a n = A063321 (n + 2)

end A063321

/-! ## A063321.P2430824081364252262

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=-1, a(1)=23, a(2)=49, a(3)=77`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063321

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P2430824081364252262.Spec : Prop :=
  ∀ n, P2430824081364252262.a n = A063321 (n + 2)

theorem P2430824081364252262.correct : P2430824081364252262.Spec := by
  intro n
  simp only [A063321, Nat.add_sub_cancel]

end A063321

/-! ## A063321.P10805502831019012618

`abs(gcd(2, n)-27*n)-3`
-/

namespace A063321.P10805502831019012618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 2 n : ℤ) - (27 * n : ℤ)| - 3

end

end A063321.P10805502831019012618

namespace A063321

/-- `abs(gcd(2, n)-27*n)-3` -/
def P10805502831019012618.Spec : Prop :=
  ∀ n, P10805502831019012618.a n = A063321 (n + 2)

end A063321

/-! ## A063321.P4214107088504726685

`or(27*n-5, (27*n-5)%3)`
-/

namespace A063321.P4214107088504726685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((27 * n : ℤ) - 5) (Int.tmod ((27 * n : ℤ) - 5) 3)

end

end A063321.P4214107088504726685

namespace A063321

/-- `or(27*n-5, (27*n-5)%3)` -/
def P4214107088504726685.Spec : Prop :=
  ∀ n, P4214107088504726685.a n = A063321 (n + 2)

end A063321

/-! ## A063321.P1351687022773401555

`A122709(3*n)-gcd(2, n)`
-/

namespace A063321.P1351687022773401555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 (3 * n) - (Nat.gcd 2 n : ℤ)

end

end A063321.P1351687022773401555

namespace A063321

/-- `A122709(3*n)-gcd(2, n)` -/
def P1351687022773401555.Spec : Prop :=
  ∀ n, P1351687022773401555.a n = A063321 (n + 2)

end A063321

/-! ## A063321.P7550063517989237477

`A047235(round(sqrt(n²+1))+8*n)-3`
-/

namespace A063321.P7550063517989237477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (8 * n : ℤ)).toNat - 3

end

end A063321.P7550063517989237477

namespace A063321

/-- `A047235(round(sqrt(n²+1))+8*n)-3` -/
def P7550063517989237477.Spec : Prop :=
  ∀ n, P7550063517989237477.a n = A063321 (n + 2)

end A063321

/-! ## A063321.P14633232641751428281

`A008574(A301291(2*n))-A301291(2*n+1)`
-/

namespace A063321.P14633232641751428281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A301291 (2 * n)).toNat - A301291 (2 * n + 1)

end

end A063321.P14633232641751428281

namespace A063321

/-- `A008574(A301291(2*n))-A301291(2*n+1)` -/
def P14633232641751428281.Spec : Prop :=
  ∀ n, P14633232641751428281.a n = A063321 (n + 2)

end A063321

/-! ## A063321.P2853138254777418228

`A311536(A271114(n))-9`
-/

namespace A063321.P2853138254777418228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 (A271114 n).toNat - 9

end

end A063321.P2853138254777418228

namespace A063321

/-- `A311536(A271114(n))-9` -/
def P2853138254777418228.Spec : Prop :=
  ∀ n, P2853138254777418228.a n = A063321 (n + 2)

end A063321

/-!
# A063322: Dimension of the space of weight n cuspidal newforms for Gamma_1( 49 ).

The programs for A063322, the canonical program `A063322.P14798496923122269726` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063322 has offset 2).

The definition of A063322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063322.P14798496923122269726

`ogf((-1+69x+164x^2+258x^3+353x^4+377x^5+377x^6+307x^7+212x^8+118x^9+23x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063322

/-- `ogf((-1+69x+164x^2+258x^3+353x^4+377x^5+377x^6+307x^7+212x^8+118x^9+23x^10)/(1-x^4-x^6+x^10))` -/
def P14798496923122269726.Spec : Prop :=
  ∀ n, P14798496923122269726.a n = A063322 (n + 2)

theorem P14798496923122269726.correct : P14798496923122269726.Spec := by
  intro n
  simp only [A063322, Nat.add_sub_cancel]

end A063322

/-!
# A063323: Dimension of the space of weight n cuspidal newforms for Gamma_1( 50 ).

The programs for A063323, the canonical program `A063323.P14416433403302325023` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063323 has offset 2).

The definition of A063323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063323.P14416433403302325023

`ogf((-1+24x+46x^2+69x^3+93x^4+91x^5+93x^6+69x^7+46x^8+24x^9-x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063323

/-- `ogf((-1+24x+46x^2+69x^3+93x^4+91x^5+93x^6+69x^7+46x^8+24x^9-x^10)/(1-x^4-x^6+x^10))` -/
def P14416433403302325023.Spec : Prop :=
  ∀ n, P14416433403302325023.a n = A063323 (n + 2)

theorem P14416433403302325023.correct : P14416433403302325023.Spec := by
  intro n
  simp only [A063323, Nat.add_sub_cancel]

end A063323

/-! ## A063323.P10945898327271529692

`A008605(n)-A121373(A275857(n))`
-/

namespace A063323.P10945898327271529692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n - A121373 (A275857 n).toNat

end

end A063323.P10945898327271529692

namespace A063323

/-- `A008605(n)-A121373(A275857(n))` -/
def P10945898327271529692.Spec : Prop :=
  ∀ n, P10945898327271529692.a n = A063323 (n + 2)

end A063323

/-!
# A063324: Dimension of the space of weight n cuspidal newforms for Gamma_1( 51 ).

The programs for A063324, the canonical program `A063324.P14188250571739979463` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063324 has offset 2).

The definition of A063324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063324.P14188250571739979463

`ogf((-1+56x+73x^2+71x^3+129x^4+87x^5+71x^6+73x^7+12x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063324

/-- `ogf((-1+56x+73x^2+71x^3+129x^4+87x^5+71x^6+73x^7+12x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P14188250571739979463.Spec : Prop :=
  ∀ n, P14188250571739979463.a n = A063324 (n + 2)

theorem P14188250571739979463.correct : P14188250571739979463.Spec := by
  intro n
  simp only [A063324, Nat.add_sub_cancel]

end A063324

/-! ## A063324.P15638717442058550854

`A063288(n+2)+A063328(n+2)-A063308(n+2)`
-/

namespace A063324.P15638717442058550854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + (A063328 (n + 2) - A063308 (n + 2))

end

end A063324.P15638717442058550854

namespace A063324

/-- `A063288(n+2)+A063328(n+2)-A063308(n+2)` -/
def P15638717442058550854.Spec : Prop :=
  ∀ n, P15638717442058550854.a n = A063324 (n + 2)

end A063324

/-! ## A063324.P11552455945460512999

`A063342(n+2)-6*A063093(2*n+1)`
-/

namespace A063324.P11552455945460512999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063342 (n + 2) - 6 * A063093 (2 * n + 1)

end

end A063324.P11552455945460512999

namespace A063324

/-- `A063342(n+2)-6*A063093(2*n+1)` -/
def P11552455945460512999.Spec : Prop :=
  ∀ n, P11552455945460512999.a n = A063324 (n + 2)

end A063324

/-! ## A063324.P11088689970812409789

`A063294(n+2)+A008592(A004273(3*n))`
-/

namespace A063324.P11088689970812409789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + A008592 (A004273 (3 * n)).toNat

end

end A063324.P11088689970812409789

namespace A063324

/-- `A063294(n+2)+A008592(A004273(3*n))` -/
def P11088689970812409789.Spec : Prop :=
  ∀ n, P11088689970812409789.a n = A063324 (n + 2)

end A063324

/-! ## A063324.P16956203782373004326

`A063330(n+2)-A004275(9*n)`
-/

namespace A063324.P16956203782373004326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) - A004275 (9 * n)

end

end A063324.P16956203782373004326

namespace A063324

/-- `A063330(n+2)-A004275(9*n)` -/
def P16956203782373004326.Spec : Prop :=
  ∀ n, P16956203782373004326.a n = A063324 (n + 2)

end A063324

/-!
# A063325: Dimension of the space of weight n cuspidal newforms for Gamma_1( 52 ).

The programs for A063325, the canonical program `A063325.P6500046734755470914` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063325 has offset 2).

The definition of A063325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063325.P6500046734755470914

`ogf((-1+37x+86x^2+135x^3+183x^4+194x^5+193x^6+159x^7+106x^8+61x^9+9x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063325

/-- `ogf((-1+37x+86x^2+135x^3+183x^4+194x^5+193x^6+159x^7+106x^8+61x^9+9x^10)/(1-x^4-x^6+x^10))` -/
def P6500046734755470914.Spec : Prop :=
  ∀ n, P6500046734755470914.a n = A063325 (n + 2)

theorem P6500046734755470914.correct : P6500046734755470914.Spec := by
  intro n
  simp only [A063325, Nat.add_sub_cancel]

end A063325

/-! ## A063325.P11202921804409249771

`A063301(n+2)+A063314(n+2)-A063302(n+2)`
-/

namespace A063325.P11202921804409249771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063301 (n + 2) + (A063314 (n + 2) - A063302 (n + 2))

end

end A063325.P11202921804409249771

namespace A063325

/-- `A063301(n+2)+A063314(n+2)-A063302(n+2)` -/
def P11202921804409249771.Spec : Prop :=
  ∀ n, P11202921804409249771.a n = A063325 (n + 2)

end A063325

/-! ## A063325.P6459695588442235706

`A063326(n+2)+A063365(n+2)-A063346(n+2)`
-/

namespace A063325.P6459695588442235706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063326 (n + 2) + (A063365 (n + 2) - A063346 (n + 2))

end

end A063325.P6459695588442235706

namespace A063325

/-- `A063326(n+2)+A063365(n+2)-A063346(n+2)` -/
def P6459695588442235706.Spec : Prop :=
  ∀ n, P6459695588442235706.a n = A063325 (n + 2)

end A063325

/-!
# A063326: Dimension of the space of weight n cuspidal newforms for Gamma_1( 53 ).

The programs for A063326, the canonical program `A063326.P7199212085277493315` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063326 has offset 2).

The definition of A063326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063326.P7199212085277493315

`ogf((-1+92x+208x^2+325x^3+443x^4+467x^5+469x^6+376x^7+260x^8+143x^9+25x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063326

/-- `ogf((-1+92x+208x^2+325x^3+443x^4+467x^5+469x^6+376x^7+260x^8+143x^9+25x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P7199212085277493315.Spec : Prop :=
  ∀ n, P7199212085277493315.a n = A063326 (n + 2)

theorem P7199212085277493315.correct : P7199212085277493315.Spec := by
  intro n
  simp only [A063326, Nat.add_sub_cancel]

end A063326

/-! ## A063326.P6013255252481383954

`A063310(n+2)+A063330(n+2)-A063306(n+2)`
-/

namespace A063326.P6013255252481383954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063310 (n + 2) + (A063330 (n + 2) - A063306 (n + 2))

end

end A063326.P6013255252481383954

namespace A063326

/-- `A063310(n+2)+A063330(n+2)-A063306(n+2)` -/
def P6013255252481383954.Spec : Prop :=
  ∀ n, P6013255252481383954.a n = A063326 (n + 2)

end A063326

/-! ## A063326.P10460108612458171692

`A063325(n+2)+A063346(n+2)-A063365(n+2)`
-/

namespace A063326.P10460108612458171692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063325 (n + 2) + (A063346 (n + 2) - A063365 (n + 2))

end

end A063326.P10460108612458171692

namespace A063326

/-- `A063325(n+2)+A063346(n+2)-A063365(n+2)` -/
def P10460108612458171692.Spec : Prop :=
  ∀ n, P10460108612458171692.a n = A063326 (n + 2)

end A063326

/-! ## A063326.P14712584555844478886

`A063340(n+2)-7*A063093(2*n+1)`
-/

namespace A063326.P14712584555844478886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063340 (n + 2) - 7 * A063093 (2 * n + 1)

end

end A063326.P14712584555844478886

namespace A063326

/-- `A063340(n+2)-7*A063093(2*n+1)` -/
def P14712584555844478886.Spec : Prop :=
  ∀ n, P14712584555844478886.a n = A063326 (n + 2)

end A063326

/-!
# A063327: Dimension of the space of weight n cuspidal newforms for Gamma_1( 54 ).

The programs for A063327, the canonical program `A063327.P8605005621614585401` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063327 has offset 2).

The definition of A063327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063327.P14038042143318111290

`ogf((-1+23x+20x^2+23x^3-x^4)/(1-x-x^3+x^4))`
-/

namespace A063327.P14038042143318111290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 23, 20, 23, -1] [1, -1, 0, -1, 1] n

end

end A063327.P14038042143318111290

namespace A063327

/-- `ogf((-1+23x+20x^2+23x^3-x^4)/(1-x-x^3+x^4))` -/
def P14038042143318111290.Spec : Prop :=
  ∀ n, P14038042143318111290.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P8605005621614585401

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=-1, a(1)=22, a(2)=42, a(3)=64, a(4)=86`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063327

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P8605005621614585401.Spec : Prop :=
  ∀ n, P8605005621614585401.a n = A063327 (n + 2)

theorem P8605005621614585401.correct : P8605005621614585401.Spec := by
  intro n
  simp only [A063327, Nat.add_sub_cancel]

end A063327

/-! ## A063327.P12041979556110049025

`A252994(n)-A298024(n)`
-/

namespace A063327.P12041979556110049025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252994 n - A298024 n

end

end A063327.P12041979556110049025

namespace A063327

/-- `A252994(n)-A298024(n)` -/
def P12041979556110049025.Spec : Prop :=
  ∀ n, P12041979556110049025.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P6077620545564683256

`A008604(n)-A008611(A004273(n))`
-/

namespace A063327.P6077620545564683256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n - A008611 (A004273 n).toNat

end

end A063327.P6077620545564683256

namespace A063327

/-- `A008604(n)-A008611(A004273(n))` -/
def P6077620545564683256.Spec : Prop :=
  ∀ n, P6077620545564683256.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P16473733112675187771

`A063233(2*n+1)-A063205(n+2)`
-/

namespace A063327.P16473733112675187771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * n + 1) - A063205 (n + 2)

end

end A063327.P16473733112675187771

namespace A063327

/-- `A063233(2*n+1)-A063205(n+2)` -/
def P16473733112675187771.Spec : Prop :=
  ∀ n, P16473733112675187771.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P10769000663556337522

`A063233(2*n+1)+A063246(n+2)-A063233(n+2)`
-/

namespace A063327.P10769000663556337522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * n + 1) + (A063246 (n + 2) - A063233 (n + 2))

end

end A063327.P10769000663556337522

namespace A063327

/-- `A063233(2*n+1)+A063246(n+2)-A063233(n+2)` -/
def P10769000663556337522.Spec : Prop :=
  ∀ n, P10769000663556337522.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P5930691302943319633

`A063205(2*n+1)+A063246(2*n+1)-A063205(n+2)`
-/

namespace A063327.P5930691302943319633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (2 * n + 1) + (A063246 (2 * n + 1) - A063205 (n + 2))

end

end A063327.P5930691302943319633

namespace A063327

/-- `A063205(2*n+1)+A063246(2*n+1)-A063205(n+2)` -/
def P5930691302943319633.Spec : Prop :=
  ∀ n, P5930691302943319633.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P16304945495724217257

`A008604(n)-A008612(A130824(n))`
-/

namespace A063327.P16304945495724217257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n - A008612 (A130824 n).toNat

end

end A063327.P16304945495724217257

namespace A063327

/-- `A008604(n)-A008612(A130824(n))` -/
def P16304945495724217257.Spec : Prop :=
  ∀ n, P16304945495724217257.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P2450023907844486285

`A301694(A008586(n))-A000038(n)`
-/

namespace A063327.P2450023907844486285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 (A008586 n).toNat - A000038 n

end

end A063327.P2450023907844486285

namespace A063327

/-- `A301694(A008586(n))-A000038(n)` -/
def P2450023907844486285.Spec : Prop :=
  ∀ n, P2450023907844486285.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P6459523055736048639

`A008586(8*n)-A301694(2*n)`
-/

namespace A063327.P6459523055736048639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (8 * n) - A301694 (2 * n)

end

end A063327.P6459523055736048639

namespace A063327

/-- `A008586(8*n)-A301694(2*n)` -/
def P6459523055736048639.Spec : Prop :=
  ∀ n, P6459523055736048639.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P17317393930564910942

`A008574(8*n)-A005843(A219529(n))`
-/

namespace A063327.P17317393930564910942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (8 * n) - A005843 (A219529 n).toNat

end

end A063327.P17317393930564910942

namespace A063327

/-- `A008574(8*n)-A005843(A219529(n))` -/
def P17317393930564910942.Spec : Prop :=
  ∀ n, P17317393930564910942.a n = A063327 (n + 2)

end A063327

/-! ## A063327.P1446667163004551530

`A038608(A301694(4*n))`
-/

namespace A063327.P1446667163004551530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A301694 (4 * n)).toNat

end

end A063327.P1446667163004551530

namespace A063327

/-- `A038608(A301694(4*n))` -/
def P1446667163004551530.Spec : Prop :=
  ∀ n, P1446667163004551530.a n = A063327 (n + 2)

end A063327

/-!
# A063328: Dimension of the space of weight n cuspidal newforms for Gamma_1( 55 ).

The programs for A063328, the canonical program `A063328.P7529174807991774181` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063328 has offset 2).

The definition of A063328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063328.P7529174807991774181

`ogf((-1+79x+190x^2+298x^3+407x^4+435x^5+433x^6+353x^7+242x^8+134x^9+25x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063328

/-- `ogf((-1+79x+190x^2+298x^3+407x^4+435x^5+433x^6+353x^7+242x^8+134x^9+25x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P7529174807991774181.Spec : Prop :=
  ∀ n, P7529174807991774181.a n = A063328 (n + 2)

theorem P7529174807991774181.correct : P7529174807991774181.Spec := by
  intro n
  simp only [A063328, Nat.add_sub_cancel]

end A063328

/-! ## A063328.P12543585910565428387

`A063308(n+2)+A063324(n+2)-A063288(n+2)`
-/

namespace A063328.P12543585910565428387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063308 (n + 2) + (A063324 (n + 2) - A063288 (n + 2))

end

end A063328.P12543585910565428387

namespace A063328

/-- `A063308(n+2)+A063324(n+2)-A063288(n+2)` -/
def P12543585910565428387.Spec : Prop :=
  ∀ n, P12543585910565428387.a n = A063328 (n + 2)

end A063328

/-! ## A063328.P1766172581809153924

`A063290(n+2)+A063364(n+2)-A063346(n+2)`
-/

namespace A063328.P1766172581809153924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + (A063364 (n + 2) - A063346 (n + 2))

end

end A063328.P1766172581809153924

namespace A063328

/-- `A063290(n+2)+A063364(n+2)-A063346(n+2)` -/
def P1766172581809153924.Spec : Prop :=
  ∀ n, P1766172581809153924.a n = A063328 (n + 2)

theorem P1766172581809153924.correct : P1766172581809153924.Spec := by
  intro n
  simp only [A063328, Nat.add_sub_cancel, A063328.P1766172581809153924.a, A063328.P7529174807991774181.a, A063290, A063290.P14374076764548880513.a, A063346, A063346.P6529946134590936299.a, A063364, A063364.P1042879225699115212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063328

/-! ## A063328.P8843465139444684007

`A063304(n+2)+A063368(n+2)-A063352(n+2)`
-/

namespace A063328.P8843465139444684007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (A063368 (n + 2) - A063352 (n + 2))

end

end A063328.P8843465139444684007

namespace A063328

/-- `A063304(n+2)+A063368(n+2)-A063352(n+2)` -/
def P8843465139444684007.Spec : Prop :=
  ∀ n, P8843465139444684007.a n = A063328 (n + 2)

theorem P8843465139444684007.correct : P8843465139444684007.Spec := by
  intro n
  simp only [A063328, Nat.add_sub_cancel, A063328.P8843465139444684007.a, A063328.P7529174807991774181.a, A063304, A063304.P96353603920478857.a, A063352, A063352.P226120115990009649.a, A063368, A063368.P10121699038043785177.a, A063312, A063312.P3431220036516263772.a, A063320, A063320.P9215198888039176748.a, A063360, A063360.P14220350401855993139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063328

/-! ## A063328.P14027400065660152704

`A063308(n+2)-A063288(n+2)+A063330(n+2)-A004275(9*n)`
-/

namespace A063328.P14027400065660152704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063308 (n + 2) - A063288 (n + 2) + (A063330 (n + 2) - A004275 (9 * n))

end

end A063328.P14027400065660152704

namespace A063328

/-- `A063308(n+2)-A063288(n+2)+A063330(n+2)-A004275(9*n)` -/
def P14027400065660152704.Spec : Prop :=
  ∀ n, P14027400065660152704.a n = A063328 (n + 2)

end A063328

/-!
# A063329: Dimension of the space of weight n cuspidal newforms for Gamma_1( 56 ).

The programs for A063329, the canonical program `A063329.P2493816827882129097` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063329 has offset 2).

The definition of A063329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063329.P11927253093746104409

`ogf((-1+42x+95x^2+102x^3+105x^4+62x^5+9x^6)/(1-x^2-x^4+x^6))`
-/

namespace A063329.P11927253093746104409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 42, 95, 102, 105, 62, 9] [1, 0, -1, 0, -1, 0, 1] n

end

end A063329.P11927253093746104409

namespace A063329

/-- `ogf((-1+42x+95x^2+102x^3+105x^4+62x^5+9x^6)/(1-x^2-x^4+x^6))` -/
def P11927253093746104409.Spec : Prop :=
  ∀ n, P11927253093746104409.a n = A063329 (n + 2)

end A063329

/-! ## A063329.P2493816827882129097

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=42, a(2)=94, a(3)=144, a(4)=198, a(5)=248, a(6)=302`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063329

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P2493816827882129097.Spec : Prop :=
  ∀ n, P2493816827882129097.a n = A063329 (n + 2)

theorem P2493816827882129097.correct : P2493816827882129097.Spec := by
  intro n
  simp only [A063329, Nat.add_sub_cancel]

end A063329

/-!
# A063330: Dimension of the space of weight n cuspidal newforms for Gamma_1( 57 ).

The programs for A063330, the canonical program `A063330.P11374344093426889559` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063330 has offset 2).

The definition of A063330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063330.P11374344093426889559

`ogf((-1+72x+91x^2+89x^3+163x^4+107x^5+89x^6+91x^7+14x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063330

/-- `ogf((-1+72x+91x^2+89x^3+163x^4+107x^5+89x^6+91x^7+14x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P11374344093426889559.Spec : Prop :=
  ∀ n, P11374344093426889559.a n = A063330 (n + 2)

theorem P11374344093426889559.correct : P11374344093426889559.Spec := by
  intro n
  simp only [A063330, Nat.add_sub_cancel]

end A063330

/-! ## A063330.P14032499327498761716

`A063306(n+2)+A063326(n+2)-A063310(n+2)`
-/

namespace A063330.P14032499327498761716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063306 (n + 2) + (A063326 (n + 2) - A063310 (n + 2))

end

end A063330.P14032499327498761716

namespace A063330

/-- `A063306(n+2)+A063326(n+2)-A063310(n+2)` -/
def P14032499327498761716.Spec : Prop :=
  ∀ n, P14032499327498761716.a n = A063330 (n + 2)

end A063330

/-! ## A063330.P4667553711118061722

`A063332(n+2)+A063342(n+2)-A063340(n+2)`
-/

namespace A063330.P4667553711118061722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + (A063342 (n + 2) - A063340 (n + 2))

end

end A063330.P4667553711118061722

namespace A063330

/-- `A063332(n+2)+A063342(n+2)-A063340(n+2)` -/
def P4667553711118061722.Spec : Prop :=
  ∀ n, P4667553711118061722.a n = A063330 (n + 2)

end A063330

/-! ## A063330.P13886635339442917359

`A063333(n+2)+A063342(n+2)-A063357(n+2)`
-/

namespace A063330.P13886635339442917359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063342 (n + 2) - A063357 (n + 2))

end

end A063330.P13886635339442917359

namespace A063330

/-- `A063333(n+2)+A063342(n+2)-A063357(n+2)` -/
def P13886635339442917359.Spec : Prop :=
  ∀ n, P13886635339442917359.a n = A063330 (n + 2)

end A063330

/-! ## A063330.P9001266673412607342

`A063334(n+2)-A063093(2*n+1)+A063342(n+2)-A063340(n+2)`
-/

namespace A063330.P9001266673412607342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A063093 (2 * n + 1) + (A063342 (n + 2) - A063340 (n + 2))

end

end A063330.P9001266673412607342

namespace A063330

/-- `A063334(n+2)-A063093(2*n+1)+A063342(n+2)-A063340(n+2)` -/
def P9001266673412607342.Spec : Prop :=
  ∀ n, P9001266673412607342.a n = A063330 (n + 2)

end A063330

/-!
# A063331: Dimension of the space of weight n cuspidal newforms for Gamma_1( 58 ).

The programs for A063331, the canonical program `A063331.P4464871039420179933` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063331 has offset 2).

The definition of A063331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063331.P4464871039420179933

`ogf((-1+34x+70x^2+105x^3+141x^4+141x^5+141x^6+104x^7+70x^8+33x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063331

/-- `ogf((-1+34x+70x^2+105x^3+141x^4+141x^5+141x^6+104x^7+70x^8+33x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P4464871039420179933.Spec : Prop :=
  ∀ n, P4464871039420179933.a n = A063331 (n + 2)

theorem P4464871039420179933.correct : P4464871039420179933.Spec := by
  intro n
  simp only [A063331, Nat.add_sub_cancel]

end A063331

/-! ## A063331.P524114368244976014

`A063335(n+2)-5*n`
-/

namespace A063331.P524114368244976014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - (5 * n : ℤ)

end

end A063331.P524114368244976014

namespace A063331

/-- `A063335(n+2)-5*n` -/
def P524114368244976014.Spec : Prop :=
  ∀ n, P524114368244976014.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P1185368251772944279

`A063307(n+2)+23*n`
-/

namespace A063331.P1185368251772944279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (23 * n : ℤ)

end

end A063331.P1185368251772944279

namespace A063331

/-- `A063307(n+2)+23*n` -/
def P1185368251772944279.Spec : Prop :=
  ∀ n, P1185368251772944279.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P2212200472895171195

`A063311(n+2)+A008602(n)`
-/

namespace A063331.P2212200472895171195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + A008602 n

end

end A063331.P2212200472895171195

namespace A063331

/-- `A063311(n+2)+A008602(n)` -/
def P2212200472895171195.Spec : Prop :=
  ∀ n, P2212200472895171195.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P10730409894700034647

`A063319(n+2)+A008595(n)`
-/

namespace A063331.P10730409894700034647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + A008595 n

end

end A063331.P10730409894700034647

namespace A063331

/-- `A063319(n+2)+A008595(n)` -/
def P10730409894700034647.Spec : Prop :=
  ∀ n, P10730409894700034647.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P1992253708802912033

`A135628(n)+A063299(n+2)`
-/

namespace A063331.P1992253708802912033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 n + A063299 (n + 2)

end

end A063331.P1992253708802912033

namespace A063331

/-- `A135628(n)+A063299(n+2)` -/
def P1992253708802912033.Spec : Prop :=
  ∀ n, P1992253708802912033.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P8705373671670495260

`A249674(n)+A063295(n+2)`
-/

namespace A063331.P8705373671670495260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063295 (n + 2)

end

end A063331.P8705373671670495260

namespace A063331

/-- `A249674(n)+A063295(n+2)` -/
def P8705373671670495260.Spec : Prop :=
  ∀ n, P8705373671670495260.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P13657032275736163516

`A063347(n+2)-A008604(n)`
-/

namespace A063331.P13657032275736163516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) - A008604 n

end

end A063331.P13657032275736163516

namespace A063331

/-- `A063347(n+2)-A008604(n)` -/
def P13657032275736163516.Spec : Prop :=
  ∀ n, P13657032275736163516.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P4528128538003447508

`A063299(n+2)+2*A008596(n)`
-/

namespace A063331.P4528128538003447508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + 2 * A008596 n

end

end A063331.P4528128538003447508

namespace A063331

/-- `A063299(n+2)+2*A008596(n)` -/
def P4528128538003447508.Spec : Prop :=
  ∀ n, P4528128538003447508.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P5343610274107777405

`A063311(n+2)+2*A008592(n)`
-/

namespace A063331.P5343610274107777405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + 2 * A008592 n

end

end A063331.P5343610274107777405

namespace A063331

/-- `A063311(n+2)+2*A008592(n)` -/
def P5343610274107777405.Spec : Prop :=
  ∀ n, P5343610274107777405.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P2676904069942596908

`A063299(n+2)+A008596(2*n)`
-/

namespace A063331.P2676904069942596908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + A008596 (2 * n)

end

end A063331.P2676904069942596908

namespace A063331

/-- `A063299(n+2)+A008596(2*n)` -/
def P2676904069942596908.Spec : Prop :=
  ∀ n, P2676904069942596908.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P9553212984739748511

`A063311(n+2)+A008592(2*n)`
-/

namespace A063331.P9553212984739748511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + A008592 (2 * n)

end

end A063331.P9553212984739748511

namespace A063331

/-- `A063311(n+2)+A008592(2*n)` -/
def P9553212984739748511.Spec : Prop :=
  ∀ n, P9553212984739748511.a n = A063331 (n + 2)

end A063331

/-! ## A063331.P6255347718181758178

`A063359(n+2)-A008589(6*n)`
-/

namespace A063331.P6255347718181758178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - A008589 (6 * n)

end

end A063331.P6255347718181758178

namespace A063331

/-- `A063359(n+2)-A008589(6*n)` -/
def P6255347718181758178.Spec : Prop :=
  ∀ n, P6255347718181758178.a n = A063331 (n + 2)

end A063331

/-!
# A063332: Dimension of the space of weight n cuspidal newforms for Gamma_1( 59 ).

The programs for A063332, the canonical program `A063332.P5010442560393297603` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063332 has offset 2).

The definition of A063332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063332.P5010442560393297603

`ogf((-1+117x+261x^2+406x^3+552x^4+579x^5+581x^6+463x^7+319x^8+174x^9+28x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063332

/-- `ogf((-1+117x+261x^2+406x^3+552x^4+579x^5+581x^6+463x^7+319x^8+174x^9+28x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P5010442560393297603.Spec : Prop :=
  ∀ n, P5010442560393297603.a n = A063332 (n + 2)

theorem P5010442560393297603.correct : P5010442560393297603.Spec := by
  intro n
  simp only [A063332, Nat.add_sub_cancel]

end A063332

/-! ## A063332.P10185649581631055327

`A063330(n+2)+A063340(n+2)-A063342(n+2)`
-/

namespace A063332.P10185649581631055327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063340 (n + 2) - A063342 (n + 2))

end

end A063332.P10185649581631055327

namespace A063332

/-- `A063330(n+2)+A063340(n+2)-A063342(n+2)` -/
def P10185649581631055327.Spec : Prop :=
  ∀ n, P10185649581631055327.a n = A063332 (n + 2)

end A063332

/-! ## A063332.P325324914430478203

`A063333(n+2)+A063340(n+2)-A063357(n+2)`
-/

namespace A063332.P325324914430478203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063340 (n + 2) - A063357 (n + 2))

end

end A063332.P325324914430478203

namespace A063332

/-- `A063333(n+2)+A063340(n+2)-A063357(n+2)` -/
def P325324914430478203.Spec : Prop :=
  ∀ n, P325324914430478203.a n = A063332 (n + 2)

end A063332

/-! ## A063332.P6974047782203505623

`A063334(n+2)-A063093(2*n+1)`
-/

namespace A063332.P6974047782203505623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A063093 (2 * n + 1)

end

end A063332.P6974047782203505623

namespace A063332

/-- `A063334(n+2)-A063093(2*n+1)` -/
def P6974047782203505623.Spec : Prop :=
  ∀ n, P6974047782203505623.a n = A063332 (n + 2)

end A063332

/-! ## A063332.P1049438239898303607

`A063334(n+2)-A004273(A008587(n))`
-/

namespace A063332.P1049438239898303607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A004273 (A008587 n).toNat

end

end A063332.P1049438239898303607

namespace A063332

/-- `A063334(n+2)-A004273(A008587(n))` -/
def P1049438239898303607.Spec : Prop :=
  ∀ n, P1049438239898303607.a n = A063332 (n + 2)

end A063332

/-! ## A063332.P5433442758224772410

`A063334(n+2)-A014681(A008592(n))`
-/

namespace A063332.P5433442758224772410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A014681 (A008592 n).toNat

end

end A063332.P5433442758224772410

namespace A063332

/-- `A063334(n+2)-A014681(A008592(n))` -/
def P5433442758224772410.Spec : Prop :=
  ∀ n, P5433442758224772410.a n = A063332 (n + 2)

end A063332

/-!
# A063333: Dimension of the space of weight n cuspidal newforms for Gamma_1( 60 ).

The programs for A063333, the canonical program `A063333.P10320341317958504728` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063333 has offset 2).

The definition of A063333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063333.P10320341317958504728

`ogf((-1+35x+36x^2+37x^3+78x^4+37x^5+44x^6+35x^7+7x^8)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063333

/-- `ogf((-1+35x+36x^2+37x^3+78x^4+37x^5+44x^6+35x^7+7x^8)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P10320341317958504728.Spec : Prop :=
  ∀ n, P10320341317958504728.a n = A063333 (n + 2)

theorem P10320341317958504728.correct : P10320341317958504728.Spec := by
  intro n
  simp only [A063333, Nat.add_sub_cancel]

end A063333

/-! ## A063333.P4897649138449594012

`A063330(n+2)+A063357(n+2)-A063342(n+2)`
-/

namespace A063333.P4897649138449594012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063357 (n + 2) - A063342 (n + 2))

end

end A063333.P4897649138449594012

namespace A063333

/-- `A063330(n+2)+A063357(n+2)-A063342(n+2)` -/
def P4897649138449594012.Spec : Prop :=
  ∀ n, P4897649138449594012.a n = A063333 (n + 2)

end A063333

/-! ## A063333.P13305687281246150520

`A063332(n+2)+A063357(n+2)-A063340(n+2)`
-/

namespace A063333.P13305687281246150520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + (A063357 (n + 2) - A063340 (n + 2))

end

end A063333.P13305687281246150520

namespace A063333

/-- `A063332(n+2)+A063357(n+2)-A063340(n+2)` -/
def P13305687281246150520.Spec : Prop :=
  ∀ n, P13305687281246150520.a n = A063333 (n + 2)

end A063333

/-! ## A063333.P7819518153706103405

`A063334(n+2)-A063093(2*n+1)+A063357(n+2)-A063340(n+2)`
-/

namespace A063333.P7819518153706103405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A063093 (2 * n + 1) + (A063357 (n + 2) - A063340 (n + 2))

end

end A063333.P7819518153706103405

namespace A063333

/-- `A063334(n+2)-A063093(2*n+1)+A063357(n+2)-A063340(n+2)` -/
def P7819518153706103405.Spec : Prop :=
  ∀ n, P7819518153706103405.a n = A063333 (n + 2)

end A063333

/-!
# A063334: Dimension of the space of weight n cuspidal newforms for Gamma_1( 61 ).

The programs for A063334, the canonical program `A063334.P14620997085232417901` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063334 has offset 2).

The definition of A063334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063334.P14620997085232417901

`ogf((-1+126x+280x^2+435x^3+591x^4+619x^5+621x^6+494x^7+340x^8+185x^9+29x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063334

/-- `ogf((-1+126x+280x^2+435x^3+591x^4+619x^5+621x^6+494x^7+340x^8+185x^9+29x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P14620997085232417901.Spec : Prop :=
  ∀ n, P14620997085232417901.a n = A063334 (n + 2)

theorem P14620997085232417901.correct : P14620997085232417901.Spec := by
  intro n
  simp only [A063334, Nat.add_sub_cancel]

end A063334

/-! ## A063334.P8074437340189732918

`A063332(n+2)+A008592(n)-A057427(n)`
-/

namespace A063334.P8074437340189732918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + (A008592 n - A057427 n)

end

end A063334.P8074437340189732918

namespace A063334

/-- `A063332(n+2)+A008592(n)-A057427(n)` -/
def P8074437340189732918.Spec : Prop :=
  ∀ n, P8074437340189732918.a n = A063334 (n + 2)

end A063334

/-! ## A063334.P15709898525847969478

`A063332(n+2)+A063093(2*n+1)`
-/

namespace A063334.P15709898525847969478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + A063093 (2 * n + 1)

end

end A063334.P15709898525847969478

namespace A063334

/-- `A063332(n+2)+A063093(2*n+1)` -/
def P15709898525847969478.Spec : Prop :=
  ∀ n, P15709898525847969478.a n = A063334 (n + 2)

end A063334

/-! ## A063334.P7009323918856811338

`A063093(2*n+1)+A063333(n+2)+A063340(n+2)-A063357(n+2)`
-/

namespace A063334.P7009323918856811338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (2 * n + 1) + (A063333 (n + 2) + (A063340 (n + 2) - A063357 (n + 2)))

end

end A063334.P7009323918856811338

namespace A063334

/-- `A063093(2*n+1)+A063333(n+2)+A063340(n+2)-A063357(n+2)` -/
def P7009323918856811338.Spec : Prop :=
  ∀ n, P7009323918856811338.a n = A063334 (n + 2)

end A063334

/-! ## A063334.P4006132384478146317

`A063332(n+2)+A004273(A008587(n))`
-/

namespace A063334.P4006132384478146317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + A004273 (A008587 n).toNat

end

end A063334.P4006132384478146317

namespace A063334

/-- `A063332(n+2)+A004273(A008587(n))` -/
def P4006132384478146317.Spec : Prop :=
  ∀ n, P4006132384478146317.a n = A063334 (n + 2)

end A063334

/-! ## A063334.P5951189420669835667

`A063332(n+2)+A014681(A008592(n))`
-/

namespace A063334.P5951189420669835667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + A014681 (A008592 n).toNat

end

end A063334.P5951189420669835667

namespace A063334

/-- `A063332(n+2)+A014681(A008592(n))` -/
def P5951189420669835667.Spec : Prop :=
  ∀ n, P5951189420669835667.a n = A063334 (n + 2)

end A063334

/-!
# A063335: Dimension of the space of weight n cuspidal newforms for Gamma_1( 62 ).

The programs for A063335, the canonical program `A063335.P475240140480975303` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063335 has offset 2).

The definition of A063335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063335.P475240140480975303

`ogf((-1+39x+80x^2+120x^3+161x^4+161x^5+161x^6+119x^7+80x^8+38x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063335

/-- `ogf((-1+39x+80x^2+120x^3+161x^4+161x^5+161x^6+119x^7+80x^8+38x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P475240140480975303.Spec : Prop :=
  ∀ n, P475240140480975303.a n = A063335 (n + 2)

theorem P475240140480975303.correct : P475240140480975303.Spec := by
  intro n
  simp only [A063335, Nat.add_sub_cancel]

end A063335

/-! ## A063335.P1132051161763124708

`A063331(2+n)+5*n`
-/

namespace A063335.P1132051161763124708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (2 + n) + (5 * n : ℤ)

end

end A063335.P1132051161763124708

namespace A063335

/-- `A063331(2+n)+5*n` -/
def P1132051161763124708.Spec : Prop :=
  ∀ n, P1132051161763124708.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P2943824713930824939

`A063295(n+2)+35*n`
-/

namespace A063335.P2943824713930824939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (35 * n : ℤ)

end

end A063335.P2943824713930824939

namespace A063335

/-- `A063295(n+2)+35*n` -/
def P2943824713930824939.Spec : Prop :=
  ∀ n, P2943824713930824939.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P4068040219534872601

`A063311(n+2)+A008607(n)`
-/

namespace A063335.P4068040219534872601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + A008607 n

end

end A063335.P4068040219534872601

namespace A063335

/-- `A063311(n+2)+A008607(n)` -/
def P4068040219534872601.Spec : Prop :=
  ∀ n, P4068040219534872601.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P15913071185928604843

`A063319(n+2)+A008600(n)`
-/

namespace A063335.P15913071185928604843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + A008600 n

end

end A063335.P15913071185928604843

namespace A063335

/-- `A063319(n+2)+A008600(n)` -/
def P15913071185928604843.Spec : Prop :=
  ∀ n, P15913071185928604843.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P15139766904781161468

`A135628(n)+A063307(n+2)`
-/

namespace A063335.P15139766904781161468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 n + A063307 (n + 2)

end

end A063335.P15139766904781161468

namespace A063335

/-- `A135628(n)+A063307(n+2)` -/
def P15139766904781161468.Spec : Prop :=
  ∀ n, P15139766904781161468.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P334008958816955893

`A063347(n+2)-A008599(n)`
-/

namespace A063335.P334008958816955893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) - A008599 n

end

end A063335.P334008958816955893

namespace A063335

/-- `A063347(n+2)-A008599(n)` -/
def P334008958816955893.Spec : Prop :=
  ∀ n, P334008958816955893.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P15170729754449608038

`A063359(n+2)-A085959(n)`
-/

namespace A063335.P15170729754449608038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - A085959 n

end

end A063335.P15170729754449608038

namespace A063335

/-- `A063359(n+2)-A085959(n)` -/
def P15170729754449608038.Spec : Prop :=
  ∀ n, P15170729754449608038.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P4270345798920866281

`A063355(n+2)-A249674(n)`
-/

namespace A063335.P4270345798920866281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) - A249674 n

end

end A063335.P4270345798920866281

namespace A063335

/-- `A063355(n+2)-A249674(n)` -/
def P4270345798920866281.Spec : Prop :=
  ∀ n, P4270345798920866281.a n = A063335 (n + 2)

end A063335

/-! ## A063335.P17246033780501001795

`A063319(n+2)+A008599(n)+n`
-/

namespace A063335.P17246033780501001795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + (A008599 n + (n : ℤ))

end

end A063335.P17246033780501001795

namespace A063335

/-- `A063319(n+2)+A008599(n)+n` -/
def P17246033780501001795.Spec : Prop :=
  ∀ n, P17246033780501001795.a n = A063335 (n + 2)

end A063335

/-!
# A063336: Dimension of the space of weight n cuspidal newforms for Gamma_1( 63 ).

The programs for A063336, the canonical program `A063336.P908841859652595545` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063336 has offset 2).

The definition of A063336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063336.P908841859652595545

`ogf((-1+87x+197x^2+305x^3+414x^4+438x^5+437x^6+349x^7+243x^8+131x^9+22x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063336

/-- `ogf((-1+87x+197x^2+305x^3+414x^4+438x^5+437x^6+349x^7+243x^8+131x^9+22x^10)/(1-x^4-x^6+x^10))` -/
def P908841859652595545.Spec : Prop :=
  ∀ n, P908841859652595545.a n = A063336 (n + 2)

theorem P908841859652595545.correct : P908841859652595545.Spec := by
  intro n
  simp only [A063336, Nat.add_sub_cancel]

end A063336

/-! ## A063336.P11497311304127561032

`A063318(n+2)+A063320(n+2)-A063302(n+2)`
-/

namespace A063336.P11497311304127561032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063318 (n + 2) + (A063320 (n + 2) - A063302 (n + 2))

end

end A063336.P11497311304127561032

namespace A063336

/-- `A063318(n+2)+A063320(n+2)-A063302(n+2)` -/
def P11497311304127561032.Spec : Prop :=
  ∀ n, P11497311304127561032.a n = A063336 (n + 2)

end A063336

/-!
# A063337: Dimension of the space of weight n cuspidal newforms for Gamma_1( 64 ).

The programs for A063337, the canonical program `A063337.P5801710649172358678` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063337 has offset 2).

The definition of A063337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063337.P5801710649172358678

`ogf((-1+63x+10x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063337

/-- `ogf((-1+63x+10x^2)/(1-2x+x^2))` -/
def P5801710649172358678.Spec : Prop :=
  ∀ n, P5801710649172358678.a n = A063337 (n + 2)

theorem P5801710649172358678.correct : P5801710649172358678.Spec := by
  intro n
  simp only [A063337, Nat.add_sub_cancel]

end A063337

/-!
# A063338: Dimension of the space of weight n cuspidal newforms for Gamma_1( 65 ).

The programs for A063338, the canonical program `A063338.P6885311457457658170` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063338 has offset 2).

The definition of A063338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063338.P6885311457457658170

`ogf((-1+117x+272x^2+424x^3+577x^4+611x^5+609x^6+491x^7+336x^8+184x^9+31x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063338

/-- `ogf((-1+117x+272x^2+424x^3+577x^4+611x^5+609x^6+491x^7+336x^8+184x^9+31x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P6885311457457658170.Spec : Prop :=
  ∀ n, P6885311457457658170.a n = A063338 (n + 2)

theorem P6885311457457658170.correct : P6885311457457658170.Spec := by
  intro n
  simp only [A063338, Nat.add_sub_cancel]

end A063338

/-! ## A063338.P639662154909263064

`A063316(n+2)+A063358(n+2)-A063340(n+2)`
-/

namespace A063338.P639662154909263064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063316 (n + 2) + (A063358 (n + 2) - A063340 (n + 2))

end

end A063338.P639662154909263064

namespace A063338

/-- `A063316(n+2)+A063358(n+2)-A063340(n+2)` -/
def P639662154909263064.Spec : Prop :=
  ∀ n, P639662154909263064.a n = A063338 (n + 2)

end A063338

/-!
# A063339: Dimension of the space of weight n cuspidal newforms for Gamma_1( 66 ).

The programs for A063339, the canonical program `A063339.P14683892781448108194` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063339 has offset 2).

The definition of A063339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063339.P14683892781448108194

`ogf((-1+32x+29x^2+27x^3+61x^4+29x^5+27x^6+33x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063339

/-- `ogf((-1+32x+29x^2+27x^3+61x^4+29x^5+27x^6+33x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P14683892781448108194.Spec : Prop :=
  ∀ n, P14683892781448108194.a n = A063339 (n + 2)

theorem P14683892781448108194.correct : P14683892781448108194.Spec := by
  intro n
  simp only [A063339, Nat.add_sub_cancel]

end A063339

/-! ## A063339.P1208997243328421884

`A063351(n+2)-12*n`
-/

namespace A063339.P1208997243328421884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063351 (n + 2) - (12 * n : ℤ)

end

end A063339.P1208997243328421884

namespace A063339

/-- `A063351(n+2)-12*n` -/
def P1208997243328421884.Spec : Prop :=
  ∀ n, P1208997243328421884.a n = A063339 (n + 2)

end A063339

/-! ## A063339.P9693568185123392103

`A063303(n+2)+24*n`
-/

namespace A063339.P9693568185123392103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + (24 * n : ℤ)

end

end A063339.P9693568185123392103

namespace A063339

/-- `A063303(n+2)+24*n` -/
def P9693568185123392103.Spec : Prop :=
  ∀ n, P9693568185123392103.a n = A063339 (n + 2)

end A063339

/-! ## A063339.P13590153143402042292

`A063315(n+2)+3*6*n`
-/

namespace A063339.P13590153143402042292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + (3 * (6 * n) : ℤ)

end

end A063339.P13590153143402042292

namespace A063339

/-- `A063315(n+2)+3*6*n` -/
def P13590153143402042292.Spec : Prop :=
  ∀ n, P13590153143402042292.a n = A063339 (n + 2)

end A063339

/-! ## A063339.P10473096358001255120

`A008588(n)+A063303(n+2)+A008600(n)`
-/

namespace A063339.P10473096358001255120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + (A063303 (n + 2) + A008600 n)

end

end A063339.P10473096358001255120

namespace A063339

/-- `A008588(n)+A063303(n+2)+A008600(n)` -/
def P10473096358001255120.Spec : Prop :=
  ∀ n, P10473096358001255120.a n = A063339 (n + 2)

end A063339

/-! ## A063339.P16100109131697893036

`A008588(n)+A063315(n+2)+A008594(n)`
-/

namespace A063339.P16100109131697893036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + (A063315 (n + 2) + A008594 n)

end

end A063339.P16100109131697893036

namespace A063339

/-- `A008588(n)+A063315(n+2)+A008594(n)` -/
def P16100109131697893036.Spec : Prop :=
  ∀ n, P16100109131697893036.a n = A063339 (n + 2)

end A063339

/-! ## A063339.P7147262526658511463

`A008591(n)+A063315(n+2)+A008591(n)`
-/

namespace A063339.P7147262526658511463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + (A063315 (n + 2) + A008591 n)

end

end A063339.P7147262526658511463

namespace A063339

/-- `A008591(n)+A063315(n+2)+A008591(n)` -/
def P7147262526658511463.Spec : Prop :=
  ∀ n, P7147262526658511463.a n = A063339 (n + 2)

end A063339

/-!
# A063340: Dimension of the space of weight n cuspidal newforms for Gamma_1( 67 ).

The programs for A063340, the canonical program `A063340.P6335232273150447104` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063340 has offset 2).

The definition of A063340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063340.P6335232273150447104

`ogf((-1+155x+341x^2+528x^3+716x^4+747x^5+749x^6+593x^7+407x^8+220x^9+32x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063340

/-- `ogf((-1+155x+341x^2+528x^3+716x^4+747x^5+749x^6+593x^7+407x^8+220x^9+32x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P6335232273150447104.Spec : Prop :=
  ∀ n, P6335232273150447104.a n = A063340 (n + 2)

theorem P6335232273150447104.correct : P6335232273150447104.Spec := by
  intro n
  simp only [A063340, Nat.add_sub_cancel]

end A063340

/-! ## A063340.P15273882684764558466

`A063304(n+2)+A063365(n+2)-A063293(n+2)`
-/

namespace A063340.P15273882684764558466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (A063365 (n + 2) - A063293 (n + 2))

end

end A063340.P15273882684764558466

namespace A063340

/-- `A063304(n+2)+A063365(n+2)-A063293(n+2)` -/
def P15273882684764558466.Spec : Prop :=
  ∀ n, P15273882684764558466.a n = A063340 (n + 2)

end A063340

/-! ## A063340.P4296076862978079085

`A063316(n+2)+A063358(n+2)-A063338(n+2)`
-/

namespace A063340.P4296076862978079085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063316 (n + 2) + (A063358 (n + 2) - A063338 (n + 2))

end

end A063340.P4296076862978079085

namespace A063340

/-- `A063316(n+2)+A063358(n+2)-A063338(n+2)` -/
def P4296076862978079085.Spec : Prop :=
  ∀ n, P4296076862978079085.a n = A063340 (n + 2)

end A063340

/-! ## A063340.P9680751711009306086

`A063365(n+2)-A063293(n+2)+A063302(n+2)+A008706(n)-1`
-/

namespace A063340.P9680751711009306086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063365 (n + 2) - A063293 (n + 2) + (A063302 (n + 2) + (A008706 n - 1))

end

end A063340.P9680751711009306086

namespace A063340

/-- `A063365(n+2)-A063293(n+2)+A063302(n+2)+A008706(n)-1` -/
def P9680751711009306086.Spec : Prop :=
  ∀ n, P9680751711009306086.a n = A063340 (n + 2)

end A063340

/-! ## A063340.P15210004316956145307

`A063365(n+2)-A063293(n+2)+A063296(n+2)+A063305(n+2)+1`
-/

namespace A063340.P15210004316956145307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063365 (n + 2) - A063293 (n + 2) + (A063296 (n + 2) + (A063305 (n + 2) + 1))

end

end A063340.P15210004316956145307

namespace A063340

/-- `A063365(n+2)-A063293(n+2)+A063296(n+2)+A063305(n+2)+1` -/
def P15210004316956145307.Spec : Prop :=
  ∀ n, P15210004316956145307.a n = A063340 (n + 2)

end A063340

/-! ## A063340.P8778590443996745339

`A063365(n+2)-A063293(n+2)+A063302(n+2)+A008458(n)-(n+1)`
-/

namespace A063340.P8778590443996745339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063365 (n + 2) - A063293 (n + 2) + (A063302 (n + 2) + (A008458 n - (n + 1 : ℤ)))

end

end A063340.P8778590443996745339

namespace A063340

/-- `A063365(n+2)-A063293(n+2)+A063302(n+2)+A008458(n)-(n+1)` -/
def P8778590443996745339.Spec : Prop :=
  ∀ n, P8778590443996745339.a n = A063340 (n + 2)

end A063340

/-!
# A063341: Dimension of the space of weight n cuspidal newforms for Gamma_1( 68 ).

The programs for A063341, the canonical program `A063341.P11281005222853156599` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063341 has offset 2).

The definition of A063341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063341.P11281005222853156599

`ogf((-1+68x+152x^2+236x^3+319x^4+334x^5+333x^6+268x^7+180x^8+100x^9+13x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063341

/-- `ogf((-1+68x+152x^2+236x^3+319x^4+334x^5+333x^6+268x^7+180x^8+100x^9+13x^10)/(1-x^4-x^6+x^10))` -/
def P11281005222853156599.Spec : Prop :=
  ∀ n, P11281005222853156599.a n = A063341 (n + 2)

theorem P11281005222853156599.correct : P11281005222853156599.Spec := by
  intro n
  simp only [A063341, Nat.add_sub_cancel]

end A063341

/-!
# A063342: Dimension of the space of weight n cuspidal newforms for Gamma_1( 69 ).

The programs for A063342, the canonical program `A063342.P6159061998363490567` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063342 has offset 2).

The definition of A063342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063342.P6159061998363490567

`ogf((-1+110x+133x^2+131x^3+243x^4+153x^5+131x^6+133x^7+18x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063342

/-- `ogf((-1+110x+133x^2+131x^3+243x^4+153x^5+131x^6+133x^7+18x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P6159061998363490567.Spec : Prop :=
  ∀ n, P6159061998363490567.a n = A063342 (n + 2)

theorem P6159061998363490567.correct : P6159061998363490567.Spec := by
  intro n
  simp only [A063342, Nat.add_sub_cancel]

end A063342

/-! ## A063342.P4927136863333505580

`A063294(n+2)+A063334(n+2)-A063302(n+2)`
-/

namespace A063342.P4927136863333505580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063334 (n + 2) - A063302 (n + 2))

end

end A063342.P4927136863333505580

namespace A063342

/-- `A063294(n+2)+A063334(n+2)-A063302(n+2)` -/
def P4927136863333505580.Spec : Prop :=
  ∀ n, P4927136863333505580.a n = A063342 (n + 2)

end A063342

/-! ## A063342.P9972786834727852581

`A063330(n+2)+A063340(n+2)-A063332(n+2)`
-/

namespace A063342.P9972786834727852581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063340 (n + 2) - A063332 (n + 2))

end

end A063342.P9972786834727852581

namespace A063342

/-- `A063330(n+2)+A063340(n+2)-A063332(n+2)` -/
def P9972786834727852581.Spec : Prop :=
  ∀ n, P9972786834727852581.a n = A063342 (n + 2)

end A063342

/-! ## A063342.P13146269347686089209

`A063330(n+2)+A063357(n+2)-A063333(n+2)`
-/

namespace A063342.P13146269347686089209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063357 (n + 2) - A063333 (n + 2))

end

end A063342.P13146269347686089209

namespace A063342

/-- `A063330(n+2)+A063357(n+2)-A063333(n+2)` -/
def P13146269347686089209.Spec : Prop :=
  ∀ n, P13146269347686089209.a n = A063342 (n + 2)

end A063342

/-! ## A063342.P6816943896149452325

`A063346(n+2)+A063366(n+2)-A063362(n+2)`
-/

namespace A063342.P6816943896149452325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063346 (n + 2) + (A063366 (n + 2) - A063362 (n + 2))

end

end A063342.P6816943896149452325

namespace A063342

/-- `A063346(n+2)+A063366(n+2)-A063362(n+2)` -/
def P6816943896149452325.Spec : Prop :=
  ∀ n, P6816943896149452325.a n = A063342 (n + 2)

theorem P6816943896149452325.correct : P6816943896149452325.Spec := by
  intro n
  simp only [A063342, Nat.add_sub_cancel, A063342.P6816943896149452325.a, A063342.P6159061998363490567.a, A063346, A063346.P6529946134590936299.a, A063362, A063362.P9307569621251314589.a, A063366, A063366.P6158412515402875142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063342

/-! ## A063342.P2874041549311019635

`A063330(n+2)+A063340(n+2)-(A063334(n+2)-A063093(2*n+1))`
-/

namespace A063342.P2874041549311019635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063340 (n + 2) - (A063334 (n + 2) - A063093 (2 * n + 1)))

end

end A063342.P2874041549311019635

namespace A063342

/-- `A063330(n+2)+A063340(n+2)-(A063334(n+2)-A063093(2*n+1))` -/
def P2874041549311019635.Spec : Prop :=
  ∀ n, P2874041549311019635.a n = A063342 (n + 2)

end A063342

/-!
# A063343: Dimension of the space of weight n cuspidal newforms for Gamma_1( 70 ).

The programs for A063343, the canonical program `A063343.P16860697692683238140` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063343 has offset 2).

The definition of A063343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063343.P16860697692683238140

`ogf((-1+45x+84x^2+126x^3+169x^4+165x^5+169x^6+127x^7+84x^8+46x^9-x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063343

/-- `ogf((-1+45x+84x^2+126x^3+169x^4+165x^5+169x^6+127x^7+84x^8+46x^9-x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P16860697692683238140.Spec : Prop :=
  ∀ n, P16860697692683238140.a n = A063343 (n + 2)

theorem P16860697692683238140.correct : P16860697692683238140.Spec := by
  intro n
  simp only [A063343, Nat.add_sub_cancel]

end A063343

/-! ## A063343.P11161651646376633938

`A063942(2*n+1)+A063351(n+2)`
-/

namespace A063343.P11161651646376633938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (2 * n + 1) + A063351 (n + 2)

end

end A063343.P11161651646376633938

namespace A063343

/-- `A063942(2*n+1)+A063351(n+2)` -/
def P11161651646376633938.Spec : Prop :=
  ∀ n, P11161651646376633938.a n = A063343 (n + 2)

end A063343

/-!
# A063344: Dimension of the space of weight n cuspidal newforms for Gamma_1( 71 ).

The programs for A063344, the canonical program `A063344.P11626185483072866242` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063344 has offset 2).

The definition of A063344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063344.P11626185483072866242

`ogf((-1+176x+385x^2+595x^3+806x^4+839x^5+841x^6+664x^7+455x^8+245x^9+34x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063344

/-- `ogf((-1+176x+385x^2+595x^3+806x^4+839x^5+841x^6+664x^7+455x^8+245x^9+34x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P11626185483072866242.Spec : Prop :=
  ∀ n, P11626185483072866242.a n = A063344 (n + 2)

theorem P11626185483072866242.correct : P11626185483072866242.Spec := by
  intro n
  simp only [A063344, Nat.add_sub_cancel]

end A063344

/-! ## A063344.P7164968795258985131

`A063346(n+2)-(A063293(2*(n+1))+1)`
-/

namespace A063344.P7164968795258985131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063346 (n + 2) - (A063293 (2 * (n + 1)) + 1)

end

end A063344.P7164968795258985131

namespace A063344

/-- `A063346(n+2)-(A063293(2*(n+1))+1)` -/
def P7164968795258985131.Spec : Prop :=
  ∀ n, P7164968795258985131.a n = A063344 (n + 2)

end A063344

/-! ## A063344.P5434328445353802369

`A063346(n+2)-A004273(6*n)`
-/

namespace A063344.P5434328445353802369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063346 (n + 2) - A004273 (6 * n)

end

end A063344.P5434328445353802369

namespace A063344

/-- `A063346(n+2)-A004273(6*n)` -/
def P5434328445353802369.Spec : Prop :=
  ∀ n, P5434328445353802369.a n = A063344 (n + 2)

end A063344

/-!
# A063345: Dimension of the space of weight n cuspidal newforms for Gamma_1( 72 ).

The programs for A063345, the canonical program `A063345.P5958737216323019255` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063345 has offset 2).

The definition of A063345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063345.P10782388570406296441

`ogf((-1+55x+120x^2+129x^3+129x^4+73x^5+8x^6)/(1-x^2-x^4+x^6))`
-/

namespace A063345.P10782388570406296441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 55, 120, 129, 129, 73, 8] [1, 0, -1, 0, -1, 0, 1] n

end

end A063345.P10782388570406296441

namespace A063345

/-- `ogf((-1+55x+120x^2+129x^3+129x^4+73x^5+8x^6)/(1-x^2-x^4+x^6))` -/
def P10782388570406296441.Spec : Prop :=
  ∀ n, P10782388570406296441.a n = A063345 (n + 2)

end A063345

/-! ## A063345.P5958737216323019255

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=55, a(2)=119, a(3)=184, a(4)=247, a(5)=312, a(6)=375`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063345

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P5958737216323019255.Spec : Prop :=
  ∀ n, P5958737216323019255.a n = A063345 (n + 2)

theorem P5958737216323019255.correct : P5958737216323019255.Spec := by
  intro n
  simp only [A063345, Nat.add_sub_cancel]

end A063345

/-!
# A063346: Dimension of the space of weight n cuspidal newforms for Gamma_1( 73 ).

The programs for A063346, the canonical program `A063346.P6529946134590936299` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063346 has offset 2).

The definition of A063346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063346.P6529946134590936299

`ogf((-1+187x+408x^2+630x^3+853x^4+887x^5+889x^6+701x^7+480x^8+258x^9+35x^10-x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063346

/-- `ogf((-1+187x+408x^2+630x^3+853x^4+887x^5+889x^6+701x^7+480x^8+258x^9+35x^10-x^11)/(1-x^4-x^6+x^10))` -/
def P6529946134590936299.Spec : Prop :=
  ∀ n, P6529946134590936299.a n = A063346 (n + 2)

theorem P6529946134590936299.correct : P6529946134590936299.Spec := by
  intro n
  simp only [A063346, Nat.add_sub_cancel]

end A063346

/-! ## A063346.P1696560790606656677

`A063290(n+2)+A063364(n+2)-A063328(n+2)`
-/

namespace A063346.P1696560790606656677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + (A063364 (n + 2) - A063328 (n + 2))

end

end A063346.P1696560790606656677

namespace A063346

/-- `A063290(n+2)+A063364(n+2)-A063328(n+2)` -/
def P1696560790606656677.Spec : Prop :=
  ∀ n, P1696560790606656677.a n = A063346 (n + 2)

theorem P1696560790606656677.correct : P1696560790606656677.Spec := by
  intro n
  simp only [A063346, Nat.add_sub_cancel, A063346.P1696560790606656677.a, A063346.P6529946134590936299.a, A063290, A063290.P14374076764548880513.a, A063328, A063328.P7529174807991774181.a, A063364, A063364.P1042879225699115212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063346

/-! ## A063346.P10207750177705105223

`A063326(n+2)+A063365(n+2)-A063325(n+2)`
-/

namespace A063346.P10207750177705105223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063326 (n + 2) + (A063365 (n + 2) - A063325 (n + 2))

end

end A063346.P10207750177705105223

namespace A063346

/-- `A063326(n+2)+A063365(n+2)-A063325(n+2)` -/
def P10207750177705105223.Spec : Prop :=
  ∀ n, P10207750177705105223.a n = A063346 (n + 2)

end A063346

/-! ## A063346.P9135305689907595026

`A063342(n+2)+A063362(n+2)-A063366(n+2)`
-/

namespace A063346.P9135305689907595026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063342 (n + 2) + (A063362 (n + 2) - A063366 (n + 2))

end

end A063346.P9135305689907595026

namespace A063346

/-- `A063342(n+2)+A063362(n+2)-A063366(n+2)` -/
def P9135305689907595026.Spec : Prop :=
  ∀ n, P9135305689907595026.a n = A063346 (n + 2)

theorem P9135305689907595026.correct : P9135305689907595026.Spec := by
  intro n
  simp only [A063346, Nat.add_sub_cancel, A063346.P9135305689907595026.a, A063346.P6529946134590936299.a, A063342, A063342.P6159061998363490567.a, A063362, A063362.P9307569621251314589.a, A063366, A063366.P6158412515402875142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063346

/-! ## A063346.P8067710453349144406

`A063344(n+2)+A004273(6*n)`
-/

namespace A063346.P8067710453349144406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063344 (n + 2) + A004273 (6 * n)

end

end A063346.P8067710453349144406

namespace A063346

/-- `A063344(n+2)+A004273(6*n)` -/
def P8067710453349144406.Spec : Prop :=
  ∀ n, P8067710453349144406.a n = A063346 (n + 2)

end A063346

/-!
# A063347: Dimension of the space of weight n cuspidal newforms for Gamma_1( 74 ).

The programs for A063347, the canonical program `A063347.P17618615540382657254` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063347 has offset 2).

The definition of A063347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063347.P17618615540382657254

`ogf((-1+56x+114x^2+171x^3+229x^4+229x^5+229x^6+170x^7+114x^8+55x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063347

/-- `ogf((-1+56x+114x^2+171x^3+229x^4+229x^5+229x^6+170x^7+114x^8+55x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P17618615540382657254.Spec : Prop :=
  ∀ n, P17618615540382657254.a n = A063347 (n + 2)

theorem P17618615540382657254.correct : P17618615540382657254.Spec := by
  intro n
  simp only [A063347, Nat.add_sub_cancel]

end A063347

/-! ## A063347.P8250361970466277617

`A063307(n+2)+45*n`
-/

namespace A063347.P8250361970466277617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (45 * n : ℤ)

end

end A063347.P8250361970466277617

namespace A063347

/-- `A063307(n+2)+45*n` -/
def P8250361970466277617.Spec : Prop :=
  ∀ n, P8250361970466277617.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P9024579327355235381

`A063295(n+2)+52*n`
-/

namespace A063347.P9024579327355235381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (52 * n : ℤ)

end

end A063347.P9024579327355235381

namespace A063347

/-- `A063295(n+2)+52*n` -/
def P9024579327355235381.Spec : Prop :=
  ∀ n, P9024579327355235381.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P4848678659764545478

`A063287(n+2)+55*n`
-/

namespace A063347.P4848678659764545478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (55 * n : ℤ)

end

end A063347.P4848678659764545478

namespace A063347

/-- `A063287(n+2)+55*n` -/
def P4848678659764545478.Spec : Prop :=
  ∀ n, P4848678659764545478.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P2397080726467144962

`A063331(n+2)+2*11*n`
-/

namespace A063347.P2397080726467144962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) + (2 * (11 * n) : ℤ)

end

end A063347.P2397080726467144962

namespace A063347

/-- `A063331(n+2)+2*11*n` -/
def P2397080726467144962.Spec : Prop :=
  ∀ n, P2397080726467144962.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P8124251729352901115

`A063335(n+2)+A008599(n)`
-/

namespace A063347.P8124251729352901115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) + A008599 n

end

end A063347.P8124251729352901115

namespace A063347

/-- `A063335(n+2)+A008599(n)` -/
def P8124251729352901115.Spec : Prop :=
  ∀ n, P8124251729352901115.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P15843887295704134394

`A063355(n+2)-A008595(n)`
-/

namespace A063347.P15843887295704134394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) - A008595 n

end

end A063347.P15843887295704134394

namespace A063347

/-- `A063355(n+2)-A008595(n)` -/
def P15843887295704134394.Spec : Prop :=
  ∀ n, P15843887295704134394.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P11147562887298911846

`A063359(n+2)-A008602(n)`
-/

namespace A063347.P11147562887298911846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - A008602 n

end

end A063347.P11147562887298911846

namespace A063347

/-- `A063359(n+2)-A008602(n)` -/
def P11147562887298911846.Spec : Prop :=
  ∀ n, P11147562887298911846.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P13253845422782511

`A063335(n+2)+A008600(n)-n`
-/

namespace A063347.P13253845422782511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) + (A008600 n - (n : ℤ))

end

end A063347.P13253845422782511

namespace A063347

/-- `A063335(n+2)+A008600(n)-n` -/
def P13253845422782511.Spec : Prop :=
  ∀ n, P13253845422782511.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P16268123829030180479

`A063311(n+2)+A008589(6*n)`
-/

namespace A063347.P16268123829030180479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + A008589 (6 * n)

end

end A063347.P16268123829030180479

namespace A063347

/-- `A063311(n+2)+A008589(6*n)` -/
def P16268123829030180479.Spec : Prop :=
  ∀ n, P16268123829030180479.a n = A063347 (n + 2)

end A063347

/-! ## A063347.P12861746941543274021

`A063299(n+2)+A008587(10*n)`
-/

namespace A063347.P12861746941543274021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + A008587 (10 * n)

end

end A063347.P12861746941543274021

namespace A063347

/-- `A063299(n+2)+A008587(10*n)` -/
def P12861746941543274021.Spec : Prop :=
  ∀ n, P12861746941543274021.a n = A063347 (n + 2)

end A063347

/-!
# A063348: Dimension of the space of weight n cuspidal newforms for Gamma_1( 75 ).

The programs for A063348, the canonical program `A063348.P856079903890626734` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063348 has offset 2).

The definition of A063348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063348.P856079903890626734

`ogf((-1+120x+137x^2+137x^3+259x^4+156x^5+139x^6+139x^7+20x^8)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063348

/-- `ogf((-1+120x+137x^2+137x^3+259x^4+156x^5+139x^6+139x^7+20x^8)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P856079903890626734.Spec : Prop :=
  ∀ n, P856079903890626734.a n = A063348 (n + 2)

theorem P856079903890626734.correct : P856079903890626734.Spec := by
  intro n
  simp only [A063348, Nat.add_sub_cancel]

end A063348

/-!
# A063349: Dimension of the space of weight n cuspidal newforms for Gamma_1( 76 ).

The programs for A063349, the canonical program `A063349.P15434219231280730170` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063349 has offset 2).

The definition of A063349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063349.P15434219231280730170

`ogf((-1+87x+192x^2+297x^3+401x^4+418x^5+417x^6+333x^7+224x^8+123x^9+15x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063349

/-- `ogf((-1+87x+192x^2+297x^3+401x^4+418x^5+417x^6+333x^7+224x^8+123x^9+15x^10)/(1-x^4-x^6+x^10))` -/
def P15434219231280730170.Spec : Prop :=
  ∀ n, P15434219231280730170.a n = A063349 (n + 2)

theorem P15434219231280730170.correct : P15434219231280730170.Spec := by
  intro n
  simp only [A063349, Nat.add_sub_cancel]

end A063349

/-!
# A063350: Dimension of the space of weight n cuspidal newforms for Gamma_1( 77 ).

The programs for A063350, the canonical program `A063350.P5666740641728871255` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063350 has offset 2).

The definition of A063350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063350.P5666740641728871255

`ogf((-1+179x+408x^2+634x^3+861x^4+907x^5+905x^6+725x^7+496x^8+270x^9+43x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063350

/-- `ogf((-1+179x+408x^2+634x^3+861x^4+907x^5+905x^6+725x^7+496x^8+270x^9+43x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P5666740641728871255.Spec : Prop :=
  ∀ n, P5666740641728871255.a n = A063350 (n + 2)

theorem P5666740641728871255.correct : P5666740641728871255.Spec := by
  intro n
  simp only [A063350, Nat.add_sub_cancel]

end A063350

/-! ## A063350.P2434760059370878522

`A063358(n+2)-A044102(n)`
-/

namespace A063350.P2434760059370878522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A044102 n

end

end A063350.P2434760059370878522

namespace A063350

/-- `A063358(n+2)-A044102(n)` -/
def P2434760059370878522.Spec : Prop :=
  ∀ n, P2434760059370878522.a n = A063350 (n + 2)

end A063350

/-! ## A063350.P8540769504614834293

`A063358(n+2)-A008591(A008586(n))`
-/

namespace A063350.P8540769504614834293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A008591 (A008586 n).toNat

end

end A063350.P8540769504614834293

namespace A063350

/-- `A063358(n+2)-A008591(A008586(n))` -/
def P8540769504614834293.Spec : Prop :=
  ∀ n, P8540769504614834293.a n = A063350 (n + 2)

end A063350

/-! ## A063350.P15279793201558002063

`A063358(n+2)-A008588(A008588(n))`
-/

namespace A063350.P15279793201558002063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A008588 (A008588 n).toNat

end

end A063350.P15279793201558002063

namespace A063350

/-- `A063358(n+2)-A008588(A008588(n))` -/
def P15279793201558002063.Spec : Prop :=
  ∀ n, P15279793201558002063.a n = A063350 (n + 2)

end A063350

/-! ## A063350.P12292905244655655983

`A063358(n+2)-A005843(18*n)`
-/

namespace A063350.P12292905244655655983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A005843 (18 * n)

end

end A063350.P12292905244655655983

namespace A063350

/-- `A063358(n+2)-A005843(18*n)` -/
def P12292905244655655983.Spec : Prop :=
  ∀ n, P12292905244655655983.a n = A063350 (n + 2)

end A063350

/-! ## A063350.P17484374472267910473

`A063358(n+2)-A032766(A008606(n))`
-/

namespace A063350.P17484374472267910473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A032766 (A008606 n).toNat

end

end A063350.P17484374472267910473

namespace A063350

/-- `A063358(n+2)-A032766(A008606(n))` -/
def P17484374472267910473.Spec : Prop :=
  ∀ n, P17484374472267910473.a n = A063350 (n + 2)

end A063350

/-!
# A063351: Dimension of the space of weight n cuspidal newforms for Gamma_1( 78 ).

The programs for A063351, the canonical program `A063351.P18407674430602079735` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063351 has offset 2).

The definition of A063351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063351.P18407674430602079735

`ogf((-1+44x+41x^2+39x^3+85x^4+41x^5+39x^6+45x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063351

/-- `ogf((-1+44x+41x^2+39x^3+85x^4+41x^5+39x^6+45x^7-x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P18407674430602079735.Spec : Prop :=
  ∀ n, P18407674430602079735.a n = A063351 (n + 2)

theorem P18407674430602079735.correct : P18407674430602079735.Spec := by
  intro n
  simp only [A063351, Nat.add_sub_cancel]

end A063351

/-! ## A063351.P16690830884662654117

`A063339(n+2)+12*n`
-/

namespace A063351.P16690830884662654117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) + (12 * n : ℤ)

end

end A063351.P16690830884662654117

namespace A063351

/-- `A063339(n+2)+12*n` -/
def P16690830884662654117.Spec : Prop :=
  ∀ n, P16690830884662654117.a n = A063351 (n + 2)

end A063351

/-! ## A063351.P14634986460907370932

`A063303(n+2)+36*n`
-/

namespace A063351.P14634986460907370932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + (36 * n : ℤ)

end

end A063351.P14634986460907370932

namespace A063351

/-- `A063303(n+2)+36*n` -/
def P14634986460907370932.Spec : Prop :=
  ∀ n, P14634986460907370932.a n = A063351 (n + 2)

end A063351

/-! ## A063351.P5458499016219813882

`A249674(n)+A063315(n+2)`
-/

namespace A063351.P5458499016219813882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063315 (n + 2)

end

end A063351.P5458499016219813882

namespace A063351

/-- `A249674(n)+A063315(n+2)` -/
def P5458499016219813882.Spec : Prop :=
  ∀ n, P5458499016219813882.a n = A063351 (n + 2)

end A063351

/-! ## A063351.P1063939407541039159

`A063343(n+2)-A063942(2*n+1)`
-/

namespace A063351.P1063939407541039159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063343 (n + 2) - A063942 (2 * n + 1)

end

end A063351.P1063939407541039159

namespace A063351

/-- `A063343(n+2)-A063942(2*n+1)` -/
def P1063939407541039159.Spec : Prop :=
  ∀ n, P1063939407541039159.a n = A063351 (n + 2)

end A063351

/-! ## A063351.P13874746615092989580

`A063315(n+2)+A008588(5*n)`
-/

namespace A063351.P13874746615092989580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + A008588 (5 * n)

end

end A063351.P13874746615092989580

namespace A063351

/-- `A063315(n+2)+A008588(5*n)` -/
def P13874746615092989580.Spec : Prop :=
  ∀ n, P13874746615092989580.a n = A063351 (n + 2)

end A063351

/-!
# A063352: Dimension of the space of weight n cuspidal newforms for Gamma_1( 79 ).

The programs for A063352, the canonical program `A063352.P226120115990009649` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063352 has offset 2).

The definition of A063352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063352.P226120115990009649

`A063320(n+2)+A063360(n+2)-A063312(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063352

/-- `A063320(n+2)+A063360(n+2)-A063312(n+2)` -/
def P226120115990009649.Spec : Prop :=
  ∀ n, P226120115990009649.a n = A063352 (n + 2)

theorem P226120115990009649.correct : P226120115990009649.Spec := by
  intro n
  simp only [A063352, Nat.add_sub_cancel]

end A063352

/-! ## A063352.P7595737130111737962

`A063304(n+2)+A063368(n+2)-A063328(n+2)`
-/

namespace A063352.P7595737130111737962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (A063368 (n + 2) - A063328 (n + 2))

end

end A063352.P7595737130111737962

namespace A063352

/-- `A063304(n+2)+A063368(n+2)-A063328(n+2)` -/
def P7595737130111737962.Spec : Prop :=
  ∀ n, P7595737130111737962.a n = A063352 (n + 2)

theorem P7595737130111737962.correct : P7595737130111737962.Spec := by
  intro n
  simp only [A063352, Nat.add_sub_cancel, A063352.P7595737130111737962.a, A063352.P226120115990009649.a, A063304, A063304.P96353603920478857.a, A063312, A063312.P3431220036516263772.a, A063320, A063320.P9215198888039176748.a, A063328, A063328.P7529174807991774181.a, A063360, A063360.P14220350401855993139.a, A063368, A063368.P10121699038043785177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063352

/-!
# A063353: Dimension of the space of weight n cuspidal newforms for Gamma_1( 80 ).

The programs for A063353, the canonical program `A063353.P15196848433256147359` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063353 has offset 2).

The definition of A063353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063353.P1049223670290968836

`ogf((-1+87x+99x^2+13x^3)/(1-x-x^2+x^3))`
-/

namespace A063353.P1049223670290968836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 87, 99, 13] [1, -1, -1, 1] n

end

end A063353.P1049223670290968836

namespace A063353

/-- `ogf((-1+87x+99x^2+13x^3)/(1-x-x^2+x^3))` -/
def P1049223670290968836.Spec : Prop :=
  ∀ n, P1049223670290968836.a n = A063353 (n + 2)

end A063353

/-! ## A063353.P15196848433256147359

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=-1, a(1)=86, a(2)=184, a(3)=284`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063353

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P15196848433256147359.Spec : Prop :=
  ∀ n, P15196848433256147359.a n = A063353 (n + 2)

theorem P15196848433256147359.correct : P15196848433256147359.Spec := by
  intro n
  simp only [A063353, Nat.add_sub_cancel]

end A063353

/-!
# A063354: Dimension of the space of weight n cuspidal newforms for Gamma_1( 81 ).

The programs for A063354, the canonical program `A063354.P14340549625643206389` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063354 has offset 2).

The definition of A063354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063354.P14340549625643206389

`ogf((-1+166x+27x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063354

/-- `ogf((-1+166x+27x^2)/(1-2x+x^2))` -/
def P14340549625643206389.Spec : Prop :=
  ∀ n, P14340549625643206389.a n = A063354 (n + 2)

theorem P14340549625643206389.correct : P14340549625643206389.Spec := by
  intro n
  simp only [A063354, Nat.add_sub_cancel]

end A063354

/-!
# A063355: Dimension of the space of weight n cuspidal newforms for Gamma_1( 82 ).

The programs for A063355, the canonical program `A063355.P10203747964629022253` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063355 has offset 2).

The definition of A063355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063355.P10203747964629022253

`ogf((-1+69x+140x^2+210x^3+281x^4+281x^5+281x^6+209x^7+140x^8+68x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063355

/-- `ogf((-1+69x+140x^2+210x^3+281x^4+281x^5+281x^6+209x^7+140x^8+68x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P10203747964629022253.Spec : Prop :=
  ∀ n, P10203747964629022253.a n = A063355 (n + 2)

theorem P10203747964629022253.correct : P10203747964629022253.Spec := by
  intro n
  simp only [A063355, Nat.add_sub_cancel]

end A063355

/-! ## A063355.P10834099916788676966

`A063359(n+2)-7*n`
-/

namespace A063355.P10834099916788676966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - (7 * n : ℤ)

end

end A063355.P10834099916788676966

namespace A063355

/-- `A063359(n+2)-7*n` -/
def P10834099916788676966.Spec : Prop :=
  ∀ n, P10834099916788676966.a n = A063355 (n + 2)

end A063355

/-! ## A063355.P7635812618694506898

`A063311(n+2)+55*n`
-/

namespace A063355.P7635812618694506898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + (55 * n : ℤ)

end

end A063355.P7635812618694506898

namespace A063355

/-- `A063311(n+2)+55*n` -/
def P7635812618694506898.Spec : Prop :=
  ∀ n, P7635812618694506898.a n = A063355 (n + 2)

end A063355

/-! ## A063355.P14673199047153702751

`A063295(n+2)+65*n`
-/

namespace A063355.P14673199047153702751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (65 * n : ℤ)

end

end A063355.P14673199047153702751

namespace A063355

/-- `A063295(n+2)+65*n` -/
def P14673199047153702751.Spec : Prop :=
  ∀ n, P14673199047153702751.a n = A063355 (n + 2)

end A063355

/-! ## A063355.P13598087784375162787

`A063299(n+2)+7*9*n`
-/

namespace A063355.P13598087784375162787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (7 * (9 * n) : ℤ)

end

end A063355.P13598087784375162787

namespace A063355

/-- `A063299(n+2)+7*9*n` -/
def P13598087784375162787.Spec : Prop :=
  ∀ n, P13598087784375162787.a n = A063355 (n + 2)

end A063355

/-! ## A063355.P2772306311423776589

`A063347(n+2)+A008595(n)`
-/

namespace A063355.P2772306311423776589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) + A008595 n

end

end A063355.P2772306311423776589

namespace A063355

/-- `A063347(n+2)+A008595(n)` -/
def P2772306311423776589.Spec : Prop :=
  ∀ n, P2772306311423776589.a n = A063355 (n + 2)

end A063355

/-! ## A063355.P16026718687271119478

`A249674(n)+A063335(n+2)`
-/

namespace A063355.P16026718687271119478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063335 (n + 2)

end

end A063355.P16026718687271119478

namespace A063355

/-- `A249674(n)+A063335(n+2)` -/
def P16026718687271119478.Spec : Prop :=
  ∀ n, P16026718687271119478.a n = A063355 (n + 2)

end A063355

/-! ## A063355.P9370810042209086947

`A063367(n+2)-A008604(n)`
-/

namespace A063355.P9370810042209086947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063367 (n + 2) - A008604 n

end

end A063355.P9370810042209086947

namespace A063355

/-- `A063367(n+2)-A008604(n)` -/
def P9370810042209086947.Spec : Prop :=
  ∀ n, P9370810042209086947.a n = A063355 (n + 2)

end A063355

/-! ## A063355.P13907494060649707698

`A063335(n+2)+A008587(6*n)`
-/

namespace A063355.P13907494060649707698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) + A008587 (6 * n)

end

end A063355.P13907494060649707698

namespace A063355

/-- `A063335(n+2)+A008587(6*n)` -/
def P13907494060649707698.Spec : Prop :=
  ∀ n, P13907494060649707698.a n = A063355 (n + 2)

end A063355

/-!
# A063357: Dimension of the space of weight n cuspidal newforms for Gamma_1( 84 ).

The programs for A063357, the canonical program `A063357.P6711867062406528924` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063357 has offset 2).

The definition of A063357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063357.P6711867062406528924

`ogf((-1+73x+78x^2+79x^3+158x^4+83x^5+86x^6+77x^7+11x^8)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063357

/-- `ogf((-1+73x+78x^2+79x^3+158x^4+83x^5+86x^6+77x^7+11x^8)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P6711867062406528924.Spec : Prop :=
  ∀ n, P6711867062406528924.a n = A063357 (n + 2)

theorem P6711867062406528924.correct : P6711867062406528924.Spec := by
  intro n
  simp only [A063357, Nat.add_sub_cancel]

end A063357

/-! ## A063357.P1299015631343553499

`A063333(n+2)+A063340(n+2)-A063332(n+2)`
-/

namespace A063357.P1299015631343553499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063340 (n + 2) - A063332 (n + 2))

end

end A063357.P1299015631343553499

namespace A063357

/-- `A063333(n+2)+A063340(n+2)-A063332(n+2)` -/
def P1299015631343553499.Spec : Prop :=
  ∀ n, P1299015631343553499.a n = A063357 (n + 2)

end A063357

/-! ## A063357.P6058065644747693313

`A063333(n+2)+A063342(n+2)-A063330(n+2)`
-/

namespace A063357.P6058065644747693313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063342 (n + 2) - A063330 (n + 2))

end

end A063357.P6058065644747693313

namespace A063357

/-- `A063333(n+2)+A063342(n+2)-A063330(n+2)` -/
def P6058065644747693313.Spec : Prop :=
  ∀ n, P6058065644747693313.a n = A063357 (n + 2)

end A063357

/-! ## A063357.P2610005873951989919

`A063333(n+2)+A063340(n+2)-(A063334(n+2)-A063093(2*n+1))`
-/

namespace A063357.P2610005873951989919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063340 (n + 2) - (A063334 (n + 2) - A063093 (2 * n + 1)))

end

end A063357.P2610005873951989919

namespace A063357

/-- `A063333(n+2)+A063340(n+2)-(A063334(n+2)-A063093(2*n+1))` -/
def P2610005873951989919.Spec : Prop :=
  ∀ n, P2610005873951989919.a n = A063357 (n + 2)

end A063357

/-!
# A063358: Dimension of the space of weight n cuspidal newforms for Gamma_1( 85 ).

The programs for A063358, the canonical program `A063358.P2991736760799400020` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063358 has offset 2).

The definition of A063358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063358.P2991736760799400020

`A063350(2+n)+A044102(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063358

/-- `A063350(2+n)+A044102(n)` -/
def P2991736760799400020.Spec : Prop :=
  ∀ n, P2991736760799400020.a n = A063358 (n + 2)

theorem P2991736760799400020.correct : P2991736760799400020.Spec := by
  intro n
  simp only [A063358, Nat.add_sub_cancel]

end A063358

/-! ## A063358.P5398879378989104742

`A063350(n+2)+A008591(A008586(n))`
-/

namespace A063358.P5398879378989104742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A008591 (A008586 n).toNat

end

end A063358.P5398879378989104742

namespace A063358

/-- `A063350(n+2)+A008591(A008586(n))` -/
def P5398879378989104742.Spec : Prop :=
  ∀ n, P5398879378989104742.a n = A063358 (n + 2)

end A063358

/-! ## A063358.P17774735450524564413

`A063350(n+2)+A008588(A008588(n))`
-/

namespace A063358.P17774735450524564413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A008588 (A008588 n).toNat

end

end A063358.P17774735450524564413

namespace A063358

/-- `A063350(n+2)+A008588(A008588(n))` -/
def P17774735450524564413.Spec : Prop :=
  ∀ n, P17774735450524564413.a n = A063358 (n + 2)

end A063358

/-! ## A063358.P13109472486350398776

`A063350(n+2)+A005843(18*n)`
-/

namespace A063358.P13109472486350398776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A005843 (18 * n)

end

end A063358.P13109472486350398776

namespace A063358

/-- `A063350(n+2)+A005843(18*n)` -/
def P13109472486350398776.Spec : Prop :=
  ∀ n, P13109472486350398776.a n = A063358 (n + 2)

end A063358

/-! ## A063358.P10790925362583750375

`A063350(n+2)+A032766(A008606(n))`
-/

namespace A063358.P10790925362583750375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A032766 (A008606 n).toNat

end

end A063358.P10790925362583750375

namespace A063358

/-- `A063350(n+2)+A032766(A008606(n))` -/
def P10790925362583750375.Spec : Prop :=
  ∀ n, P10790925362583750375.a n = A063358 (n + 2)

end A063358

/-!
# A063359: Dimension of the space of weight n cuspidal newforms for Gamma_1( 86 ).

The programs for A063359, the canonical program `A063359.P9952038722666641500` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063359 has offset 2).

The definition of A063359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063359.P9952038722666641500

`ogf((-1+76x+154x^2+231x^3+309x^4+309x^5+309x^6+230x^7+154x^8+75x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063359

/-- `ogf((-1+76x+154x^2+231x^3+309x^4+309x^5+309x^6+230x^7+154x^8+75x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P9952038722666641500.Spec : Prop :=
  ∀ n, P9952038722666641500.a n = A063359 (n + 2)

theorem P9952038722666641500.correct : P9952038722666641500.Spec := by
  intro n
  simp only [A063359, Nat.add_sub_cancel]

end A063359

/-! ## A063359.P15762893541203700682

`A063355(n+2)+7*n`
-/

namespace A063359.P15762893541203700682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) + (7 * n : ℤ)

end

end A063359.P15762893541203700682

namespace A063359

/-- `A063355(n+2)+7*n` -/
def P15762893541203700682.Spec : Prop :=
  ∀ n, P15762893541203700682.a n = A063359 (n + 2)

end A063359

/-! ## A063359.P6792822701326958685

`A063347(n+2)+4*5*n`
-/

namespace A063359.P6792822701326958685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) + (4 * (5 * n) : ℤ)

end

end A063359.P6792822701326958685

namespace A063359

/-- `A063347(n+2)+4*5*n` -/
def P6792822701326958685.Spec : Prop :=
  ∀ n, P6792822701326958685.a n = A063359 (n + 2)

end A063359

/-! ## A063359.P5234572134101612596

`A085959(n)+A063335(n+2)`
-/

namespace A063359.P5234572134101612596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n + A063335 (n + 2)

end

end A063359.P5234572134101612596

namespace A063359

/-- `A085959(n)+A063335(n+2)` -/
def P5234572134101612596.Spec : Prop :=
  ∀ n, P5234572134101612596.a n = A063359 (n + 2)

end A063359

/-! ## A063359.P6232399130372644580

`A063367(n+2)-A008597(n)`
-/

namespace A063359.P6232399130372644580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063367 (n + 2) - A008597 n

end

end A063359.P6232399130372644580

namespace A063359

/-- `A063367(n+2)-A008597(n)` -/
def P6232399130372644580.Spec : Prop :=
  ∀ n, P6232399130372644580.a n = A063359 (n + 2)

end A063359

/-! ## A063359.P14693423898680714086

`A063331(n+2)+A008596(3*n)`
-/

namespace A063359.P14693423898680714086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) + A008596 (3 * n)

end

end A063359.P14693423898680714086

namespace A063359

/-- `A063331(n+2)+A008596(3*n)` -/
def P14693423898680714086.Spec : Prop :=
  ∀ n, P14693423898680714086.a n = A063359 (n + 2)

end A063359

/-! ## A063359.P3925361599551568808

`A063299(n+2)+A008596(5*n)`
-/

namespace A063359.P3925361599551568808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + A008596 (5 * n)

end

end A063359.P3925361599551568808

namespace A063359

/-- `A063299(n+2)+A008596(5*n)` -/
def P3925361599551568808.Spec : Prop :=
  ∀ n, P3925361599551568808.a n = A063359 (n + 2)

end A063359

/-! ## A063359.P2699429529880774039

`A063307(n+2)+A008595(A008587(n))`
-/

namespace A063359.P2699429529880774039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + A008595 (A008587 n).toNat

end

end A063359.P2699429529880774039

namespace A063359

/-- `A063307(n+2)+A008595(A008587(n))` -/
def P2699429529880774039.Spec : Prop :=
  ∀ n, P2699429529880774039.a n = A063359 (n + 2)

end A063359

/-! ## A063359.P8676517155041635819

`A063287(n+2)+A008587(15*n)`
-/

namespace A063359.P8676517155041635819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + A008587 (15 * n)

end

end A063359.P8676517155041635819

namespace A063359

/-- `A063287(n+2)+A008587(15*n)` -/
def P8676517155041635819.Spec : Prop :=
  ∀ n, P8676517155041635819.a n = A063359 (n + 2)

end A063359

/-!
# A063360: Dimension of the space of weight n cuspidal newforms for Gamma_1( 87 ).

The programs for A063360, the canonical program `A063360.P14220350401855993139` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063360 has offset 2).

The definition of A063360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063360.P14220350401855993139

`ogf((-1+182x+211x^2+209x^3+393x^4+237x^5+209x^6+211x^7+24x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063360

/-- `ogf((-1+182x+211x^2+209x^3+393x^4+237x^5+209x^6+211x^7+24x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P14220350401855993139.Spec : Prop :=
  ∀ n, P14220350401855993139.a n = A063360 (n + 2)

theorem P14220350401855993139.correct : P14220350401855993139.Spec := by
  intro n
  simp only [A063360, Nat.add_sub_cancel]

end A063360

/-! ## A063360.P2457909257267213649

`A063312(n+2)+A063352(n+2)-A063320(n+2)`
-/

namespace A063360.P2457909257267213649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063312 (n + 2) + (A063352 (n + 2) - A063320 (n + 2))

end

end A063360.P2457909257267213649

namespace A063360

/-- `A063312(n+2)+A063352(n+2)-A063320(n+2)` -/
def P2457909257267213649.Spec : Prop :=
  ∀ n, P2457909257267213649.a n = A063360 (n + 2)

theorem P2457909257267213649.correct : P2457909257267213649.Spec := by
  intro n
  simp only [A063360, Nat.add_sub_cancel, A063360.P2457909257267213649.a, A063360.P14220350401855993139.a, A063312, A063312.P3431220036516263772.a, A063320, A063320.P9215198888039176748.a, A063352, A063352.P226120115990009649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063360

/-!
# A063361: Dimension of the space of weight n cuspidal newforms for Gamma_1( 88 ).

The programs for A063361, the canonical program `A063361.P13697193221650290066` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063361 has offset 2).

The definition of A063361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063361.P16470272293087086379

`ogf((-1+115x+249x^2+264x^3+267x^4+151x^5+17x^6)/(1-x^2-x^4+x^6))`
-/

namespace A063361.P16470272293087086379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 115, 249, 264, 267, 151, 17] [1, 0, -1, 0, -1, 0, 1] n

end

end A063361.P16470272293087086379

namespace A063361

/-- `ogf((-1+115x+249x^2+264x^3+267x^4+151x^5+17x^6)/(1-x^2-x^4+x^6))` -/
def P16470272293087086379.Spec : Prop :=
  ∀ n, P16470272293087086379.a n = A063361 (n + 2)

end A063361

/-! ## A063361.P13697193221650290066

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=115, a(2)=248, a(3)=379, a(4)=514, a(5)=645, a(6)=780`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063361

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P13697193221650290066.Spec : Prop :=
  ∀ n, P13697193221650290066.a n = A063361 (n + 2)

theorem P13697193221650290066.correct : P13697193221650290066.Spec := by
  intro n
  simp only [A063361, Nat.add_sub_cancel]

end A063361

/-!
# A063362: Dimension of the space of weight n cuspidal newforms for Gamma_1( 89 ).

The programs for A063362, the canonical program `A063362.P9307569621251314589` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063362 has offset 2).

The definition of A063362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063362.P9307569621251314589

`A063346(n+2)+A063366(n+2)-A063342(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063362

/-- `A063346(n+2)+A063366(n+2)-A063342(n+2)` -/
def P9307569621251314589.Spec : Prop :=
  ∀ n, P9307569621251314589.a n = A063362 (n + 2)

theorem P9307569621251314589.correct : P9307569621251314589.Spec := by
  intro n
  simp only [A063362, Nat.add_sub_cancel]

end A063362

/-!
# A063363: Dimension of the space of weight n cuspidal newforms for Gamma_1( 90 ).

The programs for A063363, the canonical program `A063363.P8753370373567041720` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063363 has offset 2).

The definition of A063363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063363.P8753370373567041720

`ogf((-1+53x+102x^2+157x^3+213x^4+206x^5+213x^6+157x^7+102x^8+53x^9-x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063363

/-- `ogf((-1+53x+102x^2+157x^3+213x^4+206x^5+213x^6+157x^7+102x^8+53x^9-x^10)/(1-x^4-x^6+x^10))` -/
def P8753370373567041720.Spec : Prop :=
  ∀ n, P8753370373567041720.a n = A063363 (n + 2)

theorem P8753370373567041720.correct : P8753370373567041720.Spec := by
  intro n
  simp only [A063363, Nat.add_sub_cancel]

end A063363

/-!
# A063364: Dimension of the space of weight n cuspidal newforms for Gamma_1( 91 ).

The programs for A063364, the canonical program `A063364.P1042879225699115212` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063364 has offset 2).

The definition of A063364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063364.P1042879225699115212

`A063328(n+2)+A063346(n+2)-A063290(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063364

/-- `A063328(n+2)+A063346(n+2)-A063290(n+2)` -/
def P1042879225699115212.Spec : Prop :=
  ∀ n, P1042879225699115212.a n = A063364 (n + 2)

theorem P1042879225699115212.correct : P1042879225699115212.Spec := by
  intro n
  simp only [A063364, Nat.add_sub_cancel]

end A063364

/-!
# A063365: Dimension of the space of weight n cuspidal newforms for Gamma_1( 92 ).

The programs for A063365, the canonical program `A063365.P15970968758865679102` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063365 has offset 2).

The definition of A063365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063365.P15970968758865679102

`ogf((-1+132x+286x^2+440x^3+593x^4+614x^5+613x^6+484x^7+326x^8+176x^9+19x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063365

/-- `ogf((-1+132x+286x^2+440x^3+593x^4+614x^5+613x^6+484x^7+326x^8+176x^9+19x^10)/(1-x^4-x^6+x^10))` -/
def P15970968758865679102.Spec : Prop :=
  ∀ n, P15970968758865679102.a n = A063365 (n + 2)

theorem P15970968758865679102.correct : P15970968758865679102.Spec := by
  intro n
  simp only [A063365, Nat.add_sub_cancel]

end A063365

/-! ## A063365.P18212645443484130032

`A063293(n+2)+A063340(n+2)-A063304(n+2)`
-/

namespace A063365.P18212645443484130032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063293 (n + 2) + (A063340 (n + 2) - A063304 (n + 2))

end

end A063365.P18212645443484130032

namespace A063365

/-- `A063293(n+2)+A063340(n+2)-A063304(n+2)` -/
def P18212645443484130032.Spec : Prop :=
  ∀ n, P18212645443484130032.a n = A063365 (n + 2)

end A063365

/-! ## A063365.P5444164272929613900

`A063325(n+2)+A063346(n+2)-A063326(n+2)`
-/

namespace A063365.P5444164272929613900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063325 (n + 2) + (A063346 (n + 2) - A063326 (n + 2))

end

end A063365.P5444164272929613900

namespace A063365

/-- `A063325(n+2)+A063346(n+2)-A063326(n+2)` -/
def P5444164272929613900.Spec : Prop :=
  ∀ n, P5444164272929613900.a n = A063365 (n + 2)

end A063365

/-!
# A063366: Dimension of the space of weight n cuspidal newforms for Gamma_1( 93 ).

The programs for A063366, the canonical program `A063366.P6158412515402875142` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063366 has offset 2).

The definition of A063366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063366.P6158412515402875142

`ogf((-1+210x+241x^2+239x^3+451x^4+269x^5+239x^6+241x^7+26x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063366

/-- `ogf((-1+210x+241x^2+239x^3+451x^4+269x^5+239x^6+241x^7+26x^8+x^9)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P6158412515402875142.Spec : Prop :=
  ∀ n, P6158412515402875142.a n = A063366 (n + 2)

theorem P6158412515402875142.correct : P6158412515402875142.Spec := by
  intro n
  simp only [A063366, Nat.add_sub_cancel]

end A063366

/-! ## A063366.P4914878931583471397

`A063342(n+2)+A063362(n+2)-A063346(n+2)`
-/

namespace A063366.P4914878931583471397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063342 (n + 2) + (A063362 (n + 2) - A063346 (n + 2))

end

end A063366.P4914878931583471397

namespace A063366

/-- `A063342(n+2)+A063362(n+2)-A063346(n+2)` -/
def P4914878931583471397.Spec : Prop :=
  ∀ n, P4914878931583471397.a n = A063366 (n + 2)

theorem P4914878931583471397.correct : P4914878931583471397.Spec := by
  intro n
  simp only [A063366, Nat.add_sub_cancel, A063366.P4914878931583471397.a, A063366.P6158412515402875142.a, A063342, A063342.P6159061998363490567.a, A063346, A063346.P6529946134590936299.a, A063362, A063362.P9307569621251314589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063366

/-!
# A063367: Dimension of the space of weight n cuspidal newforms for Gamma_1( 94 ).

The programs for A063367, the canonical program `A063367.P16478128581389428443` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063367 has offset 2).

The definition of A063367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063367.P16478128581389428443

`ogf((-1+91x+184x^2+276x^3+369x^4+369x^5+369x^6+275x^7+184x^8+90x^9-x^10+x^11)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063367

/-- `ogf((-1+91x+184x^2+276x^3+369x^4+369x^5+369x^6+275x^7+184x^8+90x^9-x^10+x^11)/(1-x^4-x^6+x^10))` -/
def P16478128581389428443.Spec : Prop :=
  ∀ n, P16478128581389428443.a n = A063367 (n + 2)

theorem P16478128581389428443.correct : P16478128581389428443.Spec := by
  intro n
  simp only [A063367, Nat.add_sub_cancel]

end A063367

/-! ## A063367.P9999638399359554053

`A063287(n+2)+90*n`
-/

namespace A063367.P9999638399359554053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (90 * n : ℤ)

end

end A063367.P9999638399359554053

namespace A063367

/-- `A063287(n+2)+90*n` -/
def P9999638399359554053.Spec : Prop :=
  ∀ n, P9999638399359554053.a n = A063367 (n + 2)

end A063367

/-! ## A063367.P6573325376956000478

`A063283(n+2)+91*n`
-/

namespace A063367.P6573325376956000478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + (91 * n : ℤ)

end

end A063367.P6573325376956000478

namespace A063367

/-- `A063283(n+2)+91*n` -/
def P6573325376956000478.Spec : Prop :=
  ∀ n, P6573325376956000478.a n = A063367 (n + 2)

end A063367

/-! ## A063367.P7218471243980865054

`A063359(n+2)+3*5*n`
-/

namespace A063367.P7218471243980865054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) + (3 * (5 * n) : ℤ)

end

end A063367.P7218471243980865054

namespace A063367

/-- `A063359(n+2)+3*5*n` -/
def P7218471243980865054.Spec : Prop :=
  ∀ n, P7218471243980865054.a n = A063367 (n + 2)

end A063367

/-! ## A063367.P12579735168652237013

`A063355(n+2)+A008604(n)`
-/

namespace A063367.P12579735168652237013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) + A008604 n

end

end A063367.P12579735168652237013

namespace A063367

/-- `A063355(n+2)+A008604(n)` -/
def P12579735168652237013.Spec : Prop :=
  ∀ n, P12579735168652237013.a n = A063367 (n + 2)

end A063367

/-! ## A063367.P16871425737017987922

`A063299(n+2)+A008599(A008587(n))`
-/

namespace A063367.P16871425737017987922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + A008599 (A008587 n).toNat

end

end A063367.P16871425737017987922

namespace A063367

/-- `A063299(n+2)+A008599(A008587(n))` -/
def P16871425737017987922.Spec : Prop :=
  ∀ n, P16871425737017987922.a n = A063367 (n + 2)

end A063367

/-!
# A063368: Dimension of the space of weight n cuspidal newforms for Gamma_1( 95 ).

The programs for A063368, the canonical program `A063368.P10121699038043785177` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063368 has offset 2).

The definition of A063368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063368.P10121699038043785177

`A063328(n+2)+A063352(n+2)-A063304(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063368

/-- `A063328(n+2)+A063352(n+2)-A063304(n+2)` -/
def P10121699038043785177.Spec : Prop :=
  ∀ n, P10121699038043785177.a n = A063368 (n + 2)

theorem P10121699038043785177.correct : P10121699038043785177.Spec := by
  intro n
  simp only [A063368, Nat.add_sub_cancel]

end A063368

/-!
# A063369: Dimension of the space of weight n cuspidal newforms for Gamma_1( 96 ).

The programs for A063369, the canonical program `A063369.P16043655039895501132` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063369 has offset 2).

The definition of A063369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063369.P16043655039895501132

`ogf((-1+100x+9x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063369

/-- `ogf((-1+100x+9x^2)/(1-2x+x^2))` -/
def P16043655039895501132.Spec : Prop :=
  ∀ n, P16043655039895501132.a n = A063369 (n + 2)

theorem P16043655039895501132.correct : P16043655039895501132.Spec := by
  intro n
  simp only [A063369, Nat.add_sub_cancel]

end A063369

/-!
# A063371: Dimension of the space of weight n cuspidal newforms for Gamma_1( 98 ).

The programs for A063371, the canonical program `A063371.P11117965959101435016` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063371 has offset 2).

The definition of A063371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063371.P11117965959101435016

`ogf((-1+95x+188x^2+282x^3+377x^4+375x^5+377x^6+282x^7+188x^8+95x^9-x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063371

/-- `ogf((-1+95x+188x^2+282x^3+377x^4+375x^5+377x^6+282x^7+188x^8+95x^9-x^10)/(1-x^4-x^6+x^10))` -/
def P11117965959101435016.Spec : Prop :=
  ∀ n, P11117965959101435016.a n = A063371 (n + 2)

theorem P11117965959101435016.correct : P11117965959101435016.Spec := by
  intro n
  simp only [A063371, Nat.add_sub_cancel]

end A063371

/-!
# A063373: Dimension of the space of weight n cuspidal newforms for Gamma_1( 100 ).

The programs for A063373, the canonical program `A063373.P303783597822652207` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063373 has offset 2).

The definition of A063373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063373.P303783597822652207

`ogf((-1+141x+302x^2+463x^3+626x^4+645x^5+647x^6+503x^7+344x^8+181x^9+20x^10)/(1-x^4-x^6+x^10))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063373

/-- `ogf((-1+141x+302x^2+463x^3+626x^4+645x^5+647x^6+503x^7+344x^8+181x^9+20x^10)/(1-x^4-x^6+x^10))` -/
def P303783597822652207.Spec : Prop :=
  ∀ n, P303783597822652207.a n = A063373 (n + 2)

theorem P303783597822652207.correct : P303783597822652207.Spec := by
  intro n
  simp only [A063373, Nat.add_sub_cancel]

end A063373

/-!
# A063374: a(n) = Fibonacci(n!).

The programs for A063374, the canonical program `A063374.P8639264865164997725` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063374 has offset 0).

The definition of A063374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n!)` (program `A063374.P8639264865164997725`, by `A063374.P8639264865164997725.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063374.P8639264865164997725

`A000045(n!)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063374

/-- `A000045(n!)` -/
def P8639264865164997725.Spec : Prop :=
  ∀ n, P8639264865164997725.a n = A063374 n

theorem P8639264865164997725.correct : P8639264865164997725.Spec := by
  intro n
  simp only [A063374]

end A063374

/-!
# A063375: Number of divisors of Fibonacci(n).

The programs for A063375, the canonical program `A063375.P4586247262053786237` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063375 has offset 1).

The definition of A063375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063375.P4586247262053786237

`A000005(A000045(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063375

/-- `A000005(A000045(n+1))` -/
def P4586247262053786237.Spec : Prop :=
  ∀ n, P4586247262053786237.a n = A063375 (n + 1)

theorem P4586247262053786237.correct : P4586247262053786237.Spec := by
  intro n
  simp only [A063375, Nat.add_sub_cancel]

end A063375

/-! ## A063375.P6085649078986439725

`A152774(n+1)+1`
-/

namespace A063375.P6085649078986439725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1) + 1

end

end A063375.P6085649078986439725

namespace A063375

/-- `A152774(n+1)+1` -/
def P6085649078986439725.Spec : Prop :=
  ∀ n, P6085649078986439725.a n = A063375 (n + 1)

end A063375

/-! ## A063375.P1634535896876842619

`A160680(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A063375.P1634535896876842619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160680 (n + 2) - a (n - 1)

end

end A063375.P1634535896876842619

namespace A063375

/-- `A160680(n+2)-a(n-1)` -/
def P1634535896876842619.Spec : Prop :=
  ∀ n, P1634535896876842619.a n = A063375 (n + 1)

end A063375

/-! ## A063375.P8304553800239780839

`A193292(n+1)+A193291(n+1)`
-/

namespace A063375.P8304553800239780839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193292 (n + 1) + A193291 (n + 1)

end

end A063375.P8304553800239780839

namespace A063375

/-- `A193292(n+1)+A193291(n+1)` -/
def P8304553800239780839.Spec : Prop :=
  ∀ n, P8304553800239780839.a n = A063375 (n + 1)

theorem P8304553800239780839.correct : P8304553800239780839.Spec := by
  intro n
  simp only [A063375, Nat.add_sub_cancel, A063375.P8304553800239780839.a, A063375.P4586247262053786237.a, A000005, A000005.P16091521709108585461.a, A000045, A000045.P11838749114346432762.a, A193291, A193291.P12186419772948378566.a, A193292, A193292.P537191371568892433.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A183063, A183063.P14549643650991336837.a, A051731, A051731.P11318043630102858095.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063375

/-! ## A063375.P11357213299430577078

`(A337923(n+1)+1)*A193292(n+1)`
-/

namespace A063375.P11357213299430577078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337923 (n + 1) + 1) * A193292 (n + 1)

end

end A063375.P11357213299430577078

namespace A063375

/-- `(A337923(n+1)+1)*A193292(n+1)` -/
def P11357213299430577078.Spec : Prop :=
  ∀ n, P11357213299430577078.a n = A063375 (n + 1)

end A063375

/-! ## A063375.P7285157921421113690

`A000005(A060865(n+1))*A193292(n+1)`
-/

namespace A063375.P7285157921421113690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060865 (n + 1)).toNat * A193292 (n + 1)

end

end A063375.P7285157921421113690

namespace A063375

/-- `A000005(A060865(n+1))*A193292(n+1)` -/
def P7285157921421113690.Spec : Prop :=
  ∀ n, P7285157921421113690.a n = A063375 (n + 1)

end A063375

/-! ## A063375.P16552213366000208300

`A001511(A081320(n+1))*A193292(n+1)`
-/

namespace A063375.P16552213366000208300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A081320 (n + 1)).toNat * A193292 (n + 1)

end

end A063375.P16552213366000208300

namespace A063375

/-- `A001511(A081320(n+1))*A193292(n+1)` -/
def P16552213366000208300.Spec : Prop :=
  ∀ n, P16552213366000208300.a n = A063375 (n + 1)

end A063375

/-! ## A063375.P10390793949514079113

`A074283(n+1)+1-A152990(n+1)`
-/

namespace A063375.P10390793949514079113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (n + 1) + (1 - A152990 (n + 1))

end

end A063375.P10390793949514079113

namespace A063375

/-- `A074283(n+1)+1-A152990(n+1)` -/
def P10390793949514079113.Spec : Prop :=
  ∀ n, P10390793949514079113.a n = A063375 (n + 1)

end A063375

/-! ## A063375.P3172170082504611286

`∑{d}[n+1, A120256(#)]`
-/

namespace A063375.P3172170082504611286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120256 d

end

end A063375.P3172170082504611286

namespace A063375

/-- `∑{d}[n+1, A120256(#)]` -/
def P3172170082504611286.Spec : Prop :=
  ∀ n, P3172170082504611286.a n = A063375 (n + 1)

end A063375

/-! ## A063375.P7109903702276067376

`A387051(A152774(n+1))`
-/

namespace A063375.P7109903702276067376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387051 (A152774 (n + 1)).toNat

end

end A063375.P7109903702276067376

namespace A063375

/-- `A387051(A152774(n+1))` -/
def P7109903702276067376.Spec : Prop :=
  ∀ n, P7109903702276067376.a n = A063375 (n + 1)

end A063375

/-!
# A063376: a(-1) = 1; for n >= 0, a(n) = 2^n + 4^n = 2^n*(1 + 2^n).

The programs for A063376, there is no canonical definition to state claims against.
-/

/-! ## A063376.P13312165388553952183

`4*a(n-1)-2^(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A063376.P13312165388553952183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A063376.P13312165388553952183

/-! ## A063376.P17654086794908410787

`ogf((1-4x+2x^2)/(1-6x+8x^2))`
-/

namespace A063376.P17654086794908410787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 2] [1, -6, 8] n

end

end A063376.P17654086794908410787

/-! ## A063376.P17981890323157379955

`floor(((2^n+1)/2)²)`
-/

namespace A063376.P17981890323157379955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n + 1 : ℚ) / 2) ^ 2⌋

end

end A063376.P17981890323157379955

/-! ## A063376.P17164199496119341604

`ceil(sqrt(a(n-1))*2^n)` with `a(0)=1`
-/

namespace A063376.P17164199496119341604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (a (n - 1) : ℝ) * (2 ^ n : ℝ)⌉

end

end A063376.P17164199496119341604

/-! ## A063376.P5704044243855438378

`round(sqrt(a(n-1))*2^n)` with `a(0)=1`
-/

namespace A063376.P5704044243855438378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) : ℝ) * (2 ^ n : ℝ))

end

end A063376.P5704044243855438378

/-! ## A063376.P13619329045357538583

`lcm(ceil(2^(n-1)), ∑[ceil(2^(n-2))])`
-/

namespace A063376.P13619329045357538583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063376.P13619329045357538583

/-! ## A063376.P10814069140550129445

`A113979(2*n)`
-/

namespace A063376.P10814069140550129445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 (2 * n)

end

end A063376.P10814069140550129445

/-! ## A063376.P8958662418393130070

`round((A000051(n)/2)²)`
-/

namespace A063376.P8958662418393130070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000051 n : ℚ) / 2) ^ 2)

end

end A063376.P8958662418393130070

/-! ## A063376.P15309980205340562341

`round(Δ[A005126(n)/2]²)`
-/

namespace A063376.P15309980205340562341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005126 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)

end

end A063376.P15309980205340562341

/-! ## A063376.P13916652729919306492

`record[floor((A052552(n)/2)²)]`
-/

namespace A063376.P13916652729919306492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A052552 n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063376.P13916652729919306492

/-! ## A063376.P12945752181412295487

`∑{#}[n, C(n, #)*A122983(#)]`
-/

namespace A063376.P12945752181412295487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A122983 k

end

end A063376.P12945752181412295487

/-! ## A063376.P17607984139228560909

`(floor(2^(n-1))+1)*A011782(n)`
-/

namespace A063376.P17607984139228560909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1) * A011782 n

end

end A063376.P17607984139228560909

/-! ## A063376.P12959363211952385071

`A005418(A004277(n))`
-/

namespace A063376.P12959363211952385071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A004277 n).toNat

end

end A063376.P12959363211952385071

/-! ## A063376.P14136189256135217436

`A045674(A113127(n))`
-/

namespace A063376.P14136189256135217436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (A113127 n).toNat

end

end A063376.P14136189256135217436

/-! ## A063376.P7968345015151335886

`A045674(A130824(n))`
-/

namespace A063376.P7968345015151335886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (A130824 n).toNat

end

end A063376.P7968345015151335886

/-! ## A063376.P12503188103340105937

`A005418(A004273(n)+1)`
-/

namespace A063376.P12503188103340105937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A004273 n + 1).toNat

end

end A063376.P12503188103340105937

/-! ## A063376.P13763928983830532670

`A005418(A004275(n+1))`
-/

namespace A063376.P13763928983830532670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A004275 (n + 1)).toNat

end

end A063376.P13763928983830532670

/-! ## A063376.P10152267000774169726

`A045674(A111284(n+1))`
-/

namespace A063376.P10152267000774169726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (A111284 (n + 1)).toNat

end

end A063376.P10152267000774169726

/-! ## A063376.P3998070552798770210

`A005418(A028310(2*n))`
-/

namespace A063376.P3998070552798770210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A028310 (2 * n)).toNat

end

end A063376.P3998070552798770210

/-! ## A063376.P6029904725683836013

`A005418(A028310(n)+n)`
-/

namespace A063376.P6029904725683836013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A028310 n + (n : ℤ)).toNat

end

end A063376.P6029904725683836013

/-!
# A063377: Sophie Germain degree of n: number of iterations of n under f(k) = 2k+1 before we reach a number that is not a prime.

The programs for A063377, there is no canonical definition to state claims against.
-/

/-! ## A063377.P673094355537033664

`and(A057428(n), A339579(n+2))`
-/

namespace A063377.P673094355537033664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A339579 (n + 2))

end

end A063377.P673094355537033664

/-! ## A063377.P11092527374381862774

`A006022(n+1)*A339579(n+2)`
-/

namespace A063377.P11092527374381862774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1) * A339579 (n + 2)

end

end A063377.P11092527374381862774

/-! ## A063377.P12777086608361607994

`A010051(n+1)*A339579(n+2)`
-/

namespace A063377.P12777086608361607994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A339579 (n + 2)

end

end A063377.P12777086608361607994

/-! ## A063377.P7847028790145568677

`A032741(n+1)*A339579(n+2)`
-/

namespace A063377.P7847028790145568677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) * A339579 (n + 2)

end

end A063377.P7847028790145568677

/-! ## A063377.P11066002686038279723

`A069359(n+1)*A339579(n+2)`
-/

namespace A063377.P11066002686038279723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) * A339579 (n + 2)

end

end A063377.P11066002686038279723

/-! ## A063377.P2030262863754444365

`(A089807(n+1)+1)*A339579(n+2)`
-/

namespace A063377.P2030262863754444365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089807 (n + 1) + 1) * A339579 (n + 2)

end

end A063377.P2030262863754444365

/-! ## A063377.P13501539967922208117

`(1-A010052(n+1))*A339579(n+2)`
-/

namespace A063377.P13501539967922208117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010052 (n + 1)) * A339579 (n + 2)

end

end A063377.P13501539967922208117

/-! ## A063377.P775495759362265849

`(1-A037213(n+1))*A339579(n+2)`
-/

namespace A063377.P775495759362265849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A037213 (n + 1)) * A339579 (n + 2)

end

end A063377.P775495759362265849

/-! ## A063377.P9360575227432080981

`(1-A087049(n+1))*A339579(n+2)`
-/

namespace A063377.P9360575227432080981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A087049 (n + 1)) * A339579 (n + 2)

end

end A063377.P9360575227432080981

/-! ## A063377.P14649023718479902023

`(1-A089810(n+1))*A339579(n+2)`
-/

namespace A063377.P14649023718479902023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A089810 (n + 1)) * A339579 (n + 2)

end

end A063377.P14649023718479902023

/-! ## A063377.P13509096038197729991

`(A331097(n+1)-n)*A339579(n+2)`
-/

namespace A063377.P13509096038197729991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A331097 (n + 1) - (n : ℤ)) * A339579 (n + 2)

end

end A063377.P13509096038197729991

/-! ## A063377.P15394320411047876354

`(1-A029832(2*(n+1)))*A339579(n+2)`
-/

namespace A063377.P15394320411047876354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A029832 (2 * (n + 1))) * A339579 (n + 2)

end

end A063377.P15394320411047876354

/-! ## A063377.P11691512408816042952

`(1-A029833(2*(n+1)))*A339579(n+2)`
-/

namespace A063377.P11691512408816042952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A029833 (2 * (n + 1))) * A339579 (n + 2)

end

end A063377.P11691512408816042952

/-! ## A063377.P7201055798598980834

`(1-A209229(2*n+1))*A339579(n+2)`
-/

namespace A063377.P7201055798598980834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A209229 (2 * n + 1)) * A339579 (n + 2)

end

end A063377.P7201055798598980834

/-! ## A063377.P8356348482647726800

`(1-A255308(2*n+1))*A339579(n+2)`
-/

namespace A063377.P8356348482647726800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A255308 (2 * n + 1)) * A339579 (n + 2)

end

end A063377.P8356348482647726800

/-! ## A063377.P14331254773389820495

`(1-A255738(2*(n+1)))*A339579(n+2)`
-/

namespace A063377.P14331254773389820495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A255738 (2 * (n + 1))) * A339579 (n + 2)

end

end A063377.P14331254773389820495

/-! ## A063377.P12839133197319202497

`(1-A292936(2*(n+1)))*A339579(n+2)`
-/

namespace A063377.P12839133197319202497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A292936 (2 * (n + 1))) * A339579 (n + 2)

end

end A063377.P12839133197319202497

/-! ## A063377.P13822534954144718343

`A279060(A279060(n))*A339579(n+2)`
-/

namespace A063377.P13822534954144718343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A279060 n).toNat * A339579 (n + 2)

end

end A063377.P13822534954144718343

/-! ## A063377.P8723380655195953008

`A292936(8*A000005(n+1)+1)*A339579(n+2)`
-/

namespace A063377.P8723380655195953008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (8 * A000005 (n + 1) + 1).toNat * A339579 (n + 2)

end

end A063377.P8723380655195953008

/-! ## A063377.P18044004815901563261

`A339579(n+2)-A339579(2*(n+1))*A354034(2*n+1)`
-/

namespace A063377.P18044004815901563261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 2) - A339579 (2 * (n + 1)) * A354034 (2 * n + 1)

end

end A063377.P18044004815901563261

/-!
# A063379: Number of orbits of the group of units of Z/(n) acting naturally on the 2-subsets of Z/(n).

The programs for A063379, there is no canonical definition to state claims against.
-/

/-! ## A063379.P7884996192717104922

`A288620(∑[n+2])`
-/

namespace A063379.P7884996192717104922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063379.P7884996192717104922

/-! ## A063379.P11496650385447161887

`A288620(A000096(n+1))%A042918(n)`
-/

namespace A063379.P11496650385447161887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288620 (A000096 (n + 1)).toNat) (A042918 n)

end

end A063379.P11496650385447161887

/-! ## A063379.P7207696154205880737

`or(A112316(n), A288620(A000096(n+1)))`
-/

namespace A063379.P7207696154205880737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112316 n) (A288620 (A000096 (n + 1)).toNat)

end

end A063379.P7207696154205880737

/-! ## A063379.P12457161031029688357

`A014963(98*(n+1))*A288620(A000096(n+1))`
-/

namespace A063379.P12457161031029688357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (98 * (n + 1)) * A288620 (A000096 (n + 1)).toNat

end

end A063379.P12457161031029688357

/-! ## A063379.P3170414754999353870

`A007318(A000217(n))*A288620(A000096(n+1))`
-/

namespace A063379.P3170414754999353870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A288620 (A000096 (n + 1)).toNat

end

end A063379.P3170414754999353870

/-!
# A063382: a(1) = 5, a(n) = concatenation of two closest factors of a(n-1) whose product equals a(n-1) or if a(n-1) is a prime then the concatenation of 1 and a(n-1).

The programs for A063382, there is no canonical definition to state claims against.
-/

/-! ## A063382.P17581964737843839113

`record[A037276(a(floor(n/2)))]` with `a(0)=5, a(1)=1, a(2)=15`
-/

namespace A063382.P17581964737843839113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 15] fun n f1 =>
  A037276 (f1 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063382.P17581964737843839113

/-!
# A063385: Number of solutions of x^2=1 in general affine group AGL(n,2).

The programs for A063385, there is no canonical definition to state claims against.
-/

/-! ## A063385.P9392513691477897075

`A063387(n+1)-2*A063407(n+1)`
-/

namespace A063385.P9392513691477897075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063387 (n + 1) - 2 * A063407 (n + 1)

end

end A063385.P9392513691477897075

/-! ## A063385.P3310304970372925461

`A063391(n+1)-4*A063411(n+1)-A063407(n+1)-A063407(n+1)`
-/

namespace A063385.P3310304970372925461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063391 (n + 1) - 4 * A063411 (n + 1) - A063407 (n + 1) - A063407 (n + 1)

end

end A063385.P3310304970372925461

/-!
# A063386: Number of solutions of x^3=1 in general affine group AGL(n,2).

The programs for A063386, there is no canonical definition to state claims against.
-/

/-! ## A063386.P9542331686419655893

`1+2*A063406(n+1)`
-/

namespace A063386.P9542331686419655893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A063406 (n + 1)

end

end A063386.P9542331686419655893

/-! ## A063386.P5599355125788332381

`A063406(n+1)+A063406(n+1)+A028234(A003557(n+1))`
-/

namespace A063386.P5599355125788332381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063406 (n + 1) + (A063406 (n + 1) + A028234 (A003557 (n + 1)).toNat)

end

end A063386.P5599355125788332381

/-! ## A063386.P8403491474231104182

`A063392(n+1)-6*A063412(n+1)`
-/

namespace A063386.P8403491474231104182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063392 (n + 1) - 6 * A063412 (n + 1)

end

end A063386.P8403491474231104182

/-!
# A063387: Number of solutions of x^4=1 in general affine group AGL(n,2).

The programs for A063387, there is no canonical definition to state claims against.
-/

/-! ## A063387.P16092318991779271744

`A063385(n+1)+2*A063407(n+1)`
-/

namespace A063387.P16092318991779271744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063385 (n + 1) + 2 * A063407 (n + 1)

end

end A063387.P16092318991779271744

/-! ## A063387.P12680994998075988103

`A063391(n+1)-4*A063411(n+1)`
-/

namespace A063387.P12680994998075988103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063391 (n + 1) - 4 * A063411 (n + 1)

end

end A063387.P12680994998075988103

/-!
# A063388: Number of solutions of x^5=1 in general affine group AGL(n,2).

The programs for A063388, there is no canonical definition to state claims against.
-/

/-! ## A063388.P14482323307161847972

`4*A063408(n+1)+1`
-/

namespace A063388.P14482323307161847972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A063408 (n + 1) + 1

end

end A063388.P14482323307161847972

/-!
# A063390: Number of solutions of x^7=1 in general affine group AGL(n,2).

The programs for A063390, there is no canonical definition to state claims against.
-/

/-! ## A063390.P12271390834619904741

`6*A063410(n+1)+1`
-/

namespace A063390.P12271390834619904741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A063410 (n + 1) + 1

end

end A063390.P12271390834619904741

/-!
# A063391: Number of solutions of x^8=1 in general affine group AGL(n,2).

The programs for A063391, there is no canonical definition to state claims against.
-/

/-! ## A063391.P1835722664563378919

`2^∏{e}[6^(n+1), #]`
-/

namespace A063391.P1835722664563378919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A063391.P1835722664563378919

/-! ## A063391.P7016513798802401730

`∏[A005843(4^n)]`
-/

namespace A063391.P7016513798802401730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A063391.P7016513798802401730

/-! ## A063391.P4111692682514025391

`2^A000005(6^n)`
-/

namespace A063391.P4111692682514025391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (6 ^ n) : ℤ)

end

end A063391.P4111692682514025391

/-!
# A063392: Number of solutions of x^9=1 in general affine group AGL(n,2).

The programs for A063392, there is no canonical definition to state claims against.
-/

/-! ## A063392.P7875553596534971800

`A063386(n+1)+6*A063412(n+1)`
-/

namespace A063392.P7875553596534971800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063386 (n + 1) + 6 * A063412 (n + 1)

end

end A063392.P7875553596534971800

/-!
# A063394: Border sum triangle, read by rows: Let T(n,0)=T(n,n)=1. In general T(n,m) is the sum of the elements (apart from T(n,m) itself) in the border of the rectangle with vertices T(0,0), T(n-m,0), T(n,m) and T(m,m).

The programs for A063394, there is no canonical definition to state claims against.
-/

/-! ## A063394.P15973963558274841495

`A175187(A372068(n))`
-/

namespace A063394.P15973963558274841495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175187 (A372068 n).toNat

end

end A063394.P15973963558274841495

/-! ## A063394.P8084718325803997366

`A175187(A064298(n+1))`
-/

namespace A063394.P8084718325803997366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175187 (A064298 (n + 1)).toNat

end

end A063394.P8084718325803997366

/-! ## A063394.P9938839135812834124

`A118759(A106151(A022166(n)))`
-/

namespace A063394.P9938839135812834124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A106151 (A022166 n).toNat).toNat

end

end A063394.P9938839135812834124

/-! ## A063394.P10555559971194013719

`A087061(lcm(A117401(n), A157152(n)))`
-/

namespace A063394.P10555559971194013719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (Int.lcm (A117401 n) (A157152 n))

end

end A063394.P10555559971194013719

/-! ## A063394.P14914405736478699057

`A106151(A022166(n)%A294121(n+1))`
-/

namespace A063394.P14914405736478699057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (Int.tmod (A022166 n) (A294121 (n + 1))).toNat

end

end A063394.P14914405736478699057

/-!
# A063395: T(2n,n) with T(n,m) as in A063394.

The programs for A063395, there is no canonical definition to state claims against.
-/

/-! ## A063395.P15274590909986687670

`A063394(∑[4*n])`
-/

namespace A063395.P15274590909986687670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063395.P15274590909986687670

/-! ## A063395.P219886277961229185

`or(1, A063394(A046092(n)))`
-/

namespace A063395.P219886277961229185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063394 (A046092 n).toNat)

end

end A063395.P219886277961229185

/-! ## A063395.P3259074505085511313

`A063394(A046092(n))+char[A100065(n+3)]`
-/

namespace A063395.P3259074505085511313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100065 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A063395.P3259074505085511313

/-! ## A063395.P16807569084048494920

`A063394(A046092(n))+char[A047855(n+4)]`
-/

namespace A063395.P16807569084048494920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A063395.P16807569084048494920

/-! ## A063395.P3461122699794129852

`A063394(A046092(n))+char[A038761(3*(n+1))]`
-/

namespace A063395.P3461122699794129852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A063395.P3461122699794129852

/-!
# A063396: T(3,n) with T(n,m) as in A063394.

The programs for A063396, the canonical program `A063396.P6913223191920651065` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063396 has offset 0).

The definition of A063396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063396.P6913223191920651065

`ogf((1+8x-40x^2+52x^3-20x^4)/(1-7x+18x^2-20x^3+8x^4))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A063396

/-- `ogf((1+8x-40x^2+52x^3-20x^4)/(1-7x+18x^2-20x^3+8x^4))` -/
def P6913223191920651065.Spec : Prop :=
  ∀ n, P6913223191920651065.a n = A063396 n

theorem P6913223191920651065.correct : P6913223191920651065.Spec := by
  intro n
  simp only [A063396]

end A063396

/-! ## A063396.P17509998135739622175

`A063394(A167614(n+2))`
-/

namespace A063396.P17509998135739622175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A167614 (n + 2)).toNat

end

end A063396.P17509998135739622175

namespace A063396

/-- `A063394(A167614(n+2))` -/
def P17509998135739622175.Spec : Prop :=
  ∀ n, P17509998135739622175.a n = A063396 n

end A063396

/-! ## A063396.P1828774030788207294

`A063394(A052905(n)+8)`
-/

namespace A063396.P1828774030788207294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A052905 n + 8).toNat

end

end A063396.P1828774030788207294

namespace A063396

/-- `A063394(A052905(n)+8)` -/
def P1828774030788207294.Spec : Prop :=
  ∀ n, P1828774030788207294.a n = A063396 n

end A063396

/-! ## A063396.P9600976821976747574

`A063394(∑[n+4]+2)`
-/

namespace A063396.P9600976821976747574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A063396.P9600976821976747574

namespace A063396

/-- `A063394(∑[n+4]+2)` -/
def P9600976821976747574.Spec : Prop :=
  ∀ n, P9600976821976747574.a n = A063396 n

end A063396

/-! ## A063396.P2222657232433343864

`or(1, A063394(A046691(n+2)))`
-/

namespace A063396.P2222657232433343864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063394 (A046691 (n + 2)).toNat)

end

end A063396.P2222657232433343864

namespace A063396

/-- `or(1, A063394(A046691(n+2)))` -/
def P2222657232433343864.Spec : Prop :=
  ∀ n, P2222657232433343864.a n = A063396 n

end A063396

/-! ## A063396.P9419089840242413017

`A063394(A046691(n+2))+A001599(n+3)%2`
-/

namespace A063396.P9419089840242413017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046691 (n + 2)).toNat + Int.tmod (A001599 (n + 3)) 2

end

end A063396.P9419089840242413017

namespace A063396

/-- `A063394(A046691(n+2))+A001599(n+3)%2` -/
def P9419089840242413017.Spec : Prop :=
  ∀ n, P9419089840242413017.a n = A063396 n

end A063396

/-! ## A063396.P14829394045359654548

`A142199(n+5)%2*A063394(A046691(n+2))`
-/

namespace A063396.P14829394045359654548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142199 (n + 5)) 2 * A063394 (A046691 (n + 2)).toNat

end

end A063396.P14829394045359654548

namespace A063396

/-- `A142199(n+5)%2*A063394(A046691(n+2))` -/
def P14829394045359654548.Spec : Prop :=
  ∀ n, P14829394045359654548.a n = A063396 n

end A063396

/-! ## A063396.P10071124883726140114

`A059450(A340266(n+1))-A173786(A161680(n))`
-/

namespace A063396.P10071124883726140114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059450 (A340266 (n + 1)).toNat - A173786 (A161680 n).toNat

end

end A063396.P10071124883726140114

namespace A063396

/-- `A059450(A340266(n+1))-A173786(A161680(n))` -/
def P10071124883726140114.Spec : Prop :=
  ∀ n, P10071124883726140114.a n = A063396 n

end A063396

/-! ## A063396.P2783578388625293893

`A063394(A046691(n+2))+A014707(n²)`
-/

namespace A063396.P2783578388625293893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046691 (n + 2)).toNat + A014707 (n ^ 2)

end

end A063396.P2783578388625293893

namespace A063396

/-- `A063394(A046691(n+2))+A014707(n²)` -/
def P2783578388625293893.Spec : Prop :=
  ∀ n, P2783578388625293893.a n = A063396 n

end A063396

/-!
# A063397: T(4,n) with T(n,m) as in A063394.

The programs for A063397, there is no canonical definition to state claims against.
-/

/-! ## A063397.P13993531399605423742

`A063394(A056000(n)+14)`
-/

namespace A063397.P13993531399605423742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A056000 n + 14).toNat

end

end A063397.P13993531399605423742

/-! ## A063397.P2324064595119711522

`A063394(A167499(n+3)-1)`
-/

namespace A063397.P2324064595119711522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A167499 (n + 3) - 1).toNat

end

end A063397.P2324064595119711522

/-! ## A063397.P15871983286428056668

`A063394(A034856(n+3)+6)`
-/

namespace A063397.P15871983286428056668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A034856 (n + 3) + 6).toNat

end

end A063397.P15871983286428056668

/-! ## A063397.P5049688401591787476

`A063394(A052905(n+2))`
-/

namespace A063397.P5049688401591787476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A052905 (n + 2)).toNat

end

end A063397.P5049688401591787476

/-! ## A063397.P18052992845555474214

`A063394(A056115(n)+10)`
-/

namespace A063397.P18052992845555474214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A056115 n + 10).toNat

end

end A063397.P18052992845555474214

/-!
# A063398: T(5,n) with T(n,m) as in A063394.

The programs for A063398, there is no canonical definition to state claims against.
-/

/-! ## A063398.P7070936901611687653

`A063394(A167499(n+4))`
-/

namespace A063398.P7070936901611687653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A167499 (n + 4)).toNat

end

end A063398.P7070936901611687653

/-! ## A063398.P14032952613053556867

`A063394(A000096(n+4)+6)`
-/

namespace A063398.P14032952613053556867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A000096 (n + 4) + 6).toNat

end

end A063398.P14032952613053556867

/-! ## A063398.P9930434500908688624

`A063394(A055999(n+3))`
-/

namespace A063398.P9930434500908688624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A055999 (n + 3)).toNat

end

end A063398.P9930434500908688624

/-! ## A063398.P4477002101103395329

`A063394(A056119(n)+15)`
-/

namespace A063398.P4477002101103395329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A056119 n + 15).toNat

end

end A063398.P4477002101103395329

/-! ## A063398.P5929481502261579131

`A063394(A046691(n+4)-2)`
-/

namespace A063398.P5929481502261579131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046691 (n + 4) - 2).toNat

end

end A063398.P5929481502261579131

/-!
# A063399: Main diagonal of arrays A063180 and A063181.

The programs for A063399, there is no canonical definition to state claims against.
-/

/-! ## A063399.P6579835011525693521

`A063180(∑[4*n]+1)`
-/

namespace A063399.P6579835011525693521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063180 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A063399.P6579835011525693521

/-! ## A063399.P5367816445365581447

`A063181((n+1)²+n²)`
-/

namespace A063399.P5367816445365581447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063181 ((n + 1) ^ 2 + n ^ 2)

end

end A063399.P5367816445365581447

/-! ## A063399.P13558731371410741570

`A077966(2*n+1)+A063181(A001844(n))`
-/

namespace A063399.P13558731371410741570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (2 * n + 1) + A063181 (A001844 n).toNat

end

end A063399.P13558731371410741570

/-! ## A063399.P7113400585550767719

`A057427(2*(n+1))*A063180(A001844(n))`
-/

namespace A063399.P7113400585550767719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1)) * A063180 (A001844 n).toNat

end

end A063399.P7113400585550767719

/-! ## A063399.P8549843324429051763

`A049076(2*(n+2))*A063181(A001844(n))`
-/

namespace A063399.P8549843324429051763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (2 * (n + 2)) * A063181 (A001844 n).toNat

end

end A063399.P8549843324429051763

