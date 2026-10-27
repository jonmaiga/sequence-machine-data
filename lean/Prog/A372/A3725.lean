import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A372501: The 2-Zeckendorf array of the second kind, read by upward antidiagonals.

The programs for A372501, there is no canonical definition to state claims against.
-/

/-! ## A372501.P14035013193299986274

`A083047(∑[2*n]%comp[∑[n]])-1`
-/

namespace A372501.P14035013193299986274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

end

end A372501.P14035013193299986274

/-!
# A372502: The number of "Fermi-Dirac primes" (A050376) that divide n.

The programs for A372502, the canonical program `A372502.P4800145136073142797` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372502 has offset 1).

The definition of A372502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A372332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372502.P4800145136073142797

`A064547(n+1)+A372332(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A372502

/-- `A064547(n+1)+A372332(n+1)` -/
def P4800145136073142797.Spec : Prop :=
  ∀ n, P4800145136073142797.a n = A372502 (n + 1)

theorem P4800145136073142797.correct : P4800145136073142797.Spec := by
  intro n
  simp only [A372502, Nat.add_sub_cancel]

end A372502

/-! ## A372502.P6605465218113561379

`log2(A372330(n+1))`
-/

namespace A372502.P6605465218113561379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372330 (n + 1) : ℝ)

end

end A372502.P6605465218113561379

namespace A372502

/-- `log2(A372330(n+1))` -/
def P6605465218113561379.Spec : Prop :=
  ∀ n, P6605465218113561379.a n = (A372502 (n + 1) : ℝ)

end A372502

/-! ## A372502.P2583896735070839591

`∑{d}[n+1, A302777(#)]`
-/

namespace A372502.P2583896735070839591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A302777 d

end

end A372502.P2583896735070839591

namespace A372502

/-- `∑{d}[n+1, A302777(#)]` -/
def P2583896735070839591.Spec : Prop :=
  ∀ n, P2583896735070839591.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P18222611521025313496

`A366073(n+1)+A001221(n+1)`
-/

namespace A372502.P18222611521025313496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366073 (n + 1) + A001221 (n + 1)

end

end A372502.P18222611521025313496

namespace A372502

/-- `A366073(n+1)+A001221(n+1)` -/
def P18222611521025313496.Spec : Prop :=
  ∀ n, P18222611521025313496.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P1926957021665630494

`A372332(n+1)+A023416(A037445(n+1))`
-/

namespace A372502.P1926957021665630494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372332 (n + 1) + A023416 (A037445 (n + 1)).toNat

end

end A372502.P1926957021665630494

namespace A372502

/-- `A372332(n+1)+A023416(A037445(n+1))` -/
def P1926957021665630494.Spec : Prop :=
  ∀ n, P1926957021665630494.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P9373022296273018032

`A064547(n+1)+A023416(A372331(n+1))`
-/

namespace A372502.P9373022296273018032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) + A023416 (A372331 (n + 1)).toNat

end

end A372502.P9373022296273018032

namespace A372502

/-- `A064547(n+1)+A023416(A372331(n+1))` -/
def P9373022296273018032.Spec : Prop :=
  ∀ n, P9373022296273018032.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P17977866741477728798

`A334097(A183063(2*(n+1)))`
-/

namespace A372502.P17977866741477728798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A183063 (2 * (n + 1))).toNat

end

end A372502.P17977866741477728798

namespace A372502

/-- `A334097(A183063(2*(n+1)))` -/
def P17977866741477728798.Spec : Prop :=
  ∀ n, P17977866741477728798.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P12092972034136606822

`A064547(A372329(n+1))`
-/

namespace A372502.P12092972034136606822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A372329 (n + 1)).toNat

end

end A372502.P12092972034136606822

namespace A372502

/-- `A064547(A372329(n+1))` -/
def P12092972034136606822.Spec : Prop :=
  ∀ n, P12092972034136606822.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P9079046722694765875

`A106493(A046523(n+1))`
-/

namespace A372502.P9079046722694765875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106493 (A046523 (n + 1)).toNat

end

end A372502.P9079046722694765875

namespace A372502

/-- `A106493(A046523(n+1))` -/
def P9079046722694765875.Spec : Prop :=
  ∀ n, P9079046722694765875.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P15580547938038577990

`ceil(log2(∑{d}[n+1, tanh(#)]))`
-/

namespace A372502.P15580547938038577990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (∑ d ∈ Nat.divisors (f1 n), Real.tanh (d : ℝ))⌉

end

end A372502.P15580547938038577990

namespace A372502

/-- `ceil(log2(∑{d}[n+1, tanh(#)]))` -/
def P15580547938038577990.Spec : Prop :=
  ∀ n, P15580547938038577990.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P2231480366511774300

`A366073((n+1)²)`
-/

namespace A372502.P2231480366511774300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366073 ((n + 1) ^ 2)

end

end A372502.P2231480366511774300

namespace A372502

/-- `A366073((n+1)²)` -/
def P2231480366511774300.Spec : Prop :=
  ∀ n, P2231480366511774300.a n = A372502 (n + 1)

end A372502

/-! ## A372502.P16681285536029049753

`log2(A372381((n+1)²))`
-/

namespace A372502.P16681285536029049753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372381 ((n + 1) ^ 2) : ℝ)

end

end A372502.P16681285536029049753

namespace A372502

/-- `log2(A372381((n+1)²))` -/
def P16681285536029049753.Spec : Prop :=
  ∀ n, P16681285536029049753.a n = (A372502 (n + 1) : ℝ)

end A372502

/-! ## A372502.P18161470686451697152

`A000523(A036537(A372381((n+1)*(n+1))))`
-/

namespace A372502.P18161470686451697152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A036537 (A372381 ((n + 1) * (n + 1))).toNat).toNat

end

end A372502.P18161470686451697152

namespace A372502

/-- `A000523(A036537(A372381((n+1)*(n+1))))` -/
def P18161470686451697152.Spec : Prop :=
  ∀ n, P18161470686451697152.a n = A372502 (n + 1)

end A372502

/-!
# A372503: The number of prime powers that are noninfinitary divisors of n.

The programs for A372503, the canonical program `A372503.P833081788414773444` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372503 has offset 1).

The definition of A372503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A349258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372503.P833081788414773444

`A001222(n+1)-A349258(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372503

/-- `A001222(n+1)-A349258(n+1)` -/
def P833081788414773444.Spec : Prop :=
  ∀ n, P833081788414773444.a n = A372503 (n + 1)

theorem P833081788414773444.correct : P833081788414773444.Spec := by
  intro n
  simp only [A372503, Nat.add_sub_cancel]

end A372503

/-! ## A372503.P217884352169629546

`∑{e}[n+1, A048967(#)]`
-/

namespace A372503.P217884352169629546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048967 (Nat.factorization (f1 n) p)

end

end A372503.P217884352169629546

namespace A372503

/-- `∑{e}[n+1, A048967(#)]` -/
def P217884352169629546.Spec : Prop :=
  ∀ n, P217884352169629546.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P2131117295195300297

`A056239(A181819(n+1))-A349258(n+1)`
-/

namespace A372503.P2131117295195300297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1)).toNat - A349258 (n + 1)

end

end A372503.P2131117295195300297

namespace A372503

/-- `A056239(A181819(n+1))-A349258(n+1)` -/
def P2131117295195300297.Spec : Prop :=
  ∀ n, P2131117295195300297.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P17396790074071378108

`A022559(n+1)-(A349258(n+1)+A022559(n))`
-/

namespace A372503.P17396790074071378108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - (A349258 (n + 1) + A022559 n)

end

end A372503.P17396790074071378108

namespace A372503

/-- `A022559(n+1)-(A349258(n+1)+A022559(n))` -/
def P17396790074071378108.Spec : Prop :=
  ∀ n, P17396790074071378108.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P1425646659861870380

`A000005(n+1)-(A349258(n+1)+A081707(n+1))`
-/

namespace A372503.P1425646659861870380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A349258 (n + 1) + A081707 (n + 1))

end

end A372503.P1425646659861870380

namespace A372503

/-- `A000005(n+1)-(A349258(n+1)+A081707(n+1))` -/
def P1425646659861870380.Spec : Prop :=
  ∀ n, P1425646659861870380.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P1476679284289465661

`A001222(n+1)-∑{e}[n+1, A001222(#^#+1)]`
-/

namespace A372503.P1476679284289465661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A001222 (Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p + 1)

end

end A372503.P1476679284289465661

namespace A372503

/-- `A001222(n+1)-∑{e}[n+1, A001222(#^#+1)]` -/
def P1476679284289465661.Spec : Prop :=
  ∀ n, P1476679284289465661.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P5946942017892877248

`and(3, A002808(A112622(n+1)))`
-/

namespace A372503.P5946942017892877248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A002808 (A112622 (n + 1)).toNat)

end

end A372503.P5946942017892877248

namespace A372503

/-- `and(3, A002808(A112622(n+1)))` -/
def P5946942017892877248.Spec : Prop :=
  ∀ n, P5946942017892877248.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P8673451044598627087

`A279210(A000005(n+1)^∏{e}[n+1, #])`
-/

namespace A372503.P8673451044598627087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 (A000005 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A372503.P8673451044598627087

namespace A372503

/-- `A279210(A000005(n+1)^∏{e}[n+1, #])` -/
def P8673451044598627087.Spec : Prop :=
  ∀ n, P8673451044598627087.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P6152686361681933274

`A001222(A372328(n+1))%A372281(n+1)`
-/

namespace A372503.P6152686361681933274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A372328 (n + 1)).toNat) (A372281 (n + 1))

end

end A372503.P6152686361681933274

namespace A372503

/-- `A001222(A372328(n+1))%A372281(n+1)` -/
def P6152686361681933274.Spec : Prop :=
  ∀ n, P6152686361681933274.a n = A372503 (n + 1)

end A372503

/-! ## A372503.P15721998876840788459

`A001222(A372328(n+1)%A372308(n+5))`
-/

namespace A372503.P15721998876840788459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A372328 (n + 1)) (A372308 (n + 5))).toNat

end

end A372503.P15721998876840788459

namespace A372503

/-- `A001222(A372328(n+1)%A372308(n+5))` -/
def P15721998876840788459.Spec : Prop :=
  ∀ n, P15721998876840788459.a n = A372503 (n + 1)

end A372503

/-!
# A372504: Multiplicative with a(p^e) = e if e is a power of 2, and 0 otherwise.

The programs for A372504, the canonical program `A372504.P18324101778545976838` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372504 has offset 1).

The definition of A372504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355823, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372504.P18324101778545976838

`A355823(n+1)*A005361(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372504

/-- `A355823(n+1)*A005361(n+1)` -/
def P18324101778545976838.Spec : Prop :=
  ∀ n, P18324101778545976838.a n = A372504 (n + 1)

theorem P18324101778545976838.correct : P18324101778545976838.Spec := by
  intro n
  simp only [A372504, Nat.add_sub_cancel]

end A372504

/-! ## A372504.P3598491157771426876

`A048298(∏{e}[n+1, #])`
-/

namespace A372504.P3598491157771426876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A372504.P3598491157771426876

namespace A372504

/-- `A048298(∏{e}[n+1, #])` -/
def P3598491157771426876.Spec : Prop :=
  ∀ n, P3598491157771426876.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P17685601916185111470

`A048298(A005361(n+1))`
-/

namespace A372504.P17685601916185111470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A005361 (n + 1)).toNat

end

end A372504.P17685601916185111470

namespace A372504

/-- `A048298(A005361(n+1))` -/
def P17685601916185111470.Spec : Prop :=
  ∀ n, P17685601916185111470.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P12753126784443016807

`A372470(A003557(n+1))`
-/

namespace A372504.P12753126784443016807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372470 (A003557 (n + 1)).toNat

end

end A372504.P12753126784443016807

namespace A372504

/-- `A372470(A003557(n+1))` -/
def P12753126784443016807.Spec : Prop :=
  ∀ n, P12753126784443016807.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P15850601864068869016

`A355823(n+1)*A368104(n+1)`
-/

namespace A372504.P15850601864068869016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1) * A368104 (n + 1)

end

end A372504.P15850601864068869016

namespace A372504

/-- `A355823(n+1)*A368104(n+1)` -/
def P15850601864068869016.Spec : Prop :=
  ∀ n, P15850601864068869016.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P11780794343652995684

`A355823(n+1)*A370077(n+1)`
-/

namespace A372504.P11780794343652995684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1) * A370077 (n + 1)

end

end A372504.P11780794343652995684

namespace A372504

/-- `A355823(n+1)*A370077(n+1)` -/
def P11780794343652995684.Spec : Prop :=
  ∀ n, P11780794343652995684.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P5017038716484765053

`A355823(n+1)*A370080(n+1)`
-/

namespace A372504.P5017038716484765053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1) * A370080 (n + 1)

end

end A372504.P5017038716484765053

namespace A372504

/-- `A355823(n+1)*A370080(n+1)` -/
def P5017038716484765053.Spec : Prop :=
  ∀ n, P5017038716484765053.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P797176512743841909

`A355823(n+1)*A372331(n+1)`
-/

namespace A372504.P797176512743841909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355823 (n + 1) * A372331 (n + 1)

end

end A372504.P797176512743841909

namespace A372504

/-- `A355823(n+1)*A372331(n+1)` -/
def P797176512743841909.Spec : Prop :=
  ∀ n, P797176512743841909.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P16907751840332974441

`and(A050377(n+1), A370077(n+1))`
-/

namespace A372504.P16907751840332974441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050377 (n + 1)) (A370077 (n + 1))

end

end A372504.P16907751840332974441

namespace A372504

/-- `and(A050377(n+1), A370077(n+1))` -/
def P16907751840332974441.Spec : Prop :=
  ∀ n, P16907751840332974441.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P2091155551011447543

`∑{d}[n+1, A008683(#)*A372330((n+1)/#)]`
-/

namespace A372504.P2091155551011447543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A372330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372504.P2091155551011447543

namespace A372504

/-- `∑{d}[n+1, A008683(#)*A372330((n+1)/#)]` -/
def P2091155551011447543.Spec : Prop :=
  ∀ n, P2091155551011447543.a n = A372504 (n + 1)

end A372504

/-! ## A372504.P559538038978625414

`A005361(n+1)*A355689(A005361(n+1)²)`
-/

namespace A372504.P559538038978625414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A355689 (A005361 (n + 1) ^ 2).toNat

end

end A372504.P559538038978625414

namespace A372504

/-- `A005361(n+1)*A355689(A005361(n+1)²)` -/
def P559538038978625414.Spec : Prop :=
  ∀ n, P559538038978625414.a n = A372504 (n + 1)

end A372504

/-!
# A372505: a(n) = log_2(A368473(n)).

The programs for A372505, the canonical program `A372505.P10493546541746876935` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372505 has offset 1).

The definition of A372505 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368473, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372505.P10493546541746876935

`log2(A368473(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372505

/-- `log2(A368473(n+1))` -/
def P10493546541746876935.Spec : Prop :=
  ∀ n, P10493546541746876935.a n = (A372505 (n + 1) : ℝ)

end A372505

/-! ## A372505.P6532713557524760167

`log2(A005361(A138302(n+1)))`
-/

namespace A372505.P6532713557524760167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A005361 (A138302 (n + 1)).toNat : ℝ)

end

end A372505.P6532713557524760167

namespace A372505

/-- `log2(A005361(A138302(n+1)))` -/
def P6532713557524760167.Spec : Prop :=
  ∀ n, P6532713557524760167.a n = (A372505 (n + 1) : ℝ)

end A372505

/-! ## A372505.P14083274349347507704

`A051904(A368473(2*n+1-n))`
-/

namespace A372505.P14083274349347507704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A368473 (2 * n + 1 - n)).toNat

end

end A372505.P14083274349347507704

namespace A372505

/-- `A051904(A368473(2*n+1-n))` -/
def P14083274349347507704.Spec : Prop :=
  ∀ n, P14083274349347507704.a n = A372505 (n + 1)

end A372505

/-! ## A372505.P14806821587197940884

`A370078(A138302(n+1))`
-/

namespace A372505.P14806821587197940884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370078 (A138302 (n + 1)).toNat

end

end A372505.P14806821587197940884

namespace A372505

/-- `A370078(A138302(n+1))` -/
def P14806821587197940884.Spec : Prop :=
  ∀ n, P14806821587197940884.a n = A372505 (n + 1)

end A372505

/-! ## A372505.P17083691841067474619

`A064547(A353899(A368473(n+1))²)`
-/

namespace A372505.P17083691841067474619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A353899 (A368473 (n + 1)).toNat ^ 2).toNat

end

end A372505.P17083691841067474619

namespace A372505

/-- `A064547(A353899(A368473(n+1))²)` -/
def P17083691841067474619.Spec : Prop :=
  ∀ n, P17083691841067474619.a n = A372505 (n + 1)

end A372505

/-! ## A372505.P6738173461830503694

`A367169(A355936(A138302(n+1)²))`
-/

namespace A372505.P6738173461830503694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A355936 (A138302 (n + 1) ^ 2).toNat).toNat

end

end A372505.P6738173461830503694

namespace A372505

/-- `A367169(A355936(A138302(n+1)²))` -/
def P6738173461830503694.Spec : Prop :=
  ∀ n, P6738173461830503694.a n = A372505 (n + 1)

end A372505

/-! ## A372505.P15825105115992293009

`A369933(A085629(A368473(n+1)²))`
-/

namespace A372505.P15825105115992293009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369933 (A085629 (A368473 (n + 1) ^ 2).toNat).toNat

end

end A372505.P15825105115992293009

namespace A372505

/-- `A369933(A085629(A368473(n+1)²))` -/
def P15825105115992293009.Spec : Prop :=
  ∀ n, P15825105115992293009.a n = A372505 (n + 1)

end A372505

/-! ## A372505.P16816613574392347558

`A124010(A363918(A368473(n+1)²))`
-/

namespace A372505.P16816613574392347558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A363918 (A368473 (n + 1) ^ 2).toNat).toNat

end

end A372505.P16816613574392347558

namespace A372505

/-- `A124010(A363918(A368473(n+1)²))` -/
def P16816613574392347558.Spec : Prop :=
  ∀ n, P16816613574392347558.a n = A372505 (n + 1)

end A372505

/-! ## A372505.P17359671994631190768

`A366123(A354180(n+1))`
-/

namespace A372505.P17359671994631190768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 (A354180 (n + 1)).toNat

end

end A372505.P17359671994631190768

namespace A372505

/-- `A366123(A354180(n+1))` -/
def P17359671994631190768.Spec : Prop :=
  ∀ n, P17359671994631190768.a n = A372505 (n + 1)

end A372505

/-!
# A372506: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-2*x) )^n.

The programs for A372506, there is no canonical definition to state claims against.
-/

/-! ## A372506.P4737757675278959911

`(A348618(n)+A091527(n))/2`
-/

namespace A372506.P4737757675278959911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348618 n + A091527 n : ℚ) / 2

end

end A372506.P4737757675278959911

/-! ## A372506.P430766123028663611

`A110441(A004273(n²))`
-/

namespace A372506.P430766123028663611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (A004273 (n ^ 2)).toNat

end

end A372506.P430766123028663611

/-! ## A372506.P3555027156900372792

`A206306(∑[4*n])`
-/

namespace A372506.P3555027156900372792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372506.P3555027156900372792

/-! ## A372506.P4950086485572985182

`A209172(A276819(n))`
-/

namespace A372506.P4950086485572985182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209172 (A276819 n).toNat

end

end A372506.P4950086485572985182

/-!
# A372507: a(n) is the smallest number k such that prime(k) is expressible as the sum of (at least two) consecutive primes in n ways.

The programs for A372507, there is no canonical definition to state claims against.
-/

/-! ## A372507.P8951556629885050017

`A000720(A067381(n+1))`
-/

namespace A372507.P8951556629885050017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067381 (n + 1)).toNat

end

end A372507.P8951556629885050017

/-!
# A372509: Numbers that can be written as a product of double factorials of odd numbers.

The programs for A372509, there is no canonical definition to state claims against.
-/

/-! ## A372509.P16107028855011859509

`filter[A147516(n+1), A086299(#)]`
-/

namespace A372509.P16107028855011859509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A372509.P16107028855011859509

/-! ## A372509.P14046650397829509949

`filter[A147516(n+1), A145568(#)]`
-/

namespace A372509.P14046650397829509949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A372509.P14046650397829509949

/-!
# A372510: Number of ordered factorizations of 2*n-1 into twin primes.

The programs for A372510, there is no canonical definition to state claims against.
-/

/-! ## A372510.P11866124603981825063

`A008480(2*n+1)-A086075(A238858(2*n+1))`
-/

namespace A372510.P11866124603981825063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (2 * n + 1) - A086075 (A238858 (2 * n + 1)).toNat

end

end A372510.P11866124603981825063

/-! ## A372510.P11000961795226536824

`gcd(A284203(2*n+1), A386575(A000203(2*(n+2))))`
-/

namespace A372510.P11000961795226536824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284203 (2 * n + 1)) (A386575 (A000203 (2 * (n + 2))).toNat)

end

end A372510.P11000961795226536824

/-! ## A372510.P16571023771492975835

`A344606(A047713(n+1)%A046034(n+1))`
-/

namespace A372510.P16571023771492975835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (Int.tmod (A047713 (n + 1)) (A046034 (n + 1))).toNat

end

end A372510.P16571023771492975835

/-! ## A372510.P7943919286346032029

`A285194(A180906(2*(n+1))*A250214(n+1))`
-/

namespace A372510.P7943919286346032029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285194 (A180906 (2 * (n + 1)) * A250214 (n + 1)).toNat

end

end A372510.P7943919286346032029

/-!
# A372511: Number of solutions to x^2 + y^2 <= n, where x, y are positive odd integers.

The programs for A372511, the canonical program `A372511.P6889518927263151039` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372511 has offset 0).

The definition of A372511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372511.P6889518927263151039

`∑[A290081(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372511

/-- `∑[A290081(n)]` -/
def P6889518927263151039.Spec : Prop :=
  ∀ n, P6889518927263151039.a n = A372511 n

theorem P6889518927263151039.correct : P6889518927263151039.Spec := by
  intro n
  simp only [A372511]

end A372511

/-! ## A372511.P10984223654676009645

`∑[A063725(n*and(2, n)!-n)]`
-/

namespace A372511.P10984223654676009645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n * Nat.factorial (Nat.land 2 n) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372511.P10984223654676009645

namespace A372511

/-- `∑[A063725(n*and(2, n)!-n)]` -/
def P10984223654676009645.Spec : Prop :=
  ∀ n, P10984223654676009645.a n = A372511 n

end A372511

/-!
# A372512: Number of solutions to x^2 + y^2 + z^2 <= n, where x, y, z are positive odd integers.

The programs for A372512, there is no canonical definition to state claims against.
-/

/-! ## A372512.P8695222985677761535

`∑[A008437(n)]`
-/

namespace A372512.P8695222985677761535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372512.P8695222985677761535

/-! ## A372512.P765104937255476965

`∑[A085121(n)/8]`
-/

namespace A372512.P765104937255476965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085121 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372512.P765104937255476965

/-! ## A372512.P14496898104474986209

`∑[A011765(n+1)*A063691(n)]`
-/

namespace A372512.P14496898104474986209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (n + 1) * A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372512.P14496898104474986209

/-! ## A372512.P16811862379512013128

`∑[char[A047556(3*n+1)]*A002102(n)]`
-/

namespace A372512.P16811862379512013128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (3 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372512.P16811862379512013128

/-! ## A372512.P15117274028276389133

`∑[A000007(A002102(2*n+1))*A002102(n)]`
-/

namespace A372512.P15117274028276389133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002102 (2 * n + 1)).toNat * A002102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372512.P15117274028276389133

/-! ## A372512.P555542346093039625

`A026730(∑[A004013(n)*A007877(n)])`
-/

namespace A372512.P555542346093039625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n * A007877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372512.P555542346093039625

/-! ## A372512.P4542660380516663765

`A026730(∑[A004013(n)*A021913(n)])`
-/

namespace A372512.P4542660380516663765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n * A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372512.P4542660380516663765

/-!
# A372513: Sum_{n>=0} a(n) * x^n / (n!)^2 = -log(BesselJ(0,2*sqrt(2*x))) / 2.

The programs for A372513, there is no canonical definition to state claims against.
-/

/-! ## A372513.P3135463603549422214

`2^(n-1)*A002190(n)`
-/

namespace A372513.P3135463603549422214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002190 n : ℚ)

end

end A372513.P3135463603549422214

/-! ## A372513.P5966296536777937233

`A002190(n)*A011782(n)`
-/

namespace A372513.P5966296536777937233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002190 n * A011782 n

end

end A372513.P5966296536777937233

/-! ## A372513.P17710695709792418763

`A002190(n)*A053644(A027306(n))`
-/

namespace A372513.P17710695709792418763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002190 n * A053644 (A027306 n).toNat

end

end A372513.P17710695709792418763

/-! ## A372513.P4520242716539390459

`A002190(n)*A004526(A000079(n))`
-/

namespace A372513.P4520242716539390459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002190 n * A004526 (A000079 n).toNat

end

end A372513.P4520242716539390459

/-! ## A372513.P211667100213862504

`A002190(n)*A032742(A060546(2*n))`
-/

namespace A372513.P211667100213862504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002190 n * A032742 (A060546 (2 * n)).toNat

end

end A372513.P211667100213862504

/-!
# A372514: Index k such that A280864(k) = A019565(n) or 0 if A019565(n) does not appear in A280864.

The programs for A372514, there is no canonical definition to state claims against.
-/

/-! ## A372514.P3200285004615197657

`A280741(A019565(n))`
-/

namespace A372514.P3200285004615197657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A019565 n).toNat

end

end A372514.P3200285004615197657

/-! ## A372514.P13946488158506649134

`A372697(n)+A372064(A019565(n))`
-/

namespace A372514.P13946488158506649134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372697 n + A372064 (A019565 n).toNat

end

end A372514.P13946488158506649134

/-! ## A372514.P14633340358874378990

`A372697(A055648(n))`
-/

namespace A372514.P14633340358874378990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372697 (A055648 n).toNat

end

end A372514.P14633340358874378990

/-! ## A372514.P11006311269078092088

`A372697(A004863(n+1))`
-/

namespace A372514.P11006311269078092088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372697 (A004863 (n + 1)).toNat

end

end A372514.P11006311269078092088

/-! ## A372514.P186920530561099899

`A372697(A004874(n+1))`
-/

namespace A372514.P186920530561099899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372697 (A004874 (n + 1)).toNat

end

end A372514.P186920530561099899

/-!
# A372515: Irregular triangle read by rows where row n lists the positions of zeros in the reversed binary expansion of n.

The programs for A372515, there is no canonical definition to state claims against.
-/

/-! ## A372515.P10140181841050056058

`filter[A368494(n+1), A022932(#)]`
-/

namespace A372515.P10140181841050056058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A372515.P10140181841050056058

/-! ## A372515.P4642431779418308628

`filter[A368494(n+1), A075897(#)]`
-/

namespace A372515.P4642431779418308628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A372515.P4642431779418308628

/-! ## A372515.P17913677297769973499

`filter[A368494(n+1), A079421(#)]`
-/

namespace A372515.P17913677297769973499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A372515.P17913677297769973499

/-! ## A372515.P12127380930714780899

`filter[A368494(n+1), A097325(#)]`
-/

namespace A372515.P12127380930714780899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A372515.P12127380930714780899

/-! ## A372515.P1981199163461133852

`filter[A368494(n+1), A109720(#)]`
-/

namespace A372515.P1981199163461133852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A372515.P1981199163461133852

/-! ## A372515.P12258972143242737218

`filter[A368494(n+1), A112713(#)]`
-/

namespace A372515.P12258972143242737218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A372515.P12258972143242737218

/-! ## A372515.P11895425136405894362

`filter[A368494(n+1), A135947(#)]`
-/

namespace A372515.P11895425136405894362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A372515.P11895425136405894362

/-! ## A372515.P2193730112203605013

`filter[A368494(n+1), A145568(#)]`
-/

namespace A372515.P2193730112203605013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A372515.P2193730112203605013

/-! ## A372515.P1133433633722490985

`filter[A368494(n+1), A167393(#)]`
-/

namespace A372515.P1133433633722490985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167393 (f1 j).toNat = 1) n)

end

end A372515.P1133433633722490985

/-! ## A372515.P3699860639634054841

`filter[A368494(n+1), A168046(#)]`
-/

namespace A372515.P3699860639634054841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A372515.P3699860639634054841

/-!
# A372516: Number of ones minus number of zeros in the binary expansion of the n-th prime number.

The programs for A372516, the canonical program `A372516.P8084116944890719171` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372516 has offset 1).

The definition of A372516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372516.P8084116944890719171

`A014499(n+1)-A035103(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372516

/-- `A014499(n+1)-A035103(n+1)` -/
def P8084116944890719171.Spec : Prop :=
  ∀ n, P8084116944890719171.a n = A372516 (n + 1)

theorem P8084116944890719171.correct : P8084116944890719171.Spec := by
  intro n
  simp only [A372516, Nat.add_sub_cancel]

end A372516

/-! ## A372516.P4040830995980981172

`A145037(A000040(n+1))`
-/

namespace A372516.P4040830995980981172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A000040 (n + 1)).toNat

end

end A372516.P4040830995980981172

namespace A372516

/-- `A145037(A000040(n+1))` -/
def P4040830995980981172.Spec : Prop :=
  ∀ n, P4040830995980981172.a n = A372516 (n + 1)

end A372516

/-! ## A372516.P8731388622611877904

`A177959(n+1)-A080085(n+1)`
-/

namespace A372516.P8731388622611877904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177959 (n + 1) - A080085 (n + 1)

end

end A372516.P8731388622611877904

namespace A372516

/-- `A177959(n+1)-A080085(n+1)` -/
def P8731388622611877904.Spec : Prop :=
  ∀ n, P8731388622611877904.a n = A372516 (n + 1)

theorem P8731388622611877904.correct : P8731388622611877904.Spec := by
  intro n
  simp only [A372516, Nat.add_sub_cancel, A372516.P8731388622611877904.a, A372516.P8084116944890719171.a, A014499, A014499.P9770580101482900462.a, A035103, A035103.P1324719609663575418.a, A080085, A080085.P4216384539738297619.a, A177959, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A035100, A035100.P16711503485959756516.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372516

/-! ## A372516.P7135682263119480779

`2*A014499(n+1)-A035100(n+1)`
-/

namespace A372516.P7135682263119480779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014499 (n + 1) - A035100 (n + 1)

end

end A372516.P7135682263119480779

namespace A372516

/-- `2*A014499(n+1)-A035100(n+1)` -/
def P7135682263119480779.Spec : Prop :=
  ∀ n, P7135682263119480779.a n = A372516 (n + 1)

theorem P7135682263119480779.correct : P7135682263119480779.Spec := by
  intro n
  simp only [A372516, Nat.add_sub_cancel, A372516.P7135682263119480779.a, A372516.P8084116944890719171.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A035103, A035103.P1324719609663575418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372516

/-! ## A372516.P7427664199421411024

`A035100(n+1)-2*A035103(n+1)`
-/

namespace A372516.P7427664199421411024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - 2 * A035103 (n + 1)

end

end A372516.P7427664199421411024

namespace A372516

/-- `A035100(n+1)-2*A035103(n+1)` -/
def P7427664199421411024.Spec : Prop :=
  ∀ n, P7427664199421411024.a n = A372516 (n + 1)

theorem P7427664199421411024.correct : P7427664199421411024.Spec := by
  intro n
  simp only [A372516, Nat.add_sub_cancel, A372516.P7427664199421411024.a, A372516.P8084116944890719171.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A035103, A035103.P1324719609663575418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372516

/-! ## A372516.P7272429229908748259

`A014499(n+1)+A177959(n+1)-A000040(n+1)`
-/

namespace A372516.P7272429229908748259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) + (A177959 (n + 1) - A000040 (n + 1))

end

end A372516.P7272429229908748259

namespace A372516

/-- `A014499(n+1)+A177959(n+1)-A000040(n+1)` -/
def P7272429229908748259.Spec : Prop :=
  ∀ n, P7272429229908748259.a n = A372516 (n + 1)

theorem P7272429229908748259.correct : P7272429229908748259.Spec := by
  intro n
  simp only [A372516, Nat.add_sub_cancel, A372516.P7272429229908748259.a, A372516.P8084116944890719171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A035103, A035103.P1324719609663575418.a, A177959, A177959.P3892879503494814762.a, A000120, A000120.P2816527436160941581.a, A035100, A035100.P16711503485959756516.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372516

/-! ## A372516.P10045893860484080873

`A124754(A143292(n+1))`
-/

namespace A372516.P10045893860484080873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A143292 (n + 1)).toNat

end

end A372516.P10045893860484080873

namespace A372516

/-- `A124754(A143292(n+1))` -/
def P10045893860484080873.Spec : Prop :=
  ∀ n, P10045893860484080873.a n = A372516 (n + 1)

end A372516

/-! ## A372516.P18254003471604515670

`A145037(A161847(n+1))`
-/

namespace A372516.P18254003471604515670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A161847 (n + 1)).toNat

end

end A372516.P18254003471604515670

namespace A372516

/-- `A145037(A161847(n+1))` -/
def P18254003471604515670.Spec : Prop :=
  ∀ n, P18254003471604515670.a n = A372516 (n + 1)

end A372516

/-! ## A372516.P13277821378196402370

`A145037(A008578(n+2))`
-/

namespace A372516.P13277821378196402370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A008578 (n + 2)).toNat

end

end A372516.P13277821378196402370

namespace A372516

/-- `A145037(A008578(n+2))` -/
def P13277821378196402370.Spec : Prop :=
  ∀ n, P13277821378196402370.a n = A372516 (n + 1)

end A372516

/-! ## A372516.P8732610847695229623

`A145037(A182986(n+2))`
-/

namespace A372516.P8732610847695229623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A182986 (n + 2)).toNat

end

end A372516.P8732610847695229623

namespace A372516

/-- `A145037(A182986(n+2))` -/
def P8732610847695229623.Spec : Prop :=
  ∀ n, P8732610847695229623.a n = A372516 (n + 1)

end A372516

/-! ## A372516.P15689806626511649625

`A014499(n+1)-A023416(A000040(n+1))`
-/

namespace A372516.P15689806626511649625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) - A023416 (A000040 (n + 1)).toNat

end

end A372516.P15689806626511649625

namespace A372516

/-- `A014499(n+1)-A023416(A000040(n+1))` -/
def P15689806626511649625.Spec : Prop :=
  ∀ n, P15689806626511649625.a n = A372516 (n + 1)

end A372516

/-! ## A372516.P7077707304716584280

`A274575(A100484(n+1))`
-/

namespace A372516.P7077707304716584280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 (A100484 (n + 1)).toNat

end

end A372516.P7077707304716584280

namespace A372516

/-- `A274575(A100484(n+1))` -/
def P7077707304716584280.Spec : Prop :=
  ∀ n, P7077707304716584280.a n = A372516 (n + 1)

end A372516

/-! ## A372516.P4376336351621817557

`A274575(A001747(n+2))`
-/

namespace A372516.P4376336351621817557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 (A001747 (n + 2)).toNat

end

end A372516.P4376336351621817557

namespace A372516

/-- `A274575(A001747(n+2))` -/
def P4376336351621817557.Spec : Prop :=
  ∀ n, P4376336351621817557.a n = A372516 (n + 1)

end A372516

/-!
# A372517: Least k such that the k-th prime number has exactly n ones in its binary expansion.

The programs for A372517, there is no canonical definition to state claims against.
-/

/-! ## A372517.P13100936290784279735

`A000720(A061712(n+1))`
-/

namespace A372517.P13100936290784279735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061712 (n + 1)).toNat

end

end A372517.P13100936290784279735

/-! ## A372517.P556406092882833311

`A061395(or(2, A061712(n+1)))`
-/

namespace A372517.P556406092882833311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 2 (A061712 (n + 1))).toNat

end

end A372517.P556406092882833311

/-! ## A372517.P10897503059176665310

`∑{d}[A061712(n+1), A061395(#)]`
-/

namespace A372517.P10897503059176665310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A372517.P10897503059176665310

/-! ## A372517.P613731638616540553

`A372686(A014499(A372686(n+1)))`
-/

namespace A372517.P613731638616540553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372686 (A014499 (A372686 (n + 1)).toNat).toNat

end

end A372517.P613731638616540553

/-!
# A372519: Nonnegative numbers k such that 0 = Sum_{j=0..k} K(k, j) where K(k, j) is the Kronecker symbol (k / j).

The programs for A372519, there is no canonical definition to state claims against.
-/

/-! ## A372519.P5237433771451571549

`eq[0, A071961(n)]`
-/

namespace A372519.P5237433771451571549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372519.P5237433771451571549

/-! ## A372519.P253785109980000078

`eq[A096396(n), A096397(n)]`
-/

namespace A372519.P253785109980000078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372519.P253785109980000078

/-! ## A372519.P11004492587101352540

`lt[A000290(abs(A071961(n))), 1]`
-/

namespace A372519.P11004492587101352540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 |A071961 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372519.P11004492587101352540

/-! ## A372519.P16860084449398891569

`lt[A182807(abs(A071961(n))), 1]`
-/

namespace A372519.P16860084449398891569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182807 |A071961 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372519.P16860084449398891569

/-! ## A372519.P6573677025651739623

`lt[A089309(A071961(n)²), 1]`
-/

namespace A372519.P6573677025651739623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A071961 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372519.P6573677025651739623

/-! ## A372519.P17996937096896512703

`lt[abs(A071961(n)), A001285(2*n+1)]`
-/

namespace A372519.P17996937096896512703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071961 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372519.P17996937096896512703

/-!
# A372520: G.f. A(x) satisfies A(A(A(A(A(x))))) = Sum_{k>=1} k * 25^(k-1) * x^k.

The programs for A372520, there is no canonical definition to state claims against.
-/

/-! ## A372520.P13828132535876325629

`A178501(n)/A117175(A074060(2*n+5))`
-/

namespace A372520.P13828132535876325629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178501 n : ℚ) / (A117175 (A074060 (2 * n + 5)).toNat : ℚ)

end

end A372520.P13828132535876325629

/-!
# A372522: G.f. A(x) satisfies A(A(A(A(A(A(x)))))) = Sum_{k>=1} k * 18^(k-1) * x^k.

The programs for A372522, there is no canonical definition to state claims against.
-/

/-! ## A372522.P6617432821139481347

`A002397(n)-A182544(A063834(n))`
-/

namespace A372522.P6617432821139481347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002397 n - A182544 (A063834 n).toNat

end

end A372522.P6617432821139481347

/-!
# A372526: Expansion of g.f. A(x) satisfying A( x*A(x)^2 + A(x)^4 ) = A(x)^3.

The programs for A372526, there is no canonical definition to state claims against.
-/

/-! ## A372526.P13871196906133833152

`A049140(n+1)+A020987(A102866(n))`
-/

namespace A372526.P13871196906133833152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049140 (n + 1) + A020987 (A102866 n).toNat

end

end A372526.P13871196906133833152

/-! ## A372526.P16555376910276481365

`A049140(n+1)+A025426(A109140(n))`
-/

namespace A372526.P16555376910276481365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049140 (n + 1) + A025426 (A109140 n).toNat

end

end A372526.P16555376910276481365

/-! ## A372526.P5946470510420553935

`A049140(n+1)+A000007(A078211(n+1))`
-/

namespace A372526.P5946470510420553935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049140 (n + 1) + A000007 (A078211 (n + 1)).toNat

end

end A372526.P5946470510420553935

/-! ## A372526.P6311280755964581155

`A049140(n+1)+A007814(A119151(n+1))`
-/

namespace A372526.P6311280755964581155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049140 (n + 1) + A007814 (A119151 (n + 1)).toNat

end

end A372526.P6311280755964581155

/-! ## A372526.P17435960146930237795

`A175861(A007048(n+1))+A049140(n+1)`
-/

namespace A372526.P17435960146930237795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175861 (A007048 (n + 1)).toNat + A049140 (n + 1)

end

end A372526.P17435960146930237795

/-!
# A372528: Expansion of g.f. A(x) satisfying A( -x * A( x - x^2 ) ) = -x^2.

The programs for A372528, there is no canonical definition to state claims against.
-/

/-! ## A372528.P2183623512914971132

`A054404(A317997(n+1))+A000108(n)`
-/

namespace A372528.P2183623512914971132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A317997 (n + 1)).toNat + A000108 n

end

end A372528.P2183623512914971132

/-! ## A372528.P1542629332258672747

`A226762(A026616(n))`
-/

namespace A372528.P1542629332258672747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A026616 n).toNat

end

end A372528.P1542629332258672747

/-! ## A372528.P6546482662538594324

`A226762(A047017(n))`
-/

namespace A372528.P6546482662538594324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A047017 n).toNat

end

end A372528.P6546482662538594324

/-!
# A372530: Expansion of g.f. A(x) satisfying A(x)^2 = A( x*A(x)/(1 - A(x)) ).

The programs for A372530, there is no canonical definition to state claims against.
-/

/-! ## A372530.P7847980258920731983

`A049168(n)-A046660(A003080(n))`
-/

namespace A372530.P7847980258920731983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049168 n - A046660 (A003080 n).toNat

end

end A372530.P7847980258920731983

/-! ## A372530.P5174939593021162128

`A049168(n)-A326456(A075852(n))`
-/

namespace A372530.P5174939593021162128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049168 n - A326456 (A075852 n).toNat

end

end A372530.P5174939593021162128

/-! ## A372530.P7335856046776771674

`A004151(A049168(n))`
-/

namespace A372530.P7335856046776771674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A049168 n).toNat

end

end A372530.P7335856046776771674

/-! ## A372530.P15082495169224562078

`A049168(A073790(n))`
-/

namespace A372530.P15082495169224562078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049168 (A073790 n).toNat

end

end A372530.P15082495169224562078

/-! ## A372530.P5629785391104669053

`A049168(A004881(n+1))`
-/

namespace A372530.P5629785391104669053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049168 (A004881 (n + 1)).toNat

end

end A372530.P5629785391104669053

/-!
# A372531: Expansion of g.f. A(x) satisfying A(x)^3 = A( x*A(x)^2/(1 - A(x)) ).

The programs for A372531, there is no canonical definition to state claims against.
-/

/-! ## A372531.P6648022033969538658

`A063030(A002998(n+1))`
-/

namespace A372531.P6648022033969538658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063030 (A002998 (n + 1)).toNat

end

end A372531.P6648022033969538658

/-! ## A372531.P13503047635178228545

`A004183(A063030(n+1))`
-/

namespace A372531.P13503047635178228545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A063030 (n + 1)).toNat

end

end A372531.P13503047635178228545

/-! ## A372531.P14698994065688800681

`A063030(A032555(n+1))`
-/

namespace A372531.P14698994065688800681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063030 (A032555 (n + 1)).toNat

end

end A372531.P14698994065688800681

/-! ## A372531.P4389555835167706384

`A063030(A032557(n+1))`
-/

namespace A372531.P4389555835167706384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063030 (A032557 (n + 1)).toNat

end

end A372531.P4389555835167706384

/-! ## A372531.P12848679884977686285

`A063030(A032559(n+1))`
-/

namespace A372531.P12848679884977686285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063030 (A032559 (n + 1)).toNat

end

end A372531.P12848679884977686285

/-!
# A372534: Expansion of g.f. A(x) satisfying A(x)^2 = A( x*A(x) + 3*x*A(x)^2 ).

The programs for A372534, there is no canonical definition to state claims against.
-/

/-! ## A372534.P4594636332641026190

`A137285(A178778(n))`
-/

namespace A372534.P4594636332641026190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137285 (A178778 n).toNat

end

end A372534.P4594636332641026190

/-!
# A372535: G.f. A(x) satisfies: A(x)^5 = A(x^5) / (1 - 5*x).

The programs for A372535, there is no canonical definition to state claims against.
-/

/-! ## A372535.P1917400060293754141

`A247833(A050385(n+1))`
-/

namespace A372535.P1917400060293754141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A050385 (n + 1)).toNat

end

end A372535.P1917400060293754141

/-! ## A372535.P16657664195276116795

`A187187(A150458(n+1)-1)`
-/

namespace A372535.P16657664195276116795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A150458 (n + 1) - 1).toNat

end

end A372535.P16657664195276116795

/-! ## A372535.P13014219147736645768

`A132840(n)+A005089(A270666(n))`
-/

namespace A372535.P13014219147736645768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132840 n + A005089 (A270666 n).toNat

end

end A372535.P13014219147736645768

/-!
# A372536: Expansion of g.f. A(x) satisfies A( A(x)^2/(1 + 3*A(x))^2 ) = x*A(x).

The programs for A372536, there is no canonical definition to state claims against.
-/

/-! ## A372536.P6472216956531927111

`A264232(n+1)+A194186(A191705(3*n+5))`
-/

namespace A372536.P6472216956531927111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264232 (n + 1) + A194186 (A191705 (3 * n + 5)).toNat

end

end A372536.P6472216956531927111

/-!
# A372538: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is 1.

The programs for A372538, the canonical program `A372538.P6016142959646065391` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372538 has offset 1).

The definition of A372538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372538.P6016142959646065391

`eq[1, A372516(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372538

/-- `eq[1, A372516(n+1)]+1` -/
def P6016142959646065391.Spec : Prop :=
  ∀ n, (P6016142959646065391.a n : ℤ) = A372538 (n + 1)

theorem P6016142959646065391.correct : P6016142959646065391.Spec := by
  intro n
  simp only [A372538, Nat.add_sub_cancel]

end A372538

/-! ## A372538.P2754395102681697270

`A000720(A095073(n+1))`
-/

namespace A372538.P2754395102681697270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095073 (n + 1)).toNat

end

end A372538.P2754395102681697270

namespace A372538

/-- `A000720(A095073(n+1))` -/
def P2754395102681697270.Spec : Prop :=
  ∀ n, P2754395102681697270.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P8681724855839890468

`∑{d}[A095073(n+1), A061395(#)]`
-/

namespace A372538.P8681724855839890468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A372538.P8681724855839890468

namespace A372538

/-- `∑{d}[A095073(n+1), A061395(#)]` -/
def P8681724855839890468.Spec : Prop :=
  ∀ n, P8681724855839890468.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P2426918543996275266

`A061395(A095073(n+1)%A056105(n+4))`
-/

namespace A372538.P2426918543996275266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A095073 (n + 1)) (A056105 (n + 4))).toNat

end

end A372538.P2426918543996275266

namespace A372538

/-- `A061395(A095073(n+1)%A056105(n+4))` -/
def P2426918543996275266.Spec : Prop :=
  ∀ n, P2426918543996275266.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P14693392395040945776

`A061395(A095073(n+1))%A108632(n+1)`
-/

namespace A372538.P14693392395040945776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A095073 (n + 1)).toNat) (A108632 (n + 1))

end

end A372538.P14693392395040945776

namespace A372538

/-- `A061395(A095073(n+1))%A108632(n+1)` -/
def P14693392395040945776.Spec : Prop :=
  ∀ n, P14693392395040945776.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P3230730940828495773

`A061395(2*A095073(n+1))`
-/

namespace A372538.P3230730940828495773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A095073 (n + 1)).toNat

end

end A372538.P3230730940828495773

namespace A372538

/-- `A061395(2*A095073(n+1))` -/
def P3230730940828495773.Spec : Prop :=
  ∀ n, P3230730940828495773.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P13303704892114695571

`A061395(lcm(2, A095073(n+1)))`
-/

namespace A372538.P13303704892114695571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A095073 (n + 1)))

end

end A372538.P13303704892114695571

namespace A372538

/-- `A061395(lcm(2, A095073(n+1)))` -/
def P13303704892114695571.Spec : Prop :=
  ∀ n, P13303704892114695571.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P2798110725513606989

`A066328(or(1, A095073(n+1)))`
-/

namespace A372538.P2798110725513606989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.lor 1 (A095073 (n + 1))).toNat

end

end A372538.P2798110725513606989

namespace A372538

/-- `A066328(or(1, A095073(n+1)))` -/
def P2798110725513606989.Spec : Prop :=
  ∀ n, P2798110725513606989.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P11610365416334864229

`record[A055396(A031448(n+2))]`
-/

namespace A372538.P11610365416334864229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A031448 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372538.P11610365416334864229

namespace A372538

/-- `record[A055396(A031448(n+2))]` -/
def P11610365416334864229.Spec : Prop :=
  ∀ n, P11610365416334864229.a n = A372538 (n + 1)

end A372538

/-! ## A372538.P17183777027726704022

`A290103(2*A095073(n+1))`
-/

namespace A372538.P17183777027726704022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A095073 (n + 1)).toNat

end

end A372538.P17183777027726704022

namespace A372538

/-- `A290103(2*A095073(n+1))` -/
def P17183777027726704022.Spec : Prop :=
  ∀ n, P17183777027726704022.a n = A372538 (n + 1)

end A372538

/-!
# A372539: Numbers k such that the number of ones minus the number of zeros in the binary expansion of the k-th prime number is -1.

The programs for A372539, the canonical program `A372539.P15910707666179442912` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372539 has offset 1).

The definition of A372539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1031 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372539.P15910707666179442912

`A000720(A095072(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372539

/-- `A000720(A095072(n+1))` -/
def P15910707666179442912.Spec : Prop :=
  ∀ n, P15910707666179442912.a n = A372539 (n + 1)

theorem P15910707666179442912.correct : P15910707666179442912.Spec := by
  intro n
  simp only [A372539, Nat.add_sub_cancel]

end A372539

/-! ## A372539.P4294895199716315948

`A061395(2*A095072(n+1))`
-/

namespace A372539.P4294895199716315948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A095072 (n + 1)).toNat

end

end A372539.P4294895199716315948

namespace A372539

/-- `A061395(2*A095072(n+1))` -/
def P4294895199716315948.Spec : Prop :=
  ∀ n, P4294895199716315948.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P421368962437741997

`record[A003963(A031444(n+2))]`
-/

namespace A372539.P421368962437741997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A031444 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372539.P421368962437741997

namespace A372539

/-- `record[A003963(A031444(n+2))]` -/
def P421368962437741997.Spec : Prop :=
  ∀ n, P421368962437741997.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P15005936292136775688

`A204892(A095072(n+1)-2)`
-/

namespace A372539.P15005936292136775688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A095072 (n + 1) - 2).toNat

end

end A372539.P15005936292136775688

namespace A372539

/-- `A204892(A095072(n+1)-2)` -/
def P15005936292136775688.Spec : Prop :=
  ∀ n, P15005936292136775688.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P7746051762138543237

`A055396(or(1, A095072(n+1)))`
-/

namespace A372539.P7746051762138543237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A095072 (n + 1))).toNat

end

end A372539.P7746051762138543237

namespace A372539

/-- `A055396(or(1, A095072(n+1)))` -/
def P7746051762138543237.Spec : Prop :=
  ∀ n, P7746051762138543237.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P4765608136601231874

`A290103(or(1, A095072(n+1)))`
-/

namespace A372539.P4765608136601231874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (Int.lor 1 (A095072 (n + 1))).toNat

end

end A372539.P4765608136601231874

namespace A372539

/-- `A290103(or(1, A095072(n+1)))` -/
def P4765608136601231874.Spec : Prop :=
  ∀ n, P4765608136601231874.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P15833564013881361463

`A286469(A095072(n+1))%A025338(n+1)`
-/

namespace A372539.P15833564013881361463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286469 (A095072 (n + 1)).toNat) (A025338 (n + 1))

end

end A372539.P15833564013881361463

namespace A372539

/-- `A286469(A095072(n+1))%A025338(n+1)` -/
def P15833564013881361463.Spec : Prop :=
  ∀ n, P15833564013881361463.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P12895284593041595029

`A286469(A095072(n+1)%A357478(n+1))`
-/

namespace A372539.P12895284593041595029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (Int.tmod (A095072 (n + 1)) (A357478 (n + 1))).toNat

end

end A372539.P12895284593041595029

namespace A372539

/-- `A286469(A095072(n+1)%A357478(n+1))` -/
def P12895284593041595029.Spec : Prop :=
  ∀ n, P12895284593041595029.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P17613951210520660143

`A003963(2*A095072(n+1))`
-/

namespace A372539.P17613951210520660143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A095072 (n + 1)).toNat

end

end A372539.P17613951210520660143

namespace A372539

/-- `A003963(2*A095072(n+1))` -/
def P17613951210520660143.Spec : Prop :=
  ∀ n, P17613951210520660143.a n = A372539 (n + 1)

end A372539

/-! ## A372539.P7031429374688186581

`A290103(2*A095072(n+1))`
-/

namespace A372539.P7031429374688186581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A095072 (n + 1)).toNat

end

end A372539.P7031429374688186581

namespace A372539

/-- `A290103(2*A095072(n+1))` -/
def P7031429374688186581.Spec : Prop :=
  ∀ n, P7031429374688186581.a n = A372539 (n + 1)

end A372539

/-!
# A372540: Least k such that the k-th squarefree number has binary expansion of length n. Index of the smallest squarefree number >= 2^n.

The programs for A372540, there is no canonical definition to state claims against.
-/

/-! ## A372540.P11632885649207724387

`A157928(n)+A143658(n)`
-/

namespace A372540.P11632885649207724387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A143658 n

end

end A372540.P11632885649207724387

/-! ## A372540.P562888429916710680

`A143658(n)+2-A141044(n)`
-/

namespace A372540.P562888429916710680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n + (2 - A141044 n)

end

end A372540.P562888429916710680

/-! ## A372540.P7200246967137925961

`xor(A143658(n), A169585(n))+1`
-/

namespace A372540.P7200246967137925961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143658 n) (A169585 n) + 1

end

end A372540.P7200246967137925961

/-! ## A372540.P4480458862219739932

`A267868(n²+2)+A143658(n)`
-/

namespace A372540.P4480458862219739932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267868 (n ^ 2 + 2) + A143658 n

end

end A372540.P4480458862219739932

/-! ## A372540.P10964322685664009605

`A143658(n)+char[A076118(n+3)]`
-/

namespace A372540.P10964322685664009605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A372540.P10964322685664009605

/-! ## A372540.P1185352837574940972

`A143658(n)+A057427(n²-n)`
-/

namespace A372540.P1185352837574940972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n + A057427 (n ^ 2 - n)

end

end A372540.P1185352837574940972

/-! ## A372540.P10576963492953186949

`A185115(2*(n+1))+A143658(n)`
-/

namespace A372540.P10576963492953186949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (2 * (n + 1)) + A143658 n

end

end A372540.P10576963492953186949

/-! ## A372540.P1858305079765260742

`A266444(A060192(n))+A143658(n)`
-/

namespace A372540.P1858305079765260742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266444 (A060192 n).toNat + A143658 n

end

end A372540.P1858305079765260742

/-! ## A372540.P11359521165255604356

`A143658(n)+abs(A257834(n+1))`
-/

namespace A372540.P11359521165255604356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n + |A257834 (n + 1)|

end

end A372540.P11359521165255604356

/-!
# A372542: Total number of modes in all partitions of n.

The programs for A372542, there is no canonical definition to state claims against.
-/

/-! ## A372542.P16287416246792038078

`A206138(n+3)-A087888(A001037(n))`
-/

namespace A372542.P16287416246792038078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206138 (n + 3) - A087888 (A001037 n).toNat

end

end A372542.P16287416246792038078

/-! ## A372542.P10583749573484375133

`A071295(A148075(n+1))`
-/

namespace A372542.P10583749573484375133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 (A148075 (n + 1)).toNat

end

end A372542.P10583749573484375133

/-! ## A372542.P16132361454281344449

`eq[A016373(n), A194354(n)]`
-/

namespace A372542.P16132361454281344449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372542.P16132361454281344449

/-! ## A372542.P788148227902656040

`eq[A109193(n), A152906(n)]`
-/

namespace A372542.P788148227902656040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372542.P788148227902656040

/-! ## A372542.P8934152917139563384

`eq[A114692(n), A152906(n)]`
-/

namespace A372542.P8934152917139563384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372542.P8934152917139563384

/-!
# A372544: a(n) = floor(n*e) mod 2.

The programs for A372544, the canonical program `A372544.P15471300761998067043` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372544 has offset 1).

The definition of A372544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372544.P17426439021089341762

`floor((n+1)*e)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372544.P17426439021089341762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.exp 1⌋ 2

end

end A372544.P17426439021089341762

namespace A372544

/-- `floor((n+1)*e)%2` -/
def P17426439021089341762.Spec : Prop :=
  ∀ n, P17426439021089341762.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P15471300761998067043

`A000035(A022843(n+1))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A372544

/-- `A000035(A022843(n+1))` -/
def P15471300761998067043.Spec : Prop :=
  ∀ n, P15471300761998067043.a n = A372544 (n + 1)

theorem P15471300761998067043.correct : P15471300761998067043.Spec := by
  intro n
  simp only [A372544, Nat.add_sub_cancel]

end A372544

/-! ## A372544.P2722068635148679804

`and(1, floor(e*(n+1)))`
-/

namespace A372544.P2722068635148679804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.exp 1 * (n + 1 : ℝ)⌋

end

end A372544.P2722068635148679804

namespace A372544

/-- `and(1, floor(e*(n+1)))` -/
def P2722068635148679804.Spec : Prop :=
  ∀ n, P2722068635148679804.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P8589220981045334741

`A059841(A184589(n+1))`
-/

namespace A372544.P8589220981045334741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A184589 (n + 1)).toNat

end

end A372544.P8589220981045334741

namespace A372544

/-- `A059841(A184589(n+1))` -/
def P8589220981045334741.Spec : Prop :=
  ∀ n, P8589220981045334741.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P10334989032371426488

`A059841(A022843(n+1)-1)`
-/

namespace A372544.P10334989032371426488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A022843 (n + 1) - 1).toNat

end

end A372544.P10334989032371426488

namespace A372544

/-- `A059841(A022843(n+1)-1)` -/
def P10334989032371426488.Spec : Prop :=
  ∀ n, P10334989032371426488.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P6616337821832723570

`A059841(A121384(n+1))`
-/

namespace A372544.P6616337821832723570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A121384 (n + 1)).toNat

end

end A372544.P6616337821832723570

namespace A372544

/-- `A059841(A121384(n+1))` -/
def P6616337821832723570.Spec : Prop :=
  ∀ n, P6616337821832723570.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P1740980492928341570

`A059841(1+A022843(n+1))`
-/

namespace A372544.P1740980492928341570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (1 + A022843 (n + 1)).toNat

end

end A372544.P1740980492928341570

namespace A372544

/-- `A059841(1+A022843(n+1))` -/
def P1740980492928341570.Spec : Prop :=
  ∀ n, P1740980492928341570.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P1222401071662570192

`A000035(A121384(n+1)+1)`
-/

namespace A372544.P1222401071662570192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A121384 (n + 1) + 1).toNat

end

end A372544.P1222401071662570192

namespace A372544

/-- `A000035(A121384(n+1)+1)` -/
def P1222401071662570192.Spec : Prop :=
  ∀ n, P1222401071662570192.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P15071172535630062849

`A000034(A022843(n+1))-A000034(2*n)`
-/

namespace A372544.P15071172535630062849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A022843 (n + 1)).toNat - A000034 (2 * n)

end

end A372544.P15071172535630062849

namespace A372544

/-- `A000034(A022843(n+1))-A000034(2*n)` -/
def P15071172535630062849.Spec : Prop :=
  ∀ n, P15071172535630062849.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P6840454913065159309

`A021913(A276853(n+1))`
-/

namespace A372544.P6840454913065159309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A276853 (n + 1)).toNat

end

end A372544.P6840454913065159309

namespace A372544

/-- `A021913(A276853(n+1))` -/
def P6840454913065159309.Spec : Prop :=
  ∀ n, P6840454913065159309.a n = A372544 (n + 1)

end A372544

/-! ## A372544.P18117128839792376993

`A071986(A397617(n+1))`
-/

namespace A372544.P18117128839792376993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (A397617 (n + 1)).toNat

end

end A372544.P18117128839792376993

namespace A372544

/-- `A071986(A397617(n+1))` -/
def P18117128839792376993.Spec : Prop :=
  ∀ n, P18117128839792376993.a n = A372544 (n + 1)

end A372544

/-!
# A372545: Number of permutations of [n] such that the number of cycles of length k is a multiple or a divisor of k for every k.

The programs for A372545, there is no canonical definition to state claims against.
-/

/-! ## A372545.P3004360408406637984

`n!-A326249(A191389(n))`
-/

namespace A372545.P3004360408406637984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A326249 (A191389 n).toNat

end

end A372545.P3004360408406637984

/-! ## A372545.P3027115836979559980

`filter[A060322(2*n+1), A118249(#)]`
-/

namespace A372545.P3027115836979559980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060322 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118249 (f1 j).toNat = 1) n)

end

end A372545.P3027115836979559980

/-! ## A372545.P12709143384018531693

`n!-log2(1/2)-A277086(A184943(n+3))`
-/

namespace A372545.P12709143384018531693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A277086 (A184943 (n + 3)).toNat : ℝ)

end

end A372545.P12709143384018531693

/-!
# A372547: Palindromic Zumkeller numbers in base 10.

The programs for A372547, there is no canonical definition to state claims against.
-/

/-! ## A372547.P11141968713140605734

`∩[A002113(n+1), A083207(n+1)]`
-/

namespace A372547.P11141968713140605734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372547.P11141968713140605734

/-! ## A372547.P14310189948763791388

`∩[A032350(n+1), A083207(n+1)]`
-/

namespace A372547.P14310189948763791388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372547.P14310189948763791388

/-! ## A372547.P16911727612404215834

`∩[A083158(n+1), A083207(n+1)]`
-/

namespace A372547.P16911727612404215834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372547.P16911727612404215834

/-! ## A372547.P13473932552809126376

`filter[A032350(n+1), A179527(#)]`
-/

namespace A372547.P13473932552809126376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A372547.P13473932552809126376

/-! ## A372547.P3855220064391548833

`filter[A032350(n+1), A210455(#)]`
-/

namespace A372547.P3855220064391548833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A372547.P3855220064391548833

/-!
# A372552: Center column of elementary triangular automaton rule 94, starting from a lone 1 cell.

The programs for A372552, there is no canonical definition to state claims against.
-/

/-! ## A372552.P5282076254455310692

`A118553(A008757(n+1))`
-/

namespace A372552.P5282076254455310692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118553 (A008757 (n + 1)).toNat

end

end A372552.P5282076254455310692

/-! ## A372552.P2021551902684670030

`Δ[A188014(3*n+5)]^A222275(3*(n+1))`
-/

namespace A372552.P2021551902684670030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (3 * n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A222275 (3 * (n + 1)) : ℤ)

end

end A372552.P2021551902684670030

/-! ## A372552.P626261208064375130

`A340998(A005349(2*n+3)%A000700(2*(n+2)))`
-/

namespace A372552.P626261208064375130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((Int.tmod (A005349 (2 * n + 3)) (A000700 (2 * (n + 2)))).toNat + 140)

end

end A372552.P626261208064375130

/-! ## A372552.P14478326099466684788

`A079998(∑[∑[a(n-2)+5]])` with `a(0)=15, a(1)=60, a(2)=239, a(3)=4, a(4)=15`
-/

namespace A372552.P14478326099466684788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [15, 60, 239, 4, 15] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372552.P14478326099466684788

/-! ## A372552.P14233554653943067421

`and(A075929(n), A371931(n))`
-/

namespace A372552.P14233554653943067421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075929 n) (A371931 n)

end

end A372552.P14233554653943067421

/-!
# A372553: Center column of elementary triangular automaton rule 61, starting from a lone 1 cell.

The programs for A372553, there is no canonical definition to state claims against.
-/

/-! ## A372553.P14787314739703172833

`A179775(∑[A256692(n+1)+2])`
-/

namespace A372553.P14787314739703172833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256692 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372553.P14787314739703172833

/-! ## A372553.P14736940110139481757

`A189215(A110506(n+1))`
-/

namespace A372553.P14736940110139481757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (A110506 (n + 1)).toNat

end

end A372553.P14736940110139481757

/-! ## A372553.P17181705004471856640

`A277450(A078787(n))`
-/

namespace A372553.P17181705004471856640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277450 (A078787 n).toNat

end

end A372553.P17181705004471856640

/-! ## A372553.P3874433933948366548

`A254990((A221419(n+4)^A254990(n))²)`
-/

namespace A372553.P3874433933948366548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 (SequenceMachineLib.roundAway (((A221419 (n + 4) : ℚ) ^ (A254990 n : ℤ)) ^ 2)).toNat

end

end A372553.P3874433933948366548

/-! ## A372553.P2804804100325576127

`A000035(A019276(n+1)+A003379(n+1))`
-/

namespace A372553.P2804804100325576127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A019276 (n + 1) + A003379 (n + 1)).toNat

end

end A372553.P2804804100325576127

/-!
# A372554: a(n) = A050602(n, 2n+1).

The programs for A372554, there is no canonical definition to state claims against.
-/

/-! ## A372554.P7517660781163738149

`A050602(A051682(n+1))`
-/

namespace A372554.P7517660781163738149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A051682 (n + 1)).toNat

end

end A372554.P7517660781163738149

/-! ## A372554.P3298851263887062893

`A050602(A062708(n+1))`
-/

namespace A372554.P3298851263887062893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A062708 (n + 1)).toNat

end

end A372554.P3298851263887062893

/-! ## A372554.P14048630134860876709

`A050602(A060544(n+1)+n)`
-/

namespace A372554.P14048630134860876709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A060544 (n + 1) + (n : ℤ)).toNat

end

end A372554.P14048630134860876709

/-! ## A372554.P11551931089286372645

`A050602(∑[A008486(3*n)]+n)`
-/

namespace A372554.P11551931089286372645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A372554.P11551931089286372645

/-! ## A372554.P14626697028641205594

`A050602(A161680(3*n+2)+n)`
-/

namespace A372554.P14626697028641205594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A161680 (3 * n + 2) + (n : ℤ)).toNat

end

end A372554.P14626697028641205594

/-! ## A372554.P7835297727068206096

`A050602(A055998(n)+A033951(n))`
-/

namespace A372554.P7835297727068206096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A055998 n + A033951 n).toNat

end

end A372554.P7835297727068206096

/-! ## A372554.P7780720619113306098

`A050602(A027468(n)-A024000(2*n+3))`
-/

namespace A372554.P7780720619113306098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A027468 n - A024000 (2 * n + 3)).toNat

end

end A372554.P7780720619113306098

/-!
# A372555: Least number of Jacobsthal numbers that add up to n.

The programs for A372555, there is no canonical definition to state claims against.
-/

/-! ## A372555.P12447623543712772482

`1+a(n-A001045(A372556(n)))` with `a(0)=0, a(1)=1`
-/

namespace A372555.P12447623543712772482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A001045 (A372556 n).toNat).toNat

end

end A372555.P12447623543712772482

/-! ## A372555.P16281441831667932676

`a(n-A001045(A372556(n)))+1` with `a(0)=0`
-/

namespace A372555.P16281441831667932676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A001045 (A372556 n).toNat).toNat + 1

end

end A372555.P16281441831667932676

/-!
# A372556: a(n) = largest number k <= A130249(n) for which A372555(n-A001045(k)) = A372555(n)-1, where A372555(n) is the least number of Jacobsthal numbers that add up to n.

The programs for A372556, there is no canonical definition to state claims against.
-/

/-! ## A372556.P2534655705219669184

`A130249(n)-char[A372558(n+1)]`
-/

namespace A372556.P2534655705219669184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372558 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A372556.P2534655705219669184

/-! ## A372556.P8852554698714411269

`A070939(3*n+1)-A043287(A143327(n+1))`
-/

namespace A372556.P8852554698714411269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (3 * n + 1) - A043287 (A143327 (n + 1)).toNat

end

end A372556.P8852554698714411269

/-!
# A372562: Square array A(n, k) = A246278(1+n, k) - 2*A246278(n, k), read by falling antidiagonals, where A246278 is the prime shift array.

The programs for A372562, there is no canonical definition to state claims against.
-/

/-! ## A372562.P10183202421185343236

`A372563(n+1)-A378979(n+1)`
-/

namespace A372562.P10183202421185343236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372563 (n + 1) - A378979 (n + 1)

end

end A372562.P10183202421185343236

/-! ## A372562.P1620789880457384685

`A252750(A253551(n+1))`
-/

namespace A372562.P1620789880457384685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252750 (A253551 (n + 1)).toNat

end

end A372562.P1620789880457384685

/-! ## A372562.P5635404419370783324

`A252748(A246278(n+2))`
-/

namespace A372562.P5635404419370783324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A246278 (n + 2)).toNat

end

end A372562.P5635404419370783324

/-! ## A372562.P846201762026293502

`A252748(A246275(n+1)+1)`
-/

namespace A372562.P846201762026293502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A246275 (n + 1) + 1).toNat

end

end A372562.P846201762026293502

/-! ## A372562.P10455270017083153584

`A252748(A379499(n+1)/A355927(n+1))`
-/

namespace A372562.P10455270017083153584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (SequenceMachineLib.roundAway ((A379499 (n + 1) : ℚ) / (A355927 (n + 1) : ℚ))).toNat

end

end A372562.P10455270017083153584

/-!
# A372563: Square array A(n, k) = A246278(1+n, k) - sigma(A246278(n, k)), read by falling antidiagonals, where A246278 is the prime shift array.

The programs for A372563, there is no canonical definition to state claims against.
-/

/-! ## A372563.P13209212930659857494

`A378979(n+1)+A372562(n+1)`
-/

namespace A372563.P13209212930659857494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378979 (n + 1) + A372562 (n + 1)

end

end A372563.P13209212930659857494

/-! ## A372563.P3661782858483632559

`A372562(n+1)+2*A246278(n+2)-A355927(n+1)`
-/

namespace A372563.P3661782858483632559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372562 (n + 1) + (2 * A246278 (n + 2) - A355927 (n + 1))

end

end A372563.P3661782858483632559

/-! ## A372563.P12715445444869678119

`A286385(A246278(n+2))`
-/

namespace A372563.P12715445444869678119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (A246278 (n + 2)).toNat

end

end A372563.P12715445444869678119

/-! ## A372563.P6746723755100842859

`A286385(A341606(n+1)/A341605(n+1)*A355927(n+1))`
-/

namespace A372563.P6746723755100842859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (SequenceMachineLib.roundAway ((A341606 (n + 1) : ℚ) / (A341605 (n + 1) : ℚ) * (A355927 (n + 1) : ℚ))).toNat

end

end A372563.P6746723755100842859

/-! ## A372563.P17133685633887252889

`A003961(A246278(n+2))-A355927(n+1)`
-/

namespace A372563.P17133685633887252889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A246278 (n + 2)).toNat - A355927 (n + 1)

end

end A372563.P17133685633887252889

/-!
# A372565: a(n) is the greatest common divisor of n, sigma(n) and A003961(n), where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A372565, the canonical program `A372565.P13754156096294323452` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372565 has offset 1).

The definition of A372565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372565.P13754156096294323452

`gcd(n+1, A326057(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A372565

/-- `gcd(n+1, A326057(n+1))` -/
def P13754156096294323452.Spec : Prop :=
  ∀ n, (P13754156096294323452.a n : ℤ) = A372565 (n + 1)

theorem P13754156096294323452.correct : P13754156096294323452.Spec := by
  intro n
  simp only [A372565, Nat.add_sub_cancel]

end A372565

/-! ## A372565.P10799923220850924222

`gcd((n+1)/2^val(n+1, 2), A342671(n+1))`
-/

namespace A372565.P10799923220850924222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A342671 (n + 1))

end

end A372565.P10799923220850924222

namespace A372565

/-- `gcd((n+1)/2^val(n+1, 2), A342671(n+1))` -/
def P10799923220850924222.Spec : Prop :=
  ∀ n, (P10799923220850924222.a n : ℤ) = A372565 (n + 1)

end A372565

/-! ## A372565.P2054400548384223527

`gcd(Δ[A160664(n)], A322361(n+1))`
-/

namespace A372565.P2054400548384223527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A322361 (n + 1))

end

end A372565.P2054400548384223527

namespace A372565

/-- `gcd(Δ[A160664(n)], A322361(n+1))` -/
def P2054400548384223527.Spec : Prop :=
  ∀ n, (P2054400548384223527.a n : ℤ) = A372565 (n + 1)

end A372565

/-! ## A372565.P16046041316402868973

`gcd(A003961(n+1), A009194(n+1))`
-/

namespace A372565.P16046041316402868973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A009194 (n + 1))

end

end A372565.P16046041316402868973

namespace A372565

/-- `gcd(A003961(n+1), A009194(n+1))` -/
def P16046041316402868973.Spec : Prop :=
  ∀ n, (P16046041316402868973.a n : ℤ) = A372565 (n + 1)

end A372565

/-! ## A372565.P6565634580557514061

`gcd(A000027(n+1), A342671(n+1))`
-/

namespace A372565.P6565634580557514061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A342671 (n + 1))

end

end A372565.P6565634580557514061

namespace A372565

/-- `gcd(A000027(n+1), A342671(n+1))` -/
def P6565634580557514061.Spec : Prop :=
  ∀ n, (P6565634580557514061.a n : ℤ) = A372565 (n + 1)

end A372565

/-! ## A372565.P7117940670081376451

`gcd(Δ[A069894(n)], A342671(n+1))`
-/

namespace A372565.P7117940670081376451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A342671 (n + 1))

end

end A372565.P7117940670081376451

namespace A372565

/-- `gcd(Δ[A069894(n)], A342671(n+1))` -/
def P7117940670081376451.Spec : Prop :=
  ∀ n, (P7117940670081376451.a n : ℤ) = A372565 (n + 1)

end A372565

/-! ## A372565.P3997508012517353609

`gcd(A065423(2*n+3), A176447(A342671(n+1)))`
-/

namespace A372565.P3997508012517353609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065423 (2 * n + 3)) (A176447 (A342671 (n + 1)).toNat)

end

end A372565.P3997508012517353609

namespace A372565

/-- `gcd(A065423(2*n+3), A176447(A342671(n+1)))` -/
def P3997508012517353609.Spec : Prop :=
  ∀ n, (P3997508012517353609.a n : ℤ) = A372565 (n + 1)

end A372565

/-! ## A372565.P13009102348866743463

`gcd(A233269(n²+1), A325636(n+1))`
-/

namespace A372565.P13009102348866743463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233269 (n ^ 2 + 1)) (A325636 (n + 1))

end

end A372565.P13009102348866743463

namespace A372565

/-- `gcd(A233269(n²+1), A325636(n+1))` -/
def P13009102348866743463.Spec : Prop :=
  ∀ n, (P13009102348866743463.a n : ℤ) = A372565 (n + 1)

end A372565

/-! ## A372565.P14995799433017999220

`A254378(A192736(n+2))`
-/

namespace A372565.P14995799433017999220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (A192736 (n + 2)).toNat

end

end A372565.P14995799433017999220

namespace A372565

/-- `A254378(A192736(n+2))` -/
def P14995799433017999220.Spec : Prop :=
  ∀ n, P14995799433017999220.a n = A372565 (n + 1)

end A372565

/-! ## A372565.P15266811571332694206

`gcd(3, A220420(n+1))`
-/

namespace A372565.P15266811571332694206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A220420 (n + 1))

end

end A372565.P15266811571332694206

namespace A372565

/-- `gcd(3, A220420(n+1))` -/
def P15266811571332694206.Spec : Prop :=
  ∀ n, (P15266811571332694206.a n : ℤ) = A372565 (n + 1)

end A372565

/-!
# A372566: Numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A372566, the canonical program `A372566.P10239918502240805923` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372566 has offset 1).

The definition of A372566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372566.P11994379440057217415

`filter[A379477(n+1), A379475(#)]`
-/

namespace A372566.P11994379440057217415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P11994379440057217415

namespace A372566

/-- `filter[A379477(n+1), A379475(#)]` -/
def P11994379440057217415.Spec : Prop :=
  ∀ n, P11994379440057217415.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P2109528935809782528

`lt[0, A379475(n+1)]+1`
-/

namespace A372566.P2109528935809782528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A372566.P2109528935809782528

namespace A372566

/-- `lt[0, A379475(n+1)]+1` -/
def P2109528935809782528.Spec : Prop :=
  ∀ n, (P2109528935809782528.a n : ℤ) = A372566 (n + 1)

end A372566

/-! ## A372566.P10239918502240805923

`lt[1, A372565(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A372566

/-- `lt[1, A372565(n+1)]+1` -/
def P10239918502240805923.Spec : Prop :=
  ∀ n, (P10239918502240805923.a n : ℤ) = A372566 (n + 1)

theorem P10239918502240805923.correct : P10239918502240805923.Spec := by
  intro n
  simp only [A372566, Nat.add_sub_cancel]

end A372566

/-! ## A372566.P4520409078183761955

`filter[A104210(n+1), A379475(#)]`
-/

namespace A372566.P4520409078183761955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P4520409078183761955

namespace A372566

/-- `filter[A104210(n+1), A379475(#)]` -/
def P4520409078183761955.Spec : Prop :=
  ∀ n, P4520409078183761955.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P6972197331234832142

`filter[A005279(n+1), A379475(#)]`
-/

namespace A372566.P6972197331234832142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P6972197331234832142

namespace A372566

/-- `filter[A005279(n+1), A379475(#)]` -/
def P6972197331234832142.Spec : Prop :=
  ∀ n, P6972197331234832142.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P12521569247195700482

`filter[A069059(n+1), A379475(#)]`
-/

namespace A372566.P12521569247195700482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P12521569247195700482

namespace A372566

/-- `filter[A069059(n+1), A379475(#)]` -/
def P12521569247195700482.Spec : Prop :=
  ∀ n, P12521569247195700482.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P10588934016803400115

`filter[A024619(n+1), A379475(#)]`
-/

namespace A372566.P10588934016803400115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P10588934016803400115

namespace A372566

/-- `filter[A024619(n+1), A379475(#)]` -/
def P10588934016803400115.Spec : Prop :=
  ∀ n, P10588934016803400115.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P2994926005985130454

`eq[1, A379475(A028310(n))]`
-/

namespace A372566.P2994926005985130454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379475 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372566.P2994926005985130454

namespace A372566

/-- `eq[1, A379475(A028310(n))]` -/
def P2994926005985130454.Spec : Prop :=
  ∀ n, (P2994926005985130454.a n : ℤ) = A372566 (n + 1)

end A372566

/-! ## A372566.P15118917208604096824

`A153152(eq[1, A379475(n+1)])`
-/

namespace A372566.P15118917208604096824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A372566.P15118917208604096824

namespace A372566

/-- `A153152(eq[1, A379475(n+1)])` -/
def P15118917208604096824.Spec : Prop :=
  ∀ n, P15118917208604096824.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P17415726929957098742

`filter[A219095(n+2), A379475(#)]`
-/

namespace A372566.P17415726929957098742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219095 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P17415726929957098742

namespace A372566

/-- `filter[A219095(n+2), A379475(#)]` -/
def P17415726929957098742.Spec : Prop :=
  ∀ n, P17415726929957098742.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P2690594541116958065

`filter[A093614(n+1), A379475(#)]`
-/

namespace A372566.P2690594541116958065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P2690594541116958065

namespace A372566

/-- `filter[A093614(n+1), A379475(#)]` -/
def P2690594541116958065.Spec : Prop :=
  ∀ n, P2690594541116958065.a n = A372566 (n + 1)

end A372566

/-! ## A372566.P15881035102393587469

`filter[A278638(n+1), A379475(#)]`
-/

namespace A372566.P15881035102393587469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379475 (f1 j).toNat = 1) n)

end

end A372566.P15881035102393587469

namespace A372566

/-- `filter[A278638(n+1), A379475(#)]` -/
def P15881035102393587469.Spec : Prop :=
  ∀ n, P15881035102393587469.a n = A372566 (n + 1)

end A372566

/-!
# A372567: Odd numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A372567, the canonical program `A372567.P7755214078718572914` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372567 has offset 1).

The definition of A372567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372567.P2161931277334548437

`∩[A090196(n+1), A372566(n+1)]`
-/

namespace A372567.P2161931277334548437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372567.P2161931277334548437

namespace A372567

/-- `∩[A090196(n+1), A372566(n+1)]` -/
def P2161931277334548437.Spec : Prop :=
  ∀ n, (P2161931277334548437.a n : ℤ) = A372567 (n + 1)

end A372567

/-! ## A372567.P7755214078718572914

`∩[A333326(n+1), A372566(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A372567

/-- `∩[A333326(n+1), A372566(n+1)]` -/
def P7755214078718572914.Spec : Prop :=
  ∀ n, (P7755214078718572914.a n : ℤ) = A372567 (n + 1)

theorem P7755214078718572914.correct : P7755214078718572914.Spec := by
  intro n
  simp only [A372567, Nat.add_sub_cancel]

end A372567

/-! ## A372567.P13022761039731089408

`∩[A014076(n+1), A372566(n+1)]`
-/

namespace A372567.P13022761039731089408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372567.P13022761039731089408

namespace A372567

/-- `∩[A014076(n+1), A372566(n+1)]` -/
def P13022761039731089408.Spec : Prop :=
  ∀ n, (P13022761039731089408.a n : ℤ) = A372567 (n + 1)

end A372567

/-! ## A372567.P7157748419722491260

`∩[A257591(n+1), A372566(n+1)]`
-/

namespace A372567.P7157748419722491260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372567.P7157748419722491260

namespace A372567

/-- `∩[A257591(n+1), A372566(n+1)]` -/
def P7157748419722491260.Spec : Prop :=
  ∀ n, (P7157748419722491260.a n : ℤ) = A372567 (n + 1)

end A372567

/-!
# A372568: a(n) = Sum_{d|n} A346242(d), where A346242 is the Dirichlet inverse of gcd(n, A276086(n)).

The programs for A372568, there is no canonical definition to state claims against.
-/

/-! ## A372568.P17398753223432990741

`∑{d}[n+1, A346242(#)]`
-/

namespace A372568.P17398753223432990741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346242 d

end

end A372568.P17398753223432990741

/-!
# A372569: Lexicographically earliest infinite sequence such that a(i) = a(j) => A009194(i) = A009194(j), A009195(i) = A009195(j) and A009223(i) = A009223(j), for all i, j >= 1.

The programs for A372569, there is no canonical definition to state claims against.
-/

/-! ## A372569.P4667824825349711191

`A372570(n+1)-(A096606(3*n+2)+1)`
-/

namespace A372569.P4667824825349711191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372570 (n + 1) - (A096606 (3 * n + 2) + 1)

end

end A372569.P4667824825349711191

/-! ## A372569.P15062147318048565973

`∑{e}[A279634(A372570(n+1)), #]`
-/

namespace A372569.P15062147318048565973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 (A372570 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A372569.P15062147318048565973

/-! ## A372569.P5329180267238354836

`A351235(n+1)-A133080(A001248(n+1))`
-/

namespace A372569.P5329180267238354836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351235 (n + 1) - A133080 (A001248 (n + 1)).toNat

end

end A372569.P5329180267238354836

/-! ## A372569.P2113348947530750212

`A372570(n+1)-A372601(A027383(n))`
-/

namespace A372569.P2113348947530750212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372570 (n + 1) - A372601 (A027383 n).toNat

end

end A372569.P2113348947530750212

/-! ## A372569.P74263034458226966

`A351235(n+1)-A121373(A200785(n+1))`
-/

namespace A372569.P74263034458226966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351235 (n + 1) - A121373 (A200785 (n + 1)).toNat

end

end A372569.P74263034458226966

/-!
# A372570: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A009194(n), A009195(n), A009223(n), A322361(n), A342671(n)], for all i, j >= 1.

The programs for A372570, there is no canonical definition to state claims against.
-/

/-! ## A372570.P7479041134242198157

`A372601(A146345(n+1))+A372569(n+1)`
-/

namespace A372570.P7479041134242198157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A146345 (n + 1)).toNat + A372569 (n + 1)

end

end A372570.P7479041134242198157

/-! ## A372570.P14039491986212871011

`A372569(n+1)%A326080(n)+1`
-/

namespace A372570.P14039491986212871011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372569 (n + 1)) (A326080 n) + 1

end

end A372570.P14039491986212871011

/-! ## A372570.P3612569467708021453

`A372569(n+1)+A000035(A077224(2*(n+1)))`
-/

namespace A372570.P3612569467708021453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372569 (n + 1) + A000035 (A077224 (2 * (n + 1))).toNat

end

end A372570.P3612569467708021453

/-! ## A372570.P5855448099952076542

`A372569(n+1)+A179184(A070015(3*n))`
-/

namespace A372570.P5855448099952076542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372569 (n + 1) + A179184 (A070015 (3 * n)).toNat

end

end A372570.P5855448099952076542

/-! ## A372570.P16245931992082983084

`A372601(A259382(n+2))+A372569(n+1)`
-/

namespace A372570.P16245931992082983084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A259382 (n + 2)).toNat + A372569 (n + 1)

end

end A372570.P16245931992082983084

/-!
# A372571: Lexicographically earliest infinite sequence such that a(i) = a(j) => A324198(i) = A324198(j) and A342671(i) = A342671(j), for all i, j >= 1.

The programs for A372571, there is no canonical definition to state claims against.
-/

/-! ## A372571.P4379140365493034900

`gcd(A191372(A275435(3*n+4)), A217786(n))`
-/

namespace A372571.P4379140365493034900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191372 (A275435 (3 * n + 4)).toNat) (A217786 n)

end

end A372571.P4379140365493034900

/-!
# A372572: Lexicographically earliest infinite sequence such that a(i) = a(j) => A009194(i) = A009194(j), A322361(i) = A322361(j) and A342671(i) = A342671(j), for all i, j >= 1.

The programs for A372572, there is no canonical definition to state claims against.
-/

/-! ## A372572.P10386538673390531918

`A053737(A194987((n+1)*A194986(n+1)))`
-/

namespace A372572.P10386538673390531918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A194987 ((n + 1 : ℤ) * A194986 (n + 1)).toNat).toNat

end

end A372572.P10386538673390531918

/-! ## A372572.P15369654262026502269

`A053737(A194987((n+1)*A195072(n+1)))`
-/

namespace A372572.P15369654262026502269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A194987 ((n + 1 : ℤ) * A195072 (n + 1)).toNat).toNat

end

end A372572.P15369654262026502269

/-! ## A372572.P15191813035547314740

`A000120(A367294(n+1)^A076826(3*n))`
-/

namespace A372572.P15191813035547314740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A367294 (n + 1) : ℚ) ^ (A076826 (3 * n) : ℤ))).toNat

end

end A372572.P15191813035547314740

/-! ## A372572.P9955986224782730523

`gcd(A008137(A263159(2*(n+1))), A046208(n+1))`
-/

namespace A372572.P9955986224782730523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008137 (A263159 (2 * (n + 1))).toNat) (A046208 (n + 1))

end

end A372572.P9955986224782730523

/-! ## A372572.P7426872334751406033

`A055449(A287977(n))`
-/

namespace A372572.P7426872334751406033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055449 (A287977 n).toNat

end

end A372572.P7426872334751406033

/-!
# A372573: a(n) = 1 if A276085(n) is a multiple of 3, otherwise 0, where A276085 is the primorial base log-function.

The programs for A372573, the canonical program `A372573.P2519904625794954656` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372573 has offset 1).

The definition of A372573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372573.P3549705106204113605

`A373260(2*(n+1))`
-/

namespace A372573.P3549705106204113605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (2 * (n + 1))

end

end A372573.P3549705106204113605

namespace A372573

/-- `A373260(2*(n+1))` -/
def P3549705106204113605.Spec : Prop :=
  ∀ n, P3549705106204113605.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P16571207914303922857

`A373263(3*(n+1))`
-/

namespace A372573.P16571207914303922857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373263 (3 * (n + 1))

end

end A372573.P16571207914303922857

namespace A372573

/-- `A373263(3*(n+1))` -/
def P16571207914303922857.Spec : Prop :=
  ∀ n, P16571207914303922857.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P10062969866492296135

`1-A373153(n+1)²`
-/

namespace A372573.P10062969866492296135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A373153 (n + 1) ^ 2

end

end A372573.P10062969866492296135

namespace A372573

/-- `1-A373153(n+1)²` -/
def P10062969866492296135.Spec : Prop :=
  ∀ n, P10062969866492296135.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P1760784704630856500

`ceil(A373153(2*(n+1))/2)`
-/

namespace A372573.P1760784704630856500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A373153 (2 * (n + 1)) : ℚ) / 2⌉

end

end A372573.P1760784704630856500

namespace A372573

/-- `ceil(A373153(2*(n+1))/2)` -/
def P1760784704630856500.Spec : Prop :=
  ∀ n, P1760784704630856500.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P704872715081749305

`A079978(A372576(n+1))`
-/

namespace A372573.P704872715081749305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A372576 (n + 1)).toNat

end

end A372573.P704872715081749305

namespace A372573

/-- `A079978(A372576(n+1))` -/
def P704872715081749305.Spec : Prop :=
  ∀ n, P704872715081749305.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P2519904625794954656

`1-A234045(A065331(n+1))²`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372573

/-- `1-A234045(A065331(n+1))²` -/
def P2519904625794954656.Spec : Prop :=
  ∀ n, P2519904625794954656.a n = A372573 (n + 1)

theorem P2519904625794954656.correct : P2519904625794954656.Spec := by
  intro n
  simp only [A372573, Nat.add_sub_cancel]

end A372573

/-! ## A372573.P727759509625984455

`1-(A373263(n+1)+A373260(n+1))`
-/

namespace A372573.P727759509625984455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A373263 (n + 1) + A373260 (n + 1))

end

end A372573.P727759509625984455

namespace A372573

/-- `1-(A373263(n+1)+A373260(n+1))` -/
def P727759509625984455.Spec : Prop :=
  ∀ n, P727759509625984455.a n = A372573 (n + 1)

theorem P727759509625984455.correct : P727759509625984455.Spec := by
  intro n
  simp only [A372573, Nat.add_sub_cancel, A372573.P727759509625984455.a, A372573.P2519904625794954656.a, A065331, A065331.P8774004989157438008.a, A234045, A234045.P17871312824107287060.a, A373260, A373260.P13345870415244065994.a, A373263, A373263.P11936545737331509118.a, A006519, A006519.P10435570611646570274.a, A038500, A038500.P18314557775098268376.a, A238468, A238468.P4933202717561499868.f1, A238468.P4933202717561499868.a, A171977, A171977.P14092944863121073856.a, A234044, A234044.P13328901318595551424.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372573

/-! ## A372573.P5413332748533263481

`∑{d}[n+1, A008683(#)*A378443((n+1)/#)]`
-/

namespace A372573.P5413332748533263481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372573.P5413332748533263481

namespace A372573

/-- `∑{d}[n+1, A008683(#)*A378443((n+1)/#)]` -/
def P5413332748533263481.Spec : Prop :=
  ∀ n, P5413332748533263481.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P14363399425062010007

`A373143(A065331(n+1)²)`
-/

namespace A372573.P14363399425062010007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 (A065331 (n + 1) ^ 2).toNat

end

end A372573.P14363399425062010007

namespace A372573

/-- `A373143(A065331(n+1)²)` -/
def P14363399425062010007.Spec : Prop :=
  ∀ n, P14363399425062010007.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P8180771117353795685

`A374041((n+1)²)`
-/

namespace A372573.P8180771117353795685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374041 ((n + 1) ^ 2)

end

end A372573.P8180771117353795685

namespace A372573

/-- `A374041((n+1)²)` -/
def P8180771117353795685.Spec : Prop :=
  ∀ n, P8180771117353795685.a n = A372573 (n + 1)

end A372573

/-! ## A372573.P1535076758885499348

`1-A332823(A265398(n+1))²`
-/

namespace A372573.P1535076758885499348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332823 (A265398 (n + 1)).toNat ^ 2

end

end A372573.P1535076758885499348

namespace A372573

/-- `1-A332823(A265398(n+1))²` -/
def P1535076758885499348.Spec : Prop :=
  ∀ n, P1535076758885499348.a n = A372573 (n + 1)

end A372573

/-!
# A372574: a(n) = 1 if the squarefree part of n is congruent to 1 or 5 modulo 6, otherwise 0.

The programs for A372574, the canonical program `A372574.P13338864400327852121` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372574 has offset 1).

The definition of A372574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372574.P874515213423123468

`A354354(A007913(n+1))`
-/

namespace A372574.P874515213423123468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A007913 (n + 1)).toNat

end

end A372574.P874515213423123468

namespace A372574

/-- `A354354(A007913(n+1))` -/
def P874515213423123468.Spec : Prop :=
  ∀ n, P874515213423123468.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P13338864400327852121

`((val(n+1, 2)+1)*(val(n+1, 3)+1))%2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A372574

/-- `((val(n+1, 2)+1)*(val(n+1, 3)+1))%2` -/
def P13338864400327852121.Spec : Prop :=
  ∀ n, (P13338864400327852121.a n : ℤ) = A372574 (n + 1)

theorem P13338864400327852121.correct : P13338864400327852121.Spec := by
  intro n
  simp only [A372574, Nat.add_sub_cancel]

end A372574

/-! ## A372574.P2088811583337584447

`and(1, (val(n+1, 2)+1)*(val(n+1, 3)+1))`
-/

namespace A372574.P2088811583337584447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((SequenceMachineLib.valuation (n + 1) 2 + 1) * (SequenceMachineLib.valuation (n + 1) 3 + 1))

end

end A372574.P2088811583337584447

namespace A372574

/-- `and(1, (val(n+1, 2)+1)*(val(n+1, 3)+1))` -/
def P2088811583337584447.Spec : Prop :=
  ∀ n, (P2088811583337584447.a n : ℤ) = A372574 (n + 1)

theorem P2088811583337584447.correct : P2088811583337584447.Spec := by
  intro n
  simp only [A372574, Nat.add_sub_cancel, A372574.P2088811583337584447.a, A372574.P13338864400327852121.a, SequenceMachineLib.memo_apply]
  try simp

end A372574

/-! ## A372574.P9131785103884294339

`A072078(n+1)%2`
-/

namespace A372574.P9131785103884294339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072078 (n + 1)) 2

end

end A372574.P9131785103884294339

namespace A372574

/-- `A072078(n+1)%2` -/
def P9131785103884294339.Spec : Prop :=
  ∀ n, P9131785103884294339.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P3258293213664239018

`A000035(A072078(n+1))`
-/

namespace A372574.P3258293213664239018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072078 (n + 1)).toNat

end

end A372574.P3258293213664239018

namespace A372574

/-- `A000035(A072078(n+1))` -/
def P3258293213664239018.Spec : Prop :=
  ∀ n, P3258293213664239018.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P16413581425853190917

`A010052(A065331(n+1))`
-/

namespace A372574.P16413581425853190917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A065331 (n + 1)).toNat

end

end A372574.P16413581425853190917

namespace A372574

/-- `A010052(A065331(n+1))` -/
def P16413581425853190917.Spec : Prop :=
  ∀ n, P16413581425853190917.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P3907347224837828209

`A187074(A038387(n+1))`
-/

namespace A372574.P3907347224837828209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (A038387 (n + 1)).toNat

end

end A372574.P3907347224837828209

namespace A372574

/-- `A187074(A038387(n+1))` -/
def P3907347224837828209.Spec : Prop :=
  ∀ n, P3907347224837828209.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P18131233610953777560

`A187074(A160102(n+1))`
-/

namespace A372574.P18131233610953777560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (A160102 (n + 1)).toNat

end

end A372574.P18131233610953777560

namespace A372574

/-- `A187074(A160102(n+1))` -/
def P18131233610953777560.Spec : Prop :=
  ∀ n, P18131233610953777560.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P4410593553117115506

`A035187(A355582(n+1))`
-/

namespace A372574.P4410593553117115506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A355582 (n + 1)).toNat

end

end A372574.P4410593553117115506

namespace A372574

/-- `A035187(A355582(n+1))` -/
def P4410593553117115506.Spec : Prop :=
  ∀ n, P4410593553117115506.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P9051350331871994335

`A057427(A349395(n+1))`
-/

namespace A372574.P9051350331871994335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A349395 (n + 1)).toNat

end

end A372574.P9051350331871994335

namespace A372574

/-- `A057427(A349395(n+1))` -/
def P9051350331871994335.Spec : Prop :=
  ∀ n, P9051350331871994335.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P9494344544440231050

`A373155(A037449(n+1))`
-/

namespace A372574.P9494344544440231050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373155 (A037449 (n + 1)).toNat

end

end A372574.P9494344544440231050

namespace A372574

/-- `A373155(A037449(n+1))` -/
def P9494344544440231050.Spec : Prop :=
  ∀ n, P9494344544440231050.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P4706596446168874924

`A354354(A071975(n+1))`
-/

namespace A372574.P4706596446168874924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A071975 (n + 1)).toNat

end

end A372574.P4706596446168874924

namespace A372574

/-- `A354354(A071975(n+1))` -/
def P4706596446168874924.Spec : Prop :=
  ∀ n, P4706596446168874924.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P17606768943027229543

`A035217(A392597(n+1))`
-/

namespace A372574.P17606768943027229543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035217 (A392597 (n + 1)).toNat

end

end A372574.P17606768943027229543

namespace A372574

/-- `A035217(A392597(n+1))` -/
def P17606768943027229543.Spec : Prop :=
  ∀ n, P17606768943027229543.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P9557822478419916483

`A373155(A056135(n+1))`
-/

namespace A372574.P9557822478419916483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373155 (A056135 (n + 1)).toNat

end

end A372574.P9557822478419916483

namespace A372574

/-- `A373155(A056135(n+1))` -/
def P9557822478419916483.Spec : Prop :=
  ∀ n, P9557822478419916483.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P9409051386927751136

`A179184(A277707(n+1))`
-/

namespace A372574.P9409051386927751136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A277707 (n + 1)).toNat

end

end A372574.P9409051386927751136

namespace A372574

/-- `A179184(A277707(n+1))` -/
def P9409051386927751136.Spec : Prop :=
  ∀ n, P9409051386927751136.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P2810483515707588953

`A187074(A277708(n+1))`
-/

namespace A372574.P2810483515707588953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (A277708 (n + 1)).toNat

end

end A372574.P2810483515707588953

namespace A372574

/-- `A187074(A277708(n+1))` -/
def P2810483515707588953.Spec : Prop :=
  ∀ n, P2810483515707588953.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P7752087140187116809

`A179184(A302786(n+1))`
-/

namespace A372574.P7752087140187116809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A302786 (n + 1)).toNat

end

end A372574.P7752087140187116809

namespace A372574

/-- `A179184(A302786(n+1))` -/
def P7752087140187116809.Spec : Prop :=
  ∀ n, P7752087140187116809.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P10464935932215927321

`A354354(A302024(n+1))`
-/

namespace A372574.P10464935932215927321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A302024 (n + 1)).toNat

end

end A372574.P10464935932215927321

namespace A372574

/-- `A354354(A302024(n+1))` -/
def P10464935932215927321.Spec : Prop :=
  ∀ n, P10464935932215927321.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P1742380883702650758

`A354354(A350389(n+1))`
-/

namespace A372574.P1742380883702650758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A350389 (n + 1)).toNat

end

end A372574.P1742380883702650758

namespace A372574

/-- `A354354(A350389(n+1))` -/
def P1742380883702650758.Spec : Prop :=
  ∀ n, P1742380883702650758.a n = A372574 (n + 1)

end A372574

/-! ## A372574.P6161651280070902800

`A059841(A072078(n+1)+1)`
-/

namespace A372574.P6161651280070902800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A072078 (n + 1) + 1).toNat

end

end A372574.P6161651280070902800

namespace A372574

/-- `A059841(A072078(n+1)+1)` -/
def P6161651280070902800.Spec : Prop :=
  ∀ n, P6161651280070902800.a n = A372574 (n + 1)

end A372574

/-!
# A372576: a(n) = A276085(n) mod 360, where A276085 is fully additive with a(p) = p#/p.

The programs for A372576, there is no canonical definition to state claims against.
-/

/-! ## A372576.P10992458721375840572

`A276085(n+1)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372576.P10992458721375840572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) 360

end

end A372576.P10992458721375840572

/-! ## A372576.P17547747026147070588

`(A328769(n+1)/(n+1))%A321642(A071542(n))`
-/

namespace A372576.P17547747026147070588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))) (A321642 (A071542 n).toNat)

end

end A372576.P17547747026147070588

/-! ## A372576.P2962011359132301257

`A376413(A372575(n+1))%A360557(A360557(n+3))`
-/

namespace A372576.P2962011359132301257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376413 (A372575 (n + 1)).toNat) (A360557 (A360557 (n + 3)).toNat)

end

end A372576.P2962011359132301257

/-!
# A372577: Expansion of g.f. A(x) satisfying A(x)^2 = A(A( x*A(x) + x*A(x)^2 )).

The programs for A372577, there is no canonical definition to state claims against.
-/

/-! ## A372577.P13551597379282622538

`A276798(A337273(n+3)+A002001(n))`
-/

namespace A372577.P13551597379282622538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A337273 (n + 3) + A002001 n).toNat

end

end A372577.P13551597379282622538

/-! ## A372577.P6731764212544426413

`A103221(A289207(3*n+4)*A360592(n))`
-/

namespace A372577.P6731764212544426413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A289207 (3 * n + 4) * A360592 n).toNat

end

end A372577.P6731764212544426413

/-!
# A372578: Expansion of g.f. A(x) satisfying A( x*A(x) + 2*A(x)^3 ) = A(x)^2.

The programs for A372578, there is no canonical definition to state claims against.
-/

/-! ## A372578.P7432374397794100811

`A098616(n)-A122201(A139516(n))`
-/

namespace A372578.P7432374397794100811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098616 n - A122201 (A139516 n).toNat

end

end A372578.P7432374397794100811

/-!
# A372580: Expansion of g.f. A(x) satisfying A( A(x) - 4*A(x)^2 + 4*A(x)^3 ) = x.

The programs for A372580, there is no canonical definition to state claims against.
-/

/-! ## A372580.P10263445581389031234

`A027307(n)-A377784(A353223(n))`
-/

namespace A372580.P10263445581389031234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027307 n - A377784 (A353223 n).toNat

end

end A372580.P10263445581389031234

/-! ## A372580.P3427763651283099035

`A027307(n)-A339086(A058778(n+1))`
-/

namespace A372580.P3427763651283099035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027307 n - A339086 (A058778 (n + 1)).toNat

end

end A372580.P3427763651283099035

/-!
# A372581: Population of elementary triangular automaton rule 210 at generation n, starting from a lone 1 cell at generation 0.

The programs for A372581, there is no canonical definition to state claims against.
-/

/-! ## A372581.P11644325248157224293

`A382971(A227549(n+1))`
-/

namespace A372581.P11644325248157224293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382971 (A227549 (n + 1)).toNat

end

end A372581.P11644325248157224293

/-! ## A372581.P3028387401829933893

`A382971(A396204(n+1))`
-/

namespace A372581.P3028387401829933893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382971 (A396204 (n + 1)).toNat

end

end A372581.P3028387401829933893

/-! ## A372581.P16714326026327452389

`A382971(n)%A082700(n+3)`
-/

namespace A372581.P16714326026327452389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382971 n) (A082700 (n + 3))

end

end A372581.P16714326026327452389

/-! ## A372581.P930770002705234288

`A129947(2*n+1)!*A382971(n)`
-/

namespace A372581.P930770002705234288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A129947 (2 * n + 1)).toNat : ℤ) * A382971 n

end

end A372581.P930770002705234288

/-!
# A372582: Numbers k such that 2*k + 3 and 3*k + 2 are semiprimes.

The programs for A372582, there is no canonical definition to state claims against.
-/

/-! ## A372582.P13259480292452295238

`eq[A064911(3*n+2), A238757(A050379(2*n+3))]`
-/

namespace A372582.P13259480292452295238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238757 (A050379 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372582.P13259480292452295238

/-! ## A372582.P177089018543280849

`eq[A007916(A001222(2*n+3)), A281113(3*n+2)]`
-/

namespace A372582.P177089018543280849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A001222 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372582.P177089018543280849

/-! ## A372582.P13989980827059762086

`eq[A001222(3*n+2), A185788(A001055(2*n+3))]`
-/

namespace A372582.P13989980827059762086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185788 (A001055 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372582.P13989980827059762086

/-! ## A372582.P5756836772993776557

`lt[A001281(A033273(3*n+2)), A105700(2*n+3)]`
-/

namespace A372582.P5756836772993776557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033273 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372582.P5756836772993776557

/-! ## A372582.P11417501527260293868

`eq[A046523(3*n+2), A339685(A317141(2*n+3))]`
-/

namespace A372582.P11417501527260293868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339685 (A317141 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372582.P11417501527260293868

/-! ## A372582.P15390243705556540069

`eq[A050379(2*n+3), A231797(A008481(3*n+2))]`
-/

namespace A372582.P15390243705556540069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231797 (A008481 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372582.P15390243705556540069

/-!
# A372583: a(n) = (3*n^5 + 5*n^3)/8.

The programs for A372583, the canonical program `A372583.P13108293844211411721` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372583 has offset 1).

The definition of A372583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372583.P13108293844211411721

`(3*(n+1)^5+5*(n+1)^3)/8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A372583

/-- `(3*(n+1)^5+5*(n+1)^3)/8` -/
def P13108293844211411721.Spec : Prop :=
  ∀ n, P13108293844211411721.a n = (A372583 (n + 1) : ℚ)

end A372583

/-! ## A372583.P1790897862877408443

`A132122(n)+A108650(n)`
-/

namespace A372583.P1790897862877408443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132122 n + A108650 n

end

end A372583.P1790897862877408443

namespace A372583

/-- `A132122(n)+A108650(n)` -/
def P1790897862877408443.Spec : Prop :=
  ∀ n, P1790897862877408443.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P10190070747450557929

`Δ[A000217(n)*A002817(n)]`
-/

namespace A372583.P10190070747450557929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372583.P10190070747450557929

namespace A372583

/-- `Δ[A000217(n)*A002817(n)]` -/
def P10190070747450557929.Spec : Prop :=
  ∀ n, P10190070747450557929.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P13320696915740198688

`A132122(n)+∑[∑[A006564(n+1)]]`
-/

namespace A372583.P13320696915740198688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132122 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372583.P13320696915740198688

namespace A372583

/-- `A132122(n)+∑[∑[A006564(n+1)]]` -/
def P13320696915740198688.Spec : Prop :=
  ∀ n, P13320696915740198688.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P4627004470635150032

`2*A072474(n+1)-A260513(n+1)`
-/

namespace A372583.P4627004470635150032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072474 (n + 1) - A260513 (n + 1)

end

end A372583.P4627004470635150032

namespace A372583

/-- `2*A072474(n+1)-A260513(n+1)` -/
def P4627004470635150032.Spec : Prop :=
  ∀ n, P4627004470635150032.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P7552545786428656705

`A132122(n)+∑[∑[(n+1)*A005891(n)]]`
-/

namespace A372583.P7552545786428656705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132122 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372583.P7552545786428656705

namespace A372583

/-- `A132122(n)+∑[∑[(n+1)*A005891(n)]]` -/
def P7552545786428656705.Spec : Prop :=
  ∀ n, P7552545786428656705.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P15243763731631317054

`A260513(n+1)+A372751(n+1)-A072474(n+1)`
-/

namespace A372583.P15243763731631317054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + (A372751 (n + 1) - A072474 (n + 1))

end

end A372583.P15243763731631317054

namespace A372583

/-- `A260513(n+1)+A372751(n+1)-A072474(n+1)` -/
def P15243763731631317054.Spec : Prop :=
  ∀ n, P15243763731631317054.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P5179678706362973452

`Δ[(A004255(n+1)-(n+1))*(n²-C(n, 2))]`
-/

namespace A372583.P5179678706362973452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004255 (n + 1) - (n + 1 : ℤ)) * ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372583.P5179678706362973452

namespace A372583

/-- `Δ[(A004255(n+1)-(n+1))*(n²-C(n, 2))]` -/
def P5179678706362973452.Spec : Prop :=
  ∀ n, P5179678706362973452.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P5835567668799968385

`A072474(n+1)+A260513(n+1)-A006003(n+1)`
-/

namespace A372583.P5835567668799968385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072474 (n + 1) + (A260513 (n + 1) - A006003 (n + 1))

end

end A372583.P5835567668799968385

namespace A372583

/-- `A072474(n+1)+A260513(n+1)-A006003(n+1)` -/
def P5835567668799968385.Spec : Prop :=
  ∀ n, P5835567668799968385.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P14226976045459544416

`A006003(n+1)+A372751(n+1)-A260513(n+1)`
-/

namespace A372583.P14226976045459544416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + (A372751 (n + 1) - A260513 (n + 1))

end

end A372583.P14226976045459544416

namespace A372583

/-- `A006003(n+1)+A372751(n+1)-A260513(n+1)` -/
def P14226976045459544416.Spec : Prop :=
  ∀ n, P14226976045459544416.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P5044950973520593244

`Δ[A002411(∑[n])]`
-/

namespace A372583.P5044950973520593244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372583.P5044950973520593244

namespace A372583

/-- `Δ[A002411(∑[n])]` -/
def P5044950973520593244.Spec : Prop :=
  ∀ n, P5044950973520593244.a n = A372583 (n + 1)

end A372583

/-! ## A372583.P6580840261719460417

`Δ[A100119(∑[n])]`
-/

namespace A372583.P6580840261719460417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372583.P6580840261719460417

namespace A372583

/-- `Δ[A100119(∑[n])]` -/
def P6580840261719460417.Spec : Prop :=
  ∀ n, P6580840261719460417.a n = A372583 (n + 1)

end A372583

/-!
# A372584: a(n) = number of odd digits in odd positions in the decimal expansion of n, where position 1 is the least significant digit.

The programs for A372584, the canonical program `A372584.P4289826914355087019` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372584 has offset 0).

The definition of A372584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372584.P4289826914355087019

`∑{digits}[n, #%2]-a(floor(n/10))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A372584

/-- `∑{digits}[n, #%2]-a(floor(n/10))` -/
def P4289826914355087019.Spec : Prop :=
  ∀ n, P4289826914355087019.a n = A372584 n

theorem P4289826914355087019.correct : P4289826914355087019.Spec := by
  intro n
  simp only [A372584]

end A372584

/-! ## A372584.P15544144697945485297

`A123398(A332550(n))-A000035(3*n+1)`
-/

namespace A372584.P15544144697945485297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123398 (A332550 n).toNat - A000035 (3 * n + 1)

end

end A372584.P15544144697945485297

namespace A372584

/-- `A123398(A332550(n))-A000035(3*n+1)` -/
def P15544144697945485297.Spec : Prop :=
  ∀ n, P15544144697945485297.a n = A372584 n

end A372584

/-! ## A372584.P12345441255626904452

`n%(A043562(A196222(n))+1)`
-/

namespace A372584.P12345441255626904452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A043562 (A196222 n).toNat + 1)

end

end A372584.P12345441255626904452

namespace A372584

/-- `n%(A043562(A196222(n))+1)` -/
def P12345441255626904452.Spec : Prop :=
  ∀ n, P12345441255626904452.a n = A372584 n

end A372584

/-! ## A372584.P1408679680108412049

`A014744(A018819(n))+A000035(n)`
-/

namespace A372584.P1408679680108412049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A018819 n).toNat + A000035 n

end

end A372584.P1408679680108412049

namespace A372584

/-- `A014744(A018819(n))+A000035(n)` -/
def P1408679680108412049.Spec : Prop :=
  ∀ n, P1408679680108412049.a n = A372584 n

end A372584

/-! ## A372584.P7071408246579872021

`A043562(A196222(n))-A059841(n)`
-/

namespace A372584.P7071408246579872021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A196222 n).toNat - A059841 n

end

end A372584.P7071408246579872021

namespace A372584

/-- `A043562(A196222(n))-A059841(n)` -/
def P7071408246579872021.Spec : Prop :=
  ∀ n, P7071408246579872021.a n = A372584 n

end A372584

/-! ## A372584.P9993050168546028616

`A096008(A196222(n))+A059841(n+1)`
-/

namespace A372584.P9993050168546028616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (A196222 n).toNat + A059841 (n + 1)

end

end A372584.P9993050168546028616

namespace A372584

/-- `A096008(A196222(n))+A059841(n+1)` -/
def P9993050168546028616.Spec : Prop :=
  ∀ n, P9993050168546028616.a n = A372584 n

end A372584

/-! ## A372584.P1953041140654466656

`A047988(A196222(n)+2)-A059841(n)`
-/

namespace A372584.P1953041140654466656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (A196222 n + 2).toNat - A059841 n

end

end A372584.P1953041140654466656

namespace A372584

/-- `A047988(A196222(n)+2)-A059841(n)` -/
def P1953041140654466656.Spec : Prop :=
  ∀ n, P1953041140654466656.a n = A372584 n

end A372584

/-! ## A372584.P3590351136695773775

`A118759(n)%2`
-/

namespace A372584.P3590351136695773775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 n) 2

end

end A372584.P3590351136695773775

namespace A372584

/-- `A118759(n)%2` -/
def P3590351136695773775.Spec : Prop :=
  ∀ n, P3590351136695773775.a n = A372584 n

end A372584

/-! ## A372584.P9094577453742286540

`A244158(n)%2`
-/

namespace A372584.P9094577453742286540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244158 n) 2

end

end A372584.P9094577453742286540

namespace A372584

/-- `A244158(n)%2` -/
def P9094577453742286540.Spec : Prop :=
  ∀ n, P9094577453742286540.a n = A372584 n

end A372584

/-! ## A372584.P5302707139367328777

`A000035(A118759(n))`
-/

namespace A372584.P5302707139367328777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A118759 n).toNat

end

end A372584.P5302707139367328777

namespace A372584

/-- `A000035(A118759(n))` -/
def P5302707139367328777.Spec : Prop :=
  ∀ n, P5302707139367328777.a n = A372584 n

end A372584

/-! ## A372584.P2884298948876428736

`A046978(A244158(n)²)`
-/

namespace A372584.P2884298948876428736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A244158 n ^ 2).toNat

end

end A372584.P2884298948876428736

namespace A372584

/-- `A046978(A244158(n)²)` -/
def P2884298948876428736.Spec : Prop :=
  ∀ n, P2884298948876428736.a n = A372584 n

end A372584

/-! ## A372584.P17204696336172417401

`A091337(A244158(n)²)`
-/

namespace A372584.P17204696336172417401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A244158 n ^ 2).toNat

end

end A372584.P17204696336172417401

namespace A372584

/-- `A091337(A244158(n)²)` -/
def P17204696336172417401.Spec : Prop :=
  ∀ n, P17204696336172417401.a n = A372584 n

end A372584

/-! ## A372584.P10090427929965516336

`A059841(A118759(n)+1)`
-/

namespace A372584.P10090427929965516336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A118759 n + 1).toNat

end

end A372584.P10090427929965516336

namespace A372584

/-- `A059841(A118759(n)+1)` -/
def P10090427929965516336.Spec : Prop :=
  ∀ n, P10090427929965516336.a n = A372584 n

end A372584

/-! ## A372584.P10545710410555592786

`A059841(xor(1, A118759(n)))`
-/

namespace A372584.P10545710410555592786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.xor 1 (A118759 n)).toNat

end

end A372584.P10545710410555592786

namespace A372584

/-- `A059841(xor(1, A118759(n)))` -/
def P10545710410555592786.Spec : Prop :=
  ∀ n, P10545710410555592786.a n = A372584 n

end A372584

/-! ## A372584.P1746118198404032438

`A118759(and(1, -A118759(n)))`
-/

namespace A372584.P1746118198404032438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.land 1 (-A118759 n)).toNat

end

end A372584.P1746118198404032438

namespace A372584

/-- `A118759(and(1, -A118759(n)))` -/
def P1746118198404032438.Spec : Prop :=
  ∀ n, P1746118198404032438.a n = A372584 n

end A372584

/-! ## A372584.P18443249053089654121

`and(char[A035506(n)], A118759(n))`
-/

namespace A372584.P18443249053089654121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A118759 n)

end

end A372584.P18443249053089654121

namespace A372584

/-- `and(char[A035506(n)], A118759(n))` -/
def P18443249053089654121.Spec : Prop :=
  ∀ n, P18443249053089654121.a n = A372584 n

end A372584

/-! ## A372584.P708717855140286943

`and(char[A064413(n+1)], A118759(n))`
-/

namespace A372584.P708717855140286943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A118759 n)

end

end A372584.P708717855140286943

namespace A372584

/-- `and(char[A064413(n+1)], A118759(n))` -/
def P708717855140286943.Spec : Prop :=
  ∀ n, P708717855140286943.a n = A372584 n

end A372584

/-! ## A372584.P5497533353716021149

`A175420(n)%A260452(A316490(n))`
-/

namespace A372584.P5497533353716021149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175420 n) (A260452 (A316490 n).toNat)

end

end A372584.P5497533353716021149

namespace A372584

/-- `A175420(n)%A260452(A316490(n))` -/
def P5497533353716021149.Spec : Prop :=
  ∀ n, P5497533353716021149.a n = A372584 n

end A372584

/-! ## A372584.P7003527244403043190

`A070432(and(A060883(3*n), A118759(n)))`
-/

namespace A372584.P7003527244403043190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 (Int.land (A060883 (3 * n)) (A118759 n)).toNat

end

end A372584.P7003527244403043190

namespace A372584

/-- `A070432(and(A060883(3*n), A118759(n)))` -/
def P7003527244403043190.Spec : Prop :=
  ∀ n, P7003527244403043190.a n = A372584 n

end A372584

/-!
# A372588: Numbers k > 1 such that (greatest binary index of k) + (greatest prime index of k) is odd.

The programs for A372588, there is no canonical definition to state claims against.
-/

/-! ## A372588.P8184648060808351858

`∩[2*n, A372589(n+1)]/2`
-/

namespace A372588.P8184648060808351858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372589 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A372588.P8184648060808351858

/-!
# A372589: Numbers k > 1 such that (greatest binary index of k) + (greatest prime index of k) is even.

The programs for A372589, there is no canonical definition to state claims against.
-/

/-! ## A372589.P14466094246177590269

`A006370(∩[A372588(n+1), A005843(n+2)])`
-/

namespace A372589.P14466094246177590269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372589.P14466094246177590269

/-!
# A372590: Numbers whose binary weight (A000120) plus bigomega (A001222) is odd.

The programs for A372590, there is no canonical definition to state claims against.
-/

/-! ## A372590.P13432344303983676064

`comp[A372591(n+1)-1]+1`
-/

namespace A372590.P13432344303983676064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372591 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A372590.P13432344303983676064

/-! ## A372590.P6208855246831626858

`eq[A106400(n), A359154(n+1)]+1`
-/

namespace A372590.P6208855246831626858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372590.P6208855246831626858

/-! ## A372590.P3704253019943282988

`eq[A010060(n+1), A065043(n+1)]+1`
-/

namespace A372590.P3704253019943282988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372590.P3704253019943282988

/-! ## A372590.P16853198453473715532

`eq[A010060(2*n+1), A356163(n+1)]+1`
-/

namespace A372590.P16853198453473715532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372590.P16853198453473715532

/-!
# A372591: Numbers whose binary weight (A000120) plus bigomega (A001222) is even.

The programs for A372591, there is no canonical definition to state claims against.
-/

/-! ## A372591.P15417749136902110208

`eq[char[A028260(n+1)], A010059(n)]`
-/

namespace A372591.P15417749136902110208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A372591.P15417749136902110208

/-! ## A372591.P11013053015045893622

`eq[A010060(n), A356163(n+1)]+1`
-/

namespace A372591.P11013053015045893622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372591.P11013053015045893622

/-! ## A372591.P1430523359929723206

`eq[char[A028260(n+1)], A010060(2*n+1)]`
-/

namespace A372591.P1430523359929723206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A372591.P1430523359929723206

/-! ## A372591.P16839589333825667648

`eq[char[A061019(n+1)], A010060(2*n+1)]`
-/

namespace A372591.P16839589333825667648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A372591.P16839589333825667648

/-! ## A372591.P7595301972952578948

`eq[A106400(2*n+1), A359154(n+1)]+1`
-/

namespace A372591.P7595301972952578948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372591.P7595301972952578948

/-! ## A372591.P7153728293479399390

`eq[A001969(n+1)-2*n, A356163(n+1)]+1`
-/

namespace A372591.P7153728293479399390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A372591.P7153728293479399390

/-!
# A372595: Irregular triangle read by rows, where the n-th row gives the number of steps in the hydra game (the version described in A372478) when the initial hydra is each of the A000108(n) ordered trees with n edges (ordered by lexicographic order of their corresponding Dyck words as in A063171).

The programs for A372595, there is no canonical definition to state claims against.
-/

/-! ## A372595.P4771449203017904184

`A065770(A016027(n+1)*A098641(n))`
-/

namespace A372595.P4771449203017904184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A016027 (n + 1) * A098641 n).toNat

end

end A372595.P4771449203017904184

/-! ## A372595.P12584534230873263563

`A065770(A098641(n)*A276625(n+1))`
-/

namespace A372595.P12584534230873263563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A098641 n * A276625 (n + 1)).toNat

end

end A372595.P12584534230873263563

/-!
# A372599: Number of distinct prime factors of n^n-n.

The programs for A372599, there is no canonical definition to state claims against.
-/

/-! ## A372599.P9333668863830372188

`A002375(n+1)+A000005(A077168(n))`
-/

namespace A372599.P9333668863830372188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) + A000005 (A077168 n).toNat

end

end A372599.P9333668863830372188

/-! ## A372599.P12675284311772197608

`A138011(A000079(n))+A002375(n+1)`
-/

namespace A372599.P12675284311772197608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138011 (A000079 n).toNat + A002375 (n + 1)

end

end A372599.P12675284311772197608

/-! ## A372599.P17708367827862404066

`A049419(A016116(2*(n+1)))+A002375(n+1)`
-/

namespace A372599.P17708367827862404066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A016116 (2 * (n + 1))).toNat + A002375 (n + 1)

end

end A372599.P17708367827862404066

