import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
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
# A392400: a(n) = Sum_{k=0..floor(n/2)} binomial(2*n-k,3*k).

The programs for A392400, the canonical program `A392400.P9822403989897879702` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392400 has offset 0).

The definition of A392400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392400.P9822403989897879702

`3*a(n-1)-a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=11`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392400

/-- `3*a(n-1)-a(n-2)+7*a(n-3)-a(n-4)` -/
def P9822403989897879702.Spec : Prop :=
  ∀ n, P9822403989897879702.a n = A392400 n

theorem P9822403989897879702.correct : P9822403989897879702.Spec := by
  intro n
  simp only [A392400]

end A392400

/-! ## A392400.P2451044354759096935

`A003522(2*n)`
-/

namespace A392400.P2451044354759096935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003522 (2 * n)

end

end A392400.P2451044354759096935

namespace A392400

/-- `A003522(2*n)` -/
def P2451044354759096935.Spec : Prop :=
  ∀ n, P2451044354759096935.a n = A392400 n

end A392400

/-! ## A392400.P11361281443908127905

`A017817(6*n)`
-/

namespace A392400.P11361281443908127905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (6 * n)

end

end A392400.P11361281443908127905

namespace A392400

/-- `A017817(6*n)` -/
def P11361281443908127905.Spec : Prop :=
  ∀ n, P11361281443908127905.a n = A392400 n

end A392400

/-! ## A392400.P6662926262614108673

`A127838(A016969(n))`
-/

namespace A392400.P6662926262614108673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (A016969 n).toNat

end

end A392400.P6662926262614108673

namespace A392400

/-- `A127838(A016969(n))` -/
def P6662926262614108673.Spec : Prop :=
  ∀ n, P6662926262614108673.a n = A392400 n

end A392400

/-! ## A392400.P9756695087174553688

`A062200(A033627(n+1))`
-/

namespace A392400.P9756695087174553688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062200 (A033627 (n + 1)).toNat

end

end A392400.P9756695087174553688

namespace A392400

/-- `A062200(A033627(n+1))` -/
def P9756695087174553688.Spec : Prop :=
  ∀ n, P9756695087174553688.a n = A392400 n

end A392400

/-! ## A392400.P12235441336044636314

`A127838(A101328(n+3))`
-/

namespace A392400.P12235441336044636314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (A101328 (n + 3)).toNat

end

end A392400.P12235441336044636314

namespace A392400

/-- `A127838(A101328(n+3))` -/
def P12235441336044636314.Spec : Prop :=
  ∀ n, P12235441336044636314.a n = A392400 n

end A392400

/-!
# A392401: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*n-2*k,3*k).

The programs for A392401, the canonical program `A392401.P664316746938785616` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392401 has offset 0).

The definition of A392401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392401.P664316746938785616

`3*a(n-1)-3*a(n-2)+7*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=21`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392401

/-- `3*a(n-1)-3*a(n-2)+7*a(n-3)+2*a(n-4)+a(n-5)` -/
def P664316746938785616.Spec : Prop :=
  ∀ n, P664316746938785616.a n = A392401 n

theorem P664316746938785616.correct : P664316746938785616.Spec := by
  intro n
  simp only [A392401]

end A392401

/-! ## A392401.P12886970555162337581

`A137356(2*n)`
-/

namespace A392401.P12886970555162337581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137356 (2 * n)

end

end A392401.P12886970555162337581

namespace A392401

/-- `A137356(2*n)` -/
def P12886970555162337581.Spec : Prop :=
  ∀ n, P12886970555162337581.a n = A392401 n

end A392401

/-! ## A392401.P16739394732797870385

`A052920(6*n)`
-/

namespace A392401.P16739394732797870385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (6 * n)

end

end A392401.P16739394732797870385

namespace A392401

/-- `A052920(6*n)` -/
def P16739394732797870385.Spec : Prop :=
  ∀ n, P16739394732797870385.a n = A392401 n

end A392401

/-! ## A392401.P11853582378775695500

`A137357(2*n+1)-A137357(2*n)`
-/

namespace A392401.P11853582378775695500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137357 (2 * n + 1) - A137357 (2 * n)

end

end A392401.P11853582378775695500

namespace A392401

/-- `A137357(2*n+1)-A137357(2*n)` -/
def P11853582378775695500.Spec : Prop :=
  ∀ n, P11853582378775695500.a n = A392401 n

end A392401

/-! ## A392401.P5212217805929514455

`lcm(A137356(A005843(n)), A165326(n))`
-/

namespace A392401.P5212217805929514455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137356 (A005843 n).toNat) (A165326 n)

end

end A392401.P5212217805929514455

namespace A392401

/-- `lcm(A137356(A005843(n)), A165326(n))` -/
def P5212217805929514455.Spec : Prop :=
  ∀ n, (P5212217805929514455.a n : ℤ) = A392401 n

end A392401

/-! ## A392401.P2302100077398268233

`A137356(A005843(n))%A322243(n+1)`
-/

namespace A392401.P2302100077398268233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137356 (A005843 n).toNat) (A322243 (n + 1))

end

end A392401.P2302100077398268233

namespace A392401

/-- `A137356(A005843(n))%A322243(n+1)` -/
def P2302100077398268233.Spec : Prop :=
  ∀ n, P2302100077398268233.a n = A392401 n

end A392401

/-!
# A392402: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-3*k,3*k).

The programs for A392402, the canonical program `A392402.P10531053733747042139` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392402 has offset 0).

The definition of A392402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392402.P10531053733747042139

`3*a(n-1)-3*a(n-2)+3*a(n-3)+6*a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=11, a(5)=36`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392402

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)+6*a(n-4)-a(n-6)` -/
def P10531053733747042139.Spec : Prop :=
  ∀ n, P10531053733747042139.a n = A392402 n

theorem P10531053733747042139.correct : P10531053733747042139.Spec := by
  intro n
  simp only [A392402]

end A392402

/-! ## A392402.P7232094517879422925

`A100134(2*n)`
-/

namespace A392402.P7232094517879422925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (2 * n)

end

end A392402.P7232094517879422925

namespace A392402

/-- `A100134(2*n)` -/
def P7232094517879422925.Spec : Prop :=
  ∀ n, P7232094517879422925.a n = A392402 n

end A392402

/-! ## A392402.P15376135324642797808

`A102516(2*n+1)-A102516(2*n)`
-/

namespace A392402.P15376135324642797808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102516 (2 * n + 1) - A102516 (2 * n)

end

end A392402.P15376135324642797808

namespace A392402

/-- `A102516(2*n+1)-A102516(2*n)` -/
def P15376135324642797808.Spec : Prop :=
  ∀ n, P15376135324642797808.a n = A392402 n

end A392402

/-!
# A392403: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*n-4*k,3*k).

The programs for A392403, the canonical program `A392403.P11128076169223223160` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392403 has offset 0).

The definition of A392403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392403.P11128076169223223160

`A370722(2*n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A392403

/-- `A370722(2*n)` -/
def P11128076169223223160.Spec : Prop :=
  ∀ n, P11128076169223223160.a n = A392403 n

theorem P11128076169223223160.correct : P11128076169223223160.Spec := by
  intro n
  simp only [A392403]

end A392403

/-! ## A392403.P4681532190418179251

`A369814(6*n)`
-/

namespace A392403.P4681532190418179251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (6 * n)

end

end A392403.P4681532190418179251

namespace A392403

/-- `A369814(6*n)` -/
def P4681532190418179251.Spec : Prop :=
  ∀ n, P4681532190418179251.a n = A392403 n

end A392403

/-!
# A392404: a(n) = Sum_{k=0..floor(n/4)} binomial(2*n-5*k,3*k).

The programs for A392404, there is no canonical definition to state claims against.
-/

/-! ## A392404.P10344927476972849789

`A113032(2*n)`
-/

namespace A392404.P10344927476972849789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113032 (2 * n)

end

end A392404.P10344927476972849789

/-!
# A392405: a(n) = Sum_{k=0..floor(2*n/9)} binomial(2*n-6*k,3*k).

The programs for A392405, there is no canonical definition to state claims against.
-/

/-! ## A392405.P6051918854902589064

`A100792(A392399(n))`
-/

namespace A392405.P6051918854902589064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100792 (A392399 n).toNat

end

end A392405.P6051918854902589064

/-! ## A392405.P86515130914465243

`A325131(A100136(n+1))`
-/

namespace A392405.P86515130914465243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A100136 (n + 1)).toNat

end

end A392405.P86515130914465243

/-! ## A392405.P2733391507233900466

`A325131(A383952(n+1))`
-/

namespace A392405.P2733391507233900466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A383952 (n + 1)).toNat

end

end A392405.P2733391507233900466

/-!
# A392407: Indices in Recamán's sequence A005132 which are the result of a record number of subtraction steps.

The programs for A392407, there is no canonical definition to state claims against.
-/

/-! ## A392407.P16353260034410730452

`A108840(n+1)+n`
-/

namespace A392407.P16353260034410730452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108840 (n + 1) + (n : ℤ)

end

end A392407.P16353260034410730452

/-!
# A392408: Number of permutations p of [n] such that i + p(i) is composite for all i.

The programs for A392408, there is no canonical definition to state claims against.
-/

/-! ## A392408.P2164434534396190783

`A127684(A068514(n+2))`
-/

namespace A392408.P2164434534396190783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127684 (A068514 (n + 2)).toNat

end

end A392408.P2164434534396190783

/-!
# A392410: Number of full alternating sign matrices of size n.

The programs for A392410, there is no canonical definition to state claims against.
-/

/-! ## A392410.P8465061700899009230

`A347662(A175879(n+1))`
-/

namespace A392410.P8465061700899009230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347662 (A175879 (n + 1)).toNat

end

end A392410.P8465061700899009230

/-! ## A392410.P525878639754700810

`A189635(A385304(n))+1`
-/

namespace A392410.P525878639754700810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189635 (A385304 n).toNat + 1

end

end A392410.P525878639754700810

/-!
# A392414: Number of partitions of the vertices of the n X n grid graph into total dominating sets.

The programs for A392414, there is no canonical definition to state claims against.
-/

/-! ## A392414.P7816318975731560600

`A392413((n+1)²+n²)`
-/

namespace A392414.P7816318975731560600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392413 ((n + 1) ^ 2 + n ^ 2)

end

end A392414.P7816318975731560600

/-!
# A392415: Number of partitions of the vertices of the n-ladder graph into total dominating sets.

The programs for A392415, the canonical program `A392415.P712935102460050653` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392415 has offset 1).

The definition of A392415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392415.P712935102460050653

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392415

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P712935102460050653.Spec : Prop :=
  ∀ n, P712935102460050653.a n = A392415 (n + 1)

theorem P712935102460050653.correct : P712935102460050653.Spec := by
  intro n
  simp only [A392415, Nat.add_sub_cancel]

end A392415

/-! ## A392415.P16449491124463558345

`2*A007598(n)+1`
-/

namespace A392415.P16449491124463558345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n + 1

end

end A392415.P16449491124463558345

namespace A392415

/-- `2*A007598(n)+1` -/
def P16449491124463558345.Spec : Prop :=
  ∀ n, P16449491124463558345.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P10424884000453033121

`A175395(n)+1`
-/

namespace A392415.P10424884000453033121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + 1

end

end A392415.P10424884000453033121

namespace A392415

/-- `A175395(n)+1` -/
def P10424884000453033121.Spec : Prop :=
  ∀ n, P10424884000453033121.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P17514656828694320092

`A382845(n)+2`
-/

namespace A392415.P17514656828694320092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 n + 2

end

end A392415.P17514656828694320092

namespace A392415

/-- `A382845(n)+2` -/
def P17514656828694320092.Spec : Prop :=
  ∀ n, P17514656828694320092.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P14244810070401017623

`2*A245306(n)-1`
-/

namespace A392415.P14244810070401017623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245306 n - 1

end

end A392415.P14244810070401017623

namespace A392415

/-- `2*A245306(n)-1` -/
def P14244810070401017623.Spec : Prop :=
  ∀ n, P14244810070401017623.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P18055323660746060421

`A295680(Δ[n²])+1`
-/

namespace A392415.P18055323660746060421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A392415.P18055323660746060421

namespace A392415

/-- `A295680(Δ[n²])+1` -/
def P18055323660746060421.Spec : Prop :=
  ∀ n, P18055323660746060421.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P14569714799309127750

`A095122(n)+A001611(n)`
-/

namespace A392415.P14569714799309127750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095122 n + A001611 n

end

end A392415.P14569714799309127750

namespace A392415

/-- `A095122(n)+A001611(n)` -/
def P14569714799309127750.Spec : Prop :=
  ∀ n, P14569714799309127750.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P16351653946201687576

`A192873(n)+A000034(n)`
-/

namespace A392415.P16351653946201687576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n + A000034 n

end

end A392415.P16351653946201687576

namespace A392415

/-- `A192873(n)+A000034(n)` -/
def P16351653946201687576.Spec : Prop :=
  ∀ n, P16351653946201687576.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P5476376379642625909

`A245306(n)+A007598(n)`
-/

namespace A392415.P5476376379642625909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n + A007598 n

end

end A392415.P5476376379642625909

namespace A392415

/-- `A245306(n)+A007598(n)` -/
def P5476376379642625909.Spec : Prop :=
  ∀ n, P5476376379642625909.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P9291229722508570168

`A192921(n)+A107387(n)`
-/

namespace A392415.P9291229722508570168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 n + A107387 n

end

end A392415.P9291229722508570168

namespace A392415

/-- `A192921(n)+A107387(n)` -/
def P9291229722508570168.Spec : Prop :=
  ∀ n, P9291229722508570168.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P15936949584013595817

`A262184(n)+A059727(n)`
-/

namespace A392415.P15936949584013595817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262184 n + A059727 n

end

end A392415.P15936949584013595817

namespace A392415

/-- `A262184(n)+A059727(n)` -/
def P15936949584013595817.Spec : Prop :=
  ∀ n, P15936949584013595817.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P10447850955014089661

`A382843(n)+A001588(n)`
-/

namespace A392415.P10447850955014089661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382843 n + A001588 n

end

end A392415.P10447850955014089661

namespace A392415

/-- `A382843(n)+A001588(n)` -/
def P10447850955014089661.Spec : Prop :=
  ∀ n, P10447850955014089661.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P13378752284159808117

`A382308(n)-A022087(n)`
-/

namespace A392415.P13378752284159808117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382308 n - A022087 n

end

end A392415.P13378752284159808117

namespace A392415

/-- `A382308(n)-A022087(n)` -/
def P13378752284159808117.Spec : Prop :=
  ∀ n, P13378752284159808117.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P16528701467100830351

`A245306(n)+A000045(n)²`
-/

namespace A392415.P16528701467100830351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n + A000045 n ^ 2

end

end A392415.P16528701467100830351

namespace A392415

/-- `A245306(n)+A000045(n)²` -/
def P16528701467100830351.Spec : Prop :=
  ∀ n, P16528701467100830351.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P18044633422686396832

`A246640(n)+A121646(n+1)`
-/

namespace A392415.P18044633422686396832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 n + A121646 (n + 1)

end

end A392415.P18044633422686396832

namespace A392415

/-- `A246640(n)+A121646(n+1)` -/
def P18044633422686396832.Spec : Prop :=
  ∀ n, P18044633422686396832.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P11922884961152271117

`A246640(n)-A226205(n+1)`
-/

namespace A392415.P11922884961152271117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 n - A226205 (n + 1)

end

end A392415.P11922884961152271117

namespace A392415

/-- `A246640(n)-A226205(n+1)` -/
def P11922884961152271117.Spec : Prop :=
  ∀ n, P11922884961152271117.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P14683602079574339985

`A007598(n)+A208176(n)-A001654(n)`
-/

namespace A392415.P14683602079574339985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (A208176 n - A001654 n)

end

end A392415.P14683602079574339985

namespace A392415

/-- `A007598(n)+A208176(n)-A001654(n)` -/
def P14683602079574339985.Spec : Prop :=
  ∀ n, P14683602079574339985.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P13001197518455784115

`A001519(n)-(A121646(n+2)+A027941(n))`
-/

namespace A392415.P13001197518455784115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - (A121646 (n + 2) + A027941 n)

end

end A392415.P13001197518455784115

namespace A392415

/-- `A001519(n)-(A121646(n+2)+A027941(n))` -/
def P13001197518455784115.Spec : Prop :=
  ∀ n, P13001197518455784115.a n = A392415 (n + 1)

end A392415

/-! ## A392415.P9574826150724805214

`A069921(n)-A035508(n)`
-/

namespace A392415.P9574826150724805214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069921 n - A035508 n

end

end A392415.P9574826150724805214

namespace A392415

/-- `A069921(n)-A035508(n)` -/
def P9574826150724805214.Spec : Prop :=
  ∀ n, P9574826150724805214.a n = A392415 (n + 1)

end A392415

/-!
# A392416: Number of partitions of the vertices of the n X 3 grid graph into total dominating sets.

The programs for A392416, there is no canonical definition to state claims against.
-/

/-! ## A392416.P12317177431263186139

`A203280(n+1)/2+1`
-/

namespace A392416.P12317177431263186139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203280 (n + 1) : ℚ) / 2 + 1

end

end A392416.P12317177431263186139

/-! ## A392416.P11064401140326926004

`A392413(A167614(n+1))`
-/

namespace A392416.P11064401140326926004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392413 (A167614 (n + 1)).toNat

end

end A392416.P11064401140326926004

/-! ## A392416.P12812219442458717448

`A392413(A373663(n+1))`
-/

namespace A392416.P12812219442458717448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392413 (A373663 (n + 1)).toNat

end

end A392416.P12812219442458717448

/-! ## A392416.P31238921487450912

`A392413(A034856(n+2))`
-/

namespace A392416.P31238921487450912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392413 (A034856 (n + 2)).toNat

end

end A392416.P31238921487450912

/-! ## A392416.P12025596610617866956

`A392413(lt[A362925(n+1), A276571(n)])`
-/

namespace A392416.P12025596610617866956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392413 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392416.P12025596610617866956

/-!
# A392417: Array read by antidiagonals: T(m,n) is the number of mutual-visibility sets in the grid graph P_m X P_n.

The programs for A392417, there is no canonical definition to state claims against.
-/

/-! ## A392417.P6964194698541715530

`A305936(A048216(n+1))+A231829(n+1)`
-/

namespace A392417.P6964194698541715530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A048216 (n + 1)).toNat + A231829 (n + 1)

end

end A392417.P6964194698541715530

/-! ## A392417.P16049718670509131886

`A231829(n+1)+A036580(A372816(3*n+1))`
-/

namespace A392417.P16049718670509131886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (n + 1) + A036580 (A372816 (3 * n + 1)).toNat

end

end A392417.P16049718670509131886

/-! ## A392417.P8523212512865989948

`A333254(A000204(2*n+3))+A231829(n+1)`
-/

namespace A392417.P8523212512865989948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A000204 (2 * n + 3)).toNat + A231829 (n + 1)

end

end A392417.P8523212512865989948

/-!
# A392418: Number of mutual-visibility sets in the n X n grid graph.

The programs for A392418, there is no canonical definition to state claims against.
-/

/-! ## A392418.P8637124637934727946

`A392417((n+1)²+n²)`
-/

namespace A392418.P8637124637934727946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 ((n + 1) ^ 2 + n ^ 2)

end

end A392418.P8637124637934727946

/-!
# A392419: Number of mutual-visibility sets in the n X 3 grid graph.

The programs for A392419, there is no canonical definition to state claims against.
-/

/-! ## A392419.P4525834793216331220

`A392417(A167614(n+1))`
-/

namespace A392419.P4525834793216331220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (A167614 (n + 1)).toNat

end

end A392419.P4525834793216331220

/-! ## A392419.P285595289045560070

`A392417(A373663(n+1))`
-/

namespace A392419.P285595289045560070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (A373663 (n + 1)).toNat

end

end A392419.P285595289045560070

/-! ## A392419.P6002686311126932101

`A392417(A034856(n+2))`
-/

namespace A392419.P6002686311126932101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (A034856 (n + 2)).toNat

end

end A392419.P6002686311126932101

/-! ## A392419.P10452230603621486773

`A392417(A000124(n+2)+2)`
-/

namespace A392419.P10452230603621486773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (A000124 (n + 2) + 2).toNat

end

end A392419.P10452230603621486773

/-!
# A392420: Number of mutual-visibility sets in the n X 4 grid graph.

The programs for A392420, there is no canonical definition to state claims against.
-/

/-! ## A392420.P5001409043100582819

`A392417(A141214(n+1))`
-/

namespace A392420.P5001409043100582819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (A141214 (n + 1)).toNat

end

end A392420.P5001409043100582819

/-! ## A392420.P3288308327353549721

`A392417(A374004(n+1))`
-/

namespace A392420.P3288308327353549721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (A374004 (n + 1)).toNat

end

end A392420.P3288308327353549721

/-! ## A392420.P13169603659931754517

`A392417(∑[A174670(n+4)]+3)`
-/

namespace A392420.P13169603659931754517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A392420.P13169603659931754517

/-!
# A392421: Number of mutual-visibility sets of size 3 in the n-cycle graph.

The programs for A392421, the canonical program `A392421.P13628368402688059629` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392421 has offset 1).

The definition of A392421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392421.P13628368402688059629

`C(n+1, 3)-(n+1)*C(floor(n/2), 2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392421

/-- `C(n+1, 3)-(n+1)*C(floor(n/2), 2)` -/
def P13628368402688059629.Spec : Prop :=
  ∀ n, P13628368402688059629.a n = A392421 (n + 1)

theorem P13628368402688059629.correct : P13628368402688059629.Spec := by
  intro n
  simp only [A392421, Nat.add_sub_cancel]

end A392421

/-! ## A392421.P409989901421024333

`(n+1)*(2*(n+1)²+6*(n+1)-17+3*(-1)^(n+1)*(2*(n+1)-5))/48`
-/

namespace A392421.P409989901421024333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 + 6 * (n + 1) : ℤ) - 17 + 3 * (-1) ^ (n + 1) * ((2 * (n + 1) : ℤ) - 5)) : ℚ) / 48

end

end A392421.P409989901421024333

namespace A392421

/-- `(n+1)*(2*(n+1)²+6*(n+1)-17+3*(-1)^(n+1)*(2*(n+1)-5))/48` -/
def P409989901421024333.Spec : Prop :=
  ∀ n, P409989901421024333.a n = (A392421 (n + 1) : ℚ)

end A392421

/-! ## A392421.P13268516470986910316

`A389177(n+1)-1-(n+1)-C(n+1, 2)`
-/

namespace A392421.P13268516470986910316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389177 (n + 1) - 1 - (n + 1 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A392421.P13268516470986910316

namespace A392421

/-- `A389177(n+1)-1-(n+1)-C(n+1, 2)` -/
def P13268516470986910316.Spec : Prop :=
  ∀ n, P13268516470986910316.a n = A392421 (n + 1)

end A392421

/-! ## A392421.P17507924577849544413

`(n+1)/3*A069981(n+1)`
-/

namespace A392421.P17507924577849544413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A069981 (n + 1) : ℚ)

end

end A392421.P17507924577849544413

namespace A392421

/-- `(n+1)/3*A069981(n+1)` -/
def P17507924577849544413.Spec : Prop :=
  ∀ n, P17507924577849544413.a n = (A392421 (n + 1) : ℚ)

end A392421

/-!
# A392423: Powers k^m, m > 1, odd k that are neither squarefree nor squareful.

The programs for A392423, there is no canonical definition to state claims against.
-/

/-! ## A392423.P8231417787444448555

`∩[A389678(n+1), A395674(n+1)]`
-/

namespace A392423.P8231417787444448555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P8231417787444448555

/-! ## A392423.P11163206828515710117

`∩[A389695(n+1), A395674(n+1)]`
-/

namespace A392423.P11163206828515710117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P11163206828515710117

/-! ## A392423.P7217156015941148036

`∩[A386762(n+1), A395674(n+1)]`
-/

namespace A392423.P7217156015941148036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P7217156015941148036

/-! ## A392423.P5918277962787885289

`∩[A216419(n+1), A386762(n+1)]`
-/

namespace A392423.P5918277962787885289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P5918277962787885289

/-! ## A392423.P15961468634079472589

`∩[A216419(n+1), A389678(n+1)]`
-/

namespace A392423.P15961468634079472589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P15961468634079472589

/-! ## A392423.P10800433607134781367

`∩[A216419(n+1), A389695(n+1)]`
-/

namespace A392423.P10800433607134781367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P10800433607134781367

/-! ## A392423.P9490789277481133836

`∩[A075109(n+1), A386762(n+1)]`
-/

namespace A392423.P9490789277481133836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P9490789277481133836

/-! ## A392423.P6236590426190701398

`∩[A075109(n+1), A389678(n+1)]`
-/

namespace A392423.P6236590426190701398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P6236590426190701398

/-! ## A392423.P17525118614710878037

`∩[A075109(n+1), A389695(n+1)]`
-/

namespace A392423.P17525118614710878037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P17525118614710878037

/-! ## A392423.P14373107234876945627

`∩[A363217(n+1), A386762(n+1)]`
-/

namespace A392423.P14373107234876945627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P14373107234876945627

/-! ## A392423.P5928418781866266730

`∩[A363217(n+1), A389678(n+1)]`
-/

namespace A392423.P5928418781866266730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P5928418781866266730

/-! ## A392423.P9340768098808445151

`∩[A363217(n+1), A389695(n+1)]`
-/

namespace A392423.P9340768098808445151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P9340768098808445151

/-! ## A392423.P18138036024459018278

`∩[A062739(n+1), A386762(n+1)]`
-/

namespace A392423.P18138036024459018278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P18138036024459018278

/-! ## A392423.P4479621528061589058

`∩[A062739(n+1), A389678(n+1)]`
-/

namespace A392423.P4479621528061589058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P4479621528061589058

/-! ## A392423.P9571421414417871773

`∩[A062739(n+1), A389695(n+1)]`
-/

namespace A392423.P9571421414417871773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P9571421414417871773

/-! ## A392423.P12278766016991782096

`∩[A390823(n+1), A395674(n+1)]`
-/

namespace A392423.P12278766016991782096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P12278766016991782096

/-! ## A392423.P2243287853206514675

`∩[A348749(n+1), A386762(n+1)]`
-/

namespace A392423.P2243287853206514675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P2243287853206514675

/-! ## A392423.P13997832622234690197

`∩[A348749(n+1), A389678(n+1)]`
-/

namespace A392423.P13997832622234690197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P13997832622234690197

/-! ## A392423.P6678341617793907317

`∩[A348749(n+1), A389695(n+1)]`
-/

namespace A392423.P6678341617793907317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P6678341617793907317

/-! ## A392423.P5870977597474109498

`∩[A348749(n+1), A390379(n+1)]`
-/

namespace A392423.P5870977597474109498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392423.P5870977597474109498

/-!
# A392424: Powers k^m, m > 1, of even k that are neither squarefree nor squareful.

The programs for A392424, there is no canonical definition to state claims against.
-/

/-! ## A392424.P12885202154915028150

`∩[A386762(n+1), A391756(n+1)]`
-/

namespace A392424.P12885202154915028150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392424.P12885202154915028150

/-! ## A392424.P9374121020772465827

`∩[A075090(n+1), A386762(n+1)]`
-/

namespace A392424.P9374121020772465827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392424.P9374121020772465827

/-! ## A392424.P14502197031802531776

`∩[A386762(n+1), A395067(n+1)]`
-/

namespace A392424.P14502197031802531776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392424.P14502197031802531776

/-! ## A392424.P3016598337660458847

`∩[A390823(n+1), A395067(n+1)]`
-/

namespace A392424.P3016598337660458847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392424.P3016598337660458847

/-! ## A392424.P15481793708992852954

`∩[A363216(n+1), A386762(n+1)]`
-/

namespace A392424.P15481793708992852954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392424.P15481793708992852954

/-! ## A392424.P17209647632343463178

`∩[A386762(n+1), A390010(n+1)]`
-/

namespace A392424.P17209647632343463178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392424.P17209647632343463178

/-! ## A392424.P8324102955403882329

`filter[A386762(n+1), A121262(#)]`
-/

namespace A392424.P8324102955403882329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A392424.P8324102955403882329

/-! ## A392424.P958060596904835525

`filter[A386762(n+1), A323170(#)]`
-/

namespace A392424.P958060596904835525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A392424.P958060596904835525

/-! ## A392424.P10046316457816401175

`filter[A386762(n+1), A354097(#)]`
-/

namespace A392424.P10046316457816401175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A392424.P10046316457816401175

/-!
# A392425: Number of vertices in a complete bipartite graph where the vertices in the two parts are placed on opposite sides of a parabola at integer x coordinates |x| = 1, 2, ...n.

The programs for A392425, there is no canonical definition to state claims against.
-/

/-! ## A392425.P9320803259298713737

`A392427(n+1)-A392426(n+1)+1`
-/

namespace A392425.P9320803259298713737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392427 (n + 1) - A392426 (n + 1) + 1

end

end A392425.P9320803259298713737

/-!
# A392426: Number of finite regions in a complete bipartite graph where the vertices in the two parts are placed on opposite sides of a parabola at integer x coordinates |x| = 1, 2, ...n.

The programs for A392426, there is no canonical definition to state claims against.
-/

/-! ## A392426.P11550215648156183895

`A392427(n+1)-A392425(n+1)+1`
-/

namespace A392426.P11550215648156183895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392427 (n + 1) - A392425 (n + 1) + 1

end

end A392426.P11550215648156183895

/-! ## A392426.P2576503200240916817

`A004320(n)-A000523(A187007(n+1))`
-/

namespace A392426.P2576503200240916817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n - A000523 (A187007 (n + 1)).toNat

end

end A392426.P2576503200240916817

/-!
# A392427: Number of edges in a complete bipartite graph where the vertices in the two parts are placed on opposite sides of a parabola at integer x coordinates |x| = 1, 2, ...n.

The programs for A392427, there is no canonical definition to state claims against.
-/

/-! ## A392427.P13246575496727716314

`A392425(n+1)+A392426(n+1)-1`
-/

namespace A392427.P13246575496727716314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392425 (n + 1) + A392426 (n + 1) - 1

end

end A392427.P13246575496727716314

/-!
# A392428: a(n) = Sum_{k=0..floor(2*n/3)} binomial(2*k,2*n-3*k).

The programs for A392428, the canonical program `A392428.P17500773232252830925` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392428 has offset 0).

The definition of A392428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392428.P17500773232252830925

`4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392428

/-- `4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P17500773232252830925.Spec : Prop :=
  ∀ n, P17500773232252830925.a n = A392428 n

theorem P17500773232252830925.correct : P17500773232252830925.Spec := by
  intro n
  simp only [A392428]

end A392428

/-! ## A392428.P11172920829057917155

`A052920(4*n)`
-/

namespace A392428.P11172920829057917155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (4 * n)

end

end A392428.P11172920829057917155

namespace A392428

/-- `A052920(4*n)` -/
def P11172920829057917155.Spec : Prop :=
  ∀ n, P11172920829057917155.a n = A392428 n

end A392428

/-!
# A392429: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*k,2*n-5*k).

The programs for A392429, the canonical program `A392429.P7193628213570142124` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392429 has offset 0).

The definition of A392429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392429.P7193628213570142124

`4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=1, a(6)=6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392429

/-- `4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P7193628213570142124.Spec : Prop :=
  ∀ n, P7193628213570142124.a n = A392429 n

theorem P7193628213570142124.correct : P7193628213570142124.Spec := by
  intro n
  simp only [A392429]

end A392429

/-! ## A392429.P14307219283003824978

`A369816(4*n)`
-/

namespace A392429.P14307219283003824978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 (4 * n)

end

end A392429.P14307219283003824978

namespace A392429

/-- `A369816(4*n)` -/
def P14307219283003824978.Spec : Prop :=
  ∀ n, P14307219283003824978.a n = A392429 n

end A392429

/-!
# A392430: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*k,2*n-7*k).

The programs for A392430, the canonical program `A392430.P453624865674544716` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392430 has offset 0).

The definition of A392430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392430.P453624865674544716

`4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=0, a(6)=0, a(7)=1, a(8)=6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392430

/-- `4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P453624865674544716.Spec : Prop :=
  ∀ n, P453624865674544716.a n = A392430 n

theorem P453624865674544716.correct : P453624865674544716.Spec := by
  intro n
  simp only [A392430]

end A392430

/-!
# A392431: a(n) = Sum_{k=0..2*n} binomial(3*k,2*n-k).

The programs for A392431, the canonical program `A392431.P8691648750353875342` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392431 has offset 0).

The definition of A392431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392431.P8691648750353875342

`7*a(n-1)-a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=26, a(3)=181`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392431

/-- `7*a(n-1)-a(n-2)+3*a(n-3)-a(n-4)` -/
def P8691648750353875342.Spec : Prop :=
  ∀ n, P8691648750353875342.a n = A392431 n

theorem P8691648750353875342.correct : P8691648750353875342.Spec := by
  intro n
  simp only [A392431]

end A392431

/-! ## A392431.P12075987087560926837

`A003269(6*n+1)`
-/

namespace A392431.P12075987087560926837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (6 * n + 1)

end

end A392431.P12075987087560926837

namespace A392431

/-- `A003269(6*n+1)` -/
def P12075987087560926837.Spec : Prop :=
  ∀ n, P12075987087560926837.a n = A392431 n

end A392431

/-! ## A392431.P1322815531447046922

`A099234(2*n)`
-/

namespace A392431.P1322815531447046922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099234 (2 * n)

end

end A392431.P1322815531447046922

namespace A392431

/-- `A099234(2*n)` -/
def P1322815531447046922.Spec : Prop :=
  ∀ n, P1322815531447046922.a n = A392431 n

end A392431

/-! ## A392431.P2204847023044672675

`A052535(3*n)`
-/

namespace A392431.P2204847023044672675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (3 * n)

end

end A392431.P2204847023044672675

namespace A392431

/-- `A052535(3*n)` -/
def P2204847023044672675.Spec : Prop :=
  ∀ n, P2204847023044672675.a n = A392431 n

end A392431

/-! ## A392431.P1038502375417485939

`A017898(A016957(n))`
-/

namespace A392431.P1038502375417485939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A016957 n).toNat

end

end A392431.P1038502375417485939

namespace A392431

/-- `A017898(A016957(n))` -/
def P1038502375417485939.Spec : Prop :=
  ∀ n, P1038502375417485939.a n = A392431 n

end A392431

/-! ## A392431.P8248042427515918033

`A122522(A017533(n))`
-/

namespace A392431.P8248042427515918033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (A017533 n).toNat

end

end A392431.P8248042427515918033

namespace A392431

/-- `A122522(A017533(n))` -/
def P8248042427515918033.Spec : Prop :=
  ∀ n, P8248042427515918033.a n = A392431 n

end A392431

/-! ## A392431.P16178966339849876268

`A122522(A017545(n))`
-/

namespace A392431.P16178966339849876268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (A017545 n).toNat

end

end A392431.P16178966339849876268

namespace A392431

/-- `A122522(A017545(n))` -/
def P16178966339849876268.Spec : Prop :=
  ∀ n, P16178966339849876268.a n = A392431 n

end A392431

/-! ## A392431.P5390330065414792415

`A226517(A017653(n))`
-/

namespace A392431.P5390330065414792415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (A017653 n).toNat

end

end A392431.P5390330065414792415

namespace A392431

/-- `A226517(A017653(n))` -/
def P5390330065414792415.Spec : Prop :=
  ∀ n, P5390330065414792415.a n = A392431 n

end A392431

/-! ## A392431.P6751601724870284199

`A122522(A063098(n+1))`
-/

namespace A392431.P6751601724870284199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (A063098 (n + 1)).toNat

end

end A392431.P6751601724870284199

namespace A392431

/-- `A122522(A063098(n+1))` -/
def P6751601724870284199.Spec : Prop :=
  ∀ n, P6751601724870284199.a n = A392431 n

end A392431

/-!
# A392432: a(n) = Sum_{k=0..floor(2*n/3)} binomial(3*k,2*n-3*k).

The programs for A392432, the canonical program `A392432.P15515989790877378272` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392432 has offset 0).

The definition of A392432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392432.P15515989790877378272

`6*a(n-2)+3*a(n-3)-3*a(n-4)+3*a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=15, a(5)=24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392432

/-- `6*a(n-2)+3*a(n-3)-3*a(n-4)+3*a(n-5)-a(n-6)` -/
def P15515989790877378272.Spec : Prop :=
  ∀ n, P15515989790877378272.a n = A392432 n

theorem P15515989790877378272.correct : P15515989790877378272.Spec := by
  intro n
  simp only [A392432]

end A392432

/-! ## A392432.P5732866399335882155

`A115055(2*(n+1))`
-/

namespace A392432.P5732866399335882155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115055 (2 * (n + 1))

end

end A392432.P5732866399335882155

namespace A392432

/-- `A115055(2*(n+1))` -/
def P5732866399335882155.Spec : Prop :=
  ∀ n, P5732866399335882155.a n = A392432 n

end A392432

/-!
# A392433: a(n) = Sum_{k=0..floor(n/2)} binomial(3*k,2*n-4*k).

The programs for A392433, the canonical program `A392433.P7928443320864027511` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392433 has offset 0).

The definition of A392433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392433.P7928443320864027511

`A369815(6*n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A392433

/-- `A369815(6*n)` -/
def P7928443320864027511.Spec : Prop :=
  ∀ n, P7928443320864027511.a n = A392433 n

theorem P7928443320864027511.correct : P7928443320864027511.Spec := by
  intro n
  simp only [A392433]

end A392433

/-!
# A392439: Prime numbers p whose predecessor k = (p - 1) is a composable number (A392440).

The programs for A392439, there is no canonical definition to state claims against.
-/

/-! ## A392439.P12466062756313544538

`record[A135682(A136446(n+1)+1)]`
-/

namespace A392439.P12466062756313544538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135682 (A136446 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392439.P12466062756313544538

/-! ## A392439.P3126788473632157297

`record[A002034(A392440(n+1)+1)]`
-/

namespace A392439.P3126788473632157297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A392440 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392439.P3126788473632157297

/-! ## A392439.P1837502365682737828

`∩[A048342(n+1), A164318(n+1)]`
-/

namespace A392439.P1837502365682737828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392439.P1837502365682737828

/-! ## A392439.P2316871278976459831

`∩[A088184(n+1), A162565(n+1)]`
-/

namespace A392439.P2316871278976459831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392439.P2316871278976459831

/-! ## A392439.P5725263704963998118

`∩[A050687(n+1), A164318(n+1)]`
-/

namespace A392439.P5725263704963998118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392439.P5725263704963998118

/-!
# A392441: a(n) is the sum of n consecutive triangular numbers immediately preceding a triangular number T(k), which is also equal to the sum of n-1 consecutive triangular numbers immediately following T(k).

The programs for A392441, the canonical program `A392441.P12375707478178903987` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392441 has offset 1).

The definition of A392441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392441.P12375707478178903987

`(n+1)*n*(12*(n+1)^3+6*(n+1)²-5*(n+1)-2)/6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392441

/-- `(n+1)*n*(12*(n+1)^3+6*(n+1)²-5*(n+1)-2)/6` -/
def P12375707478178903987.Spec : Prop :=
  ∀ n, P12375707478178903987.a n = (A392441 (n + 1) : ℚ)

end A392441

/-!
# A392442: Number of vertices in a complete bipartite graph where the vertices in the two parts are placed on opposite sides of a parabola at integer y coordinates y = 1, 2, ...n.

The programs for A392442, there is no canonical definition to state claims against.
-/

/-! ## A392442.P5939893716538955307

`A392444(n+1)-A392443(n+1)+1`
-/

namespace A392442.P5939893716538955307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392444 (n + 1) - A392443 (n + 1) + 1

end

end A392442.P5939893716538955307

/-!
# A392443: Number of finite regions in a complete bipartite graph where the vertices in the two parts are placed on opposite sides of a parabola at integer y coordinates y = 1, 2, ...n.

The programs for A392443, there is no canonical definition to state claims against.
-/

/-! ## A392443.P3560746744341787931

`A392444(n+1)-A392442(n+1)+1`
-/

namespace A392443.P3560746744341787931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392444 (n + 1) - A392442 (n + 1) + 1

end

end A392443.P3560746744341787931

/-! ## A392443.P14481119363921356382

`∑{p}[A287223(2*n), #]`
-/

namespace A392443.P14481119363921356382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287223 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392443.P14481119363921356382

/-!
# A392444: Number of edges in a complete bipartite graph where the vertices in the two parts are placed on opposite sides of a parabola at integer y coordinates y = 1, 2, ...n.

The programs for A392444, there is no canonical definition to state claims against.
-/

/-! ## A392444.P7781107624301978284

`A392442(n+1)+A392443(n+1)-1`
-/

namespace A392444.P7781107624301978284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392442 (n + 1) + A392443 (n + 1) - 1

end

end A392444.P7781107624301978284

/-!
# A392445: Irregular triangle read by rows: T(n, k) is the number of factorizations of n into k factors (where 0 < k <= Omega(n)) that are inequivalent under toroidal symmetry.

The programs for A392445, there is no canonical definition to state claims against.
-/

/-! ## A392445.P6884954729633825468

`A327168(A327156(3*n+5)+A000045(n))`
-/

namespace A392445.P6884954729633825468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (A327156 (3 * n + 5) + A000045 n).toNat

end

end A392445.P6884954729633825468

/-! ## A392445.P3610506373720884227

`and(2, A389961(n+1))!`
-/

namespace A392445.P3610506373720884227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A389961 (n + 1))).toNat

end

end A392445.P3610506373720884227

/-! ## A392445.P2193686146713629850

`A117898(A281970(n))`
-/

namespace A392445.P2193686146713629850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117898 (A281970 n).toNat

end

end A392445.P2193686146713629850

/-! ## A392445.P10367468184551993735

`A088569(A365967(n))`
-/

namespace A392445.P10367468184551993735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A365967 n).toNat

end

end A392445.P10367468184551993735

/-! ## A392445.P10577552908239841904

`A323345(A315755(n))`
-/

namespace A392445.P10577552908239841904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323345 (A315755 n).toNat

end

end A392445.P10577552908239841904

/-!
# A392446: Toroidal factorizations: row sums of A392445.

The programs for A392446, there is no canonical definition to state claims against.
-/

/-! ## A392446.P11880378497801046628

`A125749(A050340(n+2))`
-/

namespace A392446.P11880378497801046628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (A050340 (n + 2)).toNat

end

end A392446.P11880378497801046628

/-! ## A392446.P16382297232005689565

`A111890(A339318(n+2))`
-/

namespace A392446.P16382297232005689565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (A339318 (n + 2)).toNat

end

end A392446.P16382297232005689565

/-! ## A392446.P6273583895913881875

`A161908(A281113(n+2))%A324694(3*n+2)`
-/

namespace A392446.P6273583895913881875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161908 (A281113 (n + 2)).toNat) (A324694 (3 * n + 2))

end

end A392446.P6273583895913881875

/-! ## A392446.P1025654276400317415

`A067441(A111219(n+2))`
-/

namespace A392446.P1025654276400317415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067441 (A111219 (n + 2)).toNat

end

end A392446.P1025654276400317415

/-! ## A392446.P6200191911690050872

`A182731(A006241(n+2))`
-/

namespace A392446.P6200191911690050872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182731 (A006241 (n + 2)).toNat

end

end A392446.P6200191911690050872

/-!
# A392447: The number of exponential divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

The programs for A392447, the canonical program `A392447.P11774020866332799433` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392447 has offset 1).

The definition of A392447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392447.P11774020866332799433

`∏{e}[n+1, val(#, 2)+1]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392447

/-- `∏{e}[n+1, val(#, 2)+1]` -/
def P11774020866332799433.Spec : Prop :=
  ∀ n, (P11774020866332799433.a n : ℤ) = A392447 (n + 1)

theorem P11774020866332799433.correct : P11774020866332799433.Spec := by
  intro n
  simp only [A392447, Nat.add_sub_cancel]

end A392447

/-! ## A392447.P15993593853555024661

`∏{p}[n+1, val(val((n+1)², #), 2)]`
-/

namespace A392447.P15993593853555024661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.valuation ((n + 1) ^ 2) p) 2

end

end A392447.P15993593853555024661

namespace A392447

/-- `∏{p}[n+1, val(val((n+1)², #), 2)]` -/
def P15993593853555024661.Spec : Prop :=
  ∀ n, (P15993593853555024661.a n : ℤ) = A392447 (n + 1)

end A392447

/-! ## A392447.P10146487381839021772

`∏{e}[n+1, A001511(#)]`
-/

namespace A392447.P10146487381839021772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001511 (Nat.factorization (f1 n) p)

end

end A392447.P10146487381839021772

namespace A392447

/-- `∏{e}[n+1, A001511(#)]` -/
def P10146487381839021772.Spec : Prop :=
  ∀ n, P10146487381839021772.a n = A392447 (n + 1)

end A392447

/-! ## A392447.P13910895249198644274

`A049419(A365296(n+1))`
-/

namespace A392447.P13910895249198644274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A365296 (n + 1)).toNat

end

end A392447.P13910895249198644274

namespace A392447

/-- `A049419(A365296(n+1))` -/
def P13910895249198644274.Spec : Prop :=
  ∀ n, P13910895249198644274.a n = A392447 (n + 1)

end A392447

/-! ## A392447.P13875803285791320009

`A392628((n+1)/A007947(n+1))`
-/

namespace A392447.P13875803285791320009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A392447.P13875803285791320009

namespace A392447

/-- `A392628((n+1)/A007947(n+1))` -/
def P13875803285791320009.Spec : Prop :=
  ∀ n, P13875803285791320009.a n = A392447 (n + 1)

end A392447

/-! ## A392447.P5223450995114015263

`∏{e}[(n+1)², val(#, 2)]`
-/

namespace A392447.P5223450995114015263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2

end

end A392447.P5223450995114015263

namespace A392447

/-- `∏{e}[(n+1)², val(#, 2)]` -/
def P5223450995114015263.Spec : Prop :=
  ∀ n, (P5223450995114015263.a n : ℤ) = A392447 (n + 1)

end A392447

/-! ## A392447.P17484064274679836860

`A368980(A365296((n+1)²))`
-/

namespace A392447.P17484064274679836860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368980 (A365296 ((n + 1) ^ 2)).toNat

end

end A392447.P17484064274679836860

namespace A392447

/-- `A368980(A365296((n+1)²))` -/
def P17484064274679836860.Spec : Prop :=
  ∀ n, P17484064274679836860.a n = A392447 (n + 1)

end A392447

/-!
# A392448: The sum of the exponential divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

The programs for A392448, there is no canonical definition to state claims against.
-/

/-! ## A392448.P2182246962296414004

`A051377(A365296(n+1))`
-/

namespace A392448.P2182246962296414004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A365296 (n + 1)).toNat

end

end A392448.P2182246962296414004

/-! ## A392448.P8798732166738343884

`gcd(A051377(n+1), A107762(n+1))`
-/

namespace A392448.P8798732166738343884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051377 (n + 1)) (A107762 (n + 1))

end

end A392448.P8798732166738343884

/-! ## A392448.P1217984522984415521

`A051377(n+1)%A141037(A083481(n+1))`
-/

namespace A392448.P1217984522984415521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051377 (n + 1)) (A141037 (A083481 (n + 1)).toNat)

end

end A392448.P1217984522984415521

/-! ## A392448.P4616453673611731237

`A384556(A054496(n+1))`
-/

namespace A392448.P4616453673611731237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384556 (A054496 (n + 1)).toNat

end

end A392448.P4616453673611731237

/-! ## A392448.P14047052493889345344

`A384556(A187829(n+1))`
-/

namespace A392448.P14047052493889345344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384556 (A187829 (n + 1)).toNat

end

end A392448.P14047052493889345344

/-!
# A392449: The number of exponential unitary (or e-unitary) divisors of n that are squares.

The programs for A392449, the canonical program `A392449.P4738503714353542258` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392449 has offset 1).

The definition of A392449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392449.P11719884336601954871

`∏{p}[∏{e}[n+1, #+1], A343862(#)]`
-/

namespace A392449.P11719884336601954871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A343862 p

end

end A392449.P11719884336601954871

namespace A392449

/-- `∏{p}[∏{e}[n+1, #+1], A343862(#)]` -/
def P11719884336601954871.Spec : Prop :=
  ∀ n, P11719884336601954871.a n = A392449 (n + 1)

end A392449

/-! ## A392449.P4738503714353542258

`A000007(A344616(n+1))*A367516(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A392449

/-- `A000007(A344616(n+1))*A367516(n+1)` -/
def P4738503714353542258.Spec : Prop :=
  ∀ n, P4738503714353542258.a n = A392449 (n + 1)

theorem P4738503714353542258.correct : P4738503714353542258.Spec := by
  intro n
  simp only [A392449, Nat.add_sub_cancel]

end A392449

/-! ## A392449.P17823066050535948241

`and(∏{e}[n+1, #+1], A340102(∏{e}[n+1, 2*#+1]))`
-/

namespace A392449.P17823066050535948241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A340102 (∏ p ∈ Nat.primeFactors (f2 n), (2 * Nat.factorization (f2 n) p + 1)))

end

end A392449.P17823066050535948241

namespace A392449

/-- `and(∏{e}[n+1, #+1], A340102(∏{e}[n+1, 2*#+1]))` -/
def P17823066050535948241.Spec : Prop :=
  ∀ n, P17823066050535948241.a n = A392449 (n + 1)

end A392449

/-! ## A392449.P13745516948956537802

`A124766(A347438(n+1)^A263653(n+2))`
-/

namespace A392449.P13745516948956537802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (SequenceMachineLib.roundAway ((A347438 (n + 1) : ℚ) ^ (A263653 (n + 2) : ℤ))).toNat

end

end A392449.P13745516948956537802

namespace A392449

/-- `A124766(A347438(n+1)^A263653(n+2))` -/
def P13745516948956537802.Spec : Prop :=
  ∀ n, P13745516948956537802.a n = A392449 (n + 1)

end A392449

/-!
# A392450: The number of exponential unitary (or e-unitary) divisors of n that are exponentially squarefree numbers (A209061).

The programs for A392450, the canonical program `A392450.P7898530236286233614` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392450 has offset 1).

The definition of A392450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392450.P7898530236286233614

`∏{e}[n+1, A056671(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A392450

/-- `∏{e}[n+1, A056671(#)]` -/
def P7898530236286233614.Spec : Prop :=
  ∀ n, P7898530236286233614.a n = A392450 (n + 1)

theorem P7898530236286233614.correct : P7898530236286233614.Spec := by
  intro n
  simp only [A392450, Nat.add_sub_cancel]

end A392450

/-! ## A392450.P13326180310497524264

`gcd(A006012(n), A049419(n+1))`
-/

namespace A392450.P13326180310497524264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006012 n) (A049419 (n + 1))

end

end A392450.P13326180310497524264

namespace A392450

/-- `gcd(A006012(n), A049419(n+1))` -/
def P13326180310497524264.Spec : Prop :=
  ∀ n, (P13326180310497524264.a n : ℤ) = A392450 (n + 1)

end A392450

/-! ## A392450.P11862251986294402921

`A116515(A112622(n+1))`
-/

namespace A392450.P11862251986294402921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116515 (A112622 (n + 1)).toNat

end

end A392450.P11862251986294402921

namespace A392450

/-- `A116515(A112622(n+1))` -/
def P11862251986294402921.Spec : Prop :=
  ∀ n, P11862251986294402921.a n = A392450 (n + 1)

end A392450

/-! ## A392450.P4885030016495199793

`A187816(A069739(n+1))`
-/

namespace A392450.P4885030016495199793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (A069739 (n + 1)).toNat

end

end A392450.P4885030016495199793

namespace A392450

/-- `A187816(A069739(n+1))` -/
def P4885030016495199793.Spec : Prop :=
  ∀ n, P4885030016495199793.a n = A392450 (n + 1)

end A392450

/-! ## A392450.P15867818060299760275

`A255559(A127707(n+1))`
-/

namespace A392450.P15867818060299760275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255559 (A127707 (n + 1)).toNat

end

end A392450.P15867818060299760275

namespace A392450

/-- `A255559(A127707(n+1))` -/
def P15867818060299760275.Spec : Prop :=
  ∀ n, P15867818060299760275.a n = A392450 (n + 1)

end A392450

/-!
# A392451: The number of infinitary divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

The programs for A392451, the canonical program `A392451.P8918691439076179572` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392451 has offset 1).

The definition of A392451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392451.P6702051577464033927

`∏{e}[n+1, A105264(#)]`
-/

namespace A392451.P6702051577464033927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A105264 (Nat.factorization (f1 n) p)

end

end A392451.P6702051577464033927

namespace A392451

/-- `∏{e}[n+1, A105264(#)]` -/
def P6702051577464033927.Spec : Prop :=
  ∀ n, P6702051577464033927.a n = A392451 (n + 1)

end A392451

/-! ## A392451.P8918691439076179572

`∏{e}[n+1, A000120(#)+1]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A392451

/-- `∏{e}[n+1, A000120(#)+1]` -/
def P8918691439076179572.Spec : Prop :=
  ∀ n, P8918691439076179572.a n = A392451 (n + 1)

theorem P8918691439076179572.correct : P8918691439076179572.Spec := by
  intro n
  simp only [A392451, Nat.add_sub_cancel]

end A392451

/-! ## A392451.P8354156087696973484

`A000005(A375240(n+1))`
-/

namespace A392451.P8354156087696973484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A375240 (n + 1)).toNat

end

end A392451.P8354156087696973484

namespace A392451

/-- `A000005(A375240(n+1))` -/
def P8354156087696973484.Spec : Prop :=
  ∀ n, P8354156087696973484.a n = A392451 (n + 1)

end A392451

/-! ## A392451.P5070259423618350846

`∏{e}[n+1, A185974(A000120(#))]`
-/

namespace A392451.P5070259423618350846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A185974 (A000120 (Nat.factorization (f1 n) p)).toNat

end

end A392451.P5070259423618350846

namespace A392451

/-- `∏{e}[n+1, A185974(A000120(#))]` -/
def P5070259423618350846.Spec : Prop :=
  ∀ n, P5070259423618350846.a n = A392451 (n + 1)

end A392451

/-! ## A392451.P1615881454882500718

`A365488(A011262(n+1))`
-/

namespace A392451.P1615881454882500718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A011262 (n + 1)).toNat

end

end A392451.P1615881454882500718

namespace A392451

/-- `A365488(A011262(n+1))` -/
def P1615881454882500718.Spec : Prop :=
  ∀ n, P1615881454882500718.a n = A392451 (n + 1)

end A392451

/-! ## A392451.P7536260426897224848

`A322483(A007913(n+1)*A019554(n+1))`
-/

namespace A392451.P7536260426897224848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A007913 (n + 1) * A019554 (n + 1)).toNat

end

end A392451.P7536260426897224848

namespace A392451

/-- `A322483(A007913(n+1)*A019554(n+1))` -/
def P7536260426897224848.Spec : Prop :=
  ∀ n, P7536260426897224848.a n = A392451 (n + 1)

end A392451

/-! ## A392451.P8661858116038649813

`A365488(A227324(n+1))`
-/

namespace A392451.P8661858116038649813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A227324 (n + 1)).toNat

end

end A392451.P8661858116038649813

namespace A392451

/-- `A365488(A227324(n+1))` -/
def P8661858116038649813.Spec : Prop :=
  ∀ n, P8661858116038649813.a n = A392451 (n + 1)

end A392451

/-!
# A392452: The number of coreful infinitary divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

The programs for A392452, the canonical program `A392452.P10509127174743125491` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392452 has offset 1).

The definition of A392452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392452.P10509127174743125491

`∏{e}[n+1, #-val(#!, 2)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392452

/-- `∏{e}[n+1, #-val(#!, 2)]` -/
def P10509127174743125491.Spec : Prop :=
  ∀ n, P10509127174743125491.a n = A392452 (n + 1)

theorem P10509127174743125491.correct : P10509127174743125491.Spec := by
  intro n
  simp only [A392452, Nat.add_sub_cancel]

end A392452

/-! ## A392452.P11799930380284503367

`∏{e}[n+1, A000120(#)]`
-/

namespace A392452.P11799930380284503367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000120 (Nat.factorization (f1 n) p)

end

end A392452.P11799930380284503367

namespace A392452

/-- `∏{e}[n+1, A000120(#)]` -/
def P11799930380284503367.Spec : Prop :=
  ∀ n, P11799930380284503367.a n = A392452 (n + 1)

end A392452

/-! ## A392452.P9317843138181507371

`∏{e}[A375240(n+1), #]`
-/

namespace A392452.P9317843138181507371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A392452.P9317843138181507371

namespace A392452

/-- `∏{e}[A375240(n+1), #]` -/
def P9317843138181507371.Spec : Prop :=
  ∀ n, (P9317843138181507371.a n : ℤ) = A392452 (n + 1)

end A392452

/-! ## A392452.P17498911038150020235

`∏{e}[(n+1)²/∏{p}[n+1, #], A124767(#)]`
-/

namespace A392452.P17498911038150020235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A124767 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A392452.P17498911038150020235

namespace A392452

/-- `∏{e}[(n+1)²/∏{p}[n+1, #], A124767(#)]` -/
def P17498911038150020235.Spec : Prop :=
  ∀ n, P17498911038150020235.a n = A392452 (n + 1)

end A392452

/-! ## A392452.P626260852510093457

`A064547(2^A366763(n+1))`
-/

namespace A392452.P626260852510093457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A366763 (n + 1) : ℤ))).toNat

end

end A392452.P626260852510093457

namespace A392452

/-- `A064547(2^A366763(n+1))` -/
def P626260852510093457.Spec : Prop :=
  ∀ n, P626260852510093457.a n = A392452 (n + 1)

end A392452

/-! ## A392452.P14605253068337626253

`A382290(n+1)+A061358(A006512(n+1))`
-/

namespace A392452.P14605253068337626253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (n + 1) + A061358 (A006512 (n + 1)).toNat

end

end A392452.P14605253068337626253

namespace A392452

/-- `A382290(n+1)+A061358(A006512(n+1))` -/
def P14605253068337626253.Spec : Prop :=
  ∀ n, P14605253068337626253.a n = A392452 (n + 1)

end A392452

/-! ## A392452.P6095418784732774067

`A382291(A136026(n+1))+A382290(n+1)`
-/

namespace A392452.P6095418784732774067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382291 (A136026 (n + 1)).toNat + A382290 (n + 1)

end

end A392452.P6095418784732774067

namespace A392452

/-- `A382291(A136026(n+1))+A382290(n+1)` -/
def P6095418784732774067.Spec : Prop :=
  ∀ n, P6095418784732774067.a n = A392452 (n + 1)

end A392452

/-!
# A392454: a(n) = Sum_{k=0..floor(2*n/3)} binomial(2*k+1,2*n-3*k).

The programs for A392454, the canonical program `A392454.P8393862469342533652` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392454 has offset 0).

The definition of A392454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392454.P8393862469342533652

`4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392454

/-- `4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P8393862469342533652.Spec : Prop :=
  ∀ n, P8393862469342533652.a n = A392454 n

theorem P8393862469342533652.correct : P8393862469342533652.Spec := by
  intro n
  simp only [A392454]

end A392454

/-! ## A392454.P11620731207683917674

`A052920(3*(n+1)+n)`
-/

namespace A392454.P11620731207683917674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (3 * (n + 1) + n)

end

end A392454.P11620731207683917674

namespace A392454

/-- `A052920(3*(n+1)+n)` -/
def P11620731207683917674.Spec : Prop :=
  ∀ n, P11620731207683917674.a n = A392454 n

end A392454

/-! ## A392454.P7337399133907047459

`A392428(n+2)-A391600(n)`
-/

namespace A392454.P7337399133907047459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392428 (n + 2) - A391600 n

end

end A392454.P7337399133907047459

namespace A392454

/-- `A392428(n+2)-A391600(n)` -/
def P7337399133907047459.Spec : Prop :=
  ∀ n, P7337399133907047459.a n = A392454 n

end A392454

/-!
# A392455: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*k+1,2*n-5*k).

The programs for A392455, the canonical program `A392455.P13570136347101353320` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392455 has offset 0).

The definition of A392455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392455.P13570136347101353320

`4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=1, a(5)=1, a(6)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392455

/-- `4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P13570136347101353320.Spec : Prop :=
  ∀ n, P13570136347101353320.a n = A392455 n

theorem P13570136347101353320.correct : P13570136347101353320.Spec := by
  intro n
  simp only [A392455]

end A392455

/-! ## A392455.P17560674643242458813

`A369816(4*n+5)`
-/

namespace A392455.P17560674643242458813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 (4 * n + 5)

end

end A392455.P17560674643242458813

namespace A392455

/-- `A369816(4*n+5)` -/
def P17560674643242458813.Spec : Prop :=
  ∀ n, P17560674643242458813.a n = A392455 n

end A392455

/-!
# A392456: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*k+1,2*n-7*k).

The programs for A392456, the canonical program `A392456.P12851857564400953604` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392456 has offset 0).

The definition of A392456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392456.P12851857564400953604

`4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=3, a(5)=1, a(6)=0, a(7)=1, a(8)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392456

/-- `4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P12851857564400953604.Spec : Prop :=
  ∀ n, P12851857564400953604.a n = A392456 n

theorem P12851857564400953604.correct : P12851857564400953604.Spec := by
  intro n
  simp only [A392456]

end A392456

/-!
# A392459: Numbers that cannot be expressed as the sum of the partial products of some sequence of primes.

The programs for A392459, there is no canonical definition to state claims against.
-/

/-! ## A392459.P12324213057147473645

`A180337(n+1)-1`
-/

namespace A392459.P12324213057147473645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180337 (n + 1) - 1

end

end A392459.P12324213057147473645

/-! ## A392459.P14275685896633002173

`eq[0, A317240(n+1)]`
-/

namespace A392459.P14275685896633002173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392459.P14275685896633002173

/-! ## A392459.P5740484271822665329

`A023443(A180337(n+1))`
-/

namespace A392459.P5740484271822665329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A180337 (n + 1)).toNat

end

end A392459.P5740484271822665329

/-! ## A392459.P191805905313924612

`A023444(A180337(n+1)+1)`
-/

namespace A392459.P191805905313924612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A180337 (n + 1) + 1).toNat

end

end A392459.P191805905313924612

/-! ## A392459.P15493982670762159331

`lt[A317240(n+1), A000108(A007814(2*n+1))]`
-/

namespace A392459.P15493982670762159331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A007814 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392459.P15493982670762159331

/-!
# A392460: Number of transitive relations on an n-set with exactly seven ordered pairs.

The programs for A392460, there is no canonical definition to state claims against.
-/

/-! ## A392460.P2795914337201259795

`A395093(n)-A394769(n)`
-/

namespace A392460.P2795914337201259795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395093 n - A394769 n

end

end A392460.P2795914337201259795

/-!
# A392461: a(n) is the minimum diameter of a n-element set of integers for which no nonzero d has more than 2 representations as a difference of elements of the set.

The programs for A392461, there is no canonical definition to state claims against.
-/

/-! ## A392461.P10458185759537843272

`∑[∑[A079978(A228540(n))]]`
-/

namespace A392461.P10458185759537843272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A228540 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392461.P10458185759537843272

/-! ## A392461.P12144704836334028080

`∑[∑[A092436(A274473(n))]]`
-/

namespace A392461.P12144704836334028080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092436 (A274473 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392461.P12144704836334028080

/-! ## A392461.P8121760450312438419

`∑[∑[A285978(A277934(n))]]`
-/

namespace A392461.P8121760450312438419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285978 (A277934 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392461.P8121760450312438419

/-! ## A392461.P4696624245551721102

`∑[∑[A316829(A023359(n+4))]]`
-/

namespace A392461.P4696624245551721102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A023359 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392461.P4696624245551721102

/-! ## A392461.P1499263420951650221

`A124757(A267581(n))`
-/

namespace A392461.P1499263420951650221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A267581 n).toNat

end

end A392461.P1499263420951650221

/-!
# A392462: a(n) is the minimum diameter of a n-element set of integers for which no nonzero d has more than 3 representations as a difference of elements of the set.

The programs for A392462, there is no canonical definition to state claims against.
-/

/-! ## A392462.P8993798832825036606

`∑[A382692(A090348(n+1))]`
-/

namespace A392462.P8993798832825036606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382692 (A090348 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392462.P8993798832825036606

/-! ## A392462.P3379519212798092424

`∑[∑[A269927(A264447(n+1))]]`
-/

namespace A392462.P3379519212798092424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269927 (A264447 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392462.P3379519212798092424

/-! ## A392462.P15240539345589038781

`∑[∑[A294936(A358409(n+1))]]`
-/

namespace A392462.P15240539345589038781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A358409 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392462.P15240539345589038781

/-! ## A392462.P3755901186071236558

`∑[∑[A080887(A112333(n+2))]]`
-/

namespace A392462.P3755901186071236558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A112333 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392462.P3755901186071236558

/-! ## A392462.P16977818012597539883

`∑[A153112(n)%A250288(n+1)]`
-/

namespace A392462.P16977818012597539883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153112 n) (A250288 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392462.P16977818012597539883

/-!
# A392463: a(n) is the minimum diameter of a n-element set of integers for which no nonzero d has more than 4 representations as a difference of elements of the set.

The programs for A392463, there is no canonical definition to state claims against.
-/

/-! ## A392463.P5082913011879668805

`round(∑[∑[A115580(2*n+1)]]/4)`
-/

namespace A392463.P5082913011879668805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115580 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A392463.P5082913011879668805

/-!
# A392465: Sum of decimal digits of A101686.

The programs for A392465, there is no canonical definition to state claims against.
-/

/-! ## A392465.P10188500904702471745

`∑{digits}[∏[n²+1], #]`
-/

namespace A392465.P10188500904702471745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A392465.P10188500904702471745

/-! ## A392465.P13018362527752531681

`∑{digits}[A101686(n)+1, #]-1`
-/

namespace A392465.P13018362527752531681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101686 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A392465.P13018362527752531681

/-!
# A392466: a(1) = 1; for n > 1, a(n) = (n-1)*(n-2)^(A000120(n-1) - 1).

The programs for A392466, there is no canonical definition to state claims against.
-/

/-! ## A392466.P15234014425427540113

`A255740((n+1)²+n²)`
-/

namespace A392466.P15234014425427540113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255740 ((n + 1) ^ 2 + n ^ 2)

end

end A392466.P15234014425427540113

/-! ## A392466.P14574200415123132304

`filter[A171698(2*n), A155898(#)]`
-/

namespace A392466.P14574200415123132304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171698 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A155898 (f1 j).toNat = 1) n)

end

end A392466.P14574200415123132304

/-!
# A392467: Numbers whose sum of odd indexed divisors divides the sum of its divisors.

The programs for A392467, there is no canonical definition to state claims against.
-/

/-! ## A392467.P7508822795479278379

`lt[A095342(A278949(n)), A118429(n)]`
-/

namespace A392467.P7508822795479278379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095342 (A278949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392467.P7508822795479278379

/-! ## A392467.P14681536440531134376

`lt[A323531(A334436(n)), A264319(n+1)]`
-/

namespace A392467.P14681536440531134376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323531 (A334436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392467.P14681536440531134376

/-! ## A392467.P12553514550788807360

`lt[A349375(A059376(n+1)), A060199(n)]`
-/

namespace A392467.P12553514550788807360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349375 (A059376 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392467.P12553514550788807360

/-! ## A392467.P12407413072722441845

`lt[A256012(n), A351014(A110117(n+1))]`
-/

namespace A392467.P12407413072722441845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A110117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392467.P12407413072722441845

/-! ## A392467.P17531481417590542770

`A130245(A128695(n+1))`
-/

namespace A392467.P17531481417590542770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A128695 (n + 1)).toNat

end

end A392467.P17531481417590542770

/-!
# A392468: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 2*x)^2) / (1 - 2*x).

The programs for A392468, there is no canonical definition to state claims against.
-/

/-! ## A392468.P4561077641767875145

`Δ[A029578(∑[A159311(n)])]`
-/

namespace A392468.P4561077641767875145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159311 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392468.P4561077641767875145

/-! ## A392468.P1158220099776988963

`A343787(n)+A335474(A335459(n))`
-/

namespace A392468.P1158220099776988963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343787 n + A335474 (A335459 n).toNat

end

end A392468.P1158220099776988963

/-!
# A392473: a(0) = 0, a(1) = 1; otherwise, a(n) = a(n-1) + a(m), where m is the greatest square < n.

The programs for A392473, the canonical program `A392473.P4934109314884397624` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392473 has offset 0).

The definition of A392473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392473.P4934109314884397624

`a(n-1)+a(floor(sqrt(n-1))²)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392473

/-- `a(n-1)+a(floor(sqrt(n-1))²)` -/
def P4934109314884397624.Spec : Prop :=
  ∀ n, (P4934109314884397624.a n : ℤ) = A392473 n

theorem P4934109314884397624.correct : P4934109314884397624.Spec := by
  intro n
  simp only [A392473]

end A392473

/-!
# A392477: A modified Sisyphus function: a(n) = concatenation of (number of odd digits in n) (number of even digits in n) (number of digits in n).

The programs for A392477, there is no canonical definition to state claims against.
-/

/-! ## A392477.P1314806499982420706

`A004086(A171797(n))`
-/

namespace A392477.P1314806499982420706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A171797 n).toNat

end

end A392477.P1314806499982420706

/-! ## A392477.P6942436716205438792

`A345110(A392220(n))`
-/

namespace A392477.P6942436716205438792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A392220 n).toNat

end

end A392477.P6942436716205438792

/-! ## A392477.P5327514529567556836

`A073053(A167677(A065031(n)))`
-/

namespace A392477.P5327514529567556836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 (A167677 (A065031 n).toNat).toNat

end

end A392477.P5327514529567556836

/-! ## A392477.P18067243985216828384

`A113587(A045918(n))`
-/

namespace A392477.P18067243985216828384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113587 (A045918 n).toNat

end

end A392477.P18067243985216828384

/-! ## A392477.P1790460345568113478

`A113587(A047842(n))`
-/

namespace A392477.P1790460345568113478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113587 (A047842 n).toNat

end

end A392477.P1790460345568113478

/-!
# A392478: Number of dominating sets in the n-necklace graph.

The programs for A392478, the canonical program `A392478.P6871897596749963138` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392478 has offset 0).

The definition of A392478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392478.P6871897596749963138

`15*a(n-1)-13*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=15, a(2)=199`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392478

/-- `15*a(n-1)-13*a(n-2)+3*a(n-3)` -/
def P6871897596749963138.Spec : Prop :=
  ∀ n, P6871897596749963138.a n = A392478 n

theorem P6871897596749963138.correct : P6871897596749963138.Spec := by
  intro n
  simp only [A392478]

end A392478

/-!
# A392480: Squares with non-distinct digits.

The programs for A392480, there is no canonical definition to state claims against.
-/

/-! ## A392480.P16038660426823484148

`∩[A109303(n+1), n²]`
-/

namespace A392480.P16038660426823484148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A392480.P16038660426823484148

/-! ## A392480.P6251871330433293779

`∩[A000290(n), A109303(n+1)]`
-/

namespace A392480.P6251871330433293779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392480.P6251871330433293779

/-! ## A392480.P1473076132534565965

`∩[A034793(n+1), A109303(n+1)]`
-/

namespace A392480.P1473076132534565965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392480.P1473076132534565965

/-! ## A392480.P18371305028395222181

`∩[A085960(n+1), A109303(n+1)]`
-/

namespace A392480.P18371305028395222181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392480.P18371305028395222181

/-! ## A392480.P4268186992618251512

`∩[A096398(n+1), A109303(n+1)]`
-/

namespace A392480.P4268186992618251512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392480.P4268186992618251512

/-!
# A392481: Numbers k such that both (3*k-3)^2 + k^2 and (3*k)^2 + (k+1)^2 are prime.

The programs for A392481, there is no canonical definition to state claims against.
-/

/-! ## A392481.P17905584462022759977

`A141497(eq[A026605(2*n+5), A334820(n)])`
-/

namespace A392481.P17905584462022759977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141497 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A392481.P17905584462022759977

/-!
# A392485: Number of n X n Boolean matrices that are row-consistent but not column-consistent.

The programs for A392485, there is no canonical definition to state claims against.
-/

/-! ## A392485.P12840310419182318328

`A055601(n+1)-A048291(n+1)`
-/

namespace A392485.P12840310419182318328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055601 (n + 1) - A048291 (n + 1)

end

end A392485.P12840310419182318328

/-!
# A392486: Number of n X n Boolean matrices having at least one zero row and at least one zero column.

The programs for A392486, there is no canonical definition to state claims against.
-/

/-! ## A392486.P6831261317853093832

`A002416(n+1)-A287065(n+1)`
-/

namespace A392486.P6831261317853093832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) - A287065 (n + 1)

end

end A392486.P6831261317853093832

/-! ## A392486.P13980570495326814708

`A005333(n+1)+A377649(n+1)-A287065(n+1)`
-/

namespace A392486.P13980570495326814708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005333 (n + 1) + (A377649 (n + 1) - A287065 (n + 1))

end

end A392486.P13980570495326814708

/-!
# A392487: a(n) = Sum_{k=0..floor((2*n+1)/5)} binomial(2*k+1,2*n-5*k+1).

The programs for A392487, the canonical program `A392487.P7955142106458207248` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392487 has offset 0).

The definition of A392487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392487.P7955142106458207248

`4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=0, a(5)=5, a(6)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392487

/-- `4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P7955142106458207248.Spec : Prop :=
  ∀ n, P7955142106458207248.a n = A392487 n

theorem P7955142106458207248.correct : P7955142106458207248.Spec := by
  intro n
  simp only [A392487]

end A392487

/-! ## A392487.P10113061077945749132

`A369816(A004767(n+1))`
-/

namespace A392487.P10113061077945749132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 (A004767 (n + 1)).toNat

end

end A392487.P10113061077945749132

namespace A392487

/-- `A369816(A004767(n+1))` -/
def P10113061077945749132.Spec : Prop :=
  ∀ n, P10113061077945749132.a n = A392487 n

end A392487

/-! ## A392487.P14895312843676724031

`A369816(A047212(3*n+5)-n)`
-/

namespace A392487.P14895312843676724031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 (A047212 (3 * n + 5) - (n : ℤ)).toNat

end

end A392487.P14895312843676724031

namespace A392487

/-- `A369816(A047212(3*n+5)-n)` -/
def P14895312843676724031.Spec : Prop :=
  ∀ n, P14895312843676724031.a n = A392487 n

end A392487

/-! ## A392487.P2292881767639722239

`A392455(n+1)+A392429(n)-A392429(n+1)`
-/

namespace A392487.P2292881767639722239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392455 (n + 1) + (A392429 n - A392429 (n + 1))

end

end A392487.P2292881767639722239

namespace A392487

/-- `A392455(n+1)+A392429(n)-A392429(n+1)` -/
def P2292881767639722239.Spec : Prop :=
  ∀ n, P2292881767639722239.a n = A392487 n

end A392487

/-!
# A392488: a(n) = Sum_{k=0..floor((2*n+1)/7)} binomial(2*k+1,2*n-7*k+1).

The programs for A392488, the canonical program `A392488.P14323190195778832669` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392488 has offset 0).

The definition of A392488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392488.P14323190195778832669

`4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=0, a(6)=0, a(7)=5, a(8)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392488

/-- `4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P14323190195778832669.Spec : Prop :=
  ∀ n, P14323190195778832669.a n = A392488 n

theorem P14323190195778832669.correct : P14323190195778832669.Spec := by
  intro n
  simp only [A392488]

end A392488

/-! ## A392488.P3863657960792471238

`A392456(n+1)+A392430(n)-A392430(n+1)`
-/

namespace A392488.P3863657960792471238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392456 (n + 1) + (A392430 n - A392430 (n + 1))

end

end A392488.P3863657960792471238

namespace A392488

/-- `A392456(n+1)+A392430(n)-A392430(n+1)` -/
def P3863657960792471238.Spec : Prop :=
  ∀ n, P3863657960792471238.a n = A392488 n

end A392488

/-!
# A392489: a(n) = Sum_{k=0..floor(n/2)} binomial(k+1,2*n-4*k+1).

The programs for A392489, the canonical program `A392489.P15509680287055895193` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392489 has offset 0).

The definition of A392489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392489.P15509680287055895193

`2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392489

/-- `2*a(n-2)-a(n-4)+a(n-5)` -/
def P15509680287055895193.Spec : Prop :=
  ∀ n, P15509680287055895193.a n = A392489 n

theorem P15509680287055895193.correct : P15509680287055895193.Spec := by
  intro n
  simp only [A392489]

end A392489

/-! ## A392489.P2567396300237426059

`ogf(1/(1-2x^2+x^4-x^5))`
-/

namespace A392489.P2567396300237426059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, 0, 1, -1] n

end

end A392489.P2567396300237426059

namespace A392489

/-- `ogf(1/(1-2x^2+x^4-x^5))` -/
def P2567396300237426059.Spec : Prop :=
  ∀ n, P2567396300237426059.a n = A392489 n

end A392489

/-! ## A392489.P14636491480882394425

`A017827(2*n+5)`
-/

namespace A392489.P14636491480882394425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (2 * n + 5)

end

end A392489.P14636491480882394425

namespace A392489

/-- `A017827(2*n+5)` -/
def P14636491480882394425.Spec : Prop :=
  ∀ n, P14636491480882394425.a n = A392489 n

end A392489

/-! ## A392489.P14700120399153972836

`Δ[A103372(2*n+5)]`
-/

namespace A392489.P14700120399153972836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392489.P14700120399153972836

namespace A392489

/-- `Δ[A103372(2*n+5)]` -/
def P14700120399153972836.Spec : Prop :=
  ∀ n, P14700120399153972836.a n = A392489 n

end A392489

/-! ## A392489.P18377711733078405971

`Δ[A124789(A005843(n+4))]`
-/

namespace A392489.P18377711733078405971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (A005843 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392489.P18377711733078405971

namespace A392489

/-- `Δ[A124789(A005843(n+4))]` -/
def P18377711733078405971.Spec : Prop :=
  ∀ n, P18377711733078405971.a n = A392489 n

end A392489

/-!
# A392490: a(n) = Sum_{k=0..floor(n/3)} binomial(k+1,2*n-6*k+1).

The programs for A392490, the canonical program `A392490.P1985756058173581985` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392490 has offset 0).

The definition of A392490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392490.P1985756058173581985

`2*a(n-3)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392490

/-- `2*a(n-3)-a(n-6)+a(n-7)` -/
def P1985756058173581985.Spec : Prop :=
  ∀ n, P1985756058173581985.a n = A392490 n

theorem P1985756058173581985.correct : P1985756058173581985.Spec := by
  intro n
  simp only [A392490]

end A392490

/-! ## A392490.P14654635052065113258

`A017847(2*n+7)`
-/

namespace A392490.P14654635052065113258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (2 * n + 7)

end

end A392490.P14654635052065113258

namespace A392490

/-- `A017847(2*n+7)` -/
def P14654635052065113258.Spec : Prop :=
  ∀ n, P14654635052065113258.a n = A392490 n

end A392490

/-!
# A392491: a(n) = Sum_{k=0..floor(n/4)} binomial(k+1,2*n-8*k+1).

The programs for A392491, the canonical program `A392491.P12253180548815093300` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392491 has offset 0).

The definition of A392491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392491.P12253180548815093300

`2*a(n-4)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=0, a(6)=0, a(7)=0, a(8)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A392491

/-- `2*a(n-4)-a(n-8)+a(n-9)` -/
def P12253180548815093300.Spec : Prop :=
  ∀ n, P12253180548815093300.a n = A392491 n

theorem P12253180548815093300.correct : P12253180548815093300.Spec := by
  intro n
  simp only [A392491]

end A392491

/-! ## A392491.P4540151377997338697

`A017867(2*n+9)`
-/

namespace A392491.P4540151377997338697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (2 * n + 9)

end

end A392491.P4540151377997338697

namespace A392491

/-- `A017867(2*n+9)` -/
def P4540151377997338697.Spec : Prop :=
  ∀ n, P4540151377997338697.a n = A392491 n

end A392491

/-! ## A392491.P17743274105898804640

`A127843(A224535(n+2))`
-/

namespace A392491.P17743274105898804640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (A224535 (n + 2)).toNat

end

end A392491.P17743274105898804640

namespace A392491

/-- `A127843(A224535(n+2))` -/
def P17743274105898804640.Spec : Prop :=
  ∀ n, P17743274105898804640.a n = A392491 n

end A392491

/-!
# A392493: 2-sparse numbers. p-sparse numbers where p is prime are defined in A392498.

The programs for A392493, there is no canonical definition to state claims against.
-/

/-! ## A392493.P5646463927372940108

`∩[2*n, A263837(n+3)]`
-/

namespace A392493.P5646463927372940108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392493.P5646463927372940108

/-! ## A392493.P6048321705299006676

`filter[A103517(n+1), A294935(#)]`
-/

namespace A392493.P6048321705299006676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A392493.P6048321705299006676

/-! ## A392493.P4813614663773757115

`filter[A263837(n+1), A267043(#)]`
-/

namespace A392493.P4813614663773757115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A392493.P4813614663773757115

/-! ## A392493.P12672357410816211012

`filter[A004277(n+2), A294935(#)]`
-/

namespace A392493.P12672357410816211012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A392493.P12672357410816211012

/-! ## A392493.P5197250744362863030

`filter[A005843(n+2), A294935(#)]`
-/

namespace A392493.P5197250744362863030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A392493.P5197250744362863030

/-!
# A392494: 3-sparse numbers. p-sparse numbers where p is prime are defined in A392498.

The programs for A392494, there is no canonical definition to state claims against.
-/

/-! ## A392494.P15918308093389935388

`A166720(A151991(n+2))`
-/

namespace A392494.P15918308093389935388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166720 (A151991 (n + 2)).toNat

end

end A392494.P15918308093389935388

/-! ## A392494.P4543135433143755380

`A166720(A244579(n+2))`
-/

namespace A392494.P4543135433143755380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166720 (A244579 (n + 2)).toNat

end

end A392494.P4543135433143755380

/-! ## A392494.P11766768496145619692

`A166720(A356171(n+2))`
-/

namespace A392494.P11766768496145619692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166720 (A356171 (n + 2)).toNat

end

end A392494.P11766768496145619692

/-! ## A392494.P12550608903306731156

`∩[A239310(n+1), A388011(n+1)]`
-/

namespace A392494.P12550608903306731156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392494.P12550608903306731156

/-! ## A392494.P16521475291901540659

`filter[A392498(n+3), A079978(#)]`
-/

namespace A392494.P16521475291901540659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392498 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A392494.P16521475291901540659

/-!
# A392495: 3-rigid numbers. p-rigid numbers where p is prime are defined in A392499.

The programs for A392495, there is no canonical definition to state claims against.
-/

/-! ## A392495.P16634705353763736178

`filter[A392499(n+1), A079978(#)]`
-/

namespace A392495.P16634705353763736178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A392495.P16634705353763736178

/-! ## A392495.P6854971160703909437

`filter[A392499(n+1), A173857(#)]`
-/

namespace A392495.P6854971160703909437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A392495.P6854971160703909437

/-! ## A392495.P14326523288433833712

`filter[A392499(n+1), A329680(#)]`
-/

namespace A392495.P14326523288433833712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A392495.P14326523288433833712

/-! ## A392495.P4843831438880254945

`∩[A008486(n), A392499(n+1)]`
-/

namespace A392495.P4843831438880254945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392495.P4843831438880254945

/-! ## A392495.P1625080498678999010

`∩[A008585(n), A392499(n+1)]`
-/

namespace A392495.P1625080498678999010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392495.P1625080498678999010

/-!
# A392496: 2-rigid numbers. p-rigid numbers where p is prime are defined in A392499.

The programs for A392496, there is no canonical definition to state claims against.
-/

/-! ## A392496.P18424783390683319939

`∪[A002975(n+1), A339343(n+1)]`
-/

namespace A392496.P18424783390683319939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392496.P18424783390683319939

/-! ## A392496.P15719805276715295769

`∪[A006037(n+1), A339343(n+1)]`
-/

namespace A392496.P15719805276715295769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392496.P15719805276715295769

/-! ## A392496.P17148827483824419818

`∩[2*n, A392499(n+1)]`
-/

namespace A392496.P17148827483824419818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392496.P17148827483824419818

/-! ## A392496.P14297667235278389880

`filter[A392499(n+1), A059841(#)]`
-/

namespace A392496.P14297667235278389880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A392496.P14297667235278389880

/-! ## A392496.P12646399332243162425

`filter[A392499(n+1), A120325(#)]`
-/

namespace A392496.P12646399332243162425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A392496.P12646399332243162425

/-!
# A392498: Numbers k > 1 with the smallest prime divisor p, where the sum of divisors d in the range 1 < d < k/p is less than k/p.

The programs for A392498, there is no canonical definition to state claims against.
-/

/-! ## A392498.P2117688541028660180

`∩[A180366(n+1), A357875(n+1)]`
-/

namespace A392498.P2117688541028660180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392498.P2117688541028660180

/-! ## A392498.P2420465628290090322

`A180366(A077342(n+1))`
-/

namespace A392498.P2420465628290090322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180366 (A077342 (n + 1)).toNat

end

end A392498.P2420465628290090322

/-! ## A392498.P18107864291510368762

`A180366(A242474(n+1))`
-/

namespace A392498.P18107864291510368762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180366 (A242474 (n + 1)).toNat

end

end A392498.P18107864291510368762

/-! ## A392498.P14041034395931435030

`A180366(A351374(n+1))`
-/

namespace A392498.P14041034395931435030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180366 (A351374 (n + 1)).toNat

end

end A392498.P14041034395931435030

/-!
# A392499: Numbers k > 1 with the smallest prime divisor p, where the sum of divisors d in the range 1 < d < k/p is at least k/p, but no subset of these divisors sums to k/p.

The programs for A392499, there is no canonical definition to state claims against.
-/

/-! ## A392499.P6031441431207495957

`∩[A119425(n+1), A376600(n+1)]`
-/

namespace A392499.P6031441431207495957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392499.P6031441431207495957

