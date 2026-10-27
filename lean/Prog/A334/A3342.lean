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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A334200: Fully additive with a(n) = n-1 for n <= 3, and a(p) = 1 + a(A048673(p)) when p is prime > 3 and a(n*m) = a(n) + a(m) when m,n > 1.

The programs for A334200, there is no canonical definition to state claims against.
-/

/-! ## A334200.P11010722822947768688

`A003313(A079302(n+1)!+n)`
-/

namespace A334200.P11010722822947768688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (Nat.factorial (A079302 (n + 1)).toNat + n)

end

end A334200.P11010722822947768688

/-! ## A334200.P18062527726880135554

`A128998(A079302(n+1)!+n)`
-/

namespace A334200.P18062527726880135554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (Nat.factorial (A079302 (n + 1)).toNat + n)

end

end A334200.P18062527726880135554

/-! ## A334200.P8756938924393650729

`A003313(A008933(A079302(n+1))+n)`
-/

namespace A334200.P8756938924393650729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A008933 (A079302 (n + 1)).toNat + (n : ℤ)).toNat

end

end A334200.P8756938924393650729

/-! ## A334200.P14134885109803962907

`A323077((n+1)*A089124(n+1))`
-/

namespace A334200.P14134885109803962907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 ((n + 1 : ℤ) * A089124 (n + 1)).toNat

end

end A334200.P14134885109803962907

/-! ## A334200.P16496045572350728986

`A003313(n+1)-A373266(A181098(n+1))`
-/

namespace A334200.P16496045572350728986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1) - A373266 (A181098 (n + 1)).toNat

end

end A334200.P16496045572350728986

/-!
# A334201: 

The programs for A334201, there is no canonical definition to state claims against.
-/

/-! ## A334201.P2636205174847670428

`A056239(A052126(n+1))`
-/

namespace A334201.P2636205174847670428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A052126 (n + 1)).toNat

end

end A334201.P2636205174847670428

/-! ## A334201.P18312395146081922354

`A339895(n+1)+A339896(n+1)`
-/

namespace A334201.P18312395146081922354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1) + A339896 (n + 1)

end

end A334201.P18312395146081922354

/-! ## A334201.P4094470148935734367

`A056239(n+1)-A061395(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334201.P4094470148935734367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A061395 (n + 1)

end

end A334201.P4094470148935734367

/-! ## A334201.P3470597943108671243

`a(A064989(n+1)-1)+A001222(n+1)-1` with `a(0)=0`
-/

namespace A334201.P3470597943108671243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A064989 (n + 1) - 1).toNat + A001222 (n + 1) - 1

end

end A334201.P3470597943108671243

/-! ## A334201.P12267615049309377119

`A318995(A122111(n+1))`
-/

namespace A334201.P12267615049309377119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A122111 (n + 1)).toNat

end

end A334201.P12267615049309377119

/-! ## A334201.P15898578902939661624

`A325166(n+1)+A046660(n+1)`
-/

namespace A334201.P15898578902939661624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + A046660 (n + 1)

end

end A334201.P15898578902939661624

/-! ## A334201.P2485670080780499367

`A325135(n+1)+A252736(n+1)`
-/

namespace A334201.P2485670080780499367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A252736 (n + 1)

end

end A334201.P2485670080780499367

/-! ## A334201.P17458928271893742435

`A056239(n+1-A171462(n+1))`
-/

namespace A334201.P17458928271893742435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 ((n + 1 : ℤ) - A171462 (n + 1)).toNat

end

end A334201.P17458928271893742435

/-! ## A334201.P2263844266876073195

`A243291(n+1)-A178503(n+1)`
-/

namespace A334201.P2263844266876073195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (n + 1) - A178503 (n + 1)

end

end A334201.P2263844266876073195

/-! ## A334201.P6026598352611938087

`A056239((n+1)/A006530(n+1))`
-/

namespace A334201.P6026598352611938087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A334201.P6026598352611938087

/-! ## A334201.P4757714894890592422

`A056239(A342768(n+1)/(n+1))`
-/

namespace A334201.P4757714894890592422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A334201.P4757714894890592422

/-! ## A334201.P5621693152509185886

`A056239(n+1)-(n+1-A243291(n+1))`
-/

namespace A334201.P5621693152509185886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - ((n + 1 : ℤ) - A243291 (n + 1))

end

end A334201.P5621693152509185886

/-! ## A334201.P2361104616274775551

`A325135(n+1)+A001222(A052126(n+1))`
-/

namespace A334201.P2361104616274775551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A001222 (A052126 (n + 1)).toNat

end

end A334201.P2361104616274775551

/-! ## A334201.P9080729281652321445

`A056239(n+1)-A000720(A006530(n+1))`
-/

namespace A334201.P9080729281652321445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A000720 (A006530 (n + 1)).toNat

end

end A334201.P9080729281652321445

/-! ## A334201.P3714981978479522049

`A056239(n+1)-A263297(A007947(n+1))`
-/

namespace A334201.P3714981978479522049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A263297 (A007947 (n + 1)).toNat

end

end A334201.P3714981978479522049

/-! ## A334201.P13760022749224317423

`A056239(n+1)-A000720(A053585(∏{p}[n+1, #]))`
-/

namespace A334201.P13760022749224317423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A000720 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A334201.P13760022749224317423

/-! ## A334201.P1442997636721781558

`A056239(n+1)-A055396(A006530(∏{p}[n+1, #]))`
-/

namespace A334201.P1442997636721781558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A055396 (A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A334201.P1442997636721781558

/-! ## A334201.P85689594993129627

`A056239(n+1)-A049084(∏{p}[A053585(n+1), #])`
-/

namespace A334201.P85689594993129627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A049084 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A334201.P85689594993129627

/-! ## A334201.P11529598229346765706

`A001222(n+1)+A325166(n+1)-A001221(n+1)`
-/

namespace A334201.P11529598229346765706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A325166 (n + 1) - A001221 (n + 1))

end

end A334201.P11529598229346765706

/-! ## A334201.P13797257818666654557

`A056239(n+1)-(A243055(n+1)+A055396(n+1))`
-/

namespace A334201.P13797257818666654557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A243055 (n + 1) + A055396 (n + 1))

end

end A334201.P13797257818666654557

/-!
# A334202: a(n) = A064097(n) - A323077(n).

The programs for A334202, the canonical program `A334202.P7627444287747604241` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334202 has offset 1).

The definition of A334202 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A323077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334202.P13564027935332655872

`A064097(A006530(n+1))`
-/

namespace A334202.P13564027935332655872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A006530 (n + 1)).toNat

end

end A334202.P13564027935332655872

namespace A334202

/-- `A064097(A006530(n+1))` -/
def P13564027935332655872.Spec : Prop :=
  ∀ n, P13564027935332655872.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P7627444287747604241

`A064097(n+1)-A323077(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A334202

/-- `A064097(n+1)-A323077(n+1)` -/
def P7627444287747604241.Spec : Prop :=
  ∀ n, P7627444287747604241.a n = A334202 (n + 1)

theorem P7627444287747604241.correct : P7627444287747604241.Spec := by
  intro n
  simp only [A334202, Nat.add_sub_cancel]

end A334202

/-! ## A334202.P15132830524579236308

`A307742(A053585(n+1))`
-/

namespace A334202.P15132830524579236308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (A053585 (n + 1)).toNat

end

end A334202.P15132830524579236308

namespace A334202

/-- `A307742(A053585(n+1))` -/
def P15132830524579236308.Spec : Prop :=
  ∀ n, P15132830524579236308.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P3719946061684312158

`A307742(A323129(n+1))`
-/

namespace A334202.P3719946061684312158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (A323129 (n + 1)).toNat

end

end A334202.P3719946061684312158

namespace A334202

/-- `A307742(A323129(n+1))` -/
def P3719946061684312158.Spec : Prop :=
  ∀ n, P3719946061684312158.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P11370068616018232167

`A307742(A345941(n+1))`
-/

namespace A334202.P11370068616018232167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (A345941 (n + 1)).toNat

end

end A334202.P11370068616018232167

namespace A334202

/-- `A307742(A345941(n+1))` -/
def P11370068616018232167.Spec : Prop :=
  ∀ n, P11370068616018232167.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P8555054769982014008

`A334203(2*A006530(n+1))`
-/

namespace A334202.P8555054769982014008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * A006530 (n + 1)).toNat

end

end A334202.P8555054769982014008

namespace A334202

/-- `A334203(2*A006530(n+1))` -/
def P8555054769982014008.Spec : Prop :=
  ∀ n, P8555054769982014008.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P6192885999920960379

`A064097((n+1)/A052126(n+1))`
-/

namespace A334202.P6192885999920960379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A334202.P6192885999920960379

namespace A334202

/-- `A064097((n+1)/A052126(n+1))` -/
def P6192885999920960379.Spec : Prop :=
  ∀ n, P6192885999920960379.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P17287119334727856910

`A064097(A253560(n+1)/(n+1))`
-/

namespace A334202.P17287119334727856910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (SequenceMachineLib.roundAway ((A253560 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A334202.P17287119334727856910

namespace A334202

/-- `A064097(A253560(n+1)/(n+1))` -/
def P17287119334727856910.Spec : Prop :=
  ∀ n, P17287119334727856910.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P3790985592053458121

`A334203(2*(n+1))-A323077(n+1)`
-/

namespace A334202.P3790985592053458121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * (n + 1)) - A323077 (n + 1)

end

end A334202.P3790985592053458121

namespace A334202

/-- `A334203(2*(n+1))-A323077(n+1)` -/
def P3790985592053458121.Spec : Prop :=
  ∀ n, P3790985592053458121.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P9327678756436322197

`A064097(n+1)-A064097(A052126(n+1))`
-/

namespace A334202.P9327678756436322197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064097 (A052126 (n + 1)).toNat

end

end A334202.P9327678756436322197

namespace A334202

/-- `A064097(n+1)-A064097(A052126(n+1))` -/
def P9327678756436322197.Spec : Prop :=
  ∀ n, P9327678756436322197.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P11391556359614990176

`A073933(n+1)-A073933(A052126(n+1))`
-/

namespace A334202.P11391556359614990176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - A073933 (A052126 (n + 1)).toNat

end

end A334202.P11391556359614990176

namespace A334202

/-- `A073933(n+1)-A073933(A052126(n+1))` -/
def P11391556359614990176.Spec : Prop :=
  ∀ n, P11391556359614990176.a n = A334202 (n + 1)

theorem P11391556359614990176.correct : P11391556359614990176.Spec := by
  intro n
  simp only [A334202, Nat.add_sub_cancel, A334202.P11391556359614990176.a, A334202.P7627444287747604241.a, A052126, A052126.P1944428405920482243.a, A064097, A064097.P8268505920434442649.a, A073933, A073933.P3226346954737411092.a, A323077, A323077.P1062725111045104431.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334202

/-! ## A334202.P4669307551567111545

`A334203(2*(n+1))-A334203(A052126(2*(n+1)))`
-/

namespace A334202.P4669307551567111545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * (n + 1)) - A334203 (A052126 (2 * (n + 1))).toNat

end

end A334202.P4669307551567111545

namespace A334202

/-- `A334203(2*(n+1))-A334203(A052126(2*(n+1)))` -/
def P4669307551567111545.Spec : Prop :=
  ∀ n, P4669307551567111545.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P3374381558101672735

`A307742(A006530((n+1)²))`
-/

namespace A334202.P3374381558101672735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (A006530 ((n + 1) ^ 2)).toNat

end

end A334202.P3374381558101672735

namespace A334202

/-- `A307742(A006530((n+1)²))` -/
def P3374381558101672735.Spec : Prop :=
  ∀ n, P3374381558101672735.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P7256331748064854308

`A334203(A066048(n+1))`
-/

namespace A334202.P7256331748064854308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A066048 (n + 1)).toNat

end

end A334202.P7256331748064854308

namespace A334202

/-- `A334203(A066048(n+1))` -/
def P7256331748064854308.Spec : Prop :=
  ∀ n, P7256331748064854308.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P17253252263667164706

`A334203(A006530(n+1)²)`
-/

namespace A334202.P17253252263667164706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A006530 (n + 1) ^ 2).toNat

end

end A334202.P17253252263667164706

namespace A334202

/-- `A334203(A006530(n+1)²)` -/
def P17253252263667164706.Spec : Prop :=
  ∀ n, P17253252263667164706.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P16431500816414402050

`A307742(A304180(n+1))`
-/

namespace A334202.P16431500816414402050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (A304180 (n + 1)).toNat

end

end A334202.P16431500816414402050

namespace A334202

/-- `A307742(A304180(n+1))` -/
def P16431500816414402050.Spec : Prop :=
  ∀ n, P16431500816414402050.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P9282715593380443510

`A323077(A083717(n+1))`
-/

namespace A334202.P9282715593380443510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A083717 (n + 1)).toNat

end

end A334202.P9282715593380443510

namespace A334202

/-- `A323077(A083717(n+1))` -/
def P9282715593380443510.Spec : Prop :=
  ∀ n, P9282715593380443510.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P4853320455195414022

`A323077(A006530(n+1)²)`
-/

namespace A334202.P4853320455195414022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A006530 (n + 1) ^ 2).toNat

end

end A334202.P4853320455195414022

namespace A334202

/-- `A323077(A006530(n+1)²)` -/
def P4853320455195414022.Spec : Prop :=
  ∀ n, P4853320455195414022.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P14296363383183428609

`A323077(A129598(n+1))-A323077(n+1)`
-/

namespace A334202.P14296363383183428609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A129598 (n + 1)).toNat - A323077 (n + 1)

end

end A334202.P14296363383183428609

namespace A334202

/-- `A323077(A129598(n+1))-A323077(n+1)` -/
def P14296363383183428609.Spec : Prop :=
  ∀ n, P14296363383183428609.a n = A334202 (n + 1)

end A334202

/-! ## A334202.P1486012434357424575

`A323077(A253560(n+1))-A323077(n+1)`
-/

namespace A334202.P1486012434357424575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A253560 (n + 1)).toNat - A323077 (n + 1)

end

end A334202.P1486012434357424575

namespace A334202

/-- `A323077(A253560(n+1))-A323077(n+1)` -/
def P1486012434357424575.Spec : Prop :=
  ∀ n, P1486012434357424575.a n = A334202 (n + 1)

end A334202

/-!
# A334203: a(n) = A064097(A032742(n)).

The programs for A334203, there is no canonical definition to state claims against.
-/

/-! ## A334203.P16025289003160081664

`A064097(A032742(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334203.P16025289003160081664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A032742 (n + 1)).toNat

end

end A334203.P16025289003160081664

/-! ## A334203.P11128283594237189805

`A064097((n+1)/A020639(n+1))`
-/

namespace A334203.P11128283594237189805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A334203.P11128283594237189805

/-! ## A334203.P4532427228953069079

`A064097(1-A060681(n+1)+n)`
-/

namespace A334203.P4532427228953069079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A334203.P4532427228953069079

/-! ## A334203.P2148327590804270763

`A064097(gcd(n+1, A060681(n+1)))`
-/

namespace A334203.P2148327590804270763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)))

end

end A334203.P2148327590804270763

/-! ## A334203.P1166053682781530412

`A064097(n+1)-A064097(A020639(n+1))`
-/

namespace A334203.P1166053682781530412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064097 (A020639 (n + 1)).toNat

end

end A334203.P1166053682781530412

/-! ## A334203.P17792795743674485807

`A073933(n+1)-A073933(A020639(n+1))`
-/

namespace A334203.P17792795743674485807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - A073933 (A020639 (n + 1)).toNat

end

end A334203.P17792795743674485807

/-! ## A334203.P8793559822858030580

`A323077(A130064(n+1))`
-/

namespace A334203.P8793559822858030580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A130064 (n + 1)).toNat

end

end A334203.P8793559822858030580

/-! ## A334203.P12544778637504527982

`A323077(A006530(n+1)*A032742(n+1))`
-/

namespace A334203.P12544778637504527982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A006530 (n + 1) * A032742 (n + 1)).toNat

end

end A334203.P12544778637504527982

/-! ## A334203.P18090841518226289838

`A323077(A032742(n+1)²)-A323077(A032742(n+1))`
-/

namespace A334203.P18090841518226289838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A032742 (n + 1) ^ 2).toNat - A323077 (A032742 (n + 1)).toNat

end

end A334203.P18090841518226289838

/-! ## A334203.P8669843181412956896

`A323077(A285639(n+1))`
-/

namespace A334203.P8669843181412956896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A285639 (n + 1)).toNat

end

end A334203.P8669843181412956896

/-! ## A334203.P18321092206327006403

`A064097(A070821(A253560(n+1)))`
-/

namespace A334203.P18321092206327006403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A070821 (A253560 (n + 1)).toNat).toNat

end

end A334203.P18321092206327006403

/-!
# A334204: a(n) = A329697(A163511(n)).

The programs for A334204, the canonical program `A334204.P5497004873273688433` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334204 has offset 0).

The definition of A334204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334204.P5497004873273688433

`A329697(A163511(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A334204

/-- `A329697(A163511(n))` -/
def P5497004873273688433.Spec : Prop :=
  ∀ n, P5497004873273688433.a n = A334204 n

theorem P5497004873273688433.correct : P5497004873273688433.Spec := by
  intro n
  simp only [A334204]

end A334204

/-! ## A334204.P2359334340153243819

`A334109(A334860(n))`
-/

namespace A334204.P2359334340153243819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A334860 n).toNat

end

end A334204.P2359334340153243819

namespace A334204

/-- `A334109(A334860(n))` -/
def P2359334340153243819.Spec : Prop :=
  ∀ n, P2359334340153243819.a n = A334204 n

end A334204

/-! ## A334204.P16913900920251376169

`A334107(A253565(n))`
-/

namespace A334204.P16913900920251376169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334107 (A253565 n).toNat

end

end A334204.P16913900920251376169

namespace A334204

/-- `A334107(A253565(n))` -/
def P16913900920251376169.Spec : Prop :=
  ∀ n, P16913900920251376169.a n = A334204 n

end A334204

/-! ## A334204.P663716429840147480

`A329697(A332817(n))`
-/

namespace A334204.P663716429840147480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A332817 n).toNat

end

end A334204.P663716429840147480

namespace A334204

/-- `A329697(A332817(n))` -/
def P663716429840147480.Spec : Prop :=
  ∀ n, P663716429840147480.a n = A334204 n

end A334204

/-! ## A334204.P10921878321458528830

`A329697(A364258(n)+n)`
-/

namespace A334204.P10921878321458528830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A364258 n + (n : ℤ)).toNat

end

end A334204.P10921878321458528830

namespace A334204

/-- `A329697(A364258(n)+n)` -/
def P10921878321458528830.Spec : Prop :=
  ∀ n, P10921878321458528830.a n = A334204 n

theorem P10921878321458528830.correct : P10921878321458528830.Spec := by
  intro n
  simp only [A334204, Nat.add_sub_cancel, A334204.P10921878321458528830.a, A334204.P5497004873273688433.a, A163511, A163511.P5635496813650871695.a, A329697, A329697.P6355568551452954971.a, A364258, A364258.P6786196179042320049.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A052126, A052126.P1944428405920482243.a, A145341, A145341.P17834554394848515737.a, A309243, A309243.P2615360336711731693.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A006530, A006530.P13372528560459906635.a, A030101, A030101.P16184294017372777612.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A334204

/-! ## A334204.P15593312005603284463

`A329697(A332213(A332214(n)))`
-/

namespace A334204.P15593312005603284463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A332213 (A332214 n).toNat).toNat

end

end A334204.P15593312005603284463

namespace A334204

/-- `A329697(A332213(A332214(n)))` -/
def P15593312005603284463.Spec : Prop :=
  ∀ n, P15593312005603284463.a n = A334204 n

end A334204

/-! ## A334204.P4977076310809313397

`A329697(A241909(A005940(n+1)))`
-/

namespace A334204.P4977076310809313397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A241909 (A005940 (n + 1)).toNat).toNat

end

end A334204.P4977076310809313397

namespace A334204

/-- `A329697(A241909(A005940(n+1)))` -/
def P4977076310809313397.Spec : Prop :=
  ∀ n, P4977076310809313397.a n = A334204 n

end A334204

/-! ## A334204.P9623268290769001552

`A346700(A253565(A151934(n)+n))`
-/

namespace A334204.P9623268290769001552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A253565 (A151934 n + (n : ℤ)).toNat).toNat

end

end A334204.P9623268290769001552

namespace A334204

/-- `A346700(A253565(A151934(n)+n))` -/
def P9623268290769001552.Spec : Prop :=
  ∀ n, P9623268290769001552.a n = A334204 n

end A334204

/-!
# A334205: Under the isomorphism defined in A329329, of polynomials in GF(2)[x,y] to positive integers, a(n) is the image of the polynomial that results when x+1 is substituted for x in the polynomial with image n.

The programs for A334205, there is no canonical definition to state claims against.
-/

/-! ## A334205.P3312864195024773502

`A226532(n+1)/A324910(A333035(n))`
-/

namespace A334205.P3312864195024773502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226532 (n + 1) : ℚ) / (A324910 (A333035 n).toNat : ℚ)

end

end A334205.P3312864195024773502

/-! ## A334205.P15600305895666059347

`A335049(n+1)/A324910(A333035(n))`
-/

namespace A334205.P15600305895666059347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335049 (n + 1) : ℚ) / (A324910 (A333035 n).toNat : ℚ)

end

end A334205.P15600305895666059347

/-! ## A334205.P17300868701381735668

`A335049(n+1)%A003664(A013131(n))`
-/

namespace A334205.P17300868701381735668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335049 (n + 1)) (A003664 (A013131 n).toNat)

end

end A334205.P17300868701381735668

/-! ## A334205.P4449879544046596807

`gcd(A002620(A152551(n)), A226532(n+1))`
-/

namespace A334205.P4449879544046596807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 (A152551 n).toNat) (A226532 (n + 1))

end

end A334205.P4449879544046596807

/-!
# A334206: Fully additive with a(p) = 1 + a(A014682(p)) when p is prime and a(n*m) = a(n) + a(m) when m,n > 1.

The programs for A334206, there is no canonical definition to state claims against.
-/

/-! ## A334206.P891427098309935685

`∑{e}[A085629(n+1), A006666(#)]`
-/

namespace A334206.P891427098309935685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006666 (Nat.factorization (f1 n).natAbs p)

end

end A334206.P891427098309935685

/-! ## A334206.P13719220659188921584

`A006666(or(A035457(n), A077168(n)))`
-/

namespace A334206.P13719220659188921584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (Int.lor (A035457 n) (A077168 n)).toNat

end

end A334206.P13719220659188921584

/-! ## A334206.P691391796471927634

`A006666(n+1)-A086080(A094542(n))`
-/

namespace A334206.P691391796471927634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) - A086080 (A094542 n).toNat

end

end A334206.P691391796471927634

/-! ## A334206.P11138690989125933299

`A006666(or(A077168(n), A334040(n+1)))`
-/

namespace A334206.P11138690989125933299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (Int.lor (A077168 n) (A334040 (n + 1))).toNat

end

end A334206.P11138690989125933299

/-! ## A334206.P14117990587632710787

`A006666(n+1)-A070201(A036721(n))`
-/

namespace A334206.P14117990587632710787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) - A070201 (A036721 n).toNat

end

end A334206.P14117990587632710787

/-!
# A334207: Number of ways to write 2n as the sum of two nonprime positive integers.

The programs for A334207, there is no canonical definition to state claims against.
-/

/-! ## A334207.P10867940216896116473

`A291563(n+1)-A045917(n+1)`
-/

namespace A334207.P10867940216896116473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291563 (n + 1) - A045917 (n + 1)

end

end A334207.P10867940216896116473

/-! ## A334207.P16110192297497804624

`A227065(n+1)-A291564(n+1)`
-/

namespace A334207.P16110192297497804624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227065 (n + 1) - A291564 (n + 1)

end

end A334207.P16110192297497804624

/-! ## A334207.P282069137187140973

`n+1-(A291564(n+1)+A045917(n+1))`
-/

namespace A334207.P282069137187140973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A291564 (n + 1) + A045917 (n + 1))

end

end A334207.P282069137187140973

/-! ## A334207.P17206236489723921484

`A062610(2*(n+1))`
-/

namespace A334207.P17206236489723921484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (2 * (n + 1))

end

end A334207.P17206236489723921484

/-! ## A334207.P4345113333573933745

`ceil(A076608(2*(n+1))/2)`
-/

namespace A334207.P4345113333573933745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076608 (2 * (n + 1)) : ℚ) / 2⌉

end

end A334207.P4345113333573933745

/-! ## A334207.P14974122867223773499

`A110654(A076608(2*(n+1)))`
-/

namespace A334207.P14974122867223773499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A076608 (2 * (n + 1))).toNat

end

end A334207.P14974122867223773499

/-! ## A334207.P10421606424921791113

`A004526(A076608(2*(n+1))+1)`
-/

namespace A334207.P10421606424921791113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (2 * (n + 1)) + 1).toNat

end

end A334207.P10421606424921791113

/-! ## A334207.P17033051047388406661

`A302479(2*(n+1))+A005171(n+1)`
-/

namespace A334207.P17033051047388406661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302479 (2 * (n + 1)) + A005171 (n + 1)

end

end A334207.P17033051047388406661

/-! ## A334207.P14869700919142424077

`A171691(2*(n+1))+A000007(n)-1`
-/

namespace A334207.P14869700919142424077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (2 * (n + 1)) + (A000007 n - 1)

end

end A334207.P14869700919142424077

/-! ## A334207.P14457328221062997629

`A224708(2*(n+1))+A005171(2*n+1)`
-/

namespace A334207.P14457328221062997629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (2 * (n + 1)) + A005171 (2 * n + 1)

end

end A334207.P14457328221062997629

/-! ## A334207.P13219230572152443395

`A171691(2*(n+1))-A005171(2*(n+1))`
-/

namespace A334207.P13219230572152443395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (2 * (n + 1)) - A005171 (2 * (n + 1))

end

end A334207.P13219230572152443395

/-! ## A334207.P4400482605904433480

`A171691(2*(n+1))-A066247(2*(n+1))`
-/

namespace A334207.P4400482605904433480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (2 * (n + 1)) - A066247 (2 * (n + 1))

end

end A334207.P4400482605904433480

/-! ## A334207.P138388727839172135

`A062298(2*n+1)-A295630(2*(n+1))`
-/

namespace A334207.P138388727839172135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (2 * n + 1) - A295630 (2 * (n + 1))

end

end A334207.P138388727839172135

/-! ## A334207.P3341192766867953952

`A295629(2*(n+1))-A062602(2*(n+1))`
-/

namespace A334207.P3341192766867953952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 (2 * (n + 1)) - A062602 (2 * (n + 1))

end

end A334207.P3341192766867953952

/-! ## A334207.P3295864309627650929

`A076608(2*(n+1))-A302479(2*(n+1))`
-/

namespace A334207.P3295864309627650929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (2 * (n + 1)) - A302479 (2 * (n + 1))

end

end A334207.P3295864309627650929

/-! ## A334207.P3048642526233023413

`A062298(2*n+1)+A171691(2*(n+1))-A062298(2*(n+1))`
-/

namespace A334207.P3048642526233023413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (2 * n + 1) + (A171691 (2 * (n + 1)) - A062298 (2 * (n + 1)))

end

end A334207.P3048642526233023413

/-! ## A334207.P6758971256849056880

`A171691(2*(n+1))-A000720(2*n+1)/A000720(2*(n+1))`
-/

namespace A334207.P6758971256849056880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171691 (2 * (n + 1)) : ℚ) - (A000720 (2 * n + 1) : ℚ) / (A000720 (2 * (n + 1)) : ℚ)

end

end A334207.P6758971256849056880

/-! ## A334207.P8266005062493576577

`A345039(2*(n+1))+A185279(2*(n+1))`
-/

namespace A334207.P8266005062493576577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345039 (2 * (n + 1)) + A185279 (2 * (n + 1))

end

end A334207.P8266005062493576577

/-! ## A334207.P2299707756964034495

`A141099(n+1)+A140106(n+1)`
-/

namespace A334207.P2299707756964034495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141099 (n + 1) + A140106 (n + 1)

end

end A334207.P2299707756964034495

/-!
# A334208: Number of partitions of 2n into two composite parts, (r,s), such that r and s have the same number of primes less than or equal to them.

The programs for A334208, the canonical program `A334208.P8342004109631555367` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334208 has offset 1).

The definition of A334208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334208.P14904305867428222996

`A051699(ceil(acot(n)+n))`
-/

namespace A334208.P14904305867428222996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A334208.P14904305867428222996

namespace A334208

/-- `A051699(ceil(acot(n)+n))` -/
def P14904305867428222996.Spec : Prop :=
  ∀ n, P14904305867428222996.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P8342004109631555367

`A051699(abs(1-n)+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A334208

/-- `A051699(abs(1-n)+2)` -/
def P8342004109631555367.Spec : Prop :=
  ∀ n, P8342004109631555367.a n = A334208 (n + 1)

theorem P8342004109631555367.correct : P8342004109631555367.Spec := by
  intro n
  simp only [A334208, Nat.add_sub_cancel]

end A334208

/-! ## A334208.P6533937697945098814

`A051699(n+1)%(n+1)`
-/

namespace A334208.P6533937697945098814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051699 (n + 1)) (n + 1 : ℤ)

end

end A334208.P6533937697945098814

namespace A334208

/-- `A051699(n+1)%(n+1)` -/
def P6533937697945098814.Spec : Prop :=
  ∀ n, P6533937697945098814.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P16344944715095967273

`∑[Δ[A051699(n)]%or(1, n)]`
-/

namespace A334208.P16344944715095967273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334208.P16344944715095967273

namespace A334208

/-- `∑[Δ[A051699(n)]%or(1, n)]` -/
def P16344944715095967273.Spec : Prop :=
  ∀ n, P16344944715095967273.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P6018858842364451929

`A051699(n+1)-A000007(n)`
-/

namespace A334208.P6018858842364451929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A000007 n

end

end A334208.P6018858842364451929

namespace A334208

/-- `A051699(n+1)-A000007(n)` -/
def P6018858842364451929.Spec : Prop :=
  ∀ n, P6018858842364451929.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P18197494740097837754

`A051699(n+1)*A057427(n)`
-/

namespace A334208.P18197494740097837754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) * A057427 n

end

end A334208.P18197494740097837754

namespace A334208

/-- `A051699(n+1)*A057427(n)` -/
def P18197494740097837754.Spec : Prop :=
  ∀ n, P18197494740097837754.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P8983792904606782523

`A051699(n+1)-A010051(2*(n+1))`
-/

namespace A334208.P8983792904606782523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A010051 (2 * (n + 1))

end

end A334208.P8983792904606782523

namespace A334208

/-- `A051699(n+1)-A010051(2*(n+1))` -/
def P8983792904606782523.Spec : Prop :=
  ∀ n, P8983792904606782523.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P3492601845760928828

`A051699(n+1)+A301295(n+1)-A080732(n+1)`
-/

namespace A334208.P3492601845760928828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) + (A301295 (n + 1) - A080732 (n + 1))

end

end A334208.P3492601845760928828

namespace A334208

/-- `A051699(n+1)+A301295(n+1)-A080732(n+1)` -/
def P3492601845760928828.Spec : Prop :=
  ∀ n, P3492601845760928828.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P2933390118279687706

`A051699(n+1)*A060576(n+1)`
-/

namespace A334208.P2933390118279687706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) * A060576 (n + 1)

end

end A334208.P2933390118279687706

namespace A334208

/-- `A051699(n+1)*A060576(n+1)` -/
def P2933390118279687706.Spec : Prop :=
  ∀ n, P2933390118279687706.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P1348908914603878239

`A051699(n+1)-A127802(2*n)`
-/

namespace A334208.P1348908914603878239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A127802 (2 * n)

end

end A334208.P1348908914603878239

namespace A334208

/-- `A051699(n+1)-A127802(2*n)` -/
def P1348908914603878239.Spec : Prop :=
  ∀ n, P1348908914603878239.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P15541878104069562188

`A051699(n+1)-A051699(A006530(2*n+1))`
-/

namespace A334208.P15541878104069562188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A051699 (A006530 (2 * n + 1)).toNat

end

end A334208.P15541878104069562188

namespace A334208

/-- `A051699(n+1)-A051699(A006530(2*n+1))` -/
def P15541878104069562188.Spec : Prop :=
  ∀ n, P15541878104069562188.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P7199524483406760178

`A051699(n+1)-A010060(A004016(2*n))`
-/

namespace A334208.P7199524483406760178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A010060 (A004016 (2 * n)).toNat

end

end A334208.P7199524483406760178

namespace A334208

/-- `A051699(n+1)-A010060(A004016(2*n))` -/
def P7199524483406760178.Spec : Prop :=
  ∀ n, P7199524483406760178.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P10354390173663403480

`A362831(Δ[n²])`
-/

namespace A334208.P10354390173663403480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A334208.P10354390173663403480

namespace A334208

/-- `A362831(Δ[n²])` -/
def P10354390173663403480.Spec : Prop :=
  ∀ n, P10354390173663403480.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P12575461434918428273

`A051699(n+1)-A099894(2*n)`
-/

namespace A334208.P12575461434918428273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A099894 (2 * n)

end

end A334208.P12575461434918428273

namespace A334208

/-- `A051699(n+1)-A099894(2*n)` -/
def P12575461434918428273.Spec : Prop :=
  ∀ n, P12575461434918428273.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P18042133140422770235

`A051699(n+1)-A108069(2*n+1)`
-/

namespace A334208.P18042133140422770235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A108069 (2 * n + 1)

end

end A334208.P18042133140422770235

namespace A334208

/-- `A051699(n+1)-A108069(2*n+1)` -/
def P18042133140422770235.Spec : Prop :=
  ∀ n, P18042133140422770235.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P4549339866497822578

`A051699(n+1)-A000035(A051699(2*n+1))`
-/

namespace A334208.P4549339866497822578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A000035 (A051699 (2 * n + 1)).toNat

end

end A334208.P4549339866497822578

namespace A334208

/-- `A051699(n+1)-A000035(A051699(2*n+1))` -/
def P4549339866497822578.Spec : Prop :=
  ∀ n, P4549339866497822578.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P6265978805401163397

`A051699(n+1)-A055672(A169805(2*n+1))`
-/

namespace A334208.P6265978805401163397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A055672 (A169805 (2 * n + 1)).toNat

end

end A334208.P6265978805401163397

namespace A334208

/-- `A051699(n+1)-A055672(A169805(2*n+1))` -/
def P6265978805401163397.Spec : Prop :=
  ∀ n, P6265978805401163397.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P5148482119610509700

`A051699(n+1)-A329678(A348553(2*n+1))`
-/

namespace A334208.P5148482119610509700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) - A329678 (A348553 (2 * n + 1)).toNat

end

end A334208.P5148482119610509700

namespace A334208

/-- `A051699(n+1)-A329678(A348553(2*n+1))` -/
def P5148482119610509700.Spec : Prop :=
  ∀ n, P5148482119610509700.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P9677119652170951606

`A051699(A045718(n+1))*A051699(n+1)`
-/

namespace A334208.P9677119652170951606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A045718 (n + 1)).toNat * A051699 (n + 1)

end

end A334208.P9677119652170951606

namespace A334208

/-- `A051699(A045718(n+1))*A051699(n+1)` -/
def P9677119652170951606.Spec : Prop :=
  ∀ n, P9677119652170951606.a n = A334208 (n + 1)

end A334208

/-! ## A334208.P28699608360597726

`A051699(n+1)*A134451(A008347(2*n))`
-/

namespace A334208.P28699608360597726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (n + 1) * A134451 (A008347 (2 * n)).toNat

end

end A334208.P28699608360597726

namespace A334208

/-- `A051699(n+1)*A134451(A008347(2*n))` -/
def P28699608360597726.Spec : Prop :=
  ∀ n, P28699608360597726.a n = A334208 (n + 1)

end A334208

/-!
# A334209: Number of solutions to n = i+j, 0 <= i,j <= n for which A010060(i)=A010060(j)=0, i != j.

The programs for A334209, there is no canonical definition to state claims against.
-/

/-! ## A334209.P10125829427661465114

`2*A133009(n+1)`
-/

namespace A334209.P10125829427661465114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133009 (n + 1)

end

end A334209.P10125829427661465114

/-! ## A334209.P16347106218503945914

`Δ[2*∑[A133009(n)]]`
-/

namespace A334209.P16347106218503945914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334209.P16347106218503945914

/-! ## A334209.P9795821986789133199

`and(702, A108804(n+1))`
-/

namespace A334209.P9795821986789133199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 702 (A108804 (n + 1))

end

end A334209.P9795821986789133199

/-! ## A334209.P1557996066408786902

`and(-2, A247303(n+1))`
-/

namespace A334209.P1557996066408786902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A247303 (n + 1))

end

end A334209.P1557996066408786902

/-! ## A334209.P10584356105161617069

`A005843(A133009(n+1))`
-/

namespace A334209.P10584356105161617069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A133009 (n + 1)).toNat

end

end A334209.P10584356105161617069

/-! ## A334209.P8220679349448788129

`A052928(A108804(n+1))`
-/

namespace A334209.P8220679349448788129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A108804 (n + 1)).toNat

end

end A334209.P8220679349448788129

/-! ## A334209.P9866889816877127765

`A052928(A247303(n+1))`
-/

namespace A334209.P9866889816877127765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A247303 (n + 1)).toNat

end

end A334209.P9866889816877127765

/-! ## A334209.P10647009873004947143

`A108804(n+1)-A254379(n+1)`
-/

namespace A334209.P10647009873004947143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 (n + 1) - A254379 (n + 1)

end

end A334209.P10647009873004947143

/-! ## A334209.P8239850586660307090

`A247303(n+1)-A228495(n+2)`
-/

namespace A334209.P8239850586660307090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 (n + 1) - A228495 (n + 2)

end

end A334209.P8239850586660307090

/-! ## A334209.P15203924972856996442

`or(1, A108804(n+1))-A000005(gcd(n, n+1))`
-/

namespace A334209.P15203924972856996442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108804 (n + 1)) - A000005 (Nat.gcd n (n + 1))

end

end A334209.P15203924972856996442

/-!
# A334210: a(n) = sigma(prime(n) + 1) - sigma(prime(n)).

The programs for A334210, the canonical program `A334210.P14863771200850807590` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334210 has offset 1).

The definition of A334210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000040(n+1)+1)-A000203(A000040(n+1))` (program `A334210.P14863771200850807590`, by `A334210.P14863771200850807590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A334210.P14190534064000335262

`A008333(n+1)-A008864(n+1)`
-/

namespace A334210.P14190534064000335262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) - A008864 (n + 1)

end

end A334210.P14190534064000335262

namespace A334210

/-- `A008333(n+1)-A008864(n+1)` -/
def P14190534064000335262.Spec : Prop :=
  ∀ n, P14190534064000335262.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P14863771200850807590

`A000203(A000040(n+1)+1)-A000203(A000040(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A334210

/-- `A000203(A000040(n+1)+1)-A000203(A000040(n+1))` -/
def P14863771200850807590.Spec : Prop :=
  ∀ n, P14863771200850807590.a n = A334210 (n + 1)

theorem P14863771200850807590.correct : P14863771200850807590.Spec := by
  intro n
  simp only [A334210, Nat.add_sub_cancel]

end A334210

/-! ## A334210.P6901847958535874692

`A001065(A008864(n+1))`
-/

namespace A334210.P6901847958535874692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A008864 (n + 1)).toNat

end

end A334210.P6901847958535874692

namespace A334210

/-- `A001065(A008864(n+1))` -/
def P6901847958535874692.Spec : Prop :=
  ∀ n, P6901847958535874692.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P11423551221958163862

`A051027(A000040(n+1))-A000203(A000040(n+1))`
-/

namespace A334210.P11423551221958163862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000040 (n + 1)).toNat - A000203 (A000040 (n + 1)).toNat

end

end A334210.P11423551221958163862

namespace A334210

/-- `A051027(A000040(n+1))-A000203(A000040(n+1))` -/
def P11423551221958163862.Spec : Prop :=
  ∀ n, P11423551221958163862.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P13856423040670539382

`A008333(n+1)-(A000040(n+1)+1)`
-/

namespace A334210.P13856423040670539382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) - (A000040 (n + 1) + 1)

end

end A334210.P13856423040670539382

namespace A334210

/-- `A008333(n+1)-(A000040(n+1)+1)` -/
def P13856423040670539382.Spec : Prop :=
  ∀ n, P13856423040670539382.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P5010010568757455141

`A008333(n+1)-(A006093(n+1)+2)`
-/

namespace A334210.P5010010568757455141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) - (A006093 (n + 1) + 2)

end

end A334210.P5010010568757455141

namespace A334210

/-- `A008333(n+1)-(A006093(n+1)+2)` -/
def P5010010568757455141.Spec : Prop :=
  ∀ n, P5010010568757455141.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P8714050330232884270

`A008333(n+1)-(A040976(n+1)+3)`
-/

namespace A334210.P8714050330232884270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) - (A040976 (n + 1) + 3)

end

end A334210.P8714050330232884270

namespace A334210

/-- `A008333(n+1)-(A040976(n+1)+3)` -/
def P8714050330232884270.Spec : Prop :=
  ∀ n, P8714050330232884270.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P10138104607311901701

`∑{d}[A000040(n+1)+1, #-A000010(#)]`
-/

namespace A334210.P10138104607311901701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A334210.P10138104607311901701

namespace A334210

/-- `∑{d}[A000040(n+1)+1, #-A000010(#)]` -/
def P10138104607311901701.Spec : Prop :=
  ∀ n, P10138104607311901701.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P1127363503513498653

`∑{d}[record[A000010(n+1)+2], #-A000010(#)]`
-/

namespace A334210.P1127363503513498653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A334210.P1127363503513498653

namespace A334210

/-- `∑{d}[record[A000010(n+1)+2], #-A000010(#)]` -/
def P1127363503513498653.Spec : Prop :=
  ∀ n, P1127363503513498653.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P4642636041601026776

`A008333(n+1)-A000203(A000040(n+1))`
-/

namespace A334210.P4642636041601026776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) - A000203 (A000040 (n + 1)).toNat

end

end A334210.P4642636041601026776

namespace A334210

/-- `A008333(n+1)-A000203(A000040(n+1))` -/
def P4642636041601026776.Spec : Prop :=
  ∀ n, P4642636041601026776.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P2800138587638942204

`A000203(A028815(n+1))-A028815(n+1)`
-/

namespace A334210.P2800138587638942204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028815 (n + 1)).toNat - A028815 (n + 1)

end

end A334210.P2800138587638942204

namespace A334210

/-- `A000203(A028815(n+1))-A028815(n+1)` -/
def P2800138587638942204.Spec : Prop :=
  ∀ n, P2800138587638942204.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P181106525750657252

`A000203(A299763(n+2))-A299763(n+2)`
-/

namespace A334210.P181106525750657252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A299763 (n + 2)).toNat - A299763 (n + 2)

end

end A334210.P181106525750657252

namespace A334210

/-- `A000203(A299763(n+2))-A299763(n+2)` -/
def P181106525750657252.Spec : Prop :=
  ∀ n, P181106525750657252.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P12403431963737479612

`A000203(A000040(n+1)+1)-A008864(n+1)`
-/

namespace A334210.P12403431963737479612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000040 (n + 1) + 1).toNat - A008864 (n + 1)

end

end A334210.P12403431963737479612

namespace A334210

/-- `A000203(A000040(n+1)+1)-A008864(n+1)` -/
def P12403431963737479612.Spec : Prop :=
  ∀ n, P12403431963737479612.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P15223698476351478290

`A346878(A111333(n+1))`
-/

namespace A334210.P15223698476351478290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346878 (A111333 (n + 1)).toNat

end

end A334210.P15223698476351478290

namespace A334210

/-- `A346878(A111333(n+1))` -/
def P15223698476351478290.Spec : Prop :=
  ∀ n, P15223698476351478290.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P11147858158847962545

`A001065(A028815(n+1))`
-/

namespace A334210.P11147858158847962545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A028815 (n + 1)).toNat

end

end A334210.P11147858158847962545

namespace A334210

/-- `A001065(A028815(n+1))` -/
def P11147858158847962545.Spec : Prop :=
  ∀ n, P11147858158847962545.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P8276060310161120541

`A053222(A000040(n+1))`
-/

namespace A334210.P8276060310161120541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A000040 (n + 1)).toNat

end

end A334210.P8276060310161120541

namespace A334210

/-- `A053222(A000040(n+1))` -/
def P8276060310161120541.Spec : Prop :=
  ∀ n, P8276060310161120541.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P2181969454536739326

`A173455(A055670(n+1))`
-/

namespace A334210.P2181969454536739326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (A055670 (n + 1)).toNat

end

end A334210.P2181969454536739326

namespace A334210

/-- `A173455(A055670(n+1))` -/
def P2181969454536739326.Spec : Prop :=
  ∀ n, P2181969454536739326.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P591140879381180728

`A053222(A008578(n+2))`
-/

namespace A334210.P591140879381180728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A008578 (n + 2)).toNat

end

end A334210.P591140879381180728

namespace A334210

/-- `A053222(A008578(n+2))` -/
def P591140879381180728.Spec : Prop :=
  ∀ n, P591140879381180728.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P271158270402920541

`A053222(A182986(n+2))`
-/

namespace A334210.P271158270402920541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A182986 (n + 2)).toNat

end

end A334210.P271158270402920541

namespace A334210

/-- `A053222(A182986(n+2))` -/
def P271158270402920541.Spec : Prop :=
  ∀ n, P271158270402920541.a n = A334210 (n + 1)

end A334210

/-! ## A334210.P2009615384526403668

`A001065(A299763(n+2))`
-/

namespace A334210.P2009615384526403668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A299763 (n + 2)).toNat

end

end A334210.P2009615384526403668

namespace A334210

/-- `A001065(A299763(n+2))` -/
def P2009615384526403668.Spec : Prop :=
  ∀ n, P2009615384526403668.a n = A334210 (n + 1)

end A334210

/-!
# A334211: a(n) = 1 + a(n-1)*(A007018(n-1) + 1), with a(0) = 1.

The programs for A334211, the canonical program `A334211.P5571320847582038728` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334211 has offset 0).

The definition of A334211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)*(A007018(n-1)+1)` (program `A334211.P5571320847582038728`, by `A334211.P5571320847582038728.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A334211.P5571320847582038728

`1+a(n-1)*(A007018(n-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A334211

/-- `1+a(n-1)*(A007018(n-1)+1)` -/
def P5571320847582038728.Spec : Prop :=
  ∀ n, P5571320847582038728.a n = A334211 n

theorem P5571320847582038728.correct : P5571320847582038728.Spec := by
  intro n
  simp only [A334211]

end A334211

/-! ## A334211.P9116824570674396324

`a(n-1)*A129871(n)+1` with `a(0)=1`
-/

namespace A334211.P9116824570674396324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A129871 n + 1

end

end A334211.P9116824570674396324

namespace A334211

/-- `a(n-1)*A129871(n)+1` -/
def P9116824570674396324.Spec : Prop :=
  ∀ n, P9116824570674396324.a n = A334211 n

end A334211

/-! ## A334211.P8442434607731701112

`∑[1/A007018(n)]*A007018(n)`
-/

namespace A334211.P8442434607731701112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A007018 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A007018 n : ℚ)

end

end A334211.P8442434607731701112

namespace A334211

/-- `∑[1/A007018(n)]*A007018(n)` -/
def P8442434607731701112.Spec : Prop :=
  ∀ n, P8442434607731701112.a n = (A334211 n : ℚ)

end A334211

/-!
# A334213: Numbers m such that m^k + 1 is squarefree for all 0 <= k <= m.

The programs for A334213, there is no canonical definition to state claims against.
-/

/-! ## A334213.P11863923807867926159

`record[A117248(∑[A109754(n)])]`
-/

namespace A334213.P11863923807867926159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117248 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334213.P11863923807867926159

/-! ## A334213.P10424134992671592583

`lt[n, A334212(A233583(n+1))]`
-/

namespace A334213.P10424134992671592583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334212 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334213.P10424134992671592583

/-! ## A334213.P15610328728666274361

`eq[A001065(n+1), A052344(A005476(n))]`
-/

namespace A334213.P15610328728666274361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A005476 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334213.P15610328728666274361

/-! ## A334213.P6004293109111230405

`eq[A010051(n+1), A052344(A005476(n))]`
-/

namespace A334213.P6004293109111230405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A005476 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334213.P6004293109111230405

/-! ## A334213.P3893019554370947327

`eq[A127613(n+1), A361540(A046816(n))]`
-/

namespace A334213.P3893019554370947327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (A046816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334213.P3893019554370947327

/-!
# A334214: Odd numbers m such that m^k + 1 is squarefree for all 0 <= k <= (m - 1)/2.

The programs for A334214, there is no canonical definition to state claims against.
-/

/-! ## A334214.P12406948180740217837

`∩[A307345(n+1), A314671(n)]`
-/

namespace A334214.P12406948180740217837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334214.P12406948180740217837

/-!
# A334215: T(n, k) is the greatest positive integer m such that m^k divides n; square array T(n, k), n, k > 0 read by antidiagonals downwards.

The programs for A334215, there is no canonical definition to state claims against.
-/

/-! ## A334215.P5748274216090514632

`gcd(A000045(A292712(n)), A131817(n))`
-/

namespace A334215.P5748274216090514632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A292712 n).toNat) (A131817 n)

end

end A334215.P5748274216090514632

/-! ## A334215.P14292050099834676927

`gcd(A010783(n+1), A051903(A320031(n)))`
-/

namespace A334215.P14292050099834676927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010783 (n + 1)) (A051903 (A320031 n).toNat)

end

end A334215.P14292050099834676927

/-! ## A334215.P8246639943719268341

`A051340(n)+A025469(A008537(n+1))`
-/

namespace A334215.P8246639943719268341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + A025469 (A008537 (n + 1)).toNat

end

end A334215.P8246639943719268341

/-! ## A334215.P16676333028495961859

`A051340(A368413(2*n+1))*A051340(n)`
-/

namespace A334215.P16676333028495961859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A368413 (2 * n + 1)).toNat * A051340 n

end

end A334215.P16676333028495961859

/-! ## A334215.P14597324758661440311

`gcd(A028421(n), A333381(A287847(n)))`
-/

namespace A334215.P14597324758661440311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028421 n) (A333381 (A287847 n).toNat)

end

end A334215.P14597324758661440311

/-!
# A334216: a(n) is the number of distinct terms in the n-th row of A334215.

The programs for A334216, there is no canonical definition to state claims against.
-/

/-! ## A334216.P9086742171429789207

`ceil(sqrt(A321271(n+1)))+1`
-/

namespace A334216.P9086742171429789207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A321271 (n + 1) : ℝ)⌉ + 1

end

end A334216.P9086742171429789207

/-! ## A334216.P9071746135012679293

`round(log(A016789(∑{e}[n+1, #²])))`
-/

namespace A334216.P9071746135012679293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A016789 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) : ℝ))

end

end A334216.P9071746135012679293

/-! ## A334216.P7210042569510607845

`A083399(∏{e}[n+1, C(#+4, 4)])`
-/

namespace A334216.P7210042569510607845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4)

end

end A334216.P7210042569510607845

/-! ## A334216.P681962334171245548

`A001221(∏{e}[n+1, 4^#-1])+1`
-/

namespace A334216.P681962334171245548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), ((4 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat + 1

end

end A334216.P681962334171245548

/-! ## A334216.P5368136966583838227

`A095407(∏{e}[n+1, C(#+4, 4)])+1`
-/

namespace A334216.P5368136966583838227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4) + 1

end

end A334216.P5368136966583838227

/-! ## A334216.P2872429406274040107

`A001221(11*∏{e}[n+1, C(#+4, 4)])`
-/

namespace A334216.P2872429406274040107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (11 * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4))

end

end A334216.P2872429406274040107

/-! ## A334216.P15587325160142908799

`A001221(lcm(11, ∏{e}[n+1, C(#+4, 4)]))`
-/

namespace A334216.P15587325160142908799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lcm 11 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4))

end

end A334216.P15587325160142908799

/-! ## A334216.P4914138453377188444

`A235224(∏{p}[∏{e}[n+1, C(2*#, #)], #])`
-/

namespace A334216.P4914138453377188444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (2 * Nat.factorization (f2 n) p) (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A334216.P4914138453377188444

/-! ## A334216.P1808631340741395782

`A001222(5*∏{p}[∏{e}[n+1, C(#+4, 4)], #])`
-/

namespace A334216.P1808631340741395782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 4) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A334216.P1808631340741395782

/-! ## A334216.P11966431891837883439

`A083399(A061200(n+1))`
-/

namespace A334216.P11966431891837883439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A061200 (n + 1)).toNat

end

end A334216.P11966431891837883439

/-!
# A334217: Irregular table T(n, k) read by rows, n > 0 and k = 1..A334216(n); n-th row corresponds to distinct terms of n-th row of A334215, in ascending order.

The programs for A334217, there is no canonical definition to state claims against.
-/

/-! ## A334217.P8969690206969737383

`A027750(∑[A052551(A119624(n+1))])`
-/

namespace A334217.P8969690206969737383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A119624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334217.P8969690206969737383

/-! ## A334217.P11707119197733015211

`A027750(∑[A050873(A286382(n+1))])`
-/

namespace A334217.P11707119197733015211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A286382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334217.P11707119197733015211

/-! ## A334217.P11962696694574217550

`A027750(∑[gcd(3, A096928(2*n+5))])`
-/

namespace A334217.P11962696694574217550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A096928 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334217.P11962696694574217550

/-! ## A334217.P688243315665664392

`A000120(lt[A164089(n+1), A333381(n)])`
-/

namespace A334217.P688243315665664392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334217.P688243315665664392

/-! ## A334217.P2232898401429119819

`A228812(A167620(n+1))`
-/

namespace A334217.P2232898401429119819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228812 (A167620 (n + 1)).toNat

end

end A334217.P2232898401429119819

/-!
# A334218: Triangle read by rows: T(n,k) is the number of permutations of 1..n arranged in a circle with exactly k descents.

The programs for A334218, the canonical program `A334218.P17970550717868276801` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334218 has offset 0).

The definition of A334218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334218.P17970550717868276801

`A123125(A083920(n))*A318274(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334218

/-- `A123125(A083920(n))*A318274(n)` -/
def P17970550717868276801.Spec : Prop :=
  ∀ n, P17970550717868276801.a n = A334218 n

theorem P17970550717868276801.correct : P17970550717868276801.Spec := by
  intro n
  simp only [A334218]

end A334218

/-! ## A334218.P3153449832934766698

`A003056(n+1)*A123125(A083920(n))`
-/

namespace A334218.P3153449832934766698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) * A123125 (A083920 n).toNat

end

end A334218.P3153449832934766698

namespace A334218

/-- `A003056(n+1)*A123125(A083920(n))` -/
def P3153449832934766698.Spec : Prop :=
  ∀ n, P3153449832934766698.a n = A334218 n

end A334218

/-! ## A334218.P4562638203239406002

`A003056(n+1)*A123125(n-A003056(n))`
-/

namespace A334218.P4562638203239406002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) * A123125 ((n : ℤ) - A003056 n).toNat

end

end A334218.P4562638203239406002

namespace A334218

/-- `A003056(n+1)*A123125(n-A003056(n))` -/
def P4562638203239406002.Spec : Prop :=
  ∀ n, P4562638203239406002.a n = A334218 n

end A334218

/-! ## A334218.P17302539728435506151

`A028310(A003056(n))*A123125(A083920(n))`
-/

namespace A334218.P17302539728435506151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003056 n).toNat * A123125 (A083920 n).toNat

end

end A334218.P17302539728435506151

namespace A334218

/-- `A028310(A003056(n))*A123125(A083920(n))` -/
def P17302539728435506151.Spec : Prop :=
  ∀ n, P17302539728435506151.a n = A334218 n

end A334218

/-! ## A334218.P8979450694044376299

`A123125(A083920(n))*A259361(A005843(n+1))`
-/

namespace A334218.P8979450694044376299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A083920 n).toNat * A259361 (A005843 (n + 1)).toNat

end

end A334218.P8979450694044376299

namespace A334218

/-- `A123125(A083920(n))*A259361(A005843(n+1))` -/
def P8979450694044376299.Spec : Prop :=
  ∀ n, P8979450694044376299.a n = A334218 n

end A334218

/-!
# A334219: a(n) is the number of terms beyond the starting value n before a repeated number first appears when following the same rules as Recamán's sequence A005132 but starting at n instead of 0.

The programs for A334219, there is no canonical definition to state claims against.
-/

/-! ## A334219.P1187835191011787059

`A308419(n+1)`
-/

namespace A334219.P1187835191011787059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308419 (n + 1)

end

end A334219.P1187835191011787059

/-! ## A334219.P5044827269576937696

`Δ[A000027(∑[A308419(n)])]`
-/

namespace A334219.P5044827269576937696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308419 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334219.P5044827269576937696

/-! ## A334219.P7220804771425875494

`Δ[A020725(∑[A308419(n)])]`
-/

namespace A334219.P7220804771425875494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308419 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334219.P7220804771425875494

/-! ## A334219.P4562548107434430135

`Δ[A023443(∑[A308419(n)])]`
-/

namespace A334219.P4562548107434430135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308419 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334219.P4562548107434430135

/-! ## A334219.P16167084127900343785

`Δ[A028310(∑[A308419(n)])]`
-/

namespace A334219.P16167084127900343785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308419 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334219.P16167084127900343785

/-! ## A334219.P7665646008891122575

`and(31, A308419(A008619(2*n)))`
-/

namespace A334219.P7665646008891122575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A308419 (A008619 (2 * n)).toNat)

end

end A334219.P7665646008891122575

/-! ## A334219.P13166513766268052964

`A308419(A008619(2*n))-A244895(90*n)`
-/

namespace A334219.P13166513766268052964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308419 (A008619 (2 * n)).toNat - A244895 (90 * n)

end

end A334219.P13166513766268052964

/-! ## A334219.P3466024967420653654

`A308419(A008619(2*n))-A245552(90*n)`
-/

namespace A334219.P3466024967420653654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308419 (A008619 (2 * n)).toNat - A245552 (90 * n)

end

end A334219.P3466024967420653654

/-! ## A334219.P16584941170591599546

`A308419(1-(n-2*n))%A076066(A308419(n))`
-/

namespace A334219.P16584941170591599546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308419 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A076066 (A308419 n).toNat)

end

end A334219.P16584941170591599546

/-!
# A334222: a(n) is the X-coordinate of the point at n steps backward from the origin along the space filling curve U defined in A334188; sequence A334223 gives Y-coordinates.

The programs for A334222, the canonical program `A334222.P17127640605505612675` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334222 has offset 0).

The definition of A334222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334222.P17127640605505612675

`A334235(n+1-A334235(n+1-a(n-1)))` with `a(0)=0`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A334222

/-- `A334235(n+1-A334235(n+1-a(n-1)))` -/
def P17127640605505612675.Spec : Prop :=
  ∀ n, P17127640605505612675.a n = A334222 n

theorem P17127640605505612675.correct : P17127640605505612675.Spec := by
  intro n
  simp only [A334222]

end A334222

/-!
# A334223: a(n) is the Y-coordinate of the point at n steps backward from the origin along the space filling curve U defined in A334188; sequence A334222 gives X-coordinates.

The programs for A334223, there is no canonical definition to state claims against.
-/

/-! ## A334223.P13262055588451586890

`A334221(A334227(n+36))`
-/

namespace A334223.P13262055588451586890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334221 (A334227 (n + 36)).toNat

end

end A334223.P13262055588451586890

/-!
# A334224: Consider a graph as defined in A306302 formed from a row of n adjacent congruent squares with the diagonals of all possible rectangles; a(n) is the minimum edge length of the squares such that the vertices formed by all intersections have integer x and y coordinates.

The programs for A334224, there is no canonical definition to state claims against.
-/

/-! ## A334224.P4718430698402992188

`lcm(n*(4*n+2), a(n-1))` with `a(0)=2`
-/

namespace A334224.P4718430698402992188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (n * (4 * n + 2)) (a (n - 1))

end

end A334224.P4718430698402992188

/-! ## A334224.P16461827987930589509

`lcm(-a(n-1), record[or(1, -n)²-n])` with `a(0)=2`
-/

namespace A334224.P16461827987930589509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A334224.P16461827987930589509

/-! ## A334224.P10072149172988435720

`A003418(record[or(2, n)])`
-/

namespace A334224.P10072149172988435720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A334224.P10072149172988435720

/-! ## A334224.P8738647116506957930

`A003418(record[xor(2, n)])`
-/

namespace A334224.P8738647116506957930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A334224.P8738647116506957930

/-! ## A334224.P11087480381755279691

`A139550(record[or(5, n)])`
-/

namespace A334224.P11087480381755279691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A334224.P11087480381755279691

/-!
# A334225: The values n where A334148(n) = n.

The programs for A334225, there is no canonical definition to state claims against.
-/

/-! ## A334225.P1016061615309173677

`eq[n, A334148(n)]`
-/

namespace A334225.P1016061615309173677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334225.P1016061615309173677

/-!
# A334226: a(n) is the number of times that the number 3*k+1 from the Collatz trajectory of n is greater than n.

The programs for A334226, there is no canonical definition to state claims against.
-/

/-! ## A334226.P6452951101014982152

`A006667(n+1)-A358753(A000628(n))`
-/

namespace A334226.P6452951101014982152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) - A358753 (A000628 n).toNat

end

end A334226.P6452951101014982152

/-! ## A334226.P14555133496150043500

`A078719(n+1)-A194673(A023797(n+1))`
-/

namespace A334226.P14555133496150043500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - A194673 (A023797 (n + 1)).toNat

end

end A334226.P14555133496150043500

/-! ## A334226.P17758152825339502282

`A006667(n+1)-A324930(A103881(n+1))`
-/

namespace A334226.P17758152825339502282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) - A324930 (A103881 (n + 1)).toNat

end

end A334226.P17758152825339502282

/-! ## A334226.P10875785436248557159

`A078719(n+1)-A194673(A194673(n)²²)`
-/

namespace A334226.P10875785436248557159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - A194673 ((A194673 n ^ 2) ^ 2).toNat

end

end A334226.P10875785436248557159

/-! ## A334226.P9297255508824606784

`A078719(n+1)-(A324930(A103881(n+1))+1)`
-/

namespace A334226.P9297255508824606784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - (A324930 (A103881 (n + 1)).toNat + 1)

end

end A334226.P9297255508824606784

/-!
# A334227: Length of the shortest prefix of the Thue-Morse sequence (A010060) containing, as subwords, all length-n blocks appearing in A010060.

The programs for A334227, there is no canonical definition to state claims against.
-/

/-! ## A334227.P17886444978860468025

`eq[A227277(n), A228348(n+1)]`
-/

namespace A334227.P17886444978860468025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334227.P17886444978860468025

/-! ## A334227.P8962905494547485197

`lt[A227277(n), A345272(2*(n+1))]`
-/

namespace A334227.P8962905494547485197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345272 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334227.P8962905494547485197

/-! ## A334227.P14730264147586465801

`lt[A113439(n), A343890(A365398(n+1))]`
-/

namespace A334227.P14730264147586465801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343890 (A365398 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334227.P14730264147586465801

/-! ## A334227.P14758979301166093892

`record[A276625(n+1)-A057762(n+1)]`
-/

namespace A334227.P14758979301166093892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1) - A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334227.P14758979301166093892

/-! ## A334227.P3778824081727231498

`lt[A345287(n+1), A345272(2*(n+1))!]`
-/

namespace A334227.P3778824081727231498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345287 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A345272 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334227.P3778824081727231498

/-!
# A334228: a(n) is the n-th completed odd-numbered level 2k-1 containing k ON-cells in a triangular wedge in the hexagonal grid of A151723 (i.e., after 2^j >= 2k-1 generations of the automaton in A151723 have been computed).

The programs for A334228, there is no canonical definition to state claims against.
-/

/-! ## A334228.P9311065843106532674

`record[or(2, A322463(n))/gcd(2, n)]`
-/

namespace A334228.P9311065843106532674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (A322463 n) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P9311065843106532674

/-! ## A334228.P17077338738207122796

`or(3, A080100(a(n-1))+a(n-1))` with `a(0)=1`
-/

namespace A334228.P17077338738207122796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 3 (A080100 (a (n - 1)).toNat + a (n - 1))

end

end A334228.P17077338738207122796

/-! ## A334228.P2687885570421200556

`record[A006257(or(1, A322463(n)))]`
-/

namespace A334228.P2687885570421200556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.lor 1 (A322463 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P2687885570421200556

/-! ## A334228.P18056803239976605689

`record[A000265(or(2, A322463(n)))]`
-/

namespace A334228.P18056803239976605689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 2 (A322463 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P18056803239976605689

/-! ## A334228.P17012722474227934911

`record[A006257(xor(1, A322463(n)))]`
-/

namespace A334228.P17012722474227934911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.xor 1 (A322463 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P17012722474227934911

/-! ## A334228.P10792917336653353470

`record[A057979(xor(6, A322463(n)))]`
-/

namespace A334228.P10792917336653353470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.xor 6 (A322463 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P10792917336653353470

/-! ## A334228.P14262342501313879535

`record[xor(A141310(n), A322463(n))]`
-/

namespace A334228.P14262342501313879535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141310 n) (A322463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P14262342501313879535

/-! ## A334228.P1931183320549093521

`record[A006257(A322463(2*n)+1)]`
-/

namespace A334228.P1931183320549093521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A322463 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P1931183320549093521

/-! ## A334228.P11706583967476951082

`record[or(2, A322463(n))/A000034(n+1)]`
-/

namespace A334228.P11706583967476951082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (A322463 n) : ℚ) / (A000034 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334228.P11706583967476951082

/-!
# A334230: Triangle read by rows: T(n,k) gives the meet of n and k in the graded lattice of the positive integers defined by covering relations "n covers (n - n/p)" for all divisors p of n.

The programs for A334230, there is no canonical definition to state claims against.
-/

/-! ## A334230.P9227387000336759061

`A002260(n+1)-A010051(A252219(n+3))`
-/

namespace A334230.P9227387000336759061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A010051 (A252219 (n + 3)).toNat

end

end A334230.P9227387000336759061

/-! ## A334230.P6874720603898146105

`A163584(A227578(n))+A002262(n)`
-/

namespace A334230.P6874720603898146105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163584 (A227578 n).toNat + A002262 n

end

end A334230.P6874720603898146105

/-! ## A334230.P11768084156117406988

`A002260(n+1)-A357638(A347615(n))`
-/

namespace A334230.P11768084156117406988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A357638 (A347615 n).toNat

end

end A334230.P11768084156117406988

/-! ## A334230.P629493299910539767

`A134868(n+1)-A353859(A326476(n))`
-/

namespace A334230.P629493299910539767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - A353859 (A326476 n).toNat

end

end A334230.P629493299910539767

/-! ## A334230.P13247399312357028826

`A002260(n+1)-A091225(A113370(n))`
-/

namespace A334230.P13247399312357028826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A091225 (A113370 n).toNat

end

end A334230.P13247399312357028826

/-!
# A334231: Triangle read by rows: T(n,k) gives the join of n and k in the graded lattice of the positive integers defined by covering relations "n covers (n - n/p)" for all divisors p of n.

The programs for A334231, there is no canonical definition to state claims against.
-/

/-! ## A334231.P11171499590294808407

`A326180(A309492(n+1))+A003056(n)`
-/

namespace A334231.P11171499590294808407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326180 (A309492 (n + 1)).toNat + A003056 n

end

end A334231.P11171499590294808407

/-! ## A334231.P6524433343316426781

`A089869(or(A002024(n+1), A231037(n+1)))`
-/

namespace A334231.P6524433343316426781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.lor (A002024 (n + 1)) (A231037 (n + 1))).toNat

end

end A334231.P6524433343316426781

/-! ## A334231.P3380785345235704632

`A351870(or(A002024(n+1), A231037(n+1)))`
-/

namespace A334231.P3380785345235704632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Int.lor (A002024 (n + 1)) (A231037 (n + 1))).toNat

end

end A334231.P3380785345235704632

/-! ## A334231.P10654598041204263056

`A115716(A239880(A201637(n)))+A003056(n)`
-/

namespace A334231.P10654598041204263056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A239880 (A201637 n).toNat).toNat + A003056 n

end

end A334231.P10654598041204263056

/-!
# A334233: a(n) is the X-coordinate of the point at n steps forward from the origin along the H-order curve defined in A334232; sequence A334234 gives Y-coordinates.

The programs for A334233, the canonical program `A334233.P6544359111704176220` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334233 has offset 0).

The definition of A334233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334233.P6544359111704176220

`A334576(A292600(A053438(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A334233

/-- `A334576(A292600(A053438(n)))` -/
def P6544359111704176220.Spec : Prop :=
  ∀ n, P6544359111704176220.a n = A334233 n

theorem P6544359111704176220.correct : P6544359111704176220.Spec := by
  intro n
  simp only [A334233]

end A334233

/-!
# A334234: a(n) is the Y-coordinate of the point at n steps forward from the origin along the H-order curve defined in A334232; sequence A334233 gives X-coordinates.

The programs for A334234, there is no canonical definition to state claims against.
-/

/-! ## A334234.P1878956278038214335

`A001221(and(A077446(n+1), A128016(n)))`
-/

namespace A334234.P1878956278038214335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land (A077446 (n + 1)) (A128016 n)).toNat

end

end A334234.P1878956278038214335

/-!
# A334235: a(n) is the X-coordinate of the point at n steps backward from the origin along the H-order curve defined in A334232; sequence A334236 gives Y-coordinates.

The programs for A334235, the canonical program `A334235.P17269033423127776426` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334235 has offset 0).

The definition of A334235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334235.P17269033423127776426

`A334577(2*A292600(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A334235

/-- `A334577(2*A292600(n))` -/
def P17269033423127776426.Spec : Prop :=
  ∀ n, P17269033423127776426.a n = A334235 n

theorem P17269033423127776426.correct : P17269033423127776426.Spec := by
  intro n
  simp only [A334235]

end A334235

/-! ## A334235.P7341621914064115201

`A334577(A006068(or(1, n)))`
-/

namespace A334235.P7341621914064115201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334577 (A006068 (Nat.lor 1 n)).toNat

end

end A334235.P7341621914064115201

namespace A334235

/-- `A334577(A006068(or(1, n)))` -/
def P7341621914064115201.Spec : Prop :=
  ∀ n, P7341621914064115201.a n = A334235 n

end A334235

/-! ## A334235.P8865115538582585981

`A334577(and(-2, A006068(n)))`
-/

namespace A334235.P8865115538582585981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334577 (Int.land (-2) (A006068 n)).toNat

end

end A334235.P8865115538582585981

namespace A334235

/-- `A334577(and(-2, A006068(n)))` -/
def P8865115538582585981.Spec : Prop :=
  ∀ n, P8865115538582585981.a n = A334235 n

end A334235

/-! ## A334235.P11008138906654529005

`A334577(A006068(A254379(n)+n))`
-/

namespace A334235.P11008138906654529005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334577 (A006068 (A254379 n + (n : ℤ)).toNat).toNat

end

end A334235.P11008138906654529005

namespace A334235

/-- `A334577(A006068(A254379(n)+n))` -/
def P11008138906654529005.Spec : Prop :=
  ∀ n, P11008138906654529005.a n = A334235 n

end A334235

/-! ## A334235.P731810951388475146

`A334577(A006068(n)-A010060(n))`
-/

namespace A334235.P731810951388475146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334577 (A006068 n - A010060 n).toNat

end

end A334235.P731810951388475146

namespace A334235

/-- `A334577(A006068(n)-A010060(n))` -/
def P731810951388475146.Spec : Prop :=
  ∀ n, P731810951388475146.a n = A334235 n

end A334235

/-! ## A334235.P10449134286677120514

`A334577(A006068(n)-A254379(n))`
-/

namespace A334235.P10449134286677120514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334577 (A006068 n - A254379 n).toNat

end

end A334235.P10449134286677120514

namespace A334235

/-- `A334577(A006068(n)-A254379(n))` -/
def P10449134286677120514.Spec : Prop :=
  ∀ n, P10449134286677120514.a n = A334235 n

end A334235

/-! ## A334235.P8447626566022659344

`A334577(A006068(n)-and(1, A006068(n)))`
-/

namespace A334235.P8447626566022659344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334577 (A006068 n - Int.land 1 (A006068 n)).toNat

end

end A334235.P8447626566022659344

namespace A334235

/-- `A334577(A006068(n)-and(1, A006068(n)))` -/
def P8447626566022659344.Spec : Prop :=
  ∀ n, P8447626566022659344.a n = A334235 n

end A334235

/-!
# A334236: a(n) is the Y-coordinate of the point at n steps backward from the origin along the H-order curve defined in A334232; sequence A334235 gives X-coordinates.

The programs for A334236, the canonical program `A334236.P2131599608989732677` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334236 has offset 0).

The definition of A334236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334236.P2131599608989732677

`xor(A010059(n), A334233(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A334236

/-- `xor(A010059(n), A334233(n+1))` -/
def P2131599608989732677.Spec : Prop :=
  ∀ n, P2131599608989732677.a n = A334236 n

theorem P2131599608989732677.correct : P2131599608989732677.Spec := by
  intro n
  simp only [A334236]

end A334236

/-! ## A334236.P12870946057012889577

`A001222(5^∑[round(cos(2-n%6))])`
-/

namespace A334236.P12870946057012889577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 - ((n % 6 : ℕ) : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A334236.P12870946057012889577

namespace A334236

/-- `A001222(5^∑[round(cos(2-n%6))])` -/
def P12870946057012889577.Spec : Prop :=
  ∀ n, P12870946057012889577.a n = A334236 n

end A334236

/-! ## A334236.P4729723764681013752

`floor(∑[2-a(n-3)]/3)%A263392(n+5)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=2`
-/

namespace A334236.P4729723764681013752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3, 2] fun n f1 =>
  2 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋ (A263392 (n + 5))

end

end A334236.P4729723764681013752

namespace A334236

/-- `floor(∑[2-a(n-3)]/3)%A263392(n+5)` -/
def P4729723764681013752.Spec : Prop :=
  ∀ n, P4729723764681013752.a n = A334236 n

end A334236

/-! ## A334236.P6637706300625591743

`∑[A103368(A016873(n)²)]`
-/

namespace A334236.P6637706300625591743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103368 (A016873 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334236.P6637706300625591743

namespace A334236

/-- `∑[A103368(A016873(n)²)]` -/
def P6637706300625591743.Spec : Prop :=
  ∀ n, P6637706300625591743.a n = A334236 n

end A334236

/-! ## A334236.P5230888078623822416

`∑[A166446(A016873(n)²)]`
-/

namespace A334236.P5230888078623822416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166446 (A016873 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334236.P5230888078623822416

namespace A334236

/-- `∑[A166446(A016873(n)²)]` -/
def P5230888078623822416.Spec : Prop :=
  ∀ n, P5230888078623822416.a n = A334236 n

end A334236

/-!
# A334237: a(n) = 2*Sum_{k=0..n-1} binomial(n,k)^2*binomial(n,k+1)^2.

The programs for A334237, there is no canonical definition to state claims against.
-/

/-! ## A334237.P1342528501978237636

`2*(n+1)²*A319743(n+1)`
-/

namespace A334237.P1342528501978237636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) * A319743 (n + 1)

end

end A334237.P1342528501978237636

/-!
# A334239: Number of r X s rectangles with composite side lengths such that r + s = 2n, r <= s and r | s.

The programs for A334239, the canonical program `A334239.P2316855968006640335` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334239 has offset 1).

The definition of A334239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334239.P7706316530300387238

`A033273(abs(1-n)+3+n)-2`
-/

namespace A334239.P7706316530300387238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (|1 - (n : ℤ)| + 3 + (n : ℤ)).toNat - 2

end

end A334239.P7706316530300387238

namespace A334239

/-- `A033273(abs(1-n)+3+n)-2` -/
def P7706316530300387238.Spec : Prop :=
  ∀ n, P7706316530300387238.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P11141465306757462074

`(A033273(2*(n+1))-2)%(n+1)`
-/

namespace A334239.P11141465306757462074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033273 (2 * (n + 1)) - 2) (n + 1 : ℤ)

end

end A334239.P11141465306757462074

namespace A334239

/-- `(A033273(2*(n+1))-2)%(n+1)` -/
def P11141465306757462074.Spec : Prop :=
  ∀ n, P11141465306757462074.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P17354230514974827183

`A289207(A033273(2*(n+1)))`
-/

namespace A334239.P17354230514974827183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A033273 (2 * (n + 1))).toNat

end

end A334239.P17354230514974827183

namespace A334239

/-- `A289207(A033273(2*(n+1)))` -/
def P17354230514974827183.Spec : Prop :=
  ∀ n, P17354230514974827183.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P13733186736308278261

`A111775(n+1)+A055212(n+1)`
-/

namespace A334239.P13733186736308278261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1) + A055212 (n + 1)

end

end A334239.P13733186736308278261

namespace A334239

/-- `A111775(n+1)+A055212(n+1)` -/
def P13733186736308278261.Spec : Prop :=
  ∀ n, P13733186736308278261.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P2316855968006640335

`A337566(n+1)-A005087(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A334239

/-- `A337566(n+1)-A005087(n+1)` -/
def P2316855968006640335.Spec : Prop :=
  ∀ n, P2316855968006640335.a n = A334239 (n + 1)

theorem P2316855968006640335.correct : P2316855968006640335.Spec := by
  intro n
  simp only [A334239, Nat.add_sub_cancel]

end A334239

/-! ## A334239.P7844580827984488525

`A321516(2*(n+1))`
-/

namespace A334239.P7844580827984488525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321516 (2 * (n + 1))

end

end A334239.P7844580827984488525

namespace A334239

/-- `A321516(2*(n+1))` -/
def P7844580827984488525.Spec : Prop :=
  ∀ n, P7844580827984488525.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P14798023361316554907

`floor(log(cosh(A055212(2*(n+1)))))`
-/

namespace A334239.P14798023361316554907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A055212 (2 * (n + 1)) : ℝ))⌋

end

end A334239.P14798023361316554907

namespace A334239

/-- `floor(log(cosh(A055212(2*(n+1)))))` -/
def P14798023361316554907.Spec : Prop :=
  ∀ n, P14798023361316554907.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P3554686020776250875

`A055212(2*(abs(1-n)+2))-1`
-/

namespace A334239.P3554686020776250875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (2 * (|1 - (n : ℤ)| + 2)).toNat - 1

end

end A334239.P3554686020776250875

namespace A334239

/-- `A055212(2*(abs(1-n)+2))-1` -/
def P3554686020776250875.Spec : Prop :=
  ∀ n, P3554686020776250875.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P5142687743116363617

`A259361(A055212(2*(n+1))²)`
-/

namespace A334239.P5142687743116363617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A055212 (2 * (n + 1)) ^ 2).toNat

end

end A334239.P5142687743116363617

namespace A334239

/-- `A259361(A055212(2*(n+1))²)` -/
def P5142687743116363617.Spec : Prop :=
  ∀ n, P5142687743116363617.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P7355436326542643317

`A070824(2*(n+1))-A087624(2*(n+1))`
-/

namespace A334239.P7355436326542643317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * (n + 1)) - A087624 (2 * (n + 1))

end

end A334239.P7355436326542643317

namespace A334239

/-- `A070824(2*(n+1))-A087624(2*(n+1))` -/
def P7355436326542643317.Spec : Prop :=
  ∀ n, P7355436326542643317.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P11594812362708806576

`A065855(2*n+1)-A279436(2*(n+1))`
-/

namespace A334239.P11594812362708806576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * n + 1) - A279436 (2 * (n + 1))

end

end A334239.P11594812362708806576

namespace A334239

/-- `A065855(2*n+1)-A279436(2*(n+1))` -/
def P11594812362708806576.Spec : Prop :=
  ∀ n, P11594812362708806576.a n = A334239 (n + 1)

end A334239

/-! ## A334239.P5679762737924168228

`A264440(2*(n+1))-A087802(2*(n+1))`
-/

namespace A334239.P5679762737924168228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (2 * (n + 1)) - A087802 (2 * (n + 1))

end

end A334239.P5679762737924168228

namespace A334239

/-- `A264440(2*(n+1))-A087802(2*(n+1))` -/
def P5679762737924168228.Spec : Prop :=
  ∀ n, P5679762737924168228.a n = A334239 (n + 1)

end A334239

/-!
# A334240: a(n) = exp(-n) * Sum_{k>=0} (k + 1)^n * n^k / k!.

The programs for A334240, there is no canonical definition to state claims against.
-/

/-! ## A334240.P5438949554196392714

`A335975(∑[4*n])`
-/

namespace A334240.P5438949554196392714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334240.P5438949554196392714

/-! ## A334240.P5501109863731233696

`record[A335975(∑[A071045(n)])]`
-/

namespace A334240.P5501109863731233696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334240.P5501109863731233696

/-! ## A334240.P9351670912337107551

`record[A003982(n)*A335975(n)]`
-/

namespace A334240.P9351670912337107551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A335975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334240.P9351670912337107551

/-! ## A334240.P8663152639704334804

`record[gcd(A008482(n), A335975(n))]`
-/

namespace A334240.P8663152639704334804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A335975 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334240.P8663152639704334804

/-! ## A334240.P15723225547219436974

`record[A335975(gcd(n, A114327(n)))]`
-/

namespace A334240.P15723225547219436974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335975 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334240.P15723225547219436974

/-!
# A334241: a(n) = exp(n) * Sum_{k>=0} (k + 1)^n * (-n)^k / k!.

The programs for A334241, there is no canonical definition to state claims against.
-/

/-! ## A334241.P4026039433991820803

`A335977(∑[4*n])`
-/

namespace A334241.P4026039433991820803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334241.P4026039433991820803

/-! ## A334241.P17483742585555594269

`A007318(C(2, n))*A335977(A046092(n))`
-/

namespace A334241.P17483742585555594269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A335977 (A046092 n).toNat

end

end A334241.P17483742585555594269

/-! ## A334241.P5023961468930408566

`A335977(A046092(n))/A007318(∑[n+1])`
-/

namespace A334241.P5023961468930408566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335977 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A334241.P5023961468930408566

/-! ## A334241.P17896021390673287839

`A000108(C(2, n+2))*A335977(A046092(n))`
-/

namespace A334241.P17896021390673287839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A335977 (A046092 n).toNat

end

end A334241.P17896021390673287839

/-! ## A334241.P9205685390152374884

`A000041(C(n, n+1))*A335977(A046092(n))`
-/

namespace A334241.P9205685390152374884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n + 1)) * A335977 (A046092 n).toNat

end

end A334241.P9205685390152374884

/-!
# A334242: a(n) = exp(-n) * Sum_{k>=0} (k + n)^n * n^k / k!.

The programs for A334242, there is no canonical definition to state claims against.
-/

/-! ## A334242.P2728064458741221863

`A335536(A139250(n)+A060941(n))`
-/

namespace A334242.P2728064458741221863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A139250 n + A060941 n).toNat

end

end A334242.P2728064458741221863

/-!
# A334243: a(n) = exp(n) * Sum_{k>=0} (k + n)^n * (-n)^k / k!.

The programs for A334243, there is no canonical definition to state claims against.
-/

/-! ## A334243.P9598864632273382034

`A351981(A006450(n+1))-A338000(n)`
-/

namespace A334243.P9598864632273382034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351981 (A006450 (n + 1)).toNat - A338000 n

end

end A334243.P9598864632273382034

/-! ## A334243.P15700552371745168336

`A171490(A171450(n))-A171452(2*n)`
-/

namespace A334243.P15700552371745168336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171490 (A171450 n).toNat - A171452 (2 * n)

end

end A334243.P15700552371745168336

/-!
# A334250: Number of set partitions of [3n] into 3-element subsets {i, i+k, i+2k} with 1<=k<=n.

The programs for A334250, there is no canonical definition to state claims against.
-/

/-! ## A334250.P13758864115383577599

`A051889(A149367(n))`
-/

namespace A334250.P13758864115383577599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A149367 n).toNat

end

end A334250.P13758864115383577599

/-! ## A334250.P13702772686747303294

`A051889(A149371(n))`
-/

namespace A334250.P13702772686747303294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A149371 n).toNat

end

end A334250.P13702772686747303294

/-! ## A334250.P1253680036329775033

`A133431(A093637(n))`
-/

namespace A334250.P1253680036329775033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133431 (A093637 n).toNat

end

end A334250.P1253680036329775033

/-!
# A334251: a(n) is the number of binary (0,1) sequences of length n that have at most two zeros in a window of seven consecutive symbols.

The programs for A334251, there is no canonical definition to state claims against.
-/

/-! ## A334251.P5604582012406164171

`∑[A060715(A211118(n+1))]`
-/

namespace A334251.P5604582012406164171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A211118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334251.P5604582012406164171

/-! ## A334251.P7507582785137042583

`A018345(A146433(n+1))+∑[n]`
-/

namespace A334251.P7507582785137042583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018345 (A146433 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A334251.P7507582785137042583

/-! ## A334251.P837022645063525378

`A306682(A018224(n))+A000217(n)`
-/

namespace A334251.P837022645063525378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (A018224 n).toNat + A000217 n

end

end A334251.P837022645063525378

/-! ## A334251.P11309534417529580841

`A347959(3^n)+1`
-/

namespace A334251.P11309534417529580841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347959 (3 ^ n) + 1

end

end A334251.P11309534417529580841

/-! ## A334251.P15135433418866234963

`A274384(A008762(n))`
-/

namespace A334251.P15135433418866234963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (A008762 n).toNat

end

end A334251.P15135433418866234963

/-!
# A334252: Number of closure operators on a set of n elements which satisfy the T_0 separation axiom.

The programs for A334252, there is no canonical definition to state claims against.
-/

/-! ## A334252.P11816698797368147045

`A129487(∑[∏[A001764(n)]])`
-/

namespace A334252.P11816698797368147045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334252.P11816698797368147045

/-!
# A334253: Number of strict closure operators on a set of n elements which satisfy the T_0 separation axiom.

The programs for A334253, there is no canonical definition to state claims against.
-/

/-! ## A334253.P207901428710119810

`A326943(n)/2`
-/

namespace A334253.P207901428710119810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326943 n : ℚ) / 2

end

end A334253.P207901428710119810

/-! ## A334253.P17276385576277315404

`A334252(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A334253.P17276385576277315404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334252 n - (n : ℤ) * a (n - 1)

end

end A334253.P17276385576277315404

/-! ## A334253.P4394135774550789061

`(A326944(n)+A309615(n))/2`
-/

namespace A334253.P4394135774550789061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326944 n + A309615 n : ℚ) / 2

end

end A334253.P4394135774550789061

/-! ## A334253.P7786431810538970550

`(A309615(n)+A309615(n+1)/(n+1))/2`
-/

namespace A334253.P7786431810538970550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A309615 n : ℚ) + (A309615 (n + 1) : ℚ) / (n + 1 : ℚ)) / 2

end

end A334253.P7786431810538970550

/-!
# A334254: Number of closure operators on a set of n elements which satisfy the T_1 separation axiom.

The programs for A334254, there is no canonical definition to state claims against.
-/

/-! ## A334254.P17947157719808688719

`A334255(n)+char[1]`
-/

namespace A334254.P17947157719808688719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334255 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A334254.P17947157719808688719

/-! ## A334254.P4028267342781400715

`lcm(A186027(n), A334255(n))`
-/

namespace A334254.P4028267342781400715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186027 n) (A334255 n)

end

end A334254.P4028267342781400715

/-! ## A334254.P14447151623405228054

`A085006(n+2)*A334255(n)`
-/

namespace A334254.P14447151623405228054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085006 (n + 2) * A334255 n

end

end A334254.P14447151623405228054

/-!
# A334255: Number of strict closure operators on a set of n elements which satisfy the T_1 separation axiom.

The programs for A334255, there is no canonical definition to state claims against.
-/

/-! ## A334255.P2700259464351986112

`A334254(char[1]+n)`
-/

namespace A334255.P2700259464351986112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334254 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A334255.P2700259464351986112

/-! ## A334255.P2080548917348894841

`A334254(n)-char[1]`
-/

namespace A334255.P2080548917348894841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334254 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A334255.P2080548917348894841

/-! ## A334255.P7097775825643985112

`and(-1, A334254(round(acot(n)+n)))`
-/

namespace A334255.P7097775825643985112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A334254 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A334255.P7097775825643985112

/-!
# A334257: Triangle read by rows: T(n,k) is the number of ordered pairs of n-permutations with exactly k common double descents, n>=0, 0<=k<=max{0,n-2}.

The programs for A334257, there is no canonical definition to state claims against.
-/

/-! ## A334257.P13218943724738729468

`A135287(C(A318393(2*(n+1)), 3))`
-/

namespace A334257.P13218943724738729468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135287 (Nat.choose (A318393 (2 * (n + 1))).toNat 3)

end

end A334257.P13218943724738729468

/-! ## A334257.P6874721048644786562

`A334412(gcd(A089850(n), A365669(n+1)))`
-/

namespace A334257.P6874721048644786562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334412 (Int.gcd (A089850 n) (A365669 (n + 1)))

end

end A334257.P6874721048644786562

/-!
# A334260: Sum of the largest composite parts in the partitions of 2n into two parts.

The programs for A334260, there is no canonical definition to state claims against.
-/

/-! ## A334260.P1860612073171311542

`abs(2*n+1-A073839(n+1))-1`
-/

namespace A334260.P1860612073171311542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A073839 (n + 1)| - 1

end

end A334260.P1860612073171311542

/-! ## A334260.P4622608610728648247

`A073839(n+1)-A163300(n+1)`
-/

namespace A334260.P4622608610728648247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073839 (n + 1) - A163300 (n + 1)

end

end A334260.P4622608610728648247

/-! ## A334260.P6959245821494273525

`A101203(2*n+1)-round(1/acot(A101203(n)))`
-/

namespace A334260.P6959245821494273525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (2 * n + 1) - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A101203 n : ℝ))

end

end A334260.P6959245821494273525

/-! ## A334260.P7605972875769945082

`A101203(2*n+1)-A101203(round(acot(n)+n))`
-/

namespace A334260.P7605972875769945082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (2 * n + 1) - A101203 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A334260.P7605972875769945082

/-! ## A334260.P15069972350812065096

`A101203(A130773(n))-A101203(n)`
-/

namespace A334260.P15069972350812065096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A130773 n).toNat - A101203 n

end

end A334260.P15069972350812065096

/-! ## A334260.P10318027457686441737

`record[A101203(A006257(n))]-A101203(n)`
-/

namespace A334260.P10318027457686441737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A101203 n

end

end A334260.P10318027457686441737

/-! ## A334260.P1189558321555070964

`record[A101203(A026741(n))]-A101203(n)`
-/

namespace A334260.P1189558321555070964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A101203 n

end

end A334260.P1189558321555070964

/-! ## A334260.P424746460566394705

`record[A101203(A063195(n+1))]-A101203(n)`
-/

namespace A334260.P424746460566394705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A063195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A101203 n

end

end A334260.P424746460566394705

/-! ## A334260.P2868908622533944105

`A101203(2*n+1)-A101203(A028310(n))`
-/

namespace A334260.P2868908622533944105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (2 * n + 1) - A101203 (A028310 n).toNat

end

end A334260.P2868908622533944105

/-! ## A334260.P3353044982206669464

`A101203(2*n+1)-A101203(A065033(2*n))`
-/

namespace A334260.P3353044982206669464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (2 * n + 1) - A101203 (A065033 (2 * n)).toNat

end

end A334260.P3353044982206669464

/-!
# A334261: Numbers m that are solutions of the arithmetic differential equation 2m" - m' - 4 = 0.

The programs for A334261, there is no canonical definition to state claims against.
-/

/-! ## A334261.P8513445323468757015

`filter[A368998(n+1), A368701(#)]`
-/

namespace A334261.P8513445323468757015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P8513445323468757015

/-! ## A334261.P586901069465054733

`filter[A345452(n+1), A368701(#)]`
-/

namespace A334261.P586901069465054733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P586901069465054733

/-! ## A334261.P2737621229390843524

`filter[A373375(n+1), A368701(#)]`
-/

namespace A334261.P2737621229390843524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P2737621229390843524

/-! ## A334261.P8464066975970589444

`filter[A078505(n+1), A368701(#)]`
-/

namespace A334261.P8464066975970589444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P8464066975970589444

/-! ## A334261.P396626214170347362

`filter[A359765(n+1), A368701(#)]`
-/

namespace A334261.P396626214170347362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P396626214170347362

/-! ## A334261.P13914354831914968132

`filter[A036349(n+1), A368701(#)]`
-/

namespace A334261.P13914354831914968132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P13914354831914968132

/-! ## A334261.P1806232885855449028

`filter[A028260(n+1), A368701(#)]`
-/

namespace A334261.P1806232885855449028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P1806232885855449028

/-! ## A334261.P7351398198862532619

`filter[A004281(n), A368701(#)]`
-/

namespace A334261.P7351398198862532619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P7351398198862532619

/-! ## A334261.P6644692345786151951

`filter[A223134(n), A368701(#)]`
-/

namespace A334261.P6644692345786151951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P6644692345786151951

/-! ## A334261.P14341474829723811851

`filter[A267873(n), A368701(#)]`
-/

namespace A334261.P14341474829723811851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P14341474829723811851

/-! ## A334261.P16678182360712021004

`filter[A326494(n), A368701(#)]`
-/

namespace A334261.P16678182360712021004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P16678182360712021004

/-! ## A334261.P13287758234241605430

`filter[A004276(n+1), A368701(#)]`
-/

namespace A334261.P13287758234241605430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P13287758234241605430

/-! ## A334261.P15754487368781323161

`filter[A088948(n+1), A368701(#)]`
-/

namespace A334261.P15754487368781323161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P15754487368781323161

/-! ## A334261.P3658686770526700797

`filter[A075065(n+1), A368701(#)]`
-/

namespace A334261.P3658686770526700797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P3658686770526700797

/-! ## A334261.P7616992433431663150

`filter[A099049(2*n+1), A368701(#)]`
-/

namespace A334261.P7616992433431663150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099049 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368701 (f1 j).toNat = 1) n)

end

end A334261.P7616992433431663150

/-!
# A334263: E.g.f. A(x) satisfies: A(x) = x - Sum_{k>=2} prime(k-1) * A(x)^k / k!.

The programs for A334263, there is no canonical definition to state claims against.
-/

/-! ## A334263.P7549203488587354316

`A334315(n+1)+A162781(A007299(n))`
-/

namespace A334263.P7549203488587354316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334315 (n + 1) + A162781 (A007299 n).toNat

end

end A334263.P7549203488587354316

/-! ## A334263.P9884488150365520365

`A334315(n+1)+A025466(A359984(n))`
-/

namespace A334263.P9884488150365520365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334315 (n + 1) + A025466 (A359984 n).toNat

end

end A334263.P9884488150365520365

/-! ## A334263.P4200838310011974091

`A334315(n+1)+A202034(A276175(n))`
-/

namespace A334263.P4200838310011974091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334315 (n + 1) + A202034 (A276175 n).toNat

end

end A334263.P4200838310011974091

/-!
# A334265: Numbers k such that the k-th composition in standard order is a reversed Lyndon word.

The programs for A334265, there is no canonical definition to state claims against.
-/

/-! ## A334265.P18121409671101717258

`lt[A211100(A059894(2*n+1)), 3]`
-/

namespace A334265.P18121409671101717258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059894 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334265.P18121409671101717258

/-! ## A334265.P978336359814287321

`lt[dr(A211100(A059894(n+1+n))-1), 2]`
-/

namespace A334265.P978336359814287321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A211100 (A059894 (n + 1 + n)).toNat - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334265.P978336359814287321

/-! ## A334265.P5799041517839086824

`A004524(A329357(n+1))`
-/

namespace A334265.P5799041517839086824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A329357 (n + 1)).toNat

end

end A334265.P5799041517839086824

/-! ## A334265.P14269985298019360243

`A004526(A329357(n+1)-1)`
-/

namespace A334265.P14269985298019360243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A329357 (n + 1) - 1).toNat

end

end A334265.P14269985298019360243

/-! ## A334265.P1296777789800427920

`A025480(A329357(n+1)-1)`
-/

namespace A334265.P1296777789800427920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A329357 (n + 1) - 1).toNat

end

end A334265.P1296777789800427920

/-! ## A334265.P15967031927979398133

`A001057(A329357(n+1)-2)`
-/

namespace A334265.P15967031927979398133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A329357 (n + 1) - 2).toNat

end

end A334265.P15967031927979398133

/-! ## A334265.P4284554299075949734

`A057428(n)*A168050(A329357(n+1))`
-/

namespace A334265.P4284554299075949734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A168050 (A329357 (n + 1)).toNat

end

end A334265.P4284554299075949734

/-! ## A334265.P10458137592518419979

`A104594(A329357(n+1))%A014153(n)`
-/

namespace A334265.P10458137592518419979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104594 (A329357 (n + 1)).toNat) (A014153 n)

end

end A334265.P10458137592518419979

/-! ## A334265.P1008316424064955344

`A104594(A329357(n+1)%A035340(n))`
-/

namespace A334265.P1008316424064955344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104594 (Int.tmod (A329357 (n + 1)) (A035340 n)).toNat

end

end A334265.P1008316424064955344

/-! ## A334265.P12783884071128094541

`A004526(A329357(n+1))%A204542(n+1)`
-/

namespace A334265.P12783884071128094541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A329357 (n + 1)).toNat) (A204542 (n + 1))

end

end A334265.P12783884071128094541

/-!
# A334266: Numbers k such that the k-th composition in standard order is both a reversed Lyndon word and a co-Lyndon word.

The programs for A334266, there is no canonical definition to state claims against.
-/

/-! ## A334266.P5469182635487175763

`∩[A334265(n+1), A326774(n)]`
-/

namespace A334266.P5469182635487175763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334266.P5469182635487175763

/-! ## A334266.P15117666741687430448

`∩[A334273(n+1), A326774(n)]`
-/

namespace A334266.P15117666741687430448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334266.P15117666741687430448

/-! ## A334266.P908415806191819049

`∩[A334265(n+1), A334273(n+1)]`
-/

namespace A334266.P908415806191819049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334266.P908415806191819049

/-! ## A334266.P17843916533118969462

`∩[lt[A211097(4*n+1)-1, 2], A334273(n+1)]`
-/

namespace A334266.P17843916533118969462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (4 * n + 1) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A334266.P17843916533118969462

/-! ## A334266.P14116949598728942015

`∩[A334273(n+1), A004526(A339608(n+1))]`
-/

namespace A334266.P14116949598728942015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339608 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334266.P14116949598728942015

/-!
# A334267: Numbers k such that the k-th composition in standard order is both a Lyndon word and a reversed co-Lyndon word.

The programs for A334267, there is no canonical definition to state claims against.
-/

/-! ## A334267.P16211391299447013202

`record[A342242(A334274(n+1))]`
-/

namespace A334267.P16211391299447013202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 (A334274 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334267.P16211391299447013202

/-! ## A334267.P3752292094892563009

`∩[A091065(n+1), A334274(n+1)]`
-/

namespace A334267.P3752292094892563009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334267.P3752292094892563009

/-! ## A334267.P16475351981960841159

`∩[A275692(n+1), A334274(n+1)]`
-/

namespace A334267.P16475351981960841159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334267.P16475351981960841159

/-! ## A334267.P771520195891100622

`∩[A053645(A329401(n+1)), A334274(n+1)]`
-/

namespace A334267.P771520195891100622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A329401 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334267.P771520195891100622

/-! ## A334267.P17970177686739867264

`∩[A164089(2*A329401(n+1)), A334274(n+1)]`
-/

namespace A334267.P17970177686739867264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * A329401 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334267.P17970177686739867264

/-!
# A334269: Number of compositions of n that are both a reversed Lyndon word and a co-Lyndon word.

The programs for A334269, there is no canonical definition to state claims against.
-/

/-! ## A334269.P9064010199389642067

`A059966(n+1)-A329324(n+1)`
-/

namespace A334269.P9064010199389642067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A329324 (n + 1)

end

end A334269.P9064010199389642067

/-! ## A334269.P11771012128761375998

`A001037(ceil(sqrt(∑[2*n])))-A329324(n+1)`
-/

namespace A334269.P11771012128761375998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat - A329324 (n + 1)

end

end A334269.P11771012128761375998

/-! ## A334269.P17892857399676972572

`A038199(n+1)/(n+1)-A329324(n+1)`
-/

namespace A334269.P17892857399676972572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038199 (n + 1) : ℚ) / (n + 1 : ℚ) - (A329324 (n + 1) : ℚ)

end

end A334269.P17892857399676972572

/-! ## A334269.P5968597881973148776

`and(A060477(n+1), A260196(n))-A329324(n+1)`
-/

namespace A334269.P5968597881973148776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060477 (n + 1)) (A260196 n) - A329324 (n + 1)

end

end A334269.P5968597881973148776

/-! ## A334269.P15331933190727747763

`A001037(n+1)-A036987(2*n)-A329324(n+1)`
-/

namespace A334269.P15331933190727747763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A036987 (2 * n) - A329324 (n + 1)

end

end A334269.P15331933190727747763

/-!
# A334270: Number of sequences of length n that cover an initial interval of positive integers and are both a reversed Lyndon word and a co-Lyndon word.

The programs for A334270, there is no canonical definition to state claims against.
-/

/-! ## A334270.P11361218735475990945

`A305829(n!+1-n)`
-/

namespace A334270.P11361218735475990945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305829 ((Nat.factorial n : ℤ) + (1 - (n : ℤ))).toNat

end

end A334270.P11361218735475990945

/-! ## A334270.P16818827844196533115

`A110266(A324618(n))`
-/

namespace A334270.P16818827844196533115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A324618 n).toNat

end

end A334270.P16818827844196533115

/-! ## A334270.P15066026752290717908

`A373847(A101786(n))`
-/

namespace A334270.P15066026752290717908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A101786 n).toNat

end

end A334270.P15066026752290717908

/-!
# A334271: Number of compositions of n that are both a reversed necklace and a co-necklace.

The programs for A334271, there is no canonical definition to state claims against.
-/

/-! ## A334271.P7556675122045216989

`∑{d}[round(sqrt(n²+1)), A334269(#)]`
-/

namespace A334271.P7556675122045216989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A334269 d

end

end A334271.P7556675122045216989

/-! ## A334271.P16542810897904780878

`A122079(A374634(n))`
-/

namespace A334271.P16542810897904780878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A374634 n).toNat

end

end A334271.P16542810897904780878

/-! ## A334271.P14250629740909554242

`A000194(A100098(n)+n)`
-/

namespace A334271.P14250629740909554242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A100098 n + (n : ℤ)).toNat

end

end A334271.P14250629740909554242

/-! ## A334271.P18240137098137843684

`A319769(n)+A308933(n)`
-/

namespace A334271.P18240137098137843684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319769 n + A308933 n

end

end A334271.P18240137098137843684

/-! ## A334271.P7457584748058750105

`A000194(A052923(n)+A007053(n))`
-/

namespace A334271.P7457584748058750105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A052923 n + A007053 n).toNat

end

end A334271.P7457584748058750105

/-!
# A334272: Number of sequences of length n that cover an initial interval of positive integers and are both a reversed necklace and a co-necklace.

The programs for A334272, there is no canonical definition to state claims against.
-/

/-! ## A334272.P15456024593488037234

`∑{d}[round(sqrt(n²+1)), A334270(#)]`
-/

namespace A334272.P15456024593488037234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A334270 d

end

end A334272.P15456024593488037234

/-! ## A334272.P9973207340841440402

`A008619(A307443(n))+A002620(n)`
-/

namespace A334272.P9973207340841440402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A307443 n).toNat + A002620 n

end

end A334272.P9973207340841440402

/-! ## A334272.P15900241762622922536

`A033638(n)+A004526(A307443(n))`
-/

namespace A334272.P15900241762622922536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n + A004526 (A307443 n).toNat

end

end A334272.P15900241762622922536

/-!
# A334273: Numbers k such that the k-th composition in standard order is both a reversed necklace and a co-necklace.

The programs for A334273, there is no canonical definition to state claims against.
-/

/-! ## A334273.P1646639236224751240

`∪[A137706(n+1), A334266(n+1)]`
-/

namespace A334273.P1646639236224751240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334273.P1646639236224751240

/-! ## A334273.P3818459325212565409

`∪[A334266(n+1), A357006(n+1)]`
-/

namespace A334273.P3818459325212565409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334273.P3818459325212565409

/-! ## A334273.P3551502180916174801

`lt[A333382(n), A124766(n)!]`
-/

namespace A334273.P3551502180916174801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A124766 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334273.P3551502180916174801

/-! ## A334273.P14485153511885691509

`lt[A374741(n), A374630(n)+1]`
-/

namespace A334273.P14485153511885691509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334273.P14485153511885691509

/-! ## A334273.P6139186552387508997

`lt[A374758(n), A374684(n)+1]`
-/

namespace A334273.P6139186552387508997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334273.P6139186552387508997

/-!
# A334274: Numbers k such that the k-th composition in standard order is both a necklace and a reversed co-necklace.

The programs for A334274, there is no canonical definition to state claims against.
-/

/-! ## A334274.P17805980543673289715

`lt[A124766(n), A248805(n+2)+2]`
-/

namespace A334274.P17805980543673289715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334274.P17805980543673289715

/-! ## A334274.P592113172231089892

`eq[val(A050873(n+1), 10), A124761(n)]`
-/

namespace A334274.P592113172231089892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050873 (n + 1)).toNat 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334274.P592113172231089892

/-! ## A334274.P1451739810857963461

`eq[A025466(A004396(n)), A124761(n)]`
-/

namespace A334274.P1451739810857963461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A004396 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334274.P1451739810857963461

/-! ## A334274.P11141630487838452304

`eq[A026829(A035614(n)), A124761(n)]`
-/

namespace A334274.P11141630487838452304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026829 (A035614 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334274.P11141630487838452304

/-! ## A334274.P14597242721456946649

`lt[A124761(n), A124778(A103516(n))]`
-/

namespace A334274.P14597242721456946649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A103516 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334274.P14597242721456946649

/-!
# A334276: a(n) = prime(A003593(n)).

The programs for A334276, there is no canonical definition to state claims against.
-/

/-! ## A334276.P6406029781091724985

`A000040(A003593(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334276.P6406029781091724985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003593 (n + 1)).toNat

end

end A334276.P6406029781091724985

/-! ## A334276.P15233340403077736091

`A008578(A003593(n+1)+1)`
-/

namespace A334276.P15233340403077736091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003593 (n + 1) + 1).toNat

end

end A334276.P15233340403077736091

/-! ## A334276.P8960022091893639094

`A182986(A003593(n+1)+1)`
-/

namespace A334276.P8960022091893639094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A003593 (n + 1) + 1).toNat

end

end A334276.P8960022091893639094

/-! ## A334276.P1598978613226387046

`A335402(A003593(n+1)+2)`
-/

namespace A334276.P1598978613226387046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (A003593 (n + 1) + 2).toNat

end

end A334276.P1598978613226387046

/-!
# A334277: Perimeters of almost-equilateral Heronian triangles.

The programs for A334277, the canonical program `A334277.P13867393558867401011` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334277 has offset 1).

The definition of A334277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334277.P6147548074686226284

`3*A003500(n+1)`
-/

namespace A334277.P6147548074686226284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003500 (n + 1)

end

end A334277.P6147548074686226284

namespace A334277

/-- `3*A003500(n+1)` -/
def P6147548074686226284.Spec : Prop :=
  ∀ n, P6147548074686226284.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P7940482324206855118

`6*A001075(n+1)`
-/

namespace A334277.P7940482324206855118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001075 (n + 1)

end

end A334277.P7940482324206855118

namespace A334277

/-- `6*A001075(n+1)` -/
def P7940482324206855118.Spec : Prop :=
  ∀ n, P7940482324206855118.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P13867393558867401011

`4*a(n-1)-a(n-2)` with `a(0)=12, a(1)=42`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A334277

/-- `4*a(n-1)-a(n-2)` -/
def P13867393558867401011.Spec : Prop :=
  ∀ n, P13867393558867401011.a n = A334277 (n + 1)

theorem P13867393558867401011.correct : P13867393558867401011.Spec := by
  intro n
  simp only [A334277, Nat.add_sub_cancel]

end A334277

/-! ## A334277.P12573736983470215472

`ogf((12-6x)/(1-4x+x^2))`
-/

namespace A334277.P12573736983470215472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -6] [1, -4, 1] n

end

end A334277.P12573736983470215472

namespace A334277

/-- `ogf((12-6x)/(1-4x+x^2))` -/
def P12573736983470215472.Spec : Prop :=
  ∀ n, P12573736983470215472.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P2047856025489823076

`3*((2-sqrt(3))^(1+n)+(2+sqrt(3))^(1+n))`
-/

namespace A334277.P2047856025489823076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((2 - Real.sqrt (3 : ℝ)) ^ (1 + n) + (2 + Real.sqrt (3 : ℝ)) ^ (1 + n))

end

end A334277.P2047856025489823076

namespace A334277

/-- `3*((2-sqrt(3))^(1+n)+(2+sqrt(3))^(1+n))` -/
def P2047856025489823076.Spec : Prop :=
  ∀ n, P2047856025489823076.a n = (A334277 (n + 1) : ℝ)

theorem P2047856025489823076.correct : P2047856025489823076.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A334277, Nat.add_sub_cancel, A334277.P2047856025489823076.a, A334277.P13867393558867401011.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A334277, Nat.add_sub_cancel, A334277.P2047856025489823076.a, A334277.P13867393558867401011.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A334277

/-! ## A334277.P2351305546052001951

`lcm(3, Δ[A001834(n)])`
-/

namespace A334277.P2351305546052001951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (n + 1) - f1 n)

end

end A334277.P2351305546052001951

namespace A334277

/-- `lcm(3, Δ[A001834(n)])` -/
def P2351305546052001951.Spec : Prop :=
  ∀ n, (P2351305546052001951.a n : ℤ) = A334277 (n + 1)

end A334277

/-! ## A334277.P16294134724995408040

`lcm(6, Δ[A108412(2*n)])`
-/

namespace A334277.P16294134724995408040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108412 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (f1 (n + 1) - f1 n)

end

end A334277.P16294134724995408040

namespace A334277

/-- `lcm(6, Δ[A108412(2*n)])` -/
def P16294134724995408040.Spec : Prop :=
  ∀ n, (P16294134724995408040.a n : ℤ) = A334277 (n + 1)

end A334277

/-! ## A334277.P13178781407791721774

`abs(Δ[Δ[A108413(2*n+1)]])`
-/

namespace A334277.P13178781407791721774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108413 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A334277.P13178781407791721774

namespace A334277

/-- `abs(Δ[Δ[A108413(2*n+1)]])` -/
def P13178781407791721774.Spec : Prop :=
  ∀ n, P13178781407791721774.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P17435485572093513688

`A077236(n+1)+A001075(n)`
-/

namespace A334277.P17435485572093513688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 (n + 1) + A001075 n

end

end A334277.P17435485572093513688

namespace A334277

/-- `A077236(n+1)+A001075(n)` -/
def P17435485572093513688.Spec : Prop :=
  ∀ n, P17435485572093513688.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P1412226016042050755

`A082841(n+1)+A082841(n)`
-/

namespace A334277.P1412226016042050755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 (n + 1) + A082841 n

end

end A334277.P1412226016042050755

namespace A334277

/-- `A082841(n+1)+A082841(n)` -/
def P1412226016042050755.Spec : Prop :=
  ∀ n, P1412226016042050755.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P3668110356811375795

`A077235(n)+A001075(n+2)`
-/

namespace A334277.P3668110356811375795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077235 n + A001075 (n + 2)

end

end A334277.P3668110356811375795

namespace A334277

/-- `A077235(n)+A001075(n+2)` -/
def P3668110356811375795.Spec : Prop :=
  ∀ n, P3668110356811375795.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P5013580104253487695

`A144721(n)+A144720(n+2)`
-/

namespace A334277.P5013580104253487695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 n + A144720 (n + 2)

end

end A334277.P5013580104253487695

namespace A334277

/-- `A144721(n)+A144720(n+2)` -/
def P5013580104253487695.Spec : Prop :=
  ∀ n, P5013580104253487695.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P13999700135930886586

`A001835(n+3)+A001835(n)`
-/

namespace A334277.P13999700135930886586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 3) + A001835 n

end

end A334277.P13999700135930886586

namespace A334277

/-- `A001835(n+3)+A001835(n)` -/
def P13999700135930886586.Spec : Prop :=
  ∀ n, P13999700135930886586.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P8861674920023167616

`A349948(n+1)+A102091(n+1)`
-/

namespace A334277.P8861674920023167616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349948 (n + 1) + A102091 (n + 1)

end

end A334277.P8861674920023167616

namespace A334277

/-- `A349948(n+1)+A102091(n+1)` -/
def P8861674920023167616.Spec : Prop :=
  ∀ n, P8861674920023167616.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P2639059206822238195

`A151961(n+2)+A151961(n+2)`
-/

namespace A334277.P2639059206822238195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151961 (n + 2) + A151961 (n + 2)

end

end A334277.P2639059206822238195

namespace A334277

/-- `A151961(n+2)+A151961(n+2)` -/
def P2639059206822238195.Spec : Prop :=
  ∀ n, P2639059206822238195.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P12057481620608335059

`A077236(n+1)+A002531(2*n)`
-/

namespace A334277.P12057481620608335059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 (n + 1) + A002531 (2 * n)

end

end A334277.P12057481620608335059

namespace A334277

/-- `A077236(n+1)+A002531(2*n)` -/
def P12057481620608335059.Spec : Prop :=
  ∀ n, P12057481620608335059.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P17258922234565666047

`A079935(n+3)+A005246(2*n)`
-/

namespace A334277.P17258922234565666047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 3) + A005246 (2 * n)

end

end A334277.P17258922234565666047

namespace A334277

/-- `A079935(n+3)+A005246(2*n)` -/
def P17258922234565666047.Spec : Prop :=
  ∀ n, P17258922234565666047.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P593465434974358455

`A083336(2*(n+1))+A083336(2*n)`
-/

namespace A334277.P593465434974358455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083336 (2 * (n + 1)) + A083336 (2 * n)

end

end A334277.P593465434974358455

namespace A334277

/-- `A083336(2*(n+1))+A083336(2*n)` -/
def P593465434974358455.Spec : Prop :=
  ∀ n, P593465434974358455.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P11751111861438440750

`A237250(2*n+1)+A237250(2*(n+2))`
-/

namespace A334277.P11751111861438440750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (2 * n + 1) + A237250 (2 * (n + 2))

end

end A334277.P11751111861438440750

namespace A334277

/-- `A237250(2*n+1)+A237250(2*(n+2))` -/
def P11751111861438440750.Spec : Prop :=
  ∀ n, P11751111861438440750.a n = A334277 (n + 1)

end A334277

/-! ## A334277.P96733659635803339

`Δ[A077237(2*n+1)]+Δ[A077237(2*n)]`
-/

namespace A334277.P96733659635803339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077237 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077237 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A334277.P96733659635803339

namespace A334277

/-- `Δ[A077237(2*n+1)]+Δ[A077237(2*n)]` -/
def P96733659635803339.Spec : Prop :=
  ∀ n, P96733659635803339.a n = A334277 (n + 1)

end A334277

/-!
# A334281: Number of n-colorings of the vertices of the 4-dimensional cross polytope such that no two adjacent vertices have the same color.

The programs for A334281, the canonical program `A334281.P17600039502356580908` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334281 has offset 0).

The definition of A334281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334281.P17600039502356580908

`n*(n-3)*(n-2)*(n-1)*(n*(n*((n-18)*n+125)-392)+465)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A334281

/-- `n*(n-3)*(n-2)*(n-1)*(n*(n*((n-18)*n+125)-392)+465)` -/
def P17600039502356580908.Spec : Prop :=
  ∀ n, P17600039502356580908.a n = A334281 n

theorem P17600039502356580908.correct : P17600039502356580908.Spec := by
  intro n
  simp only [A334281]

end A334281

/-! ## A334281.P596475200603808257

`A052724(n)+A008585(A052767(n))`
-/

namespace A334281.P596475200603808257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052724 n + A008585 (A052767 n).toNat

end

end A334281.P596475200603808257

namespace A334281

/-- `A052724(n)+A008585(A052767(n))` -/
def P596475200603808257.Spec : Prop :=
  ∀ n, P596475200603808257.a n = A334281 n

end A334281

/-!
# A334282: Number of properly colored labeled graphs on n nodes so that the color function is surjective onto {c_1,c_2,...,c_k} for some k, 1<=k<=n.

The programs for A334282, there is no canonical definition to state claims against.
-/

/-! ## A334282.P1891254851189864442

`A099477(C(2^n-1, n))`
-/

namespace A334282.P1891254851189864442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (Nat.choose ((2 ^ n : ℤ) - 1).toNat n)

end

end A334282.P1891254851189864442

/-!
# A334284: Denominators of power series coefficients of A(x) satisfying A(A(x)) = x + Sum_{k>=2} prime(k-1) * x^k.

The programs for A334284, there is no canonical definition to state claims against.
-/

/-! ## A334284.P841004892489941050

`A060632(A000079(n)-A119608(n+1))`
-/

namespace A334284.P841004892489941050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A000079 n - A119608 (n + 1)).toNat

end

end A334284.P841004892489941050

/-! ## A334284.P2887778175332750352

`A060632(A000225(n)-A119608(n+1))`
-/

namespace A334284.P2887778175332750352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A000225 n - A119608 (n + 1)).toNat

end

end A334284.P2887778175332750352

/-! ## A334284.P7406452996081252971

`A001316(A131577(n)-A119608(n+1))`
-/

namespace A334284.P7406452996081252971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A131577 n - A119608 (n + 1)).toNat

end

end A334284.P7406452996081252971

/-! ## A334284.P11524379031878013871

`A060632(xor(A000225(n), A119608(n+1)))`
-/

namespace A334284.P11524379031878013871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (Int.xor (A000225 n) (A119608 (n + 1))).toNat

end

end A334284.P11524379031878013871

/-! ## A334284.P16850011583875141931

`A001316(2^n-1-A119608(n+1))`
-/

namespace A334284.P16850011583875141931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((2 ^ n : ℤ) - 1 - A119608 (n + 1)).toNat

end

end A334284.P16850011583875141931

/-!
# A334285: a(n) is the common area of the n-tuple of Heronian triangles with minimal equal perimeter and equal area.

The programs for A334285, there is no canonical definition to state claims against.
-/

/-! ## A334285.P3752497873792108993

`A204559(n+1)/4`
-/

namespace A334285.P3752497873792108993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204559 (n + 1) : ℚ) / 4

end

end A334285.P3752497873792108993

/-!
# A334286: Number of factorizations of m^n into n factors, where m is a product of exactly n distinct primes and each factor is a product of n primes (counted with multiplicity).

The programs for A334286, there is no canonical definition to state claims against.
-/

/-! ## A334286.P15732666824101719988

`A257462(∑[4*n])`
-/

namespace A334286.P15732666824101719988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334286.P15732666824101719988

/-! ## A334286.P17624627607232590673

`A257463(∑[4*n])`
-/

namespace A334286.P17624627607232590673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334286.P17624627607232590673

/-! ## A334286.P17302889890284671415

`A257462(A046092(n))^A178334(n)`
-/

namespace A334286.P17302889890284671415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257462 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A334286.P17302889890284671415

/-! ## A334286.P6377677499474960651

`or(A000007(n), A257462(A046092(n)))`
-/

namespace A334286.P6377677499474960651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257462 (A046092 n).toNat)

end

end A334286.P6377677499474960651

/-! ## A334286.P4337264845886321858

`A257462(A046092(n))^A014963(A069894(n))`
-/

namespace A334286.P4337264845886321858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257462 (A046092 n).toNat : ℚ) ^ (A014963 (A069894 n).toNat : ℤ)

end

end A334286.P4337264845886321858

/-!
# A334288: Number of tieless rugby (union) games with n scoring events.

The programs for A334288, there is no canonical definition to state claims against.
-/

/-! ## A334288.P5525743713418024951

`A160172(A006356(n))-record[xor(n, 2*n)]`
-/

namespace A334288.P5525743713418024951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160172 (A006356 n).toNat - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A334288.P5525743713418024951

/-!
# A334290: Array read by upward antidiagonals: T(n,k) (n > 0, k > 0) = nim-division of n by k.

The programs for A334290, there is no canonical definition to state claims against.
-/

/-! ## A334290.P5615995533225187371

`A334291(comp[∑[n-1]])`
-/

namespace A334290.P5615995533225187371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334290.P5615995533225187371

/-! ## A334290.P16091831530581140984

`A334291(A007401(n+1))%16`
-/

namespace A334290.P16091831530581140984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334291 (A007401 (n + 1)).toNat) 16

end

end A334290.P16091831530581140984

/-! ## A334290.P16029392998773678740

`or(A000007(n), A334291(A007401(n+1)))`
-/

namespace A334290.P16029392998773678740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A334291 (A007401 (n + 1)).toNat)

end

end A334290.P16029392998773678740

/-! ## A334290.P1921844365879732233

`A097807(n)²*A334291(A007401(n+1))`
-/

namespace A334290.P1921844365879732233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A334291 (A007401 (n + 1)).toNat

end

end A334290.P1921844365879732233

/-! ## A334290.P12423488343378230431

`A334291(A007401(n+1))/gcd(3, A031176(n))`
-/

namespace A334290.P12423488343378230431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334291 (A007401 (n + 1)).toNat : ℚ) / (Int.gcd 3 (A031176 n) : ℚ)

end

end A334290.P12423488343378230431

/-! ## A334290.P13927143041506699813

`A007318(C(2, n))*A334291(A007401(n+1))`
-/

namespace A334290.P13927143041506699813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A334291 (A007401 (n + 1)).toNat

end

end A334290.P13927143041506699813

/-! ## A334290.P9679624510987742172

`A334291(A007401(n+1))/A156599(C(3, n))`
-/

namespace A334290.P9679624510987742172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334291 (A007401 (n + 1)).toNat : ℚ) / (A156599 (Nat.choose 3 n) : ℚ)

end

end A334290.P9679624510987742172

/-! ## A334290.P4251895267422554785

`A334291(A007401(n+1))+n*A151878(n)`
-/

namespace A334290.P4251895267422554785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 (A007401 (n + 1)).toNat + (n : ℤ) * A151878 n

end

end A334290.P4251895267422554785

/-! ## A334290.P14572804040392407731

`A334291(A007401(n+1))+char[A000032(n+15)]`
-/

namespace A334290.P14572804040392407731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 15)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 (A007401 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334290.P14572804040392407731

/-! ## A334290.P1240937490389306798

`A334291(A007401(n+1))+A008683(4*(n+1))`
-/

namespace A334290.P1240937490389306798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 (A007401 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A334290.P1240937490389306798

/-!
# A334291: Array read by upward antidiagonals: T(n,k) (n >= 0, k > 0) = nim-division of n by k.

The programs for A334291, there is no canonical definition to state claims against.
-/

/-! ## A334291.P13065441195484569856

`and(A059897(A273873(n+1)), A331251(3*n+4))`
-/

namespace A334291.P13065441195484569856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059897 (A273873 (n + 1)).toNat) (A331251 (3 * n + 4))

end

end A334291.P13065441195484569856

/-! ## A334291.P1418298686184360242

`A382759(A394442(n+1))`
-/

namespace A334291.P1418298686184360242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382759 (A394442 (n + 1)).toNat

end

end A334291.P1418298686184360242

/-! ## A334291.P16699218260111446556

`A004826(A337408(n+1))%5`
-/

namespace A334291.P16699218260111446556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004826 (A337408 (n + 1)).toNat) 5

end

end A334291.P16699218260111446556

/-! ## A334291.P6042298030165684204

`A269303(A327083(n+1))%6`
-/

namespace A334291.P6042298030165684204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269303 (A327083 (n + 1)).toNat) 6

end

end A334291.P6042298030165684204

/-! ## A334291.P9679603459505902842

`A164917(A157103(n)*A297224(n+1))`
-/

namespace A334291.P9679603459505902842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164917 (A157103 n * A297224 (n + 1)).toNat

end

end A334291.P9679603459505902842

/-!
# A334292: Number of sets of primes less than the n-th prime whose sum is the n-th prime.

The programs for A334292, there is no canonical definition to state claims against.
-/

/-! ## A334292.P1976231183851462955

`A070215(n+1)-1`
-/

namespace A334292.P1976231183851462955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070215 (n + 1) - 1

end

end A334292.P1976231183851462955

/-! ## A334292.P4670840468831368597

`A000586(p?[comp[n²]])-1`
-/

namespace A334292.P4670840468831368597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A334292.P4670840468831368597

/-! ## A334292.P15048176848613644037

`abs(A000586(p?[comp[4*n]])-1)`
-/

namespace A334292.P15048176848613644037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000586 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1|

end

end A334292.P15048176848613644037

/-! ## A334292.P11413300560160214015

`A347419(A000040(n+1))`
-/

namespace A334292.P11413300560160214015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347419 (A000040 (n + 1)).toNat

end

end A334292.P11413300560160214015

/-! ## A334292.P16214727416830870767

`A347419(record[A006530(n+2)])`
-/

namespace A334292.P16214727416830870767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347419 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334292.P16214727416830870767

/-! ## A334292.P15685418935585278724

`A347419(record[A020639(n+2)])`
-/

namespace A334292.P15685418935585278724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347419 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334292.P15685418935585278724

/-! ## A334292.P3124634513879201046

`A000586(A008578(n+2))-1`
-/

namespace A334292.P3124634513879201046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A008578 (n + 2)).toNat - 1

end

end A334292.P3124634513879201046

/-! ## A334292.P4657310228379925133

`A000586(A182986(n+2))-1`
-/

namespace A334292.P4657310228379925133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A182986 (n + 2)).toNat - 1

end

end A334292.P4657310228379925133

/-! ## A334292.P12270917229666878296

`A000586(eq[1, A003415(n)])-1`
-/

namespace A334292.P12270917229666878296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A334292.P12270917229666878296

/-! ## A334292.P15123641378708310641

`A000586(eq[2, A077462(n)])-1`
-/

namespace A334292.P15123641378708310641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A334292.P15123641378708310641

/-! ## A334292.P1340756699825948750

`A000586(record[A006530(n+2)])-1`
-/

namespace A334292.P1340756699825948750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A334292.P1340756699825948750

/-! ## A334292.P11088406213168936825

`A000586(record[A014963(n+2)])-1`
-/

namespace A334292.P11088406213168936825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A334292.P11088406213168936825

/-! ## A334292.P7499322919251624117

`A000586(record[A020639(n+2)])-1`
-/

namespace A334292.P7499322919251624117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A334292.P7499322919251624117

/-! ## A334292.P3426396110680710766

`A000586(A040976(n+1)+2)-1`
-/

namespace A334292.P3426396110680710766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A040976 (n + 1) + 2).toNat - 1

end

end A334292.P3426396110680710766

/-! ## A334292.P13392333314198227983

`A000586(A100484(n+1)/2)-1`
-/

namespace A334292.P13392333314198227983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat - 1

end

end A334292.P13392333314198227983

/-! ## A334292.P2198268514591650226

`A000586(eq[A107393(n), A260196(n)])-1`
-/

namespace A334292.P2198268514591650226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A334292.P2198268514591650226

/-! ## A334292.P8088867221204292074

`A106743(A000040(n+1))+A070215(n+1)`
-/

namespace A334292.P8088867221204292074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A070215 (n + 1)

end

end A334292.P8088867221204292074

/-! ## A334292.P8156230512486915462

`A000586(A001748(n+1)-A100484(n+1))-1`
-/

namespace A334292.P8156230512486915462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A001748 (n + 1) - A100484 (n + 1)).toNat - 1

end

end A334292.P8156230512486915462

/-! ## A334292.P1459933716117850921

`A000586(A030078(n+1)/A001248(n+1))-1`
-/

namespace A334292.P1459933716117850921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ))).toNat - 1

end

end A334292.P1459933716117850921

/-! ## A334292.P2037680595744004659

`A209402(A006005(n+1))`
-/

namespace A334292.P2037680595744004659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209402 (A006005 (n + 1)).toNat

end

end A334292.P2037680595744004659

/-!
# A334293: First quadrisection of Padovan sequence.

The programs for A334293, the canonical program `A334293.P872667395545975742` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334293 has offset 0).

The definition of A334293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334293.P872667395545975742

`2*a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A334293

/-- `2*a(n-1)+3*a(n-2)+a(n-3)` -/
def P872667395545975742.Spec : Prop :=
  ∀ n, (P872667395545975742.a n : ℤ) = A334293 n

theorem P872667395545975742.correct : P872667395545975742.Spec := by
  intro n
  simp only [A334293]

end A334293

/-! ## A334293.P6504750861703557231

`A000931(4*n)`
-/

namespace A334293.P6504750861703557231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (4 * n)

end

end A334293.P6504750861703557231

namespace A334293

/-- `A000931(4*n)` -/
def P6504750861703557231.Spec : Prop :=
  ∀ n, P6504750861703557231.a n = A334293 n

end A334293

/-! ## A334293.P15767949119181321162

`A099529(2*n)`
-/

namespace A334293.P15767949119181321162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099529 (2 * n)

end

end A334293.P15767949119181321162

namespace A334293

/-- `A099529(2*n)` -/
def P15767949119181321162.Spec : Prop :=
  ∀ n, P15767949119181321162.a n = A334293 n

end A334293

/-! ## A334293.P14223624929328252287

`ogf((-1+2x+x^2)/(-1+2x+3x^2+x^3))`
-/

namespace A334293.P14223624929328252287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -2, -3, -1] n

end

end A334293.P14223624929328252287

namespace A334293

/-- `ogf((-1+2x+x^2)/(-1+2x+3x^2+x^3))` -/
def P14223624929328252287.Spec : Prop :=
  ∀ n, P14223624929328252287.a n = A334293 n

end A334293

/-! ## A334293.P6791186594955987462

`A133034(4*(n+1))`
-/

namespace A334293.P6791186594955987462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (4 * (n + 1))

end

end A334293.P6791186594955987462

namespace A334293

/-- `A133034(4*(n+1))` -/
def P6791186594955987462.Spec : Prop :=
  ∀ n, P6791186594955987462.a n = A334293 n

end A334293

/-! ## A334293.P16359896003527178186

`A078027(4*n+2)`
-/

namespace A334293.P16359896003527178186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (4 * n + 2)

end

end A334293.P16359896003527178186

namespace A334293

/-- `A078027(4*n+2)` -/
def P16359896003527178186.Spec : Prop :=
  ∀ n, P16359896003527178186.a n = A334293 n

end A334293

/-! ## A334293.P10988838946252454246

`A124745(4*n+2)`
-/

namespace A334293.P10988838946252454246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (4 * n + 2)

end

end A334293.P10988838946252454246

namespace A334293

/-- `A124745(4*n+2)` -/
def P10988838946252454246.Spec : Prop :=
  ∀ n, P10988838946252454246.a n = A334293 n

end A334293

/-! ## A334293.P6982983445530050477

`A218836(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A334293.P6982983445530050477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218836 (n - 1) - a (n - 1)

end

end A334293.P6982983445530050477

namespace A334293

/-- `A218836(n-1)-a(n-1)` -/
def P6982983445530050477.Spec : Prop :=
  ∀ n, P6982983445530050477.a n = A334293 n

end A334293

/-! ## A334293.P6476630267557351280

`A005251(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A334293.P6476630267557351280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005251 (2 * n) - a (n - 1)

end

end A334293.P6476630267557351280

namespace A334293

/-- `A005251(2*n)-a(n-1)` -/
def P6476630267557351280.Spec : Prop :=
  ∀ n, P6476630267557351280.a n = A334293 n

end A334293

/-! ## A334293.P9567605452232176297

`A182097(A111284(n+1)-1)`
-/

namespace A334293.P9567605452232176297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A111284 (n + 1) - 1).toNat

end

end A334293.P9567605452232176297

namespace A334293

/-- `A182097(A111284(n+1)-1)` -/
def P9567605452232176297.Spec : Prop :=
  ∀ n, P9567605452232176297.a n = A334293 n

end A334293

/-! ## A334293.P2168081470748962193

`A133037(2*n)+2*A329227(2*n+1)`
-/

namespace A334293.P2168081470748962193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133037 (2 * n) + 2 * A329227 (2 * n + 1)

end

end A334293.P2168081470748962193

namespace A334293

/-- `A133037(2*n)+2*A329227(2*n+1)` -/
def P2168081470748962193.Spec : Prop :=
  ∀ n, P2168081470748962193.a n = A334293 n

end A334293

/-! ## A334293.P1488271314702291365

`A010873(A008574(n))+A000931(A008574(n))`
-/

namespace A334293.P1488271314702291365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A008574 n).toNat + A000931 (A008574 n).toNat

end

end A334293.P1488271314702291365

namespace A334293

/-- `A010873(A008574(n))+A000931(A008574(n))` -/
def P1488271314702291365.Spec : Prop :=
  ∀ n, P1488271314702291365.a n = A334293 n

end A334293

/-! ## A334293.P14906223433600684881

`A099098(n)-A005251(2*n)`
-/

namespace A334293.P14906223433600684881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099098 n - A005251 (2 * n)

end

end A334293.P14906223433600684881

namespace A334293

/-- `A099098(n)-A005251(2*n)` -/
def P14906223433600684881.Spec : Prop :=
  ∀ n, P14906223433600684881.a n = A334293 n

end A334293

/-! ## A334293.P11076427311195428376

`A218836(n)-A005314(2*n)`
-/

namespace A334293.P11076427311195428376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218836 n - A005314 (2 * n)

end

end A334293.P11076427311195428376

namespace A334293

/-- `A218836(n)-A005314(2*n)` -/
def P11076427311195428376.Spec : Prop :=
  ∀ n, P11076427311195428376.a n = A334293 n

end A334293

/-! ## A334293.P17012313966169153685

`A005251(2*n+1)-A005251(2*n)`
-/

namespace A334293.P17012313966169153685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * n + 1) - A005251 (2 * n)

end

end A334293.P17012313966169153685

namespace A334293

/-- `A005251(2*n+1)-A005251(2*n)` -/
def P17012313966169153685.Spec : Prop :=
  ∀ n, P17012313966169153685.a n = A334293 n

end A334293

/-! ## A334293.P2813430734875423788

`A307677(2*n+1)-A181532(2*n)`
-/

namespace A334293.P2813430734875423788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307677 (2 * n + 1) - A181532 (2 * n)

end

end A334293.P2813430734875423788

namespace A334293

/-- `A307677(2*n+1)-A181532(2*n)` -/
def P2813430734875423788.Spec : Prop :=
  ∀ n, P2813430734875423788.a n = A334293 n

end A334293

/-! ## A334293.P1887270536628337400

`A049853(2*n)-2*A005251(2*n)`
-/

namespace A334293.P1887270536628337400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (2 * n) - 2 * A005251 (2 * n)

end

end A334293.P1887270536628337400

namespace A334293

/-- `A049853(2*n)-2*A005251(2*n)` -/
def P1887270536628337400.Spec : Prop :=
  ∀ n, P1887270536628337400.a n = A334293 n

end A334293

/-! ## A334293.P9324625292675356812

`A307677(2*n+1)+A307677(2*n)-A049853(2*n)`
-/

namespace A334293.P9324625292675356812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307677 (2 * n + 1) + (A307677 (2 * n) - A049853 (2 * n))

end

end A334293.P9324625292675356812

namespace A334293

/-- `A307677(2*n+1)+A307677(2*n)-A049853(2*n)` -/
def P9324625292675356812.Spec : Prop :=
  ∀ n, P9324625292675356812.a n = A334293 n

end A334293

/-! ## A334293.P15280483271666766539

`A347493(2*n+1)+A347493(2*n)-A005314(2*n)`
-/

namespace A334293.P15280483271666766539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 (2 * n + 1) + (A347493 (2 * n) - A005314 (2 * n))

end

end A334293.P15280483271666766539

namespace A334293

/-- `A347493(2*n+1)+A347493(2*n)-A005314(2*n)` -/
def P15280483271666766539.Spec : Prop :=
  ∀ n, P15280483271666766539.a n = A334293 n

end A334293

/-! ## A334293.P14066195552075064189

`A182097(A004278(2*(n+1)))-A182097(A004278(2*n+1))`
-/

namespace A334293.P14066195552075064189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A004278 (2 * (n + 1))).toNat - A182097 (A004278 (2 * n + 1)).toNat

end

end A334293.P14066195552075064189

namespace A334293

/-- `A182097(A004278(2*(n+1)))-A182097(A004278(2*n+1))` -/
def P14066195552075064189.Spec : Prop :=
  ∀ n, P14066195552075064189.a n = A334293 n

end A334293

/-!
# A334294: Numbers k such that 70*k^2 + 70*k - 1 is prime.

The programs for A334294, there is no canonical definition to state claims against.
-/

/-! ## A334294.P12109351344447129923

`lt[A187187(n+1), A006530(A187200(3*n+2))]`
-/

namespace A334294.P12109351344447129923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A187200 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334294.P12109351344447129923

/-!
# A334296: Smallest k such that (2k+1)*2^n+1 is prime.

The programs for A334296, there is no canonical definition to state claims against.
-/

/-! ## A334296.P15653655324409173200

`(A057778(n)-1)/2`
-/

namespace A334296.P15653655324409173200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057778 n - 1 : ℚ) / 2

end

end A334296.P15653655324409173200

/-! ## A334296.P13278333826716620409

`((A057775(n)-1)/2^n-1)/2`
-/

namespace A334296.P13278333826716620409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A057775 n - 1 : ℚ) / (2 ^ n : ℚ) - 1) / 2

end

end A334296.P13278333826716620409

/-! ## A334296.P8914861837785774652

`floor(A057778(n)/2)`
-/

namespace A334296.P8914861837785774652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057778 n : ℚ) / 2⌋

end

end A334296.P8914861837785774652

/-! ## A334296.P17750704517171367038

`A175126(A057778(n)-1)`
-/

namespace A334296.P17750704517171367038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A057778 n - 1).toNat

end

end A334296.P17750704517171367038

/-! ## A334296.P16019119529466195503

`A004524(A057778(n))`
-/

namespace A334296.P16019119529466195503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A057778 n).toNat

end

end A334296.P16019119529466195503

/-! ## A334296.P11691253231120346669

`A001281(A057778(n)-1)`
-/

namespace A334296.P11691253231120346669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A057778 n - 1).toNat

end

end A334296.P11691253231120346669

/-! ## A334296.P13087367771685032172

`A004525(A057778(n)-1)`
-/

namespace A334296.P13087367771685032172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A057778 n - 1).toNat

end

end A334296.P13087367771685032172

/-! ## A334296.P2458327493170389591

`A004526(A057778(n)-1)`
-/

namespace A334296.P2458327493170389591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057778 n - 1).toNat

end

end A334296.P2458327493170389591

/-! ## A334296.P1609986121045393101

`A026741(A057778(n)-1)`
-/

namespace A334296.P1609986121045393101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A057778 n - 1).toNat

end

end A334296.P1609986121045393101

/-! ## A334296.P5850343521774642117

`A029578(A057778(n)-1)`
-/

namespace A334296.P5850343521774642117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A057778 n - 1).toNat

end

end A334296.P5850343521774642117

/-! ## A334296.P8651098357901924161

`A004526(A057778(char[1]+n))`
-/

namespace A334296.P8651098357901924161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057778 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A334296.P8651098357901924161

/-! ## A334296.P11737176379823500927

`A002265(2*A057778(n))`
-/

namespace A334296.P11737176379823500927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A057778 n).toNat

end

end A334296.P11737176379823500927

/-! ## A334296.P12942624653226305964

`A002265(A057778(n)+A057778(n)+1)`
-/

namespace A334296.P12942624653226305964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057778 n + (A057778 n + 1)).toNat

end

end A334296.P12942624653226305964

/-! ## A334296.P10048234895284244962

`A002265(A057778(n)-(1-A057778(n)))`
-/

namespace A334296.P10048234895284244962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057778 n - (1 - A057778 n)).toNat

end

end A334296.P10048234895284244962

/-! ## A334296.P14024513970760013577

`val(A000079(A057778(n)-1), 4)`
-/

namespace A334296.P14024513970760013577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (A057778 n - 1).toNat).toNat 4

end

end A334296.P14024513970760013577

/-!
# A334297: Length of the Lyndon factorization of the reversed n-th composition in standard order.

The programs for A334297, there is no canonical definition to state claims against.
-/

/-! ## A334297.P17967090152224559920

`A211100(A059894(Δ[n²]))-1`
-/

namespace A334297.P17967090152224559920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - 1

end

end A334297.P17967090152224559920

/-! ## A334297.P14420858527783007914

`abs(A211100(A059894(2*n+1))-1)`
-/

namespace A334297.P14420858527783007914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A211100 (A059894 (2 * n + 1)).toNat - 1|

end

end A334297.P14420858527783007914

/-! ## A334297.P1695152359324974690

`dr(A211100(A059894(n+1+n))-1)`
-/

namespace A334297.P1695152359324974690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A211100 (A059894 (n + 1 + n)).toNat - 1)

end

end A334297.P1695152359324974690

/-! ## A334297.P3405433832676248469

`A211100(A059894(2*n+1)-C(2, n+2))-1`
-/

namespace A334297.P3405433832676248469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A059894 (2 * n + 1) - (Nat.choose 2 (n + 2) : ℤ)).toNat - 1

end

end A334297.P3405433832676248469

/-! ## A334297.P4950604384615184013

`A198277(n)%A211100(A059894(Δ[n²]))`
-/

namespace A334297.P4950604384615184013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A211100 (A059894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A334297.P4950604384615184013

/-! ## A334297.P13166953057188237796

`and(A211100(A059894(2*n+1))-1, A183010(n))`
-/

namespace A334297.P13166953057188237796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211100 (A059894 (2 * n + 1)).toNat - 1) (A183010 n)

end

end A334297.P13166953057188237796

/-!
# A334298: Numbers whose prime signature is a reversed Lyndon word.

The programs for A334298, there is no canonical definition to state claims against.
-/

/-! ## A334298.P17815848631922729998

`A364160(n+1)%comp[and(n, floor(n/2))]`
-/

namespace A334298.P17815848631922729998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364160 (n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A334298.P17815848631922729998

/-! ## A334298.P17393678570882277298

`char[A025429(n)]*A364160(n+1)`
-/

namespace A334298.P17393678570882277298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A364160 (n + 1)

end

end A334298.P17393678570882277298

/-! ## A334298.P4008809560898623988

`or(∑[A240328(n)], A364160(n+1))`
-/

namespace A334298.P4008809560898623988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A364160 (n + 1))

end

end A334298.P4008809560898623988

/-! ## A334298.P11693997999132475060

`and(A127229(n+5), A364160(n+1))`
-/

namespace A334298.P11693997999132475060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127229 (n + 5)) (A364160 (n + 1))

end

end A334298.P11693997999132475060

/-! ## A334298.P5193970440366975529

`∪[A033993(n+1), A364160(n+1)]`
-/

namespace A334298.P5193970440366975529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334298.P5193970440366975529

/-! ## A334298.P9240428079985681978

`record[A061228(n+1)-A261969(n+1)]`
-/

namespace A334298.P9240428079985681978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A261969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334298.P9240428079985681978

/-! ## A334298.P11250090086730209964

`A364160(n+1)+char[A001126(n+1)]`
-/

namespace A334298.P11250090086730209964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001126 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334298.P11250090086730209964

/-! ## A334298.P5397194966403391316

`A364160(n+1)+char[A096924(n+1)]`
-/

namespace A334298.P5397194966403391316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096924 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334298.P5397194966403391316

/-! ## A334298.P11237488184547947042

`A364160(n+1)+char[A364147(n+1)]`
-/

namespace A334298.P11237488184547947042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364147 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334298.P11237488184547947042

/-! ## A334298.P6211077226299148788

`A364160(A362611(A359178(n+1))+n)`
-/

namespace A334298.P6211077226299148788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (A362611 (A359178 (n + 1)).toNat + (n : ℤ)).toNat

end

end A334298.P6211077226299148788

/-!
# A334299: Number of distinct subsequences (not necessarily contiguous) of compositions in standard order (A066099).

The programs for A334299, there is no canonical definition to state claims against.
-/

/-! ## A334299.P1813473093552931632

`A334300(n)+1`
-/

namespace A334299.P1813473093552931632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n + 1

end

end A334299.P1813473093552931632

/-! ## A334299.P14164915570817298585

`A005496(A334300(n))`
-/

namespace A334299.P14164915570817298585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A334300 n).toNat

end

end A334299.P14164915570817298585

/-! ## A334299.P9675262410755428810

`A008619(2*A334300(n))`
-/

namespace A334299.P9675262410755428810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A334300 n).toNat

end

end A334299.P9675262410755428810

/-! ## A334299.P496124318855586294

`A028242(2*A334300(n))`
-/

namespace A334299.P496124318855586294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A334300 n).toNat

end

end A334299.P496124318855586294

/-! ## A334299.P8619972564462337924

`A029579(2*A334300(n))`
-/

namespace A334299.P8619972564462337924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A334300 n).toNat

end

end A334299.P8619972564462337924

/-! ## A334299.P2244911392955900378

`A080513(2*A334300(n))`
-/

namespace A334299.P2244911392955900378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A334300 n).toNat

end

end A334299.P2244911392955900378

/-! ## A334299.P2335206796950141290

`A106466(2*A334300(n))`
-/

namespace A334299.P2335206796950141290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (2 * A334300 n).toNat

end

end A334299.P2335206796950141290

/-! ## A334299.P4401680866433068295

`A008611(3*A334300(n))`
-/

namespace A334299.P4401680866433068295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A334300 n).toNat

end

end A334299.P4401680866433068295

/-! ## A334299.P4438859631409287213

`A000005(2^A334300(n))`
-/

namespace A334299.P4438859631409287213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A334300 n : ℤ))).toNat

end

end A334299.P4438859631409287213

/-! ## A334299.P6141004021658687768

`A001511(2^A334300(n))`
-/

namespace A334299.P6141004021658687768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A334300 n : ℤ))).toNat

end

end A334299.P6141004021658687768

