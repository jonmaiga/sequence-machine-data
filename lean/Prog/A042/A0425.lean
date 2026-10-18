import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A042501: Denominators of continued fraction convergents to sqrt(778).

The programs for A042501, there is no canonical definition to state claims against.
-/

/-! ## A042501.P14775654468680678767

`A126004(A025191(n))`
-/

namespace A042501.P14775654468680678767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126004 (A025191 n).toNat

end

end A042501.P14775654468680678767

/-!
# A042503: Denominators of continued fraction convergents to sqrt(779).

The programs for A042503, there is no canonical definition to state claims against.
-/

/-! ## A042503.P8361647455762393515

`A049054(A024950(n+1))`
-/

namespace A042503.P8361647455762393515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049054 (A024950 (n + 1)).toNat

end

end A042503.P8361647455762393515

/-!
# A042505: Denominators of continued fraction convergents to sqrt(780).

The programs for A042505, there is no canonical definition to state claims against.
-/

/-! ## A042505.P7921144225102787096

`A004525(A042509(n))`
-/

namespace A042505.P7921144225102787096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042509 n).toNat

end

end A042505.P7921144225102787096

/-! ## A042505.P8903412126398671509

`A065033(A042509(n)-1)`
-/

namespace A042505.P8903412126398671509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042509 n - 1).toNat

end

end A042505.P8903412126398671509

/-!
# A042509: Denominators of continued fraction convergents to sqrt(782).

The programs for A042509, there is no canonical definition to state claims against.
-/

/-! ## A042509.P2286042690101439586

`A004525(A042511(n))`
-/

namespace A042509.P2286042690101439586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042511 n).toNat

end

end A042509.P2286042690101439586

/-! ## A042509.P3102539493543628408

`A065033(A042511(n)-1)`
-/

namespace A042509.P3102539493543628408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042511 n - 1).toNat

end

end A042509.P3102539493543628408

/-!
# A042510: Numerators of continued fraction convergents to sqrt(783).

The programs for A042510, there is no canonical definition to state claims against.
-/

/-! ## A042510.P5396368259242314567

`Δ[A014601(n)]*A041154(n)`
-/

namespace A042510.P5396368259242314567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041154 n

end

end A042510.P5396368259242314567

/-! ## A042510.P17098794771673572371

`A010684(n+1)*A041154(n)`
-/

namespace A042510.P17098794771673572371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) * A041154 n

end

end A042510.P17098794771673572371

/-! ## A042510.P8715608189972333926

`(4-A010684(n))*A041154(n)`
-/

namespace A042510.P8715608189972333926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A010684 n) * A041154 n

end

end A042510.P8715608189972333926

/-! ## A042510.P1998353712296035576

`gcd(3, A006190(n))*A041154(n)`
-/

namespace A042510.P1998353712296035576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A006190 n) : ℤ) * A041154 n

end

end A042510.P1998353712296035576

/-! ## A042510.P2210320752577224907

`A041154(n)*A276391(n²+2)`
-/

namespace A042510.P2210320752577224907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041154 n * A276391 (n ^ 2 + 2)

end

end A042510.P2210320752577224907

/-!
# A042511: Denominators of continued fraction convergents to sqrt(783).

The programs for A042511, the canonical program `A042511.P613052358327875848` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042511 has offset 0).

The definition of A042511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042511.P613052358327875848

`A041155(n)/A010684(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042511

/-- `A041155(n)/A010684(n)` -/
def P613052358327875848.Spec : Prop :=
  ∀ n, P613052358327875848.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P10777084107603428337

`A041155(n)/Δ[A042948(n)]`
-/

namespace A042511.P10777084107603428337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042511.P10777084107603428337

namespace A042511

/-- `A041155(n)/Δ[A042948(n)]` -/
def P10777084107603428337.Spec : Prop :=
  ∀ n, P10777084107603428337.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P6495577647138218137

`A041155(n)/A010873(2*n+1)`
-/

namespace A042511.P6495577647138218137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A010873 (2 * n + 1) : ℚ)

end

end A042511.P6495577647138218137

namespace A042511

/-- `A041155(n)/A010873(2*n+1)` -/
def P6495577647138218137.Spec : Prop :=
  ∀ n, P6495577647138218137.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P10678642586105680978

`A041155(n)/(and(2, A005843(n))+1)`
-/

namespace A042511.P10678642586105680978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (Int.land 2 (A005843 n) + 1 : ℚ)

end

end A042511.P10678642586105680978

namespace A042511

/-- `A041155(n)/(and(2, A005843(n))+1)` -/
def P10678642586105680978.Spec : Prop :=
  ∀ n, P10678642586105680978.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P6313549074895018047

`A041155(n)/(Δ[A047241(n+1)]-1)`
-/

namespace A042511.P6313549074895018047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (f1 (n + 1) - f1 n - 1 : ℚ)

end

end A042511.P6313549074895018047

namespace A042511

/-- `A041155(n)/(Δ[A047241(n+1)]-1)` -/
def P6313549074895018047.Spec : Prop :=
  ∀ n, P6313549074895018047.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P165047539908376237

`A041155(n)/A276391(A098871(n))`
-/

namespace A042511.P165047539908376237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A276391 (A098871 n).toNat : ℚ)

end

end A042511.P165047539908376237

namespace A042511

/-- `A041155(n)/A276391(A098871(n))` -/
def P165047539908376237.Spec : Prop :=
  ∀ n, P165047539908376237.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P5564030769156394667

`A041155(n)/A041155(Δ[A008619(n)])`
-/

namespace A042511.P5564030769156394667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A041155 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042511.P5564030769156394667

namespace A042511

/-- `A041155(n)/A041155(Δ[A008619(n)])` -/
def P5564030769156394667.Spec : Prop :=
  ∀ n, P5564030769156394667.a n = (A042511 n : ℚ)

end A042511

/-! ## A042511.P6768094036397189332

`A041155(n)/A016279(n)%4`
-/

namespace A042511.P6768094036397189332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (Int.tmod (A016279 n) 4 : ℚ)

end

end A042511.P6768094036397189332

namespace A042511

/-- `A041155(n)/A016279(n)%4` -/
def P6768094036397189332.Spec : Prop :=
  ∀ n, P6768094036397189332.a n = (A042511 n : ℚ)

end A042511

/-!
# A042513: Denominators of continued fraction convergents to sqrt(785).

The programs for A042513, the canonical program `A042513.P7842400077651823684` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042513 has offset 0).

The definition of A042513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042513.P7842400077651823684

`56*a(n-1)+a(n-2)` with `a(0)=1, a(1)=56`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A042513

/-- `56*a(n-1)+a(n-2)` -/
def P7842400077651823684.Spec : Prop :=
  ∀ n, (P7842400077651823684.a n : ℤ) = A042513 n

theorem P7842400077651823684.correct : P7842400077651823684.Spec := by
  intro n
  simp only [A042513]

end A042513

/-! ## A042513.P13168015503100246079

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=56`
-/

namespace A042513.P13168015503100246079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 56] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042513.P13168015503100246079

namespace A042513

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P13168015503100246079.Spec : Prop :=
  ∀ n, P13168015503100246079.a n = (A042513 n : ℚ)

end A042513

/-! ## A042513.P17607715906239817368

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=56`
-/

namespace A042513.P17607715906239817368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 56] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042513.P17607715906239817368

namespace A042513

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P17607715906239817368.Spec : Prop :=
  ∀ n, P17607715906239817368.a n = A042513 n

end A042513

/-!
# A042518: Numerators of continued fraction convergents to sqrt(788).

The programs for A042518, there is no canonical definition to state claims against.
-/

/-! ## A042518.P2257520541371331989

`gcd(2, n)*A041364(n)`
-/

namespace A042518.P2257520541371331989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041364 n

end

end A042518.P2257520541371331989

/-! ## A042518.P15145587823363165507

`A000034(n+1)*A041364(n)`
-/

namespace A042518.P15145587823363165507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041364 n

end

end A042518.P15145587823363165507

/-! ## A042518.P6800549274426449092

`(3-A000034(n))*A041364(n)`
-/

namespace A042518.P6800549274426449092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041364 n

end

end A042518.P6800549274426449092

/-! ## A042518.P915679559853426794

`A014695((n+1)²)*A041364(n)`
-/

namespace A042518.P915679559853426794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((n + 1) ^ 2) * A041364 n

end

end A042518.P915679559853426794

/-! ## A042518.P1350819314361302417

`A010150(A005918(n))*A041364(n)`
-/

namespace A042518.P1350819314361302417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010150 (A005918 n).toNat * A041364 n

end

end A042518.P1350819314361302417

/-! ## A042518.P13316119392607040803

`A010150(A010000(n))*A041364(n)`
-/

namespace A042518.P13316119392607040803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010150 (A010000 n).toNat * A041364 n

end

end A042518.P13316119392607040803

/-!
# A042519: Denominators of continued fraction convergents to sqrt(788).

The programs for A042519, there is no canonical definition to state claims against.
-/

/-! ## A042519.P5301636627426607244

`A041365(n)/A000034(n)`
-/

namespace A042519.P5301636627426607244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A000034 n : ℚ)

end

end A042519.P5301636627426607244

/-! ## A042519.P9635890577664679922

`A041365(n)/A014695(n²)`
-/

namespace A042519.P9635890577664679922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A042519.P9635890577664679922

/-! ## A042519.P8726536377202565155

`A041365(n)/A130658(2*n)`
-/

namespace A042519.P8726536377202565155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A130658 (2 * n) : ℚ)

end

end A042519.P8726536377202565155

/-! ## A042519.P7844724636167345799

`A041365(n)/A010123(A056105(n))`
-/

namespace A042519.P7844724636167345799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A010123 (A056105 n).toNat : ℚ)

end

end A042519.P7844724636167345799

/-! ## A042519.P903576044290656274

`A041365(n)/A010889(A007088(n))`
-/

namespace A042519.P903576044290656274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041365 n : ℚ) / (A010889 (A007088 n).toNat : ℚ)

end

end A042519.P903576044290656274

/-!
# A042521: Denominators of continued fraction convergents to sqrt(789).

The programs for A042521, there is no canonical definition to state claims against.
-/

/-! ## A042521.P11898846363209750511

`A101233(A131140(n+1))`
-/

namespace A042521.P11898846363209750511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101233 (A131140 (n + 1)).toNat

end

end A042521.P11898846363209750511

/-!
# A042523: Denominators of continued fraction convergents to sqrt(790).

The programs for A042523, there is no canonical definition to state claims against.
-/

/-! ## A042523.P18279209434281813827

`A340596(A366654(n+1))+A008587(n)`
-/

namespace A042523.P18279209434281813827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (A366654 (n + 1)).toNat + A008587 n

end

end A042523.P18279209434281813827

/-!
# A042526: Numerators of continued fraction convergents to sqrt(792).

The programs for A042526, there is no canonical definition to state claims against.
-/

/-! ## A042526.P16359898367618180155

`A041156(3*n+2)`
-/

namespace A042526.P16359898367618180155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041156 (3 * n + 2)

end

end A042526.P16359898367618180155

/-! ## A042526.P14555789204389159028

`gcd(2, n)*A041366(n)`
-/

namespace A042526.P14555789204389159028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041366 n

end

end A042526.P14555789204389159028

/-! ## A042526.P18339394234205553753

`A000034(n+1)*A041366(n)`
-/

namespace A042526.P18339394234205553753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041366 n

end

end A042526.P18339394234205553753

/-! ## A042526.P7224645094554216802

`2/A000034(n)*A041366(n)`
-/

namespace A042526.P7224645094554216802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041366 n : ℚ)

end

end A042526.P7224645094554216802

/-! ## A042526.P4338806713803551317

`A014695((n+1)²)*A041366(n)`
-/

namespace A042526.P4338806713803551317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((n + 1) ^ 2) * A041366 n

end

end A042526.P4338806713803551317

/-!
# A042527: Denominators of continued fraction convergents to sqrt(792).

The programs for A042527, there is no canonical definition to state claims against.
-/

/-! ## A042527.P11384317800901149839

`A041157(A016789(n))/3`
-/

namespace A042527.P11384317800901149839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041157 (A016789 n).toNat : ℚ) / 3

end

end A042527.P11384317800901149839

/-! ## A042527.P15722080166000730063

`A041367(n)/A000034(n)`
-/

namespace A042527.P15722080166000730063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A000034 n : ℚ)

end

end A042527.P15722080166000730063

/-! ## A042527.P6268905606075114804

`A041367(n)/A014695(n²)`
-/

namespace A042527.P6268905606075114804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A042527.P6268905606075114804

/-! ## A042527.P12422829299383512745

`A041367(n)/A130658(2*n)`
-/

namespace A042527.P12422829299383512745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A130658 (2 * n) : ℚ)

end

end A042527.P12422829299383512745

/-! ## A042527.P4454018082403141957

`A041367(n)/A010123(n²+1)`
-/

namespace A042527.P4454018082403141957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041367 n : ℚ) / (A010123 (n ^ 2 + 1) : ℚ)

end

end A042527.P4454018082403141957

/-!
# A042537: Denominators of continued fraction convergents to sqrt(797).

The programs for A042537, there is no canonical definition to state claims against.
-/

/-! ## A042537.P10059963201611734455

`A073311(∑[∏{d}[n+1, #²]*A050047(n+1)])`
-/

namespace A042537.P10059963201611734455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ) * A050047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073311 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042537.P10059963201611734455

/-!
# A042541: Denominators of continued fraction convergents to sqrt(799).

The programs for A042541, there is no canonical definition to state claims against.
-/

/-! ## A042541.P10023487005065856264

`lcm(n, A000032(a(n-1)-1)+1)` with `a(0)=1`
-/

namespace A042541.P10023487005065856264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n : ℤ) (A000032 (a (n - 1) - 1) + 1)

end

end A042541.P10023487005065856264

/-!
# A042543: Denominators of continued fraction convergents to sqrt(800).

The programs for A042543, there is no canonical definition to state claims against.
-/

/-! ## A042543.P8353472859776829570

`A065033(record[A041101(n)^A061358(n)])`
-/

namespace A042543.P8353472859776829570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041101 n : ℚ) ^ (A061358 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A042543.P8353472859776829570

/-! ## A042543.P8183724024028435831

`∑[A270613(A219727(3*n+4))]`
-/

namespace A042543.P8183724024028435831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (A219727 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042543.P8183724024028435831

/-!
# A042549: Denominators of continued fraction convergents to sqrt(803).

The programs for A042549, there is no canonical definition to state claims against.
-/

/-! ## A042549.P1248071143108660200

`A231149(A042673(n+1))`
-/

namespace A042549.P1248071143108660200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A042673 (n + 1)).toNat

end

end A042549.P1248071143108660200

/-! ## A042549.P9387610775842608115

`2*A353825(A041953(n))-A041953(n)`
-/

namespace A042549.P9387610775842608115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353825 (A041953 n).toNat - A041953 n

end

end A042549.P9387610775842608115

/-!
# A042551: Denominators of continued fraction convergents to sqrt(804).

The programs for A042551, there is no canonical definition to state claims against.
-/

/-! ## A042551.P14917923348402303128

`A076689(A000698(n))+n`
-/

namespace A042551.P14917923348402303128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076689 (A000698 n).toNat + (n : ℤ)

end

end A042551.P14917923348402303128

/-! ## A042551.P12598648031490280885

`or(A081204(n), A375512(A006013(n)))`
-/

namespace A042551.P12598648031490280885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081204 n) (A375512 (A006013 n).toNat)

end

end A042551.P12598648031490280885

/-!
# A042552: Numerators of continued fraction convergents to sqrt(805).

The programs for A042552, there is no canonical definition to state claims against.
-/

/-! ## A042552.P15279295452370713357

`A313689(6*A042139(n))`
-/

namespace A042552.P15279295452370713357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313689 (6 * A042139 n).toNat

end

end A042552.P15279295452370713357

/-!
# A042555: Denominators of continued fraction convergents to sqrt(806).

The programs for A042555, there is no canonical definition to state claims against.
-/

/-! ## A042555.P6800539387929737693

`A029998(n+1)+A007305(A227545(n))`
-/

namespace A042555.P6800539387929737693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029998 (n + 1) + A007305 (A227545 n).toNat

end

end A042555.P6800539387929737693

/-! ## A042555.P1188198969923042614

`A233564(n+1)+A162223(A192637(n))`
-/

namespace A042555.P1188198969923042614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1) + A162223 (A192637 n).toNat

end

end A042555.P1188198969923042614

/-!
# A042557: Denominators of continued fraction convergents to sqrt(807).

The programs for A042557, there is no canonical definition to state claims against.
-/

/-! ## A042557.P3281160898905770901

`eq[A100204(n), A205115(n+1)]`
-/

namespace A042557.P3281160898905770901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042557.P3281160898905770901

/-! ## A042557.P14480161744630027509

`A000688(n+1)*A002487(A349533(n))`
-/

namespace A042557.P14480161744630027509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A002487 (A349533 n).toNat

end

end A042557.P14480161744630027509

/-!
# A042561: Denominators of continued fraction convergents to sqrt(809).

The programs for A042561, there is no canonical definition to state claims against.
-/

/-! ## A042561.P8813103737778342762

`A088881(n)+A002375(A359024(n))`
-/

namespace A042561.P8813103737778342762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088881 n + A002375 (A359024 n).toNat

end

end A042561.P8813103737778342762

/-! ## A042561.P3263376626896274337

`A245809(A288771(n))+A000081(n)`
-/

namespace A042561.P3263376626896274337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (A288771 n).toNat + A000081 n

end

end A042561.P3263376626896274337

/-!
# A042565: Denominators of continued fraction convergents to sqrt(811).

The programs for A042565, there is no canonical definition to state claims against.
-/

/-! ## A042565.P7588425745061704558

`A252668(A033045(n)+3)`
-/

namespace A042565.P7588425745061704558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252668 (A033045 n + 3).toNat

end

end A042565.P7588425745061704558

/-!
# A042566: Numerators of continued fraction convergents to sqrt(812).

The programs for A042566, there is no canonical definition to state claims against.
-/

/-! ## A042566.P17949600322427095265

`gcd(2, n)*A041376(n)`
-/

namespace A042566.P17949600322427095265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041376 n

end

end A042566.P17949600322427095265

/-! ## A042566.P17525186283273214442

`Δ[A007494(n)]*A041376(n)`
-/

namespace A042566.P17525186283273214442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041376 n

end

end A042566.P17525186283273214442

/-! ## A042566.P9762266226061401961

`A000034(n+1)*A041376(n)`
-/

namespace A042566.P9762266226061401961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041376 n

end

end A042566.P9762266226061401961

/-! ## A042566.P8227628477672737987

`2/A000034(n)*A041376(n)`
-/

namespace A042566.P8227628477672737987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041376 n : ℚ)

end

end A042566.P8227628477672737987

/-! ## A042566.P10690810905148065206

`A041376(n)*A003484(n²+2)`
-/

namespace A042566.P10690810905148065206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041376 n * A003484 (n ^ 2 + 2)

end

end A042566.P10690810905148065206

/-! ## A042566.P17121497956852567126

`A041376(n)*A006519(n²+2)`
-/

namespace A042566.P17121497956852567126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041376 n * A006519 (n ^ 2 + 2)

end

end A042566.P17121497956852567126

/-! ## A042566.P3325197475398504215

`A041376(n)*A141044(A003484(n+1))`
-/

namespace A042566.P3325197475398504215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041376 n * A141044 (A003484 (n + 1)).toNat

end

end A042566.P3325197475398504215

/-! ## A042566.P2024328806272748267

`A006519(A006519(n+1)+1)*A041376(n)`
-/

namespace A042566.P2024328806272748267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A041376 n

end

end A042566.P2024328806272748267

/-!
# A042567: Denominators of continued fraction convergents to sqrt(812).

The programs for A042567, there is no canonical definition to state claims against.
-/

/-! ## A042567.P6378068354193251770

`A041377(n)/A000034(n)`
-/

namespace A042567.P6378068354193251770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A000034 n : ℚ)

end

end A042567.P6378068354193251770

/-! ## A042567.P8696522452919726037

`A041377(n)/A040001(n+1)`
-/

namespace A042567.P8696522452919726037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A042567.P8696522452919726037

/-! ## A042567.P14475143784292312529

`A041377(n)/A010873(n²+1)`
-/

namespace A042567.P14475143784292312529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A010873 (n ^ 2 + 1) : ℚ)

end

end A042567.P14475143784292312529

/-! ## A042567.P2408427021775312434

`A041377(n)/Δ[A001651(n+1)]`
-/

namespace A042567.P2408427021775312434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042567.P2408427021775312434

/-! ## A042567.P2695530924563418476

`A041377(n)/A002260(A236453(n))`
-/

namespace A042567.P2695530924563418476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041377 n : ℚ) / (A002260 (A236453 n).toNat : ℚ)

end

end A042567.P2695530924563418476

/-!
# A042570: Numerators of continued fraction convergents to sqrt(814).

The programs for A042570, there is no canonical definition to state claims against.
-/

/-! ## A042570.P14243414500867522601

`A042684(n)-A111615(A042685(n))`
-/

namespace A042570.P14243414500867522601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042684 n - A111615 (A042685 n).toNat

end

end A042570.P14243414500867522601

/-!
# A042573: Denominators of continued fraction convergents to sqrt(815).

The programs for A042573, there is no canonical definition to state claims against.
-/

/-! ## A042573.P7684732740810676576

`round(A042572(n)/sqrt(815))`
-/

namespace A042573.P7684732740810676576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A042572 n : ℝ) / Real.sqrt (815 : ℝ))

end

end A042573.P7684732740810676576

/-! ## A042573.P6932198282022059567

`A219614(n)%A014311(A037949(n))`
-/

namespace A042573.P6932198282022059567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219614 n) (A014311 (A037949 n).toNat)

end

end A042573.P6932198282022059567

/-! ## A042573.P1958075898606885229

`A004741(A255841(n+1)+A255817(n))`
-/

namespace A042573.P1958075898606885229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A255841 (n + 1) + A255817 n).toNat

end

end A042573.P1958075898606885229

/-!
# A042576: Numerators of continued fraction convergents to sqrt(817).

The programs for A042576, there is no canonical definition to state claims against.
-/

/-! ## A042576.P11364311884806834020

`A042690(n)-A007953(A042005(n))`
-/

namespace A042576.P11364311884806834020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042690 n - A007953 (A042005 n).toNat

end

end A042576.P11364311884806834020

/-! ## A042576.P14337197745741294632

`A188435(A041974(n))-A042577(n)`
-/

namespace A042576.P14337197745741294632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (A041974 n).toNat - A042577 n

end

end A042576.P14337197745741294632

/-!
# A042578: Numerators of continued fraction convergents to sqrt(818).

The programs for A042578, there is no canonical definition to state claims against.
-/

/-! ## A042578.P2673481885822053404

`∑[A107832(a(n-1)+a(n-2))]` with `a(0)=28, a(1)=1, a(2)=28`
-/

namespace A042578.P2673481885822053404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28, 1, 28] fun n f1 =>
  A107832 (f1 (n - 1) + f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042578.P2673481885822053404

/-!
# A042579: Denominators of continued fraction convergents to sqrt(818).

The programs for A042579, there is no canonical definition to state claims against.
-/

/-! ## A042579.P11933189761610892086

`A364913(n)+A194093(A055772(n+1))`
-/

namespace A042579.P11933189761610892086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364913 n + A194093 (A055772 (n + 1)).toNat

end

end A042579.P11933189761610892086

/-! ## A042579.P12855991743601597116

`A320857(A099825(n))+A178473(n+2)`
-/

namespace A042579.P12855991743601597116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320857 (A099825 n).toNat + A178473 (n + 2)

end

end A042579.P12855991743601597116

/-!
# A042580: Numerators of continued fraction convergents to sqrt(819).

The programs for A042580, there is no canonical definition to state claims against.
-/

/-! ## A042580.P1387345840670605526

`∑[(a(n-1)+a(n-2))^A040790(n)]` with `a(0)=28, a(1)=1, a(2)=28`
-/

namespace A042580.P1387345840670605526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [28, 1, 28] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) ^ (A040790 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042580.P1387345840670605526

/-! ## A042580.P8169209427074425491

`A022398(A062399(n+1))`
-/

namespace A042580.P8169209427074425491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (A062399 (n + 1)).toNat

end

end A042580.P8169209427074425491

/-! ## A042580.P2189524631579860975

`A022398(A087051(n)+1)`
-/

namespace A042580.P2189524631579860975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (A087051 n + 1).toNat

end

end A042580.P2189524631579860975

/-! ## A042580.P11719944104796820128

`A022398(A120126(n+1))`
-/

namespace A042580.P11719944104796820128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (A120126 (n + 1)).toNat

end

end A042580.P11719944104796820128

/-! ## A042580.P6606398748581177702

`A022398(A351870(n+1))`
-/

namespace A042580.P6606398748581177702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (A351870 (n + 1)).toNat

end

end A042580.P6606398748581177702

/-!
# A042582: Numerators of continued fraction convergents to sqrt(820).

The programs for A042582, there is no canonical definition to state claims against.
-/

/-! ## A042582.P9656584150331523294

`A022398(A361396(n+1))`
-/

namespace A042582.P9656584150331523294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (A361396 (n + 1)).toNat

end

end A042582.P9656584150331523294

/-!
# A042583: Denominators of continued fraction convergents to sqrt(820).

The programs for A042583, there is no canonical definition to state claims against.
-/

/-! ## A042583.P13613272564328812005

`A325835(A056471(n+1))+A316500(n+1)`
-/

namespace A042583.P13613272564328812005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325835 (A056471 (n + 1)).toNat + A316500 (n + 1)

end

end A042583.P13613272564328812005

/-! ## A042583.P15643158817011972073

`A002260(ceil(((4*n-2)/5)^n)+1)`
-/

namespace A042583.P15643158817011972073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (⌈(((4 * n : ℤ) - 2 : ℚ) / 5) ^ n⌉ + 1).toNat

end

end A042583.P15643158817011972073

/-! ## A042583.P1831577597929654550

`A166276(A134478(n!))`
-/

namespace A042583.P1831577597929654550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166276 (A134478 (Nat.factorial n)).toNat

end

end A042583.P1831577597929654550

/-!
# A042587: Denominators of continued fraction convergents to sqrt(822).

The programs for A042587, there is no canonical definition to state claims against.
-/

/-! ## A042587.P17937039561985756036

`A248103((∑{d}[n+1, #]-2)^n)`
-/

namespace A042587.P17937039561985756036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248103 ((((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 2) ^ n).toNat

end

end A042587.P17937039561985756036

/-!
# A042589: Denominators of continued fraction convergents to sqrt(823).

The programs for A042589, there is no canonical definition to state claims against.
-/

/-! ## A042589.P9181319818815464592

`A248601(A099642(n+1))`
-/

namespace A042589.P9181319818815464592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (A099642 (n + 1)).toNat

end

end A042589.P9181319818815464592

/-! ## A042589.P14699653648409262351

`A003987(∑{d}[A364765(n), #])`
-/

namespace A042589.P14699653648409262351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A042589.P14699653648409262351

/-!
# A042591: Denominators of continued fraction convergents to sqrt(824).

The programs for A042591, there is no canonical definition to state claims against.
-/

/-! ## A042591.P16463894489214557058

`A036049(A283908(n))`
-/

namespace A042591.P16463894489214557058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036049 (A283908 n).toNat

end

end A042591.P16463894489214557058

/-! ## A042591.P9398638831959604957

`A056239(A367061(n))+A007318(n)`
-/

namespace A042591.P9398638831959604957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A367061 n).toNat + A007318 n

end

end A042591.P9398638831959604957

/-! ## A042591.P10722979255560299890

`A056239(A367061(n))+A034930(n)`
-/

namespace A042591.P10722979255560299890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A367061 n).toNat + A034930 n

end

end A042591.P10722979255560299890

/-!
# A042592: Numerators of continued fraction convergents to sqrt(825).

The programs for A042592, there is no canonical definition to state claims against.
-/

/-! ## A042592.P1129192981582686786

`A042706(n)-A090894(A042707(n))`
-/

namespace A042592.P1129192981582686786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042706 n - A090894 (A042707 n).toNat

end

end A042592.P1129192981582686786

/-!
# A042594: Numerators of continued fraction convergents to sqrt(826).

The programs for A042594, there is no canonical definition to state claims against.
-/

/-! ## A042594.P2900949519272885062

`A122080(A042377(n))+A042376(n)`
-/

namespace A042594.P2900949519272885062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (A042377 n).toNat + A042376 n

end

end A042594.P2900949519272885062

