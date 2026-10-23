import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

/-!
# A359600: The least odd number with the same prime signature as n.

The programs for A359600, the canonical program `A359600.P6656112842617839429` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359600 has offset 1).

The definition of A359600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359600.P6656112842617839429

`A003961(A046523(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359600

/-- `A003961(A046523(n+1))` -/
def P6656112842617839429.Spec : Prop :=
  ∀ n, P6656112842617839429.a n = A359600 (n + 1)

theorem P6656112842617839429.correct : P6656112842617839429.Spec := by
  intro n
  simp only [A359600, Nat.add_sub_cancel]

end A359600

/-! ## A359600.P4055686214000468076

`A233819(A101296(n+1))`
-/

namespace A359600.P4055686214000468076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233819 (A101296 (n + 1)).toNat

end

end A359600.P4055686214000468076

namespace A359600

/-- `A233819(A101296(n+1))` -/
def P4055686214000468076.Spec : Prop :=
  ∀ n, P4055686214000468076.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P6560711469851866964

`A097272(A003961(n+1))`
-/

namespace A359600.P6560711469851866964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A003961 (n + 1)).toNat

end

end A359600.P6560711469851866964

namespace A359600

/-- `A097272(A003961(n+1))` -/
def P6560711469851866964.Spec : Prop :=
  ∀ n, P6560711469851866964.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P15866585429491836227

`A097272(A332818(n+1))`
-/

namespace A359600.P15866585429491836227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A332818 (n + 1)).toNat

end

end A359600.P15866585429491836227

namespace A359600

/-- `A097272(A332818(n+1))` -/
def P15866585429491836227.Spec : Prop :=
  ∀ n, P15866585429491836227.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P17253852675205709927

`A097272(A064988(n+1))`
-/

namespace A359600.P17253852675205709927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A064988 (n + 1)).toNat

end

end A359600.P17253852675205709927

namespace A359600

/-- `A097272(A064988(n+1))` -/
def P17253852675205709927.Spec : Prop :=
  ∀ n, P17253852675205709927.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P9656508882779881182

`A097272(A348746(n+1))`
-/

namespace A359600.P9656508882779881182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A348746 (n + 1)).toNat

end

end A359600.P9656508882779881182

namespace A359600

/-- `A097272(A348746(n+1))` -/
def P9656508882779881182.Spec : Prop :=
  ∀ n, P9656508882779881182.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P592653658919414473

`A097272(A297002(n+1))`
-/

namespace A359600.P592653658919414473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A297002 (n + 1)).toNat

end

end A359600.P592653658919414473

namespace A359600

/-- `A097272(A297002(n+1))` -/
def P592653658919414473.Spec : Prop :=
  ∀ n, P592653658919414473.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P10323326596837930203

`A097272(A389092(n+1))`
-/

namespace A359600.P10323326596837930203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A389092 (n + 1)).toNat

end

end A359600.P10323326596837930203

namespace A359600

/-- `A097272(A389092(n+1))` -/
def P10323326596837930203.Spec : Prop :=
  ∀ n, P10323326596837930203.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P14433414752177033886

`A250469(A266646(A283465(A266646(n+1))))`
-/

namespace A359600.P14433414752177033886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A266646 (A283465 (A266646 (n + 1)).toNat).toNat).toNat

end

end A359600.P14433414752177033886

namespace A359600

/-- `A250469(A266646(A283465(A266646(n+1))))` -/
def P14433414752177033886.Spec : Prop :=
  ∀ n, P14433414752177033886.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P7116201245141374453

`A243500(A243502(A286250(A245447(n+1))))`
-/

namespace A359600.P7116201245141374453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243500 (A243502 (A286250 (A245447 (n + 1)).toNat).toNat).toNat

end

end A359600.P7116201245141374453

namespace A359600

/-- `A243500(A243502(A286250(A245447(n+1))))` -/
def P7116201245141374453.Spec : Prop :=
  ∀ n, P7116201245141374453.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P5078891830028592369

`A003961(A283466(A266645(n+1)))`
-/

namespace A359600.P5078891830028592369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A283466 (A266645 (n + 1)).toNat).toNat

end

end A359600.P5078891830028592369

namespace A359600

/-- `A003961(A283466(A266645(n+1)))` -/
def P5078891830028592369.Spec : Prop :=
  ∀ n, P5078891830028592369.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P1233254432181575969

`A337471(A238745(n+1))`
-/

namespace A359600.P1233254432181575969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337471 (A238745 (n + 1)).toNat

end

end A359600.P1233254432181575969

namespace A359600

/-- `A337471(A238745(n+1))` -/
def P1233254432181575969.Spec : Prop :=
  ∀ n, P1233254432181575969.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P3576396123025239565

`A097272(A354091(n+1))`
-/

namespace A359600.P3576396123025239565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A354091 (n + 1)).toNat

end

end A359600.P3576396123025239565

namespace A359600

/-- `A097272(A354091(n+1))` -/
def P3576396123025239565.Spec : Prop :=
  ∀ n, P3576396123025239565.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P12403223483621231622

`A097272(A354202(n+1))`
-/

namespace A359600.P12403223483621231622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A354202 (n + 1)).toNat

end

end A359600.P12403223483621231622

namespace A359600

/-- `A097272(A354202(n+1))` -/
def P12403223483621231622.Spec : Prop :=
  ∀ n, P12403223483621231622.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P13330705862702420808

`A097272(A357852(n+1))`
-/

namespace A359600.P13330705862702420808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A357852 (n + 1)).toNat

end

end A359600.P13330705862702420808

namespace A359600

/-- `A097272(A357852(n+1))` -/
def P13330705862702420808.Spec : Prop :=
  ∀ n, P13330705862702420808.a n = A359600 (n + 1)

end A359600

/-! ## A359600.P9397864504494761398

`A097246(A278254(n+1))`
-/

namespace A359600.P9397864504494761398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A278254 (n + 1)).toNat

end

end A359600.P9397864504494761398

namespace A359600

/-- `A097246(A278254(n+1))` -/
def P9397864504494761398.Spec : Prop :=
  ∀ n, P9397864504494761398.a n = A359600 (n + 1)

end A359600

/-!
# A359601: Dirichlet inverse of A244042, where A244042(n) replaces 2's with 0's in the ternary representation of n.

The programs for A359601, there is no canonical definition to state claims against.
-/

/-! ## A359601.P4891264704961148579

`A359602(n+1)-A244042(n+1)`
-/

namespace A359601.P4891264704961148579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359602 (n + 1) - A244042 (n + 1)

end

end A359601.P4891264704961148579

/-!
# A359602: Sum of A244042 and its Dirichlet inverse, where A244042(n) replaces 2's with 0's in the ternary representation of n.

The programs for A359602, there is no canonical definition to state claims against.
-/

/-! ## A359602.P14271628742646327816

`A244042(n+1)+A359601(n+1)`
-/

namespace A359602.P14271628742646327816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (n + 1) + A359601 (n + 1)

end

end A359602.P14271628742646327816

/-! ## A359602.P17732079715772123168

`A300821(n+1)+A359601(n+1)+A300823(n+1)`
-/

namespace A359602.P17732079715772123168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300821 (n + 1) + (A359601 (n + 1) + A300823 (n + 1))

end

end A359602.P17732079715772123168

/-!
# A359605: a(n) = 1 if A355690(n) is positive (+1), otherwise 0.

The programs for A359605, there is no canonical definition to state claims against.
-/

/-! ## A359605.P5484304955607505670

`A355690(n+1)+A359606(n+1)`
-/

namespace A359605.P5484304955607505670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (n + 1) + A359606 (n + 1)

end

end A359605.P5484304955607505670

/-! ## A359605.P270654721221916671

`A359590(n+1)-A359606(n+1)`
-/

namespace A359605.P270654721221916671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (n + 1) - A359606 (n + 1)

end

end A359605.P270654721221916671

/-! ## A359605.P2912551952928757284

`ceil(atan(A355690(n+1)))`
-/

namespace A359605.P2912551952928757284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A355690 (n + 1) : ℝ)⌉

end

end A359605.P2912551952928757284

/-! ## A359605.P17020742212921152475

`4%(∑{d}[n+1, A355691(#)]+2)`
-/

namespace A359605.P17020742212921152475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (∑ d ∈ Nat.divisors (f1 n), A355691 d + 2)

end

end A359605.P17020742212921152475

/-! ## A359605.P15576458356748107884

`ceil(A355690(ceil(n²/(n+1))+1)/(n+1))`
-/

namespace A359605.P15576458356748107884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A355690 (⌈(n ^ 2 : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A359605.P15576458356748107884

/-! ## A359605.P17183941162849166388

`A359422(2-∑{d}[n+1, A355691(#)])`
-/

namespace A359605.P17183941162849166388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359422 (2 - ∑ d ∈ Nat.divisors (f1 n), A355691 d).toNat

end

end A359605.P17183941162849166388

/-! ## A359605.P8982028464173856568

`1-A008611(ceil(A355690(n+1)/(n+1)))`
-/

namespace A359605.P8982028464173856568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008611 ⌈(A355690 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A359605.P8982028464173856568

/-! ## A359605.P10559167607237060372

`lcm(1-A359606(n+1), A359604(n+1)%2)`
-/

namespace A359605.P10559167607237060372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A359606 (n + 1)) (Int.tmod (A359604 (n + 1)) 2)

end

end A359605.P10559167607237060372

/-! ## A359605.P2008403951925233224

`A359606(8*(n+1))`
-/

namespace A359605.P2008403951925233224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359606 (8 * (n + 1))

end

end A359605.P2008403951925233224

/-! ## A359605.P2879174009433051333

`A052905(A355690(n+1)+A139938(n+1))%2`
-/

namespace A359605.P2879174009433051333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052905 (A355690 (n + 1) + A139938 (n + 1)).toNat) 2

end

end A359605.P2879174009433051333

/-!
# A359606: a(n) = 1 if A355690(n) is negative (-1), otherwise 0.

The programs for A359606, there is no canonical definition to state claims against.
-/

/-! ## A359606.P3491383427423647860

`A359605(n+1)-A355690(n+1)`
-/

namespace A359606.P3491383427423647860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359605 (n + 1) - A355690 (n + 1)

end

end A359606.P3491383427423647860

/-! ## A359606.P2400410194177837901

`A359590(n+1)-A359605(n+1)`
-/

namespace A359606.P2400410194177837901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (n + 1) - A359605 (n + 1)

end

end A359606.P2400410194177837901

/-! ## A359606.P15880608509897442765

`and(2, A355690(n+1))/2`
-/

namespace A359606.P15880608509897442765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A355690 (n + 1)) : ℚ) / 2

end

end A359606.P15880608509897442765

/-! ## A359606.P501338981802190400

`4%(2-∑{d}[n+1, A355691(#)])`
-/

namespace A359606.P501338981802190400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (2 - ∑ d ∈ Nat.divisors (f1 n), A355691 d)

end

end A359606.P501338981802190400

/-! ## A359606.P805188171548917599

`lcm(1-A359605(n+1), A359604(n+1)%2)`
-/

namespace A359606.P805188171548917599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A359605 (n + 1)) (Int.tmod (A359604 (n + 1)) 2)

end

end A359606.P805188171548917599

/-! ## A359606.P15231719394788882606

`A359605(8*(n+1))`
-/

namespace A359606.P15231719394788882606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359605 (8 * (n + 1))

end

end A359606.P15231719394788882606

/-! ## A359606.P9718108398032394918

`round((A010892(12*n)²-A355690(n+1))/3)`
-/

namespace A359606.P9718108398032394918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010892 (12 * n) ^ 2 - A355690 (n + 1) : ℚ) / 3)

end

end A359606.P9718108398032394918

/-! ## A359606.P3241388459323672001

`A000217(A355690(n+1)+A139938(n+1))%2`
-/

namespace A359606.P3241388459323672001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A355690 (n + 1) + A139938 (n + 1)).toNat) 2

end

end A359606.P3241388459323672001

/-! ## A359606.P8088716072665029444

`val(A066685(A066660(n+1)), 3)`
-/

namespace A359606.P8088716072665029444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066685 (A066660 (n + 1)).toNat).toNat 3

end

end A359606.P8088716072665029444

/-!
# A359608: Indices at which A358777 attains a new value.

The programs for A359608, there is no canonical definition to state claims against.
-/

/-! ## A359608.P16110132925939357777

`record[A132393(3*n)]%A330048(3*n+4)`
-/

namespace A359608.P16110132925939357777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A330048 (3 * n + 4))

end

end A359608.P16110132925939357777

/-!
# A359609: Distinct values of A358777 in the order of their appearance.

The programs for A359609, there is no canonical definition to state claims against.
-/

/-! ## A359609.P2958467075213655658

`A358777(A359608(n+1))`
-/

namespace A359609.P2958467075213655658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A359608 (n + 1)).toNat

end

end A359609.P2958467075213655658

/-! ## A359609.P9415106845039367827

`A359763(or(1, A359608(n+1)))`
-/

namespace A359609.P9415106845039367827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (Int.lor 1 (A359608 (n + 1))).toNat

end

end A359609.P9415106845039367827

/-! ## A359609.P6612998316594454118

`A359773(or(1, A359608(n+1)))`
-/

namespace A359609.P6612998316594454118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (Int.lor 1 (A359608 (n + 1))).toNat

end

end A359609.P6612998316594454118

/-! ## A359609.P17521930228487220396

`A359780(or(1, A359608(n+1)))`
-/

namespace A359609.P17521930228487220396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (Int.lor 1 (A359608 (n + 1))).toNat

end

end A359609.P17521930228487220396

/-! ## A359609.P5254264551410053975

`A359815(or(1, A359608(n+1)))`
-/

namespace A359609.P5254264551410053975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359815 (Int.lor 1 (A359608 (n + 1))).toNat

end

end A359609.P5254264551410053975

/-!
# A359611: The lexicographically earliest "Increasing Term Fractal Jump Sequence".

The programs for A359611, there is no canonical definition to state claims against.
-/

/-! ## A359611.P11644031306290984647

`eq[A004086(n), A246852(A136766(n))]`
-/

namespace A359611.P11644031306290984647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246852 (A136766 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359611.P11644031306290984647

/-!
# A359612: Largest prime factor with minimal exponent in canonical prime factorization of n.

The programs for A359612, the canonical program `A359612.P8199071591271510256` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359612 has offset 2).

The definition of A359612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359612.P8199071591271510256

`A080367(A304776(n+2))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A359612

/-- `A080367(A304776(n+2))` -/
def P8199071591271510256.Spec : Prop :=
  ∀ n, P8199071591271510256.a n = A359612 (n + 2)

theorem P8199071591271510256.correct : P8199071591271510256.Spec := by
  intro n
  simp only [A359612, Nat.add_sub_cancel]

end A359612

/-! ## A359612.P17153130552166496125

`A067695(A353694(n+2))`
-/

namespace A359612.P17153130552166496125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A353694 (n + 2)).toNat

end

end A359612.P17153130552166496125

namespace A359612

/-- `A067695(A353694(n+2))` -/
def P17153130552166496125.Spec : Prop :=
  ∀ n, P17153130552166496125.a n = A359612 (n + 2)

end A359612

/-! ## A359612.P8710768130983959142

`A356840(A295417(n+2))`
-/

namespace A359612.P8710768130983959142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356840 (A295417 (n + 2)).toNat

end

end A359612.P8710768130983959142

namespace A359612

/-- `A356840(A295417(n+2))` -/
def P8710768130983959142.Spec : Prop :=
  ∀ n, P8710768130983959142.a n = A359612 (n + 2)

end A359612

/-! ## A359612.P11498252632464063140

`A356840(A304768(n+2))`
-/

namespace A359612.P11498252632464063140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356840 (A304768 (n + 2)).toNat

end

end A359612.P11498252632464063140

namespace A359612

/-- `A356840(A304768(n+2))` -/
def P11498252632464063140.Spec : Prop :=
  ∀ n, P11498252632464063140.a n = A359612 (n + 2)

end A359612

/-! ## A359612.P4438649463933747021

`A067695(A067695(n+2)*A342768(n+2))`
-/

namespace A359612.P4438649463933747021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A067695 (n + 2) * A342768 (n + 2)).toNat

end

end A359612.P4438649463933747021

namespace A359612

/-- `A067695(A067695(n+2)*A342768(n+2))` -/
def P4438649463933747021.Spec : Prop :=
  ∀ n, P4438649463933747021.a n = A359612 (n + 2)

end A359612

/-! ## A359612.P15927177669951128817

`A000040(A364192(n+2))`
-/

namespace A359612.P15927177669951128817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A364192 (n + 2)).toNat

end

end A359612.P15927177669951128817

namespace A359612

/-- `A000040(A364192(n+2))` -/
def P15927177669951128817.Spec : Prop :=
  ∀ n, P15927177669951128817.a n = A359612 (n + 2)

end A359612

/-!
# A359613: Greatest k such that a polynomial f(x) with nonnegative integral coefficients with degree at most k is irreducible if f(n) is a prime.

The programs for A359613, there is no canonical definition to state claims against.
-/

/-! ## A359613.P9506573676026616810

`floor(π/acot(n+2))`
-/

namespace A359613.P9506573676026616810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi / SequenceMachineLib.acot (n + 2 : ℝ)⌋

end

end A359613.P9506573676026616810

/-! ## A359613.P13276391458451935585

`ceil(π/acot(n+2))-1`
-/

namespace A359613.P13276391458451935585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi / SequenceMachineLib.acot (n + 2 : ℝ)⌉ - 1

end

end A359613.P13276391458451935585

/-! ## A359613.P3152291413420804681

`floor(Δ[(5*n/4+2)²])`
-/

namespace A359613.P3152291413420804681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((n : ℚ) / 4) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A359613.P3152291413420804681

/-! ## A359613.P5313854808451184162

`round((2*n+5)*atan(n+3))`
-/

namespace A359613.P5313854808451184162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 5 : ℝ) * Real.arctan (n + 3 : ℝ))

end

end A359613.P5313854808451184162

/-! ## A359613.P12409806973312702381

`comp[C(2*n, 2)]+2*(n+2)`
-/

namespace A359613.P12409806973312702381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 * (n + 2)

end

end A359613.P12409806973312702381

/-!
# A359614: a(n) is the minimal determinant of an n X n Hermitian Toeplitz matrix using all the integers 1, 2, ..., n and with all off-diagonal elements purely imaginary.

The programs for A359614, there is no canonical definition to state claims against.
-/

/-! ## A359614.P5327210175609707354

`2-A130342(n^n)`
-/

namespace A359614.P5327210175609707354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130342 (n ^ n)

end

end A359614.P5327210175609707354

/-!
# A359615: a(n) is the maximal determinant of an n X n Hermitian Toeplitz matrix using all the integers 1, 2, ..., n and with all off-diagonal elements purely imaginary.

The programs for A359615, there is no canonical definition to state claims against.
-/

/-! ## A359615.P2444758183379945212

`2^a(n-1)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A359615.P2444758183379945212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  2 ^ a (n - 1)

end

end A359615.P2444758183379945212

/-!
# A359616: a(n) is the minimal permanent of an n X n Hermitian Toeplitz matrix using all the integers 1, 2, ..., n and with all off-diagonal elements purely imaginary.

The programs for A359616, there is no canonical definition to state claims against.
-/

/-! ## A359616.P239828960141383189

`A190218(A026525(n))`
-/

namespace A359616.P239828960141383189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (A026525 n).toNat

end

end A359616.P239828960141383189

/-!
# A359617: a(n) is the maximal permanent of an n X n Hermitian Toeplitz matrix using all the integers 1, 2, ..., n and with all off-diagonal elements purely imaginary.

The programs for A359617, there is no canonical definition to state claims against.
-/

/-! ## A359617.P5949473111362780943

`A122797(2^∑[n])`
-/

namespace A359617.P5949473111362780943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A359617.P5949473111362780943

/-!
# A359621: Number of edge cuts in the n-prism graph.

The programs for A359621, there is no canonical definition to state claims against.
-/

/-! ## A359621.P2441278532880147681

`A381663(A366667(n))`
-/

namespace A359621.P2441278532880147681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A366667 n).toNat

end

end A359621.P2441278532880147681

/-!
# A359622: Number of edge cuts in the n-Moebius ladder.

The programs for A359622, there is no canonical definition to state claims against.
-/

/-! ## A359622.P4323720803391886567

`∑[Δ[A359621(n)]-2]`
-/

namespace A359622.P4323720803391886567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359622.P4323720803391886567

/-! ## A359622.P6735133587673010197

`A359621(n+1)-(2*n+3)`
-/

namespace A359622.P6735133587673010197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359621 (n + 1) - (2 * n + 3 : ℤ)

end

end A359622.P6735133587673010197

/-!
# A359624: Centered triangular numbers which are products of three distinct primes.

The programs for A359624, there is no canonical definition to state claims against.
-/

/-! ## A359624.P6298533625015374159

`filter[A381647(n+2), A354926(#)]`
-/

namespace A359624.P6298533625015374159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381647 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A359624.P6298533625015374159

/-!
# A359626: a(n) is equal to the number of filled unit triangles in a regular triangle whose coloring scheme is given in the comments.

The programs for A359626, the canonical program `A359626.P12024856085480121574` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359626 has offset 1).

The definition of A359626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359626.P2136402753422005466

`∑[∑[floor(exp(sin(n%6)))]]`
-/

namespace A359626.P2136402753422005466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sin ((n % 6 : ℕ) : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P2136402753422005466

namespace A359626

/-- `∑[∑[floor(exp(sin(n%6)))]]` -/
def P2136402753422005466.Spec : Prop :=
  ∀ n, P2136402753422005466.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P9571154207535820915

`∑[∑[∑[ogf(1/(1-x+x^2))]]]`
-/

namespace A359626.P9571154207535820915
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P9571154207535820915

namespace A359626

/-- `∑[∑[∑[ogf(1/(1-x+x^2))]]]` -/
def P9571154207535820915.Spec : Prop :=
  ∀ n, P9571154207535820915.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P4092533522345757479

`ogf(1/(1-4x+7x^2-7x^3+4x^4-x^5))`
-/

namespace A359626.P4092533522345757479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 7, -7, 4, -1] n

end

end A359626.P4092533522345757479

namespace A359626

/-- `ogf(1/(1-4x+7x^2-7x^3+4x^4-x^5))` -/
def P4092533522345757479.Spec : Prop :=
  ∀ n, P4092533522345757479.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P12024856085480121574

`∑[∑[(gcd(n, ∑[n])+1)%3]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A359626

/-- `∑[∑[(gcd(n, ∑[n])+1)%3]]` -/
def P12024856085480121574.Spec : Prop :=
  ∀ n, (P12024856085480121574.a n : ℤ) = A359626 (n + 1)

theorem P12024856085480121574.correct : P12024856085480121574.Spec := by
  intro n
  simp only [A359626, Nat.add_sub_cancel]

end A359626

/-! ## A359626.P18165225881922046962

`∑[∑[2-a(n-3)]]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A359626.P18165225881922046962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  2 - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P18165225881922046962

namespace A359626

/-- `∑[∑[2-a(n-3)]]` -/
def P18165225881922046962.Spec : Prop :=
  ∀ n, P18165225881922046962.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P8203600433417912864

`(n+1)²-a(n-3)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A359626.P8203600433417912864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  ((n + 1) ^ 2 : ℤ) - a (n - 3)

end

end A359626.P8203600433417912864

namespace A359626

/-- `(n+1)²-a(n-3)` -/
def P8203600433417912864.Spec : Prop :=
  ∀ n, P8203600433417912864.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P5714595783317777227

`∑[∑[(3/6*lcm(2, n)+1)%3]]`
-/

namespace A359626.P5714595783317777227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) / 6 * (Nat.lcm 2 n : ℚ) + 1)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P5714595783317777227

namespace A359626

/-- `∑[∑[(3/6*lcm(2, n)+1)%3]]` -/
def P5714595783317777227.Spec : Prop :=
  ∀ n, P5714595783317777227.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P5492821870006828124

`∑[∑[∑[(2*n+2*n+1)*(and(1, n)+1)]%3]]`
-/

namespace A359626.P5492821870006828124
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (2 * n + 1)) * (Nat.land 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P5492821870006828124

namespace A359626

/-- `∑[∑[∑[(2*n+2*n+1)*(and(1, n)+1)]%3]]` -/
def P5492821870006828124.Spec : Prop :=
  ∀ n, (P5492821870006828124.a n : ℤ) = A359626 (n + 1)

end A359626

/-! ## A359626.P12448704465509878554

`∑[A077859(n)]`
-/

namespace A359626.P12448704465509878554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P12448704465509878554

namespace A359626

/-- `∑[A077859(n)]` -/
def P12448704465509878554.Spec : Prop :=
  ∀ n, P12448704465509878554.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P4493471143206958554

`∑[∑[A164965(n)]]`
-/

namespace A359626.P4493471143206958554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P4493471143206958554

namespace A359626

/-- `∑[∑[A164965(n)]]` -/
def P4493471143206958554.Spec : Prop :=
  ∀ n, P4493471143206958554.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P3332595993169287378

`∑[∑[∑[A010892(n)]]]`
-/

namespace A359626.P3332595993169287378
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P3332595993169287378

namespace A359626

/-- `∑[∑[∑[A010892(n)]]]` -/
def P3332595993169287378.Spec : Prop :=
  ∀ n, P3332595993169287378.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P2626078954711109827

`∑[∑[A128834(n)+1]]`
-/

namespace A359626.P2626078954711109827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P2626078954711109827

namespace A359626

/-- `∑[∑[A128834(n)+1]]` -/
def P2626078954711109827.Spec : Prop :=
  ∀ n, P2626078954711109827.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P10699923292553233929

`∑[∑[A163806(n)]+n]`
-/

namespace A359626.P10699923292553233929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P10699923292553233929

namespace A359626

/-- `∑[∑[A163806(n)]+n]` -/
def P10699923292553233929.Spec : Prop :=
  ∀ n, P10699923292553233929.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P164207760149623982

`∑[∑[2-A030118(n)+n]]`
-/

namespace A359626.P164207760149623982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A030118 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P164207760149623982

namespace A359626

/-- `∑[∑[2-A030118(n)+n]]` -/
def P164207760149623982.Spec : Prop :=
  ∀ n, P164207760149623982.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P11354551189789838000

`A000096(n+1)-A010892(n)`
-/

namespace A359626.P11354551189789838000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) - A010892 n

end

end A359626.P11354551189789838000

namespace A359626

/-- `A000096(n+1)-A010892(n)` -/
def P11354551189789838000.Spec : Prop :=
  ∀ n, P11354551189789838000.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P1058112793268971259

`A055998(n)+2-A010892(n)`
-/

namespace A359626.P1058112793268971259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + (2 - A010892 n)

end

end A359626.P1058112793268971259

namespace A359626

/-- `A055998(n)+2-A010892(n)` -/
def P1058112793268971259.Spec : Prop :=
  ∀ n, P1058112793268971259.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P4703112451043250488

`A027916(n+2)-A101677(n)`
-/

namespace A359626.P4703112451043250488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027916 (n + 2) - A101677 n

end

end A359626.P4703112451043250488

namespace A359626

/-- `A027916(n+2)-A101677(n)` -/
def P4703112451043250488.Spec : Prop :=
  ∀ n, P4703112451043250488.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P3119958625843920389

`A194273(n+1)+A194273(n)`
-/

namespace A359626.P3119958625843920389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 (n + 1) + A194273 n

end

end A359626.P3119958625843920389

namespace A359626

/-- `A194273(n+1)+A194273(n)` -/
def P3119958625843920389.Spec : Prop :=
  ∀ n, P3119958625843920389.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P646981799760828031

`A000217(n+2)-A164965(n+1)`
-/

namespace A359626.P646981799760828031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - A164965 (n + 1)

end

end A359626.P646981799760828031

namespace A359626

/-- `A000217(n+2)-A164965(n+1)` -/
def P646981799760828031.Spec : Prop :=
  ∀ n, P646981799760828031.a n = A359626 (n + 1)

end A359626

/-! ## A359626.P2151151966563738675

`∑[∑[A021823(n+2)]]`
-/

namespace A359626.P2151151966563738675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359626.P2151151966563738675

namespace A359626

/-- `∑[∑[A021823(n+2)]]` -/
def P2151151966563738675.Spec : Prop :=
  ∀ n, P2151151966563738675.a n = A359626 (n + 1)

end A359626

/-!
# A359627: Irregular table read by rows; the n-th row lists the divisors d of 2*n such that the binary expansions of d and 2*n have no common 1-bit.

The programs for A359627, there is no canonical definition to state claims against.
-/

/-! ## A359627.P1049436255122742608

`gcd(A066417(A371100(n+1)), A289436(n+2))`
-/

namespace A359627.P1049436255122742608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066417 (A371100 (n + 1)).toNat) (A289436 (n + 2))

end

end A359627.P1049436255122742608

/-! ## A359627.P15568702428163392214

`gcd(A106466(n), A262813(A210108(n)))`
-/

namespace A359627.P15568702428163392214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106466 n) (A262813 (A210108 n).toNat)

end

end A359627.P15568702428163392214

/-! ## A359627.P8450477226947604213

`A380868(A323450(n))+A001222(2*n+5)`
-/

namespace A359627.P8450477226947604213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380868 (A323450 n).toNat + A001222 (2 * n + 5)

end

end A359627.P8450477226947604213

/-! ## A359627.P11770327834563479594

`gcd(A289439(n+2), A338642(A336849(n+1)))`
-/

namespace A359627.P11770327834563479594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A289439 (n + 2)) (A338642 (A336849 (n + 1)).toNat)

end

end A359627.P11770327834563479594

/-! ## A359627.P15944921811516954186

`A257461(A361975(n+1))`
-/

namespace A359627.P15944921811516954186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257461 (A361975 (n + 1)).toNat

end

end A359627.P15944921811516954186

/-!
# A359630: Primes p such that 10^p+3 or 10^p+9 is also prime.

The programs for A359630, there is no canonical definition to state claims against.
-/

/-! ## A359630.P3320532734082931561

`p?[∪[A049054(n+1), A088275(n+1)]]`
-/

namespace A359630.P3320532734082931561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049054 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088275 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A359630.P3320532734082931561

/-! ## A359630.P2776811177713320057

`p?[∪[A049054(n+1), ∑[n]]]`
-/

namespace A359630.P2776811177713320057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049054 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A359630.P2776811177713320057

/-! ## A359630.P7925483197703788351

`p?[lt[A033873(n), 10]]`
-/

namespace A359630.P7925483197703788351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A359630.P7925483197703788351

/-!
# A359632: Sequence of gaps between deletions of multiples of 7 in step 4 of the sieve of Eratosthenes.

The programs for A359632, there is no canonical definition to state claims against.
-/

/-! ## A359632.P15295203973346926209

`A236175(n+1)+1`
-/

namespace A359632.P15295203973346926209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236175 (n + 1) + 1

end

end A359632.P15295203973346926209

/-!
# A359633: a(n) is the least prime > a(n-1) such that a(n-1) and a(n) are quadratic residues mod each other.

The programs for A359633, there is no canonical definition to state claims against.
-/

/-! ## A359633.P8327011093896063951

`record[A057025(n*A322280(n))]`
-/

namespace A359633.P8327011093896063951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057025 ((n : ℤ) * A322280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359633.P8327011093896063951

/-! ## A359633.P9901820728592726060

`A069867(A029967(2*n+1)+∏{e}[n+1, #+1])`
-/

namespace A359633.P9901820728592726060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069867 (A029967 (2 * n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A359633.P9901820728592726060

/-!
# A359634: a(0)=1 and thereafter a(n) is the length of the longest contiguous group of terms in the sequence thus far that add up to n; if no such group exists, set a(n)=0.

The programs for A359634, there is no canonical definition to state claims against.
-/

/-! ## A359634.P17287916697106229336

`A087061(lt[A318389(n+1), A050059(n+1)])`
-/

namespace A359634.P17287916697106229336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359634.P17287916697106229336

/-! ## A359634.P3408821892903344323

`A002260(lt[A134285(n+1), A005496(n)])`
-/

namespace A359634.P3408821892903344323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359634.P3408821892903344323

/-! ## A359634.P7252291686864271741

`A002262(lt[A134285(n+1), A005496(n)])`
-/

namespace A359634.P7252291686864271741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359634.P7252291686864271741

/-! ## A359634.P10889733890411272412

`A025675(lt[A166890(n+1), A002865(n)])`
-/

namespace A359634.P10889733890411272412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359634.P10889733890411272412

/-! ## A359634.P12655922602559285812

`A002262(lt[A136236(n), A073217(n+1)])`
-/

namespace A359634.P12655922602559285812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359634.P12655922602559285812

/-!
# A359635: a(n) = A162657(n)/n.

The programs for A359635, there is no canonical definition to state claims against.
-/

/-! ## A359635.P7547677864336279968

`A162657(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359635.P7547677864336279968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162657 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A359635.P7547677864336279968

/-! ## A359635.P16528463522221557890

`A000027(n+1)^(-1)*A162657(n+1)`
-/

namespace A359635.P16528463522221557890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) ^ (-1 : ℤ) * (A162657 (n + 1) : ℚ)

end

end A359635.P16528463522221557890

/-! ## A359635.P2631469663437023618

`A009194(A162657(n+1))`
-/

namespace A359635.P2631469663437023618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A162657 (n + 1)).toNat

end

end A359635.P2631469663437023618

/-! ## A359635.P10351940649656967255

`A273135(A067824(n+1)*A190167(n))`
-/

namespace A359635.P10351940649656967255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273135 (A067824 (n + 1) * A190167 n).toNat

end

end A359635.P10351940649656967255

/-! ## A359635.P14652416244953639200

`gcd(A000203(n+1), A322117(A379733(n+1)))`
-/

namespace A359635.P14652416244953639200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A322117 (A379733 (n + 1)).toNat)

end

end A359635.P14652416244953639200

/-!
# A359642: Number of numbers <= 10^n that are products of 4 distinct primes.

The programs for A359642, there is no canonical definition to state claims against.
-/

/-! ## A359642.P17001853595638556457

`A000203(A161968(n+1))-A267946(n+1)`
-/

namespace A359642.P17001853595638556457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A161968 (n + 1)).toNat - A267946 (n + 1)

end

end A359642.P17001853595638556457

/-!
# A359643: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(4*k,k).

The programs for A359643, there is no canonical definition to state claims against.
-/

/-! ## A359643.P3267420432419897532

`A288156(2*A084772(n))`
-/

namespace A359643.P3267420432419897532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (2 * A084772 n).toNat

end

end A359643.P3267420432419897532

/-!
# A359644: Number of numbers <= 10^n that are products of 5 distinct primes.

The programs for A359644, there is no canonical definition to state claims against.
-/

/-! ## A359644.P16543732300761734903

`Δ[A144341((n+1)²+2)]`
-/

namespace A359644.P16543732300761734903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144341 ((n + 1) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A359644.P16543732300761734903

/-!
# A359645: Number of numbers <= 10^n that are products of 6 distinct primes.

The programs for A359645, there is no canonical definition to state claims against.
-/

/-! ## A359645.P13900598050291795254

`A318447(A000602(∑[n]))`
-/

namespace A359645.P13900598050291795254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318447 (A000602 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A359645.P13900598050291795254

/-! ## A359645.P2837558643752131574

`5*A051775(A015473(n))`
-/

namespace A359645.P2837558643752131574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A051775 (A015473 n).toNat

end

end A359645.P2837558643752131574

/-!
# A359646: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(5*n+k,k).

The programs for A359646, there is no canonical definition to state claims against.
-/

/-! ## A359646.P11694804679023765509

`A106195(A062728(2*n)+n)`
-/

namespace A359646.P11694804679023765509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A062728 (2 * n) + (n : ℤ)).toNat

end

end A359646.P11694804679023765509

/-! ## A359646.P16900789862983225189

`A208341(A081266(2*n)+n)`
-/

namespace A359646.P16900789862983225189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A081266 (2 * n) + (n : ℤ)).toNat

end

end A359646.P16900789862983225189

/-! ## A359646.P8355542999418240579

`A208341(A062725(2*n)-n)`
-/

namespace A359646.P8355542999418240579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A062725 (2 * n) - (n : ℤ)).toNat

end

end A359646.P8355542999418240579

/-! ## A359646.P16603740428634548925

`A055587(A062708(2*n+1)+n)`
-/

namespace A359646.P16603740428634548925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A062708 (2 * n + 1) + (n : ℤ)).toNat

end

end A359646.P16603740428634548925

/-! ## A359646.P11755981855779789567

`A049600(A117625(2*n+1)-n)`
-/

namespace A359646.P11755981855779789567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A117625 (2 * n + 1) - (n : ℤ)).toNat

end

end A359646.P11755981855779789567

/-!
# A359647: a(n) = [x^n] hypergeom([1/4, 3/4], [2], 64*x). The central terms of the Motzkin triangle A359364 without zeros.

The programs for A359647, the canonical program `A359647.P17524220049966486840` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359647 has offset 0).

The definition of A359647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359647.P15787047756306899172

`C(2*n, n)/(n+1)*C(4*n, 2*n)`
-/

namespace A359647.P15787047756306899172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.choose (4 * n) (2 * n) : ℚ)

end

end A359647.P15787047756306899172

namespace A359647

/-- `C(2*n, n)/(n+1)*C(4*n, 2*n)` -/
def P15787047756306899172.Spec : Prop :=
  ∀ n, P15787047756306899172.a n = (A359647 n : ℚ)

end A359647

/-! ## A359647.P17524220049966486840

`A000108(n)*A001448(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359647

/-- `A000108(n)*A001448(n)` -/
def P17524220049966486840.Spec : Prop :=
  ∀ n, P17524220049966486840.a n = A359647 n

theorem P17524220049966486840.correct : P17524220049966486840.Spec := by
  intro n
  simp only [A359647]

end A359647

/-! ## A359647.P10604636976531333338

`A368745(∑[4*n])`
-/

namespace A359647.P10604636976531333338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368745 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359647.P10604636976531333338

namespace A359647

/-- `A368745(∑[4*n])` -/
def P10604636976531333338.Spec : Prop :=
  ∀ n, P10604636976531333338.a n = A359647 n

end A359647

/-! ## A359647.P5066146776044466183

`(2*n+1)*A151332(n)`
-/

namespace A359647.P5066146776044466183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A151332 n

end

end A359647.P5066146776044466183

namespace A359647

/-- `(2*n+1)*A151332(n)` -/
def P5066146776044466183.Spec : Prop :=
  ∀ n, P5066146776044466183.a n = A359647 n

end A359647

/-! ## A359647.P4430912171078673007

`∏[4-2/(n+1)]/2*A000108(2*n)`
-/

namespace A359647.P4430912171078673007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * (A000108 (2 * n) : ℚ)

end

end A359647.P4430912171078673007

namespace A359647

/-- `∏[4-2/(n+1)]/2*A000108(2*n)` -/
def P4430912171078673007.Spec : Prop :=
  ∀ n, P4430912171078673007.a n = (A359647 n : ℚ)

end A359647

/-! ## A359647.P8440642899054909138

`A001700(n)*A048990(n)`
-/

namespace A359647.P8440642899054909138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A048990 n

end

end A359647.P8440642899054909138

namespace A359647

/-- `A001700(n)*A048990(n)` -/
def P8440642899054909138.Spec : Prop :=
  ∀ n, P8440642899054909138.a n = A359647 n

end A359647

/-! ## A359647.P7247982872826079039

`A002293(n)*A117671(n)`
-/

namespace A359647.P7247982872826079039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A117671 n

end

end A359647.P7247982872826079039

namespace A359647

/-- `A002293(n)*A117671(n)` -/
def P7247982872826079039.Spec : Prop :=
  ∀ n, P7247982872826079039.a n = A359647 n

end A359647

/-! ## A359647.P16403840853340600037

`record[A000984(n)*A126120(n)]`
-/

namespace A359647.P16403840853340600037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359647.P16403840853340600037

namespace A359647

/-- `record[A000984(n)*A126120(n)]` -/
def P16403840853340600037.Spec : Prop :=
  ∀ n, P16403840853340600037.a n = A359647 n

end A359647

/-! ## A359647.P7090890822303353293

`A000108(n)*A000984(2*n)`
-/

namespace A359647.P7090890822303353293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000984 (2 * n)

end

end A359647.P7090890822303353293

namespace A359647

/-- `A000108(n)*A000984(2*n)` -/
def P7090890822303353293.Spec : Prop :=
  ∀ n, P7090890822303353293.a n = A359647 n

end A359647

/-! ## A359647.P2475350109172824585

`A000108(2*n)*A001700(n)`
-/

namespace A359647.P2475350109172824585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A001700 n

end

end A359647.P2475350109172824585

namespace A359647

/-- `A000108(2*n)*A001700(n)` -/
def P2475350109172824585.Spec : Prop :=
  ∀ n, P2475350109172824585.a n = A359647 n

end A359647

/-!
# A359648: Triangle read by rows. T(n, k) = (n!)^2 / (k! * (n - k)! * (floor(n/2)!)^2 * (floor(n/2) + 1)).

The programs for A359648, there is no canonical definition to state claims against.
-/

/-! ## A359648.P16837100646399690761

`A253666(n)/A204164(n+1)`
-/

namespace A359648.P16837100646399690761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253666 n : ℚ) / (A204164 (n + 1) : ℚ)

end

end A359648.P16837100646399690761

/-! ## A359648.P1002291742651828307

`A007318(n)*A057977(A003056(n))`
-/

namespace A359648.P1002291742651828307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057977 (A003056 n).toNat

end

end A359648.P1002291742651828307

/-! ## A359648.P3426849688201536107

`abs(A057977(A003056(n))*A130595(n))`
-/

namespace A359648.P3426849688201536107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057977 (A003056 n).toNat * A130595 n|

end

end A359648.P3426849688201536107

/-! ## A359648.P16061536569083522680

`Δ[A102363(n)]*A057977(A003056(n))`
-/

namespace A359648.P16061536569083522680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057977 (A003056 n).toNat

end

end A359648.P16061536569083522680

/-! ## A359648.P17626716532971509660

`A253666(n)/A282711(A002024(n+1))`
-/

namespace A359648.P17626716532971509660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253666 n : ℚ) / (A282711 (A002024 (n + 1)).toNat : ℚ)

end

end A359648.P17626716532971509660

/-! ## A359648.P5865339112124645376

`sqrt(A008459(n))*A238762(A025581(n)+n)`
-/

namespace A359648.P5865339112124645376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A238762 (A025581 n + (n : ℤ)).toNat : ℝ)

end

end A359648.P5865339112124645376

/-!
# A359649: a(n) = hypergeom([(1 - n)/2, -n/2], [2], 4*n^2).

The programs for A359649, there is no canonical definition to state claims against.
-/

/-! ## A359649.P164611319525950897

`A121400(∑[n²])`
-/

namespace A359649.P164611319525950897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359649.P164611319525950897

/-!
# A359651: Numbers with exactly three nonzero decimal digits and not ending with 0.

The programs for A359651, there is no canonical definition to state claims against.
-/

/-! ## A359651.P3507070555645531992

`lt[2, A215887(n)]`
-/

namespace A359651.P3507070555645531992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359651.P3507070555645531992

/-! ## A359651.P5614075633125875063

`A072544(n+56)`
-/

namespace A359651.P5614075633125875063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072544 (n + 56)

end

end A359651.P5614075633125875063

/-! ## A359651.P8628305732798325368

`A131058(n+65)`
-/

namespace A359651.P8628305732798325368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 65)

end

end A359651.P8628305732798325368

/-! ## A359651.P10330165957259271236

`A052382(n+91)`
-/

namespace A359651.P10330165957259271236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 91)

end

end A359651.P10330165957259271236

/-! ## A359651.P8262301724089725201

`lt[99, A004185(n)]`
-/

namespace A359651.P8262301724089725201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359651.P8262301724089725201

/-! ## A359651.P12237486254474234098

`lt[10, sqrt(A355223(n))]`
-/

namespace A359651.P12237486254474234098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A355223 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359651.P12237486254474234098

/-! ## A359651.P296969144082602896

`comp[A067033(n)]+91`
-/

namespace A359651.P296969144082602896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067033 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 91

end

end A359651.P296969144082602896

/-! ## A359651.P3634037129806345586

`eq[0, A069877(n)%5]`
-/

namespace A359651.P3634037129806345586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069877 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359651.P3634037129806345586

/-! ## A359651.P5188797541227656209

`lt[0, xor(n, A355675(n))]`
-/

namespace A359651.P5188797541227656209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A355675 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359651.P5188797541227656209

/-! ## A359651.P16151136351020751994

`lt[99, and(n, A187844(n))]`
-/

namespace A359651.P16151136351020751994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A187844 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359651.P16151136351020751994

/-!
# A359652: Lexicographically earliest sequence of positive integers such that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form an arithmetic or geometric progression.

The programs for A359652, there is no canonical definition to state claims against.
-/

/-! ## A359652.P5174705007279397350

`A001068(A229037(n+1)%A092180(n+1))`
-/

namespace A359652.P5174705007279397350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (Int.tmod (A229037 (n + 1)) (A092180 (n + 1))).toNat

end

end A359652.P5174705007279397350

/-! ## A359652.P13744715637518027716

`A101886((A248625(n)+1)%A184399(n+1))`
-/

namespace A359652.P13744715637518027716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (Int.tmod (A248625 n + 1) (A184399 (n + 1))).toNat

end

end A359652.P13744715637518027716

/-! ## A359652.P4128023038915705278

`A121518(A229037(n+1))%A330109(n+3)`
-/

namespace A359652.P4128023038915705278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121518 (A229037 (n + 1)).toNat) (A330109 (n + 3))

end

end A359652.P4128023038915705278

/-! ## A359652.P2551492681665239024

`A087069(A229037(n+1))+A083025(A059867(n+1))`
-/

namespace A359652.P2551492681665239024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 (A229037 (n + 1)).toNat + A083025 (A059867 (n + 1)).toNat

end

end A359652.P2551492681665239024

/-! ## A359652.P1840749929976150612

`A087069(A229037(n+1))%A101889(n+1)`
-/

namespace A359652.P1840749929976150612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087069 (A229037 (n + 1)).toNat) (A101889 (n + 1))

end

end A359652.P1840749929976150612

/-! ## A359652.P7152669874285469148

`A329133(A229037(n+1))%A192045(n+1)`
-/

namespace A359652.P7152669874285469148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329133 (A229037 (n + 1)).toNat) (A192045 (n + 1))

end

end A359652.P7152669874285469148

/-! ## A359652.P12496613357778157630

`A023705(A229037(n+1))%A270042(2*(n+5))`
-/

namespace A359652.P12496613357778157630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023705 (A229037 (n + 1)).toNat) (A270042 (2 * (n + 5)))

end

end A359652.P12496613357778157630

/-! ## A359652.P510238039753771827

`A101886(A248625(n)+1)%A093679(n+2)`
-/

namespace A359652.P510238039753771827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101886 (A248625 n + 1).toNat) (A093679 (n + 2))

end

end A359652.P510238039753771827

/-!
# A359653: Number of regions formed in a square with edge length 1 by straight line segments when connecting the internal edge points that divide the sides into segments with lengths equal to the Farey series of order n to the equivalent points on the opposite side of the square.

The programs for A359653, there is no canonical definition to state claims against.
-/

/-! ## A359653.P6422072113371643585

`A359655(n+1)-A359654(n+1)+1`
-/

namespace A359653.P6422072113371643585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359655 (n + 1) - A359654 (n + 1) + 1

end

end A359653.P6422072113371643585

/-!
# A359654: Number of vertices formed in a square with edge length 1 by straight line segments when connecting the internal edge points that divide the sides into segments with lengths equal to the Farey series of order n to the equivalent points on the opposite side of the square.

The programs for A359654, there is no canonical definition to state claims against.
-/

/-! ## A359654.P6563680326822591597

`A359655(n+1)-A359653(n+1)+1`
-/

namespace A359654.P6563680326822591597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359655 (n + 1) - A359653 (n + 1) + 1

end

end A359654.P6563680326822591597

/-!
# A359655: Number of edges formed in a square with edge length 1 by straight line segments when connecting the internal edge points that divide the sides into segments with lengths equal to the Farey series of order n to the equivalent points on the opposite side of the square.

The programs for A359655, there is no canonical definition to state claims against.
-/

/-! ## A359655.P13858008078399810980

`A359653(n+1)+A359654(n+1)-1`
-/

namespace A359655.P13858008078399810980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359653 (n + 1) + A359654 (n + 1) - 1

end

end A359655.P13858008078399810980

/-!
# A359658: a(n) = Sum_{k=0..n} k^(k * (n-k) + 1).

The programs for A359658, there is no canonical definition to state claims against.
-/

/-! ## A359658.P6969180635718930575

`A282697(∑[n!])`
-/

namespace A359658.P6969180635718930575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359658.P6969180635718930575

/-!
# A359659: a(n) = Sum_{k=0..n} k^(k * (n-k+1)).

The programs for A359659, there is no canonical definition to state claims against.
-/

/-! ## A359659.P15545951167323682886

`A349893(n+1)-1`
-/

namespace A359659.P15545951167323682886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349893 (n + 1) - 1

end

end A359659.P15545951167323682886

/-! ## A359659.P7049450149059296841

`∑[abs(Δ[A349893(n)])]`
-/

namespace A359659.P7049450149059296841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359659.P7049450149059296841

/-! ## A359659.P6641382054465546793

`record[Δ[A349893(A007814(n+1))]]`
-/

namespace A359659.P6641382054465546793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349893 (A007814 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359659.P6641382054465546793

/-!
# A359660: a(n) = Sum_{k=0..n} k^(2 * (n-k) + 1).

The programs for A359660, there is no canonical definition to state claims against.
-/

/-! ## A359660.P5727548582533396302

`A104872(Δ[n²])`
-/

namespace A359660.P5727548582533396302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359660.P5727548582533396302

/-! ## A359660.P409919774078289471

`record[A104872(xor(1, n))]`
-/

namespace A359660.P409919774078289471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359660.P409919774078289471

/-! ## A359660.P254493526419051786

`record[A104872((-1)^n+n)]`
-/

namespace A359660.P254493526419051786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359660.P254493526419051786

/-! ## A359660.P7624538916296796754

`record[A000035(n)*A104872(n)]`
-/

namespace A359660.P7624538916296796754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A104872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359660.P7624538916296796754

/-! ## A359660.P8586483404547450566

`A104872(2*n+1)-A003982(2*n+1)`
-/

namespace A359660.P8586483404547450566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 (2 * n + 1) - A003982 (2 * n + 1)

end

end A359660.P8586483404547450566

/-!
# A359661: a(n) is the number of free convex polyominoes of n cells.

The programs for A359661, there is no canonical definition to state claims against.
-/

/-! ## A359661.P17925523248429389940

`A349523(A280194(n))`
-/

namespace A359661.P17925523248429389940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (A280194 n).toNat

end

end A359661.P17925523248429389940

/-! ## A359661.P209339478681951996

`A382048(A063022(n+1))`
-/

namespace A359661.P209339478681951996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382048 (A063022 (n + 1)).toNat

end

end A359661.P209339478681951996

/-! ## A359661.P12534955146073559925

`A382048(A371713(n+1))`
-/

namespace A359661.P12534955146073559925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382048 (A371713 (n + 1)).toNat

end

end A359661.P12534955146073559925

/-!
# A359665: a(n) = Sum_{k=0..n} binomial(k^3, k).

The programs for A359665, there is no canonical definition to state claims against.
-/

/-! ## A359665.P8040035169772071479

`∑[C(n^3, n)]`
-/

namespace A359665.P8040035169772071479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 3) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359665.P8040035169772071479

/-! ## A359665.P5167972908395351291

`a(n-1)+C(n^3, n)` with `a(0)=1`
-/

namespace A359665.P5167972908395351291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n ^ 3) n

end

end A359665.P5167972908395351291

/-! ## A359665.P4014851593201449600

`∑[C(A000578(n), A028310(n))]+1`
-/

namespace A359665.P4014851593201449600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000578 n).toNat (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A359665.P4014851593201449600

/-! ## A359665.P4154931831685467449

`∑[A000007(2*n+3)+C(A000578(n), n)]`
-/

namespace A359665.P4154931831685467449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3) + (Nat.choose (A000578 n).toNat n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359665.P4154931831685467449

/-!
# A359666: Integers k such that sigma(k) <= sigma(k+1) <= sigma(k+2) <= sigma(k+3), where sigma is the sum of divisors.

The programs for A359666, there is no canonical definition to state claims against.
-/

/-! ## A359666.P8596652515921789597

`∩[A016813(3*n), record[A242222(n+1)]]`
-/

namespace A359666.P8596652515921789597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359666.P8596652515921789597

/-!
# A359671: a(n) = coefficient of x^n in A(x) where 1 = Sum_{n=-oo..+oo} (x^n - x*A(x))^n.

The programs for A359671, there is no canonical definition to state claims against.
-/

/-! ## A359671.P10899537741803419474

`2*A355868(n)`
-/

namespace A359671.P10899537741803419474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355868 n

end

end A359671.P10899537741803419474

/-! ## A359671.P10085817272551052182

`A355868(n)+A355868(n)%A358962(n+2)`
-/

namespace A359671.P10085817272551052182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355868 n + Int.tmod (A355868 n) (A358962 (n + 2))

end

end A359671.P10085817272551052182

/-! ## A359671.P11275430154445999058

`A355868(A118759(n))+A355868(n)`
-/

namespace A359671.P11275430154445999058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355868 (A118759 n).toNat + A355868 n

end

end A359671.P11275430154445999058

/-! ## A359671.P8894835109194954066

`2*A370030(∑[n+2])`
-/

namespace A359671.P8894835109194954066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359671.P8894835109194954066

/-! ## A359671.P3518667257948660814

`A370030(∑[n+2])+A355868(n)`
-/

namespace A359671.P3518667257948660814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (∑ j ∈ Finset.range (n + 1), f1 j) + A355868 n

end

end A359671.P3518667257948660814

/-!
# A359672: a(n) = coefficient of x^n in A(x) where x = Sum_{n=-oo..+oo} (-1)^(n-1) * x^n * (1 + x^n*A(x)^n)^n.

The programs for A359672, there is no canonical definition to state claims against.
-/

/-! ## A359672.P17100070101637791192

`A320536(A148930(n+1))`
-/

namespace A359672.P17100070101637791192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A148930 (n + 1)).toNat

end

end A359672.P17100070101637791192

/-! ## A359672.P1492141693161467766

`A176746(A365858(n+1))`
-/

namespace A359672.P1492141693161467766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176746 (A365858 (n + 1)).toNat

end

end A359672.P1492141693161467766

/-! ## A359672.P14691768017113310236

`A272619(A355787(n))+A000110(n)`
-/

namespace A359672.P14691768017113310236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272619 (A355787 n).toNat + A000110 n

end

end A359672.P14691768017113310236

/-!
# A359673: a(n) = coefficient of x^n in A(x) where 1 = Sum_{n=-oo..+oo} (2*x + (-x)^n*A(x)^n)^n.

The programs for A359673, there is no canonical definition to state claims against.
-/

/-! ## A359673.P760551997962454939

`abs(A378829(n+1))`
-/

namespace A359673.P760551997962454939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A378829 (n + 1)|

end

end A359673.P760551997962454939

/-! ## A359673.P2485060746112970713

`A033999(n)*A378829(n+1)`
-/

namespace A359673.P2485060746112970713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A378829 (n + 1)

end

end A359673.P2485060746112970713

/-! ## A359673.P5509418141948002172

`gcd(A000038(n), A378829(n+1))`
-/

namespace A359673.P5509418141948002172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A378829 (n + 1))

end

end A359673.P5509418141948002172

/-! ## A359673.P6124018870346246327

`A378829(n+1)/A033999(n+2)`
-/

namespace A359673.P6124018870346246327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378829 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A359673.P6124018870346246327

/-! ## A359673.P13704329130213238287

`lcm(A001511(A006512(n+1)), A378829(n+1))`
-/

namespace A359673.P13704329130213238287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001511 (A006512 (n + 1)).toNat) (A378829 (n + 1))

end

end A359673.P13704329130213238287

/-!
# A359674: Zero-based weighted sum of the prime indices of n in weakly increasing order.

The programs for A359674, there is no canonical definition to state claims against.
-/

/-! ## A359674.P6623982356172937315

`A304818(A032742(n+1))`
-/

namespace A359674.P6623982356172937315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A032742 (n + 1)).toNat

end

end A359674.P6623982356172937315

/-! ## A359674.P25659690377962045

`A359677(n+1)+A261079(n+1)`
-/

namespace A359674.P25659690377962045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359677 (n + 1) + A261079 (n + 1)

end

end A359674.P25659690377962045

/-! ## A359674.P12580156464368918196

`A304818(n+1)-A056239(n+1)`
-/

namespace A359674.P12580156464368918196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - A056239 (n + 1)

end

end A359674.P12580156464368918196

/-! ## A359674.P13185728625179205830

`A304818(1-A060681(n+1)+n)`
-/

namespace A359674.P13185728625179205830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A359674.P13185728625179205830

/-! ## A359674.P5287250827027367947

`A304818((n+1)/A020639(n+1))`
-/

namespace A359674.P5287250827027367947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A359674.P5287250827027367947

/-! ## A359674.P3429025654667462030

`A318283(A052126(n+1))+A261079(n+1)`
-/

namespace A359674.P3429025654667462030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A052126 (n + 1)).toNat + A261079 (n + 1)

end

end A359674.P3429025654667462030

/-! ## A359674.P6802323689211312581

`A304818(n+1)-A304739(A064664(n+1))`
-/

namespace A359674.P6802323689211312581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - A304739 (A064664 (n + 1)).toNat

end

end A359674.P6802323689211312581

/-! ## A359674.P14625588845661379514

`A304818(n+1)-(A318995(n+1)+A001222(n+1))`
-/

namespace A359674.P14625588845661379514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - (A318995 (n + 1) + A001222 (n + 1))

end

end A359674.P14625588845661379514

/-!
# A359675: Positions of first appearances in the sequence of zero-based weighted sums of prime indices (A359674).

The programs for A359675, there is no canonical definition to state claims against.
-/

/-! ## A359675.P6579605414008371366

`A103517(A359755(n+1)-1)`
-/

namespace A359675.P6579605414008371366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A359755 (n + 1) - 1).toNat

end

end A359675.P6579605414008371366

/-! ## A359675.P12219627082197992709

`A014684(2*A359755(n+1))`
-/

namespace A359675.P12219627082197992709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (2 * A359755 (n + 1)).toNat

end

end A359675.P12219627082197992709

/-! ## A359675.P13386596627762000014

`A063928(4*A359755(n+1))`
-/

namespace A359675.P13386596627762000014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (4 * A359755 (n + 1)).toNat

end

end A359675.P13386596627762000014

/-! ## A359675.P14374766850658053015

`A000122(n²)*A359755(n+1)`
-/

namespace A359675.P14374766850658053015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A359755 (n + 1)

end

end A359675.P14374766850658053015

/-! ## A359675.P12518051469170868113

`A036452(n+1)*A359755(n+1)`
-/

namespace A359675.P12518051469170868113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A359755 (n + 1)

end

end A359675.P12518051469170868113

/-! ## A359675.P16692248504133838323

`A036453(n+1)*A359755(n+1)`
-/

namespace A359675.P16692248504133838323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A359755 (n + 1)

end

end A359675.P16692248504133838323

/-! ## A359675.P16474037872225029125

`(A057427(n)+1)*A359755(n+1)`
-/

namespace A359675.P16474037872225029125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A359755 (n + 1)

end

end A359675.P16474037872225029125

/-! ## A359675.P6542037301827190354

`(A178334(n)+1)*A359755(n+1)`
-/

namespace A359675.P6542037301827190354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A359755 (n + 1)

end

end A359675.P6542037301827190354

/-! ## A359675.P13680661306163811143

`A055874(A001316(n))*A359755(n+1)`
-/

namespace A359675.P13680661306163811143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A001316 n).toNat * A359755 (n + 1)

end

end A359675.P13680661306163811143

/-!
# A359676: Least positive integer whose weakly increasing prime indices have zero-based weighted sum n (A359674).

The programs for A359676, there is no canonical definition to state claims against.
-/

/-! ## A359676.P12372879492688002415

`ceil(cosh(sin(n)))*A359682(n)`
-/

namespace A359676.P12372879492688002415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A359682 n

end

end A359676.P12372879492688002415

/-! ## A359676.P5000446212874917913

`A103517(A359682(n)-1)`
-/

namespace A359676.P5000446212874917913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A359682 n - 1).toNat

end

end A359676.P5000446212874917913

/-! ## A359676.P7364765497663373348

`A179278(2*A359682(n))`
-/

namespace A359676.P7364765497663373348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179278 (2 * A359682 n).toNat

end

end A359676.P7364765497663373348

/-! ## A359676.P6993372497544490125

`A184985(2*A359682(n))`
-/

namespace A359676.P6993372497544490125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (2 * A359682 n).toNat

end

end A359676.P6993372497544490125

/-! ## A359676.P17329215849046601084

`sqrt(A123932(n))*A359682(n)`
-/

namespace A359676.P17329215849046601084
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123932 n : ℝ) * (A359682 n : ℝ)

end

end A359676.P17329215849046601084

/-! ## A359676.P6996764035170494362

`A036452(n+1)*A359682(n)`
-/

namespace A359676.P6996764035170494362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A359682 n

end

end A359676.P6996764035170494362

/-! ## A359676.P2724407726038862882

`A036453(n+1)*A359682(n)`
-/

namespace A359676.P2724407726038862882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A359682 n

end

end A359676.P2724407726038862882

/-! ## A359676.P12784939141642274254

`A020639(A007843(n))*A359682(n)`
-/

namespace A359676.P12784939141642274254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007843 n).toNat * A359682 n

end

end A359676.P12784939141642274254

/-! ## A359676.P1238866756928047061

`A020639(A359675(n+1))*A359682(n)`
-/

namespace A359676.P1238866756928047061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A359675 (n + 1)).toNat * A359682 n

end

end A359676.P1238866756928047061

/-!
# A359677: Zero-based weighted sum of the reversed (weakly decreasing) prime indices of n.

The programs for A359677, there is no canonical definition to state claims against.
-/

/-! ## A359677.P9940996862600421033

`A318283(A052126(n+1))`
-/

namespace A359677.P9940996862600421033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A052126 (n + 1)).toNat

end

end A359677.P9940996862600421033

/-! ## A359677.P11805661396862409244

`A351397(A331188(n+1))`
-/

namespace A359677.P11805661396862409244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351397 (A331188 (n + 1)).toNat

end

end A359677.P11805661396862409244

/-! ## A359677.P15901736812193511944

`∑{e}[A331188(n+1), A000217(#)]`
-/

namespace A359677.P15901736812193511944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)

end

end A359677.P15901736812193511944

/-! ## A359677.P7082002513203817272

`A318283(n+1)-A056239(n+1)`
-/

namespace A359677.P7082002513203817272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (n + 1) - A056239 (n + 1)

end

end A359677.P7082002513203817272

/-! ## A359677.P1904104785393868344

`A318283(n+1-A171462(n+1))`
-/

namespace A359677.P1904104785393868344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 ((n + 1 : ℤ) - A171462 (n + 1)).toNat

end

end A359677.P1904104785393868344

/-! ## A359677.P15628928547752926323

`A318283((n+1)/A006530(n+1))`
-/

namespace A359677.P15628928547752926323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A359677.P15628928547752926323

/-! ## A359677.P17796403707355014145

`A304818(A032742(n+1))-A261079(n+1)`
-/

namespace A359677.P17796403707355014145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A032742 (n + 1)).toNat - A261079 (n + 1)

end

end A359677.P17796403707355014145

/-! ## A359677.P5562636807572678832

`A304818(n+1)-(A261079(n+1)+A056239(n+1))`
-/

namespace A359677.P5562636807572678832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - (A261079 (n + 1) + A056239 (n + 1))

end

end A359677.P5562636807572678832

/-! ## A359677.P8926862991415631749

`A359362(n+1)-(A304818(n+1)+A056239(n+1))`
-/

namespace A359677.P8926862991415631749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359362 (n + 1) - (A304818 (n + 1) + A056239 (n + 1))

end

end A359677.P8926862991415631749

/-! ## A359677.P13724396334903478080

`A304818(n+1)-A261079(n+1)-∑{d}[n+1, A297109(#)]`
-/

namespace A359677.P13724396334903478080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - A261079 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A297109 d

end

end A359677.P13724396334903478080

/-!
# A359680: Positions of first appearances in the sequence of zero-based weighted sums of reversed prime indices (A359677).

The programs for A359680, there is no canonical definition to state claims against.
-/

/-! ## A359680.P15360197209637689673

`record[A359681(A359677(n+1))]`
-/

namespace A359680.P15360197209637689673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359681 (A359677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359680.P15360197209637689673

/-! ## A359680.P13064497241022842312

`∩[A325661(n+1), A358973(n+1)]`
-/

namespace A359680.P13064497241022842312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359680.P13064497241022842312

/-! ## A359680.P4126967118981253567

`∩[A335851(n+1), A358973(n+1)]`
-/

namespace A359680.P4126967118981253567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359680.P4126967118981253567

/-!
# A359681: Least positive integer whose reversed (weakly decreasing) prime indices have zero-based weighted sum (A359677) equal to n.

The programs for A359681, there is no canonical definition to state claims against.
-/

/-! ## A359681.P8441294313583155924

`A163511(A180338(n)%A153704(n+1))`
-/

namespace A359681.P8441294313583155924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.tmod (A180338 n) (A153704 (n + 1))).toNat

end

end A359681.P8441294313583155924

/-!
# A359682: Least positive integer whose weakly increasing prime indices have weighted sum (A304818) equal to n.

The programs for A359682, there is no canonical definition to state claims against.
-/

/-! ## A359682.P9062619680511327934

`ceil(A359676(n+1)/2)`
-/

namespace A359682.P9062619680511327934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A359676 (n + 1) : ℚ) / 2⌉

end

end A359682.P9062619680511327934

/-! ## A359682.P15695498740288415463

`A004525(A359676(n+1))`
-/

namespace A359682.P15695498740288415463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A359676 (n + 1)).toNat

end

end A359682.P15695498740288415463

/-! ## A359682.P7177098192740023060

`A004526(A359676(n+1)+1)`
-/

namespace A359682.P7177098192740023060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A359676 (n + 1) + 1).toNat

end

end A359682.P7177098192740023060

/-! ## A359682.P10827589196135425426

`A116921(A359676(n+1)+1)`
-/

namespace A359682.P10827589196135425426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A359676 (n + 1) + 1).toNat

end

end A359682.P10827589196135425426

/-! ## A359682.P3507411709209659495

`A123108(A359676(n+1)+1)`
-/

namespace A359682.P3507411709209659495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A359676 (n + 1) + 1).toNat

end

end A359682.P3507411709209659495

/-! ## A359682.P2597834017057984654

`A008619(A359676(n+1)-1)`
-/

namespace A359682.P2597834017057984654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A359676 (n + 1) - 1).toNat

end

end A359682.P2597834017057984654

/-! ## A359682.P16307239658597325027

`A359676(n+1)/A036452(n+1)`
-/

namespace A359682.P16307239658597325027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359676 (n + 1) : ℚ) / (A036452 (n + 1) : ℚ)

end

end A359682.P16307239658597325027

/-! ## A359682.P11685902140321917122

`A359676(n+1)/A036453(n+1)`
-/

namespace A359682.P11685902140321917122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359676 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A359682.P11685902140321917122

/-!
# A359683: Greatest positive integer whose reversed (weakly decreasing) prime indices have weighted sum (A318283) equal to n.

The programs for A359683, there is no canonical definition to state claims against.
-/

/-! ## A359683.P17648962022938550838

`record[A325163(record[A325412(n)])]`
-/

namespace A359683.P17648962022938550838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325163 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359683.P17648962022938550838

/-! ## A359683.P4044830013878005590

`∑[A001227(A133267(n+2))]`
-/

namespace A359683.P4044830013878005590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A133267 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359683.P4044830013878005590

/-! ## A359683.P15211136611831370405

`record[A325163(A361966(n+1))]`
-/

namespace A359683.P15211136611831370405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325163 (A361966 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359683.P15211136611831370405

/-! ## A359683.P5888545024542814968

`record[A353270(n+1)%A196252(n+1)]`
-/

namespace A359683.P5888545024542814968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353270 (n + 1)) (A196252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359683.P5888545024542814968

/-! ## A359683.P17261253755943649691

`A258847(n)+A135010(A113370(2*(n+1)))`
-/

namespace A359683.P17261253755943649691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258847 n + A135010 (A113370 (2 * (n + 1))).toNat

end

end A359683.P17261253755943649691

/-!
# A359684: Greatest prime dividing 2^n - n for n>=2; a(1) = 1.

The programs for A359684, the canonical program `A359684.P9882135917607383111` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359684 has offset 1).

The definition of A359684 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359684.P9882135917607383111

`A006530(A000325(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A359684

/-- `A006530(A000325(n+1))` -/
def P9882135917607383111.Spec : Prop :=
  ∀ n, P9882135917607383111.a n = A359684 (n + 1)

theorem P9882135917607383111.correct : P9882135917607383111.Spec := by
  intro n
  simp only [A359684, Nat.add_sub_cancel]

end A359684

/-! ## A359684.P16719310500204608265

`A006530(∑[2^n]-n)`
-/

namespace A359684.P16719310500204608265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A359684.P16719310500204608265

namespace A359684

/-- `A006530(∑[2^n]-n)` -/
def P16719310500204608265.Spec : Prop :=
  ∀ n, P16719310500204608265.a n = A359684 (n + 1)

end A359684

/-! ## A359684.P3284167322196250304

`∏{d}[A006530(2^(n+1)-(n+1)), #]`
-/

namespace A359684.P3284167322196250304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ (n + 1) - (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A359684.P3284167322196250304

namespace A359684

/-- `∏{d}[A006530(2^(n+1)-(n+1)), #]` -/
def P3284167322196250304.Spec : Prop :=
  ∀ n, (P3284167322196250304.a n : ℤ) = A359684 (n + 1)

end A359684

/-! ## A359684.P1741776636043087899

`A034699(∏{p}[∑[A000225(n)]+1, #])`
-/

namespace A359684.P1741776636043087899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A359684.P1741776636043087899

namespace A359684

/-- `A034699(∏{p}[∑[A000225(n)]+1, #])` -/
def P1741776636043087899.Spec : Prop :=
  ∀ n, P1741776636043087899.a n = A359684 (n + 1)

end A359684

/-! ## A359684.P4554251771490128953

`A020639(A006530(∑[-or(1, -2^n)]))`
-/

namespace A359684.P4554251771490128953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A359684.P4554251771490128953

namespace A359684

/-- `A020639(A006530(∑[-or(1, -2^n)]))` -/
def P4554251771490128953.Spec : Prop :=
  ∀ n, P4554251771490128953.a n = A359684 (n + 1)

end A359684

/-!
# A359685: Greatest prime dividing 2^n + n.

The programs for A359685, the canonical program `A359685.P428297861856561498` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359685 has offset 1).

The definition of A359685 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359685.P428297861856561498

`A006530(A006127(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A359685

/-- `A006530(A006127(n+1))` -/
def P428297861856561498.Spec : Prop :=
  ∀ n, P428297861856561498.a n = A359685 (n + 1)

theorem P428297861856561498.correct : P428297861856561498.Spec := by
  intro n
  simp only [A359685, Nat.add_sub_cancel]

end A359685

/-! ## A359685.P1363052261855864734

`p?[A006530(2^n+n)]`
-/

namespace A359685.P1363052261855864734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359685.P1363052261855864734

namespace A359685

/-- `p?[A006530(2^n+n)]` -/
def P1363052261855864734.Spec : Prop :=
  ∀ n, P1363052261855864734.a n = A359685 (n + 1)

end A359685

/-! ## A359685.P16658203635970966851

`A006530(∑[2^n+1]+1)`
-/

namespace A359685.P16658203635970966851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A359685.P16658203635970966851

namespace A359685

/-- `A006530(∑[2^n+1]+1)` -/
def P16658203635970966851.Spec : Prop :=
  ∀ n, P16658203635970966851.a n = A359685 (n + 1)

end A359685

/-! ## A359685.P6268909016268119779

`or(1, A006530(2^(n+1)+n+1))`
-/

namespace A359685.P6268909016268119779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (2 ^ (n + 1) + (n + 1)))

end

end A359685.P6268909016268119779

namespace A359685

/-- `or(1, A006530(2^(n+1)+n+1))` -/
def P6268909016268119779.Spec : Prop :=
  ∀ n, P6268909016268119779.a n = A359685 (n + 1)

end A359685

/-! ## A359685.P6283599471479547783

`∏{p}[A006530(A188917(2*(n+1))), #]`
-/

namespace A359685.P6283599471479547783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A188917 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A359685.P6283599471479547783

namespace A359685

/-- `∏{p}[A006530(A188917(2*(n+1))), #]` -/
def P6283599471479547783.Spec : Prop :=
  ∀ n, (P6283599471479547783.a n : ℤ) = A359685 (n + 1)

end A359685

/-!
# A359689: a(n) is the number of free polyiamonds of n cells with chessboard coloring.

The programs for A359689, there is no canonical definition to state claims against.
-/

/-! ## A359689.P8332738553712210677

`A161205(A321608(abs(1-n)+1))`
-/

namespace A359689.P8332738553712210677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A321608 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A359689.P8332738553712210677

/-! ## A359689.P6101930088076610671

`A161205(A321608(n)+A035363(n))`
-/

namespace A359689.P6101930088076610671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A321608 n + A035363 n).toNat

end

end A359689.P6101930088076610671

/-!
# A359690: Number of vertices in a regular drawing of a complete bipartite graph where the vertex positions on each part equal the Farey series of order n.

The programs for A359690, there is no canonical definition to state claims against.
-/

/-! ## A359690.P2085005370083209471

`A359693(n+1)-A359692(n+1)+1`
-/

namespace A359690.P2085005370083209471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359693 (n + 1) - A359692 (n + 1) + 1

end

end A359690.P2085005370083209471

/-! ## A359690.P17128683089315726353

`A005728(n+1)+A359691(n+1)+A005728(n+1)`
-/

namespace A359690.P17128683089315726353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) + (A359691 (n + 1) + A005728 (n + 1))

end

end A359690.P17128683089315726353

/-!
# A359691: Number of crossings in a regular drawing of a complete bipartite graph where the vertex positions on each part equal the Farey series of order n.

The programs for A359691, there is no canonical definition to state claims against.
-/

/-! ## A359691.P7175161124691853422

`A359690(n+1)-2*A005728(n+1)`
-/

namespace A359691.P7175161124691853422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359690 (n + 1) - 2 * A005728 (n + 1)

end

end A359691.P7175161124691853422

/-! ## A359691.P13090157159893510221

`A099377(A359690(n+1)-A100484(n+1))`
-/

namespace A359691.P13090157159893510221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A359690 (n + 1) - A100484 (n + 1)).toNat

end

end A359691.P13090157159893510221

/-!
# A359692: Number of regions in a regular drawing of a complete bipartite graph where the vertex positions on each part equal the Farey series of order n.

The programs for A359692, there is no canonical definition to state claims against.
-/

/-! ## A359692.P3971335908387208845

`A359693(n+1)-A359690(n+1)+1`
-/

namespace A359692.P3971335908387208845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359693 (n + 1) - A359690 (n + 1) + 1

end

end A359692.P3971335908387208845

/-! ## A359692.P16669859116698820662

`A359693(n+1)-A199969(A359690(n+1))`
-/

namespace A359692.P16669859116698820662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359693 (n + 1) - A199969 (A359690 (n + 1)).toNat

end

end A359692.P16669859116698820662

/-!
# A359695: Numbers k such that 29^k - 2 is prime.

The programs for A359695, there is no canonical definition to state claims against.
-/

/-! ## A359695.P8798744441047563749

`A034884(A376785(n))`
-/

namespace A359695.P8798744441047563749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (A376785 n).toNat

end

end A359695.P8798744441047563749

/-! ## A359695.P15343153245558621294

`∩[A164160(n), A173144(n+1)]`
-/

namespace A359695.P15343153245558621294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359695.P15343153245558621294

/-!
# A359696: a(n) is the number of points with integer coordinates located between the x-axis and the graph of the function y = n^3 / (n^2 + x^2).

The programs for A359696, there is no canonical definition to state claims against.
-/

/-! ## A359696.P8749899829233874783

`∑[∑[A034444(A358615(n+1))]]`
-/

namespace A359696.P8749899829233874783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A358615 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359696.P8749899829233874783

/-! ## A359696.P8677302423401115233

`A083910(A104350(n+1))+A000217(2*n+1)`
-/

namespace A359696.P8677302423401115233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (A104350 (n + 1)).toNat + A000217 (2 * n + 1)

end

end A359696.P8677302423401115233

/-! ## A359696.P2315910896072598274

`∑[∑[A000005(A124465(n))]]`
-/

namespace A359696.P2315910896072598274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A124465 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359696.P2315910896072598274

/-! ## A359696.P3486031256650069648

`∑[∑[A001227(A060495(3*n))]]`
-/

namespace A359696.P3486031256650069648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A060495 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359696.P3486031256650069648

/-!
# A359697: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is carryless product n X k base 10.

The programs for A359697, there is no canonical definition to state claims against.
-/

/-! ## A359697.P7627993634709688324

`A010879(A084854(n+1)*A084855(n+1))`
-/

namespace A359697.P7627993634709688324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A084854 (n + 1) * A084855 (n + 1)).toNat

end

end A359697.P7627993634709688324

/-! ## A359697.P16160608056998154069

`A010879(A075362(n+1)/A333768(2*n+1))`
-/

namespace A359697.P16160608056998154069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A075362 (n + 1) : ℚ) / (A333768 (2 * n + 1) : ℚ))).toNat

end

end A359697.P16160608056998154069

/-! ## A359697.P13692777435995557239

`A010879(A075362(n+1)^A333768(2*n+3))`
-/

namespace A359697.P13692777435995557239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A075362 (n + 1) : ℚ) ^ (A333768 (2 * n + 3) : ℤ))).toNat

end

end A359697.P13692777435995557239

/-! ## A359697.P5609455152897763300

`A010879(A075362(n+1)%A060355(n+1))`
-/

namespace A359697.P5609455152897763300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Int.tmod (A075362 (n + 1)) (A060355 (n + 1))).toNat

end

end A359697.P5609455152897763300

/-! ## A359697.P11489865804899296998

`A000005(A100851(n))%10`
-/

namespace A359697.P11489865804899296998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A100851 n).toNat) 10

end

end A359697.P11489865804899296998

