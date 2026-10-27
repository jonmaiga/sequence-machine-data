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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154905: Decimal expansion of log_2 (18).

The programs for A154905, there is no canonical definition to state claims against.
-/

/-! ## A154905.P2845906707526050615

`A020859(n)+A020861(n)-A020857(n)`
-/

namespace A154905.P2845906707526050615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A020861 (n + 1) - A020857 (n + 1))

end

end A154905.P2845906707526050615

/-! ## A154905.P6028305411189774052

`A020861(n)+A020862(n)-A020858(n)`
-/

namespace A154905.P6028305411189774052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020861 (n + 1) + (A020862 (n + 1) - A020858 (n + 1))

end

end A154905.P6028305411189774052

/-! ## A154905.P8236013565693439033

`A020861(n)+A020864(n)-A020859(n)`
-/

namespace A154905.P8236013565693439033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020861 (n + 1) + (A020864 (n + 1) - A020859 (n + 1))

end

end A154905.P8236013565693439033

/-! ## A154905.P11087137531245271766

`A020861(n)+A155172(n)-A020862(n)`
-/

namespace A154905.P11087137531245271766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020861 (n + 1) + (A155172 (n + 1) - A020862 (n + 1))

end

end A154905.P11087137531245271766

/-!
# A154906: Records in (A063375: Number of divisors of Fibonacci(n)).

The programs for A154906, there is no canonical definition to state claims against.
-/

/-! ## A154906.P10856227691648509327

`record[A063375(n+1)]`
-/

namespace A154906.P10856227691648509327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154906.P10856227691648509327

/-! ## A154906.P5192874547568644894

`record[A152774(n+1)+1]`
-/

namespace A154906.P5192874547568644894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154906.P5192874547568644894

/-! ## A154906.P10737042685905084407

`A063375(A154907(n+1))`
-/

namespace A154906.P10737042685905084407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (A154907 (n + 1)).toNat

end

end A154906.P10737042685905084407

/-! ## A154906.P5787089900209154473

`record[A063375(A004277(n))-A159075(n)]`
-/

namespace A154906.P5787089900209154473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (A004277 n).toNat - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154906.P5787089900209154473

/-! ## A154906.P13459858507709907538

`record[A063375(A028310(n))-A159075(n)]`
-/

namespace A154906.P13459858507709907538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (A028310 n).toNat - A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154906.P13459858507709907538

/-!
# A154907: Where records occur in (A063375: Number of divisors of Fibonacci(n)).

The programs for A154907, there is no canonical definition to state claims against.
-/

/-! ## A154907.P3624110864083721225

`record[A329004(A032766(A152248(n+1)))]`
-/

namespace A154907.P3624110864083721225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A032766 (A152248 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154907.P3624110864083721225

/-! ## A154907.P3160630489586584533

`A070172(A240073(3*n+1))%A002229(3*n+5)`
-/

namespace A154907.P3160630489586584533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070172 (A240073 (3 * n + 1)).toNat) (A002229 (3 * n + 5))

end

end A154907.P3160630489586584533

/-! ## A154907.P9912075835573091400

`A008486(lt[lcm(4, n)/gcd(4, n), 8])`
-/

namespace A154907.P9912075835573091400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 n : ℚ) / (Nat.gcd 4 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A154907.P9912075835573091400

/-! ## A154907.P11301451585178419134

`A008486(lt[A188134(n), 8])`
-/

namespace A154907.P11301451585178419134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A154907.P11301451585178419134

/-!
# A154908: Highly composite Fibonacci numbers.

The programs for A154908, there is no canonical definition to state claims against.
-/

/-! ## A154908.P10522314555237882941

`A000045(A154907(n+1))`
-/

namespace A154908.P10522314555237882941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A154907 (n + 1)).toNat

end

end A154908.P10522314555237882941

/-! ## A154908.P18238391159524517914

`A212804(A154907(n+1)+1)`
-/

namespace A154908.P18238391159524517914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A154907 (n + 1) + 1).toNat

end

end A154908.P18238391159524517914

/-! ## A154908.P17530689040676664253

`A103609(2*A154907(n+1))`
-/

namespace A154908.P17530689040676664253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A154907 (n + 1)).toNat

end

end A154908.P17530689040676664253

/-! ## A154908.P13340465804017135021

`A103609(A154907(n+1)+A154907(n+1)+1)`
-/

namespace A154908.P13340465804017135021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A154907 (n + 1) + (A154907 (n + 1) + 1)).toNat

end

end A154908.P13340465804017135021

/-! ## A154908.P12323198530708561596

`A053602(2*A154907(n+1))`
-/

namespace A154908.P12323198530708561596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A154907 (n + 1)).toNat

end

end A154908.P12323198530708561596

/-!
# A154909: Decimal expansion of log_4 (18).

The programs for A154909, there is no canonical definition to state claims against.
-/

/-! ## A154909.P4557140176734437672

`A020859(n)*A057427(A008624(n))`
-/

namespace A154909.P4557140176734437672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) * A057427 (A008624 n).toNat

end

end A154909.P4557140176734437672

/-! ## A154909.P9990735156376173489

`A020859(n)*A057427(A057979(n))`
-/

namespace A154909.P9990735156376173489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) * A057427 (A057979 n).toNat

end

end A154909.P9990735156376173489

/-! ## A154909.P13373786464292310079

`A020859(n)*A057427(A123108(n))`
-/

namespace A154909.P13373786464292310079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) * A057427 (A123108 n).toNat

end

end A154909.P13373786464292310079

/-! ## A154909.P11137128263251580707

`A020859(n)*A187967(A161377(n))`
-/

namespace A154909.P11137128263251580707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) * A187967 (A161377 n).toNat

end

end A154909.P11137128263251580707

/-! ## A154909.P14734429704639605899

`A020859(n)%A040020(A004526(n))`
-/

namespace A154909.P14734429704639605899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020859 (n + 1)) (A040020 (A004526 n).toNat)

end

end A154909.P14734429704639605899

/-! ## A154909.P642358299787020212

`and(A020859(n), A057428(A008611(n)))`
-/

namespace A154909.P642358299787020212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020859 (n + 1)) (A057428 (A008611 n).toNat)

end

end A154909.P642358299787020212

/-! ## A154909.P15714283985460064960

`and(A020859(n), A057428(A028242(n)))`
-/

namespace A154909.P15714283985460064960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020859 (n + 1)) (A057428 (A028242 n).toNat)

end

end A154909.P15714283985460064960

/-! ## A154909.P5242161563433722558

`and(A020859(n), A057428(A103221(n)))`
-/

namespace A154909.P5242161563433722558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020859 (n + 1)) (A057428 (A103221 n).toNat)

end

end A154909.P5242161563433722558

/-! ## A154909.P16977366859484323982

`dr(A020859(n))%A040020(A039653(n))`
-/

namespace A154909.P16977366859484323982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.digitalRoot (A020859 (n + 1)) : ℤ) (A040020 (A039653 n).toNat)

end

end A154909.P16977366859484323982

/-! ## A154909.P9727176522606625429

`A000035(A008578(n+1))*A020859(n)`
-/

namespace A154909.P9727176522606625429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008578 (n + 1)).toNat * A020859 (n + 1)

end

end A154909.P9727176522606625429

/-!
# A154911: Decimal expansion of log_6 (18).

The programs for A154911, there is no canonical definition to state claims against.
-/

/-! ## A154911.P2256764914877258438

`A152935(abs(1-n))`
-/

namespace A154911.P2256764914877258438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152935 |1 - (n : ℤ)|.toNat

end

end A154911.P2256764914877258438

/-!
# A154913: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS1(n, k) + StirlingS1(n, n-k)) with p=2 and q=1, read by rows.

The programs for A154913, the canonical program `A154913.P13899564087834538575` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154913 has offset 0).

The definition of A154913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154913.P13899564087834538575

`A154843(n)*A271709(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154913

/-- `A154843(n)*A271709(n)` -/
def P13899564087834538575.Spec : Prop :=
  ∀ n, P13899564087834538575.a n = A154913 n

theorem P13899564087834538575.correct : P13899564087834538575.Spec := by
  intro n
  simp only [A154913]

end A154913

/-! ## A154913.P584956973609934681

`(A131816(n)+1)*A154843(n)`
-/

namespace A154913.P584956973609934681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131816 n + 1) * A154843 n

end

end A154913.P584956973609934681

namespace A154913

/-- `(A131816(n)+1)*A154843(n)` -/
def P584956973609934681.Spec : Prop :=
  ∀ n, P584956973609934681.a n = A154913 n

end A154913

/-! ## A154913.P17626293105524773663

`(A130321(n)+A059268(n))*A154843(n)`
-/

namespace A154913.P17626293105524773663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n + A059268 n) * A154843 n

end

end A154913.P17626293105524773663

namespace A154913

/-- `(A130321(n)+A059268(n))*A154843(n)` -/
def P17626293105524773663.Spec : Prop :=
  ∀ n, P17626293105524773663.a n = A154913 n

end A154913

/-! ## A154913.P12369325095776989639

`(A156862(n)+A051601(n))*A154843(n)`
-/

namespace A154913.P12369325095776989639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156862 n + A051601 n) * A154843 n

end

end A154913.P12369325095776989639

namespace A154913

/-- `(A156862(n)+A051601(n))*A154843(n)` -/
def P12369325095776989639.Spec : Prop :=
  ∀ n, P12369325095776989639.a n = A154913 n

end A154913

/-! ## A154913.P17383353160049291641

`(A054654(n)+A048994(n))*A271709(n)`
-/

namespace A154913.P17383353160049291641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054654 n + A048994 n) * A271709 n

end

end A154913.P17383353160049291641

namespace A154913

/-- `(A054654(n)+A048994(n))*A271709(n)` -/
def P17383353160049291641.Spec : Prop :=
  ∀ n, P17383353160049291641.a n = A154913 n

end A154913

/-! ## A154913.P10748034481255629136

`A154843(n)/A154844(n)*A154915(n)`
-/

namespace A154913.P10748034481255629136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154843 n : ℚ) / (A154844 n : ℚ) * (A154915 n : ℚ)

end

end A154913.P10748034481255629136

namespace A154913

/-- `A154843(n)/A154844(n)*A154915(n)` -/
def P10748034481255629136.Spec : Prop :=
  ∀ n, P10748034481255629136.a n = (A154913 n : ℚ)

end A154913

/-! ## A154913.P2070645247859170001

`A154914(n)/A154916(n)*A154915(n)`
-/

namespace A154913.P2070645247859170001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154914 n : ℚ) / (A154916 n : ℚ) * (A154915 n : ℚ)

end

end A154913.P2070645247859170001

namespace A154913

/-- `A154914(n)/A154916(n)*A154915(n)` -/
def P2070645247859170001.Spec : Prop :=
  ∀ n, P2070645247859170001.a n = (A154913 n : ℚ)

end A154913

/-!
# A154914: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS1(n, k) + StirlingS1(n, n-k)) with p=2 and q=3, read by rows.

The programs for A154914, the canonical program `A154914.P10683815225561825413` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154914 has offset 0).

The definition of A154914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154914.P8323004723736407113

`A154843(n)/A154844(n)*A154916(n)`
-/

namespace A154914.P8323004723736407113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154843 n : ℚ) / (A154844 n : ℚ) * (A154916 n : ℚ)

end

end A154914.P8323004723736407113

namespace A154914

/-- `A154843(n)/A154844(n)*A154916(n)` -/
def P8323004723736407113.Spec : Prop :=
  ∀ n, P8323004723736407113.a n = (A154914 n : ℚ)

end A154914

/-! ## A154914.P5002542883306039502

`A154913(n)/A154915(n)*A154916(n)`
-/

namespace A154914.P5002542883306039502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154913 n : ℚ) / (A154915 n : ℚ) * (A154916 n : ℚ)

end

end A154914.P5002542883306039502

namespace A154914

/-- `A154913(n)/A154915(n)*A154916(n)` -/
def P5002542883306039502.Spec : Prop :=
  ∀ n, P5002542883306039502.a n = (A154914 n : ℚ)

end A154914

/-! ## A154914.P10683815225561825413

`(A054654(n)+A048994(n))*(A175840(n)+A036561(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154914

/-- `(A054654(n)+A048994(n))*(A175840(n)+A036561(n))` -/
def P10683815225561825413.Spec : Prop :=
  ∀ n, P10683815225561825413.a n = A154914 n

theorem P10683815225561825413.correct : P10683815225561825413.Spec := by
  intro n
  simp only [A154914]

end A154914

/-! ## A154914.P10269976974464893590

`A154913(n)/(A154844(n)*A271709(n))*A154916(n)`
-/

namespace A154914.P10269976974464893590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154913 n : ℚ) / (A154844 n * A271709 n : ℚ) * (A154916 n : ℚ)

end

end A154914.P10269976974464893590

namespace A154914

/-- `A154913(n)/(A154844(n)*A271709(n))*A154916(n)` -/
def P10269976974464893590.Spec : Prop :=
  ∀ n, P10269976974464893590.a n = (A154914 n : ℚ)

end A154914

/-!
# A154915: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS2(n, k) + StirlingS2(n, n-k)) with p=2 and q=1, read by rows.

The programs for A154915, the canonical program `A154915.P4121523997023297092` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154915 has offset 0).

The definition of A154915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154915.P4121523997023297092

`A154844(n)*A271709(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A154915

/-- `A154844(n)*A271709(n)` -/
def P4121523997023297092.Spec : Prop :=
  ∀ n, P4121523997023297092.a n = A154915 n

theorem P4121523997023297092.correct : P4121523997023297092.Spec := by
  intro n
  simp only [A154915]

end A154915

/-! ## A154915.P14593717803076580942

`(A130321(n)+A059268(n))*A154844(n)`
-/

namespace A154915.P14593717803076580942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n + A059268 n) * A154844 n

end

end A154915.P14593717803076580942

namespace A154915

/-- `(A130321(n)+A059268(n))*A154844(n)` -/
def P14593717803076580942.Spec : Prop :=
  ∀ n, P14593717803076580942.a n = A154915 n

end A154915

/-! ## A154915.P17926041732130233630

`(A106800(n)+A048993(n))*A271709(n)`
-/

namespace A154915.P17926041732130233630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106800 n + A048993 n) * A271709 n

end

end A154915.P17926041732130233630

namespace A154915

/-- `(A106800(n)+A048993(n))*A271709(n)` -/
def P17926041732130233630.Spec : Prop :=
  ∀ n, P17926041732130233630.a n = A154915 n

end A154915

/-! ## A154915.P8980332127011503594

`A154844(n)/A154843(n)*A154913(n)`
-/

namespace A154915.P8980332127011503594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154844 n : ℚ) / (A154843 n : ℚ) * (A154913 n : ℚ)

end

end A154915.P8980332127011503594

namespace A154915

/-- `A154844(n)/A154843(n)*A154913(n)` -/
def P8980332127011503594.Spec : Prop :=
  ∀ n, P8980332127011503594.a n = (A154915 n : ℚ)

end A154915

/-! ## A154915.P10904141016570452308

`A154913(n)/A154914(n)*A154916(n)`
-/

namespace A154915.P10904141016570452308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154913 n : ℚ) / (A154914 n : ℚ) * (A154916 n : ℚ)

end

end A154915.P10904141016570452308

namespace A154915

/-- `A154913(n)/A154914(n)*A154916(n)` -/
def P10904141016570452308.Spec : Prop :=
  ∀ n, P10904141016570452308.a n = (A154915 n : ℚ)

end A154915

/-!
# A154916: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS2(n, k) + StirlingS2(n, n-k)) with p=2 and q=3, read by rows.

The programs for A154916, the canonical program `A154916.P7531583122668396810` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154916 has offset 0).

The definition of A154916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154916.P7531583122668396810

`A154844(n)/A154843(n)*A154914(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154916

/-- `A154844(n)/A154843(n)*A154914(n)` -/
def P7531583122668396810.Spec : Prop :=
  ∀ n, P7531583122668396810.a n = (A154916 n : ℚ)

end A154916

/-! ## A154916.P2641336272024571326

`A154914(n)/A154913(n)*A154915(n)`
-/

namespace A154916.P2641336272024571326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154914 n : ℚ) / (A154913 n : ℚ) * (A154915 n : ℚ)

end

end A154916.P2641336272024571326

namespace A154916

/-- `A154914(n)/A154913(n)*A154915(n)` -/
def P2641336272024571326.Spec : Prop :=
  ∀ n, P2641336272024571326.a n = (A154916 n : ℚ)

end A154916

/-! ## A154916.P15444779061169843949

`A154844(n)*A271709(n)/A154913(n)*A154914(n)`
-/

namespace A154916.P15444779061169843949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154844 n * A271709 n : ℚ) / (A154913 n : ℚ) * (A154914 n : ℚ)

end

end A154916.P15444779061169843949

namespace A154916

/-- `A154844(n)*A271709(n)/A154913(n)*A154914(n)` -/
def P15444779061169843949.Spec : Prop :=
  ∀ n, P15444779061169843949.a n = (A154916 n : ℚ)

end A154916

/-! ## A154916.P3337742794364699381

`lcm(A154907(A176152(n)), A154914(n))`
-/

namespace A154916.P3337742794364699381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154907 (A176152 n).toNat) (A154914 n)

end

end A154916.P3337742794364699381

namespace A154916

/-- `lcm(A154907(A176152(n)), A154914(n))` -/
def P3337742794364699381.Spec : Prop :=
  ∀ n, (P3337742794364699381.a n : ℤ) = A154916 n

end A154916

/-!
# A154918: Triangle, read by rows, T(n, k) = binomial(4*n, 3*k) + binomial(4*n, 3*(n-k)).

The programs for A154918, the canonical program `A154918.P5959760607162317890` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154918 has offset 0).

The definition of A154918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*row(n), 3*col(n))+C(4*row(n), 3*(row(n)-col(n)))` (program `A154918.P5959760607162317890`, by `A154918.P5959760607162317890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154918.P5959760607162317890

`C(4*row(n), 3*col(n))+C(4*row(n), 3*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154918

/-- `C(4*row(n), 3*col(n))+C(4*row(n), 3*(row(n)-col(n)))` -/
def P5959760607162317890.Spec : Prop :=
  ∀ n, (P5959760607162317890.a n : ℤ) = A154918 n

theorem P5959760607162317890.correct : P5959760607162317890.Spec := by
  intro n
  simp only [A154918]

end A154918

/-!
# A154919: Triangle, read by rows, T(n, k) = binomial(3*n, 2*k) + binomial(3*n, 2*(n-k)).

The programs for A154919, the canonical program `A154919.P16504972957684557734` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154919 has offset 0).

The definition of A154919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*row(n), 2*col(n))+C(3*row(n), 2*(row(n)-col(n)))` (program `A154919.P16504972957684557734`, by `A154919.P16504972957684557734.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154919.P16504972957684557734

`C(3*row(n), 2*col(n))+C(3*row(n), 2*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154919

/-- `C(3*row(n), 2*col(n))+C(3*row(n), 2*(row(n)-col(n)))` -/
def P16504972957684557734.Spec : Prop :=
  ∀ n, (P16504972957684557734.a n : ℤ) = A154919 n

theorem P16504972957684557734.correct : P16504972957684557734.Spec := by
  intro n
  simp only [A154919]

end A154919

/-!
# A154920: Denominators of a ternary BBP-type formula for log(3).

The programs for A154920, the canonical program `A154920.P6901085861380228627` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154920 has offset 0).

The definition of A154920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154920.P6901085861380228627

`(2-(-1)^n)*(n+1)*3^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154920

/-- `(2-(-1)^n)*(n+1)*3^n` -/
def P6901085861380228627.Spec : Prop :=
  ∀ n, P6901085861380228627.a n = A154920 n

theorem P6901085861380228627.correct : P6901085861380228627.Spec := by
  intro n
  simp only [A154920]

end A154920

/-! ## A154920.P13782586531825496988

`18*a(n-2)-81*a(n-4)` with `a(0)=1, a(1)=18, a(2)=27, a(3)=324`
-/

namespace A154920.P13782586531825496988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 27, 324] fun n a =>
  18 * a (n - 2) - 81 * a (n - 4)

end

end A154920.P13782586531825496988

namespace A154920

/-- `18*a(n-2)-81*a(n-4)` -/
def P13782586531825496988.Spec : Prop :=
  ∀ n, P13782586531825496988.a n = A154920 n

theorem P13782586531825496988.correct : P13782586531825496988.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A154920, Nat.add_sub_cancel, A154920.P13782586531825496988.a, A154920.P6901085861380228627.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A154920, Nat.add_sub_cancel, A154920.P13782586531825496988.a, A154920.P6901085861380228627.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [h2, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A154920

/-! ## A154920.P1859636117231269321

`floor((n+1)*∏[3^Δ[or(1, n)]])`
-/

namespace A154920.P1859636117231269321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A154920.P1859636117231269321

namespace A154920

/-- `floor((n+1)*∏[3^Δ[or(1, n)]])` -/
def P1859636117231269321.Spec : Prop :=
  ∀ n, P1859636117231269321.a n = A154920 n

end A154920

/-! ## A154920.P10039937742121170503

`ceil((n+1)*∏[3^Δ[or(1, n)]])`
-/

namespace A154920.P10039937742121170503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A154920.P10039937742121170503

namespace A154920

/-- `ceil((n+1)*∏[3^Δ[or(1, n)]])` -/
def P10039937742121170503.Spec : Prop :=
  ∀ n, P10039937742121170503.a n = A154920 n

end A154920

/-! ## A154920.P3183425495534445049

`round((n+1)*∏[3^Δ[or(1, n)]])`
-/

namespace A154920.P3183425495534445049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A154920.P3183425495534445049

namespace A154920

/-- `round((n+1)*∏[3^Δ[or(1, n)]])` -/
def P3183425495534445049.Spec : Prop :=
  ∀ n, P3183425495534445049.a n = A154920 n

end A154920

/-! ## A154920.P10327664379701856195

`floor((n+1)*3^∑[2-a(n-1)])` with `a(0)=0`
-/

namespace A154920.P10327664379701856195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A154920.P10327664379701856195

namespace A154920

/-- `floor((n+1)*3^∑[2-a(n-1)])` -/
def P10327664379701856195.Spec : Prop :=
  ∀ n, P10327664379701856195.a n = A154920 n

end A154920

/-! ## A154920.P17623544312656703589

`record[A008619(n)*A128019(n)]`
-/

namespace A154920.P17623544312656703589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A128019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154920.P17623544312656703589

namespace A154920

/-- `record[A008619(n)*A128019(n)]` -/
def P17623544312656703589.Spec : Prop :=
  ∀ n, P17623544312656703589.a n = A154920 n

end A154920

/-! ## A154920.P17134174975261414021

`A116176(n)/a(n-1)` with `a(0)=1`
-/

namespace A154920.P17134174975261414021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A116176 n : ℚ) / a (n - 1)

end

end A154920.P17134174975261414021

namespace A154920

/-- `A116176(n)/a(n-1)` -/
def P17134174975261414021.Spec : Prop :=
  ∀ n, P17134174975261414021.a n = (A154920 n : ℚ)

end A154920

/-! ## A154920.P6322034179290464194

`sqrt((Δ[A092486(2*n)+n]+2)*A001019(n)*(n+1)²)`
-/

namespace A154920.P6322034179290464194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n) + (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (n + 1) - f1 n + 2) * A001019 n * ((n + 1) ^ 2 : ℤ) : ℝ)

end

end A154920.P6322034179290464194

namespace A154920

/-- `sqrt((Δ[A092486(2*n)+n]+2)*A001019(n)*(n+1)²)` -/
def P6322034179290464194.Spec : Prop :=
  ∀ n, P6322034179290464194.a n = (A154920 n : ℝ)

end A154920

/-!
# A154921: Triangle read by rows, T(n, k) = binomial(n, k) * Sum_{j=0..n-k} E(n-k, j)*2^j, where E(n, k) are the Eulerian numbers A173018(n, k), for 0 <= k <= n.

The programs for A154921, there is no canonical definition to state claims against.
-/

/-! ## A154921.P11217739221926373401

`C(row(n), col(n))*A000670(row(n)-col(n))`
-/

namespace A154921.P11217739221926373401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000670 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A154921.P11217739221926373401

/-! ## A154921.P16098571799174395858

`A007318(n)*A000670(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A154921.P16098571799174395858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000670 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A154921.P16098571799174395858

/-! ## A154921.P4161412161197473750

`A007318(n)*A000670(A025581(n))`
-/

namespace A154921.P4161412161197473750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000670 (A025581 n).toNat

end

end A154921.P4161412161197473750

/-! ## A154921.P10694851282434660537

`sqrt(A008459(n))*A000670(A025581(n))`
-/

namespace A154921.P10694851282434660537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000670 (A025581 n).toNat : ℝ)

end

end A154921.P10694851282434660537

/-! ## A154921.P16739381974593481417

`Δ[A102363(n)]*A000670(A025581(n))`
-/

namespace A154921.P16739381974593481417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000670 (A025581 n).toNat

end

end A154921.P16739381974593481417

/-! ## A154921.P1946994874634284841

`A000670(A025581(n))/2*A028326(n)`
-/

namespace A154921.P1946994874634284841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A154921.P1946994874634284841

/-! ## A154921.P4175169779177069572

`A000670(A025581(n))*A110654(A028326(n))`
-/

namespace A154921.P4175169779177069572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A025581 n).toNat * A110654 (A028326 n).toNat

end

end A154921.P4175169779177069572

/-! ## A154921.P10418858966984279722

`A000670(A025581(n))*A008620(A131060(n))`
-/

namespace A154921.P10418858966984279722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A025581 n).toNat * A008620 (A131060 n).toNat

end

end A154921.P10418858966984279722

/-!
# A154923: A symmetrical triangle sequence made from A154537:q(x,n)= Sum[(2*m + 1)^n*x^m/m!, {m, 0, Infinity}]/(Exp[x]); p(x,n)=q(x,n)+x^n*q(1/x,n); t(n,m)=coefficients(p(x,n)).

The programs for A154923, there is no canonical definition to state claims against.
-/

/-! ## A154923.P17994142617915484562

`A154537(A061579(n))+A154537(n)`
-/

namespace A154923.P17994142617915484562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (A061579 n).toNat + A154537 n

end

end A154923.P17994142617915484562

/-! ## A154923.P7269601059559645774

`A154537(A038722(n+2))+A154537(n)`
-/

namespace A154923.P7269601059559645774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (A038722 (n + 2)).toNat + A154537 n

end

end A154923.P7269601059559645774

/-! ## A154923.P14940615025587909823

`A154537(A114327(n)+n)+A154537(n)`
-/

namespace A154923.P14940615025587909823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (A114327 n + (n : ℤ)).toNat + A154537 n

end

end A154923.P14940615025587909823

/-! ## A154923.P11471886000228588151

`A154537(n)+A039756(n)*A130321(n)`
-/

namespace A154923.P11471886000228588151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 n + A039756 n * A130321 n

end

end A154923.P11471886000228588151

/-! ## A154923.P3275516931400232787

`A283857(n+1)+A142470(n)-A302965(n+1)%A181957(n)`
-/

namespace A154923.P3275516931400232787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (n + 1) + (A142470 n - Int.tmod (A302965 (n + 1)) (A181957 n))

end

end A154923.P3275516931400232787

/-!
# A154926: Signed version of Pascal's triangle. Diagonal positive, rest negative.

The programs for A154926, the canonical program `A154926.P2703523724457220951` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154926 has offset 1).

The definition of A154926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154926.P11953886421975089197

`2*char[∑[n-1]]-abs(A108086(n))`
-/

namespace A154926.P11953886421975089197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - |A108086 n|

end

end A154926.P11953886421975089197

namespace A154926

/-- `2*char[∑[n-1]]-abs(A108086(n))` -/
def P11953886421975089197.Spec : Prop :=
  ∀ n, P11953886421975089197.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P5657980209535159456

`2*char[∑[n-1]]-1-A014473(n)`
-/

namespace A154926.P5657980209535159456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1 - A014473 n

end

end A154926.P5657980209535159456

namespace A154926

/-- `2*char[∑[n-1]]-1-A014473(n)` -/
def P5657980209535159456.Spec : Prop :=
  ∀ n, P5657980209535159456.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P388027789060458554

`abs(A130595(n))/(2*char[∑[n-1]]-1)`
-/

namespace A154926.P388027789060458554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A130595 n| : ℚ) / (((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1 : ℚ)

end

end A154926.P388027789060458554

namespace A154926

/-- `abs(A130595(n))/(2*char[∑[n-1]]-1)` -/
def P388027789060458554.Spec : Prop :=
  ∀ n, P388027789060458554.a n = (A154926 (n + 1) : ℚ)

end A154926

/-! ## A154926.P2703523724457220951

`A028326(n)-A131111(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A154926

/-- `A028326(n)-A131111(n)` -/
def P2703523724457220951.Spec : Prop :=
  ∀ n, P2703523724457220951.a n = A154926 (n + 1)

theorem P2703523724457220951.correct : P2703523724457220951.Spec := by
  intro n
  simp only [A154926, Nat.add_sub_cancel]

end A154926

/-! ## A154926.P17188431372247245819

`A133138(n)-A131127(n)`
-/

namespace A154926.P17188431372247245819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133138 n - A131127 n

end

end A154926.P17188431372247245819

namespace A154926

/-- `A133138(n)-A131127(n)` -/
def P17188431372247245819.Spec : Prop :=
  ∀ n, P17188431372247245819.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P849349785316988227

`A136157(n)-A133138(n)`
-/

namespace A154926.P849349785316988227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136157 n - A133138 n

end

end A154926.P849349785316988227

namespace A154926

/-- `A136157(n)-A133138(n)` -/
def P849349785316988227.Spec : Prop :=
  ∀ n, P849349785316988227.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P7625453711871009796

`A124644(n)/A106270(n)`
-/

namespace A154926.P7625453711871009796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124644 n : ℚ) / (A106270 n : ℚ)

end

end A154926.P7625453711871009796

namespace A154926

/-- `A124644(n)/A106270(n)` -/
def P7625453711871009796.Spec : Prop :=
  ∀ n, P7625453711871009796.a n = (A154926 (n + 1) : ℚ)

end A154926

/-! ## A154926.P14988918451166491605

`A129994(n)/A114284(n)`
-/

namespace A154926.P14988918451166491605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129994 n : ℚ) / (A114284 n : ℚ)

end

end A154926.P14988918451166491605

namespace A154926

/-- `A129994(n)/A114284(n)` -/
def P14988918451166491605.Spec : Prop :=
  ∀ n, P14988918451166491605.a n = (A154926 (n + 1) : ℚ)

end A154926

/-! ## A154926.P2160867227267988290

`A007318(n)*A154990(n+1)`
-/

namespace A154926.P2160867227267988290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A154990 (n + 1)

end

end A154926.P2160867227267988290

namespace A154926

/-- `A007318(n)*A154990(n+1)` -/
def P2160867227267988290.Spec : Prop :=
  ∀ n, P2160867227267988290.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P16359909781547545192

`xor(A014473(n), A154990(n+1))`
-/

namespace A154926.P16359909781547545192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014473 n) (A154990 (n + 1))

end

end A154926.P16359909781547545192

namespace A154926

/-- `xor(A014473(n), A154990(n+1))` -/
def P16359909781547545192.Spec : Prop :=
  ∀ n, P16359909781547545192.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P11550450949775180937

`A023531(n)+A023531(n)-A007318(n)`
-/

namespace A154926.P11550450949775180937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + (A023531 n - A007318 n)

end

end A154926.P11550450949775180937

namespace A154926

/-- `A023531(n)+A023531(n)-A007318(n)` -/
def P11550450949775180937.Spec : Prop :=
  ∀ n, P11550450949775180937.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P6085300490730238732

`A007318(n)+A007318(n)-A131111(n)`
-/

namespace A154926.P6085300490730238732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A007318 n - A131111 n)

end

end A154926.P6085300490730238732

namespace A154926

/-- `A007318(n)+A007318(n)-A131111(n)` -/
def P6085300490730238732.Spec : Prop :=
  ∀ n, P6085300490730238732.a n = A154926 (n + 1)

theorem P6085300490730238732.correct : P6085300490730238732.Spec := by
  intro n
  simp only [A154926, Nat.add_sub_cancel, A154926.P6085300490730238732.a, A154926.P2703523724457220951.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A131111, A131111.P2883146783880344196.a, A129994, A129994.P8909343354360901903.a, A014473, A014473.P9301799580602651200.a, A104795, A104795.P13015670119841549225.a, A198321, A198321.P15651192103710140511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154926

/-! ## A154926.P1939157938242031534

`A007318(n)+A131112(n)-A131114(n)`
-/

namespace A154926.P1939157938242031534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131112 n - A131114 n)

end

end A154926.P1939157938242031534

namespace A154926

/-- `A007318(n)+A131112(n)-A131114(n)` -/
def P1939157938242031534.Spec : Prop :=
  ∀ n, P1939157938242031534.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P3162367194568721443

`A131111(n)+A131111(n)-A131115(n)`
-/

namespace A154926.P3162367194568721443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (A131111 n - A131115 n)

end

end A154926.P3162367194568721443

namespace A154926

/-- `A131111(n)+A131111(n)-A131115(n)` -/
def P3162367194568721443.Spec : Prop :=
  ∀ n, P3162367194568721443.a n = A154926 (n + 1)

theorem P3162367194568721443.correct : P3162367194568721443.Spec := by
  intro n
  simp only [A154926, Nat.add_sub_cancel, A154926.P3162367194568721443.a, A154926.P2703523724457220951.a, A028326, A028326.P7676793339942299677.a, A131111, A131111.P2883146783880344196.a, A131115, A131115.P11138580464348698850.a, A007318, A007318.P11755526479805562006.a, A129994, A129994.P8909343354360901903.a, A131112, A131112.P1892582295749430120.a, A014473, A014473.P9301799580602651200.a, A104795, A104795.P13015670119841549225.a, A198321, A198321.P15651192103710140511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154926

/-! ## A154926.P365840016511930805

`A010054(n+1)+A010054(n+1)-A007318(n)`
-/

namespace A154926.P365840016511930805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + (A010054 (n + 1) - A007318 n)

end

end A154926.P365840016511930805

namespace A154926

/-- `A010054(n+1)+A010054(n+1)-A007318(n)` -/
def P365840016511930805.Spec : Prop :=
  ∀ n, P365840016511930805.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P11232667964070611856

`A007318(n+1)+A007318(n+1)-A110813(n)`
-/

namespace A154926.P11232667964070611856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A007318 (n + 1) - A110813 n)

end

end A154926.P11232667964070611856

namespace A154926

/-- `A007318(n+1)+A007318(n+1)-A110813(n)` -/
def P11232667964070611856.Spec : Prop :=
  ∀ n, P11232667964070611856.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P2982798579597534992

`A007318(n)-(A198321(n+1)+A198321(n+1))`
-/

namespace A154926.P2982798579597534992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A198321 (n + 1) + A198321 (n + 1))

end

end A154926.P2982798579597534992

namespace A154926

/-- `A007318(n)-(A198321(n+1)+A198321(n+1))` -/
def P2982798579597534992.Spec : Prop :=
  ∀ n, P2982798579597534992.a n = A154926 (n + 1)

theorem P2982798579597534992.correct : P2982798579597534992.Spec := by
  intro n
  simp only [A154926, Nat.add_sub_cancel, A154926.P2982798579597534992.a, A154926.P2703523724457220951.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A131111, A131111.P2883146783880344196.a, A198321, A198321.P15651192103710140511.a, A129994, A129994.P8909343354360901903.a, A193815, A193815.P12377440765464689058.a, A014473, A014473.P9301799580602651200.a, A074909, A074909.P6402560185863182536.a, A104795, A104795.P13015670119841549225.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A061885, A061885.P4567764245783084005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154926

/-! ## A154926.P2788619853754889070

`A080233(n+1)+A156644(n)-A007318(n)`
-/

namespace A154926.P2788619853754889070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (n + 1) + (A156644 n - A007318 n)

end

end A154926.P2788619853754889070

namespace A154926

/-- `A080233(n+1)+A156644(n)-A007318(n)` -/
def P2788619853754889070.Spec : Prop :=
  ∀ n, P2788619853754889070.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P14481027625688348056

`A134059(n+1)-(A124928(n+1)+A007318(n))`
-/

namespace A154926.P14481027625688348056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 (n + 1) - (A124928 (n + 1) + A007318 n)

end

end A154926.P14481027625688348056

namespace A154926

/-- `A134059(n+1)-(A124928(n+1)+A007318(n))` -/
def P14481027625688348056.Spec : Prop :=
  ∀ n, P14481027625688348056.a n = A154926 (n + 1)

end A154926

/-! ## A154926.P2845674258039889904

`A131948(n+1)-(A131948(n)+A007318(n+1))`
-/

namespace A154926.P2845674258039889904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131948 (n + 1) - (A131948 n + A007318 (n + 1))

end

end A154926.P2845674258039889904

namespace A154926

/-- `A131948(n+1)-(A131948(n)+A007318(n+1))` -/
def P2845674258039889904.Spec : Prop :=
  ∀ n, P2845674258039889904.a n = A154926 (n + 1)

end A154926

/-!
# A154929: A Fibonacci convolution triangle.

The programs for A154929, the canonical program `A154929.P6204546063428230358` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154929 has offset 0).

The definition of A154929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154929.P6204546063428230358

`T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154929

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)` -/
def P6204546063428230358.Spec : Prop :=
  ∀ n, (P6204546063428230358.a n : ℤ) = A154929 n

theorem P6204546063428230358.correct : P6204546063428230358.Spec := by
  intro n
  simp only [A154929]

end A154929

/-! ## A154929.P16444431690200021237

`A155112(comp[∑[n]])`
-/

namespace A154929.P16444431690200021237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A154929.P16444431690200021237

namespace A154929

/-- `A155112(comp[∑[n]])` -/
def P16444431690200021237.Spec : Prop :=
  ∀ n, P16444431690200021237.a n = A154929 n

end A154929

/-! ## A154929.P13691605826465281337

`gcd(A000038(n), A155112(A014132(n+1)))`
-/

namespace A154929.P13691605826465281337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A155112 (A014132 (n + 1)).toNat)

end

end A154929.P13691605826465281337

namespace A154929

/-- `gcd(A000038(n), A155112(A014132(n+1)))` -/
def P13691605826465281337.Spec : Prop :=
  ∀ n, (P13691605826465281337.a n : ℤ) = A154929 n

end A154929

/-! ## A154929.P251616593010508977

`lcm(A020985(n), A155112(A014132(n+1)))`
-/

namespace A154929.P251616593010508977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A155112 (A014132 (n + 1)).toNat)

end

end A154929.P251616593010508977

namespace A154929

/-- `lcm(A020985(n), A155112(A014132(n+1)))` -/
def P251616593010508977.Spec : Prop :=
  ∀ n, (P251616593010508977.a n : ℤ) = A154929 n

end A154929

/-! ## A154929.P2828138197734523111

`A322996(A005408(n))+A155112(A014132(n+1))`
-/

namespace A154929.P2828138197734523111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A005408 n).toNat + A155112 (A014132 (n + 1)).toNat

end

end A154929.P2828138197734523111

namespace A154929

/-- `A322996(A005408(n))+A155112(A014132(n+1))` -/
def P2828138197734523111.Spec : Prop :=
  ∀ n, P2828138197734523111.a n = A154929 n

end A154929

/-! ## A154929.P6466258253113702109

`A155112(A014132(n+1))+A000038(2*(n+2))`
-/

namespace A154929.P6466258253113702109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155112 (A014132 (n + 1)).toNat + A000038 (2 * (n + 2))

end

end A154929.P6466258253113702109

namespace A154929

/-- `A155112(A014132(n+1))+A000038(2*(n+2))` -/
def P6466258253113702109.Spec : Prop :=
  ∀ n, P6466258253113702109.a n = A154929 n

end A154929

/-! ## A154929.P9902331051893502049

`A322996(A328805(n+1))+A155112(A014132(n+1))`
-/

namespace A154929.P9902331051893502049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A328805 (n + 1)).toNat + A155112 (A014132 (n + 1)).toNat

end

end A154929.P9902331051893502049

namespace A154929

/-- `A322996(A328805(n+1))+A155112(A014132(n+1))` -/
def P9902331051893502049.Spec : Prop :=
  ∀ n, P9902331051893502049.a n = A154929 n

end A154929

/-! ## A154929.P15700621028858926889

`A155112(A014132(n+1))/A020985(A155112(n))²`
-/

namespace A154929.P15700621028858926889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155112 (A014132 (n + 1)).toNat : ℚ) / (A020985 (A155112 n).toNat ^ 2 : ℚ)

end

end A154929.P15700621028858926889

namespace A154929

/-- `A155112(A014132(n+1))/A020985(A155112(n))²` -/
def P15700621028858926889.Spec : Prop :=
  ∀ n, P15700621028858926889.a n = (A154929 n : ℚ)

end A154929

/-!
# A154930: Inverse of Fibonacci convolution array A154929.

The programs for A154930, there is no canonical definition to state claims against.
-/

/-! ## A154930.P351189508894584045

`(and(2, comp[∑[n]]+n)-1)*A104259(n)`
-/

namespace A154930.P351189508894584045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A104259 n

end

end A154930.P351189508894584045

/-! ## A154930.P6005538786220454578

`A097807(n)*A104259(n)`
-/

namespace A154930.P6005538786220454578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A104259 n

end

end A154930.P6005538786220454578

/-! ## A154930.P8407359144667851287

`A033999(A025581(n))*A104259(n)`
-/

namespace A154930.P8407359144667851287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A104259 n

end

end A154930.P8407359144667851287

/-! ## A154930.P4691883131836561111

`A009531(A099375(n))*A104259(n)`
-/

namespace A154930.P4691883131836561111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A104259 n

end

end A154930.P4691883131836561111

/-! ## A154930.P13210894468335550567

`A054336(n)/A202847(n)*A104259(n)`
-/

namespace A154930.P13210894468335550567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054336 n : ℚ) / (A202847 n : ℚ) * (A104259 n : ℚ)

end

end A154930.P13210894468335550567

/-! ## A154930.P10200173706036770348

`A033999(A063656(n))*A104259(n)`
-/

namespace A154930.P10200173706036770348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A104259 n

end

end A154930.P10200173706036770348

/-! ## A154930.P17101705457387193397

`A033999(A069011(n))*A104259(n)`
-/

namespace A154930.P17101705457387193397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A069011 n).toNat * A104259 n

end

end A154930.P17101705457387193397

/-! ## A154930.P15348354899629007452

`A104259(n)*A117440(A103217(n))`
-/

namespace A154930.P15348354899629007452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 n * A117440 (A103217 n).toNat

end

end A154930.P15348354899629007452

/-! ## A154930.P5107054339708431813

`A004718(A130321(n))*A104259(n)`
-/

namespace A154930.P5107054339708431813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A104259 n

end

end A154930.P5107054339708431813

/-!
# A154931: Third column of A154921.

The programs for A154931, there is no canonical definition to state claims against.
-/

/-! ## A154931.P12469609438511143987

`record[A154921(∑[n]+2)]`
-/

namespace A154931.P12469609438511143987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154931.P12469609438511143987

/-! ## A154931.P3451170810215815253

`A154921(∑[n+2]+3)`
-/

namespace A154931.P3451170810215815253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A154931.P3451170810215815253

/-! ## A154931.P8866774868177256321

`∑[n+1]*A000670(n)`
-/

namespace A154931.P8866774868177256321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000670 n

end

end A154931.P8866774868177256321

/-! ## A154931.P7373852643213860802

`∑[n+1]*A122101(∑[n])`
-/

namespace A154931.P7373852643213860802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A122101 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A154931.P7373852643213860802

/-! ## A154931.P11169990733443607574

`(A052875(n)+1)*∑[n+1]`
-/

namespace A154931.P11169990733443607574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052875 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154931.P11169990733443607574

/-! ## A154931.P6100839696910425992

`A076726(n)/2*∑[n+1]`
-/

namespace A154931.P6100839696910425992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A154931.P6100839696910425992

/-! ## A154931.P4818101370308405801

`ceil(A000629(n)/2)*∑[n+1]`
-/

namespace A154931.P4818101370308405801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 2⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154931.P4818101370308405801

/-! ## A154931.P7822145159870088849

`∑[n+1]*∑{d}[n+1, A006936(#)]`
-/

namespace A154931.P7822145159870088849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A006936 d)

end

end A154931.P7822145159870088849

/-! ## A154931.P2558412371882652154

`A000670(n)*A179865(n+2)`
-/

namespace A154931.P2558412371882652154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A179865 (n + 2)

end

end A154931.P2558412371882652154

/-! ## A154931.P8846906227500691587

`A000217(n+1)*A226513(∑[n]+n)`
-/

namespace A154931.P8846906227500691587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A226513 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A154931.P8846906227500691587

/-!
# A154933: Numbers k such that k^6 - 2 is prime.

The programs for A154933, there is no canonical definition to state claims against.
-/

/-! ## A154933.P9808239397034369066

`record[A056926(A038599(n+1))]`
-/

namespace A154933.P9808239397034369066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A038599 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154933.P9808239397034369066

/-! ## A154933.P12965343414146581262

`record[A056926(root(A236334(n+1), 3))]`
-/

namespace A154933.P12965343414146581262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A236334 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154933.P12965343414146581262

/-! ## A154933.P14599640680197438635

`record[A037213(root(A236334(n+1), 3))]`
-/

namespace A154933.P14599640680197438635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.roundAway ((A236334 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154933.P14599640680197438635

/-!
# A154934: Primes in A154933.

The programs for A154934, there is no canonical definition to state claims against.
-/

/-! ## A154934.P804766017140701792

`p?[A154933(n+1)]`
-/

namespace A154934.P804766017140701792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154934.P804766017140701792

/-! ## A154934.P16763945042366173612

`∩[A154933(n+1), A380468(n+1)]`
-/

namespace A154934.P16763945042366173612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P16763945042366173612

/-! ## A154934.P4835222714594131812

`∩[A000040(n+1), A154933(n+1)]`
-/

namespace A154934.P4835222714594131812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P4835222714594131812

/-! ## A154934.P6548244954427138523

`∩[A004139(n+1), A154933(n+1)]`
-/

namespace A154934.P6548244954427138523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P6548244954427138523

/-! ## A154934.P1877427990862620622

`∩[A006005(n+1), A154933(n+1)]`
-/

namespace A154934.P1877427990862620622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P1877427990862620622

/-! ## A154934.P2059558182418549754

`∩[A008578(n+1), A154933(n+1)]`
-/

namespace A154934.P2059558182418549754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P2059558182418549754

/-! ## A154934.P9797529020098071146

`∩[A033946(n+1), A154933(n+1)]`
-/

namespace A154934.P9797529020098071146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P9797529020098071146

/-! ## A154934.P14677635451165620001

`∩[A045319(n+1), A154933(n+1)]`
-/

namespace A154934.P14677635451165620001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P14677635451165620001

/-! ## A154934.P15004927041053644231

`∩[A046022(n+1), A154933(n+1)]`
-/

namespace A154934.P15004927041053644231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P15004927041053644231

/-! ## A154934.P14294916771928850867

`∩[A051948(n+1), A154933(n+1)]`
-/

namespace A154934.P14294916771928850867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P14294916771928850867

/-! ## A154934.P3763703933910446885

`∩[A053813(n+1), A154933(n+1)]`
-/

namespace A154934.P3763703933910446885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P3763703933910446885

/-! ## A154934.P573504407519555222

`∩[A062972(n+1), A154933(n+1)]`
-/

namespace A154934.P573504407519555222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P573504407519555222

/-! ## A154934.P15594077648164876114

`∩[A064728(n+1), A154933(n+1)]`
-/

namespace A154934.P15594077648164876114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P15594077648164876114

/-! ## A154934.P3628965867690338299

`∩[A065091(n+1), A154933(n+1)]`
-/

namespace A154934.P3628965867690338299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P3628965867690338299

/-! ## A154934.P7228844053530124735

`∩[A065396(n+1), A154933(n+1)]`
-/

namespace A154934.P7228844053530124735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P7228844053530124735

/-! ## A154934.P10304936664903506283

`∩[A066050(n+1), A154933(n+1)]`
-/

namespace A154934.P10304936664903506283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P10304936664903506283

/-! ## A154934.P11530856156944262395

`∩[A067126(n+1), A154933(n+1)]`
-/

namespace A154934.P11530856156944262395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P11530856156944262395

/-! ## A154934.P16919478387362397922

`∩[A093515(n+1), A154933(n+1)]`
-/

namespace A154934.P16919478387362397922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P16919478387362397922

/-! ## A154934.P6577331493067200782

`∩[A116974(n+1), A154933(n+1)]`
-/

namespace A154934.P6577331493067200782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P6577331493067200782

/-! ## A154934.P3446450383853348194

`∩[A140826(n+1), A154933(n+1)]`
-/

namespace A154934.P3446450383853348194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154934.P3446450383853348194

/-!
# A154936: Primes in A154935.

The programs for A154936, there is no canonical definition to state claims against.
-/

/-! ## A154936.P2461211874283484710

`p?[A154935(n+1)]`
-/

namespace A154936.P2461211874283484710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154936.P2461211874283484710

/-! ## A154936.P6410834289636232517

`p?[record[A154935(A154958(n))]]`
-/

namespace A154936.P6410834289636232517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154936.P6410834289636232517

/-! ## A154936.P3513485256105732690

`∩[A002476(n+1), A154935(n+1)]`
-/

namespace A154936.P3513485256105732690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P3513485256105732690

/-! ## A154936.P13798606241632209744

`∩[A007645(n+1), A154935(n+1)]`
-/

namespace A154936.P13798606241632209744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P13798606241632209744

/-! ## A154936.P1883678209107755216

`∩[A045331(n+1), A154935(n+1)]`
-/

namespace A154936.P1883678209107755216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P1883678209107755216

/-! ## A154936.P10744566558939756732

`∩[A045375(n+1), A154935(n+1)]`
-/

namespace A154936.P10744566558939756732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P10744566558939756732

/-! ## A154936.P7624435266613002591

`∩[A123365(n+1), A154935(n+1)]`
-/

namespace A154936.P7624435266613002591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P7624435266613002591

/-! ## A154936.P8699561596321527914

`∩[A154935(n+1), A279815(n+1)]`
-/

namespace A154936.P8699561596321527914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P8699561596321527914

/-! ## A154936.P7298293321294942737

`∩[A040116(n+1), A154935(n+1)]`
-/

namespace A154936.P7298293321294942737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P7298293321294942737

/-! ## A154936.P6590450271874444267

`∩[A045348(n+1), A154935(n+1)]`
-/

namespace A154936.P6590450271874444267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P6590450271874444267

/-! ## A154936.P11108714300019791228

`∩[A045371(n+1), A154935(n+1)]`
-/

namespace A154936.P11108714300019791228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P11108714300019791228

/-! ## A154936.P11189403100896582111

`∩[A154935(n+1), A325143(n+1)]`
-/

namespace A154936.P11189403100896582111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P11189403100896582111

/-! ## A154936.P12163305997621649601

`∩[A045393(n+1), A154935(n+1)]`
-/

namespace A154936.P12163305997621649601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P12163305997621649601

/-! ## A154936.P11711357220259420820

`∩[A140557(n+1), A154935(n+1)]`
-/

namespace A154936.P11711357220259420820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P11711357220259420820

/-! ## A154936.P11051318855659807284

`∩[A140562(n+1), A154935(n+1)]`
-/

namespace A154936.P11051318855659807284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P11051318855659807284

/-! ## A154936.P9698152021739439511

`∩[A049591(n+1), A154935(n+1)]`
-/

namespace A154936.P9698152021739439511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P9698152021739439511

/-! ## A154936.P1896390274794777499

`∩[A067774(n+1), A154935(n+1)]`
-/

namespace A154936.P1896390274794777499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P1896390274794777499

/-! ## A154936.P6420635399770812442

`∩[A138645(n+1), A154935(n+1)]`
-/

namespace A154936.P6420635399770812442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P6420635399770812442

/-! ## A154936.P16060615535798454723

`∩[A053176(n+1), A154935(n+1)]`
-/

namespace A154936.P16060615535798454723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154936.P16060615535798454723

/-!
# A154938: Numbers k such that k^6 - 2 and k^6 + 2 are both primes.

The programs for A154938, there is no canonical definition to state claims against.
-/

/-! ## A154938.P14727166264333350723

`∩[A075229(n+1), A216978(n+1)]`
-/

namespace A154938.P14727166264333350723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154938.P14727166264333350723

/-! ## A154938.P8759271986268527299

`∩[A075229(n+1), A154933(n+1)]`
-/

namespace A154938.P8759271986268527299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154938.P8759271986268527299

/-! ## A154938.P3887637436310621843

`∩[A154933(n+1), A216978(n+1)]`
-/

namespace A154938.P3887637436310621843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154938.P3887637436310621843

/-!
# A154939: Primes p such that (p-1)*(p+1)-+p are primes.

The programs for A154939, there is no canonical definition to state claims against.
-/

/-! ## A154939.P7168310824630809815

`p?[A081944(n+1)]`
-/

namespace A154939.P7168310824630809815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154939.P7168310824630809815

/-! ## A154939.P10815102762371777136

`p?[A116214(n+1)+1]`
-/

namespace A154939.P10815102762371777136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154939.P10815102762371777136

/-! ## A154939.P7431043732549156641

`∩[A053184(n+1), A081944(n+1)]`
-/

namespace A154939.P7431043732549156641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P7431043732549156641

/-! ## A154939.P5239978825507155827

`∩[A053184(n+1), A116214(n+1)+1]`
-/

namespace A154939.P5239978825507155827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P5239978825507155827

/-! ## A154939.P3927651830853361687

`∩[A002328(n+1), A053184(n+1)]`
-/

namespace A154939.P3927651830853361687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P3927651830853361687

/-! ## A154939.P10859739589567197674

`∩[A045405(n+1), A081944(n+1)]`
-/

namespace A154939.P10859739589567197674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P10859739589567197674

/-! ## A154939.P17312949615335374336

`∩[A081944(n+1), A132143(n+1)]`
-/

namespace A154939.P17312949615335374336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P17312949615335374336

/-! ## A154939.P12857552324238062902

`∩[A081944(n+1), A165671(n+1)]`
-/

namespace A154939.P12857552324238062902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P12857552324238062902

/-! ## A154939.P15801484414848066333

`∩[A000040(n+1), A081944(n+1)]`
-/

namespace A154939.P15801484414848066333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P15801484414848066333

/-! ## A154939.P4842555274126362350

`∩[A006005(n+1), A081944(n+1)]`
-/

namespace A154939.P4842555274126362350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P4842555274126362350

/-! ## A154939.P5921863962492974837

`∩[A008578(n+1), A081944(n+1)]`
-/

namespace A154939.P5921863962492974837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P5921863962492974837

/-! ## A154939.P13398003387037515601

`∩[A065091(n+1), A081944(n+1)]`
-/

namespace A154939.P13398003387037515601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P13398003387037515601

/-! ## A154939.P6514897450389806656

`∩[A065396(n+1), A081944(n+1)]`
-/

namespace A154939.P6514897450389806656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P6514897450389806656

/-! ## A154939.P14877908687609149796

`∩[A070159(n+1), A081944(n+1)]`
-/

namespace A154939.P14877908687609149796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P14877908687609149796

/-! ## A154939.P4236579137221440625

`∩[A081944(n+1), A158611(n+1)]`
-/

namespace A154939.P4236579137221440625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P4236579137221440625

/-! ## A154939.P17161386089593589059

`∩[A081944(n+1), A182140(n+1)]`
-/

namespace A154939.P17161386089593589059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P17161386089593589059

/-! ## A154939.P316856888859802972

`∩[A081944(n+1), A182986(n+1)]`
-/

namespace A154939.P316856888859802972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P316856888859802972

/-! ## A154939.P11605355287896222764

`∩[A081944(n+1), A210494(n+1)]`
-/

namespace A154939.P11605355287896222764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P11605355287896222764

/-! ## A154939.P7007074025354993001

`∩[A081944(n+1), A216285(n+1)]`
-/

namespace A154939.P7007074025354993001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P7007074025354993001

/-! ## A154939.P2005701715712572273

`∩[A081944(n+1), A318871(n+1)]`
-/

namespace A154939.P2005701715712572273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154939.P2005701715712572273

/-!
# A154941: Sophie Germain primes in A154939.

The programs for A154941, there is no canonical definition to state claims against.
-/

/-! ## A154941.P9008546793766343763

`∩[A005384(n+1), A081944(n+1)]`
-/

namespace A154941.P9008546793766343763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154941.P9008546793766343763

/-! ## A154941.P4155385236221926382

`∩[A005384(n+1), A154939(n+1)]`
-/

namespace A154941.P4155385236221926382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154941.P4155385236221926382

/-! ## A154941.P8267338555200509880

`∩[A081944(n+1), A227240(n+1)]`
-/

namespace A154941.P8267338555200509880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154941.P8267338555200509880

/-! ## A154941.P6279214632466909878

`∩[A154939(n+1), A163778(n+1)]`
-/

namespace A154941.P6279214632466909878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154941.P6279214632466909878

/-! ## A154941.P14372479251828565913

`∩[A081944(n+1), A246857(n+1)]`
-/

namespace A154941.P14372479251828565913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154941.P14372479251828565913

/-!
# A154942: Primes p such that (p-1)*p*(p+1)-p-2 and (p-1)*p*(p+1)+p+2 are primes.

The programs for A154942, there is no canonical definition to state claims against.
-/

/-! ## A154942.P3415308012194871236

`A107664(A125024(n))`
-/

namespace A154942.P3415308012194871236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107664 (A125024 n).toNat

end

end A154942.P3415308012194871236

/-! ## A154942.P13824157546829252733

`∩[A048637(n+1), A136416(n+1)]`
-/

namespace A154942.P13824157546829252733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154942.P13824157546829252733

/-!
# A154944: Primes p such that (p-1)*p*(p+1)-p+2 and (p-1)*p*(p+1)+p-2 are primes.

The programs for A154944, there is no canonical definition to state claims against.
-/

/-! ## A154944.P6067703662722837925

`A272409(A196140(n+1)-A260803(n+1))`
-/

namespace A154944.P6067703662722837925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (A196140 (n + 1) - A260803 (n + 1)).toNat

end

end A154944.P6067703662722837925

/-!
# A154947: Decimal expansion of log_9 (18).

The programs for A154947, there is no canonical definition to state claims against.
-/

/-! ## A154947.P17263016469969971594

`A152747(A057428(n)+A028310(n))`
-/

namespace A154947.P17263016469969971594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152747 (A057428 n + A028310 n).toNat

end

end A154947.P17263016469969971594

/-! ## A154947.P4622452942589908707

`A152747(A028310(n)-A057428(n)²)`
-/

namespace A154947.P4622452942589908707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152747 (A028310 n - A057428 n ^ 2).toNat

end

end A154947.P4622452942589908707

/-!
# A154948: Riordan array ((1+x)/(1-x^2)^2, x(1+x)/(1-x)).

The programs for A154948, the canonical program `A154948.P16040335656581871554` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154948 has offset 0).

The definition of A154948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154948.P15055150283955247318

`ceil(A210222(n+1)/2)`
-/

namespace A154948.P15055150283955247318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210222 (n + 1) : ℚ) / 2⌉

end

end A154948.P15055150283955247318

namespace A154948

/-- `ceil(A210222(n+1)/2)` -/
def P15055150283955247318.Spec : Prop :=
  ∀ n, P15055150283955247318.a n = A154948 n

end A154948

/-! ## A154948.P16040335656581871554

`(A101603(A014132(n+1))+A101603(n))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A154948

/-- `(A101603(A014132(n+1))+A101603(n))/2` -/
def P16040335656581871554.Spec : Prop :=
  ∀ n, P16040335656581871554.a n = (A154948 n : ℚ)

end A154948

/-! ## A154948.P9282141873321739471

`floor((A210222(n+1)-or(-1, A000041(n)))/2)`
-/

namespace A154948.P9282141873321739471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210222 (n + 1) - Int.lor (-1) (A000041 n) : ℚ) / 2⌋

end

end A154948.P9282141873321739471

namespace A154948

/-- `floor((A210222(n+1)-or(-1, A000041(n)))/2)` -/
def P9282141873321739471.Spec : Prop :=
  ∀ n, P9282141873321739471.a n = A154948 n

end A154948

/-! ## A154948.P2821940698416388478

`A065033(A210222(n+1))`
-/

namespace A154948.P2821940698416388478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A210222 (n + 1)).toNat

end

end A154948.P2821940698416388478

namespace A154948

/-- `A065033(A210222(n+1))` -/
def P2821940698416388478.Spec : Prop :=
  ∀ n, P2821940698416388478.a n = A154948 n

end A154948

/-!
# A154949: Diagonal sums of Riordan array A154948.

The programs for A154949, the canonical program `A154949.P11919610843526897996` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154949 has offset 0).

The definition of A154949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154949.P2394589548738413902

`ogf(1/(1-x-2x^2+x^4+x^5))`
-/

namespace A154949.P2394589548738413902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 0, 1, 1] n

end

end A154949.P2394589548738413902

namespace A154949

/-- `ogf(1/(1-x-2x^2+x^4+x^5))` -/
def P2394589548738413902.Spec : Prop :=
  ∀ n, P2394589548738413902.a n = A154949 n

end A154949

/-! ## A154949.P11919610843526897996

`∑[∑[A112476(n)]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A154949

/-- `∑[∑[A112476(n)]]` -/
def P11919610843526897996.Spec : Prop :=
  ∀ n, P11919610843526897996.a n = A154949 n

theorem P11919610843526897996.correct : P11919610843526897996.Spec := by
  intro n
  simp only [A154949]

end A154949

/-! ## A154949.P18283033261245250433

`round(∑[A000213(n+1)/2])`
-/

namespace A154949.P18283033261245250433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154949.P18283033261245250433

namespace A154949

/-- `round(∑[A000213(n+1)/2])` -/
def P18283033261245250433.Spec : Prop :=
  ∀ n, P18283033261245250433.a n = A154949 n

end A154949

/-! ## A154949.P11061208809401045295

`∑[∑[A000073(n)+(-1)^n]]`
-/

namespace A154949.P11061208809401045295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154949.P11061208809401045295

namespace A154949

/-- `∑[∑[A000073(n)+(-1)^n]]` -/
def P11061208809401045295.Spec : Prop :=
  ∀ n, P11061208809401045295.a n = A154949 n

end A154949

/-! ## A154949.P5383739899270591968

`A282718(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A154949.P5383739899270591968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A282718 n + a (n - 2)

end

end A154949.P5383739899270591968

namespace A154949

/-- `A282718(n)+a(n-2)` -/
def P5383739899270591968.Spec : Prop :=
  ∀ n, P5383739899270591968.a n = A154949 n

end A154949

/-! ## A154949.P6597561733049940815

`∑[A192804(n+1)-val(n²+1, 2)]`
-/

namespace A154949.P6597561733049940815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154949.P6597561733049940815

namespace A154949

/-- `∑[A192804(n+1)-val(n²+1, 2)]` -/
def P6597561733049940815.Spec : Prop :=
  ∀ n, P6597561733049940815.a n = A154949 n

end A154949

/-! ## A154949.P5974593380859787703

`∑[∑[A001590(n+1)-a(n-1)]]` with `a(0)=1`
-/

namespace A154949.P5974593380859787703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A001590 (n + 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154949.P5974593380859787703

namespace A154949

/-- `∑[∑[A001590(n+1)-a(n-1)]]` -/
def P5974593380859787703.Spec : Prop :=
  ∀ n, P5974593380859787703.a n = A154949 n

end A154949

/-! ## A154949.P1542916037556857218

`∑[∑[A033999(n)+A000073(n)]]`
-/

namespace A154949.P1542916037556857218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154949.P1542916037556857218

namespace A154949

/-- `∑[∑[A033999(n)+A000073(n)]]` -/
def P1542916037556857218.Spec : Prop :=
  ∀ n, P1542916037556857218.a n = A154949 n

end A154949

/-! ## A154949.P6035924490843091538

`∑[abs(A077902(n))]`
-/

namespace A154949.P6035924490843091538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077902 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154949.P6035924490843091538

namespace A154949

/-- `∑[abs(A077902(n))]` -/
def P6035924490843091538.Spec : Prop :=
  ∀ n, P6035924490843091538.a n = A154949 n

end A154949

/-! ## A154949.P17545170442797447563

`∑[abs(∑[∑[A078042(n)]])]`
-/

namespace A154949.P17545170442797447563
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154949.P17545170442797447563

namespace A154949

/-- `∑[abs(∑[∑[A078042(n)]])]` -/
def P17545170442797447563.Spec : Prop :=
  ∀ n, P17545170442797447563.a n = A154949 n

end A154949

/-! ## A154949.P8268519369364014812

`A202012(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A154949.P8268519369364014812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A202012 n - a (n - 3)

end

end A154949.P8268519369364014812

namespace A154949

/-- `A202012(n)-a(n-3)` -/
def P8268519369364014812.Spec : Prop :=
  ∀ n, P8268519369364014812.a n = A154949 n

end A154949

/-! ## A154949.P18425781784158292946

`A008937(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A154949.P18425781784158292946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008937 (n + 1) - a (n - 1)

end

end A154949.P18425781784158292946

namespace A154949

/-- `A008937(n+1)-a(n-1)` -/
def P18425781784158292946.Spec : Prop :=
  ∀ n, P18425781784158292946.a n = A154949 n

end A154949

/-! ## A154949.P2265419282971742007

`A018921(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A154949.P2265419282971742007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A018921 (n - 2) - a (n - 1)

end

end A154949.P2265419282971742007

namespace A154949

/-- `A018921(n-2)-a(n-1)` -/
def P2265419282971742007.Spec : Prop :=
  ∀ n, P2265419282971742007.a n = A154949 n

end A154949

/-! ## A154949.P13919723513677309651

`floor(abs(A078042(n+1)/2))`
-/

namespace A154949.P13919723513677309651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A078042 (n + 1) : ℚ) / 2|⌋

end

end A154949.P13919723513677309651

namespace A154949

/-- `floor(abs(A078042(n+1)/2))` -/
def P13919723513677309651.Spec : Prop :=
  ∀ n, P13919723513677309651.a n = A154949 n

end A154949

/-!
# A154950: Riordan array (1/(1-x^4), x(1+x)/(1+x^2)).

The programs for A154950, there is no canonical definition to state claims against.
-/

/-! ## A154950.P13581275865243285697

`or(A016389(A130534(n+1)), A071676(n))`
-/

namespace A154950.P13581275865243285697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (A130534 (n + 1)).toNat) (A071676 n)

end

end A154950.P13581275865243285697

/-! ## A154950.P11300194826213620968

`A219463(A083329(n))-A008683(n+3)`
-/

namespace A154950.P11300194826213620968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 (A083329 n).toNat - A008683 (n + 3)

end

end A154950.P11300194826213620968

/-! ## A154950.P2367764279149473899

`A089618(A089635(n+6))-A089615(n+3)`
-/

namespace A154950.P2367764279149473899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089618 (A089635 (n + 6)).toNat - A089615 (n + 3)

end

end A154950.P2367764279149473899

/-! ## A154950.P1883004009134886349

`A353422(A189145(n+1)+A062399(n))`
-/

namespace A154950.P1883004009134886349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353422 (A189145 (n + 1) + A062399 n).toNat

end

end A154950.P1883004009134886349

/-! ## A154950.P8699895442014453663

`A020733(n+1)-A329618(A036765(n))`
-/

namespace A154950.P8699895442014453663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020733 (n + 1) - A329618 (A036765 n).toNat

end

end A154950.P8699895442014453663

/-!
# A154951: Found by taking the tree defined by the Hofstadter H-sequence (A005374), mirroring it left to right and relabeling the nodes so they increase left to right. a(n) is the parent node of node n in the tree so constructed.

The programs for A154951, there is no canonical definition to state claims against.
-/

/-! ## A154951.P4962410267960933864

`A038128(∑[A014963(A103880(n))])`
-/

namespace A154951.P4962410267960933864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A103880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154951.P4962410267960933864

/-! ## A154951.P7238330930902308923

`∑[A259599(∑[A086557(n+2)])]`
-/

namespace A154951.P7238330930902308923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086557 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154951.P7238330930902308923

/-! ## A154951.P1574800449088617515

`n-A103355(A094838(n+1))`
-/

namespace A154951.P1574800449088617515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103355 (A094838 (n + 1)).toNat

end

end A154951.P1574800449088617515

/-! ## A154951.P5263784035505145255

`∑[A113217(∑[A226504(2*n+3)])]`
-/

namespace A154951.P5263784035505145255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226504 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154951.P5263784035505145255

/-! ## A154951.P4029484080815554115

`A156261(A079726(n+1)%A179387(n+1))`
-/

namespace A154951.P4029484080815554115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (Int.tmod (A079726 (n + 1)) (A179387 (n + 1))).toNat

end

end A154951.P4029484080815554115

/-!
# A154955: a(1) = 1, a(2) = -1, followed by 0, 0, 0, ... .

The programs for A154955, the canonical program `A154955.P18412881232710977697` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154955 has offset 1).

The definition of A154955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(2)` (program `A154955.P18412881232710977697`, by `A154955.P18412881232710977697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154955.P18412881232710977697

`a(2)` with `a(0)=1, a(1)=-1, a(2)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154955

/-- `a(2)` -/
def P18412881232710977697.Spec : Prop :=
  ∀ n, P18412881232710977697.a n = A154955 (n + 1)

theorem P18412881232710977697.correct : P18412881232710977697.Spec := by
  intro n
  simp only [A154955, Nat.add_sub_cancel]

end A154955

/-!
# A154956: Pierce expansion of 2/Pi.

The programs for A154956, there is no canonical definition to state claims against.
-/

/-! ## A154956.P10738545438389521670

`∑[A083653(A152796(n))]`
-/

namespace A154956.P10738545438389521670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083653 (A152796 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154956.P10738545438389521670

/-!
# A154957: A symmetric (0,1)-triangle.

The programs for A154957, the canonical program `A154957.P3447130498153354160` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154957 has offset 0).

The definition of A154957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154957.P7314174124878151674

`A115282(n)%2`
-/

namespace A154957.P7314174124878151674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115282 n) 2

end

end A154957.P7314174124878151674

namespace A154957

/-- `A115282(n)%2` -/
def P7314174124878151674.Spec : Prop :=
  ∀ n, P7314174124878151674.a n = A154957 n

end A154957

/-! ## A154957.P9887862755602660578

`A143086(n)%3`
-/

namespace A154957.P9887862755602660578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143086 n) 3

end

end A154957.P9887862755602660578

namespace A154957

/-- `A143086(n)%3` -/
def P9887862755602660578.Spec : Prop :=
  ∀ n, P9887862755602660578.a n = A154957 n

end A154957

/-! ## A154957.P1953249447472372937

`log2(gcd(2, A004197(n)))`
-/

namespace A154957.P1953249447472372937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A004197 n) : ℝ)

end

end A154957.P1953249447472372937

namespace A154957

/-- `log2(gcd(2, A004197(n)))` -/
def P1953249447472372937.Spec : Prop :=
  ∀ n, P1953249447472372937.a n = (A154957 n : ℝ)

end A154957

/-! ## A154957.P3125613490297554354

`A003983(n+1)%2`
-/

namespace A154957.P3125613490297554354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003983 (n + 1)) 2

end

end A154957.P3125613490297554354

namespace A154957

/-- `A003983(n+1)%2` -/
def P3125613490297554354.Spec : Prop :=
  ∀ n, P3125613490297554354.a n = A154957 n

end A154957

/-! ## A154957.P3447130498153354160

`A106314(n+1)%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154957

/-- `A106314(n+1)%2` -/
def P3447130498153354160.Spec : Prop :=
  ∀ n, P3447130498153354160.a n = A154957 n

theorem P3447130498153354160.correct : P3447130498153354160.Spec := by
  intro n
  simp only [A154957]

end A154957

/-! ## A154957.P5931589224798358721

`A202674(n+1)%2`
-/

namespace A154957.P5931589224798358721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202674 (n + 1)) 2

end

end A154957.P5931589224798358721

namespace A154957

/-- `A202674(n+1)%2` -/
def P5931589224798358721.Spec : Prop :=
  ∀ n, P5931589224798358721.a n = A154957 n

end A154957

/-! ## A154957.P18109438690255970511

`A202873(n+1)%2`
-/

namespace A154957.P18109438690255970511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202873 (n + 1)) 2

end

end A154957.P18109438690255970511

namespace A154957

/-- `A202873(n+1)%2` -/
def P18109438690255970511.Spec : Prop :=
  ∀ n, P18109438690255970511.a n = A154957 n

end A154957

/-! ## A154957.P646104345229897395

`A204004(n+1)%2`
-/

namespace A154957.P646104345229897395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204004 (n + 1)) 2

end

end A154957.P646104345229897395

namespace A154957

/-- `A204004(n+1)%2` -/
def P646104345229897395.Spec : Prop :=
  ∀ n, P646104345229897395.a n = A154957 n

end A154957

/-! ## A154957.P16817208403123200554

`A204028(n+1)%2`
-/

namespace A154957.P16817208403123200554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204028 (n + 1)) 2

end

end A154957.P16817208403123200554

namespace A154957

/-- `A204028(n+1)%2` -/
def P16817208403123200554.Spec : Prop :=
  ∀ n, P16817208403123200554.a n = A154957 n

end A154957

/-! ## A154957.P9386295738365885148

`A204154(n+1)%2`
-/

namespace A154957.P9386295738365885148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204154 (n + 1)) 2

end

end A154957.P9386295738365885148

namespace A154957

/-- `A204154(n+1)%2` -/
def P9386295738365885148.Spec : Prop :=
  ∀ n, P9386295738365885148.a n = A154957 n

end A154957

/-! ## A154957.P15902722463207129129

`A059841(A004197(n))`
-/

namespace A154957.P15902722463207129129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004197 n).toNat

end

end A154957.P15902722463207129129

namespace A154957

/-- `A059841(A004197(n))` -/
def P15902722463207129129.Spec : Prop :=
  ∀ n, P15902722463207129129.a n = A154957 n

end A154957

/-! ## A154957.P15186764471054248883

`A000035(A115282(n))`
-/

namespace A154957.P15186764471054248883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A115282 n).toNat

end

end A154957.P15186764471054248883

namespace A154957

/-- `A000035(A115282(n))` -/
def P15186764471054248883.Spec : Prop :=
  ∀ n, P15186764471054248883.a n = A154957 n

end A154957

/-! ## A154957.P7746417266281989863

`A133872(A157458(n))`
-/

namespace A154957.P7746417266281989863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A157458 n).toNat

end

end A154957.P7746417266281989863

namespace A154957

/-- `A133872(A157458(n))` -/
def P7746417266281989863.Spec : Prop :=
  ∀ n, P7746417266281989863.a n = A154957 n

end A154957

/-! ## A154957.P15183848851137486763

`A000035(A003983(n+1))`
-/

namespace A154957.P15183848851137486763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003983 (n + 1)).toNat

end

end A154957.P15183848851137486763

namespace A154957

/-- `A000035(A003983(n+1))` -/
def P15183848851137486763.Spec : Prop :=
  ∀ n, P15183848851137486763.a n = A154957 n

end A154957

/-! ## A154957.P15978727115309124024

`A000035(A004197(n)+1)`
-/

namespace A154957.P15978727115309124024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004197 n + 1).toNat

end

end A154957.P15978727115309124024

namespace A154957

/-- `A000035(A004197(n)+1)` -/
def P15978727115309124024.Spec : Prop :=
  ∀ n, P15978727115309124024.a n = A154957 n

end A154957

/-! ## A154957.P16245133150544676354

`A003985(A106255(n+1))`
-/

namespace A154957.P16245133150544676354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003985 (A106255 (n + 1)).toNat

end

end A154957.P16245133150544676354

namespace A154957

/-- `A003985(A106255(n+1))` -/
def P16245133150544676354.Spec : Prop :=
  ∀ n, P16245133150544676354.a n = A154957 n

end A154957

/-! ## A154957.P10687719287173385543

`A000035(A204004(n+1))`
-/

namespace A154957.P10687719287173385543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A204004 (n + 1)).toNat

end

end A154957.P10687719287173385543

namespace A154957

/-- `A000035(A204004(n+1))` -/
def P10687719287173385543.Spec : Prop :=
  ∀ n, P10687719287173385543.a n = A154957 n

end A154957

/-! ## A154957.P979750576478757767

`and(A106465(n), A115282(n))`
-/

namespace A154957.P979750576478757767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106465 n) (A115282 n)

end

end A154957.P979750576478757767

namespace A154957

/-- `and(A106465(n), A115282(n))` -/
def P979750576478757767.Spec : Prop :=
  ∀ n, P979750576478757767.a n = A154957 n

end A154957

/-! ## A154957.P12707829796780545767

`A010883(A003983(n+1)²)-1`
-/

namespace A154957.P12707829796780545767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A003983 (n + 1) ^ 2).toNat - 1

end

end A154957.P12707829796780545767

namespace A154957

/-- `A010883(A003983(n+1)²)-1` -/
def P12707829796780545767.Spec : Prop :=
  ∀ n, P12707829796780545767.a n = A154957 n

end A154957

/-! ## A154957.P12516499077575336806

`A206772(n+1)%2`
-/

namespace A154957.P12516499077575336806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206772 (n + 1)) 2

end

end A154957.P12516499077575336806

namespace A154957

/-- `A206772(n+1)%2` -/
def P12516499077575336806.Spec : Prop :=
  ∀ n, P12516499077575336806.a n = A154957 n

end A154957

/-!
# A154958: Antidiagonal sums of number triangle A154957 regarded as a lower triangular infinite matrix.

The programs for A154958, the canonical program `A154958.P10428053254288976353` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154958 has offset 0).

The definition of A154958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154958.P10428053254288976353

`a(n-1)+a(n-2)-2*a(n-3)+a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154958

/-- `a(n-1)+a(n-2)-2*a(n-3)+a(n-4)+a(n-5)-a(n-6)` -/
def P10428053254288976353.Spec : Prop :=
  ∀ n, P10428053254288976353.a n = A154958 n

theorem P10428053254288976353.correct : P10428053254288976353.Spec := by
  intro n
  simp only [A154958]

end A154958

/-! ## A154958.P11515055726429757712

`round(lcm(2, n+3)/6)`
-/

namespace A154958.P11515055726429757712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)

end

end A154958.P11515055726429757712

namespace A154958

/-- `round(lcm(2, n+3)/6)` -/
def P11515055726429757712.Spec : Prop :=
  ∀ n, P11515055726429757712.a n = A154958 n

end A154958

/-! ## A154958.P9307942665657892391

`∑[∑[ogf(1/(1+x+x^3+x^4))]]`
-/

namespace A154958.P9307942665657892391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 0, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154958.P9307942665657892391

namespace A154958

/-- `∑[∑[ogf(1/(1+x+x^3+x^4))]]` -/
def P9307942665657892391.Spec : Prop :=
  ∀ n, P9307942665657892391.a n = A154958 n

end A154958

/-! ## A154958.P10605009080452547715

`ceil(∑[n+2]%(n+3)/3)`
-/

namespace A154958.P10605009080452547715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 3) : ℕ) : ℚ) / 3⌉

end

end A154958.P10605009080452547715

namespace A154958

/-- `ceil(∑[n+2]%(n+3)/3)` -/
def P10605009080452547715.Spec : Prop :=
  ∀ n, P10605009080452547715.a n = A154958 n

end A154958

/-! ## A154958.P14583676356986540402

`∑[(-1)^n*ceil(xor(1, n)/6)]`
-/

namespace A154958.P14583676356986540402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌈(Nat.xor 1 n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154958.P14583676356986540402

namespace A154958

/-- `∑[(-1)^n*ceil(xor(1, n)/6)]` -/
def P14583676356986540402.Spec : Prop :=
  ∀ n, P14583676356986540402.a n = A154958 n

end A154958

/-! ## A154958.P10906155394948677794

`∑[ceil(xor(1, n)/6)/(-1)^n]`
-/

namespace A154958.P10906155394948677794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.xor 1 n : ℚ) / 6⌉ : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154958.P10906155394948677794

namespace A154958

/-- `∑[ceil(xor(1, n)/6)/(-1)^n]` -/
def P10906155394948677794.Spec : Prop :=
  ∀ n, P10906155394948677794.a n = (A154958 n : ℚ)

end A154958

/-! ## A154958.P16233860213500253370

`round((n+3)/(3*gcd(2, n+1)))`
-/

namespace A154958.P16233860213500253370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) / (3 * Nat.gcd 2 (n + 1) : ℚ))

end

end A154958.P16233860213500253370

namespace A154958

/-- `round((n+3)/(3*gcd(2, n+1)))` -/
def P16233860213500253370.Spec : Prop :=
  ∀ n, P16233860213500253370.a n = A154958 n

end A154958

/-! ## A154958.P4035287216414312185

`∑[a(n%2)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A154958.P4035287216414312185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n % 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154958.P4035287216414312185

namespace A154958

/-- `∑[a(n%2)-a(n-3)]` -/
def P4035287216414312185.Spec : Prop :=
  ∀ n, P4035287216414312185.a n = A154958 n

end A154958

/-! ## A154958.P14556364007949953544

`∑[∑[(-1)^n]-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A154958.P14556364007949953544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154958.P14556364007949953544

namespace A154958

/-- `∑[∑[(-1)^n]-a(n-3)]` -/
def P14556364007949953544.Spec : Prop :=
  ∀ n, P14556364007949953544.a n = A154958 n

end A154958

/-! ## A154958.P5910772544656204321

`floor((n+2)/2-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154958.P5910772544656204321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊(n + 2 : ℚ) / 2 - (a (n - 3) : ℚ)⌋

end

end A154958.P5910772544656204321

namespace A154958

/-- `floor((n+2)/2-a(n-3))` -/
def P5910772544656204321.Spec : Prop :=
  ∀ n, P5910772544656204321.a n = A154958 n

end A154958

/-! ## A154958.P1813798259624662428

`Δ[a(n-2)+n]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154958.P1813798259624662428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 3)

end

end A154958.P1813798259624662428

namespace A154958

/-- `Δ[a(n-2)+n]-a(n-3)` -/
def P1813798259624662428.Spec : Prop :=
  ∀ n, P1813798259624662428.a n = A154958 n

end A154958

/-! ## A154958.P9836354728477544193

`∑[floor(a(n-2))]-(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A154958.P9836354728477544193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 3) + (n : ℤ))

end

end A154958.P9836354728477544193

namespace A154958

/-- `∑[floor(a(n-2))]-(a(n-3)+n)` -/
def P9836354728477544193.Spec : Prop :=
  ∀ n, P9836354728477544193.a n = A154958 n

end A154958

/-! ## A154958.P11536781085255639259

`∑[floor(a(n-2))]-a(n-3)-n` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A154958.P11536781085255639259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 3) - (n : ℤ)

end

end A154958.P11536781085255639259

namespace A154958

/-- `∑[floor(a(n-2))]-a(n-3)-n` -/
def P11536781085255639259.Spec : Prop :=
  ∀ n, P11536781085255639259.a n = A154958 n

end A154958

/-! ## A154958.P16786169062409896664

`∑[A187035(n)]`
-/

namespace A154958.P16786169062409896664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154958.P16786169062409896664

namespace A154958

/-- `∑[A187035(n)]` -/
def P16786169062409896664.Spec : Prop :=
  ∀ n, P16786169062409896664.a n = A154958 n

end A154958

/-! ## A154958.P17117187434309617641

`∑[∑[A104581(n)]]`
-/

namespace A154958.P17117187434309617641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154958.P17117187434309617641

namespace A154958

/-- `∑[∑[A104581(n)]]` -/
def P17117187434309617641.Spec : Prop :=
  ∀ n, P17117187434309617641.a n = A154958 n

end A154958

/-! ## A154958.P9630637695575997979

`A088911(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A154958.P9630637695575997979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A088911 n + a (n - 2)

end

end A154958.P9630637695575997979

namespace A154958

/-- `A088911(n)+a(n-2)` -/
def P9630637695575997979.Spec : Prop :=
  ∀ n, P9630637695575997979.a n = A154958 n

end A154958

/-! ## A154958.P5124012531495063357

`A155041(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154958.P5124012531495063357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A155041 n + a (n - 3)

end

end A154958.P5124012531495063357

namespace A154958

/-- `A155041(n)+a(n-3)` -/
def P5124012531495063357.Spec : Prop :=
  ∀ n, P5124012531495063357.a n = A154958 n

end A154958

/-! ## A154958.P3680450421687238853

`A008619(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154958.P3680450421687238853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A008619 n - a (n - 3)

end

end A154958.P3680450421687238853

namespace A154958

/-- `A008619(n)-a(n-3)` -/
def P3680450421687238853.Spec : Prop :=
  ∀ n, P3680450421687238853.a n = A154958 n

end A154958

/-! ## A154958.P5894313484828199989

`A194272(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A154958.P5894313484828199989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194272 (n + 1) - a (n - 1)

end

end A154958.P5894313484828199989

namespace A154958

/-- `A194272(n+1)-a(n-1)` -/
def P5894313484828199989.Spec : Prop :=
  ∀ n, P5894313484828199989.a n = A154958 n

end A154958

/-! ## A154958.P1549662998921677113

`A008620(A174239(n))`
-/

namespace A154958.P1549662998921677113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A174239 n).toNat

end

end A154958.P1549662998921677113

namespace A154958

/-- `A008620(A174239(n))` -/
def P1549662998921677113.Spec : Prop :=
  ∀ n, P1549662998921677113.a n = A154958 n

end A154958

/-!
# A154959: Triangle read by rows. Signed version of A008277.

The programs for A154959, there is no canonical definition to state claims against.
-/

/-! ## A154959.P2663050701028768293

`(-A008277(n+1))^Δ[comp[∑[n]]]`
-/

namespace A154959.P2663050701028768293
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A008277 (n + 1) : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A154959.P2663050701028768293

/-! ## A154959.P6448361619805095366

`A363849(n)/A154926(n+1)`
-/

namespace A154959.P6448361619805095366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363849 n : ℚ) / (A154926 (n + 1) : ℚ)

end

end A154959.P6448361619805095366

/-! ## A154959.P1295780307335891910

`Δ[A131507(n)]-A008277(n+1)`
-/

namespace A154959.P1295780307335891910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008277 (n + 1)

end

end A154959.P1295780307335891910

/-! ## A154959.P3172697754845401087

`Δ[A279891(n)]-A008277(n+1)`
-/

namespace A154959.P3172697754845401087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008277 (n + 1)

end

end A154959.P3172697754845401087

/-! ## A154959.P12804884314354061748

`A089799(n+1)-A008277(n+1)`
-/

namespace A154959.P12804884314354061748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 (n + 1) - A008277 (n + 1)

end

end A154959.P12804884314354061748

/-!
# A154961: 2nd column of A154960.

The programs for A154961, there is no canonical definition to state claims against.
-/

/-! ## A154961.P4241483142785338494

`record[A002262(n)*A154960(n+1)]`
-/

namespace A154961.P4241483142785338494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A154960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154961.P4241483142785338494

/-! ## A154961.P17764901861126953041

`record[A154960(n+1)*A163351(n)]`
-/

namespace A154961.P17764901861126953041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154960 (n + 1) * A163351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154961.P17764901861126953041

/-! ## A154961.P10330808296426651282

`record[A154960(n+1)*A193759(n)]`
-/

namespace A154961.P10330808296426651282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154960 (n + 1) * A193759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154961.P10330808296426651282

/-! ## A154961.P14236366833626932669

`record[A154960(n+1)*A262881(n)]`
-/

namespace A154961.P14236366833626932669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154960 (n + 1) * A262881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154961.P14236366833626932669

/-! ## A154961.P9317337740888620902

`record[lcm(A049600(n), A154960(n+1))]`
-/

namespace A154961.P9317337740888620902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049600 n) (A154960 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154961.P9317337740888620902

/-!
# A154963: Primes p such that the concatenation of p and prime(p) is prime.

The programs for A154963, there is no canonical definition to state claims against.
-/

/-! ## A154963.P12555696668175873529

`A000720(A155032(n+1))`
-/

namespace A154963.P12555696668175873529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155032 (n + 1)).toNat

end

end A154963.P12555696668175873529

/-! ## A154963.P12679669792215575668

`A061395(or(1, A155032(n+1)))`
-/

namespace A154963.P12679669792215575668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A155032 (n + 1))).toNat

end

end A154963.P12679669792215575668

/-! ## A154963.P8008289043419590684

`∑{d}[A155032(n+1), A061395(#)]`
-/

namespace A154963.P8008289043419590684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A154963.P8008289043419590684

/-! ## A154963.P4444097944189434394

`p?[A000720(A166283(n+1))]`
-/

namespace A154963.P4444097944189434394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154963.P4444097944189434394

/-! ## A154963.P3485749491702258827

`∩[A000040(n+1), A000720(A166283(n+1))]`
-/

namespace A154963.P3485749491702258827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166283 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154963.P3485749491702258827

/-! ## A154963.P6056125621175915989

`A066328(2*A155032(n+1)-A155032(n+1))`
-/

namespace A154963.P6056125621175915989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A155032 (n + 1) - A155032 (n + 1)).toNat

end

end A154963.P6056125621175915989

/-! ## A154963.P958728537717984708

`A061395(2*A155032(n+1))`
-/

namespace A154963.P958728537717984708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A155032 (n + 1)).toNat

end

end A154963.P958728537717984708

/-! ## A154963.P3297964892359501475

`A061395(lcm(2, A155032(n+1)))`
-/

namespace A154963.P3297964892359501475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A155032 (n + 1)))

end

end A154963.P3297964892359501475

/-!
# A154964: a(n) = 3*a(n-1) + 6*a(n-2), n>2, a(0)=1, a(1)=1, a(2)=5.

The programs for A154964, the canonical program `A154964.P16472632056152677381` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154964 has offset 0).

The definition of A154964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+6*a(n-2)` (program `A154964.P16472632056152677381`, by `A154964.P16472632056152677381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154964.P16472632056152677381

`3*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154964

/-- `3*a(n-1)+6*a(n-2)` -/
def P16472632056152677381.Spec : Prop :=
  ∀ n, (P16472632056152677381.a n : ℤ) = A154964 n

theorem P16472632056152677381.correct : P16472632056152677381.Spec := by
  intro n
  simp only [A154964]

end A154964

/-! ## A154964.P448422193618417453

`ogf((-1+2x+4x^2)/(-1+3x+6x^2))`
-/

namespace A154964.P448422193618417453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -4] [1, -3, -6] n

end

end A154964.P448422193618417453

namespace A154964

/-- `ogf((-1+2x+4x^2)/(-1+3x+6x^2))` -/
def P448422193618417453.Spec : Prop :=
  ∀ n, P448422193618417453.a n = A154964 n

end A154964

/-! ## A154964.P10852214788877512658

`3*(2-(2*(1-a(n-2))-a(n-1)))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A154964.P10852214788877512658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  3 * (2 - (2 * (1 - a (n - 2)) - a (n - 1)))

end

end A154964.P10852214788877512658

namespace A154964

/-- `3*(2-(2*(1-a(n-2))-a(n-1)))` -/
def P10852214788877512658.Spec : Prop :=
  ∀ n, P10852214788877512658.a n = A154964 n

end A154964

/-! ## A154964.P11941289682948099020

`A180141(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A154964.P11941289682948099020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A180141 (n - 1) + a (n - 1)

end

end A154964.P11941289682948099020

namespace A154964

/-- `A180141(n-1)+a(n-1)` -/
def P11941289682948099020.Spec : Prop :=
  ∀ n, P11941289682948099020.a n = A154964 n

end A154964

/-! ## A154964.P13784699766262477103

`ceil(A083858(n+1)/3)`
-/

namespace A154964.P13784699766262477103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083858 (n + 1) : ℚ) / 3⌉

end

end A154964.P13784699766262477103

namespace A154964

/-- `ceil(A083858(n+1)/3)` -/
def P13784699766262477103.Spec : Prop :=
  ∀ n, P13784699766262477103.a n = A154964 n

end A154964

/-! ## A154964.P16211768034022282505

`A083858(round(sqrt(n²+1))+1)/3`
-/

namespace A154964.P16211768034022282505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083858 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat : ℚ) / 3

end

end A154964.P16211768034022282505

namespace A154964

/-- `A083858(round(sqrt(n²+1))+1)/3` -/
def P16211768034022282505.Spec : Prop :=
  ∀ n, P16211768034022282505.a n = (A154964 n : ℚ)

end A154964

/-! ## A154964.P7254894974737815667

`floor(A000007(n)+A083858(n+1)/3)`
-/

namespace A154964.P7254894974737815667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A083858 (n + 1) : ℚ) / 3⌋

end

end A154964.P7254894974737815667

namespace A154964

/-- `floor(A000007(n)+A083858(n+1)/3)` -/
def P7254894974737815667.Spec : Prop :=
  ∀ n, P7254894974737815667.a n = A154964 n

end A154964

/-! ## A154964.P17534264108240770478

`(A083858(n+1)/3)^A343639(A000120(n))`
-/

namespace A154964.P17534264108240770478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A083858 (n + 1) : ℚ) / 3) ^ (A343639 (A000120 n).toNat : ℤ)

end

end A154964.P17534264108240770478

namespace A154964

/-- `(A083858(n+1)/3)^A343639(A000120(n))` -/
def P17534264108240770478.Spec : Prop :=
  ∀ n, P17534264108240770478.a n = (A154964 n : ℚ)

end A154964

/-! ## A154964.P11482891907862034031

`(A083858(n+1)/3)^A097805(A193867(n+1))`
-/

namespace A154964.P11482891907862034031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A083858 (n + 1) : ℚ) / 3) ^ (A097805 (A193867 (n + 1)).toNat : ℤ)

end

end A154964.P11482891907862034031

namespace A154964

/-- `(A083858(n+1)/3)^A097805(A193867(n+1))` -/
def P11482891907862034031.Spec : Prop :=
  ∀ n, P11482891907862034031.a n = (A154964 n : ℚ)

end A154964

/-!
# A154965: Composites n such that concatenation of n and n-th prime is prime.

The programs for A154965, there is no canonical definition to state claims against.
-/

/-! ## A154965.P9501332615413673396

`∩[A018252(n+1), A000720(A166283(n+1))]`
-/

namespace A154965.P9501332615413673396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166283 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154965.P9501332615413673396

/-! ## A154965.P286043459915224237

`A000720(A155036(n+1))`
-/

namespace A154965.P286043459915224237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155036 (n + 1)).toNat

end

end A154965.P286043459915224237

/-! ## A154965.P15443625423802893616

`A003963(2*A155036(n+1))`
-/

namespace A154965.P15443625423802893616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A155036 (n + 1)).toNat

end

end A154965.P15443625423802893616

/-! ## A154965.P10599100294956125521

`A065770(2*A155036(n+1))`
-/

namespace A154965.P10599100294956125521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (2 * A155036 (n + 1)).toNat

end

end A154965.P10599100294956125521

/-!
# A154966: Primes p such that the concatenation of p and prime(p) is composite.

The programs for A154966, there is no canonical definition to state claims against.
-/

/-! ## A154966.P15902702881365990615

`A000720(A155030(n+1))`
-/

namespace A154966.P15902702881365990615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155030 (n + 1)).toNat

end

end A154966.P15902702881365990615

/-!
# A154967: Nonprime numbers n such that concatenation of n and n-th prime is composite.

The programs for A154967, there is no canonical definition to state claims against.
-/

/-! ## A154967.P6350100892693446508

`A000720(A155025(n+1))`
-/

namespace A154967.P6350100892693446508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155025 (n + 1)).toNat

end

end A154967.P6350100892693446508

/-! ## A154967.P5673850630815477462

`or(A000007(n), A049084(A155025(n+1)))`
-/

namespace A154967.P5673850630815477462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A049084 (A155025 (n + 1)).toNat)

end

end A154967.P5673850630815477462

/-! ## A154967.P2545499568107237743

`A055396(A155025(n+1))%A037167(n+1)`
-/

namespace A154967.P2545499568107237743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A155025 (n + 1)).toNat) (A037167 (n + 1))

end

end A154967.P2545499568107237743

/-! ## A154967.P10160719544860529661

`A055396(A155025(n+1)%A137985(n+1))`
-/

namespace A154967.P10160719544860529661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A155025 (n + 1)) (A137985 (n + 1))).toNat

end

end A154967.P10160719544860529661

/-! ## A154967.P14872562562808955231

`A049084(or(A010051(n+1), A155025(n+1)))`
-/

namespace A154967.P14872562562808955231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor (A010051 (n + 1)) (A155025 (n + 1))).toNat

end

end A154967.P14872562562808955231

/-! ## A154967.P13954000512828897571

`A049084(A155025(n+1)+n*A000007(n))`
-/

namespace A154967.P13954000512828897571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A155025 (n + 1) + (n : ℤ) * A000007 n).toNat

end

end A154967.P13954000512828897571

/-! ## A154967.P9051452877104356843

`A049084(2*A155025(n+1)-A155025(n+1))`
-/

namespace A154967.P9051452877104356843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A155025 (n + 1) - A155025 (n + 1)).toNat

end

end A154967.P9051452877104356843

/-! ## A154967.P15390035957855611657

`A049084(A155025(n+1)+A000007(n))-A000007(n)`
-/

namespace A154967.P15390035957855611657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A155025 (n + 1) + A000007 n).toNat - A000007 n

end

end A154967.P15390035957855611657

/-! ## A154967.P13596983005491851150

`A003963(2*A155025(n+1))`
-/

namespace A154967.P13596983005491851150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A155025 (n + 1)).toNat

end

end A154967.P13596983005491851150

/-! ## A154967.P14655243180436500705

`A056172(2*A155025(n+1))`
-/

namespace A154967.P14655243180436500705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A155025 (n + 1)).toNat

end

end A154967.P14655243180436500705

/-! ## A154967.P11826117193925793322

`A318995(2*A155025(n+1))+1`
-/

namespace A154967.P11826117193925793322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (2 * A155025 (n + 1)).toNat + 1

end

end A154967.P11826117193925793322

/-! ## A154967.P18147913932577606611

`A056172(A155025(n+1)+A155025(n+1)+1)`
-/

namespace A154967.P18147913932577606611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A155025 (n + 1) + (A155025 (n + 1) + 1)).toNat

end

end A154967.P18147913932577606611

/-! ## A154967.P8925093242424318461

`A318995(3*A155025(n+1))`
-/

namespace A154967.P8925093242424318461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (3 * A155025 (n + 1)).toNat

end

end A154967.P8925093242424318461

/-!
# A154968: a(n) = 4*a(n-1) + 12*a(n-2), n>2 with a(0)=1, a(1)=1, a(2)=7.

The programs for A154968, the canonical program `A154968.P13630431798119614437` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154968 has offset 0).

The definition of A154968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+12*a(n-2)` (program `A154968.P13630431798119614437`, by `A154968.P13630431798119614437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154968.P13630431798119614437

`4*a(n-1)+12*a(n-2)` with `a(0)=1, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154968

/-- `4*a(n-1)+12*a(n-2)` -/
def P13630431798119614437.Spec : Prop :=
  ∀ n, (P13630431798119614437.a n : ℤ) = A154968 n

theorem P13630431798119614437.correct : P13630431798119614437.Spec := by
  intro n
  simp only [A154968]

end A154968

/-! ## A154968.P11927714221532032998

`ogf((-1+3x+9x^2)/(-1+4x+12x^2))`
-/

namespace A154968.P11927714221532032998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -9] [1, -4, -12] n

end

end A154968.P11927714221532032998

namespace A154968

/-- `ogf((-1+3x+9x^2)/(-1+4x+12x^2))` -/
def P11927714221532032998.Spec : Prop :=
  ∀ n, P11927714221532032998.a n = A154968 n

end A154968

/-! ## A154968.P16632909081475579322

`xor(6*a(n-1), 2^n/4)` with `a(0)=1, a(1)=1`
-/

namespace A154968.P16632909081475579322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (6 * a (n - 1)) (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 4))

end

end A154968.P16632909081475579322

namespace A154968

/-- `xor(6*a(n-1), 2^n/4)` -/
def P16632909081475579322.Spec : Prop :=
  ∀ n, P16632909081475579322.a n = A154968 n

end A154968

/-! ## A154968.P18327836922832791741

`ceil(2^(n-2)*∑[A046717(n)])`
-/

namespace A154968.P18327836922832791741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A154968.P18327836922832791741

namespace A154968

/-- `ceil(2^(n-2)*∑[A046717(n)])` -/
def P18327836922832791741.Spec : Prop :=
  ∀ n, P18327836922832791741.a n = A154968 n

end A154968

/-! ## A154968.P16005644603585911659

`ceil(A053524(n+1)/4)`
-/

namespace A154968.P16005644603585911659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053524 (n + 1) : ℚ) / 4⌉

end

end A154968.P16005644603585911659

namespace A154968

/-- `ceil(A053524(n+1)/4)` -/
def P16005644603585911659.Spec : Prop :=
  ∀ n, P16005644603585911659.a n = A154968 n

end A154968

/-! ## A154968.P3457535296161365776

`A053524(n+1)/A112983(A280996(n+2))`
-/

namespace A154968.P3457535296161365776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053524 (n + 1) : ℚ) / (A112983 (A280996 (n + 2)).toNat : ℚ)

end

end A154968.P3457535296161365776

namespace A154968

/-- `A053524(n+1)/A112983(A280996(n+2))` -/
def P3457535296161365776.Spec : Prop :=
  ∀ n, P3457535296161365776.a n = (A154968 n : ℚ)

end A154968

/-!
# A154979: Triangle T(n, k, m) = coefficients of p(x, n, m) where p(x,n,m) = (x+1)*p(x, n-1, m) + 2^(m+n-1) *x*p(x, n-2, m) and m=2, read by rows.

The programs for A154979, there is no canonical definition to state claims against.
-/

/-! ## A154979.P14948429416009455072

`A051234(A154985(n))`
-/

namespace A154979.P14948429416009455072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051234 (A154985 n).toNat

end

end A154979.P14948429416009455072

/-! ## A154979.P13348549227657677787

`A175074(A111910(n))`
-/

namespace A154979.P13348549227657677787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175074 (A111910 n).toNat

end

end A154979.P13348549227657677787

/-! ## A154979.P4144360113525968204

`A190899(A157268(n))`
-/

namespace A154979.P4144360113525968204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (A157268 n).toNat

end

end A154979.P4144360113525968204

/-! ## A154979.P113031526501980359

`A190899(A157275(n))`
-/

namespace A154979.P113031526501980359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (A157275 n).toNat

end

end A154979.P113031526501980359

/-! ## A154979.P12481255920405780039

`A175074(A181143(n))`
-/

namespace A154979.P12481255920405780039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175074 (A181143 n).toNat

end

end A154979.P12481255920405780039

/-!
# A154981: Primes with nonprime smallest digit.

The programs for A154981, there is no canonical definition to state claims against.
-/

/-! ## A154981.P6433062654670908592

`p?[lt[A054054(n), A211396(n)]]`
-/

namespace A154981.P6433062654670908592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154981.P6433062654670908592

/-! ## A154981.P11007348999372952261

`∩[A154539(n+1), A361780(n+1)]`
-/

namespace A154981.P11007348999372952261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154981.P11007348999372952261

/-! ## A154981.P15920804332039728704

`filter[A154539(n+2), A273592(#)]`
-/

namespace A154981.P15920804332039728704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A154981.P15920804332039728704

/-!
# A154982: Triangle T(n, k, m) = coefficients of p(x, n, m) where p(x,n,m) = (x+1)*p(x, n-1, m) + 2^(m+n-1) *x*p(x, n-2, m) and m=0, read by rows.

The programs for A154982, there is no canonical definition to state claims against.
-/

/-! ## A154982.P4578535503511675283

`A274701(A154983(n)²)`
-/

namespace A154982.P4578535503511675283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A154983 n ^ 2).toNat

end

end A154982.P4578535503511675283

/-! ## A154982.P8856509485721325884

`A353744(A008459(n))+1`
-/

namespace A154982.P8856509485721325884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353744 (A008459 n).toNat + 1

end

end A154982.P8856509485721325884

/-! ## A154982.P4687816718260544473

`∑{d}[A109128(n), A095162(#)]`
-/

namespace A154982.P4687816718260544473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A095162 d

end

end A154982.P4687816718260544473

/-! ## A154982.P2701967698021799262

`A353744(A007318(n)²)+1`
-/

namespace A154982.P2701967698021799262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353744 (A007318 n ^ 2).toNat + 1

end

end A154982.P2701967698021799262

/-! ## A154982.P16754860434002884708

`A307707((A154983(n)+1)²)`
-/

namespace A154982.P16754860434002884708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 ((A154983 n + 1) ^ 2).toNat

end

end A154982.P16754860434002884708

/-!
# A154983: Triangle T(n, k, m) = coefficients of p(x, n, m) where p(x,n,m) = (x+1)*p(x, n-1, m) + (2^(m+n-1) + 2^(n-2)*[n>=3])*x*p(x, n-2, m) and m=0, read by rows.

The programs for A154983, there is no canonical definition to state claims against.
-/

/-! ## A154983.P18055169767997648287

`A183233(or(A022166(n), A109128(n)))`
-/

namespace A154983.P18055169767997648287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (Int.lor (A022166 n) (A109128 n)).toNat

end

end A154983.P18055169767997648287

/-! ## A154983.P8233947257952449316

`A183233(or(A046802(n), A109128(n)))`
-/

namespace A154983.P8233947257952449316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (Int.lor (A046802 n) (A109128 n)).toNat

end

end A154983.P8233947257952449316

/-! ## A154983.P8738080815233737844

`A183233(or(A022166(n), A167259(n+1)))`
-/

namespace A154983.P8738080815233737844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (Int.lor (A022166 n) (A167259 (n + 1))).toNat

end

end A154983.P8738080815233737844

/-! ## A154983.P9169720539019504337

`A154986(A004918(n+1))`
-/

namespace A154983.P9169720539019504337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154986 (A004918 (n + 1)).toNat

end

end A154983.P9169720539019504337

/-! ## A154983.P9156861932233793241

`A154986(n)%A374463(2*n+3)`
-/

namespace A154983.P9156861932233793241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154986 n) (A374463 (2 * n + 3))

end

end A154983.P9156861932233793241

/-!
# A154984: Triangle T(n, k, m) = coefficients of p(x, n, m) where p(x,n,m) = (x+1)*p(x, n-1, m) + (2^(m+n-1) + 2^(n-2)*[n>=3])*x*p(x, n-2, m) and m=2, read by rows.

The programs for A154984, there is no canonical definition to state claims against.
-/

/-! ## A154984.P4714144336979951083

`A092289(A157178(n))`
-/

namespace A154984.P4714144336979951083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092289 (A157178 n).toNat

end

end A154984.P4714144336979951083

/-! ## A154984.P2556013273159848320

`A102528(A154985(n))`
-/

namespace A154984.P2556013273159848320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102528 (A154985 n).toNat

end

end A154984.P2556013273159848320

/-! ## A154984.P8704111056082315186

`A114889(A176560(n))`
-/

namespace A154984.P8704111056082315186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114889 (A176560 n).toNat

end

end A154984.P8704111056082315186

/-! ## A154984.P6488864534690693685

`A118170(A176488(n))`
-/

namespace A154984.P6488864534690693685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A176488 n).toNat

end

end A154984.P6488864534690693685

/-! ## A154984.P14377079855522967034

`A168241(A154983(n))`
-/

namespace A154984.P14377079855522967034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168241 (A154983 n).toNat

end

end A154984.P14377079855522967034

/-!
# A154985: Triangle T(n, k, m) = coefficients of p(x, n, m) where p(x,n,m) = (x+1)*p(x, n-1, m) + (2^(m+n-1) + 2^(n-2)*[n>=3])*x*p(x, n-2, m) and m=1, read by rows.

The programs for A154985, there is no canonical definition to state claims against.
-/

/-! ## A154985.P3670150145234708357

`A110266(A382742(n+1))`
-/

namespace A154985.P3670150145234708357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A382742 (n + 1)).toNat

end

end A154985.P3670150145234708357

/-! ## A154985.P14293240132309006312

`A061071(A022185(n))`
-/

namespace A154985.P14293240132309006312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A022185 n).toNat

end

end A154985.P14293240132309006312

/-! ## A154985.P2319294367131771103

`A070772(A022178(n))`
-/

namespace A154985.P2319294367131771103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070772 (A022178 n).toNat

end

end A154985.P2319294367131771103

/-! ## A154985.P6012026593284749692

`A004195(A143007(n))`
-/

namespace A154985.P6012026593284749692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004195 (A143007 n).toNat

end

end A154985.P6012026593284749692

/-! ## A154985.P17039236302048388090

`A102705(A082105(n))`
-/

namespace A154985.P17039236302048388090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A082105 n).toNat

end

end A154985.P17039236302048388090

/-!
# A154986: Triangle T(n, k) = coefficients of p(x, n) where p(x,n) = (x+1)*p(x, n-1) + n*(n-1)*x*p(x, n-2), read by rows.

The programs for A154986, the canonical program `A154986.P13077418744298218454` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154986 has offset 0).

The definition of A154986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154986.P13077418744298218454

`T(n-1,k)+T(n-1,k-1)+row(n)*(row(n)-1)*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154986

/-- `T(n-1,k)+T(n-1,k-1)+row(n)*(row(n)-1)*T(n-2,k-1)` -/
def P13077418744298218454.Spec : Prop :=
  ∀ n, P13077418744298218454.a n = A154986 n

theorem P13077418744298218454.correct : P13077418744298218454.Spec := by
  intro n
  simp only [A154986]

end A154986

/-! ## A154986.P18333589546286979860

`A109680(A154983(n))`
-/

namespace A154986.P18333589546286979860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A154983 n).toNat

end

end A154986.P18333589546286979860

namespace A154986

/-- `A109680(A154983(n))` -/
def P18333589546286979860.Spec : Prop :=
  ∀ n, P18333589546286979860.a n = A154986 n

end A154986

/-! ## A154986.P18209251468317521640

`A248333(A022166(n))+A180960(n)`
-/

namespace A154986.P18209251468317521640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A022166 n).toNat + A180960 n

end

end A154986.P18209251468317521640

namespace A154986

/-- `A248333(A022166(n))+A180960(n)` -/
def P18209251468317521640.Spec : Prop :=
  ∀ n, P18209251468317521640.a n = A154986 n

end A154986

/-!
# A154988: Odd numbers that are the right-angle adjacent side in more than one primitive Pythagorean triple with prime hypotenuse.

The programs for A154988, there is no canonical definition to state claims against.
-/

/-! ## A154988.P5212441806921025229

`∩[A067268(n+1), A294748(n+1)]`
-/

namespace A154988.P5212441806921025229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154988.P5212441806921025229

/-! ## A154988.P17239752477352791771

`∩[A067268(n+1), A175679(n+1)]`
-/

namespace A154988.P17239752477352791771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154988.P17239752477352791771

/-! ## A154988.P2405302129419626641

`∩[A067268(n+1), A335623(n+1)]`
-/

namespace A154988.P2405302129419626641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154988.P2405302129419626641

/-! ## A154988.P13717663130806944561

`lt[A305614(ceil(n²/2)), A305614(n)]`
-/

namespace A154988.P13717663130806944561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154988.P13717663130806944561

/-! ## A154988.P9924200574641531380

`∩[A067268(n+1), A224535(n+1)]`
-/

namespace A154988.P9924200574641531380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154988.P9924200574641531380

/-!
# A154990: Triangle read by rows. Main diagonal is positive. The rest of the terms are negative.

The programs for A154990, the canonical program `A154990.P14967395727332028427` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154990 has offset 1).

The definition of A154990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154990.P11538915251649669461

`2*char[∑[n-1]]-1`
-/

namespace A154990.P11538915251649669461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1

end

end A154990.P11538915251649669461

namespace A154990

/-- `2*char[∑[n-1]]-1` -/
def P11538915251649669461.Spec : Prop :=
  ∀ n, P11538915251649669461.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P4168874137188297724

`or(1, -char[comp[∑[n-1]]])`
-/

namespace A154990.P4168874137188297724
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A154990.P4168874137188297724

namespace A154990

/-- `or(1, -char[comp[∑[n-1]]])` -/
def P4168874137188297724.Spec : Prop :=
  ∀ n, P4168874137188297724.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P11471521018939569549

`(-1)^∪[2*n+1, ∑[2*n]]`
-/

namespace A154990.P11471521018939569549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A154990.P11471521018939569549

namespace A154990

/-- `(-1)^∪[2*n+1, ∑[2*n]]` -/
def P11471521018939569549.Spec : Prop :=
  ∀ n, P11471521018939569549.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P917254000301615074

`-(-1)^Δ[floor(sqrt(∪[2*n, n²]))²]`
-/

namespace A154990.P917254000301615074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))

end

end A154990.P917254000301615074

namespace A154990

/-- `-(-1)^Δ[floor(sqrt(∪[2*n, n²]))²]` -/
def P917254000301615074.Spec : Prop :=
  ∀ n, P917254000301615074.a n = (A154990 (n + 1) : ℚ)

end A154990

/-! ## A154990.P11269741945192260910

`(-1)^(Δ[floor(sqrt(∪[2*n, n²]))²]+1)`
-/

namespace A154990.P11269741945192260910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 : ℤ)

end

end A154990.P11269741945192260910

namespace A154990

/-- `(-1)^(Δ[floor(sqrt(∪[2*n, n²]))²]+1)` -/
def P11269741945192260910.Spec : Prop :=
  ∀ n, P11269741945192260910.a n = (A154990 (n + 1) : ℚ)

end A154990

/-! ## A154990.P15455786929774883958

`A153881(row(n)-col(n)+1)`
-/

namespace A154990.P15455786929774883958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A154990.P15455786929774883958

namespace A154990

/-- `A153881(row(n)-col(n)+1)` -/
def P15455786929774883958.Spec : Prop :=
  ∀ n, P15455786929774883958.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P2656163031554145298

`A134824(A027421(n))`
-/

namespace A154990.P2656163031554145298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A027421 n).toNat

end

end A154990.P2656163031554145298

namespace A154990

/-- `A134824(A027421(n))` -/
def P2656163031554145298.Spec : Prop :=
  ∀ n, P2656163031554145298.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P14967395727332028427

`xor(A023532(n), A114284(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A154990

/-- `xor(A023532(n), A114284(n))` -/
def P14967395727332028427.Spec : Prop :=
  ∀ n, P14967395727332028427.a n = A154990 (n + 1)

theorem P14967395727332028427.correct : P14967395727332028427.Spec := by
  intro n
  simp only [A154990, Nat.add_sub_cancel]

end A154990

/-! ## A154990.P9158696430787407114

`A103452(n^A103452(n)²)`
-/

namespace A154990.P9158696430787407114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A103452 n ^ 2 : ℤ))).toNat

end

end A154990.P9158696430787407114

namespace A154990

/-- `A103452(n^A103452(n)²)` -/
def P9158696430787407114.Spec : Prop :=
  ∀ n, P9158696430787407114.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P9848522354555725724

`A154926(n+1)/A007318(n)`
-/

namespace A154990.P9848522354555725724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154926 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A154990.P9848522354555725724

namespace A154990

/-- `A154926(n+1)/A007318(n)` -/
def P9848522354555725724.Spec : Prop :=
  ∀ n, P9848522354555725724.a n = (A154990 (n + 1) : ℚ)

end A154990

/-! ## A154990.P128396311919296756

`xor(A014473(n), A154926(n+1))`
-/

namespace A154990.P128396311919296756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014473 n) (A154926 (n + 1))

end

end A154990.P128396311919296756

namespace A154990

/-- `xor(A014473(n), A154926(n+1))` -/
def P128396311919296756.Spec : Prop :=
  ∀ n, P128396311919296756.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P32507777318550113

`A128077(n+1)/A128078(n+1)`
-/

namespace A154990.P32507777318550113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128077 (n + 1) : ℚ) / (A128078 (n + 1) : ℚ)

end

end A154990.P32507777318550113

namespace A154990

/-- `A128077(n+1)/A128078(n+1)` -/
def P32507777318550113.Spec : Prop :=
  ∀ n, P32507777318550113.a n = (A154990 (n + 1) : ℚ)

end A154990

/-! ## A154990.P15898409161157467634

`Δ[A131507(n)-n]`
-/

namespace A154990.P15898409161157467634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154990.P15898409161157467634

namespace A154990

/-- `Δ[A131507(n)-n]` -/
def P15898409161157467634.Spec : Prop :=
  ∀ n, P15898409161157467634.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P14701975508584323826

`Δ[A279891(n)-n]`
-/

namespace A154990.P14701975508584323826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154990.P14701975508584323826

namespace A154990

/-- `Δ[A279891(n)-n]` -/
def P14701975508584323826.Spec : Prop :=
  ∀ n, P14701975508584323826.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P12033422416820960036

`floor(Δ[sqrt(A061579(n))])`
-/

namespace A154990.P12033422416820960036
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061579 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A154990.P12033422416820960036

namespace A154990

/-- `floor(Δ[sqrt(A061579(n))])` -/
def P12033422416820960036.Spec : Prop :=
  ∀ n, P12033422416820960036.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P2669011114482590372

`A152570(n+1)%2`
-/

namespace A154990.P2669011114482590372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152570 (n + 1)) 2

end

end A154990.P2669011114482590372

namespace A154990

/-- `A152570(n+1)%2` -/
def P2669011114482590372.Spec : Prop :=
  ∀ n, P2669011114482590372.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P17342317950204403259

`A152572(n+1)%2`
-/

namespace A154990.P17342317950204403259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152572 (n + 1)) 2

end

end A154990.P17342317950204403259

namespace A154990

/-- `A152572(n+1)%2` -/
def P17342317950204403259.Spec : Prop :=
  ∀ n, P17342317950204403259.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P3680791277243728463

`A152720(n+1)%2`
-/

namespace A154990.P3680791277243728463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152720 (n + 1)) 2

end

end A154990.P3680791277243728463

namespace A154990

/-- `A152720(n+1)%2` -/
def P3680791277243728463.Spec : Prop :=
  ∀ n, P3680791277243728463.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P2026156689249550679

`A152721(n+1)%2`
-/

namespace A154990.P2026156689249550679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152721 (n + 1)) 2

end

end A154990.P2026156689249550679

namespace A154990

/-- `A152721(n+1)%2` -/
def P2026156689249550679.Spec : Prop :=
  ∀ n, P2026156689249550679.a n = A154990 (n + 1)

end A154990

/-! ## A154990.P8584429732541675997

`A152571(n+1)%3`
-/

namespace A154990.P8584429732541675997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152571 (n + 1)) 3

end

end A154990.P8584429732541675997

namespace A154990

/-- `A152571(n+1)%3` -/
def P8584429732541675997.Spec : Prop :=
  ∀ n, P8584429732541675997.a n = A154990 (n + 1)

end A154990

/-!
# A154992: A048473 prefixed by two zeros.

The programs for A154992, the canonical program `A154992.P5067086689648390227` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154992 has offset 0).

The definition of A154992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154992.P5067086689648390227

`ceil(Δ[3^(n-2)])-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154992

/-- `ceil(Δ[3^(n-2)])-1` -/
def P5067086689648390227.Spec : Prop :=
  ∀ n, P5067086689648390227.a n = A154992 n

theorem P5067086689648390227.correct : P5067086689648390227.Spec := by
  intro n
  simp only [A154992]

end A154992

/-! ## A154992.P16188601840061605728

`ogf((x^2+x^3)/(1-4x+3x^2))`
-/

namespace A154992.P16188601840061605728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, -4, 3] n

end

end A154992.P16188601840061605728

namespace A154992

/-- `ogf((x^2+x^3)/(1-4x+3x^2))` -/
def P16188601840061605728.Spec : Prop :=
  ∀ n, P16188601840061605728.a n = A154992 n

end A154992

/-! ## A154992.P11320312150503993528

`∑[3*a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A154992.P11320312150503993528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154992.P11320312150503993528

namespace A154992

/-- `∑[3*a(n-1)]` -/
def P11320312150503993528.Spec : Prop :=
  ∀ n, (P11320312150503993528.a n : ℤ) = A154992 n

end A154992

/-! ## A154992.P3072500913728279803

`abs(3*a(n-1)+2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A154992.P3072500913728279803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * a (n - 1) + 2

end

end A154992.P3072500913728279803

namespace A154992

/-- `abs(3*a(n-1)+2)` -/
def P3072500913728279803.Spec : Prop :=
  ∀ n, (P3072500913728279803.a n : ℤ) = A154992 n

end A154992

/-! ## A154992.P1764182072063487725

`or(1, 3*a(n-1)+1)` with `a(0)=0, a(1)=0`
-/

namespace A154992.P1764182072063487725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lor 1 (3 * a (n - 1) + 1)

end

end A154992.P1764182072063487725

namespace A154992

/-- `or(1, 3*a(n-1)+1)` -/
def P1764182072063487725.Spec : Prop :=
  ∀ n, (P1764182072063487725.a n : ℤ) = A154992 n

end A154992

/-! ## A154992.P12176931961360912973

`or(1, lcm(3, a(n-1))+1)` with `a(0)=0, a(1)=0`
-/

namespace A154992.P12176931961360912973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lor 1 (Nat.lcm 3 (a (n - 1)) + 1)

end

end A154992.P12176931961360912973

namespace A154992

/-- `or(1, lcm(3, a(n-1))+1)` -/
def P12176931961360912973.Spec : Prop :=
  ∀ n, (P12176931961360912973.a n : ℤ) = A154992 n

end A154992

/-! ## A154992.P1999834785590804417

`(6*a(n-1)+4)/2` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A154992.P1999834785590804417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (6 * a (n - 1) + 4) / 2

end

end A154992.P1999834785590804417

namespace A154992

/-- `(6*a(n-1)+4)/2` -/
def P1999834785590804417.Spec : Prop :=
  ∀ n, P1999834785590804417.a n = (A154992 n : ℚ)

end A154992

/-! ## A154992.P200550914586104624

`xor(1, 3*a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A154992.P200550914586104624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  Nat.xor 1 (3 * a (n - 1) + 1)

end

end A154992.P200550914586104624

namespace A154992

/-- `xor(1, 3*a(n-1)+1)` -/
def P200550914586104624.Spec : Prop :=
  ∀ n, (P200550914586104624.a n : ℤ) = A154992 n

end A154992

/-! ## A154992.P2223432743765683616

`∑[a(n-1)/cot(atan(3))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A154992.P2223432743765683616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 1, 4] fun n f1 =>
  f1 (n - 1) / Real.cot (Real.arctan (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154992.P2223432743765683616

namespace A154992

/-- `∑[a(n-1)/cot(atan(3))]` -/
def P2223432743765683616.Spec : Prop :=
  ∀ n, P2223432743765683616.a n = (A154992 n : ℝ)

end A154992

/-! ## A154992.P8117301703002746613

`∑[floor(A118264(n)/2)]`
-/

namespace A154992.P8117301703002746613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118264 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154992.P8117301703002746613

namespace A154992

/-- `∑[floor(A118264(n)/2)]` -/
def P8117301703002746613.Spec : Prop :=
  ∀ n, P8117301703002746613.a n = A154992 n

end A154992

/-! ## A154992.P14431336263523571780

`floor((A052156(n)-1)/2)`
-/

namespace A154992.P14431336263523571780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052156 n - 1 : ℚ) / 2⌋

end

end A154992.P14431336263523571780

namespace A154992

/-- `floor((A052156(n)-1)/2)` -/
def P14431336263523571780.Spec : Prop :=
  ∀ n, P14431336263523571780.a n = A154992 n

end A154992

/-! ## A154992.P3482052542337581467

`∑[ceil(sin(n)²)*A326339(n)]`
-/

namespace A154992.P3482052542337581467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A326339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154992.P3482052542337581467

namespace A154992

/-- `∑[ceil(sin(n)²)*A326339(n)]` -/
def P3482052542337581467.Spec : Prop :=
  ∀ n, P3482052542337581467.a n = A154992 n

end A154992

/-! ## A154992.P10177762437889637640

`floor((A025579(n+1)-1)/2)`
-/

namespace A154992.P10177762437889637640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025579 (n + 1) - 1 : ℚ) / 2⌋

end

end A154992.P10177762437889637640

namespace A154992

/-- `floor((A025579(n+1)-1)/2)` -/
def P10177762437889637640.Spec : Prop :=
  ∀ n, P10177762437889637640.a n = A154992 n

end A154992

/-! ## A154992.P2004423017323025301

`∑[A257970(n+1)%A052156(n)]`
-/

namespace A154992.P2004423017323025301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257970 (n + 1)) (A052156 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154992.P2004423017323025301

namespace A154992

/-- `∑[A257970(n+1)%A052156(n)]` -/
def P2004423017323025301.Spec : Prop :=
  ∀ n, P2004423017323025301.a n = A154992 n

end A154992

/-! ## A154992.P12303276986494637627

`A080923(n)%A100702(n)`
-/

namespace A154992.P12303276986494637627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080923 n) (A100702 n)

end

end A154992.P12303276986494637627

namespace A154992

/-- `A080923(n)%A100702(n)` -/
def P12303276986494637627.Spec : Prop :=
  ∀ n, P12303276986494637627.a n = A154992 n

end A154992

/-! ## A154992.P16896720162350916342

`∑[A326339(n)%A003946(n)]`
-/

namespace A154992.P16896720162350916342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326339 n) (A003946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154992.P16896720162350916342

namespace A154992

/-- `∑[A326339(n)%A003946(n)]` -/
def P16896720162350916342.Spec : Prop :=
  ∀ n, P16896720162350916342.a n = A154992 n

end A154992

/-! ## A154992.P4187192994285888082

`floor(A048473(n)/9)`
-/

namespace A154992.P4187192994285888082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048473 n : ℚ) / 9⌋

end

end A154992.P4187192994285888082

namespace A154992

/-- `floor(A048473(n)/9)` -/
def P4187192994285888082.Spec : Prop :=
  ∀ n, P4187192994285888082.a n = A154992 n

end A154992

/-! ## A154992.P2687402865359474162

`floor(A100774(n)/9)`
-/

namespace A154992.P2687402865359474162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100774 n : ℚ) / 9⌋

end

end A154992.P2687402865359474162

namespace A154992

/-- `floor(A100774(n)/9)` -/
def P2687402865359474162.Spec : Prop :=
  ∀ n, P2687402865359474162.a n = A154992 n

end A154992

/-! ## A154992.P3209234695842429023

`A048473(n)%A052156(n)`
-/

namespace A154992.P3209234695842429023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048473 n) (A052156 n)

end

end A154992.P3209234695842429023

namespace A154992

/-- `A048473(n)%A052156(n)` -/
def P3209234695842429023.Spec : Prop :=
  ∀ n, P3209234695842429023.a n = A154992 n

end A154992

/-! ## A154992.P7776439943243692305

`A198645(n)%A052156(n)`
-/

namespace A154992.P7776439943243692305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198645 n) (A052156 n)

end

end A154992.P7776439943243692305

namespace A154992

/-- `A198645(n)%A052156(n)` -/
def P7776439943243692305.Spec : Prop :=
  ∀ n, P7776439943243692305.a n = A154992 n

end A154992

/-!
# A154996: a(n) = 5*a(n-1) + 20*a(n-2), n>2 ; a(0)=1, a(1)=1, a(2)=9.

The programs for A154996, the canonical program `A154996.P11949766172928997804` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154996 has offset 0).

The definition of A154996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+20*a(n-2)` (program `A154996.P11949766172928997804`, by `A154996.P11949766172928997804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154996.P11949766172928997804

`5*a(n-1)+20*a(n-2)` with `a(0)=1, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154996

/-- `5*a(n-1)+20*a(n-2)` -/
def P11949766172928997804.Spec : Prop :=
  ∀ n, (P11949766172928997804.a n : ℤ) = A154996 n

theorem P11949766172928997804.correct : P11949766172928997804.Spec := by
  intro n
  simp only [A154996]

end A154996

/-! ## A154996.P14180393926566840773

`A183294(or(A015565(n), A149035(n)))`
-/

namespace A154996.P14180393926566840773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183294 (Int.lor (A015565 n) (A149035 n)).toNat

end

end A154996.P14180393926566840773

namespace A154996

/-- `A183294(or(A015565(n), A149035(n)))` -/
def P14180393926566840773.Spec : Prop :=
  ∀ n, P14180393926566840773.a n = A154996 n

end A154996

/-!
# A154997: a(n) = 6*a(n-1) + 30*a(n-2), n>2; a(0)=1, a(1)=1, a(2)=11.

The programs for A154997, the canonical program `A154997.P2250471543260964993` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154997 has offset 0).

The definition of A154997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+30*a(n-2)` (program `A154997.P2250471543260964993`, by `A154997.P2250471543260964993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154997.P2250471543260964993

`6*a(n-1)+30*a(n-2)` with `a(0)=1, a(1)=1, a(2)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154997

/-- `6*a(n-1)+30*a(n-2)` -/
def P2250471543260964993.Spec : Prop :=
  ∀ n, (P2250471543260964993.a n : ℤ) = A154997 n

theorem P2250471543260964993.correct : P2250471543260964993.Spec := by
  intro n
  simp only [A154997]

end A154997

/-!
# A154999: a(n) = 7*a(n-1) + 42*a(n-2), n>2; a(0)=1, a(1)=1, a(2)=13.

The programs for A154999, the canonical program `A154999.P3186485004235122397` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154999 has offset 0).

The definition of A154999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+42*a(n-2)` (program `A154999.P3186485004235122397`, by `A154999.P3186485004235122397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154999.P3186485004235122397

`7*a(n-1)+42*a(n-2)` with `a(0)=1, a(1)=1, a(2)=13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A154999

/-- `7*a(n-1)+42*a(n-2)` -/
def P3186485004235122397.Spec : Prop :=
  ∀ n, (P3186485004235122397.a n : ℤ) = A154999 n

theorem P3186485004235122397.correct : P3186485004235122397.Spec := by
  intro n
  simp only [A154999]

end A154999

