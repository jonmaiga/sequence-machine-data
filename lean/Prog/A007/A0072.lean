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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A007200: Number of self-avoiding walks on hexagonal lattice, with additional constraints.

The programs for A007200, there is no canonical definition to state claims against.
-/

/-! ## A007200.P1440341067040036720

`A260017(∑[n+1]+2)`
-/

namespace A007200.P1440341067040036720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260017 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A007200.P1440341067040036720

/-!
# A007202: Crystal ball sequence for hexagonal close-packing.

The programs for A007202, the canonical program `A007202.P11912099916043258701` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007202 has offset 0).

The definition of A007202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007202.P11912099916043258701

`round(7/8*((n+1)^4-n^4))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007202

/-- `round(7/8*((n+1)^4-n^4))` -/
def P11912099916043258701.Spec : Prop :=
  ∀ n, P11912099916043258701.a n = A007202 n

theorem P11912099916043258701.correct : P11912099916043258701.Spec := by
  intro n
  simp only [A007202]

end A007202

/-! ## A007202.P8630342711287632068

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=13, a(2)=57, a(3)=153, a(4)=323`
-/

namespace A007202.P8630342711287632068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 57, 153, 323] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A007202.P8630342711287632068

namespace A007202

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P8630342711287632068.Spec : Prop :=
  ∀ n, P8630342711287632068.a n = A007202 n

end A007202

/-! ## A007202.P1947398358382790974

`∑[A007899(n)]`
-/

namespace A007202.P1947398358382790974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007202.P1947398358382790974

namespace A007202

/-- `∑[A007899(n)]` -/
def P1947398358382790974.Spec : Prop :=
  ∀ n, P1947398358382790974.a n = A007202 n

end A007202

/-! ## A007202.P309550932605685469

`A045949(n)+A003215(n)`
-/

namespace A007202.P309550932605685469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045949 n + A003215 n

end

end A007202.P309550932605685469

namespace A007202

/-- `A045949(n)+A003215(n)` -/
def P309550932605685469.Spec : Prop :=
  ∀ n, P309550932605685469.a n = A007202 n

end A007202

/-! ## A007202.P12572585441419386247

`A299290(n)+A002492(n)`
-/

namespace A007202.P12572585441419386247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299290 n + A002492 n

end

end A007202.P12572585441419386247

namespace A007202

/-- `A299290(n)+A002492(n)` -/
def P12572585441419386247.Spec : Prop :=
  ∀ n, P12572585441419386247.a n = A007202 n

end A007202

/-! ## A007202.P12838580227007253726

`A307253(n)+A082040(n)`
-/

namespace A007202.P12838580227007253726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307253 n + A082040 n

end

end A007202.P12838580227007253726

namespace A007202

/-- `A307253(n)+A082040(n)` -/
def P12838580227007253726.Spec : Prop :=
  ∀ n, P12838580227007253726.a n = A007202 n

end A007202

/-! ## A007202.P16519258803119153338

`A374384(n)+A212684(n)`
-/

namespace A007202.P16519258803119153338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374384 n + A212684 n

end

end A007202.P16519258803119153338

namespace A007202

/-- `A374384(n)+A212684(n)` -/
def P16519258803119153338.Spec : Prop :=
  ∀ n, P16519258803119153338.a n = A007202 n

end A007202

/-! ## A007202.P12904370755695570013

`∑[A007590(n)+A005901(n)]`
-/

namespace A007202.P12904370755695570013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A005901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007202.P12904370755695570013

namespace A007202

/-- `∑[A007590(n)+A005901(n)]` -/
def P12904370755695570013.Spec : Prop :=
  ∀ n, P12904370755695570013.a n = A007202 n

end A007202

/-! ## A007202.P485120540506025807

`∑[A010003(n)-A000982(n)]`
-/

namespace A007202.P485120540506025807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007202.P485120540506025807

namespace A007202

/-- `∑[A010003(n)-A000982(n)]` -/
def P485120540506025807.Spec : Prop :=
  ∀ n, P485120540506025807.a n = A007202 n

end A007202

/-! ## A007202.P3876027863370942557

`A063491(n+1)+A011934(n)`
-/

namespace A007202.P3876027863370942557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) + A011934 n

end

end A007202.P3876027863370942557

namespace A007202

/-- `A063491(n+1)+A011934(n)` -/
def P3876027863370942557.Spec : Prop :=
  ∀ n, P3876027863370942557.a n = A007202 n

end A007202

/-! ## A007202.P10509170522805123368

`A256328(n)+A213772(n+1)`
-/

namespace A007202.P10509170522805123368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256328 n + A213772 (n + 1)

end

end A007202.P10509170522805123368

namespace A007202

/-- `A256328(n)+A213772(n+1)` -/
def P10509170522805123368.Spec : Prop :=
  ∀ n, P10509170522805123368.a n = A007202 n

end A007202

/-! ## A007202.P17798111342534263270

`A100171(n+1)-A077043(n)`
-/

namespace A007202.P17798111342534263270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100171 (n + 1) - A077043 n

end

end A007202.P17798111342534263270

namespace A007202

/-- `A100171(n+1)-A077043(n)` -/
def P17798111342534263270.Spec : Prop :=
  ∀ n, P17798111342534263270.a n = A007202 n

end A007202

/-! ## A007202.P14138008278337511960

`A063492(n+1)-A131941(n)`
-/

namespace A007202.P14138008278337511960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063492 (n + 1) - A131941 n

end

end A007202.P14138008278337511960

namespace A007202

/-- `A063492(n+1)-A131941(n)` -/
def P14138008278337511960.Spec : Prop :=
  ∀ n, P14138008278337511960.a n = A007202 n

end A007202

/-! ## A007202.P16749235946910333203

`A050492(n+1)-A212684(n)`
-/

namespace A007202.P16749235946910333203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) - A212684 n

end

end A007202.P16749235946910333203

namespace A007202

/-- `A050492(n+1)-A212684(n)` -/
def P16749235946910333203.Spec : Prop :=
  ∀ n, P16749235946910333203.a n = A007202 n

end A007202

/-! ## A007202.P8418412372049099683

`∑[A005901(n)+∑[A109613(n)-1]]`
-/

namespace A007202.P8418412372049099683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007202.P8418412372049099683

namespace A007202

/-- `∑[A005901(n)+∑[A109613(n)-1]]` -/
def P8418412372049099683.Spec : Prop :=
  ∀ n, P8418412372049099683.a n = A007202 n

end A007202

/-! ## A007202.P6869191052472515238

`A000578(n+1)+A045949(n)-A000578(n)`
-/

namespace A007202.P6869191052472515238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A045949 n - A000578 n)

end

end A007202.P6869191052472515238

namespace A007202

/-- `A000578(n+1)+A045949(n)-A000578(n)` -/
def P6869191052472515238.Spec : Prop :=
  ∀ n, P6869191052472515238.a n = A007202 n

end A007202

/-! ## A007202.P12902927939587403296

`A005917(n+1)-A019298(n)-A019298(n)`
-/

namespace A007202.P12902927939587403296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) - A019298 n - A019298 n

end

end A007202.P12902927939587403296

namespace A007202

/-- `A005917(n+1)-A019298(n)-A019298(n)` -/
def P12902927939587403296.Spec : Prop :=
  ∀ n, P12902927939587403296.a n = A007202 n

end A007202

/-! ## A007202.P11696073948363814664

`Δ[n²²-A212714(n)]`
-/

namespace A007202.P11696073948363814664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007202.P11696073948363814664

namespace A007202

/-- `Δ[n²²-A212714(n)]` -/
def P11696073948363814664.Spec : Prop :=
  ∀ n, P11696073948363814664.a n = A007202 n

end A007202

/-! ## A007202.P5803506144329841299

`∑[A008264(2*n)]`
-/

namespace A007202.P5803506144329841299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007202.P5803506144329841299

namespace A007202

/-- `∑[A008264(2*n)]` -/
def P5803506144329841299.Spec : Prop :=
  ∀ n, P5803506144329841299.a n = A007202 n

end A007202

/-! ## A007202.P16965033649137304239

`A064412(2*n+1)-A077043(n)`
-/

namespace A007202.P16965033649137304239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (2 * n + 1) - A077043 n

end

end A007202.P16965033649137304239

namespace A007202

/-- `A064412(2*n+1)-A077043(n)` -/
def P16965033649137304239.Spec : Prop :=
  ∀ n, P16965033649137304239.a n = A007202 n

end A007202

/-!
# A007203: Number of elements (a b / c d) in GL(2,Z) with |det| = 1, trace n and 0 <= a <= {b, c} <= d.

The programs for A007203, there is no canonical definition to state claims against.
-/

/-! ## A007203.P16973364427700803404

`Δ[A007295(A028310(n))%(n+1)²]`
-/

namespace A007203.P16973364427700803404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007295 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007203.P16973364427700803404

/-! ## A007203.P17128625683836555635

`A000007(n)+Δ[A007295(A028310(n))]`
-/

namespace A007203.P17128625683836555635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A007203.P17128625683836555635

/-! ## A007203.P14960754089903169358

`Δ[A057427(n)+A007295(A028310(n))]`
-/

namespace A007203.P14960754089903169358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A007295 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007203.P14960754089903169358

/-! ## A007203.P2323348474741960686

`Δ[A007295(A028310(n))-A054977(n)]`
-/

namespace A007203.P2323348474741960686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007203.P2323348474741960686

/-! ## A007203.P16496693812312472986

`Δ[A007295(A028310(n))-A057428(n)]`
-/

namespace A007203.P16496693812312472986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007203.P16496693812312472986

/-! ## A007203.P18352108128047642833

`Δ[A007295(A028310(n))]+A000038(n)/2`
-/

namespace A007203.P18352108128047642833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A000038 n : ℚ) / 2

end

end A007203.P18352108128047642833

/-! ## A007203.P11244919648971459636

`A010051(2*(n+1))+Δ[A007295(A028310(n))]`
-/

namespace A007203.P11244919648971459636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A007203.P11244919648971459636

/-! ## A007203.P3729805088921620580

`A007295(n+1)+A000007(n)-A007295(A028310(n))`
-/

namespace A007203.P3729805088921620580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (n + 1) + (A000007 n - A007295 (A028310 n).toNat)

end

end A007203.P3729805088921620580

/-! ## A007203.P4450671709185576168

`A007295(n+1)+A007295(A028310(n))*A057428(n)`
-/

namespace A007203.P4450671709185576168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (n + 1) + A007295 (A028310 n).toNat * A057428 n

end

end A007203.P4450671709185576168

/-! ## A007203.P3619482871718825199

`A007295(n+1)*A054977(n)-A007295(A028310(n))`
-/

namespace A007203.P3619482871718825199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (n + 1) * A054977 n - A007295 (A028310 n).toNat

end

end A007203.P3619482871718825199

/-! ## A007203.P5245943113692697375

`A007295(n+1)-A007295(A028310(n))*A057427(n)`
-/

namespace A007203.P5245943113692697375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (n + 1) - A007295 (A028310 n).toNat * A057427 n

end

end A007203.P5245943113692697375

/-!
# A007204: Crystal ball sequence for D_4 lattice.

The programs for A007204, the canonical program `A007204.P4435489401006619676` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007204 has offset 0).

The definition of A007204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007204.P4435489401006619676

`(2*n²+2*n+1)²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007204

/-- `(2*n²+2*n+1)²` -/
def P4435489401006619676.Spec : Prop :=
  ∀ n, (P4435489401006619676.a n : ℤ) = A007204 n

theorem P4435489401006619676.correct : P4435489401006619676.Spec := by
  intro n
  simp only [A007204]

end A007204

/-! ## A007204.P10899229871034700144

`A016754(n)+A060300(n)`
-/

namespace A007204.P10899229871034700144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A060300 n

end

end A007204.P10899229871034700144

namespace A007204

/-- `A016754(n)+A060300(n)` -/
def P10899229871034700144.Spec : Prop :=
  ∀ n, P10899229871034700144.a n = A007204 n

theorem P10899229871034700144.correct : P10899229871034700144.Spec := by
  intro n
  simp only [A007204, Nat.add_sub_cancel, A007204.P10899229871034700144.a, A007204.P4435489401006619676.a, A016754, A016754.P2987865549988322084.a, A060300, A060300.P1314956441552645560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007204

/-! ## A007204.P9618005850975530754

`or(1, ((n+1)²+n²)²)`
-/

namespace A007204.P9618005850975530754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (((n + 1) ^ 2 + n ^ 2) ^ 2)

end

end A007204.P9618005850975530754

namespace A007204

/-- `or(1, ((n+1)²+n²)²)` -/
def P9618005850975530754.Spec : Prop :=
  ∀ n, (P9618005850975530754.a n : ℤ) = A007204 n

end A007204

/-! ## A007204.P17442579901826165140

`∑[a(n-1)+4]^2` with `a(0)=1, a(1)=4`
-/

namespace A007204.P17442579901826165140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A007204.P17442579901826165140

namespace A007204

/-- `∑[a(n-1)+4]^2` -/
def P17442579901826165140.Spec : Prop :=
  ∀ n, (P17442579901826165140.a n : ℤ) = A007204 n

end A007204

/-! ## A007204.P621479228217319916

`floor(∑[a(n-1)+4]²)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A007204.P621479228217319916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A007204.P621479228217319916

namespace A007204

/-- `floor(∑[a(n-1)+4]²)` -/
def P621479228217319916.Spec : Prop :=
  ∀ n, (P621479228217319916.a n : ℤ) = A007204 n

end A007204

/-! ## A007204.P4081061735651376013

`∑[a(n-1)+8]²/4` with `a(0)=2, a(1)=8`
-/

namespace A007204.P4081061735651376013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A007204.P4081061735651376013

namespace A007204

/-- `∑[a(n-1)+8]²/4` -/
def P4081061735651376013.Spec : Prop :=
  ∀ n, P4081061735651376013.a n = (A007204 n : ℚ)

end A007204

/-! ## A007204.P16058463109068426220

`floor((1-∑[a(n-1)-4])²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A007204.P16058463109068426220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A007204.P16058463109068426220

namespace A007204

/-- `floor((1-∑[a(n-1)-4])²)` -/
def P16058463109068426220.Spec : Prop :=
  ∀ n, P16058463109068426220.a n = A007204 n

end A007204

/-! ## A007204.P11239088727505901496

`record[(lcm(n+1, n-1)-n²)²]`
-/

namespace A007204.P11239088727505901496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ) - (n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007204.P11239088727505901496

namespace A007204

/-- `record[(lcm(n+1, n-1)-n²)²]` -/
def P11239088727505901496.Spec : Prop :=
  ∀ n, P11239088727505901496.a n = A007204 n

end A007204

/-! ## A007204.P11723478686820722577

`record[((1-n)²-lcm(n, 2-n))²]`
-/

namespace A007204.P11723478686820722577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 - (Int.lcm (n : ℤ) (2 - (n : ℤ)) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007204.P11723478686820722577

namespace A007204

/-- `record[((1-n)²-lcm(n, 2-n))²]` -/
def P11723478686820722577.Spec : Prop :=
  ∀ n, P11723478686820722577.a n = A007204 n

end A007204

/-! ## A007204.P1779232670080754365

`∑[A007900(n)]`
-/

namespace A007204.P1779232670080754365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007204.P1779232670080754365

namespace A007204

/-- `∑[A007900(n)]` -/
def P1779232670080754365.Spec : Prop :=
  ∀ n, P1779232670080754365.a n = A007204 n

end A007204

/-! ## A007204.P9955661800984907513

`A288486(n)+1`
-/

namespace A007204.P9955661800984907513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288486 n + 1

end

end A007204.P9955661800984907513

namespace A007204

/-- `A288486(n)+1` -/
def P9955661800984907513.Spec : Prop :=
  ∀ n, P9955661800984907513.a n = A007204 n

theorem P9955661800984907513.correct : P9955661800984907513.Spec := by
  intro n
  simp only [A007204, Nat.add_sub_cancel, A007204.P9955661800984907513.a, A007204.P4435489401006619676.a, A288486, A288486.P17561168282274558050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007204

/-! ## A007204.P2962377646375912889

`A374489(n)-n`
-/

namespace A007204.P2962377646375912889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374489 n - (n : ℤ)

end

end A007204.P2962377646375912889

namespace A007204

/-- `A374489(n)-n` -/
def P2962377646375912889.Spec : Prop :=
  ∀ n, P2962377646375912889.a n = A007204 n

theorem P2962377646375912889.correct : P2962377646375912889.Spec := by
  intro n
  simp only [A007204, Nat.add_sub_cancel, A007204.P2962377646375912889.a, A007204.P4435489401006619676.a, A374489, A374489.P13292996333695838344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007204

/-! ## A007204.P4328609873968659848

`A069894(n)²/4`
-/

namespace A007204.P4328609873968659848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069894 n ^ 2 : ℚ) / 4

end

end A007204.P4328609873968659848

namespace A007204

/-- `A069894(n)²/4` -/
def P4328609873968659848.Spec : Prop :=
  ∀ n, P4328609873968659848.a n = (A007204 n : ℚ)

theorem P4328609873968659848.correct : P4328609873968659848.Spec := by
  intro n
  simp only [A007204, Nat.add_sub_cancel, A007204.P4328609873968659848.a, A007204.P4435489401006619676.a, A069894, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007204

/-! ## A007204.P8526933744633038657

`2*A384288(n)+1`
-/

namespace A007204.P8526933744633038657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384288 n + 1

end

end A007204.P8526933744633038657

namespace A007204

/-- `2*A384288(n)+1` -/
def P8526933744633038657.Spec : Prop :=
  ∀ n, P8526933744633038657.a n = A007204 n

theorem P8526933744633038657.correct : P8526933744633038657.Spec := by
  intro n
  simp only [A007204, Nat.add_sub_cancel, A007204.P8526933744633038657.a, A007204.P4435489401006619676.a, A384288, A384288.P14524936850200947228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007204

/-! ## A007204.P12112029865547253090

`A248698(n)+1+n`
-/

namespace A007204.P12112029865547253090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248698 n + 1 + (n : ℤ)

end

end A007204.P12112029865547253090

namespace A007204

/-- `A248698(n)+1+n` -/
def P12112029865547253090.Spec : Prop :=
  ∀ n, P12112029865547253090.a n = A007204 n

theorem P12112029865547253090.correct : P12112029865547253090.Spec := by
  intro n
  simp only [A007204, Nat.add_sub_cancel, A007204.P12112029865547253090.a, A007204.P4435489401006619676.a, A248698, A248698.P17768782674993239299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007204

/-! ## A007204.P8088242888157986453

`A211412(n)²/a(n-1)` with `a(0)=1`
-/

namespace A007204.P8088242888157986453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A211412 n ^ 2 : ℚ) / a (n - 1)

end

end A007204.P8088242888157986453

namespace A007204

/-- `A211412(n)²/a(n-1)` -/
def P8088242888157986453.Spec : Prop :=
  ∀ n, P8088242888157986453.a n = (A007204 n : ℚ)

end A007204

/-! ## A007204.P12691312378862687660

`A160767(n)+A008893(n)`
-/

namespace A007204.P12691312378862687660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160767 n + A008893 n

end

end A007204.P12691312378862687660

namespace A007204

/-- `A160767(n)+A008893(n)` -/
def P12691312378862687660.Spec : Prop :=
  ∀ n, P12691312378862687660.a n = A007204 n

end A007204

/-! ## A007204.P18165570515094026304

`A254371(n)+A008514(n)`
-/

namespace A007204.P18165570515094026304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254371 n + A008514 n

end

end A007204.P18165570515094026304

namespace A007204

/-- `A254371(n)+A008514(n)` -/
def P18165570515094026304.Spec : Prop :=
  ∀ n, P18165570515094026304.a n = A007204 n

theorem P18165570515094026304.correct : P18165570515094026304.Spec := by
  intro n
  simp only [A007204, Nat.add_sub_cancel, A007204.P18165570515094026304.a, A007204.P4435489401006619676.a, A008514, A008514.P8515702522567387291.a, A254371, A254371.P14441672750536308122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007204

/-! ## A007204.P6394495037083065454

`A339483(n)+A294433(n)`
-/

namespace A007204.P6394495037083065454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n + A294433 n

end

end A007204.P6394495037083065454

namespace A007204

/-- `A339483(n)+A294433(n)` -/
def P6394495037083065454.Spec : Prop :=
  ∀ n, P6394495037083065454.a n = A007204 n

end A007204

/-! ## A007204.P6750078916336887366

`A175110(n)-A060300(n)`
-/

namespace A007204.P6750078916336887366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175110 n - A060300 n

end

end A007204.P6750078916336887366

namespace A007204

/-- `A175110(n)-A060300(n)` -/
def P6750078916336887366.Spec : Prop :=
  ∀ n, P6750078916336887366.a n = A007204 n

end A007204

/-!
# A007206: Magnetization for honeycomb lattice.

The programs for A007206, there is no canonical definition to state claims against.
-/

/-! ## A007206.P7157777503955372231

`2-A182195(A005821(n)+1)`
-/

namespace A007206.P7157777503955372231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A182195 (A005821 n + 1).toNat

end

end A007206.P7157777503955372231

/-!
# A007208: Number of letters in German name of n.

The programs for A007208, there is no canonical definition to state claims against.
-/

/-! ## A007208.P14750024638824591463

`A037200(n)+A037199(n)`
-/

namespace A007208.P14750024638824591463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037200 n + A037199 n

end

end A007208.P14750024638824591463

/-!
# A007209: Number of partitions of n into parts of sizes {a( )} is a(n).

The programs for A007209, there is no canonical definition to state claims against.
-/

/-! ## A007209.P11586495979190138306

`A027592(log2(A000010(2^n)))`
-/

namespace A007209.P11586495979190138306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027592 (SequenceMachineLib.roundAway (Real.logb 2 (A000010 (2 ^ n) : ℝ))).toNat

end

end A007209.P11586495979190138306

/-! ## A007209.P7766299630920132883

`A056556(A002835(n))`
-/

namespace A007209.P7766299630920132883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A002835 n).toNat

end

end A007209.P7766299630920132883

/-! ## A007209.P9625672902063130400

`A056556(A253289(n))`
-/

namespace A007209.P9625672902063130400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A253289 n).toNat

end

end A007209.P9625672902063130400

/-! ## A007209.P9236063286774152315

`A300287(A182616(n+1))`
-/

namespace A007209.P9236063286774152315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A182616 (n + 1)).toNat

end

end A007209.P9236063286774152315

/-!
# A007210: Oscillates under partition transform.

The programs for A007210, there is no canonical definition to state claims against.
-/

/-! ## A007210.P6635376158188003792

`A340988(A007279(n))+A130899(n+1)`
-/

namespace A007210.P6635376158188003792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A007279 n).toNat + 91) + A130899 (n + 1)

end

end A007210.P6635376158188003792

/-! ## A007210.P13531480920788489306

`A249832(A092263(n+1))+A130899(n+1)`
-/

namespace A007210.P13531480920788489306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A092263 (n + 1)).toNat + A130899 (n + 1)

end

end A007210.P13531480920788489306

/-! ## A007210.P5199709563304105827

`A240328(A060133(3*(n+1)))+A130899(n+1)`
-/

namespace A007210.P5199709563304105827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A060133 (3 * (n + 1))).toNat + A130899 (n + 1)

end

end A007210.P5199709563304105827

/-! ## A007210.P7753183564525531264

`A130899(n+1)+A044941(A000079(n))`
-/

namespace A007210.P7753183564525531264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130899 (n + 1) + A044941 (A000079 n).toNat

end

end A007210.P7753183564525531264

/-! ## A007210.P11721924135769167541

`A130899(n+1)+A078926(A000598(n))`
-/

namespace A007210.P11721924135769167541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130899 (n + 1) + A078926 (A000598 n).toNat

end

end A007210.P11721924135769167541

/-!
# A007212: Oscillates under partition transform.

The programs for A007212, there is no canonical definition to state claims against.
-/

/-! ## A007212.P6667906860158590024

`A185284(A008281(n))+A027590(n)`
-/

namespace A007212.P6667906860158590024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008281 n).toNat + A027590 n

end

end A007212.P6667906860158590024

/-! ## A007212.P10267542066073511682

`A027590(n)+A011731(A185214(n))`
-/

namespace A007212.P10267542066073511682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027590 n + A011731 (A185214 n).toNat

end

end A007212.P10267542066073511682

/-! ## A007212.P14356110907951678480

`A185284(A108040(n))+A027590(n)`
-/

namespace A007212.P14356110907951678480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A108040 n).toNat + A027590 n

end

end A007212.P14356110907951678480

/-! ## A007212.P17478699927028719522

`A185284(A008281(n))-(A185284(n)-A027590(n))`
-/

namespace A007212.P17478699927028719522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008281 n).toNat - (A185284 n - A027590 n)

end

end A007212.P17478699927028719522

/-! ## A007212.P3890496163293932477

`A156277(A156279(n))+A027590(n)`
-/

namespace A007212.P3890496163293932477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A156279 n).toNat + A027590 n

end

end A007212.P3890496163293932477

/-!
# A007213: Oscillates under partition transform.

The programs for A007213, there is no canonical definition to state claims against.
-/

/-! ## A007213.P5186506219586229704

`A278529(2*A027596(n+1))`
-/

namespace A007213.P5186506219586229704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (2 * A027596 (n + 1)).toNat

end

end A007213.P5186506219586229704

/-! ## A007213.P12961156037371087518

`A278537(2*A027596(n+1))`
-/

namespace A007213.P12961156037371087518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (2 * A027596 (n + 1)).toNat

end

end A007213.P12961156037371087518

/-! ## A007213.P1736913667906083640

`A027596(n+1)+A000007(A174116(n))`
-/

namespace A007213.P1736913667906083640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027596 (n + 1) + A000007 (A174116 n).toNat

end

end A007213.P1736913667906083640

/-! ## A007213.P8944703084612581585

`A027596(n+1)+A000007(A174124(n))`
-/

namespace A007213.P8944703084612581585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027596 (n + 1) + A000007 (A174124 n).toNat

end

end A007213.P8944703084612581585

/-! ## A007213.P8034414379008275953

`A027596(n+1)%A001481(A027575(n))`
-/

namespace A007213.P8034414379008275953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027596 (n + 1)) (A001481 (A027575 n).toNat)

end

end A007213.P8034414379008275953

/-!
# A007214: Low temperature antiferromagnetic susceptibility for honeycomb lattice.

The programs for A007214, there is no canonical definition to state claims against.
-/

/-! ## A007214.P6658015203135934256

`A002978(n+3)/4`
-/

namespace A007214.P6658015203135934256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002978 (n + 3) : ℚ) / 4

end

end A007214.P6658015203135934256

/-!
# A007215: Low temperature antiferromagnetic susceptibility for square lattice.

The programs for A007215, there is no canonical definition to state claims against.
-/

/-! ## A007215.P4939056061959908025

`A002979(n+2)/4`
-/

namespace A007215.P4939056061959908025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002979 (n + 2) : ℚ) / 4

end

end A007215.P4939056061959908025

/-! ## A007215.P2019451725765245897

`A002265(A002979(n+2))`
-/

namespace A007215.P2019451725765245897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002979 (n + 2)).toNat

end

end A007215.P2019451725765245897

/-! ## A007215.P8142546620651317961

`A008624(A002979(n+2)+1)`
-/

namespace A007215.P8142546620651317961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A002979 (n + 2) + 1).toNat

end

end A007215.P8142546620651317961

/-!
# A007216: Low temperature antiferromagnetic susceptibility for diamond.

The programs for A007216, there is no canonical definition to state claims against.
-/

/-! ## A007216.P17033588344322725085

`A003195(n+2)/4`
-/

namespace A007216.P17033588344322725085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003195 (n + 2) : ℚ) / 4

end

end A007216.P17033588344322725085

/-! ## A007216.P6359779242477928203

`A002265(A003195(n+2))`
-/

namespace A007216.P6359779242477928203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003195 (n + 2)).toNat

end

end A007216.P6359779242477928203

/-! ## A007216.P18271376631112173910

`A008624(A003195(n+2)+1)`
-/

namespace A007216.P18271376631112173910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A003195 (n + 2) + 1).toNat

end

end A007216.P18271376631112173910

/-! ## A007216.P13980383717945625891

`A026922(A003195(n+2)+1)`
-/

namespace A007216.P13980383717945625891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A003195 (n + 2) + 1).toNat

end

end A007216.P13980383717945625891

/-! ## A007216.P766746435232436771

`A130845(A003195(n+2)+1)`
-/

namespace A007216.P766746435232436771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A003195 (n + 2) + 1).toNat

end

end A007216.P766746435232436771

/-!
# A007217: Low temperature antiferromagnetic susceptibility for cubic lattice.

The programs for A007217, there is no canonical definition to state claims against.
-/

/-! ## A007217.P15756233891703233473

`A002915(n+3)/4`
-/

namespace A007217.P15756233891703233473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002915 (n + 3) : ℚ) / 4

end

end A007217.P15756233891703233473

/-!
# A007218: Low temperature series for spin-1/2 Ising antiferromagnetic susceptibility for 3-dimensional b.c.c. lattice.

The programs for A007218, there is no canonical definition to state claims against.
-/

/-! ## A007218.P12219679786070565273

`A003194(n+4)/4`
-/

namespace A007218.P12219679786070565273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003194 (n + 4) : ℚ) / 4

end

end A007218.P12219679786070565273

/-!
# A007219: Number of golygons of order 8n (or serial isogons of order 8n).

The programs for A007219, there is no canonical definition to state claims against.
-/

/-! ## A007219.P15399663305108464425

`A006718(n+1)/4`
-/

namespace A007219.P15399663305108464425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006718 (n + 1) : ℚ) / 4

end

end A007219.P15399663305108464425

/-! ## A007219.P10928029384441219817

`Δ[∑[A006718(n)]/4]`
-/

namespace A007219.P10928029384441219817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006718 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007219.P10928029384441219817

/-! ## A007219.P17532862649424742517

`A060005(n+1)*A107350(n+1)`
-/

namespace A007219.P17532862649424742517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060005 (n + 1) * A107350 (n + 1)

end

end A007219.P17532862649424742517

/-! ## A007219.P7682757302050745369

`A058377(4*(n+1))*A107350(n+1)`
-/

namespace A007219.P7682757302050745369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (4 * (n + 1)) * A107350 (n + 1)

end

end A007219.P7682757302050745369

/-! ## A007219.P17506646109130670201

`(A156700(A103517(n))+A000007(n))*A060005(n+1)`
-/

namespace A007219.P17506646109130670201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156700 (A103517 n).toNat + A000007 n) * A060005 (n + 1)

end

end A007219.P17506646109130670201

/-!
# A007223: Number of distinct perforation patterns for deriving (v,b) = (n+2,n) punctured convolutional codes from (2,1).

The programs for A007223, the canonical program `A007223.P11269491908758022439` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007223 has offset 2).

The definition of A007223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007223.P3817721502476002163

`A050182(n)+A006078(n+2)`
-/

namespace A007223.P3817721502476002163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050182 n + A006078 (n + 2)

end

end A007223.P3817721502476002163

namespace A007223

/-- `A050182(n)+A006078(n+2)` -/
def P3817721502476002163.Spec : Prop :=
  ∀ n, P3817721502476002163.a n = A007223 (n + 2)

end A007223

/-! ## A007223.P17737177532416323587

`A002057(n)-2*A050182(n)`
-/

namespace A007223.P17737177532416323587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - 2 * A050182 n

end

end A007223.P17737177532416323587

namespace A007223

/-- `A002057(n)-2*A050182(n)` -/
def P17737177532416323587.Spec : Prop :=
  ∀ n, P17737177532416323587.a n = A007223 (n + 2)

end A007223

/-! ## A007223.P11269491908758022439

`A000245(n+2)-A000150(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007223

/-- `A000245(n+2)-A000150(n+3)` -/
def P11269491908758022439.Spec : Prop :=
  ∀ n, P11269491908758022439.a n = A007223 (n + 2)

theorem P11269491908758022439.correct : P11269491908758022439.Spec := by
  intro n
  simp only [A007223, Nat.add_sub_cancel]

end A007223

/-! ## A007223.P12744950053901225565

`A007595(n+3)-A000108(n+2)`
-/

namespace A007223.P12744950053901225565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007595 (n + 3) - A000108 (n + 2)

end

end A007223.P12744950053901225565

namespace A007223

/-- `A007595(n+3)-A000108(n+2)` -/
def P12744950053901225565.Spec : Prop :=
  ∀ n, P12744950053901225565.a n = A007223 (n + 2)

end A007223

/-! ## A007223.P1817414489241607778

`record[A000245(abs(1-n))-A000150(n)]`
-/

namespace A007223.P1817414489241607778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - (n : ℤ)|.toNat - A000150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007223.P1817414489241607778

namespace A007223

/-- `record[A000245(abs(1-n))-A000150(n)]` -/
def P1817414489241607778.Spec : Prop :=
  ∀ n, P1817414489241607778.a n = A007223 (n + 2)

end A007223

/-! ## A007223.P8636151880479324138

`A275431(∑[n+1]+2)`
-/

namespace A007223.P8636151880479324138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275431 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A007223.P8636151880479324138

namespace A007223

/-- `A275431(∑[n+1]+2)` -/
def P8636151880479324138.Spec : Prop :=
  ∀ n, P8636151880479324138.a n = A007223 (n + 2)

end A007223

/-! ## A007223.P11370865796185537023

`record[A275431(A080036(n))]`
-/

namespace A007223.P11370865796185537023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275431 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007223.P11370865796185537023

namespace A007223

/-- `record[A275431(A080036(n))]` -/
def P11370865796185537023.Spec : Prop :=
  ∀ n, P11370865796185537023.a n = A007223 (n + 2)

end A007223

/-! ## A007223.P10470474825007671720

`record[A275431(∑[A275437(n)])]`
-/

namespace A007223.P10470474825007671720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275431 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007223.P10470474825007671720

namespace A007223

/-- `record[A275431(∑[A275437(n)])]` -/
def P10470474825007671720.Spec : Prop :=
  ∀ n, P10470474825007671720.a n = A007223 (n + 2)

end A007223

/-! ## A007223.P992299983534447761

`record[gcd(A145677(n), A275431(n+1))]`
-/

namespace A007223.P992299983534447761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145677 n) (A275431 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007223.P992299983534447761

namespace A007223

/-- `record[gcd(A145677(n), A275431(n+1))]` -/
def P992299983534447761.Spec : Prop :=
  ∀ n, (P992299983534447761.a n : ℤ) = A007223 (n + 2)

end A007223

/-!
# A007224: Number of distinct perforation patterns for deriving (v,b) = (n+3,n) punctured convolutional codes from (2,1).

The programs for A007224, there is no canonical definition to state claims against.
-/

/-! ## A007224.P5674336775122593285

`Δ[A003441(n+4)]%A050181(n+3)`
-/

namespace A007224.P5674336775122593285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003441 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A050181 (n + 3))

end

end A007224.P5674336775122593285

/-! ## A007224.P1258682179961824855

`Δ[A000245(n+4)]%A050181(n+4)`
-/

namespace A007224.P1258682179961824855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A050181 (n + 4))

end

end A007224.P1258682179961824855

/-!
# A007225: Number of distinct perforation patterns for deriving (v,b) = (n+4,n) punctured convolutional codes from (2,1).

The programs for A007225, there is no canonical definition to state claims against.
-/

/-! ## A007225.P15252476925932727811

`A260431(A001710(n+3)-A027307(n))`
-/

namespace A007225.P15252476925932727811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260431 (A001710 (n + 3) - A027307 n).toNat

end

end A007225.P15252476925932727811

/-!
# A007226: a(n) = 2*det(M(n; -1))/det(M(n; 0)), where M(n; m) is the n X n matrix with (i,j)-th element equal to 1/binomial(n + i + j + m, n).

The programs for A007226, the canonical program `A007226.P15452380064460553406` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007226 has offset 0).

The definition of A007226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007226.P15452380064460553406

`(2*n+1)*A000139(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007226

/-- `(2*n+1)*A000139(n)` -/
def P15452380064460553406.Spec : Prop :=
  ∀ n, P15452380064460553406.a n = A007226 n

theorem P15452380064460553406.correct : P15452380064460553406.Spec := by
  intro n
  simp only [A007226]

end A007226

/-! ## A007226.P11803651740603075403

`2/(n+1)*C(3*n, n)`
-/

namespace A007226.P11803651740603075403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (Nat.choose (3 * n) n : ℚ)

end

end A007226.P11803651740603075403

namespace A007226

/-- `2/(n+1)*C(3*n, n)` -/
def P11803651740603075403.Spec : Prop :=
  ∀ n, P11803651740603075403.a n = (A007226 n : ℚ)

end A007226

/-! ## A007226.P18014951182710214743

`2*C(3*n, n)-C(3*n, n+1)`
-/

namespace A007226.P18014951182710214743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (3 * n) n : ℤ) - (Nat.choose (3 * n) (n + 1) : ℤ)

end

end A007226.P18014951182710214743

namespace A007226

/-- `2*C(3*n, n)-C(3*n, n+1)` -/
def P18014951182710214743.Spec : Prop :=
  ∀ n, P18014951182710214743.a n = A007226 n

end A007226

/-! ## A007226.P12789934516566970770

`(2*n+1)*2/(n+1)*A001764(n)`
-/

namespace A007226.P12789934516566970770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (2 / (n + 1 : ℚ) * (A001764 n : ℚ))

end

end A007226.P12789934516566970770

namespace A007226

/-- `(2*n+1)*2/(n+1)*A001764(n)` -/
def P12789934516566970770.Spec : Prop :=
  ∀ n, P12789934516566970770.a n = (A007226 n : ℚ)

end A007226

/-! ## A007226.P13586419173071395633

`A006013(n)+A001764(n)`
-/

namespace A007226.P13586419173071395633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + A001764 n

end

end A007226.P13586419173071395633

namespace A007226

/-- `A006013(n)+A001764(n)` -/
def P13586419173071395633.Spec : Prop :=
  ∀ n, P13586419173071395633.a n = A007226 n

end A007226

/-! ## A007226.P822635039068163185

`A000139(n)*A005408(n)`
-/

namespace A007226.P822635039068163185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n * A005408 n

end

end A007226.P822635039068163185

namespace A007226

/-- `A000139(n)*A005408(n)` -/
def P822635039068163185.Spec : Prop :=
  ∀ n, P822635039068163185.a n = A007226 n

theorem P822635039068163185.correct : P822635039068163185.Spec := by
  intro n
  simp only [A007226, Nat.add_sub_cancel, A007226.P822635039068163185.a, A007226.P15452380064460553406.a, A000139, A000139.P8318245190687706795.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007226

/-! ## A007226.P9230959149164690631

`ratio[A000984(n)]*A001764(n)`
-/

namespace A007226.P9230959149164690631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A001764 n : ℚ)

end

end A007226.P9230959149164690631

namespace A007226

/-- `ratio[A000984(n)]*A001764(n)` -/
def P9230959149164690631.Spec : Prop :=
  ∀ n, P9230959149164690631.a n = (A007226 n : ℚ)

end A007226

/-! ## A007226.P1060293978005679739

`A007857(n+1)+A000108(n)`
-/

namespace A007226.P1060293978005679739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007857 (n + 1) + A000108 n

end

end A007226.P1060293978005679739

namespace A007226

/-- `A007857(n+1)+A000108(n)` -/
def P1060293978005679739.Spec : Prop :=
  ∀ n, P1060293978005679739.a n = A007226 n

theorem P1060293978005679739.correct : P1060293978005679739.Spec := by
  intro n
  simp only [A007226, Nat.add_sub_cancel, A007226.P1060293978005679739.a, A007226.P15452380064460553406.a, A000108, A000108.P17551949696095299361.a, A000139, A000139.P8318245190687706795.a, A007857, A007857.P12156564883507010954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007226

/-! ## A007226.P6953428239774057681

`A047749(2*n)+A006013(n)`
-/

namespace A007226.P6953428239774057681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) + A006013 n

end

end A007226.P6953428239774057681

namespace A007226

/-- `A047749(2*n)+A006013(n)` -/
def P6953428239774057681.Spec : Prop :=
  ∀ n, P6953428239774057681.a n = A007226 n

end A007226

/-! ## A007226.P12286897290659761614

`A047749(Δ[n²])+A001764(n)`
-/

namespace A007226.P12286897290659761614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A001764 n

end

end A007226.P12286897290659761614

namespace A007226

/-- `A047749(Δ[n²])+A001764(n)` -/
def P12286897290659761614.Spec : Prop :=
  ∀ n, P12286897290659761614.a n = A007226 n

end A007226

/-! ## A007226.P13319040517861281442

`A047749(2*n+1)+A047749(2*n)`
-/

namespace A007226.P13319040517861281442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n + 1) + A047749 (2 * n)

end

end A007226.P13319040517861281442

namespace A007226

/-- `A047749(2*n+1)+A047749(2*n)` -/
def P13319040517861281442.Spec : Prop :=
  ∀ n, P13319040517861281442.a n = A007226 n

end A007226

/-! ## A007226.P7997156159338474800

`A000139(n)*A008619(A008574(n))`
-/

namespace A007226.P7997156159338474800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n * A008619 (A008574 n).toNat

end

end A007226.P7997156159338474800

namespace A007226

/-- `A000139(n)*A008619(A008574(n))` -/
def P7997156159338474800.Spec : Prop :=
  ∀ n, P7997156159338474800.a n = A007226 n

end A007226

/-! ## A007226.P7494434706155954136

`A000139(n)*A065033(A016813(n))`
-/

namespace A007226.P7494434706155954136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n * A065033 (A016813 n).toNat

end

end A007226.P7494434706155954136

namespace A007226

/-- `A000139(n)*A065033(A016813(n))` -/
def P7494434706155954136.Spec : Prop :=
  ∀ n, P7494434706155954136.a n = A007226 n

end A007226

/-! ## A007226.P3264813896340606274

`A000139(n)*A324965(A022341(2*n))`
-/

namespace A007226.P3264813896340606274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n * A324965 (A022341 (2 * n)).toNat

end

end A007226.P3264813896340606274

namespace A007226

/-- `A000139(n)*A324965(A022341(2*n))` -/
def P3264813896340606274.Spec : Prop :=
  ∀ n, P3264813896340606274.a n = A007226 n

end A007226

/-! ## A007226.P6651690699396690506

`A000984(n+1)/A000984(n)*A001764(n)`
-/

namespace A007226.P6651690699396690506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A000984 n : ℚ) * (A001764 n : ℚ)

end

end A007226.P6651690699396690506

namespace A007226

/-- `A000984(n+1)/A000984(n)*A001764(n)` -/
def P6651690699396690506.Spec : Prop :=
  ∀ n, P6651690699396690506.a n = (A007226 n : ℚ)

end A007226

/-! ## A007226.P2988140211312022488

`A047764(12*n+8)+A047764(A016933(2*n))`
-/

namespace A007226.P2988140211312022488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (12 * n + 8) + A047764 (A016933 (2 * n)).toNat

end

end A007226.P2988140211312022488

namespace A007226

/-- `A047764(12*n+8)+A047764(A016933(2*n))` -/
def P2988140211312022488.Spec : Prop :=
  ∀ n, P2988140211312022488.a n = A007226 n

end A007226

/-! ## A007226.P11697685738403609675

`A001764(n+1)+A001764(n)-A102893(n+1)`
-/

namespace A007226.P11697685738403609675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) + (A001764 n - A102893 (n + 1))

end

end A007226.P11697685738403609675

namespace A007226

/-- `A001764(n+1)+A001764(n)-A102893(n+1)` -/
def P11697685738403609675.Spec : Prop :=
  ∀ n, P11697685738403609675.a n = A007226 n

end A007226

/-! ## A007226.P8102248552343809496

`A121446(n+1)-A113047(n+1)*A113047(n)`
-/

namespace A007226.P8102248552343809496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121446 (n + 1) - A113047 (n + 1) * A113047 n

end

end A007226.P8102248552343809496

namespace A007226

/-- `A121446(n+1)-A113047(n+1)*A113047(n)` -/
def P8102248552343809496.Spec : Prop :=
  ∀ n, P8102248552343809496.a n = A007226 n

end A007226

/-! ## A007226.P11190320176910923400

`A047751(A017581(2*n+1))+A047751(A017581(2*n))`
-/

namespace A007226.P11190320176910923400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (A017581 (2 * n + 1)).toNat + A047751 (A017581 (2 * n)).toNat

end

end A007226.P11190320176910923400

namespace A007226

/-- `A047751(A017581(2*n+1))+A047751(A017581(2*n))` -/
def P11190320176910923400.Spec : Prop :=
  ∀ n, P11190320176910923400.a n = A007226 n

end A007226

/-!
# A007228: a(n) = 3*binomial(4*n,n)/(n+1).

The programs for A007228, the canonical program `A007228.P8985111735471517272` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007228 has offset 0).

The definition of A007228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007228.P8985111735471517272

`3*C(4*n, n)/(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007228

/-- `3*C(4*n, n)/(n+1)` -/
def P8985111735471517272.Spec : Prop :=
  ∀ n, P8985111735471517272.a n = (A007228 n : ℚ)

end A007228

/-! ## A007228.P5449312459783244716

`A000108(n)+A137572(n)+A137571(n)`
-/

namespace A007228.P5449312459783244716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A137572 n + A137571 n)

end

end A007228.P5449312459783244716

namespace A007228

/-- `A000108(n)+A137572(n)+A137571(n)` -/
def P5449312459783244716.Spec : Prop :=
  ∀ n, P5449312459783244716.a n = A007228 n

end A007228

/-! ## A007228.P14647912928645817974

`A006632(n+1)+A069271(n)+A002293(n)`
-/

namespace A007228.P14647912928645817974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1) + (A069271 n + A002293 n)

end

end A007228.P14647912928645817974

namespace A007228

/-- `A006632(n+1)+A069271(n)+A002293(n)` -/
def P14647912928645817974.Spec : Prop :=
  ∀ n, P14647912928645817974.a n = A007228 n

end A007228

/-! ## A007228.P7166097636580481810

`3/(n+1)*A005810(n)`
-/

namespace A007228.P7166097636580481810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A005810 n : ℚ)

end

end A007228.P7166097636580481810

namespace A007228

/-- `3/(n+1)*A005810(n)` -/
def P7166097636580481810.Spec : Prop :=
  ∀ n, P7166097636580481810.a n = (A007228 n : ℚ)

end A007228

/-! ## A007228.P2339022810938807414

`3*A001651(A005408(n))*A002293(n)/(n+1)`
-/

namespace A007228.P2339022810938807414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A001651 (A005408 n).toNat * A002293 n : ℚ) / (n + 1 : ℚ))

end

end A007228.P2339022810938807414

namespace A007228

/-- `3*A001651(A005408(n))*A002293(n)/(n+1)` -/
def P2339022810938807414.Spec : Prop :=
  ∀ n, P2339022810938807414.a n = (A007228 n : ℚ)

end A007228

/-! ## A007228.P2820290795934200

`A002293(n)*A008619(A008458(n))*3/(n+1)`
-/

namespace A007228.P2820290795934200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002293 n * A008619 (A008458 n).toNat : ℚ) * (3 / (n + 1 : ℚ))

end

end A007228.P2820290795934200

namespace A007228

/-- `A002293(n)*A008619(A008458(n))*3/(n+1)` -/
def P2820290795934200.Spec : Prop :=
  ∀ n, P2820290795934200.a n = (A007228 n : ℚ)

end A007228

/-!
# A007230: Number of free subsets of multiplicative group of GF(2^n).

The programs for A007230, there is no canonical definition to state claims against.
-/

/-! ## A007230.P17548900452272154039

`2^n-A000013((n+1)/2^val(n+1, 2))`
-/

namespace A007230.P17548900452272154039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A007230.P17548900452272154039

/-! ## A007230.P5088013438158331952

`2^n-A000016((n+1)/2^val(n+1, 2))`
-/

namespace A007230.P5088013438158331952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000016 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A007230.P5088013438158331952

/-! ## A007230.P13303304198144946067

`2^n-A053656((n+1)/2^val(n+1, 2))`
-/

namespace A007230.P13303304198144946067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A053656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A007230.P13303304198144946067

/-! ## A007230.P10656928184871739892

`2^n-A300190((n+1)/2^val(n+1, 2))`
-/

namespace A007230.P10656928184871739892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A300190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A007230.P10656928184871739892

/-! ## A007230.P14446565211696711311

`2^n-A300218((n+1)/2^val(n+1, 2))`
-/

namespace A007230.P14446565211696711311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A300218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A007230.P14446565211696711311

/-!
# A007231: Number of free subsets of multiplicative group of GF(3^n).

The programs for A007231, there is no canonical definition to state claims against.
-/

/-! ## A007231.P563895874903060297

`A180125(3^(n+1)-1)`
-/

namespace A007231.P563895874903060297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180125 (3 ^ (n + 1) - 1)

end

end A007231.P563895874903060297

/-! ## A007231.P5334216487003982266

`record[Δ[A254048(A060647(n))]]`
-/

namespace A007231.P5334216487003982266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (A060647 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007231.P5334216487003982266

/-! ## A007231.P11142480353066141817

`record[Δ[A126760(A062318(n+1))]]`
-/

namespace A007231.P11142480353066141817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A062318 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007231.P11142480353066141817

/-! ## A007231.P8848084980224866321

`A004523(A225381(∑[2*3^n]))`
-/

namespace A007231.P8848084980224866321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A225381 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007231.P8848084980224866321

/-!
# A007233: Number of free subsets of multiplicative group of GF(7^n).

The programs for A007233, there is no canonical definition to state claims against.
-/

/-! ## A007233.P6845219456006437332

`A129527(round(7^(n+1)/3))`
-/

namespace A007233.P6845219456006437332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (SequenceMachineLib.roundAway ((7 ^ (n + 1) : ℚ) / 3)).toNat

end

end A007233.P6845219456006437332

/-!
# A007234: Number of (x -> x^2)-free subsets of symmetric group.

The programs for A007234, there is no canonical definition to state claims against.
-/

/-! ## A007234.P14329387532507973060

`and(1-A192824(n), A192810(n))`
-/

namespace A007234.P14329387532507973060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A192824 n) (A192810 n)

end

end A007234.P14329387532507973060

/-! ## A007234.P8069380848234084346

`and(A327062(n)+7, A003482(n))`
-/

namespace A007234.P8069380848234084346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327062 n + 7) (A003482 n)

end

end A007234.P8069380848234084346

/-!
# A007237: Number of triangles with integer sides and area = n times perimeter.

The programs for A007237, there is no canonical definition to state claims against.
-/

/-! ## A007237.P1556028791595356121

`A120062(2*(n+1))`
-/

namespace A007237.P1556028791595356121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120062 (2 * (n + 1))

end

end A007237.P1556028791595356121

/-! ## A007237.P4995436192757582046

`∑{d}[2*(n+1), A120252(#)]`
-/

namespace A007237.P4995436192757582046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120252 d

end

end A007237.P4995436192757582046

/-! ## A007237.P16045392648058939155

`A000027(∑{d}[n+2+n, A120252(#)])`
-/

namespace A007237.P16045392648058939155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), A120252 d).toNat

end

end A007237.P16045392648058939155

/-! ## A007237.P10791368049992552422

`A063520((2*(n+1))²)`
-/

namespace A007237.P10791368049992552422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063520 ((2 * (n + 1)) ^ 2)

end

end A007237.P10791368049992552422

/-!
# A007238: Length of longest chain of subgroups in S_n.

The programs for A007238, the canonical program `A007238.P4543630219130600266` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007238 has offset 1).

The definition of A007238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007238.P4543630219130600266

`floor((3*(n+1)-1)/2)-A000120(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007238

/-- `floor((3*(n+1)-1)/2)-A000120(n+1)` -/
def P4543630219130600266.Spec : Prop :=
  ∀ n, P4543630219130600266.a n = A007238 (n + 1)

theorem P4543630219130600266.correct : P4543630219130600266.Spec := by
  intro n
  simp only [A007238, Nat.add_sub_cancel]

end A007238

/-! ## A007238.P12746141405006278232

`∑[val(lcm(2, n+1), 2)]-1`
-/

namespace A007238.P12746141405006278232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm 2 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A007238.P12746141405006278232

namespace A007238

/-- `∑[val(lcm(2, n+1), 2)]-1` -/
def P12746141405006278232.Spec : Prop :=
  ∀ n, P12746141405006278232.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P17893580890049179155

`∑[val(C(n, 3)+1, 2)]+n`
-/

namespace A007238.P17893580890049179155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose n 3 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007238.P17893580890049179155

namespace A007238

/-- `∑[val(C(n, 3)+1, 2)]+n` -/
def P17893580890049179155.Spec : Prop :=
  ∀ n, (P17893580890049179155.a n : ℤ) = A007238 (n + 1)

end A007238

/-! ## A007238.P9850554612441281758

`∑[val((n+1)*∏{p}[n, #], 2)]`
-/

namespace A007238.P9850554612441281758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007238.P9850554612441281758

namespace A007238

/-- `∑[val((n+1)*∏{p}[n, #], 2)]` -/
def P9850554612441281758.Spec : Prop :=
  ∀ n, (P9850554612441281758.a n : ℤ) = A007238 (n + 1)

end A007238

/-! ## A007238.P1109574211937657238

`∑[val(n+1, 2)]+floor(n/2)`
-/

namespace A007238.P1109574211937657238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋

end

end A007238.P1109574211937657238

namespace A007238

/-- `∑[val(n+1, 2)]+floor(n/2)` -/
def P1109574211937657238.Spec : Prop :=
  ∀ n, P1109574211937657238.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P17618925091051826928

`∑[val(n+1, 2)^and(1, n)]-1`
-/

namespace A007238.P17618925091051826928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A007238.P17618925091051826928

namespace A007238

/-- `∑[val(n+1, 2)^and(1, n)]-1` -/
def P17618925091051826928.Spec : Prop :=
  ∀ n, P17618925091051826928.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P6823439934342884276

`∑[val(n+1, 2)^(-(n%2))^∑[n]]`
-/

namespace A007238.P6823439934342884276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) ^ ((-((n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007238.P6823439934342884276

namespace A007238

/-- `∑[val(n+1, 2)^(-(n%2))^∑[n]]` -/
def P6823439934342884276.Spec : Prop :=
  ∀ n, P6823439934342884276.a n = (A007238 (n + 1) : ℚ)

end A007238

/-! ## A007238.P15402457168350845217

`∑[A028310(val(n+1, 2))]-1`
-/

namespace A007238.P15402457168350845217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007238.P15402457168350845217

namespace A007238

/-- `∑[A028310(val(n+1, 2))]-1` -/
def P15402457168350845217.Spec : Prop :=
  ∀ n, P15402457168350845217.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P1216811362172749473

`∑[∏{e}[A006519(n+1), #]]-1`
-/

namespace A007238.P1216811362172749473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A007238.P1216811362172749473

namespace A007238

/-- `∑[∏{e}[A006519(n+1), #]]-1` -/
def P1216811362172749473.Spec : Prop :=
  ∀ n, P1216811362172749473.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P9787147696548934102

`∑[A070824(n+1-and(n, n+1))]+n`
-/

namespace A007238.P9787147696548934102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1 - Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007238.P9787147696548934102

namespace A007238

/-- `∑[A070824(n+1-and(n, n+1))]+n` -/
def P9787147696548934102.Spec : Prop :=
  ∀ n, P9787147696548934102.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P7023804133362714082

`A011371(A110654(n))+n`
-/

namespace A007238.P7023804133362714082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A110654 n).toNat + (n : ℤ)

end

end A007238.P7023804133362714082

namespace A007238

/-- `A011371(A110654(n))+n` -/
def P7023804133362714082.Spec : Prop :=
  ∀ n, P7023804133362714082.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P17671904882224197174

`A032766(n)-A048881(n)`
-/

namespace A007238.P17671904882224197174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n - A048881 n

end

end A007238.P17671904882224197174

namespace A007238

/-- `A032766(n)-A048881(n)` -/
def P17671904882224197174.Spec : Prop :=
  ∀ n, P17671904882224197174.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P8686020863473904196

`A283208(n)-A110654(n)`
-/

namespace A007238.P8686020863473904196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n - A110654 n

end

end A007238.P8686020863473904196

namespace A007238

/-- `A283208(n)-A110654(n)` -/
def P8686020863473904196.Spec : Prop :=
  ∀ n, P8686020863473904196.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P9802311827692147720

`A011371(n+1)+A004526(n)`
-/

namespace A007238.P9802311827692147720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + A004526 n

end

end A007238.P9802311827692147720

namespace A007238

/-- `A011371(n+1)+A004526(n)` -/
def P9802311827692147720.Spec : Prop :=
  ∀ n, P9802311827692147720.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P6536995977052124447

`∑[A007814(A003557(n+1))]+n`
-/

namespace A007238.P6536995977052124447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007238.P6536995977052124447

namespace A007238

/-- `∑[A007814(A003557(n+1))]+n` -/
def P6536995977052124447.Spec : Prop :=
  ∀ n, P6536995977052124447.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P12057725911773934007

`A004526(n)+∑[A007814(n+1)]`
-/

namespace A007238.P12057725911773934007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007238.P12057725911773934007

namespace A007238

/-- `A004526(n)+∑[A007814(n+1)]` -/
def P12057725911773934007.Spec : Prop :=
  ∀ n, P12057725911773934007.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P13008097483192183872

`∑[A007814(A048735(n)+1)]+n`
-/

namespace A007238.P13008097483192183872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048735 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007238.P13008097483192183872

namespace A007238

/-- `∑[A007814(A048735(n)+1)]+n` -/
def P13008097483192183872.Spec : Prop :=
  ∀ n, P13008097483192183872.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P8267768722815942873

`A005187(n+1)-A008619(n+1)`
-/

namespace A007238.P8267768722815942873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A008619 (n + 1)

end

end A007238.P8267768722815942873

namespace A007238

/-- `A005187(n+1)-A008619(n+1)` -/
def P8267768722815942873.Spec : Prop :=
  ∀ n, P8267768722815942873.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P2104900370646590561

`∑[A007814(n+1)]+A008619(n)-1`
-/

namespace A007238.P2104900370646590561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A008619 n - 1)

end

end A007238.P2104900370646590561

namespace A007238

/-- `∑[A007814(n+1)]+A008619(n)-1` -/
def P2104900370646590561.Spec : Prop :=
  ∀ n, P2104900370646590561.a n = A007238 (n + 1)

end A007238

/-! ## A007238.P3147626297382065895

`A007494(n+1)-(A000120(n+1)+1)`
-/

namespace A007238.P3147626297382065895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1) - (A000120 (n + 1) + 1)

end

end A007238.P3147626297382065895

namespace A007238

/-- `A007494(n+1)-(A000120(n+1)+1)` -/
def P3147626297382065895.Spec : Prop :=
  ∀ n, P3147626297382065895.a n = A007238 (n + 1)

end A007238

/-!
# A007239: Energy function for hexagonal lattice.

The programs for A007239, there is no canonical definition to state claims against.
-/

/-! ## A007239.P4348623172302716008

`∑[A118335(A001006(n))]`
-/

namespace A007239.P4348623172302716008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118335 (A001006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007239.P4348623172302716008

/-! ## A007239.P15842789302312272052

`3*A278814(A321278(n+1))`
-/

namespace A007239.P15842789302312272052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A278814 (A321278 (n + 1)).toNat

end

end A007239.P15842789302312272052

/-! ## A007239.P2187618612037521527

`∑[3*A140204(A259361(3*n!))]`
-/

namespace A007239.P2187618612037521527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140204 (A259361 (3 * Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007239.P2187618612037521527

/-!
# A007245: McKay-Thompson series of class 3C for the Monster group.

The programs for A007245, there is no canonical definition to state claims against.
-/

/-! ## A007245.P2631915978003443149

`abs(A327959(n))`
-/

namespace A007245.P2631915978003443149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A327959 n|

end

end A007245.P2631915978003443149

/-! ## A007245.P17450593356167155221

`A033999(n)*A327959(n)`
-/

namespace A007245.P17450593356167155221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A327959 n

end

end A007245.P17450593356167155221

/-! ## A007245.P15175697180361279508

`gcd(A000038(n), A327959(n))`
-/

namespace A007245.P15175697180361279508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A327959 n)

end

end A007245.P15175697180361279508

/-! ## A007245.P3103846922786618851

`lcm(A000034(n), A327959(n))`
-/

namespace A007245.P3103846922786618851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A327959 n)

end

end A007245.P3103846922786618851

/-! ## A007245.P3561514473540332745

`gcd(2*A000007(n), -A327959(n))`
-/

namespace A007245.P3561514473540332745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A000007 n) (-A327959 n)

end

end A007245.P3561514473540332745

/-!
# A007247: McKay-Thompson series of class 4B for the Monster group.

The programs for A007247, there is no canonical definition to state claims against.
-/

/-! ## A007247.P2638414608731336999

`2*A007249(n)-A007250(n)`
-/

namespace A007247.P2638414608731336999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007249 n - A007250 n

end

end A007247.P2638414608731336999

/-! ## A007247.P16264861177710396645

`2*A007249(n)+A007250(n)*A286714(gcd(n, n+1))`
-/

namespace A007247.P16264861177710396645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007249 n + A007250 n * A286714 (Nat.gcd n (n + 1))

end

end A007247.P16264861177710396645

/-!
# A007248: McKay-Thompson series of class 4C for the Monster group.

The programs for A007248, there is no canonical definition to state claims against.
-/

/-! ## A007248.P5623793582131286046

`A033999(n)*A112144(n)`
-/

namespace A007248.P5623793582131286046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112144 n

end

end A007248.P5623793582131286046

/-!
# A007249: McKay-Thompson series of class 4D for the Monster group.

The programs for A007249, there is no canonical definition to state claims against.
-/

/-! ## A007249.P13222277456621738578

`(-1)^n*A112142(n)`
-/

namespace A007249.P13222277456621738578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112142 n

end

end A007249.P13222277456621738578

/-! ## A007249.P15195559718965766720

`A112142(n)/A033999(n)`
-/

namespace A007249.P15195559718965766720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112142 n : ℚ) / (A033999 n : ℚ)

end

end A007249.P15195559718965766720

/-! ## A007249.P13251353061421391158

`2*A029841(n)-A007248(n)`
-/

namespace A007249.P13251353061421391158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029841 n - A007248 n

end

end A007249.P13251353061421391158

/-! ## A007249.P1135175305471378099

`(A007250(n)+A007247(n))/2`
-/

namespace A007249.P1135175305471378099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007250 n + A007247 n : ℚ) / 2

end

end A007249.P1135175305471378099

/-!
# A007250: McKay-Thompson series of class 4a for the Monster group.

The programs for A007250, there is no canonical definition to state claims against.
-/

/-! ## A007250.P12776675841853639180

`2*A007249(n)-A007247(n)`
-/

namespace A007250.P12776675841853639180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007249 n - A007247 n

end

end A007250.P12776675841853639180

/-!
# A007259: Expansion of Product_{m>=1} (1 + q^m)^(-8).

The programs for A007259, there is no canonical definition to state claims against.
-/

/-! ## A007259.P8875311138203167178

`A033999(n)*A101127(n)`
-/

namespace A007259.P8875311138203167178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A101127 n

end

end A007259.P8875311138203167178

/-! ## A007259.P8741133285684095534

`ratio[A057077(n)]*A101127(n)`
-/

namespace A007259.P8741133285684095534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A101127 n : ℚ)

end

end A007259.P8741133285684095534

/-! ## A007259.P2024106140890267225

`A057077(2*n)*A101127(n)`
-/

namespace A007259.P2024106140890267225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A101127 n

end

end A007259.P2024106140890267225

/-! ## A007259.P13722792695823173182

`A101127(n)/A033999(n)^A061550(n)`
-/

namespace A007259.P13722792695823173182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101127 n : ℚ) / (A033999 n : ℚ) ^ (A061550 n : ℤ)

end

end A007259.P13722792695823173182

/-! ## A007259.P2718806737118147093

`A101127(n)/A033999(n)^A243527(n+1)`
-/

namespace A007259.P2718806737118147093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101127 n : ℚ) / (A033999 n : ℚ) ^ (A243527 (n + 1) : ℤ)

end

end A007259.P2718806737118147093

/-! ## A007259.P1471065164827677972

`∑[A002448(n²)]*A101127(n)`
-/

namespace A007259.P1471065164827677972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A101127 n

end

end A007259.P1471065164827677972

/-!
# A007260: McKay-Thompson series of class 6a for Monster.

The programs for A007260, there is no canonical definition to state claims against.
-/

/-! ## A007260.P6402077370772364314

`2*A007262(n)-A007261(n)`
-/

namespace A007260.P6402077370772364314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007262 n - A007261 n

end

end A007260.P6402077370772364314

/-!
# A007261: McKay-Thompson series of class 6b for the Monster group.

The programs for A007261, there is no canonical definition to state claims against.
-/

/-! ## A007261.P1671086577894951449

`2*A007262(n)-A007260(n)`
-/

namespace A007261.P1671086577894951449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007262 n - A007260 n

end

end A007261.P1671086577894951449

/-!
# A007262: McKay-Thompson series of class 6c for Monster.

The programs for A007262, there is no canonical definition to state claims against.
-/

/-! ## A007262.P3422961080286034759

`A033999(n)*A132107(n)`
-/

namespace A007262.P3422961080286034759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132107 n

end

end A007262.P3422961080286034759

/-! ## A007262.P5855714170018294625

`(A004442(n)-n)*A132107(n)`
-/

namespace A007262.P5855714170018294625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A132107 n

end

end A007262.P5855714170018294625

/-! ## A007262.P2435103638325109521

`(A014681(n+1)-(n+1))*A132107(n)`
-/

namespace A007262.P2435103638325109521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) - (n + 1 : ℤ)) * A132107 n

end

end A007262.P2435103638325109521

/-! ## A007262.P12296241688698814407

`A112299(2*n+1)*A132107(n)`
-/

namespace A007262.P12296241688698814407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (2 * n + 1) * A132107 n

end

end A007262.P12296241688698814407

/-! ## A007262.P17719813365778012113

`A132107(n)*A309873((2-n)²+1)`
-/

namespace A007262.P17719813365778012113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132107 n * A309873 ((2 - (n : ℤ)) ^ 2 + 1).toNat

end

end A007262.P17719813365778012113

/-!
# A007263: Coefficients of completely replicable function "6d".

The programs for A007263, there is no canonical definition to state claims against.
-/

/-! ## A007263.P2065041517507002379

`Δ[A016002(∑[A000260(n)])]`
-/

namespace A007263.P2065041517507002379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016002 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007263.P2065041517507002379

/-!
# A007268: Number of partition graphs on n vertices.

The programs for A007268, there is no canonical definition to state claims against.
-/

/-! ## A007268.P11327189515160538728

`A081753(∑[A055192(n+2)]-1)`
-/

namespace A007268.P11327189515160538728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055192 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A007268.P11327189515160538728

/-! ## A007268.P15672357414249593312

`A165190(a(n-1)*A114964(n))` with `a(0)=1, a(1)=0`
-/

namespace A007268.P15672357414249593312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A165190 (a (n - 1) * A114964 n).toNat

end

end A007268.P15672357414249593312

/-! ## A007268.P6694099508984894300

`A056811(A000301(n))+A000296(n)`
-/

namespace A007268.P6694099508984894300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A000301 n).toNat + A000296 n

end

end A007268.P6694099508984894300

/-! ## A007268.P16749536612518913281

`A111650(A005161(n))-A000034(n)`
-/

namespace A007268.P16749536612518913281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (A005161 n).toNat - A000034 n

end

end A007268.P16749536612518913281

/-!
# A007269: Number of general partition graphs on n vertices.

The programs for A007269, there is no canonical definition to state claims against.
-/

/-! ## A007269.P18296486399580297158

`A337498(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A007269.P18296486399580297158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A337498 (a (n - 1)).toNat

end

end A007269.P18296486399580297158

/-! ## A007269.P15913769412637450441

`A165706(floor(∏[n+1]/4))`
-/

namespace A007269.P15913769412637450441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋.toNat

end

end A007269.P15913769412637450441

/-! ## A007269.P9497844173500204844

`A292050(A051286(n))`
-/

namespace A007269.P9497844173500204844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A051286 n).toNat

end

end A007269.P9497844173500204844

/-!
# A007272: Super ballot numbers: 60*(2n)!/(n!*(n+3)!).

The programs for A007272, the canonical program `A007272.P938379743766536373` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007272 has offset 0).

The definition of A007272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007272.P938379743766536373

`60*(2*n)!/(n!*(n+3)!)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007272

/-- `60*(2*n)!/(n!*(n+3)!)` -/
def P938379743766536373.Spec : Prop :=
  ∀ n, P938379743766536373.a n = (A007272 n : ℚ)

end A007272

/-! ## A007272.P7907984272160942686

`5*A007054(n+1)/Δ[n²]`
-/

namespace A007272.P7907984272160942686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A007054 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A007272.P7907984272160942686

namespace A007272

/-- `5*A007054(n+1)/Δ[n²]` -/
def P7907984272160942686.Spec : Prop :=
  ∀ n, P7907984272160942686.a n = (A007272 n : ℚ)

end A007272

/-! ## A007272.P5794501151591871389

`4*A007054(n)-A007054(n+1)`
-/

namespace A007272.P5794501151591871389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007054 n - A007054 (n + 1)

end

end A007272.P5794501151591871389

namespace A007272

/-- `4*A007054(n)-A007054(n+1)` -/
def P5794501151591871389.Spec : Prop :=
  ∀ n, P5794501151591871389.a n = A007272 n

end A007272

/-! ## A007272.P14122146430803900037

`A078818(n)/∑[n+1]`
-/

namespace A007272.P14122146430803900037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078818 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A007272.P14122146430803900037

namespace A007272

/-- `A078818(n)/∑[n+1]` -/
def P14122146430803900037.Spec : Prop :=
  ∀ n, P14122146430803900037.a n = (A007272 n : ℚ)

end A007272

/-! ## A007272.P12259678213213879317

`10/∑[∑[n+1]]*A000984(n)`
-/

namespace A007272.P12259678213213879317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (A000984 n : ℚ)

end

end A007272.P12259678213213879317

namespace A007272

/-- `10/∑[∑[n+1]]*A000984(n)` -/
def P12259678213213879317.Spec : Prop :=
  ∀ n, P12259678213213879317.a n = (A007272 n : ℚ)

end A007272

/-! ## A007272.P16614169322149030062

`A068555(A167614(n+2))/2`
-/

namespace A007272.P16614169322149030062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A167614 (n + 2)).toNat : ℚ) / 2

end

end A007272.P16614169322149030062

namespace A007272

/-- `A068555(A167614(n+2))/2` -/
def P16614169322149030062.Spec : Prop :=
  ∀ n, P16614169322149030062.a n = (A007272 n : ℚ)

end A007272

/-! ## A007272.P4276219005777029117

`A068555(A166136(n+2)-3)/2`
-/

namespace A007272.P4276219005777029117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A166136 (n + 2) - 3).toNat : ℚ) / 2

end

end A007272.P4276219005777029117

namespace A007272

/-- `A068555(A166136(n+2)-3)/2` -/
def P4276219005777029117.Spec : Prop :=
  ∀ n, P4276219005777029117.a n = (A007272 n : ℚ)

end A007272

/-!
# A007273: Inverse of 1155th cyclotomic polynomial.

The programs for A007273, there is no canonical definition to state claims against.
-/

/-! ## A007273.P11207210271942908410

`A016319(n)*A033999(n)`
-/

namespace A007273.P11207210271942908410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016319 n * A033999 n

end

end A007273.P11207210271942908410

/-!
# A007274: Walks on hexagonal lattice using each point at most twice.

The programs for A007274, there is no canonical definition to state claims against.
-/

/-! ## A007274.P803802198621521665

`record[A278219(lcm(3*∑{p}[1-n, #], n!))]`
-/

namespace A007274.P803802198621521665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (Nat.lcm (3 * (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p)) (Nat.factorial n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007274.P803802198621521665

/-!
# A007275: Walks on hexagonal lattice using each point at most three times.

The programs for A007275, there is no canonical definition to state claims against.
-/

/-! ## A007275.P10298541375322380331

`A000400(n)-A102124(A098841(2*n+5))`
-/

namespace A007275.P10298541375322380331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A102124 (A098841 (2 * n + 5)).toNat

end

end A007275.P10298541375322380331

/-!
# A007279: Number of partitions of n into partition numbers.

The programs for A007279, there is no canonical definition to state claims against.
-/

/-! ## A007279.P15867675937046943075

`A002024(A332579(3*(n+1))+A253170(n+1))`
-/

namespace A007279.P15867675937046943075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A332579 (3 * (n + 1)) + A253170 (n + 1)).toNat

end

end A007279.P15867675937046943075

/-! ## A007279.P3031938893256607496

`A000196(∑[A262987(n)])`
-/

namespace A007279.P3031938893256607496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007279.P3031938893256607496

/-! ## A007279.P7339496056750841577

`A100617(A160461(n)-n)`
-/

namespace A007279.P7339496056750841577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A160461 n - (n : ℤ)).toNat

end

end A007279.P7339496056750841577

/-! ## A007279.P7725878242004838772

`A137735(∑[A262987(n)]-1)`
-/

namespace A007279.P7725878242004838772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A007279.P7725878242004838772

/-! ## A007279.P3410173063050326326

`A000196(∑[A132217(2*n)])`
-/

namespace A007279.P3410173063050326326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007279.P3410173063050326326

/-!
# A007280: Multiplicative encoding of partition triangle.

The programs for A007280, there is no canonical definition to state claims against.
-/

/-! ## A007280.P12649351949045601372

`∏[A045965(record[A322702(n+1)])]`
-/

namespace A007280.P12649351949045601372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007280.P12649351949045601372

/-! ## A007280.P15786267379210773204

`A025487(A363456(n+1))/A138534(n)`
-/

namespace A007280.P15786267379210773204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (A363456 (n + 1)).toNat : ℚ) / (A138534 n : ℚ)

end

end A007280.P15786267379210773204

/-!
# A007282: Number of hexaflexagons with 3n triangles that can be folded from a straight strip of paper.

The programs for A007282, there is no canonical definition to state claims against.
-/

/-! ## A007282.P12970594722005368389

`A078898(A002709(n)+C(2*n+1, ceil(n/2))/(2*n+1))`
-/

namespace A007282.P12970594722005368389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.roundAway ((A002709 n : ℚ) + (Nat.choose (2 * n + 1) ⌈(n : ℚ) / 2⌉.toNat : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A007282.P12970594722005368389

/-! ## A007282.P4862069726388978978

`A274790(A023193(n!))`
-/

namespace A007282.P4862069726388978978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (A023193 (Nat.factorial n)).toNat

end

end A007282.P4862069726388978978

/-! ## A007282.P2057283524275251058

`A008615(or(4, A133053(n)))`
-/

namespace A007282.P2057283524275251058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor 4 (A133053 n)).toNat

end

end A007282.P2057283524275251058

/-!
# A007283: a(n) = 3*2^n.

The programs for A007283, the canonical program `A007283.P7218590649391847614` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007283 has offset 0).

The definition of A007283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n` (program `A007283.P7218590649391847614`, by `A007283.P7218590649391847614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007283.P7218590649391847614

`3*2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007283

/-- `3*2^n` -/
def P7218590649391847614.Spec : Prop :=
  ∀ n, (P7218590649391847614.a n : ℤ) = A007283 n

theorem P7218590649391847614.correct : P7218590649391847614.Spec := by
  intro n
  simp only [A007283]

end A007283

/-!
# A007284: Horizontally symmetric numbers.

The programs for A007284, there is no canonical definition to state claims against.
-/

/-! ## A007284.P16783401490574355706

`A046030(n+1)-A007088(A059906(n))`
-/

namespace A007284.P16783401490574355706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1) - A007088 (A059906 n).toNat

end

end A007284.P16783401490574355706

/-! ## A007284.P7680174095412357738

`A046030(n+1)-A106747(A007090(n))`
-/

namespace A007284.P7680174095412357738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1) - A106747 (A007090 n).toNat

end

end A007284.P7680174095412357738

/-! ## A007284.P6011399869523309245

`lt[A054055(A222232(n)), 4]`
-/

namespace A007284.P6011399869523309245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222232 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007284.P6011399869523309245

/-! ## A007284.P1900842375507742241

`A222254(eq[n, A222246(A107128(n))])`
-/

namespace A007284.P1900842375507742241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A107128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007284.P1900842375507742241

/-! ## A007284.P8812194153616073190

`eq[n, A222246(A222241(A222233(n)))]`
-/

namespace A007284.P8812194153616073190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222241 (A222233 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007284.P8812194153616073190

/-! ## A007284.P2286989966800308843

`record[A222248(n)-A106747(A107130(n))]`
-/

namespace A007284.P2286989966800308843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n - A106747 (A107130 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007284.P2286989966800308843

/-! ## A007284.P6355936472104781939

`record[A080228(n+1)-A106747(A256305(n))]`
-/

namespace A007284.P6355936472104781939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1) - A106747 (A256305 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007284.P6355936472104781939

/-! ## A007284.P10821724887163704976

`record[A137386(n+1)-A132387(A007092(n))]`
-/

namespace A007284.P10821724887163704976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1) - A132387 (A007092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007284.P10821724887163704976

/-! ## A007284.P4876031410885638198

`eq[A107128(2*A107128(n)), A222243(n)]`
-/

namespace A007284.P4876031410885638198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (2 * A107128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007284.P4876031410885638198

/-! ## A007284.P6297239200577916208

`A235049(eq[A106747(2*n), A107130(n)])`
-/

namespace A007284.P6297239200577916208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007284.P6297239200577916208

/-!
# A007286: E.g.f.: (sin x + cos 2x) / cos 3x.

The programs for A007286, there is no canonical definition to state claims against.
-/

/-! ## A007286.P8741688868088813253

`A202693(A128918(n+1))`
-/

namespace A007286.P8741688868088813253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (A128918 (n + 1)).toNat

end

end A007286.P8741688868088813253

/-! ## A007286.P5287614752440659830

`A000111(n)*A046717(n)`
-/

namespace A007286.P5287614752440659830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A046717 n

end

end A007286.P5287614752440659830

/-! ## A007286.P7645754910729312649

`abs(A046717(n)*A346838(n))`
-/

namespace A007286.P7645754910729312649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046717 n * A346838 n|

end

end A007286.P7645754910729312649

/-! ## A007286.P14355554617643901176

`A046717(n)*A109449(∑[n])`
-/

namespace A007286.P14355554617643901176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007286.P14355554617643901176

/-! ## A007286.P15329514791696010836

`Δ[A015518(n)]*A000111(n)`
-/

namespace A007286.P15329514791696010836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000111 n

end

end A007286.P15329514791696010836

/-!
# A007287: Expansion of layer susceptibility series for cubic lattice.

The programs for A007287, there is no canonical definition to state claims against.
-/

/-! ## A007287.P6958214259214029932

`A272071(A150846(n+1))`
-/

namespace A007287.P6958214259214029932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272071 (A150846 (n + 1)).toNat

end

end A007287.P6958214259214029932

/-! ## A007287.P7316737177636052393

`A162796(A008998(n))-1`
-/

namespace A007287.P7316737177636052393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162796 (A008998 n).toNat - 1

end

end A007287.P7316737177636052393

/-!
# A007288: Expansion of layer susceptibility series for square lattice.

The programs for A007288, there is no canonical definition to state claims against.
-/

/-! ## A007288.P183871397322813158

`A241920(A149491(n+1))`
-/

namespace A007288.P183871397322813158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A149491 (n + 1)).toNat

end

end A007288.P183871397322813158

/-! ## A007288.P16516661186241659974

`A241920(A291653(n+1))`
-/

namespace A007288.P16516661186241659974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A291653 (n + 1)).toNat

end

end A007288.P16516661186241659974

/-! ## A007288.P13233424756754170202

`∑[A057142(record[A000166(n)])]`
-/

namespace A007288.P13233424756754170202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007288.P13233424756754170202

/-!
# A007289: Expansion of e.g.f. (sin(2*x) + cos(x)) / cos(3*x).

The programs for A007289, there is no canonical definition to state claims against.
-/

/-! ## A007289.P1420088115183806130

`A202693(∑[A266303(n)])`
-/

namespace A007289.P1420088115183806130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007289.P1420088115183806130

/-! ## A007289.P6280806579179682683

`A202693(A131179(n+1))`
-/

namespace A007289.P6280806579179682683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (A131179 (n + 1)).toNat

end

end A007289.P6280806579179682683

/-! ## A007289.P811391421095345452

`record[A202693(n+1)/A129818(n)]`
-/

namespace A007289.P811391421095345452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202693 (n + 1) : ℚ) / (A129818 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007289.P811391421095345452

/-! ## A007289.P15212874601953347499

`record[gcd(A108040(n), A202693(n+1))]`
-/

namespace A007289.P15212874601953347499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108040 n) (A202693 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007289.P15212874601953347499

/-! ## A007289.P15092810139128476318

`A202698(A000124(n))+A202694(A000124(n))`
-/

namespace A007289.P15092810139128476318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202698 (A000124 n).toNat + A202694 (A000124 n).toNat

end

end A007289.P15092810139128476318

/-!
# A007290: a(n) = 2*binomial(n,3).

The programs for A007290, the canonical program `A007290.P9295456119697579818` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007290 has offset 0).

The definition of A007290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 3)` (program `A007290.P9295456119697579818`, by `A007290.P9295456119697579818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007290.P9295456119697579818

`2*C(n, 3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007290

/-- `2*C(n, 3)` -/
def P9295456119697579818.Spec : Prop :=
  ∀ n, (P9295456119697579818.a n : ℤ) = A007290 n

theorem P9295456119697579818.correct : P9295456119697579818.Spec := by
  intro n
  simp only [A007290]

end A007290

/-! ## A007290.P7779369186136371384

`n*(n-1)*(n-2)/3`
-/

namespace A007290.P7779369186136371384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) : ℚ) / 3

end

end A007290.P7779369186136371384

namespace A007290

/-- `n*(n-1)*(n-2)/3` -/
def P7779369186136371384.Spec : Prop :=
  ∀ n, P7779369186136371384.a n = (A007290 n : ℚ)

theorem P7779369186136371384.correct : P7779369186136371384.Spec := by
  intro n
  simp only [A007290, Nat.add_sub_cancel, A007290.P7779369186136371384.a, A007290.P9295456119697579818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007290

/-! ## A007290.P16461452881144704601

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A007290.P16461452881144704601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A007290.P16461452881144704601

namespace A007290

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16461452881144704601.Spec : Prop :=
  ∀ n, P16461452881144704601.a n = A007290 n

end A007290

/-! ## A007290.P11734036690064484577

`a(n-1)+A002378(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A007290.P11734036690064484577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A002378 (n - 2)

end

end A007290.P11734036690064484577

namespace A007290

/-- `a(n-1)+A002378(n-2)` -/
def P11734036690064484577.Spec : Prop :=
  ∀ n, P11734036690064484577.a n = A007290 n

end A007290

/-! ## A007290.P13060556223756660005

`∑[lcm(1-n, n-2)]-2`
-/

namespace A007290.P13060556223756660005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A007290.P13060556223756660005

namespace A007290

/-- `∑[lcm(1-n, n-2)]-2` -/
def P13060556223756660005.Spec : Prop :=
  ∀ n, P13060556223756660005.a n = A007290 n

end A007290

/-! ## A007290.P6713236508079334370

`∑[n²]-(C(n, 2)+n²)`
-/

namespace A007290.P6713236508079334370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 + n ^ 2 : ℤ)

end

end A007290.P6713236508079334370

namespace A007290

/-- `∑[n²]-(C(n, 2)+n²)` -/
def P6713236508079334370.Spec : Prop :=
  ∀ n, P6713236508079334370.a n = A007290 n

end A007290

/-! ## A007290.P2785430234096312981

`∑[n²]-C(n, 2)-n²`
-/

namespace A007290.P2785430234096312981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ) - (n ^ 2 : ℤ)

end

end A007290.P2785430234096312981

namespace A007290

/-- `∑[n²]-C(n, 2)-n²` -/
def P2785430234096312981.Spec : Prop :=
  ∀ n, P2785430234096312981.a n = A007290 n

end A007290

/-! ## A007290.P7637782817134999241

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A007290.P7637782817134999241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007290.P7637782817134999241

namespace A007290

/-- `∑[∑[a(n-1)+2]]` -/
def P7637782817134999241.Spec : Prop :=
  ∀ n, (P7637782817134999241.a n : ℤ) = A007290 n

end A007290

/-! ## A007290.P13924505365970367783

`∑[∑[(n-2)*2%(n+1)]]`
-/

namespace A007290.P13924505365970367783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((2 % (n + 1) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007290.P13924505365970367783

namespace A007290

/-- `∑[∑[(n-2)*2%(n+1)]]` -/
def P13924505365970367783.Spec : Prop :=
  ∀ n, P13924505365970367783.a n = A007290 n

end A007290

/-! ## A007290.P4357289501005719288

`∑[∑[n-(4-n)%(n+1)]]`
-/

namespace A007290.P4357289501005719288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (4 - (n : ℤ)) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007290.P4357289501005719288

namespace A007290

/-- `∑[∑[n-(4-n)%(n+1)]]` -/
def P4357289501005719288.Spec : Prop :=
  ∀ n, P4357289501005719288.a n = A007290 n

end A007290

/-! ## A007290.P8159156965613721356

`xor(1, ∑[(n-1)*(n-2)]-1)`
-/

namespace A007290.P8159156965613721356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007290.P8159156965613721356

namespace A007290

/-- `xor(1, ∑[(n-1)*(n-2)]-1)` -/
def P8159156965613721356.Spec : Prop :=
  ∀ n, P8159156965613721356.a n = A007290 n

end A007290

/-! ## A007290.P2403988664504380087

`or(1, ∑[(n-1)*(n-2)])-3`
-/

namespace A007290.P2403988664504380087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) - 3

end

end A007290.P2403988664504380087

namespace A007290

/-- `or(1, ∑[(n-1)*(n-2)])-3` -/
def P2403988664504380087.Spec : Prop :=
  ∀ n, P2403988664504380087.a n = A007290 n

end A007290

/-! ## A007290.P10460196487721773224

`∑[2*(n²+2)%∑[n+1]]`
-/

namespace A007290.P10460196487721773224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 + 2) % (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007290.P10460196487721773224

namespace A007290

/-- `∑[2*(n²+2)%∑[n+1]]` -/
def P10460196487721773224.Spec : Prop :=
  ∀ n, (P10460196487721773224.a n : ℤ) = A007290 n

end A007290

/-! ## A007290.P15607209904605916856

`∑[1-∑[a(n-1)-2]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A007290.P15607209904605916856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007290.P15607209904605916856

namespace A007290

/-- `∑[1-∑[a(n-1)-2]]` -/
def P15607209904605916856.Spec : Prop :=
  ∀ n, P15607209904605916856.a n = A007290 n

end A007290

/-! ## A007290.P15976452124026420311

`a(n-2)+2*(2-n)²` with `a(0)=0, a(1)=0`
-/

namespace A007290.P15976452124026420311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + 2 * (2 - (n : ℤ)) ^ 2

end

end A007290.P15976452124026420311

namespace A007290

/-- `a(n-2)+2*(2-n)²` -/
def P15976452124026420311.Spec : Prop :=
  ∀ n, P15976452124026420311.a n = A007290 n

end A007290

/-! ## A007290.P10440216850605987592

`a(n-1)+n*(n-3)+2` with `a(0)=0`
-/

namespace A007290.P10440216850605987592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((n : ℤ) - 3) + 2

end

end A007290.P10440216850605987592

namespace A007290

/-- `a(n-1)+n*(n-3)+2` -/
def P10440216850605987592.Spec : Prop :=
  ∀ n, P10440216850605987592.a n = A007290 n

end A007290

/-! ## A007290.P5667352975936524796

`2-(n*(3-n)-a(n-1))` with `a(0)=0`
-/

namespace A007290.P5667352975936524796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ((n : ℤ) * (3 - (n : ℤ)) - a (n - 1))

end

end A007290.P5667352975936524796

namespace A007290

/-- `2-(n*(3-n)-a(n-1))` -/
def P5667352975936524796.Spec : Prop :=
  ∀ n, P5667352975936524796.a n = A007290 n

end A007290

/-! ## A007290.P13083337009247690130

`floor(a(n-1)+(3/2-n)²)` with `a(0)=0`
-/

namespace A007290.P13083337009247690130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((3 : ℚ) / 2 - (n : ℚ)) ^ 2⌋

end

end A007290.P13083337009247690130

namespace A007290

/-- `floor(a(n-1)+(3/2-n)²)` -/
def P13083337009247690130.Spec : Prop :=
  ∀ n, P13083337009247690130.a n = A007290 n

end A007290

/-! ## A007290.P10267136428296491673

`∑[(1-n)²-gcd(1-n, n-1)]`
-/

namespace A007290.P10267136428296491673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007290.P10267136428296491673

namespace A007290

/-- `∑[(1-n)²-gcd(1-n, n-1)]` -/
def P10267136428296491673.Spec : Prop :=
  ∀ n, P10267136428296491673.a n = A007290 n

end A007290

/-! ## A007290.P9404794756362176940

`1-n+a(n-1)+(1-n)²` with `a(0)=0`
-/

namespace A007290.P9404794756362176940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (n : ℤ) + (a (n - 1) + (1 - (n : ℤ)) ^ 2)

end

end A007290.P9404794756362176940

namespace A007290

/-- `1-n+a(n-1)+(1-n)²` -/
def P9404794756362176940.Spec : Prop :=
  ∀ n, P9404794756362176940.a n = A007290 n

end A007290

/-!
# A007291: Series expansion for rectilinear polymers on square lattice.

The programs for A007291, the canonical program `A007291.P1653456280623484055` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007291 has offset 2).

The definition of A007291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007291.P1653456280623484055

`(n+2)*(n+1)*(11*(n+2)²-13*(n+2)+3)/6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007291

/-- `(n+2)*(n+1)*(11*(n+2)²-13*(n+2)+3)/6` -/
def P1653456280623484055.Spec : Prop :=
  ∀ n, P1653456280623484055.a n = (A007291 (n + 2) : ℚ)

end A007291

/-! ## A007291.P4918383632592437030

`A024196(n+1)+4*A108678(n)`
-/

namespace A007291.P4918383632592437030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024196 (n + 1) + 4 * A108678 n

end

end A007291.P4918383632592437030

namespace A007291

/-- `A024196(n+1)+4*A108678(n)` -/
def P4918383632592437030.Spec : Prop :=
  ∀ n, P4918383632592437030.a n = A007291 (n + 2)

end A007291

/-! ## A007291.P8451025810454051080

`A339483(n+1)-A008911(n+2)`
-/

namespace A007291.P8451025810454051080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 (n + 1) - A008911 (n + 2)

end

end A007291.P8451025810454051080

namespace A007291

/-- `A339483(n+1)-A008911(n+2)` -/
def P8451025810454051080.Spec : Prop :=
  ∀ n, P8451025810454051080.a n = A007291 (n + 2)

end A007291

/-! ## A007291.P11418024245883036752

`∑[A055112(n+1)+∑[A016813(n)²]]`
-/

namespace A007291.P11418024245883036752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007291.P11418024245883036752

namespace A007291

/-- `∑[A055112(n+1)+∑[A016813(n)²]]` -/
def P11418024245883036752.Spec : Prop :=
  ∀ n, P11418024245883036752.a n = A007291 (n + 2)

end A007291

/-! ## A007291.P6869491950910645422

`A234043(n+1)-A232713(n+2)`
-/

namespace A007291.P6869491950910645422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234043 (n + 1) - A232713 (n + 2)

end

end A007291.P6869491950910645422

namespace A007291

/-- `A234043(n+1)-A232713(n+2)` -/
def P6869491950910645422.Spec : Prop :=
  ∀ n, P6869491950910645422.a n = A007291 (n + 2)

end A007291

/-! ## A007291.P9741136102331793850

`∑[A081436(2*n+1)-A006331(n)]`
-/

namespace A007291.P9741136102331793850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 (2 * n + 1) - A006331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007291.P9741136102331793850

namespace A007291

/-- `∑[A081436(2*n+1)-A006331(n)]` -/
def P9741136102331793850.Spec : Prop :=
  ∀ n, P9741136102331793850.a n = A007291 (n + 2)

end A007291

/-! ## A007291.P16947555804895891726

`∑[A081436(2*n+1)]-A008911(n+1)`
-/

namespace A007291.P16947555804895891726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008911 (n + 1)

end

end A007291.P16947555804895891726

namespace A007291

/-- `∑[A081436(2*n+1)]-A008911(n+1)` -/
def P16947555804895891726.Spec : Prop :=
  ∀ n, P16947555804895891726.a n = A007291 (n + 2)

end A007291

/-! ## A007291.P13349234508503680223

`∑[∑[A054275(2*n+1)-A109613(2*n)]]`
-/

namespace A007291.P13349234508503680223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (2 * n + 1) - A109613 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007291.P13349234508503680223

namespace A007291

/-- `∑[∑[A054275(2*n+1)-A109613(2*n)]]` -/
def P13349234508503680223.Spec : Prop :=
  ∀ n, P13349234508503680223.a n = A007291 (n + 2)

end A007291

/-! ## A007291.P7021066032364414055

`A234043(n+1)-A000326(A000326(n+2))`
-/

namespace A007291.P7021066032364414055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234043 (n + 1) - A000326 (A000326 (n + 2)).toNat

end

end A007291.P7021066032364414055

namespace A007291

/-- `A234043(n+1)-A000326(A000326(n+2))` -/
def P7021066032364414055.Spec : Prop :=
  ∀ n, P7021066032364414055.a n = A007291 (n + 2)

end A007291

/-!
# A007293: Dimension of space of weight systems of chord diagrams.

The programs for A007293, there is no canonical definition to state claims against.
-/

/-! ## A007293.P10365257670294999372

`A014596(n)+char[14]`
-/

namespace A007293.P10365257670294999372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014596 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007293.P10365257670294999372

/-! ## A007293.P17898085115527632504

`A014596(A247755(n+1))`
-/

namespace A007293.P17898085115527632504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014596 (A247755 (n + 1)).toNat

end

end A007293.P17898085115527632504

/-! ## A007293.P15614901390967958071

`A014596(A342042(n+1))`
-/

namespace A007293.P15614901390967958071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014596 (A342042 (n + 1)).toNat

end

end A007293.P15614901390967958071

/-! ## A007293.P6082784696595585542

`A014596(lt[A103633(n), 2])`
-/

namespace A007293.P6082784696595585542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014596 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A007293.P6082784696595585542

/-!
# A007294: Number of partitions of n into nonzero triangular numbers.

The programs for A007294, there is no canonical definition to state claims against.
-/

/-! ## A007294.P6862838090674378624

`abs(Δ[A302835(abs(1-n))])`
-/

namespace A007294.P6862838090674378624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007294.P6862838090674378624

/-! ## A007294.P2127989678437060255

`∑[A303906(n)]`
-/

namespace A007294.P2127989678437060255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007294.P2127989678437060255

/-! ## A007294.P1102443842896199485

`A303906(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A007294.P1102443842896199485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303906 n + a (A023443 n).toNat

end

end A007294.P1102443842896199485

/-! ## A007294.P14963073249965647561

`Δ[A302835(n)]-A303906(n+1)`
-/

namespace A007294.P14963073249965647561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A303906 (n + 1)

end

end A007294.P14963073249965647561

/-! ## A007294.P1397946273619011927

`Δ[A302835(n)-A303906(n)]-A303906(n)`
-/

namespace A007294.P1397946273619011927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 n - A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A303906 n

end

end A007294.P1397946273619011927

/-! ## A007294.P14511114890235540333

`A302835(n+1)-(A303906(n+1)+A302835(n))`
-/

namespace A007294.P14511114890235540333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 (n + 1) - (A303906 (n + 1) + A302835 n)

end

end A007294.P14511114890235540333

/-! ## A007294.P17881746504945696455

`A292519(n)+2*A339374(n)`
-/

namespace A007294.P17881746504945696455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292519 n + 2 * A339374 n

end

end A007294.P17881746504945696455

/-! ## A007294.P2749361311228327188

`A339374(n)+A339373(n)`
-/

namespace A007294.P2749361311228327188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339374 n + A339373 n

end

end A007294.P2749361311228327188

/-! ## A007294.P3246434348074787719

`2*A339373(n)-A292519(n)`
-/

namespace A007294.P3246434348074787719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339373 n - A292519 n

end

end A007294.P3246434348074787719

/-! ## A007294.P5763184137682139269

`A292519(n)+A005843(A339374(n))`
-/

namespace A007294.P5763184137682139269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292519 n + A005843 (A339374 n).toNat

end

end A007294.P5763184137682139269

/-!
# A007295: Number of elements (a b, c d) in GL(2,Z) with |det| = 1, trace <= n and 0 <= a <= {b, c} <= d.

The programs for A007295, there is no canonical definition to state claims against.
-/

/-! ## A007295.P16260413514686506314

`∑[A007203(n+1)]`
-/

namespace A007295.P16260413514686506314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007295.P16260413514686506314

/-! ## A007295.P8735004689896664807

`A007203(n%A307201(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A007295.P8735004689896664807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007203 (Int.tmod (n : ℤ) (A307201 n) + 1).toNat + a (n - 1)

end

end A007295.P8735004689896664807

/-! ## A007295.P3361217501342210260

`a(n-1)+A007203(n+1)*A054977(n)` with `a(0)=1, a(1)=2`
-/

namespace A007295.P3361217501342210260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A007203 (n + 1) * A054977 n

end

end A007295.P3361217501342210260

/-! ## A007295.P18071376273736162781

`a(n-1)+A007203(n+1)%A008574(n)` with `a(0)=1, a(1)=2`
-/

namespace A007295.P18071376273736162781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A007203 (n + 1)) (A008574 n)

end

end A007295.P18071376273736162781

/-! ## A007295.P13541494210746005944

`a(n-1)+A209229(2*n+1)+A007203(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A007295.P13541494210746005944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A209229 (2 * n + 1) + A007203 (n + 1))

end

end A007295.P13541494210746005944

/-! ## A007295.P3887575080958196201

`A028310(a(n-1))+A007203(n+1)` with `a(0)=1`
-/

namespace A007295.P3887575080958196201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A007203 (n + 1)

end

end A007295.P3887575080958196201

/-! ## A007295.P14598761429698065018

`A222231(A222231(a(n-1)))+A007203(n+1)` with `a(0)=1`
-/

namespace A007295.P14598761429698065018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222231 (A222231 (a (n - 1)).toNat).toNat + A007203 (n + 1)

end

end A007295.P14598761429698065018

/-! ## A007295.P1719357978152623654

`a(n-1)+A007203(n+1)+A008683(A001248(n+1))` with `a(0)=1`
-/

namespace A007295.P1719357978152623654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007203 (n + 1) + A008683 (A001248 (n + 1)).toNat)

end

end A007295.P1719357978152623654

/-!
# A007296: Reversion of (1 + g.f. for primes).

The programs for A007296, there is no canonical definition to state claims against.
-/

/-! ## A007296.P13103908558550053971

`A162781(A007299(n))+A007312(n+1)`
-/

namespace A007296.P13103908558550053971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A007299 n).toNat + A007312 (n + 1)

end

end A007296.P13103908558550053971

/-! ## A007296.P11386014639321436421

`A025466(A359984(n))+A007312(n+1)`
-/

namespace A007296.P11386014639321436421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A359984 n).toNat + A007312 (n + 1)

end

end A007296.P11386014639321436421

/-! ## A007296.P15058153632879873960

`A202034(A276175(n))+A007312(n+1)`
-/

namespace A007296.P15058153632879873960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202034 (A276175 n).toNat + A007312 (n + 1)

end

end A007296.P15058153632879873960

/-!
# A007297: Number of connected graphs on n labeled nodes on a circle with straight-line edges that don't cross.

The programs for A007297, there is no canonical definition to state claims against.
-/

/-! ## A007297.P10347937270819587121

`2*A078531(n)-A085614(n+1)`
-/

namespace A007297.P10347937270819587121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078531 n - A085614 (n + 1)

end

end A007297.P10347937270819587121

/-! ## A007297.P1812499125801456039

`A263843(A028310(n))`
-/

namespace A007297.P1812499125801456039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (A028310 n).toNat

end

end A007297.P1812499125801456039

/-! ## A007297.P3489277792842604941

`A263843(A065033(2*n))`
-/

namespace A007297.P3489277792842604941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (A065033 (2 * n)).toNat

end

end A007297.P3489277792842604941

/-! ## A007297.P1241498754456363512

`A263843(A000007(n)+n)`
-/

namespace A007297.P1241498754456363512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (A000007 n + (n : ℤ)).toNat

end

end A007297.P1241498754456363512

/-! ## A007297.P10472702330401580429

`A263843(A004277(n)-n)`
-/

namespace A007297.P10472702330401580429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (A004277 n - (n : ℤ)).toNat

end

end A007297.P10472702330401580429

/-! ## A007297.P6340812622709906879

`A263843(or(n, A000007(n)))`
-/

namespace A007297.P6340812622709906879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A007297.P6340812622709906879

/-! ## A007297.P7076938951707994306

`A263843(xor(n, A000007(n)))`
-/

namespace A007297.P7076938951707994306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A007297.P7076938951707994306

/-! ## A007297.P5593854616956181956

`A263843(1-A057427(n)+n)`
-/

namespace A007297.P5593854616956181956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (1 - A057427 n + (n : ℤ)).toNat

end

end A007297.P5593854616956181956

/-! ## A007297.P11203004661846549200

`A263843(1-(A057427(n)-n))`
-/

namespace A007297.P11203004661846549200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 (1 - (A057427 n - (n : ℤ))).toNat

end

end A007297.P11203004661846549200

/-! ## A007297.P17316030520255506352

`A263843(n)+A014963(4*n+2)-1`
-/

namespace A007297.P17316030520255506352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263843 n + (A014963 (4 * n + 2) - 1)

end

end A007297.P17316030520255506352

/-!
# A007298: Sums of consecutive Fibonacci numbers.

The programs for A007298, the canonical program `A007298.P9853402396666436554` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007298 has offset 1).

The definition of A007298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007298.P4104466802030552521

`record[A143061(n+1)*A322818(A061142(n+1))]`
-/

namespace A007298.P4104466802030552521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (n + 1) * A322818 (A061142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P4104466802030552521

namespace A007298

/-- `record[A143061(n+1)*A322818(A061142(n+1))]` -/
def P4104466802030552521.Spec : Prop :=
  ∀ n, P4104466802030552521.a n = A007298 (n + 1)

end A007298

/-! ## A007298.P9853402396666436554

`record[A057427(n)*A143061(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A007298

/-- `record[A057427(n)*A143061(n+1)]` -/
def P9853402396666436554.Spec : Prop :=
  ∀ n, P9853402396666436554.a n = A007298 (n + 1)

theorem P9853402396666436554.correct : P9853402396666436554.Spec := by
  intro n
  simp only [A007298, Nat.add_sub_cancel]

end A007298

/-! ## A007298.P2656977954860286330

`record[A143061(n+1)-A008683(A008574(n))]`
-/

namespace A007298.P2656977954860286330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (n + 1) - A008683 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P2656977954860286330

namespace A007298

/-- `record[A143061(n+1)-A008683(A008574(n))]` -/
def P2656977954860286330.Spec : Prop :=
  ∀ n, P2656977954860286330.a n = A007298 (n + 1)

end A007298

/-! ## A007298.P6324738292814003710

`record[A143061(A014132(n+1))-A143061(n+1)]`
-/

namespace A007298.P6324738292814003710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A014132 (n + 1)).toNat - A143061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P6324738292814003710

namespace A007298

/-- `record[A143061(A014132(n+1))-A143061(n+1)]` -/
def P6324738292814003710.Spec : Prop :=
  ∀ n, P6324738292814003710.a n = A007298 (n + 1)

end A007298

/-! ## A007298.P13137679132990910043

`record[A000035(A030101(n))*A143061(n+1)]`
-/

namespace A007298.P13137679132990910043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030101 n).toNat * A143061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P13137679132990910043

namespace A007298

/-- `record[A000035(A030101(n))*A143061(n+1)]` -/
def P13137679132990910043.Spec : Prop :=
  ∀ n, P13137679132990910043.a n = A007298 (n + 1)

end A007298

/-! ## A007298.P10337373619806245337

`record[A143061(n+1)-A323169(A000040(n+1))]`
-/

namespace A007298.P10337373619806245337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (n + 1) - A323169 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P10337373619806245337

namespace A007298

/-- `record[A143061(n+1)-A323169(A000040(n+1))]` -/
def P10337373619806245337.Spec : Prop :=
  ∀ n, P10337373619806245337.a n = A007298 (n + 1)

end A007298

/-! ## A007298.P17163782430654559514

`record[A143061(n+1)-A323169(A034694(n+1))]`
-/

namespace A007298.P17163782430654559514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (n + 1) - A323169 (A034694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P17163782430654559514

namespace A007298

/-- `record[A143061(n+1)-A323169(A034694(n+1))]` -/
def P17163782430654559514.Spec : Prop :=
  ∀ n, P17163782430654559514.a n = A007298 (n + 1)

end A007298

/-! ## A007298.P7032550299502203402

`lt[A200650(n-A322871(a(n-1)+1)+1), 2]` with `a(0)=1`
-/

namespace A007298.P7032550299502203402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A200650 ((n : ℤ) - A322871 (f1 (n - 1) + 1).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007298.P7032550299502203402

namespace A007298

/-- `lt[A200650(n-A322871(a(n-1)+1)+1), 2]` -/
def P7032550299502203402.Spec : Prop :=
  ∀ n, (P7032550299502203402.a n : ℤ) = A007298 (n + 1)

end A007298

/-! ## A007298.P2992245031792371346

`comp[A050939(n+1)]`
-/

namespace A007298.P2992245031792371346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007298.P2992245031792371346

namespace A007298

/-- `comp[A050939(n+1)]` -/
def P2992245031792371346.Spec : Prop :=
  ∀ n, (P2992245031792371346.a n : ℤ) = A007298 (n + 1)

end A007298

/-! ## A007298.P9827445891766427606

`record[A300763(n)/A003603(A003603(n+1))]`
-/

namespace A007298.P9827445891766427606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300763 n : ℚ) / (A003603 (A003603 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P9827445891766427606

namespace A007298

/-- `record[A300763(n)/A003603(A003603(n+1))]` -/
def P9827445891766427606.Spec : Prop :=
  ∀ n, P9827445891766427606.a n = (A007298 (n + 1) : ℚ)

end A007298

/-!
# A007299: Number of Hadamard matrices of order 4n.

The programs for A007299, there is no canonical definition to state claims against.
-/

/-! ## A007299.P385000774875537306

`A036297(4*n)`
-/

namespace A007299.P385000774875537306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (4 * n)

end

end A007299.P385000774875537306

/-! ## A007299.P2591225102096885459

`A036297(A008574(n))+char[9]`
-/

namespace A007299.P2591225102096885459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (A008574 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007299.P2591225102096885459

/-! ## A007299.P14446458053600479492

`A036297(A008586(n))+char[9]`
-/

namespace A007299.P14446458053600479492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (A008586 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007299.P14446458053600479492

/-! ## A007299.P715655222651669664

`A053392(n)+A036297(A008574(n))`
-/

namespace A007299.P715655222651669664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n + A036297 (A008574 n).toNat

end

end A007299.P715655222651669664

/-! ## A007299.P13742572306703105728

`A053392(n)+A036297(A008586(n))`
-/

namespace A007299.P13742572306703105728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n + A036297 (A008586 n).toNat

end

end A007299.P13742572306703105728

