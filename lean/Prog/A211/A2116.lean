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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A211602: Number of binary increasing trees with n nodes and "min-path" of length 3.

The programs for A211602, there is no canonical definition to state claims against.
-/

/-! ## A211602.P726166642868241917

`A186366(A133263(n))%(4^n)`
-/

namespace A211602.P726166642868241917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186366 (A133263 n).toNat) (4 ^ n : ℤ)

end

end A211602.P726166642868241917

/-! ## A211602.P18271961135801296940

`record[char[A000124(n)]*A186366(n+1)]`
-/

namespace A211602.P18271961135801296940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211602.P18271961135801296940

/-! ## A211602.P9426209881698298182

`A186366(A133263(n))-A341027(n)`
-/

namespace A211602.P9426209881698298182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A133263 n).toNat - A341027 (n + 220)

end

end A211602.P9426209881698298182

/-! ## A211602.P11902784668098526364

`lcm(A001221(n+1), A186366(A133263(n)))`
-/

namespace A211602.P11902784668098526364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A186366 (A133263 n).toNat)

end

end A211602.P11902784668098526364

/-!
# A211603: Triangular array read by rows: T(n,k) is the number of n-permutations that are pure cycles having exactly k fixed points; n>=2, 0<=k<=n-2.

The programs for A211603, the canonical program `A211603.P4525959663239701488` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211603 has offset 2).

The definition of A211603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211603.P11326955847958216868

`A004736(n+1)!*A209518(n)`
-/

namespace A211603.P11326955847958216868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat : ℤ) * A209518 n

end

end A211603.P11326955847958216868

namespace A211603

/-- `A004736(n+1)!*A209518(n)` -/
def P11326955847958216868.Spec : Prop :=
  ∀ n, P11326955847958216868.a n = A211603 (n + 2)

end A211603

/-! ## A211603.P9420685775172751661

`(A025581(n)+1)!*A209518(n)`
-/

namespace A211603.P9420685775172751661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n + 1).toNat : ℤ) * A209518 n

end

end A211603.P9420685775172751661

namespace A211603

/-- `(A025581(n)+1)!*A209518(n)` -/
def P9420685775172751661.Spec : Prop :=
  ∀ n, P9420685775172751661.a n = A211603 (n + 2)

end A211603

/-! ## A211603.P4525959663239701488

`A004736(n+1)!*A074909(A007401(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A211603

/-- `A004736(n+1)!*A074909(A007401(n+1))` -/
def P4525959663239701488.Spec : Prop :=
  ∀ n, P4525959663239701488.a n = A211603 (n + 2)

theorem P4525959663239701488.correct : P4525959663239701488.Spec := by
  intro n
  simp only [A211603, Nat.add_sub_cancel]

end A211603

/-! ## A211603.P10237114616243443659

`A074909(A007401(n+1))*A166350(A038722(n+1))`
-/

namespace A211603.P10237114616243443659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A007401 (n + 1)).toNat * A166350 (A038722 (n + 1)).toNat

end

end A211603.P10237114616243443659

namespace A211603

/-- `A074909(A007401(n+1))*A166350(A038722(n+1))` -/
def P10237114616243443659.Spec : Prop :=
  ∀ n, P10237114616243443659.a n = A211603 (n + 2)

end A211603

/-! ## A211603.P11027014230060508320

`A004736(n+1)*A074909(A007401(n+1))*A119502(n)`
-/

namespace A211603.P11027014230060508320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A074909 (A007401 (n + 1)).toNat * A119502 n

end

end A211603.P11027014230060508320

namespace A211603

/-- `A004736(n+1)*A074909(A007401(n+1))*A119502(n)` -/
def P11027014230060508320.Spec : Prop :=
  ∀ n, P11027014230060508320.a n = A211603 (n + 2)

end A211603

/-! ## A211603.P12712305270779620532

`A003057(n+2)!/A137948(A007401(n+1))`
-/

namespace A211603.P12712305270779620532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003057 (n + 2)).toNat : ℚ) / (A137948 (A007401 (n + 1)).toNat : ℚ)

end

end A211603.P12712305270779620532

namespace A211603

/-- `A003057(n+2)!/A137948(A007401(n+1))` -/
def P12712305270779620532.Spec : Prop :=
  ∀ n, P12712305270779620532.a n = (A211603 (n + 2) : ℚ)

end A211603

/-! ## A211603.P17137734151784080690

`A385577(A380649(n+1))`
-/

namespace A211603.P17137734151784080690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385577 (A380649 (n + 1)).toNat

end

end A211603.P17137734151784080690

namespace A211603

/-- `A385577(A380649(n+1))` -/
def P17137734151784080690.Spec : Prop :=
  ∀ n, P17137734151784080690.a n = A211603 (n + 2)

end A211603

/-! ## A211603.P13177342715279951144

`(A193971(n)-A074909(n))*A119502(n)`
-/

namespace A211603.P13177342715279951144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193971 n - A074909 n) * A119502 n

end

end A211603.P13177342715279951144

namespace A211603

/-- `(A193971(n)-A074909(n))*A119502(n)` -/
def P13177342715279951144.Spec : Prop :=
  ∀ n, P13177342715279951144.a n = A211603 (n + 2)

end A211603

/-! ## A211603.P17730332116992136800

`(A193971(n)-A074909(n))*A025581(n)!`
-/

namespace A211603.P17730332116992136800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193971 n - A074909 n) * (Nat.factorial (A025581 n).toNat : ℤ)

end

end A211603.P17730332116992136800

namespace A211603

/-- `(A193971(n)-A074909(n))*A025581(n)!` -/
def P17730332116992136800.Spec : Prop :=
  ∀ n, P17730332116992136800.a n = A211603 (n + 2)

end A211603

/-! ## A211603.P5722875932457234170

`A092271(comp[∑[n]])`
-/

namespace A211603.P5722875932457234170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092271 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A211603.P5722875932457234170

namespace A211603

/-- `A092271(comp[∑[n]])` -/
def P5722875932457234170.Spec : Prop :=
  ∀ n, P5722875932457234170.a n = A211603 (n + 2)

end A211603

/-!
# A211604: a(n) = A073711(2^n-1) for n>=0.

The programs for A211604, there is no canonical definition to state claims against.
-/

/-! ## A211604.P4157760043467905728

`A073711(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A211604.P4157760043467905728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073711 (2 ^ n - 1)

end

end A211604.P4157760043467905728

/-! ## A211604.P10033842831930619578

`A073712(A011782(n)-1)`
-/

namespace A211604.P10033842831930619578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073712 (A011782 n - 1).toNat

end

end A211604.P10033842831930619578

/-! ## A211604.P16535565491603509718

`gcd(A000038(n), A073711(A000225(n)))`
-/

namespace A211604.P16535565491603509718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073711 (A000225 n).toNat)

end

end A211604.P16535565491603509718

/-! ## A211604.P3990098210549807606

`lcm(A057077(n), A073711(A000225(n)))`
-/

namespace A211604.P3990098210549807606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A073711 (A000225 n).toNat)

end

end A211604.P3990098210549807606

/-! ## A211604.P1346448125605315430

`or(A000007(n), A073711(A000225(n)))`
-/

namespace A211604.P1346448125605315430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A073711 (A000225 n).toNat)

end

end A211604.P1346448125605315430

/-!
# A211606: Total number of inversions over all involutions of length n.

The programs for A211606, the canonical program `A211606.P14225185372203886213` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211606 has offset 0).

The definition of A211606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211606.P14225185372203886213

`a(n-1)+(n-1)*a(n-2)+A000085(n-2)*(n-1)²` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211606

/-- `a(n-1)+(n-1)*a(n-2)+A000085(n-2)*(n-1)²` -/
def P14225185372203886213.Spec : Prop :=
  ∀ n, P14225185372203886213.a n = A211606 n

theorem P14225185372203886213.correct : P14225185372203886213.Spec := by
  intro n
  simp only [A211606]

end A211606

/-! ## A211606.P2652092118131342133

`A165477(A000312(n)-A206226(n))`
-/

namespace A211606.P2652092118131342133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A000312 n - A206226 n).toNat

end

end A211606.P2652092118131342133

namespace A211606

/-- `A165477(A000312(n)-A206226(n))` -/
def P2652092118131342133.Spec : Prop :=
  ∀ n, P2652092118131342133.a n = A211606 n

end A211606

/-! ## A211606.P504825394298073271

`A192455(n)-A281007(A001844(n))`
-/

namespace A211606.P504825394298073271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192455 n - A281007 (A001844 n).toNat

end

end A211606.P504825394298073271

namespace A211606

/-- `A192455(n)-A281007(A001844(n))` -/
def P504825394298073271.Spec : Prop :=
  ∀ n, P504825394298073271.a n = A211606 n

end A211606

/-!
# A211608: Triangle T(n,k), 0 <= k <= n, given by (0, 1, 0, 2, 0, 3, 0, 4, 0, 5, ...) DELTA (1, 2, 3, 4, 5, 6, 7, 8, 9, ...) where DELTA is the operator defined in A084938.

The programs for A211608, there is no canonical definition to state claims against.
-/

/-! ## A211608.P17121753702573316972

`A001147(A002262(n))*A048993(n)`
-/

namespace A211608.P17121753702573316972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A002262 n).toNat * A048993 n

end

end A211608.P17121753702573316972

/-! ## A211608.P6507620438292917519

`A001147(A144328(n+1))*A048993(n)`
-/

namespace A211608.P6507620438292917519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A144328 (n + 1)).toNat * A048993 n

end

end A211608.P6507620438292917519

/-! ## A211608.P5680138116304695750

`A211402(n)/A130321(n)`
-/

namespace A211608.P5680138116304695750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211402 n : ℚ) / (A130321 n : ℚ)

end

end A211608.P5680138116304695750

/-! ## A211608.P14768335812243787340

`A211402(n)/sqrt(A262616(n))`
-/

namespace A211608.P14768335812243787340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A211402 n : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A211608.P14768335812243787340

/-! ## A211608.P9493131000681608183

`A211402(n)/A057728(n+1)`
-/

namespace A211608.P9493131000681608183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211402 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A211608.P9493131000681608183

/-! ## A211608.P6762248033323561796

`A211402(n)/Δ[A023758(n+1)]`
-/

namespace A211608.P6762248033323561796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211402 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A211608.P6762248033323561796

/-! ## A211608.P7300841011384942486

`A001147(A130270(n+1))*A048993(n)`
-/

namespace A211608.P7300841011384942486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A130270 (n + 1)).toNat * A048993 n

end

end A211608.P7300841011384942486

/-!
# A211609: 12 times the total number of smallest parts in all partitions of n, with a(0) = 0.

The programs for A211609, there is no canonical definition to state claims against.
-/

/-! ## A211609.P7338966658047868186

`A220481(n)-A183011(n)`
-/

namespace A211609.P7338966658047868186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220481 n - A183011 n

end

end A211609.P7338966658047868186

/-! ## A211609.P8915863583749905646

`12*(A006128(n)-A182984(n))`
-/

namespace A211609.P8915863583749905646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A006128 n - A182984 n)

end

end A211609.P8915863583749905646

/-! ## A211609.P4624492217071627845

`A220481(round(sqrt(n²+1)))%A183011(n)`
-/

namespace A211609.P4624492217071627845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220481 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A183011 n)

end

end A211609.P4624492217071627845

/-! ## A211609.P13739013795400524405

`A220481(n)-(24*n-1)*A000041(n)`
-/

namespace A211609.P13739013795400524405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220481 n - ((24 * n : ℤ) - 1) * A000041 n

end

end A211609.P13739013795400524405

/-! ## A211609.P17213251103865446030

`A220481(n)-A000041(n)*A183010(n)`
-/

namespace A211609.P17213251103865446030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220481 n - A000041 n * A183010 n

end

end A211609.P17213251103865446030

/-!
# A211612: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+x+y>=0.

The programs for A211612, the canonical program `A211612.P11399790217341165351` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211612 has offset 0).

The definition of A211612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211612.P11399790217341165351

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=35, a(3)=117`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211612

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11399790217341165351.Spec : Prop :=
  ∀ n, P11399790217341165351.a n = A211612 n

theorem P11399790217341165351.correct : P11399790217341165351.Spec := by
  intro n
  simp only [A211612]

end A211612

/-! ## A211612.P16293345763917467526

`∑[n*(12*n-9)]+n`
-/

namespace A211612.P16293345763917467526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((12 * n : ℤ) - 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A211612.P16293345763917467526

namespace A211612

/-- `∑[n*(12*n-9)]+n` -/
def P16293345763917467526.Spec : Prop :=
  ∀ n, P16293345763917467526.a n = A211612 n

end A211612

/-! ## A211612.P10776519995520012048

`∑[A288918(n+1)+n]`
-/

namespace A211612.P10776519995520012048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288918 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P10776519995520012048

namespace A211612

/-- `∑[A288918(n+1)+n]` -/
def P10776519995520012048.Spec : Prop :=
  ∀ n, P10776519995520012048.a n = A211612 n

end A211612

/-! ## A211612.P4778859247838347624

`∑[A152767(n)+A057427(n)]`
-/

namespace A211612.P4778859247838347624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P4778859247838347624

namespace A211612

/-- `∑[A152767(n)+A057427(n)]` -/
def P4778859247838347624.Spec : Prop :=
  ∀ n, P4778859247838347624.a n = A211612 n

end A211612

/-! ## A211612.P17880635332980362735

`∑[A033578(n)-A004277(n)]`
-/

namespace A211612.P17880635332980362735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033578 n - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P17880635332980362735

namespace A211612

/-- `∑[A033578(n)-A004277(n)]` -/
def P17880635332980362735.Spec : Prop :=
  ∀ n, P17880635332980362735.a n = A211612 n

end A211612

/-! ## A211612.P14847659059648489347

`∑[A185212(n)-A028310(n)]`
-/

namespace A211612.P14847659059648489347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P14847659059648489347

namespace A211612

/-- `∑[A185212(n)-A028310(n)]` -/
def P14847659059648489347.Spec : Prop :=
  ∀ n, P14847659059648489347.a n = A211612 n

end A211612

/-! ## A211612.P13667721739603652711

`∑[A139272(n)+A004273(n)²]`
-/

namespace A211612.P13667721739603652711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n + A004273 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P13667721739603652711

namespace A211612

/-- `∑[A139272(n)+A004273(n)²]` -/
def P13667721739603652711.Spec : Prop :=
  ∀ n, P13667721739603652711.a n = A211612 n

end A211612

/-! ## A211612.P1408300849136702668

`∑[A005914(n)+1-A017185(n)]`
-/

namespace A211612.P1408300849136702668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n + (1 - A017185 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P1408300849136702668

namespace A211612

/-- `∑[A005914(n)+1-A017185(n)]` -/
def P1408300849136702668.Spec : Prop :=
  ∀ n, P1408300849136702668.a n = A211612 n

end A211612

/-! ## A211612.P13898488800528612971

`∑[A010011(n)-A069131(n+1)]`
-/

namespace A211612.P13898488800528612971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010011 n - A069131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P13898488800528612971

namespace A211612

/-- `∑[A010011(n)-A069131(n+1)]` -/
def P13898488800528612971.Spec : Prop :=
  ∀ n, P13898488800528612971.a n = A211612 n

end A211612

/-! ## A211612.P17756544981505941478

`∑[n-(A004273(n)-A153794(n))]`
-/

namespace A211612.P17756544981505941478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A004273 n - A153794 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P17756544981505941478

namespace A211612

/-- `∑[n-(A004273(n)-A153794(n))]` -/
def P17756544981505941478.Spec : Prop :=
  ∀ n, P17756544981505941478.a n = A211612 n

end A211612

/-! ## A211612.P2666338768845252602

`∑[A178334(A178334(n))+A152767(n)]`
-/

namespace A211612.P2666338768845252602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat + A152767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P2666338768845252602

namespace A211612

/-- `∑[A178334(A178334(n))+A152767(n)]` -/
def P2666338768845252602.Spec : Prop :=
  ∀ n, P2666338768845252602.a n = A211612 n

end A211612

/-! ## A211612.P4933955418978925699

`Δ[n²²-A007586(n)]`
-/

namespace A211612.P4933955418978925699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A007586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211612.P4933955418978925699

namespace A211612

/-- `Δ[n²²-A007586(n)]` -/
def P4933955418978925699.Spec : Prop :=
  ∀ n, P4933955418978925699.a n = A211612 n

end A211612

/-! ## A211612.P13384241323794019085

`∑[A056109(A008486(n)-(n+1))-(n+1)]`
-/

namespace A211612.P13384241323794019085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (A008486 n - (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P13384241323794019085

namespace A211612

/-- `∑[A056109(A008486(n)-(n+1))-(n+1)]` -/
def P13384241323794019085.Spec : Prop :=
  ∀ n, P13384241323794019085.a n = A211612 n

end A211612

/-! ## A211612.P15219069320589531223

`∑[A033578(n)-(n+1)-log2(A011782(n))]`
-/

namespace A211612.P15219069320589531223
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033578 n - (n + 1 : ℤ) : ℝ) - Real.logb 2 (A011782 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211612.P15219069320589531223

namespace A211612

/-- `∑[A033578(n)-(n+1)-log2(A011782(n))]` -/
def P15219069320589531223.Spec : Prop :=
  ∀ n, P15219069320589531223.a n = (A211612 n : ℝ)

end A211612

/-!
# A211613: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+x+y>1.

The programs for A211613, the canonical program `A211613.P8741136128969728567` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211613 has offset 0).

The definition of A211613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211613.P8741136128969728567

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=20, a(3)=78, a(4)=199`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211613

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8741136128969728567.Spec : Prop :=
  ∀ n, P8741136128969728567.a n = A211613 n

theorem P8741136128969728567.correct : P8741136128969728567.Spec := by
  intro n
  simp only [A211613]

end A211613

/-! ## A211613.P6226263964212269213

`A172229(n+1)-A060354(n)`
-/

namespace A211613.P6226263964212269213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172229 (n + 1) - A060354 n

end

end A211613.P6226263964212269213

namespace A211613

/-- `A172229(n+1)-A060354(n)` -/
def P6226263964212269213.Spec : Prop :=
  ∀ n, P6226263964212269213.a n = A211613 n

theorem P6226263964212269213.correct : P6226263964212269213.Spec := by
  intro n
  simp only [A211613, Nat.add_sub_cancel, A211613.P6226263964212269213.a, A211613.P8741136128969728567.a, A060354, A060354.P5541652509067826457.a, A172229, A172229.P6406971379391401100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211613

/-! ## A211613.P1701565314860051843

`A004273(n)+A289721(n)-A005897(n)-A060354(n)`
-/

namespace A211613.P1701565314860051843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A289721 n - A005897 n) - A060354 n

end

end A211613.P1701565314860051843

namespace A211613

/-- `A004273(n)+A289721(n)-A005897(n)-A060354(n)` -/
def P1701565314860051843.Spec : Prop :=
  ∀ n, P1701565314860051843.a n = A211613 n

end A211613

/-! ## A211613.P11560193603423485450

`A135503(A004275(n))+A051869(n)`
-/

namespace A211613.P11560193603423485450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 (A004275 n).toNat + A051869 n

end

end A211613.P11560193603423485450

namespace A211613

/-- `A135503(A004275(n))+A051869(n)` -/
def P11560193603423485450.Spec : Prop :=
  ∀ n, P11560193603423485450.a n = A211613 n

end A211613

/-! ## A211613.P9690552551693404190

`A006004(A004277(n))-A133263(n)`
-/

namespace A211613.P9690552551693404190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006004 (A004277 n).toNat - A133263 n

end

end A211613.P9690552551693404190

namespace A211613

/-- `A006004(A004277(n))-A133263(n)` -/
def P9690552551693404190.Spec : Prop :=
  ∀ n, P9690552551693404190.a n = A211613 n

end A211613

/-! ## A211613.P14430518656557603433

`A014681(2*n)+A289721(n)-A005897(n)-A060354(n)`
-/

namespace A211613.P14430518656557603433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n) + (A289721 n - A005897 n) - A060354 n

end

end A211613.P14430518656557603433

namespace A211613

/-- `A014681(2*n)+A289721(n)-A005897(n)-A060354(n)` -/
def P14430518656557603433.Spec : Prop :=
  ∀ n, P14430518656557603433.a n = A211613 n

end A211613

/-! ## A211613.P5451143067105266093

`A000096(A000567(n))/A028310(n)-A060354(n)`
-/

namespace A211613.P5451143067105266093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A000567 n).toNat : ℚ) / (A028310 n : ℚ) - (A060354 n : ℚ)

end

end A211613.P5451143067105266093

namespace A211613

/-- `A000096(A000567(n))/A028310(n)-A060354(n)` -/
def P5451143067105266093.Spec : Prop :=
  ∀ n, P5451143067105266093.a n = (A211613 n : ℚ)

end A211613

/-! ## A211613.P4487329149346194048

`A028552(A000567(n))/A004277(n)-A060354(n)`
-/

namespace A211613.P4487329149346194048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028552 (A000567 n).toNat : ℚ) / (A004277 n : ℚ) - (A060354 n : ℚ)

end

end A211613.P4487329149346194048

namespace A211613

/-- `A028552(A000567(n))/A004277(n)-A060354(n)` -/
def P4487329149346194048.Spec : Prop :=
  ∀ n, P4487329149346194048.a n = (A211613 n : ℚ)

end A211613

/-!
# A211614: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+x+y>2.

The programs for A211614, the canonical program `A211614.P8550430552568640412` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211614 has offset 0).

The definition of A211614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211614.P8550430552568640412

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=57, a(4)=160, a(5)=344`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211614

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8550430552568640412.Spec : Prop :=
  ∀ n, P8550430552568640412.a n = A211614 n

theorem P8550430552568640412.correct : P8550430552568640412.Spec := by
  intro n
  simp only [A211614]

end A211614

/-! ## A211614.P11551260170039068053

`record[(a(n-1)-(-1)^n*a(n-2))!]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=57, a(4)=160, a(5)=344, a(6)=1, a(7)=2`
-/

namespace A211614.P11551260170039068053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 11, 57, 160, 344, 1, 2] fun n f1 =>
  Nat.factorial ((f1 (n - 1) : ℤ) - (-1) ^ n * (f1 (n - 2) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211614.P11551260170039068053

namespace A211614

/-- `record[(a(n-1)-(-1)^n*a(n-2))!]` -/
def P11551260170039068053.Spec : Prop :=
  ∀ n, (P11551260170039068053.a n : ℤ) = A211614 n

end A211614

/-!
# A211615: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and -1<=w+x+y<=1.

The programs for A211615, the canonical program `A211615.P9811869213534508973` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211615 has offset 0).

The definition of A211615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211615.P9811869213534508973

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=6, a(2)=24, a(3)=60`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211615

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9811869213534508973.Spec : Prop :=
  ∀ n, P9811869213534508973.a n = A211615 n

theorem P9811869213534508973.correct : P9811869213534508973.Spec := by
  intro n
  simp only [A211615]

end A211615

/-! ## A211615.P14992196368171689203

`∑[a(n-1)+18]` with `a(0)=0, a(1)=6, a(2)=18`
-/

namespace A211615.P14992196368171689203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 18] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211615.P14992196368171689203

namespace A211615

/-- `∑[a(n-1)+18]` -/
def P14992196368171689203.Spec : Prop :=
  ∀ n, (P14992196368171689203.a n : ℤ) = A211615 n

end A211615

/-! ## A211615.P18383281734992479560

`∑[ogf((6x+6x^2+6x^3)/(1-2x+x^2))]`
-/

namespace A211615.P18383281734992479560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 6, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211615.P18383281734992479560

namespace A211615

/-- `∑[ogf((6x+6x^2+6x^3)/(1-2x+x^2))]` -/
def P18383281734992479560.Spec : Prop :=
  ∀ n, P18383281734992479560.a n = A211615 n

end A211615

/-! ## A211615.P17950770528936955355

`ogf((6x+6x^2+6x^3)/(1-3x+3x^2-x^3))`
-/

namespace A211615.P17950770528936955355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 6, 6] [1, -3, 3, -1] n

end

end A211615.P17950770528936955355

namespace A211615

/-- `ogf((6x+6x^2+6x^3)/(1-3x+3x^2-x^3))` -/
def P17950770528936955355.Spec : Prop :=
  ∀ n, P17950770528936955355.a n = A211615 n

end A211615

/-! ## A211615.P15239682893197860722

`3*(Δ[abs((1-n)^3)]+1)`
-/

namespace A211615.P15239682893197860722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n + 1)

end

end A211615.P15239682893197860722

namespace A211615

/-- `3*(Δ[abs((1-n)^3)]+1)` -/
def P15239682893197860722.Spec : Prop :=
  ∀ n, P15239682893197860722.a n = A211615 n

end A211615

/-! ## A211615.P14946720663585969042

`∑[record[(gcd(2, n)+1)*3*n]]`
-/

namespace A211615.P14946720663585969042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1) * (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211615.P14946720663585969042

namespace A211615

/-- `∑[record[(gcd(2, n)+1)*3*n]]` -/
def P14946720663585969042.Spec : Prop :=
  ∀ n, (P14946720663585969042.a n : ℤ) = A211615 n

end A211615

/-! ## A211615.P14104851520341570551

`∑[record[3*(n+1)*n%3]]`
-/

namespace A211615.P14104851520341570551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * (n % 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211615.P14104851520341570551

namespace A211615

/-- `∑[record[3*(n+1)*n%3]]` -/
def P14104851520341570551.Spec : Prop :=
  ∀ n, (P14104851520341570551.a n : ℤ) = A211615 n

end A211615

/-! ## A211615.P17123150091286953398

`∑[record[(3-and(1, n))*3*n]]`
-/

namespace A211615.P17123150091286953398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.land 1 n : ℤ)) * (3 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211615.P17123150091286953398

namespace A211615

/-- `∑[record[(3-and(1, n))*3*n]]` -/
def P17123150091286953398.Spec : Prop :=
  ∀ n, P17123150091286953398.a n = A211615 n

end A211615

/-! ## A211615.P2356447447288478425

`∑[record[3*n*A020639(3*(n+1))]]`
-/

namespace A211615.P2356447447288478425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * A020639 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211615.P2356447447288478425

namespace A211615

/-- `∑[record[3*n*A020639(3*(n+1))]]` -/
def P2356447447288478425.Spec : Prop :=
  ∀ n, P2356447447288478425.a n = A211615 n

end A211615

/-! ## A211615.P11998750423493253654

`A277991(n)%A158463(n)`
-/

namespace A211615.P11998750423493253654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277991 n) (A158463 n)

end

end A211615.P11998750423493253654

namespace A211615

/-- `A277991(n)%A158463(n)` -/
def P11998750423493253654.Spec : Prop :=
  ∀ n, P11998750423493253654.a n = A211615 n

end A211615

/-! ## A211615.P1393043458222903709

`∑[3*record[n*A020639(A267352(n))]]`
-/

namespace A211615.P1393043458222903709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020639 (A267352 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211615.P1393043458222903709

namespace A211615

/-- `∑[3*record[n*A020639(A267352(n))]]` -/
def P1393043458222903709.Spec : Prop :=
  ∀ n, P1393043458222903709.a n = A211615 n

end A211615

/-! ## A211615.P4048676619025208312

`(3*n)²-A296515(3*n)`
-/

namespace A211615.P4048676619025208312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - A296515 (3 * n)

end

end A211615.P4048676619025208312

namespace A211615

/-- `(3*n)²-A296515(3*n)` -/
def P4048676619025208312.Spec : Prop :=
  ∀ n, P4048676619025208312.a n = A211615 n

end A211615

/-! ## A211615.P11010504618389705535

`record[A168237(A008611(n))²-A168237(n)]`
-/

namespace A211615.P11010504618389705535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 (A008611 n).toNat ^ 2 - A168237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211615.P11010504618389705535

namespace A211615

/-- `record[A168237(A008611(n))²-A168237(n)]` -/
def P11010504618389705535.Spec : Prop :=
  ∀ n, P11010504618389705535.a n = A211615 n

end A211615

/-!
# A211616: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and -2<=w+x+y<=2.

The programs for A211616, the canonical program `A211616.P5157180686415550785` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211616 has offset 0).

The definition of A211616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211616.P5157180686415550785

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=6, a(2)=42, a(3)=102, a(4)=192`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211616

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5157180686415550785.Spec : Prop :=
  ∀ n, P5157180686415550785.a n = A211616 n

theorem P5157180686415550785.correct : P5157180686415550785.Spec := by
  intro n
  simp only [A211616]

end A211616

/-! ## A211616.P12385463767043517212

`6*(A005476(n)-A004275(n))`
-/

namespace A211616.P12385463767043517212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A005476 n - A004275 n)

end

end A211616.P12385463767043517212

namespace A211616

/-- `6*(A005476(n)-A004275(n))` -/
def P12385463767043517212.Spec : Prop :=
  ∀ n, P12385463767043517212.a n = A211616 n

end A211616

/-! ## A211616.P4710107064156577350

`6*(A000566(n)-A289207(n))`
-/

namespace A211616.P4710107064156577350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000566 n - A289207 n)

end

end A211616.P4710107064156577350

namespace A211616

/-- `6*(A000566(n)-A289207(n))` -/
def P4710107064156577350.Spec : Prop :=
  ∀ n, P4710107064156577350.a n = A211616 n

end A211616

/-! ## A211616.P190935412079407755

`3*(A118403(n)+A002939(n)-1)`
-/

namespace A211616.P190935412079407755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A118403 n + A002939 n - 1)

end

end A211616.P190935412079407755

namespace A211616

/-- `3*(A118403(n)+A002939(n)-1)` -/
def P190935412079407755.Spec : Prop :=
  ∀ n, P190935412079407755.a n = A211616 n

end A211616

/-! ## A211616.P14408104390844212840

`6*(A000566(n)-(A004275(n)-n))`
-/

namespace A211616.P14408104390844212840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000566 n - (A004275 n - (n : ℤ)))

end

end A211616.P14408104390844212840

namespace A211616

/-- `6*(A000566(n)-(A004275(n)-n))` -/
def P14408104390844212840.Spec : Prop :=
  ∀ n, P14408104390844212840.a n = A211616 n

end A211616

/-! ## A211616.P7825909321613762842

`∑[A315951(6*n+1)]-A315951(6*n+1)`
-/

namespace A211616.P7825909321613762842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315951 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A315951 (6 * n + 1)

end

end A211616.P7825909321613762842

namespace A211616

/-- `∑[A315951(6*n+1)]-A315951(6*n+1)` -/
def P7825909321613762842.Spec : Prop :=
  ∀ n, P7825909321613762842.a n = A211616 n

end A211616

/-! ## A211616.P5144482358101589555

`lcm(3, A005843(A000566(n)-A289207(n)))`
-/

namespace A211616.P5144482358101589555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A005843 (A000566 n - A289207 n).toNat)

end

end A211616.P5144482358101589555

namespace A211616

/-- `lcm(3, A005843(A000566(n)-A289207(n)))` -/
def P5144482358101589555.Spec : Prop :=
  ∀ n, (P5144482358101589555.a n : ℤ) = A211616 n

end A211616

/-!
# A211617: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and 2w+x+y>0.

The programs for A211617, the canonical program `A211617.P7146532692905464385` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211617 has offset 0).

The definition of A211617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211617.P7146532692905464385

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=30, a(3)=101, a(4)=244`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211617

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P7146532692905464385.Spec : Prop :=
  ∀ n, P7146532692905464385.a n = A211617 n

theorem P7146532692905464385.correct : P7146532692905464385.Spec := by
  intro n
  simp only [A211617]

end A211617

/-! ## A211617.P16932905593505918773

`A035328(n)-A137932(n)`
-/

namespace A211617.P16932905593505918773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035328 n - A137932 n

end

end A211617.P16932905593505918773

namespace A211617

/-- `A035328(n)-A137932(n)` -/
def P16932905593505918773.Spec : Prop :=
  ∀ n, P16932905593505918773.a n = A211617 n

end A211617

/-! ## A211617.P6812174642706420646

`∑[A211620(n)]+n*A000384(n)`
-/

namespace A211617.P6812174642706420646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A000384 n

end

end A211617.P6812174642706420646

namespace A211617

/-- `∑[A211620(n)]+n*A000384(n)` -/
def P6812174642706420646.Spec : Prop :=
  ∀ n, P6812174642706420646.a n = A211617 n

end A211617

/-! ## A211617.P11887062657633706031

`n*A054556(n+1)-A000035(n)`
-/

namespace A211617.P11887062657633706031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054556 (n + 1) - A000035 n

end

end A211617.P11887062657633706031

namespace A211617

/-- `n*A054556(n+1)-A000035(n)` -/
def P11887062657633706031.Spec : Prop :=
  ∀ n, P11887062657633706031.a n = A211617 n

end A211617

/-! ## A211617.P11067067442088101908

`A117642(n)+A323724(n)+A323723(n)`
-/

namespace A211617.P11067067442088101908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + (A323724 n + A323723 n)

end

end A211617.P11067067442088101908

namespace A211617

/-- `A117642(n)+A323724(n)+A323723(n)` -/
def P11067067442088101908.Spec : Prop :=
  ∀ n, P11067067442088101908.a n = A211617 n

end A211617

/-! ## A211617.P11220850298361766041

`A137932(n+1)+n*A054554(n+1)`
-/

namespace A211617.P11220850298361766041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 (n + 1) + (n : ℤ) * A054554 (n + 1)

end

end A211617.P11220850298361766041

namespace A211617

/-- `A137932(n+1)+n*A054554(n+1)` -/
def P11220850298361766041.Spec : Prop :=
  ∀ n, P11220850298361766041.a n = A211617 n

end A211617

/-! ## A211617.P11513747984155957933

`A137932(n+1)+n*A002061(2*n)`
-/

namespace A211617.P11513747984155957933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 (n + 1) + (n : ℤ) * A002061 (2 * n)

end

end A211617.P11513747984155957933

namespace A211617

/-- `A137932(n+1)+n*A002061(2*n)` -/
def P11513747984155957933.Spec : Prop :=
  ∀ n, P11513747984155957933.a n = A211617 n

end A211617

/-! ## A211617.P991380787885178317

`A006003(2*n)-2*A001971(2*n)`
-/

namespace A211617.P991380787885178317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n) - 2 * A001971 (2 * n)

end

end A211617.P991380787885178317

namespace A211617

/-- `A006003(2*n)-2*A001971(2*n)` -/
def P991380787885178317.Spec : Prop :=
  ∀ n, P991380787885178317.a n = A211617 n

end A211617

/-! ## A211617.P16997343012078360689

`n*A002522(2*n)-A137224(2*n)`
-/

namespace A211617.P16997343012078360689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002522 (2 * n) - A137224 (2 * n)

end

end A211617.P16997343012078360689

namespace A211617

/-- `n*A002522(2*n)-A137224(2*n)` -/
def P16997343012078360689.Spec : Prop :=
  ∀ n, P16997343012078360689.a n = A211617 n

end A211617

/-! ## A211617.P11070913738307850171

`A004524(2*n)+n*A011848(4*n)`
-/

namespace A211617.P11070913738307850171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * n) + (n : ℤ) * A011848 (4 * n)

end

end A211617.P11070913738307850171

namespace A211617

/-- `A004524(2*n)+n*A011848(4*n)` -/
def P11070913738307850171.Spec : Prop :=
  ∀ n, P11070913738307850171.a n = A211617 n

end A211617

/-!
# A211618: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and 2w+x+y>1.

The programs for A211618, the canonical program `A211618.P10449553199355551222` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211618 has offset 0).

The definition of A211618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211618.P10449553199355551222

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=24, a(3)=89, a(4)=218, a(5)=439`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211618

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P10449553199355551222.Spec : Prop :=
  ∀ n, P10449553199355551222.a n = A211618 n

theorem P10449553199355551222.correct : P10449553199355551222.Spec := by
  intro n
  simp only [A211618]

end A211618

/-! ## A211618.P4209742210597580095

`n*(2*n)²-(A056106(n)-A053438(n))`
-/

namespace A211618.P4209742210597580095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) ^ 2 : ℤ) - (A056106 n - A053438 n)

end

end A211618.P4209742210597580095

namespace A211618

/-- `n*(2*n)²-(A056106(n)-A053438(n))` -/
def P4209742210597580095.Spec : Prop :=
  ∀ n, P4209742210597580095.a n = A211618 n

end A211618

/-! ## A211618.P14501362660726926600

`record[A047229(n+1)-A232599(n)]`
-/

namespace A211618.P14501362660726926600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) - A232599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211618.P14501362660726926600

namespace A211618

/-- `record[A047229(n+1)-A232599(n)]` -/
def P14501362660726926600.Spec : Prop :=
  ∀ n, P14501362660726926600.a n = A211618 n

end A211618

/-! ## A211618.P16078699331779335185

`record[lcm(3, n)-n]-A232599(A004273(n))`
-/

namespace A211618.P16078699331779335185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A232599 (A004273 n).toNat

end

end A211618.P16078699331779335185

namespace A211618

/-- `record[lcm(3, n)-n]-A232599(A004273(n))` -/
def P16078699331779335185.Spec : Prop :=
  ∀ n, P16078699331779335185.a n = A211618 n

end A211618

/-! ## A211618.P13985910233141621705

`record[A011934(A006369(n))+A005843(n)]`
-/

namespace A211618.P13985910233141621705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 (A006369 n).toNat + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211618.P13985910233141621705

namespace A211618

/-- `record[A011934(A006369(n))+A005843(n)]` -/
def P13985910233141621705.Spec : Prop :=
  ∀ n, P13985910233141621705.a n = A211618 n

end A211618

/-! ## A211618.P13783679453547218794

`A220693(A054552(n))+n*A054552(n)`
-/

namespace A211618.P13783679453547218794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (A054552 n).toNat + (n : ℤ) * A054552 n

end

end A211618.P13783679453547218794

namespace A211618

/-- `A220693(A054552(n))+n*A054552(n)` -/
def P13783679453547218794.Spec : Prop :=
  ∀ n, P13783679453547218794.a n = A211618 n

end A211618

/-!
# A211619: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and 2w+x+y>2.

The programs for A211619, the canonical program `A211619.P11838958685937937567` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211619 has offset 0).

The definition of A211619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211619.P11838958685937937567

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=73, a(4)=192, a(5)=395, a(6)=710`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211619

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P11838958685937937567.Spec : Prop :=
  ∀ n, P11838958685937937567.a n = A211619 n

theorem P11838958685937937567.correct : P11838958685937937567.Spec := by
  intro n
  simp only [A211619]

end A211619

/-!
# A211620: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and -1<=2w+x+y<=1.

The programs for A211620, the canonical program `A211620.P13915887092387642325` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211620 has offset 0).

The definition of A211620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211620.P13915887092387642325

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=16, a(3)=38, a(4)=76`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211620

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P13915887092387642325.Spec : Prop :=
  ∀ n, P13915887092387642325.a n = A211620 n

theorem P13915887092387642325.correct : P13915887092387642325.Spec := by
  intro n
  simp only [A211620]

end A211620

/-! ## A211620.P7388712027583618152

`2*(A211623(n)-n²)`
-/

namespace A211620.P7388712027583618152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211623 n - (n ^ 2 : ℤ))

end

end A211620.P7388712027583618152

namespace A211620

/-- `2*(A211623(n)-n²)` -/
def P7388712027583618152.Spec : Prop :=
  ∀ n, P7388712027583618152.a n = A211620 n

end A211620

/-! ## A211620.P87963403082292513

`2*(A056106(n)-A053438(n))`
-/

namespace A211620.P87963403082292513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056106 n - A053438 n)

end

end A211620.P87963403082292513

namespace A211620

/-- `2*(A056106(n)-A053438(n))` -/
def P87963403082292513.Spec : Prop :=
  ∀ n, P87963403082292513.a n = A211620 n

end A211620

/-! ## A211620.P8212272154692800729

`A000384(2*n)-A327479(2*n+1)`
-/

namespace A211620.P8212272154692800729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (2 * n) - A327479 (2 * n + 1)

end

end A211620.P8212272154692800729

namespace A211620

/-- `A000384(2*n)-A327479(2*n+1)` -/
def P8212272154692800729.Spec : Prop :=
  ∀ n, P8212272154692800729.a n = A211620 n

end A211620

/-! ## A211620.P5831479861801311772

`A094159(n)-record[A100050(n)]`
-/

namespace A211620.P5831479861801311772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211620.P5831479861801311772

namespace A211620

/-- `A094159(n)-record[A100050(n)]` -/
def P5831479861801311772.Spec : Prop :=
  ∀ n, P5831479861801311772.a n = A211620 n

end A211620

/-! ## A211620.P13539251535481336296

`∑[record[and(2, n)*A051724(n)]]`
-/

namespace A211620.P13539251535481336296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) * A051724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211620.P13539251535481336296

namespace A211620

/-- `∑[record[and(2, n)*A051724(n)]]` -/
def P13539251535481336296.Spec : Prop :=
  ∀ n, P13539251535481336296.a n = A211620 n

end A211620

/-! ## A211620.P6662226065735487166

`∑[record[A064680(A319280(n+1))]]`
-/

namespace A211620.P6662226065735487166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A319280 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211620.P6662226065735487166

namespace A211620

/-- `∑[record[A064680(A319280(n+1))]]` -/
def P6662226065735487166.Spec : Prop :=
  ∀ n, P6662226065735487166.a n = A211620 n

end A211620

/-! ## A211620.P5261720524472496351

`∑[record[A051176(A130824(2*n))]]`
-/

namespace A211620.P5261720524472496351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A130824 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211620.P5261720524472496351

namespace A211620

/-- `∑[record[A051176(A130824(2*n))]]` -/
def P5261720524472496351.Spec : Prop :=
  ∀ n, P5261720524472496351.a n = A211620 n

end A211620

/-! ## A211620.P9545947757728779132

`A047270(A005893(n)+1-n)-A047270(n+2)`
-/

namespace A211620.P9545947757728779132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (A005893 n + (1 - (n : ℤ))).toNat - A047270 (n + 2)

end

end A211620.P9545947757728779132

namespace A211620

/-- `A047270(A005893(n)+1-n)-A047270(n+2)` -/
def P9545947757728779132.Spec : Prop :=
  ∀ n, P9545947757728779132.a n = A211620 n

end A211620

/-! ## A211620.P323448387409772897

`A005843(A211623(n)-n²)`
-/

namespace A211620.P323448387409772897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211623 n - (n ^ 2 : ℤ)).toNat

end

end A211620.P323448387409772897

namespace A211620

/-- `A005843(A211623(n)-n²)` -/
def P323448387409772897.Spec : Prop :=
  ∀ n, P323448387409772897.a n = A211620 n

end A211620

/-!
# A211621: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+2x+3y>0.

The programs for A211621, the canonical program `A211621.P9938191828697601469` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211621 has offset 0).

The definition of A211621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211621.P9938191828697601469

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=3, a(2)=29, a(3)=103, a(4)=247, a(5)=484, a(6)=843`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211621

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P9938191828697601469.Spec : Prop :=
  ∀ n, P9938191828697601469.a n = A211621 n

theorem P9938191828697601469.correct : P9938191828697601469.Spec := by
  intro n
  simp only [A211621]

end A211621

/-! ## A211621.P5148293935072697619

`A211628(n)-A110654(n)`
-/

namespace A211621.P5148293935072697619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211628 n - A110654 n

end

end A211621.P5148293935072697619

namespace A211621

/-- `A211628(n)-A110654(n)` -/
def P5148293935072697619.Spec : Prop :=
  ∀ n, P5148293935072697619.a n = A211621 n

theorem P5148293935072697619.correct : P5148293935072697619.Spec := by
  intro n
  simp only [A211621, Nat.add_sub_cancel, A211621.P5148293935072697619.a, A211621.P9938191828697601469.a, A110654, A110654.P360289776162656549.a, A211628, A211628.P10410439621426040313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211621

/-! ## A211621.P16261095931984398457

`A211628(n)-∑[A000035(n)]`
-/

namespace A211621.P16261095931984398457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211628 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211621.P16261095931984398457

namespace A211621

/-- `A211628(n)-∑[A000035(n)]` -/
def P16261095931984398457.Spec : Prop :=
  ∀ n, P16261095931984398457.a n = A211621 n

end A211621

/-! ## A211621.P15038352520005096243

`A002620(n)+A211628(n)-A002620(n+1)`
-/

namespace A211621.P15038352520005096243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A211628 n - A002620 (n + 1))

end

end A211621.P15038352520005096243

namespace A211621

/-- `A002620(n)+A211628(n)-A002620(n+1)` -/
def P15038352520005096243.Spec : Prop :=
  ∀ n, P15038352520005096243.a n = A211621 n

end A211621

/-! ## A211621.P4521373641741182733

`A000982(n+1)+A211628(n)-A000217(n+1)`
-/

namespace A211621.P4521373641741182733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + (A211628 n - A000217 (n + 1))

end

end A211621.P4521373641741182733

namespace A211621

/-- `A000982(n+1)+A211628(n)-A000217(n+1)` -/
def P4521373641741182733.Spec : Prop :=
  ∀ n, P4521373641741182733.a n = A211621 n

end A211621

/-! ## A211621.P8329444471458146300

`A211628(n)-A008624(A053438(n))`
-/

namespace A211621.P8329444471458146300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211628 n - A008624 (A053438 n).toNat

end

end A211621.P8329444471458146300

namespace A211621

/-- `A211628(n)-A008624(A053438(n))` -/
def P8329444471458146300.Spec : Prop :=
  ∀ n, P8329444471458146300.a n = A211621 n

end A211621

/-! ## A211621.P12154295795093061459

`A211628(n)-A008624(2*n+1)`
-/

namespace A211621.P12154295795093061459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211628 n - A008624 (2 * n + 1)

end

end A211621.P12154295795093061459

namespace A211621

/-- `A211628(n)-A008624(2*n+1)` -/
def P12154295795093061459.Spec : Prop :=
  ∀ n, P12154295795093061459.a n = A211621 n

end A211621

/-! ## A211621.P7974471701467926767

`A211628(n)-A008615(A016777(n))`
-/

namespace A211621.P7974471701467926767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211628 n - A008615 (A016777 n).toNat

end

end A211621.P7974471701467926767

namespace A211621

/-- `A211628(n)-A008615(A016777(n))` -/
def P7974471701467926767.Spec : Prop :=
  ∀ n, P7974471701467926767.a n = A211621 n

end A211621

/-!
# A211622: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+2x+3y>1.

The programs for A211622, the canonical program `A211622.P15489418735609233498` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211622 has offset 0).

The definition of A211622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211622.P15489418735609233498

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=26, a(3)=94, a(4)=229, a(5)=457`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211622

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P15489418735609233498.Spec : Prop :=
  ∀ n, P15489418735609233498.a n = A211622 n

theorem P15489418735609233498.correct : P15489418735609233498.Spec := by
  intro n
  simp only [A211622]

end A211622

/-! ## A211622.P1180965207957455357

`A140106(n+1)+n*A054554(n+1)`
-/

namespace A211622.P1180965207957455357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) + (n : ℤ) * A054554 (n + 1)

end

end A211622.P1180965207957455357

namespace A211622

/-- `A140106(n+1)+n*A054554(n+1)` -/
def P1180965207957455357.Spec : Prop :=
  ∀ n, P1180965207957455357.a n = A211622 n

end A211622

/-! ## A211622.P1601650159732391814

`A004273(n)*(2*n²+1)-A004526(n)`
-/

namespace A211622.P1601650159732391814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * (2 * n ^ 2 + 1 : ℤ) - A004526 n

end

end A211622.P1601650159732391814

namespace A211622

/-- `A004273(n)*(2*n²+1)-A004526(n)` -/
def P1601650159732391814.Spec : Prop :=
  ∀ n, P1601650159732391814.a n = A211622 n

end A211622

/-! ## A211622.P6085467598418179260

`(A211545(n)-A099392(n+1))*A057427(n)`
-/

namespace A211622.P6085467598418179260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211545 n - A099392 (n + 1)) * A057427 n

end

end A211622.P6085467598418179260

namespace A211622

/-- `(A211545(n)-A099392(n+1))*A057427(n)` -/
def P6085467598418179260.Spec : Prop :=
  ∀ n, P6085467598418179260.a n = A211622 n

end A211622

/-! ## A211622.P1227387493029298075

`lt[n, A130724(n)+1]+2*n*C(2*n, 2)`
-/

namespace A211622.P1227387493029298075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 * n * Nat.choose (2 * n) 2

end

end A211622.P1227387493029298075

namespace A211622

/-- `lt[n, A130724(n)+1]+2*n*C(2*n, 2)` -/
def P1227387493029298075.Spec : Prop :=
  ∀ n, (P1227387493029298075.a n : ℤ) = A211622 n

end A211622

/-! ## A211622.P4490069060056600509

`record[A006002(A006369(n))+n]`
-/

namespace A211622.P4490069060056600509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (A006369 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211622.P4490069060056600509

namespace A211622

/-- `record[A006002(A006369(n))+n]` -/
def P4490069060056600509.Spec : Prop :=
  ∀ n, P4490069060056600509.a n = A211622 n

end A211622

/-! ## A211622.P12203990193303812075

`A006000(A004273(n))-A008619(n)`
-/

namespace A211622.P12203990193303812075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 (A004273 n).toNat - A008619 n

end

end A211622.P12203990193303812075

namespace A211622

/-- `A006000(A004273(n))-A008619(n)` -/
def P12203990193303812075.Spec : Prop :=
  ∀ n, P12203990193303812075.a n = A211622 n

end A211622

/-! ## A211622.P17814005697930402211

`A218152(2*n)-A266977(n)`
-/

namespace A211622.P17814005697930402211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218152 (2 * n) - A266977 n

end

end A211622.P17814005697930402211

namespace A211622

/-- `A218152(2*n)-A266977(n)` -/
def P17814005697930402211.Spec : Prop :=
  ∀ n, P17814005697930402211.a n = A211622 n

end A211622

/-!
# A211623: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and -1<=w+2x+3y<=1.

The programs for A211623, the canonical program `A211623.P17830369151984547661` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211623 has offset 0).

The definition of A211623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211623.P17830369151984547661

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=12, a(3)=28, a(4)=54`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211623

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P17830369151984547661.Spec : Prop :=
  ∀ n, P17830369151984547661.a n = A211623 n

theorem P17830369151984547661.correct : P17830369151984547661.Spec := by
  intro n
  simp only [A211623]

end A211623

/-! ## A211623.P6150716449738883076

`n²+A211620(n)/2`
-/

namespace A211623.P6150716449738883076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A211620 n : ℚ) / 2

end

end A211623.P6150716449738883076

namespace A211623

/-- `n²+A211620(n)/2` -/
def P6150716449738883076.Spec : Prop :=
  ∀ n, P6150716449738883076.a n = (A211623 n : ℚ)

end A211623

/-! ## A211623.P8026832285559458360

`A054552(n)+(n-1)%2`
-/

namespace A211623.P8026832285559458360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n + Int.tmod ((n : ℤ) - 1) 2

end

end A211623.P8026832285559458360

namespace A211623

/-- `A054552(n)+(n-1)%2` -/
def P8026832285559458360.Spec : Prop :=
  ∀ n, P8026832285559458360.a n = A211623 n

end A211623

/-! ## A211623.P16634278741977564207

`2*(A008253(n)-∑[n+1])`
-/

namespace A211623.P16634278741977564207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008253 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A211623.P16634278741977564207

namespace A211623

/-- `2*(A008253(n)-∑[n+1])` -/
def P16634278741977564207.Spec : Prop :=
  ∀ n, P16634278741977564207.a n = A211623 n

end A211623

/-! ## A211623.P13344959882832821183

`A134451(n)+A001107(n)`
-/

namespace A211623.P13344959882832821183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n + A001107 n

end

end A211623.P13344959882832821183

namespace A211623

/-- `A134451(n)+A001107(n)` -/
def P13344959882832821183.Spec : Prop :=
  ∀ n, P13344959882832821183.a n = A211623 n

end A211623

/-! ## A211623.P1927211127742303130

`A009946(n)-A265284(n)`
-/

namespace A211623.P1927211127742303130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - A265284 n

end

end A211623.P1927211127742303130

namespace A211623

/-- `A009946(n)-A265284(n)` -/
def P1927211127742303130.Spec : Prop :=
  ∀ n, P1927211127742303130.a n = A211623 n

end A211623

/-! ## A211623.P5231046277939797498

`A054556(n+1)-A053438(n)`
-/

namespace A211623.P5231046277939797498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1) - A053438 n

end

end A211623.P5231046277939797498

namespace A211623

/-- `A054556(n+1)-A053438(n)` -/
def P5231046277939797498.Spec : Prop :=
  ∀ n, P5231046277939797498.a n = A211623 n

end A211623

/-! ## A211623.P2480601916593896360

`A386486(n)-A135528(n+1)`
-/

namespace A211623.P2480601916593896360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 n - A135528 (n + 1)

end

end A211623.P2480601916593896360

namespace A211623

/-- `A386486(n)-A135528(n+1)` -/
def P2480601916593896360.Spec : Prop :=
  ∀ n, P2480601916593896360.a n = A211623 n

end A211623

/-! ## A211623.P623089090136229136

`n²+A056106(n)-A053438(n)`
-/

namespace A211623.P623089090136229136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A056106 n - A053438 n)

end

end A211623.P623089090136229136

namespace A211623

/-- `n²+A056106(n)-A053438(n)` -/
def P623089090136229136.Spec : Prop :=
  ∀ n, P623089090136229136.a n = A211623 n

end A211623

/-! ## A211623.P3377305568707204747

`2*(∑[A047461(n+1)]-A008574(n))`
-/

namespace A211623.P3377305568707204747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A008574 n)

end

end A211623.P3377305568707204747

namespace A211623

/-- `2*(∑[A047461(n+1)]-A008574(n))` -/
def P3377305568707204747.Spec : Prop :=
  ∀ n, P3377305568707204747.a n = A211623 n

end A211623

/-! ## A211623.P9282923548573569743

`n*A047471(n+1)-A123168(n+1)`
-/

namespace A211623.P9282923548573569743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A047471 (n + 1) - A123168 (n + 1)

end

end A211623.P9282923548573569743

namespace A211623

/-- `n*A047471(n+1)-A123168(n+1)` -/
def P9282923548573569743.Spec : Prop :=
  ∀ n, P9282923548573569743.a n = A211623 n

end A211623

/-! ## A211623.P11932725898858957745

`A057427(n)+or(A001107(n), A057427(n))`
-/

namespace A211623.P11932725898858957745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + Int.lor (A001107 n) (A057427 n)

end

end A211623.P11932725898858957745

namespace A211623

/-- `A057427(n)+or(A001107(n), A057427(n))` -/
def P11932725898858957745.Spec : Prop :=
  ∀ n, P11932725898858957745.a n = A211623 n

end A211623

/-! ## A211623.P16998172613212977885

`A165900(2*n)+2-A267458(n+1)`
-/

namespace A211623.P16998172613212977885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (2 * n) + (2 - A267458 (n + 1))

end

end A211623.P16998172613212977885

namespace A211623

/-- `A165900(2*n)+2-A267458(n+1)` -/
def P16998172613212977885.Spec : Prop :=
  ∀ n, P16998172613212977885.a n = A211623 n

end A211623

/-! ## A211623.P7903669212081029486

`2*(A105343(2*n)-A032766(n+1))`
-/

namespace A211623.P7903669212081029486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105343 (2 * n) - A032766 (n + 1))

end

end A211623.P7903669212081029486

namespace A211623

/-- `2*(A105343(2*n)-A032766(n+1))` -/
def P7903669212081029486.Spec : Prop :=
  ∀ n, P7903669212081029486.a n = A211623 n

end A211623

/-! ## A211623.P4338921498131449298

`A083219(A004273(n))+A004273(n)²`
-/

namespace A211623.P4338921498131449298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A004273 n).toNat + A004273 n ^ 2

end

end A211623.P4338921498131449298

namespace A211623

/-- `A083219(A004273(n))+A004273(n)²` -/
def P4338921498131449298.Spec : Prop :=
  ∀ n, P4338921498131449298.a n = A211623 n

end A211623

/-! ## A211623.P340099813087977333

`A134451(n)+n*A004273(A004273(n))`
-/

namespace A211623.P340099813087977333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n + (n : ℤ) * A004273 (A004273 n).toNat

end

end A211623.P340099813087977333

namespace A211623

/-- `A134451(n)+n*A004273(A004273(n))` -/
def P340099813087977333.Spec : Prop :=
  ∀ n, P340099813087977333.a n = A211623 n

end A211623

/-! ## A211623.P5486395692389623933

`A063196(n+1)+A063196(A053438(n))²`
-/

namespace A211623.P5486395692389623933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) + A063196 (A053438 n).toNat ^ 2

end

end A211623.P5486395692389623933

namespace A211623

/-- `A063196(n+1)+A063196(A053438(n))²` -/
def P5486395692389623933.Spec : Prop :=
  ∀ n, P5486395692389623933.a n = A211623 n

end A211623

/-! ## A211623.P2737341407157003971

`A083219(A014681(2*n))+A014681(2*n)²`
-/

namespace A211623.P2737341407157003971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A014681 (2 * n)).toNat + A014681 (2 * n) ^ 2

end

end A211623.P2737341407157003971

namespace A211623

/-- `A083219(A014681(2*n))+A014681(2*n)²` -/
def P2737341407157003971.Spec : Prop :=
  ∀ n, P2737341407157003971.a n = A211623 n

end A211623

/-! ## A211623.P8294153408570626494

`2*(A238531(2*n)-A008619(n+1))`
-/

namespace A211623.P8294153408570626494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A238531 (2 * n) - A008619 (n + 1))

end

end A211623.P8294153408570626494

namespace A211623

/-- `2*(A238531(2*n)-A008619(n+1))` -/
def P8294153408570626494.Spec : Prop :=
  ∀ n, P8294153408570626494.a n = A211623 n

end A211623

/-! ## A211623.P12237345866978392225

`2*(A089071(2*n+1)-A008619(n+1))`
-/

namespace A211623.P12237345866978392225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089071 (2 * n + 1) - A008619 (n + 1))

end

end A211623.P12237345866978392225

namespace A211623

/-- `2*(A089071(2*n+1)-A008619(n+1))` -/
def P12237345866978392225.Spec : Prop :=
  ∀ n, P12237345866978392225.a n = A211623 n

end A211623

/-!
# A211624: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+2x+2y>0.

The programs for A211624, there is no canonical definition to state claims against.
-/

/-! ## A211624.P13656211299812128609

`(n+1)*A237112(A254784(n+1))`
-/

namespace A211624.P13656211299812128609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A237112 (A254784 (n + 1)).toNat

end

end A211624.P13656211299812128609

/-!
# A211625: Number of ordered triples (w,x,y) with all terms in {-n,...,-1,1,...,n} and w+3x+3y>0.

The programs for A211625, there is no canonical definition to state claims against.
-/

/-! ## A211625.P9244991737156790961

`A211630(n)-A103507(A007097(n))`
-/

namespace A211625.P9244991737156790961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211630 n - A103507 (A007097 n).toNat

end

end A211625.P9244991737156790961

/-! ## A211625.P3441442271579930960

`A211630(n)-A224965(A117574(n))`
-/

namespace A211625.P3441442271579930960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211630 n - A224965 (A117574 n).toNat

end

end A211625.P3441442271579930960

/-!
# A211626: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+4x+4y>0.

The programs for A211626, there is no canonical definition to state claims against.
-/

/-! ## A211626.P10623679890365443265

`or(A132440(A041410(n)), A211625(n))`
-/

namespace A211626.P10623679890365443265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132440 (A041410 n).toNat) (A211625 n)

end

end A211626.P10623679890365443265

/-! ## A211626.P5091565680764349120

`A211625(n)+A064727(∑[A041410(n)])`
-/

namespace A211626.P5091565680764349120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211625 n + A064727 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211626.P5091565680764349120

/-!
# A211627: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+5x+5y>0.

The programs for A211627, there is no canonical definition to state claims against.
-/

/-! ## A211627.P6505863919122781639

`A033430(n)-A004198(A005649(n))`
-/

namespace A211627.P6505863919122781639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n - A004198 (A005649 n).toNat

end

end A211627.P6505863919122781639

/-! ## A211627.P9574787250889509572

`A033430(n)-A351234(A325892(2*(n+1)))`
-/

namespace A211627.P9574787250889509572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n - A351234 (A325892 (2 * (n + 1))).toNat

end

end A211627.P9574787250889509572

/-!
# A211628: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and 3w+x+y>0.

The programs for A211628, the canonical program `A211628.P10410439621426040313` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211628 has offset 0).

The definition of A211628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211628.P10410439621426040313

`A211621(n)+A110654(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211628

/-- `A211621(n)+A110654(n)` -/
def P10410439621426040313.Spec : Prop :=
  ∀ n, P10410439621426040313.a n = A211628 n

theorem P10410439621426040313.correct : P10410439621426040313.Spec := by
  intro n
  simp only [A211628]

end A211628

/-! ## A211628.P7159447491571890365

`A211621(n)+abs(A001057(n))`
-/

namespace A211628.P7159447491571890365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211621 n + |A001057 n|

end

end A211628.P7159447491571890365

namespace A211628

/-- `A211621(n)+abs(A001057(n))` -/
def P7159447491571890365.Spec : Prop :=
  ∀ n, P7159447491571890365.a n = A211628 n

end A211628

/-! ## A211628.P14186193718877609188

`A211621(n)+∑[A000035(n)]`
-/

namespace A211628.P14186193718877609188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211621 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211628.P14186193718877609188

namespace A211628

/-- `A211621(n)+∑[A000035(n)]` -/
def P14186193718877609188.Spec : Prop :=
  ∀ n, P14186193718877609188.a n = A211628 n

end A211628

/-! ## A211628.P8441674033541864769

`A211621(n)+Δ[A002620(n)]`
-/

namespace A211628.P8441674033541864769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211621 n + (f1 (n + 1) - f1 n)

end

end A211628.P8441674033541864769

namespace A211628

/-- `A211621(n)+Δ[A002620(n)]` -/
def P8441674033541864769.Spec : Prop :=
  ∀ n, P8441674033541864769.a n = A211628 n

end A211628

/-! ## A211628.P3183688550170661170

`A000217(n+1)+A211621(n)-A000982(n+1)`
-/

namespace A211628.P3183688550170661170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A211621 n - A000982 (n + 1))

end

end A211628.P3183688550170661170

namespace A211628

/-- `A000217(n+1)+A211621(n)-A000982(n+1)` -/
def P3183688550170661170.Spec : Prop :=
  ∀ n, P3183688550170661170.a n = A211628 n

end A211628

/-!
# A211629: Number of ordered triples (w,x,y) with all terms in {-n, ..., -1, 1, ..., n} and 4w + x + y > 0.

The programs for A211629, there is no canonical definition to state claims against.
-/

/-! ## A211629.P7202501540434910523

`A033430(n)-A333750(A074143(n+1))`
-/

namespace A211629.P7202501540434910523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n - A333750 (A074143 (n + 1)).toNat

end

end A211629.P7202501540434910523

/-!
# A211630: Number of ordered triples (w,x,y) with all terms in {-n, ..., -1, 1, ..., n} and 5w + x + y > 0.

The programs for A211630, there is no canonical definition to state claims against.
-/

/-! ## A211630.P5870701132464790922

`A033430(n)-A354527(A002110(n))`
-/

namespace A211630.P5870701132464790922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n - A354527 (A002110 n).toNat

end

end A211630.P5870701132464790922

/-!
# A211631: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w^2>x^2+y^2.

The programs for A211631, there is no canonical definition to state claims against.
-/

/-! ## A211631.P17422253564697881038

`8*A211637(n)`
-/

namespace A211631.P17422253564697881038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A211637 n

end

end A211631.P17422253564697881038

/-! ## A211631.P6421483773544304892

`8*(n^3-A211634(n))`
-/

namespace A211631.P6421483773544304892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n ^ 3 : ℤ) - A211634 n)

end

end A211631.P6421483773544304892

/-! ## A211631.P9270483598795834298

`a(n-1)+8*A007882(n)` with `a(0)=0`
-/

namespace A211631.P9270483598795834298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 8 * A007882 n

end

end A211631.P9270483598795834298

/-! ## A211631.P3248744772530269614

`∑[8*A007882(A028310(n))]`
-/

namespace A211631.P3248744772530269614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211631.P3248744772530269614

/-! ## A211631.P14685849658116042731

`8*abs(A000578(n)-A211634(n))`
-/

namespace A211631.P14685849658116042731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * |A000578 n - A211634 n|

end

end A211631.P14685849658116042731

/-!
# A211632: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and 2w^2>x^2+y^2.

The programs for A211632, there is no canonical definition to state claims against.
-/

/-! ## A211632.P4720435568551054320

`8*A211810(round(sqrt(n²+1)))`
-/

namespace A211632.P4720435568551054320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A211810 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A211632.P4720435568551054320

/-! ## A211632.P10254790446068198591

`8*A182259(∑[char[1]+n]+1)`
-/

namespace A211632.P10254790446068198591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A182259 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211632.P10254790446068198591

/-!
# A211633: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2>2x^2+2y^2.

The programs for A211633, there is no canonical definition to state claims against.
-/

/-! ## A211633.P14589020231054728756

`A341691(Δ[Δ[A052501(n)]])`
-/

namespace A211633.P14589020231054728756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341691 (f1 (n + 1) - f1 n).toNat

end

end A211633.P14589020231054728756

/-! ## A211633.P9050871317866041272

`and(-A269687(n+1), A018395(n+1))`
-/

namespace A211633.P9050871317866041272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A269687 (n + 1)) (A018395 (n + 1))

end

end A211633.P9050871317866041272

/-! ## A211633.P13150052884451479972

`A001222(A045690(2*(n+2)))*A254128(n)`
-/

namespace A211633.P13150052884451479972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045690 (2 * (n + 2))).toNat * A254128 n

end

end A211633.P13150052884451479972

/-! ## A211633.P14130530744492023115

`and(A178748(n), A346293(A005940(3*n+2)))`
-/

namespace A211633.P14130530744492023115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178748 n) (A346293 (A005940 (3 * n + 2)).toNat)

end

end A211633.P14130530744492023115

/-!
# A211634: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2<=x^2+y^2.

The programs for A211634, the canonical program `A211634.P6971356143893170071` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211634 has offset 0).

The definition of A211634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211634.P6770516284892365204

`n^3-A211637(n)`
-/

namespace A211634.P6770516284892365204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211637 n

end

end A211634.P6770516284892365204

namespace A211634

/-- `n^3-A211637(n)` -/
def P6770516284892365204.Spec : Prop :=
  ∀ n, P6770516284892365204.a n = A211634 n

theorem P6770516284892365204.correct : P6770516284892365204.Spec := by
  intro n
  simp only [A211634, Nat.add_sub_cancel, A211634.P6770516284892365204.a, A211634.P6971356143893170071.a, A028310, A028310.P18130301328277559831.a, A063468, A063468.P15347473074005438293.f1, A063468.P15347473074005438293.a, A211635, A211635.P5977809779673859879.a, A211637, A211637.P14278206662972809609.a, A000265, A000265.P2772582252347773295.a, A092147, A092147.P10469589743159074619.a, A211636, A211636.P2652783068528798878.f1, A211636.P2652783068528798878.a, A003602, A003602.P7612175048291952394.a, A036698, A036698.P3152835247264100802.a, A256452, A256452.P9976460767317744789.a, A014200, A014200.P16970295702573526038.a, A046080, A046080.P16111352627053334427.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211634

/-! ## A211634.P10687377471703321122

`abs(A000578(n)-A211637(n))`
-/

namespace A211634.P10687377471703321122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A211637 n|

end

end A211634.P10687377471703321122

namespace A211634

/-- `abs(A000578(n)-A211637(n))` -/
def P10687377471703321122.Spec : Prop :=
  ∀ n, P10687377471703321122.a n = A211634 n

end A211634

/-! ## A211634.P8114446437467558478

`A211639(n)+A211640(n)-A211637(n)`
-/

namespace A211634.P8114446437467558478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + (A211640 n - A211637 n)

end

end A211634.P8114446437467558478

namespace A211634

/-- `A211639(n)+A211640(n)-A211637(n)` -/
def P8114446437467558478.Spec : Prop :=
  ∀ n, P8114446437467558478.a n = A211634 n

end A211634

/-! ## A211634.P2182308130102220460

`A211638(n)+A211641(n)-A211637(n)`
-/

namespace A211634.P2182308130102220460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211637 n)

end

end A211634.P2182308130102220460

namespace A211634

/-- `A211638(n)+A211641(n)-A211637(n)` -/
def P2182308130102220460.Spec : Prop :=
  ∀ n, P2182308130102220460.a n = A211634 n

end A211634

/-! ## A211634.P6971356143893170071

`A211635(n)+A063468(A028310(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A211634

/-- `A211635(n)+A063468(A028310(n))` -/
def P6971356143893170071.Spec : Prop :=
  ∀ n, P6971356143893170071.a n = A211634 n

theorem P6971356143893170071.correct : P6971356143893170071.Spec := by
  intro n
  simp only [A211634]

end A211634

/-! ## A211634.P15098146346618223009

`A211650(n)+A211651(n)-A211637(n)`
-/

namespace A211634.P15098146346618223009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211650 n + (A211651 n - A211637 n)

end

end A211634.P15098146346618223009

namespace A211634

/-- `A211650(n)+A211651(n)-A211637(n)` -/
def P15098146346618223009.Spec : Prop :=
  ∀ n, P15098146346618223009.a n = A211634 n

end A211634

/-!
# A211635: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2

The programs for A211635, the canonical program `A211635.P5977809779673859879` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211635 has offset 0).

The definition of A211635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211635.P5977809779673859879

`n^3-A211636(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A211635

/-- `n^3-A211636(n)` -/
def P5977809779673859879.Spec : Prop :=
  ∀ n, P5977809779673859879.a n = A211635 n

theorem P5977809779673859879.correct : P5977809779673859879.Spec := by
  intro n
  simp only [A211635]

end A211635

/-! ## A211635.P14499346769526362826

`abs(A000578(n)-A211636(n))`
-/

namespace A211635.P14499346769526362826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A211636 n|

end

end A211635.P14499346769526362826

namespace A211635

/-- `abs(A000578(n)-A211636(n))` -/
def P14499346769526362826.Spec : Prop :=
  ∀ n, P14499346769526362826.a n = A211635 n

end A211635

/-! ## A211635.P10300158738363125751

`A100705(n)-∑[A000603(n)]`
-/

namespace A211635.P10300158738363125751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211635.P10300158738363125751

namespace A211635

/-- `A100705(n)-∑[A000603(n)]` -/
def P10300158738363125751.Spec : Prop :=
  ∀ n, P10300158738363125751.a n = A211635 n

end A211635

/-! ## A211635.P2588717107638400739

`A211634(n)-2*A224921(n+1)`
-/

namespace A211635.P2588717107638400739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n - 2 * A224921 (n + 1)

end

end A211635.P2588717107638400739

namespace A211635

/-- `A211634(n)-2*A224921(n+1)` -/
def P2588717107638400739.Spec : Prop :=
  ∀ n, P2588717107638400739.a n = A211635 n

end A211635

/-! ## A211635.P6214750047052648489

`A211634(n)-A005843(A224921(n+1))`
-/

namespace A211635.P6214750047052648489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n - A005843 (A224921 (n + 1)).toNat

end

end A211635.P6214750047052648489

namespace A211635

/-- `A211634(n)-A005843(A224921(n+1))` -/
def P6214750047052648489.Spec : Prop :=
  ∀ n, P6214750047052648489.a n = A211635 n

end A211635

/-! ## A211635.P8319159545094422294

`A211634(n)+A211637(n)-A211636(n)`
-/

namespace A211635.P8319159545094422294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n + (A211637 n - A211636 n)

end

end A211635.P8319159545094422294

namespace A211635

/-- `A211634(n)+A211637(n)-A211636(n)` -/
def P8319159545094422294.Spec : Prop :=
  ∀ n, P8319159545094422294.a n = A211635 n

theorem P8319159545094422294.correct : P8319159545094422294.Spec := by
  intro n
  simp only [A211635, Nat.add_sub_cancel, A211635.P8319159545094422294.a, A211635.P5977809779673859879.a, A211634, A211634.P6971356143893170071.a, A211636, A211636.P2652783068528798878.f1, A211636.P2652783068528798878.a, A211637, A211637.P14278206662972809609.a, A028310, A028310.P18130301328277559831.a, A036698, A036698.P3152835247264100802.a, A063468, A063468.P15347473074005438293.f1, A063468.P15347473074005438293.a, A000265, A000265.P2772582252347773295.a, A014200, A014200.P16970295702573526038.a, A092147, A092147.P10469589743159074619.a, A003602, A003602.P7612175048291952394.a, A014198, A014198.P2354480518814049901.a, A256452, A256452.P9976460767317744789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211635

/-! ## A211635.P16646921646506821929

`A211638(n)+A211641(n)-A211636(n)`
-/

namespace A211635.P16646921646506821929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211636 n)

end

end A211635.P16646921646506821929

namespace A211635

/-- `A211638(n)+A211641(n)-A211636(n)` -/
def P16646921646506821929.Spec : Prop :=
  ∀ n, P16646921646506821929.a n = A211635 n

end A211635

/-! ## A211635.P4250100465218883496

`A211639(n)+A211640(n)-A211636(n)`
-/

namespace A211635.P4250100465218883496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + (A211640 n - A211636 n)

end

end A211635.P4250100465218883496

namespace A211635

/-- `A211639(n)+A211640(n)-A211636(n)` -/
def P4250100465218883496.Spec : Prop :=
  ∀ n, P4250100465218883496.a n = A211635 n

end A211635

/-! ## A211635.P13538934739436832011

`A211642(n)+A211645(n)-A211636(n)`
-/

namespace A211635.P13538934739436832011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211642 n + (A211645 n - A211636 n)

end

end A211635.P13538934739436832011

namespace A211635

/-- `A211642(n)+A211645(n)-A211636(n)` -/
def P13538934739436832011.Spec : Prop :=
  ∀ n, P13538934739436832011.a n = A211635 n

end A211635

/-! ## A211635.P956558273985166101

`A211643(n)+A211644(n)-A211636(n)`
-/

namespace A211635.P956558273985166101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n + (A211644 n - A211636 n)

end

end A211635.P956558273985166101

namespace A211635

/-- `A211643(n)+A211644(n)-A211636(n)` -/
def P956558273985166101.Spec : Prop :=
  ∀ n, P956558273985166101.a n = A211635 n

end A211635

/-! ## A211635.P18322080099131803936

`A211652(n)+A211653(n)-A211636(n)`
-/

namespace A211635.P18322080099131803936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211652 n + (A211653 n - A211636 n)

end

end A211635.P18322080099131803936

namespace A211635

/-- `A211652(n)+A211653(n)-A211636(n)` -/
def P18322080099131803936.Spec : Prop :=
  ∀ n, P18322080099131803936.a n = A211635 n

end A211635

/-! ## A211635.P7275732610541196898

`n^3-∑[A014200(n²)-n]`
-/

namespace A211635.P7275732610541196898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211635.P7275732610541196898

namespace A211635

/-- `n^3-∑[A014200(n²)-n]` -/
def P7275732610541196898.Spec : Prop :=
  ∀ n, P7275732610541196898.a n = A211635 n

end A211635

/-!
# A211636: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2>=x^2+y^2.

The programs for A211636, the canonical program `A211636.P2652783068528798878` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211636 has offset 0).

The definition of A211636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211636.P15580296653234436731

`∑[A119677(n)/4]`
-/

namespace A211636.P15580296653234436731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119677 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P15580296653234436731

namespace A211636

/-- `∑[A119677(n)/4]` -/
def P15580296653234436731.Spec : Prop :=
  ∀ n, P15580296653234436731.a n = (A211636 n : ℚ)

end A211636

/-! ## A211636.P2652783068528798878

`∑[A036698(n)-n]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A211636

/-- `∑[A036698(n)-n]` -/
def P2652783068528798878.Spec : Prop :=
  ∀ n, P2652783068528798878.a n = A211636 n

theorem P2652783068528798878.correct : P2652783068528798878.Spec := by
  intro n
  simp only [A211636]

end A211636

/-! ## A211636.P7895047375620024907

`∑[∑[A036694(n)]-n]`
-/

namespace A211636.P7895047375620024907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P7895047375620024907

namespace A211636

/-- `∑[∑[A036694(n)]-n]` -/
def P7895047375620024907.Spec : Prop :=
  ∀ n, P7895047375620024907.a n = A211636 n

end A211636

/-! ## A211636.P12159595367273851979

`∑[A000603(n)-Δ[n²]]`
-/

namespace A211636.P12159595367273851979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P12159595367273851979

namespace A211636

/-- `∑[A000603(n)-Δ[n²]]` -/
def P12159595367273851979.Spec : Prop :=
  ∀ n, P12159595367273851979.a n = A211636 n

theorem P12159595367273851979.correct : P12159595367273851979.Spec := by
  intro n
  simp only [A211636, Nat.add_sub_cancel, A211636.P12159595367273851979.f2, A211636.P12159595367273851979.f1, A211636.P12159595367273851979.a, A211636.P2652783068528798878.f1, A211636.P2652783068528798878.a, A000603, A000603.P17854986445594045637.a, A036698, A036698.P3152835247264100802.a, A014200, A014200.P16970295702573526038.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211636

/-! ## A211636.P10338344211355021439

`A001182(n)+a(n-1)` with `a(0)=0`
-/

namespace A211636.P10338344211355021439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001182 n + a (n - 1)

end

end A211636.P10338344211355021439

namespace A211636

/-- `A001182(n)+a(n-1)` -/
def P10338344211355021439.Spec : Prop :=
  ∀ n, P10338344211355021439.a n = A211636 n

end A211636

/-! ## A211636.P4898145795760932693

`∑[∑[A036697(n)-1]-n]`
-/

namespace A211636.P4898145795760932693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P4898145795760932693

namespace A211636

/-- `∑[∑[A036697(n)-1]-n]` -/
def P4898145795760932693.Spec : Prop :=
  ∀ n, P4898145795760932693.a n = A211636 n

end A211636

/-! ## A211636.P10309454826088742208

`∑[A001182(A028310(n))]`
-/

namespace A211636.P10309454826088742208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001182 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P10309454826088742208

namespace A211636

/-- `∑[A001182(A028310(n))]` -/
def P10309454826088742208.Spec : Prop :=
  ∀ n, P10309454826088742208.a n = A211636 n

end A211636

/-! ## A211636.P10134556485484947010

`∑[A001182(n+1)]-A001182(n+1)`
-/

namespace A211636.P10134556485484947010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001182 (n + 1)

end

end A211636.P10134556485484947010

namespace A211636

/-- `∑[A001182(n+1)]-A001182(n+1)` -/
def P10134556485484947010.Spec : Prop :=
  ∀ n, P10134556485484947010.a n = A211636 n

end A211636

/-! ## A211636.P3459943376498152604

`∑[∑[A023443(A036697(n))]-n]`
-/

namespace A211636.P3459943376498152604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036697 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P3459943376498152604

namespace A211636

/-- `∑[∑[A023443(A036697(n))]-n]` -/
def P3459943376498152604.Spec : Prop :=
  ∀ n, P3459943376498152604.a n = A211636 n

end A211636

/-! ## A211636.P13517463078760175407

`A136483(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A211636.P13517463078760175407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A136483 (2 * n) + a (n - 1)

end

end A211636.P13517463078760175407

namespace A211636

/-- `A136483(2*n)+a(n-1)` -/
def P13517463078760175407.Spec : Prop :=
  ∀ n, P13517463078760175407.a n = A211636 n

end A211636

/-! ## A211636.P402940635794493954

`∑[A136483(A004277(n))]`
-/

namespace A211636.P402940635794493954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P402940635794493954

namespace A211636

/-- `∑[A136483(A004277(n))]` -/
def P402940635794493954.Spec : Prop :=
  ∀ n, P402940635794493954.a n = A211636 n

end A211636

/-! ## A211636.P9852356355863091256

`∑[A136483(A028310(2*n))]`
-/

namespace A211636.P9852356355863091256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P9852356355863091256

namespace A211636

/-- `∑[A136483(A028310(2*n))]` -/
def P9852356355863091256.Spec : Prop :=
  ∀ n, P9852356355863091256.a n = A211636 n

end A211636

/-! ## A211636.P5704908903483794967

`∑[A136483(A028310(n)+n)]`
-/

namespace A211636.P5704908903483794967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P5704908903483794967

namespace A211636

/-- `∑[A136483(A028310(n)+n)]` -/
def P5704908903483794967.Spec : Prop :=
  ∀ n, P5704908903483794967.a n = A211636 n

end A211636

/-! ## A211636.P9087322094749724347

`∑[A136483(2*(n+1))]-A136483(2*(n+1))`
-/

namespace A211636.P9087322094749724347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A136483 (2 * (n + 1))

end

end A211636.P9087322094749724347

namespace A211636

/-- `∑[A136483(2*(n+1))]-A136483(2*(n+1))` -/
def P9087322094749724347.Spec : Prop :=
  ∀ n, P9087322094749724347.a n = A211636 n

end A211636

/-! ## A211636.P1750207098547722300

`∑[∑[A002265(A036693(n)-1)]]`
-/

namespace A211636.P1750207098547722300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036693 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P1750207098547722300

namespace A211636

/-- `∑[∑[A002265(A036693(n)-1)]]` -/
def P1750207098547722300.Spec : Prop :=
  ∀ n, P1750207098547722300.a n = A211636 n

end A211636

/-! ## A211636.P13071566829691966072

`n^3-A211635(n)`
-/

namespace A211636.P13071566829691966072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211635 n

end

end A211636.P13071566829691966072

namespace A211636

/-- `n^3-A211635(n)` -/
def P13071566829691966072.Spec : Prop :=
  ∀ n, P13071566829691966072.a n = A211636 n

theorem P13071566829691966072.correct : P13071566829691966072.Spec := by
  intro n
  simp only [A211636, Nat.add_sub_cancel, A211636.P13071566829691966072.a, A211636.P2652783068528798878.f1, A211636.P2652783068528798878.a, A036698, A036698.P3152835247264100802.a, A211635, A211635.P5977809779673859879.a, A014200, A014200.P16970295702573526038.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211636

/-! ## A211636.P15113930601185189690

`∑[A237526(n²)]`
-/

namespace A211636.P15113930601185189690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P15113930601185189690

namespace A211636

/-- `∑[A237526(n²)]` -/
def P15113930601185189690.Spec : Prop :=
  ∀ n, P15113930601185189690.a n = A211636 n

end A211636

/-! ## A211636.P10119182000343123448

`∑[A014200(n²)-n]`
-/

namespace A211636.P10119182000343123448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211636.P10119182000343123448

namespace A211636

/-- `∑[A014200(n²)-n]` -/
def P10119182000343123448.Spec : Prop :=
  ∀ n, P10119182000343123448.a n = A211636 n

end A211636

/-! ## A211636.P11671672501852495461

`A237526(n*n)+a(n-1)` with `a(0)=0`
-/

namespace A211636.P11671672501852495461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A237526 (n * n) + a (n - 1)

end

end A211636.P11671672501852495461

namespace A211636

/-- `A237526(n*n)+a(n-1)` -/
def P11671672501852495461.Spec : Prop :=
  ∀ n, P11671672501852495461.a n = A211636 n

end A211636

/-!
# A211637: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2>x^2+y^2.

The programs for A211637, the canonical program `A211637.P14278206662972809609` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211637 has offset 0).

The definition of A211637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211637.P15946202539719964943

`A007882(n)+a(n-1)` with `a(0)=0`
-/

namespace A211637.P15946202539719964943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007882 n + a (n - 1)

end

end A211637.P15946202539719964943

namespace A211637

/-- `A007882(n)+a(n-1)` -/
def P15946202539719964943.Spec : Prop :=
  ∀ n, P15946202539719964943.a n = A211637 n

end A211637

/-! ## A211637.P5580149703924659728

`∑[A007882(A028310(n))]`
-/

namespace A211637.P5580149703924659728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P5580149703924659728

namespace A211637

/-- `∑[A007882(A028310(n))]` -/
def P5580149703924659728.Spec : Prop :=
  ∀ n, P5580149703924659728.a n = A211637 n

end A211637

/-! ## A211637.P3451819579246043346

`∑[A007882(A004277(n)-n)]`
-/

namespace A211637.P3451819579246043346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P3451819579246043346

namespace A211637

/-- `∑[A007882(A004277(n)-n)]` -/
def P3451819579246043346.Spec : Prop :=
  ∀ n, P3451819579246043346.a n = A211637 n

end A211637

/-! ## A211637.P9461006894139726253

`∑[A007882(gcd(n, A008706(n)))]`
-/

namespace A211637.P9461006894139726253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P9461006894139726253

namespace A211637

/-- `∑[A007882(gcd(n, A008706(n)))]` -/
def P9461006894139726253.Spec : Prop :=
  ∀ n, P9461006894139726253.a n = A211637 n

end A211637

/-! ## A211637.P17503510595117288904

`∑[A007882(A004275(n+1)-n)]`
-/

namespace A211637.P17503510595117288904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P17503510595117288904

namespace A211637

/-- `∑[A007882(A004275(n+1)-n)]` -/
def P17503510595117288904.Spec : Prop :=
  ∀ n, P17503510595117288904.a n = A211637 n

end A211637

/-! ## A211637.P16554454674971587768

`∑[A007882(n+1)]-A007882(n+1)`
-/

namespace A211637.P16554454674971587768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007882 (n + 1)

end

end A211637.P16554454674971587768

namespace A211637

/-- `∑[A007882(n+1)]-A007882(n+1)` -/
def P16554454674971587768.Spec : Prop :=
  ∀ n, P16554454674971587768.a n = A211637 n

end A211637

/-! ## A211637.P17949193510102815626

`∑[A007882(A004525(A004277(n)))]`
-/

namespace A211637.P17949193510102815626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P17949193510102815626

namespace A211637

/-- `∑[A007882(A004525(A004277(n)))]` -/
def P17949193510102815626.Spec : Prop :=
  ∀ n, P17949193510102815626.a n = A211637 n

end A211637

/-! ## A211637.P2786045079646482598

`∑[A007882(A008619(A004273(n)))]`
-/

namespace A211637.P2786045079646482598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P2786045079646482598

namespace A211637

/-- `∑[A007882(A008619(A004273(n)))]` -/
def P2786045079646482598.Spec : Prop :=
  ∀ n, P2786045079646482598.a n = A211637 n

end A211637

/-! ## A211637.P17462399243519224678

`∑[A007882(A008619(A004275(n)))]`
-/

namespace A211637.P17462399243519224678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P17462399243519224678

namespace A211637

/-- `∑[A007882(A008619(A004275(n)))]` -/
def P17462399243519224678.Spec : Prop :=
  ∀ n, P17462399243519224678.a n = A211637 n

end A211637

/-! ## A211637.P15757005869008305803

`∑[A007882(A110657(A008574(n)))]`
-/

namespace A211637.P15757005869008305803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A110657 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P15757005869008305803

namespace A211637

/-- `∑[A007882(A110657(A008574(n)))]` -/
def P15757005869008305803.Spec : Prop :=
  ∀ n, P15757005869008305803.a n = A211637 n

end A211637

/-! ## A211637.P14278206662972809609

`n^3-A211634(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A211637

/-- `n^3-A211634(n)` -/
def P14278206662972809609.Spec : Prop :=
  ∀ n, P14278206662972809609.a n = A211637 n

theorem P14278206662972809609.correct : P14278206662972809609.Spec := by
  intro n
  simp only [A211637]

end A211637

/-! ## A211637.P12632736415038813924

`abs(A000578(n)-A211634(n))`
-/

namespace A211637.P12632736415038813924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A211634 n|

end

end A211637.P12632736415038813924

namespace A211637

/-- `abs(A000578(n)-A211634(n))` -/
def P12632736415038813924.Spec : Prop :=
  ∀ n, P12632736415038813924.a n = A211637 n

end A211637

/-! ## A211637.P347360334117705441

`∑[A007882(A007318(A000124(n)))]`
-/

namespace A211637.P347360334117705441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211637.P347360334117705441

namespace A211637

/-- `∑[A007882(A007318(A000124(n)))]` -/
def P347360334117705441.Spec : Prop :=
  ∀ n, P347360334117705441.a n = A211637 n

end A211637

/-!
# A211638: Number of ordered triples (w, x, y) with all terms in {1, ..., n} and w^2 + x^2 + y^2 < n.

The programs for A211638, there is no canonical definition to state claims against.
-/

/-! ## A211638.P14720957903046329970

`∑[A063691(abs(1-n))]`
-/

namespace A211638.P14720957903046329970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211638.P14720957903046329970

/-! ## A211638.P9361746162943323978

`A063691(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A211638.P9361746162943323978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063691 (n - 1) + a (n - 1)

end

end A211638.P9361746162943323978

/-! ## A211638.P1061729574954028688

`∑[A063691(n)]-A063691(n)`
-/

namespace A211638.P1061729574954028688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A063691 n

end

end A211638.P1061729574954028688

/-! ## A211638.P14500328498816751036

`A211639(abs(1-n))`
-/

namespace A211638.P14500328498816751036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 |1 - (n : ℤ)|.toNat

end

end A211638.P14500328498816751036

/-! ## A211638.P3950612905329859379

`(n-A171950(n+1))*A211639(A171950(n+1))`
-/

namespace A211638.P3950612905329859379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A171950 (n + 1)) * A211639 (A171950 (n + 1)).toNat

end

end A211638.P3950612905329859379

/-! ## A211638.P11986472577361411833

`A211639(n)-A063691(n)`
-/

namespace A211638.P11986472577361411833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n - A063691 n

end

end A211638.P11986472577361411833

/-! ## A211638.P17406014887086026037

`n^3-A211641(n)`
-/

namespace A211638.P17406014887086026037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211641 n

end

end A211638.P17406014887086026037

/-! ## A211638.P10935982867547205886

`∑[A211649(2*n)]-A211649(2*n)`
-/

namespace A211638.P10935982867547205886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211649 (2 * n)

end

end A211638.P10935982867547205886

/-!
# A211639: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2<=n.

The programs for A211639, there is no canonical definition to state claims against.
-/

/-! ## A211639.P8495440563714985004

`A211638(n)+A063691(n)`
-/

namespace A211639.P8495440563714985004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + A063691 n

end

end A211639.P8495440563714985004

/-! ## A211639.P3528495620747771513

`∑[A063691(n)]`
-/

namespace A211639.P3528495620747771513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211639.P3528495620747771513

/-! ## A211639.P15687911657733631870

`A211638(n+1)`
-/

namespace A211639.P15687911657733631870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (n + 1)

end

end A211639.P15687911657733631870

/-! ## A211639.P9611509859967635503

`n^3-A211640(n)`
-/

namespace A211639.P9611509859967635503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211640 n

end

end A211639.P9611509859967635503

/-! ## A211639.P9676427830350841150

`∑[A211641(n)-A211640(n)]`
-/

namespace A211639.P9676427830350841150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211641 n - A211640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211639.P9676427830350841150

/-! ## A211639.P13542742261667904048

`(n+1)^3-A211641(n+1)`
-/

namespace A211639.P13542742261667904048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A211641 (n + 1)

end

end A211639.P13542742261667904048

/-! ## A211639.P5563473659400021267

`∑[A281155(4*n)]`
-/

namespace A211639.P5563473659400021267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211639.P5563473659400021267

/-! ## A211639.P6753219810304060841

`∑[A211649(2*n)]`
-/

namespace A211639.P6753219810304060841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211639.P6753219810304060841

/-! ## A211639.P9533534033546670830

`A211649(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A211639.P9533534033546670830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A211649 (n + n) + a (n - 1)

end

end A211639.P9533534033546670830

/-! ## A211639.P17687395195163077666

`∑[A337165(∑[n]+3)]`
-/

namespace A211639.P17687395195163077666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211639.P17687395195163077666

/-!
# A211640: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2>n.

The programs for A211640, there is no canonical definition to state claims against.
-/

/-! ## A211640.P14900080320153585625

`n^3-A211639(n)`
-/

namespace A211640.P14900080320153585625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211639 n

end

end A211640.P14900080320153585625

/-! ## A211640.P3975146593696678211

`n^3-∑[A063691(n)]`
-/

namespace A211640.P3975146593696678211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211640.P3975146593696678211

/-! ## A211640.P3826508308510923875

`n^3-A211638(n+1)`
-/

namespace A211640.P3826508308510923875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211638 (n + 1)

end

end A211640.P3826508308510923875

/-! ## A211640.P11937449209687720645

`A211634(n)+A211637(n)-A211639(n)`
-/

namespace A211640.P11937449209687720645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n + (A211637 n - A211639 n)

end

end A211640.P11937449209687720645

/-! ## A211640.P16155762864112598823

`A211641(n)-A063691(n)`
-/

namespace A211640.P16155762864112598823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211641 n - A063691 n

end

end A211640.P16155762864112598823

/-! ## A211640.P14983047532461353266

`A211641(n)-Δ[A211638(n)]`
-/

namespace A211640.P14983047532461353266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211641 n - (f1 (n + 1) - f1 n)

end

end A211640.P14983047532461353266

/-! ## A211640.P7831682158466927839

`A211638(n)+A211641(n)-A211639(n)`
-/

namespace A211640.P7831682158466927839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211639 n)

end

end A211640.P7831682158466927839

/-! ## A211640.P7678465169602112965

`A211641(n)-A211649(2*n)`
-/

namespace A211640.P7678465169602112965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211641 n - A211649 (2 * n)

end

end A211640.P7678465169602112965

/-!
# A211641: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2>=n.

The programs for A211641, there is no canonical definition to state claims against.
-/

/-! ## A211641.P12861257437644541918

`n^3-A211638(n)`
-/

namespace A211641.P12861257437644541918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211638 n

end

end A211641.P12861257437644541918

/-! ## A211641.P5336134438530518673

`A211640(n)+A063691(n)`
-/

namespace A211641.P5336134438530518673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211640 n + A063691 n

end

end A211641.P5336134438530518673

/-! ## A211641.P16839612004121415578

`A211640(n)+Δ[A211638(n)]`
-/

namespace A211641.P16839612004121415578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211640 n + (f1 (n + 1) - f1 n)

end

end A211641.P16839612004121415578

/-! ## A211641.P5301877391965422586

`n^3-∑[A063691(record[A019425(n)])]`
-/

namespace A211641.P5301877391965422586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211641.P5301877391965422586

/-! ## A211641.P2180321693834350171

`A211649(2*n)+A211640(n)`
-/

namespace A211641.P2180321693834350171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (2 * n) + A211640 n

end

end A211641.P2180321693834350171

/-!
# A211642: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2

The programs for A211642, there is no canonical definition to state claims against.
-/

/-! ## A211642.P1948546863939462195

`A211638(2*n)`
-/

namespace A211642.P1948546863939462195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (2 * n)

end

end A211642.P1948546863939462195

/-! ## A211642.P7084034312814874530

`n^3-A211645(n)`
-/

namespace A211642.P7084034312814874530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211645 n

end

end A211642.P7084034312814874530

/-! ## A211642.P9486891456315464809

`A211643(n)-A211649(n)`
-/

namespace A211642.P9486891456315464809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n - A211649 n

end

end A211642.P9486891456315464809

/-! ## A211642.P9316639863054312741

`A211643(n)-A063691(2*n)`
-/

namespace A211642.P9316639863054312741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n - A063691 (2 * n)

end

end A211642.P9316639863054312741

/-! ## A211642.P10410787763722418230

`A211639(record[abs(xor(1, n-2))])`
-/

namespace A211642.P10410787763722418230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211642.P10410787763722418230

/-! ## A211642.P4500206414087817154

`A211639(comp[2*n+3]+1)`
-/

namespace A211642.P4500206414087817154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A211642.P4500206414087817154

/-! ## A211642.P8678932944156096305

`A211639(2*n)-A063691(2*n)`
-/

namespace A211642.P8678932944156096305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n) - A063691 (2 * n)

end

end A211642.P8678932944156096305

/-!
# A211643: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2<=2n.

The programs for A211643, there is no canonical definition to state claims against.
-/

/-! ## A211643.P10306670418090524317

`A211638(Δ[n²])`
-/

namespace A211643.P10306670418090524317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A211643.P10306670418090524317

/-! ## A211643.P11946843153645527179

`floor(1/acot(A211638(2*n+1)))`
-/

namespace A211643.P11946843153645527179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (A211638 (2 * n + 1) : ℝ)⌋

end

end A211643.P11946843153645527179

/-! ## A211643.P7663833866934058152

`A211638(2*n)+A063691(2*n)`
-/

namespace A211643.P7663833866934058152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (2 * n) + A063691 (2 * n)

end

end A211643.P7663833866934058152

/-! ## A211643.P5497518845561209756

`A211638(2*n+1)%A211607(n)`
-/

namespace A211643.P5497518845561209756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211638 (2 * n + 1)) (A211607 n)

end

end A211643.P5497518845561209756

/-! ## A211643.P11903314386366564941

`A211638(2*n+1)+A000007(n+1)`
-/

namespace A211643.P11903314386366564941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (2 * n + 1) + A000007 (n + 1)

end

end A211643.P11903314386366564941

/-! ## A211643.P10679174540299582007

`A211638(2*n+1)+A008437(2*n)`
-/

namespace A211643.P10679174540299582007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (2 * n + 1) + A008437 (2 * n)

end

end A211643.P10679174540299582007

/-! ## A211643.P17284128943580106044

`A211638(2*n+1)+char[A211610(n+4)]`
-/

namespace A211643.P17284128943580106044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211610 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A211643.P17284128943580106044

/-! ## A211643.P18442244381328304937

`n^3-A211644(n)`
-/

namespace A211643.P18442244381328304937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211644 n

end

end A211643.P18442244381328304937

/-! ## A211643.P13155808527085029727

`A211649(n)+A211642(n)`
-/

namespace A211643.P13155808527085029727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 n + A211642 n

end

end A211643.P13155808527085029727

/-! ## A211643.P5018837078762759958

`A211642(n)+A063691(2*n)`
-/

namespace A211643.P5018837078762759958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211642 n + A063691 (2 * n)

end

end A211643.P5018837078762759958

/-! ## A211643.P18204668784220151651

`A211639(2*n)`
-/

namespace A211643.P18204668784220151651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n)

end

end A211643.P18204668784220151651

/-!
# A211644: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2>2n.

The programs for A211644, there is no canonical definition to state claims against.
-/

/-! ## A211644.P2519031456313478667

`n^3-A211643(n)`
-/

namespace A211644.P2519031456313478667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211643 n

end

end A211644.P2519031456313478667

/-! ## A211644.P15940665939823253498

`A211645(n)-A211649(n)`
-/

namespace A211644.P15940665939823253498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211645 n - A211649 n

end

end A211644.P15940665939823253498

/-! ## A211644.P9047992407867156725

`A211645(n)-A063691(2*n)`
-/

namespace A211644.P9047992407867156725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211645 n - A063691 (2 * n)

end

end A211644.P9047992407867156725

/-! ## A211644.P10686524571294345385

`A000578(n)-A211638(2*n+1)`
-/

namespace A211644.P10686524571294345385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A211638 (2 * n + 1)

end

end A211644.P10686524571294345385

/-! ## A211644.P10951713588946236214

`n^3-(A211649(n)+A211642(n))`
-/

namespace A211644.P10951713588946236214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (A211649 n + A211642 n)

end

end A211644.P10951713588946236214

/-! ## A211644.P11973431003241703879

`A000578(n)-A211639(2*n)`
-/

namespace A211644.P11973431003241703879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A211639 (2 * n)

end

end A211644.P11973431003241703879

/-!
# A211645: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2>=2n.

The programs for A211645, there is no canonical definition to state claims against.
-/

/-! ## A211645.P18287018020601087951

`A000578(n)-A211638(2*n)`
-/

namespace A211645.P18287018020601087951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A211638 (2 * n)

end

end A211645.P18287018020601087951

/-! ## A211645.P1276943404449344418

`n^3-A211638(A005843(n))`
-/

namespace A211645.P1276943404449344418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211638 (A005843 n).toNat

end

end A211645.P1276943404449344418

/-! ## A211645.P2913451888478773193

`A211649(n)+A211644(n)`
-/

namespace A211645.P2913451888478773193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 n + A211644 n

end

end A211645.P2913451888478773193

/-! ## A211645.P12385476025470173359

`A211644(n)+A063691(2*n)`
-/

namespace A211645.P12385476025470173359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211644 n + A063691 (2 * n)

end

end A211645.P12385476025470173359

/-! ## A211645.P15361630796138266591

`n^3-A211642(n)`
-/

namespace A211645.P15361630796138266591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211642 n

end

end A211645.P15361630796138266591

/-! ## A211645.P8212904125069474293

`A211638(n)+A211641(n)-A211642(n)`
-/

namespace A211645.P8212904125069474293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211642 n)

end

end A211645.P8212904125069474293

/-!
# A211646: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2

The programs for A211646, there is no canonical definition to state claims against.
-/

/-! ## A211646.P7193355732176687569

`A211638(3*n)`
-/

namespace A211646.P7193355732176687569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (3 * n)

end

end A211646.P7193355732176687569

/-! ## A211646.P11231638412823148390

`A211647(n)-A063691(A008486(n))`
-/

namespace A211646.P11231638412823148390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 n - A063691 (A008486 n).toNat

end

end A211646.P11231638412823148390

/-! ## A211646.P13600700767522641460

`A211647(n)-A063691(A008585(n))`
-/

namespace A211646.P13600700767522641460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 n - A063691 (A008585 n).toNat

end

end A211646.P13600700767522641460

/-! ## A211646.P503877729279080244

`A211647(n)-A211648(n)`
-/

namespace A211646.P503877729279080244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 n - A211648 n

end

end A211646.P503877729279080244

/-! ## A211646.P1368733591451077627

`A211647(n)-A063691(A008594(n))`
-/

namespace A211646.P1368733591451077627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 n - A063691 (A008594 n).toNat

end

end A211646.P1368733591451077627

/-! ## A211646.P16647128598750148640

`A211639(A004273(n)+n)`
-/

namespace A211646.P16647128598750148640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (A004273 n + (n : ℤ)).toNat

end

end A211646.P16647128598750148640

/-! ## A211646.P6806447651417091435

`A211639(A004277(n)-1+n)`
-/

namespace A211646.P6806447651417091435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (A004277 n - 1 + (n : ℤ)).toNat

end

end A211646.P6806447651417091435

/-! ## A211646.P9849978184049055911

`A211639(n-(1-A004277(n)))`
-/

namespace A211646.P9849978184049055911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 ((n : ℤ) - (1 - A004277 n)).toNat

end

end A211646.P9849978184049055911

/-! ## A211646.P283454823570230144

`A211639(record[Δ[A211547(n)]]+n)`
-/

namespace A211646.P283454823570230144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A211646.P283454823570230144

/-! ## A211646.P16873187785091409852

`A211639(A171950(2*n+1)+n)`
-/

namespace A211646.P16873187785091409852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (A171950 (2 * n + 1) + (n : ℤ)).toNat

end

end A211646.P16873187785091409852

/-! ## A211646.P6899877759159772142

`A211639(A289207(2*n+1)+n)`
-/

namespace A211646.P6899877759159772142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (A289207 (2 * n + 1) + (n : ℤ)).toNat

end

end A211646.P6899877759159772142

/-! ## A211646.P15127092217691117254

`A211639(A004274(2*n+1)-n)`
-/

namespace A211646.P15127092217691117254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (A004274 (2 * n + 1) - (n : ℤ)).toNat

end

end A211646.P15127092217691117254

/-! ## A211646.P16851563815299510864

`A211639(A004280(2*n+1)-n)`
-/

namespace A211646.P16851563815299510864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (A004280 (2 * n + 1) - (n : ℤ)).toNat

end

end A211646.P16851563815299510864

/-!
# A211647: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2<=3n.

The programs for A211647, there is no canonical definition to state claims against.
-/

/-! ## A211647.P12756445979169866599

`A211638(3*n+1)`
-/

namespace A211647.P12756445979169866599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (3 * n + 1)

end

end A211647.P12756445979169866599

/-! ## A211647.P1281974424991266103

`A211646(n)+A063691(A008486(n))`
-/

namespace A211647.P1281974424991266103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211646 n + A063691 (A008486 n).toNat

end

end A211647.P1281974424991266103

/-! ## A211647.P16466654969078788823

`A211646(n)+A063691(A008585(n))`
-/

namespace A211647.P16466654969078788823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211646 n + A063691 (A008585 n).toNat

end

end A211647.P16466654969078788823

/-! ## A211647.P316445312478355472

`A211648(n)+A211646(n)`
-/

namespace A211647.P316445312478355472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211648 n + A211646 n

end

end A211647.P316445312478355472

/-! ## A211647.P8039139337069890136

`A211646(n)+A063691(A008594(n))`
-/

namespace A211647.P8039139337069890136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211646 n + A063691 (A008594 n).toNat

end

end A211647.P8039139337069890136

/-! ## A211647.P11339564120562759649

`A211639(3*n)`
-/

namespace A211647.P11339564120562759649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (3 * n)

end

end A211647.P11339564120562759649

/-!
# A211648: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2=3n.

The programs for A211648, there is no canonical definition to state claims against.
-/

/-! ## A211648.P499434810490210052

`A063691(3*n)`
-/

namespace A211648.P499434810490210052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (3 * n)

end

end A211648.P499434810490210052

/-! ## A211648.P12872003158066788204

`A211647(n)-A211646(n)`
-/

namespace A211648.P12872003158066788204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211647 n - A211646 n

end

end A211648.P12872003158066788204

/-! ## A211648.P4087319140129313636

`A063691(A008585(n))%(n+2)`
-/

namespace A211648.P4087319140129313636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063691 (A008585 n).toNat) (n + 2 : ℤ)

end

end A211648.P4087319140129313636

/-! ## A211648.P13624520240536405145

`∑{d}[A063691(A008486(n)), A000010(#)]`
-/

namespace A211648.P13624520240536405145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A211648.P13624520240536405145

/-! ## A211648.P10943169621004369470

`A063691(A008486(n))+A000007(n+1)`
-/

namespace A211648.P10943169621004369470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A008486 n).toNat + A000007 (n + 1)

end

end A211648.P10943169621004369470

/-! ## A211648.P10174910096042126303

`lcm(n-A004442(n), A063691(A008486(n)))`
-/

namespace A211648.P10174910096042126303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A004442 n) (A063691 (A008486 n).toNat)

end

end A211648.P10174910096042126303

/-! ## A211648.P1345382432111791452

`A063691(A032766(n+n))+A000007(n+1)`
-/

namespace A211648.P1345382432111791452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A032766 (n + n)).toNat + A000007 (n + 1)

end

end A211648.P1345382432111791452

/-! ## A211648.P10555692711760212590

`A063691(A008486(n))/A000010(gcd(n, n+1))`
-/

namespace A211648.P10555692711760212590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063691 (A008486 n).toNat : ℚ) / (A000010 (Nat.gcd n (n + 1)) : ℚ)

end

end A211648.P10555692711760212590

/-! ## A211648.P7395062166981452077

`A063691(A008486(n))/A001222(A224718(n+1))`
-/

namespace A211648.P7395062166981452077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063691 (A008486 n).toNat : ℚ) / (A001222 (A224718 (n + 1)).toNat : ℚ)

end

end A211648.P7395062166981452077

/-! ## A211648.P14824628242886281694

`A063691(A008594(n))%(n+2)`
-/

namespace A211648.P14824628242886281694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063691 (A008594 n).toNat) (n + 2 : ℤ)

end

end A211648.P14824628242886281694

/-! ## A211648.P15052470317061348856

`A063691(A008594(n))/(A000027(n+1)-n)`
-/

namespace A211648.P15052470317061348856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063691 (A008594 n).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A211648.P15052470317061348856

/-! ## A211648.P8901234184737627979

`A281155(12*n)`
-/

namespace A211648.P8901234184737627979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (12 * n)

end

end A211648.P8901234184737627979

/-! ## A211648.P14973235797658859105

`A211649(A174012(n))`
-/

namespace A211648.P14973235797658859105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (A174012 n).toNat

end

end A211648.P14973235797658859105

/-! ## A211648.P13878437088793940772

`A211649(6*n)`
-/

namespace A211648.P13878437088793940772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (6 * n)

end

end A211648.P13878437088793940772

/-!
# A211649: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2+x^2+y^2=2n.

The programs for A211649, there is no canonical definition to state claims against.
-/

/-! ## A211649.P4205406385367342845

`A063691(2*n)`
-/

namespace A211649.P4205406385367342845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (2 * n)

end

end A211649.P4205406385367342845

/-! ## A211649.P8865616635112811458

`A063691(A022144(n))%record[xor(1, n)]`
-/

namespace A211649.P8865616635112811458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063691 (A022144 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A211649.P8865616635112811458

/-! ## A211649.P12707385889571806038

`A211638(2*n+1)-A211638(2*n)`
-/

namespace A211649.P12707385889571806038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (2 * n + 1) - A211638 (2 * n)

end

end A211649.P12707385889571806038

/-! ## A211649.P12531623387197165600

`lcm(A002102(A063725(n)), A063691(n+n))`
-/

namespace A211649.P12531623387197165600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002102 (A063725 n).toNat) (A063691 (n + n))

end

end A211649.P12531623387197165600

/-! ## A211649.P15080261286187341997

`A211643(n)-A211638(2*n)`
-/

namespace A211649.P15080261286187341997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n - A211638 (2 * n)

end

end A211649.P15080261286187341997

/-! ## A211649.P12684531651590476709

`A211645(n)-A211644(n)`
-/

namespace A211649.P12684531651590476709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211645 n - A211644 n

end

end A211649.P12684531651590476709

/-! ## A211649.P11613913185039642180

`A211643(n)-A211642(n)`
-/

namespace A211649.P11613913185039642180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n - A211642 n

end

end A211649.P11613913185039642180

/-! ## A211649.P10401065286225908736

`A211638(2*n+1)-A211642(n)`
-/

namespace A211649.P10401065286225908736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (2 * n + 1) - A211642 n

end

end A211649.P10401065286225908736

/-! ## A211649.P6709505408299981727

`A211639(2*n)-A211638(2*n)`
-/

namespace A211649.P6709505408299981727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n) - A211638 (2 * n)

end

end A211649.P6709505408299981727

/-! ## A211649.P6436649741367530258

`A211639(2*n)-A211639(A004273(n))`
-/

namespace A211649.P6436649741367530258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n) - A211639 (A004273 n).toNat

end

end A211649.P6436649741367530258

/-! ## A211649.P4117729716883876349

`A211639(2*n)-A211639(A004274(n+1))`
-/

namespace A211649.P4117729716883876349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n) - A211639 (A004274 (n + 1)).toNat

end

end A211649.P4117729716883876349

/-! ## A211649.P1285252570495245073

`A211639(2*n)-A211639(A171950(2*n+1))`
-/

namespace A211649.P1285252570495245073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n) - A211639 (A171950 (2 * n + 1)).toNat

end

end A211649.P1285252570495245073

/-! ## A211649.P7202133836386178535

`A211639(2*n)-A211639(A289207(2*n+1))`
-/

namespace A211649.P7202133836386178535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n) - A211639 (A289207 (2 * n + 1)).toNat

end

end A211649.P7202133836386178535

/-! ## A211649.P9652250050872268740

`A211641(2*n)-A211640(2*n)`
-/

namespace A211649.P9652250050872268740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211641 (2 * n) - A211640 (2 * n)

end

end A211649.P9652250050872268740

/-! ## A211649.P5513986110392251593

`A281155(8*n)`
-/

namespace A211649.P5513986110392251593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 (8 * n)

end

end A211649.P5513986110392251593

/-! ## A211649.P15775380572179714731

`A337165(A152950(2*n+1))`
-/

namespace A211649.P15775380572179714731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A152950 (2 * n + 1)).toNat

end

end A211649.P15775380572179714731

/-! ## A211649.P10648921216504365528

`A337165(A000124(2*n)+2)`
-/

namespace A211649.P10648921216504365528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000124 (2 * n) + 2).toNat

end

end A211649.P10648921216504365528

/-!
# A211650: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^3 < x^3 + y^3.

The programs for A211650, there is no canonical definition to state claims against.
-/

/-! ## A211650.P8817638719103215868

`n^3-A211651(n)`
-/

namespace A211650.P8817638719103215868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211651 n

end

end A211650.P8817638719103215868

/-! ## A211650.P6214041130112246852

`abs(A000578(n)-A211651(n))`
-/

namespace A211650.P6214041130112246852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A211651 n|

end

end A211650.P6214041130112246852

/-! ## A211650.P13402438394011102010

`A211634(n)+A211637(n)-A211651(n)`
-/

namespace A211650.P13402438394011102010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n + (A211637 n - A211651 n)

end

end A211650.P13402438394011102010

/-! ## A211650.P12977377713338227770

`A211635(n)+A211636(n)-A211651(n)`
-/

namespace A211650.P12977377713338227770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211635 n + (A211636 n - A211651 n)

end

end A211650.P12977377713338227770

/-! ## A211650.P8254463156667437016

`A211638(n)+A211641(n)-A211651(n)`
-/

namespace A211650.P8254463156667437016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211651 n)

end

end A211650.P8254463156667437016

/-! ## A211650.P11932065428677178305

`A211639(n)+A211640(n)-A211651(n)`
-/

namespace A211650.P11932065428677178305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + (A211640 n - A211651 n)

end

end A211650.P11932065428677178305

/-! ## A211650.P1206977791097511018

`A211642(n)+A211645(n)-A211651(n)`
-/

namespace A211650.P1206977791097511018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211642 n + (A211645 n - A211651 n)

end

end A211650.P1206977791097511018

/-! ## A211650.P13575033354536309014

`A211643(n)+A211644(n)-A211651(n)`
-/

namespace A211650.P13575033354536309014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n + (A211644 n - A211651 n)

end

end A211650.P13575033354536309014

/-! ## A211650.P16855354030128705483

`(A000578(n)-A211651(n))%A016841(n)`
-/

namespace A211650.P16855354030128705483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n - A211651 n) (A016841 n)

end

end A211650.P16855354030128705483

/-! ## A211650.P5181618669550424688

`(A000578(n)-A211651(n))*A033999(n)²`
-/

namespace A211650.P5181618669550424688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - A211651 n) * A033999 n ^ 2

end

end A211650.P5181618669550424688

/-! ## A211650.P5587207949309203500

`A000007(n+1)+A000578(n)-A211651(n)`
-/

namespace A211650.P5587207949309203500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000578 n - A211651 n)

end

end A211650.P5587207949309203500

/-! ## A211650.P2053183505171211515

`val(A010702(n), 5)+A000578(n)-A211651(n)`
-/

namespace A211650.P2053183505171211515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A010702 n).toNat 5 : ℤ) + (A000578 n - A211651 n)

end

end A211650.P2053183505171211515

/-! ## A211650.P4460514315841678139

`(A000578(n)-A211651(n))*A014963(9*n+3)`
-/

namespace A211650.P4460514315841678139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - A211651 n) * A014963 (9 * n + 3)

end

end A211650.P4460514315841678139

/-! ## A211650.P11318927143539883231

`val(A001504(n+1), 3)+A000578(n)-A211651(n)`
-/

namespace A211650.P11318927143539883231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A001504 (n + 1)).toNat 3 : ℤ) + (A000578 n - A211651 n)

end

end A211650.P11318927143539883231

/-! ## A211650.P7410113000410585615

`val(A007694(n+1), 5)+A000578(n)-A211651(n)`
-/

namespace A211650.P7410113000410585615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A007694 (n + 1)).toNat 5 : ℤ) + (A000578 n - A211651 n)

end

end A211650.P7410113000410585615

/-! ## A211650.P5933725997137759365

`val(A028310(n), n+2)+A000578(n)-A211651(n)`
-/

namespace A211650.P5933725997137759365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A028310 n).toNat (n + 2) : ℤ) + (A000578 n - A211651 n)

end

end A211650.P5933725997137759365

/-! ## A211650.P455715771738144077

`val(A000027(n+1), n+2)+A000578(n)-A211651(n)`
-/

namespace A211650.P455715771738144077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000027 (n + 1)).toNat (n + 2) : ℤ) + (A000578 n - A211651 n)

end

end A211650.P455715771738144077

/-! ## A211650.P17646368935177184570

`A211652(n)+A211653(n)-A211651(n)`
-/

namespace A211650.P17646368935177184570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211652 n + (A211653 n - A211651 n)

end

end A211650.P17646368935177184570

/-!
# A211651: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^3 >= x^3 + y^3.

The programs for A211651, there is no canonical definition to state claims against.
-/

/-! ## A211651.P11748925630949897098

`n^3-A211650(n)`
-/

namespace A211651.P11748925630949897098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211650 n

end

end A211651.P11748925630949897098

/-! ## A211651.P17195484372358324250

`abs(A000578(n)-A211650(n))`
-/

namespace A211651.P17195484372358324250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A211650 n|

end

end A211651.P17195484372358324250

/-! ## A211651.P5485871155874901490

`A211634(n)+A211637(n)-A211650(n)`
-/

namespace A211651.P5485871155874901490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n + (A211637 n - A211650 n)

end

end A211651.P5485871155874901490

/-! ## A211651.P6468310145647985995

`A211635(n)+A211636(n)-A211650(n)`
-/

namespace A211651.P6468310145647985995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211635 n + (A211636 n - A211650 n)

end

end A211651.P6468310145647985995

/-! ## A211651.P17682098525172898358

`A211638(n)+A211641(n)-A211650(n)`
-/

namespace A211651.P17682098525172898358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211650 n)

end

end A211651.P17682098525172898358

/-! ## A211651.P17086476426469288396

`A211639(n)+A211640(n)-A211650(n)`
-/

namespace A211651.P17086476426469288396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + (A211640 n - A211650 n)

end

end A211651.P17086476426469288396

/-! ## A211651.P15178559304428671476

`A211642(n)+A211645(n)-A211650(n)`
-/

namespace A211651.P15178559304428671476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211642 n + (A211645 n - A211650 n)

end

end A211651.P15178559304428671476

/-! ## A211651.P811363227680580288

`A211643(n)+A211644(n)-A211650(n)`
-/

namespace A211651.P811363227680580288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n + (A211644 n - A211650 n)

end

end A211651.P811363227680580288

/-! ## A211651.P17510643286510037421

`(A000007(n)+1)*(A000578(n)-A211650(n))`
-/

namespace A211651.P17510643286510037421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * (A000578 n - A211650 n)

end

end A211651.P17510643286510037421

/-! ## A211651.P6695319637956584423

`A211652(n)+A211653(n)-A211650(n)`
-/

namespace A211651.P6695319637956584423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211652 n + (A211653 n - A211650 n)

end

end A211651.P6695319637956584423

/-!
# A211652: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^4

The programs for A211652, there is no canonical definition to state claims against.
-/

/-! ## A211652.P10972379075915861415

`n^3-A211653(n)`
-/

namespace A211652.P10972379075915861415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211653 n

end

end A211652.P10972379075915861415

/-! ## A211652.P9087542223481115865

`A211634(n)+A211637(n)-A211653(n)`
-/

namespace A211652.P9087542223481115865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n + (A211637 n - A211653 n)

end

end A211652.P9087542223481115865

/-! ## A211652.P6099828263539433233

`A211635(n)+A211636(n)-A211653(n)`
-/

namespace A211652.P6099828263539433233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211635 n + (A211636 n - A211653 n)

end

end A211652.P6099828263539433233

/-! ## A211652.P3355444650342388691

`A211638(n)+A211641(n)-A211653(n)`
-/

namespace A211652.P3355444650342388691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211653 n)

end

end A211652.P3355444650342388691

/-! ## A211652.P11476461806593726907

`A211639(n)+A211640(n)-A211653(n)`
-/

namespace A211652.P11476461806593726907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 n + (A211640 n - A211653 n)

end

end A211652.P11476461806593726907

/-! ## A211652.P13285579332378759682

`A211642(n)+A211645(n)-A211653(n)`
-/

namespace A211652.P13285579332378759682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211642 n + (A211645 n - A211653 n)

end

end A211652.P13285579332378759682

/-! ## A211652.P5658782109633680716

`A211643(n)+A211644(n)-A211653(n)`
-/

namespace A211652.P5658782109633680716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n + (A211644 n - A211653 n)

end

end A211652.P5658782109633680716

/-!
# A211653: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^4>x^4+y^4.

The programs for A211653, there is no canonical definition to state claims against.
-/

/-! ## A211653.P14841607186901617571

`n^3-A211652(n)`
-/

namespace A211653.P14841607186901617571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211652 n

end

end A211653.P14841607186901617571

/-! ## A211653.P3300638905283444441

`(n*n²)%A211652(A028310(n))`
-/

namespace A211653.P3300638905283444441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n * n ^ 2 : ℤ) (A211652 (A028310 n).toNat)

end

end A211653.P3300638905283444441

/-! ## A211653.P3691374189891454246

`A211634(n)+A211637(n)-A211652(n)`
-/

namespace A211653.P3691374189891454246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 n + (A211637 n - A211652 n)

end

end A211653.P3691374189891454246

/-! ## A211653.P16879600015745205859

`A211635(n)+A211636(n)-A211652(n)`
-/

namespace A211653.P16879600015745205859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211635 n + (A211636 n - A211652 n)

end

end A211653.P16879600015745205859

/-! ## A211653.P14698094322399083823

`A211638(n)+A211641(n)-A211652(n)`
-/

namespace A211653.P14698094322399083823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n + (A211641 n - A211652 n)

end

end A211653.P14698094322399083823

/-! ## A211653.P6467230986151887738

`A211642(n)+A211645(n)-A211652(n)`
-/

namespace A211653.P6467230986151887738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211642 n + (A211645 n - A211652 n)

end

end A211653.P6467230986151887738

/-! ## A211653.P13188546296138677431

`A211643(n)+A211644(n)-A211652(n)`
-/

namespace A211653.P13188546296138677431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211643 n + (A211644 n - A211652 n)

end

end A211653.P13188546296138677431

/-! ## A211653.P13629219122822728674

`A211650(n)+A211651(n)-A211652(n)`
-/

namespace A211653.P13629219122822728674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211650 n + (A211651 n - A211652 n)

end

end A211653.P13629219122822728674

/-!
# A211654: Primes that remain prime when their digits are sorted into nondecreasing order.

The programs for A211654, there is no canonical definition to state claims against.
-/

/-! ## A211654.P2772644952326918881

`p?[A371654(n+1)]`
-/

namespace A211654.P2772644952326918881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A211654.P2772644952326918881

/-! ## A211654.P617978012774532859

`filter[A371654(n+1), A010051(#)]`
-/

namespace A211654.P617978012774532859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A211654.P617978012774532859

/-! ## A211654.P15691514664096859119

`∩[A000040(n+1), A371654(n+1)]`
-/

namespace A211654.P15691514664096859119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P15691514664096859119

/-! ## A211654.P13805149077838498811

`∩[A008578(n+1), A371654(n+1)]`
-/

namespace A211654.P13805149077838498811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P13805149077838498811

/-! ## A211654.P12529519509075954964

`∩[A033946(n+1), A371654(n+1)]`
-/

namespace A211654.P12529519509075954964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P12529519509075954964

/-! ## A211654.P9352186148897121035

`∩[A046022(n+1), A371654(n+1)]`
-/

namespace A211654.P9352186148897121035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P9352186148897121035

/-! ## A211654.P14530132699073727837

`∩[A051948(n+1), A371654(n+1)]`
-/

namespace A211654.P14530132699073727837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P14530132699073727837

/-! ## A211654.P9212336088651560100

`∩[A053813(n+1), A371654(n+1)]`
-/

namespace A211654.P9212336088651560100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P9212336088651560100

/-! ## A211654.P4341884387827277958

`∩[A062972(n+1), A371654(n+1)]`
-/

namespace A211654.P4341884387827277958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P4341884387827277958

/-! ## A211654.P7489538125115663696

`∩[A067126(n+1), A371654(n+1)]`
-/

namespace A211654.P7489538125115663696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P7489538125115663696

/-! ## A211654.P545027466700921072

`filter[A371654(n+1), A323152(#)]`
-/

namespace A211654.P545027466700921072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A211654.P545027466700921072

/-! ## A211654.P13665186100398631143

`filter[A371654(n+1), A323153(#)]`
-/

namespace A211654.P13665186100398631143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A211654.P13665186100398631143

/-! ## A211654.P17870791513337873544

`filter[A371654(n+1), A080339(#)]`
-/

namespace A211654.P17870791513337873544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A211654.P17870791513337873544

/-! ## A211654.P14607624541080230574

`∩[A005180(n+1), A371654(n+1)]`
-/

namespace A211654.P14607624541080230574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211654.P14607624541080230574

/-!
# A211655: Down-sortable primes: Primes that are also primes after digits are sorted into decreasing order.

The programs for A211655, there is no canonical definition to state claims against.
-/

/-! ## A211655.P14100923936816698437

`p?[A371653(n+1)]`
-/

namespace A211655.P14100923936816698437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A211655.P14100923936816698437

/-! ## A211655.P3095941109816940474

`∩[A038618(n+1), A371653(n+1)]`
-/

namespace A211655.P3095941109816940474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P3095941109816940474

/-! ## A211655.P10320310151992423258

`∩[A348283(n+1), A371653(n+1)]`
-/

namespace A211655.P10320310151992423258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P10320310151992423258

/-! ## A211655.P1140278486848774596

`filter[A371653(n+1), A010051(#)]`
-/

namespace A211655.P1140278486848774596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A211655.P1140278486848774596

/-! ## A211655.P4987985026366948262

`∩[A000040(n+1), A371653(n+1)]`
-/

namespace A211655.P4987985026366948262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P4987985026366948262

/-! ## A211655.P2161119072273539294

`∩[A008578(n+1), A371653(n+1)]`
-/

namespace A211655.P2161119072273539294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P2161119072273539294

/-! ## A211655.P7113077399325032013

`∩[A046022(n+1), A371653(n+1)]`
-/

namespace A211655.P7113077399325032013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P7113077399325032013

/-! ## A211655.P15403718413276032179

`∩[A051948(n+1), A371653(n+1)]`
-/

namespace A211655.P15403718413276032179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P15403718413276032179

/-! ## A211655.P10753295239301293965

`∩[A062972(n+1), A371653(n+1)]`
-/

namespace A211655.P10753295239301293965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P10753295239301293965

/-! ## A211655.P16805773679253523032

`∩[A066050(n+1), A371653(n+1)]`
-/

namespace A211655.P16805773679253523032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P16805773679253523032

/-! ## A211655.P11525063300124046243

`∩[A067126(n+1), A371653(n+1)]`
-/

namespace A211655.P11525063300124046243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P11525063300124046243

/-! ## A211655.P16648972584238305348

`∩[A116974(n+1), A371653(n+1)]`
-/

namespace A211655.P16648972584238305348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P16648972584238305348

/-! ## A211655.P7589275230808849714

`∩[A158611(n+1), A371653(n+1)]`
-/

namespace A211655.P7589275230808849714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P7589275230808849714

/-! ## A211655.P3837784241801934465

`∩[A182986(n+1), A371653(n+1)]`
-/

namespace A211655.P3837784241801934465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P3837784241801934465

/-! ## A211655.P13206853840582285418

`∩[A283599(n+1), A371653(n+1)]`
-/

namespace A211655.P13206853840582285418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P13206853840582285418

/-! ## A211655.P4117696852867511468

`record[A000040(n+1)/A326953(n+1)]`
-/

namespace A211655.P4117696852867511468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A326953 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211655.P4117696852867511468

/-! ## A211655.P11484482524270949832

`record[(A014688(n+1)-(n+1))/A326953(n+1)]`
-/

namespace A211655.P11484482524270949832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014688 (n + 1) - (n + 1 : ℤ) : ℚ) / (A326953 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211655.P11484482524270949832

/-! ## A211655.P10053335292531228964

`filter[A371653(n+1), A351957(#)]`
-/

namespace A211655.P10053335292531228964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A211655.P10053335292531228964

/-! ## A211655.P1336732376665239933

`∩[A106843(n+1), A371653(n+1)]`
-/

namespace A211655.P1336732376665239933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211655.P1336732376665239933

/-! ## A211655.P6298352136035952120

`filter[A371653(n+1), A080339(#)]`
-/

namespace A211655.P6298352136035952120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A211655.P6298352136035952120

/-!
# A211656: Numbers k such that the value of sigma(k) is unique; sigma(k) = A000203(k) = sum of divisors of k.

The programs for A211656, there is no canonical definition to state claims against.
-/

/-! ## A211656.P2552796705084885933

`∪[A066076(n+1), A211658(n+1)]`
-/

namespace A211656.P2552796705084885933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211656.P2552796705084885933

/-! ## A211656.P419241056795830904

`record[A241479(n+1)]`
-/

namespace A211656.P419241056795830904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211656.P419241056795830904

/-! ## A211656.P17078456378351143216

`A241479(eq[n+1, A241479(n+1)]+1)`
-/

namespace A211656.P17078456378351143216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211656.P17078456378351143216

/-! ## A211656.P3042704695371586583

`eq[1, A070242(n+1)]+1`
-/

namespace A211656.P3042704695371586583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211656.P3042704695371586583

/-! ## A211656.P16232916150949884677

`lt[A325652(n+1), n+2]+1`
-/

namespace A211656.P16232916150949884677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325652 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211656.P16232916150949884677

/-! ## A211656.P10300069079114934857

`eq[n, A241479(A000038(n)+n)]`
-/

namespace A211656.P10300069079114934857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211656.P10300069079114934857

/-! ## A211656.P11973578710181019985

`record[gcd(A325651(n+1), A325652(n+1))]`
-/

namespace A211656.P11973578710181019985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325651 (n + 1)) (A325652 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211656.P11973578710181019985

/-! ## A211656.P14578517965794967016

`eq[n, A241479(A065033(2*n))]`
-/

namespace A211656.P14578517965794967016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211656.P14578517965794967016

/-! ## A211656.P8561976771872434975

`A051444(A211657(n+1))`
-/

namespace A211656.P8561976771872434975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A211657 (n + 1)).toNat

end

end A211656.P8561976771872434975

/-! ## A211656.P1640557675717785995

`A240667(A211657(n+1))%A066076(n+1)`
-/

namespace A211656.P1640557675717785995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240667 (A211657 (n + 1)).toNat) (A066076 (n + 1))

end

end A211656.P1640557675717785995

/-! ## A211656.P14423312353169358878

`A258913(A211657(n+1))%A234257(n+1)`
-/

namespace A211656.P14423312353169358878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258913 (A211657 (n + 1)).toNat) (A234257 (n + 1))

end

end A211656.P14423312353169358878

/-! ## A211656.P6969286718963483368

`A258913(2*A211657(n+1)-A211657(n+1))`
-/

namespace A211656.P6969286718963483368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (2 * A211657 (n + 1) - A211657 (n + 1)).toNat

end

end A211656.P6969286718963483368

/-! ## A211656.P3775617550049758472

`A240667(A211657(n+1)+A146076(2*n+5))`
-/

namespace A211656.P3775617550049758472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A211657 (n + 1) + A146076 (2 * n + 5)).toNat

end

end A211656.P3775617550049758472

/-! ## A211656.P16727636746873837354

`A258913(A211657(n+1)+A146076(2*n+5))`
-/

namespace A211656.P16727636746873837354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A211657 (n + 1) + A146076 (2 * n + 5)).toNat

end

end A211656.P16727636746873837354

/-! ## A211656.P6667277714668087942

`record[A240667(A000203(n+1))]`
-/

namespace A211656.P6667277714668087942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211656.P6667277714668087942

/-! ## A211656.P17166608411227147442

`record[A325653(n+1)/(A325653(n+1)-n)]`
-/

namespace A211656.P17166608411227147442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325653 (n + 1) : ℚ) / (A325653 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211656.P17166608411227147442

/-!
# A211657: Sigma(k) of numbers k such that value of sigma(k) is unique; sigma(k) = A000203(k) = sum of divisors of k.

The programs for A211657, there is no canonical definition to state claims against.
-/

/-! ## A211657.P16833362978303837912

`∑{d}[A211656(n+1), #]`
-/

namespace A211657.P16833362978303837912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A211657.P16833362978303837912

/-! ## A211657.P16343444392609092275

`A000203(A211656(n+1))`
-/

namespace A211657.P16343444392609092275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A211656 (n + 1)).toNat

end

end A211657.P16343444392609092275

/-! ## A211657.P13189643049745080446

`A000203(record[A241479(n+1)])`
-/

namespace A211657.P13189643049745080446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211657.P13189643049745080446

/-! ## A211657.P7179144631658690324

`A000203(lt[A070242(n+1), 2]+1)`
-/

namespace A211657.P7179144631658690324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A211657.P7179144631658690324

/-! ## A211657.P12182838287330574632

`A000203(record[gcd(A325651(n+1), A325652(n+1))])`
-/

namespace A211657.P12182838287330574632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325651 (n + 1)) (A325652 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A211657.P12182838287330574632

/-! ## A211657.P6043727676396333104

`A000203(record[A240667(A000203(n+1))])`
-/

namespace A211657.P6043727676396333104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211657.P6043727676396333104

/-!
# A211658: Nonprime numbers k such that value of sigma(k) is unique; sigma(k) = A000203(k) = sum of divisors of k.

The programs for A211658, there is no canonical definition to state claims against.
-/

/-! ## A211658.P4533249677103289023

`filter[A211656(n+1), A005171(#)]`
-/

namespace A211658.P4533249677103289023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A211658.P4533249677103289023

/-! ## A211658.P2833964910344371099

`record[A241479(A018252(n+1))]`
-/

namespace A211658.P2833964910344371099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211658.P2833964910344371099

/-! ## A211658.P3373661159130120035

`record[A241479(n+1)%A151800(n)]`
-/

namespace A211658.P3373661159130120035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241479 (n + 1)) (A151800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211658.P3373661159130120035

/-! ## A211658.P10844959484683918074

`∩[A018252(n+1), A211656(n+1)]`
-/

namespace A211658.P10844959484683918074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211658.P10844959484683918074

/-! ## A211658.P6492994725043463864

`∩[A141468(n+1), A211656(n+1)]`
-/

namespace A211658.P6492994725043463864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211658.P6492994725043463864

/-! ## A211658.P5137631499806486565

`A018252(eq[1, A070242(A018252(n+1))]+1)`
-/

namespace A211658.P5137631499806486565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211658.P5137631499806486565

/-! ## A211658.P6247774846691124188

`record[A288469(A241479(n+1))]`
-/

namespace A211658.P6247774846691124188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A241479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211658.P6247774846691124188

/-! ## A211658.P14930386167829189667

`record[gcd(A087652(n+1), A241479(n+1))]`
-/

namespace A211658.P14930386167829189667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087652 (n + 1)) (A241479 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211658.P14930386167829189667

/-!
# A211659: Numbers k such that k and k+1 both have unique values of sigma(k) and sigma(k+1); sigma(k) = A000203(k) = sum of divisors of k.

The programs for A211659, there is no canonical definition to state claims against.
-/

/-! ## A211659.P10413678211250721823

`∩[A211656(n+1)-1, A211656(n+1)]`
-/

namespace A211659.P10413678211250721823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211659.P10413678211250721823

/-! ## A211659.P11430835369309439467

`A211656(eq[1, A211656(n+2)-A211656(n+1)]+1)`
-/

namespace A211659.P11430835369309439467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 2) - A211656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211659.P11430835369309439467

/-! ## A211659.P113624170994331232

`record[A241479(A241479(n+1)+1)-1]`
-/

namespace A211659.P113624170994331232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A241479 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211659.P113624170994331232

/-! ## A211659.P10582703020324280414

`record[A241479(n+1)%A241479(n+2)]`
-/

namespace A211659.P10582703020324280414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241479 (n + 1)) (A241479 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211659.P10582703020324280414

/-! ## A211659.P6845541677192777313

`record[(n+1)/(A070242(n+2)*A070242(n+1))]`
-/

namespace A211659.P6845541677192777313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A070242 (n + 2) * A070242 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211659.P6845541677192777313

/-! ## A211659.P17877878907945119328

`record[A241479(A138153(A241479(n+1)))]`
-/

namespace A211659.P17877878907945119328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A138153 (A241479 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211659.P17877878907945119328

/-!
# A211660: Numbers k such that k and k+2 both have unique values of sigma(k) and sigma(k+2); sigma(k) = A000203(k) = sum of divisors of k.

The programs for A211660, there is no canonical definition to state claims against.
-/

/-! ## A211660.P16109139551847036937

`∩[A211656(n+1)-2, A211656(n+1)]`
-/

namespace A211660.P16109139551847036937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211660.P16109139551847036937

/-! ## A211660.P6044310588718068249

`record[A241479(A241479(n+1)+2)-2]`
-/

namespace A211660.P6044310588718068249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A241479 (n + 1) + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211660.P6044310588718068249

/-! ## A211660.P15323907832705519608

`record[A241479(n+1)%A241479(n+3)]`
-/

namespace A211660.P15323907832705519608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241479 (n + 1)) (A241479 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211660.P15323907832705519608

/-! ## A211660.P7205377019326643920

`eq[n, A241479(A065033(2*n))%A241479(n+2)]`
-/

namespace A211660.P7205377019326643920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241479 (A065033 (2 * n)).toNat) (A241479 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211660.P7205377019326643920

/-!
# A211661: Number of iterations log_3(log_3(log_3(...(n)...))) such that the result is < 1.

The programs for A211661, the canonical program `A211661.P8822180014420768541` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211661 has offset 1).

The definition of A211661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211661.P8822180014420768541

`floor(atan((n+1)/5)+ϕ)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211661

/-- `floor(atan((n+1)/5)+ϕ)` -/
def P8822180014420768541.Spec : Prop :=
  ∀ n, P8822180014420768541.a n = A211661 (n + 1)

theorem P8822180014420768541.correct : P8822180014420768541.Spec := by
  intro n
  simp only [A211661, Nat.add_sub_cancel]

end A211661

/-!
# A211662: Number of iterations log_3(log_3(log_3(...(n)...))) such that the result is < 2.

The programs for A211662, the canonical program `A211662.P7802929804186570073` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211662 has offset 1).

The definition of A211662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211662.P7802929804186570073

`round(atan(2*n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211662

/-- `round(atan(2*n))` -/
def P7802929804186570073.Spec : Prop :=
  ∀ n, P7802929804186570073.a n = A211662 (n + 1)

theorem P7802929804186570073.correct : P7802929804186570073.Spec := by
  intro n
  simp only [A211662, Nat.add_sub_cancel]

end A211662

/-!
# A211663: Number of iterations log(log(log(...(n)...))) such that the result is < 1.

The programs for A211663, the canonical program `A211663.P16269310869749471860` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211663 has offset 1).

The definition of A211663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211663.P16269310869749471860

`floor(log(8)^atan(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211663

/-- `floor(log(8)^atan(n))` -/
def P16269310869749471860.Spec : Prop :=
  ∀ n, P16269310869749471860.a n = A211663 (n + 1)

theorem P16269310869749471860.correct : P16269310869749471860.Spec := by
  intro n
  simp only [A211663, Nat.add_sub_cancel]

end A211663

/-!
# A211664: Number of iterations (...(log_4(log_3(log_2(n))))...) such that the result is < 1.

The programs for A211664, the canonical program `A211664.P7370379076178593489` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211664 has offset 1).

The definition of A211664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211664.P7370379076178593489

`ceil(atan(n)+γ)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211664

/-- `ceil(atan(n)+γ)` -/
def P7370379076178593489.Spec : Prop :=
  ∀ n, P7370379076178593489.a n = A211664 (n + 1)

theorem P7370379076178593489.correct : P7370379076178593489.Spec := by
  intro n
  simp only [A211664, Nat.add_sub_cancel]

end A211664

/-!
# A211665: Minimal number of iterations of log_10 applied to n until the result is < 1.

The programs for A211665, the canonical program `A211665.P1046677080408756022` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211665 has offset 1).

The definition of A211665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211665.P1046677080408756022

`round(atan(n+6))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211665

/-- `round(atan(n+6))` -/
def P1046677080408756022.Spec : Prop :=
  ∀ n, P1046677080408756022.a n = A211665 (n + 1)

theorem P1046677080408756022.correct : P1046677080408756022.Spec := by
  intro n
  simp only [A211665, Nat.add_sub_cancel]

end A211665

/-!
# A211666: Number of iterations log_10(log_10(log_10(...(n)...))) such that the result is < 2.

The programs for A211666, the canonical program `A211666.P15455762135281262174` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211666 has offset 1).

The definition of A211666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211666.P15455762135281262174

`round((2*n)^acot(13))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211666

/-- `round((2*n)^acot(13))` -/
def P15455762135281262174.Spec : Prop :=
  ∀ n, P15455762135281262174.a n = A211666 (n + 1)

theorem P15455762135281262174.correct : P15455762135281262174.Spec := by
  intro n
  simp only [A211666, Nat.add_sub_cancel]

end A211666

/-!
# A211667: 

The programs for A211667, there is no canonical definition to state claims against.
-/

/-! ## A211667.P2145449142354523516

`ceil(log2(log2(n+2)))`
-/

namespace A211667.P2145449142354523516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.logb 2 (n + 2 : ℝ))⌉

end

end A211667.P2145449142354523516

/-!
# A211668: Number of iterations sqrt(sqrt(sqrt(...(n)...))) such that the result is < 3.

The programs for A211668, the canonical program `A211668.P18263564382620072824` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211668 has offset 1).

The definition of A211668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211668.P18263564382620072824

`ceil(log2(log(n+2)/log(3)))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211668

/-- `ceil(log2(log(n+2)/log(3)))` -/
def P18263564382620072824.Spec : Prop :=
  ∀ n, P18263564382620072824.a n = A211668 (n + 1)

theorem P18263564382620072824.correct : P18263564382620072824.Spec := by
  intro n
  simp only [A211668, Nat.add_sub_cancel]

end A211668

/-! ## A211668.P14019892889033170027

`A261100(A261100(3*n+2))-2`
-/

namespace A211668.P14019892889033170027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261100 (A261100 (3 * n + 2)).toNat - 2

end

end A211668.P14019892889033170027

namespace A211668

/-- `A261100(A261100(3*n+2))-2` -/
def P14019892889033170027.Spec : Prop :=
  ∀ n, P14019892889033170027.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P5814781940562911815

`floor(sqrt(log2(A118103(n))))`
-/

namespace A211668.P5814781940562911815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.logb 2 (A118103 n : ℝ))⌋

end

end A211668.P5814781940562911815

namespace A211668

/-- `floor(sqrt(log2(A118103(n))))` -/
def P5814781940562911815.Spec : Prop :=
  ∀ n, P5814781940562911815.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P4524690342815535699

`A069010(∏[A051904(3*(n+1))]-1)`
-/

namespace A211668.P4524690342815535699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A211668.P4524690342815535699

namespace A211668

/-- `A069010(∏[A051904(3*(n+1))]-1)` -/
def P4524690342815535699.Spec : Prop :=
  ∀ n, P4524690342815535699.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P12546498806079645600

`A124767(∏[A051904(3*(n+1))]-1)`
-/

namespace A211668.P12546498806079645600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A211668.P12546498806079645600

namespace A211668

/-- `A124767(∏[A051904(3*(n+1))]-1)` -/
def P12546498806079645600.Spec : Prop :=
  ∀ n, P12546498806079645600.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P9984655243042162473

`A050252(A054804(2*n+1))-2`
-/

namespace A211668.P9984655243042162473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A054804 (2 * n + 1)).toNat - 2

end

end A211668.P9984655243042162473

namespace A211668

/-- `A050252(A054804(2*n+1))-2` -/
def P9984655243042162473.Spec : Prop :=
  ∀ n, P9984655243042162473.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P14414211649441032496

`A070939(A070939(n))-A008836(A056057(n+1))`
-/

namespace A211668.P14414211649441032496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A070939 n).toNat - A008836 (A056057 (n + 1)).toNat

end

end A211668.P14414211649441032496

namespace A211668

/-- `A070939(A070939(n))-A008836(A056057(n+1))` -/
def P14414211649441032496.Spec : Prop :=
  ∀ n, P14414211649441032496.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P17293817904873396384

`A211666(A233735(3*n+1)+A111900(n))`
-/

namespace A211668.P17293817904873396384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A233735 (3 * n + 1) + A111900 n).toNat

end

end A211668.P17293817904873396384

namespace A211668

/-- `A211666(A233735(3*n+1)+A111900(n))` -/
def P17293817904873396384.Spec : Prop :=
  ∀ n, P17293817904873396384.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P2235120205097638095

`A211666(A341794(n+3)+A233735(3*n+1))`
-/

namespace A211668.P2235120205097638095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A341794 (n + 3) + A233735 (3 * n + 1)).toNat

end

end A211668.P2235120205097638095

namespace A211668

/-- `A211666(A341794(n+3)+A233735(3*n+1))` -/
def P2235120205097638095.Spec : Prop :=
  ∀ n, P2235120205097638095.a n = A211668 (n + 1)

end A211668

/-! ## A211668.P4858011905988720943

`A324574(A090557(n+1))`
-/

namespace A211668.P4858011905988720943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324574 (A090557 (n + 1)).toNat

end

end A211668.P4858011905988720943

namespace A211668

/-- `A324574(A090557(n+1))` -/
def P4858011905988720943.Spec : Prop :=
  ∀ n, P4858011905988720943.a n = A211668 (n + 1)

end A211668

/-!
# A211669: Number of iterations f(f(f(...(n)...))) such that the result is < 2, where f(x) = cube root of x.

The programs for A211669, the canonical program `A211669.P4249814430138945522` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211669 has offset 1).

The definition of A211669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211669.P4249814430138945522

`ceil(log(∑[3^n])/(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211669

/-- `ceil(log(∑[3^n])/(n+1))` -/
def P4249814430138945522.Spec : Prop :=
  ∀ n, P4249814430138945522.a n = A211669 (n + 1)

theorem P4249814430138945522.correct : P4249814430138945522.Spec := by
  intro n
  simp only [A211669, Nat.add_sub_cancel]

end A211669

/-!
# A211670: Number of iterations (...(f_4(f_3(f_2(n))))...) such that the result is < 2, where f_j(x) := x^(1/j).

The programs for A211670, the canonical program `A211670.P4103254925830709413` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211670 has offset 1).

The definition of A211670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211670.P4103254925830709413

`ceil(atan(n)^π/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211670

/-- `ceil(atan(n)^π/2)` -/
def P4103254925830709413.Spec : Prop :=
  ∀ n, P4103254925830709413.a n = A211670 (n + 1)

theorem P4103254925830709413.correct : P4103254925830709413.Spec := by
  intro n
  simp only [A211670, Nat.add_sub_cancel]

end A211670

/-!
# A211671: Least prime p such that the polynomial x^n - x^(n-1) - ... - 1 (mod p) has n distinct zeros.

The programs for A211671, there is no canonical definition to state claims against.
-/

/-! ## A211671.P5616722818286175688

`A039634(or(4, A197667(n+1)))`
-/

namespace A211671.P5616722818286175688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (Int.lor 4 (A197667 (n + 1))).toNat

end

end A211671.P5616722818286175688

/-!
# A211673: Least prime number prime(k) such that prime(n+k) - prime(k) is a power of 2.

The programs for A211673, there is no canonical definition to state claims against.
-/

/-! ## A211673.P16426693354215706945

`A211674(n+1)-A000079(A211675(n+1))`
-/

namespace A211673.P16426693354215706945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211674 (n + 1) - A000079 (A211675 (n + 1)).toNat

end

end A211673.P16426693354215706945

/-!
# A211674: Least prime number prime(n+k) such that prime(n+k) - prime(k) is a power of 2.

The programs for A211674, there is no canonical definition to state claims against.
-/

/-! ## A211674.P1530203884378440596

`A211673(n+1)+A000079(A211675(n+1))`
-/

namespace A211674.P1530203884378440596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211673 (n + 1) + A000079 (A211675 (n + 1)).toNat

end

end A211674.P1530203884378440596

/-!
# A211675: Exponent of powers of 2 occurring in A211673.

The programs for A211675, there is no canonical definition to state claims against.
-/

/-! ## A211675.P8679647848562635919

`A001222(A211674(n+1)-A211673(n+1))`
-/

namespace A211675.P8679647848562635919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A211674 (n + 1) - A211673 (n + 1)).toNat

end

end A211675.P8679647848562635919

/-! ## A211675.P12275835924849445358

`A065770(A211674(n+1)-A211673(n+1))`
-/

namespace A211675.P12275835924849445358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A211674 (n + 1) - A211673 (n + 1)).toNat

end

end A211675.P12275835924849445358

/-! ## A211675.P7215306958791728670

`A007814(A211674(n+1)-A211673(n+1))`
-/

namespace A211675.P7215306958791728670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A211674 (n + 1) - A211673 (n + 1)).toNat

end

end A211675.P7215306958791728670

/-! ## A211675.P5837737940034207180

`A056239(A211674(n+1)-A211673(n+1))`
-/

namespace A211675.P5837737940034207180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A211674 (n + 1) - A211673 (n + 1)).toNat

end

end A211675.P5837737940034207180

/-! ## A211675.P17735577094408406265

`A064097(A211674(n+1)-A211673(n+1))`
-/

namespace A211675.P17735577094408406265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A211674 (n + 1) - A211673 (n + 1)).toNat

end

end A211675.P17735577094408406265

/-!
# A211676: Number of n-bit numbers in A077436.

The programs for A211676, there is no canonical definition to state claims against.
-/

/-! ## A211676.P1302652283445882697

`A028310(A307825(A000045(n))+n)`
-/

namespace A211676.P1302652283445882697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A307825 (A000045 n).toNat + (n : ℤ)).toNat

end

end A211676.P1302652283445882697

/-! ## A211676.P17534623081940582335

`A088676(A193671(2*n+1)+A000837(n))-1`
-/

namespace A211676.P17534623081940582335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088676 (A193671 (2 * n + 1) + A000837 n).toNat - 1

end

end A211676.P17534623081940582335

/-!
# A211677: First number k whose value of sigma(k)/k appears n times.

The programs for A211677, there is no canonical definition to state claims against.
-/

/-! ## A211677.P7046113723596105801

`record[gcd(A144108(n), A211679(n+2))]`
-/

namespace A211677.P7046113723596105801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144108 n) (A211679 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211677.P7046113723596105801

/-!
# A211678: Twin primes p, p+2 with unique values of sigma(p) and sigma(p+2); sigma(n) = A000203(n) = sum of divisors of n.

The programs for A211678, there is no canonical definition to state claims against.
-/

/-! ## A211678.P4740194188027992078

`∪[A211767(n+1), A211769(n+1)]`
-/

namespace A211678.P4740194188027992078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211678.P4740194188027992078

/-! ## A211678.P3858067739546696627

`∪[A211769(n+1)-2, A007429(A211769(n+1)-2)]`
-/

namespace A211678.P3858067739546696627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211769 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A211769 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211678.P3858067739546696627

/-! ## A211678.P3593757007011320330

`∪[A211769(n+1)-2, A151800(A211769(n+1)-2)]`
-/

namespace A211678.P3593757007011320330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211769 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A211769 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211678.P3593757007011320330

/-! ## A211678.P484139677123254885

`∪[A211769(n+1)-2, A088580(A211769(n+1)-2)]`
-/

namespace A211678.P484139677123254885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211769 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A211769 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211678.P484139677123254885

/-!
# A211679: Triangle of earliest friendly numbers having n friends.

The programs for A211679, there is no canonical definition to state claims against.
-/

/-! ## A211679.P2987515996399538140

`A000396(A051055(n)+1)`
-/

namespace A211679.P2987515996399538140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (A051055 n + 1).toNat

end

end A211679.P2987515996399538140

/-!
# A211681: Numbers such that all the substrings of length <= 2 are primes.

The programs for A211681, the canonical program `A211681.P8959815852445496796` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211681 has offset 1).

The definition of A211681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211681.P8959815852445496796

`a(n-1)+9*a(n-4)-9*a(n-5)+10*a(n-8)-10*a(n-9)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=23, a(5)=37, a(6)=53, a(7)=73, a(8)=237`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211681

/-- `a(n-1)+9*a(n-4)-9*a(n-5)+10*a(n-8)-10*a(n-9)` -/
def P8959815852445496796.Spec : Prop :=
  ∀ n, P8959815852445496796.a n = A211681 (n + 1)

theorem P8959815852445496796.correct : P8959815852445496796.Spec := by
  intro n
  simp only [A211681, Nat.add_sub_cancel]

end A211681

/-! ## A211681.P9965287989693020893

`A000038(n)+Δ[A213299(A028310(n))]`
-/

namespace A211681.P9965287989693020893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213299 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A211681.P9965287989693020893

namespace A211681

/-- `A000038(n)+Δ[A213299(A028310(n))]` -/
def P9965287989693020893.Spec : Prop :=
  ∀ n, P9965287989693020893.a n = A211681 (n + 1)

end A211681

/-! ## A211681.P17700169645131507096

`Δ[A057427(n)*A213299(A028310(n))]`
-/

namespace A211681.P17700169645131507096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A213299 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211681.P17700169645131507096

namespace A211681

/-- `Δ[A057427(n)*A213299(A028310(n))]` -/
def P17700169645131507096.Spec : Prop :=
  ∀ n, P17700169645131507096.a n = A211681 (n + 1)

end A211681

/-! ## A211681.P10577622547925590009

`Δ[A213299(A028310(n))-A153881(n+1)]`
-/

namespace A211681.P10577622547925590009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213299 (A028310 n).toNat - A153881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211681.P10577622547925590009

namespace A211681

/-- `Δ[A213299(A028310(n))-A153881(n+1)]` -/
def P10577622547925590009.Spec : Prop :=
  ∀ n, P10577622547925590009.a n = A211681 (n + 1)

end A211681

/-! ## A211681.P16154069501561166383

`Δ[A000040(n+1)%2*A213299(A028310(n))]`
-/

namespace A211681.P16154069501561166383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A213299 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211681.P16154069501561166383

namespace A211681

/-- `Δ[A000040(n+1)%2*A213299(A028310(n))]` -/
def P16154069501561166383.Spec : Prop :=
  ∀ n, P16154069501561166383.a n = A211681 (n + 1)

end A211681

/-! ## A211681.P5762496271513395677

`A213299(n+1)+A000038(n)-A213299(A028310(n))`
-/

namespace A211681.P5762496271513395677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213299 (n + 1) + (A000038 n - A213299 (A028310 n).toNat)

end

end A211681.P5762496271513395677

namespace A211681

/-- `A213299(n+1)+A000038(n)-A213299(A028310(n))` -/
def P5762496271513395677.Spec : Prop :=
  ∀ n, P5762496271513395677.a n = A211681 (n + 1)

end A211681

/-! ## A211681.P15025275963033592581

`A213299(n+1)-A057427(n)*A213299(A028310(n))`
-/

namespace A211681.P15025275963033592581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213299 (n + 1) - A057427 n * A213299 (A028310 n).toNat

end

end A211681.P15025275963033592581

namespace A211681

/-- `A213299(n+1)-A057427(n)*A213299(A028310(n))` -/
def P15025275963033592581.Spec : Prop :=
  ∀ n, P15025275963033592581.a n = A211681 (n + 1)

end A211681

/-! ## A211681.P18192048067443451659

`Δ[A213299(A028310(n))%A126646(n)]`
-/

namespace A211681.P18192048067443451659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213299 (A028310 n).toNat) (A126646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211681.P18192048067443451659

namespace A211681

/-- `Δ[A213299(A028310(n))%A126646(n)]` -/
def P18192048067443451659.Spec : Prop :=
  ∀ n, P18192048067443451659.a n = A211681 (n + 1)

end A211681

/-!
# A211682: Prime numbers such that all the substrings of length <= 2 are primes.

The programs for A211682, there is no canonical definition to state claims against.
-/

/-! ## A211682.P4964728425379758568

`∩[A019546(n+1), A211681(n+1)]`
-/

namespace A211682.P4964728425379758568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211682.P4964728425379758568

/-! ## A211682.P13544491015482350448

`p?[A211681(n+1)]`
-/

namespace A211682.P13544491015482350448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A211682.P13544491015482350448

/-!
# A211683: Numbers > 100 such that all the substrings of length = 2 are primes.

The programs for A211683, there is no canonical definition to state claims against.
-/

/-! ## A211683.P9880078064106630458

`A004719(A345906(n+1)^A055642(n))`
-/

namespace A211683.P9880078064106630458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.roundAway ((A345906 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A211683.P9880078064106630458

/-! ## A211683.P7831145775800326844

`A004719(A345906(n+1)^A065648(n))`
-/

namespace A211683.P7831145775800326844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.roundAway ((A345906 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A211683.P7831145775800326844

/-! ## A211683.P5516811846350217207

`A004719(C(A345906(n+1), A055642(n)))`
-/

namespace A211683.P5516811846350217207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (Nat.choose (A345906 (n + 1)).toNat (A055642 n).toNat)

end

end A211683.P5516811846350217207

/-! ## A211683.P643662119848482635

`A004719(C(A345906(n+1), A065648(n)))`
-/

namespace A211683.P643662119848482635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (Nat.choose (A345906 (n + 1)).toNat (A065648 n).toNat)

end

end A211683.P643662119848482635

/-!
# A211684: Numbers > 1000 such that all the substrings of length = 3 are primes (substrings with leading '0' are considered to be nonprime).

The programs for A211684, there is no canonical definition to state claims against.
-/

/-! ## A211684.P16929953598022217510

`A345906(n+11)`
-/

namespace A211684.P16929953598022217510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345906 (n + 11)

end

end A211684.P16929953598022217510

/-!
# A211685: Prime numbers > 1000 such that all the substrings of length >= 3 are primes (substrings with leading '0' are considered to be nonprime).

The programs for A211685, there is no canonical definition to state claims against.
-/

/-! ## A211685.P13357628283415651225

`A020639(∩[A211684(n+1), A244282(n+1)])`
-/

namespace A211685.P13357628283415651225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244282 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A211685.P13357628283415651225

/-! ## A211685.P10091350376747174129

`A000010(∩[A211684(n+1), A244282(n+1)])+1`
-/

namespace A211685.P10091350376747174129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244282 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A211685.P10091350376747174129

/-! ## A211685.P477800102646120103

`∩[A211684(n+1)%A168169(3*n+2), A244282(n+1)]`
-/

namespace A211685.P477800102646120103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211684 (n + 1)) (A168169 (3 * n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211685.P477800102646120103

/-! ## A211685.P12567511315081620413

`A000015(p?[A211684(n+1)])`
-/

namespace A211685.P12567511315081620413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A211685.P12567511315081620413

/-! ## A211685.P11667352697859325900

`A000026(p?[A211684(n+1)])`
-/

namespace A211685.P11667352697859325900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A211685.P11667352697859325900

/-! ## A211685.P3860048050052822134

`A002034(p?[A211684(n+1)])`
-/

namespace A211685.P3860048050052822134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A211685.P3860048050052822134

/-! ## A211685.P15322543805840126825

`A004151(p?[A211684(n+1)])`
-/

namespace A211685.P15322543805840126825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A211685.P15322543805840126825

/-! ## A211685.P1449945322554786535

`filter[A211684(n+1), A010055(#)]`
-/

namespace A211685.P1449945322554786535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A211685.P1449945322554786535

/-! ## A211685.P18197292905101396141

`filter[A069489(n+1), A168046(#)]`
-/

namespace A211685.P18197292905101396141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A211685.P18197292905101396141

/-! ## A211685.P10019545424382350808

`filter[A211684(n+1), A080339(#)]`
-/

namespace A211685.P10019545424382350808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A211685.P10019545424382350808

/-!
# A211688: Number of -4..4 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one or three distinct values for every i<=n and j<=n.

The programs for A211688, there is no canonical definition to state claims against.
-/

/-! ## A211688.P5444763648703577398

`A211468(n+1)+A211498(n+1)-A211442(n+1)`
-/

namespace A211688.P5444763648703577398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211468 (n + 1) + (A211498 (n + 1) - A211442 (n + 1))

end

end A211688.P5444763648703577398

/-! ## A211688.P1945754181006709605

`A211468(n+1)+A211499(n+1)-A211443(n+1)`
-/

namespace A211688.P1945754181006709605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211468 (n + 1) + (A211499 (n + 1) - A211443 (n + 1))

end

end A211688.P1945754181006709605

/-!
# A211690: Number of -4..4 arrays x(i) of n+1 elements i=1..n+1 with x(i)+x(j), x(i+1)+x(j+1), -(x(i)+x(j+1)), and -(x(i+1)+x(j)) having one, two or three distinct values for every i<=n and j<=n.

The programs for A211690, there is no canonical definition to state claims against.
-/

/-! ## A211690.P8015040570820446166

`A211470(n+1)+A211501(n+1)-A211445(n+1)`
-/

namespace A211690.P8015040570820446166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211470 (n + 1) + (A211501 (n + 1) - A211445 (n + 1))

end

end A211690.P8015040570820446166

/-!
# A211694: Number of partitions of [n] that contain no isolated singletons.

The programs for A211694, there is no canonical definition to state claims against.
-/

/-! ## A211694.P5305986340863018563

`∏{e}[3^n, A198655(#)]`
-/

namespace A211694.P5305986340863018563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A198655 (Nat.factorization (f1 n) p)

end

end A211694.P5305986340863018563

/-! ## A211694.P16955771380844050272

`A198669(A152947(n+1)+A000038(n))`
-/

namespace A211694.P16955771380844050272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198669 (A152947 (n + 1) + A000038 n).toNat

end

end A211694.P16955771380844050272

/-! ## A211694.P4258090218694189565

`A198627(A329684(n+2)+A161680(n))`
-/

namespace A211694.P4258090218694189565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (A329684 (n + 2) + A161680 n).toNat

end

end A211694.P4258090218694189565

/-! ## A211694.P15917454706294544253

`A198627(abs(1-∑[n])+1)`
-/

namespace A211694.P15917454706294544253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (|1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1).toNat

end

end A211694.P15917454706294544253

/-! ## A211694.P11893787999402554641

`A198654(A000038(n)+∑[n])`
-/

namespace A211694.P11893787999402554641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198654 (A000038 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A211694.P11893787999402554641

/-!
# A211695: Number of nonnegative integer arrays of length n+2*3-2 with new values introduced in order 0 upwards and every value appearing only in runs of at least 3.

The programs for A211695, there is no canonical definition to state claims against.
-/

/-! ## A211695.P12771399313274557058

`A211700(∑[n+3]+1)`
-/

namespace A211695.P12771399313274557058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211695.P12771399313274557058

/-! ## A211695.P14057928543257191121

`record[gcd(A060096(n), A211700(n+1))]`
-/

namespace A211695.P14057928543257191121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060096 n) (A211700 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211695.P14057928543257191121

/-! ## A211695.P16292305645691862068

`record[A211700(gcd(n, A127170(n+1)))]`
-/

namespace A211695.P16292305645691862068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (Int.gcd (n : ℤ) (A127170 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211695.P16292305645691862068

/-! ## A211695.P12800286212966850728

`A211700(A034856(n+2))%(2*6^n)`
-/

namespace A211695.P12800286212966850728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211700 (A034856 (n + 2)).toNat) (2 * 6 ^ n : ℤ)

end

end A211695.P12800286212966850728

/-! ## A211695.P949315027521117216

`record[A211700(A034856(A134478(n)))]`
-/

namespace A211695.P949315027521117216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A034856 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211695.P949315027521117216

/-! ## A211695.P3308382399948681657

`gcd(A000038(n), A211700(A034856(n+2)))`
-/

namespace A211695.P3308382399948681657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A211700 (A034856 (n + 2)).toNat)

end

end A211695.P3308382399948681657

/-! ## A211695.P3556519181739079427

`lcm(A087960(n), A211700(A034856(n+2)))`
-/

namespace A211695.P3556519181739079427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A211700 (A034856 (n + 2)).toNat)

end

end A211695.P3556519181739079427

/-! ## A211695.P1363616323083684828

`or(A000007(n), A211700(A034856(n+2)))`
-/

namespace A211695.P1363616323083684828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A211700 (A034856 (n + 2)).toNat)

end

end A211695.P1363616323083684828

/-! ## A211695.P12452559800328309445

`A019425(A134318(n))*A211700(A034856(n+2))`
-/

namespace A211695.P12452559800328309445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A134318 n).toNat * A211700 (A034856 (n + 2)).toNat

end

end A211695.P12452559800328309445

/-!
# A211696: Number of nonnegative integer arrays of length n+2*4-2 with new values introduced in order 0 upwards and every value appearing only in runs of at least 4.

The programs for A211696, there is no canonical definition to state claims against.
-/

/-! ## A211696.P8847590350183474595

`record[A211700(A027379(n))]`
-/

namespace A211696.P8847590350183474595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211696.P8847590350183474595

/-! ## A211696.P4323572193932642158

`A211700(A027379(n+2))`
-/

namespace A211696.P4323572193932642158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A027379 (n + 2)).toNat

end

end A211696.P4323572193932642158

/-! ## A211696.P4044398185810543603

`A211700(A055998(n+2))`
-/

namespace A211696.P4044398185810543603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A055998 (n + 2)).toNat

end

end A211696.P4044398185810543603

/-! ## A211696.P8096978748126401347

`A211700(A155212(n)+5)`
-/

namespace A211696.P8096978748126401347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A155212 n + 5).toNat

end

end A211696.P8096978748126401347

/-! ## A211696.P17203736099200002273

`A211700(Δ[A034857(n+1)])`
-/

namespace A211696.P17203736099200002273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (f1 (n + 1) - f1 n).toNat

end

end A211696.P17203736099200002273

/-! ## A211696.P13420187629336718172

`A211700(A052905(n+1)+2)`
-/

namespace A211696.P13420187629336718172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A052905 (n + 1) + 2).toNat

end

end A211696.P13420187629336718172

/-! ## A211696.P17360398585197454262

`A211700(A167614(n+1)+Δ[n²])`
-/

namespace A211696.P17360398585197454262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A211696.P17360398585197454262

/-! ## A211696.P14140521071402163084

`A211700(A008805(A020742(n))-3)`
-/

namespace A211696.P14140521071402163084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A008805 (A020742 n).toNat - 3).toNat

end

end A211696.P14140521071402163084

/-!
# A211697: Number of nonnegative integer arrays of length n+2*5-2 with new values introduced in order 0 upwards and every value appearing only in runs of at least 5.

The programs for A211697, there is no canonical definition to state claims against.
-/

/-! ## A211697.P15612966913710597551

`A211700(Δ[A264443(n)])`
-/

namespace A211697.P15612966913710597551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (f1 (n + 1) - f1 n).toNat

end

end A211697.P15612966913710597551

/-! ## A211697.P9059133187509539957

`A211700(A046691(n+3))`
-/

namespace A211697.P9059133187509539957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A046691 (n + 3)).toNat

end

end A211697.P9059133187509539957

/-! ## A211697.P17018353334791150904

`A211700(Δ[A023545(n+1)])`
-/

namespace A211697.P17018353334791150904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (f1 (n + 1) - f1 n).toNat

end

end A211697.P17018353334791150904

/-! ## A211697.P9341568647992425969

`A211700(Δ[A034857(n+2)]-1)`
-/

namespace A211697.P9341568647992425969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (f1 (n + 1) - f1 n - 1).toNat

end

end A211697.P9341568647992425969

/-! ## A211697.P6557431169494780059

`A211700(eq[6, A002260(n+1)]-9)`
-/

namespace A211697.P6557431169494780059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 9)

end

end A211697.P6557431169494780059

/-! ## A211697.P7792872510903743920

`record[A211700(A014132(A027379(n)))]`
-/

namespace A211697.P7792872510903743920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A014132 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211697.P7792872510903743920

/-! ## A211697.P2228274268842265542

`A211700(A264443(n+1)-A264443(n))`
-/

namespace A211697.P2228274268842265542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A264443 (n + 1) - A264443 n).toNat

end

end A211697.P2228274268842265542

/-!
# A211698: Number of nonnegative integer arrays of length n+2*6-2 with new values introduced in order 0 upwards and every value appearing only in runs of at least 6.

The programs for A211698, there is no canonical definition to state claims against.
-/

/-! ## A211698.P6250992337312487277

`A211700(A052905(n+3))`
-/

namespace A211698.P6250992337312487277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A052905 (n + 3)).toNat

end

end A211698.P6250992337312487277

/-! ## A211698.P10608742575924847747

`A211700(A046691(n+4)-1)`
-/

namespace A211698.P10608742575924847747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A046691 (n + 4) - 1).toNat

end

end A211698.P10608742575924847747

/-! ## A211698.P10213371406808612686

`A211700(A000217(n+6)-5)`
-/

namespace A211698.P10213371406808612686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A000217 (n + 6) - 5).toNat

end

end A211698.P10213371406808612686

/-! ## A211698.P7924547292391019512

`A211700(A000124(n+6)-6)`
-/

namespace A211698.P7924547292391019512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A000124 (n + 6) - 6).toNat

end

end A211698.P7924547292391019512

/-! ## A211698.P8936123972777537227

`A211700(Δ[Δ[A006504(n+1)]])`
-/

namespace A211698.P8936123972777537227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (f1 (n + 1) - f1 n).toNat

end

end A211698.P8936123972777537227

/-! ## A211698.P9356551668572597996

`A211700(Δ[A264443(n+1)]-1)`
-/

namespace A211698.P9356551668572597996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (f1 (n + 1) - f1 n - 1).toNat

end

end A211698.P9356551668572597996

/-! ## A211698.P3103398746786576058

`A211700(Δ[A023545(n+2)]-1)`
-/

namespace A211698.P3103398746786576058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (f1 (n + 1) - f1 n - 1).toNat

end

end A211698.P3103398746786576058

/-! ## A211698.P5880369316630509474

`A211700(A167499(n+3)+A004273(n+1))`
-/

namespace A211698.P5880369316630509474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A167499 (n + 3) + A004273 (n + 1)).toNat

end

end A211698.P5880369316630509474

/-!
# A211699: Number of nonnegative integer arrays of length n+2*7-2 with new values introduced in order 0 upwards and every value appearing only in runs of at least 7.

The programs for A211699, there is no canonical definition to state claims against.
-/

/-! ## A211699.P3003851395166882300

`A211700(A055999(n+4))`
-/

namespace A211699.P3003851395166882300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A055999 (n + 4)).toNat

end

end A211699.P3003851395166882300

/-! ## A211699.P339835303019574356

`A211700(A046691(n+5)-2)`
-/

namespace A211699.P339835303019574356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A046691 (n + 5) - 2).toNat

end

end A211699.P339835303019574356

/-! ## A211699.P15446791508076449023

`A211700(A000124(n+7)-7)`
-/

namespace A211699.P15446791508076449023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A000124 (n + 7) - 7).toNat

end

end A211699.P15446791508076449023

/-! ## A211699.P14322630141022058497

`A211700(A008486(n+4)+A000217(n+4))`
-/

namespace A211699.P14322630141022058497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A008486 (n + 4) + A000217 (n + 4)).toNat

end

end A211699.P14322630141022058497

/-! ## A211699.P9931355068934531581

`A211700(A167614(n+2)+Δ[A167614(2*(n+2))])`
-/

namespace A211699.P9931355068934531581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (A167614 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A211699.P9931355068934531581

