import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C034
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C026

/-!
# A396400: Numbers k for which A395994(k)/k sets a new record.

The programs for A396400, there is no canonical definition to state claims against.
-/

/-! ## A396400.P4233210470739554438

`∩[A324758(n+1), A396399(n+1)]`
-/

namespace A396400.P4233210470739554438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P4233210470739554438

/-! ## A396400.P12667144716622914687

`∩[A324761(n+1), A396399(n+1)]`
-/

namespace A396400.P12667144716622914687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P12667144716622914687

/-! ## A396400.P968164966321311167

`∩[A324769(n+1), A396399(n+1)]`
-/

namespace A396400.P968164966321311167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P968164966321311167

/-! ## A396400.P13266279083368976615

`∩[A324760(n+1), A396399(n+1)]`
-/

namespace A396400.P13266279083368976615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P13266279083368976615

/-! ## A396400.P519346526280841115

`∩[A324849(n+1), A396399(n+1)]`
-/

namespace A396400.P519346526280841115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396400.P519346526280841115

/-!
# A396402: Numbers k such that there is a record number of values of j with 1 <= j <= k and GCD(j,k) = 1 such that the number of terms in the greedy Egyptian fraction representation of j/k (A050205(k,j)) is the minimum possible (A097847(k,j)).

The programs for A396402, there is no canonical definition to state claims against.
-/

/-! ## A396402.P6551208870448337863

`A342194(A040177(n+1))`
-/

namespace A396402.P6551208870448337863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A040177 (n + 1)).toNat

end

end A396402.P6551208870448337863

/-! ## A396402.P16061030561019631816

`A342194(A040184(n+1))`
-/

namespace A396402.P16061030561019631816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A040184 (n + 1)).toNat

end

end A396402.P16061030561019631816

/-! ## A396402.P11606418057597908296

`A342194(A040988(n+1))`
-/

namespace A396402.P11606418057597908296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A040988 (n + 1)).toNat

end

end A396402.P11606418057597908296

/-! ## A396402.P10320589141142751624

`A342194(A040990(n+1))`
-/

namespace A396402.P10320589141142751624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A040990 (n + 1)).toNat

end

end A396402.P10320589141142751624

/-! ## A396402.P1923804051886048310

`A168485(A040179(n+1))`
-/

namespace A396402.P1923804051886048310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A040179 (n + 1)).toNat

end

end A396402.P1923804051886048310

/-!
# A396403: Array read by ascending antidiagonals: A(n,k) = k^(n*(n - 1)/2) for k >= 0.

The programs for A396403, there is no canonical definition to state claims against.
-/

/-! ## A396403.P17092791610313573854

`A321400(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A396403.P17092791610313573854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A321400 ((n : ℤ) * a (n - 1)).toNat

end

end A396403.P17092791610313573854

/-! ## A396403.P3303854218062151930

`A344612(n)^A091967(A000010(n+1))`
-/

namespace A396403.P3303854218062151930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344612 n : ℚ) ^ (A091967 (A000010 (n + 1)).toNat : ℤ)

end

end A396403.P3303854218062151930

/-!
# A396405: A sequence constructed by greedily sampling the probability distribution given by 1/log_2(i+1)^2 - 1/log_2(i+2)^2 to minimize ratio discrepancy.

The programs for A396405, there is no canonical definition to state claims against.
-/

/-! ## A396405.P9528211734468974319

`gcd(A002910(n), A381522(n+1))`
-/

namespace A396405.P9528211734468974319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002910 n) (A381522 (n + 1))

end

end A396405.P9528211734468974319

/-! ## A396405.P13565958618095220815

`A381522(n+1)%A375027(n+1)`
-/

namespace A396405.P13565958618095220815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381522 (n + 1)) (A375027 (n + 1))

end

end A396405.P13565958618095220815

/-! ## A396405.P300461148432744624

`and(A234936(n+2), A381522(n+1))`
-/

namespace A396405.P300461148432744624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A234936 (n + 2)) (A381522 (n + 1))

end

end A396405.P300461148432744624

/-!
# A396409: Number of iterations of x -> x XOR 2^A000120(x) from x = n to reach a number of the form 2^m-1.

The programs for A396409, the canonical program `A396409.P16372428509261204668` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396409 has offset 0).

The definition of A396409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396409.P9084681117393821384

`A326730((n+1)/2^val(n+1, 2))-1`
-/

namespace A396409.P9084681117393821384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - 1

end

end A396409.P9084681117393821384

namespace A396409

/-- `A326730((n+1)/2^val(n+1, 2))-1` -/
def P9084681117393821384.Spec : Prop :=
  ∀ n, P9084681117393821384.a n = A396409 n

end A396409

/-! ## A396409.P16372428509261204668

`A326730(A025480(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A396409

/-- `A326730(A025480(n))` -/
def P16372428509261204668.Spec : Prop :=
  ∀ n, P16372428509261204668.a n = A396409 n

theorem P16372428509261204668.correct : P16372428509261204668.Spec := by
  intro n
  simp only [A396409]

end A396409

/-! ## A396409.P7869203277249282943

`A007814(n+1)-A397100(n)`
-/

namespace A396409.P7869203277249282943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A397100 n

end

end A396409.P7869203277249282943

namespace A396409

/-- `A007814(n+1)-A397100(n)` -/
def P7869203277249282943.Spec : Prop :=
  ∀ n, P7869203277249282943.a n = A396409 n

end A396409

/-! ## A396409.P13812136852778523688

`A055941(A025480(n))+A055941(n)`
-/

namespace A396409.P13812136852778523688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A025480 n).toNat + A055941 n

end

end A396409.P13812136852778523688

namespace A396409

/-- `A055941(A025480(n))+A055941(n)` -/
def P13812136852778523688.Spec : Prop :=
  ∀ n, P13812136852778523688.a n = A396409 n

end A396409

/-! ## A396409.P12074019731654172746

`A055941(A000265(n+1))+A055941(n)`
-/

namespace A396409.P12074019731654172746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A000265 (n + 1)).toNat + A055941 n

end

end A396409.P12074019731654172746

namespace A396409

/-- `A055941(A000265(n+1))+A055941(n)` -/
def P12074019731654172746.Spec : Prop :=
  ∀ n, P12074019731654172746.a n = A396409 n

end A396409

/-!
# A396412: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G3(x) with G3(x) = 1 + x*G3(x)^3.

The programs for A396412, there is no canonical definition to state claims against.
-/

/-! ## A396412.P622724353294225916

`A007966(A362588(n))`
-/

namespace A396412.P622724353294225916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A362588 n).toNat

end

end A396412.P622724353294225916

/-! ## A396412.P17952982718614499284

`A102705(A362079(n))`
-/

namespace A396412.P17952982718614499284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A362079 n).toNat

end

end A396412.P17952982718614499284

/-! ## A396412.P8511793370672119931

`A102705(A378289(n))`
-/

namespace A396412.P8511793370672119931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A378289 n).toNat

end

end A396412.P8511793370672119931

/-! ## A396412.P8718350299543600923

`A382019(A396498(n))`
-/

namespace A396412.P8718350299543600923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A396498 n).toNat

end

end A396412.P8718350299543600923

/-! ## A396412.P7208856835029511065

`A373624(A349971(n+1))`
-/

namespace A396412.P7208856835029511065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A349971 (n + 1)).toNat

end

end A396412.P7208856835029511065

/-!
# A396413: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G4(x) with G4(x) = 1 + x*G4(x)^4.

The programs for A396413, there is no canonical definition to state claims against.
-/

/-! ## A396413.P4882504126446646039

`A372826(A378236(n))`
-/

namespace A396413.P4882504126446646039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372826 (A378236 n).toNat

end

end A396413.P4882504126446646039

/-! ## A396413.P7347424767967897805

`A007966(A362787(n))`
-/

namespace A396413.P7347424767967897805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A362787 n).toNat

end

end A396413.P7347424767967897805

/-! ## A396413.P4090323555084576157

`A122341(A384751(n))`
-/

namespace A396413.P4090323555084576157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122341 (A384751 n).toNat

end

end A396413.P4090323555084576157

/-! ## A396413.P3753336229163587719

`A174231(A378239(n))`
-/

namespace A396413.P3753336229163587719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A378239 n).toNat

end

end A396413.P3753336229163587719

/-! ## A396413.P10333962005574736800

`A249870(A381594(n))`
-/

namespace A396413.P10333962005574736800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (A381594 n).toNat

end

end A396413.P10333962005574736800

/-!
# A396414: Expansion of F_2(x)/x, where F_k(x) is the k-th iteration of x*G3(x) with G3(x) = 1 + x*G3(x)^3.

The programs for A396414, there is no canonical definition to state claims against.
-/

/-! ## A396414.P8557270856642279727

`A396412(∑[n+3])`
-/

namespace A396414.P8557270856642279727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396414.P8557270856642279727

/-! ## A396414.P1419255195466618359

`A101477(2*n²)+A001221(n+1)`
-/

namespace A396414.P1419255195466618359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101477 (2 * n ^ 2) + A001221 (n + 1)

end

end A396414.P1419255195466618359

/-!
# A396415: Expansion of F_3(x)/x, where F_k(x) is the k-th iteration of x*G3(x) with G3(x) = 1 + x*G3(x)^3.

The programs for A396415, there is no canonical definition to state claims against.
-/

/-! ## A396415.P1300081308817006236

`A124761(A019472(n))+A097188(n)`
-/

namespace A396415.P1300081308817006236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A019472 n).toNat + A097188 n

end

end A396415.P1300081308817006236

/-!
# A396416: Expansion of F_2(x)/x, where F_k(x) is the k-th iteration of x*G4(x) with G4(x) = 1 + x*G4(x)^4.

The programs for A396416, there is no canonical definition to state claims against.
-/

/-! ## A396416.P2563182728944769903

`A396413(∑[n+3])`
-/

namespace A396416.P2563182728944769903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396413 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396416.P2563182728944769903

/-!
# A396423: a(n) = r(n,n), where r(1,k)=f(k)=floor(k*c), r(n,k)=f(r(n-1,k)), c=5/3.

The programs for A396423, there is no canonical definition to state claims against.
-/

/-! ## A396423.P12355517875369822655

`A193259(A134270(n+1))`
-/

namespace A396423.P12355517875369822655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193259 (A134270 (n + 1)).toNat

end

end A396423.P12355517875369822655

/-! ## A396423.P3811551109252018560

`A325388(A349111(n+1))-A342128(2*n)`
-/

namespace A396423.P3811551109252018560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325388 (A349111 (n + 1)).toNat - A342128 (2 * n)

end

end A396423.P3811551109252018560

/-!
# A396427: Total number of edge-collision walks on the complete directed graph with self-loops on n labeled vertices.

The programs for A396427, there is no canonical definition to state claims against.
-/

/-! ## A396427.P18101933693640768100

`n*A246536(n+1)+1`
-/

namespace A396427.P18101933693640768100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A246536 (n + 1) + 1

end

end A396427.P18101933693640768100

/-!
# A396431: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396431, there is no canonical definition to state claims against.
-/

/-! ## A396431.P4353790433907375015

`A381573(A049872(n))`
-/

namespace A396431.P4353790433907375015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A049872 n).toNat

end

end A396431.P4353790433907375015

/-! ## A396431.P6164122062364083622

`A381573(A062279(n))`
-/

namespace A396431.P6164122062364083622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A062279 n).toNat

end

end A396431.P6164122062364083622

/-! ## A396431.P7698472584620373034

`A381573(A004862(n+1))`
-/

namespace A396431.P7698472584620373034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A004862 (n + 1)).toNat

end

end A396431.P7698472584620373034

/-! ## A396431.P894354970119630090

`A381573(A004873(n+1))`
-/

namespace A396431.P894354970119630090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A004873 (n + 1)).toNat

end

end A396431.P894354970119630090

/-! ## A396431.P1282253364376109795

`A003313(2^A381573(n))`
-/

namespace A396431.P1282253364376109795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381573 n : ℤ))).toNat

end

end A396431.P1282253364376109795

/-!
# A396432: Expansion of (F_2(x)/x)^(1/2), where F_k(x) is the k-th iteration of x*G3(x)^2 with G3(x) = 1 + x*G3(x)^3.

The programs for A396432, there is no canonical definition to state claims against.
-/

/-! ## A396432.P15547012607201922036

`A396446(∑[n+3])`
-/

namespace A396432.P15547012607201922036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396446 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396432.P15547012607201922036

/-! ## A396432.P10920919508682137993

`A378465(n)+A131929(A260949(n))`
-/

namespace A396432.P10920919508682137993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378465 n + A131929 (A260949 n).toNat

end

end A396432.P10920919508682137993

/-!
# A396433: Expansion of (F_2(x)/x)^(1/2), where F_k(x) is the k-th iteration of x*G4(x)^2 with G4(x) = 1 + x*G4(x)^4.

The programs for A396433, there is no canonical definition to state claims against.
-/

/-! ## A396433.P1713318907506069392

`A396447(∑[n+3])`
-/

namespace A396433.P1713318907506069392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396433.P1713318907506069392

/-!
# A396434: Expansion of (F_2(x)/x)^(1/3), where F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396434, there is no canonical definition to state claims against.
-/

/-! ## A396434.P3708630585124198684

`A396448(∑[n+3])`
-/

namespace A396434.P3708630585124198684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396434.P3708630585124198684

/-!
# A396446: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] (F_k(x)/x)^(1/2) and F_k(x) is the k-th iteration of x*G3(x)^2 with G3(x) = 1 + x*G3(x)^3.

The programs for A396446, there is no canonical definition to state claims against.
-/

/-! ## A396446.P5687890579284577183

`or(A101264(A008965(n+4)), A396412(n))`
-/

namespace A396446.P5687890579284577183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101264 (A008965 (n + 4)).toNat) (A396412 n)

end

end A396446.P5687890579284577183

/-!
# A396448: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] (F_k(x)/x)^(1/3) and F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396448, there is no canonical definition to state claims against.
-/

/-! ## A396448.P11421659180326470400

`A089867(A351761(n))`
-/

namespace A396448.P11421659180326470400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A351761 n).toNat

end

end A396448.P11421659180326470400

/-!
# A396453: Primes p such that p^2 - 2 is a prime and p^2 + 2 is a semiprime.

The programs for A396453, there is no canonical definition to state claims against.
-/

/-! ## A396453.P10576719998116963221

`∩[A062326(n+1), A240878(n+1)]`
-/

namespace A396453.P10576719998116963221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P10576719998116963221

/-! ## A396453.P15903169217768305990

`∩[A062326(n+1), A109953(n+1)]`
-/

namespace A396453.P15903169217768305990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P15903169217768305990

/-! ## A396453.P14660892313592385067

`∩[A062326(n+1), A242330(n+1)]`
-/

namespace A396453.P14660892313592385067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P14660892313592385067

/-! ## A396453.P7238180503184582735

`∩[A028870(n+1), A109953(n+1)]`
-/

namespace A396453.P7238180503184582735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396453.P7238180503184582735

/-!
# A396455: Primes p such that p^2 = A075254(k) for some k.

The programs for A396455, there is no canonical definition to state claims against.
-/

/-! ## A396455.P12887827403995469333

`p?[A390150(n+1)]`
-/

namespace A396455.P12887827403995469333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396455.P12887827403995469333

/-! ## A396455.P7203702805792587022

`filter[A390150(n+1), A010051(#)]`
-/

namespace A396455.P7203702805792587022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396455.P7203702805792587022

/-! ## A396455.P8402007716494385872

`filter[A390150(n+2), A080339(#)]`
-/

namespace A396455.P8402007716494385872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A396455.P8402007716494385872

/-! ## A396455.P16929857751974578610

`∩[A000040(n+1), A390150(n+1)]`
-/

namespace A396455.P16929857751974578610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P16929857751974578610

/-! ## A396455.P2427210923085754101

`∩[A045319(n+1), A390150(n+1)]`
-/

namespace A396455.P2427210923085754101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P2427210923085754101

/-! ## A396455.P15383253283812475904

`∩[A045344(n+1), A390150(n+1)]`
-/

namespace A396455.P15383253283812475904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P15383253283812475904

/-! ## A396455.P2783910660061083718

`∩[A175787(n+1), A390150(n+1)]`
-/

namespace A396455.P2783910660061083718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P2783910660061083718

/-! ## A396455.P13257153795766279537

`∩[A182986(n+1), A390150(n+1)]`
-/

namespace A396455.P13257153795766279537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P13257153795766279537

/-! ## A396455.P2802707107681241746

`∩[A348283(n+1), A390150(n+1)]`
-/

namespace A396455.P2802707107681241746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P2802707107681241746

/-! ## A396455.P15477843976090260428

`∩[A240960(n+1), A390150(n+1)]`
-/

namespace A396455.P15477843976090260428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396455.P15477843976090260428

/-!
# A396456: Smallest prime greater than the n-th prime-complete number.

The programs for A396456, there is no canonical definition to state claims against.
-/

/-! ## A396456.P2682933192663827248

`A151800(A055932(n+2))`
-/

namespace A396456.P2682933192663827248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A055932 (n + 2)).toNat

end

end A396456.P2682933192663827248

/-!
# A396463: Consider the square spiral in a single quadrant with its cells numbered starting at 0. Three players take turns and place black knights(K), cyan antelopes(A), and red ferzes(F), respectively, at the smallest unoccupied cell not attacked by an existing pieces of a different color. Sequence lists squares occupied by a red ferz.

The programs for A396463, there is no canonical definition to state claims against.
-/

/-! ## A396463.P3337477238374902762

`A266619(A000296(n))+A059456(n+1)`
-/

namespace A396463.P3337477238374902762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266619 (A000296 n).toNat + A059456 (n + 1)

end

end A396463.P3337477238374902762

/-!
# A396466: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = [x^n] (F_k(x)/x)^(2/3) and F_k(x) is the k-th iteration of x*G4(x)^3 with G4(x) = 1 + x*G4(x)^4.

The programs for A396466, there is no canonical definition to state claims against.
-/

/-! ## A396466.P8623689427781504741

`A055572(A396430(n))`
-/

namespace A396466.P8623689427781504741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A396430 n).toNat

end

end A396466.P8623689427781504741

/-!
# A396470: Sum of the distinct prime divisors of C(prime(n), n).

The programs for A396470, there is no canonical definition to state claims against.
-/

/-! ## A396470.P780988594408897600

`∑{p}[A060604(n+1), #]`
-/

namespace A396470.P780988594408897600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A396470.P780988594408897600

/-!
# A396473: Expansion of g.f. (1 - 4*x^2)/(1 - 2*x - 4*x^2 + 2*x^3).

The programs for A396473, the canonical program `A396473.P4433085411227752813` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396473 has offset 0).

The definition of A396473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396473.P4433085411227752813

`2*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A396473

/-- `2*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P4433085411227752813.Spec : Prop :=
  ∀ n, P4433085411227752813.a n = A396473 n

theorem P4433085411227752813.correct : P4433085411227752813.Spec := by
  intro n
  simp only [A396473]

end A396473

/-! ## A396473.P1300252999270100738

`A384677(n+1)+A384677(n)-A384678(n)`
-/

namespace A396473.P1300252999270100738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384677 (n + 1) + (A384677 n - A384678 n)

end

end A396473.P1300252999270100738

namespace A396473

/-- `A384677(n+1)+A384677(n)-A384678(n)` -/
def P1300252999270100738.Spec : Prop :=
  ∀ n, P1300252999270100738.a n = A396473 n

end A396473

/-!
# A396474: Expansion of g.f. (1 - 7*x^2 - 2*x^4)/(1 - 2*x - 7*x^2 - 2*x^4 + 2*x^5).

The programs for A396474, the canonical program `A396474.P15223094748339416202` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396474 has offset 0).

The definition of A396474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396474.P15223094748339416202

`2*a(n-1)+7*a(n-2)+2*a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=22, a(4)=72`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A396474

/-- `2*a(n-1)+7*a(n-2)+2*a(n-4)-2*a(n-5)` -/
def P15223094748339416202.Spec : Prop :=
  ∀ n, P15223094748339416202.a n = A396474 n

theorem P15223094748339416202.correct : P15223094748339416202.Spec := by
  intro n
  simp only [A396474]

end A396474

/-! ## A396474.P16567519141403438731

`A130504(A202919(n+1))`
-/

namespace A396474.P16567519141403438731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130504 (A202919 (n + 1)).toNat

end

end A396474.P16567519141403438731

namespace A396474

/-- `A130504(A202919(n+1))` -/
def P16567519141403438731.Spec : Prop :=
  ∀ n, P16567519141403438731.a n = A396474 n

end A396474

/-!
# A396475: Expansion of g.f. (1 - 11*x^2 - 20*x^4)/(1 - 2*x - 11*x^2 - 8*x^3 - 20*x^4 + 10*x^5).

The programs for A396475, there is no canonical definition to state claims against.
-/

/-! ## A396475.P16352052739530923725

`A196156(a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A396475.P16352052739530923725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A196156 (a (n - 1)).toNat - 2

end

end A396475.P16352052739530923725

/-!
# A396476: Numbers k such that Q(zeta_{psi(k)}) has class number 1, where psi = A002322 is the reduced totient function.

The programs for A396476, there is no canonical definition to state claims against.
-/

/-! ## A396476.P4933374203139075275

`comp[A004919(n)-A018236(2*(n+1))]`
-/

namespace A396476.P4933374203139075275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 n - A018236 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396476.P4933374203139075275

/-! ## A396476.P1824805682478159819

`comp[A326534(n+1)-A309906(2*(n+2))]`
-/

namespace A396476.P1824805682478159819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1) - A309906 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396476.P1824805682478159819

/-! ## A396476.P3359017599596787761

`comp[A349753(A118413(2*n+1))-A037703(n+1)]`
-/

namespace A396476.P3359017599596787761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349753 (A118413 (2 * n + 1)).toNat - A037703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396476.P3359017599596787761

/-! ## A396476.P16584199810342217496

`comp[53-A234570(n)]+1`
-/

namespace A396476.P16584199810342217496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  53 - A234570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P16584199810342217496

/-! ## A396476.P10020753563594753282

`comp[A005385(2*n+5)-A155521(3*n+1)]+1`
-/

namespace A396476.P10020753563594753282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (2 * n + 5) - A155521 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396476.P10020753563594753282

/-! ## A396476.P1634927883911684398

`∑[A104368(A104368(3*n+1))]`
-/

namespace A396476.P1634927883911684398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104368 (A104368 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396476.P1634927883911684398

/-! ## A396476.P1282206435618646093

`∑[A353786(A235117(n))]`
-/

namespace A396476.P1282206435618646093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353786 (A235117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396476.P1282206435618646093

/-!
# A396480: Primes p such that p-1 has primitive roots (i.e., is in A033948).

The programs for A396480, there is no canonical definition to state claims against.
-/

/-! ## A396480.P16270382996554939411

`∩[A077500(n+1), A179401(n+1)]`
-/

namespace A396480.P16270382996554939411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P16270382996554939411

/-! ## A396480.P2676718268252153263

`p?[A179401(n+1)]`
-/

namespace A396480.P2676718268252153263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396480.P2676718268252153263

/-! ## A396480.P5359163589443270511

`p?[A396478(n+1)]`
-/

namespace A396480.P5359163589443270511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396480.P5359163589443270511

/-! ## A396480.P3538046537670413259

`∩[A077500(n+1), A396478(n+1)]`
-/

namespace A396480.P3538046537670413259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3538046537670413259

/-! ## A396480.P15551282149515731447

`p?[A123101(n+1)]`
-/

namespace A396480.P15551282149515731447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396480.P15551282149515731447

/-! ## A396480.P6826014706469654970

`∩[A077500(n+1), A123101(n+1)]`
-/

namespace A396480.P6826014706469654970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P6826014706469654970

/-! ## A396480.P15571300744562003623

`∩[A179401(n+1), A301590(n+1)]`
-/

namespace A396480.P15571300744562003623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P15571300744562003623

/-! ## A396480.P3837146588107263784

`∩[A301590(n+1), A396478(n+1)]`
-/

namespace A396480.P3837146588107263784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3837146588107263784

/-! ## A396480.P1823346809527538614

`∩[A042987(n+1), A123101(n+1)]`
-/

namespace A396480.P1823346809527538614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P1823346809527538614

/-! ## A396480.P8101378639269781107

`∩[A042987(n+1), A179401(n+1)]`
-/

namespace A396480.P8101378639269781107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P8101378639269781107

/-! ## A396480.P18059397378809377504

`∩[A123101(n+1), A167135(n+1)]`
-/

namespace A396480.P18059397378809377504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P18059397378809377504

/-! ## A396480.P17971252398061253794

`∩[A123101(n+1), A216286(n+1)]`
-/

namespace A396480.P17971252398061253794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P17971252398061253794

/-! ## A396480.P2578063826619609108

`∩[A167135(n+1), A179401(n+1)]`
-/

namespace A396480.P2578063826619609108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P2578063826619609108

/-! ## A396480.P3957432579144036423

`∩[A179401(n+1), A216286(n+1)]`
-/

namespace A396480.P3957432579144036423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3957432579144036423

/-! ## A396480.P14904340584368522625

`∩[A042987(n+1), A396478(n+1)]`
-/

namespace A396480.P14904340584368522625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P14904340584368522625

/-! ## A396480.P3907512291651626016

`∩[A167135(n+1), A396478(n+1)]`
-/

namespace A396480.P3907512291651626016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3907512291651626016

/-! ## A396480.P10463296782261831243

`∩[A216286(n+1), A396478(n+1)]`
-/

namespace A396480.P10463296782261831243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P10463296782261831243

/-! ## A396480.P3698208287751958409

`∩[A040177(n+1), A123101(n+1)]`
-/

namespace A396480.P3698208287751958409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P3698208287751958409

/-! ## A396480.P5596466494305866058

`∩[A040177(n+1), A179401(n+1)]`
-/

namespace A396480.P5596466494305866058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P5596466494305866058

/-! ## A396480.P4968955644993805798

`∩[A040177(n+1), A396478(n+1)]`
-/

namespace A396480.P4968955644993805798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396480.P4968955644993805798

/-!
# A396481: Primes p such that p-1 does not have primitive roots (i.e., is in A033949).

The programs for A396481, there is no canonical definition to state claims against.
-/

/-! ## A396481.P2226222884117461974

`∩[A000040(n+1), A033949(n+1)+1]`
-/

namespace A396481.P2226222884117461974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P2226222884117461974

/-! ## A396481.P5191069458793889426

`∩[A033949(n+1)+1, A215848(n+1)]`
-/

namespace A396481.P5191069458793889426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396481.P5191069458793889426

/-! ## A396481.P10871366223342594975

`p?[A396479(n+1)]`
-/

namespace A396481.P10871366223342594975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396481.P10871366223342594975

/-! ## A396481.P16510571393783784071

`filter[A396479(n+1), A010051(#)]`
-/

namespace A396481.P16510571393783784071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396481.P16510571393783784071

/-! ## A396481.P3609480846559398059

`filter[A396479(n+1), A080339(#)]`
-/

namespace A396481.P3609480846559398059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A396481.P3609480846559398059

/-!
# A396483: Number of undirected Hamiltonian cycles in the n X n torus grid graph, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A396483, there is no canonical definition to state claims against.
-/

/-! ## A396483.P9090748366006490624

`A212000(A027072(n))`
-/

namespace A396483.P9090748366006490624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212000 (A027072 n).toNat

end

end A396483.P9090748366006490624

/-!
# A396487: Numbers with exactly one representation as the sum of two distinct upper twin primes.

The programs for A396487, there is no canonical definition to state claims against.
-/

/-! ## A396487.P2405482430049851195

`∩[A167662(n+1), A334160(n+1)]`
-/

namespace A396487.P2405482430049851195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396487.P2405482430049851195

/-! ## A396487.P10083081078448263376

`∩[A323733(n+1), A334160(n+1)]`
-/

namespace A396487.P10083081078448263376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396487.P10083081078448263376

/-! ## A396487.P588248010733637144

`∩[A334160(n+1), A346124(n+1)]`
-/

namespace A396487.P588248010733637144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396487.P588248010733637144

/-!
# A396488: Number of labeled histories for rooted at-most-4-furcating trees with n leaves, if simultaneous branching events are allowed.

The programs for A396488, there is no canonical definition to state claims against.
-/

/-! ## A396488.P10169971539614056747

`A292728(A084631(n))`
-/

namespace A396488.P10169971539614056747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292728 (A084631 n).toNat

end

end A396488.P10169971539614056747

/-!
# A396491: Number of unsatisfiable 3-SAT formulas with n variables and 5 clauses in the multiset clause model.

The programs for A396491, there is no canonical definition to state claims against.
-/

/-! ## A396491.P4962212298385311747

`A396351(A000217(n+4)+n+1)`
-/

namespace A396491.P4962212298385311747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A396491.P4962212298385311747

/-!
# A396492: Number of satisfiable 3-SAT formulas with n variables and 3 clauses in the multiset clause model.

The programs for A396492, there is no canonical definition to state claims against.
-/

/-! ## A396492.P2214961101561904451

`A397492(A034856(n+2))`
-/

namespace A396492.P2214961101561904451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (A034856 (n + 2)).toNat

end

end A396492.P2214961101561904451

/-!
# A396493: Number of satisfiable 3-SAT formulas with n variables and 4 clauses in the multiset clause model.

The programs for A396493, there is no canonical definition to state claims against.
-/

/-! ## A396493.P11503529961906953845

`A397492(A141214(n+1))`
-/

namespace A396493.P11503529961906953845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (A141214 (n + 1)).toNat

end

end A396493.P11503529961906953845

/-!
# A396494: Number of sets S of nonempty strict integer partitions with total sum n such that all elements in S have pairwise disjoint sets of adjacent differences.

The programs for A396494, there is no canonical definition to state claims against.
-/

/-! ## A396494.P4259295916689688049

`A122409(A293547(n+1))`
-/

namespace A396494.P4259295916689688049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122409 (A293547 (n + 1)).toNat

end

end A396494.P4259295916689688049

/-! ## A396494.P14299321382638474254

`A162344(A025047(n))`
-/

namespace A396494.P14299321382638474254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (A025047 n).toNat

end

end A396494.P14299321382638474254

/-! ## A396494.P16536325914394930623

`A025047(n)-A107078(A057960(n))`
-/

namespace A396494.P16536325914394930623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n - A107078 (A057960 n).toNat

end

end A396494.P16536325914394930623

/-! ## A396494.P2610143997243118135

`A025047(n)-A206499(A002513(n))`
-/

namespace A396494.P2610143997243118135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n - A206499 (A002513 n).toNat

end

end A396494.P2610143997243118135

/-! ## A396494.P5466927417602103071

`A025047(n)-A137748(A137748(n))`
-/

namespace A396494.P5466927417602103071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n - A137748 (A137748 n).toNat

end

end A396494.P5466927417602103071

/-!
# A396496: Number of ways to write n as a sum n = 0 + 1 + 2 +- 3 +- 4 ... +- m with nonnegative partial sums and minimal m >= 0 allowing at least one way.

The programs for A396496, there is no canonical definition to state claims against.
-/

/-! ## A396496.P1515513364962573400

`gcd(A058398(n+1), A103032(n+1))`
-/

namespace A396496.P1515513364962573400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058398 (n + 1)) (A103032 (n + 1))

end

end A396496.P1515513364962573400

/-! ## A396496.P5851893305954099678

`gcd(A240595(n+1), A291830(n+1))`
-/

namespace A396496.P5851893305954099678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240595 (n + 1)) (A291830 (n + 1))

end

end A396496.P5851893305954099678

/-! ## A396496.P9362078362737263743

`A335889(A287641(n))`
-/

namespace A396496.P9362078362737263743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335889 (A287641 n).toNat

end

end A396496.P9362078362737263743

/-! ## A396496.P1669680871116471650

`A116479(A080521(n+2))`
-/

namespace A396496.P1669680871116471650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116479 (A080521 (n + 2)).toNat

end

end A396496.P1669680871116471650

/-! ## A396496.P4775537350183468974

`A256911(A129116(n+2))`
-/

namespace A396496.P4775537350183468974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (A129116 (n + 2)).toNat

end

end A396496.P4775537350183468974

/-!
# A396498: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)).

The programs for A396498, there is no canonical definition to state claims against.
-/

/-! ## A396498.P14019159397553984864

`A274390(n)/A128227(n)`
-/

namespace A396498.P14019159397553984864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A128227 n : ℚ)

end

end A396498.P14019159397553984864

/-! ## A396498.P13514251885294535510

`A274390(n)/A193738(n)`
-/

namespace A396498.P13514251885294535510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A193738 n : ℚ)

end

end A396498.P13514251885294535510

/-! ## A396498.P5704844656669804559

`A274390(n)/A002260(n+1)`
-/

namespace A396498.P5704844656669804559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A396498.P5704844656669804559

/-! ## A396498.P8452219643129406603

`A274390(n)/A080508(n+1)`
-/

namespace A396498.P8452219643129406603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A080508 (n + 1) : ℚ)

end

end A396498.P8452219643129406603

/-! ## A396498.P4033645841372255366

`A274390(n)/A080511(n+1)`
-/

namespace A396498.P4033645841372255366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A080511 (n + 1) : ℚ)

end

end A396498.P4033645841372255366

/-! ## A396498.P8892384826512937501

`A274390(n)/A080818(n+1)`
-/

namespace A396498.P8892384826512937501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A080818 (n + 1) : ℚ)

end

end A396498.P8892384826512937501

/-! ## A396498.P7938839936899006145

`A274390(n)/A081517(n+1)`
-/

namespace A396498.P7938839936899006145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A081517 (n + 1) : ℚ)

end

end A396498.P7938839936899006145

/-! ## A396498.P13231963859858518058

`A274390(n)/A128077(n+1)`
-/

namespace A396498.P13231963859858518058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 n : ℚ) / (A128077 (n + 1) : ℚ)

end

end A396498.P13231963859858518058

/-!
# A396499: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)^2).

The programs for A396499, there is no canonical definition to state claims against.
-/

/-! ## A396499.P15715417952340068720

`A396504(n)/A059268(n)`
-/

namespace A396499.P15715417952340068720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396504 n : ℚ) / (A059268 n : ℚ)

end

end A396499.P15715417952340068720

/-! ## A396499.P16472036768053933816

`A106452(A341268(n))`
-/

namespace A396499.P16472036768053933816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106452 (A341268 n).toNat

end

end A396499.P16472036768053933816

/-! ## A396499.P9739273797678233101

`A118766(A384751(n))`
-/

namespace A396499.P9739273797678233101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A384751 n).toNat

end

end A396499.P9739273797678233101

/-! ## A396499.P1288361449407420248

`A130514(A384721(n))`
-/

namespace A396499.P1288361449407420248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130514 (A384721 n).toNat

end

end A396499.P1288361449407420248

/-! ## A396499.P7915433701267197316

`A307405(A396588(n))`
-/

namespace A396499.P7915433701267197316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307405 (A396588 n).toNat

end

end A396499.P7915433701267197316

