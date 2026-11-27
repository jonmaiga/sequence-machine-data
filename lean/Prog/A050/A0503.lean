import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A050301: Matrix 7th power of partition triangle A008284.

The programs for A050301, there is no canonical definition to state claims against.
-/

/-! ## A050301.P9748188712136779092

`A000416((A142048(n)+1)/2)`
-/

namespace A050301.P9748188712136779092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000416 (SequenceMachineLib.roundAway ((A142048 n + 1 : ℚ) / 2)).toNat

end

end A050301.P9748188712136779092

/-! ## A050301.P1584152989559138345

`A024207((row(n)+1-col(n))%A083765(n+1))`
-/

namespace A050301.P1584152989559138345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024207 (Int.tmod ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) (A083765 (n + 1))).toNat

end

end A050301.P1584152989559138345

/-!
# A050302: Matrix 8th power of partition triangle A008284.

The programs for A050302, there is no canonical definition to state claims against.
-/

/-! ## A050302.P10539783217097123167

`A047368(2^A142048(n))`
-/

namespace A050302.P10539783217097123167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A142048 n : ℤ))).toNat

end

end A050302.P10539783217097123167

/-! ## A050302.P10373842756717647637

`A000427(A376662(n)+A268820(n))`
-/

namespace A050302.P10373842756717647637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000427 (A376662 n + A268820 n).toNat

end

end A050302.P10373842756717647637

/-! ## A050302.P16474400159425240384

`A083597(A025581(n)^A056940(n))`
-/

namespace A050302.P16474400159425240384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083597 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A056940 n : ℤ))).toNat

end

end A050302.P16474400159425240384

/-!
# A050303: Matrix 9th power of partition triangle A008284.

The programs for A050303, there is no canonical definition to state claims against.
-/

/-! ## A050303.P3190477099756766253

`A073188(19^A108887(n))`
-/

namespace A050303.P3190477099756766253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A108887 n : ℤ))).toNat

end

end A050303.P3190477099756766253

/-! ## A050303.P12397977180152060307

`A024209(A249821(n+1)%A128394(2*n+1))`
-/

namespace A050303.P12397977180152060307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024209 (Int.tmod (A249821 (n + 1)) (A128394 (2 * n + 1))).toNat

end

end A050303.P12397977180152060307

/-!
# A050304: Matrix 10th power of partition triangle A008284.

The programs for A050304, there is no canonical definition to state claims against.
-/

/-! ## A050304.P12946111934249455043

`A024210(A052313(n)^A051724(n))`
-/

namespace A050304.P12946111934249455043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024210 (SequenceMachineLib.roundAway ((A052313 n : ℚ) ^ (A051724 n : ℤ))).toNat

end

end A050304.P12946111934249455043

/-!
# A050314: Triangle: a(n,k) = number of partitions of n whose xor-sum is k.

The programs for A050314, there is no canonical definition to state claims against.
-/

/-! ## A050314.P11832889400422649215

`A055640(A138245(n+1)*A147309(n))`
-/

namespace A050314.P11832889400422649215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A138245 (n + 1) * A147309 n).toNat

end

end A050314.P11832889400422649215

/-! ## A050314.P8141653109261299397

`A118458(A153585(n)+A128890(n))`
-/

namespace A050314.P8141653109261299397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A153585 n + A128890 n).toNat

end

end A050314.P8141653109261299397

/-! ## A050314.P1573508401096556059

`A069010(A156792(n)*A242653(n))`
-/

namespace A050314.P1573508401096556059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A156792 n * A242653 n).toNat

end

end A050314.P1573508401096556059

/-! ## A050314.P7804583080255019451

`A176725(A323898(n+2)*A357136(n))`
-/

namespace A050314.P7804583080255019451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A323898 (n + 2) * A357136 n).toNat

end

end A050314.P7804583080255019451

/-! ## A050314.P12460288906366782356

`A268318(A298610(n))`
-/

namespace A050314.P12460288906366782356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268318 (A298610 n).toNat

end

end A050314.P12460288906366782356

/-!
# A050315: Main diagonal of A050314.

The programs for A050315, the canonical program `A050315.P9779618519270750145` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050315 has offset 0).

The definition of A050315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050315.P9779618519270750145

`A000110(A000120(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050315

/-- `A000110(A000120(n))` -/
def P9779618519270750145.Spec : Prop :=
  ∀ n, P9779618519270750145.a n = A050315 n

theorem P9779618519270750145.correct : P9779618519270750145.Spec := by
  intro n
  simp only [A050315]

end A050315

/-! ## A050315.P5153136235480398857

`A000110(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A050315.P5153136235480398857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050315.P5153136235480398857

namespace A050315

/-- `A000110(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P5153136235480398857.Spec : Prop :=
  ∀ n, P5153136235480398857.a n = A050315 n

end A050315

/-! ## A050315.P6115266015429393300

`A104725(A001316(n))`
-/

namespace A050315.P6115266015429393300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A001316 n).toNat

end

end A050315.P6115266015429393300

namespace A050315

/-- `A104725(A001316(n))` -/
def P6115266015429393300.Spec : Prop :=
  ∀ n, P6115266015429393300.a n = A050315 n

end A050315

/-! ## A050315.P12571342608120643020

`A325095(A088512(n))`
-/

namespace A050315.P12571342608120643020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325095 (A088512 n).toNat

end

end A050315.P12571342608120643020

namespace A050315

/-- `A325095(A088512(n))` -/
def P12571342608120643020.Spec : Prop :=
  ∀ n, P12571342608120643020.a n = A050315 n

end A050315

/-! ## A050315.P5915045356115896544

`A287214(2*A000120(n)²)`
-/

namespace A050315.P5915045356115896544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (2 * A000120 n ^ 2).toNat

end

end A050315.P5915045356115896544

namespace A050315

/-- `A287214(2*A000120(n)²)` -/
def P5915045356115896544.Spec : Prop :=
  ∀ n, P5915045356115896544.a n = A050315 n

end A050315

/-! ## A050315.P7304648004547578312

`A325096(2*(A088512(n)+1))`
-/

namespace A050315.P7304648004547578312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325096 (2 * (A088512 n + 1)).toNat

end

end A050315.P7304648004547578312

namespace A050315

/-- `A325096(2*(A088512(n)+1))` -/
def P7304648004547578312.Spec : Prop :=
  ∀ n, P7304648004547578312.a n = A050315 n

end A050315

/-! ## A050315.P10427402362718448521

`A165195(A066194(n+1))`
-/

namespace A050315.P10427402362718448521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165195 (A066194 (n + 1)).toNat

end

end A050315.P10427402362718448521

namespace A050315

/-- `A165195(A066194(n+1))` -/
def P10427402362718448521.Spec : Prop :=
  ∀ n, P10427402362718448521.a n = A050315 n

end A050315

/-! ## A050315.P11426496636822352413

`A325096(A088512(2*n+1))`
-/

namespace A050315.P11426496636822352413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325096 (A088512 (2 * n + 1)).toNat

end

end A050315.P11426496636822352413

namespace A050315

/-- `A325096(A088512(2*n+1))` -/
def P11426496636822352413.Spec : Prop :=
  ∀ n, P11426496636822352413.a n = A050315 n

end A050315

/-! ## A050315.P17686225205004819430

`A307505(∑[n]+n)`
-/

namespace A050315.P17686225205004819430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307505 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A050315.P17686225205004819430

namespace A050315

/-- `A307505(∑[n]+n)` -/
def P17686225205004819430.Spec : Prop :=
  ∀ n, P17686225205004819430.a n = A050315 n

end A050315

/-! ## A050315.P6584494087548641163

`A050314(∑[n]+n)`
-/

namespace A050315.P6584494087548641163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A050315.P6584494087548641163

namespace A050315

/-- `A050314(∑[n]+n)` -/
def P6584494087548641163.Spec : Prop :=
  ∀ n, P6584494087548641163.a n = A050315 n

end A050315

/-! ## A050315.P401267421342415260

`A307431(∑[n]+n)`
-/

namespace A050315.P401267421342415260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307431 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A050315.P401267421342415260

namespace A050315

/-- `A307431(∑[n]+n)` -/
def P401267421342415260.Spec : Prop :=
  ∀ n, P401267421342415260.a n = A050315 n

end A050315

/-! ## A050315.P13179229803149931170

`A401695(A052330(n))`
-/

namespace A050315.P13179229803149931170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401695 (A052330 n).toNat

end

end A050315.P13179229803149931170

namespace A050315

/-- `A401695(A052330(n))` -/
def P13179229803149931170.Spec : Prop :=
  ∀ n, P13179229803149931170.a n = A050315 n

end A050315

/-!
# A050316: a(n) = A050314(2n+1,1): column 1 of triangle.

The programs for A050316, there is no canonical definition to state claims against.
-/

/-! ## A050316.P18017009004533626221

`A050314(C(2*n+1+1, 2)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050316.P18017009004533626221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (Nat.choose (2 * n + 1 + 1) 2 + 1)

end

end A050316.P18017009004533626221

/-! ## A050316.P13151702640676225795

`A050314(∑[4*n+1]+1)`
-/

namespace A050316.P13151702640676225795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050316.P13151702640676225795

/-!
# A050317: Number of ways n is a product of partition numbers > 1.

The programs for A050317, there is no canonical definition to state claims against.
-/

/-! ## A050317.P3623977612238460237

`A194325(2^A002726(n+1))`
-/

namespace A050317.P3623977612238460237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194325 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002726 (n + 1) : ℤ))).toNat

end

end A050317.P3623977612238460237

/-! ## A050317.P17991937280090942953

`A000122(A331908(n+1)%A305975(n+1))`
-/

namespace A050317.P17991937280090942953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.tmod (A331908 (n + 1)) (A305975 (n + 1))).toNat

end

end A050317.P17991937280090942953

/-! ## A050317.P4580439569004018831

`A176820(A363521(n+1))`
-/

namespace A050317.P4580439569004018831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176820 (A363521 (n + 1)).toNat

end

end A050317.P4580439569004018831

/-!
# A050318: a(n) is the number of ways to write n as an mterm, where an mterm is an unordered sum which is either 2, or 1 + an unordered product of mterms.

The programs for A050318, there is no canonical definition to state claims against.
-/

/-! ## A050318.P898245839662672875

`A050319(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A050318.P898245839662672875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050319 (n + 2) + a (n - 1)

end

end A050318.P898245839662672875

/-! ## A050318.P2153548566796892545

`∑[A050319(C(3, n²+1)+n+2)]`
-/

namespace A050318.P2153548566796892545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (Nat.choose 3 (n ^ 2 + 1) + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050318.P2153548566796892545

/-! ## A050318.P5529289660630623456

`∑[A050319(T(1, T(n-1,k+1))+n+2)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A050318.P5529289660630623456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  A050319 (SequenceMachineLib.triAt f1 1 (SequenceMachineLib.triUpRight f1 n) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050318.P5529289660630623456

/-! ## A050318.P609902100181553604

`∑[A050319(floor(3/C(n+7, 7))+n+2)]`
-/

namespace A050318.P609902100181553604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (⌊3 / (Nat.choose (n + 7) 7 : ℚ)⌋ + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050318.P609902100181553604

/-! ## A050318.P16673585301430983291

`∑[A050319(A123108(2*n)+2)]+1`
-/

namespace A050318.P16673585301430983291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (A123108 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050318.P16673585301430983291

/-! ## A050318.P3541451947573502876

`∑[A050319(A000007(n)+2+n)]+1`
-/

namespace A050318.P3541451947573502876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (A000007 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050318.P3541451947573502876

/-! ## A050318.P12884254548526640933

`∑[A050319(n+3)]+1-A050319(n+3)`
-/

namespace A050318.P12884254548526640933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A050319 (n + 3))

end

end A050318.P12884254548526640933

/-! ## A050318.P18024853950337473528

`∑[A050319(n+3)]-A023443(A050319(n+3))`
-/

namespace A050318.P18024853950337473528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A050319 (n + 3)).toNat

end

end A050318.P18024853950337473528

/-!
# A050319: Differences of A050318.

The programs for A050319, there is no canonical definition to state claims against.
-/

/-! ## A050319.P3143417129001835346

`Δ[A050318(2+n)]`
-/

namespace A050319.P3143417129001835346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050318 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050319.P3143417129001835346

/-! ## A050319.P1778061535791735011

`A050318(n+3)-A050318(n+2)`
-/

namespace A050319.P1778061535791735011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050318 (n + 3) - A050318 (n + 2)

end

end A050319.P1778061535791735011

/-! ## A050319.P1120638774677669351

`Δ[A130841(n+1)%∏{p}[A000051(n)+1, #]]`
-/

namespace A050319.P1120638774677669351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130841 (n + 1)) ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050319.P1120638774677669351

/-! ## A050319.P4386552700880493873

`A375359(A051190(n+2))`
-/

namespace A050319.P4386552700880493873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A051190 (n + 2)).toNat

end

end A050319.P4386552700880493873

/-! ## A050319.P5863104521264124004

`A262202(A005179(n+2))`
-/

namespace A050319.P5863104521264124004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A005179 (n + 2)).toNat

end

end A050319.P5863104521264124004

/-!
# A050320: Number of ways n is a product of squarefree numbers > 1.

The programs for A050320, there is no canonical definition to state claims against.
-/

/-! ## A050320.P14851358018424932653

`A050325(A101296(n+1))`
-/

namespace A050320.P14851358018424932653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050325 (A101296 (n + 1)).toNat

end

end A050320.P14851358018424932653

/-! ## A050320.P5301853473064661334

`∑{d}[1+n, A322075(#)]`
-/

namespace A050320.P5301853473064661334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322075 d

end

end A050320.P5301853473064661334

/-! ## A050320.P16299653301942928939

`A318360(A181819(1+n))`
-/

namespace A050320.P16299653301942928939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A181819 (1 + n)).toNat

end

end A050320.P16299653301942928939

/-! ## A050320.P2203273547012449901

`A094280(A320655((n+1)²))`
-/

namespace A050320.P2203273547012449901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A320655 ((n + 1) ^ 2)).toNat

end

end A050320.P2203273547012449901

/-! ## A050320.P12317138728920181360

`A318809(n+1)+A079275(n+1)`
-/

namespace A050320.P12317138728920181360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1) + A079275 (n + 1)

end

end A050320.P12317138728920181360

/-! ## A050320.P4115943356467850165

`A368414(n+1)-A391713(n+1)`
-/

namespace A050320.P4115943356467850165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (n + 1) - A391713 (n + 1)

end

end A050320.P4115943356467850165

/-! ## A050320.P15499251399754955606

`xor(A335520(n+1), A339887(n+1))`
-/

namespace A050320.P15499251399754955606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A335520 (n + 1)) (A339887 (n + 1))

end

end A050320.P15499251399754955606

/-! ## A050320.P12365661220091807195

`A339887((n+1)*A320732(A320732(n+1)))`
-/

namespace A050320.P12365661220091807195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339887 ((n + 1 : ℤ) * A320732 (A320732 (n + 1)).toNat).toNat

end

end A050320.P12365661220091807195

/-!
# A050321: k such that A050292(k) is different from A004396(k).

The programs for A050321, the canonical program `A050321.P13414595198554501131` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050321 has offset 0).

The definition of A050321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050321.P13414595198554501131

`lt[1, abs(A065359(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050321

/-- `lt[1, abs(A065359(n))]` -/
def P13414595198554501131.Spec : Prop :=
  ∀ n, (P13414595198554501131.a n : ℤ) = A050321 n

theorem P13414595198554501131.correct : P13414595198554501131.Spec := by
  intro n
  simp only [A050321]

end A050321

/-! ## A050321.P15652917115707994217

`lt[1, A065359(2*n)²]`
-/

namespace A050321.P15652917115707994217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P15652917115707994217

namespace A050321

/-- `lt[1, A065359(2*n)²]` -/
def P15652917115707994217.Spec : Prop :=
  ∀ n, (P15652917115707994217.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P7063634702649274679

`lt[1, A065359(1+n)²]+1`
-/

namespace A050321.P7063634702649274679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050321.P7063634702649274679

namespace A050321

/-- `lt[1, A065359(1+n)²]+1` -/
def P7063634702649274679.Spec : Prop :=
  ∀ n, (P7063634702649274679.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P2288934791306558247

`eq[1, A043545(A065359(n)²)]`
-/

namespace A050321.P2288934791306558247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A065359 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050321.P2288934791306558247

namespace A050321

/-- `eq[1, A043545(A065359(n)²)]` -/
def P2288934791306558247.Spec : Prop :=
  ∀ n, (P2288934791306558247.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P16695260336271484080

`eq[1, A141044(A065359(n)²)]`
-/

namespace A050321.P16695260336271484080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A065359 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050321.P16695260336271484080

namespace A050321

/-- `eq[1, A141044(A065359(n)²)]` -/
def P16695260336271484080.Spec : Prop :=
  ∀ n, (P16695260336271484080.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P17627705927979929620

`lt[1-A065359(n), (1-A065359(n))*A065359(2*n)]`
-/

namespace A050321.P17627705927979929620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A065359 n) * A065359 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050321.P17627705927979929620

namespace A050321

/-- `lt[1-A065359(n), (1-A065359(n))*A065359(2*n)]` -/
def P17627705927979929620.Spec : Prop :=
  ∀ n, (P17627705927979929620.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P16990948502451679582

`lt[A065359(2*n+1), A065359(2*n+1)*A065359(2*n)]`
-/

namespace A050321.P16990948502451679582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n + 1) * A065359 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050321.P16990948502451679582

namespace A050321

/-- `lt[A065359(2*n+1), A065359(2*n+1)*A065359(2*n)]` -/
def P16990948502451679582.Spec : Prop :=
  ∀ n, (P16990948502451679582.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P2924778856205533607

`comp[floor(floor(A039004(n+1)/2)/2)]`
-/

namespace A050321.P2924778856205533607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A039004 (n + 1) : ℚ) / 2⌋ : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050321.P2924778856205533607

namespace A050321

/-- `comp[floor(floor(A039004(n+1)/2)/2)]` -/
def P2924778856205533607.Spec : Prop :=
  ∀ n, (P2924778856205533607.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P17484763331793181148

`lt[1, abs(A345927(n))]`
-/

namespace A050321.P17484763331793181148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A345927 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P17484763331793181148

namespace A050321

/-- `lt[1, abs(A345927(n))]` -/
def P17484763331793181148.Spec : Prop :=
  ∀ n, (P17484763331793181148.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P15946233519889139049

`lt[1, abs(A160381(n)-A160382(n))]`
-/

namespace A050321.P15946233519889139049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160381 n - A160382 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P15946233519889139049

namespace A050321

/-- `lt[1, abs(A160381(n)-A160382(n))]` -/
def P15946233519889139049.Spec : Prop :=
  ∀ n, (P15946233519889139049.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P32131549773691683

`eq[A130706(A065359(n)²), A130706(n+1)]`
-/

namespace A050321.P32131549773691683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A065359 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050321.P32131549773691683

namespace A050321

/-- `eq[A130706(A065359(n)²), A130706(n+1)]` -/
def P32131549773691683.Spec : Prop :=
  ∀ n, (P32131549773691683.a n : ℤ) = A050321 n

end A050321

/-!
# A050322: Number of factorizations indexed by prime signatures: A001055(A025487).

The programs for A050322, there is no canonical definition to state claims against.
-/

/-! ## A050322.P12412766793624373791

`A001055(A025487(n+1))`
-/

namespace A050322.P12412766793624373791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A025487 (n + 1)).toNat

end

end A050322.P12412766793624373791

/-! ## A050322.P14063027180392798580

`A331049(A331119(1+n))`
-/

namespace A050322.P14063027180392798580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331049 (A331119 (1 + n)).toNat

end

end A050322.P14063027180392798580

/-! ## A050322.P8817115820598554064

`A318284(A181820(n+1))`
-/

namespace A050322.P8817115820598554064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181820 (n + 1)).toNat

end

end A050322.P8817115820598554064

/-! ## A050322.P2071862237418789495

`A349907(A233819(n+1))`
-/

namespace A050322.P2071862237418789495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (A233819 (n + 1)).toNat

end

end A050322.P2071862237418789495

/-!
# A050323: Number of factorizations into distinct factors indexed by prime signatures: A045778(A025487).

The programs for A050323, there is no canonical definition to state claims against.
-/

/-! ## A050323.P693639353034455154

`A045778(A025487(n+1))`
-/

namespace A050323.P693639353034455154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A025487 (n + 1)).toNat

end

end A050323.P693639353034455154

/-! ## A050323.P2323220243732249614

`A318286(A181820(1+n))`
-/

namespace A050323.P2323220243732249614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A181820 (1 + n)).toNat

end

end A050323.P2323220243732249614

/-!
# A050324: Number of ordered factorizations indexed by prime signatures: A074206(A025487).

The programs for A050324, there is no canonical definition to state claims against.
-/

/-! ## A050324.P13775378670091793215

`A074206(A025487(n+1))`
-/

namespace A050324.P13775378670091793215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A025487 (n + 1)).toNat

end

end A050324.P13775378670091793215

/-! ## A050324.P10731881687831696717

`A002033(A025487(n+1)-1)`
-/

namespace A050324.P10731881687831696717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A025487 (n + 1) - 1).toNat

end

end A050324.P10731881687831696717

/-! ## A050324.P16032664869846237352

`∑{d}[A025487(n+1), A174725(#)]`
-/

namespace A050324.P16032664869846237352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174725 d

end

end A050324.P16032664869846237352

/-! ## A050324.P17123015066277227124

`A361665(A181820(n+1))`
-/

namespace A050324.P17123015066277227124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361665 (A181820 (n + 1)).toNat

end

end A050324.P17123015066277227124

/-! ## A050324.P857312000298002202

`A308077(A233819(n+1))`
-/

namespace A050324.P857312000298002202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308077 (A233819 (n + 1)).toNat

end

end A050324.P857312000298002202

/-!
# A050325: Number of factorizations into squarefree factors indexed by prime signatures: A050320(A025487).

The programs for A050325, there is no canonical definition to state claims against.
-/

/-! ## A050325.P417980251133207613

`A050320(A025487(n+1))`
-/

namespace A050325.P417980251133207613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A025487 (n + 1)).toNat

end

end A050325.P417980251133207613

/-! ## A050325.P17342440784947031964

`A318360(A181820(1+n))`
-/

namespace A050325.P17342440784947031964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A181820 (1 + n)).toNat

end

end A050325.P17342440784947031964

/-! ## A050325.P3528362060465950529

`A381078(A233819(n+1))`
-/

namespace A050325.P3528362060465950529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381078 (A233819 (n + 1)).toNat

end

end A050325.P3528362060465950529

/-! ## A050325.P4135814236140985740

`A096370(A216604(n))`
-/

namespace A050325.P4135814236140985740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096370 (A216604 n).toNat

end

end A050325.P4135814236140985740

/-! ## A050325.P213374890122912736

`A117546(A295056(n))`
-/

namespace A050325.P213374890122912736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 (A295056 n).toNat

end

end A050325.P213374890122912736

/-!
# A050326: Number of factorizations of n into distinct squarefree numbers > 1.

The programs for A050326, there is no canonical definition to state claims against.
-/

/-! ## A050326.P7783233658148393811

`A050327(A101296(n+1))`
-/

namespace A050326.P7783233658148393811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050327 (A101296 (n + 1)).toNat

end

end A050326.P7783233658148393811

/-! ## A050326.P11299569256333658781

`A318361(A181819(1+n))`
-/

namespace A050326.P11299569256333658781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (A181819 (1 + n)).toNat

end

end A050326.P11299569256333658781

/-! ## A050326.P8207117970853421624

`A381633(A318885(n+1))`
-/

namespace A050326.P8207117970853421624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381633 (A318885 (n + 1)).toNat

end

end A050326.P8207117970853421624

/-! ## A050326.P15248036899297198804

`A318361(A038036(n+1))`
-/

namespace A050326.P15248036899297198804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (A038036 (n + 1)).toNat

end

end A050326.P15248036899297198804

/-!
# A050327: Number of factorizations into distinct squarefree factors indexed by prime signatures. A050326(A025487).

The programs for A050327, there is no canonical definition to state claims against.
-/

/-! ## A050327.P16035908646004708576

`A050326(A025487(n+1))`
-/

namespace A050327.P16035908646004708576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A025487 (n + 1)).toNat

end

end A050327.P16035908646004708576

/-! ## A050327.P12356818559651014155

`A318361(A181820(1+n))`
-/

namespace A050327.P12356818559651014155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (A181820 (1 + n)).toNat

end

end A050327.P12356818559651014155

/-! ## A050327.P14611731182266852457

`A381441(A233819(n+1))`
-/

namespace A050327.P14611731182266852457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381441 (A233819 (n + 1)).toNat

end

end A050327.P14611731182266852457

/-! ## A050327.P18055488143828907090

`A261209(A117822(n))`
-/

namespace A050327.P18055488143828907090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261209 (A117822 n).toNat

end

end A050327.P18055488143828907090

/-!
# A050328: Number of ordered factorizations of n into squarefree numbers > 1.

The programs for A050328, there is no canonical definition to state claims against.
-/

/-! ## A050328.P11686063318784102748

`abs(A114006(1+n))`
-/

namespace A050328.P11686063318784102748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (1 + n)|

end

end A050328.P11686063318784102748

/-! ## A050328.P1194754325798578898

`abs(∑{d}[1+n, A114005(#)])`
-/

namespace A050328.P1194754325798578898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A114005 d|

end

end A050328.P1194754325798578898

/-! ## A050328.P2425940172996556279

`abs(1-2*A317581(n+1))`
-/

namespace A050328.P2425940172996556279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A317581 (n + 1)|

end

end A050328.P2425940172996556279

/-! ## A050328.P5138219319063724300

`A050329(A101296(n+1))`
-/

namespace A050328.P5138219319063724300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050329 (A101296 (n + 1)).toNat

end

end A050328.P5138219319063724300

/-! ## A050328.P8722026947217311955

`gcd(A000038(n), A114006(n+1))`
-/

namespace A050328.P8722026947217311955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114006 (n + 1))

end

end A050328.P8722026947217311955

/-! ## A050328.P17189558066319742614

`lcm(A020985(n), A114006(n+1))`
-/

namespace A050328.P17189558066319742614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A114006 (n + 1))

end

end A050328.P17189558066319742614

/-! ## A050328.P12276731897806516029

`∑{d}[A114006(n+1), A000010(#)]`
-/

namespace A050328.P12276731897806516029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A050328.P12276731897806516029

/-! ## A050328.P5604016586082676906

`A008836(n+1)*A114006(n+1)`
-/

namespace A050328.P5604016586082676906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A114006 (n + 1)

end

end A050328.P5604016586082676906

/-! ## A050328.P8202427024701477728

`A008833(n+1)*A114006(n+1)/A358272(n+1)`
-/

namespace A050328.P8202427024701477728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) * A114006 (n + 1) : ℚ) / (A358272 (n + 1) : ℚ)

end

end A050328.P8202427024701477728

/-! ## A050328.P10074970881295285556

`A114006(n+1)*A359154(A003961(n+1))`
-/

namespace A050328.P10074970881295285556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (n + 1) * A359154 (A003961 (n + 1)).toNat

end

end A050328.P10074970881295285556

/-! ## A050328.P17768459502078593384

`A114006(A003961(n+1))/A008836(n+1)`
-/

namespace A050328.P17768459502078593384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114006 (A003961 (n + 1)).toNat : ℚ) / (A008836 (n + 1) : ℚ)

end

end A050328.P17768459502078593384

/-! ## A050328.P7309130043610944484

`gcd(A114005(n+1), A217858(n+1))`
-/

namespace A050328.P7309130043610944484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114005 (n + 1)) (A217858 (n + 1))

end

end A050328.P7309130043610944484

/-! ## A050328.P1253508350548956777

`gcd(A114005(n+1), A133221(n))`
-/

namespace A050328.P1253508350548956777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114005 (n + 1)) (A133221 n)

end

end A050328.P1253508350548956777

/-! ## A050328.P16590346640435693573

`gcd(A055634(n), A114005(n+1))`
-/

namespace A050328.P16590346640435693573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A114005 (n + 1))

end

end A050328.P16590346640435693573

/-!
# A050329: Number of ordered factorizations into squarefree factors indexed by prime signatures.

The programs for A050329, there is no canonical definition to state claims against.
-/

/-! ## A050329.P16393547880615210912

`A050328(A025487(n+1))`
-/

namespace A050329.P16393547880615210912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A025487 (n + 1)).toNat

end

end A050329.P16393547880615210912

/-! ## A050329.P12272093848367862275

`abs(A114006(record[A329899(n+1)]))`
-/

namespace A050329.P12272093848367862275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A050329.P12272093848367862275

/-! ## A050329.P6241182919860435161

`abs(A114006(record[A051466(n+2)]))`
-/

namespace A050329.P6241182919860435161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A050329.P6241182919860435161

/-! ## A050329.P18167253761481286583

`abs(A114006(lcm(2, A025487(n+1))))`
-/

namespace A050329.P18167253761481286583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (Int.lcm 2 (A025487 (n + 1)))|

end

end A050329.P18167253761481286583

/-! ## A050329.P1287743291455004512

`gcd(A000038(n), A114006(A025487(n+1)))`
-/

namespace A050329.P1287743291455004512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114006 (A025487 (n + 1)).toNat)

end

end A050329.P1287743291455004512

/-! ## A050329.P3104491274895084364

`∑{d}[A114006(A025487(n+1)), A000010(#)]`
-/

namespace A050329.P3104491274895084364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A050329.P3104491274895084364

/-!
# A050330: Number of factorizations of n into numbers with an odd number of prime factors.

The programs for A050330, there is no canonical definition to state claims against.
-/

/-! ## A050330.P9227806511670075989

`A050331(A101296(n+1))`
-/

namespace A050330.P9227806511670075989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050331 (A101296 (n + 1)).toNat

end

end A050330.P9227806511670075989

/-! ## A050330.P18394800007407183143

`A051889(A001055(n+1)%A074075(3*(n+1)))`
-/

namespace A050330.P18394800007407183143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.tmod (A001055 (n + 1)) (A074075 (3 * (n + 1)))).toNat

end

end A050330.P18394800007407183143

/-! ## A050330.P1751802082250454617

`floor((A066032(∑[n+1])+1)/4)+1`
-/

namespace A050330.P1751802082250454617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066032 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 4⌋ + 1

end

end A050330.P1751802082250454617

/-! ## A050330.P327026075949989747

`A002265(A066032(∑[n+1])+1)+1`
-/

namespace A050330.P327026075949989747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A066032 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat + 1

end

end A050330.P327026075949989747

/-! ## A050330.P7579131523122503810

`A048766(A002033(n)*A040000(n²))`
-/

namespace A050330.P7579131523122503810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002033 n * A040000 (n ^ 2)).toNat

end

end A050330.P7579131523122503810

/-! ## A050330.P6338452127885565445

`∑{d}[A118759(n+1), A276167(A001222(#))]+1`
-/

namespace A050330.P6338452127885565445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276167 (A001222 d).toNat + 1

end

end A050330.P6338452127885565445

/-! ## A050330.P4548949721052281525

`A001222(∏{d}[n+1, A276651(2^A001222(#)+2)])`
-/

namespace A050330.P4548949721052281525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n), A276651 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 d : ℤ) + 2)).toNat).toNat

end

end A050330.P4548949721052281525

/-! ## A050330.P8282683345648564931

`A003056(A252665(n+1)+A151878(n))`
-/

namespace A050330.P8282683345648564931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A252665 (n + 1) + A151878 n).toNat

end

end A050330.P8282683345648564931

/-! ## A050330.P16800910880969817397

`A051889(A305254(n+1))`
-/

namespace A050330.P16800910880969817397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A305254 (n + 1)).toNat

end

end A050330.P16800910880969817397

/-!
# A050331: Number of factorizations into numbers with an odd number of prime factors indexed by prime signatures. A050330(A025487).

The programs for A050331, there is no canonical definition to state claims against.
-/

/-! ## A050331.P2235218561078996682

`A050330(A025487(1+n))`
-/

namespace A050331.P2235218561078996682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (A025487 (1 + n)).toNat

end

end A050331.P2235218561078996682

/-!
# A050332: Number of factorizations of n into distinct numbers with an odd number of prime factors.

The programs for A050332, there is no canonical definition to state claims against.
-/

/-! ## A050332.P12871449585131585425

`A050333(A101296(n+1))`
-/

namespace A050332.P12871449585131585425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050333 (A101296 (n + 1)).toNat

end

end A050332.P12871449585131585425

/-! ## A050332.P15866904854417593036

`A332761(A051707(n+1))`
-/

namespace A050332.P15866904854417593036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332761 (A051707 (n + 1)).toNat

end

end A050332.P15866904854417593036

/-! ## A050332.P12967694417041314290

`A263833(A377304(n+1))`
-/

namespace A050332.P12967694417041314290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263833 (A377304 (n + 1)).toNat

end

end A050332.P12967694417041314290

/-! ## A050332.P1147131853068085133

`A307429(A000005(A000005(A130674(n+1))))`
-/

namespace A050332.P1147131853068085133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307429 (A000005 (A000005 (A130674 (n + 1)).toNat).toNat).toNat

end

end A050332.P1147131853068085133

/-!
# A050333: Number of factorizations into distinct numbers with an odd number of prime factors indexed by prime signatures. A050332(A025487).

The programs for A050333, there is no canonical definition to state claims against.
-/

/-! ## A050333.P9465921491832569231

`A050332(A025487(n+1))`
-/

namespace A050333.P9465921491832569231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (A025487 (n + 1)).toNat

end

end A050333.P9465921491832569231

/-!
# A050334: Number of ordered factorizations of n into numbers with an odd number of prime divisors (prime factors counted with multiplicity).

The programs for A050334, there is no canonical definition to state claims against.
-/

/-! ## A050334.P17618801512757660158

`A050335(A101296(n+1))`
-/

namespace A050334.P17618801512757660158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050335 (A101296 (n + 1)).toNat

end

end A050334.P17618801512757660158

/-! ## A050334.P14547811134896346531

`A008616(A339335(n+1)+A335434(n+1))`
-/

namespace A050334.P14547811134896346531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A339335 (n + 1) + A335434 (n + 1)).toNat

end

end A050334.P14547811134896346531

/-! ## A050334.P7270634189069110523

`A019446(A348610(A090108(n+1)))`
-/

namespace A050334.P7270634189069110523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A348610 (A090108 (n + 1)).toNat).toNat

end

end A050334.P7270634189069110523

/-! ## A050334.P16966322841128233269

`A020915(A348610(n+1)%A325415(n))`
-/

namespace A050334.P16966322841128233269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.tmod (A348610 (n + 1)) (A325415 n)).toNat

end

end A050334.P16966322841128233269

/-! ## A050334.P301228987104183842

`A048766(A052816(A007425(n+1)))`
-/

namespace A050334.P301228987104183842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A052816 (A007425 (n + 1)).toNat).toNat

end

end A050334.P301228987104183842

/-! ## A050334.P7636692810911638656

`A000196(A141740(A348610(n+1)))`
-/

namespace A050334.P7636692810911638656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A141740 (A348610 (n + 1)).toNat).toNat

end

end A050334.P7636692810911638656

/-!
# A050335: Number of ordered factorizations into numbers with an odd number of prime factors indexed by prime signatures: A050334(A025487).

The programs for A050335, there is no canonical definition to state claims against.
-/

/-! ## A050335.P17522370117567849936

`A050334(A025487(n+1))`
-/

namespace A050335.P17522370117567849936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (A025487 (n + 1)).toNat

end

end A050335.P17522370117567849936

/-!
# A050336: Number of ways of factoring n with one level of parentheses.

The programs for A050336, there is no canonical definition to state claims against.
-/

/-! ## A050336.P17430127989097667016

`A050337(A101296(n+1))`
-/

namespace A050336.P17430127989097667016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050337 (A101296 (n + 1)).toNat

end

end A050336.P17430127989097667016

/-! ## A050336.P5541609918161818084

`A332286(A105560(n+1))+A317144(A046523(n+1))`
-/

namespace A050336.P5541609918161818084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 (A105560 (n + 1)).toNat + A317144 (A046523 (n + 1)).toNat

end

end A050336.P5541609918161818084

/-! ## A050336.P2472526523507641822

`A335472(∑{e}[n+1, #])+A317144(n+1)`
-/

namespace A050336.P2472526523507641822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335472 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A317144 (n + 1)

end

end A050336.P2472526523507641822

/-! ## A050336.P7343498159717961899

`A317144(n+1)+A007326(A073093(n+1))`
-/

namespace A050336.P7343498159717961899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A007326 (A073093 (n + 1)).toNat

end

end A050336.P7343498159717961899

/-! ## A050336.P16208662737888060241

`A317144(n+1)+A026815(A255201(n+1))`
-/

namespace A050336.P16208662737888060241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A026815 (A255201 (n + 1)).toNat

end

end A050336.P16208662737888060241

/-! ## A050336.P2861802352952754990

`A317144(n+1)+A037901(A319786(n+1))`
-/

namespace A050336.P2861802352952754990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A037901 (A319786 (n + 1)).toNat

end

end A050336.P2861802352952754990

/-! ## A050336.P11237157667343510087

`A332286(A105560(n+1))+A317144(n+1)`
-/

namespace A050336.P11237157667343510087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 (A105560 (n + 1)).toNat + A317144 (n + 1)

end

end A050336.P11237157667343510087

/-! ## A050336.P2658537088206311183

`A317144(n+1)+A007326(A001222(n+1)+1)`
-/

namespace A050336.P2658537088206311183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A007326 (A001222 (n + 1) + 1).toNat

end

end A050336.P2658537088206311183

/-! ## A050336.P10858737990667065938

`A317144(n+1)+A185238(A061142(n+1))`
-/

namespace A050336.P10858737990667065938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A185238 (A061142 (n + 1)).toNat

end

end A050336.P10858737990667065938

/-! ## A050336.P1274004697107888767

`A317144(n+1)+A033665(A318472(n+1))`
-/

namespace A050336.P1274004697107888767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A033665 (A318472 (n + 1)).toNat

end

end A050336.P1274004697107888767

/-!
# A050337: Number of factorizations with one level of parentheses indexed by prime signatures. A050336(A025487).

The programs for A050337, there is no canonical definition to state claims against.
-/

/-! ## A050337.P9227452549431507708

`A050336(A025487(n+1))`
-/

namespace A050337.P9227452549431507708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (A025487 (n + 1)).toNat

end

end A050337.P9227452549431507708

/-!
# A050338: Number of ways of factoring n with 2 levels of parentheses.

The programs for A050338, there is no canonical definition to state claims against.
-/

/-! ## A050338.P8501791492684133940

`A050339(A101296(n+1))`
-/

namespace A050338.P8501791492684133940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050339 (A101296 (n + 1)).toNat

end

end A050338.P8501791492684133940

/-! ## A050338.P13599674967807312113

`A123580(A050340(n+1))`
-/

namespace A050338.P13599674967807312113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A050340 (n + 1)).toNat

end

end A050338.P13599674967807312113

/-! ## A050338.P13792512669388122455

`A132284(A301598(n+1))`
-/

namespace A050338.P13792512669388122455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A301598 (n + 1)).toNat

end

end A050338.P13792512669388122455

/-! ## A050338.P12550039600893964050

`A027425(A317791(n+1)%A100436(2*n+3))`
-/

namespace A050338.P12550039600893964050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (Int.tmod (A317791 (n + 1)) (A100436 (2 * n + 3))).toNat

end

end A050338.P12550039600893964050

/-!
# A050339: Number of factorizations with 2 levels of parentheses indexed by prime signatures. A050338(A025487).

The programs for A050339, there is no canonical definition to state claims against.
-/

/-! ## A050339.P14727510117158752691

`A050338(A025487(n+1))`
-/

namespace A050339.P14727510117158752691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050338 (A025487 (n + 1)).toNat

end

end A050339.P14727510117158752691

/-!
# A050340: Number of ways of factoring n with 3 levels of parentheses.

The programs for A050340, there is no canonical definition to state claims against.
-/

/-! ## A050340.P3806372250803233671

`A050341(A101296(n+1))`
-/

namespace A050340.P3806372250803233671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050341 (A101296 (n + 1)).toNat

end

end A050340.P3806372250803233671

/-! ## A050340.P2804696334708035276

`A002024(A261692(A308063(n+1)²))`
-/

namespace A050340.P2804696334708035276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A261692 (A308063 (n + 1) ^ 2).toNat).toNat

end

end A050340.P2804696334708035276

/-! ## A050340.P15003686557136365823

`A008706(A069283(A181819(n+1)!))`
-/

namespace A050340.P15003686557136365823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A069283 (Nat.factorial (A181819 (n + 1)).toNat)).toNat

end

end A050340.P15003686557136365823

/-!
# A050341: Number of factorizations with 3 levels of parentheses indexed by prime signatures. A050340(A025487).

The programs for A050341, there is no canonical definition to state claims against.
-/

/-! ## A050341.P7023465218880597927

`A050340(A025487(n+1))`
-/

namespace A050341.P7023465218880597927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050340 (A025487 (n + 1)).toNat

end

end A050341.P7023465218880597927

/-!
# A050342: Expansion of Product_{m>=1} (1+x^m)^A000009(m).

The programs for A050342, there is no canonical definition to state claims against.
-/

/-! ## A050342.P858757099814171946

`A330461(∑[n+2]+3)`
-/

namespace A050342.P858757099814171946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A050342.P858757099814171946

/-! ## A050342.P8212146283994190397

`A050345(2^n)`
-/

namespace A050342.P8212146283994190397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (2 ^ n)

end

end A050342.P8212146283994190397

/-! ## A050342.P2061301943623087279

`A050346(A025488(n))`
-/

namespace A050342.P2061301943623087279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050346 (A025488 n).toNat

end

end A050342.P2061301943623087279

/-! ## A050342.P9110666700678098374

`A380408(A393296(n))`
-/

namespace A050342.P9110666700678098374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380408 (A393296 n).toNat

end

end A050342.P9110666700678098374

/-! ## A050342.P6365456031905616361

`A230313(A093040(n))`
-/

namespace A050342.P6365456031905616361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230313 (A093040 n).toNat

end

end A050342.P6365456031905616361

/-!
# A050343: Number of partitions of n into distinct parts with 2 levels of parentheses.

The programs for A050343, there is no canonical definition to state claims against.
-/

/-! ## A050343.P1756720095354339769

`A330461(∑[n+3]+6)`
-/

namespace A050343.P1756720095354339769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A050343.P1756720095354339769

/-! ## A050343.P17389150036696330876

`A050347(2^n)`
-/

namespace A050343.P17389150036696330876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (2 ^ n)

end

end A050343.P17389150036696330876

/-! ## A050343.P6701846355119462727

`A050348(A025488(n))`
-/

namespace A050343.P6701846355119462727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050348 (A025488 n).toNat

end

end A050343.P6701846355119462727

/-!
# A050344: Number of partitions of n into distinct parts with 3 levels of parentheses.

The programs for A050344, there is no canonical definition to state claims against.
-/

/-! ## A050344.P11829902703079901898

`A330461(eq[4, A002262(n)])`
-/

namespace A050344.P11829902703079901898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050344.P11829902703079901898

/-! ## A050344.P14974833524375167916

`A050349(2^n)`
-/

namespace A050344.P14974833524375167916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (2 ^ n)

end

end A050344.P14974833524375167916

/-! ## A050344.P12349983588135532603

`A050350(A025488(n))`
-/

namespace A050344.P12349983588135532603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050350 (A025488 n).toNat

end

end A050344.P12349983588135532603

/-!
# A050345: Number of ways to factor n into distinct factors with one level of parentheses.

The programs for A050345, there is no canonical definition to state claims against.
-/

/-! ## A050345.P8761032284612681673

`A050346(A101296(n+1))`
-/

namespace A050345.P8761032284612681673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050346 (A101296 (n + 1)).toNat

end

end A050345.P8761032284612681673

/-! ## A050345.P14115309314067276625

`A156262(2*A296120(n+1))`
-/

namespace A050345.P14115309314067276625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (2 * A296120 (n + 1)).toNat

end

end A050345.P14115309314067276625

/-! ## A050345.P7787216395180564882

`A296120(n+1)+A024326(A008833(n+1))`
-/

namespace A050345.P7787216395180564882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A024326 (A008833 (n + 1)).toNat

end

end A050345.P7787216395180564882

/-! ## A050345.P5907868342638826036

`A296120(n+1)+A035439(A000688(n+1))`
-/

namespace A050345.P5907868342638826036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A035439 (A000688 (n + 1)).toNat

end

end A050345.P5907868342638826036

/-! ## A050345.P4369608771310844591

`A296120(n+1)+A000332(A046951(n+1))`
-/

namespace A050345.P4369608771310844591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A000332 (A046951 (n + 1)).toNat

end

end A050345.P4369608771310844591

/-! ## A050345.P15493010655033804555

`A296120(n+1)+A028422(A049419(n+1))`
-/

namespace A050345.P15493010655033804555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A028422 (A049419 (n + 1)).toNat

end

end A050345.P15493010655033804555

/-! ## A050345.P2685266184488758833

`A296120(n+1)+A088434(A000188(n+1))`
-/

namespace A050345.P2685266184488758833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A088434 (A000188 (n + 1)).toNat

end

end A050345.P2685266184488758833

/-! ## A050345.P10326799490642190541

`A296120(n+1)+A025918(A252665(n+1))`
-/

namespace A050345.P10326799490642190541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A025918 (A252665 (n + 1)).toNat

end

end A050345.P10326799490642190541

/-! ## A050345.P13733472449026226799

`A343023(A092265(n+1))+A296120(n+1)`
-/

namespace A050345.P13733472449026226799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A092265 (n + 1)).toNat + A296120 (n + 1)

end

end A050345.P13733472449026226799

/-!
# A050346: Number of factorizations into distinct factors with one level of parentheses indexed by prime signatures. A050345(A025487).

The programs for A050346, there is no canonical definition to state claims against.
-/

/-! ## A050346.P10670558227550839592

`A050345(A025487(1+n))`
-/

namespace A050346.P10670558227550839592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (A025487 (1 + n)).toNat

end

end A050346.P10670558227550839592

/-!
# A050347: Number of ways to factor n into distinct factors with 2 levels of parentheses.

The programs for A050347, there is no canonical definition to state claims against.
-/

/-! ## A050347.P8078902492443375060

`A050348(A101296(n+1))`
-/

namespace A050347.P8078902492443375060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050348 (A101296 (n + 1)).toNat

end

end A050347.P8078902492443375060

/-! ## A050347.P10223969943593199436

`A024799(A050345(n+1)%A028749(n+1))`
-/

namespace A050347.P10223969943593199436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024799 (Int.tmod (A050345 (n + 1)) (A028749 (n + 1))).toNat

end

end A050347.P10223969943593199436

/-! ## A050347.P4955029371079771322

`A160511(A050349(n+1))`
-/

namespace A050347.P4955029371079771322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160511 (A050349 (n + 1)).toNat

end

end A050347.P4955029371079771322

/-! ## A050347.P2301648770398542790

`A257480(A060448(n+1))`
-/

namespace A050347.P2301648770398542790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257480 (A060448 (n + 1)).toNat

end

end A050347.P2301648770398542790

/-!
# A050348: Number of factorizations into distinct factors with 2 levels of parentheses indexed by prime signatures. A050347(A025487).

The programs for A050348, there is no canonical definition to state claims against.
-/

/-! ## A050348.P6356104410200462735

`A050347(A025487(1+n))`
-/

namespace A050348.P6356104410200462735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (A025487 (1 + n)).toNat

end

end A050348.P6356104410200462735

/-!
# A050349: Number of ways to factor n into distinct factors with 3 levels of parentheses.

The programs for A050349, there is no canonical definition to state claims against.
-/

/-! ## A050349.P8491300274257404372

`A050350(A101296(n+1))`
-/

namespace A050349.P8491300274257404372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050350 (A101296 (n + 1)).toNat

end

end A050349.P8491300274257404372

/-! ## A050349.P4642170053549615270

`A196386(A347464(n+1))`
-/

namespace A050349.P4642170053549615270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196386 (A347464 (n + 1)).toNat

end

end A050349.P4642170053549615270

/-! ## A050349.P993740457238230559

`A302521(A291686(A291686(A291686(A050345(n+1)))))`
-/

namespace A050349.P993740457238230559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302521 (A291686 (A291686 (A291686 (A050345 (n + 1)).toNat).toNat).toNat).toNat

end

end A050349.P993740457238230559

/-!
# A050350: Number of factorizations into distinct factors with 3 levels of parentheses indexed by prime signatures. A050349(A025487).

The programs for A050350, there is no canonical definition to state claims against.
-/

/-! ## A050350.P1199237980607056819

`A050349(A025487(n+1))`
-/

namespace A050350.P1199237980607056819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (A025487 (n + 1)).toNat

end

end A050350.P1199237980607056819

/-!
# A050351: Number of 3-level labeled linear rooted trees with n leaves.

The programs for A050351, there is no canonical definition to state claims against.
-/

/-! ## A050351.P7752245680805912863

`ceil(A201339(n)/3)`
-/

namespace A050351.P7752245680805912863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201339 n : ℚ) / 3⌉

end

end A050351.P7752245680805912863

/-! ## A050351.P1214562189806059401

`ceil(A027882(n)/6)`
-/

namespace A050351.P1214562189806059401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027882 n : ℚ) / 6⌉

end

end A050351.P1214562189806059401

/-! ## A050351.P10669170415450641334

`ceil(A004123(1+n)/2)`
-/

namespace A050351.P10669170415450641334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004123 (1 + n) : ℚ) / 2⌉

end

end A050351.P10669170415450641334

/-! ## A050351.P6843949114234636465

`round(A004123(n+1)/2)`
-/

namespace A050351.P6843949114234636465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004123 (n + 1) : ℚ) / 2)

end

end A050351.P6843949114234636465

/-! ## A050351.P1998147395920173347

`ceil(A185285(∑[n+1]+1)/2)`
-/

namespace A050351.P1998147395920173347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185285 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2⌉

end

end A050351.P1998147395920173347

/-! ## A050351.P4702598211004156909

`A032111(A028310(n))-1`
-/

namespace A050351.P4702598211004156909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032111 (A028310 n).toNat - 1

end

end A050351.P4702598211004156909

/-! ## A050351.P11378865583959844088

`A201339(n)/dr(A123227(n))`
-/

namespace A050351.P11378865583959844088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201339 n : ℚ) / (SequenceMachineLib.digitalRoot (A123227 n) : ℚ)

end

end A050351.P11378865583959844088

/-! ## A050351.P13189371831981778674

`A004123(n+1)/A040000(n)`
-/

namespace A050351.P13189371831981778674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004123 (n + 1) : ℚ) / (A040000 n : ℚ)

end

end A050351.P13189371831981778674

/-! ## A050351.P9993581333396117582

`gcd(A004123(n+1), A201339(n))`
-/

namespace A050351.P9993581333396117582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004123 (n + 1)) (A201339 n)

end

end A050351.P9993581333396117582

/-! ## A050351.P10975418408347049058

`A004123(n+1)/gcd(2, A000629(n))`
-/

namespace A050351.P10975418408347049058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004123 (n + 1) : ℚ) / (Int.gcd 2 (A000629 n) : ℚ)

end

end A050351.P10975418408347049058

/-!
# A050352: Number of 4-level labeled linear rooted trees with n leaves.

The programs for A050352, there is no canonical definition to state claims against.
-/

/-! ## A050352.P15436594014439403372

`ceil(A032033(n)/3)`
-/

namespace A050352.P15436594014439403372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032033 n : ℚ) / 3⌉

end

end A050352.P15436594014439403372

/-! ## A050352.P14451980326847708805

`ceil(A201354(n)/4)`
-/

namespace A050352.P14451980326847708805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201354 n : ℚ) / 4⌉

end

end A050352.P14451980326847708805

/-! ## A050352.P11604170299444573282

`ceil(A032183(1+n)/12)`
-/

namespace A050352.P11604170299444573282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032183 (1 + n) : ℚ) / 12⌉

end

end A050352.P11604170299444573282

/-! ## A050352.P17258707171395567773

`A201354(round(sqrt(n²+1)))/4`
-/

namespace A050352.P17258707171395567773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201354 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 4

end

end A050352.P17258707171395567773

/-! ## A050352.P14261934336992794016

`ceil(∑{#}[n, A131689(C(n+1, 2)+#)*3^#]/3)`
-/

namespace A050352.P14261934336992794016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ k ∈ Finset.range (f1 n + 1), A131689 (Nat.choose (n + 1) 2 + k) * (3 ^ k : ℤ) : ℤ) : ℚ) / 3⌉

end

end A050352.P14261934336992794016

/-! ## A050352.P8331279238166526079

`ceil(∑{#}[n, A123125(C(n+1, 2)+#)*4^#*3^(n-#)]/4)`
-/

namespace A050352.P8331279238166526079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ k ∈ Finset.range (f1 n + 1), (A123125 (Nat.choose (n + 1) 2 + k) * (4 ^ k : ℤ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) / 4⌉

end

end A050352.P8331279238166526079

/-! ## A050352.P5060407144390654082

`A032033(A028310(n))/3`
-/

namespace A050352.P5060407144390654082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032033 (A028310 n).toNat : ℚ) / 3

end

end A050352.P5060407144390654082

/-! ## A050352.P2534803274595126396

`gcd(A032033(n), A201354(n))`
-/

namespace A050352.P2534803274595126396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032033 n) (A201354 n)

end

end A050352.P2534803274595126396

/-! ## A050352.P15669496561509057007

`A257565(A167614(n+2))`
-/

namespace A050352.P15669496561509057007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257565 (A167614 (n + 2)).toNat

end

end A050352.P15669496561509057007

/-!
# A050353: Number of 5-level labeled linear rooted trees with n leaves.

The programs for A050353, there is no canonical definition to state claims against.
-/

/-! ## A050353.P800230331471675021

`ceil(A094417(n)/4)`
-/

namespace A050353.P800230331471675021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094417 n : ℚ) / 4⌉

end

end A050353.P800230331471675021

/-! ## A050353.P10513765151532592645

`ceil(A201365(n)/5)`
-/

namespace A050353.P10513765151532592645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201365 n : ℚ) / 5⌉

end

end A050353.P10513765151532592645

/-! ## A050353.P9127033210324870303

`A094417(round(sqrt(n²+1)))/4`
-/

namespace A050353.P9127033210324870303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094417 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 4

end

end A050353.P9127033210324870303

/-! ## A050353.P16208674102341091222

`gcd(A094417(n), A201365(n))`
-/

namespace A050353.P16208674102341091222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094417 n) (A201365 n)

end

end A050353.P16208674102341091222

/-! ## A050353.P947905650254448079

`A201365(n)/gcd(5, A201367(n))`
-/

namespace A050353.P947905650254448079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201365 n : ℚ) / (Int.gcd 5 (A201367 n) : ℚ)

end

end A050353.P947905650254448079

/-!
# A050354: Number of ordered factorizations of n with one level of parentheses.

The programs for A050354, there is no canonical definition to state claims against.
-/

/-! ## A050354.P13914974512588426447

`A050355(A101296(1+n))`
-/

namespace A050354.P13914974512588426447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050355 (A101296 (1 + n)).toNat

end

end A050354.P13914974512588426447

/-! ## A050354.P8104445426776582608

`A318916(A330773(n))`
-/

namespace A050354.P8104445426776582608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318916 (A330773 n).toNat

end

end A050354.P8104445426776582608

/-! ## A050354.P18144405465243070344

`A364772(A160085(n+1))`
-/

namespace A050354.P18144405465243070344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364772 (A160085 (n + 1)).toNat

end

end A050354.P18144405465243070344

/-!
# A050355: Ordered factorizations with one level of parentheses indexed by prime signatures. A050354(A025487).

The programs for A050355, there is no canonical definition to state claims against.
-/

/-! ## A050355.P2733746929616318642

`A050354(A025487(1+n))`
-/

namespace A050355.P2733746929616318642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (A025487 (1 + n)).toNat

end

end A050355.P2733746929616318642

/-!
# A050356: Number of ordered factorizations of n with 2 levels of parentheses.

The programs for A050356, there is no canonical definition to state claims against.
-/

/-! ## A050356.P4775631221781566906

`A050357(A101296(1+n))`
-/

namespace A050356.P4775631221781566906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050357 (A101296 (1 + n)).toNat

end

end A050356.P4775631221781566906

/-! ## A050356.P4389893010537315899

`A153883(A050354(n+1))`
-/

namespace A050356.P4389893010537315899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A050354 (n + 1)).toNat

end

end A050356.P4389893010537315899

/-! ## A050356.P4808038342815507867

`A000005(ceil(A293514(n+1)/2)^3)`
-/

namespace A050356.P4808038342815507867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌈(A293514 (n + 1) : ℚ) / 2⌉ ^ 3).toNat

end

end A050356.P4808038342815507867

/-!
# A050357: Number of ordered factorizations with 2 levels of parentheses indexed by prime signatures.

The programs for A050357, there is no canonical definition to state claims against.
-/

/-! ## A050357.P14809784937459891151

`A050356(A025487(n+1))`
-/

namespace A050357.P14809784937459891151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (A025487 (n + 1)).toNat

end

end A050357.P14809784937459891151

/-!
# A050358: Number of ordered factorizations of n with 3 levels of parentheses.

The programs for A050358, there is no canonical definition to state claims against.
-/

/-! ## A050358.P17734886775785497380

`A050359(A101296(n+1))`
-/

namespace A050358.P17734886775785497380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050359 (A101296 (n + 1)).toNat

end

end A050358.P17734886775785497380

/-! ## A050358.P2173539118411101075

`A373226(A050354(n+1))`
-/

namespace A050358.P2173539118411101075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A050354 (n + 1)).toNat

end

end A050358.P2173539118411101075

/-! ## A050358.P15222708436900438726

`A048691(A065033(A293514(n+1))²)`
-/

namespace A050358.P15222708436900438726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A065033 (A293514 (n + 1)).toNat ^ 2).toNat

end

end A050358.P15222708436900438726

/-! ## A050358.P14717089677693176838

`A105356(A160085(n+1))`
-/

namespace A050358.P14717089677693176838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A160085 (n + 1)).toNat

end

end A050358.P14717089677693176838

/-!
# A050359: Number of ordered factorizations with 3 levels of parentheses indexed by prime signatures: A050358(A025487(n)).

The programs for A050359, there is no canonical definition to state claims against.
-/

/-! ## A050359.P3598047538799862788

`A050358(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050359.P3598047538799862788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (A025487 (n + 1)).toNat

end

end A050359.P3598047538799862788

/-! ## A050359.P6577757784676732738

`A373226(A050355(n+1))`
-/

namespace A050359.P6577757784676732738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A050355 (n + 1)).toNat

end

end A050359.P6577757784676732738

/-!
# A050360: Abelian groups (factorizations into prime powers >1) indexed by prime signatures. A000688(A025487).

The programs for A050360, there is no canonical definition to state claims against.
-/

/-! ## A050360.P1437763954716957709

`A299200(A181820(n+1))`
-/

namespace A050360.P1437763954716957709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A181820 (n + 1)).toNat

end

end A050360.P1437763954716957709

/-! ## A050360.P5530005686075208866

`∏{e}[A025487(n+1), A000041(#)]`
-/

namespace A050360.P5530005686075208866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A050360.P5530005686075208866

/-! ## A050360.P1670134720579167377

`∏{e}[A025487(n+1), A213598(#)]`
-/

namespace A050360.P1670134720579167377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A213598 (Nat.factorization (f1 n).natAbs p)

end

end A050360.P1670134720579167377

/-! ## A050360.P8748029318157881093

`∏{e}[A025487(n+1), A330642(#)]`
-/

namespace A050360.P8748029318157881093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A330642 (Nat.factorization (f1 n).natAbs p)

end

end A050360.P8748029318157881093

/-! ## A050360.P9444945835713371542

`∏{e}[record[A329899(1+n)], A000041(#)]`
-/

namespace A050360.P9444945835713371542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A050360.P9444945835713371542

/-! ## A050360.P2594991128601795548

`∏{e}[A025487(n+1), A000065(#)+1]`
-/

namespace A050360.P2594991128601795548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000065 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A050360.P2594991128601795548

/-! ## A050360.P15252781362651934908

`∏{e}[A025487(n+1), A000688(A046055(#))]`
-/

namespace A050360.P15252781362651934908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 (A046055 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A050360.P15252781362651934908

/-! ## A050360.P8184068619812178280

`A000688(A025487(n+1))`
-/

namespace A050360.P8184068619812178280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A025487 (n + 1)).toNat

end

end A050360.P8184068619812178280

/-!
# A050361: Number of factorizations into distinct prime powers greater than 1.

The programs for A050361, the canonical program `A050361.P4609984906141832222` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050361 has offset 1).

The definition of A050361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050361.P13292128962438969591

`A050362(A101296(n+1))`
-/

namespace A050361.P13292128962438969591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050362 (A101296 (n + 1)).toNat

end

end A050361.P13292128962438969591

namespace A050361

/-- `A050362(A101296(n+1))` -/
def P13292128962438969591.Spec : Prop :=
  ∀ n, P13292128962438969591.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P15798915842152879639

`∏{e}[1+n, A000009(#)]`
-/

namespace A050361.P15798915842152879639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000009 (Nat.factorization (f1 n) p)

end

end A050361.P15798915842152879639

namespace A050361

/-- `∏{e}[1+n, A000009(#)]` -/
def P15798915842152879639.Spec : Prop :=
  ∀ n, P15798915842152879639.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P2334519027942491287

`∏{e}[1+n, A034149(#)]`
-/

namespace A050361.P2334519027942491287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034149 (Nat.factorization (f1 n) p)

end

end A050361.P2334519027942491287

namespace A050361

/-- `∏{e}[1+n, A034149(#)]` -/
def P2334519027942491287.Spec : Prop :=
  ∀ n, P2334519027942491287.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P4609984906141832222

`∏{e}[n+1, A347586(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050361

/-- `∏{e}[n+1, A347586(#)]` -/
def P4609984906141832222.Spec : Prop :=
  ∀ n, P4609984906141832222.a n = A050361 (n + 1)

theorem P4609984906141832222.correct : P4609984906141832222.Spec := by
  intro n
  simp only [A050361, Nat.add_sub_cancel]

end A050361

/-! ## A050361.P6541198827516752144

`∏{e}[n+1, A035457(2*#)]`
-/

namespace A050361.P6541198827516752144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A035457 (2 * Nat.factorization (f1 n) p)

end

end A050361.P6541198827516752144

namespace A050361

/-- `∏{e}[n+1, A035457(2*#)]` -/
def P6541198827516752144.Spec : Prop :=
  ∀ n, P6541198827516752144.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P9128690237259362797

`∑{d}[n+1, A129667(#)*A328721((n+1)/#)]`
-/

namespace A050361.P9128690237259362797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129667 d * A328721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050361.P9128690237259362797

namespace A050361

/-- `∑{d}[n+1, A129667(#)*A328721((n+1)/#)]` -/
def P9128690237259362797.Spec : Prop :=
  ∀ n, P9128690237259362797.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P11788717106511723680

`A030328(A037291(n+1))`
-/

namespace A050361.P11788717106511723680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030328 (A037291 (n + 1)).toNat

end

end A050361.P11788717106511723680

namespace A050361

/-- `A030328(A037291(n+1))` -/
def P11788717106511723680.Spec : Prop :=
  ∀ n, P11788717106511723680.a n = A050361 (n + 1)

end A050361

/-!
# A050362: Number of factorizations into distinct prime powers >1 indexed by prime signatures.

The programs for A050362, there is no canonical definition to state claims against.
-/

/-! ## A050362.P11321950685227928189

`A050361(A025487(n+1))`
-/

namespace A050362.P11321950685227928189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A025487 (n + 1)).toNat

end

end A050362.P11321950685227928189

/-! ## A050362.P11508585191423128290

`A357982(A181820(1+n))`
-/

namespace A050362.P11508585191423128290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A181820 (1 + n)).toNat

end

end A050362.P11508585191423128290

/-! ## A050362.P7809992263455517345

`∏{e}[A307107(n+1), A000009(#+1)]`
-/

namespace A050362.P7809992263455517345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (Nat.factorization (f1 n).natAbs p + 1)

end

end A050362.P7809992263455517345

/-! ## A050362.P233989348397885918

`∏{e}[A025487(n+1), A000009(#)]`
-/

namespace A050362.P233989348397885918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (Nat.factorization (f1 n).natAbs p)

end

end A050362.P233989348397885918

/-! ## A050362.P11831415852270416379

`∏{e}[A025487(n+1), A034149(#)]`
-/

namespace A050362.P11831415852270416379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034149 (Nat.factorization (f1 n).natAbs p)

end

end A050362.P11831415852270416379

/-! ## A050362.P16704729593547440022

`∏{e}[A025487(n+1), A318286(A000040(#))]`
-/

namespace A050362.P16704729593547440022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A318286 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A050362.P16704729593547440022

/-!
# A050363: Number of ordered factorizations into prime powers greater than 1.

The programs for A050363, there is no canonical definition to state claims against.
-/

/-! ## A050363.P9284356268167930418

`A050364(A101296(n+1))`
-/

namespace A050363.P9284356268167930418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050364 (A101296 (n + 1)).toNat

end

end A050363.P9284356268167930418

/-! ## A050363.P8235641079315966880

`A308063(n+1)-A335520(A046523(n+1))`
-/

namespace A050363.P8235641079315966880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (A046523 (n + 1)).toNat

end

end A050363.P8235641079315966880

/-! ## A050363.P3975608087347643633

`A308063(n+1)-A335520(A062513(n+1))`
-/

namespace A050363.P3975608087347643633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (A062513 (n + 1)).toNat

end

end A050363.P3975608087347643633

/-! ## A050363.P15915502647108378412

`A308063(n+1)-A335520(A071364(n+1))`
-/

namespace A050363.P15915502647108378412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (A071364 (n + 1)).toNat

end

end A050363.P15915502647108378412

/-! ## A050363.P3312735320115688440

`A308063(n+1)-A335520(n+1)`
-/

namespace A050363.P3312735320115688440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (n + 1)

end

end A050363.P3312735320115688440

/-!
# A050364: Number of ordered factorizations into prime powers >1 indexed by prime signatures. A050363(A025487).

The programs for A050364, there is no canonical definition to state claims against.
-/

/-! ## A050364.P7860809752630029549

`A050363(A025487(1+n))`
-/

namespace A050364.P7860809752630029549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A025487 (1 + n)).toNat

end

end A050364.P7860809752630029549

/-!
# A050365: a(n) is the number of ways to write n as an identity mterm, where an identity mterm is an unordered sum which is either 2, or 1 + an unordered product of distinct identity mterms.

The programs for A050365, there is no canonical definition to state claims against.
-/

/-! ## A050365.P6037412570754470062

`A048766(Δ[A238864(n)]²+1)`
-/

namespace A050365.P6037412570754470062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A050365.P6037412570754470062

/-! ## A050365.P944514795512707870

`A056239(A215366(∏[A045778(n+1)]))`
-/

namespace A050365.P944514795512707870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A215366 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A050365.P944514795512707870

/-!
# A050367: Number of ways to factor n into 2 kinds of 2, 3 kinds of 3, ...

The programs for A050367, there is no canonical definition to state claims against.
-/

/-! ## A050367.P16717398112035454240

`∑{d}[n+1, A001055(#)*A328853((n+1)/#)]`
-/

namespace A050367.P16717398112035454240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A328853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050367.P16717398112035454240

/-! ## A050367.P7918358626159619027

`∑{d}[n+1, A114592(#)*A328851((n+1)/#)]`
-/

namespace A050367.P7918358626159619027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A328851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050367.P7918358626159619027

/-! ## A050367.P4771279285328987719

`∑{d}[n+1, A328709(#)*A328731((n+1)/#)]`
-/

namespace A050367.P4771279285328987719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328709 d * A328731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050367.P4771279285328987719

/-!
# A050368: Number of ways to factor n into distinct factors with 2 kinds of 2, 3 kinds of 3, ...

The programs for A050368, there is no canonical definition to state claims against.
-/

/-! ## A050368.P3714349154670096669

`∑{d}[n+1, A045778(#)*A328877((n+1)/#)]`
-/

namespace A050368.P3714349154670096669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A328877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050368.P3714349154670096669

/-! ## A050368.P8990625305008318903

`∑{d}[n+1, A316441(#)*A328876((n+1)/#)]`
-/

namespace A050368.P8990625305008318903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A328876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050368.P8990625305008318903

/-! ## A050368.P14148177100908481052

`∑{d}[n+1, A328709(#)*A328730((n+1)/#)]`
-/

namespace A050368.P14148177100908481052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328709 d * A328730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050368.P14148177100908481052

/-!
# A050369: Number of ordered factorizations of n into 2 kinds of 2, 3 kinds of 3, ...

The programs for A050369, there is no canonical definition to state claims against.
-/

/-! ## A050369.P8522557979495059348

`(n+1)*A074206(n+1)`
-/

namespace A050369.P8522557979495059348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074206 (n + 1)

end

end A050369.P8522557979495059348

/-! ## A050369.P12107403228882430440

`(1+n)*A002033(n)`
-/

namespace A050369.P12107403228882430440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A002033 n

end

end A050369.P12107403228882430440

/-! ## A050369.P17354440510812747663

`(1+n)*Δ[A173382(n)]`
-/

namespace A050369.P17354440510812747663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (f1 (n + 1) - f1 n)

end

end A050369.P17354440510812747663

/-! ## A050369.P1506272406384669153

`(1+n)*∑{d}[n+1, A174725(#)]`
-/

namespace A050369.P1506272406384669153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A174725 d)

end

end A050369.P1506272406384669153

/-! ## A050369.P17033135448839985741

`(n+1)*ceil(A067824(n+1)/2)`
-/

namespace A050369.P17033135448839985741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A067824 (n + 1) : ℚ) / 2⌉

end

end A050369.P17033135448839985741

/-! ## A050369.P17338432942237105599

`(n+1)*ceil(A253249(n+1)/4)`
-/

namespace A050369.P17338432942237105599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A253249 (n + 1) : ℚ) / 4⌉

end

end A050369.P17338432942237105599

/-! ## A050369.P10114283961033950213

`(n+1)*A050324(A101296(n+1))`
-/

namespace A050369.P10114283961033950213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050324 (A101296 (n + 1)).toNat

end

end A050369.P10114283961033950213

/-! ## A050369.P4660058212010161383

`(n+1)*(A173382(n+1)-A173382(n))`
-/

namespace A050369.P4660058212010161383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A173382 (n + 1) - A173382 n)

end

end A050369.P4660058212010161383

/-! ## A050369.P11221951103246277184

`(A174726(n+1)+A174725(n+1))*(n+1)`
-/

namespace A050369.P11221951103246277184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174726 (n + 1) + A174725 (n + 1)) * (n + 1 : ℤ)

end

end A050369.P11221951103246277184

/-! ## A050369.P7991727759164170978

`∑{d}[n+1, A008683(#)*A197953((n+1)/#)]`
-/

namespace A050369.P7991727759164170978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A197953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050369.P7991727759164170978

/-! ## A050369.P6907288675069377900

`A002033(n)*A008619(2*n)`
-/

namespace A050369.P6907288675069377900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A008619 (2 * n)

end

end A050369.P6907288675069377900

/-! ## A050369.P2940305725619856046

`(n+1)*A160413(lcm(2, A067824(n+1)))`
-/

namespace A050369.P2940305725619856046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160413 (Int.lcm 2 (A067824 (n + 1)))

end

end A050369.P2940305725619856046

/-! ## A050369.P5183770241115991571

`(n+1)*A008621(A253249(n+1))`
-/

namespace A050369.P5183770241115991571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008621 (A253249 (n + 1)).toNat

end

end A050369.P5183770241115991571

/-! ## A050369.P203621668149934509

`(n+1)*A361665(A181819(n+1))`
-/

namespace A050369.P203621668149934509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361665 (A181819 (n + 1)).toNat

end

end A050369.P203621668149934509

/-! ## A050369.P2832122857015817404

`(n+1)*A345182(A003961(n+1))`
-/

namespace A050369.P2832122857015817404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345182 (A003961 (n + 1)).toNat

end

end A050369.P2832122857015817404

/-! ## A050369.P3015287328249949504

`(n+1)*A117621(A243501(n+1))`
-/

namespace A050369.P3015287328249949504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117621 (A243501 (n + 1)).toNat

end

end A050369.P3015287328249949504

/-! ## A050369.P11430481956622117096

`(n+1)*A345182(A332818(n+1))`
-/

namespace A050369.P11430481956622117096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345182 (A332818 (n + 1)).toNat

end

end A050369.P11430481956622117096

/-! ## A050369.P8765262103530271719

`(n+1)*A345182(A297002(n+1))`
-/

namespace A050369.P8765262103530271719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345182 (A297002 (n + 1)).toNat

end

end A050369.P8765262103530271719

/-!
# A050370: Number of ways to factor n into composite factors.

The programs for A050370, there is no canonical definition to state claims against.
-/

/-! ## A050370.P15583763097008623743

`A050371(A101296(1+n))`
-/

namespace A050370.P15583763097008623743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050371 (A101296 (1 + n)).toNat

end

end A050370.P15583763097008623743

/-! ## A050370.P3577086570164665566

`∑{d}[n+1, A001055(#)*A008683((n+1)/#)]`
-/

namespace A050370.P3577086570164665566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P3577086570164665566

/-! ## A050370.P2346728164087839624

`∑{d}[n+1, A007427(#)*A057567((n+1)/#)]`
-/

namespace A050370.P2346728164087839624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A057567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P2346728164087839624

/-! ## A050370.P16382747492269868085

`∑{d}[n+1, A087003(#)*A371243((n+1)/#)]`
-/

namespace A050370.P16382747492269868085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A371243 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P16382747492269868085

/-! ## A050370.P7416749461654466078

`∑{d}[n+1, A188585(#)*A322452((n+1)/#)]`
-/

namespace A050370.P7416749461654466078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188585 d * A322452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P7416749461654466078

/-! ## A050370.P3324977568965774522

`∑{d}[n+1, A355688(#)*A371244((n+1)/#)]`
-/

namespace A050370.P3324977568965774522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355688 d * A371244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P3324977568965774522

/-! ## A050370.P10781807003686546085

`A320267(n+1)-A294018(A068794(n+1))`
-/

namespace A050370.P10781807003686546085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (n + 1) - A294018 (A068794 (n + 1)).toNat

end

end A050370.P10781807003686546085

/-! ## A050370.P18049090961130633793

`A320267(n+1)%(A320659(n+1)+A320266(n+1))`
-/

namespace A050370.P18049090961130633793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320267 (n + 1)) (A320659 (n + 1) + A320266 (n + 1))

end

end A050370.P18049090961130633793

/-! ## A050370.P9201730008547350502

`A320267(n+1)%A259175(n+1)`
-/

namespace A050370.P9201730008547350502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320267 (n + 1)) (A259175 (n + 1))

end

end A050370.P9201730008547350502

/-!
# A050371: Number of factorizations into composite numbers indexed by prime signatures. A050370(A025487).

The programs for A050371, there is no canonical definition to state claims against.
-/

/-! ## A050371.P249199104866839235

`A050370(A025487(n+1))`
-/

namespace A050371.P249199104866839235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A025487 (n + 1)).toNat

end

end A050371.P249199104866839235

/-!
# A050372: Number of ways to factor n into distinct composite factors.

The programs for A050372, there is no canonical definition to state claims against.
-/

/-! ## A050372.P10569367850644967147

`A050373(A101296(n+1))`
-/

namespace A050372.P10569367850644967147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050373 (A101296 (n + 1)).toNat

end

end A050372.P10569367850644967147

/-! ## A050372.P2502317418281165023

`∑{d}[n+1, A008836(#)*A045778((n+1)/#)]`
-/

namespace A050372.P2502317418281165023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A045778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050372.P2502317418281165023

/-! ## A050372.P838455481723546431

`∑{d}[n+1, A158522(#)*A342086((n+1)/#)]`
-/

namespace A050372.P838455481723546431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A342086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050372.P838455481723546431

/-! ## A050372.P11433691944344378821

`A114591(n+1)+A107279(A329602(n+1))`
-/

namespace A050372.P11433691944344378821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114591 (n + 1) + A107279 (A329602 (n + 1)).toNat

end

end A050372.P11433691944344378821

/-! ## A050372.P6734511788467496764

`A110655(A335434(n+1)+A008683(n+1))`
-/

namespace A050372.P6734511788467496764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A335434 (n + 1) + A008683 (n + 1)).toNat

end

end A050372.P6734511788467496764

/-! ## A050372.P9428320821842177695

`A002265(A335434(n+1)+A231821(n+1))`
-/

namespace A050372.P9428320821842177695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A335434 (n + 1) + A231821 (n + 1)).toNat

end

end A050372.P9428320821842177695

/-!
# A050373: Number of factorizations into distinct composite numbers indexed by prime signatures.

The programs for A050373, there is no canonical definition to state claims against.
-/

/-! ## A050373.P12450177795328247777

`A050372(A025487(1+n))`
-/

namespace A050373.P12450177795328247777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (A025487 (1 + n)).toNat

end

end A050373.P12450177795328247777

/-!
# A050374: Number of ordered factorizations of n into composite factors.

The programs for A050374, there is no canonical definition to state claims against.
-/

/-! ## A050374.P10574371006188419281

`A050375(A101296(n+1))`
-/

namespace A050374.P10574371006188419281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050375 (A101296 (n + 1)).toNat

end

end A050374.P10574371006188419281

/-! ## A050374.P13659808199567636001

`A235224(A050370(n+1)^A339890(n+1))`
-/

namespace A050374.P13659808199567636001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A050370 (n + 1) : ℚ) ^ (A339890 (n + 1) : ℤ))).toNat

end

end A050374.P13659808199567636001

/-! ## A050374.P7871423726315081911

`A084558(A050370(n+1)^A050370(2*(n+1)))`
-/

namespace A050374.P7871423726315081911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A050370 (n + 1) : ℚ) ^ (A050370 (2 * (n + 1)) : ℤ))).toNat

end

end A050374.P7871423726315081911

/-! ## A050374.P8703632844335239521

`∏{e}[A007955(n+1), A045917(#)]`
-/

namespace A050374.P8703632844335239521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A045917 (Nat.factorization (f1 n).natAbs p)

end

end A050374.P8703632844335239521

/-! ## A050374.P12354492518965449913

`A087153(A317791(n+1)%A095384(n))`
-/

namespace A050374.P12354492518965449913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087153 (Int.tmod (A317791 (n + 1)) (A095384 n)).toNat

end

end A050374.P12354492518965449913

/-!
# A050375: Number of ordered factorizations into composite numbers indexed by prime signatures: A050374(A025487(n)).

The programs for A050375, there is no canonical definition to state claims against.
-/

/-! ## A050375.P3824628958639388962

`A050374(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050375.P3824628958639388962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (A025487 (n + 1)).toNat

end

end A050375.P3824628958639388962

/-!
# A050376: "Fermi-Dirac primes": numbers of the form p^(2^k) where p is prime and k >= 0.

The programs for A050376, the canonical program `A050376.P1602310883522022033` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050376 has offset 1).

The definition of A050376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050376.P11968746704421999495

`A268385(A268392(n+1))`
-/

namespace A050376.P11968746704421999495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268392 (n + 1)).toNat

end

end A050376.P11968746704421999495

namespace A050376

/-- `A268385(A268392(n+1))` -/
def P11968746704421999495.Spec : Prop :=
  ∀ n, P11968746704421999495.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P16866878353314242143

`sqrt(A082522(1+n))`
-/

namespace A050376.P16866878353314242143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082522 (1 + n) : ℝ)

end

end A050376.P16866878353314242143

namespace A050376

/-- `sqrt(A082522(1+n))` -/
def P16866878353314242143.Spec : Prop :=
  ∀ n, P16866878353314242143.a n = (A050376 (n + 1) : ℝ)

end A050376

/-! ## A050376.P6818906415182630762

`A240521(n)/a(n-1)` with `a(0)=2`
-/

namespace A050376.P6818906415182630762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A240521 n : ℚ) / a (n - 1)

end

end A050376.P6818906415182630762

namespace A050376

/-- `A240521(n)/a(n-1)` -/
def P6818906415182630762.Spec : Prop :=
  ∀ n, P6818906415182630762.a n = (A050376 (n + 1) : ℚ)

end A050376

/-! ## A050376.P9099686012525527087

`gcd(A082522(n+1), A240521(n+1))`
-/

namespace A050376.P9099686012525527087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082522 (n + 1)) (A240521 (n + 1))

end

end A050376.P9099686012525527087

namespace A050376

/-- `gcd(A082522(n+1), A240521(n+1))` -/
def P9099686012525527087.Spec : Prop :=
  ∀ n, (P9099686012525527087.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P9045329433455704409

`gcd(A240536(n+1), A268392(n+1))`
-/

namespace A050376.P9045329433455704409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240536 (n + 1)) (A268392 (n + 1))

end

end A050376.P9045329433455704409

namespace A050376

/-- `gcd(A240536(n+1), A268392(n+1))` -/
def P9045329433455704409.Spec : Prop :=
  ∀ n, (P9045329433455704409.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P13923683111964839870

`∪[A000040(n+1), A082522(n+1)]`
-/

namespace A050376.P13923683111964839870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050376.P13923683111964839870

namespace A050376

/-- `∪[A000040(n+1), A082522(n+1)]` -/
def P13923683111964839870.Spec : Prop :=
  ∀ n, (P13923683111964839870.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P1602310883522022033

`A084400(2+n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050376

/-- `A084400(2+n)` -/
def P1602310883522022033.Spec : Prop :=
  ∀ n, P1602310883522022033.a n = A050376 (n + 1)

theorem P1602310883522022033.correct : P1602310883522022033.Spec := by
  intro n
  simp only [A050376, Nat.add_sub_cancel]

end A050376

/-! ## A050376.P3443011467788608402

`filter[A096165(n+1), A355823(#)]`
-/

namespace A050376.P3443011467788608402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P3443011467788608402

namespace A050376

/-- `filter[A096165(n+1), A355823(#)]` -/
def P3443011467788608402.Spec : Prop :=
  ∀ n, P3443011467788608402.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P5326689231293356538

`filter[A246655(n+1), A355823(#)]`
-/

namespace A050376.P5326689231293356538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P5326689231293356538

namespace A050376

/-- `filter[A246655(n+1), A355823(#)]` -/
def P5326689231293356538.Spec : Prop :=
  ∀ n, P5326689231293356538.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P2754280902693857150

`filter[A000961(n+2), A355823(#)]`
-/

namespace A050376.P2754280902693857150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P2754280902693857150

namespace A050376

/-- `filter[A000961(n+2), A355823(#)]` -/
def P2754280902693857150.Spec : Prop :=
  ∀ n, P2754280902693857150.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P12742133009780792417

`filter[A164336(n+2), A355823(#)]`
-/

namespace A050376.P12742133009780792417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P12742133009780792417

namespace A050376

/-- `filter[A164336(n+2), A355823(#)]` -/
def P12742133009780792417.Spec : Prop :=
  ∀ n, P12742133009780792417.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P5974785936338534212

`∩[A096165(n+1), A222030(n)]`
-/

namespace A050376.P5974785936338534212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050376.P5974785936338534212

namespace A050376

/-- `∩[A096165(n+1), A222030(n)]` -/
def P5974785936338534212.Spec : Prop :=
  ∀ n, (P5974785936338534212.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P5474318112811574647

`record[A340087(n+1)+1]`
-/

namespace A050376.P5474318112811574647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050376.P5474318112811574647

namespace A050376

/-- `record[A340087(n+1)+1]` -/
def P5474318112811574647.Spec : Prop :=
  ∀ n, P5474318112811574647.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P8619964823201119570

`fp[A302778(n+1)]+1`
-/

namespace A050376.P8619964823201119570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A050376.P8619964823201119570

namespace A050376

/-- `fp[A302778(n+1)]+1` -/
def P8619964823201119570.Spec : Prop :=
  ∀ n, (P8619964823201119570.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P11258548393549953847

`fp[A302785(n+1)]+1`
-/

namespace A050376.P11258548393549953847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A050376.P11258548393549953847

namespace A050376

/-- `fp[A302785(n+1)]+1` -/
def P11258548393549953847.Spec : Prop :=
  ∀ n, (P11258548393549953847.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P12480854481438473252

`fp[A302786(n+1)]+1`
-/

namespace A050376.P12480854481438473252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A050376.P12480854481438473252

namespace A050376

/-- `fp[A302786(n+1)]+1` -/
def P12480854481438473252.Spec : Prop :=
  ∀ n, (P12480854481438473252.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P8532487178345272624

`filter[A000961(n+1), A302777(#)]`
-/

namespace A050376.P8532487178345272624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P8532487178345272624

namespace A050376

/-- `filter[A000961(n+1), A302777(#)]` -/
def P8532487178345272624.Spec : Prop :=
  ∀ n, P8532487178345272624.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P13931033050256517098

`filter[A059046(n+1), A302777(#)]`
-/

namespace A050376.P13931033050256517098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P13931033050256517098

namespace A050376

/-- `filter[A059046(n+1), A302777(#)]` -/
def P13931033050256517098.Spec : Prop :=
  ∀ n, P13931033050256517098.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P9135417778669291281

`filter[A066311(n+1), A302777(#)]`
-/

namespace A050376.P9135417778669291281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P9135417778669291281

namespace A050376

/-- `filter[A066311(n+1), A302777(#)]` -/
def P9135417778669291281.Spec : Prop :=
  ∀ n, P9135417778669291281.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P1641810533916498066

`filter[A069899(n+1), A302777(#)]`
-/

namespace A050376.P1641810533916498066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P1641810533916498066

namespace A050376

/-- `filter[A069899(n+1), A302777(#)]` -/
def P1641810533916498066.Spec : Prop :=
  ∀ n, P1641810533916498066.a n = A050376 (n + 1)

end A050376

/-!
# A050377: Number of ways to factor n into "Fermi-Dirac primes" (members of A050376).

The programs for A050377, the canonical program `A050377.P5092377049464550974` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050377 has offset 1).

The definition of A050377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050377.P9353911536591619

`∏{e}[1+n, A008643(#)]`
-/

namespace A050377.P9353911536591619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008643 (Nat.factorization (f1 n) p)

end

end A050377.P9353911536591619

namespace A050377

/-- `∏{e}[1+n, A008643(#)]` -/
def P9353911536591619.Spec : Prop :=
  ∀ n, P9353911536591619.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P4866667132779420590

`∏{e}[1+n, A008644(#)]`
-/

namespace A050377.P4866667132779420590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008644 (Nat.factorization (f1 n) p)

end

end A050377.P4866667132779420590

namespace A050377

/-- `∏{e}[1+n, A008644(#)]` -/
def P4866667132779420590.Spec : Prop :=
  ∀ n, P4866667132779420590.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P15129642355385578558

`∏{e}[1+n, A008645(#)]`
-/

namespace A050377.P15129642355385578558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008645 (Nat.factorization (f1 n) p)

end

end A050377.P15129642355385578558

namespace A050377

/-- `∏{e}[1+n, A008645(#)]` -/
def P15129642355385578558.Spec : Prop :=
  ∀ n, P15129642355385578558.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P5092377049464550974

`∏{e}[n+1, A018819(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050377

/-- `∏{e}[n+1, A018819(#)]` -/
def P5092377049464550974.Spec : Prop :=
  ∀ n, P5092377049464550974.a n = A050377 (n + 1)

theorem P5092377049464550974.correct : P5092377049464550974.Spec := by
  intro n
  simp only [A050377, Nat.add_sub_cancel]

end A050377

/-! ## A050377.P8215519250264092641

`∏{e}[n+1, A357454(#)]`
-/

namespace A050377.P8215519250264092641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A357454 (Nat.factorization (f1 n) p)

end

end A050377.P8215519250264092641

namespace A050377

/-- `∏{e}[n+1, A357454(#)]` -/
def P8215519250264092641.Spec : Prop :=
  ∀ n, P8215519250264092641.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P8211139722962023471

`∏{e}[n+1, A029300(3*#)]`
-/

namespace A050377.P8211139722962023471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A029300 (3 * Nat.factorization (f1 n) p)

end

end A050377.P8211139722962023471

namespace A050377

/-- `∏{e}[n+1, A029300(3*#)]` -/
def P8211139722962023471.Spec : Prop :=
  ∀ n, P8211139722962023471.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P15610279945097108292

`A050378(A101296(n+1))`
-/

namespace A050377.P15610279945097108292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050378 (A101296 (n + 1)).toNat

end

end A050377.P15610279945097108292

namespace A050377

/-- `A050378(A101296(n+1))` -/
def P15610279945097108292.Spec : Prop :=
  ∀ n, P15610279945097108292.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P17469111649622866269

`∏{e}[(n+1)², A006093(A002265(#)+1)]`
-/

namespace A050377.P17469111649622866269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006093 (A002265 (Nat.factorization (f1 n) p) + 1).toNat

end

end A050377.P17469111649622866269

namespace A050377

/-- `∏{e}[(n+1)², A006093(A002265(#)+1)]` -/
def P17469111649622866269.Spec : Prop :=
  ∀ n, P17469111649622866269.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P9432243720309041101

`A050361((n+1)*A066990(n+1))`
-/

namespace A050377.P9432243720309041101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 ((n + 1 : ℤ) * A066990 (n + 1)).toNat

end

end A050377.P9432243720309041101

namespace A050377

/-- `A050361((n+1)*A066990(n+1))` -/
def P9432243720309041101.Spec : Prop :=
  ∀ n, P9432243720309041101.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P10256847054148947076

`A325837(A008833(n+1)²)`
-/

namespace A050377.P10256847054148947076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A008833 (n + 1) ^ 2).toNat

end

end A050377.P10256847054148947076

namespace A050377

/-- `A325837(A008833(n+1)²)` -/
def P10256847054148947076.Spec : Prop :=
  ∀ n, P10256847054148947076.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P18216896069683928984

`A365333(A008833(n+1)²)`
-/

namespace A050377.P18216896069683928984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A008833 (n + 1) ^ 2).toNat

end

end A050377.P18216896069683928984

namespace A050377

/-- `A365333(A008833(n+1)²)` -/
def P18216896069683928984.Spec : Prop :=
  ∀ n, P18216896069683928984.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P14761850638666924442

`A368978(A008833(n+1)²)`
-/

namespace A050377.P14761850638666924442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A008833 (n + 1) ^ 2).toNat

end

end A050377.P14761850638666924442

namespace A050377

/-- `A368978(A008833(n+1)²)` -/
def P14761850638666924442.Spec : Prop :=
  ∀ n, P14761850638666924442.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P14266290996352604519

`A046951((A057918(n+1)²+1)²)`
-/

namespace A050377.P14266290996352604519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((A057918 (n + 1) ^ 2 + 1) ^ 2).toNat

end

end A050377.P14266290996352604519

namespace A050377

/-- `A046951((A057918(n+1)²+1)²)` -/
def P14266290996352604519.Spec : Prop :=
  ∀ n, P14266290996352604519.a n = A050377 (n + 1)

end A050377

/-!
# A050378: Number of factorizations into members of A050376 by prime signature. A050377(A025487).

The programs for A050378, there is no canonical definition to state claims against.
-/

/-! ## A050378.P8619770147410682413

`∏{e}[A025487(n+1), A008644(#)]`
-/

namespace A050378.P8619770147410682413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008644 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P8619770147410682413

/-! ## A050378.P15267079765293865104

`∏{e}[A025487(1+n), A008645(#)]`
-/

namespace A050378.P15267079765293865104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008645 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P15267079765293865104

/-! ## A050378.P14218159228575520254

`∏{e}[A025487(1+n), A018819(#)]`
-/

namespace A050378.P14218159228575520254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018819 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P14218159228575520254

/-! ## A050378.P2935940950588324808

`∏{e}[record[A051466(n+2)], A008645(#)]`
-/

namespace A050378.P2935940950588324808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008645 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P2935940950588324808

/-! ## A050378.P9233980944130239076

`∏{e}[record[A051466(n+2)], A018819(#)]`
-/

namespace A050378.P9233980944130239076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018819 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P9233980944130239076

/-! ## A050378.P17838584124801725657

`∏{e}[A055932(A331119(n+1)), A018819(#)]`
-/

namespace A050378.P17838584124801725657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018819 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P17838584124801725657

/-! ## A050378.P1732091987976191295

`A050377(A025487(n+1))`
-/

namespace A050378.P1732091987976191295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A025487 (n + 1)).toNat

end

end A050378.P1732091987976191295

/-! ## A050378.P6715489974373276173

`A330690(A181815(n+1))`
-/

namespace A050378.P6715489974373276173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330690 (A181815 (n + 1)).toNat

end

end A050378.P6715489974373276173

/-!
# A050379: Number of ordered factorizations of n into members of A050376.

The programs for A050379, there is no canonical definition to state claims against.
-/

/-! ## A050379.P12694621007220227140

`A050380(A101296(n+1))`
-/

namespace A050379.P12694621007220227140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050380 (A101296 (n + 1)).toNat

end

end A050379.P12694621007220227140

/-! ## A050379.P6357856019084063890

`A004526(A001055(n+1)+A349059(n+1)-A347440(n+1))`
-/

namespace A050379.P6357856019084063890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001055 (n + 1) + (A349059 (n + 1) - A347440 (n + 1))).toNat

end

end A050379.P6357856019084063890

/-! ## A050379.P10984947719289101377

`A064288(A082588(n+1))`
-/

namespace A050379.P10984947719289101377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064288 (A082588 (n + 1)).toNat

end

end A050379.P10984947719289101377

/-! ## A050379.P3208136299961407827

`A062571(A104725(n+1))`
-/

namespace A050379.P3208136299961407827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A104725 (n + 1)).toNat

end

end A050379.P3208136299961407827

/-!
# A050380: Number of ordered factorizations into terms of A050376 by prime signature.

The programs for A050380, there is no canonical definition to state claims against.
-/

/-! ## A050380.P1945246158430972037

`A050379(A025487(n+1))`
-/

namespace A050380.P1945246158430972037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (A025487 (n + 1)).toNat

end

end A050380.P1945246158430972037

/-!
# A050381: Number of series-reduced planted trees with n leaves of 2 colors.

The programs for A050381, there is no canonical definition to state claims against.
-/

/-! ## A050381.P725515028878826682

`A319254(∑[n+2])`
-/

namespace A050381.P725515028878826682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050381.P725515028878826682

/-! ## A050381.P15026957102596339286

`record[gcd(A292085(n+3), A319254(n+2))]`
-/

namespace A050381.P15026957102596339286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292085 (n + 3)) (A319254 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P15026957102596339286

/-! ## A050381.P6416876922436432950

`record[A319254(A000096(A274640(n)))]`
-/

namespace A050381.P6416876922436432950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A000096 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P6416876922436432950

/-! ## A050381.P5477059031036943660

`record[A319254(A000096(A305298(n)))]`
-/

namespace A050381.P5477059031036943660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A000096 (A305298 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P5477059031036943660

/-! ## A050381.P8722581261881395324

`record[A319254(A000096(A289626(n+1)))]`
-/

namespace A050381.P8722581261881395324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A000096 (A289626 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P8722581261881395324

/-!
# A050382: Number of ordered factorizations of n into primes by prime signature: A008480(A025487).

The programs for A050382, there is no canonical definition to state claims against.
-/

/-! ## A050382.P9145992025905496292

`A318762(A181820(n+1))`
-/

namespace A050382.P9145992025905496292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181820 (n + 1)).toNat

end

end A050382.P9145992025905496292

/-! ## A050382.P4911590286889595083

`A318808(2*A181820(1+n))`
-/

namespace A050382.P4911590286889595083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A181820 (1 + n)).toNat

end

end A050382.P4911590286889595083

/-! ## A050382.P7290369169623753157

`A318810(2*A181820(n+1))`
-/

namespace A050382.P7290369169623753157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A181820 (n + 1)).toNat

end

end A050382.P7290369169623753157

/-! ## A050382.P8779541429328265818

`A008480(A025487(n+1))`
-/

namespace A050382.P8779541429328265818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A025487 (n + 1)).toNat

end

end A050382.P8779541429328265818

/-! ## A050382.P1766147032175908073

`A325392(A233819(n+1))`
-/

namespace A050382.P1766147032175908073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (A233819 (n + 1)).toNat

end

end A050382.P1766147032175908073

/-!
# A050383: Permutation rooted trees with n nodes.

The programs for A050383, there is no canonical definition to state claims against.
-/

/-! ## A050383.P14544226176232718121

`A324090(A000041(n))+A148790(n)`
-/

namespace A050383.P14544226176232718121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324090 (A000041 n).toNat + A148790 n

end

end A050383.P14544226176232718121

/-! ## A050383.P15762942748971958425

`A324090(A000041(n))+A148791(n)`
-/

namespace A050383.P15762942748971958425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324090 (A000041 n).toNat + A148791 n

end

end A050383.P15762942748971958425

/-! ## A050383.P2112653820186908260

`A389871(n)+A000120(A288971(n))`
-/

namespace A050383.P2112653820186908260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389871 n + A000120 (A288971 n).toNat

end

end A050383.P2112653820186908260

/-!
# A050384: Nonprimes such that n and phi(n) are relatively prime.

The programs for A050384, the canonical program `A050384.P17103909694209769100` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050384 has offset 1).

The definition of A050384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050384.P17103909694209769100

`filter[A003277(1+n), A005171(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050384

/-- `filter[A003277(1+n), A005171(#)]` -/
def P17103909694209769100.Spec : Prop :=
  ∀ n, P17103909694209769100.a n = A050384 (n + 1)

theorem P17103909694209769100.correct : P17103909694209769100.Spec := by
  intro n
  simp only [A050384, Nat.add_sub_cancel]

end A050384

/-! ## A050384.P13850468815224352707

`filter[A003277(1+n), A292438(#)]`
-/

namespace A050384.P13850468815224352707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A050384.P13850468815224352707

namespace A050384

/-- `filter[A003277(1+n), A292438(#)]` -/
def P13850468815224352707.Spec : Prop :=
  ∀ n, P13850468815224352707.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P3728040989484078191

`filter[A003277(1+n), A354819(#)]`
-/

namespace A050384.P3728040989484078191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P3728040989484078191

namespace A050384

/-- `filter[A003277(1+n), A354819(#)]` -/
def P3728040989484078191.Spec : Prop :=
  ∀ n, P3728040989484078191.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P12557827911383808809

`filter[A230918(n+1), A354819(#)]`
-/

namespace A050384.P12557827911383808809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P12557827911383808809

namespace A050384

/-- `filter[A230918(n+1), A354819(#)]` -/
def P12557827911383808809.Spec : Prop :=
  ∀ n, P12557827911383808809.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P9047827239200522363

`filter[A051532(n+1), A354819(#)]`
-/

namespace A050384.P9047827239200522363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P9047827239200522363

namespace A050384

/-- `filter[A051532(n+1), A354819(#)]` -/
def P9047827239200522363.Spec : Prop :=
  ∀ n, P9047827239200522363.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P11653751545988209006

`filter[A056867(n+1), A354819(#)]`
-/

namespace A050384.P11653751545988209006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P11653751545988209006

namespace A050384

/-- `filter[A056867(n+1), A354819(#)]` -/
def P11653751545988209006.Spec : Prop :=
  ∀ n, P11653751545988209006.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P12636747865520467965

`∩[A003277(n+1), A014076(n+1)]`
-/

namespace A050384.P12636747865520467965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P12636747865520467965

namespace A050384

/-- `∩[A003277(n+1), A014076(n+1)]` -/
def P12636747865520467965.Spec : Prop :=
  ∀ n, (P12636747865520467965.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P5803135622660081059

`∩[A003277(n+1), A264828(n+1)]`
-/

namespace A050384.P5803135622660081059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P5803135622660081059

namespace A050384

/-- `∩[A003277(n+1), A264828(n+1)]` -/
def P5803135622660081059.Spec : Prop :=
  ∀ n, (P5803135622660081059.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P17729954117205261373

`∩[A003277(n+1), A087247(n+1)]`
-/

namespace A050384.P17729954117205261373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P17729954117205261373

namespace A050384

/-- `∩[A003277(n+1), A087247(n+1)]` -/
def P17729954117205261373.Spec : Prop :=
  ∀ n, (P17729954117205261373.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P11694893874579666578

`∩[A051532(n+1), A087247(n+1)]`
-/

namespace A050384.P11694893874579666578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P11694893874579666578

namespace A050384

/-- `∩[A051532(n+1), A087247(n+1)]` -/
def P11694893874579666578.Spec : Prop :=
  ∀ n, (P11694893874579666578.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P17073576038822231756

`∩[A056867(n+1), A087247(n+1)]`
-/

namespace A050384.P17073576038822231756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P17073576038822231756

namespace A050384

/-- `∩[A056867(n+1), A087247(n+1)]` -/
def P17073576038822231756.Spec : Prop :=
  ∀ n, (P17073576038822231756.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P6031616263509964080

`∩[A087247(n+1), A230918(n+1)]`
-/

namespace A050384.P6031616263509964080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P6031616263509964080

namespace A050384

/-- `∩[A087247(n+1), A230918(n+1)]` -/
def P6031616263509964080.Spec : Prop :=
  ∀ n, (P6031616263509964080.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P926692851001316762

`∩[A000469(n+1), A003277(n+1)]`
-/

namespace A050384.P926692851001316762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P926692851001316762

namespace A050384

/-- `∩[A000469(n+1), A003277(n+1)]` -/
def P926692851001316762.Spec : Prop :=
  ∀ n, (P926692851001316762.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P7199664145898796810

`∩[A000469(n+1), A051532(n+1)]`
-/

namespace A050384.P7199664145898796810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P7199664145898796810

namespace A050384

/-- `∩[A000469(n+1), A051532(n+1)]` -/
def P7199664145898796810.Spec : Prop :=
  ∀ n, (P7199664145898796810.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P8175272316267750031

`∩[A000469(n+1), A056867(n+1)]`
-/

namespace A050384.P8175272316267750031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P8175272316267750031

namespace A050384

/-- `∩[A000469(n+1), A056867(n+1)]` -/
def P8175272316267750031.Spec : Prop :=
  ∀ n, (P8175272316267750031.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P9073463629001747133

`∩[A000469(n+1), A230918(n+1)]`
-/

namespace A050384.P9073463629001747133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P9073463629001747133

namespace A050384

/-- `∩[A000469(n+1), A230918(n+1)]` -/
def P9073463629001747133.Spec : Prop :=
  ∀ n, (P9073463629001747133.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P9337352558088863284

`∩[A003277(n+1), A018252(n+1)]`
-/

namespace A050384.P9337352558088863284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P9337352558088863284

namespace A050384

/-- `∩[A003277(n+1), A018252(n+1)]` -/
def P9337352558088863284.Spec : Prop :=
  ∀ n, (P9337352558088863284.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P6905144380986613511

`∩[A003277(n+1), A141468(n+1)]`
-/

namespace A050384.P6905144380986613511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P6905144380986613511

namespace A050384

/-- `∩[A003277(n+1), A141468(n+1)]` -/
def P6905144380986613511.Spec : Prop :=
  ∀ n, (P6905144380986613511.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P8151766728717947303

`∩[A003277(n+1), A067582(n+1)]`
-/

namespace A050384.P8151766728717947303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P8151766728717947303

namespace A050384

/-- `∩[A003277(n+1), A067582(n+1)]` -/
def P8151766728717947303.Spec : Prop :=
  ∀ n, (P8151766728717947303.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P8512326304245194470

`∩[A003277(n+1), A069169(n+1)]`
-/

namespace A050384.P8512326304245194470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P8512326304245194470

namespace A050384

/-- `∩[A003277(n+1), A069169(n+1)]` -/
def P8512326304245194470.Spec : Prop :=
  ∀ n, (P8512326304245194470.a n : ℤ) = A050384 (n + 1)

end A050384

/-!
# A050385: Reversion of Moebius function A008683.

The programs for A050385, there is no canonical definition to state claims against.
-/

/-! ## A050385.P7173827879236783366

`A296195(n+1)-A055958(A055963(n))`
-/

namespace A050385.P7173827879236783366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - A055958 (A055963 n).toNat

end

end A050385.P7173827879236783366

/-! ## A050385.P12715620626118291435

`A296195(n+1)-A068510(A285012(n+1))`
-/

namespace A050385.P12715620626118291435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - A068510 (A285012 (n + 1)).toNat

end

end A050385.P12715620626118291435

/-! ## A050385.P723014125174518266

`A296195(n+1)-Δ[A011860(A292475(n+1))]`
-/

namespace A050385.P723014125174518266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 (A292475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - (f1 (n + 1) - f1 n)

end

end A050385.P723014125174518266

/-! ## A050385.P717985409923708723

`A296195(n+1)-A217156(A296207(3*n+4))`
-/

namespace A050385.P717985409923708723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - A217156 (A296207 (3 * n + 4)).toNat

end

end A050385.P717985409923708723

/-! ## A050385.P4731636215693540042

`A296195(∑[A043564(n)])`
-/

namespace A050385.P4731636215693540042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050385.P4731636215693540042

/-!
# A050386: Exponential reversion of Moebius function A008683.

The programs for A050386, there is no canonical definition to state claims against.
-/

/-! ## A050386.P2221105192389705607

`A182665(n^n+abs(1-n)+1)`
-/

namespace A050386.P2221105192389705607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 ((n ^ n : ℤ) + |1 - (n : ℤ)| + 1).toNat

end

end A050386.P2221105192389705607

/-! ## A050386.P10656751516847178528

`A172474(A081682(n))+1-n`
-/

namespace A050386.P10656751516847178528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A081682 n).toNat + (1 - (n : ℤ))

end

end A050386.P10656751516847178528

/-!
# A050387: Reversion of Liouville's lambda function A008836.

The programs for A050387, there is no canonical definition to state claims against.
-/

/-! ## A050387.P12092892933613822714

`or(1, A031218(A049157(n)))`
-/

namespace A050387.P12092892933613822714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031218 (A049157 n).toNat)

end

end A050387.P12092892933613822714

/-! ## A050387.P11117819127029162962

`A049157(n)-A005638(A049164(n))`
-/

namespace A050387.P11117819127029162962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A005638 (A049164 n).toNat

end

end A050387.P11117819127029162962

/-! ## A050387.P1601349645353529491

`A049157(n)-A107846(A056273(n))`
-/

namespace A050387.P1601349645353529491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A107846 (A056273 n).toNat

end

end A050387.P1601349645353529491

/-! ## A050387.P13655785236046575094

`A049157(n)-A341026(A073431(n))`
-/

namespace A050387.P13655785236046575094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A341026 ((A073431 n).toNat + 165)

end

end A050387.P13655785236046575094

/-! ## A050387.P3566487081919960769

`A049157(n)-A024359(A072853(n+1))`
-/

namespace A050387.P3566487081919960769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A024359 (A072853 (n + 1)).toNat

end

end A050387.P3566487081919960769

/-!
# A050388: Exponential reversion of Liouville's lambda function A008836.

The programs for A050388, there is no canonical definition to state claims against.
-/

/-! ## A050388.P7155090998371101080

`A047263(A080836(n))+2^floor(n/2)`
-/

namespace A050388.P7155090998371101080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047263 (A080836 n).toNat : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A050388.P7155090998371101080

/-! ## A050388.P12032165600251175963

`A004526(A265949(n)+A096310(n))`
-/

namespace A050388.P12032165600251175963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A265949 n + A096310 n).toNat

end

end A050388.P12032165600251175963

/-!
# A050389: Reversion of divisor function A000005.

The programs for A050389, there is no canonical definition to state claims against.
-/

/-! ## A050389.P9991485972756208819

`(-1)^n*floor(root(A216693(n+1), 5))`
-/

namespace A050389.P9991485972756208819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊(A216693 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A050389.P9991485972756208819

/-!
# A050397: Reversion of sequence of involutions (A000085).

The programs for A050397, there is no canonical definition to state claims against.
-/

/-! ## A050397.P5987821873651359232

`(-1)^n*A186021(A073787(n))`
-/

namespace A050397.P5987821873651359232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A186021 (A073787 n).toNat

end

end A050397.P5987821873651359232

/-! ## A050397.P15594380679376874547

`A020639(∑{digits}[n, 8^#])*A292935(n)`
-/

namespace A050397.P15594380679376874547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 8 ^ x).sum * A292935 n

end

end A050397.P15594380679376874547

/-!
# A050398: Exponential reversion of sequence of involutions (A000085).

The programs for A050398, there is no canonical definition to state claims against.
-/

/-! ## A050398.P13206873999246712915

`A077168(A007489(n))*A168491(n)`
-/

namespace A050398.P13206873999246712915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A007489 n).toNat * A168491 n

end

end A050398.P13206873999246712915

/-!
# A050399: Least k such that n = A009195(k) (= gcd(phi(k), k)).

The programs for A050399, the canonical program `A050399.P12166716681260273006` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050399 has offset 1).

The definition of A050399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050399.P16235938671757827088

`(n+1)²/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])`
-/

namespace A050399.P16235938671757827088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)) : ℚ)

end

end A050399.P16235938671757827088

namespace A050399

/-- `(n+1)²/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])` -/
def P16235938671757827088.Spec : Prop :=
  ∀ n, P16235938671757827088.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P5830677546145366002

`(1+n)*A109395(1+n)`
-/

namespace A050399.P5830677546145366002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A109395 (1 + n)

end

end A050399.P5830677546145366002

namespace A050399

/-- `(1+n)*A109395(1+n)` -/
def P5830677546145366002.Spec : Prop :=
  ∀ n, P5830677546145366002.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P11567489779975408609

`lcm(1+n, A373319(n+1))`
-/

namespace A050399.P11567489779975408609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 + n : ℤ) (A373319 (n + 1))

end

end A050399.P11567489779975408609

namespace A050399

/-- `lcm(1+n, A373319(n+1))` -/
def P11567489779975408609.Spec : Prop :=
  ∀ n, (P11567489779975408609.a n : ℤ) = A050399 (n + 1)

end A050399

/-! ## A050399.P2001382046806454639

`(1+n)²/A009195(n+1)`
-/

namespace A050399.P2001382046806454639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ 2 : ℚ) / (A009195 (n + 1) : ℚ)

end

end A050399.P2001382046806454639

namespace A050399

/-- `(1+n)²/A009195(n+1)` -/
def P2001382046806454639.Spec : Prop :=
  ∀ n, P2001382046806454639.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P4098712347842098098

`(n+1)*A295126(∏{p}[n+1, #])`
-/

namespace A050399.P4098712347842098098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A295126 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A050399.P4098712347842098098

namespace A050399

/-- `(n+1)*A295126(∏{p}[n+1, #])` -/
def P4098712347842098098.Spec : Prop :=
  ∀ n, P4098712347842098098.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P1271232845983888346

`(n+1)*(n+1-A331176(n+1))`
-/

namespace A050399.P1271232845983888346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A331176 (n + 1))

end

end A050399.P1271232845983888346

namespace A050399

/-- `(n+1)*(n+1-A331176(n+1))` -/
def P1271232845983888346.Spec : Prop :=
  ∀ n, P1271232845983888346.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P1917470921980323353

`(n+1)²/gcd(n+1, A000010(n+1))`
-/

namespace A050399.P1917470921980323353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A050399.P1917470921980323353

namespace A050399

/-- `(n+1)²/gcd(n+1, A000010(n+1))` -/
def P1917470921980323353.Spec : Prop :=
  ∀ n, P1917470921980323353.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P6243781648529650433

`A052106(n+1)+A009262(n+1)`
-/

namespace A050399.P6243781648529650433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052106 (n + 1) + A009262 (n + 1)

end

end A050399.P6243781648529650433

namespace A050399

/-- `A052106(n+1)+A009262(n+1)` -/
def P6243781648529650433.Spec : Prop :=
  ∀ n, P6243781648529650433.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P5996678370542517386

`(n+1)*A294650(A007947(n+1))`
-/

namespace A050399.P5996678370542517386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294650 (A007947 (n + 1)).toNat

end

end A050399.P5996678370542517386

namespace A050399

/-- `(n+1)*A294650(A007947(n+1))` -/
def P5996678370542517386.Spec : Prop :=
  ∀ n, P5996678370542517386.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P4470904802623392106

`(n+1)*A225680(A322590(n+1))`
-/

namespace A050399.P4470904802623392106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A225680 (A322590 (n + 1)).toNat

end

end A050399.P4470904802623392106

namespace A050399

/-- `(n+1)*A225680(A322590(n+1))` -/
def P4470904802623392106.Spec : Prop :=
  ∀ n, P4470904802623392106.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P12166716681260273006

`(n+1)*A000027((n+1)/A009195(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050399

/-- `(n+1)*A000027((n+1)/A009195(n+1))` -/
def P12166716681260273006.Spec : Prop :=
  ∀ n, P12166716681260273006.a n = A050399 (n + 1)

theorem P12166716681260273006.correct : P12166716681260273006.Spec := by
  intro n
  simp only [A050399, Nat.add_sub_cancel]

end A050399

/-! ## A050399.P5100680927780262567

`(n+1)²/gcd(A160356(n+1), A247074(n+1))`
-/

namespace A050399.P5100680927780262567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (A160356 (n + 1)) (A247074 (n + 1)) : ℚ)

end

end A050399.P5100680927780262567

namespace A050399

/-- `(n+1)²/gcd(A160356(n+1), A247074(n+1))` -/
def P5100680927780262567.Spec : Prop :=
  ∀ n, P5100680927780262567.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P9736885940226929943

`A053191(n+1)/(A000010(n+1)*A009195(n+1))`
-/

namespace A050399.P9736885940226929943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (A000010 (n + 1) * A009195 (n + 1) : ℚ)

end

end A050399.P9736885940226929943

namespace A050399

/-- `A053191(n+1)/(A000010(n+1)*A009195(n+1))` -/
def P9736885940226929943.Spec : Prop :=
  ∀ n, P9736885940226929943.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P15645540965954801911

`A189393(n+1)/(A002618(n+1)*A009195(n+1))`
-/

namespace A050399.P15645540965954801911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) : ℚ) / (A002618 (n + 1) * A009195 (n + 1) : ℚ)

end

end A050399.P15645540965954801911

namespace A050399

/-- `A189393(n+1)/(A002618(n+1)*A009195(n+1))` -/
def P15645540965954801911.Spec : Prop :=
  ∀ n, P15645540965954801911.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P16427198412059210367

`(A076512(n+1)+A076511(n+1))²*A009195(n+1)`
-/

namespace A050399.P16427198412059210367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076512 (n + 1) + A076511 (n + 1)) ^ 2 * A009195 (n + 1)

end

end A050399.P16427198412059210367

namespace A050399

/-- `(A076512(n+1)+A076511(n+1))²*A009195(n+1)` -/
def P16427198412059210367.Spec : Prop :=
  ∀ n, P16427198412059210367.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P14989045478892982418

`A002618(n+1)/A000010(n+1)²*A009262(n+1)`
-/

namespace A050399.P14989045478892982418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A000010 (n + 1) ^ 2 : ℚ) * (A009262 (n + 1) : ℚ)

end

end A050399.P14989045478892982418

namespace A050399

/-- `A002618(n+1)/A000010(n+1)²*A009262(n+1)` -/
def P14989045478892982418.Spec : Prop :=
  ∀ n, P14989045478892982418.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P12515160639070100551

`(n+1)²/gcd(n+1, ∑{#}[n, 1-floor(1/gcd(n+1, #))])`
-/

namespace A050399.P12515160639070100551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋)) : ℚ)

end

end A050399.P12515160639070100551

namespace A050399

/-- `(n+1)²/gcd(n+1, ∑{#}[n, 1-floor(1/gcd(n+1, #))])` -/
def P12515160639070100551.Spec : Prop :=
  ∀ n, P12515160639070100551.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P2752948454335991116

`lcm((n+1)², A000010((n+1)²))/A000010(n+1)`
-/

namespace A050399.P2752948454335991116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A000010 ((n + 1) ^ 2)) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A050399.P2752948454335991116

namespace A050399

/-- `lcm((n+1)², A000010((n+1)²))/A000010(n+1)` -/
def P2752948454335991116.Spec : Prop :=
  ∀ n, P2752948454335991116.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P16061173389484982948

`(n+1)*A004736(A286149(n+1))`
-/

namespace A050399.P16061173389484982948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004736 (A286149 (n + 1)).toNat

end

end A050399.P16061173389484982948

namespace A050399

/-- `(n+1)*A004736(A286149(n+1))` -/
def P16061173389484982948.Spec : Prop :=
  ∀ n, P16061173389484982948.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P8013594805220283237

`fo[A009195(n+1)-1]+1`
-/

namespace A050399.P8013594805220283237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A050399.P8013594805220283237

namespace A050399

/-- `fo[A009195(n+1)-1]+1` -/
def P8013594805220283237.Spec : Prop :=
  ∀ n, (P8013594805220283237.a n : ℤ) = A050399 (n + 1)

end A050399

