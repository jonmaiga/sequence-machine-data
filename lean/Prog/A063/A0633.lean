import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B011.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A063300: Dimension of the space of weight n cuspidal newforms for Gamma_1( 27 ).

The programs for A063300, the canonical program `A063300.P4555800188597653628` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063300 has offset 2).

The definition of A063300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063300.P4555800188597653628

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=-1, a(1)=13, a(2)=35, a(3)=56, a(4)=77`

The canonical program, it is in `Seq.B000.C010`.
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

The programs for A063301, there is no canonical definition to state claims against.
-/

/-! ## A063301.P2802643989900346227

`A063293(n+2)+A063296(n+2)-A063292(n+2)`
-/

namespace A063301.P2802643989900346227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063293 (n + 2) + (A063296 (n + 2) - A063292 (n + 2))

end

end A063301.P2802643989900346227

/-! ## A063301.P16167814496162689226

`A063302(n+2)+A063325(n+2)-A063314(n+2)`
-/

namespace A063301.P16167814496162689226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063325 (n + 2) - A063314 (n + 2))

end

end A063301.P16167814496162689226

/-!
# A063302: Dimension of the space of weight n cuspidal newforms for Gamma_1( 29 ).

The programs for A063302, there is no canonical definition to state claims against.
-/

/-! ## A063302.P9336685326490512653

`A063304(n+2)+1-A008706(n)`
-/

namespace A063302.P9336685326490512653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (1 - A008706 n)

end

end A063302.P9336685326490512653

/-! ## A063302.P7483690147028682572

`A063304(n+2)+1-A008458(n)+n`
-/

namespace A063302.P7483690147028682572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (1 - A008458 n + (n : ℤ))

end

end A063302.P7483690147028682572

/-! ## A063302.P2560092169971809612

`A063304(n+2)+2-A271114(n)+n`
-/

namespace A063302.P2560092169971809612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (2 - A271114 n + (n : ℤ))

end

end A063302.P2560092169971809612

/-! ## A063302.P12056882222813720761

`A063304(n+2)-(A080513(n)+A063289(n+2))`
-/

namespace A063302.P12056882222813720761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) - (A080513 n + A063289 (n + 2))

end

end A063302.P12056882222813720761

/-! ## A063302.P2973720549448640569

`A063301(n+2)+A063314(n+2)-A063325(n+2)`
-/

namespace A063302.P2973720549448640569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063301 (n + 2) + (A063314 (n + 2) - A063325 (n + 2))

end

end A063302.P2973720549448640569

/-!
# A063303: Dimension of the space of weight n cuspidal newforms for Gamma_1( 30 ).

The programs for A063303, there is no canonical definition to state claims against.
-/

/-! ## A063303.P15755481562121906813

`A063315(n+2)-6*n`
-/

namespace A063303.P15755481562121906813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) - (6 * n : ℤ)

end

end A063303.P15755481562121906813

/-! ## A063303.P990565597252639525

`A063339(n+2)-A008606(n)`
-/

namespace A063303.P990565597252639525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) - A008606 n

end

end A063303.P990565597252639525

/-! ## A063303.P17811574185110073368

`A063351(n+2)-A044102(n)`
-/

namespace A063303.P17811574185110073368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063351 (n + 2) - A044102 n

end

end A063303.P17811574185110073368

/-! ## A063303.P3738886001904323535

`A063315(n+2)+1-A016921(n)`
-/

namespace A063303.P3738886001904323535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + 1 - A016921 n

end

end A063303.P3738886001904323535

/-! ## A063303.P2072605999561651707

`A063339(n+2)-2*A008594(n)`
-/

namespace A063303.P2072605999561651707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) - 2 * A008594 n

end

end A063303.P2072605999561651707

/-! ## A063303.P14953622224987477462

`ceil(A063315(n+2)-sqrt(A016910(n)))`
-/

namespace A063303.P14953622224987477462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063315 (n + 2) : ℝ) - Real.sqrt (A016910 n : ℝ)⌉

end

end A063303.P14953622224987477462

/-! ## A063303.P6440657505657886765

`A063315(n+2)+A008588(n)-A008594(n)`
-/

namespace A063303.P6440657505657886765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + A008588 n - A008594 n

end

end A063303.P6440657505657886765

/-! ## A063303.P2311744328800698561

`A249674(n)+A063315(n+2)-A044102(n)`
-/

namespace A063303.P2311744328800698561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063315 (n + 2) - A044102 n

end

end A063303.P2311744328800698561

/-! ## A063303.P2158628601993943473

`A063315(n+2)-A005843(n)-A005843(n)-A005843(n)`
-/

namespace A063303.P2158628601993943473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) - A005843 n - A005843 n - A005843 n

end

end A063303.P2158628601993943473

/-! ## A063303.P4302160941478711329

`A063315(n+2)+6-A008588(n+1)`
-/

namespace A063303.P4302160941478711329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + 6 - A008588 (n + 1)

end

end A063303.P4302160941478711329

/-! ## A063303.P7126688829263254335

`A063343(n+2)-A063942(2*n+1)-A008588(A008588(n))`
-/

namespace A063303.P7126688829263254335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063343 (n + 2) - A063942 (2 * n + 1) - A008588 (A008588 n).toNat

end

end A063303.P7126688829263254335

/-!
# A063304: Dimension of the space of weight n cuspidal newforms for Gamma_1( 31 ).

The programs for A063304, there is no canonical definition to state claims against.
-/

/-! ## A063304.P1572749382362458749

`A063302(n+2)+A008706(n)-1`
-/

namespace A063304.P1572749382362458749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A008706 n - 1)

end

end A063304.P1572749382362458749

/-! ## A063304.P220074489454925596

`A063296(n+2)+A063305(n+2)+1`
-/

namespace A063304.P220074489454925596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063296 (n + 2) + (A063305 (n + 2) + 1)

end

end A063304.P220074489454925596

/-! ## A063304.P411040228518687080

`A063302(n+2)+A008458(n)-(n+1)`
-/

namespace A063304.P411040228518687080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A008458 n - (n + 1 : ℤ))

end

end A063304.P411040228518687080

/-! ## A063304.P2025304915187365878

`A063296(n+2)+A063313(n+2)-A063297(n+2)`
-/

namespace A063304.P2025304915187365878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063296 (n + 2) + (A063313 (n + 2) - A063297 (n + 2))

end

end A063304.P2025304915187365878

/-! ## A063304.P9325115610524021575

`A063293(n+2)+A063340(n+2)-A063365(n+2)`
-/

namespace A063304.P9325115610524021575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063293 (n + 2) + (A063340 (n + 2) - A063365 (n + 2))

end

end A063304.P9325115610524021575

/-! ## A063304.P957965865457994657

`A063302(n+2)+A008486(A005843(n))-(n+1)`
-/

namespace A063304.P957965865457994657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A008486 (A005843 n).toNat - (n + 1 : ℤ))

end

end A063304.P957965865457994657

/-!
# A063305: Dimension of the space S_n^{new}(Gamma_1(32)) of weight n cuspidal newforms for Gamma_1( 32 ).

The programs for A063305, the canonical program `A063305.P17234269249351541694` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063305 has offset 2).

The definition of A063305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063305.P17234269249351541694

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=13, a(2)=31`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063305

/-- `2*a(n-1)-a(n-2)` -/
def P17234269249351541694.Spec : Prop :=
  ∀ n, P17234269249351541694.a n = A063305 (n + 2)

theorem P17234269249351541694.correct : P17234269249351541694.Spec := by
  intro n
  simp only [A063305, Nat.add_sub_cancel]

end A063305

/-!
# A063306: Dimension of the space of weight n cuspidal newforms for Gamma_1( 33 ).

The programs for A063306, there is no canonical definition to state claims against.
-/

/-! ## A063306.P2384848320995532210

`A063294(n+2)+A063305(n+2)+1`
-/

namespace A063306.P2384848320995532210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063305 (n + 2) + 1)

end

end A063306.P2384848320995532210

/-! ## A063306.P17112050713547736131

`A063294(n+2)+A063304(n+2)-A063296(n+2)`
-/

namespace A063306.P17112050713547736131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063304 (n + 2) - A063296 (n + 2))

end

end A063306.P17112050713547736131

/-! ## A063306.P17937613978559444237

`A063294(n+2)+A063313(n+2)-A063297(n+2)`
-/

namespace A063306.P17937613978559444237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063313 (n + 2) - A063297 (n + 2))

end

end A063306.P17937613978559444237

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

/-! ## A063306.P14407551084248960626

`A063288(n+2)+A004275(3*n)+A063305(n+2)+1`
-/

namespace A063306.P14407551084248960626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + A004275 (3 * n) + (A063305 (n + 2) + 1)

end

end A063306.P14407551084248960626

/-!
# A063307: Dimension of the space of weight n cuspidal newforms for Gamma_1( 34 ).

The programs for A063307, there is no canonical definition to state claims against.
-/

/-! ## A063307.P18117323505156594187

`A063311(n+2)-3*n`
-/

namespace A063307.P18117323505156594187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) - (3 * n : ℤ)

end

end A063307.P18117323505156594187

/-! ## A063307.P13929725571922590265

`A063299(n+2)+5*n`
-/

namespace A063307.P13929725571922590265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (5 * n : ℤ)

end

end A063307.P13929725571922590265

/-! ## A063307.P2914694743014743009

`A063295(n+2)+7*n`
-/

namespace A063307.P2914694743014743009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (7 * n : ℤ)

end

end A063307.P2914694743014743009

/-! ## A063307.P7563406015170575724

`A063287(n+2)+10*n`
-/

namespace A063307.P7563406015170575724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (10 * n : ℤ)

end

end A063307.P7563406015170575724

/-! ## A063307.P2480477106532614943

`A063283(n+2)+11*n`
-/

namespace A063307.P2480477106532614943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + (11 * n : ℤ)

end

end A063307.P2480477106532614943

/-! ## A063307.P9953343789329517611

`A063319(n+2)-10*n`
-/

namespace A063307.P9953343789329517611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - (10 * n : ℤ)

end

end A063307.P9953343789329517611

/-! ## A063307.P13522380760206179629

`A063331(n+2)-A008605(n)`
-/

namespace A063307.P13522380760206179629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A008605 n

end

end A063307.P13522380760206179629

/-! ## A063307.P13498807785950980806

`A063335(n+2)-A135628(n)`
-/

namespace A063307.P13498807785950980806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A135628 n

end

end A063307.P13498807785950980806

/-! ## A063307.P3619937213835028745

`A063331(n+2)-(A008604(n)+n)`
-/

namespace A063307.P3619937213835028745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - (A008604 n + (n : ℤ))

end

end A063307.P3619937213835028745

/-! ## A063307.P13472797716321300580

`A008587(n)+A063287(n+2)+A008587(n)`
-/

namespace A063307.P13472797716321300580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + (A063287 (n + 2) + A008587 n)

end

end A063307.P13472797716321300580

/-!
# A063308: Dimension of the space of weight n cuspidal newforms for Gamma_1( 35 ).

The programs for A063308, there is no canonical definition to state claims against.
-/

/-! ## A063308.P1932552635247651659

`A063288(n+2)+A063328(n+2)-A063324(n+2)`
-/

namespace A063308.P1932552635247651659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + (A063328 (n + 2) - A063324 (n + 2))

end

end A063308.P1932552635247651659

/-! ## A063308.P13475936830539528884

`A063288(n+2)+A063328(n+2)-(A063330(n+2)-A004275(9*n))`
-/

namespace A063308.P13475936830539528884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + (A063328 (n + 2) - (A063330 (n + 2) - A004275 (9 * n)))

end

end A063308.P13475936830539528884

/-!
# A063310: Dimension of the space of weight n cuspidal newforms for Gamma_1( 37 ).

The programs for A063310, there is no canonical definition to state claims against.
-/

/-! ## A063310.P16703473732112294263

`A063306(n+2)+A063326(n+2)-A063330(n+2)`
-/

namespace A063310.P16703473732112294263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063306 (n + 2) + (A063326 (n + 2) - A063330 (n + 2))

end

end A063310.P16703473732112294263

/-!
# A063311: Dimension of the space of weight n cuspidal newforms for Gamma_1( 38 ).

The programs for A063311, there is no canonical definition to state claims against.
-/

/-! ## A063311.P976806651671679624

`A063307(n+2)+3*n`
-/

namespace A063311.P976806651671679624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (3 * n : ℤ)

end

end A063311.P976806651671679624

/-! ## A063311.P2406245965574998959

`A063299(n+2)+8*n`
-/

namespace A063311.P2406245965574998959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (8 * n : ℤ)

end

end A063311.P2406245965574998959

/-! ## A063311.P2772159813636892032

`A063295(n+2)+10*n`
-/

namespace A063311.P2772159813636892032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (10 * n : ℤ)

end

end A063311.P2772159813636892032

/-! ## A063311.P14236076445006078277

`A063283(n+2)+A008596(n)`
-/

namespace A063311.P14236076445006078277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + A008596 n

end

end A063311.P14236076445006078277

/-! ## A063311.P2863854184145879625

`A063287(n+2)+A008595(n)`
-/

namespace A063311.P2863854184145879625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + A008595 n

end

end A063311.P2863854184145879625

/-! ## A063311.P14703706843834878790

`A063319(n+2)-A008589(n)`
-/

namespace A063311.P14703706843834878790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) - A008589 n

end

end A063311.P14703706843834878790

/-! ## A063311.P154527980950579865

`A063331(n+2)-A008602(n)`
-/

namespace A063311.P154527980950579865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A008602 n

end

end A063311.P154527980950579865

/-! ## A063311.P9593574907397794287

`A063335(n+2)-A008607(n)`
-/

namespace A063311.P9593574907397794287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A008607 n

end

end A063311.P9593574907397794287

/-! ## A063311.P15907616606549479320

`A063331(n+2)-A008587(4*n)`
-/

namespace A063311.P15907616606549479320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - A008587 (4 * n)

end

end A063311.P15907616606549479320

/-! ## A063311.P6862246993892528766

`A063335(n+2)-A008587(A008587(n))`
-/

namespace A063311.P6862246993892528766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A008587 (A008587 n).toNat

end

end A063311.P6862246993892528766

/-!
# A063312: Dimension of the space of weight n cuspidal newforms for Gamma_1( 39 ).

The programs for A063312, there is no canonical definition to state claims against.
-/

/-! ## A063312.P5274348721402009313

`A063320(n+2)+A063360(n+2)-A063352(n+2)`
-/

namespace A063312.P5274348721402009313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063320 (n + 2) + (A063360 (n + 2) - A063352 (n + 2))

end

end A063312.P5274348721402009313

/-! ## A063312.P16956510049165416455

`A063330(n+2)-A063354(n+2)%A063337(n+2)`
-/

namespace A063312.P16956510049165416455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) - Int.tmod (A063354 (n + 2)) (A063337 (n + 2))

end

end A063312.P16956510049165416455

/-! ## A063312.P14081872087645221829

`A063288(n+2)+A005843(A063305(n+2)+1)`
-/

namespace A063312.P14081872087645221829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + A005843 (A063305 (n + 2) + 1).toNat

end

end A063312.P14081872087645221829

/-!
# A063313: Dimension of the space of weight n cuspidal newforms for Gamma_1( 40 ).

The programs for A063313, the canonical program `A063313.P6802900432498550628` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063313 has offset 2).

The definition of A063313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063313.P6802900432498550628

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=19, a(2)=44, a(3)=67, a(4)=94, a(5)=117, a(6)=144`

The canonical program, it is in `Seq.B000.C010`.
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

The programs for A063314, there is no canonical definition to state claims against.
-/

/-! ## A063314.P11447562407372895020

`A063302(n+2)+A063325(n+2)-A063301(n+2)`
-/

namespace A063314.P11447562407372895020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063325 (n + 2) - A063301 (n + 2))

end

end A063314.P11447562407372895020

/-!
# A063315: Dimension of the space of weight n cuspidal newforms for Gamma_1( 42 ).

The programs for A063315, there is no canonical definition to state claims against.
-/

/-! ## A063315.P1378698408915533162

`6*n+A063303(n+2)`
-/

namespace A063315.P1378698408915533162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + A063303 (n + 2)

end

end A063315.P1378698408915533162

/-! ## A063315.P1559925025324028794

`A063303(n+2)+A008588(n)`
-/

namespace A063315.P1559925025324028794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A008588 n

end

end A063315.P1559925025324028794

/-! ## A063315.P6395664182565922616

`A063339(n+2)-A008600(n)`
-/

namespace A063315.P6395664182565922616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) - A008600 n

end

end A063315.P6395664182565922616

/-! ## A063315.P940112708080679318

`A063351(n+2)-A249674(n)`
-/

namespace A063315.P940112708080679318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063351 (n + 2) - A249674 n

end

end A063315.P940112708080679318

/-! ## A063315.P9183002547407825325

`A063303(n+2)+sqrt(A016910(n))`
-/

namespace A063315.P9183002547407825325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063303 (n + 2) : ℝ) + Real.sqrt (A016910 n : ℝ)

end

end A063315.P9183002547407825325

/-! ## A063315.P5920232584483001004

`A063303(n+2)+A016921(n)-1`
-/

namespace A063315.P5920232584483001004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + (A016921 n - 1)

end

end A063315.P5920232584483001004

/-! ## A063315.P18377199119371919163

`A063303(n+2)+A008594(n)/2`
-/

namespace A063315.P18377199119371919163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063303 (n + 2) : ℚ) + (A008594 n : ℚ) / 2

end

end A063315.P18377199119371919163

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

/-! ## A063315.P15947711584589065986

`A063303(n+2)+A008585(A005843(n))`
-/

namespace A063315.P15947711584589065986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A008585 (A005843 n).toNat

end

end A063315.P15947711584589065986

/-! ## A063315.P463054326242393176

`A063303(n+2)+A004523(A008591(n))`
-/

namespace A063315.P463054326242393176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A004523 (A008591 n).toNat

end

end A063315.P463054326242393176

/-! ## A063315.P17072161400988395708

`A063303(n+2)+A004525(A008594(n))`
-/

namespace A063315.P17072161400988395708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A004525 (A008594 n).toNat

end

end A063315.P17072161400988395708

/-! ## A063315.P9033117330279175014

`A063303(n+2)+A002264(A008600(n))`
-/

namespace A063315.P9033117330279175014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + A002264 (A008600 n).toNat

end

end A063315.P9033117330279175014

/-!
# A063316: Dimension of the space of weight n cuspidal newforms for Gamma_1( 43 ).

The programs for A063316, there is no canonical definition to state claims against.
-/

/-! ## A063316.P9276347209187027126

`A063338(n+2)+A063340(n+2)-A063358(n+2)`
-/

namespace A063316.P9276347209187027126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063338 (n + 2) + (A063340 (n + 2) - A063358 (n + 2))

end

end A063316.P9276347209187027126

/-!
# A063317: Dimension of the space of weight n cuspidal newforms for Gamma_1( 44 ).

The programs for A063317, there is no canonical definition to state claims against.
-/

/-! ## A063317.P1396149407331792532

`A132772(n)-A000005(A007908(n+1))`
-/

namespace A063317.P1396149407331792532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132772 n - A000005 (A007908 (n + 1)).toNat

end

end A063317.P1396149407331792532

/-!
# A063318: Dimension of the space of weight n cuspidal newforms for Gamma_1( 45 ).

The programs for A063318, there is no canonical definition to state claims against.
-/

/-! ## A063318.P6035652046149837607

`A063302(n+2)+A063336(n+2)-A063320(n+2)`
-/

namespace A063318.P6035652046149837607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063336 (n + 2) - A063320 (n + 2))

end

end A063318.P6035652046149837607

/-!
# A063319: Dimension of the space of weight n cuspidal newforms for Gamma_1( 46 ).

The programs for A063319, there is no canonical definition to state claims against.
-/

/-! ## A063319.P2068075954507333105

`A063311(n+2)+7*n`
-/

namespace A063319.P2068075954507333105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + (7 * n : ℤ)

end

end A063319.P2068075954507333105

/-! ## A063319.P16145144528810621052

`A063307(n+2)+10*n`
-/

namespace A063319.P16145144528810621052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (10 * n : ℤ)

end

end A063319.P16145144528810621052

/-! ## A063319.P14360719026433000485

`A063331(n+2)-13*n`
-/

namespace A063319.P14360719026433000485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) - (13 * n : ℤ)

end

end A063319.P14360719026433000485

/-! ## A063319.P4662564572941246717

`A063299(n+2)+15*n`
-/

namespace A063319.P4662564572941246717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (15 * n : ℤ)

end

end A063319.P4662564572941246717

/-! ## A063319.P3200047131475365647

`A063295(n+2)+17*n`
-/

namespace A063319.P3200047131475365647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (17 * n : ℤ)

end

end A063319.P3200047131475365647

/-! ## A063319.P13117102171606042626

`A063283(n+2)+A008603(n)`
-/

namespace A063319.P13117102171606042626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + A008603 n

end

end A063319.P13117102171606042626

/-! ## A063319.P10309008407270180074

`A063287(n+2)+A008602(n)`
-/

namespace A063319.P10309008407270180074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + A008602 n

end

end A063319.P10309008407270180074

/-! ## A063319.P4254395715700753800

`A063335(n+2)-A008600(n)`
-/

namespace A063319.P4254395715700753800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - A008600 n

end

end A063319.P4254395715700753800

/-! ## A063319.P13704721605145148702

`A063335(n+2)-(A008599(n)+n)`
-/

namespace A063319.P13704721605145148702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - (A008599 n + (n : ℤ))

end

end A063319.P13704721605145148702

/-!
# A063320: Dimension of the space of weight n cuspidal newforms for Gamma_1( 47 ).

The programs for A063320, there is no canonical definition to state claims against.
-/

/-! ## A063320.P14439987561823794700

`A063302(n+2)+A063336(n+2)-A063318(n+2)`
-/

namespace A063320.P14439987561823794700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063302 (n + 2) + (A063336 (n + 2) - A063318 (n + 2))

end

end A063320.P14439987561823794700

/-! ## A063320.P17984114473412149494

`A063312(n+2)+A063352(n+2)-A063360(n+2)`
-/

namespace A063320.P17984114473412149494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063312 (n + 2) + (A063352 (n + 2) - A063360 (n + 2))

end

end A063320.P17984114473412149494

/-!
# A063321: Dimension of the space of weight n cuspidal newforms for Gamma_1( 48 ).

The programs for A063321, the canonical program `A063321.P2430824081364252262` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063321 has offset 2).

The definition of A063321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063321.P2430824081364252262

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=-1, a(1)=23, a(2)=49, a(3)=77`

The canonical program, it is in `Seq.B000.C010`.
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
# A063323: Dimension of the space of weight n cuspidal newforms for Gamma_1( 50 ).

The programs for A063323, there is no canonical definition to state claims against.
-/

/-! ## A063323.P10945898327271529692

`A008605(n)-A121373(A275857(n))`
-/

namespace A063323.P10945898327271529692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n - A121373 (A275857 n).toNat

end

end A063323.P10945898327271529692

/-!
# A063324: Dimension of the space of weight n cuspidal newforms for Gamma_1( 51 ).

The programs for A063324, there is no canonical definition to state claims against.
-/

/-! ## A063324.P15638717442058550854

`A063288(n+2)+A063328(n+2)-A063308(n+2)`
-/

namespace A063324.P15638717442058550854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063288 (n + 2) + (A063328 (n + 2) - A063308 (n + 2))

end

end A063324.P15638717442058550854

/-! ## A063324.P11552455945460512999

`A063342(n+2)-6*A063093(2*n+1)`
-/

namespace A063324.P11552455945460512999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063342 (n + 2) - 6 * A063093 (2 * n + 1)

end

end A063324.P11552455945460512999

/-! ## A063324.P11088689970812409789

`A063294(n+2)+A008592(A004273(3*n))`
-/

namespace A063324.P11088689970812409789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + A008592 (A004273 (3 * n)).toNat

end

end A063324.P11088689970812409789

/-! ## A063324.P16956203782373004326

`A063330(n+2)-A004275(9*n)`
-/

namespace A063324.P16956203782373004326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) - A004275 (9 * n)

end

end A063324.P16956203782373004326

/-!
# A063325: Dimension of the space of weight n cuspidal newforms for Gamma_1( 52 ).

The programs for A063325, there is no canonical definition to state claims against.
-/

/-! ## A063325.P11202921804409249771

`A063301(n+2)+A063314(n+2)-A063302(n+2)`
-/

namespace A063325.P11202921804409249771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063301 (n + 2) + (A063314 (n + 2) - A063302 (n + 2))

end

end A063325.P11202921804409249771

/-! ## A063325.P6459695588442235706

`A063326(n+2)+A063365(n+2)-A063346(n+2)`
-/

namespace A063325.P6459695588442235706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063326 (n + 2) + (A063365 (n + 2) - A063346 (n + 2))

end

end A063325.P6459695588442235706

/-!
# A063326: Dimension of the space of weight n cuspidal newforms for Gamma_1( 53 ).

The programs for A063326, there is no canonical definition to state claims against.
-/

/-! ## A063326.P6013255252481383954

`A063310(n+2)+A063330(n+2)-A063306(n+2)`
-/

namespace A063326.P6013255252481383954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063310 (n + 2) + (A063330 (n + 2) - A063306 (n + 2))

end

end A063326.P6013255252481383954

/-! ## A063326.P10460108612458171692

`A063325(n+2)+A063346(n+2)-A063365(n+2)`
-/

namespace A063326.P10460108612458171692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063325 (n + 2) + (A063346 (n + 2) - A063365 (n + 2))

end

end A063326.P10460108612458171692

/-! ## A063326.P14712584555844478886

`A063340(n+2)-7*A063093(2*n+1)`
-/

namespace A063326.P14712584555844478886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063340 (n + 2) - 7 * A063093 (2 * n + 1)

end

end A063326.P14712584555844478886

/-!
# A063327: Dimension of the space of weight n cuspidal newforms for Gamma_1( 54 ).

The programs for A063327, the canonical program `A063327.P8605005621614585401` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063327 has offset 2).

The definition of A063327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063327.P8605005621614585401

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=-1, a(1)=22, a(2)=42, a(3)=64, a(4)=86`

The canonical program, it is in `Seq.B000.C010`.
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

The programs for A063328, there is no canonical definition to state claims against.
-/

/-! ## A063328.P12543585910565428387

`A063308(n+2)+A063324(n+2)-A063288(n+2)`
-/

namespace A063328.P12543585910565428387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063308 (n + 2) + (A063324 (n + 2) - A063288 (n + 2))

end

end A063328.P12543585910565428387

/-! ## A063328.P1766172581809153924

`A063290(n+2)+A063364(n+2)-A063346(n+2)`
-/

namespace A063328.P1766172581809153924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + (A063364 (n + 2) - A063346 (n + 2))

end

end A063328.P1766172581809153924

/-! ## A063328.P8843465139444684007

`A063304(n+2)+A063368(n+2)-A063352(n+2)`
-/

namespace A063328.P8843465139444684007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (A063368 (n + 2) - A063352 (n + 2))

end

end A063328.P8843465139444684007

/-! ## A063328.P14027400065660152704

`A063308(n+2)-A063288(n+2)+A063330(n+2)-A004275(9*n)`
-/

namespace A063328.P14027400065660152704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063308 (n + 2) - A063288 (n + 2) + (A063330 (n + 2) - A004275 (9 * n))

end

end A063328.P14027400065660152704

/-!
# A063329: Dimension of the space of weight n cuspidal newforms for Gamma_1( 56 ).

The programs for A063329, the canonical program `A063329.P2493816827882129097` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063329 has offset 2).

The definition of A063329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063329.P2493816827882129097

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=42, a(2)=94, a(3)=144, a(4)=198, a(5)=248, a(6)=302`

The canonical program, it is in `Seq.B000.C010`.
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

The programs for A063330, there is no canonical definition to state claims against.
-/

/-! ## A063330.P14032499327498761716

`A063306(n+2)+A063326(n+2)-A063310(n+2)`
-/

namespace A063330.P14032499327498761716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063306 (n + 2) + (A063326 (n + 2) - A063310 (n + 2))

end

end A063330.P14032499327498761716

/-! ## A063330.P4667553711118061722

`A063332(n+2)+A063342(n+2)-A063340(n+2)`
-/

namespace A063330.P4667553711118061722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + (A063342 (n + 2) - A063340 (n + 2))

end

end A063330.P4667553711118061722

/-! ## A063330.P13886635339442917359

`A063333(n+2)+A063342(n+2)-A063357(n+2)`
-/

namespace A063330.P13886635339442917359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063342 (n + 2) - A063357 (n + 2))

end

end A063330.P13886635339442917359

/-! ## A063330.P9001266673412607342

`A063334(n+2)-A063093(2*n+1)+A063342(n+2)-A063340(n+2)`
-/

namespace A063330.P9001266673412607342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A063093 (2 * n + 1) + (A063342 (n + 2) - A063340 (n + 2))

end

end A063330.P9001266673412607342

/-!
# A063331: Dimension of the space of weight n cuspidal newforms for Gamma_1( 58 ).

The programs for A063331, there is no canonical definition to state claims against.
-/

/-! ## A063331.P524114368244976014

`A063335(n+2)-5*n`
-/

namespace A063331.P524114368244976014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) - (5 * n : ℤ)

end

end A063331.P524114368244976014

/-! ## A063331.P1185368251772944279

`A063307(n+2)+23*n`
-/

namespace A063331.P1185368251772944279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (23 * n : ℤ)

end

end A063331.P1185368251772944279

/-! ## A063331.P2212200472895171195

`A063311(n+2)+A008602(n)`
-/

namespace A063331.P2212200472895171195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + A008602 n

end

end A063331.P2212200472895171195

/-! ## A063331.P10730409894700034647

`A063319(n+2)+A008595(n)`
-/

namespace A063331.P10730409894700034647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + A008595 n

end

end A063331.P10730409894700034647

/-! ## A063331.P1992253708802912033

`A135628(n)+A063299(n+2)`
-/

namespace A063331.P1992253708802912033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 n + A063299 (n + 2)

end

end A063331.P1992253708802912033

/-! ## A063331.P8705373671670495260

`A249674(n)+A063295(n+2)`
-/

namespace A063331.P8705373671670495260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063295 (n + 2)

end

end A063331.P8705373671670495260

/-! ## A063331.P13657032275736163516

`A063347(n+2)-A008604(n)`
-/

namespace A063331.P13657032275736163516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) - A008604 n

end

end A063331.P13657032275736163516

/-! ## A063331.P4528128538003447508

`A063299(n+2)+2*A008596(n)`
-/

namespace A063331.P4528128538003447508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + 2 * A008596 n

end

end A063331.P4528128538003447508

/-! ## A063331.P5343610274107777405

`A063311(n+2)+2*A008592(n)`
-/

namespace A063331.P5343610274107777405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + 2 * A008592 n

end

end A063331.P5343610274107777405

/-! ## A063331.P6255347718181758178

`A063359(n+2)-A008589(6*n)`
-/

namespace A063331.P6255347718181758178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - A008589 (6 * n)

end

end A063331.P6255347718181758178

/-!
# A063332: Dimension of the space of weight n cuspidal newforms for Gamma_1( 59 ).

The programs for A063332, there is no canonical definition to state claims against.
-/

/-! ## A063332.P10185649581631055327

`A063330(n+2)+A063340(n+2)-A063342(n+2)`
-/

namespace A063332.P10185649581631055327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063340 (n + 2) - A063342 (n + 2))

end

end A063332.P10185649581631055327

/-! ## A063332.P325324914430478203

`A063333(n+2)+A063340(n+2)-A063357(n+2)`
-/

namespace A063332.P325324914430478203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063340 (n + 2) - A063357 (n + 2))

end

end A063332.P325324914430478203

/-! ## A063332.P6974047782203505623

`A063334(n+2)-A063093(2*n+1)`
-/

namespace A063332.P6974047782203505623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A063093 (2 * n + 1)

end

end A063332.P6974047782203505623

/-! ## A063332.P1049438239898303607

`A063334(n+2)-A004273(A008587(n))`
-/

namespace A063332.P1049438239898303607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A004273 (A008587 n).toNat

end

end A063332.P1049438239898303607

/-! ## A063332.P5433442758224772410

`A063334(n+2)-A014681(A008592(n))`
-/

namespace A063332.P5433442758224772410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A014681 (A008592 n).toNat

end

end A063332.P5433442758224772410

/-!
# A063333: Dimension of the space of weight n cuspidal newforms for Gamma_1( 60 ).

The programs for A063333, there is no canonical definition to state claims against.
-/

/-! ## A063333.P4897649138449594012

`A063330(n+2)+A063357(n+2)-A063342(n+2)`
-/

namespace A063333.P4897649138449594012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063357 (n + 2) - A063342 (n + 2))

end

end A063333.P4897649138449594012

/-! ## A063333.P13305687281246150520

`A063332(n+2)+A063357(n+2)-A063340(n+2)`
-/

namespace A063333.P13305687281246150520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + (A063357 (n + 2) - A063340 (n + 2))

end

end A063333.P13305687281246150520

/-! ## A063333.P7819518153706103405

`A063334(n+2)-A063093(2*n+1)+A063357(n+2)-A063340(n+2)`
-/

namespace A063333.P7819518153706103405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063334 (n + 2) - A063093 (2 * n + 1) + (A063357 (n + 2) - A063340 (n + 2))

end

end A063333.P7819518153706103405

/-!
# A063334: Dimension of the space of weight n cuspidal newforms for Gamma_1( 61 ).

The programs for A063334, there is no canonical definition to state claims against.
-/

/-! ## A063334.P8074437340189732918

`A063332(n+2)+A008592(n)-A057427(n)`
-/

namespace A063334.P8074437340189732918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + (A008592 n - A057427 n)

end

end A063334.P8074437340189732918

/-! ## A063334.P15709898525847969478

`A063332(n+2)+A063093(2*n+1)`
-/

namespace A063334.P15709898525847969478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + A063093 (2 * n + 1)

end

end A063334.P15709898525847969478

/-! ## A063334.P7009323918856811338

`A063093(2*n+1)+A063333(n+2)+A063340(n+2)-A063357(n+2)`
-/

namespace A063334.P7009323918856811338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (2 * n + 1) + (A063333 (n + 2) + (A063340 (n + 2) - A063357 (n + 2)))

end

end A063334.P7009323918856811338

/-! ## A063334.P4006132384478146317

`A063332(n+2)+A004273(A008587(n))`
-/

namespace A063334.P4006132384478146317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + A004273 (A008587 n).toNat

end

end A063334.P4006132384478146317

/-! ## A063334.P5951189420669835667

`A063332(n+2)+A014681(A008592(n))`
-/

namespace A063334.P5951189420669835667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063332 (n + 2) + A014681 (A008592 n).toNat

end

end A063334.P5951189420669835667

/-!
# A063335: Dimension of the space of weight n cuspidal newforms for Gamma_1( 62 ).

The programs for A063335, there is no canonical definition to state claims against.
-/

/-! ## A063335.P3234870499674970742

`A063331(n+2)+5*n`
-/

namespace A063335.P3234870499674970742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) + (5 * n : ℤ)

end

end A063335.P3234870499674970742

/-! ## A063335.P2943824713930824939

`A063295(n+2)+35*n`
-/

namespace A063335.P2943824713930824939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (35 * n : ℤ)

end

end A063335.P2943824713930824939

/-! ## A063335.P4068040219534872601

`A063311(n+2)+A008607(n)`
-/

namespace A063335.P4068040219534872601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + A008607 n

end

end A063335.P4068040219534872601

/-! ## A063335.P15913071185928604843

`A063319(n+2)+A008600(n)`
-/

namespace A063335.P15913071185928604843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + A008600 n

end

end A063335.P15913071185928604843

/-! ## A063335.P15139766904781161468

`A135628(n)+A063307(n+2)`
-/

namespace A063335.P15139766904781161468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 n + A063307 (n + 2)

end

end A063335.P15139766904781161468

/-! ## A063335.P334008958816955893

`A063347(n+2)-A008599(n)`
-/

namespace A063335.P334008958816955893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) - A008599 n

end

end A063335.P334008958816955893

/-! ## A063335.P15170729754449608038

`A063359(n+2)-A085959(n)`
-/

namespace A063335.P15170729754449608038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - A085959 n

end

end A063335.P15170729754449608038

/-! ## A063335.P4270345798920866281

`A063355(n+2)-A249674(n)`
-/

namespace A063335.P4270345798920866281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) - A249674 n

end

end A063335.P4270345798920866281

/-! ## A063335.P17246033780501001795

`A063319(n+2)+A008599(n)+n`
-/

namespace A063335.P17246033780501001795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063319 (n + 2) + (A008599 n + (n : ℤ))

end

end A063335.P17246033780501001795

/-!
# A063336: Dimension of the space of weight n cuspidal newforms for Gamma_1( 63 ).

The programs for A063336, there is no canonical definition to state claims against.
-/

/-! ## A063336.P11497311304127561032

`A063318(n+2)+A063320(n+2)-A063302(n+2)`
-/

namespace A063336.P11497311304127561032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063318 (n + 2) + (A063320 (n + 2) - A063302 (n + 2))

end

end A063336.P11497311304127561032

/-!
# A063337: Dimension of the space of weight n cuspidal newforms for Gamma_1( 64 ).

The programs for A063337, the canonical program `A063337.P11535504555053814579` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063337 has offset 2).

The definition of A063337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063337.P11535504555053814579

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=61, a(2)=133`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063337

/-- `2*a(n-1)-a(n-2)` -/
def P11535504555053814579.Spec : Prop :=
  ∀ n, P11535504555053814579.a n = A063337 (n + 2)

theorem P11535504555053814579.correct : P11535504555053814579.Spec := by
  intro n
  simp only [A063337, Nat.add_sub_cancel]

end A063337

/-!
# A063338: Dimension of the space of weight n cuspidal newforms for Gamma_1( 65 ).

The programs for A063338, there is no canonical definition to state claims against.
-/

/-! ## A063338.P639662154909263064

`A063316(n+2)+A063358(n+2)-A063340(n+2)`
-/

namespace A063338.P639662154909263064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063316 (n + 2) + (A063358 (n + 2) - A063340 (n + 2))

end

end A063338.P639662154909263064

/-!
# A063339: Dimension of the space of weight n cuspidal newforms for Gamma_1( 66 ).

The programs for A063339, there is no canonical definition to state claims against.
-/

/-! ## A063339.P9693568185123392103

`A063303(n+2)+24*n`
-/

namespace A063339.P9693568185123392103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + (24 * n : ℤ)

end

end A063339.P9693568185123392103

/-! ## A063339.P13590153143402042292

`A063315(n+2)+3*6*n`
-/

namespace A063339.P13590153143402042292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + (3 * (6 * n) : ℤ)

end

end A063339.P13590153143402042292

/-! ## A063339.P3382380011015869232

`A063351(n+2)-A008594(n)`
-/

namespace A063339.P3382380011015869232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063351 (n + 2) - A008594 n

end

end A063339.P3382380011015869232

/-! ## A063339.P10473096358001255120

`A008588(n)+A063303(n+2)+A008600(n)`
-/

namespace A063339.P10473096358001255120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + (A063303 (n + 2) + A008600 n)

end

end A063339.P10473096358001255120

/-! ## A063339.P16100109131697893036

`A008588(n)+A063315(n+2)+A008594(n)`
-/

namespace A063339.P16100109131697893036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + (A063315 (n + 2) + A008594 n)

end

end A063339.P16100109131697893036

/-! ## A063339.P7147262526658511463

`A008591(n)+A063315(n+2)+A008591(n)`
-/

namespace A063339.P7147262526658511463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + (A063315 (n + 2) + A008591 n)

end

end A063339.P7147262526658511463

/-!
# A063340: Dimension of the space of weight n cuspidal newforms for Gamma_1( 67 ).

The programs for A063340, there is no canonical definition to state claims against.
-/

/-! ## A063340.P15273882684764558466

`A063304(n+2)+A063365(n+2)-A063293(n+2)`
-/

namespace A063340.P15273882684764558466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (A063365 (n + 2) - A063293 (n + 2))

end

end A063340.P15273882684764558466

/-! ## A063340.P4296076862978079085

`A063316(n+2)+A063358(n+2)-A063338(n+2)`
-/

namespace A063340.P4296076862978079085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063316 (n + 2) + (A063358 (n + 2) - A063338 (n + 2))

end

end A063340.P4296076862978079085

/-! ## A063340.P9680751711009306086

`A063365(n+2)-A063293(n+2)+A063302(n+2)+A008706(n)-1`
-/

namespace A063340.P9680751711009306086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063365 (n + 2) - A063293 (n + 2) + (A063302 (n + 2) + (A008706 n - 1))

end

end A063340.P9680751711009306086

/-! ## A063340.P15210004316956145307

`A063365(n+2)-A063293(n+2)+A063296(n+2)+A063305(n+2)+1`
-/

namespace A063340.P15210004316956145307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063365 (n + 2) - A063293 (n + 2) + (A063296 (n + 2) + (A063305 (n + 2) + 1))

end

end A063340.P15210004316956145307

/-! ## A063340.P8778590443996745339

`A063365(n+2)-A063293(n+2)+A063302(n+2)+A008458(n)-(n+1)`
-/

namespace A063340.P8778590443996745339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063365 (n + 2) - A063293 (n + 2) + (A063302 (n + 2) + (A008458 n - (n + 1 : ℤ)))

end

end A063340.P8778590443996745339

/-!
# A063342: Dimension of the space of weight n cuspidal newforms for Gamma_1( 69 ).

The programs for A063342, there is no canonical definition to state claims against.
-/

/-! ## A063342.P4927136863333505580

`A063294(n+2)+A063334(n+2)-A063302(n+2)`
-/

namespace A063342.P4927136863333505580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063294 (n + 2) + (A063334 (n + 2) - A063302 (n + 2))

end

end A063342.P4927136863333505580

/-! ## A063342.P9972786834727852581

`A063330(n+2)+A063340(n+2)-A063332(n+2)`
-/

namespace A063342.P9972786834727852581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063340 (n + 2) - A063332 (n + 2))

end

end A063342.P9972786834727852581

/-! ## A063342.P13146269347686089209

`A063330(n+2)+A063357(n+2)-A063333(n+2)`
-/

namespace A063342.P13146269347686089209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063357 (n + 2) - A063333 (n + 2))

end

end A063342.P13146269347686089209

/-! ## A063342.P6816943896149452325

`A063346(n+2)+A063366(n+2)-A063362(n+2)`
-/

namespace A063342.P6816943896149452325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063346 (n + 2) + (A063366 (n + 2) - A063362 (n + 2))

end

end A063342.P6816943896149452325

/-! ## A063342.P2874041549311019635

`A063330(n+2)+A063340(n+2)-(A063334(n+2)-A063093(2*n+1))`
-/

namespace A063342.P2874041549311019635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063330 (n + 2) + (A063340 (n + 2) - (A063334 (n + 2) - A063093 (2 * n + 1)))

end

end A063342.P2874041549311019635

/-!
# A063343: Dimension of the space of weight n cuspidal newforms for Gamma_1( 70 ).

The programs for A063343, there is no canonical definition to state claims against.
-/

/-! ## A063343.P11161651646376633938

`A063942(2*n+1)+A063351(n+2)`
-/

namespace A063343.P11161651646376633938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (2 * n + 1) + A063351 (n + 2)

end

end A063343.P11161651646376633938

/-!
# A063344: Dimension of the space of weight n cuspidal newforms for Gamma_1( 71 ).

The programs for A063344, there is no canonical definition to state claims against.
-/

/-! ## A063344.P7164968795258985131

`A063346(n+2)-(A063293(2*(n+1))+1)`
-/

namespace A063344.P7164968795258985131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063346 (n + 2) - (A063293 (2 * (n + 1)) + 1)

end

end A063344.P7164968795258985131

/-! ## A063344.P5434328445353802369

`A063346(n+2)-A004273(6*n)`
-/

namespace A063344.P5434328445353802369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063346 (n + 2) - A004273 (6 * n)

end

end A063344.P5434328445353802369

/-!
# A063345: Dimension of the space of weight n cuspidal newforms for Gamma_1( 72 ).

The programs for A063345, the canonical program `A063345.P5958737216323019255` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063345 has offset 2).

The definition of A063345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063345.P5958737216323019255

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=55, a(2)=119, a(3)=184, a(4)=247, a(5)=312, a(6)=375`

The canonical program, it is in `Seq.B000.C010`.
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

The programs for A063346, there is no canonical definition to state claims against.
-/

/-! ## A063346.P1696560790606656677

`A063290(n+2)+A063364(n+2)-A063328(n+2)`
-/

namespace A063346.P1696560790606656677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063290 (n + 2) + (A063364 (n + 2) - A063328 (n + 2))

end

end A063346.P1696560790606656677

/-! ## A063346.P10207750177705105223

`A063326(n+2)+A063365(n+2)-A063325(n+2)`
-/

namespace A063346.P10207750177705105223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063326 (n + 2) + (A063365 (n + 2) - A063325 (n + 2))

end

end A063346.P10207750177705105223

/-! ## A063346.P9135305689907595026

`A063342(n+2)+A063362(n+2)-A063366(n+2)`
-/

namespace A063346.P9135305689907595026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063342 (n + 2) + (A063362 (n + 2) - A063366 (n + 2))

end

end A063346.P9135305689907595026

/-! ## A063346.P8067710453349144406

`A063344(n+2)+A004273(6*n)`
-/

namespace A063346.P8067710453349144406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063344 (n + 2) + A004273 (6 * n)

end

end A063346.P8067710453349144406

/-!
# A063347: Dimension of the space of weight n cuspidal newforms for Gamma_1( 74 ).

The programs for A063347, there is no canonical definition to state claims against.
-/

/-! ## A063347.P8250361970466277617

`A063307(n+2)+45*n`
-/

namespace A063347.P8250361970466277617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + (45 * n : ℤ)

end

end A063347.P8250361970466277617

/-! ## A063347.P9024579327355235381

`A063295(n+2)+52*n`
-/

namespace A063347.P9024579327355235381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (52 * n : ℤ)

end

end A063347.P9024579327355235381

/-! ## A063347.P4848678659764545478

`A063287(n+2)+55*n`
-/

namespace A063347.P4848678659764545478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (55 * n : ℤ)

end

end A063347.P4848678659764545478

/-! ## A063347.P2397080726467144962

`A063331(n+2)+2*11*n`
-/

namespace A063347.P2397080726467144962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) + (2 * (11 * n) : ℤ)

end

end A063347.P2397080726467144962

/-! ## A063347.P8124251729352901115

`A063335(n+2)+A008599(n)`
-/

namespace A063347.P8124251729352901115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) + A008599 n

end

end A063347.P8124251729352901115

/-! ## A063347.P15843887295704134394

`A063355(n+2)-A008595(n)`
-/

namespace A063347.P15843887295704134394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) - A008595 n

end

end A063347.P15843887295704134394

/-! ## A063347.P11147562887298911846

`A063359(n+2)-A008602(n)`
-/

namespace A063347.P11147562887298911846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - A008602 n

end

end A063347.P11147562887298911846

/-! ## A063347.P13253845422782511

`A063335(n+2)+A008600(n)-n`
-/

namespace A063347.P13253845422782511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) + (A008600 n - (n : ℤ))

end

end A063347.P13253845422782511

/-! ## A063347.P16268123829030180479

`A063311(n+2)+A008589(6*n)`
-/

namespace A063347.P16268123829030180479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + A008589 (6 * n)

end

end A063347.P16268123829030180479

/-! ## A063347.P12861746941543274021

`A063299(n+2)+A008587(10*n)`
-/

namespace A063347.P12861746941543274021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + A008587 (10 * n)

end

end A063347.P12861746941543274021

/-!
# A063350: Dimension of the space of weight n cuspidal newforms for Gamma_1( 77 ).

The programs for A063350, there is no canonical definition to state claims against.
-/

/-! ## A063350.P2434760059370878522

`A063358(n+2)-A044102(n)`
-/

namespace A063350.P2434760059370878522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A044102 n

end

end A063350.P2434760059370878522

/-! ## A063350.P8540769504614834293

`A063358(n+2)-A008591(A008586(n))`
-/

namespace A063350.P8540769504614834293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A008591 (A008586 n).toNat

end

end A063350.P8540769504614834293

/-! ## A063350.P15279793201558002063

`A063358(n+2)-A008588(A008588(n))`
-/

namespace A063350.P15279793201558002063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A008588 (A008588 n).toNat

end

end A063350.P15279793201558002063

/-! ## A063350.P12292905244655655983

`A063358(n+2)-A005843(18*n)`
-/

namespace A063350.P12292905244655655983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A005843 (18 * n)

end

end A063350.P12292905244655655983

/-! ## A063350.P17484374472267910473

`A063358(n+2)-A032766(A008606(n))`
-/

namespace A063350.P17484374472267910473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063358 (n + 2) - A032766 (A008606 n).toNat

end

end A063350.P17484374472267910473

/-!
# A063351: Dimension of the space of weight n cuspidal newforms for Gamma_1( 78 ).

The programs for A063351, there is no canonical definition to state claims against.
-/

/-! ## A063351.P16690830884662654117

`A063339(n+2)+12*n`
-/

namespace A063351.P16690830884662654117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063339 (n + 2) + (12 * n : ℤ)

end

end A063351.P16690830884662654117

/-! ## A063351.P14634986460907370932

`A063303(n+2)+36*n`
-/

namespace A063351.P14634986460907370932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063303 (n + 2) + (36 * n : ℤ)

end

end A063351.P14634986460907370932

/-! ## A063351.P5458499016219813882

`A249674(n)+A063315(n+2)`
-/

namespace A063351.P5458499016219813882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063315 (n + 2)

end

end A063351.P5458499016219813882

/-! ## A063351.P1063939407541039159

`A063343(n+2)-A063942(2*n+1)`
-/

namespace A063351.P1063939407541039159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063343 (n + 2) - A063942 (2 * n + 1)

end

end A063351.P1063939407541039159

/-! ## A063351.P13874746615092989580

`A063315(n+2)+A008588(5*n)`
-/

namespace A063351.P13874746615092989580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063315 (n + 2) + A008588 (5 * n)

end

end A063351.P13874746615092989580

/-!
# A063352: Dimension of the space of weight n cuspidal newforms for Gamma_1( 79 ).

The programs for A063352, there is no canonical definition to state claims against.
-/

/-! ## A063352.P7595737130111737962

`A063304(n+2)+A063368(n+2)-A063328(n+2)`
-/

namespace A063352.P7595737130111737962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063304 (n + 2) + (A063368 (n + 2) - A063328 (n + 2))

end

end A063352.P7595737130111737962

/-! ## A063352.P226120115990009649

`A063320(n+2)+A063360(n+2)-A063312(n+2)`
-/

namespace A063352.P226120115990009649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063320 (n + 2) + (A063360 (n + 2) - A063312 (n + 2))

end

end A063352.P226120115990009649

/-!
# A063353: Dimension of the space of weight n cuspidal newforms for Gamma_1( 80 ).

The programs for A063353, the canonical program `A063353.P15196848433256147359` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063353 has offset 2).

The definition of A063353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063353.P15196848433256147359

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=-1, a(1)=86, a(2)=184, a(3)=284`

The canonical program, it is in `Seq.B000.C010`.
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

The programs for A063354, the canonical program `A063354.P9220137753813608176` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063354 has offset 2).

The definition of A063354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063354.P9220137753813608176

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=164, a(2)=356`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063354

/-- `2*a(n-1)-a(n-2)` -/
def P9220137753813608176.Spec : Prop :=
  ∀ n, P9220137753813608176.a n = A063354 (n + 2)

theorem P9220137753813608176.correct : P9220137753813608176.Spec := by
  intro n
  simp only [A063354, Nat.add_sub_cancel]

end A063354

/-!
# A063355: Dimension of the space of weight n cuspidal newforms for Gamma_1( 82 ).

The programs for A063355, there is no canonical definition to state claims against.
-/

/-! ## A063355.P10834099916788676966

`A063359(n+2)-7*n`
-/

namespace A063355.P10834099916788676966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) - (7 * n : ℤ)

end

end A063355.P10834099916788676966

/-! ## A063355.P7635812618694506898

`A063311(n+2)+55*n`
-/

namespace A063355.P7635812618694506898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063311 (n + 2) + (55 * n : ℤ)

end

end A063355.P7635812618694506898

/-! ## A063355.P14673199047153702751

`A063295(n+2)+65*n`
-/

namespace A063355.P14673199047153702751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063295 (n + 2) + (65 * n : ℤ)

end

end A063355.P14673199047153702751

/-! ## A063355.P13598087784375162787

`A063299(n+2)+7*9*n`
-/

namespace A063355.P13598087784375162787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + (7 * (9 * n) : ℤ)

end

end A063355.P13598087784375162787

/-! ## A063355.P2772306311423776589

`A063347(n+2)+A008595(n)`
-/

namespace A063355.P2772306311423776589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) + A008595 n

end

end A063355.P2772306311423776589

/-! ## A063355.P16026718687271119478

`A249674(n)+A063335(n+2)`
-/

namespace A063355.P16026718687271119478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A063335 (n + 2)

end

end A063355.P16026718687271119478

/-! ## A063355.P9370810042209086947

`A063367(n+2)-A008604(n)`
-/

namespace A063355.P9370810042209086947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063367 (n + 2) - A008604 n

end

end A063355.P9370810042209086947

/-! ## A063355.P13907494060649707698

`A063335(n+2)+A008587(6*n)`
-/

namespace A063355.P13907494060649707698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063335 (n + 2) + A008587 (6 * n)

end

end A063355.P13907494060649707698

/-!
# A063357: Dimension of the space of weight n cuspidal newforms for Gamma_1( 84 ).

The programs for A063357, there is no canonical definition to state claims against.
-/

/-! ## A063357.P1299015631343553499

`A063333(n+2)+A063340(n+2)-A063332(n+2)`
-/

namespace A063357.P1299015631343553499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063340 (n + 2) - A063332 (n + 2))

end

end A063357.P1299015631343553499

/-! ## A063357.P6058065644747693313

`A063333(n+2)+A063342(n+2)-A063330(n+2)`
-/

namespace A063357.P6058065644747693313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063342 (n + 2) - A063330 (n + 2))

end

end A063357.P6058065644747693313

/-! ## A063357.P2610005873951989919

`A063333(n+2)+A063340(n+2)-(A063334(n+2)-A063093(2*n+1))`
-/

namespace A063357.P2610005873951989919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063333 (n + 2) + (A063340 (n + 2) - (A063334 (n + 2) - A063093 (2 * n + 1)))

end

end A063357.P2610005873951989919

/-!
# A063358: Dimension of the space of weight n cuspidal newforms for Gamma_1( 85 ).

The programs for A063358, there is no canonical definition to state claims against.
-/

/-! ## A063358.P10104654059817722719

`A063350(n+2)+A044102(n)`
-/

namespace A063358.P10104654059817722719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A044102 n

end

end A063358.P10104654059817722719

/-! ## A063358.P5398879378989104742

`A063350(n+2)+A008591(A008586(n))`
-/

namespace A063358.P5398879378989104742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A008591 (A008586 n).toNat

end

end A063358.P5398879378989104742

/-! ## A063358.P17774735450524564413

`A063350(n+2)+A008588(A008588(n))`
-/

namespace A063358.P17774735450524564413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A008588 (A008588 n).toNat

end

end A063358.P17774735450524564413

/-! ## A063358.P13109472486350398776

`A063350(n+2)+A005843(18*n)`
-/

namespace A063358.P13109472486350398776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A005843 (18 * n)

end

end A063358.P13109472486350398776

/-! ## A063358.P10790925362583750375

`A063350(n+2)+A032766(A008606(n))`
-/

namespace A063358.P10790925362583750375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063350 (n + 2) + A032766 (A008606 n).toNat

end

end A063358.P10790925362583750375

/-!
# A063359: Dimension of the space of weight n cuspidal newforms for Gamma_1( 86 ).

The programs for A063359, there is no canonical definition to state claims against.
-/

/-! ## A063359.P15762893541203700682

`A063355(n+2)+7*n`
-/

namespace A063359.P15762893541203700682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) + (7 * n : ℤ)

end

end A063359.P15762893541203700682

/-! ## A063359.P6792822701326958685

`A063347(n+2)+4*5*n`
-/

namespace A063359.P6792822701326958685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063347 (n + 2) + (4 * (5 * n) : ℤ)

end

end A063359.P6792822701326958685

/-! ## A063359.P5234572134101612596

`A085959(n)+A063335(n+2)`
-/

namespace A063359.P5234572134101612596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n + A063335 (n + 2)

end

end A063359.P5234572134101612596

/-! ## A063359.P6232399130372644580

`A063367(n+2)-A008597(n)`
-/

namespace A063359.P6232399130372644580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063367 (n + 2) - A008597 n

end

end A063359.P6232399130372644580

/-! ## A063359.P14693423898680714086

`A063331(n+2)+A008596(3*n)`
-/

namespace A063359.P14693423898680714086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063331 (n + 2) + A008596 (3 * n)

end

end A063359.P14693423898680714086

/-! ## A063359.P3925361599551568808

`A063299(n+2)+A008596(5*n)`
-/

namespace A063359.P3925361599551568808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + A008596 (5 * n)

end

end A063359.P3925361599551568808

/-! ## A063359.P2699429529880774039

`A063307(n+2)+A008595(A008587(n))`
-/

namespace A063359.P2699429529880774039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063307 (n + 2) + A008595 (A008587 n).toNat

end

end A063359.P2699429529880774039

/-! ## A063359.P8676517155041635819

`A063287(n+2)+A008587(15*n)`
-/

namespace A063359.P8676517155041635819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + A008587 (15 * n)

end

end A063359.P8676517155041635819

/-!
# A063360: Dimension of the space of weight n cuspidal newforms for Gamma_1( 87 ).

The programs for A063360, there is no canonical definition to state claims against.
-/

/-! ## A063360.P2457909257267213649

`A063312(n+2)+A063352(n+2)-A063320(n+2)`
-/

namespace A063360.P2457909257267213649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063312 (n + 2) + (A063352 (n + 2) - A063320 (n + 2))

end

end A063360.P2457909257267213649

/-!
# A063361: Dimension of the space of weight n cuspidal newforms for Gamma_1( 88 ).

The programs for A063361, the canonical program `A063361.P13697193221650290066` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063361 has offset 2).

The definition of A063361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063361.P13697193221650290066

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=115, a(2)=248, a(3)=379, a(4)=514, a(5)=645, a(6)=780`

The canonical program, it is in `Seq.B000.C010`.
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

The programs for A063362, there is no canonical definition to state claims against.
-/

/-! ## A063362.P9307569621251314589

`A063346(n+2)+A063366(n+2)-A063342(n+2)`
-/

namespace A063362.P9307569621251314589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063346 (n + 2) + (A063366 (n + 2) - A063342 (n + 2))

end

end A063362.P9307569621251314589

/-!
# A063364: Dimension of the space of weight n cuspidal newforms for Gamma_1( 91 ).

The programs for A063364, there is no canonical definition to state claims against.
-/

/-! ## A063364.P1042879225699115212

`A063328(n+2)+A063346(n+2)-A063290(n+2)`
-/

namespace A063364.P1042879225699115212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063328 (n + 2) + (A063346 (n + 2) - A063290 (n + 2))

end

end A063364.P1042879225699115212

/-!
# A063365: Dimension of the space of weight n cuspidal newforms for Gamma_1( 92 ).

The programs for A063365, there is no canonical definition to state claims against.
-/

/-! ## A063365.P18212645443484130032

`A063293(n+2)+A063340(n+2)-A063304(n+2)`
-/

namespace A063365.P18212645443484130032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063293 (n + 2) + (A063340 (n + 2) - A063304 (n + 2))

end

end A063365.P18212645443484130032

/-! ## A063365.P5444164272929613900

`A063325(n+2)+A063346(n+2)-A063326(n+2)`
-/

namespace A063365.P5444164272929613900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063325 (n + 2) + (A063346 (n + 2) - A063326 (n + 2))

end

end A063365.P5444164272929613900

/-!
# A063366: Dimension of the space of weight n cuspidal newforms for Gamma_1( 93 ).

The programs for A063366, there is no canonical definition to state claims against.
-/

/-! ## A063366.P4914878931583471397

`A063342(n+2)+A063362(n+2)-A063346(n+2)`
-/

namespace A063366.P4914878931583471397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063342 (n + 2) + (A063362 (n + 2) - A063346 (n + 2))

end

end A063366.P4914878931583471397

/-!
# A063367: Dimension of the space of weight n cuspidal newforms for Gamma_1( 94 ).

The programs for A063367, there is no canonical definition to state claims against.
-/

/-! ## A063367.P9999638399359554053

`A063287(n+2)+90*n`
-/

namespace A063367.P9999638399359554053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063287 (n + 2) + (90 * n : ℤ)

end

end A063367.P9999638399359554053

/-! ## A063367.P6573325376956000478

`A063283(n+2)+91*n`
-/

namespace A063367.P6573325376956000478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063283 (n + 2) + (91 * n : ℤ)

end

end A063367.P6573325376956000478

/-! ## A063367.P7218471243980865054

`A063359(n+2)+3*5*n`
-/

namespace A063367.P7218471243980865054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063359 (n + 2) + (3 * (5 * n) : ℤ)

end

end A063367.P7218471243980865054

/-! ## A063367.P12579735168652237013

`A063355(n+2)+A008604(n)`
-/

namespace A063367.P12579735168652237013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063355 (n + 2) + A008604 n

end

end A063367.P12579735168652237013

/-! ## A063367.P16871425737017987922

`A063299(n+2)+A008599(A008587(n))`
-/

namespace A063367.P16871425737017987922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063299 (n + 2) + A008599 (A008587 n).toNat

end

end A063367.P16871425737017987922

/-!
# A063368: Dimension of the space of weight n cuspidal newforms for Gamma_1( 95 ).

The programs for A063368, there is no canonical definition to state claims against.
-/

/-! ## A063368.P10121699038043785177

`A063328(n+2)+A063352(n+2)-A063304(n+2)`
-/

namespace A063368.P10121699038043785177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063328 (n + 2) + (A063352 (n + 2) - A063304 (n + 2))

end

end A063368.P10121699038043785177

/-!
# A063369: Dimension of the space of weight n cuspidal newforms for Gamma_1( 96 ).

The programs for A063369, the canonical program `A063369.P4199705870894292686` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063369 has offset 2).

The definition of A063369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063369.P4199705870894292686

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=98, a(2)=206`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063369

/-- `2*a(n-1)-a(n-2)` -/
def P4199705870894292686.Spec : Prop :=
  ∀ n, P4199705870894292686.a n = A063369 (n + 2)

theorem P4199705870894292686.correct : P4199705870894292686.Spec := by
  intro n
  simp only [A063369, Nat.add_sub_cancel]

end A063369

/-!
# A063374: a(n) = Fibonacci(n!).

The programs for A063374, the canonical program `A063374.P5532301294767683893` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063374 has offset 0).

The definition of A063374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063374.P5532301294767683893

`A000045(A000142(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063374

/-- `A000045(A000142(n))` -/
def P5532301294767683893.Spec : Prop :=
  ∀ n, P5532301294767683893.a n = A063374 n

theorem P5532301294767683893.correct : P5532301294767683893.Spec := by
  intro n
  simp only [A063374]

end A063374

/-!
# A063375: Number of divisors of Fibonacci(n).

The programs for A063375, the canonical program `A063375.P4586247262053786237` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063375 has offset 1).

The definition of A063375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063375.P4586247262053786237

`A000005(A000045(n+1))`

The canonical program, it is in `Seq.B002.C001`.
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

/-! ## A063376.P13763928983830532670

`A005418(A004275(n+1))`
-/

namespace A063376.P13763928983830532670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A004275 (n + 1)).toNat

end

end A063376.P13763928983830532670

/-! ## A063376.P12503188103340105937

`A005418(A004273(n)+1)`
-/

namespace A063376.P12503188103340105937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A004273 n + 1).toNat

end

end A063376.P12503188103340105937

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

/-! ## A063386.P4421446011242962473

`2*A063406(n+1)+1`
-/

namespace A063386.P4421446011242962473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063406 (n + 1) + 1

end

end A063386.P4421446011242962473

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

The programs for A063396, there is no canonical definition to state claims against.
-/

/-! ## A063396.P17509998135739622175

`A063394(A167614(n+2))`
-/

namespace A063396.P17509998135739622175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A167614 (n + 2)).toNat

end

end A063396.P17509998135739622175

/-! ## A063396.P1828774030788207294

`A063394(A052905(n)+8)`
-/

namespace A063396.P1828774030788207294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A052905 n + 8).toNat

end

end A063396.P1828774030788207294

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

/-! ## A063396.P2222657232433343864

`or(1, A063394(A046691(n+2)))`
-/

namespace A063396.P2222657232433343864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063394 (A046691 (n + 2)).toNat)

end

end A063396.P2222657232433343864

/-! ## A063396.P9419089840242413017

`A063394(A046691(n+2))+A001599(n+3)%2`
-/

namespace A063396.P9419089840242413017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046691 (n + 2)).toNat + Int.tmod (A001599 (n + 3)) 2

end

end A063396.P9419089840242413017

/-! ## A063396.P14829394045359654548

`A142199(n+5)%2*A063394(A046691(n+2))`
-/

namespace A063396.P14829394045359654548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142199 (n + 5)) 2 * A063394 (A046691 (n + 2)).toNat

end

end A063396.P14829394045359654548

/-! ## A063396.P10071124883726140114

`A059450(A340266(n+1))-A173786(A161680(n))`
-/

namespace A063396.P10071124883726140114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059450 (A340266 (n + 1)).toNat - A173786 (A161680 n).toNat

end

end A063396.P10071124883726140114

/-! ## A063396.P2783578388625293893

`A063394(A046691(n+2))+A014707(n²)`
-/

namespace A063396.P2783578388625293893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063394 (A046691 (n + 2)).toNat + A014707 (n ^ 2)

end

end A063396.P2783578388625293893

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

