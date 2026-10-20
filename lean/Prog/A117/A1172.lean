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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A117200: Inverse of number triangle (1,x)+(x,x^2)+(x^2,x^3).

The programs for A117200, there is no canonical definition to state claims against.
-/

/-! ## A117200.P8537686809549874288

`A054525(n+1)-A010815(A087950(3*(n+1)))`
-/

namespace A117200.P8537686809549874288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) - A010815 (A087950 (3 * (n + 1))).toNat

end

end A117200.P8537686809549874288

/-! ## A117200.P4971253959920938269

`A054525(n+1)+A095111(n)*A326474(A123125(n))`
-/

namespace A117200.P4971253959920938269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) + A095111 n * A326474 (A123125 n).toNat

end

end A117200.P4971253959920938269

/-! ## A117200.P17726611838575816997

`A054525(n+1)+A095111(n)*A326474(A326474(n))`
-/

namespace A117200.P17726611838575816997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) + A095111 n * A326474 (A326474 n).toNat

end

end A117200.P17726611838575816997

/-! ## A117200.P8441006106445537106

`A072401(A102113(n))+A054525(n+1)`
-/

namespace A117200.P8441006106445537106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (A102113 n).toNat + A054525 (n + 1)

end

end A117200.P8441006106445537106

/-! ## A117200.P8427731029040500782

`A267133(A247232(n+1))`
-/

namespace A117200.P8427731029040500782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (A247232 (n + 1)).toNat

end

end A117200.P8427731029040500782

/-!
# A117201: Row sums of number triangle A117200.

The programs for A117201, there is no canonical definition to state claims against.
-/

/-! ## A117201.P3760343249168866184

`A259660(n)^(A103709(n+1)+A010673(n))`
-/

namespace A117201.P3760343249168866184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259660 n : ℚ) ^ (A103709 (n + 1) + A010673 n : ℤ)

end

end A117201.P3760343249168866184

/-! ## A117201.P17124438079273528014

`A259660(n)^(A003215(n)*A182582(n+1))`
-/

namespace A117201.P17124438079273528014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259660 n : ℚ) ^ (A003215 n * A182582 (n + 1) : ℤ)

end

end A117201.P17124438079273528014

/-! ## A117201.P5169607890304580084

`A259660(n)^(A136641(n+1)*A182582(n+1))`
-/

namespace A117201.P5169607890304580084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259660 n : ℚ) ^ (A136641 (n + 1) * A182582 (n + 1) : ℤ)

end

end A117201.P5169607890304580084

/-! ## A117201.P7069402529108202266

`A303300(A303278(n+1))-A182582(n+1)`
-/

namespace A117201.P7069402529108202266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303300 (A303278 (n + 1)).toNat - A182582 (n + 1)

end

end A117201.P7069402529108202266

/-! ## A117201.P14721549163744737503

`A128834(xor(A036459(n+1), A066044(n+1)))`
-/

namespace A117201.P14721549163744737503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (Int.xor (A036459 (n + 1)) (A066044 (n + 1))).toNat

end

end A117201.P14721549163744737503

/-!
# A117202: Binomial transform of n*F(n).

The programs for A117202, the canonical program `A117202.P118908068388569557` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117202 has offset 0).

The definition of A117202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117202.P118908068388569557

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=15`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117202

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P118908068388569557.Spec : Prop :=
  ∀ n, P118908068388569557.a n = A117202 n

theorem P118908068388569557.correct : P118908068388569557.Spec := by
  intro n
  simp only [A117202]

end A117202

/-! ## A117202.P6941880520933226851

`n*record[a(n-2)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A117202.P6941880520933226851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117202.P6941880520933226851

namespace A117202

/-- `n*record[a(n-2)-a(n-1)]` -/
def P6941880520933226851.Spec : Prop :=
  ∀ n, P6941880520933226851.a n = A117202 n

end A117202

/-! ## A117202.P7847262098769232874

`n*A001519(n)`
-/

namespace A117202.P7847262098769232874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001519 n

end

end A117202.P7847262098769232874

namespace A117202

/-- `n*A001519(n)` -/
def P7847262098769232874.Spec : Prop :=
  ∀ n, P7847262098769232874.a n = A117202 n

end A117202

/-! ## A117202.P2518875647510976784

`n*(A032908(n)-1)`
-/

namespace A117202.P2518875647510976784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A032908 n - 1)

end

end A117202.P2518875647510976784

namespace A117202

/-- `n*(A032908(n)-1)` -/
def P2518875647510976784.Spec : Prop :=
  ∀ n, P2518875647510976784.a n = A117202 n

end A117202

/-! ## A117202.P494696111354500756

`n*(1-A186025(n))`
-/

namespace A117202.P494696111354500756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A186025 n)

end

end A117202.P494696111354500756

namespace A117202

/-- `n*(1-A186025(n))` -/
def P494696111354500756.Spec : Prop :=
  ∀ n, P494696111354500756.a n = A117202 n

end A117202

/-! ## A117202.P10645152451302889664

`n*A087123(2*n)`
-/

namespace A117202.P10645152451302889664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087123 (2 * n)

end

end A117202.P10645152451302889664

namespace A117202

/-- `n*A087123(2*n)` -/
def P10645152451302889664.Spec : Prop :=
  ∀ n, P10645152451302889664.a n = A117202 n

end A117202

/-! ## A117202.P14028522519891322085

`n*A212804(2*n)`
-/

namespace A117202.P14028522519891322085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212804 (2 * n)

end

end A117202.P14028522519891322085

namespace A117202

/-- `n*A212804(2*n)` -/
def P14028522519891322085.Spec : Prop :=
  ∀ n, P14028522519891322085.a n = A117202 n

end A117202

/-! ## A117202.P7607130946626964982

`n/2*A052995(n)`
-/

namespace A117202.P7607130946626964982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A052995 n : ℚ)

end

end A117202.P7607130946626964982

namespace A117202

/-- `n/2*A052995(n)` -/
def P7607130946626964982.Spec : Prop :=
  ∀ n, P7607130946626964982.a n = (A117202 n : ℚ)

end A117202

/-! ## A117202.P9385261598856043453

`n/2*A055819(n)`
-/

namespace A117202.P9385261598856043453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A055819 n : ℚ)

end

end A117202.P9385261598856043453

namespace A117202

/-- `n/2*A055819(n)` -/
def P9385261598856043453.Spec : Prop :=
  ∀ n, P9385261598856043453.a n = (A117202 n : ℚ)

end A117202

/-! ## A117202.P17977392194436554449

`n*A247309(3*n)`
-/

namespace A117202.P17977392194436554449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A247309 (3 * n)

end

end A117202.P17977392194436554449

namespace A117202

/-- `n*A247309(3*n)` -/
def P17977392194436554449.Spec : Prop :=
  ∀ n, P17977392194436554449.a n = A117202 n

end A117202

/-! ## A117202.P4332289829745476363

`n*A097131(Δ[n²])`
-/

namespace A117202.P4332289829745476363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097131 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A117202.P4332289829745476363

namespace A117202

/-- `n*A097131(Δ[n²])` -/
def P4332289829745476363.Spec : Prop :=
  ∀ n, P4332289829745476363.a n = A117202 n

end A117202

/-! ## A117202.P2342775917739952548

`n*Δ[Δ[A293064(n)]]`
-/

namespace A117202.P2342775917739952548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A117202.P2342775917739952548

namespace A117202

/-- `n*Δ[Δ[A293064(n)]]` -/
def P2342775917739952548.Spec : Prop :=
  ∀ n, P2342775917739952548.a n = A117202 n

end A117202

/-! ## A117202.P5661771469273373510

`n*Δ[A078024(2*n)]`
-/

namespace A117202.P5661771469273373510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A117202.P5661771469273373510

namespace A117202

/-- `n*Δ[A078024(2*n)]` -/
def P5661771469273373510.Spec : Prop :=
  ∀ n, P5661771469273373510.a n = A117202 n

end A117202

/-! ## A117202.P16358986717379590842

`n*Δ[A112469(2*n)]`
-/

namespace A117202.P16358986717379590842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A117202.P16358986717379590842

namespace A117202

/-- `n*Δ[A112469(2*n)]` -/
def P16358986717379590842.Spec : Prop :=
  ∀ n, P16358986717379590842.a n = A117202 n

end A117202

/-! ## A117202.P5289069549180165270

`n*(A293064(n+1)+1)`
-/

namespace A117202.P5289069549180165270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A293064 (n + 1) + 1)

end

end A117202.P5289069549180165270

namespace A117202

/-- `n*(A293064(n+1)+1)` -/
def P5289069549180165270.Spec : Prop :=
  ∀ n, P5289069549180165270.a n = A117202 n

end A117202

/-! ## A117202.P2937935797001429989

`n*(A093467(n+1)-1)`
-/

namespace A117202.P2937935797001429989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A093467 (n + 1) - 1)

end

end A117202.P2937935797001429989

namespace A117202

/-- `n*(A093467(n+1)-1)` -/
def P2937935797001429989.Spec : Prop :=
  ∀ n, P2937935797001429989.a n = A117202 n

end A117202

/-! ## A117202.P360580412849650008

`abs(n*A152163(2*n+1))`
-/

namespace A117202.P360580412849650008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A152163 (2 * n + 1)|

end

end A117202.P360580412849650008

namespace A117202

/-- `abs(n*A152163(2*n+1))` -/
def P360580412849650008.Spec : Prop :=
  ∀ n, P360580412849650008.a n = A117202 n

end A117202

/-! ## A117202.P13923111383366265070

`n*A000045(abs(1-2*n))`
-/

namespace A117202.P13923111383366265070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 |1 - (2 * n : ℤ)|.toNat

end

end A117202.P13923111383366265070

namespace A117202

/-- `n*A000045(abs(1-2*n))` -/
def P13923111383366265070.Spec : Prop :=
  ∀ n, P13923111383366265070.a n = A117202 n

end A117202

/-!
# A117203: Odd squarefree positive integers k such that (k-1)/2 is also squarefree.

The programs for A117203, the canonical program `A117203.P1024184579012793752` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117203 has offset 1).

The definition of A117203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117203.P15217729657918668867

`2*A117204(n+1)+1`
-/

namespace A117203.P15217729657918668867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117204 (n + 1) + 1

end

end A117203.P15217729657918668867

namespace A117203

/-- `2*A117204(n+1)+1` -/
def P15217729657918668867.Spec : Prop :=
  ∀ n, P15217729657918668867.a n = A117203 (n + 1)

end A117203

/-! ## A117203.P1024184579012793752

`record[A007913(n+2+A007913(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117203

/-- `record[A007913(n+2+A007913(n+1))]` -/
def P1024184579012793752.Spec : Prop :=
  ∀ n, P1024184579012793752.a n = A117203 (n + 1)

theorem P1024184579012793752.correct : P1024184579012793752.Spec := by
  intro n
  simp only [A117203, Nat.add_sub_cancel]

end A117203

/-! ## A117203.P17836203693406520270

`record[A007947(n+2+A007947(n+1))]`
-/

namespace A117203.P17836203693406520270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 2 : ℤ) + A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P17836203693406520270

namespace A117203

/-- `record[A007947(n+2+A007947(n+1))]` -/
def P17836203693406520270.Spec : Prop :=
  ∀ n, P17836203693406520270.a n = A117203 (n + 1)

end A117203

/-! ## A117203.P5988400765408376262

`∩[A056911(n+1), A215726(n+1)+1]`
-/

namespace A117203.P5988400765408376262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117203.P5988400765408376262

namespace A117203

/-- `∩[A056911(n+1), A215726(n+1)+1]` -/
def P5988400765408376262.Spec : Prop :=
  ∀ n, (P5988400765408376262.a n : ℤ) = A117203 (n + 1)

end A117203

/-! ## A117203.P13122084929492480553

`∩[A182318(n+1), A215726(n+1)+1]`
-/

namespace A117203.P13122084929492480553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117203.P13122084929492480553

namespace A117203

/-- `∩[A182318(n+1), A215726(n+1)+1]` -/
def P13122084929492480553.Spec : Prop :=
  ∀ n, (P13122084929492480553.a n : ℤ) = A117203 (n + 1)

end A117203

/-! ## A117203.P10674327025113768202

`∩[A215726(n+1)+1, A325128(n+1)]`
-/

namespace A117203.P10674327025113768202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117203.P10674327025113768202

namespace A117203

/-- `∩[A215726(n+1)+1, A325128(n+1)]` -/
def P10674327025113768202.Spec : Prop :=
  ∀ n, (P10674327025113768202.a n : ℤ) = A117203 (n + 1)

end A117203

/-! ## A117203.P10883592594387105830

`∩[A215726(n+1)+1, A334420(n+1)]`
-/

namespace A117203.P10883592594387105830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117203.P10883592594387105830

namespace A117203

/-- `∩[A215726(n+1)+1, A334420(n+1)]` -/
def P10883592594387105830.Spec : Prop :=
  ∀ n, (P10883592594387105830.a n : ℤ) = A117203 (n + 1)

end A117203

/-! ## A117203.P4429999514223084986

`∩[A215726(n+1)+1, A357014(n+1)]`
-/

namespace A117203.P4429999514223084986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117203.P4429999514223084986

namespace A117203

/-- `∩[A215726(n+1)+1, A357014(n+1)]` -/
def P4429999514223084986.Spec : Prop :=
  ∀ n, (P4429999514223084986.a n : ℤ) = A117203 (n + 1)

end A117203

/-! ## A117203.P9680898852571139532

`A144396(A117204(n+1))`
-/

namespace A117203.P9680898852571139532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A117204 (n + 1)).toNat

end

end A117203.P9680898852571139532

namespace A117203

/-- `A144396(A117204(n+1))` -/
def P9680898852571139532.Spec : Prop :=
  ∀ n, P9680898852571139532.a n = A117203 (n + 1)

end A117203

/-! ## A117203.P16952668384570438688

`A099984(A117204(n+1)+1)`
-/

namespace A117203.P16952668384570438688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099984 (A117204 (n + 1) + 1).toNat

end

end A117203.P16952668384570438688

namespace A117203

/-- `A099984(A117204(n+1)+1)` -/
def P16952668384570438688.Spec : Prop :=
  ∀ n, P16952668384570438688.a n = A117203 (n + 1)

end A117203

/-! ## A117203.P12862266009374253571

`record[A099984(A005117(n+1)+1)]`
-/

namespace A117203.P12862266009374253571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099984 (A005117 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P12862266009374253571

namespace A117203

/-- `record[A099984(A005117(n+1)+1)]` -/
def P12862266009374253571.Spec : Prop :=
  ∀ n, P12862266009374253571.a n = A117203 (n + 1)

end A117203

/-! ## A117203.P12590992661605597916

`∩[A215726(n+1)+1, A004273(n)]`
-/

namespace A117203.P12590992661605597916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117203.P12590992661605597916

namespace A117203

/-- `∩[A215726(n+1)+1, A004273(n)]` -/
def P12590992661605597916.Spec : Prop :=
  ∀ n, (P12590992661605597916.a n : ℤ) = A117203 (n + 1)

end A117203

/-! ## A117203.P15772832562717448305

`∩[A215726(n+1)+1, A060747(n)]`
-/

namespace A117203.P15772832562717448305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117203.P15772832562717448305

namespace A117203

/-- `∩[A215726(n+1)+1, A060747(n)]` -/
def P15772832562717448305.Spec : Prop :=
  ∀ n, (P15772832562717448305.a n : ℤ) = A117203 (n + 1)

end A117203

/-! ## A117203.P4145347734032613767

`record[A015052(A073353(n+1)+1)]`
-/

namespace A117203.P4145347734032613767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A073353 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P4145347734032613767

namespace A117203

/-- `record[A015052(A073353(n+1)+1)]` -/
def P4145347734032613767.Spec : Prop :=
  ∀ n, P4145347734032613767.a n = A117203 (n + 1)

end A117203

/-! ## A117203.P16241222458873890460

`record[A053166(A073353(n+1)+1)]`
-/

namespace A117203.P16241222458873890460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A073353 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P16241222458873890460

namespace A117203

/-- `record[A053166(A073353(n+1)+1)]` -/
def P16241222458873890460.Spec : Prop :=
  ∀ n, P16241222458873890460.a n = A117203 (n + 1)

end A117203

/-!
# A117204: Squarefree positive integers k such that 2*k+1 is also squarefree.

The programs for A117204, the canonical program `A117204.P11529383568635817474` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117204 has offset 1).

The definition of A117204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117203, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117204.P11529383568635817474

`(A117203(n+1)-1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117204

/-- `(A117203(n+1)-1)/2` -/
def P11529383568635817474.Spec : Prop :=
  ∀ n, P11529383568635817474.a n = (A117204 (n + 1) : ℚ)

end A117204

/-! ## A117204.P2668372172599361468

`floor(A117203(n+1)/2)`
-/

namespace A117204.P2668372172599361468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117203 (n + 1) : ℚ) / 2⌋

end

end A117204.P2668372172599361468

namespace A117204

/-- `floor(A117203(n+1)/2)` -/
def P2668372172599361468.Spec : Prop :=
  ∀ n, P2668372172599361468.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P9946238135817766769

`eq[A087049(2*n+1), A105570(n)]`
-/

namespace A117204.P9946238135817766769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117204.P9946238135817766769

namespace A117204

/-- `eq[A087049(2*n+1), A105570(n)]` -/
def P9946238135817766769.Spec : Prop :=
  ∀ n, (P9946238135817766769.a n : ℤ) = A117204 (n + 1)

end A117204

/-! ## A117204.P16772513127533187908

`eq[A105570(n), A347048(2*n+1)]`
-/

namespace A117204.P16772513127533187908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347048 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117204.P16772513127533187908

namespace A117204

/-- `eq[A105570(n), A347048(2*n+1)]` -/
def P16772513127533187908.Spec : Prop :=
  ∀ n, (P16772513127533187908.a n : ℤ) = A117204 (n + 1)

end A117204

/-! ## A117204.P13303041536532388483

`eq[A105570(n), A347439(2*n+1)]`
-/

namespace A117204.P13303041536532388483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117204.P13303041536532388483

namespace A117204

/-- `eq[A105570(n), A347439(2*n+1)]` -/
def P13303041536532388483.Spec : Prop :=
  ∀ n, (P13303041536532388483.a n : ℤ) = A117204 (n + 1)

end A117204

/-! ## A117204.P199209565525564858

`record[A007947(floor(A007947(2*n+3)/2))]`
-/

namespace A117204.P199209565525564858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ⌊(A007947 (2 * n + 3) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P199209565525564858

namespace A117204

/-- `record[A007947(floor(A007947(2*n+3)/2))]` -/
def P199209565525564858.Spec : Prop :=
  ∀ n, P199209565525564858.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P14457719658048507290

`record[A007913(n+1)-A105570(2*n+3)]`
-/

namespace A117204.P14457719658048507290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - A105570 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P14457719658048507290

namespace A117204

/-- `record[A007913(n+1)-A105570(2*n+3)]` -/
def P14457719658048507290.Spec : Prop :=
  ∀ n, P14457719658048507290.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P468511092438546248

`record[A007947(n+1)-A105570(2*n+3)]`
-/

namespace A117204.P468511092438546248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A105570 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P468511092438546248

namespace A117204

/-- `record[A007947(n+1)-A105570(2*n+3)]` -/
def P468511092438546248.Spec : Prop :=
  ∀ n, P468511092438546248.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P7791075624277938493

`record[A007947(n+1)-A336642(2*n+3)]`
-/

namespace A117204.P7791075624277938493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A336642 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P7791075624277938493

namespace A117204

/-- `record[A007947(n+1)-A336642(2*n+3)]` -/
def P7791075624277938493.Spec : Prop :=
  ∀ n, P7791075624277938493.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P16829315719244172118

`record[A007913(n+1)/A008833(2*n+3)]`
-/

namespace A117204.P16829315719244172118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A008833 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P16829315719244172118

namespace A117204

/-- `record[A007913(n+1)/A008833(2*n+3)]` -/
def P16829315719244172118.Spec : Prop :=
  ∀ n, P16829315719244172118.a n = (A117204 (n + 1) : ℚ)

end A117204

/-! ## A117204.P8541879404611945182

`record[A007947(n+1)/A051903(2*n+3)]`
-/

namespace A117204.P8541879404611945182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A051903 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P8541879404611945182

namespace A117204

/-- `record[A007947(n+1)/A051903(2*n+3)]` -/
def P8541879404611945182.Spec : Prop :=
  ∀ n, P8541879404611945182.a n = (A117204 (n + 1) : ℚ)

end A117204

/-! ## A117204.P12461374771501569653

`record[A007913(n+1)%A007913(2*n+3)]`
-/

namespace A117204.P12461374771501569653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (n + 1)) (A007913 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P12461374771501569653

namespace A117204

/-- `record[A007913(n+1)%A007913(2*n+3)]` -/
def P12461374771501569653.Spec : Prop :=
  ∀ n, P12461374771501569653.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P8252820832297091394

`record[A007947(n+1)%A007947(2*n+3)]`
-/

namespace A117204.P8252820832297091394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007947 (n + 1)) (A007947 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P8252820832297091394

namespace A117204

/-- `record[A007947(n+1)%A007947(2*n+3)]` -/
def P8252820832297091394.Spec : Prop :=
  ∀ n, P8252820832297091394.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P11967853062408986434

`eq[A008833(2*n+3), A008833(n+1)]+1`
-/

namespace A117204.P11967853062408986434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117204.P11967853062408986434

namespace A117204

/-- `eq[A008833(2*n+3), A008833(n+1)]+1` -/
def P11967853062408986434.Spec : Prop :=
  ∀ n, (P11967853062408986434.a n : ℤ) = A117204 (n + 1)

end A117204

/-! ## A117204.P10560379584261049806

`eq[A105597(2*n)+A087049(2*n), A105597(2*n+1)]`
-/

namespace A117204.P10560379584261049806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n) + A087049 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117204.P10560379584261049806

namespace A117204

/-- `eq[A105597(2*n)+A087049(2*n), A105597(2*n+1)]` -/
def P10560379584261049806.Spec : Prop :=
  ∀ n, (P10560379584261049806.a n : ℤ) = A117204 (n + 1)

end A117204

/-! ## A117204.P3071430670752059194

`record[A325978(n+1)/A008833(2*n+3)]`
-/

namespace A117204.P3071430670752059194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325978 (n + 1) : ℚ) / (A008833 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117204.P3071430670752059194

namespace A117204

/-- `record[A325978(n+1)/A008833(2*n+3)]` -/
def P3071430670752059194.Spec : Prop :=
  ∀ n, P3071430670752059194.a n = (A117204 (n + 1) : ℚ)

end A117204

/-! ## A117204.P15624567760657780319

`eq[A105597(2*n)+A105597(4*n), A105597(2*n+1)]`
-/

namespace A117204.P15624567760657780319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n) + A105597 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117204.P15624567760657780319

namespace A117204

/-- `eq[A105597(2*n)+A105597(4*n), A105597(2*n+1)]` -/
def P15624567760657780319.Spec : Prop :=
  ∀ n, (P15624567760657780319.a n : ℤ) = A117204 (n + 1)

end A117204

/-! ## A117204.P8432020213572184354

`filter[A264387(n+2), A008966(#)]`
-/

namespace A117204.P8432020213572184354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A117204.P8432020213572184354

namespace A117204

/-- `filter[A264387(n+2), A008966(#)]` -/
def P8432020213572184354.Spec : Prop :=
  ∀ n, P8432020213572184354.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P8208597329062021192

`filter[A264387(n+2), A323154(#)]`
-/

namespace A117204.P8208597329062021192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A117204.P8208597329062021192

namespace A117204

/-- `filter[A264387(n+2), A323154(#)]` -/
def P8208597329062021192.Spec : Prop :=
  ∀ n, P8208597329062021192.a n = A117204 (n + 1)

end A117204

/-! ## A117204.P8096848194923757314

`∩[A005117(n+1), A264387(n+1)]`
-/

namespace A117204.P8096848194923757314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117204.P8096848194923757314

namespace A117204

/-- `∩[A005117(n+1), A264387(n+1)]` -/
def P8096848194923757314.Spec : Prop :=
  ∀ n, (P8096848194923757314.a n : ℤ) = A117204 (n + 1)

end A117204

/-!
# A117205: Odd squarefree positive integers k such that (k+1)/2 is also squarefree.

The programs for A117205, the canonical program `A117205.P13625184972565813265` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117205 has offset 1).

The definition of A117205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117205.P5884086513878990069

`2*A117206(n+1)-1`
-/

namespace A117205.P5884086513878990069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117206 (n + 1) - 1

end

end A117205.P5884086513878990069

namespace A117205

/-- `2*A117206(n+1)-1` -/
def P5884086513878990069.Spec : Prop :=
  ∀ n, P5884086513878990069.a n = A117205 (n + 1)

end A117205

/-! ## A117205.P13625184972565813265

`record[A007913(A007913(n+1)+n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117205

/-- `record[A007913(A007913(n+1)+n)]` -/
def P13625184972565813265.Spec : Prop :=
  ∀ n, P13625184972565813265.a n = A117205 (n + 1)

theorem P13625184972565813265.correct : P13625184972565813265.Spec := by
  intro n
  simp only [A117205, Nat.add_sub_cancel]

end A117205

/-! ## A117205.P10486844497193884305

`record[A007947(A007947(n+1)+n)]`
-/

namespace A117205.P10486844497193884305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P10486844497193884305

namespace A117205

/-- `record[A007947(A007947(n+1)+n)]` -/
def P10486844497193884305.Spec : Prop :=
  ∀ n, P10486844497193884305.a n = A117205 (n + 1)

end A117205

/-! ## A117205.P17736170242193945884

`record[A083346(A083346(n+1)+n)]`
-/

namespace A117205.P17736170242193945884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A083346 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P17736170242193945884

namespace A117205

/-- `record[A083346(A083346(n+1)+n)]` -/
def P17736170242193945884.Spec : Prop :=
  ∀ n, P17736170242193945884.a n = A117205 (n + 1)

end A117205

/-! ## A117205.P3284808604261094953

`filter[A215726(n+1), A323239(#)]`
-/

namespace A117205.P3284808604261094953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A117205.P3284808604261094953

namespace A117205

/-- `filter[A215726(n+1), A323239(#)]` -/
def P3284808604261094953.Spec : Prop :=
  ∀ n, P3284808604261094953.a n = A117205 (n + 1)

end A117205

/-! ## A117205.P13300300026363936967

`filter[A215726(n+1), A373157(#)]`
-/

namespace A117205.P13300300026363936967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A117205.P13300300026363936967

namespace A117205

/-- `filter[A215726(n+1), A373157(#)]` -/
def P13300300026363936967.Spec : Prop :=
  ∀ n, P13300300026363936967.a n = A117205 (n + 1)

end A117205

/-! ## A117205.P8939469896573946357

`∩[A047623(n+1), A215726(n+1)]`
-/

namespace A117205.P8939469896573946357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P8939469896573946357

namespace A117205

/-- `∩[A047623(n+1), A215726(n+1)]` -/
def P8939469896573946357.Spec : Prop :=
  ∀ n, (P8939469896573946357.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P15065354415683073472

`∩[A056911(n+1), A215726(n+1)]`
-/

namespace A117205.P15065354415683073472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P15065354415683073472

namespace A117205

/-- `∩[A056911(n+1), A215726(n+1)]` -/
def P15065354415683073472.Spec : Prop :=
  ∀ n, (P15065354415683073472.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P11478160666733982212

`∩[A182318(n+1), A215726(n+1)]`
-/

namespace A117205.P11478160666733982212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P11478160666733982212

namespace A117205

/-- `∩[A182318(n+1), A215726(n+1)]` -/
def P11478160666733982212.Spec : Prop :=
  ∀ n, (P11478160666733982212.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P1323039846831169083

`∩[A192861(n+1), A215726(n+1)]`
-/

namespace A117205.P1323039846831169083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P1323039846831169083

namespace A117205

/-- `∩[A192861(n+1), A215726(n+1)]` -/
def P1323039846831169083.Spec : Prop :=
  ∀ n, (P1323039846831169083.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P16402815338008461564

`∩[A215726(n+1), A325128(n+1)]`
-/

namespace A117205.P16402815338008461564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P16402815338008461564

namespace A117205

/-- `∩[A215726(n+1), A325128(n+1)]` -/
def P16402815338008461564.Spec : Prop :=
  ∀ n, (P16402815338008461564.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P1318313318541262016

`∩[A215726(n+1), A334420(n+1)]`
-/

namespace A117205.P1318313318541262016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P1318313318541262016

namespace A117205

/-- `∩[A215726(n+1), A334420(n+1)]` -/
def P1318313318541262016.Spec : Prop :=
  ∀ n, (P1318313318541262016.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P18314056041766045894

`∩[A215726(n+1), A357014(n+1)]`
-/

namespace A117205.P18314056041766045894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P18314056041766045894

namespace A117205

/-- `∩[A215726(n+1), A357014(n+1)]` -/
def P18314056041766045894.Spec : Prop :=
  ∀ n, (P18314056041766045894.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P1530840808185098354

`∩[A215726(n+1), A305635(n+1)]`
-/

namespace A117205.P1530840808185098354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117205.P1530840808185098354

namespace A117205

/-- `∩[A215726(n+1), A305635(n+1)]` -/
def P1530840808185098354.Spec : Prop :=
  ∀ n, (P1530840808185098354.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P9449627262720155607

`record[∏{p}[∏{p}[n+1, #]+n, #]]`
-/

namespace A117205.P9449627262720155607
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P9449627262720155607

namespace A117205

/-- `record[∏{p}[∏{p}[n+1, #]+n, #]]` -/
def P9449627262720155607.Spec : Prop :=
  ∀ n, (P9449627262720155607.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P740237657304984459

`record[∏{p}[record[2*∏{p}[n, #]]-1, #]]`
-/

namespace A117205.P740237657304984459
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f4 n), p)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P740237657304984459

namespace A117205

/-- `record[∏{p}[record[2*∏{p}[n, #]]-1, #]]` -/
def P740237657304984459.Spec : Prop :=
  ∀ n, (P740237657304984459.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P17720421124312639702

`record[∏{p}[A055231(n+1)+n, #]]`
-/

namespace A117205.P17720421124312639702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P17720421124312639702

namespace A117205

/-- `record[∏{p}[A055231(n+1)+n, #]]` -/
def P17720421124312639702.Spec : Prop :=
  ∀ n, (P17720421124312639702.a n : ℤ) = A117205 (n + 1)

end A117205

/-! ## A117205.P9666852131738608573

`A004273(A117206(n+1))`
-/

namespace A117205.P9666852131738608573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A117206 (n + 1)).toNat

end

end A117205.P9666852131738608573

namespace A117205

/-- `A004273(A117206(n+1))` -/
def P9666852131738608573.Spec : Prop :=
  ∀ n, P9666852131738608573.a n = A117205 (n + 1)

end A117205

/-! ## A117205.P1353290550979999620

`record[A099984(A005117(n+1))]`
-/

namespace A117205.P1353290550979999620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099984 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P1353290550979999620

namespace A117205

/-- `record[A099984(A005117(n+1))]` -/
def P1353290550979999620.Spec : Prop :=
  ∀ n, P1353290550979999620.a n = A117205 (n + 1)

end A117205

/-!
# A117206: Squarefree positive integers k such that 2*k-1 is also squarefree.

The programs for A117206, the canonical program `A117206.P17758905267963498377` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117206 has offset 1).

The definition of A117206 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117205, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117206.P17758905267963498377

`(A117205(n+1)+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117206

/-- `(A117205(n+1)+1)/2` -/
def P17758905267963498377.Spec : Prop :=
  ∀ n, P17758905267963498377.a n = (A117206 (n + 1) : ℚ)

end A117206

/-! ## A117206.P2908402432005388500

`ceil(A117205(n+1)/2)`
-/

namespace A117206.P2908402432005388500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117205 (n + 1) : ℚ) / 2⌉

end

end A117206.P2908402432005388500

namespace A117206

/-- `ceil(A117205(n+1)/2)` -/
def P2908402432005388500.Spec : Prop :=
  ∀ n, P2908402432005388500.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P12182158543028680963

`record[A055653(A055653(2*n+1)-n)]`
-/

namespace A117206.P12182158543028680963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A055653 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P12182158543028680963

namespace A117206

/-- `record[A055653(A055653(2*n+1)-n)]` -/
def P12182158543028680963.Spec : Prop :=
  ∀ n, P12182158543028680963.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P6517747236292939868

`record[A007913(n+1)-A048146(2*n+1)]`
-/

namespace A117206.P6517747236292939868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - A048146 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P6517747236292939868

namespace A117206

/-- `record[A007913(n+1)-A048146(2*n+1)]` -/
def P6517747236292939868.Spec : Prop :=
  ∀ n, P6517747236292939868.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P7618887528774792979

`record[A083346(n+1)-A048146(2*n+1)]`
-/

namespace A117206.P7618887528774792979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) - A048146 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P7618887528774792979

namespace A117206

/-- `record[A083346(n+1)-A048146(2*n+1)]` -/
def P7618887528774792979.Spec : Prop :=
  ∀ n, P7618887528774792979.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P5951401397600621746

`record[A007913(n+1)*A008966(2*n+1)]`
-/

namespace A117206.P5951401397600621746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A008966 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P5951401397600621746

namespace A117206

/-- `record[A007913(n+1)*A008966(2*n+1)]` -/
def P5951401397600621746.Spec : Prop :=
  ∀ n, P5951401397600621746.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P11615025553227931196

`record[A007947(n+1)*A008966(2*n+1)]`
-/

namespace A117206.P11615025553227931196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008966 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P11615025553227931196

namespace A117206

/-- `record[A007947(n+1)*A008966(2*n+1)]` -/
def P11615025553227931196.Spec : Prop :=
  ∀ n, P11615025553227931196.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P4272589882635550966

`record[A007913(n+1)/A005361(2*n+1)]`
-/

namespace A117206.P4272589882635550966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A005361 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P4272589882635550966

namespace A117206

/-- `record[A007913(n+1)/A005361(2*n+1)]` -/
def P4272589882635550966.Spec : Prop :=
  ∀ n, P4272589882635550966.a n = (A117206 (n + 1) : ℚ)

end A117206

/-! ## A117206.P14576300763958004322

`record[A007947(n+1)/A005361(2*n+1)]`
-/

namespace A117206.P14576300763958004322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A005361 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P14576300763958004322

namespace A117206

/-- `record[A007947(n+1)/A005361(2*n+1)]` -/
def P14576300763958004322.Spec : Prop :=
  ∀ n, P14576300763958004322.a n = (A117206 (n + 1) : ℚ)

end A117206

/-! ## A117206.P10972770505380428893

`record[A083346(n+1)/A005361(2*n+1)]`
-/

namespace A117206.P10972770505380428893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083346 (n + 1) : ℚ) / (A005361 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P10972770505380428893

namespace A117206

/-- `record[A083346(n+1)/A005361(2*n+1)]` -/
def P10972770505380428893.Spec : Prop :=
  ∀ n, P10972770505380428893.a n = (A117206 (n + 1) : ℚ)

end A117206

/-! ## A117206.P2890531591052624738

`eq[A081221(2*n+1), A105570(n+1)]+1`
-/

namespace A117206.P2890531591052624738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117206.P2890531591052624738

namespace A117206

/-- `eq[A081221(2*n+1), A105570(n+1)]+1` -/
def P2890531591052624738.Spec : Prop :=
  ∀ n, (P2890531591052624738.a n : ℤ) = A117206 (n + 1)

end A117206

/-! ## A117206.P16720657387455234033

`eq[A105570(2*n+1), A105570(n+1)]+1`
-/

namespace A117206.P16720657387455234033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117206.P16720657387455234033

namespace A117206

/-- `eq[A105570(2*n+1), A105570(n+1)]+1` -/
def P16720657387455234033.Spec : Prop :=
  ∀ n, (P16720657387455234033.a n : ℤ) = A117206 (n + 1)

end A117206

/-! ## A117206.P16897821546361020112

`eq[A078771(2*n+1), A078771(2*(n+1))]+1`
-/

namespace A117206.P16897821546361020112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117206.P16897821546361020112

namespace A117206

/-- `eq[A078771(2*n+1), A078771(2*(n+1))]+1` -/
def P16897821546361020112.Spec : Prop :=
  ∀ n, (P16897821546361020112.a n : ℤ) = A117206 (n + 1)

end A117206

/-! ## A117206.P11303403585353934818

`eq[A144776(2*n+1), A144776(2*(n+1))]+1`
-/

namespace A117206.P11303403585353934818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144776 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144776 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117206.P11303403585353934818

namespace A117206

/-- `eq[A144776(2*n+1), A144776(2*(n+1))]+1` -/
def P11303403585353934818.Spec : Prop :=
  ∀ n, (P11303403585353934818.a n : ℤ) = A117206 (n + 1)

end A117206

/-! ## A117206.P1334448476053214846

`record[A325978(n+1)-A048146(2*n+1)]`
-/

namespace A117206.P1334448476053214846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) - A048146 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P1334448476053214846

namespace A117206

/-- `record[A325978(n+1)-A048146(2*n+1)]` -/
def P1334448476053214846.Spec : Prop :=
  ∀ n, P1334448476053214846.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P1125576723742547179

`record[A008966(2*n+1)*A055231(n+1)]`
-/

namespace A117206.P1125576723742547179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * n + 1) * A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P1125576723742547179

namespace A117206

/-- `record[A008966(2*n+1)*A055231(n+1)]` -/
def P1125576723742547179.Spec : Prop :=
  ∀ n, P1125576723742547179.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P14542005175245784894

`record[A055231(n+1)/A005361(2*n+1)]`
-/

namespace A117206.P14542005175245784894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055231 (n + 1) : ℚ) / (A005361 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P14542005175245784894

namespace A117206

/-- `record[A055231(n+1)/A005361(2*n+1)]` -/
def P14542005175245784894.Spec : Prop :=
  ∀ n, P14542005175245784894.a n = (A117206 (n + 1) : ℚ)

end A117206

/-! ## A117206.P6597455838598752501

`∩[A005117(n+1), A264387(n+1)+1]`
-/

namespace A117206.P6597455838598752501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117206.P6597455838598752501

namespace A117206

/-- `∩[A005117(n+1), A264387(n+1)+1]` -/
def P6597455838598752501.Spec : Prop :=
  ∀ n, (P6597455838598752501.a n : ℤ) = A117206 (n + 1)

end A117206

/-! ## A117206.P16020879283919830374

`A000463(A117205(n+1))`
-/

namespace A117206.P16020879283919830374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A117205 (n + 1)).toNat

end

end A117206.P16020879283919830374

namespace A117206

/-- `A000463(A117205(n+1))` -/
def P16020879283919830374.Spec : Prop :=
  ∀ n, P16020879283919830374.a n = A117206 (n + 1)

end A117206

/-! ## A117206.P9235537203634850162

`record[A364900(record[A364900(n)])]`
-/

namespace A117206.P9235537203634850162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117206.P9235537203634850162

namespace A117206

/-- `record[A364900(record[A364900(n)])]` -/
def P9235537203634850162.Spec : Prop :=
  ∀ n, P9235537203634850162.a n = A117206 (n + 1)

end A117206

/-!
# A117207: Number triangle read by rows: T(n,k) = Sum_{j=0..n-k} C(n+j,j+k)*C(n-j,k).

The programs for A117207, there is no canonical definition to state claims against.
-/

/-! ## A117207.P14239217954675790565

`or(A035324(n+1), A115090(A212943(n+1)))`
-/

namespace A117207.P14239217954675790565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035324 (n + 1)) (A115090 (A212943 (n + 1)).toNat)

end

end A117207.P14239217954675790565

/-! ## A117207.P5416014389515241959

`A035324(n+1)+A004736(A319752(n)+1)%A131060(n)`
-/

namespace A117207.P5416014389515241959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (n + 1) + Int.tmod (A004736 (A319752 n + 1).toNat) (A131060 n)

end

end A117207.P5416014389515241959

/-!
# A117208: G.f. A(x) satisfies (1-x) = product_{n>=1} A(x^n).

The programs for A117208, there is no canonical definition to state claims against.
-/

/-! ## A117208.P10342038786055896888

`A071986(A207015(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A117208.P10342038786055896888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071986 (A207015 (n + 1)).toNat - a (n - 1)

end

end A117208.P10342038786055896888

/-! ## A117208.P90853823745462101

`A338939(A257616(n)+1)-a(n-1)%4` with `a(0)=1`
-/

namespace A117208.P90853823745462101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338939 (A257616 n + 1).toNat - Int.tmod (a (n - 1)) 4

end

end A117208.P90853823745462101

/-! ## A117208.P6657421903675575079

`A016357(record[A056960(n)])`
-/

namespace A117208.P6657421903675575079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117208.P6657421903675575079

/-! ## A117208.P5373407542221433484

`A016319(n)^A185304(A185314(n))`
-/

namespace A117208.P5373407542221433484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016319 n : ℚ) ^ (A185304 (A185314 n).toNat : ℤ)

end

end A117208.P5373407542221433484

/-! ## A117208.P16154257337666755220

`A329331(∑[n])+A016319(n)`
-/

namespace A117208.P16154257337666755220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329331 (∑ j ∈ Finset.range (n + 1), f1 j) + A016319 n

end

end A117208.P16154257337666755220

/-!
# A117212: Sum_{d|n} a(d)/d = (-1)^(n-1)/n for n>=1; equals the logarithmic g.f. of A117210.

The programs for A117212, the canonical program `A117212.P1727424025659028873` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117212 has offset 1).

The definition of A117212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117212.P16490208777062002332

`∑{d}[n+1, #*A092673(#)]`
-/

namespace A117212.P16490208777062002332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092673 d

end

end A117212.P16490208777062002332

namespace A117212

/-- `∑{d}[n+1, #*A092673(#)]` -/
def P16490208777062002332.Spec : Prop :=
  ∀ n, P16490208777062002332.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P13502341032423383588

`A046970(n+1)/A300894(n+1)`
-/

namespace A117212.P13502341032423383588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046970 (n + 1) : ℚ) / (A300894 (n + 1) : ℚ)

end

end A117212.P13502341032423383588

namespace A117212

/-- `A046970(n+1)/A300894(n+1)` -/
def P13502341032423383588.Spec : Prop :=
  ∀ n, P13502341032423383588.a n = (A117212 (n + 1) : ℚ)

end A117212

/-! ## A117212.P9666301459463899454

`∑{d}[n+1, A046692(#)*A048272((n+1)/#)]`
-/

namespace A117212.P9666301459463899454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P9666301459463899454

namespace A117212

/-- `∑{d}[n+1, A046692(#)*A048272((n+1)/#)]` -/
def P9666301459463899454.Spec : Prop :=
  ∀ n, P9666301459463899454.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P1727424025659028873

`∑{d}[n+1, A101035(#)*A193356((n+1)/#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117212

/-- `∑{d}[n+1, A101035(#)*A193356((n+1)/#)]` -/
def P1727424025659028873.Spec : Prop :=
  ∀ n, P1727424025659028873.a n = A117212 (n + 1)

theorem P1727424025659028873.correct : P1727424025659028873.Spec := by
  intro n
  simp only [A117212, Nat.add_sub_cancel]

end A117212

/-! ## A117212.P15687104302968236505

`∑{d}[n+1, A000593(#)*A328722((n+1)/#)]`
-/

namespace A117212.P15687104302968236505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P15687104302968236505

namespace A117212

/-- `∑{d}[n+1, A000593(#)*A328722((n+1)/#)]` -/
def P15687104302968236505.Spec : Prop :=
  ∀ n, P15687104302968236505.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P7561287312082178223

`∑{d}[n+1, A078747(#)*A334657((n+1)/#)]`
-/

namespace A117212.P7561287312082178223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078747 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P7561287312082178223

namespace A117212

/-- `∑{d}[n+1, A078747(#)*A334657((n+1)/#)]` -/
def P7561287312082178223.Spec : Prop :=
  ∀ n, P7561287312082178223.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P14032167862222821094

`∑{d}[n+1, A130054(#)*A361019((n+1)/#)]`
-/

namespace A117212.P14032167862222821094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P14032167862222821094

namespace A117212

/-- `∑{d}[n+1, A130054(#)*A361019((n+1)/#)]` -/
def P14032167862222821094.Spec : Prop :=
  ∀ n, P14032167862222821094.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P2912096702593854339

`∑{d}[n+1, A228441(#)*A327278((n+1)/#)]`
-/

namespace A117212.P2912096702593854339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228441 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P2912096702593854339

namespace A117212

/-- `∑{d}[n+1, A228441(#)*A327278((n+1)/#)]` -/
def P2912096702593854339.Spec : Prop :=
  ∀ n, P2912096702593854339.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P11873847843483538718

`∑{d}[n+1, A230074(#)*A349341((n+1)/#)]`
-/

namespace A117212.P11873847843483538718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P11873847843483538718

namespace A117212

/-- `∑{d}[n+1, A230074(#)*A349341((n+1)/#)]` -/
def P11873847843483538718.Spec : Prop :=
  ∀ n, P11873847843483538718.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P1186940536014229594

`∑{d}[n+1, A298473(#)*A300894((n+1)/#)]`
-/

namespace A117212.P1186940536014229594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A300894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P1186940536014229594

namespace A117212

/-- `∑{d}[n+1, A298473(#)*A300894((n+1)/#)]` -/
def P1186940536014229594.Spec : Prop :=
  ∀ n, P1186940536014229594.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P17478449523216021981

`∑{d}[n+1, A288417(#)*A327960((n+1)/#)]`
-/

namespace A117212.P17478449523216021981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288417 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P17478449523216021981

namespace A117212

/-- `∑{d}[n+1, A288417(#)*A327960((n+1)/#)]` -/
def P17478449523216021981.Spec : Prop :=
  ∀ n, P17478449523216021981.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P7850041291558963752

`∑{d}[n+1, A317528(#)*A323363((n+1)/#)]`
-/

namespace A117212.P7850041291558963752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317528 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P7850041291558963752

namespace A117212

/-- `∑{d}[n+1, A317528(#)*A323363((n+1)/#)]` -/
def P7850041291558963752.Spec : Prop :=
  ∀ n, P7850041291558963752.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P7732411949072718094

`∑{d}[n+1, A319997(#)*A328641((n+1)/#)]`
-/

namespace A117212.P7732411949072718094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319997 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P7732411949072718094

namespace A117212

/-- `∑{d}[n+1, A319997(#)*A328641((n+1)/#)]` -/
def P7732411949072718094.Spec : Prop :=
  ∀ n, P7732411949072718094.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P14496811062286804835

`∑{d}[n+1, A033999(#-1)*A055615((n+1)/#)]`
-/

namespace A117212.P14496811062286804835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P14496811062286804835

namespace A117212

/-- `∑{d}[n+1, A033999(#-1)*A055615((n+1)/#)]` -/
def P14496811062286804835.Spec : Prop :=
  ∀ n, P14496811062286804835.a n = A117212 (n + 1)

end A117212

/-! ## A117212.P14512333601876171575

`∑{d}[n+1, A176563(#-1)*A349343((n+1)/#)]`
-/

namespace A117212.P14512333601876171575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176563 (d - 1) * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P14512333601876171575

namespace A117212

/-- `∑{d}[n+1, A176563(#-1)*A349343((n+1)/#)]` -/
def P14512333601876171575.Spec : Prop :=
  ∀ n, P14512333601876171575.a n = A117212 (n + 1)

end A117212

/-!
# A117213: a(n) = smallest term of sequence A002110 divisible by n-th squarefree positive integer.

The programs for A117213, the canonical program `A117213.P329896806141795858` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117213 has offset 1).

The definition of A117213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117213.P2527866589644730133

`A073039(lt[(n-∏{p}[n, #])², 1])`
-/

namespace A117213.P2527866589644730133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A117213.P2527866589644730133

namespace A117213

/-- `A073039(lt[(n-∏{p}[n, #])², 1])` -/
def P2527866589644730133.Spec : Prop :=
  ∀ n, P2527866589644730133.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P342760237120114142

`A073039(A005117(n+1))`
-/

namespace A117213.P342760237120114142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (A005117 (n + 1)).toNat

end

end A117213.P342760237120114142

namespace A117213

/-- `A073039(A005117(n+1))` -/
def P342760237120114142.Spec : Prop :=
  ∀ n, P342760237120114142.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P329896806141795858

`A034386(A073482(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A117213

/-- `A034386(A073482(n+1))` -/
def P329896806141795858.Spec : Prop :=
  ∀ n, P329896806141795858.a n = A117213 (n + 1)

theorem P329896806141795858.correct : P329896806141795858.Spec := by
  intro n
  simp only [A117213, Nat.add_sub_cancel]

end A117213

/-! ## A117213.P8483101936850079133

`A073039(A225680(n+1))`
-/

namespace A117213.P8483101936850079133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (A225680 (n + 1)).toNat

end

end A117213.P8483101936850079133

namespace A117213

/-- `A073039(A225680(n+1))` -/
def P8483101936850079133.Spec : Prop :=
  ∀ n, P8483101936850079133.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P11795341617339545432

`A073039(record[A007947(n+1)])`
-/

namespace A117213.P11795341617339545432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117213.P11795341617339545432

namespace A117213

/-- `A073039(record[A007947(n+1)])` -/
def P11795341617339545432.Spec : Prop :=
  ∀ n, P11795341617339545432.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P5215640453141852536

`A073039(record[A015052(n+1)])`
-/

namespace A117213.P5215640453141852536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117213.P5215640453141852536

namespace A117213

/-- `A073039(record[A015052(n+1)])` -/
def P5215640453141852536.Spec : Prop :=
  ∀ n, P5215640453141852536.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P17833501447793647676

`A073039(record[A325314(n+1)])`
-/

namespace A117213.P17833501447793647676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117213.P17833501447793647676

namespace A117213

/-- `A073039(record[A325314(n+1)])` -/
def P17833501447793647676.Spec : Prop :=
  ∀ n, P17833501447793647676.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P16917350544661828714

`A034386(A006530(record[∏{p}[n, #]]))`
-/

namespace A117213.P16917350544661828714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A117213.P16917350544661828714

namespace A117213

/-- `A034386(A006530(record[∏{p}[n, #]]))` -/
def P16917350544661828714.Spec : Prop :=
  ∀ n, P16917350544661828714.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P8526253919577825003

`A108951(A006530(record[∏{p}[n+1, #]]))`
-/

namespace A117213.P8526253919577825003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A117213.P8526253919577825003

namespace A117213

/-- `A108951(A006530(record[∏{p}[n+1, #]]))` -/
def P8526253919577825003.Spec : Prop :=
  ∀ n, P8526253919577825003.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P11165060840035664351

`A002110(n+1-A243289(n+1))`
-/

namespace A117213.P11165060840035664351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 ((n + 1 : ℤ) - A243289 (n + 1)).toNat

end

end A117213.P11165060840035664351

namespace A117213

/-- `A002110(n+1-A243289(n+1))` -/
def P11165060840035664351.Spec : Prop :=
  ∀ n, P11165060840035664351.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P18106533595629285340

`A005117(n+1)*A117214(n+1)`
-/

namespace A117213.P18106533595629285340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) * A117214 (n + 1)

end

end A117213.P18106533595629285340

namespace A117213

/-- `A005117(n+1)*A117214(n+1)` -/
def P18106533595629285340.Spec : Prop :=
  ∀ n, P18106533595629285340.a n = A117213 (n + 1)

end A117213

/-! ## A117213.P4888350874638444861

`A108951(A006530(record[A053143(n+1)]))`
-/

namespace A117213.P4888350874638444861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A117213.P4888350874638444861

namespace A117213

/-- `A108951(A006530(record[A053143(n+1)]))` -/
def P4888350874638444861.Spec : Prop :=
  ∀ n, P4888350874638444861.a n = A117213 (n + 1)

end A117213

/-!
# A117214: a(n) = (A117213(n))/(n-th squarefree positive integer).

The programs for A117214, the canonical program `A117214.P17772851819730483215` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117214 has offset 1).

The definition of A117214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117214.P14291919210758521293

`A083720(record[∏{p}[n, #]])`
-/

namespace A117214.P14291919210758521293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A117214.P14291919210758521293

namespace A117214

/-- `A083720(record[∏{p}[n, #]])` -/
def P14291919210758521293.Spec : Prop :=
  ∀ n, P14291919210758521293.a n = A117214 (n + 1)

end A117214

/-! ## A117214.P6104533748915264967

`A083720(A005117(n+1))`
-/

namespace A117214.P6104533748915264967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083720 (A005117 (n + 1)).toNat

end

end A117214.P6104533748915264967

namespace A117214

/-- `A083720(A005117(n+1))` -/
def P6104533748915264967.Spec : Prop :=
  ∀ n, P6104533748915264967.a n = A117214 (n + 1)

end A117214

/-! ## A117214.P17772851819730483215

`A117213(n+1)/A005117(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A117214

/-- `A117213(n+1)/A005117(n+1)` -/
def P17772851819730483215.Spec : Prop :=
  ∀ n, P17772851819730483215.a n = (A117214 (n + 1) : ℚ)

end A117214

/-! ## A117214.P3572454813950419698

`A117213(n+1)/record[A007913(n+1)]`
-/

namespace A117214.P3572454813950419698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117213 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A117214.P3572454813950419698

namespace A117214

/-- `A117213(n+1)/record[A007913(n+1)]` -/
def P3572454813950419698.Spec : Prop :=
  ∀ n, P3572454813950419698.a n = (A117214 (n + 1) : ℚ)

end A117214

/-! ## A117214.P9952813681173359222

`A117213(n+1)/record[A007947(n+1)]`
-/

namespace A117214.P9952813681173359222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117213 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A117214.P9952813681173359222

namespace A117214

/-- `A117213(n+1)/record[A007947(n+1)]` -/
def P9952813681173359222.Spec : Prop :=
  ∀ n, P9952813681173359222.a n = (A117214 (n + 1) : ℚ)

end A117214

/-! ## A117214.P2891173682560845834

`A117213(n+1)/record[A097246(n+1)]`
-/

namespace A117214.P2891173682560845834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117213 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A117214.P2891173682560845834

namespace A117214

/-- `A117213(n+1)/record[A097246(n+1)]` -/
def P2891173682560845834.Spec : Prop :=
  ∀ n, P2891173682560845834.a n = (A117214 (n + 1) : ℚ)

end A117214

/-!
# A117215: Number of divisors of x^n-1 having the maximal height A114536(n).

The programs for A117215, there is no canonical definition to state claims against.
-/

/-! ## A117215.P13093629251925917356

`A000079(gcd(A244098(n+1), A329851(n)))`
-/

namespace A117215.P13093629251925917356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.gcd (A244098 (n + 1)) (A329851 n))

end

end A117215.P13093629251925917356

/-! ## A117215.P16662134850596435096

`A278541(A046523(n+1)^A046534(n+1))`
-/

namespace A117215.P16662134850596435096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (SequenceMachineLib.roundAway ((A046523 (n + 1) : ℚ) ^ (A046534 (n + 1) : ℤ))).toNat

end

end A117215.P16662134850596435096

/-! ## A117215.P1395127852289695457

`A278541(A046523(n+1)^A340365(n+1))`
-/

namespace A117215.P1395127852289695457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (SequenceMachineLib.roundAway ((A046523 (n + 1) : ℚ) ^ (A340365 (n + 1) : ℤ))).toNat

end

end A117215.P1395127852289695457

/-! ## A117215.P17932956951824827598

`A286596(A046523(n+1)^A340365(n+1))`
-/

namespace A117215.P17932956951824827598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (SequenceMachineLib.roundAway ((A046523 (n + 1) : ℚ) ^ (A340365 (n + 1) : ℤ))).toNat

end

end A117215.P17932956951824827598

/-! ## A117215.P16871515243430672090

`A278541(A071364(n+1)^A340365(n+1))`
-/

namespace A117215.P16871515243430672090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (SequenceMachineLib.roundAway ((A071364 (n + 1) : ℚ) ^ (A340365 (n + 1) : ℤ))).toNat

end

end A117215.P16871515243430672090

/-!
# A117216: Number of points in the standard root system version of the D_4 lattice having L_infinity norm n.

The programs for A117216, the canonical program `A117216.P14004553023379914469` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117216 has offset 0).

The definition of A117216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117216.P3810374946964924819

`floor(4/acot(2*n)^3)`
-/

namespace A117216.P3810374946964924819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot (2 * n : ℝ) ^ 3⌋

end

end A117216.P3810374946964924819

namespace A117216

/-- `floor(4/acot(2*n)^3)` -/
def P3810374946964924819.Spec : Prop :=
  ∀ n, P3810374946964924819.a n = A117216 n

end A117216

/-! ## A117216.P18203924729227016599

`round(4/acot(2*n)^3)`
-/

namespace A117216.P18203924729227016599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / SequenceMachineLib.acot (2 * n : ℝ) ^ 3)

end

end A117216.P18203924729227016599

namespace A117216

/-- `round(4/acot(2*n)^3)` -/
def P18203924729227016599.Spec : Prop :=
  ∀ n, P18203924729227016599.a n = A117216 n

end A117216

/-! ## A117216.P14004553023379914469

`A152750(n)+A022146(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117216

/-- `A152750(n)+A022146(n)` -/
def P14004553023379914469.Spec : Prop :=
  ∀ n, P14004553023379914469.a n = A117216 n

theorem P14004553023379914469.correct : P14004553023379914469.Spec := by
  intro n
  simp only [A117216]

end A117216

/-! ## A117216.P18319812311989195280

`A008527(n)*A008574(n)`
-/

namespace A117216.P18319812311989195280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n * A008574 n

end

end A117216.P18319812311989195280

namespace A117216

/-- `A008527(n)*A008574(n)` -/
def P18319812311989195280.Spec : Prop :=
  ∀ n, P18319812311989195280.a n = A117216 n

end A117216

/-! ## A117216.P15087562611723341462

`A022144(n)*A053755(n)`
-/

namespace A117216.P15087562611723341462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n * A053755 n

end

end A117216.P15087562611723341462

namespace A117216

/-- `A022144(n)*A053755(n)` -/
def P15087562611723341462.Spec : Prop :=
  ∀ n, P15087562611723341462.a n = A117216 n

end A117216

/-! ## A117216.P4546423928479811043

`lcm(A008527(n), A022144(n))`
-/

namespace A117216.P4546423928479811043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008527 n) (A022144 n)

end

end A117216.P4546423928479811043

namespace A117216

/-- `lcm(A008527(n), A022144(n))` -/
def P4546423928479811043.Spec : Prop :=
  ∀ n, (P4546423928479811043.a n : ℤ) = A117216 n

end A117216

/-! ## A117216.P4222432313121122316

`(A016742(n)+1)*A022144(n)`
-/

namespace A117216.P4222432313121122316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016742 n + 1) * A022144 n

end

end A117216.P4222432313121122316

namespace A117216

/-- `(A016742(n)+1)*A022144(n)` -/
def P4222432313121122316.Spec : Prop :=
  ∀ n, P4222432313121122316.a n = A117216 n

end A117216

/-! ## A117216.P10623814825246519223

`2*A272130(n)-A010010(n)`
-/

namespace A117216.P10623814825246519223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272130 n - A010010 n

end

end A117216.P10623814825246519223

namespace A117216

/-- `2*A272130(n)-A010010(n)` -/
def P10623814825246519223.Spec : Prop :=
  ∀ n, P10623814825246519223.a n = A117216 n

end A117216

/-! ## A117216.P13084370585687418209

`A022144(n)/2*A108100(n)`
-/

namespace A117216.P13084370585687418209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 n : ℚ) / 2 * (A108100 n : ℚ)

end

end A117216.P13084370585687418209

namespace A117216

/-- `A022144(n)/2*A108100(n)` -/
def P13084370585687418209.Spec : Prop :=
  ∀ n, P13084370585687418209.a n = (A117216 n : ℚ)

end A117216

/-! ## A117216.P7582156365099022320

`A022144(n)+n*A244082(n)`
-/

namespace A117216.P7582156365099022320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + (n : ℤ) * A244082 n

end

end A117216.P7582156365099022320

namespace A117216

/-- `A022144(n)+n*A244082(n)` -/
def P7582156365099022320.Spec : Prop :=
  ∀ n, P7582156365099022320.a n = A117216 n

end A117216

/-! ## A117216.P5148575973220965114

`(A005843(n)²+1)*A022144(n)`
-/

namespace A117216.P5148575973220965114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n ^ 2 + 1) * A022144 n

end

end A117216.P5148575973220965114

namespace A117216

/-- `(A005843(n)²+1)*A022144(n)` -/
def P5148575973220965114.Spec : Prop :=
  ∀ n, P5148575973220965114.a n = A117216 n

end A117216

/-! ## A117216.P15997204254860222047

`A007900(n)+n*A008574(n)²`
-/

namespace A117216.P15997204254860222047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n + (n : ℤ) * A008574 n ^ 2

end

end A117216.P15997204254860222047

namespace A117216

/-- `A007900(n)+n*A008574(n)²` -/
def P15997204254860222047.Spec : Prop :=
  ∀ n, P15997204254860222047.a n = A117216 n

end A117216

/-! ## A117216.P1910326395062877186

`A005893(2*n)*A008574(n)`
-/

namespace A117216.P1910326395062877186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) * A008574 n

end

end A117216.P1910326395062877186

namespace A117216

/-- `A005893(2*n)*A008574(n)` -/
def P1910326395062877186.Spec : Prop :=
  ∀ n, P1910326395062877186.a n = A117216 n

end A117216

/-! ## A117216.P7751253797150110847

`(A113127(n+1)-2)*A005893(2*n)`
-/

namespace A117216.P7751253797150110847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113127 (n + 1) - 2) * A005893 (2 * n)

end

end A117216.P7751253797150110847

namespace A117216

/-- `(A113127(n+1)-2)*A005893(2*n)` -/
def P7751253797150110847.Spec : Prop :=
  ∀ n, P7751253797150110847.a n = A117216 n

end A117216

/-! ## A117216.P13813242399722983344

`(A004273(2*n)+1)*A005893(2*n)`
-/

namespace A117216.P13813242399722983344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 (2 * n) + 1) * A005893 (2 * n)

end

end A117216.P13813242399722983344

namespace A117216

/-- `(A004273(2*n)+1)*A005893(2*n)` -/
def P13813242399722983344.Spec : Prop :=
  ∀ n, P13813242399722983344.a n = A117216 n

end A117216

/-! ## A117216.P1495640248325665735

`A079908(2*n)+n*A005897(2*n)`
-/

namespace A117216.P1495640248325665735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 (2 * n) + (n : ℤ) * A005897 (2 * n)

end

end A117216.P1495640248325665735

namespace A117216

/-- `A079908(2*n)+n*A005897(2*n)` -/
def P1495640248325665735.Spec : Prop :=
  ∀ n, P1495640248325665735.a n = A117216 n

end A117216

/-! ## A117216.P3273556094827216891

`record[A035878(n)]`
-/

namespace A117216.P3273556094827216891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117216.P3273556094827216891

namespace A117216

/-- `record[A035878(n)]` -/
def P3273556094827216891.Spec : Prop :=
  ∀ n, P3273556094827216891.a n = A117216 n

end A117216

/-! ## A117216.P15725481360069324755

`A035878(2*n)`
-/

namespace A117216.P15725481360069324755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035878 (2 * n)

end

end A117216.P15725481360069324755

namespace A117216

/-- `A035878(2*n)` -/
def P15725481360069324755.Spec : Prop :=
  ∀ n, P15725481360069324755.a n = A117216 n

end A117216

/-! ## A117216.P1403457174140462343

`floor(sqrt(A082942(2*n)))`
-/

namespace A117216.P1403457174140462343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082942 (2 * n))

end

end A117216.P1403457174140462343

namespace A117216

/-- `floor(sqrt(A082942(2*n)))` -/
def P1403457174140462343.Spec : Prop :=
  ∀ n, P1403457174140462343.a n = A117216 n

end A117216

/-!
# A117217: Common prime gap associated with the primes A122535.

The programs for A117217, there is no canonical definition to state claims against.
-/

/-! ## A117217.P11636471319427601259

`A006562(n+1)-A122535(n+1)`
-/

namespace A117217.P11636471319427601259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - A122535 (n + 1)

end

end A117217.P11636471319427601259

/-! ## A117217.P5835960118763640987

`A013632(A122535(n+1))`
-/

namespace A117217.P5835960118763640987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A122535 (n + 1)).toNat

end

end A117217.P5835960118763640987

/-! ## A117217.P1953595094271158182

`A101597(n+1)+1`
-/

namespace A117217.P1953595094271158182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101597 (n + 1) + 1

end

end A117217.P1953595094271158182

/-! ## A117217.P18109699429606569878

`A181424(n+1)-A006562(n+1)`
-/

namespace A117217.P18109699429606569878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - A006562 (n + 1)

end

end A117217.P18109699429606569878

/-! ## A117217.P18010184124714118861

`(A181424(n+1)-A122535(n+1))/2`
-/

namespace A117217.P18010184124714118861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181424 (n + 1) - A122535 (n + 1) : ℚ) / 2

end

end A117217.P18010184124714118861

/-! ## A117217.P14486833003792678558

`∩[A071680(n+1), A173970(n+1)]-A122535(n+1)`
-/

namespace A117217.P14486833003792678558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A122535 (n + 1)

end

end A117217.P14486833003792678558

/-! ## A117217.P1920659439045374796

`A001223(A064113(n+1))`
-/

namespace A117217.P1920659439045374796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A064113 (n + 1)).toNat

end

end A117217.P1920659439045374796

/-! ## A117217.P5333526524772074933

`A001223(A066875(n+1))`
-/

namespace A117217.P5333526524772074933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A066875 (n + 1)).toNat

end

end A117217.P5333526524772074933

/-! ## A117217.P825209236438964281

`A001223(A173390(n+2))`
-/

namespace A117217.P825209236438964281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A173390 (n + 2)).toNat

end

end A117217.P825209236438964281

/-! ## A117217.P14807411883780627159

`A001223(A356347(n+1)-1)`
-/

namespace A117217.P14807411883780627159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A356347 (n + 1) - 1).toNat

end

end A117217.P14807411883780627159

/-! ## A117217.P7386934673773883416

`A001223(A066491(2*(n+1)))`
-/

namespace A117217.P7386934673773883416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A066491 (2 * (n + 1))).toNat

end

end A117217.P7386934673773883416

/-! ## A117217.P13264229816699800980

`A181424(n+1)-p?[A225494(n+1)]`
-/

namespace A117217.P13264229816699800980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117217.P13264229816699800980

/-! ## A117217.P15736838656691737649

`p?[A075540(n+1)]-A122535(n+1)`
-/

namespace A117217.P15736838656691737649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A122535 (n + 1)

end

end A117217.P15736838656691737649

/-! ## A117217.P5717677169756324335

`A181424(n+1)-p?[A075540(n+1)]`
-/

namespace A117217.P5717677169756324335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117217.P5717677169756324335

/-! ## A117217.P11512777086041040943

`A037201(A064113(n+1)-n)`
-/

namespace A117217.P11512777086041040943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037201 (A064113 (n + 1) - (n : ℤ)).toNat

end

end A117217.P11512777086041040943

/-! ## A117217.P6395525601734296697

`A054541(A356347(n+1))`
-/

namespace A117217.P6395525601734296697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A356347 (n + 1)).toNat

end

end A117217.P6395525601734296697

/-! ## A117217.P7504133123199799112

`A054541(A064113(n+1)+1)`
-/

namespace A117217.P7504133123199799112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A064113 (n + 1) + 1).toNat

end

end A117217.P7504133123199799112

/-! ## A117217.P8315950003392099704

`A054541(A066875(n+1)+1)`
-/

namespace A117217.P8315950003392099704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A066875 (n + 1) + 1).toNat

end

end A117217.P8315950003392099704

/-! ## A117217.P14218691623567323482

`A162345(A064113(n+1)+1)`
-/

namespace A117217.P14218691623567323482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (A064113 (n + 1) + 1).toNat

end

end A117217.P14218691623567323482

/-! ## A117217.P13737713799928419427

`A052288(A064113(n+1)-1)`
-/

namespace A117217.P13737713799928419427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (A064113 (n + 1) - 1).toNat

end

end A117217.P13737713799928419427

/-!
# A117218: Squares divisible by their number of digits.

The programs for A117218, there is no canonical definition to state claims against.
-/

/-! ## A117218.P2634782909760398431

`∩[A098952(n+1), n²]`
-/

namespace A117218.P2634782909760398431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A117218.P2634782909760398431

/-! ## A117218.P3210345634944786677

`∩[A000290(n), A098952(n+1)]`
-/

namespace A117218.P3210345634944786677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117218.P3210345634944786677

/-! ## A117218.P4242355529920577635

`record[A256791(A098952(n+1))]`
-/

namespace A117218.P4242355529920577635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 (A098952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117218.P4242355529920577635

/-! ## A117218.P1841519277640835228

`lt[A156681(n+2), 32]²`
-/

namespace A117218.P1841519277640835228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156681 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117218.P1841519277640835228

/-! ## A117218.P7166982287093427128

`lt[A156682(n+2), 37]²`
-/

namespace A117218.P7166982287093427128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156682 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A117218.P7166982287093427128

/-!
# A117219: Cubes divisible by their number of digits.

The programs for A117219, there is no canonical definition to state claims against.
-/

/-! ## A117219.P17232766609313101269

`lt[Δ[∏{p}[n+1, #]], A123701(n+1)]^3`
-/

namespace A117219.P17232766609313101269
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n ^ 3

end

end A117219.P17232766609313101269

/-! ## A117219.P10197056763071564529

`A048762(record[A094683(n)²])`
-/

namespace A117219.P10197056763071564529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117219.P10197056763071564529

/-! ## A117219.P5699935890206969162

`A048762(record[floor(n^(A038712(n²+1)/2))²])`
-/

namespace A117219.P5699935890206969162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((A038712 (n ^ 2 + 1) : ℚ) / 2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117219.P5699935890206969162

/-! ## A117219.P6091284300108350989

`A048762(record[floor(n^(A241235(n²+3)/2))²])`
-/

namespace A117219.P6091284300108350989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((A241235 (n ^ 2 + 3) : ℚ) / 2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117219.P6091284300108350989

/-! ## A117219.P3891989771210078345

`A000578(lt[A316223(n+1), A326771(n+2)])`
-/

namespace A117219.P3891989771210078345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326771 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117219.P3891989771210078345

/-!
# A117220: Number of partitions of 3-smooth numbers into parts not greater than 3.

The programs for A117220, there is no canonical definition to state claims against.
-/

/-! ## A117220.P11016661553428134718

`A001399(A003586(n+1))`
-/

namespace A117220.P11016661553428134718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A003586 (n + 1)).toNat

end

end A117220.P11016661553428134718

/-! ## A117220.P17745604872679492194

`round((∑[A061987(n)]+3)²/12)`
-/

namespace A117220.P17745604872679492194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2 : ℤ) : ℚ) / 12)

end

end A117220.P17745604872679492194

/-! ## A117220.P2835472885955173565

`round((Δ[A259823(n)]+3)²/12)`
-/

namespace A117220.P2835472885955173565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n + 3) ^ 2 : ℚ) / 12)

end

end A117220.P2835472885955173565

/-! ## A117220.P7993004965580255598

`A001399(∑[A061987(n)])`
-/

namespace A117220.P7993004965580255598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117220.P7993004965580255598

/-! ## A117220.P15224850474154576571

`A001399(Δ[A259823(n)])`
-/

namespace A117220.P15224850474154576571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (f1 (n + 1) - f1 n).toNat

end

end A117220.P15224850474154576571

/-! ## A117220.P7500478102124535123

`A001399(sqrt(A025620(n+1)))`
-/

namespace A117220.P7500478102124535123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A117220.P7500478102124535123

/-! ## A117220.P16050281674510269658

`A001399(A069353(n+1)+1)`
-/

namespace A117220.P16050281674510269658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A069353 (n + 1) + 1).toNat

end

end A117220.P16050281674510269658

/-! ## A117220.P2982318037072241782

`A001399(A055600(n+1)-1)`
-/

namespace A117220.P2982318037072241782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A055600 (n + 1) - 1).toNat

end

end A117220.P2982318037072241782

/-! ## A117220.P4353524734692193074

`A001399(A007694(n+2)/2)`
-/

namespace A117220.P4353524734692193074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A117220.P4353524734692193074

/-! ## A117220.P9904847948831740878

`A001399(A186711(A186712(n+1)))`
-/

namespace A117220.P9904847948831740878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A186711 (A186712 (n + 1)).toNat).toNat

end

end A117220.P9904847948831740878

/-!
# A117221: Number of partitions of 3-smooth numbers.

The programs for A117221, there is no canonical definition to state claims against.
-/

/-! ## A117221.P3112230746339624850

`A000041(A003586(n+1))`
-/

namespace A117221.P3112230746339624850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A003586 (n + 1)).toNat

end

end A117221.P3112230746339624850

/-! ## A117221.P9778269319730792866

`A000041(∑[A061987(n)])`
-/

namespace A117221.P9778269319730792866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117221.P9778269319730792866

/-! ## A117221.P17353096637611161050

`A000041(Δ[A259823(n)])`
-/

namespace A117221.P17353096637611161050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A117221.P17353096637611161050

/-! ## A117221.P9505304110279536555

`A000041(eq[1, A126760(n)])`
-/

namespace A117221.P9505304110279536555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117221.P9505304110279536555

/-! ## A117221.P17267621160302032255

`A000041(sqrt(A025620(n+1)))`
-/

namespace A117221.P17267621160302032255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A117221.P17267621160302032255

/-! ## A117221.P13646932682547127071

`A000041(record[A003962(n+1)])`
-/

namespace A117221.P13646932682547127071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117221.P13646932682547127071

/-! ## A117221.P17523772320745562821

`A000041(record[A064553(n+1)])`
-/

namespace A117221.P17523772320745562821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117221.P17523772320745562821

/-! ## A117221.P3726669750173776923

`A000041(record[A064558(n+1)])`
-/

namespace A117221.P3726669750173776923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117221.P3726669750173776923

/-! ## A117221.P16117750358518394049

`A000041(record[A065331(n+1)])`
-/

namespace A117221.P16117750358518394049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117221.P16117750358518394049

/-! ## A117221.P14245915672925462543

`A000041(A055600(n+1)-1)`
-/

namespace A117221.P14245915672925462543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A055600 (n + 1) - 1).toNat

end

end A117221.P14245915672925462543

/-!
# A117222: Number of partitions of 3-smooth numbers into 3-smooth numbers.

The programs for A117222, there is no canonical definition to state claims against.
-/

/-! ## A117222.P2745837092864746707

`A105420(A003586(n+1))`
-/

namespace A117222.P2745837092864746707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (A003586 (n + 1)).toNat

end

end A117222.P2745837092864746707

/-! ## A117222.P5264645580195270803

`A105420(∑[A061987(n)])`
-/

namespace A117222.P5264645580195270803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117222.P5264645580195270803

/-! ## A117222.P11571680783809054610

`A105420(Δ[A259823(n)])`
-/

namespace A117222.P11571680783809054610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (f1 (n + 1) - f1 n).toNat

end

end A117222.P11571680783809054610

/-! ## A117222.P17298148847509624879

`A105420(sqrt(A025620(n+1)))`
-/

namespace A117222.P17298148847509624879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A117222.P17298148847509624879

/-! ## A117222.P1095147044546143223

`A105420(A069353(n+1)+1)`
-/

namespace A117222.P1095147044546143223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (A069353 (n + 1) + 1).toNat

end

end A117222.P1095147044546143223

/-! ## A117222.P14902509974379649170

`A105420(A055600(n+1)-1)`
-/

namespace A117222.P14902509974379649170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (A055600 (n + 1) - 1).toNat

end

end A117222.P14902509974379649170

/-! ## A117222.P3480207015282473550

`A105420(A065119(n+1)/3)`
-/

namespace A117222.P3480207015282473550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (SequenceMachineLib.roundAway ((A065119 (n + 1) : ℚ) / 3)).toNat

end

end A117222.P3480207015282473550

/-! ## A117222.P8709785580987111273

`A105420(A033845(n+1)/6)`
-/

namespace A117222.P8709785580987111273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (SequenceMachineLib.roundAway ((A033845 (n + 1) : ℚ) / 6)).toNat

end

end A117222.P8709785580987111273

/-! ## A117222.P8522819883667713647

`A105420(A259823(n+1)-A259823(n))`
-/

namespace A117222.P8522819883667713647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105420 (A259823 (n + 1) - A259823 n).toNat

end

end A117222.P8522819883667713647

/-!
# A117223: Numbers n such that Phi(n,x) is a flat cyclotomic polynomial of order three.

The programs for A117223, there is no canonical definition to state claims against.
-/

/-! ## A117223.P2465038103553456091

`∪[A160353(n+1), A160355(n+1)]`
-/

namespace A117223.P2465038103553456091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P2465038103553456091

/-! ## A117223.P15787846844423502652

`A046389(eq[1, A278570(n+1)]+1)`
-/

namespace A117223.P15787846844423502652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117223.P15787846844423502652

/-! ## A117223.P4507605142046365986

`∩[A046389(n+1), A160350(n+1)]`
-/

namespace A117223.P4507605142046365986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P4507605142046365986

/-! ## A117223.P2246781871846918626

`∩[A160350(n+1), A392008(n+1)]`
-/

namespace A117223.P2246781871846918626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P2246781871846918626

/-! ## A117223.P2101351151841940763

`∩[A046316(n+1), A160350(n+1)]`
-/

namespace A117223.P2101351151841940763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P2101351151841940763

/-! ## A117223.P13315646653248566536

`∩[A160350(n+1), A278569(n+1)]`
-/

namespace A117223.P13315646653248566536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P13315646653248566536

/-! ## A117223.P2380192388935923780

`∩[A046340(n+1), A160350(n+1)]`
-/

namespace A117223.P2380192388935923780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P2380192388935923780

/-! ## A117223.P1942952078554981758

`∩[A160350(n+1), A257411(n+1)]`
-/

namespace A117223.P1942952078554981758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P1942952078554981758

/-! ## A117223.P2719937313816824139

`∩[A160350(n+1), A216918(n+1)]`
-/

namespace A117223.P2719937313816824139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P2719937313816824139

/-! ## A117223.P1748400221279818780

`∩[A160350(n+1), A267891(n+1)]`
-/

namespace A117223.P1748400221279818780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P1748400221279818780

/-! ## A117223.P8397829201481479607

`∩[A056912(n+1), A160350(n+1)]`
-/

namespace A117223.P8397829201481479607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P8397829201481479607

/-! ## A117223.P15951374412308218735

`∩[A160350(n+1), A333326(n+1)]`
-/

namespace A117223.P15951374412308218735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P15951374412308218735

/-! ## A117223.P10707369910698492874

`∩[A160350(n+1), A381218(n+1)]`
-/

namespace A117223.P10707369910698492874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P10707369910698492874

/-! ## A117223.P2037189418321515574

`∩[A098903(n+1), A160350(n+1)]`
-/

namespace A117223.P2037189418321515574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P2037189418321515574

/-! ## A117223.P13993786860106805759

`∩[A024556(n+1), A160350(n+1)]`
-/

namespace A117223.P13993786860106805759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P13993786860106805759

/-! ## A117223.P4263441983951168050

`∩[A160350(n+1), A386606(n+1)]`
-/

namespace A117223.P4263441983951168050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P4263441983951168050

/-! ## A117223.P9558994296713355834

`∩[A067019(n+1), A160350(n+1)]`
-/

namespace A117223.P9558994296713355834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P9558994296713355834

/-! ## A117223.P15808979996184561342

`∩[A160350(n+1), A306104(n+1)]`
-/

namespace A117223.P15808979996184561342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117223.P15808979996184561342

/-!
# A117224: Numbers for which the square and the cube have the same digital sum.

The programs for A117224, the canonical program `A117224.P6444175390300152224` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117224 has offset 1).

The definition of A117224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117224.P6444175390300152224

`eq[A004159(n), A004164(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117224

/-- `eq[A004159(n), A004164(n)]` -/
def P6444175390300152224.Spec : Prop :=
  ∀ n, (P6444175390300152224.a n : ℤ) = A117224 (n + 1)

theorem P6444175390300152224.correct : P6444175390300152224.Spec := by
  intro n
  simp only [A117224, Nat.add_sub_cancel]

end A117224

/-! ## A117224.P9629051540896689530

`eq[A240752(n)+a(n-1), A004164(n)]` with `a(0)=0`
-/

namespace A117224.P9629051540896689530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A240752 n + f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117224.P9629051540896689530

namespace A117224

/-- `eq[A240752(n)+a(n-1), A004164(n)]` -/
def P9629051540896689530.Spec : Prop :=
  ∀ n, (P9629051540896689530.a n : ℤ) = A117224 (n + 1)

end A117224

/-! ## A117224.P5526563408925724728

`eq[A067552(n)+A004164(n), A118881(n)]`
-/

namespace A117224.P5526563408925724728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n + A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117224.P5526563408925724728

namespace A117224

/-- `eq[A067552(n)+A004164(n), A118881(n)]` -/
def P5526563408925724728.Spec : Prop :=
  ∀ n, (P5526563408925724728.a n : ℤ) = A117224 (n + 1)

end A117224

/-! ## A117224.P6713895221622698511

`eq[A067552(n)+A004164(n), A007953(n)²]`
-/

namespace A117224.P6713895221622698511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n + A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117224.P6713895221622698511

namespace A117224

/-- `eq[A067552(n)+A004164(n), A007953(n)²]` -/
def P6713895221622698511.Spec : Prop :=
  ∀ n, (P6713895221622698511.a n : ℤ) = A117224 (n + 1)

end A117224

/-! ## A117224.P17881154735889020345

`eq[n²-A004164(n), A224977(n)]`
-/

namespace A117224.P17881154735889020345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117224.P17881154735889020345

namespace A117224

/-- `eq[n²-A004164(n), A224977(n)]` -/
def P17881154735889020345.Spec : Prop :=
  ∀ n, (P17881154735889020345.a n : ℤ) = A117224 (n + 1)

end A117224

/-!
# A117226: Number of permutations of [n] avoiding the consecutive pattern 1243.

The programs for A117226, there is no canonical definition to state claims against.
-/

/-! ## A117226.P14437490322097657336

`A327722(∑[n+2]-1)`
-/

namespace A117226.P14437490322097657336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327722 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A117226.P14437490322097657336

/-! ## A117226.P5830893003825407274

`A327722(A034856(n+1))+char[10]`
-/

namespace A117226.P5830893003825407274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327722 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117226.P5830893003825407274

/-! ## A117226.P11921976752249669088

`A327780(n)+A327722(A034856(n+1))`
-/

namespace A117226.P11921976752249669088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327780 n + A327722 (A034856 (n + 1)).toNat

end

end A117226.P11921976752249669088

/-! ## A117226.P7562499829501968347

`A206245(n)*A327722(A034856(n+1))`
-/

namespace A117226.P7562499829501968347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206245 n * A327722 (A034856 (n + 1)).toNat

end

end A117226.P7562499829501968347

/-! ## A117226.P12195571917392190626

`A242784(n)*A327722(A034856(n+1))`
-/

namespace A117226.P12195571917392190626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n * A327722 (A034856 (n + 1)).toNat

end

end A117226.P12195571917392190626

/-!
# A117227: Minimum number of unit segments required to construct n unit cubes.

The programs for A117227, there is no canonical definition to state claims against.
-/

/-! ## A117227.P7693669788658539576

`∑[A118656(n+1)]`
-/

namespace A117227.P7693669788658539576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117227.P7693669788658539576

/-! ## A117227.P6415723065143408283

`∑[A118656(Δ[n²]-n)%24]`
-/

namespace A117227.P6415723065143408283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118656 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117227.P6415723065143408283

/-! ## A117227.P7172882727468291897

`∑[A133263(4-∑{digits}[A115846(n), #])]`
-/

namespace A117227.P7172882727468291897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (4 - ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117227.P7172882727468291897

/-! ## A117227.P13854791708241628160

`∑[A000212(6-∑{digits}[A115846(n), #])]`
-/

namespace A117227.P13854791708241628160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (6 - ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117227.P13854791708241628160

/-! ## A117227.P436918898197032617

`∑[A000217(4-∑{digits}[A115846(n), #])+2]`
-/

namespace A117227.P436918898197032617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (4 - ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117227.P436918898197032617

/-!
# A117228: Palindromes which are divisible by the product and by the sum of their digits.

The programs for A117228, there is no canonical definition to state claims against.
-/

/-! ## A117228.P2633449121837443669

`∩[A038186(n+1), A082232(n+1)]`
-/

namespace A117228.P2633449121837443669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117228.P2633449121837443669

/-! ## A117228.P12398458583379465272

`∩[A082232(n+1), A277856(n+1)]`
-/

namespace A117228.P12398458583379465272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117228.P12398458583379465272

/-! ## A117228.P14462251033297684972

`∩[A007602(n+1), A082232(n+1)]`
-/

namespace A117228.P14462251033297684972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117228.P14462251033297684972

/-! ## A117228.P10480590735004827186

`∩[A038186(n+1), A082937(n+1)]`
-/

namespace A117228.P10480590735004827186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117228.P10480590735004827186

/-!
# A117229: Number of decimal digits of n in {0,1,4,8,9}.

The programs for A117229, the canonical program `A117229.P2958333672756986876` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117229 has offset 0).

The definition of A117229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117229.P6474372841685175121

`∑{digits}[n, A064391(#)]`
-/

namespace A117229.P6474372841685175121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064391 x).sum

end

end A117229.P6474372841685175121

namespace A117229

/-- `∑{digits}[n, A064391(#)]` -/
def P6474372841685175121.Spec : Prop :=
  ∀ n, P6474372841685175121.a n = A117229 n

end A117229

/-! ## A117229.P2958333672756986876

`∑{digits}[n, A087049(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117229

/-- `∑{digits}[n, A087049(#)]` -/
def P2958333672756986876.Spec : Prop :=
  ∀ n, P2958333672756986876.a n = A117229 n

theorem P2958333672756986876.correct : P2958333672756986876.Spec := by
  intro n
  simp only [A117229]

end A117229

/-! ## A117229.P3688415745978439204

`∑{digits}[n, A126732(#)]`
-/

namespace A117229.P3688415745978439204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A126732 x).sum

end

end A117229.P3688415745978439204

namespace A117229

/-- `∑{digits}[n, A126732(#)]` -/
def P3688415745978439204.Spec : Prop :=
  ∀ n, P3688415745978439204.a n = A117229 n

end A117229

/-! ## A117229.P17291823842674803590

`∑{digits}[n, A186447(#)]`
-/

namespace A117229.P17291823842674803590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A186447 x).sum

end

end A117229.P17291823842674803590

namespace A117229

/-- `∑{digits}[n, A186447(#)]` -/
def P17291823842674803590.Spec : Prop :=
  ∀ n, P17291823842674803590.a n = A117229 n

end A117229

/-! ## A117229.P1421210976582453079

`∑{digits}[n, A358680(#)]`
-/

namespace A117229.P1421210976582453079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A358680 x).sum

end

end A117229.P1421210976582453079

namespace A117229

/-- `∑{digits}[n, A358680(#)]` -/
def P1421210976582453079.Spec : Prop :=
  ∀ n, P1421210976582453079.a n = A117229 n

end A117229

/-! ## A117229.P16070358416637911262

`∑{digits}[n, A374036(#)]`
-/

namespace A117229.P16070358416637911262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A374036 x).sum

end

end A117229.P16070358416637911262

namespace A117229

/-- `∑{digits}[n, A374036(#)]` -/
def P16070358416637911262.Spec : Prop :=
  ∀ n, P16070358416637911262.a n = A117229 n

end A117229

/-! ## A117229.P11186986982212397736

`A276729(n)-A316867(n)`
-/

namespace A117229.P11186986982212397736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n - A316867 n

end

end A117229.P11186986982212397736

namespace A117229

/-- `A276729(n)-A316867(n)` -/
def P11186986982212397736.Spec : Prop :=
  ∀ n, P11186986982212397736.a n = A117229 n

end A117229

/-! ## A117229.P12596564269364988300

`∑{digits}[n, A000005(A000005(A000108(#)))%2]`
-/

namespace A117229.P12596564269364988300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A000005 (A000005 (A000108 x).toNat).toNat) 2).sum

end

end A117229.P12596564269364988300

namespace A117229

/-- `∑{digits}[n, A000005(A000005(A000108(#)))%2]` -/
def P12596564269364988300.Spec : Prop :=
  ∀ n, P12596564269364988300.a n = A117229 n

end A117229

/-!
# A117230: Start with 1 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A117230, the canonical program `A117230.P5906461755012267444` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117230 has offset 1).

The definition of A117230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117230.P5906461755012267444

`(n-1)%9+2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117230

/-- `(n-1)%9+2` -/
def P5906461755012267444.Spec : Prop :=
  ∀ n, P5906461755012267444.a n = A117230 (n + 1)

theorem P5906461755012267444.correct : P5906461755012267444.Spec := by
  intro n
  simp only [A117230, Nat.add_sub_cancel]

end A117230

/-!
# A117241: Numbers divisible by the sum of k times the k-th digit.

The programs for A117241, there is no canonical definition to state claims against.
-/

/-! ## A117241.P5000858061184716295

`lt[(n+1)%A156207(n+1), 1]+1`
-/

namespace A117241.P5000858061184716295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A156207 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A117241.P5000858061184716295

/-! ## A117241.P15308871623288704514

`eq[A003602(A103377(n+1)), A055640(n)]`
-/

namespace A117241.P15308871623288704514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A103377 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117241.P15308871623288704514

/-! ## A117241.P16632076231720965249

`eq[A055641(A343452(n+1)), A344511(n)]`
-/

namespace A117241.P16632076231720965249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A343452 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117241.P16632076231720965249

/-! ## A117241.P8102783814542261891

`A108191(n+2)-A224074(A364261(n+1))`
-/

namespace A117241.P8102783814542261891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108191 (n + 2) - A224074 (A364261 (n + 1)).toNat

end

end A117241.P8102783814542261891

/-!
# A117242: Chen primes that are not twin primes.

The programs for A117242, there is no canonical definition to state claims against.
-/

/-! ## A117242.P3064054386945677350

`∩[A007510(n+1), A063637(n+1)]`
-/

namespace A117242.P3064054386945677350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P3064054386945677350

/-! ## A117242.P635923683755472737

`∩[A007510(n+1), A109611(n+1)]`
-/

namespace A117242.P635923683755472737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P635923683755472737

/-! ## A117242.P2600897304916981464

`∩[A025584(n+1), A063637(n+1)]`
-/

namespace A117242.P2600897304916981464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P2600897304916981464

/-! ## A117242.P107122282510258956

`∩[A063637(n+1), A167706(n+1)]`
-/

namespace A117242.P107122282510258956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P107122282510258956

/-! ## A117242.P10393091064521995743

`∩[A109611(n+1), A167706(n+1)]`
-/

namespace A117242.P10393091064521995743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P10393091064521995743

/-! ## A117242.P17382496289530458264

`∩[A062729(n+1), A063637(n+1)]`
-/

namespace A117242.P17382496289530458264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P17382496289530458264

/-! ## A117242.P10043262645020021554

`∩[A062729(n+1), A109611(n+1)]`
-/

namespace A117242.P10043262645020021554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P10043262645020021554

/-! ## A117242.P17658501592684767648

`∩[A063637(n+1), A100962(n+1)]`
-/

namespace A117242.P17658501592684767648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P17658501592684767648

/-! ## A117242.P16191250443358331164

`p?[A064911(A100962(n+1)+2)*A100962(n+1)]`
-/

namespace A117242.P16191250443358331164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A100962 (n + 1) + 2).toNat * A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117242.P16191250443358331164

/-! ## A117242.P17051469388393289120

`∩[A063637(n+1), A164921(n+1)]`
-/

namespace A117242.P17051469388393289120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P17051469388393289120

/-! ## A117242.P11744260116706010244

`∩[A014092(n+1), A063637(n+1)]`
-/

namespace A117242.P11744260116706010244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P11744260116706010244

/-! ## A117242.P4632614511758221247

`∩[A063637(n+1), A166081(n+1)]`
-/

namespace A117242.P4632614511758221247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117242.P4632614511758221247

/-! ## A117242.P9016598921084018492

`p?[A014092(n+1)*A064911(A014092(n+1)+2)]`
-/

namespace A117242.P9016598921084018492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1) * A064911 (A014092 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117242.P9016598921084018492

/-! ## A117242.P12270376939214988886

`p?[A069345(A238327(n))]`
-/

namespace A117242.P12270376939214988886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (A238327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117242.P12270376939214988886

/-! ## A117242.P14479089514177383614

`p?[A069345(A007510(n+1)+2)]`
-/

namespace A117242.P14479089514177383614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (A007510 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117242.P14479089514177383614

/-!
# A117243: Chen numbers which are also twin primes.

The programs for A117243, there is no canonical definition to state claims against.
-/

/-! ## A117243.P7284883674982655154

`p?[A072963(Δ[A118482(n)])]`
-/

namespace A117243.P7284883674982655154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117243.P7284883674982655154

/-! ## A117243.P2740014027981608189

`p?[A072963(A109611(n+1))]`
-/

namespace A117243.P2740014027981608189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A109611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117243.P2740014027981608189

/-! ## A117243.P1350790091666349758

`record[A072963(A109611(n+2))]`
-/

namespace A117243.P1350790091666349758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A109611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117243.P1350790091666349758

/-! ## A117243.P12141925778692850150

`filter[A109611(n+1), A164292(#)]`
-/

namespace A117243.P12141925778692850150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A117243.P12141925778692850150

/-! ## A117243.P4453764817494826114

`p?[A284599(p?[A109611(n+1)])]`
-/

namespace A117243.P4453764817494826114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117243.P4453764817494826114

/-! ## A117243.P1926582451100872674

`∩[A001097(n+1), A109611(n+1)]`
-/

namespace A117243.P1926582451100872674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117243.P1926582451100872674

/-! ## A117243.P3134405337016786413

`∩[A062505(n+1), A109611(n+1)]`
-/

namespace A117243.P3134405337016786413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117243.P3134405337016786413

/-! ## A117243.P9929485767598441199

`∩[A062506(n+1), A109611(n+1)]`
-/

namespace A117243.P9929485767598441199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117243.P9929485767598441199

/-! ## A117243.P14950115765888266438

`∩[A109611(n+1), A334141(n+1)]`
-/

namespace A117243.P14950115765888266438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117243.P14950115765888266438

/-! ## A117243.P4096261772441273727

`record[A284599(A109611(n+1)+A000007(n))]`
-/

namespace A117243.P4096261772441273727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (A109611 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117243.P4096261772441273727

/-!
# A117244: Single (or isolated or non-twin) primes (A007510) that are not Chen primes (A109611).

The programs for A117244, the canonical program `A117244.P6624429983364198537` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117244 has offset 1).

The definition of A117244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117244.P18145084077021936032

`∩[A102540(n+1), A134797(n+1)]`
-/

namespace A117244.P18145084077021936032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P18145084077021936032

namespace A117244

/-- `∩[A102540(n+1), A134797(n+1)]` -/
def P18145084077021936032.Spec : Prop :=
  ∀ n, (P18145084077021936032.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P1559204424108146645

`∩[A007510(n+1), A102540(n+1)]`
-/

namespace A117244.P1559204424108146645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P1559204424108146645

namespace A117244

/-- `∩[A007510(n+1), A102540(n+1)]` -/
def P1559204424108146645.Spec : Prop :=
  ∀ n, (P1559204424108146645.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P6624429983364198537

`∩[A025584(n+1), A102540(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A117244

/-- `∩[A025584(n+1), A102540(n+1)]` -/
def P6624429983364198537.Spec : Prop :=
  ∀ n, (P6624429983364198537.a n : ℤ) = A117244 (n + 1)

theorem P6624429983364198537.correct : P6624429983364198537.Spec := by
  intro n
  simp only [A117244, Nat.add_sub_cancel]

end A117244

/-! ## A117244.P11471807709690099210

`∩[A102540(n+1), A156828(n+1)]`
-/

namespace A117244.P11471807709690099210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P11471807709690099210

namespace A117244

/-- `∩[A102540(n+1), A156828(n+1)]` -/
def P11471807709690099210.Spec : Prop :=
  ∀ n, (P11471807709690099210.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P5796434761254686389

`∩[A102540(n+1), A167706(n+1)]`
-/

namespace A117244.P5796434761254686389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P5796434761254686389

namespace A117244

/-- `∩[A102540(n+1), A167706(n+1)]` -/
def P5796434761254686389.Spec : Prop :=
  ∀ n, (P5796434761254686389.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P11265976818928977281

`filter[A102540(n+1), A283265(#)]`
-/

namespace A117244.P11265976818928977281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A117244.P11265976818928977281

namespace A117244

/-- `filter[A102540(n+1), A283265(#)]` -/
def P11265976818928977281.Spec : Prop :=
  ∀ n, P11265976818928977281.a n = A117244 (n + 1)

end A117244

/-! ## A117244.P13578700975744710014

`∩[A062729(n+1), A102540(n+1)]`
-/

namespace A117244.P13578700975744710014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P13578700975744710014

namespace A117244

/-- `∩[A062729(n+1), A102540(n+1)]` -/
def P13578700975744710014.Spec : Prop :=
  ∀ n, (P13578700975744710014.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P9911012995931005426

`∩[A100962(n+1), A102540(n+1)]`
-/

namespace A117244.P9911012995931005426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P9911012995931005426

namespace A117244

/-- `∩[A100962(n+1), A102540(n+1)]` -/
def P9911012995931005426.Spec : Prop :=
  ∀ n, (P9911012995931005426.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P3862818710045759551

`∩[A102540(n+1), A110673(n+1)]`
-/

namespace A117244.P3862818710045759551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P3862818710045759551

namespace A117244

/-- `∩[A102540(n+1), A110673(n+1)]` -/
def P3862818710045759551.Spec : Prop :=
  ∀ n, (P3862818710045759551.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P5981685773374209082

`∩[A102540(n+1), A164921(n+1)]`
-/

namespace A117244.P5981685773374209082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P5981685773374209082

namespace A117244

/-- `∩[A102540(n+1), A164921(n+1)]` -/
def P5981685773374209082.Spec : Prop :=
  ∀ n, (P5981685773374209082.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P11040975257194772241

`∩[A014092(n+1), A102540(n+1)]`
-/

namespace A117244.P11040975257194772241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P11040975257194772241

namespace A117244

/-- `∩[A014092(n+1), A102540(n+1)]` -/
def P11040975257194772241.Spec : Prop :=
  ∀ n, (P11040975257194772241.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P7024077704304543198

`∩[A102540(n+1), A396571(n+1)]`
-/

namespace A117244.P7024077704304543198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P7024077704304543198

namespace A117244

/-- `∩[A102540(n+1), A396571(n+1)]` -/
def P7024077704304543198.Spec : Prop :=
  ∀ n, (P7024077704304543198.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P18364804208894437778

`∩[A102540(n+1), A166081(n+1)]`
-/

namespace A117244.P18364804208894437778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P18364804208894437778

namespace A117244

/-- `∩[A102540(n+1), A166081(n+1)]` -/
def P18364804208894437778.Spec : Prop :=
  ∀ n, (P18364804208894437778.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P15239897386644184409

`∩[A102540(n+1), A255763(n+1)]`
-/

namespace A117244.P15239897386644184409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P15239897386644184409

namespace A117244

/-- `∩[A102540(n+1), A255763(n+1)]` -/
def P15239897386644184409.Spec : Prop :=
  ∀ n, (P15239897386644184409.a n : ℤ) = A117244 (n + 1)

end A117244

/-! ## A117244.P11811697639774505633

`∩[A102540(n+1), A175888(n+1)]`
-/

namespace A117244.P11811697639774505633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P11811697639774505633

namespace A117244

/-- `∩[A102540(n+1), A175888(n+1)]` -/
def P11811697639774505633.Spec : Prop :=
  ∀ n, (P11811697639774505633.a n : ℤ) = A117244 (n + 1)

end A117244

/-!
# A117245: Partial sums of A115975.

The programs for A117245, the canonical program `A117245.P16711629765108109646` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117245 has offset 1).

The definition of A117245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117245.P16711629765108109646

`∑[A115975(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117245

/-- `∑[A115975(n+1)]` -/
def P16711629765108109646.Spec : Prop :=
  ∀ n, P16711629765108109646.a n = A117245 (n + 1)

theorem P16711629765108109646.correct : P16711629765108109646.Spec := by
  intro n
  simp only [A117245, Nat.add_sub_cancel]

end A117245

/-! ## A117245.P6213622767281773029

`a(n-1)+A115975(n+1)%A018252(n+2)²` with `a(0)=1`
-/

namespace A117245.P6213622767281773029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A115975 (n + 1)) (A018252 (n + 2) ^ 2)

end

end A117245.P6213622767281773029

namespace A117245

/-- `a(n-1)+A115975(n+1)%A018252(n+2)²` -/
def P6213622767281773029.Spec : Prop :=
  ∀ n, P6213622767281773029.a n = A117245 (n + 1)

end A117245

/-! ## A117245.P2624112707175789038

`a(n-1)+A115975(n+1)+C(2, A000203(n+2))` with `a(0)=1`
-/

namespace A117245.P2624112707175789038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A115975 (n + 1) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ))

end

end A117245.P2624112707175789038

namespace A117245

/-- `a(n-1)+A115975(n+1)+C(2, A000203(n+2))` -/
def P2624112707175789038.Spec : Prop :=
  ∀ n, P2624112707175789038.a n = A117245 (n + 1)

end A117245

/-! ## A117245.P8302766275099319966

`∑[record[A115975(A133310(n))]]`
-/

namespace A117245.P8302766275099319966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P8302766275099319966

namespace A117245

/-- `∑[record[A115975(A133310(n))]]` -/
def P8302766275099319966.Spec : Prop :=
  ∀ n, P8302766275099319966.a n = A117245 (n + 1)

end A117245

/-! ## A117245.P5210812094682516351

`∑[record[n/a(A318464(n))]]` with `a(0)=1`
-/

namespace A117245.P5210812094682516351
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (A318464 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P5210812094682516351

namespace A117245

/-- `∑[record[n/a(A318464(n))]]` -/
def P5210812094682516351.Spec : Prop :=
  ∀ n, P5210812094682516351.a n = (A117245 (n + 1) : ℚ)

end A117245

/-! ## A117245.P5571112812563313133

`∑[lt[A318464(n+1), 2]+1]`
-/

namespace A117245.P5571112812563313133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318464 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P5571112812563313133

namespace A117245

/-- `∑[lt[A318464(n+1), 2]+1]` -/
def P5571112812563313133.Spec : Prop :=
  ∀ n, (P5571112812563313133.a n : ℤ) = A117245 (n + 1)

end A117245

/-! ## A117245.P15601404839538687943

`∑[lt[A318465(n+1), 3]+1]`
-/

namespace A117245.P15601404839538687943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318465 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P15601404839538687943

namespace A117245

/-- `∑[lt[A318465(n+1), 3]+1]` -/
def P15601404839538687943.Spec : Prop :=
  ∀ n, (P15601404839538687943.a n : ℤ) = A117245 (n + 1)

end A117245

/-! ## A117245.P3245864621990944052

`∑[lt[A001222(A318469(n+1)), 2]+1]`
-/

namespace A117245.P3245864621990944052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318469 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P3245864621990944052

namespace A117245

/-- `∑[lt[A001222(A318469(n+1)), 2]+1]` -/
def P3245864621990944052.Spec : Prop :=
  ∀ n, (P3245864621990944052.a n : ℤ) = A117245 (n + 1)

end A117245

/-! ## A117245.P8112690882148167168

`∑[record[A115975(A065648(n))]]`
-/

namespace A117245.P8112690882148167168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P8112690882148167168

namespace A117245

/-- `∑[record[A115975(A065648(n))]]` -/
def P8112690882148167168.Spec : Prop :=
  ∀ n, P8112690882148167168.a n = A117245 (n + 1)

end A117245

/-! ## A117245.P16546719630583318603

`∑[record[A020639(n+1)^A115568(n+1)]]`
-/

namespace A117245.P16546719630583318603
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A115568 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117245.P16546719630583318603

namespace A117245

/-- `∑[record[A020639(n+1)^A115568(n+1)]]` -/
def P16546719630583318603.Spec : Prop :=
  ∀ n, P16546719630583318603.a n = (A117245 (n + 1) : ℚ)

end A117245

/-!
# A117246: Left truncatable squares, ending in 5.

The programs for A117246, there is no canonical definition to state claims against.
-/

/-! ## A117246.P6519500801341021555

`A001221(A046004(n+1))*A247267(n+7)`
-/

namespace A117246.P6519500801341021555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A046004 (n + 1)).toNat * A247267 (n + 7)

end

end A117246.P6519500801341021555

/-! ## A117246.P13265163442719774618

`A001222(A242715(n+1))*A247267(n+7)`
-/

namespace A117246.P13265163442719774618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A242715 (n + 1)).toNat * A247267 (n + 7)

end

end A117246.P13265163442719774618

/-! ## A117246.P3616502956151092992

`A247267(n+7)+A008683(A225885(n+9))`
-/

namespace A117246.P3616502956151092992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247267 (n + 7) + A008683 (A225885 (n + 9)).toNat

end

end A117246.P3616502956151092992

/-!
# A117247: Numbers missing from A079051.

The programs for A117247, there is no canonical definition to state claims against.
-/

/-! ## A117247.P14071941403301698389

`comp[A079051(n)]`
-/

namespace A117247.P14071941403301698389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A117247.P14071941403301698389

/-! ## A117247.P12222436158065368468

`eq[0, char[A079051(A005132(n))]]`
-/

namespace A117247.P12222436158065368468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (A005132 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117247.P12222436158065368468

/-! ## A117247.P17634001099359715249

`eq[0, char[A079051(A028391(n))]]`
-/

namespace A117247.P17634001099359715249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (A028391 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117247.P17634001099359715249

/-! ## A117247.P11989632569348512365

`eq[0, char[A079051(A057979(n))]]`
-/

namespace A117247.P11989632569348512365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (A057979 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117247.P11989632569348512365

/-! ## A117247.P8894747142781544057

`eq[char[A079051(n)], A000038(n)]`
-/

namespace A117247.P8894747142781544057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A117247.P8894747142781544057

/-!
# A117248: Number of down steps at start of segment n of A079051.

The programs for A117248, there is no canonical definition to state claims against.
-/

/-! ## A117248.P9136339651715451685

`a(n-2)+gcd(2, n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A117248.P9136339651715451685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 3] fun n a =>
  a (n - 2) + Nat.gcd 2 n

end

end A117248.P9136339651715451685

/-! ## A117248.P4737887054081313548

`a(n-2)-and(1, n)+2` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A117248.P4737887054081313548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 3] fun n a =>
  a (n - 2) - (Nat.land 1 n : ℤ) + 2

end

end A117248.P4737887054081313548

/-! ## A117248.P16120286741458313438

`floor(a(n-2)+n/a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A117248.P16120286741458313438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + (n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A117248.P16120286741458313438

/-! ## A117248.P6273293337260714753

`a(n-2)+2-a(n%a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A117248.P6273293337260714753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 2) + (2 - a (Int.tmod (n : ℤ) (a (n - 1))).toNat)

end

end A117248.P6273293337260714753

/-! ## A117248.P13198755604239483742

`∑[a(n-2)%3]-(n-a(n-2))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A117248.P13198755604239483742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 3] fun n f1 =>
  f1 (n - 2) % 3

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 2))

end

end A117248.P13198755604239483742

/-! ## A117248.P13084693334576603356

`Δ[A272058(floor(n-atan(n)))]`
-/

namespace A117248.P13084693334576603356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272058 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117248.P13084693334576603356

/-! ## A117248.P12889852713455757911

`Δ[A272058(A289207(n))]`
-/

namespace A117248.P12889852713455757911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272058 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117248.P12889852713455757911

/-! ## A117248.P2488347415884782607

`Δ[A087401(A061925(n)-n)]`
-/

namespace A117248.P2488347415884782607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A061925 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117248.P2488347415884782607

/-! ## A117248.P8098796549019260979

`∑{d}[n+1, A154955(#)*A289207((n+1)/#-1)]`
-/

namespace A117248.P8098796549019260979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A289207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A117248.P8098796549019260979

/-! ## A117248.P15270749084544107289

`∑{d}[n+1, A014028(#-1)*A289207((n+1)/#-1)]`
-/

namespace A117248.P15270749084544107289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014028 (d - 1) * A289207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A117248.P15270749084544107289

/-!
# A117250: Triangle T, read by rows, where matrix power T^2 has powers of 2 in the secondary diagonal: [T^2](n+1,n) = 2^(n+1), with all 1's in the main diagonal and zeros elsewhere.

The programs for A117250, there is no canonical definition to state claims against.
-/

/-! ## A117250.P5530101243804642338

`A117258(n)/A117260(n)`
-/

namespace A117250.P5530101243804642338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117258 n : ℚ) / (A117260 n : ℚ)

end

end A117250.P5530101243804642338

/-! ## A117250.P15326352338518522672

`A117258(n)/root(A117262(n), log2(3))`
-/

namespace A117250.P15326352338518522672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A117258 n : ℝ) / (A117262 n : ℝ) ^ (1 / Real.logb 2 (3 : ℝ))

end

end A117250.P15326352338518522672

/-! ## A117250.P6786057397018040304

`A117258(n)/2^(A329854(n)-1)`
-/

namespace A117250.P6786057397018040304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117258 n : ℚ) / (2 : ℚ) ^ (A329854 n - 1 : ℤ)

end

end A117250.P6786057397018040304

/-! ## A117250.P17958004583240286777

`A117258(n)/2^(2*n+1-A131422(n+1))`
-/

namespace A117250.P17958004583240286777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117258 n : ℚ) / (2 : ℚ) ^ ((2 * n + 1 : ℤ) - A131422 (n + 1) : ℤ)

end

end A117250.P17958004583240286777

/-! ## A117250.P9653773604997084378

`A117258(n)/A011782(A329854(n))`
-/

namespace A117250.P9653773604997084378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117258 n : ℚ) / (A011782 (A329854 n).toNat : ℚ)

end

end A117250.P9653773604997084378

/-!
# A117251: Column 0 of triangle A117250.

The programs for A117251, the canonical program `A117251.P5961181204797650290` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117251 has offset 0).

The definition of A117251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117251.P5961181204797650290

`(-1)^(n-1)*2^((n-1)*(n-2)/2-1)*C(2*n, n)/(2*n-1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117251

/-- `(-1)^(n-1)*2^((n-1)*(n-2)/2-1)*C(2*n, n)/(2*n-1)` -/
def P5961181204797650290.Spec : Prop :=
  ∀ n, P5961181204797650290.a n = (A117251 n : ℝ)

end A117251

/-! ## A117251.P10302276846062503718

`A002596(n)*A127943(n)`
-/

namespace A117251.P10302276846062503718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 n * A127943 n

end

end A117251.P10302276846062503718

namespace A117251

/-- `A002596(n)*A127943(n)` -/
def P10302276846062503718.Spec : Prop :=
  ∀ n, P10302276846062503718.a n = A117251 n

end A117251

/-! ## A117251.P18224977872005289914

`A002596(n)/A001803(n)*A086228(n)`
-/

namespace A117251.P18224977872005289914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002596 n : ℚ) / (A001803 n : ℚ) * (A086228 n : ℚ)

end

end A117251.P18224977872005289914

namespace A117251

/-- `A002596(n)/A001803(n)*A086228(n)` -/
def P18224977872005289914.Spec : Prop :=
  ∀ n, P18224977872005289914.a n = (A117251 n : ℚ)

end A117251

/-! ## A117251.P12392934399672050266

`A104624(2*n)/A001316(n)*A127943(n)`
-/

namespace A117251.P12392934399672050266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104624 (2 * n) : ℚ) / (A001316 n : ℚ) * (A127943 n : ℚ)

end

end A117251.P12392934399672050266

namespace A117251

/-- `A104624(2*n)/A001316(n)*A127943(n)` -/
def P12392934399672050266.Spec : Prop :=
  ∀ n, P12392934399672050266.a n = (A117251 n : ℚ)

end A117251

/-! ## A117251.P10246331647488018867

`A182122(2*n)/A001316(n)*A127943(n)`
-/

namespace A117251.P10246331647488018867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182122 (2 * n) : ℚ) / (A001316 n : ℚ) * (A127943 n : ℚ)

end

end A117251.P10246331647488018867

namespace A117251

/-- `A182122(2*n)/A001316(n)*A127943(n)` -/
def P10246331647488018867.Spec : Prop :=
  ∀ n, P10246331647488018867.a n = (A117251 n : ℚ)

end A117251

/-!
# A117253: Column 0 of triangle A117252.

The programs for A117253, there is no canonical definition to state claims against.
-/

/-! ## A117253.P595590228292545392

`A117252(∑[n])`
-/

namespace A117253.P595590228292545392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117253.P595590228292545392

/-! ## A117253.P13981557426892628696

`and(-1, A117252(n*(n+1)/2))`
-/

namespace A117253.P13981557426892628696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A117252 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A117253.P13981557426892628696

/-! ## A117253.P8858848714488844096

`A326595(n)+A117252(C(n+1, 2))`
-/

namespace A117253.P8858848714488844096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 n + A117252 (Nat.choose (n + 1) 2)

end

end A117253.P8858848714488844096

/-! ## A117253.P14375786201909176488

`A117252(C(n+1, 2))*A123245(n)`
-/

namespace A117253.P14375786201909176488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117252 (Nat.choose (n + 1) 2) * A123245 n

end

end A117253.P14375786201909176488

/-!
# A117255: Column 0 of triangle A117254.

The programs for A117255, there is no canonical definition to state claims against.
-/

/-! ## A117255.P12760075142750761050

`A117254(∑[n])`
-/

namespace A117255.P12760075142750761050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117255.P12760075142750761050

/-! ## A117255.P11427177740375450596

`A117254(n*(n+1)/2)+floor(n/11)`
-/

namespace A117255.P11427177740375450596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117254 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat + ⌊(n : ℚ) / 11⌋

end

end A117255.P11427177740375450596

/-! ## A117255.P7006746226438854480

`and(-1, A117254(A000217(n)))`
-/

namespace A117255.P7006746226438854480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A117254 (A000217 n).toNat)

end

end A117255.P7006746226438854480

/-! ## A117255.P4607877794171964486

`and(-5, A117254(A179865(n+1)))`
-/

namespace A117255.P4607877794171964486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A117254 (A179865 (n + 1)).toNat)

end

end A117255.P4607877794171964486

/-!
# A117257: Column 0 of triangle A117256.

The programs for A117257, there is no canonical definition to state claims against.
-/

/-! ## A117257.P3736118101350203582

`A117256(∑[n])`
-/

namespace A117257.P3736118101350203582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117256 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117257.P3736118101350203582

/-! ## A117257.P10722210596890850037

`and(-1, A117256(A000217(n)))`
-/

namespace A117257.P10722210596890850037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A117256 (A000217 n).toNat)

end

end A117257.P10722210596890850037

/-! ## A117257.P3227907293089519740

`A241388(n)+A117256(C(n+1, 2))`
-/

namespace A117257.P3227907293089519740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241388 n + A117256 (Nat.choose (n + 1) 2)

end

end A117257.P3227907293089519740

/-! ## A117257.P7298578780771911467

`A117256(round((2*n+1)²/8))*A172368(n)`
-/

namespace A117257.P7298578780771911467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117256 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat * A172368 n

end

end A117257.P7298578780771911467

/-!
# A117258: Triangle T, read by rows, where matrix power T^2 has 2*4^n in the secondary diagonal: [T^2](n+1,n) = 2*4^n, with all 1's in the main diagonal and zeros elsewhere.

The programs for A117258, there is no canonical definition to state claims against.
-/

/-! ## A117258.P15613129268850547806

`A117250(n)*A117260(n)`
-/

namespace A117258.P15613129268850547806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117250 n * A117260 n

end

end A117258.P15613129268850547806

/-! ## A117258.P359368687857809545

`root(A117262(n), log2(3))*A117250(n)`
-/

namespace A117258.P359368687857809545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A117262 n : ℝ) ^ (1 / Real.logb 2 (3 : ℝ)) * (A117250 n : ℝ)

end

end A117258.P359368687857809545

/-! ## A117258.P8093099255663310563

`2^(A329854(n)-1)*A117250(n)`
-/

namespace A117258.P8093099255663310563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A329854 n - 1 : ℤ) * (A117250 n : ℚ)

end

end A117258.P8093099255663310563

/-! ## A117258.P6163234117255110002

`2^(2*n+1-A131422(n+1))*A117250(n)`
-/

namespace A117258.P6163234117255110002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n + 1 : ℤ) - A131422 (n + 1) : ℤ) * (A117250 n : ℚ)

end

end A117258.P6163234117255110002

/-! ## A117258.P12436515264023121064

`A011782(A329854(n))*A117250(n)`
-/

namespace A117258.P12436515264023121064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A329854 n).toNat * A117250 n

end

end A117258.P12436515264023121064

/-!
# A117259: Column 0 of triangle A117258.

The programs for A117259, there is no canonical definition to state claims against.
-/

/-! ## A117259.P13934542552134413371

`(-2^(n-2))^n*A002420(n)`
-/

namespace A117259.P13934542552134413371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) ^ n * (A002420 n : ℚ)

end

end A117259.P13934542552134413371

/-! ## A117259.P851739338039039200

`(2^n)^(n-2)*A104624(2*n)`
-/

namespace A117259.P851739338039039200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A104624 (2 * n) : ℚ)

end

end A117259.P851739338039039200

/-! ## A117259.P3337060764183571285

`A117251(n)*A277219(∑[n])`
-/

namespace A117259.P3337060764183571285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117251 n * A277219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117259.P3337060764183571285

/-! ## A117259.P14493998179251347962

`∏[A011782(n)]*A117251(n)`
-/

namespace A117259.P14493998179251347962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A117251 n

end

end A117259.P14493998179251347962

/-! ## A117259.P11389561779900875988

`A117251(n)*A117260(∑[n])`
-/

namespace A117259.P11389561779900875988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117251 n * A117260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117259.P11389561779900875988

/-!
# A117260: Triangle T, read by rows, where matrix inverse T^-1 has -2^n in the secondary diagonal: [T^-1](n+1,n) = -2^n, with all 1's in the main diagonal and zeros elsewhere.

The programs for A117260, there is no canonical definition to state claims against.
-/

/-! ## A117260.P506876851108125860

`2^(A329854(n)-1)`
-/

namespace A117260.P506876851108125860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A329854 n - 1 : ℤ)

end

end A117260.P506876851108125860

/-! ## A117260.P6242325757225954866

`2^A087401(∑[2*n]%comp[∑[n]])`
-/

namespace A117260.P6242325757225954866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A087401 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℤ)

end

end A117260.P6242325757225954866

/-! ## A117260.P11945871478548291889

`2^(2*n+1-A131422(n+1))`
-/

namespace A117260.P11945871478548291889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n + 1 : ℤ) - A131422 (n + 1) : ℤ)

end

end A117260.P11945871478548291889

/-! ## A117260.P10245091969093954928

`A011782(A329854(n))`
-/

namespace A117260.P10245091969093954928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A329854 n).toNat

end

end A117260.P10245091969093954928

/-! ## A117260.P16868877574273820006

`A166444(A329854(n)+1)`
-/

namespace A117260.P16868877574273820006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A329854 n + 1).toNat

end

end A117260.P16868877574273820006

/-!
# A117261: Row sums of triangle A117260.

The programs for A117261, the canonical program `A117261.P9575734918946585601` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117261 has offset 0).

The definition of A117261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117261.P9575734918946585601

`a(n-1)*2^(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117261

/-- `a(n-1)*2^(n-1)+1` -/
def P9575734918946585601.Spec : Prop :=
  ∀ n, P9575734918946585601.a n = (A117261 n : ℚ)

end A117261

/-! ## A117261.P11097996565140985711

`a(n-1)/2^(1-n)+1` with `a(0)=1`
-/

namespace A117261.P11097996565140985711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (2 : ℚ) ^ (1 - (n : ℤ) : ℤ) + 1

end

end A117261.P11097996565140985711

namespace A117261

/-- `a(n-1)/2^(1-n)+1` -/
def P11097996565140985711.Spec : Prop :=
  ∀ n, P11097996565140985711.a n = (A117261 n : ℚ)

end A117261

/-! ## A117261.P240728106089034610

`or(1, 2^(n-1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A117261.P240728106089034610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (a (n - 1) : ℚ)))

end

end A117261.P240728106089034610

namespace A117261

/-- `or(1, 2^(n-1)*a(n-1))` -/
def P240728106089034610.Spec : Prop :=
  ∀ n, P240728106089034610.a n = A117261 n

end A117261

/-! ## A117261.P11458856347670685429

`xor(1, 2^(n-1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A117261.P11458856347670685429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (a (n - 1) : ℚ)))

end

end A117261.P11458856347670685429

namespace A117261

/-- `xor(1, 2^(n-1)*a(n-1))` -/
def P11458856347670685429.Spec : Prop :=
  ∀ n, P11458856347670685429.a n = A117261 n

end A117261

/-! ## A117261.P15053784698724839715

`A324505(2^n)`
-/

namespace A117261.P15053784698724839715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324505 (2 ^ n)

end

end A117261.P15053784698724839715

namespace A117261

/-- `A324505(2^n)` -/
def P15053784698724839715.Spec : Prop :=
  ∀ n, P15053784698724839715.a n = A117261 n

end A117261

/-!
# A117262: Triangle T, read by rows, where matrix inverse T^-1 has -3^n in the secondary diagonal: [T^-1](n+1,n) = -3^n, with all 1's in the main diagonal and zeros elsewhere.

The programs for A117262, there is no canonical definition to state claims against.
-/

/-! ## A117262.P5898448571110408044

`3^log2(A117260(n))`
-/

namespace A117262.P5898448571110408044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A117260 n : ℝ))

end

end A117262.P5898448571110408044

/-! ## A117262.P3231123224023794592

`3^(A329854(n)-1)`
-/

namespace A117262.P3231123224023794592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A329854 n - 1 : ℤ)

end

end A117262.P3231123224023794592

/-! ## A117262.P9408353841159516285

`3^A087401(∑[2*n]%comp[∑[n]])`
-/

namespace A117262.P9408353841159516285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A087401 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℤ)

end

end A117262.P9408353841159516285

/-! ## A117262.P13870087243054416369

`3^(2*n+1-A131422(n+1))`
-/

namespace A117262.P13870087243054416369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((2 * n + 1 : ℤ) - A131422 (n + 1) : ℤ)

end

end A117262.P13870087243054416369

/-! ## A117262.P11343241822159921325

`A133494(A329854(n))`
-/

namespace A117262.P11343241822159921325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A329854 n).toNat

end

end A117262.P11343241822159921325

/-!
# A117263: Row sums of triangle A117262; also, self-convolution of A117264.

The programs for A117263, there is no canonical definition to state claims against.
-/

/-! ## A117263.P14850356755271814983

`3^(n-1)*a(n-1)+1` with `a(0)=1`
-/

namespace A117263.P14850356755271814983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + 1

end

end A117263.P14850356755271814983

/-! ## A117263.P7492992600316256039

`a(n-1)/3^(1-n)+1` with `a(0)=1`
-/

namespace A117263.P7492992600316256039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (3 : ℚ) ^ (1 - (n : ℤ) : ℤ) + 1

end

end A117263.P7492992600316256039

/-! ## A117263.P15836621746392610420

`lcm(3^(n-1), a(n-1))+1` with `a(0)=1`
-/

namespace A117263.P15836621746392610420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ) + 1

end

end A117263.P15836621746392610420

/-! ## A117263.P9395031301775146292

`a(n-1)*A133494(n)+1` with `a(0)=1`
-/

namespace A117263.P9395031301775146292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A133494 n + 1

end

end A117263.P9395031301775146292

/-! ## A117263.P7308586411165892656

`a(n-1)*A140429(n)+1` with `a(0)=1`
-/

namespace A117263.P7308586411165892656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A140429 n + 1

end

end A117263.P7308586411165892656

/-!
# A117264: Self-convolution square-root of A117263.

The programs for A117264, there is no canonical definition to state claims against.
-/

/-! ## A117264.P2979813446038353962

`A255565(7*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A117264.P2979813446038353962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A255565 (7 * a (n - 1)).toNat

end

end A117264.P2979813446038353962

/-!
# A117265: Triangle T, read by rows, where matrix power T^-2 has -2^(n+1) in the secondary diagonal: [T^-2](n+1,n) = -2^(n+1), with all 1's in the main diagonal and zeros elsewhere.

The programs for A117265, there is no canonical definition to state claims against.
-/

/-! ## A117265.P9499182931899179798

`lcm(A106268(n), A117250(n))`
-/

namespace A117265.P9499182931899179798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106268 n) (A117250 n)

end

end A117265.P9499182931899179798

/-!
# A117266: Row sums of triangle A117265.

The programs for A117266, there is no canonical definition to state claims against.
-/

/-! ## A117266.P9418465337458905625

`A277910(floor(3/2*a(n-1)))-1` with `a(0)=1`
-/

namespace A117266.P9418465337458905625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277910 ⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋.toNat - 1

end

end A117266.P9418465337458905625

/-!
# A117267: Difference row triangle of A117189.

The programs for A117267, there is no canonical definition to state claims against.
-/

/-! ## A117267.P440244318038299902

`∑[A117268(n+1)]-A073357(A003056(n))`
-/

namespace A117267.P440244318038299902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073357 (A003056 n).toNat

end

end A117267.P440244318038299902

/-! ## A117267.P5022827086818863462

`A117268(comp[∑[n]]+1)`
-/

namespace A117267.P5022827086818863462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117268 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A117267.P5022827086818863462

/-! ## A117267.P8299202938294300663

`A110654(A036561(n))-A185284(3*n+4)`
-/

namespace A117267.P8299202938294300663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036561 n).toNat - A185284 (3 * n + 4)

end

end A117267.P8299202938294300663

/-!
# A117268: Triangle, binomial transform of the tribonacci sequence.

The programs for A117268, there is no canonical definition to state claims against.
-/

/-! ## A117268.P12451569075613767185

`A117267(A066182(n+1)-A003056(n))`
-/

namespace A117268.P12451569075613767185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117267 (A066182 (n + 1) - A003056 n).toNat

end

end A117268.P12451569075613767185

/-!
# A117270: Matrix log of triangle M = A117269, which satisfies: M - (M-I)^2 = C where C is Pascal's triangle.

The programs for A117270, there is no canonical definition to state claims against.
-/

/-! ## A117270.P14533350419944671385

`A007318(n)*A117271(A025581(n))`
-/

namespace A117270.P14533350419944671385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A117271 (A025581 n).toNat

end

end A117270.P14533350419944671385

/-! ## A117270.P8773080591055488351

`A007318(n)*A117271(A025669(n+1))`
-/

namespace A117270.P8773080591055488351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A117271 (A025669 (n + 1)).toNat

end

end A117270.P8773080591055488351

/-!
# A117271: Column 0 of triangle A117270, which is the matrix log of triangle A117269.

The programs for A117271, there is no canonical definition to state claims against.
-/

/-! ## A117271.P8678168861960683947

`A117270(∑[n])`
-/

namespace A117271.P8678168861960683947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117271.P8678168861960683947

/-! ## A117271.P16609780328269384348

`record[A117270(n)]`
-/

namespace A117271.P16609780328269384348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117271.P16609780328269384348

/-! ## A117271.P5393830716930637956

`and(-1, A117270(A000217(n)))`
-/

namespace A117271.P5393830716930637956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A117270 (A000217 n).toNat)

end

end A117271.P5393830716930637956

/-! ## A117271.P13539793137939008771

`A117270(A000217(n))+A066568(n)`
-/

namespace A117271.P13539793137939008771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117270 (A000217 n).toNat + A066568 n

end

end A117271.P13539793137939008771

/-! ## A117271.P7019181948681048547

`A131242(n)+A117270(A000217(n))`
-/

namespace A117271.P7019181948681048547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 n + A117270 (A000217 n).toNat

end

end A117271.P7019181948681048547

/-!
# A117274: Triangle read by rows: T(n,k) is the number of partitions of n with no even part repeated and having k 1's (n>=0, 0<=k<=n).

The programs for A117274, there is no canonical definition to state claims against.
-/

/-! ## A117274.P4487287357074462431

`A117275(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A117274.P4487287357074462431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A117274.P4487287357074462431

/-! ## A117274.P13726706724650155444

`A117275(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A117274.P13726706724650155444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A117274.P13726706724650155444

/-! ## A117274.P4146266585826636877

`A117275(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A117274.P4146266585826636877
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A117274.P4146266585826636877

/-! ## A117274.P3536291635663423377

`A117275(A025581(n))`
-/

namespace A117274.P3536291635663423377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (A025581 n).toNat

end

end A117274.P3536291635663423377

/-! ## A117274.P4536461240183750142

`A117275(log2(A130321(n)))`
-/

namespace A117274.P4536461240183750142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A117274.P4536461240183750142

/-! ## A117274.P9302928142942631807

`A117275(val(A036561(n), 2))`
-/

namespace A117274.P9302928142942631807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A117274.P9302928142942631807

/-! ## A117274.P746478459506222342

`A117275(val(A054582(n), 2))`
-/

namespace A117274.P746478459506222342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A117274.P746478459506222342

/-! ## A117274.P13365271317923963232

`A117275(A004736(n+1)-1)`
-/

namespace A117274.P13365271317923963232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (A004736 (n + 1) - 1).toNat

end

end A117274.P13365271317923963232

/-! ## A117274.P10458147426210349674

`A117275(A127739(n+1)-(n+1))`
-/

namespace A117274.P10458147426210349674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (A127739 (n + 1) - (n + 1 : ℤ)).toNat

end

end A117274.P10458147426210349674

/-! ## A117274.P15273038062982162738

`A117275((A004202(n+1)+2)%(n+2))`
-/

namespace A117274.P15273038062982162738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (Int.tmod (A004202 (n + 1) + 2) (n + 2 : ℤ)).toNat

end

end A117274.P15273038062982162738

/-! ## A117274.P17020375224788346685

`A117275(∑{e}[A130321(n), #])`
-/

namespace A117274.P17020375224788346685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A117274.P17020375224788346685

/-!
# A117275: Number of partitions of n with no even parts repeated and with no 1's.

The programs for A117275, there is no canonical definition to state claims against.
-/

/-! ## A117275.P10326909358778069697

`A000007(n)+Δ[A001935(abs(1-n))]`
-/

namespace A117275.P10326909358778069697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A117275.P10326909358778069697

/-! ## A117275.P10358704523628285111

`Δ[A019426(2*n)+A001935(abs(1-n))]`
-/

namespace A117275.P10358704523628285111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) + A001935 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117275.P10358704523628285111

/-! ## A117275.P6736909319731734804

`Δ[A057427(n)+A001935(abs(1-n))]`
-/

namespace A117275.P6736909319731734804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A001935 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117275.P6736909319731734804

/-! ## A117275.P11649951980644254485

`Δ[Δ[A014605(n+2)]]`
-/

namespace A117275.P11649951980644254485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014605 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117275.P11649951980644254485

/-! ## A117275.P9238259515347973367

`Δ[A001935(abs(1-n))%(A282153(n)+1)]`
-/

namespace A117275.P9238259515347973367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001935 |1 - (n : ℤ)|.toNat) (A282153 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117275.P9238259515347973367

/-! ## A117275.P7337015300826837308

`Δ[A001935(abs(1-n))%A047861(n)]`
-/

namespace A117275.P7337015300826837308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001935 |1 - (n : ℤ)|.toNat) (A047861 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117275.P7337015300826837308

/-! ## A117275.P9361877470411454459

`A117274(∑[n])`
-/

namespace A117275.P9361877470411454459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117274 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117275.P9361877470411454459

/-! ## A117275.P17952852601060595475

`Δ[A286653(∑[n+3]-1)]`
-/

namespace A117275.P17952852601060595475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117275.P17952852601060595475

/-!
# A117276: Number of 1's in all partitions of n with no even parts repeated.

The programs for A117276, there is no canonical definition to state claims against.
-/

/-! ## A117276.P16327609226822601138

`∑[A001935(abs(1-n))]-1`
-/

namespace A117276.P16327609226822601138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A117276.P16327609226822601138

/-! ## A117276.P1174515188474606607

`∑[A001935(n)-A117275(n)]`
-/

namespace A117276.P1174515188474606607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117276.P1174515188474606607

/-! ## A117276.P10097733559755868988

`A014605(n+3)-1`
-/

namespace A117276.P10097733559755868988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014605 (n + 3) - 1

end

end A117276.P10097733559755868988

/-! ## A117276.P5595492042949979170

`∑[abs(Δ[A014605(n+2)])]`
-/

namespace A117276.P5595492042949979170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014605 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117276.P5595492042949979170

/-! ## A117276.P16953613185491921681

`abs(A014605(n+3)+A008683(A020483(n)))`
-/

namespace A117276.P16953613185491921681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014605 (n + 3) + A008683 (A020483 n).toNat|

end

end A117276.P16953613185491921681

/-! ## A117276.P4654866365026887994

`∑[A286653(∑[n+3]-1)]`
-/

namespace A117276.P4654866365026887994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117276.P4654866365026887994

/-!
# A117277: Number of partitions of n whose consecutive parts differ by 3.

The programs for A117277, there is no canonical definition to state claims against.
-/

/-! ## A117277.P9750117885968474833

`A243223(n+1)+1`
-/

namespace A117277.P9750117885968474833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243223 (n + 1) + 1

end

end A117277.P9750117885968474833

/-! ## A117277.P8625911426417043215

`A001227(n+1)-A243224(n+1)`
-/

namespace A117277.P8625911426417043215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A243224 (n + 1)

end

end A117277.P8625911426417043215

/-! ## A117277.P16409088030331010353

`A054844(n+1)/2-A243224(n+1)`
-/

namespace A117277.P16409088030331010353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2 - (A243224 (n + 1) : ℚ)

end

end A117277.P16409088030331010353

/-! ## A117277.P7148391383300167218

`A320003(6*(n+1))-A243224(n+1)`
-/

namespace A117277.P7148391383300167218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (6 * (n + 1)) - A243224 (n + 1)

end

end A117277.P7148391383300167218

/-! ## A117277.P7284236219935622693

`A000005(A000265(n+1))-A243224(n+1)`
-/

namespace A117277.P7284236219935622693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A243224 (n + 1)

end

end A117277.P7284236219935622693

/-! ## A117277.P12341337826101980021

`A000005(n+1)/A001511(n+1)-A243224(n+1)`
-/

namespace A117277.P12341337826101980021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ) - (A243224 (n + 1) : ℚ)

end

end A117277.P12341337826101980021

/-! ## A117277.P4912441972659374270

`Δ[A060831(n)]-A243224(n+1)`
-/

namespace A117277.P4912441972659374270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A243224 (n + 1)

end

end A117277.P4912441972659374270

/-! ## A117277.P2147570562582003520

`A113414(2*(n+1))-A243224(n+1)`
-/

namespace A117277.P2147570562582003520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113414 (2 * (n + 1)) - A243224 (n + 1)

end

end A117277.P2147570562582003520

/-! ## A117277.P16955665173584529135

`A334463(n+1)/(n+1)`
-/

namespace A117277.P16955665173584529135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334463 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A117277.P16955665173584529135

/-!
# A117278: Triangle read by rows: T(n,k) is the number of partitions of n into k prime parts (n>=2, 1<=k<=floor(n/2)).

The programs for A117278, there is no canonical definition to state claims against.
-/

/-! ## A117278.P16834356592966297199

`A280748(A310853(n)%A314470(n))`
-/

namespace A117278.P16834356592966297199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 (Int.tmod (A310853 n) (A314470 n)).toNat

end

end A117278.P16834356592966297199

/-! ## A117278.P5114377429439747680

`A285668(n+1)+A185284(A198081(n))`
-/

namespace A117278.P5114377429439747680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (n + 1) + A185284 (A198081 n).toNat

end

end A117278.P5114377429439747680

/-! ## A117278.P10348240270610867372

`A379678(A008578(n+1))+A284893(n+1)`
-/

namespace A117278.P10348240270610867372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (A008578 (n + 1)).toNat + A284893 (n + 1)

end

end A117278.P10348240270610867372

/-! ## A117278.P2179115518403791411

`A346100(A165780(n+2))`
-/

namespace A117278.P2179115518403791411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (A165780 (n + 2)).toNat

end

end A117278.P2179115518403791411

/-! ## A117278.P16781551716625087845

`A178498(A315283(n+1))`
-/

namespace A117278.P16781551716625087845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178498 (A315283 (n + 1)).toNat

end

end A117278.P16781551716625087845

/-!
# A117280: a(n) = n^r(n), where r(n) is the digital root of n.

The programs for A117280, the canonical program `A117280.P17097251739463287571` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117280 has offset 0).

The definition of A117280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117280.P17097251739463287571

`n^((n-1)%9+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117280

/-- `n^((n-1)%9+1)` -/
def P17097251739463287571.Spec : Prop :=
  ∀ n, P17097251739463287571.a n = (A117280 n : ℚ)

end A117280

/-! ## A117280.P10055295522302698437

`n^dr(n)`
-/

namespace A117280.P10055295522302698437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A117280.P10055295522302698437

namespace A117280

/-- `n^dr(n)` -/
def P10055295522302698437.Spec : Prop :=
  ∀ n, (P10055295522302698437.a n : ℤ) = A117280 n

end A117280

/-! ## A117280.P11977568694125381202

`n^A010888(n)`
-/

namespace A117280.P11977568694125381202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A010888 n : ℤ)

end

end A117280.P11977568694125381202

namespace A117280

/-- `n^A010888(n)` -/
def P11977568694125381202.Spec : Prop :=
  ∀ n, P11977568694125381202.a n = (A117280 n : ℚ)

end A117280

/-! ## A117280.P4020273657250933007

`n^(A117230(n+1)-1)`
-/

namespace A117280.P4020273657250933007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A117230 (n + 1) - 1 : ℤ)

end

end A117280.P4020273657250933007

namespace A117280

/-- `n^(A117230(n+1)-1)` -/
def P4020273657250933007.Spec : Prop :=
  ∀ n, P4020273657250933007.a n = (A117280 n : ℚ)

end A117280

/-! ## A117280.P4337741786239842531

`n^A180595(2*n)`
-/

namespace A117280.P4337741786239842531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A180595 (2 * n) : ℤ)

end

end A117280.P4337741786239842531

namespace A117280

/-- `n^A180595(2*n)` -/
def P4337741786239842531.Spec : Prop :=
  ∀ n, P4337741786239842531.a n = (A117280 n : ℚ)

end A117280

/-! ## A117280.P4784805061641668238

`n^A279816(3*n)`
-/

namespace A117280.P4784805061641668238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A279816 (3 * n) : ℤ)

end

end A117280.P4784805061641668238

namespace A117280

/-- `n^A279816(3*n)` -/
def P4784805061641668238.Spec : Prop :=
  ∀ n, P4784805061641668238.a n = (A117280 n : ℚ)

end A117280

/-!
# A117281: Palindromes whose squares belong to A066531.

The programs for A117281, there is no canonical definition to state claims against.
-/

/-! ## A117281.P13274737989387173932

`∩[A207373(n+1), A330616(n+1)]`
-/

namespace A117281.P13274737989387173932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117281.P13274737989387173932

/-! ## A117281.P1508828904522086291

`sqrt(∩[A117282(n+1), A325150(n+1)])`
-/

namespace A117281.P1508828904522086291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325150 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A117281.P1508828904522086291

/-! ## A117281.P6148143241557085377

`∩[A330616(n+1), A359173(n+1)]`
-/

namespace A117281.P6148143241557085377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117281.P6148143241557085377

/-!
# A117283: Numbers k for which the cototient k-phi(k) is a cube.

The programs for A117283, the canonical program `A117283.P3554693747055773777` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117283 has offset 1).

The definition of A117283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117283.P3554693747055773777

`eq[1, A010057(n+1-A000010(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117283

/-- `eq[1, A010057(n+1-A000010(n+1))]+1` -/
def P3554693747055773777.Spec : Prop :=
  ∀ n, (P3554693747055773777.a n : ℤ) = A117283 (n + 1)

theorem P3554693747055773777.correct : P3554693747055773777.Spec := by
  intro n
  simp only [A117283, Nat.add_sub_cancel]

end A117283

/-! ## A117283.P16458217368204165159

`eq[1, A010057(A051953(n+1))]+1`
-/

namespace A117283.P16458217368204165159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117283.P16458217368204165159

namespace A117283

/-- `eq[1, A010057(A051953(n+1))]+1` -/
def P16458217368204165159.Spec : Prop :=
  ∀ n, (P16458217368204165159.a n : ℤ) = A117283 (n + 1)

end A117283

/-! ## A117283.P18218700094403924714

`eq[A054977(n), A254661(A322900(n))]`
-/

namespace A117283.P18218700094403924714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254661 (A322900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117283.P18218700094403924714

namespace A117283

/-- `eq[A054977(n), A254661(A322900(n))]` -/
def P18218700094403924714.Spec : Prop :=
  ∀ n, (P18218700094403924714.a n : ℤ) = A117283 (n + 1)

end A117283

/-! ## A117283.P4328278241653489994

`eq[A057427(n), A254661(A322900(n))]`
-/

namespace A117283.P4328278241653489994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254661 (A322900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117283.P4328278241653489994

namespace A117283

/-- `eq[A057427(n), A254661(A322900(n))]` -/
def P4328278241653489994.Spec : Prop :=
  ∀ n, (P4328278241653489994.a n : ℤ) = A117283 (n + 1)

end A117283

/-! ## A117283.P4963541348936922762

`eq[A014963(5*(n+1)), A254661(A322900(n))]`
-/

namespace A117283.P4963541348936922762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254661 (A322900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117283.P4963541348936922762

namespace A117283

/-- `eq[A014963(5*(n+1)), A254661(A322900(n))]` -/
def P4963541348936922762.Spec : Prop :=
  ∀ n, (P4963541348936922762.a n : ℤ) = A117283 (n + 1)

end A117283

/-!
# A117284: Numbers k for which the cototient k-phi(k) is a triangular number.

The programs for A117284, the canonical program `A117284.P233037619182171599` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117284 has offset 1).

The definition of A117284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117284.P233037619182171599

`record[n+1-A271439(n+1-A000010(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117284

/-- `record[n+1-A271439(n+1-A000010(n+1))]` -/
def P233037619182171599.Spec : Prop :=
  ∀ n, P233037619182171599.a n = A117284 (n + 1)

theorem P233037619182171599.correct : P233037619182171599.Spec := by
  intro n
  simp only [A117284, Nat.add_sub_cancel]

end A117284

/-! ## A117284.P4536981625655705093

`record[(n+1)*A010054(n+1-A000010(n+1))]`
-/

namespace A117284.P4536981625655705093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010054 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P4536981625655705093

namespace A117284

/-- `record[(n+1)*A010054(n+1-A000010(n+1))]` -/
def P4536981625655705093.Spec : Prop :=
  ∀ n, P4536981625655705093.a n = A117284 (n + 1)

end A117284

/-! ## A117284.P1069064615394287121

`record[(n+1)/A013609(n+1-A000010(n+1))]`
-/

namespace A117284.P1069064615394287121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A013609 ((n + 1 : ℤ) - A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P1069064615394287121

namespace A117284

/-- `record[(n+1)/A013609(n+1-A000010(n+1))]` -/
def P1069064615394287121.Spec : Prop :=
  ∀ n, P1069064615394287121.a n = (A117284 (n + 1) : ℚ)

end A117284

/-! ## A117284.P149571097834204813

`eq[1, A010054(A051953(n+1))]+1`
-/

namespace A117284.P149571097834204813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117284.P149571097834204813

namespace A117284

/-- `eq[1, A010054(A051953(n+1))]+1` -/
def P149571097834204813.Spec : Prop :=
  ∀ n, (P149571097834204813.a n : ℤ) = A117284 (n + 1)

end A117284

/-! ## A117284.P1038046670702979393

`eq[1, A002260(A051953(n+1)+1)]+1`
-/

namespace A117284.P1038046670702979393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A051953 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117284.P1038046670702979393

namespace A117284

/-- `eq[1, A002260(A051953(n+1)+1)]+1` -/
def P1038046670702979393.Spec : Prop :=
  ∀ n, (P1038046670702979393.a n : ℤ) = A117284 (n + 1)

end A117284

/-! ## A117284.P13054688505365785326

`record[(n+1)/A336574(n+1-A000010(n+1))]`
-/

namespace A117284.P13054688505365785326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336574 ((n + 1 : ℤ) - A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P13054688505365785326

namespace A117284

/-- `record[(n+1)/A336574(n+1-A000010(n+1))]` -/
def P13054688505365785326.Spec : Prop :=
  ∀ n, P13054688505365785326.a n = (A117284 (n + 1) : ℚ)

end A117284

/-! ## A117284.P10060374610970386934

`record[n+1-A243203(n+1-A000010(n+1))]`
-/

namespace A117284.P10060374610970386934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A243203 ((n + 1 : ℤ) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P10060374610970386934

namespace A117284

/-- `record[n+1-A243203(n+1-A000010(n+1))]` -/
def P10060374610970386934.Spec : Prop :=
  ∀ n, P10060374610970386934.a n = A117284 (n + 1)

end A117284

/-! ## A117284.P10650744904928822468

`record[(n+1)/A062137(A016035(n+1))²]`
-/

namespace A117284.P10650744904928822468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062137 (A016035 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117284.P10650744904928822468

namespace A117284

/-- `record[(n+1)/A062137(A016035(n+1))²]` -/
def P10650744904928822468.Spec : Prop :=
  ∀ n, P10650744904928822468.a n = (A117284 (n + 1) : ℚ)

end A117284

/-!
# A117285: Numbers k for which the cototient k-phi(k) is a pentagonal number.

The programs for A117285, the canonical program `A117285.P12871270459971671114` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117285 has offset 1).

The definition of A117285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117285.P12871270459971671114

`eq[1, A255849(A051953(n+1))]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117285

/-- `eq[1, A255849(A051953(n+1))]+1` -/
def P12871270459971671114.Spec : Prop :=
  ∀ n, (P12871270459971671114.a n : ℤ) = A117285 (n + 1)

theorem P12871270459971671114.correct : P12871270459971671114.Spec := by
  intro n
  simp only [A117285, Nat.add_sub_cancel]

end A117285

/-! ## A117285.P15274248170730328436

`eq[A008624(A337604(n)), A078898(n)]`
-/

namespace A117285.P15274248170730328436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A337604 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117285.P15274248170730328436

namespace A117285

/-- `eq[A008624(A337604(n)), A078898(n)]` -/
def P15274248170730328436.Spec : Prop :=
  ∀ n, (P15274248170730328436.a n : ℤ) = A117285 (n + 1)

end A117285

/-! ## A117285.P7243021623075870187

`eq[A105700(A337667(n)), A279760(n)]`
-/

namespace A117285.P7243021623075870187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A337667 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117285.P7243021623075870187

namespace A117285

/-- `eq[A105700(A337667(n)), A279760(n)]` -/
def P7243021623075870187.Spec : Prop :=
  ∀ n, (P7243021623075870187.a n : ℤ) = A117285 (n + 1)

end A117285

/-!
# A117286: Numbers k for which the cototient k-phi(k) is a hexagonal number.

The programs for A117286, the canonical program `A117286.P13084081947061909868` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117286 has offset 1).

The definition of A117286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117286.P13084081947061909868

`eq[1, A062137(A016035(n+1))]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A117286

/-- `eq[1, A062137(A016035(n+1))]+1` -/
def P13084081947061909868.Spec : Prop :=
  ∀ n, (P13084081947061909868.a n : ℤ) = A117286 (n + 1)

theorem P13084081947061909868.correct : P13084081947061909868.Spec := by
  intro n
  simp only [A117286, Nat.add_sub_cancel]

end A117286

/-! ## A117286.P1551741073391578183

`record[A000027(n+1)/A062137(A016035(n+1))]`
-/

namespace A117286.P1551741073391578183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A062137 (A016035 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117286.P1551741073391578183

namespace A117286

/-- `record[A000027(n+1)/A062137(A016035(n+1))]` -/
def P1551741073391578183.Spec : Prop :=
  ∀ n, P1551741073391578183.a n = (A117286 (n + 1) : ℚ)

end A117286

/-! ## A117286.P1617244200346828007

`record[A008619(2*n)/A062137(A016035(n+1))]`
-/

namespace A117286.P1617244200346828007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A062137 (A016035 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117286.P1617244200346828007

namespace A117286

/-- `record[A008619(2*n)/A062137(A016035(n+1))]` -/
def P1617244200346828007.Spec : Prop :=
  ∀ n, P1617244200346828007.a n = (A117286 (n + 1) : ℚ)

end A117286

/-! ## A117286.P17409123043674758383

`record[A052938(2*n)/A062137(A016035(n+1))]`
-/

namespace A117286.P17409123043674758383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * n) : ℚ) / (A062137 (A016035 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117286.P17409123043674758383

namespace A117286

/-- `record[A052938(2*n)/A062137(A016035(n+1))]` -/
def P17409123043674758383.Spec : Prop :=
  ∀ n, P17409123043674758383.a n = (A117286 (n + 1) : ℚ)

end A117286

/-! ## A117286.P673744808679735046

`record[(A016825(n)/2-n)/A062137(A016035(n+1))]`
-/

namespace A117286.P673744808679735046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016825 n : ℚ) / 2 - (n : ℚ)) / (A062137 (A016035 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117286.P673744808679735046

namespace A117286

/-- `record[(A016825(n)/2-n)/A062137(A016035(n+1))]` -/
def P673744808679735046.Spec : Prop :=
  ∀ n, P673744808679735046.a n = (A117286 (n + 1) : ℚ)

end A117286

/-!
# A117287: Numbers k for which the cototient k-phi(k) is a heptagonal number.

The programs for A117287, there is no canonical definition to state claims against.
-/

/-! ## A117287.P8911502064828142950

`record[(n+1)/A319092(n+1-A000010(n+1))]`
-/

namespace A117287.P8911502064828142950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A319092 ((n + 1 : ℤ) - A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117287.P8911502064828142950

/-! ## A117287.P5526697846562277174

`lt[A211779(n+1), A000005(A213476(n+2))]+1`
-/

namespace A117287.P5526697846562277174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A213476 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A117287.P5526697846562277174

/-! ## A117287.P4252204679602734622

`lt[A075409(A003415(n)+2), n]`
-/

namespace A117287.P4252204679602734622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075409 (A003415 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A117287.P4252204679602734622

/-! ## A117287.P14354912391615794744

`A143578(n+1)-A241759(A000466(3*(n+1)))`
-/

namespace A117287.P14354912391615794744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1) - A241759 (A000466 (3 * (n + 1))).toNat

end

end A117287.P14354912391615794744

/-! ## A117287.P5121701550106062092

`A328603(n+1)+A179391(A019565(n))`
-/

namespace A117287.P5121701550106062092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328603 (n + 1) + A179391 (A019565 n).toNat

end

end A117287.P5121701550106062092

/-!
# A117289: Numbers k for which the cototient k-phi(k) is an enneagonal number (A001106).

The programs for A117289, there is no canonical definition to state claims against.
-/

/-! ## A117289.P12635183074883617235

`record[A327076(A073659(n+1))]`
-/

namespace A117289.P12635183074883617235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A073659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117289.P12635183074883617235

/-! ## A117289.P16884068933882855113

`eq[1, A309589(A309633(n+1))]`
-/

namespace A117289.P16884068933882855113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A309633 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117289.P16884068933882855113

/-! ## A117289.P12302611592999215997

`lt[0, and(A085737(n), A242246(n))]`
-/

namespace A117289.P12302611592999215997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085737 n) (A242246 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A117289.P12302611592999215997

/-!
# A117290: Numbers k for which the cototient k - phi(k) is a Fibonacci number.

The programs for A117290, the canonical program `A117290.P4275547685329266440` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117290 has offset 1).

The definition of A117290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117290.P4275547685329266440

`record[(n+1)*A010056(n+1-A000010(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117290

/-- `record[(n+1)*A010056(n+1-A000010(n+1))]` -/
def P4275547685329266440.Spec : Prop :=
  ∀ n, P4275547685329266440.a n = A117290 (n + 1)

theorem P4275547685329266440.correct : P4275547685329266440.Spec := by
  intro n
  simp only [A117290, Nat.add_sub_cancel]

end A117290

/-! ## A117290.P13756994421179897698

`eq[1, A010056(A051953(n+1))]+1`
-/

namespace A117290.P13756994421179897698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117290.P13756994421179897698

namespace A117290

/-- `eq[1, A010056(A051953(n+1))]+1` -/
def P13756994421179897698.Spec : Prop :=
  ∀ n, (P13756994421179897698.a n : ℤ) = A117290 (n + 1)

end A117290

/-! ## A117290.P5981170334447601765

`record[A000027(n+1)*A010056(A051953(n+1))]`
-/

namespace A117290.P5981170334447601765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A010056 (A051953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P5981170334447601765

namespace A117290

/-- `record[A000027(n+1)*A010056(A051953(n+1))]` -/
def P5981170334447601765.Spec : Prop :=
  ∀ n, P5981170334447601765.a n = A117290 (n + 1)

end A117290

/-! ## A117290.P16065588041299242863

`record[A010056(A051953(n+1))*A028242(2*n)]`
-/

namespace A117290.P16065588041299242863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A051953 (n + 1)).toNat * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P16065588041299242863

namespace A117290

/-- `record[A010056(A051953(n+1))*A028242(2*n)]` -/
def P16065588041299242863.Spec : Prop :=
  ∀ n, P16065588041299242863.a n = A117290 (n + 1)

end A117290

/-! ## A117290.P8456603248874280033

`record[A010056(A051953(n+1))*A131732(2*n)]`
-/

namespace A117290.P8456603248874280033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A051953 (n + 1)).toNat * A131732 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P8456603248874280033

namespace A117290

/-- `record[A010056(A051953(n+1))*A131732(2*n)]` -/
def P8456603248874280033.Spec : Prop :=
  ∀ n, P8456603248874280033.a n = A117290 (n + 1)

end A117290

/-! ## A117290.P7029577066358702560

`record[A008619(2*n+1)*A010056(A051953(n+1))]`
-/

namespace A117290.P7029577066358702560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n + 1) * A010056 (A051953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P7029577066358702560

namespace A117290

/-- `record[A008619(2*n+1)*A010056(A051953(n+1))]` -/
def P7029577066358702560.Spec : Prop :=
  ∀ n, P7029577066358702560.a n = A117290 (n + 1)

end A117290

/-! ## A117290.P6447944651685138426

`record[A008611(3*n)*A010056(A051953(n+1))]`
-/

namespace A117290.P6447944651685138426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) * A010056 (A051953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117290.P6447944651685138426

namespace A117290

/-- `record[A008611(3*n)*A010056(A051953(n+1))]` -/
def P6447944651685138426.Spec : Prop :=
  ∀ n, P6447944651685138426.a n = A117290 (n + 1)

end A117290

/-!
# A117291: a(n) = phi(n)^(n-phi(n)).

The programs for A117291, the canonical program `A117291.P4663113591373079895` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117291 has offset 1).

The definition of A117291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117291.P6728861172813852724

`Δ[A002088(n)]^A051953(n+1)`
-/

namespace A117291.P6728861172813852724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P6728861172813852724

namespace A117291

/-- `Δ[A002088(n)]^A051953(n+1)` -/
def P6728861172813852724.Spec : Prop :=
  ∀ n, P6728861172813852724.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P231128429602659099

`Δ[A005728(n)]^A051953(n+1)`
-/

namespace A117291.P231128429602659099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P231128429602659099

namespace A117291

/-- `Δ[A005728(n)]^A051953(n+1)` -/
def P231128429602659099.Spec : Prop :=
  ∀ n, P231128429602659099.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P12928911230023057332

`Δ[A049643(n)]^A051953(n+1)`
-/

namespace A117291.P12928911230023057332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P12928911230023057332

namespace A117291

/-- `Δ[A049643(n)]^A051953(n+1)` -/
def P12928911230023057332.Spec : Prop :=
  ∀ n, P12928911230023057332.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P11655224826783147783

`Δ[A225531(n)]^A051953(n+1)`
-/

namespace A117291.P11655224826783147783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P11655224826783147783

namespace A117291

/-- `Δ[A225531(n)]^A051953(n+1)` -/
def P11655224826783147783.Spec : Prop :=
  ∀ n, P11655224826783147783.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P12655516734179896533

`A000010(n+1)^A051953(n+1)`
-/

namespace A117291.P12655516734179896533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P12655516734179896533

namespace A117291

/-- `A000010(n+1)^A051953(n+1)` -/
def P12655516734179896533.Spec : Prop :=
  ∀ n, P12655516734179896533.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P15774497275548343000

`(A109606(n+1)+1)^A051953(n+1)`
-/

namespace A117291.P15774497275548343000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P15774497275548343000

namespace A117291

/-- `(A109606(n+1)+1)^A051953(n+1)` -/
def P15774497275548343000.Spec : Prop :=
  ∀ n, P15774497275548343000.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P14571230104048496334

`A000010(n+1)^(A219428(n+1)+1)`
-/

namespace A117291.P14571230104048496334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A219428 (n + 1) + 1 : ℤ)

end

end A117291.P14571230104048496334

namespace A117291

/-- `A000010(n+1)^(A219428(n+1)+1)` -/
def P14571230104048496334.Spec : Prop :=
  ∀ n, P14571230104048496334.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P14248957863090314489

`A000010(n+1)^(A062830(n+1)-1)`
-/

namespace A117291.P14248957863090314489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A062830 (n + 1) - 1 : ℤ)

end

end A117291.P14248957863090314489

namespace A117291

/-- `A000010(n+1)^(A062830(n+1)-1)` -/
def P14248957863090314489.Spec : Prop :=
  ∀ n, P14248957863090314489.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P8844040713791209926

`(A039649(n+1)-1)^A051953(n+1)`
-/

namespace A117291.P8844040713791209926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P8844040713791209926

namespace A117291

/-- `(A039649(n+1)-1)^A051953(n+1)` -/
def P8844040713791209926.Spec : Prop :=
  ∀ n, P8844040713791209926.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P346946985916973560

`A000010(n+1)^A319700(2*(n+1))`
-/

namespace A117291.P346946985916973560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A319700 (2 * (n + 1)) : ℤ)

end

end A117291.P346946985916973560

namespace A117291

/-- `A000010(n+1)^A319700(2*(n+1))` -/
def P346946985916973560.Spec : Prop :=
  ∀ n, P346946985916973560.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P1301564606047375677

`floor(log2(A243305(n+1)))^A051953(n+1)`
-/

namespace A117291.P1301564606047375677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A243305 (n + 1)).toNat : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P1301564606047375677

namespace A117291

/-- `floor(log2(A243305(n+1)))^A051953(n+1)` -/
def P1301564606047375677.Spec : Prop :=
  ∀ n, P1301564606047375677.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P7922999540026661972

`Δ[eq[1, A038566(n+1)]]^A051953(n+1)`
-/

namespace A117291.P7922999540026661972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P7922999540026661972

namespace A117291

/-- `Δ[eq[1, A038566(n+1)]]^A051953(n+1)` -/
def P7922999540026661972.Spec : Prop :=
  ∀ n, P7922999540026661972.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P10007654395365051065

`(A109606(n+1)+1)^(2-A039649(n+1)+n)`
-/

namespace A117291.P10007654395365051065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) ^ (2 - A039649 (n + 1) + (n : ℤ) : ℤ)

end

end A117291.P10007654395365051065

namespace A117291

/-- `(A109606(n+1)+1)^(2-A039649(n+1)+n)` -/
def P10007654395365051065.Spec : Prop :=
  ∀ n, P10007654395365051065.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P4647852290894450503

`∑{d}[n+1, (n+1)/#*A008683(#)]^A051953(n+1)`
-/

namespace A117291.P4647852290894450503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) ^ (A051953 (n + 1) : ℤ)

end

end A117291.P4647852290894450503

namespace A117291

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]^A051953(n+1)` -/
def P4647852290894450503.Spec : Prop :=
  ∀ n, P4647852290894450503.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P9629886913689650214

`∑{d}[n+1, (n+1)/#*A008683(#)]^(A219428(n+1)+1)`
-/

namespace A117291.P9629886913689650214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) ^ (A219428 (n + 1) + 1 : ℤ)

end

end A117291.P9629886913689650214

namespace A117291

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]^(A219428(n+1)+1)` -/
def P9629886913689650214.Spec : Prop :=
  ∀ n, P9629886913689650214.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P16370766590233536639

`(A000010(2*n-(n-1))-and(2, n²))^(1-(A000010(2*n-(n-1))-n))`
-/

namespace A117291.P16370766590233536639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ) : ℚ) ^ (1 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)) : ℤ)

end

end A117291.P16370766590233536639

namespace A117291

/-- `(A000010(2*n-(n-1))-and(2, n²))^(1-(A000010(2*n-(n-1))-n))` -/
def P16370766590233536639.Spec : Prop :=
  ∀ n, P16370766590233536639.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P4663113591373079895

`∑{d}[n+1, (n+1)/#*A008683(#)]^(1-∑{d}[n+1, #*A008683((n+1)/#)]+n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A117291

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]^(1-∑{d}[n+1, #*A008683((n+1)/#)]+n)` -/
def P4663113591373079895.Spec : Prop :=
  ∀ n, P4663113591373079895.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P15506932084455404585

`(A000010(2*n-(n-1))-A008683(8*n+4))^(1-(A000010(2*n-(n-1))-n))`
-/

namespace A117291.P15506932084455404585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - A008683 (8 * n + 4) : ℚ) ^ (1 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)) : ℤ)

end

end A117291.P15506932084455404585

namespace A117291

/-- `(A000010(2*n-(n-1))-A008683(8*n+4))^(1-(A000010(2*n-(n-1))-n))` -/
def P15506932084455404585.Spec : Prop :=
  ∀ n, P15506932084455404585.a n = (A117291 (n + 1) : ℚ)

end A117291

/-! ## A117291.P11847562671172752441

`(A000045(gcd(n, n-1))*A000010(2*n-(n-1)))^(1-(A000010(2*n-(n-1))-n))`
-/

namespace A117291.P11847562671172752441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (Int.gcd (n : ℤ) ((n : ℤ) - 1)) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) ^ (1 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)) : ℤ)

end

end A117291.P11847562671172752441

namespace A117291

/-- `(A000045(gcd(n, n-1))*A000010(2*n-(n-1)))^(1-(A000010(2*n-(n-1))-n))` -/
def P11847562671172752441.Spec : Prop :=
  ∀ n, P11847562671172752441.a n = (A117291 (n + 1) : ℚ)

end A117291

/-!
# A117292: a(n) = (n-phi(n))^phi(n).

The programs for A117292, the canonical program `A117292.P2388387308694075584` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117292 has offset 1).

The definition of A117292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117292.P13079283561403870524

`A051953(n+1)^Δ[A002088(n)]`
-/

namespace A117292.P13079283561403870524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A117292.P13079283561403870524

namespace A117292

/-- `A051953(n+1)^Δ[A002088(n)]` -/
def P13079283561403870524.Spec : Prop :=
  ∀ n, P13079283561403870524.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P9100076149682757171

`A051953(n+1)^Δ[A005728(n)]`
-/

namespace A117292.P9100076149682757171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A117292.P9100076149682757171

namespace A117292

/-- `A051953(n+1)^Δ[A005728(n)]` -/
def P9100076149682757171.Spec : Prop :=
  ∀ n, P9100076149682757171.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P2620161391240470501

`A051953(n+1)^Δ[A049643(n)]`
-/

namespace A117292.P2620161391240470501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A117292.P2620161391240470501

namespace A117292

/-- `A051953(n+1)^Δ[A049643(n)]` -/
def P2620161391240470501.Spec : Prop :=
  ∀ n, P2620161391240470501.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P9868160751784803912

`A051953(n+1)^Δ[A225531(n)]`
-/

namespace A117292.P9868160751784803912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A117292.P9868160751784803912

namespace A117292

/-- `A051953(n+1)^Δ[A225531(n)]` -/
def P9868160751784803912.Spec : Prop :=
  ∀ n, P9868160751784803912.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P15628918976237878024

`A051953(n+1)^A000010(n+1)`
-/

namespace A117292.P15628918976237878024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A117292.P15628918976237878024

namespace A117292

/-- `A051953(n+1)^A000010(n+1)` -/
def P15628918976237878024.Spec : Prop :=
  ∀ n, P15628918976237878024.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P15673942657460092677

`A051953(n+1)^(A109606(n+1)+1)`
-/

namespace A117292.P15673942657460092677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (A109606 (n + 1) + 1 : ℤ)

end

end A117292.P15673942657460092677

namespace A117292

/-- `A051953(n+1)^(A109606(n+1)+1)` -/
def P15673942657460092677.Spec : Prop :=
  ∀ n, P15673942657460092677.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P11033359042731618847

`(A219428(n+1)+1)^A000010(n+1)`
-/

namespace A117292.P11033359042731618847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219428 (n + 1) + 1 : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A117292.P11033359042731618847

namespace A117292

/-- `(A219428(n+1)+1)^A000010(n+1)` -/
def P11033359042731618847.Spec : Prop :=
  ∀ n, P11033359042731618847.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P2503521153704710973

`A051953(n+1)^(A039649(n+1)-1)`
-/

namespace A117292.P2503521153704710973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (A039649 (n + 1) - 1 : ℤ)

end

end A117292.P2503521153704710973

namespace A117292

/-- `A051953(n+1)^(A039649(n+1)-1)` -/
def P2503521153704710973.Spec : Prop :=
  ∀ n, P2503521153704710973.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P17118293323871135547

`A319700(2*(n+1))^A000010(n+1)`
-/

namespace A117292.P17118293323871135547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319700 (2 * (n + 1)) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A117292.P17118293323871135547

namespace A117292

/-- `A319700(2*(n+1))^A000010(n+1)` -/
def P17118293323871135547.Spec : Prop :=
  ∀ n, P17118293323871135547.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P7915346896966858733

`A051953(n+1)^floor(log2(A243305(n+1)))`
-/

namespace A117292.P7915346896966858733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) ^ Nat.log 2 (A243305 (n + 1)).toNat

end

end A117292.P7915346896966858733

namespace A117292

/-- `A051953(n+1)^floor(log2(A243305(n+1)))` -/
def P7915346896966858733.Spec : Prop :=
  ∀ n, P7915346896966858733.a n = A117292 (n + 1)

end A117292

/-! ## A117292.P80887701984474504

`A051953(n+1)^Δ[eq[1, A038566(n+1)]]`
-/

namespace A117292.P80887701984474504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A117292.P80887701984474504

namespace A117292

/-- `A051953(n+1)^Δ[eq[1, A038566(n+1)]]` -/
def P80887701984474504.Spec : Prop :=
  ∀ n, P80887701984474504.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P5209034742546778515

`(2-A039649(n+1)+n)^(A109606(n+1)+1)`
-/

namespace A117292.P5209034742546778515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A039649 (n + 1) + (n : ℤ) : ℚ) ^ (A109606 (n + 1) + 1 : ℤ)

end

end A117292.P5209034742546778515

namespace A117292

/-- `(2-A039649(n+1)+n)^(A109606(n+1)+1)` -/
def P5209034742546778515.Spec : Prop :=
  ∀ n, P5209034742546778515.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P1493396838666918253

`A051953(n+1)^∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A117292.P1493396838666918253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℝ) ^ ((∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) : ℚ) : ℝ)

end

end A117292.P1493396838666918253

namespace A117292

/-- `A051953(n+1)^∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P1493396838666918253.Spec : Prop :=
  ∀ n, P1493396838666918253.a n = (A117292 (n + 1) : ℝ)

end A117292

/-! ## A117292.P6269980771785005389

`(A219428(n+1)+1)^∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A117292.P6269980771785005389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219428 (n + 1) + 1 : ℝ) ^ ((∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) : ℚ) : ℝ)

end

end A117292.P6269980771785005389

namespace A117292

/-- `(A219428(n+1)+1)^∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P6269980771785005389.Spec : Prop :=
  ∀ n, P6269980771785005389.a n = (A117292 (n + 1) : ℝ)

end A117292

/-! ## A117292.P13711057322701512223

`(1-(A000010(2*n-(n-1))-n))^(A000010(2*n-(n-1))-and(2, n²))`
-/

namespace A117292.P13711057322701512223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)) : ℚ) ^ (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ) : ℤ)

end

end A117292.P13711057322701512223

namespace A117292

/-- `(1-(A000010(2*n-(n-1))-n))^(A000010(2*n-(n-1))-and(2, n²))` -/
def P13711057322701512223.Spec : Prop :=
  ∀ n, P13711057322701512223.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P2388387308694075584

`(1-∑{d}[n+1, #*A008683((n+1)/#)]+n)^∑{d}[n+1, (n+1)/#*A008683(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A117292

/-- `(1-∑{d}[n+1, #*A008683((n+1)/#)]+n)^∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P2388387308694075584.Spec : Prop :=
  ∀ n, P2388387308694075584.a n = (A117292 (n + 1) : ℝ)

end A117292

/-! ## A117292.P8200332017685733532

`(1-(A000010(2*n-(n-1))-n))^(A000010(2*n-(n-1))-A008683(8*n+4))`
-/

namespace A117292.P8200332017685733532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)) : ℚ) ^ (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - A008683 (8 * n + 4) : ℤ)

end

end A117292.P8200332017685733532

namespace A117292

/-- `(1-(A000010(2*n-(n-1))-n))^(A000010(2*n-(n-1))-A008683(8*n+4))` -/
def P8200332017685733532.Spec : Prop :=
  ∀ n, P8200332017685733532.a n = (A117292 (n + 1) : ℚ)

end A117292

/-! ## A117292.P16120330277525667260

`(1-(A000010(2*n-(n-1))-n))^(A000045(gcd(n, n-1))*A000010(2*n-(n-1)))`
-/

namespace A117292.P16120330277525667260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)) : ℚ) ^ (A000045 (Int.gcd (n : ℤ) ((n : ℤ) - 1)) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)

end

end A117292.P16120330277525667260

namespace A117292

/-- `(1-(A000010(2*n-(n-1))-n))^(A000045(gcd(n, n-1))*A000010(2*n-(n-1)))` -/
def P16120330277525667260.Spec : Prop :=
  ∀ n, P16120330277525667260.a n = (A117292 (n + 1) : ℚ)

end A117292

/-!
# A117293: Mersenne primes written in binary.

The programs for A117293, there is no canonical definition to state claims against.
-/

/-! ## A117293.P2736451157224085526

`A007088(A000668(n+1))`
-/

namespace A117293.P2736451157224085526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000668 (n + 1)).toNat

end

end A117293.P2736451157224085526

/-! ## A117293.P211078600689445239

`A000042(A000043(n+1))`
-/

namespace A117293.P211078600689445239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A000043 (n + 1)).toNat

end

end A117293.P211078600689445239

/-! ## A117293.P952052189845040549

`A000042(eq[1, A126717(n)])`
-/

namespace A117293.P952052189845040549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117293.P952052189845040549

/-! ## A117293.P16418076990756127549

`A002275(eq[1, A126717(n)])`
-/

namespace A117293.P16418076990756127549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117293.P16418076990756127549

/-! ## A117293.P13057216677823901208

`A000042(lt[A126717(n), 2])`
-/

namespace A117293.P13057216677823901208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A117293.P13057216677823901208

/-!
# A117294: Number of sequences of length n starting with 1,2 which satisfy a recurrence a(k+1) = floor(c*a(k)) for some constant c.

The programs for A117294, there is no canonical definition to state claims against.
-/

/-! ## A117294.P17498319558882207412

`A008615(A002387(n+2)-A300108(n+1))`
-/

namespace A117294.P17498319558882207412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002387 (n + 2) - A300108 (n + 1)).toNat

end

end A117294.P17498319558882207412

/-! ## A117294.P2877499070502509380

`Δ[A054846(A150577(n))]`
-/

namespace A117294.P2877499070502509380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A150577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117294.P2877499070502509380

/-! ## A117294.P15469450780943494536

`Δ[A008618(Δ[A021006(n)])]`
-/

namespace A117294.P15469450780943494536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117294.P15469450780943494536

/-!
# A117295: a(n) = phi(n)*(n - phi(n)).

The programs for A117295, the canonical program `A117295.P11573964294491950666` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117295 has offset 1).

The definition of A117295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117295.P11573964294491950666

`A002618(n+1)-A127473(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A117295

/-- `A002618(n+1)-A127473(n+1)` -/
def P11573964294491950666.Spec : Prop :=
  ∀ n, P11573964294491950666.a n = A117295 (n + 1)

theorem P11573964294491950666.correct : P11573964294491950666.Spec := by
  intro n
  simp only [A117295, Nat.add_sub_cancel]

end A117295

/-! ## A117295.P4654297456575928775

`(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A117295.P4654297456575928775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A117295.P4654297456575928775

namespace A117295

/-- `(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P4654297456575928775.Spec : Prop :=
  ∀ n, P4654297456575928775.a n = (A117295 (n + 1) : ℚ)

end A117295

/-! ## A117295.P1596880712103321162

`Δ[A240877(n)]-A127473(n+1)`
-/

namespace A117295.P1596880712103321162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A127473 (n + 1)

end

end A117295.P1596880712103321162

namespace A117295

/-- `Δ[A240877(n)]-A127473(n+1)` -/
def P1596880712103321162.Spec : Prop :=
  ∀ n, P1596880712103321162.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P91155609475331865

`Δ[A002088(n)]*A051953(n+1)`
-/

namespace A117295.P91155609475331865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A051953 (n + 1)

end

end A117295.P91155609475331865

namespace A117295

/-- `Δ[A002088(n)]*A051953(n+1)` -/
def P91155609475331865.Spec : Prop :=
  ∀ n, P91155609475331865.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P8358577878187954544

`Δ[A005728(n)]*A051953(n+1)`
-/

namespace A117295.P8358577878187954544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A051953 (n + 1)

end

end A117295.P8358577878187954544

namespace A117295

/-- `Δ[A005728(n)]*A051953(n+1)` -/
def P8358577878187954544.Spec : Prop :=
  ∀ n, P8358577878187954544.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P14651258543477252782

`A000010(n+1)*A051953(n+1)`
-/

namespace A117295.P14651258543477252782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A051953 (n + 1)

end

end A117295.P14651258543477252782

namespace A117295

/-- `A000010(n+1)*A051953(n+1)` -/
def P14651258543477252782.Spec : Prop :=
  ∀ n, P14651258543477252782.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P3321400118270165405

`A009195(n+1)*A075857(n+1)`
-/

namespace A117295.P3321400118270165405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A075857 (n + 1)

end

end A117295.P3321400118270165405

namespace A117295

/-- `A009195(n+1)*A075857(n+1)` -/
def P3321400118270165405.Spec : Prop :=
  ∀ n, P3321400118270165405.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P2910727738119005808

`A002618(n+1)-Δ[A002088(n)]²`
-/

namespace A117295.P2910727738119005808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A117295.P2910727738119005808

namespace A117295

/-- `A002618(n+1)-Δ[A002088(n)]²` -/
def P2910727738119005808.Spec : Prop :=
  ∀ n, P2910727738119005808.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P7367613984082376643

`A002618(n+1)-Δ[A005728(n)]²`
-/

namespace A117295.P7367613984082376643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A117295.P7367613984082376643

namespace A117295

/-- `A002618(n+1)-Δ[A005728(n)]²` -/
def P7367613984082376643.Spec : Prop :=
  ∀ n, P7367613984082376643.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P3736906672709908463

`A002618(n+1)-A000010(n+1)²`
-/

namespace A117295.P3736906672709908463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A000010 (n + 1) ^ 2

end

end A117295.P3736906672709908463

namespace A117295

/-- `A002618(n+1)-A000010(n+1)²` -/
def P3736906672709908463.Spec : Prop :=
  ∀ n, P3736906672709908463.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P9617744435819107556

`A053650(n+1)-A051953(n+1)²`
-/

namespace A117295.P9617744435819107556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A051953 (n + 1) ^ 2

end

end A117295.P9617744435819107556

namespace A117295

/-- `A053650(n+1)-A051953(n+1)²` -/
def P9617744435819107556.Spec : Prop :=
  ∀ n, P9617744435819107556.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P6892869720598294353

`sqrt(A127473(n+1))*A051953(n+1)`
-/

namespace A117295.P6892869720598294353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * (A051953 (n + 1) : ℝ)

end

end A117295.P6892869720598294353

namespace A117295

/-- `sqrt(A127473(n+1))*A051953(n+1)` -/
def P6892869720598294353.Spec : Prop :=
  ∀ n, P6892869720598294353.a n = (A117295 (n + 1) : ℝ)

end A117295

/-! ## A117295.P14724052524674096261

`(A109606(n+1)+1)*A051953(n+1)`
-/

namespace A117295.P14724052524674096261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A051953 (n + 1)

end

end A117295.P14724052524674096261

namespace A117295

/-- `(A109606(n+1)+1)*A051953(n+1)` -/
def P14724052524674096261.Spec : Prop :=
  ∀ n, P14724052524674096261.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P14372687792706903064

`(A219428(n+1)+1)*A000010(n+1)`
-/

namespace A117295.P14372687792706903064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219428 (n + 1) + 1) * A000010 (n + 1)

end

end A117295.P14372687792706903064

namespace A117295

/-- `(A219428(n+1)+1)*A000010(n+1)` -/
def P14372687792706903064.Spec : Prop :=
  ∀ n, P14372687792706903064.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P2458711016187092475

`(A039649(n+1)-1)*A051953(n+1)`
-/

namespace A117295.P2458711016187092475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A051953 (n + 1)

end

end A117295.P2458711016187092475

namespace A117295

/-- `(A039649(n+1)-1)*A051953(n+1)` -/
def P2458711016187092475.Spec : Prop :=
  ∀ n, P2458711016187092475.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P9797227275706995718

`A109606(n+1)*A219428(n+1)+n`
-/

namespace A117295.P9797227275706995718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) * A219428 (n + 1) + (n : ℤ)

end

end A117295.P9797227275706995718

namespace A117295

/-- `A109606(n+1)*A219428(n+1)+n` -/
def P9797227275706995718.Spec : Prop :=
  ∀ n, P9797227275706995718.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P11682002645876136226

`(n-A016035(n+1))*A051953(n+1)`
-/

namespace A117295.P11682002645876136226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A016035 (n + 1)) * A051953 (n + 1)

end

end A117295.P11682002645876136226

namespace A117295

/-- `(n-A016035(n+1))*A051953(n+1)` -/
def P11682002645876136226.Spec : Prop :=
  ∀ n, P11682002645876136226.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P4922086236088480234

`(n-A109606(n+1))*A000010(n+1)`
-/

namespace A117295.P4922086236088480234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A109606 (n + 1)) * A000010 (n + 1)

end

end A117295.P4922086236088480234

namespace A117295

/-- `(n-A109606(n+1))*A000010(n+1)` -/
def P4922086236088480234.Spec : Prop :=
  ∀ n, P4922086236088480234.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P11122246171174981991

`(n-A219428(n+1))*A051953(n+1)`
-/

namespace A117295.P11122246171174981991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1)) * A051953 (n + 1)

end

end A117295.P11122246171174981991

namespace A117295

/-- `(n-A219428(n+1))*A051953(n+1)` -/
def P11122246171174981991.Spec : Prop :=
  ∀ n, P11122246171174981991.a n = A117295 (n + 1)

end A117295

/-! ## A117295.P6884180800699879383

`(A002088(n+1)-A002088(n))*A051953(n+1)`
-/

namespace A117295.P6884180800699879383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A051953 (n + 1)

end

end A117295.P6884180800699879383

namespace A117295

/-- `(A002088(n+1)-A002088(n))*A051953(n+1)` -/
def P6884180800699879383.Spec : Prop :=
  ∀ n, P6884180800699879383.a n = A117295 (n + 1)

end A117295

/-!
# A117296: Numbers n for which phi(n) is a palindrome.

The programs for A117296, there is no canonical definition to state claims against.
-/

/-! ## A117296.P3665611231863515336

`eq[A000010(n+1), A004086(A000010(n+1))]+1`
-/

namespace A117296.P3665611231863515336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117296.P3665611231863515336

/-! ## A117296.P11152397275063211869

`eq[0, A261424(A000010(n+1))]+1`
-/

namespace A117296.P11152397275063211869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117296.P11152397275063211869

/-! ## A117296.P4552875393333079259

`record[(n+1)*A136522(A002088(n+1)-A002088(n))]`
-/

namespace A117296.P4552875393333079259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A136522 (A002088 (n + 1) - A002088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117296.P4552875393333079259

/-! ## A117296.P16819525123149228308

`eq[A000007(n), A261424(A225530(n))]`
-/

namespace A117296.P16819525123149228308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117296.P16819525123149228308

/-! ## A117296.P11975796431220210634

`eq[A000038(n), A261424(A225530(n))]`
-/

namespace A117296.P11975796431220210634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117296.P11975796431220210634

/-!
# A117297: Triangle read by rows generated from the Narayana transform.

The programs for A117297, there is no canonical definition to state claims against.
-/

/-! ## A117297.P656887057796353864

`A320105(A071258(n)+1)`
-/

namespace A117297.P656887057796353864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A071258 n + 1).toNat

end

end A117297.P656887057796353864

/-! ## A117297.P14201856819168690013

`A003983(A203996(∑[ceil(3^(n-1))]))`
-/

namespace A117297.P14201856819168690013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A203996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A117297.P14201856819168690013

/-! ## A117297.P2906202057549746943

`A069270(n)+A047212(A309862(n))`
-/

namespace A117297.P2906202057549746943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 n + A047212 (A309862 n).toNat

end

end A117297.P2906202057549746943

/-! ## A117297.P16313704378719315025

`A346643(A000111(n))-A165051(n)`
-/

namespace A117297.P16313704378719315025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346643 (A000111 n).toNat - A165051 n

end

end A117297.P16313704378719315025

/-! ## A117297.P17599009822629086300

`A033676(A218667(n)+A002260(n+1))`
-/

namespace A117297.P17599009822629086300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A218667 n + A002260 (n + 1)).toNat

end

end A117297.P17599009822629086300

/-!
# A117298: Number of partitions of n with unique smallest part and unique largest part.

The programs for A117298, there is no canonical definition to state claims against.
-/

/-! ## A117298.P7493801779031602820

`A117995(n+1)+1`
-/

namespace A117298.P7493801779031602820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 1) + 1

end

end A117298.P7493801779031602820

/-! ## A117298.P6914248610924245310

`A002865(n+1)+char[2*n]`
-/

namespace A117298.P6914248610924245310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117298.P6914248610924245310

/-! ## A117298.P12676853699898020866

`A232697(n+1)-char[2*n+1]`
-/

namespace A117298.P12676853699898020866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117298.P12676853699898020866

/-! ## A117298.P7950871296467636633

`A059841(n)+A002865(n+1)`
-/

namespace A117298.P7950871296467636633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A002865 (n + 1)

end

end A117298.P7950871296467636633

/-! ## A117298.P13771947310510282579

`A083751(n+1)+A040001(n)`
-/

namespace A117298.P13771947310510282579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) + A040001 n

end

end A117298.P13771947310510282579

/-! ## A117298.P16728409249597508075

`A187219(n+1)+1-A135528(n+1)`
-/

namespace A117298.P16728409249597508075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1) + (1 - A135528 (n + 1))

end

end A117298.P16728409249597508075

/-! ## A117298.P1869136502311171672

`Δ[A058984(n)]+1`
-/

namespace A117298.P1869136502311171672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A117298.P1869136502311171672

/-! ## A117298.P457734782795980760

`Δ[A133041(n)]-n%2`
-/

namespace A117298.P457734782795980760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n % 2 : ℕ) : ℤ)

end

end A117298.P457734782795980760

/-! ## A117298.P17285922418866150192

`Δ[A000041(n)]+log2(gcd(2, n))`
-/

namespace A117298.P17285922418866150192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A117298.P17285922418866150192

/-! ## A117298.P12608677595173894422

`Δ[ceil(A000065(n)+n/2)]`
-/

namespace A117298.P12608677595173894422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000065 n : ℚ) + (n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117298.P12608677595173894422

/-! ## A117298.P18004403043911165794

`Δ[A004250(A028310(n))]+1`
-/

namespace A117298.P18004403043911165794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A117298.P18004403043911165794

/-! ## A117298.P16037884552291072899

`Δ[A110654(n)+A000041(n)]`
-/

namespace A117298.P16037884552291072899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117298.P16037884552291072899

/-! ## A117298.P3377401393988764836

`Δ[A004526(n+1)+A000041(n)]`
-/

namespace A117298.P3377401393988764836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117298.P3377401393988764836

/-! ## A117298.P11402598797576073948

`Δ[A008619(n+1)+A000041(n)]`
-/

namespace A117298.P11402598797576073948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117298.P11402598797576073948

/-! ## A117298.P11318517214716752144

`1-Δ[A004526(n)-A000041(n)]`
-/

namespace A117298.P11318517214716752144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A117298.P11318517214716752144

/-! ## A117298.P12625435617807087498

`Δ[A000041(n)]+val(A020639(n+2), 2)`
-/

namespace A117298.P12625435617807087498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (SequenceMachineLib.valuation (A020639 (n + 2)).toNat 2 : ℤ)

end

end A117298.P12625435617807087498

/-! ## A117298.P6945376232504398710

`Δ[A000041(n)]+A000045(and(1, 1-n))`
-/

namespace A117298.P6945376232504398710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (Int.land 1 (1 - (n : ℤ))).toNat

end

end A117298.P6945376232504398710

/-! ## A117298.P14183292156905627622

`A000035(n+1)+A000041(n+1)-A000041(n)`
-/

namespace A117298.P14183292156905627622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A000041 (n + 1) - A000041 n)

end

end A117298.P14183292156905627622

/-! ## A117298.P16512822511790911320

`Δ[A035363(2*n)+A004526(n+1)]`
-/

namespace A117298.P16512822511790911320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117298.P16512822511790911320

/-! ## A117298.P9930036566803997541

`A212551(A128918(n+1))+1`
-/

namespace A117298.P9930036566803997541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A128918 (n + 1)).toNat + 1

end

end A117298.P9930036566803997541

