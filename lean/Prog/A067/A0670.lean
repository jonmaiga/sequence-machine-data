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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A067000: a(1) = 1; a(n) = Sum (n+k)!a(k)/(2k)!, k = 1..n-1.

The programs for A067000, there is no canonical definition to state claims against.
-/

/-! ## A067000.P16697117732018645325

`A134187(∏[∑[A134194(2*n+1)]])`
-/

namespace A067000.P16697117732018645325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134187 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067000.P16697117732018645325

/-!
# A067001: Triangle T(n,k) = d(n-k,n), 0 <= k <= n, where d(l,m) = Sum_{k=l..m} 2^k * binomial(2*m-2*k, m-k) * binomial(m+k, m) * binomial(k, l).

The programs for A067001, there is no canonical definition to state claims against.
-/

/-! ## A067001.P11020780874520319599

`A126936(∑[2*n]%comp[∑[n]])`
-/

namespace A067001.P11020780874520319599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126936 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A067001.P11020780874520319599

/-! ## A067001.P9517826938245443016

`A126936(∑[char[∑[n]]]²-n-1)`
-/

namespace A067001.P9517826938245443016
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126936 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A067001.P9517826938245443016

/-! ## A067001.P3070007637775004892

`A126936(A061579(n))%A246638(n)`
-/

namespace A067001.P3070007637775004892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126936 (A061579 n).toNat) (A246638 n)

end

end A067001.P3070007637775004892

/-! ## A067001.P10978120390145142206

`lcm(A000034(n), A126936(A061579(n)))`
-/

namespace A067001.P10978120390145142206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A126936 (A061579 n).toNat)

end

end A067001.P10978120390145142206

/-! ## A067001.P14318721430093137154

`or(A000007(n), A126936(A061579(n)))`
-/

namespace A067001.P14318721430093137154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A126936 (A061579 n).toNat)

end

end A067001.P14318721430093137154

/-!
# A067002: Numerator of Sum_{k=0..n} 2^(k-2*n) * binomial(2*n-2*k,n-k) * binomial(n+k,n).

The programs for A067002, the canonical program `A067002.P16545474126586428194` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067002 has offset 0).

The definition of A067002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067002.P16545474126586428194

`A004982(n)/A001316(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067002

/-- `A004982(n)/A001316(n)` -/
def P16545474126586428194.Spec : Prop :=
  ∀ n, P16545474126586428194.a n = (A067002 n : ℚ)

end A067002

/-! ## A067002.P2349764906709781723

`A004982(n)/A000079(A000120(n))`
-/

namespace A067002.P2349764906709781723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004982 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A067002.P2349764906709781723

namespace A067002

/-- `A004982(n)/A000079(A000120(n))` -/
def P2349764906709781723.Spec : Prop :=
  ∀ n, P2349764906709781723.a n = (A067002 n : ℚ)

end A067002

/-! ## A067002.P16303828482348752589

`gcd(A004982(n), A008545(n))`
-/

namespace A067002.P16303828482348752589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004982 n) (A008545 n)

end

end A067002.P16303828482348752589

namespace A067002

/-- `gcd(A004982(n), A008545(n))` -/
def P16303828482348752589.Spec : Prop :=
  ∀ n, (P16303828482348752589.a n : ℤ) = A067002 n

end A067002

/-! ## A067002.P5908395033774100413

`A008545(n)/gcd(A007696(n), A047053(n))`
-/

namespace A067002.P5908395033774100413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008545 n : ℚ) / (Int.gcd (A007696 n) (A047053 n) : ℚ)

end

end A067002.P5908395033774100413

namespace A067002

/-- `A008545(n)/gcd(A007696(n), A047053(n))` -/
def P5908395033774100413.Spec : Prop :=
  ∀ n, P5908395033774100413.a n = (A067002 n : ℚ)

end A067002

/-! ## A067002.P6760378908463659019

`A223549(∑[n])`
-/

namespace A067002.P6760378908463659019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223549 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067002.P6760378908463659019

namespace A067002

/-- `A223549(∑[n])` -/
def P6760378908463659019.Spec : Prop :=
  ∀ n, P6760378908463659019.a n = A067002 n

end A067002

/-! ## A067002.P8660991976410964456

`or(1, A223549(A000217(n)))`
-/

namespace A067002.P8660991976410964456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223549 (A000217 n).toNat)

end

end A067002.P8660991976410964456

namespace A067002

/-- `or(1, A223549(A000217(n)))` -/
def P8660991976410964456.Spec : Prop :=
  ∀ n, P8660991976410964456.a n = A067002 n

end A067002

/-!
# A067003: Number of numbers <= n with same number of distinct prime factors as n.

The programs for A067003, there is no canonical definition to state claims against.
-/

/-! ## A067003.P10583619751533509912

`A334655(n+1)+1`
-/

namespace A067003.P10583619751533509912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334655 (n + 1) + 1

end

end A067003.P10583619751533509912

/-! ## A067003.P9438496199074046498

`1-A070962(n+1)+n`
-/

namespace A067003.P9438496199074046498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070962 (n + 1) + (n : ℤ)

end

end A067003.P9438496199074046498

/-! ## A067003.P12480210708519142704

`log2(Δ[A339512(n)])+1`
-/

namespace A067003.P12480210708519142704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ) + 1

end

end A067003.P12480210708519142704

/-! ## A067003.P10923066519764852520

`A008619(2*log2(Δ[A339512(n)]))`
-/

namespace A067003.P10923066519764852520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (2 * Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A067003.P10923066519764852520

/-! ## A067003.P17638859029156515566

`A008624(4*log2(Δ[A339512(n)]))`
-/

namespace A067003.P17638859029156515566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (SequenceMachineLib.roundAway (4 * Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A067003.P17638859029156515566

/-! ## A067003.P13025455238338626589

`log2(A339512(n+1)-A339512(n))+1`
-/

namespace A067003.P13025455238338626589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A339512 (n + 1) - A339512 n : ℝ) + 1

end

end A067003.P13025455238338626589

/-! ## A067003.P4701576207739448617

`A005408(n)-(2*n-log2(Δ[A339512(n)]))`
-/

namespace A067003.P4701576207739448617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℝ) - ((2 * n : ℝ) - Real.logb 2 (f1 (n + 1) - f1 n : ℝ))

end

end A067003.P4701576207739448617

/-! ## A067003.P10067126172384139887

`A008619(log2(Δ[A339512(n)]²))`
-/

namespace A067003.P10067126172384139887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (Real.logb 2 ((f1 (n + 1) - f1 n) ^ 2 : ℝ))).toNat

end

end A067003.P10067126172384139887

/-! ## A067003.P11450629750001080870

`A008624(log2(Δ[A339512(n)]²²))`
-/

namespace A067003.P11450629750001080870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (SequenceMachineLib.roundAway (Real.logb 2 (((f1 (n + 1) - f1 n) ^ 2) ^ 2 : ℝ))).toNat

end

end A067003.P11450629750001080870

/-!
# A067004: Number of numbers <= n with same number of divisors as n.

The programs for A067004, there is no canonical definition to state claims against.
-/

/-! ## A067004.P631684651626911659

`1+A047983(n+1)`
-/

namespace A067004.P631684651626911659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A047983 (n + 1)

end

end A067004.P631684651626911659

/-! ## A067004.P13372387530006783791

`A079788(n+1)+A138009(n+1)-(n+1)`
-/

namespace A067004.P13372387530006783791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079788 (n + 1) + (A138009 (n + 1) - (n + 1 : ℤ))

end

end A067004.P13372387530006783791

/-! ## A067004.P16906524047957618033

`A058933(1-A331185(n+1)+n)`
-/

namespace A067004.P16906524047957618033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (1 - A331185 (n + 1) + (n : ℤ)).toNat

end

end A067004.P16906524047957618033

/-! ## A067004.P17232017948457917473

`A003963(1-A331185(n+1)+n)`
-/

namespace A067004.P17232017948457917473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (1 - A331185 (n + 1) + (n : ℤ)).toNat

end

end A067004.P17232017948457917473

/-! ## A067004.P13784560755770209211

`A026238(1-A331185(n+1)+n)`
-/

namespace A067004.P13784560755770209211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (1 - A331185 (n + 1) + (n : ℤ)).toNat

end

end A067004.P13784560755770209211

/-! ## A067004.P12262167330113635319

`log2(Δ[A339514(n)])+1`
-/

namespace A067004.P12262167330113635319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339514 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ) + 1

end

end A067004.P12262167330113635319

/-! ## A067004.P5401245497608879642

`A000005(Δ[A339514(n)])`
-/

namespace A067004.P5401245497608879642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A067004.P5401245497608879642

/-! ## A067004.P7186353408725783730

`A001222(Δ[A339514(n)])+1`
-/

namespace A067004.P7186353408725783730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat + 1

end

end A067004.P7186353408725783730

/-! ## A067004.P2611963512194405768

`A000005(A339514(n+1)-A339514(n))`
-/

namespace A067004.P2611963512194405768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A339514 (n + 1) - A339514 n).toNat

end

end A067004.P2611963512194405768

/-! ## A067004.P3828311025565267200

`A001222(A339514(n+1)-A339514(n))+1`
-/

namespace A067004.P3828311025565267200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A339514 (n + 1) - A339514 n).toNat + 1

end

end A067004.P3828311025565267200

/-!
# A067005: Totient of A061026(n) divided by n.

The programs for A067005, there is no canonical definition to state claims against.
-/

/-! ## A067005.P13433177870487250311

`A066678(n+1)/(n+1)`
-/

namespace A067005.P13433177870487250311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066678 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A067005.P13433177870487250311

/-! ## A067005.P1543387957482339072

`A000010(A061026(n+1))/(n+1)`
-/

namespace A067005.P1543387957482339072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A061026 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A067005.P1543387957482339072

/-! ## A067005.P6064785558618536349

`A008574(A066678(n+1))%A004767(n)`
-/

namespace A067005.P6064785558618536349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A066678 (n + 1)).toNat) (A004767 n)

end

end A067005.P6064785558618536349

/-! ## A067005.P17108035217679157159

`A008486(A066678(n+1))%A016789(n)`
-/

namespace A067005.P17108035217679157159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A066678 (n + 1)).toNat) (A016789 n)

end

end A067005.P17108035217679157159

/-! ## A067005.P17865171251888635349

`(A039649(A061026(n+1))-1)/A000027(n+1)`
-/

namespace A067005.P17865171251888635349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (A061026 (n + 1)).toNat - 1 : ℚ) / (A000027 (n + 1) : ℚ)

end

end A067005.P17865171251888635349

/-! ## A067005.P6822282284548860630

`A110658(A017569(A066678(n+1))%A017569(n))`
-/

namespace A067005.P6822282284548860630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (Int.tmod (A017569 (A066678 (n + 1)).toNat) (A017569 n)).toNat

end

end A067005.P6822282284548860630

/-! ## A067005.P10071997593277748690

`A123108(A016777(A066678(n+1))%A016777(n))`
-/

namespace A067005.P10071997593277748690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A016777 (A066678 (n + 1)).toNat) (A016777 n)).toNat

end

end A067005.P10071997593277748690

/-!
# A067006: Smallest number for which the totient is divisible by the n-th nontotient number, that is, the n-th term of A007617.

The programs for A067006, there is no canonical definition to state claims against.
-/

/-! ## A067006.P199504934821835121

`A061026(A007617(n+1))`
-/

namespace A067006.P199504934821835121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A007617 (n + 1)).toNat

end

end A067006.P199504934821835121

/-! ## A067006.P1625306894159403163

`A061026(comp[A002202(n+1)-1]+1)`
-/

namespace A067006.P1625306894159403163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A067006.P1625306894159403163

/-! ## A067006.P16464423237962648803

`A061026(eq[1, A061026(A014197(n+1)+1)]+1)`
-/

namespace A067006.P16464423237962648803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A014197 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067006.P16464423237962648803

/-! ## A067006.P4756803005760604791

`A061026(eq[A069932(n+1), A070633(n+1)]+1)`
-/

namespace A067006.P4756803005760604791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A067006.P4756803005760604791

/-! ## A067006.P9613994522601709777

`A061026(eq[2, A057635(A057635(n+1)+1)]+1)`
-/

namespace A067006.P9613994522601709777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A057635 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067006.P9613994522601709777

/-!
# A067007: a(n) = googolplex (mod n).

The programs for A067007, there is no canonical definition to state claims against.
-/

/-! ## A067007.P11692768722841274221

`gcd(A066298(n+1), A102679(A262501(n+1)))`
-/

namespace A067007.P11692768722841274221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066298 (n + 1)) (A102679 (A262501 (n + 1)).toNat)

end

end A067007.P11692768722841274221

/-! ## A067007.P10244778635463839516

`A066298(n+1)/A228100(A060383(n+1))`
-/

namespace A067007.P10244778635463839516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066298 (n + 1) : ℚ) / (A228100 (A060383 (n + 1)).toNat : ℚ)

end

end A067007.P10244778635463839516

/-! ## A067007.P752354890727812975

`A066298(n+1)%A000217(A124471(3*(n+1)))`
-/

namespace A067007.P752354890727812975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066298 (n + 1)) (A000217 (A124471 (3 * (n + 1))).toNat)

end

end A067007.P752354890727812975

/-! ## A067007.P17140543513004610946

`A066298(n+1)%A000041(A122149(n+5))`
-/

namespace A067007.P17140543513004610946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066298 (n + 1)) (A000041 (A122149 (n + 5)).toNat)

end

end A067007.P17140543513004610946

/-!
# A067008: Numbers k such that Sum_{j=1..k} A008472(j) divides k!.

The programs for A067008, there is no canonical definition to state claims against.
-/

/-! ## A067008.P9600767296117971912

`A351576(3*n+1)-A328959(A320739(n))`
-/

namespace A067008.P9600767296117971912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 (3 * n + 1) - A328959 (A320739 n).toNat

end

end A067008.P9600767296117971912

/-! ## A067008.P2797462334686273626

`lt[A000700(n+4), A271343(A005099(n+1))]`
-/

namespace A067008.P2797462334686273626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271343 (A005099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067008.P2797462334686273626

/-! ## A067008.P6367904821682747582

`xor(p?[A091780(n+1)], A056898(n+1))`
-/

namespace A067008.P6367904821682747582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A056898 (n + 1))

end

end A067008.P6367904821682747582

/-! ## A067008.P4466042943186527551

`xor(p?[A153679(2*n+1)], A007920(n+1))`
-/

namespace A067008.P4466042943186527551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A007920 (n + 1))

end

end A067008.P4466042943186527551

/-! ## A067008.P7291562567478507435

`A134790(A327148(n))+A001950(n+1)`
-/

namespace A067008.P7291562567478507435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134790 (A327148 n).toNat + A001950 (n + 1)

end

end A067008.P7291562567478507435

/-!
# A067010: a(2n) and a(2n+1) are side lengths of a Beentjes sequence of perfect squared rectangles, starting with a 32 X 33 rectangle.

The programs for A067010, the canonical program `A067010.P2608060975640535891` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067010 has offset 0).

The definition of A067010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067010.P2608060975640535891

`22*a(n-2)+9*a(n-4)` with `a(0)=32, a(1)=33, a(2)=682, a(3)=779`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067010

/-- `22*a(n-2)+9*a(n-4)` -/
def P2608060975640535891.Spec : Prop :=
  ∀ n, (P2608060975640535891.a n : ℤ) = A067010 n

theorem P2608060975640535891.correct : P2608060975640535891.Spec := by
  intro n
  simp only [A067010]

end A067010

/-!
# A067011: a(2n) and a(2n+1) are side lengths of a Beentjes sequence of perfect squared rectangles, starting with a 33 X 32 rectangle.

The programs for A067011, the canonical program `A067011.P13845959895897160392` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067011 has offset 0).

The definition of A067011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067011.P13845959895897160392

`22*a(n-2)+9*a(n-4)` with `a(0)=33, a(1)=32, a(2)=683, a(3)=781`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067011

/-- `22*a(n-2)+9*a(n-4)` -/
def P13845959895897160392.Spec : Prop :=
  ∀ n, (P13845959895897160392.a n : ℤ) = A067011 n

theorem P13845959895897160392.correct : P13845959895897160392.Spec := by
  intro n
  simp only [A067011]

end A067011

/-!
# A067012: Absolute composites: every permutation of digits (dropping any leading zeros) is a composite number.

The programs for A067012, there is no canonical definition to state claims against.
-/

/-! ## A067012.P11487281155930385251

`filter[A091897(n+1), A005171(#)]`
-/

namespace A067012.P11487281155930385251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A067012.P11487281155930385251

/-! ## A067012.P6813467789975754907

`filter[A091897(n+1), A066247(#)]`
-/

namespace A067012.P6813467789975754907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A067012.P6813467789975754907

/-! ## A067012.P12238309202702270655

`∩[A067013(n+1), A091897(n+1)]`
-/

namespace A067012.P12238309202702270655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067012.P12238309202702270655

/-! ## A067012.P15944567235585370679

`∩[A091897(n+1), A248010(n+1)]`
-/

namespace A067012.P15944567235585370679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067012.P15944567235585370679

/-! ## A067012.P5437283260404262771

`∩[A002808(n+1), A091897(n+1)]`
-/

namespace A067012.P5437283260404262771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067012.P5437283260404262771

/-! ## A067012.P965402002463733495

`∩[A018252(n+1), A091897(n+1)]`
-/

namespace A067012.P965402002463733495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067012.P965402002463733495

/-! ## A067012.P16612216672073538593

`∩[A091897(n+1), A141468(n+1)]`
-/

namespace A067012.P16612216672073538593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067012.P16612216672073538593

/-! ## A067012.P4575041590528444237

`∩[A067013(n+1), A057717(n)]`
-/

namespace A067012.P4575041590528444237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067012.P4575041590528444237

/-! ## A067012.P17519570217570625100

`eq[A039999(3*(n+1)), A039999(n+1)]+1`
-/

namespace A067012.P17519570217570625100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067012.P17519570217570625100

/-! ## A067012.P13845805152359231908

`A020725(eq[A039999(3*(n+1)), A039999(n+1)])`
-/

namespace A067012.P13845805152359231908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067012.P13845805152359231908

/-!
# A067013: Numbers with property that every permutation of digits (dropping any leading zeros) is 1 or a composite number.

The programs for A067013, there is no canonical definition to state claims against.
-/

/-! ## A067013.P8661526505082123414

`eq[0, A039999(n+1)]+1`
-/

namespace A067013.P8661526505082123414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067013.P8661526505082123414

/-! ## A067013.P7249499670273924669

`lt[n*A039999(A028310(n)), n]`
-/

namespace A067013.P7249499670273924669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A039999 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067013.P7249499670273924669

/-! ## A067013.P2528479374459881537

`record[n+1-A129715(2*A039999(n+1))]`
-/

namespace A067013.P2528479374459881537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A129715 (2 * A039999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067013.P2528479374459881537

/-! ## A067013.P10101293672514167395

`record[n+1-A133280(5*A039999(n+1))]`
-/

namespace A067013.P10101293672514167395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A133280 (5 * A039999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067013.P10101293672514167395

/-! ## A067013.P3710839833603485383

`record[n+1-A030291(n+1)*A039999(n+1)]`
-/

namespace A067013.P3710839833603485383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A030291 (n + 1) * A039999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067013.P3710839833603485383

/-! ## A067013.P4205746673006732019

`record[n+1-A039999(n+1)*A080081(n+1)]`
-/

namespace A067013.P4205746673006732019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A039999 (n + 1) * A080081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067013.P4205746673006732019

/-! ## A067013.P447225735144954016

`eq[A039999(A065033(2*n)), A208274(2*n)]`
-/

namespace A067013.P447225735144954016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067013.P447225735144954016

/-!
# A067014: a(1)=1 and a(n+1)=phi(a(n))+a(phi(n)) for n>0.

The programs for A067014, there is no canonical definition to state claims against.
-/

/-! ## A067014.P8599259090279354084

`A000010(a(n-1))+a(A000010(n)-1)` with `a(0)=1`
-/

namespace A067014.P8599259090279354084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (a (n - 1)).toNat + a (A000010 n - 1).toNat

end

end A067014.P8599259090279354084

/-!
# A067016: Start with a(0)=1, a(1)=4, a(2)=3, a(3)=2; for n>=3, a(n+1) = max_i (a(i)+a(n-i)).

The programs for A067016, the canonical program `A067016.P13599036964875947194` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067016 has offset 0).

The definition of A067016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067016.P13599036964875947194

`a(n-2)+4` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2, a(4)=7, a(5)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067016

/-- `a(n-2)+4` -/
def P13599036964875947194.Spec : Prop :=
  ∀ n, (P13599036964875947194.a n : ℤ) = A067016 n

theorem P13599036964875947194.correct : P13599036964875947194.Spec := by
  intro n
  simp only [A067016]

end A067016

/-! ## A067016.P12084268244588205526

`2*n-gcd(2, a(n-2))` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2`
-/

namespace A067016.P12084268244588205526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3, 2] fun n a =>
  (2 * n : ℤ) - (Int.gcd 2 (a (n - 2)) : ℤ)

end

end A067016.P12084268244588205526

namespace A067016

/-- `2*n-gcd(2, a(n-2))` -/
def P12084268244588205526.Spec : Prop :=
  ∀ n, P12084268244588205526.a n = A067016 n

end A067016

/-! ## A067016.P469497684974399495

`A092486(a(n-1))` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2, a(4)=7`
-/

namespace A067016.P469497684974399495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3, 2, 7] fun n a =>
  A092486 (a (n - 1)).toNat

end

end A067016.P469497684974399495

namespace A067016

/-- `A092486(a(n-1))` -/
def P469497684974399495.Spec : Prop :=
  ∀ n, P469497684974399495.a n = A067016 n

end A067016

/-!
# A067018: Start with a(0)=1, a(1)=4, a(2)=3, a(3)=2; for n>=3, a(n+1) = mex_i (nim-sum a(i)+a(n-i)), where mex means smallest nonnegative missing number.

The programs for A067018, the canonical program `A067018.P17592362803223810961` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067018 has offset 0).

The definition of A067018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067018.P17592362803223810961

`a(n-2)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2, a(4)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067018

/-- `a(n-2)` -/
def P17592362803223810961.Spec : Prop :=
  ∀ n, (P17592362803223810961.a n : ℤ) = A067018 n

theorem P17592362803223810961.correct : P17592362803223810961.Spec := by
  intro n
  simp only [A067018]

end A067018

/-!
# A067019: Odd numbers with an odd number of prime factors (counted with multiplicity).

The programs for A067019, the canonical program `A067019.P5875379144825539243` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067019 has offset 1).

The definition of A067019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067019.P9294999769703275868

`A369966(n+1)/2`
-/

namespace A067019.P9294999769703275868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369966 (n + 1) : ℚ) / 2

end

end A067019.P9294999769703275868

namespace A067019

/-- `A369966(n+1)/2` -/
def P9294999769703275868.Spec : Prop :=
  ∀ n, P9294999769703275868.a n = (A067019 (n + 1) : ℚ)

theorem P9294999769703275868.correct : P9294999769703275868.Spec := by
  intro n
  simp only [A067019, Nat.add_sub_cancel, A067019.P9294999769703275868.a, A067019.P5875379144825539243.f1, A067019.P5875379144825539243.f2, A067019.P5875379144825539243.a, A001222, A001222.P11318177267732088261.a, A369966, A369966.P13411901398628512597.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067019

/-! ## A067019.P7364829119165677530

`eq[1, A369965(2*n)]`
-/

namespace A067019.P7364829119165677530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067019.P7364829119165677530

namespace A067019

/-- `eq[1, A369965(2*n)]` -/
def P7364829119165677530.Spec : Prop :=
  ∀ n, (P7364829119165677530.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P8263458638389813450

`eq[1, A351233(n)%2]`
-/

namespace A067019.P8263458638389813450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351233 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067019.P8263458638389813450

namespace A067019

/-- `eq[1, A351233(n)%2]` -/
def P8263458638389813450.Spec : Prop :=
  ∀ n, (P8263458638389813450.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P17270813695018252373

`eq[1, A353558(n+1)]+1`
-/

namespace A067019.P17270813695018252373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067019.P17270813695018252373

namespace A067019

/-- `eq[1, A353558(n+1)]+1` -/
def P17270813695018252373.Spec : Prop :=
  ∀ n, (P17270813695018252373.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P15828840567533221445

`eq[1, A374212(n+2)]+2`
-/

namespace A067019.P15828840567533221445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374212 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A067019.P15828840567533221445

namespace A067019

/-- `eq[1, A374212(n+2)]+2` -/
def P15828840567533221445.Spec : Prop :=
  ∀ n, (P15828840567533221445.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P1765876650582322627

`eq[-1, A166698(n+1)]+1`
-/

namespace A067019.P1765876650582322627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067019.P1765876650582322627

namespace A067019

/-- `eq[-1, A166698(n+1)]+1` -/
def P1765876650582322627.Spec : Prop :=
  ∀ n, (P1765876650582322627.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P8106259508299127823

`comp[or(n, A066829(n+1))]+1`
-/

namespace A067019.P8106259508299127823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A066829 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A067019.P8106259508299127823

namespace A067019

/-- `comp[or(n, A066829(n+1))]+1` -/
def P8106259508299127823.Spec : Prop :=
  ∀ n, (P8106259508299127823.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P5875379144825539243

`lt[val((n+1)*(A001222(n+1)+2), 2), 1]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A067019

/-- `lt[val((n+1)*(A001222(n+1)+2), 2), 1]+1` -/
def P5875379144825539243.Spec : Prop :=
  ∀ n, (P5875379144825539243.a n : ℤ) = A067019 (n + 1)

theorem P5875379144825539243.correct : P5875379144825539243.Spec := by
  intro n
  simp only [A067019, Nat.add_sub_cancel]

end A067019

/-! ## A067019.P14608892283217690238

`A000265(A369966(n+1))`
-/

namespace A067019.P14608892283217690238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A369966 (n + 1)).toNat

end

end A067019.P14608892283217690238

namespace A067019

/-- `A000265(A369966(n+1))` -/
def P14608892283217690238.Spec : Prop :=
  ∀ n, P14608892283217690238.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P7056694498800302300

`lt[A214546(A358765(n))², 1]`
-/

namespace A067019.P7056694498800302300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A358765 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067019.P7056694498800302300

namespace A067019

/-- `lt[A214546(A358765(n))², 1]` -/
def P7056694498800302300.Spec : Prop :=
  ∀ n, (P7056694498800302300.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P7187917509653507551

`filter[A176847(n+1), A066829(#)]`
-/

namespace A067019.P7187917509653507551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A067019.P7187917509653507551

namespace A067019

/-- `filter[A176847(n+1), A066829(#)]` -/
def P7187917509653507551.Spec : Prop :=
  ∀ n, P7187917509653507551.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P14303632289700738322

`filter[A176847(n+1), A353558(#)]`
-/

namespace A067019.P14303632289700738322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A067019.P14303632289700738322

namespace A067019

/-- `filter[A176847(n+1), A353558(#)]` -/
def P14303632289700738322.Spec : Prop :=
  ∀ n, P14303632289700738322.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P16317670446627720313

`filter[A176847(n+1), A359372(#)]`
-/

namespace A067019.P16317670446627720313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A067019.P16317670446627720313

namespace A067019

/-- `filter[A176847(n+1), A359372(#)]` -/
def P16317670446627720313.Spec : Prop :=
  ∀ n, P16317670446627720313.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P15303978667231967264

`filter[A176847(n+1), A373141(#)]`
-/

namespace A067019.P15303978667231967264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A067019.P15303978667231967264

namespace A067019

/-- `filter[A176847(n+1), A373141(#)]` -/
def P15303978667231967264.Spec : Prop :=
  ∀ n, P15303978667231967264.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P5354752635732911448

`∩[2*n+1, A373142(n+1)]`
-/

namespace A067019.P5354752635732911448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067019.P5354752635732911448

namespace A067019

/-- `∩[2*n+1, A373142(n+1)]` -/
def P5354752635732911448.Spec : Prop :=
  ∀ n, (P5354752635732911448.a n : ℤ) = A067019 (n + 1)

end A067019

/-! ## A067019.P2261924400801151383

`filter[A373142(n+1), A039982(#)]`
-/

namespace A067019.P2261924400801151383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A067019.P2261924400801151383

namespace A067019

/-- `filter[A373142(n+1), A039982(#)]` -/
def P2261924400801151383.Spec : Prop :=
  ∀ n, P2261924400801151383.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P1070409680167051013

`filter[A373142(n+1), A098725(#)]`
-/

namespace A067019.P1070409680167051013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A067019.P1070409680167051013

namespace A067019

/-- `filter[A373142(n+1), A098725(#)]` -/
def P1070409680167051013.Spec : Prop :=
  ∀ n, P1070409680167051013.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P11783763244632177145

`filter[A373142(n+1), A166486(#)]`
-/

namespace A067019.P11783763244632177145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A067019.P11783763244632177145

namespace A067019

/-- `filter[A373142(n+1), A166486(#)]` -/
def P11783763244632177145.Spec : Prop :=
  ∀ n, P11783763244632177145.a n = A067019 (n + 1)

end A067019

/-! ## A067019.P6221027837531450295

`filter[A373142(n+1), A324908(#)]`
-/

namespace A067019.P6221027837531450295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A067019.P6221027837531450295

namespace A067019

/-- `filter[A373142(n+1), A324908(#)]` -/
def P6221027837531450295.Spec : Prop :=
  ∀ n, P6221027837531450295.a n = A067019 (n + 1)

end A067019

/-!
# A067021: Largest prime of which the square still does not exceed the product of first n primes, the n-th primorial.

The programs for A067021, there is no canonical definition to state claims against.
-/

/-! ## A067021.P3432440019634647874

`A031218(A060797(n+2))`
-/

namespace A067021.P3432440019634647874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A060797 (n + 2)).toNat

end

end A067021.P3432440019634647874

/-!
# A067022: Exponent of largest power of (n+1)-st prime which is still smaller than the product of first n primes, the n-th primorial.

The programs for A067022, there is no canonical definition to state claims against.
-/

/-! ## A067022.P304165771150924680

`∑[char[A056127(n+1)-1]]`
-/

namespace A067022.P304165771150924680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056127 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067022.P304165771150924680

/-! ## A067022.P15316296681009481022

`∑[char[A056127(n)-1]]-1`
-/

namespace A067022.P15316296681009481022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056127 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A067022.P15316296681009481022

/-! ## A067022.P9419042783519899342

`∑[char[comp[A127621(n+1)]-1]]-1`
-/

namespace A067022.P9419042783519899342
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127621 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A067022.P9419042783519899342

/-! ## A067022.P16777900221209916375

`∑[char[A028310(A056127(n)-1)]]`
-/

namespace A067022.P16777900221209916375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056127 n - 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067022.P16777900221209916375

/-! ## A067022.P53446113237934025

`A287010(A253145(n+1))-1`
-/

namespace A067022.P53446113237934025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287010 (A253145 (n + 1)).toNat - 1

end

end A067022.P53446113237934025

/-! ## A067022.P18265820068316643667

`A287010(A000217(n+2))-1`
-/

namespace A067022.P18265820068316643667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287010 (A000217 (n + 2)).toNat - 1

end

end A067022.P18265820068316643667

/-! ## A067022.P690825425048750578

`A287010(A333616(Δ[n²]))-1`
-/

namespace A067022.P690825425048750578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287010 (A333616 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - 1

end

end A067022.P690825425048750578

/-! ## A067022.P10264126648839957211

`A301305(A020639(2*(n+1)))+A287010(A253145(n+1))`
-/

namespace A067022.P10264126648839957211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301305 (A020639 (2 * (n + 1))).toNat + A287010 (A253145 (n + 1)).toNat

end

end A067022.P10264126648839957211

/-!
# A067023: Sigma-crowded numbers: n such that d(n)/sigma(n) is larger than d(m)/sigma(m) for all m > n.

The programs for A067023, there is no canonical definition to state claims against.
-/

/-! ## A067023.P5054188069194240964

`record[A243220(n+1)/A144379(A144379(n+1))]`
-/

namespace A067023.P5054188069194240964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243220 (n + 1) : ℚ) / (A144379 (A144379 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067023.P5054188069194240964

/-! ## A067023.P4853129221085321737

`record[A243220(n+1)%A053707(A246102(n+1))]`
-/

namespace A067023.P4853129221085321737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243220 (n + 1)) (A053707 (A246102 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067023.P4853129221085321737

/-! ## A067023.P11661554943214352445

`lt[A061255(A008619(n)), A300549(n)]`
-/

namespace A067023.P11661554943214352445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061255 (A008619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067023.P11661554943214352445

/-! ## A067023.P10975599548920926609

`lt[A061255(A065033(n+1)), A300549(n)]`
-/

namespace A067023.P10975599548920926609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061255 (A065033 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067023.P10975599548920926609

/-! ## A067023.P3352212254341502347

`record[A000005(A326041(A087007(n+1)))]`
-/

namespace A067023.P3352212254341502347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A326041 (A087007 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067023.P3352212254341502347

/-!
# A067024: Smallest prime p such that p+2 has exactly n distinct prime factors.

The programs for A067024, there is no canonical definition to state claims against.
-/

/-! ## A067024.P7951394170646559983

`A098027(n+1)-char[17*n]`
-/

namespace A067024.P7951394170646559983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098027 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A067024.P7951394170646559983

/-! ## A067024.P15737731979704331267

`A098027(n+1)+n-A028310(n)`
-/

namespace A067024.P15737731979704331267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098027 (n + 1) + (n : ℤ) - A028310 n

end

end A067024.P15737731979704331267

/-! ## A067024.P703878854806933230

`A000007(A125053(n))+A098027(n+1)-A000007(n)`
-/

namespace A067024.P703878854806933230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A125053 n).toNat + (A098027 (n + 1) - A000007 n)

end

end A067024.P703878854806933230

/-! ## A067024.P5655943403218763077

`A000007(A285332(n))+A098027(n+1)-A000007(n)`
-/

namespace A067024.P5655943403218763077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A285332 n).toNat + (A098027 (n + 1) - A000007 n)

end

end A067024.P5655943403218763077

/-! ## A067024.P8950469053273546093

`A010894(A285332(n))+A098027(n+1)-A010894(n)`
-/

namespace A067024.P8950469053273546093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A285332 n).toNat + 21) + (A098027 (n + 1) - A010894 (n + 21))

end

end A067024.P8950469053273546093

/-!
# A067025: Exponents of prime-powers corresponding to terms of A053705(n)+2.

The programs for A067025, there is no canonical definition to state claims against.
-/

/-! ## A067025.P924166258043515605

`∑{e}[A053704(n+1), #]`
-/

namespace A067025.P924166258043515605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067025.P924166258043515605

/-! ## A067025.P6190684272254753775

`∑{e}[A053705(n+1)+2, #]`
-/

namespace A067025.P6190684272254753775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067025.P6190684272254753775

/-! ## A067025.P11159645660357471760

`∏{e}[A053704(abs(1-n)+2), #]`
-/

namespace A067025.P11159645660357471760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067025.P11159645660357471760

/-! ## A067025.P5468878856426020506

`∑{e}[p?[A088072(n+1)-1]+2, #]`
-/

namespace A067025.P5468878856426020506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088072 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067025.P5468878856426020506

/-! ## A067025.P17852014406063480281

`∏{e}[p?[A134612(n+1)-2]+2, #]`
-/

namespace A067025.P17852014406063480281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067025.P17852014406063480281

/-! ## A067025.P3299129939849697078

`A001222(2^∏{e}[A053704(n+1), #])`
-/

namespace A067025.P3299129939849697078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A067025.P3299129939849697078

/-! ## A067025.P7590925367071046614

`∏{e}[A053704(n+1), #]%A000040(n+2)`
-/

namespace A067025.P7590925367071046614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A000040 (n + 2))

end

end A067025.P7590925367071046614

/-! ## A067025.P5730986250965388049

`A007318(C(2, n))*∏{e}[A053704(n+1), #]`
-/

namespace A067025.P5730986250965388049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A067025.P5730986250965388049

/-! ## A067025.P8795177421745367710

`A000108(n*char[1])*∏{e}[A053704(n+1), #]`
-/

namespace A067025.P8795177421745367710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

end

end A067025.P8795177421745367710

/-!
# A067026: (Prime(n)# - 4)/2 is prime, where x# is the primorial A034386(x).

The programs for A067026, there is no canonical definition to state claims against.
-/

/-! ## A067026.P17625295266194987688

`A000720(A096547(n+1))`
-/

namespace A067026.P17625295266194987688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096547 (n + 1)).toNat

end

end A067026.P17625295266194987688

/-! ## A067026.P3127707345582425109

`∑{d}[A096547(n+1), A061395(#)]`
-/

namespace A067026.P3127707345582425109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A067026.P3127707345582425109

/-!
# A067027: Numbers n such that (prime(n)# + 4)/2 is a prime, where x# is the primorial A034386(x).

The programs for A067027, there is no canonical definition to state claims against.
-/

/-! ## A067027.P7461519311357698480

`A000720(A096177(n+1))`
-/

namespace A067027.P7461519311357698480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096177 (n + 1)).toNat

end

end A067027.P7461519311357698480

/-! ## A067027.P3908233578181011397

`∑{d}[A096177(n+1), A061395(#)]`
-/

namespace A067027.P3908233578181011397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A067027.P3908233578181011397

/-!
# A067028: Numbers with a composite number of prime factors (counted with multiplicity).

The programs for A067028, the canonical program `A067028.P13282164833693270985` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067028 has offset 1).

The definition of A067028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067028.P999509678251367740

`eq[1, A007690(a(A001222(n)))]` with `a(0)=8`
-/

namespace A067028.P999509678251367740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A007690 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P999509678251367740

namespace A067028

/-- `eq[1, A007690(a(A001222(n)))]` -/
def P999509678251367740.Spec : Prop :=
  ∀ n, (P999509678251367740.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P13282164833693270985

`eq[1, A106511(a(A001222(n)))]` with `a(0)=8`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A067028

/-- `eq[1, A106511(a(A001222(n)))]` -/
def P13282164833693270985.Spec : Prop :=
  ∀ n, (P13282164833693270985.a n : ℤ) = A067028 (n + 1)

theorem P13282164833693270985.correct : P13282164833693270985.Spec := by
  intro n
  simp only [A067028, Nat.add_sub_cancel]

end A067028

/-! ## A067028.P18009270467342915152

`eq[1, A000010(a(A001222(n)))]` with `a(0)=11`
-/

namespace A067028.P18009270467342915152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f2 =>
  A000010 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P18009270467342915152

namespace A067028

/-- `eq[1, A000010(a(A001222(n)))]` -/
def P18009270467342915152.Spec : Prop :=
  ∀ n, (P18009270467342915152.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P670007721235443661

`lt[A001222(a(A001222(n))), 1]` with `a(0)=16`
-/

namespace A067028.P670007721235443661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  A001222 (f1 (A001222 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067028.P670007721235443661

namespace A067028

/-- `lt[A001222(a(A001222(n))), 1]` -/
def P670007721235443661.Spec : Prop :=
  ∀ n, (P670007721235443661.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P15181776310996293974

`eq[3, A029600(a(A001222(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A067028.P15181776310996293974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A029600 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P15181776310996293974

namespace A067028

/-- `eq[3, A029600(a(A001222(n)))]` -/
def P15181776310996293974.Spec : Prop :=
  ∀ n, (P15181776310996293974.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P2972160526895393438

`eq[1, A000045(a(A001222(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A067028.P2972160526895393438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A000045 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P2972160526895393438

namespace A067028

/-- `eq[1, A000045(a(A001222(n)))]` -/
def P2972160526895393438.Spec : Prop :=
  ∀ n, (P2972160526895393438.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P2774717723407794955

`lt[2, A319410(A001222(n+1))]+1`
-/

namespace A067028.P2774717723407794955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067028.P2774717723407794955

namespace A067028

/-- `lt[2, A319410(A001222(n+1))]+1` -/
def P2774717723407794955.Spec : Prop :=
  ∀ n, (P2774717723407794955.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P13666367255135328834

`lt[2, A303809(A001222(n+2))]+2`
-/

namespace A067028.P13666367255135328834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A067028.P13666367255135328834

namespace A067028

/-- `lt[2, A303809(A001222(n+2))]+2` -/
def P13666367255135328834.Spec : Prop :=
  ∀ n, (P13666367255135328834.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P1763785180078951888

`eq[4, A036012(a(A001222(n))²)]` with `a(0)=0, a(1)=1`
-/

namespace A067028.P1763785180078951888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A036012 (f2 (A001222 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P1763785180078951888

namespace A067028

/-- `eq[4, A036012(a(A001222(n))²)]` -/
def P1763785180078951888.Spec : Prop :=
  ∀ n, (P1763785180078951888.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P841009404388926362

`eq[1, A330752(a(A001222(n)))²]` with `a(0)=2, a(1)=2`
-/

namespace A067028.P841009404388926362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A330752 (f2 (A001222 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P841009404388926362

namespace A067028

/-- `eq[1, A330752(a(A001222(n)))²]` -/
def P841009404388926362.Spec : Prop :=
  ∀ n, (P841009404388926362.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P991420042339547826

`eq[2, 4-A000005(a(A001222(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A067028.P991420042339547826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  4 - A000005 (f2 (A001222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P991420042339547826

namespace A067028

/-- `eq[2, 4-A000005(a(A001222(n)))]` -/
def P991420042339547826.Spec : Prop :=
  ∀ n, (P991420042339547826.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P8108782170352769765

`eq[3, A000005(2^a(A001222(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A067028.P8108782170352769765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f2 (A001222 n).toNat : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P8108782170352769765

namespace A067028

/-- `eq[3, A000005(2^a(A001222(n)))]` -/
def P8108782170352769765.Spec : Prop :=
  ∀ n, (P8108782170352769765.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P7967903154121966169

`eq[2, 4-A008279(a(A001222(n))²)]` with `a(0)=4`
-/

namespace A067028.P7967903154121966169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  4 - A008279 (f2 (A001222 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P7967903154121966169

namespace A067028

/-- `eq[2, 4-A008279(a(A001222(n))²)]` -/
def P7967903154121966169.Spec : Prop :=
  ∀ n, (P7967903154121966169.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P2172028528628197649

`lt[2, A103509(A001222(n+1)+1)]+1`
-/

namespace A067028.P2172028528628197649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067028.P2172028528628197649

namespace A067028

/-- `lt[2, A103509(A001222(n+1)+1)]+1` -/
def P2172028528628197649.Spec : Prop :=
  ∀ n, (P2172028528628197649.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P8174443825705053557

`lt[3, A103506(A001222(n+1)+1)]+1`
-/

namespace A067028.P8174443825705053557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067028.P8174443825705053557

namespace A067028

/-- `lt[3, A103506(A001222(n+1)+1)]+1` -/
def P8174443825705053557.Spec : Prop :=
  ∀ n, (P8174443825705053557.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P9491532359605599450

`eq[4, A073855(n)]`
-/

namespace A067028.P9491532359605599450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067028.P9491532359605599450

namespace A067028

/-- `eq[4, A073855(n)]` -/
def P9491532359605599450.Spec : Prop :=
  ∀ n, (P9491532359605599450.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P6434225850487287975

`lt[2, A323305(n+1)]+1`
-/

namespace A067028.P6434225850487287975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067028.P6434225850487287975

namespace A067028

/-- `lt[2, A323305(n+1)]+1` -/
def P6434225850487287975.Spec : Prop :=
  ∀ n, (P6434225850487287975.a n : ℤ) = A067028 (n + 1)

end A067028

/-! ## A067028.P11166505302249692982

`filter[A167175(n+1), A066247(#)]`
-/

namespace A067028.P11166505302249692982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A067028.P11166505302249692982

namespace A067028

/-- `filter[A167175(n+1), A066247(#)]` -/
def P11166505302249692982.Spec : Prop :=
  ∀ n, P11166505302249692982.a n = A067028 (n + 1)

end A067028

/-! ## A067028.P13548784189458849417

`filter[A167175(n+1), A252742(#)]`
-/

namespace A067028.P13548784189458849417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j).toNat = 1) n)

end

end A067028.P13548784189458849417

namespace A067028

/-- `filter[A167175(n+1), A252742(#)]` -/
def P13548784189458849417.Spec : Prop :=
  ∀ n, P13548784189458849417.a n = A067028 (n + 1)

end A067028

/-! ## A067028.P11001031240526697313

`filter[A167175(n+1), A337383(#)]`
-/

namespace A067028.P11001031240526697313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A067028.P11001031240526697313

namespace A067028

/-- `filter[A167175(n+1), A337383(#)]` -/
def P11001031240526697313.Spec : Prop :=
  ∀ n, P11001031240526697313.a n = A067028 (n + 1)

end A067028

/-!
# A067029: Exponent of least prime factor in prime factorization of n, a(1)=0.

The programs for A067029, the canonical program `A067029.P17255758945913048832` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067029 has offset 1).

The definition of A067029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067029.P17337367972579869435

`val(A071364(n+1), 2)`
-/

namespace A067029.P17337367972579869435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (n + 1)).toNat 2

end

end A067029.P17337367972579869435

namespace A067029

/-- `val(A071364(n+1), 2)` -/
def P17337367972579869435.Spec : Prop :=
  ∀ n, (P17337367972579869435.a n : ℤ) = A067029 (n + 1)

end A067029

/-! ## A067029.P11292168990012032123

`val(A083260(n+1), 2)`
-/

namespace A067029.P11292168990012032123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083260 (n + 1)).toNat 2

end

end A067029.P11292168990012032123

namespace A067029

/-- `val(A083260(n+1), 2)` -/
def P11292168990012032123.Spec : Prop :=
  ∀ n, (P11292168990012032123.a n : ℤ) = A067029 (n + 1)

end A067029

/-! ## A067029.P12607221278754224823

`val(A318885(n+1), 2)`
-/

namespace A067029.P12607221278754224823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318885 (n + 1)).toNat 2

end

end A067029.P12607221278754224823

namespace A067029

/-- `val(A318885(n+1), 2)` -/
def P12607221278754224823.Spec : Prop :=
  ∀ n, (P12607221278754224823.a n : ℤ) = A067029 (n + 1)

end A067029

/-! ## A067029.P3616149255642697536

`val(A348717(n+1), 2)`
-/

namespace A067029.P3616149255642697536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348717 (n + 1)).toNat 2

end

end A067029.P3616149255642697536

namespace A067029

/-- `val(A348717(n+1), 2)` -/
def P3616149255642697536.Spec : Prop :=
  ∀ n, (P3616149255642697536.a n : ℤ) = A067029 (n + 1)

end A067029

/-! ## A067029.P8935409760018782162

`val(n+1, A020639(abs(1-n)+2))`
-/

namespace A067029.P8935409760018782162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A020639 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A067029.P8935409760018782162

namespace A067029

/-- `val(n+1, A020639(abs(1-n)+2))` -/
def P8935409760018782162.Spec : Prop :=
  ∀ n, (P8935409760018782162.a n : ℤ) = A067029 (n + 1)

end A067029

/-! ## A067029.P15091965841571680645

`A001222(A028233(n+1))`
-/

namespace A067029.P15091965841571680645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028233 (n + 1)).toNat

end

end A067029.P15091965841571680645

namespace A067029

/-- `A001222(A028233(n+1))` -/
def P15091965841571680645.Spec : Prop :=
  ∀ n, P15091965841571680645.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P2605391753568931726

`A007814(A071364(n+1))`
-/

namespace A067029.P2605391753568931726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A071364 (n + 1)).toNat

end

end A067029.P2605391753568931726

namespace A067029

/-- `A007814(A071364(n+1))` -/
def P2605391753568931726.Spec : Prop :=
  ∀ n, P2605391753568931726.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P5646187628450708378

`A007814(A083260(n+1))`
-/

namespace A067029.P5646187628450708378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A083260 (n + 1)).toNat

end

end A067029.P5646187628450708378

namespace A067029

/-- `A007814(A083260(n+1))` -/
def P5646187628450708378.Spec : Prop :=
  ∀ n, P5646187628450708378.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P8197681493630057071

`A007814(A348717(n+1))`
-/

namespace A067029.P8197681493630057071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A348717 (n + 1)).toNat

end

end A067029.P8197681493630057071

namespace A067029

/-- `A007814(A348717(n+1))` -/
def P8197681493630057071.Spec : Prop :=
  ∀ n, P8197681493630057071.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P18073524757854176961

`A302045(A249817(n+1))`
-/

namespace A067029.P18073524757854176961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A249817 (n + 1)).toNat

end

end A067029.P18073524757854176961

namespace A067029

/-- `A302045(A249817(n+1))` -/
def P18073524757854176961.Spec : Prop :=
  ∀ n, P18073524757854176961.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P17491130221866779195

`∑{d}[A028233(n+1), A001221(#)]`
-/

namespace A067029.P17491130221866779195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A067029.P17491130221866779195

namespace A067029

/-- `∑{d}[A028233(n+1), A001221(#)]` -/
def P17491130221866779195.Spec : Prop :=
  ∀ n, P17491130221866779195.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P17255758945913048832

`A001222(n+1)-A362983(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A067029

/-- `A001222(n+1)-A362983(n+1)` -/
def P17255758945913048832.Spec : Prop :=
  ∀ n, P17255758945913048832.a n = A067029 (n + 1)

theorem P17255758945913048832.correct : P17255758945913048832.Spec := by
  intro n
  simp only [A067029, Nat.add_sub_cancel]

end A067029

/-! ## A067029.P2837459342180078646

`A001222((n+1)/A028234(n+1))`
-/

namespace A067029.P2837459342180078646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A067029.P2837459342180078646

namespace A067029

/-- `A001222((n+1)/A028234(n+1))` -/
def P2837459342180078646.Spec : Prop :=
  ∀ n, P2837459342180078646.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P9500808568736933980

`A051903((n+1)/A028234(n+1))`
-/

namespace A067029.P9500808568736933980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A067029.P9500808568736933980

namespace A067029

/-- `A051903((n+1)/A028234(n+1))` -/
def P9500808568736933980.Spec : Prop :=
  ∀ n, P9500808568736933980.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P3019940352765390436

`A051904((n+1)/A028234(n+1))`
-/

namespace A067029.P3019940352765390436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A067029.P3019940352765390436

namespace A067029

/-- `A051904((n+1)/A028234(n+1))` -/
def P3019940352765390436.Spec : Prop :=
  ∀ n, P3019940352765390436.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P11491638612215902705

`A069157((n+1)/A028234(n+1))`
-/

namespace A067029.P11491638612215902705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A067029.P11491638612215902705

namespace A067029

/-- `A069157((n+1)/A028234(n+1))` -/
def P11491638612215902705.Spec : Prop :=
  ∀ n, P11491638612215902705.a n = A067029 (n + 1)

end A067029

/-! ## A067029.P8402199054603936923

`A071178((n+1)/A028234(n+1))`
-/

namespace A067029.P8402199054603936923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A067029.P8402199054603936923

namespace A067029

/-- `A071178((n+1)/A028234(n+1))` -/
def P8402199054603936923.Spec : Prop :=
  ∀ n, P8402199054603936923.a n = A067029 (n + 1)

end A067029

/-!
# A067030: Numbers of the form k + reverse(k) for at least one k.

The programs for A067030, there is no canonical definition to state claims against.
-/

/-! ## A067030.P15368105996873208531

`A056964(A067033(n))`
-/

namespace A067030.P15368105996873208531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 n).toNat

end

end A067030.P15368105996873208531

/-! ## A067030.P2530019749847475052

`∪[A072427(n+1), A096768(n+1)]`
-/

namespace A067030.P2530019749847475052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067030.P2530019749847475052

/-! ## A067030.P8508180485980428907

`A067034(n)+A004086(A067034(n))`
-/

namespace A067030.P8508180485980428907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067034 n + A004086 (A067034 n).toNat

end

end A067030.P8508180485980428907

/-! ## A067030.P17373281063396603445

`A056964(A067034(n))`
-/

namespace A067030.P17373281063396603445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 n).toNat

end

end A067030.P17373281063396603445

/-! ## A067030.P17523182428539875980

`lt[A001222(n+1), A244569(n)²²]`
-/

namespace A067030.P17523182428539875980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244569 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067030.P17523182428539875980

/-! ## A067030.P5634929551470382159

`comp[A067031(n)]`
-/

namespace A067030.P5634929551470382159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A067030.P5634929551470382159

/-! ## A067030.P5764183229559100786

`comp[A244568(n+1)]`
-/

namespace A067030.P5764183229559100786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A067030.P5764183229559100786

/-! ## A067030.P1356843695228659987

`lt[A244568(n), A028310(n)]`
-/

namespace A067030.P1356843695228659987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067030.P1356843695228659987

/-! ## A067030.P10093553582190677191

`lt[A057427(n), A244569(n)]`
-/

namespace A067030.P10093553582190677191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067030.P10093553582190677191

/-! ## A067030.P16396071400088268959

`eq[A036453(n+1), A036453(A244569(n))]`
-/

namespace A067030.P16396071400088268959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A244569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067030.P16396071400088268959

/-! ## A067030.P10334579914350511051

`eq[A054977(n), A054977(A244569(n)-1)]`
-/

namespace A067030.P10334579914350511051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A244569 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067030.P10334579914350511051

/-! ## A067030.P4627092017263743975

`lt[A020639(A006093(n+1)), A244569(n)+1]`
-/

namespace A067030.P4627092017263743975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067030.P4627092017263743975

/-! ## A067030.P16636568636943153938

`lt[A001222(A139421(n+1)), A244569(n)]`
-/

namespace A067030.P16636568636943153938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A139421 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067030.P16636568636943153938

/-!
# A067031: Numbers that are not of the form k + reverse(k) for any k.

The programs for A067031, there is no canonical definition to state claims against.
-/

/-! ## A067031.P13177444071174422619

`comp[A067030(n)]`
-/

namespace A067031.P13177444071174422619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A067031.P13177444071174422619

/-! ## A067031.P13128634054894211784

`record[A244568(n+1)]`
-/

namespace A067031.P13128634054894211784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067031.P13128634054894211784

/-! ## A067031.P2896830695734751566

`comp[A004086(n)+n]`
-/

namespace A067031.P2896830695734751566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A067031.P2896830695734751566

/-! ## A067031.P3507494133718441030

`eq[1, A244569(n+1)]+1`
-/

namespace A067031.P3507494133718441030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067031.P3507494133718441030

/-! ## A067031.P14356472733775567315

`comp[A056964(n)]`
-/

namespace A067031.P14356472733775567315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A067031.P14356472733775567315

/-! ## A067031.P17075710389404752934

`eq[n, A244568(A028310(n))]`
-/

namespace A067031.P17075710389404752934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067031.P17075710389404752934

/-! ## A067031.P11565811024066055040

`lt[A028310(n), A244568(n)+1]`
-/

namespace A067031.P11565811024066055040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067031.P11565811024066055040

/-! ## A067031.P16172836709632396172

`eq[A054977(n), A244569(n)]`
-/

namespace A067031.P16172836709632396172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067031.P16172836709632396172

/-! ## A067031.P9361523542161100453

`eq[A057427(n), A244569(n)]`
-/

namespace A067031.P9361523542161100453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067031.P9361523542161100453

/-! ## A067031.P2992189214378467664

`lt[A244569(n), A020639(A006093(n+1))]`
-/

namespace A067031.P2992189214378467664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067031.P2992189214378467664

/-!
# A067034: Largest k such that A067030(n) = k + reverse(k).

The programs for A067034, there is no canonical definition to state claims against.
-/

/-! ## A067034.P6028968517051673827

`A338829(A067033(n)%A078845(n))`
-/

namespace A067034.P6028968517051673827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 (Int.tmod (A067033 n) (A078845 n)).toNat

end

end A067034.P6028968517051673827

/-! ## A067034.P2310596768094450646

`A338829(A067033(n))%p?[A340623(n)]`
-/

namespace A067034.P2310596768094450646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338829 (A067033 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A067034.P2310596768094450646

/-! ## A067034.P14641258593232752231

`A338829(A067033(n))+A256750(A022091(n))`
-/

namespace A067034.P14641258593232752231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 (A067033 n).toNat + A256750 (A022091 n).toNat

end

end A067034.P14641258593232752231

/-! ## A067034.P15355734180053773127

`A054977(A000045(n))*A338829(A067033(n))`
-/

namespace A067034.P15355734180053773127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000045 n).toNat * A338829 (A067033 n).toNat

end

end A067034.P15355734180053773127

/-! ## A067034.P4284684257372694071

`A054977(A067033(n)²)*A338829(A067033(n))`
-/

namespace A067034.P4284684257372694071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A067033 n ^ 2).toNat * A338829 (A067033 n).toNat

end

end A067034.P4284684257372694071

/-!
# A067035: n sets a new record for the number of integers k such that n = k + reverse(k).

The programs for A067035, there is no canonical definition to state claims against.
-/

/-! ## A067035.P7757509909982307920

`A072041(record[A067032(n)])`
-/

namespace A067035.P7757509909982307920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067035.P7757509909982307920

/-! ## A067035.P11144346830545639881

`A072041(record[A089898(n)])`
-/

namespace A067035.P11144346830545639881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067035.P11144346830545639881

/-! ## A067035.P15591947730444773584

`A072041(A067036(n+1))`
-/

namespace A067035.P15591947730444773584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (A067036 (n + 1)).toNat

end

end A067035.P15591947730444773584

/-! ## A067035.P2933249822258398703

`A072041(record[A061486(n)+1])`
-/

namespace A067035.P2933249822258398703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067035.P2933249822258398703

/-! ## A067035.P161700068926529150

`A072041(lt[A194630(n+1), A072041(2*n)])`
-/

namespace A067035.P161700068926529150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067035.P161700068926529150

/-!
# A067036: Records for the number of integers k such that an integer is of the form k + reverse(k).

The programs for A067036, the canonical program `A067036.P9913651704098405117` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067036 has offset 1).

The definition of A067036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067036.P9913651704098405117

`record[A061486(n)+1]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067036

/-- `record[A061486(n)+1]` -/
def P9913651704098405117.Spec : Prop :=
  ∀ n, P9913651704098405117.a n = A067036 (n + 1)

theorem P9913651704098405117.correct : P9913651704098405117.Spec := by
  intro n
  simp only [A067036, Nat.add_sub_cancel]

end A067036

/-! ## A067036.P4006748553350587072

`record[A264600(n)+1-A264668(n)]`
-/

namespace A067036.P4006748553350587072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n + (1 - A264668 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P4006748553350587072

namespace A067036

/-- `record[A264600(n)+1-A264668(n)]` -/
def P4006748553350587072.Spec : Prop :=
  ∀ n, P4006748553350587072.a n = A067036 (n + 1)

end A067036

/-! ## A067036.P10308734500541539933

`record[∏{digits}[n, #+1]]`
-/

namespace A067036.P10308734500541539933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P10308734500541539933

namespace A067036

/-- `record[∏{digits}[n, #+1]]` -/
def P10308734500541539933.Spec : Prop :=
  ∀ n, (P10308734500541539933.a n : ℤ) = A067036 (n + 1)

end A067036

/-! ## A067036.P616970040001842958

`record[A089898(n)]`
-/

namespace A067036.P616970040001842958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P616970040001842958

namespace A067036

/-- `record[A089898(n)]` -/
def P616970040001842958.Spec : Prop :=
  ∀ n, P616970040001842958.a n = A067036 (n + 1)

end A067036

/-! ## A067036.P7491993912011858571

`record[A298372(A061601(n))]`
-/

namespace A067036.P7491993912011858571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298372 (A061601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P7491993912011858571

namespace A067036

/-- `record[A298372(A061601(n))]` -/
def P7491993912011858571.Spec : Prop :=
  ∀ n, P7491993912011858571.a n = A067036 (n + 1)

end A067036

/-! ## A067036.P17716855348463868377

`record[A068064(n+1)]`
-/

namespace A067036.P17716855348463868377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P17716855348463868377

namespace A067036

/-- `record[A068064(n+1)]` -/
def P17716855348463868377.Spec : Prop :=
  ∀ n, P17716855348463868377.a n = A067036 (n + 1)

end A067036

/-! ## A067036.P17709777607958563117

`A008611(record[3*A061486(n)])`
-/

namespace A067036.P17709777607958563117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067036.P17709777607958563117

namespace A067036

/-- `A008611(record[3*A061486(n)])` -/
def P17709777607958563117.Spec : Prop :=
  ∀ n, P17709777607958563117.a n = A067036 (n + 1)

end A067036

/-! ## A067036.P1353364047965573408

`record[A067032(n)]`
-/

namespace A067036.P1353364047965573408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P1353364047965573408

namespace A067036

/-- `record[A067032(n)]` -/
def P1353364047965573408.Spec : Prop :=
  ∀ n, P1353364047965573408.a n = A067036 (n + 1)

end A067036

/-! ## A067036.P15020206270396225033

`record[A064553(A113581(n))]`
-/

namespace A067036.P15020206270396225033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A113581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P15020206270396225033

namespace A067036

/-- `record[A064553(A113581(n))]` -/
def P15020206270396225033.Spec : Prop :=
  ∀ n, P15020206270396225033.a n = A067036 (n + 1)

end A067036

/-!
# A067037: a(n) = n^m where m = floor(Sum_{k=1..n} 1/k).

The programs for A067037, the canonical program `A067037.P2022859599819277212` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067037 has offset 1).

The definition of A067037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067037.P2022859599819277212

`(n+1)^floor(∑[1/(n+1)])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067037

/-- `(n+1)^floor(∑[1/(n+1)])` -/
def P2022859599819277212.Spec : Prop :=
  ∀ n, P2022859599819277212.a n = (A067037 (n + 1) : ℚ)

end A067037

/-! ## A067037.P3616250343569425462

`sqrt((n+1)²^A055980(n+1))`
-/

namespace A067037.P3616250343569425462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1) ^ 2 : ℚ) ^ (A055980 (n + 1) : ℤ) : ℝ)

end

end A067037.P3616250343569425462

namespace A067037

/-- `sqrt((n+1)²^A055980(n+1))` -/
def P3616250343569425462.Spec : Prop :=
  ∀ n, P3616250343569425462.a n = (A067037 (n + 1) : ℝ)

end A067037

/-! ## A067037.P2350086435376891773

`abs(A001478(n+1)^A055980(n+1))`
-/

namespace A067037.P2350086435376891773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A001478 (n + 1) : ℚ) ^ (A055980 (n + 1) : ℤ)|

end

end A067037.P2350086435376891773

namespace A067037

/-- `abs(A001478(n+1)^A055980(n+1))` -/
def P2350086435376891773.Spec : Prop :=
  ∀ n, P2350086435376891773.a n = (A067037 (n + 1) : ℚ)

end A067037

/-! ## A067037.P12011970092643942521

`abs((A005408(n)-n)^A055980(n+1))`
-/

namespace A067037.P12011970092643942521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A005408 n - (n : ℤ) : ℚ) ^ (A055980 (n + 1) : ℤ)|

end

end A067037.P12011970092643942521

namespace A067037

/-- `abs((A005408(n)-n)^A055980(n+1))` -/
def P12011970092643942521.Spec : Prop :=
  ∀ n, P12011970092643942521.a n = (A067037 (n + 1) : ℚ)

end A067037

/-! ## A067037.P5951598287021441272

`gcd((n+1)^A055980(n+1), A000038(n))`
-/

namespace A067037.P5951598287021441272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A055980 (n + 1) : ℤ))) (A000038 n)

end

end A067037.P5951598287021441272

namespace A067037

/-- `gcd((n+1)^A055980(n+1), A000038(n))` -/
def P5951598287021441272.Spec : Prop :=
  ∀ n, (P5951598287021441272.a n : ℤ) = A067037 (n + 1)

end A067037

/-! ## A067037.P18301823355159830184

`record[A065648(n)^A055980(A065648(n))]`
-/

namespace A067037.P18301823355159830184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065648 n : ℚ) ^ (A055980 (A065648 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067037.P18301823355159830184

namespace A067037

/-- `record[A065648(n)^A055980(A065648(n))]` -/
def P18301823355159830184.Spec : Prop :=
  ∀ n, P18301823355159830184.a n = (A067037 (n + 1) : ℚ)

end A067037

/-! ## A067037.P12885537207890784201

`((n+1)^A055980(n+1))%A235180(n+1)`
-/

namespace A067037.P12885537207890784201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A055980 (n + 1) : ℤ))) (A235180 (n + 1))

end

end A067037.P12885537207890784201

namespace A067037

/-- `((n+1)^A055980(n+1))%A235180(n+1)` -/
def P12885537207890784201.Spec : Prop :=
  ∀ n, P12885537207890784201.a n = A067037 (n + 1)

end A067037

/-!
# A067038: a(n) = floor(n^m) where m = Sum_{k=1..n} (1/k).

The programs for A067038, the canonical program `A067038.P6661436318598996691` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067038 has offset 1).

The definition of A067038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067038.P6661436318598996691

`floor((n+1)^∑[1/(n+1)])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067038

/-- `floor((n+1)^∑[1/(n+1)])` -/
def P6661436318598996691.Spec : Prop :=
  ∀ n, P6661436318598996691.a n = A067038 (n + 1)

theorem P6661436318598996691.correct : P6661436318598996691.Spec := by
  intro n
  simp only [A067038, Nat.add_sub_cancel]

end A067038

/-! ## A067038.P7914911526824467570

`A000267(n*A055589(n))`
-/

namespace A067038.P7914911526824467570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ((n : ℤ) * A055589 n).toNat

end

end A067038.P7914911526824467570

namespace A067038

/-- `A000267(n*A055589(n))` -/
def P7914911526824467570.Spec : Prop :=
  ∀ n, P7914911526824467570.a n = A067038 (n + 1)

end A067038

/-! ## A067038.P2150126407570057134

`A000711(n)-A000196(A003463(n))`
-/

namespace A067038.P2150126407570057134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000711 n - A000196 (A003463 n).toNat

end

end A067038.P2150126407570057134

namespace A067038

/-- `A000711(n)-A000196(A003463(n))` -/
def P2150126407570057134.Spec : Prop :=
  ∀ n, P2150126407570057134.a n = A067038 (n + 1)

end A067038

/-!
# A067039: 

The programs for A067039, there is no canonical definition to state claims against.
-/

/-! ## A067039.P15382411459682907033

`(n+1)^n!`
-/

namespace A067039.P15382411459682907033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.factorial n

end

end A067039.P15382411459682907033

/-!
# A067040: a(n) = n^(sum of digits of n).

The programs for A067040, the canonical program `A067040.P6507352666235301990` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067040 has offset 0).

The definition of A067040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067040.P6507352666235301990

`n^A007953(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067040

/-- `n^A007953(n)` -/
def P6507352666235301990.Spec : Prop :=
  ∀ n, P6507352666235301990.a n = (A067040 n : ℚ)

end A067040

/-! ## A067040.P4327178849987974484

`n^∑{digits}[n, #]`
-/

namespace A067040.P4327178849987974484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A067040.P4327178849987974484

namespace A067040

/-- `n^∑{digits}[n, #]` -/
def P4327178849987974484.Spec : Prop :=
  ∀ n, (P4327178849987974484.a n : ℤ) = A067040 n

end A067040

/-! ## A067040.P9834620747177338830

`∏{digits}[n, n^#]`
-/

namespace A067040.P9834620747177338830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => n ^ x).prod

end

end A067040.P9834620747177338830

namespace A067040

/-- `∏{digits}[n, n^#]` -/
def P9834620747177338830.Spec : Prop :=
  ∀ n, (P9834620747177338830.a n : ℤ) = A067040 n

end A067040

/-! ## A067040.P1327157460745329209

`n^sqrt(A118881(n))`
-/

namespace A067040.P1327157460745329209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.sqrt (A118881 n : ℝ))

end

end A067040.P1327157460745329209

namespace A067040

/-- `n^sqrt(A118881(n))` -/
def P1327157460745329209.Spec : Prop :=
  ∀ n, P1327157460745329209.a n = (A067040 n : ℝ)

end A067040

/-! ## A067040.P8896601147727879493

`sqrt(n)^A169805(n)`
-/

namespace A067040.P8896601147727879493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (A169805 n : ℤ)

end

end A067040.P8896601147727879493

namespace A067040

/-- `sqrt(n)^A169805(n)` -/
def P8896601147727879493.Spec : Prop :=
  ∀ n, P8896601147727879493.a n = (A067040 n : ℝ)

end A067040

/-! ## A067040.P8206067919206781798

`n^(A062028(n)-n)`
-/

namespace A067040.P8206067919206781798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A062028 n - (n : ℤ) : ℤ)

end

end A067040.P8206067919206781798

namespace A067040

/-- `n^(A062028(n)-n)` -/
def P8206067919206781798.Spec : Prop :=
  ∀ n, P8206067919206781798.a n = (A067040 n : ℚ)

end A067040

/-! ## A067040.P7783736412982640689

`n^(n-A066568(n))`
-/

namespace A067040.P7783736412982640689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - A066568 n : ℤ)

end

end A067040.P7783736412982640689

namespace A067040

/-- `n^(n-A066568(n))` -/
def P7783736412982640689.Spec : Prop :=
  ∀ n, P7783736412982640689.a n = (A067040 n : ℚ)

end A067040

/-! ## A067040.P7704096977771166078

`n^(n+1-A160941(n+1))`
-/

namespace A067040.P7704096977771166078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n + 1 : ℤ) - A160941 (n + 1) : ℤ)

end

end A067040.P7704096977771166078

namespace A067040

/-- `n^(n+1-A160941(n+1))` -/
def P7704096977771166078.Spec : Prop :=
  ∀ n, P7704096977771166078.a n = (A067040 n : ℚ)

end A067040

/-! ## A067040.P9160814181210756684

`n^(A160939(n+1)-(n+1))`
-/

namespace A067040.P9160814181210756684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A160939 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A067040.P9160814181210756684

namespace A067040

/-- `n^(A160939(n+1)-(n+1))` -/
def P9160814181210756684.Spec : Prop :=
  ∀ n, P9160814181210756684.a n = (A067040 n : ℚ)

end A067040

/-! ## A067040.P7775252563046851693

`n^(A160942(n+1)/(n+1))`
-/

namespace A067040.P7775252563046851693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((A160942 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A067040.P7775252563046851693

namespace A067040

/-- `n^(A160942(n+1)/(n+1))` -/
def P7775252563046851693.Spec : Prop :=
  ∀ n, P7775252563046851693.a n = (A067040 n : ℝ)

end A067040

/-! ## A067040.P9609478867593035861

`n^(A062329(n)+A007954(n))`
-/

namespace A067040.P9609478867593035861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A062329 n + A007954 n : ℤ)

end

end A067040.P9609478867593035861

namespace A067040

/-- `n^(A062329(n)+A007954(n))` -/
def P9609478867593035861.Spec : Prop :=
  ∀ n, P9609478867593035861.a n = (A067040 n : ℚ)

end A067040

/-! ## A067040.P12418851378593528372

`n^((A062028(n)+n)%A004277(n))`
-/

namespace A067040.P12418851378593528372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A062028 n + (n : ℤ)) (A004277 n) : ℤ)

end

end A067040.P12418851378593528372

namespace A067040

/-- `n^((A062028(n)+n)%A004277(n))` -/
def P12418851378593528372.Spec : Prop :=
  ∀ n, P12418851378593528372.a n = (A067040 n : ℚ)

end A067040

/-! ## A067040.P6522177954803394805

`n^A062329(10*n)`
-/

namespace A067040.P6522177954803394805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A062329 (10 * n) : ℤ)

end

end A067040.P6522177954803394805

namespace A067040

/-- `n^A062329(10*n)` -/
def P6522177954803394805.Spec : Prop :=
  ∀ n, P6522177954803394805.a n = (A067040 n : ℚ)

end A067040

/-!
# A067041: a(n) = n^(product of digits of n).

The programs for A067041, there is no canonical definition to state claims against.
-/

/-! ## A067041.P16587201574705048591

`n^∏{digits}[n, #]`
-/

namespace A067041.P16587201574705048591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A067041.P16587201574705048591

/-! ## A067041.P2112869481095344146

`n^A007954(n)`
-/

namespace A067041.P2112869481095344146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A007954 n : ℤ)

end

end A067041.P2112869481095344146

/-! ## A067041.P9652201371833190528

`n^abs(A187844(n))`
-/

namespace A067041.P9652201371833190528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|A187844 n| : ℤ)

end

end A067041.P9652201371833190528

/-! ## A067041.P12212815658644993517

`n^(n-A070565(n))`
-/

namespace A067041.P12212815658644993517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - A070565 n : ℤ)

end

end A067041.P12212815658644993517

/-! ## A067041.P2893840947010118468

`n^(A230099(n)-n)`
-/

namespace A067041.P2893840947010118468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A230099 n - (n : ℤ) : ℤ)

end

end A067041.P2893840947010118468

/-! ## A067041.P13182876971253841620

`n^(∑{digits}[n, #]-A062329(n))`
-/

namespace A067041.P13182876971253841620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A062329 n : ℤ)

end

end A067041.P13182876971253841620

/-! ## A067041.P2404463367169558488

`n^(A061762(n)-A007953(n))`
-/

namespace A067041.P2404463367169558488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A061762 n - A007953 n : ℤ)

end

end A067041.P2404463367169558488

/-! ## A067041.P16787629605636605417

`n^(A062028(n)-n-A062329(n))`
-/

namespace A067041.P16787629605636605417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A062028 n - (n : ℤ) - A062329 n : ℤ)

end

end A067041.P16787629605636605417

/-!
# A067042: Numbers in which the product of digits in even positions = product of digits in odd positions.

The programs for A067042, there is no canonical definition to state claims against.
-/

/-! ## A067042.P10222080957729861088

`∑[A343750(Δ[A302801(n)])]`
-/

namespace A067042.P10222080957729861088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343750 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067042.P10222080957729861088

/-!
# A067043: Nondecreasing sums of digits: a(0) = 0 and for n>0: a(n) = Min{m>n|SumOfDigits(m)>= SumOfDigits(a(n-1))}, where SumOfDigits = A007953.

The programs for A067043, there is no canonical definition to state claims against.
-/

/-! ## A067043.P10228630553686177701

`A199343(a(n-1))` with `a(0)=0`
-/

namespace A067043.P10228630553686177701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A199343 (a (n - 1)).toNat

end

end A067043.P10228630553686177701

/-! ## A067043.P15052310126408565150

`eq[0, A138471(A004151(n+1))]`
-/

namespace A067043.P15052310126408565150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A004151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067043.P15052310126408565150

/-! ## A067043.P10788497304507016703

`record[n%A037124(A007953(n)+2)]`
-/

namespace A067043.P10788497304507016703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A037124 (A007953 n + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067043.P10788497304507016703

/-! ## A067043.P11731353278087793668

`eq[A004151(n+1), A342829(n+1)]`
-/

namespace A067043.P11731353278087793668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067043.P11731353278087793668

/-! ## A067043.P8834283283218002761

`lt[A004151(n+1), A089898(n+1)]`
-/

namespace A067043.P8834283283218002761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067043.P8834283283218002761

/-! ## A067043.P15186102745804953082

`record[A054842(n)+n]-record[A054842(n)]`
-/

namespace A067043.P15186102745804953082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A067043.P15186102745804953082

/-! ## A067043.P3594810487369082679

`eq[0, A138472(n)]`
-/

namespace A067043.P3594810487369082679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067043.P3594810487369082679

/-! ## A067043.P3921101117665865285

`record[gcd(A038608(n), A138472(n))]`
-/

namespace A067043.P3921101117665865285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A138472 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067043.P3921101117665865285

/-! ## A067043.P5395076758787124400

`eq[n, A138471(n)+A138470(n)]`
-/

namespace A067043.P5395076758787124400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 n + A138470 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067043.P5395076758787124400

/-! ## A067043.P9664435604224068604

`eq[A138471(A017377(n)), A138471(n)]`
-/

namespace A067043.P9664435604224068604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A017377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067043.P9664435604224068604

/-!
# A067044: Smallest positive k such that k*n contains only even digits.

The programs for A067044, there is no canonical definition to state claims against.
-/

/-! ## A067044.P16233280738697010111

`A061807(n+1)/(n+1)`
-/

namespace A067044.P16233280738697010111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061807 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A067044.P16233280738697010111

/-! ## A067044.P16394227107318642139

`A022144(A061807(n+1))%A004771(n)`
-/

namespace A067044.P16394227107318642139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A061807 (n + 1)).toNat) (A004771 n)

end

end A067044.P16394227107318642139

/-! ## A067044.P5255982477937337377

`gcd(val(n+1, A061807(n+1)), A350697(n+1))`
-/

namespace A067044.P5255982477937337377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) (A061807 (n + 1)).toNat : ℤ) (A350697 (n + 1))

end

end A067044.P5255982477937337377

/-! ## A067044.P14672565807133360935

`A350697(n+1)^val(A061807(n+1), A350538(n+1))`
-/

namespace A067044.P14672565807133360935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350697 (n + 1) ^ SequenceMachineLib.valuation (A061807 (n + 1)).toNat (A350538 (n + 1)).toNat

end

end A067044.P14672565807133360935

/-! ## A067044.P7669484997914289467

`gcd(A002654(A005578(n)+2+n), A350697(n+1))`
-/

namespace A067044.P7669484997914289467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002654 (A005578 n + 2 + (n : ℤ)).toNat) (A350697 (n + 1))

end

end A067044.P7669484997914289467

/-!
# A067046: a(n) = lcm(n, n+1, n+2)/6.

The programs for A067046, the canonical program `A067046.P15996770694766795448` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067046 has offset 1).

The definition of A067046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067046.P2378325031415104232

`C(n+3, 3)/(2-(n+1)%2)`
-/

namespace A067046.P2378325031415104232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (2 - (((n + 1) % 2 : ℕ) : ℤ) : ℚ)

end

end A067046.P2378325031415104232

namespace A067046

/-- `C(n+3, 3)/(2-(n+1)%2)` -/
def P2378325031415104232.Spec : Prop :=
  ∀ n, P2378325031415104232.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P2501332528299025516

`C(n+3, 3)*(3-(-1)^(n+1))/4`
-/

namespace A067046.P2501332528299025516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 3 : ℤ) * (3 - (-1) ^ (n + 1)) : ℚ) / 4

end

end A067046.P2501332528299025516

namespace A067046

/-- `C(n+3, 3)*(3-(-1)^(n+1))/4` -/
def P2501332528299025516.Spec : Prop :=
  ∀ n, P2501332528299025516.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P15996770694766795448

`A033931(n+1)/6`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067046

/-- `A033931(n+1)/6` -/
def P15996770694766795448.Spec : Prop :=
  ∀ n, P15996770694766795448.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P14128899152419611580

`C(n+3, 3)/gcd(2, n+1)`
-/

namespace A067046.P14128899152419611580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A067046.P14128899152419611580

namespace A067046

/-- `C(n+3, 3)/gcd(2, n+1)` -/
def P14128899152419611580.Spec : Prop :=
  ∀ n, P14128899152419611580.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P13369721017365642133

`C(n+3, 3)/(and(1, n)+1)`
-/

namespace A067046.P13369721017365642133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A067046.P13369721017365642133

namespace A067046

/-- `C(n+3, 3)/(and(1, n)+1)` -/
def P13369721017365642133.Spec : Prop :=
  ∀ n, P13369721017365642133.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P2929579877789323297

`∑[∑[n+1]]/(n%2+1)`
-/

namespace A067046.P2929579877789323297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A067046.P2929579877789323297

namespace A067046

/-- `∑[∑[n+1]]/(n%2+1)` -/
def P2929579877789323297.Spec : Prop :=
  ∀ n, P2929579877789323297.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P5493066604899417254

`∑[∑[n+1]]/(and(1, n)+1)`
-/

namespace A067046.P5493066604899417254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A067046.P5493066604899417254

namespace A067046

/-- `∑[∑[n+1]]/(and(1, n)+1)` -/
def P5493066604899417254.Spec : Prop :=
  ∀ n, P5493066604899417254.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P11849315315918238421

`lcm(2, n+3)*∑[n+1]/6`
-/

namespace A067046.P11849315315918238421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 6

end

end A067046.P11849315315918238421

namespace A067046

/-- `lcm(2, n+3)*∑[n+1]/6` -/
def P11849315315918238421.Spec : Prop :=
  ∀ n, P11849315315918238421.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P11150860620731067708

`∑[∑[n+1]]/(2-char[2*n])`
-/

namespace A067046.P11150860620731067708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A067046.P11150860620731067708

namespace A067046

/-- `∑[∑[n+1]]/(2-char[2*n])` -/
def P11150860620731067708.Spec : Prop :=
  ∀ n, P11150860620731067708.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P8154388388573663609

`gcd(∑[∑[(n+1)²]], ∑[∑[n+1]])`
-/

namespace A067046.P8154388388573663609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A067046.P8154388388573663609

namespace A067046

/-- `gcd(∑[∑[(n+1)²]], ∑[∑[n+1]])` -/
def P8154388388573663609.Spec : Prop :=
  ∀ n, (P8154388388573663609.a n : ℤ) = A067046 (n + 1)

end A067046

/-! ## A067046.P9061830091196179943

`∑[∑[n+1]]/2*gcd(n, n+2)`
-/

namespace A067046.P9061830091196179943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * (Nat.gcd n (n + 2) : ℚ)

end

end A067046.P9061830091196179943

namespace A067046

/-- `∑[∑[n+1]]/2*gcd(n, n+2)` -/
def P9061830091196179943.Spec : Prop :=
  ∀ n, P9061830091196179943.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P5381896441679284232

`∑[1-a(n-1)]*∑[n+1]-a(n-1)` with `a(0)=1`
-/

namespace A067046.P5381896441679284232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - a (n - 1)

end

end A067046.P5381896441679284232

namespace A067046

/-- `∑[1-a(n-1)]*∑[n+1]-a(n-1)` -/
def P5381896441679284232.Spec : Prop :=
  ∀ n, P5381896441679284232.a n = A067046 (n + 1)

end A067046

/-! ## A067046.P13081849221415270351

`abs(∑[A122576(n+1)])`
-/

namespace A067046.P13081849221415270351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A067046.P13081849221415270351

namespace A067046

/-- `abs(∑[A122576(n+1)])` -/
def P13081849221415270351.Spec : Prop :=
  ∀ n, P13081849221415270351.a n = A067046 (n + 1)

end A067046

/-! ## A067046.P7793967429177699127

`A291681(n)+a(n-1)` with `a(0)=1`
-/

namespace A067046.P7793967429177699127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291681 n + a (n - 1)

end

end A067046.P7793967429177699127

namespace A067046

/-- `A291681(n)+a(n-1)` -/
def P7793967429177699127.Spec : Prop :=
  ∀ n, P7793967429177699127.a n = A067046 (n + 1)

end A067046

/-! ## A067046.P6115170418202501413

`A212760(n)-a(n-1)` with `a(0)=1`
-/

namespace A067046.P6115170418202501413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212760 n - a (n - 1)

end

end A067046.P6115170418202501413

namespace A067046

/-- `A212760(n)-a(n-1)` -/
def P6115170418202501413.Spec : Prop :=
  ∀ n, P6115170418202501413.a n = A067046 (n + 1)

end A067046

/-! ## A067046.P12794367410773492779

`(char[2*n]+1)/2*A000292(n+1)`
-/

namespace A067046.P12794367410773492779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) / 2 * (A000292 (n + 1) : ℚ)

end

end A067046.P12794367410773492779

namespace A067046

/-- `(char[2*n]+1)/2*A000292(n+1)` -/
def P12794367410773492779.Spec : Prop :=
  ∀ n, P12794367410773492779.a n = (A067046 (n + 1) : ℚ)

end A067046

/-! ## A067046.P15018235832327771264

`lcm(A027626(n), A234041(n))`
-/

namespace A067046.P15018235832327771264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027626 n) (A234041 n)

end

end A067046.P15018235832327771264

namespace A067046

/-- `lcm(A027626(n), A234041(n))` -/
def P15018235832327771264.Spec : Prop :=
  ∀ n, (P15018235832327771264.a n : ℤ) = A067046 (n + 1)

end A067046

/-! ## A067046.P1227053116679366617

`A027626(n)*A060789(n+1)`
-/

namespace A067046.P1227053116679366617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 n * A060789 (n + 1)

end

end A067046.P1227053116679366617

namespace A067046

/-- `A027626(n)*A060789(n+1)` -/
def P1227053116679366617.Spec : Prop :=
  ∀ n, P1227053116679366617.a n = A067046 (n + 1)

end A067046

/-! ## A067046.P10008475582050533789

`∑[A291681(n+1)]+1-A291681(n+1)`
-/

namespace A067046.P10008475582050533789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A291681 (n + 1))

end

end A067046.P10008475582050533789

namespace A067046

/-- `∑[A291681(n+1)]+1-A291681(n+1)` -/
def P10008475582050533789.Spec : Prop :=
  ∀ n, P10008475582050533789.a n = A067046 (n + 1)

end A067046

/-! ## A067046.P12260153195862848397

`A138190(n+2)*A177704(n+1)`
-/

namespace A067046.P12260153195862848397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138190 (n + 2) * A177704 (n + 1)

end

end A067046.P12260153195862848397

namespace A067046

/-- `A138190(n+2)*A177704(n+1)` -/
def P12260153195862848397.Spec : Prop :=
  ∀ n, P12260153195862848397.a n = A067046 (n + 1)

end A067046

/-!
# A067047: a(n) = lcm(n, n+1, n+2, n+3)/12.

The programs for A067047, the canonical program `A067047.P11301032730929694730` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067047 has offset 1).

The definition of A067047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067047.P13984829856955796019

`∑[∑[∑[n+1]]]/gcd(3, n+1)`
-/

namespace A067047.P13984829856955796019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 3 (n + 1) : ℚ)

end

end A067047.P13984829856955796019

namespace A067047

/-- `∑[∑[∑[n+1]]]/gcd(3, n+1)` -/
def P13984829856955796019.Spec : Prop :=
  ∀ n, P13984829856955796019.a n = (A067047 (n + 1) : ℚ)

end A067047

/-! ## A067047.P4042950792735267500

`∑[∑[∑[n+1]]]/or(1, n%3)`
-/

namespace A067047.P4042950792735267500
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 1 (n % 3) : ℚ)

end

end A067047.P4042950792735267500

namespace A067047

/-- `∑[∑[∑[n+1]]]/or(1, n%3)` -/
def P4042950792735267500.Spec : Prop :=
  ∀ n, P4042950792735267500.a n = (A067047 (n + 1) : ℚ)

end A067047

/-! ## A067047.P11301032730929694730

`gcd(A154286(n), A291288(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067047

/-- `gcd(A154286(n), A291288(n))` -/
def P11301032730929694730.Spec : Prop :=
  ∀ n, (P11301032730929694730.a n : ℤ) = A067047 (n + 1)

theorem P11301032730929694730.correct : P11301032730929694730.Spec := by
  intro n
  simp only [A067047, Nat.add_sub_cancel]

end A067047

/-! ## A067047.P9918165492512602025

`A027800(n)/A203648(n+1)`
-/

namespace A067047.P9918165492512602025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027800 n : ℚ) / (A203648 (n + 1) : ℚ)

end

end A067047.P9918165492512602025

namespace A067047

/-- `A027800(n)/A203648(n+1)` -/
def P9918165492512602025.Spec : Prop :=
  ∀ n, P9918165492512602025.a n = (A067047 (n + 1) : ℚ)

end A067047

/-! ## A067047.P7938767088372925621

`A006542(n+4)/A027626(n)`
-/

namespace A067047.P7938767088372925621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006542 (n + 4) : ℚ) / (A027626 n : ℚ)

end

end A067047.P7938767088372925621

namespace A067047

/-- `A006542(n+4)/A027626(n)` -/
def P7938767088372925621.Spec : Prop :=
  ∀ n, P7938767088372925621.a n = (A067047 (n + 1) : ℚ)

end A067047

/-! ## A067047.P17083192915976820023

`gcd(A027800(n), A351697(n+1))`
-/

namespace A067047.P17083192915976820023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027800 n) (A351697 (n + 1))

end

end A067047.P17083192915976820023

namespace A067047

/-- `gcd(A027800(n), A351697(n+1))` -/
def P17083192915976820023.Spec : Prop :=
  ∀ n, (P17083192915976820023.a n : ℤ) = A067047 (n + 1)

end A067047

/-! ## A067047.P523049862830119247

`A351697(n+1)/A144437(n+1)`
-/

namespace A067047.P523049862830119247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351697 (n + 1) : ℚ) / (A144437 (n + 1) : ℚ)

end

end A067047.P523049862830119247

namespace A067047

/-- `A351697(n+1)/A144437(n+1)` -/
def P523049862830119247.Spec : Prop :=
  ∀ n, P523049862830119247.a n = (A067047 (n + 1) : ℚ)

end A067047

/-! ## A067047.P12441415635203606027

`gcd(A120054(n+1), A157706(n+2))`
-/

namespace A067047.P12441415635203606027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120054 (n + 1)) (A157706 (n + 2))

end

end A067047.P12441415635203606027

namespace A067047

/-- `gcd(A120054(n+1), A157706(n+2))` -/
def P12441415635203606027.Spec : Prop :=
  ∀ n, (P12441415635203606027.a n : ℤ) = A067047 (n + 1)

end A067047

/-! ## A067047.P14173438510998356763

`A027626(n+1)/2*A234041(n)`
-/

namespace A067047.P14173438510998356763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027626 (n + 1) : ℚ) / 2 * (A234041 n : ℚ)

end

end A067047.P14173438510998356763

namespace A067047

/-- `A027626(n+1)/2*A234041(n)` -/
def P14173438510998356763.Spec : Prop :=
  ∀ n, P14173438510998356763.a n = (A067047 (n + 1) : ℚ)

end A067047

/-! ## A067047.P13031126355834836399

`A051724(n+1)*A208950(n+3)`
-/

namespace A067047.P13031126355834836399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 1) * A208950 (n + 3)

end

end A067047.P13031126355834836399

namespace A067047

/-- `A051724(n+1)*A208950(n+3)` -/
def P13031126355834836399.Spec : Prop :=
  ∀ n, P13031126355834836399.a n = A067047 (n + 1)

end A067047

/-! ## A067047.P13407098351142964375

`gcd(A080951(n), A157706(n+2))`
-/

namespace A067047.P13407098351142964375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080951 n) (A157706 (n + 2))

end

end A067047.P13407098351142964375

namespace A067047

/-- `gcd(A080951(n), A157706(n+2))` -/
def P13407098351142964375.Spec : Prop :=
  ∀ n, (P13407098351142964375.a n : ℤ) = A067047 (n + 1)

end A067047

/-!
# A067048: a(n) = lcm(n, n+1, n+2, n+3, n+4) / 60.

The programs for A067048, the canonical program `A067048.P15093094909252893776` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067048 has offset 1).

The definition of A067048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067048.P15093094909252893776

`(n+5)!*gcd(n, 3)/(360*n!*gcd(n+1, 4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067048

/-- `(n+5)!*gcd(n, 3)/(360*n!*gcd(n+1, 4))` -/
def P15093094909252893776.Spec : Prop :=
  ∀ n, P15093094909252893776.a n = (A067048 (n + 1) : ℚ)

end A067048

/-! ## A067048.P5990453547970567788

`gcd(A006857(n), A189046(n))`
-/

namespace A067048.P5990453547970567788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006857 n) (A189046 n)

end

end A067048.P5990453547970567788

namespace A067048

/-- `gcd(A006857(n), A189046(n))` -/
def P5990453547970567788.Spec : Prop :=
  ∀ n, (P5990453547970567788.a n : ℤ) = A067048 (n + 1)

end A067048

/-! ## A067048.P2140508349305930732

`gcd(A050403(n), A189046(A028310(n)))`
-/

namespace A067048.P2140508349305930732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050403 n) (A189046 (A028310 n).toNat)

end

end A067048.P2140508349305930732

namespace A067048

/-- `gcd(A050403(n), A189046(A028310(n)))` -/
def P2140508349305930732.Spec : Prop :=
  ∀ n, (P2140508349305930732.a n : ℤ) = A067048 (n + 1)

end A067048

/-! ## A067048.P9080344854182754020

`gcd(Δ[A189046(n)], A189046(n+1))`
-/

namespace A067048.P9080344854182754020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A189046 (n + 1))

end

end A067048.P9080344854182754020

namespace A067048

/-- `gcd(Δ[A189046(n)], A189046(n+1))` -/
def P9080344854182754020.Spec : Prop :=
  ∀ n, (P9080344854182754020.a n : ℤ) = A067048 (n + 1)

end A067048

/-! ## A067048.P13900415499081220415

`gcd(gcd(A000579(n+3)*A000579(n+7), A000579(n+5)), A050406(n))`
-/

namespace A067048.P13900415499081220415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.gcd (A000579 (n + 3) * A000579 (n + 7)) (A000579 (n + 5)) : ℤ) (A050406 n)

end

end A067048.P13900415499081220415

namespace A067048

/-- `gcd(gcd(A000579(n+3)*A000579(n+7), A000579(n+5)), A050406(n))` -/
def P13900415499081220415.Spec : Prop :=
  ∀ n, (P13900415499081220415.a n : ℤ) = A067048 (n + 1)

end A067048

/-! ## A067048.P1348205958005760002

`A067049(A000096(n+4)+6)`
-/

namespace A067048.P1348205958005760002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (A000096 (n + 4) + 6).toNat

end

end A067048.P1348205958005760002

namespace A067048

/-- `A067049(A000096(n+4)+6)` -/
def P1348205958005760002.Spec : Prop :=
  ∀ n, P1348205958005760002.a n = A067048 (n + 1)

end A067048

/-!
# A067049: Triangle T(n,r) = lcm(n,n-1,n-2,...,n-r+1)/lcm(1,2,3,...,r-1,r), 0 <= r < n.

The programs for A067049, there is no canonical definition to state claims against.
-/

/-! ## A067049.P51453647376333446

`A093430((2*n)%comp[∑[n-1]]+1)`
-/

namespace A067049.P51453647376333446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (2 * n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A067049.P51453647376333446

/-! ## A067049.P644703915235778130

`A093430(A083920(n)+C(n, n²))`
-/

namespace A067049.P644703915235778130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (A083920 n + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A067049.P644703915235778130

/-! ## A067049.P16583171841865229037

`A093430(or(C(n, n²), A083920(n)))`
-/

namespace A067049.P16583171841865229037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (Int.lor (Nat.choose n (n ^ 2) : ℤ) (A083920 n)).toNat

end

end A067049.P16583171841865229037

/-! ## A067049.P6415544699459644061

`A093430(xor(C(n, n²), A083920(n)))`
-/

namespace A067049.P6415544699459644061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (Int.xor (Nat.choose n (n ^ 2) : ℤ) (A083920 n)).toNat

end

end A067049.P6415544699459644061

/-! ## A067049.P7844313293081891067

`A093430(round(sqrt(((2*n+1)%A007401(n+1))²+1)))`
-/

namespace A067049.P7844313293081891067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (2 * n + 1 : ℤ) (A007401 (n + 1)) ^ 2 + 1 : ℝ))).toNat

end

end A067049.P7844313293081891067

/-! ## A067049.P14974608794884753148

`A093430(gcd(A010816(n), A083920(n)))`
-/

namespace A067049.P14974608794884753148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (Int.gcd (A010816 n) (A083920 n))

end

end A067049.P14974608794884753148

/-! ## A067049.P16156329594961963189

`A093430(A198954(n)+A083920(n))`
-/

namespace A067049.P16156329594961963189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (A198954 n + A083920 n).toNat

end

end A067049.P16156329594961963189

/-! ## A067049.P9210718016250684190

`A093430(or(A094497(n)², A083920(n)))`
-/

namespace A067049.P9210718016250684190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (Int.lor (A094497 n ^ 2) (A083920 n)).toNat

end

end A067049.P9210718016250684190

/-!
# A067051: The smallest k>1 such that k divides sigma(k*n) is equal to 3.

The programs for A067051, the canonical program `A067051.P9041529878251612629` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067051 has offset 1).

The definition of A067051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067051.P9041529878251612629

`∪[A074216(n+1), ∑[A016825(n)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A067051

/-- `∪[A074216(n+1), ∑[A016825(n)]]` -/
def P9041529878251612629.Spec : Prop :=
  ∀ n, (P9041529878251612629.a n : ℤ) = A067051 (n + 1)

theorem P9041529878251612629.correct : P9041529878251612629.Spec := by
  intro n
  simp only [A067051, Nat.add_sub_cancel]

end A067051

/-! ## A067051.P9277454028937113651

`eq[3, gcd(6, A000203(n+1))]+1`
-/

namespace A067051.P9277454028937113651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067051.P9277454028937113651

namespace A067051

/-- `eq[3, gcd(6, A000203(n+1))]+1` -/
def P9277454028937113651.Spec : Prop :=
  ∀ n, (P9277454028937113651.a n : ℤ) = A067051 (n + 1)

end A067051

/-! ## A067051.P13814708510238993890

`∩[A028982(n+1), A087943(n+1)]`
-/

namespace A067051.P13814708510238993890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067051.P13814708510238993890

namespace A067051

/-- `∩[A028982(n+1), A087943(n+1)]` -/
def P13814708510238993890.Spec : Prop :=
  ∀ n, (P13814708510238993890.a n : ℤ) = A067051 (n + 1)

end A067051

/-! ## A067051.P8513987428127077154

`∩[A087943(n+1), A097503(n+1)]`
-/

namespace A067051.P8513987428127077154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067051.P8513987428127077154

namespace A067051

/-- `∩[A087943(n+1), A097503(n+1)]` -/
def P8513987428127077154.Spec : Prop :=
  ∀ n, (P8513987428127077154.a n : ℤ) = A067051 (n + 1)

end A067051

/-! ## A067051.P16188061075147329229

`eq[2, A039653(n)%6]`
-/

namespace A067051.P16188061075147329229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067051.P16188061075147329229

namespace A067051

/-- `eq[2, A039653(n)%6]` -/
def P16188061075147329229.Spec : Prop :=
  ∀ n, (P16188061075147329229.a n : ℤ) = A067051 (n + 1)

end A067051

/-! ## A067051.P15870563706523180346

`eq[2, A010875(A039653(n))]`
-/

namespace A067051.P15870563706523180346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067051.P15870563706523180346

namespace A067051

/-- `eq[2, A010875(A039653(n))]` -/
def P15870563706523180346.Spec : Prop :=
  ∀ n, (P15870563706523180346.a n : ℤ) = A067051 (n + 1)

end A067051

/-! ## A067051.P11345298611855135120

`eq[3, A049605(A028310(n))]`
-/

namespace A067051.P11345298611855135120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049605 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067051.P11345298611855135120

namespace A067051

/-- `eq[3, A049605(A028310(n))]` -/
def P11345298611855135120.Spec : Prop :=
  ∀ n, (P11345298611855135120.a n : ℤ) = A067051 (n + 1)

end A067051

/-! ## A067051.P15441914647715084470

`eq[3, A020639(A039653(n)+1)]`
-/

namespace A067051.P15441914647715084470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067051.P15441914647715084470

namespace A067051

/-- `eq[3, A020639(A039653(n)+1)]` -/
def P15441914647715084470.Spec : Prop :=
  ∀ n, (P15441914647715084470.a n : ℤ) = A067051 (n + 1)

end A067051

/-! ## A067051.P12445903020124262741

`eq[2, A010155(A039653(n)+1)]`
-/

namespace A067051.P12445903020124262741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067051.P12445903020124262741

namespace A067051

/-- `eq[2, A010155(A039653(n)+1)]` -/
def P12445903020124262741.Spec : Prop :=
  ∀ n, (P12445903020124262741.a n : ℤ) = A067051 (n + 1)

end A067051

/-!
# A067052: a(n) = floor((Sum_{i=1..n} 1/i)^n).

The programs for A067052, there is no canonical definition to state claims against.
-/

/-! ## A067052.P88076909803679175

`floor(∑[1/(n+1)]^A077342(n+1))`
-/

namespace A067052.P88076909803679175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ (A077342 (n + 1) : ℤ)⌋

end

end A067052.P88076909803679175

/-! ## A067052.P816160757700049558

`floor(∑[1/(n+1)]^A000005(A000079(n)))`
-/

namespace A067052.P816160757700049558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ (A000005 (A000079 n).toNat : ℤ)⌋

end

end A067052.P816160757700049558

/-! ## A067052.P16976385675830603313

`floor(∑[1/(n+1)]^A044917(n+1))`
-/

namespace A067052.P16976385675830603313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ (A044917 (n + 1) : ℤ)⌋

end

end A067052.P16976385675830603313

/-! ## A067052.P12283154365995108540

`floor(∑[1/(n+1)]^A062003(n+1))`
-/

namespace A067052.P12283154365995108540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ (A062003 (n + 1) : ℤ)⌋

end

end A067052.P12283154365995108540

/-!
# A067053: Floor[ Sum_{1..n} 1/i ]^n.

The programs for A067053, the canonical program `A067053.P8719302951759786561` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067053 has offset 1).

The definition of A067053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067053.P8719302951759786561

`floor(∑[1/(n+1)])^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067053

/-- `floor(∑[1/(n+1)])^(n+1)` -/
def P8719302951759786561.Spec : Prop :=
  ∀ n, P8719302951759786561.a n = A067053 (n + 1)

theorem P8719302951759786561.correct : P8719302951759786561.Spec := by
  intro n
  simp only [A067053, Nat.add_sub_cancel]

end A067053

/-! ## A067053.P6352803999140262920

`A055980(n+1)^n*A055980(n+1)`
-/

namespace A067053.P6352803999140262920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (n + 1) ^ n * A055980 (n + 1)

end

end A067053.P6352803999140262920

namespace A067053

/-- `A055980(n+1)^n*A055980(n+1)` -/
def P6352803999140262920.Spec : Prop :=
  ∀ n, P6352803999140262920.a n = A067053 (n + 1)

end A067053

/-! ## A067053.P4918687335044681058

`A000027(A055980(n+1)^(n+1))`
-/

namespace A067053.P4918687335044681058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A055980 (n + 1) ^ (n + 1)).toNat

end

end A067053.P4918687335044681058

namespace A067053

/-- `A000027(A055980(n+1)^(n+1))` -/
def P4918687335044681058.Spec : Prop :=
  ∀ n, P4918687335044681058.a n = A067053 (n + 1)

end A067053

/-! ## A067053.P2015044665716004738

`A000027(A204164(n+1)^(n+1))`
-/

namespace A067053.P2015044665716004738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A204164 (n + 1) ^ (n + 1)).toNat

end

end A067053.P2015044665716004738

namespace A067053

/-- `A000027(A204164(n+1)^(n+1))` -/
def P2015044665716004738.Spec : Prop :=
  ∀ n, P2015044665716004738.a n = A067053 (n + 1)

end A067053

/-! ## A067053.P15906458048543612679

`A000027(A276798(n+1)^(n+1))`
-/

namespace A067053.P15906458048543612679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A276798 (n + 1) ^ (n + 1)).toNat

end

end A067053.P15906458048543612679

namespace A067053

/-- `A000027(A276798(n+1)^(n+1))` -/
def P15906458048543612679.Spec : Prop :=
  ∀ n, P15906458048543612679.a n = A067053 (n + 1)

end A067053

/-!
# A067054: a(n) = floor(s^s) where s = Sum_{k=1..n} 1/k.

The programs for A067054, the canonical program `A067054.P12038456167711417268` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067054 has offset 1).

The definition of A067054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067054.P12038456167711417268

`floor(∑[1/(n+1)]^∑[1/(n+1)])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067054

/-- `floor(∑[1/(n+1)]^∑[1/(n+1)])` -/
def P12038456167711417268.Spec : Prop :=
  ∀ n, P12038456167711417268.a n = A067054 (n + 1)

theorem P12038456167711417268.correct : P12038456167711417268.Spec := by
  intro n
  simp only [A067054, Nat.add_sub_cancel]

end A067054

/-! ## A067054.P6131577922759941593

`A014245(∑[A173633(A187829(n+1))])`
-/

namespace A067054.P6131577922759941593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173633 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067054.P6131577922759941593

namespace A067054

/-- `A014245(∑[A173633(A187829(n+1))])` -/
def P6131577922759941593.Spec : Prop :=
  ∀ n, P6131577922759941593.a n = A067054 (n + 1)

end A067054

/-! ## A067054.P5918682268304885495

`A003056(A161953(n+1)*A218507(n))`
-/

namespace A067054.P5918682268304885495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A161953 (n + 1) * A218507 n).toNat

end

end A067054.P5918682268304885495

namespace A067054

/-- `A003056(A161953(n+1)*A218507(n))` -/
def P5918682268304885495.Spec : Prop :=
  ∀ n, P5918682268304885495.a n = A067054 (n + 1)

end A067054

/-! ## A067054.P13855193394191733966

`A003056(A187829(n+1)*A218507(n))`
-/

namespace A067054.P13855193394191733966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A187829 (n + 1) * A218507 n).toNat

end

end A067054.P13855193394191733966

namespace A067054

/-- `A003056(A187829(n+1)*A218507(n))` -/
def P13855193394191733966.Spec : Prop :=
  ∀ n, P13855193394191733966.a n = A067054 (n + 1)

end A067054

/-! ## A067054.P17926337812271664303

`A066508(record[A346873(n+1)])`
-/

namespace A067054.P17926337812271664303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067054.P17926337812271664303

namespace A067054

/-- `A066508(record[A346873(n+1)])` -/
def P17926337812271664303.Spec : Prop :=
  ∀ n, P17926337812271664303.a n = A067054 (n + 1)

end A067054

/-!
# A067055: a(n) = (n!)^(n*(n+1)/2).

The programs for A067055, the canonical program `A067055.P11970713409702373525` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067055 has offset 0).

The definition of A067055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067055.P11970713409702373525

`n!^(n*(n+1)/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067055

/-- `n!^(n*(n+1)/2)` -/
def P11970713409702373525.Spec : Prop :=
  ∀ n, P11970713409702373525.a n = (A067055 n : ℝ)

end A067055

/-! ## A067055.P6901641289819326791

`sqrt(n!)^(n*(n+1))`
-/

namespace A067055.P6901641289819326791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.factorial n : ℝ) ^ (n * (n + 1))

end

end A067055.P6901641289819326791

namespace A067055

/-- `sqrt(n!)^(n*(n+1))` -/
def P6901641289819326791.Spec : Prop :=
  ∀ n, P6901641289819326791.a n = (A067055 n : ℝ)

end A067055

/-!
# A067056: a(n) = (1)*(2 + 3 + 4 + ... + n) + (1 + 2)*(3 + 4 + 5 + ... + n) + (1 + 2 + 3)*(4 + 5 + 6 + ... + n) + ... + (1 + 2 + 3 + ... + n-1)*n.

The programs for A067056, the canonical program `A067056.P3376991117383993794` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067056 has offset 1).

The definition of A067056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067056.P3376991117383993794

`∑[∑[2*n²]]+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067056

/-- `∑[∑[2*n²]]+a(n-1)` -/
def P3376991117383993794.Spec : Prop :=
  ∀ n, (P3376991117383993794.a n : ℤ) = A067056 (n + 1)

theorem P3376991117383993794.correct : P3376991117383993794.Spec := by
  intro n
  simp only [A067056, Nat.add_sub_cancel]

end A067056

/-! ## A067056.P9801364884671288448

`a(n-1)+(n+1)*∑[∑[n]]` with `a(0)=1, a(1)=2`
-/

namespace A067056.P9801364884671288448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067056.P9801364884671288448

namespace A067056

/-- `a(n-1)+(n+1)*∑[∑[n]]` -/
def P9801364884671288448.Spec : Prop :=
  ∀ n, (P9801364884671288448.a n : ℤ) = A067056 (n + 1)

end A067056

/-! ## A067056.P18180503264850485205

`A000007(n)+∑[A008911(n+1)]`
-/

namespace A067056.P18180503264850485205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067056.P18180503264850485205

namespace A067056

/-- `A000007(n)+∑[A008911(n+1)]` -/
def P18180503264850485205.Spec : Prop :=
  ∀ n, P18180503264850485205.a n = A067056 (n + 1)

end A067056

/-! ## A067056.P16459734339639206428

`(A063377(3*(n+1))+∑[A112742(n+1)])/2`
-/

namespace A067056.P16459734339639206428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A063377 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A067056.P16459734339639206428

namespace A067056

/-- `(A063377(3*(n+1))+∑[A112742(n+1)])/2` -/
def P16459734339639206428.Spec : Prop :=
  ∀ n, P16459734339639206428.a n = (A067056 (n + 1) : ℚ)

end A067056

/-! ## A067056.P7704845644055320337

`A081284(2*n)+A081284(A004277(n))`
-/

namespace A067056.P7704845644055320337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (2 * n) + A081284 (A004277 n).toNat

end

end A067056.P7704845644055320337

namespace A067056

/-- `A081284(2*n)+A081284(A004277(n))` -/
def P7704845644055320337.Spec : Prop :=
  ∀ n, P7704845644055320337.a n = A067056 (n + 1)

end A067056

/-! ## A067056.P16521018342434595460

`A035455(A006093(n+1)+1)+∑[A008911(n+1)]`
-/

namespace A067056.P16521018342434595460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035455 (A006093 (n + 1) + 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067056.P16521018342434595460

namespace A067056

/-- `A035455(A006093(n+1)+1)+∑[A008911(n+1)]` -/
def P16521018342434595460.Spec : Prop :=
  ∀ n, P16521018342434595460.a n = A067056 (n + 1)

end A067056

/-! ## A067056.P16978314649597218897

`∑[A174124(∑[n+1]+2)]`
-/

namespace A067056.P16978314649597218897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174124 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067056.P16978314649597218897

namespace A067056

/-- `∑[A174124(∑[n+1]+2)]` -/
def P16978314649597218897.Spec : Prop :=
  ∀ n, P16978314649597218897.a n = A067056 (n + 1)

end A067056

/-! ## A067056.P12480694199595127138

`A083003(A212342(n+1))`
-/

namespace A067056.P12480694199595127138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083003 (A212342 (n + 1)).toNat

end

end A067056.P12480694199595127138

namespace A067056

/-- `A083003(A212342(n+1))` -/
def P12480694199595127138.Spec : Prop :=
  ∀ n, P12480694199595127138.a n = A067056 (n + 1)

end A067056

/-!
# A067057: Let A(n) = {1,2,3,...n}. Let B(r) and C(n-r) be two subsets of A(n) having r and n-r elements respectively, such that B(r) U C(n-r) = A(n) and B and C are disjoint; then a(n) = sum of the products of all combination sums of elements of B and C for r =1 to n-1.

The programs for A067057, the canonical program `A067057.P17424698232862678055` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067057 has offset 1).

The definition of A067057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067057.P3970300240159247959

`2^(n-2)*∑[n*(n+1)²]`
-/

namespace A067057.P3970300240159247959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A067057.P3970300240159247959

namespace A067057

/-- `2^(n-2)*∑[n*(n+1)²]` -/
def P3970300240159247959.Spec : Prop :=
  ∀ n, P3970300240159247959.a n = (A067057 (n + 1) : ℚ)

end A067057

/-! ## A067057.P14987118831135072673

`A000914(n)/2^(1-n)`
-/

namespace A067057.P14987118831135072673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000914 n : ℚ) / (2 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A067057.P14987118831135072673

namespace A067057

/-- `A000914(n)/2^(1-n)` -/
def P14987118831135072673.Spec : Prop :=
  ∀ n, P14987118831135072673.a n = (A067057 (n + 1) : ℚ)

end A067057

/-! ## A067057.P11235799243525501840

`A052149(n+1)/2^(2-n)`
-/

namespace A067057.P11235799243525501840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052149 (n + 1) : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A067057.P11235799243525501840

namespace A067057

/-- `A052149(n+1)/2^(2-n)` -/
def P11235799243525501840.Spec : Prop :=
  ∀ n, P11235799243525501840.a n = (A067057 (n + 1) : ℚ)

end A067057

/-! ## A067057.P17424698232862678055

`round(2^(n-1)*∑[A006002(n)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067057

/-- `round(2^(n-1)*∑[A006002(n)])` -/
def P17424698232862678055.Spec : Prop :=
  ∀ n, P17424698232862678055.a n = A067057 (n + 1)

theorem P17424698232862678055.correct : P17424698232862678055.Spec := by
  intro n
  simp only [A067057, Nat.add_sub_cancel]

end A067057

/-! ## A067057.P10273484304565790228

`abs(∑[(n+1)*∑[n]]*A123344(n))`
-/

namespace A067057.P10273484304565790228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A123344 n|

end

end A067057.P10273484304565790228

namespace A067057

/-- `abs(∑[(n+1)*∑[n]]*A123344(n))` -/
def P10273484304565790228.Spec : Prop :=
  ∀ n, P10273484304565790228.a n = A067057 (n + 1)

end A067057

/-!
# A067058: Numbers n such that sigma(n+2) - sigma(n) = prime(n+2) - prime(n).

The programs for A067058, there is no canonical definition to state claims against.
-/

/-! ## A067058.P6288783178457761449

`A162405(A003961(∏[n+1]))`
-/

namespace A067058.P6288783178457761449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162405 (A003961 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067058.P6288783178457761449

/-!
# A067059: Square array read by antidiagonals of partitions which half fill an n*k box, i.e., partitions of floor(nk/2) or ceiling(nk/2) into up to n positive integers, each no more than k.

The programs for A067059, there is no canonical definition to state claims against.
-/

/-! ## A067059.P1073071535450092244

`A201052(A008327(n))`
-/

namespace A067059.P1073071535450092244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (A008327 n).toNat

end

end A067059.P1073071535450092244

/-! ## A067059.P1118221616658416181

`A132173(A242093(n))`
-/

namespace A067059.P1118221616658416181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132173 (A242093 n).toNat

end

end A067059.P1118221616658416181

/-! ## A067059.P13240386262267912456

`A070082(A333159(n)%A344861(n+1))`
-/

namespace A067059.P13240386262267912456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (Int.tmod (A333159 n) (A344861 (n + 1))).toNat

end

end A067059.P13240386262267912456

/-! ## A067059.P16619256336152696713

`A231335(A322494(n))`
-/

namespace A067059.P16619256336152696713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231335 (A322494 n).toNat

end

end A067059.P16619256336152696713

/-! ## A067059.P8327062715072316829

`A005811((A374985(n)+1)/2)`
-/

namespace A067059.P8327062715072316829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A374985 n + 1 : ℚ) / 2)).toNat

end

end A067059.P8327062715072316829

/-!
# A067060: A permutation of the positive integers in groups of four such that any two consecutive numbers differ by at least 2.

The programs for A067060, the canonical program `A067060.P14309129114179668057` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067060 has offset 1).

The definition of A067060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067060.P14309129114179668057

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=2, a(4)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067060

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P14309129114179668057.Spec : Prop :=
  ∀ n, P14309129114179668057.a n = A067060 (n + 1)

theorem P14309129114179668057.correct : P14309129114179668057.Spec := by
  intro n
  simp only [A067060, Nat.add_sub_cancel]

end A067060

/-! ## A067060.P5261957874152206496

`xor(n, gcd(2, ∑[n]))+1`
-/

namespace A067060.P5261957874152206496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A067060.P5261957874152206496

namespace A067060

/-- `xor(n, gcd(2, ∑[n]))+1` -/
def P5261957874152206496.Spec : Prop :=
  ∀ n, (P5261957874152206496.a n : ℤ) = A067060 (n + 1)

end A067060

/-! ## A067060.P9399914413392094687

`abs(xor(n, ∑[n]%2-3))`
-/

namespace A067060.P9399914413392094687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) - 3)|

end

end A067060.P9399914413392094687

namespace A067060

/-- `abs(xor(n, ∑[n]%2-3))` -/
def P9399914413392094687.Spec : Prop :=
  ∀ n, P9399914413392094687.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P4306894402420367505

`abs(xor(n, and(1, ∑[n])-3))`
-/

namespace A067060.P4306894402420367505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3)|

end

end A067060.P4306894402420367505

namespace A067060

/-- `abs(xor(n, and(1, ∑[n])-3))` -/
def P4306894402420367505.Spec : Prop :=
  ∀ n, P4306894402420367505.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P14080360443311334027

`-xor(n, and(1, ∑[n])-3)`
-/

namespace A067060.P14080360443311334027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3)

end

end A067060.P14080360443311334027

namespace A067060

/-- `-xor(n, and(1, ∑[n])-3)` -/
def P14080360443311334027.Spec : Prop :=
  ∀ n, P14080360443311334027.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P18145314842408757398

`a(n-4)+4` with `a(0)=3, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A067060.P18145314842408757398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 4, 2] fun n a =>
  a (n - 4) + 4

end

end A067060.P18145314842408757398

namespace A067060

/-- `a(n-4)+4` -/
def P18145314842408757398.Spec : Prop :=
  ∀ n, (P18145314842408757398.a n : ℤ) = A067060 (n + 1)

end A067060

/-! ## A067060.P6790752204879486591

`xor(n, and(2, n-1)!)+1`
-/

namespace A067060.P6790752204879486591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat) + 1

end

end A067060.P6790752204879486591

namespace A067060

/-- `xor(n, and(2, n-1)!)+1` -/
def P6790752204879486591.Spec : Prop :=
  ∀ n, (P6790752204879486591.a n : ℤ) = A067060 (n + 1)

end A067060

/-! ## A067060.P15905608393626492179

`1-xor(-2, a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A067060.P15905608393626492179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  1 - Int.xor (-2) (a (n - 2))

end

end A067060.P15905608393626492179

namespace A067060

/-- `1-xor(-2, a(n-2))` -/
def P15905608393626492179.Spec : Prop :=
  ∀ n, P15905608393626492179.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P9910284706044876232

`3-(3*n%4)%5+n`
-/

namespace A067060.P9910284706044876232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((3 * (n % 4) % 5 : ℕ) : ℤ) + (n : ℤ)

end

end A067060.P9910284706044876232

namespace A067060

/-- `3-(3*n%4)%5+n` -/
def P9910284706044876232.Spec : Prop :=
  ∀ n, P9910284706044876232.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P14267484141300258010

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=-2, a(2)=3, a(3)=-2, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A067060.P14267484141300258010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 3, -2, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067060.P14267484141300258010

namespace A067060

/-- `∑[floor(a(n-4))]` -/
def P14267484141300258010.Spec : Prop :=
  ∀ n, P14267484141300258010.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P3925475091018076783

`-xor(-(n+1), and(2, n+3)!)`
-/

namespace A067060.P3925475091018076783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(n + 1 : ℤ)) (Nat.factorial (Nat.land 2 (n + 3)) : ℤ)

end

end A067060.P3925475091018076783

namespace A067060

/-- `-xor(-(n+1), and(2, n+3)!)` -/
def P3925475091018076783.Spec : Prop :=
  ∀ n, P3925475091018076783.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P3923068677161505272

`∑[2-a(n-2)]-(n-a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A067060.P3923068677161505272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - a (n - 2))

end

end A067060.P3923068677161505272

namespace A067060

/-- `∑[2-a(n-2)]-(n-a(n-2))` -/
def P3923068677161505272.Spec : Prop :=
  ∀ n, P3923068677161505272.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P126604671806448306

`3-(2*a(n-2)%2-a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A067060.P126604671806448306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  3 - (2 * Int.tmod (a (n - 2)) 2 - a (n - 2))

end

end A067060.P126604671806448306

namespace A067060

/-- `3-(2*a(n-2)%2-a(n-2))` -/
def P126604671806448306.Spec : Prop :=
  ∀ n, P126604671806448306.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P201652150887763026

`A116966(xor(1, n))`
-/

namespace A067060.P201652150887763026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (Nat.xor 1 n)

end

end A067060.P201652150887763026

namespace A067060

/-- `A116966(xor(1, n))` -/
def P201652150887763026.Spec : Prop :=
  ∀ n, P201652150887763026.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P11544511412763059044

`A080412(xor(1, n))+1`
-/

namespace A067060.P11544511412763059044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (Nat.xor 1 n) + 1

end

end A067060.P11544511412763059044

namespace A067060

/-- `A080412(xor(1, n))+1` -/
def P11544511412763059044.Spec : Prop :=
  ∀ n, P11544511412763059044.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P16466882853048748168

`A116966(A004442(n))`
-/

namespace A067060.P16466882853048748168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A004442 n).toNat

end

end A067060.P16466882853048748168

namespace A067060

/-- `A116966(A004442(n))` -/
def P16466882853048748168.Spec : Prop :=
  ∀ n, P16466882853048748168.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P12083073056886686374

`A256008(A116966(n))`
-/

namespace A067060.P12083073056886686374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A116966 n).toNat

end

end A067060.P12083073056886686374

namespace A067060

/-- `A256008(A116966(n))` -/
def P12083073056886686374.Spec : Prop :=
  ∀ n, P12083073056886686374.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P17754499437117656903

`A004443(A080412(n))+1`
-/

namespace A067060.P17754499437117656903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A080412 n).toNat + 1

end

end A067060.P17754499437117656903

namespace A067060

/-- `A004443(A080412(n))+1` -/
def P17754499437117656903.Spec : Prop :=
  ∀ n, P17754499437117656903.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P15883050354893668954

`A159966(A056699(n+1))`
-/

namespace A067060.P15883050354893668954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A056699 (n + 1)).toNat

end

end A067060.P15883050354893668954

namespace A067060

/-- `A159966(A056699(n+1))` -/
def P15883050354893668954.Spec : Prop :=
  ∀ n, P15883050354893668954.a n = A067060 (n + 1)

end A067060

/-! ## A067060.P8746501233457666444

`A292576(A133256(n+1))`
-/

namespace A067060.P8746501233457666444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (A133256 (n + 1)).toNat

end

end A067060.P8746501233457666444

namespace A067060

/-- `A292576(A133256(n+1))` -/
def P8746501233457666444.Spec : Prop :=
  ∀ n, P8746501233457666444.a n = A067060 (n + 1)

end A067060

/-!
# A067061: A permutation of the natural numbers.

The programs for A067061, the canonical program `A067061.P12545489466336529960` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067061 has offset 1).

The definition of A067061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067061.P12545489466336529960

`a(n-2)+a(a(n-2)²%3)` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067061

/-- `a(n-2)+a(a(n-2)²%3)` -/
def P12545489466336529960.Spec : Prop :=
  ∀ n, (P12545489466336529960.a n : ℤ) = A067061 (n + 1)

theorem P12545489466336529960.correct : P12545489466336529960.Spec := by
  intro n
  simp only [A067061, Nat.add_sub_cancel]

end A067061

/-! ## A067061.P7265321169315117563

`a(n-2)+a(gcd(3, a(n-2)))²` with `a(0)=4, a(1)=1`
-/

namespace A067061.P7265321169315117563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + a (Nat.gcd 3 (a (n - 2))) ^ 2

end

end A067061.P7265321169315117563

namespace A067061

/-- `a(n-2)+a(gcd(3, a(n-2)))²` -/
def P7265321169315117563.Spec : Prop :=
  ∀ n, (P7265321169315117563.a n : ℤ) = A067061 (n + 1)

end A067061

/-! ## A067061.P12776939446368405491

`a(n-2)+gcd(4, a(a(n-2)%3))` with `a(0)=4, a(1)=1`
-/

namespace A067061.P12776939446368405491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + Nat.gcd 4 (a (a (n - 2) % 3))

end

end A067061.P12776939446368405491

namespace A067061

/-- `a(n-2)+gcd(4, a(a(n-2)%3))` -/
def P12776939446368405491.Spec : Prop :=
  ∀ n, (P12776939446368405491.a n : ℤ) = A067061 (n + 1)

end A067061

/-! ## A067061.P7546169188614729836

`a(n-2)+a((a(n-2)*a(n-2))%3)` with `a(0)=4, a(1)=1`
-/

namespace A067061.P7546169188614729836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + a (a (n - 2) * a (n - 2) % 3)

end

end A067061.P7546169188614729836

namespace A067061

/-- `a(n-2)+a((a(n-2)*a(n-2))%3)` -/
def P7546169188614729836.Spec : Prop :=
  ∀ n, (P7546169188614729836.a n : ℤ) = A067061 (n + 1)

theorem P7546169188614729836.correct : P7546169188614729836.Spec := by
  intro n
  simp only [A067061, Nat.add_sub_cancel, A067061.P7546169188614729836.a, A067061.P12545489466336529960.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067061

/-! ## A067061.P15774811969875695677

`A366619(A131042(n+1))`
-/

namespace A067061.P15774811969875695677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366619 (A131042 (n + 1)).toNat

end

end A067061.P15774811969875695677

namespace A067061

/-- `A366619(A131042(n+1))` -/
def P15774811969875695677.Spec : Prop :=
  ∀ n, P15774811969875695677.a n = A067061 (n + 1)

end A067061

/-! ## A067061.P17408913749295961837

`A236348(xor(1, xor(1, n)+1))`
-/

namespace A067061.P17408913749295961837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (Nat.xor 1 (Nat.xor 1 n + 1))

end

end A067061.P17408913749295961837

namespace A067061

/-- `A236348(xor(1, xor(1, n)+1))` -/
def P17408913749295961837.Spec : Prop :=
  ∀ n, P17408913749295961837.a n = A067061 (n + 1)

end A067061

/-! ## A067061.P2192245123502245514

`A236348(A165754(n))`
-/

namespace A067061.P2192245123502245514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (A165754 n).toNat

end

end A067061.P2192245123502245514

namespace A067061

/-- `A236348(A165754(n))` -/
def P2192245123502245514.Spec : Prop :=
  ∀ n, P2192245123502245514.a n = A067061 (n + 1)

end A067061

/-! ## A067061.P14414490152969368646

`A143097(A065168(n+1))`
-/

namespace A067061.P14414490152969368646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A065168 (n + 1)).toNat

end

end A067061.P14414490152969368646

namespace A067061

/-- `A143097(A065168(n+1))` -/
def P14414490152969368646.Spec : Prop :=
  ∀ n, P14414490152969368646.a n = A067061 (n + 1)

end A067061

/-! ## A067061.P3273286832114152218

`A236348(A092486(2*n)-n)`
-/

namespace A067061.P3273286832114152218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (A092486 (2 * n) - (n : ℤ)).toNat

end

end A067061.P3273286832114152218

namespace A067061

/-- `A236348(A092486(2*n)-n)` -/
def P3273286832114152218.Spec : Prop :=
  ∀ n, P3273286832114152218.a n = A067061 (n + 1)

end A067061

/-! ## A067061.P11285893394674248450

`A236348(A236348(a(n-2))+2)` with `a(0)=4, a(1)=1`
-/

namespace A067061.P11285893394674248450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  A236348 (A236348 (a (n - 2)).toNat + 2).toNat

end

end A067061.P11285893394674248450

namespace A067061

/-- `A236348(A236348(a(n-2))+2)` -/
def P11285893394674248450.Spec : Prop :=
  ∀ n, P11285893394674248450.a n = A067061 (n + 1)

end A067061

/-!
# A067063: Smallest prime factor of repunit(n) = (10^n-1)/9 (A002275).

The programs for A067063, there is no canonical definition to state claims against.
-/

/-! ## A067063.P6385729734362920755

`A102380(∑[A046053(n+1)]+2)`
-/

namespace A067063.P6385729734362920755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102380 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A067063.P6385729734362920755

/-! ## A067063.P16184378825778179181

`A001270(∑[A057951(n+1)]+3)`
-/

namespace A067063.P16184378825778179181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001270 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A067063.P16184378825778179181

/-! ## A067063.P1022220633044963887

`A249627(n+2)/A003020(n+2)`
-/

namespace A067063.P1022220633044963887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249627 (n + 2) : ℚ) / (A003020 (n + 2) : ℚ)

end

end A067063.P1022220633044963887

/-! ## A067063.P11066376619592170399

`A249627(n+2)/A005422(n+2)`
-/

namespace A067063.P11066376619592170399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249627 (n + 2) : ℚ) / (A005422 (n + 2) : ℚ)

end

end A067063.P11066376619592170399

/-! ## A067063.P9092806027431507671

`A077805(A126646(n+1))`
-/

namespace A067063.P9092806027431507671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A126646 (n + 1)).toNat

end

end A067063.P9092806027431507671

/-!
# A067064: Numbers k such that sigma(sigma(sigma(k))) == 0 (mod sigma(k)).

The programs for A067064, there is no canonical definition to state claims against.
-/

/-! ## A067064.P18058224955442943847

`lt[A318060(∑{d}[n+1, #]), 2]+1`
-/

namespace A067064.P18058224955442943847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318060 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A067064.P18058224955442943847

/-! ## A067064.P12610583863209027094

`eq[1, A318060(∑{d}[abs(1-n)+1, #])]`
-/

namespace A067064.P12610583863209027094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318060 (∑ d ∈ Nat.divisors (f3 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067064.P12610583863209027094

/-! ## A067064.P12811858318848412153

`eq[1, A318060(A000203(n+1))]+1`
-/

namespace A067064.P12811858318848412153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318060 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067064.P12811858318848412153

/-! ## A067064.P1642781803789202898

`eq[0, A000195(A318060(∑{d}[n+1, #])+1)]+1`
-/

namespace A067064.P1642781803789202898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A318060 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067064.P1642781803789202898

/-!
# A067066: Number of Gnutella users reachable with given connections and hops.

The programs for A067066, the canonical program `A067066.P4519851533233329329` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067066 has offset 1).

The definition of A067066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4725 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067066.P4519851533233329329

`(row(n)-col(n))*T(n-1,k-1)+row(n)-col(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067066

/-- `(row(n)-col(n))*T(n-1,k-1)+row(n)-col(n)+1` -/
def P4519851533233329329.Spec : Prop :=
  ∀ n, P4519851533233329329.a n = A067066 (n + 1)

theorem P4519851533233329329.correct : P4519851533233329329.Spec := by
  intro n
  simp only [A067066, Nat.add_sub_cancel]

end A067066

/-! ## A067066.P17359336290147027459

`A238339(n)+A095884(n+1)`
-/

namespace A067066.P17359336290147027459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238339 n + A095884 (n + 1)

end

end A067066.P17359336290147027459

namespace A067066

/-- `A238339(n)+A095884(n+1)` -/
def P17359336290147027459.Spec : Prop :=
  ∀ n, P17359336290147027459.a n = A067066 (n + 1)

end A067066

/-! ## A067066.P17927429213865795137

`(C(comp[∑[n]]-n, 2)-n)*A104881(n)`
-/

namespace A067066.P17927429213865795137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A104881 n

end

end A067066.P17927429213865795137

namespace A067066

/-- `(C(comp[∑[n]]-n, 2)-n)*A104881(n)` -/
def P17927429213865795137.Spec : Prop :=
  ∀ n, P17927429213865795137.a n = A067066 (n + 1)

end A067066

/-! ## A067066.P9741774982639699537

`A004736(n+1)*A104881(n)`
-/

namespace A067066.P9741774982639699537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A104881 n

end

end A067066.P9741774982639699537

namespace A067066

/-- `A004736(n+1)*A104881(n)` -/
def P9741774982639699537.Spec : Prop :=
  ∀ n, P9741774982639699537.a n = A067066 (n + 1)

end A067066

/-! ## A067066.P3365554907781350766

`(A025581(n)+1)*A104881(n)`
-/

namespace A067066.P3365554907781350766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A104881 n

end

end A067066.P3365554907781350766

namespace A067066

/-- `(A025581(n)+1)*A104881(n)` -/
def P3365554907781350766.Spec : Prop :=
  ∀ n, P3365554907781350766.a n = A067066 (n + 1)

end A067066

/-! ## A067066.P16802149978866445990

`sqrt(A055461(n+1))*A104881(n)`
-/

namespace A067066.P16802149978866445990
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A104881 n : ℝ)

end

end A067066.P16802149978866445990

namespace A067066

/-- `sqrt(A055461(n+1))*A104881(n)` -/
def P16802149978866445990.Spec : Prop :=
  ∀ n, P16802149978866445990.a n = (A067066 (n + 1) : ℝ)

end A067066

/-! ## A067066.P31506665466438579

`(A004202(n+1)-(2*n+1))*A104881(n)`
-/

namespace A067066.P31506665466438579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004202 (n + 1) - (2 * n + 1 : ℤ)) * A104881 n

end

end A067066.P31506665466438579

namespace A067066

/-- `(A004202(n+1)-(2*n+1))*A104881(n)` -/
def P31506665466438579.Spec : Prop :=
  ∀ n, P31506665466438579.a n = A067066 (n + 1)

end A067066

/-! ## A067066.P2606601420025969265

`A000005(A130321(n))*A104881(n)`
-/

namespace A067066.P2606601420025969265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A104881 n

end

end A067066.P2606601420025969265

namespace A067066

/-- `A000005(A130321(n))*A104881(n)` -/
def P2606601420025969265.Spec : Prop :=
  ∀ n, P2606601420025969265.a n = A067066 (n + 1)

end A067066

/-! ## A067066.P4166704102352692033

`A001511(A054582(n))*A104881(n)`
-/

namespace A067066.P4166704102352692033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A054582 n).toNat * A104881 n

end

end A067066.P4166704102352692033

namespace A067066

/-- `A001511(A054582(n))*A104881(n)` -/
def P4166704102352692033.Spec : Prop :=
  ∀ n, P4166704102352692033.a n = A067066 (n + 1)

end A067066

/-! ## A067066.P11741502218699872933

`A000005(A140303(n))*A104881(n)`
-/

namespace A067066.P11741502218699872933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat * A104881 n

end

end A067066.P11741502218699872933

namespace A067066

/-- `A000005(A140303(n))*A104881(n)` -/
def P11741502218699872933.Spec : Prop :=
  ∀ n, P11741502218699872933.a n = A067066 (n + 1)

end A067066

/-!
# A067067: a(n) = product of nonzero digits of n! (A000142).

The programs for A067067, there is no canonical definition to state claims against.
-/

/-! ## A067067.P16941799326342952428

`∏{digits}[A181952(n), #]`
-/

namespace A067067.P16941799326342952428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A067067.P16941799326342952428

/-! ## A067067.P14893969660733907902

`∏{digits}[A356757(n), #]`
-/

namespace A067067.P14893969660733907902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A067067.P14893969660733907902

/-! ## A067067.P16604173804804249894

`∏{digits}[A004153(n), A028310(#)]`
-/

namespace A067067.P16604173804804249894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A067067.P16604173804804249894

/-! ## A067067.P14854454571675624377

`∏{digits}[A004154(n), A028310(#)]`
-/

namespace A067067.P14854454571675624377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A067067.P14854454571675624377

/-! ## A067067.P2681434010756229124

`∏{digits}[n!, gcd(#, #!²)]`
-/

namespace A067067.P2681434010756229124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod

end

end A067067.P2681434010756229124

/-! ## A067067.P14949570352847782293

`∏{digits}[n!, A051801(#)]`
-/

namespace A067067.P14949570352847782293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051801 x).prod

end

end A067067.P14949570352847782293

/-! ## A067067.P8924912409198459156

`∏{digits}[A000142(n), A028310(#)]`
-/

namespace A067067.P8924912409198459156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A067067.P8924912409198459156

/-! ## A067067.P17913301749290619873

`∏{digits}[A133942(n), A028310(#)]`
-/

namespace A067067.P17913301749290619873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A067067.P17913301749290619873

/-! ## A067067.P8894751810796241302

`∏{digits}[A000142(n), A007318(A000124(#))]`
-/

namespace A067067.P8894751810796241302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A000124 x).toNat).prod

end

end A067067.P8894751810796241302

/-!
# A067068: a(n) = n* - 2^n, where n* (A003418) = least common multiple of the numbers [1,...,n].

The programs for A067068, the canonical program `A067068.P1628427676556564340` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067068 has offset 1).

The definition of A067068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067068.P1628427676556564340

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-2^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067068

/-- `∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-2^(n+1)` -/
def P1628427676556564340.Spec : Prop :=
  ∀ n, P1628427676556564340.a n = A067068 (n + 1)

theorem P1628427676556564340.correct : P1628427676556564340.Spec := by
  intro n
  simp only [A067068, Nat.add_sub_cancel]

end A067068

/-! ## A067068.P12399756617242796452

`A070198(n)-∑[2^n]`
-/

namespace A067068.P12399756617242796452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A067068.P12399756617242796452

namespace A067068

/-- `A070198(n)-∑[2^n]` -/
def P12399756617242796452.Spec : Prop :=
  ∀ n, P12399756617242796452.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P15416237995470652347

`∑[A119944(n)-2^n]`
-/

namespace A067068.P15416237995470652347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067068.P15416237995470652347

namespace A067068

/-- `∑[A119944(n)-2^n]` -/
def P15416237995470652347.Spec : Prop :=
  ∀ n, P15416237995470652347.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P15704608192070698466

`A059794(n+1)-2^n`
-/

namespace A067068.P15704608192070698466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059794 (n + 1) - (2 ^ n : ℤ)

end

end A067068.P15704608192070698466

namespace A067068

/-- `A059794(n+1)-2^n` -/
def P15704608192070698466.Spec : Prop :=
  ∀ n, P15704608192070698466.a n = A067068 (n + 1)

theorem P15704608192070698466.correct : P15704608192070698466.Spec := by
  intro n
  simp only [A067068, Nat.add_sub_cancel, A067068.P15704608192070698466.a, A067068.P1628427676556564340.f2, A067068.P1628427676556564340.f1, A067068.P1628427676556564340.a, A059794, A059794.P9663854077218559482.f2, A059794.P9663854077218559482.f1, A059794.P9663854077218559482.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A067068

/-! ## A067068.P643275978972477266

`Δ[A236856(n)]-2^(n+1)`
-/

namespace A067068.P643275978972477266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 ^ (n + 1) : ℤ)

end

end A067068.P643275978972477266

namespace A067068

/-- `Δ[A236856(n)]-2^(n+1)` -/
def P643275978972477266.Spec : Prop :=
  ∀ n, P643275978972477266.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P3417505528562458306

`A003418(n+1)-2^(n+1)`
-/

namespace A067068.P3417505528562458306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A067068.P3417505528562458306

namespace A067068

/-- `A003418(n+1)-2^(n+1)` -/
def P3417505528562458306.Spec : Prop :=
  ∀ n, P3417505528562458306.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P14381775588008104427

`Δ[A236856(n)-A048578(n)]`
-/

namespace A067068.P14381775588008104427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n - A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067068.P14381775588008104427

namespace A067068

/-- `Δ[A236856(n)-A048578(n)]` -/
def P14381775588008104427.Spec : Prop :=
  ∀ n, P14381775588008104427.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P1448674748175186855

`∑[Δ[A003418(n)]-A000079(n)]`
-/

namespace A067068.P1448674748175186855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067068.P1448674748175186855

namespace A067068

/-- `∑[Δ[A003418(n)]-A000079(n)]` -/
def P1448674748175186855.Spec : Prop :=
  ∀ n, P1448674748175186855.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P10121972916200010501

`Δ[A236856(n)-A000225(n+1)]`
-/

namespace A067068.P10121972916200010501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n - A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067068.P10121972916200010501

namespace A067068

/-- `Δ[A236856(n)-A000225(n+1)]` -/
def P10121972916200010501.Spec : Prop :=
  ∀ n, P10121972916200010501.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P5123003168410573907

`Δ[A236856(n)-2*A000225(n)]`
-/

namespace A067068.P5123003168410573907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n - 2 * A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067068.P5123003168410573907

namespace A067068

/-- `Δ[A236856(n)-2*A000225(n)]` -/
def P5123003168410573907.Spec : Prop :=
  ∀ n, P5123003168410573907.a n = A067068 (n + 1)

end A067068

/-! ## A067068.P18270699933907665701

`∏[A014963(n+1)]-A000079(n+1)`
-/

namespace A067068.P18270699933907665701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000079 (n + 1)

end

end A067068.P18270699933907665701

namespace A067068

/-- `∏[A014963(n+1)]-A000079(n+1)` -/
def P18270699933907665701.Spec : Prop :=
  ∀ n, P18270699933907665701.a n = A067068 (n + 1)

end A067068

/-!
# A067069: Numbers n such that for every k the following condition holds: (*) The number of nonnegative solutions of the Diophantine equation x^2 + n*y^2 = 1+n*k^2 equals one half of the number of divisors of 1+n*k^2 if 1+n*k^2 is not a square and one half of 1 + the number of divisors of 1+n*k^2 if 1+n*k^2 is a square.

The programs for A067069, there is no canonical definition to state claims against.
-/

/-! ## A067069.P17990667137850509286

`eq[char[A000926(n+1)], A057979(n)]`
-/

namespace A067069.P17990667137850509286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A067069.P17990667137850509286

/-! ## A067069.P8725423915337750704

`∩[A000926(n+1), A047418(n+1)]`
-/

namespace A067069.P8725423915337750704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067069.P8725423915337750704

/-! ## A067069.P15796492851119871290

`eq[char[A000926(n+2)], A160135(n+1)]`
-/

namespace A067069.P15796492851119871290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A067069.P15796492851119871290

/-! ## A067069.P7355447665274067737

`∩[A000926(n+2), comp[A003961(n+3)]]`
-/

namespace A067069.P7355447665274067737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A067069.P7355447665274067737

/-! ## A067069.P12517387346518917953

`A008619(record[A266595(A000926(n+1))])`
-/

namespace A067069.P12517387346518917953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (A000926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067069.P12517387346518917953

/-!
# A067070: Cubes whose product of digits is a cube > 0.

The programs for A067070, there is no canonical definition to state claims against.
-/

/-! ## A067070.P4881086335216818582

`A067071(n+1)^3`
-/

namespace A067070.P4881086335216818582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067071 (n + 1) ^ 3

end

end A067070.P4881086335216818582

/-! ## A067070.P5574537271318157339

`root(A067071(n+1), 2/A040006(n))`
-/

namespace A067070.P5574537271318157339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067071 (n + 1) : ℝ) ^ (1 / (2 / (A040006 n : ℚ) : ℝ))

end

end A067070.P5574537271318157339

/-! ## A067070.P15170003007068813526

`∩[A052045(n+1), A118545(n+1)]`
-/

namespace A067070.P15170003007068813526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067070.P15170003007068813526

/-! ## A067070.P3424118002142698941

`A000578(A067071(n+1))`
-/

namespace A067070.P3424118002142698941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A067071 (n + 1)).toNat

end

end A067070.P3424118002142698941

/-! ## A067070.P15413331994584848539

`A081276(2*A067071(n+1))`
-/

namespace A067070.P15413331994584848539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * A067071 (n + 1)).toNat

end

end A067070.P15413331994584848539

/-!
# A067071: Numbers with no zeros in their cubes such that the products of the digits of their cubes are also cubes.

The programs for A067071, there is no canonical definition to state claims against.
-/

/-! ## A067071.P11006315174618135693

`root(A067070(n+1), 3)`
-/

namespace A067071.P11006315174618135693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067070 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A067071.P11006315174618135693

/-! ## A067071.P2234636746814902526

`A067070(n+1)^(1/A122553(n))`
-/

namespace A067071.P2234636746814902526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067070 (n + 1) : ℝ) ^ (1 / (A122553 n : ℚ) : ℝ)

end

end A067071.P2234636746814902526

/-! ## A067071.P5344883327178488278

`A067070(n+1)^(2/A040006(n))`
-/

namespace A067071.P5344883327178488278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067070 (n + 1) : ℝ) ^ (2 / (A040006 n : ℚ) : ℝ)

end

end A067071.P5344883327178488278

/-! ## A067071.P17776908454525003622

`A067070(n+1)^3^A056594(A175368(n)+2)`
-/

namespace A067071.P17776908454525003622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067070 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A056594 (A175368 n + 2).toNat : ℤ) : ℝ)

end

end A067071.P17776908454525003622

/-!
# A067072: a(n) = smallest square m^2 such that the sum of the digits of m^2 is equal to n^2.

The programs for A067072, there is no canonical definition to state claims against.
-/

/-! ## A067072.P5061038152947429782

`A061912(n)²`
-/

namespace A067072.P5061038152947429782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061912 n ^ 2

end

end A067072.P5061038152947429782

/-! ## A067072.P9474830749378303060

`A061912(n)^A020639(A004277(n))`
-/

namespace A067072.P9474830749378303060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061912 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A067072.P9474830749378303060

/-! ## A067072.P4819439052857715911

`A061912(n)^A014963(A011782(n))`
-/

namespace A067072.P4819439052857715911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061912 n : ℚ) ^ (A014963 (A011782 n).toNat : ℤ)

end

end A067072.P4819439052857715911

/-! ## A067072.P15763501423144270910

`A061912(n)^A020639(A008574(n))`
-/

namespace A067072.P15763501423144270910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061912 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A067072.P15763501423144270910

/-! ## A067072.P4408874163477030450

`A061912(n)^A000005(A104080(n))`
-/

namespace A067072.P4408874163477030450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061912 n : ℚ) ^ (A000005 (A104080 n).toNat : ℤ)

end

end A067072.P4408874163477030450

/-!
# A067073: Records in A092419.

The programs for A067073, there is no canonical definition to state claims against.
-/

/-! ## A067073.P6006161294071457437

`∩[A225083(n+1), A232779(n)]`
-/

namespace A067073.P6006161294071457437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067073.P6006161294071457437

/-! ## A067073.P2761993966262953140

`∩[A260003(n+1), A329487(n+1)]`
-/

namespace A067073.P2761993966262953140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067073.P2761993966262953140

/-! ## A067073.P245442042944836115

`lt[A131516(n), A131516(A131469(n))]`
-/

namespace A067073.P245442042944836115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A131469 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067073.P245442042944836115

/-! ## A067073.P17456869202340971552

`eq[A003415(n), A056594(A335448(n+1))]`
-/

namespace A067073.P17456869202340971552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A335448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067073.P17456869202340971552

/-! ## A067073.P5847276628709964787

`lt[A323524(n), A323023(A056892(n+1))]`
-/

namespace A067073.P5847276628709964787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A056892 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067073.P5847276628709964787

/-!
# A067074: a(n) = smallest cube m^3 such that the sum of the digits of m^3 is equal to n^3.

The programs for A067074, there is no canonical definition to state claims against.
-/

/-! ## A067074.P10716564372738950444

`A067075(n)^3`
-/

namespace A067074.P10716564372738950444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067075 n ^ 3

end

end A067074.P10716564372738950444

/-!
# A067075: a(n) is the smallest number m such that the sum of the digits of m^3 is equal to n^3.

The programs for A067075, there is no canonical definition to state claims against.
-/

/-! ## A067075.P4422810976137870876

`A067074(n)^(1/3)`
-/

namespace A067075.P4422810976137870876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067074 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A067075.P4422810976137870876

/-!
# A067076: Numbers k such that 2*k + 3 is a prime.

The programs for A067076, the canonical program `A067076.P14247190955968615804` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067076 has offset 1).

The definition of A067076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067076.P14247190955968615804

`A006254(n+1)-2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067076

/-- `A006254(n+1)-2` -/
def P14247190955968615804.Spec : Prop :=
  ∀ n, P14247190955968615804.a n = A067076 (n + 1)

theorem P14247190955968615804.correct : P14247190955968615804.Spec := by
  intro n
  simp only [A067076, Nat.add_sub_cancel]

end A067076

/-! ## A067076.P7664517098465311222

`A089253(n+1)-4`
-/

namespace A067076.P7664517098465311222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - 4

end

end A067076.P7664517098465311222

namespace A067076

/-- `A089253(n+1)-4` -/
def P7664517098465311222.Spec : Prop :=
  ∀ n, P7664517098465311222.a n = A067076 (n + 1)

theorem P7664517098465311222.correct : P7664517098465311222.Spec := by
  intro n
  simp only [A067076, Nat.add_sub_cancel, A067076.P7664517098465311222.a, A067076.P14247190955968615804.a, A006254, A006254.P17336495081768971287.a, A089253, A089253.P9623062397135395528.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067076

/-! ## A067076.P1097248256326205007

`A086801(n+2)/2`
-/

namespace A067076.P1097248256326205007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086801 (n + 2) : ℚ) / 2

end

end A067076.P1097248256326205007

namespace A067076

/-- `A086801(n+2)/2` -/
def P1097248256326205007.Spec : Prop :=
  ∀ n, P1097248256326205007.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P15012568148859050634

`(A000040(n+2)-3)/2`
-/

namespace A067076.P15012568148859050634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - 3 : ℚ) / 2

end

end A067076.P15012568148859050634

namespace A067076

/-- `(A000040(n+2)-3)/2` -/
def P15012568148859050634.Spec : Prop :=
  ∀ n, P15012568148859050634.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P6018825001399226651

`(p?[2*n+1]-3)/2`
-/

namespace A067076.P6018825001399226651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / 2

end

end A067076.P6018825001399226651

namespace A067076

/-- `(p?[2*n+1]-3)/2` -/
def P6018825001399226651.Spec : Prop :=
  ∀ n, P6018825001399226651.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P11226591134872477922

`A005097(n+1)-1`
-/

namespace A067076.P11226591134872477922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 1

end

end A067076.P11226591134872477922

namespace A067076

/-- `A005097(n+1)-1` -/
def P11226591134872477922.Spec : Prop :=
  ∀ n, P11226591134872477922.a n = A067076 (n + 1)

end A067076

/-! ## A067076.P2159068139273325858

`A098090(n+1)-3`
-/

namespace A067076.P2159068139273325858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 3

end

end A067076.P2159068139273325858

namespace A067076

/-- `A098090(n+1)-3` -/
def P2159068139273325858.Spec : Prop :=
  ∀ n, P2159068139273325858.a n = A067076 (n + 1)

end A067076

/-! ## A067076.P2279374413143214598

`A154115(n+1)/2`
-/

namespace A067076.P2279374413143214598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154115 (n + 1) : ℚ) / 2

end

end A067076.P2279374413143214598

namespace A067076

/-- `A154115(n+1)/2` -/
def P2279374413143214598.Spec : Prop :=
  ∀ n, P2279374413143214598.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P18405540454988228808

`A089192(n+1)-5`
-/

namespace A067076.P18405540454988228808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 5

end

end A067076.P18405540454988228808

namespace A067076

/-- `A089192(n+1)-5` -/
def P18405540454988228808.Spec : Prop :=
  ∀ n, P18405540454988228808.a n = A067076 (n + 1)

theorem P18405540454988228808.correct : P18405540454988228808.Spec := by
  intro n
  simp only [A067076, Nat.add_sub_cancel, A067076.P18405540454988228808.a, A067076.P14247190955968615804.a, A006254, A006254.P17336495081768971287.a, A089192, A089192.P5097066678155882464.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067076

/-! ## A067076.P2201950163191692641

`A097069(n+1)-6`
-/

namespace A067076.P2201950163191692641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 6

end

end A067076.P2201950163191692641

namespace A067076

/-- `A097069(n+1)-6` -/
def P2201950163191692641.Spec : Prop :=
  ∀ n, P2201950163191692641.a n = A067076 (n + 1)

theorem P2201950163191692641.correct : P2201950163191692641.Spec := by
  intro n
  simp only [A067076, Nat.add_sub_cancel, A067076.P2201950163191692641.a, A067076.P14247190955968615804.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067076

/-! ## A067076.P10046404796560446549

`A008507(n+1)+n`
-/

namespace A067076.P10046404796560446549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n : ℤ)

end

end A067076.P10046404796560446549

namespace A067076

/-- `A008507(n+1)+n` -/
def P10046404796560446549.Spec : Prop :=
  ∀ n, P10046404796560446549.a n = A067076 (n + 1)

theorem P10046404796560446549.correct : P10046404796560446549.Spec := by
  intro n
  simp only [A067076, Nat.add_sub_cancel, A067076.P10046404796560446549.a, A067076.P14247190955968615804.a, A006254, A006254.P17336495081768971287.a, A008507, A008507.P5510179153814837351.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067076

/-! ## A067076.P14765857234032588251

`∑[A100820(n+1)]+n`
-/

namespace A067076.P14765857234032588251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A067076.P14765857234032588251

namespace A067076

/-- `∑[A100820(n+1)]+n` -/
def P14765857234032588251.Spec : Prop :=
  ∀ n, P14765857234032588251.a n = A067076 (n + 1)

end A067076

/-! ## A067076.P479352841359304740

`(A065091(n+1)-3)/2`
-/

namespace A067076.P479352841359304740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - 3 : ℚ) / 2

end

end A067076.P479352841359304740

namespace A067076

/-- `(A065091(n+1)-3)/2` -/
def P479352841359304740.Spec : Prop :=
  ∀ n, P479352841359304740.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P10476393607790419880

`A298252(n+1)/2-3`
-/

namespace A067076.P10476393607790419880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298252 (n + 1) : ℚ) / 2 - 3

end

end A067076.P10476393607790419880

namespace A067076

/-- `A298252(n+1)/2-3` -/
def P10476393607790419880.Spec : Prop :=
  ∀ n, P10476393607790419880.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P8698704330642583548

`(A048974(n+1)-5)/2`
-/

namespace A067076.P8698704330642583548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048974 (n + 1) - 5 : ℚ) / 2

end

end A067076.P8698704330642583548

namespace A067076

/-- `(A048974(n+1)-5)/2` -/
def P8698704330642583548.Spec : Prop :=
  ∀ n, P8698704330642583548.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P527655521479000349

`A175540(n+1)-(n+1)`
-/

namespace A067076.P527655521479000349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - (n + 1 : ℤ)

end

end A067076.P527655521479000349

namespace A067076

/-- `A175540(n+1)-(n+1)` -/
def P527655521479000349.Spec : Prop :=
  ∀ n, P527655521479000349.a n = A067076 (n + 1)

theorem P527655521479000349.correct : P527655521479000349.Spec := by
  intro n
  simp only [A067076, Nat.add_sub_cancel, A067076.P527655521479000349.a, A067076.P14247190955968615804.a, A006254, A006254.P17336495081768971287.a, A175540, A175540.P17413733986559148913.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067076

/-! ## A067076.P10840657887679443686

`(∑[A001223(n+1)]-1)/2`
-/

namespace A067076.P10840657887679443686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A067076.P10840657887679443686

namespace A067076

/-- `(∑[A001223(n+1)]-1)/2` -/
def P10840657887679443686.Spec : Prop :=
  ∀ n, P10840657887679443686.a n = (A067076 (n + 1) : ℚ)

end A067076

/-! ## A067076.P8932348749022518097

`A177018(n+1)+A023445(n)`
-/

namespace A067076.P8932348749022518097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + A023445 n

end

end A067076.P8932348749022518097

namespace A067076

/-- `A177018(n+1)+A023445(n)` -/
def P8932348749022518097.Spec : Prop :=
  ∀ n, P8932348749022518097.a n = A067076 (n + 1)

end A067076

/-! ## A067076.P9826766981031680210

`A177018(n+1)-A022959(n)`
-/

namespace A067076.P9826766981031680210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) - A022959 n

end

end A067076.P9826766981031680210

namespace A067076

/-- `A177018(n+1)-A022959(n)` -/
def P9826766981031680210.Spec : Prop :=
  ∀ n, P9826766981031680210.a n = A067076 (n + 1)

end A067076

/-! ## A067076.P12782649954632020700

`A037165(n+1)%A005097(n+1)`
-/

namespace A067076.P12782649954632020700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037165 (n + 1)) (A005097 (n + 1))

end

end A067076.P12782649954632020700

namespace A067076

/-- `A037165(n+1)%A005097(n+1)` -/
def P12782649954632020700.Spec : Prop :=
  ∀ n, P12782649954632020700.a n = A067076 (n + 1)

end A067076

/-!
# A067077: Numbers whose product of distinct prime factors is equal to its sum of digits.

The programs for A067077, there is no canonical definition to state claims against.
-/

/-! ## A067077.P97159900915794409

`filter[A357263(n+1), A188641(#)]`
-/

namespace A067077.P97159900915794409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A067077.P97159900915794409

/-! ## A067077.P12982880292426904031

`filter[A357263(n+1), A178788(#)]`
-/

namespace A067077.P12982880292426904031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A067077.P12982880292426904031

/-! ## A067077.P4929692913805032407

`∩[A059879(n+1), A357263(n+1)]`
-/

namespace A067077.P4929692913805032407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067077.P4929692913805032407

/-! ## A067077.P15766155395588100999

`∩[A343951(n+1), A357263(n+1)]`
-/

namespace A067077.P15766155395588100999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067077.P15766155395588100999

/-!
# A067078: a(1) = 1, a(2) = 2, a(n) = (n-1)*a(n-1) - (n-2)*a(n-2).

The programs for A067078, the canonical program `A067078.P14897806109440932293` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067078 has offset 1).

The definition of A067078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-(n-1)*a(n-2)` (program `A067078.P14897806109440932293`, by `A067078.P14897806109440932293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067078.P14897806109440932293

`n*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067078

/-- `n*a(n-1)-(n-1)*a(n-2)` -/
def P14897806109440932293.Spec : Prop :=
  ∀ n, P14897806109440932293.a n = A067078 (n + 1)

theorem P14897806109440932293.correct : P14897806109440932293.Spec := by
  intro n
  simp only [A067078, Nat.add_sub_cancel]

end A067078

/-! ## A067078.P13209061874876352852

`1+A003422(n)`
-/

namespace A067078.P13209061874876352852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003422 n

end

end A067078.P13209061874876352852

namespace A067078

/-- `1+A003422(n)` -/
def P13209061874876352852.Spec : Prop :=
  ∀ n, P13209061874876352852.a n = A067078 (n + 1)

end A067078

/-! ## A067078.P2919874525780459261

`∑[abs(1-n)!]`
-/

namespace A067078.P2919874525780459261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067078.P2919874525780459261

namespace A067078

/-- `∑[abs(1-n)!]` -/
def P2919874525780459261.Spec : Prop :=
  ∀ n, (P2919874525780459261.a n : ℤ) = A067078 (n + 1)

end A067078

/-! ## A067078.P11005046092713804930

`∑[∏[abs(1-(char[1]+n))]]`
-/

namespace A067078.P11005046092713804930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f3 j = n then 1 else 0) + n : ℕ) : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067078.P11005046092713804930

namespace A067078

/-- `∑[∏[abs(1-(char[1]+n))]]` -/
def P11005046092713804930.Spec : Prop :=
  ∀ n, P11005046092713804930.a n = A067078 (n + 1)

end A067078

/-! ## A067078.P17794384327087243856

`(n-1)!+a(n-1)` with `a(0)=1`
-/

namespace A067078.P17794384327087243856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n : ℤ) - 1).toNat + a (n - 1)

end

end A067078.P17794384327087243856

namespace A067078

/-- `(n-1)!+a(n-1)` -/
def P17794384327087243856.Spec : Prop :=
  ∀ n, (P17794384327087243856.a n : ℤ) = A067078 (n + 1)

end A067078

/-! ## A067078.P2905413075280433368

`abs(∑[(n-1)*a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A067078.P2905413075280433368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A067078.P2905413075280433368

namespace A067078

/-- `abs(∑[(n-1)*a(n-1)])` -/
def P2905413075280433368.Spec : Prop :=
  ∀ n, P2905413075280433368.a n = A067078 (n + 1)

end A067078

/-! ## A067078.P5876592020237420272

`floor(∑[(n-1)*a(n-1)])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A067078.P5876592020237420272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067078.P5876592020237420272

namespace A067078

/-- `floor(∑[(n-1)*a(n-1)])` -/
def P5876592020237420272.Spec : Prop :=
  ∀ n, P5876592020237420272.a n = A067078 (n + 1)

end A067078

/-! ## A067078.P6464206190663318125

`(n-1)!-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A067078.P6464206190663318125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - (-a (n - 1))

end

end A067078.P6464206190663318125

namespace A067078

/-- `(n-1)!-floor(-a(n-1))` -/
def P6464206190663318125.Spec : Prop :=
  ∀ n, P6464206190663318125.a n = A067078 (n + 1)

end A067078

/-! ## A067078.P8357059859251111386

`(n-1)!-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A067078.P8357059859251111386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - (-a (n - 1))

end

end A067078.P8357059859251111386

namespace A067078

/-- `(n-1)!-ceil(-a(n-1))` -/
def P8357059859251111386.Spec : Prop :=
  ∀ n, P8357059859251111386.a n = A067078 (n + 1)

end A067078

/-! ## A067078.P13868017370313283088

`(n-1)!-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A067078.P13868017370313283088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - (-a (n - 1))

end

end A067078.P13868017370313283088

namespace A067078

/-- `(n-1)!-round(-a(n-1))` -/
def P13868017370313283088.Spec : Prop :=
  ∀ n, P13868017370313283088.a n = A067078 (n + 1)

end A067078

/-!
# A067079: Right digitorial function Rd(n) = abcd...*bcd...*cd...*d...*..., for n = abcd... in decimal notation.

The programs for A067079, the canonical program `A067079.P1175467807256603628` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067079 has offset 0).

The definition of A067079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067079.P1175467807256603628

`A321243(A037213(n²))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067079

/-- `A321243(A037213(n²))` -/
def P1175467807256603628.Spec : Prop :=
  ∀ n, P1175467807256603628.a n = A067079 n

theorem P1175467807256603628.correct : P1175467807256603628.Spec := by
  intro n
  simp only [A067079]

end A067079

/-! ## A067079.P7192726853962149749

`A321243(A038690(n²))`
-/

namespace A067079.P7192726853962149749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A038690 (n ^ 2)).toNat

end

end A067079.P7192726853962149749

namespace A067079

/-- `A321243(A038690(n²))` -/
def P7192726853962149749.Spec : Prop :=
  ∀ n, P7192726853962149749.a n = A067079 n

end A067079

/-! ## A067079.P14601871055754764054

`A321243(A259372(n²))`
-/

namespace A067079.P14601871055754764054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A259372 (n ^ 2)).toNat

end

end A067079.P14601871055754764054

namespace A067079

/-- `A321243(A259372(n²))` -/
def P14601871055754764054.Spec : Prop :=
  ∀ n, P14601871055754764054.a n = A067079 n

end A067079

/-! ## A067079.P381879855680180314

`A321243(A331958(n²))`
-/

namespace A067079.P381879855680180314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A331958 (n ^ 2)).toNat

end

end A067079.P381879855680180314

namespace A067079

/-- `A321243(A331958(n²))` -/
def P381879855680180314.Spec : Prop :=
  ∀ n, P381879855680180314.a n = A067079 n

end A067079

/-! ## A067079.P14100184086884180453

`A321243(A159335(∑[n]))`
-/

namespace A067079.P14100184086884180453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A159335 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067079.P14100184086884180453

namespace A067079

/-- `A321243(A159335(∑[n]))` -/
def P14100184086884180453.Spec : Prop :=
  ∀ n, P14100184086884180453.a n = A067079 n

end A067079

/-! ## A067079.P4231045197630611958

`lcm(A118759(n), A321243(n))`
-/

namespace A067079.P4231045197630611958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118759 n) (A321243 n)

end

end A067079.P4231045197630611958

namespace A067079

/-- `lcm(A118759(n), A321243(n))` -/
def P4231045197630611958.Spec : Prop :=
  ∀ n, (P4231045197630611958.a n : ℤ) = A067079 n

end A067079

/-! ## A067079.P14104028616033166572

`A321243(n)+A014707(n²)`
-/

namespace A067079.P14104028616033166572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n + A014707 (n ^ 2)

end

end A067079.P14104028616033166572

namespace A067079

/-- `A321243(n)+A014707(n²)` -/
def P14104028616033166572.Spec : Prop :=
  ∀ n, P14104028616033166572.a n = A067079 n

end A067079

/-! ## A067079.P2032661982167566092

`A321243(n)+A055671(n²)`
-/

namespace A067079.P2032661982167566092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n + A055671 (n ^ 2)

end

end A067079.P2032661982167566092

namespace A067079

/-- `A321243(n)+A055671(n²)` -/
def P2032661982167566092.Spec : Prop :=
  ∀ n, P2032661982167566092.a n = A067079 n

end A067079

/-! ## A067079.P11268394344053309592

`A321243(n)+A055672(n²)`
-/

namespace A067079.P11268394344053309592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n + A055672 (n ^ 2)

end

end A067079.P11268394344053309592

namespace A067079

/-- `A321243(n)+A055672(n²)` -/
def P11268394344053309592.Spec : Prop :=
  ∀ n, P11268394344053309592.a n = A067079 n

end A067079

/-! ## A067079.P3760271985629672170

`A010052(n²)*A321243(n)`
-/

namespace A067079.P3760271985629672170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A321243 n

end

end A067079.P3760271985629672170

namespace A067079

/-- `A010052(n²)*A321243(n)` -/
def P3760271985629672170.Spec : Prop :=
  ∀ n, P3760271985629672170.a n = A067079 n

end A067079

/-! ## A067079.P6562005589744086996

`A321243(n)%A000328(n²)`
-/

namespace A067079.P6562005589744086996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321243 n) (A000328 (n ^ 2))

end

end A067079.P6562005589744086996

namespace A067079

/-- `A321243(n)%A000328(n²)` -/
def P6562005589744086996.Spec : Prop :=
  ∀ n, P6562005589744086996.a n = A067079 n

end A067079

/-! ## A067079.P13625128129626763967

`A321243(gcd(n, A321243(n²)))`
-/

namespace A067079.P13625128129626763967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (Int.gcd (n : ℤ) (A321243 (n ^ 2)))

end

end A067079.P13625128129626763967

namespace A067079

/-- `A321243(gcd(n, A321243(n²)))` -/
def P13625128129626763967.Spec : Prop :=
  ∀ n, P13625128129626763967.a n = A067079 n

end A067079

/-! ## A067079.P15166079543186252101

`A321243(A014707(n*n)+n)`
-/

namespace A067079.P15166079543186252101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (A014707 (n * n) + (n : ℤ)).toNat

end

end A067079.P15166079543186252101

namespace A067079

/-- `A321243(A014707(n*n)+n)` -/
def P15166079543186252101.Spec : Prop :=
  ∀ n, P15166079543186252101.a n = A067079 n

end A067079

/-! ## A067079.P4430935871133060321

`A321243(n-A014707(n*n))`
-/

namespace A067079.P4430935871133060321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 ((n : ℤ) - A014707 (n * n)).toNat

end

end A067079.P4430935871133060321

namespace A067079

/-- `A321243(n-A014707(n*n))` -/
def P4430935871133060321.Spec : Prop :=
  ∀ n, P4430935871133060321.a n = A067079 n

end A067079

/-! ## A067079.P14030353001406595470

`∑{d}[n+1, A151909(#-1)*A321243((n+1)/#-1)]`
-/

namespace A067079.P14030353001406595470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151909 (d - 1) * A321243 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A067079.P14030353001406595470

namespace A067079

/-- `∑{d}[n+1, A151909(#-1)*A321243((n+1)/#-1)]` -/
def P14030353001406595470.Spec : Prop :=
  ∀ n, P14030353001406595470.a n = A067079 n

end A067079

/-! ## A067079.P17730197333075494561

`n*A111707(A008592(A017281(n)))`
-/

namespace A067079.P17730197333075494561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A111707 (A008592 (A017281 n).toNat).toNat

end

end A067079.P17730197333075494561

namespace A067079

/-- `n*A111707(A008592(A017281(n)))` -/
def P17730197333075494561.Spec : Prop :=
  ∀ n, P17730197333075494561.a n = A067079 n

end A067079

/-!
# A067080: If n = ab...def in decimal notation then the left digitorial function Ld(n) = ab...def*ab...de*ab...d*...*ab*a.

The programs for A067080, the canonical program `A067080.P16301526241117869634` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067080 has offset 1).

The definition of A067080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067080.P16301526241117869634

`(n+1)*a(floor((n+1)/10)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067080

/-- `(n+1)*a(floor((n+1)/10)-1)` -/
def P16301526241117869634.Spec : Prop :=
  ∀ n, (P16301526241117869634.a n : ℤ) = A067080 (n + 1)

theorem P16301526241117869634.correct : P16301526241117869634.Spec := by
  intro n
  simp only [A067080, Nat.add_sub_cancel]

end A067080

/-! ## A067080.P7569099574762953520

`(n+1)*∏{e}[A000079(A059995(n+1)), #]`
-/

namespace A067080.P7569099574762953520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A059995 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A067080.P7569099574762953520

namespace A067080

/-- `(n+1)*∏{e}[A000079(A059995(n+1)), #]` -/
def P7569099574762953520.Spec : Prop :=
  ∀ n, (P7569099574762953520.a n : ℤ) = A067080 (n + 1)

end A067080

/-! ## A067080.P9019876361143122713

`A003991(C(comp[A017497(n)], 2)+n+1)`
-/

namespace A067080.P9019876361143122713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2 + n + 1)

end

end A067080.P9019876361143122713

namespace A067080

/-- `A003991(C(comp[A017497(n)], 2)+n+1)` -/
def P9019876361143122713.Spec : Prop :=
  ∀ n, P9019876361143122713.a n = A067080 (n + 1)

end A067080

/-! ## A067080.P652083234382949366

`A000196(A000290(n+1))*A329624(A329623(n+1))`
-/

namespace A067080.P652083234382949366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000290 (n + 1)).toNat * A329624 (A329623 (n + 1)).toNat

end

end A067080.P652083234382949366

namespace A067080

/-- `A000196(A000290(n+1))*A329624(A329623(n+1))` -/
def P652083234382949366.Spec : Prop :=
  ∀ n, P652083234382949366.a n = A067080 (n + 1)

end A067080

/-! ## A067080.P11187362022338455945

`A083292(lcm(n+1, A216455(n+1)))-A217657(n+1)`
-/

namespace A067080.P11187362022338455945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (Int.lcm (n + 1 : ℤ) (A216455 (n + 1))) - A217657 (n + 1)

end

end A067080.P11187362022338455945

namespace A067080

/-- `A083292(lcm(n+1, A216455(n+1)))-A217657(n+1)` -/
def P11187362022338455945.Spec : Prop :=
  ∀ n, P11187362022338455945.a n = A067080 (n + 1)

end A067080

/-! ## A067080.P17872998039779520131

`A083292(n+1)+A000007((n+1)²)-A217657(n+1)`
-/

namespace A067080.P17872998039779520131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 1) + A000007 ((n + 1) ^ 2) - A217657 (n + 1)

end

end A067080.P17872998039779520131

namespace A067080

/-- `A083292(n+1)+A000007((n+1)²)-A217657(n+1)` -/
def P17872998039779520131.Spec : Prop :=
  ∀ n, P17872998039779520131.a n = A067080 (n + 1)

end A067080

/-! ## A067080.P11632964175112611953

`(n+1)*A028310(∑[A102683(n)^A334725(n+1)])`
-/

namespace A067080.P11632964175112611953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102683 n : ℚ) ^ (A334725 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028310 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067080.P11632964175112611953

namespace A067080

/-- `(n+1)*A028310(∑[A102683(n)^A334725(n+1)])` -/
def P11632964175112611953.Spec : Prop :=
  ∀ n, P11632964175112611953.a n = A067080 (n + 1)

end A067080

/-!
# A067081: Numbers k such that sigma(k+1) = 2*sigma(k).

The programs for A067081, there is no canonical definition to state claims against.
-/

/-! ## A067081.P5494146077513555826

`A058072(eq[2, A077089(n+1)]+1)`
-/

namespace A067081.P5494146077513555826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067081.P5494146077513555826

/-!
# A067082: If n = abc...def in decimal notation then the right digit sum function = abc...def + bc...def + c...def + ... + def + ef + f.

The programs for A067082, there is no canonical definition to state claims against.
-/

/-! ## A067082.P2887125342778201473

`A071980(n)-A054899(n)`
-/

namespace A067082.P2887125342778201473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 n - A054899 n

end

end A067082.P2887125342778201473

/-! ## A067082.P10227349691719769422

`A071980(n)-A065039(A059995(n))`
-/

namespace A067082.P10227349691719769422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 n - A065039 (A059995 n).toNat

end

end A067082.P10227349691719769422

/-! ## A067082.P8530059624056579448

`A217657(A051022(n))+n`
-/

namespace A067082.P8530059624056579448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A051022 n).toNat + (n : ℤ)

end

end A067082.P8530059624056579448

/-! ## A067082.P9670696185960314483

`A259361((n+1)²)+A217657(n)`
-/

namespace A067082.P9670696185960314483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((n + 1) ^ 2) + A217657 n

end

end A067082.P9670696185960314483

/-! ## A067082.P3149346713033910639

`A059995(A056142(n))+A010879(n)`
-/

namespace A067082.P3149346713033910639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A056142 n).toNat + A010879 n

end

end A067082.P3149346713033910639

/-! ## A067082.P11990992325274492338

`A217657(n)+A000196(A002378(n))`
-/

namespace A067082.P11990992325274492338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A000196 (A002378 n).toNat

end

end A067082.P11990992325274492338

/-! ## A067082.P2265387285113107233

`A217657(n)+A053615(A000290(n))`
-/

namespace A067082.P2265387285113107233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A053615 (A000290 n).toNat

end

end A067082.P2265387285113107233

/-! ## A067082.P6683035386662303655

`A217657(n)+A000196(A074378(n))`
-/

namespace A067082.P6683035386662303655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A000196 (A074378 n).toNat

end

end A067082.P6683035386662303655

/-! ## A067082.P13160399291261139375

`A217657(n)+A118759(A118759(n))`
-/

namespace A067082.P13160399291261139375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A118759 (A118759 n).toNat

end

end A067082.P13160399291261139375

/-! ## A067082.P540148405705310484

`A217657(n)+A000038(A216898(n))+n`
-/

namespace A067082.P540148405705310484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + (A000038 (A216898 n).toNat + (n : ℤ))

end

end A067082.P540148405705310484

/-!
# A067083: Number of digits in n^(n^(n-1)).

The programs for A067083, there is no canonical definition to state claims against.
-/

/-! ## A067083.P1990809406602168346

`A319763(2*(n+1))+n^n`
-/

namespace A067083.P1990809406602168346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319763 (2 * (n + 1)) + (n ^ n : ℤ)

end

end A067083.P1990809406602168346

/-!
# A067084: Number of digits in n^{(n-1)!}.

The programs for A067084, there is no canonical definition to state claims against.
-/

/-! ## A067084.P13381457462011517874

`A066339(lcm(6, A265954(n)))`
-/

namespace A067084.P13381457462011517874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (Int.lcm 6 (A265954 n))

end

end A067084.P13381457462011517874

/-! ## A067084.P17289354145584346821

`A063882(or(n, A088009(n)))`
-/

namespace A067084.P17289354145584346821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (Int.lor (n : ℤ) (A088009 n)).toNat

end

end A067084.P17289354145584346821

/-! ## A067084.P5915395057213211236

`A132270(A324131(n+1))+1`
-/

namespace A067084.P5915395057213211236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A324131 (n + 1)).toNat + 1

end

end A067084.P5915395057213211236

/-!
# A067085: a(n) = floor(Sum_{k=1..n} 1/k^(1/2)).

The programs for A067085, the canonical program `A067085.P10487747671815619206` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067085 has offset 1).

The definition of A067085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067085.P10487747671815619206

`floor(∑[cos(atan(sqrt(n)))])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067085

/-- `floor(∑[cos(atan(sqrt(n)))])` -/
def P10487747671815619206.Spec : Prop :=
  ∀ n, P10487747671815619206.a n = A067085 (n + 1)

theorem P10487747671815619206.correct : P10487747671815619206.Spec := by
  intro n
  simp only [A067085, Nat.add_sub_cancel]

end A067085

/-! ## A067085.P9756762175089832317

`floor(∑[sin(acot(sqrt(n)))])`
-/

namespace A067085.P9756762175089832317
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (SequenceMachineLib.acot (Real.sqrt (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A067085.P9756762175089832317

namespace A067085

/-- `floor(∑[sin(acot(sqrt(n)))])` -/
def P9756762175089832317.Spec : Prop :=
  ∀ n, P9756762175089832317.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P8042470887770501504

`floor(∑[sqrt(1/(n+1))])`
-/

namespace A067085.P8042470887770501504
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A067085.P8042470887770501504

namespace A067085

/-- `floor(∑[sqrt(1/(n+1))])` -/
def P8042470887770501504.Spec : Prop :=
  ∀ n, P8042470887770501504.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P1466332088011218442

`ceil(A057428(n)+∑[sqrt(1/(n+1))])`
-/

namespace A067085.P1466332088011218442
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A067085.P1466332088011218442

namespace A067085

/-- `ceil(A057428(n)+∑[sqrt(1/(n+1))])` -/
def P1466332088011218442.Spec : Prop :=
  ∀ n, P1466332088011218442.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P9286096078771346847

`A052146(A276669(∑[2*(n+1)])+n+2)`
-/

namespace A067085.P9286096078771346847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A276669 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 2 : ℤ)).toNat

end

end A067085.P9286096078771346847

namespace A067085

/-- `A052146(A276669(∑[2*(n+1)])+n+2)` -/
def P9286096078771346847.Spec : Prop :=
  ∀ n, P9286096078771346847.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P14733130055381561097

`A002024(A235382(A002620(n)))-2`
-/

namespace A067085.P14733130055381561097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A235382 (A002620 n).toNat).toNat - 2

end

end A067085.P14733130055381561097

namespace A067085

/-- `A002024(A235382(A002620(n)))-2` -/
def P14733130055381561097.Spec : Prop :=
  ∀ n, P14733130055381561097.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P3559990510399364941

`A003056(2*n+3)-A319797(A000096(n))`
-/

namespace A067085.P3559990510399364941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 3) - A319797 (A000096 n).toNat

end

end A067085.P3559990510399364941

namespace A067085

/-- `A003056(2*n+3)-A319797(A000096(n))` -/
def P3559990510399364941.Spec : Prop :=
  ∀ n, P3559990510399364941.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P519628251524648780

`A052146(2*n+3)%A218466(A008706(n))`
-/

namespace A067085.P519628251524648780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052146 (2 * n + 3)) (A218466 (A008706 n).toNat)

end

end A067085.P519628251524648780

namespace A067085

/-- `A052146(2*n+3)%A218466(A008706(n))` -/
def P519628251524648780.Spec : Prop :=
  ∀ n, P519628251524648780.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P6962999031222242486

`A003056(2*n+3)-A038500(A014190(n+3))`
-/

namespace A067085.P6962999031222242486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 3) - A038500 (A014190 (n + 3)).toNat

end

end A067085.P6962999031222242486

namespace A067085

/-- `A003056(2*n+3)-A038500(A014190(n+3))` -/
def P6962999031222242486.Spec : Prop :=
  ∀ n, P6962999031222242486.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P11116028288438843626

`A000010(a(A132157(n)))*A052146(2*n+3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A067085.P11116028288438843626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000010 (a (A132157 n).toNat).toNat * A052146 (2 * n + 3)

end

end A067085.P11116028288438843626

namespace A067085

/-- `A000010(a(A132157(n)))*A052146(2*n+3)` -/
def P11116028288438843626.Spec : Prop :=
  ∀ n, P11116028288438843626.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P10791498615353478361

`A003056(2*n+3)-A001065(A005384(n+1))`
-/

namespace A067085.P10791498615353478361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 3) - A001065 (A005384 (n + 1)).toNat

end

end A067085.P10791498615353478361

namespace A067085

/-- `A003056(2*n+3)-A001065(A005384(n+1))` -/
def P10791498615353478361.Spec : Prop :=
  ∀ n, P10791498615353478361.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P13989993936748732348

`∑[A036987(A152719(2*(n+1)))]`
-/

namespace A067085.P13989993936748732348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A152719 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067085.P13989993936748732348

namespace A067085

/-- `∑[A036987(A152719(2*(n+1)))]` -/
def P13989993936748732348.Spec : Prop :=
  ∀ n, P13989993936748732348.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P11529598290899428628

`A003056(2*n+3)-A056926(A046691(2*n+1))`
-/

namespace A067085.P11529598290899428628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 3) - A056926 (A046691 (2 * n + 1)).toNat

end

end A067085.P11529598290899428628

namespace A067085

/-- `A003056(2*n+3)-A056926(A046691(2*n+1))` -/
def P11529598290899428628.Spec : Prop :=
  ∀ n, P11529598290899428628.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P4035217408065801868

`A003056(2*n+3)-A292438(A000217(2*(n+2)))`
-/

namespace A067085.P4035217408065801868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 3) - A292438 (A000217 (2 * (n + 2))).toNat

end

end A067085.P4035217408065801868

namespace A067085

/-- `A003056(2*n+3)-A292438(A000217(2*(n+2)))` -/
def P4035217408065801868.Spec : Prop :=
  ∀ n, P4035217408065801868.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P505654112759244769

`∑[round(acot(A299807(2*n+3)))]`
-/

namespace A067085.P505654112759244769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A299807 (2 * n + 3) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067085.P505654112759244769

namespace A067085

/-- `∑[round(acot(A299807(2*n+3)))]` -/
def P505654112759244769.Spec : Prop :=
  ∀ n, P505654112759244769.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P9392677875836477878

`A003056(A005408(n+1))-A005408(A022896(2*(n+1)))`
-/

namespace A067085.P9392677875836477878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005408 (n + 1)).toNat - A005408 (A022896 (2 * (n + 1))).toNat

end

end A067085.P9392677875836477878

namespace A067085

/-- `A003056(A005408(n+1))-A005408(A022896(2*(n+1)))` -/
def P9392677875836477878.Spec : Prop :=
  ∀ n, P9392677875836477878.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P1572701733341807739

`∑[A160449(2*(n+1))^A160484(2*n+5)]`
-/

namespace A067085.P1572701733341807739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160449 (2 * (n + 1)) : ℚ) ^ (A160484 (2 * n + 5) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067085.P1572701733341807739

namespace A067085

/-- `∑[A160449(2*(n+1))^A160484(2*n+5)]` -/
def P1572701733341807739.Spec : Prop :=
  ∀ n, P1572701733341807739.a n = (A067085 (n + 1) : ℚ)

end A067085

/-! ## A067085.P6695684121862775100

`A127321(A000969(n))`
-/

namespace A067085.P6695684121862775100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A000969 n).toNat

end

end A067085.P6695684121862775100

namespace A067085

/-- `A127321(A000969(n))` -/
def P6695684121862775100.Spec : Prop :=
  ∀ n, P6695684121862775100.a n = A067085 (n + 1)

end A067085

/-! ## A067085.P9251731159747272578

`A127321(A143978(n+1))`
-/

namespace A067085.P9251731159747272578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A143978 (n + 1)).toNat

end

end A067085.P9251731159747272578

namespace A067085

/-- `A127321(A143978(n+1))` -/
def P9251731159747272578.Spec : Prop :=
  ∀ n, P9251731159747272578.a n = A067085 (n + 1)

end A067085

/-!
# A067086: a(n) = floor(Sum_{k=1..n} 1/k^(1/3)).

The programs for A067086, the canonical program `A067086.P8938590462435816849` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067086 has offset 1).

The definition of A067086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067086.P8938590462435816849

`floor(∑[root(n+1, -3)])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067086

/-- `floor(∑[root(n+1, -3)])` -/
def P8938590462435816849.Spec : Prop :=
  ∀ n, P8938590462435816849.a n = A067086 (n + 1)

theorem P8938590462435816849.correct : P8938590462435816849.Spec := by
  intro n
  simp only [A067086, Nat.add_sub_cancel]

end A067086

/-! ## A067086.P15667719918770002359

`A048766(A014689(∑[A014085(4*n+2)]))`
-/

namespace A067086.P15667719918770002359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A067086.P15667719918770002359

namespace A067086

/-- `A048766(A014689(∑[A014085(4*n+2)]))` -/
def P15667719918770002359.Spec : Prop :=
  ∀ n, P15667719918770002359.a n = A067086 (n + 1)

end A067086

/-! ## A067086.P11821815216205005279

`A048766(∑[A008611(n)+A005005(n+1)])`
-/

namespace A067086.P11821815216205005279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + A005005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067086.P11821815216205005279

namespace A067086

/-- `A048766(∑[A008611(n)+A005005(n+1)])` -/
def P11821815216205005279.Spec : Prop :=
  ∀ n, P11821815216205005279.a n = A067086 (n + 1)

end A067086

/-! ## A067086.P486500337079069666

`A048766(∑[A048766(n)+A034039(n+1)])`
-/

namespace A067086.P486500337079069666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n + A034039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067086.P486500337079069666

namespace A067086

/-- `A048766(∑[A048766(n)+A034039(n+1)])` -/
def P486500337079069666.Spec : Prop :=
  ∀ n, P486500337079069666.a n = A067086 (n + 1)

end A067086

/-! ## A067086.P18098331524637795370

`A135660(A000040(3*(n+1))-A353866(2*n+3))`
-/

namespace A067086.P18098331524637795370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A000040 (3 * (n + 1)) - A353866 (2 * n + 3)).toNat

end

end A067086.P18098331524637795370

namespace A067086

/-- `A135660(A000040(3*(n+1))-A353866(2*n+3))` -/
def P18098331524637795370.Spec : Prop :=
  ∀ n, P18098331524637795370.a n = A067086 (n + 1)

end A067086

/-!
# A067087: Concatenation of n-th prime and its reverse.

The programs for A067087, there is no canonical definition to state claims against.
-/

/-! ## A067087.P9251808356386504623

`A056524(A000040(n+1))`
-/

namespace A067087.P9251808356386504623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (A000040 (n + 1)).toNat

end

end A067087.P9251808356386504623

/-! ## A067087.P17395425594513710778

`A056524(p?[comp[n²]])`
-/

namespace A067087.P17395425594513710778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A067087.P17395425594513710778

/-! ## A067087.P6289777880807019387

`A056524(Δ[A007504(n)])`
-/

namespace A067087.P6289777880807019387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (n + 1) - f1 n).toNat

end

end A067087.P6289777880807019387

/-! ## A067087.P15357630102482440321

`A002113(A039790(n+1))`
-/

namespace A067087.P15357630102482440321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A039790 (n + 1)).toNat

end

end A067087.P15357630102482440321

/-! ## A067087.P258441599716918135

`A071273(A004087(n+1))`
-/

namespace A067087.P258441599716918135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071273 (A004087 (n + 1)).toNat

end

end A067087.P258441599716918135

/-! ## A067087.P676989116419488128

`A056524(A008578(n+2))`
-/

namespace A067087.P676989116419488128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (A008578 (n + 2)).toNat

end

end A067087.P676989116419488128

/-! ## A067087.P18066035087856773864

`A056524(A182986(n+2))`
-/

namespace A067087.P18066035087856773864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (A182986 (n + 2)).toNat

end

end A067087.P18066035087856773864

/-! ## A067087.P10372058045008271971

`A056524(record[A006530(n+2)])`
-/

namespace A067087.P10372058045008271971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067087.P10372058045008271971

/-! ## A067087.P9433273305130549939

`A056524(record[A008472(n+2)])`
-/

namespace A067087.P9433273305130549939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067087.P9433273305130549939

/-! ## A067087.P9851422982140602046

`A056524(record[A014963(n+2)])`
-/

namespace A067087.P9851422982140602046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067087.P9851422982140602046

/-! ## A067087.P780415215392713359

`A056524(record[A020639(n+2)])`
-/

namespace A067087.P780415215392713359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067087.P780415215392713359

/-! ## A067087.P7603359301210667400

`A056524(record[p?[A056552(n+1)]])`
-/

namespace A067087.P7603359301210667400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067087.P7603359301210667400

/-! ## A067087.P6071385962199746496

`A056524(record[p?[A056554(n+1)]])`
-/

namespace A067087.P6071385962199746496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067087.P6071385962199746496

/-! ## A067087.P13432972173718864038

`A176597(n+1)-A068396(n+1)`
-/

namespace A067087.P13432972173718864038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176597 (n + 1) - A068396 (n + 1)

end

end A067087.P13432972173718864038

/-! ## A067087.P7207393359253459735

`A056524(record[p?[A056538(n+1)]])`
-/

namespace A067087.P7207393359253459735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067087.P7207393359253459735

/-!
# A067088: Floor(X/Y) where X = concatenation of (n+1), (n+2), ...up to 2n and Y = concatenation of 1,2,3,4,... up to n.

The programs for A067088, there is no canonical definition to state claims against.
-/

/-! ## A067088.P6655129063124240947

`A319912(A306844(n+1))+1`
-/

namespace A067088.P6655129063124240947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319912 (A306844 (n + 1)).toNat + 1

end

end A067088.P6655129063124240947

/-!
# A067090: Floor(X/Y) where X = concatenation of (2n), (2n-1), ... down to n+1 and Y = concatenation of 1,2,3,... up to n.

The programs for A067090, there is no canonical definition to state claims against.
-/

/-! ## A067090.P15991450658764287632

`A135879(A006527(n))+A000041(n+1)`
-/

namespace A067090.P15991450658764287632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135879 (A006527 n).toNat + A000041 (n + 1)

end

end A067090.P15991450658764287632

/-! ## A067090.P16349958135981888522

`xor(A000040(n+1), A240496(A125107(n)))`
-/

namespace A067090.P16349958135981888522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A240496 (A125107 n).toNat)

end

end A067090.P16349958135981888522

/-!
# A067095: a(n) = floor(X/Y) where X is the concatenation in increasing order of the first n even numbers and Y is that of the first n odd numbers.

The programs for A067095, there is no canonical definition to state claims against.
-/

/-! ## A067095.P1821084536291107390

`floor(A019520(n+1)/A019519(n+1))`
-/

namespace A067095.P1821084536291107390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019520 (n + 1) : ℚ) / (A019519 (n + 1) : ℚ)⌋

end

end A067095.P1821084536291107390

/-!
# A067096: Floor[X/Y] where X = concatenation in increasing order of first n even numbers and Y = that of first n natural numbers.

The programs for A067096, there is no canonical definition to state claims against.
-/

/-! ## A067096.P48286094267506213

`floor(A067119(n+1)/A067116(n+1))`
-/

namespace A067096.P48286094267506213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067119 (n + 1) : ℚ) / (A067116 (n + 1) : ℚ)⌋

end

end A067096.P48286094267506213

/-! ## A067096.P1637771574109920483

`floor(A019520(n+1)/A007908(n+1))`
-/

namespace A067096.P1637771574109920483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019520 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)⌋

end

end A067096.P1637771574109920483

/-! ## A067096.P16981003353610880789

`floor(A019520(n+1)/∑[A078998(n+1)])`
-/

namespace A067096.P16981003353610880789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019520 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A067096.P16981003353610880789

/-! ## A067096.P8955991363751487805

`floor(A019520(n+1)/A252043(A033061(n+1)))`
-/

namespace A067096.P8955991363751487805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019520 (n + 1) : ℚ) / (A252043 (A033061 (n + 1)).toNat : ℚ)⌋

end

end A067096.P8955991363751487805

/-! ## A067096.P14311298798110697690

`floor(A019520(n+1)/A252043(A058183(n+1)))`
-/

namespace A067096.P14311298798110697690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019520 (n + 1) : ℚ) / (A252043 (A058183 (n + 1)).toNat : ℚ)⌋

end

end A067096.P14311298798110697690

/-!
# A067097: Floor[X/Y] where X = concatenation in increasing order of first n powers of 2 and Y = that of first n natural numbers.

The programs for A067097, there is no canonical definition to state claims against.
-/

/-! ## A067097.P7013718674841793385

`A005653(5*a(n-1))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A067097.P7013718674841793385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  A005653 (5 * a (n - 1)).toNat

end

end A067097.P7013718674841793385

/-! ## A067097.P2560618241341936818

`A140268(A281872(n))`
-/

namespace A067097.P2560618241341936818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140268 (A281872 n).toNat

end

end A067097.P2560618241341936818

/-!
# A067099: Floor[radius of the circumscribed circle of a regular n-gon with unit sides].

The programs for A067099, the canonical program `A067099.P10224763880654855806` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067099 has offset 3).

The definition of A067099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067099.P10224763880654855806

`floor(1/(2*sin(π/(n+3))))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067099

/-- `floor(1/(2*sin(π/(n+3))))` -/
def P10224763880654855806.Spec : Prop :=
  ∀ n, P10224763880654855806.a n = A067099 (n + 3)

theorem P10224763880654855806.correct : P10224763880654855806.Spec := by
  intro n
  simp only [A067099, Nat.add_sub_cancel]

end A067099

/-! ## A067099.P2532996306340314809

`floor(∑[(n+1)/π]*acot(n))`
-/

namespace A067099.P2532996306340314809
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.pi

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.acot (n : ℝ)⌋

end

end A067099.P2532996306340314809

namespace A067099

/-- `floor(∑[(n+1)/π]*acot(n))` -/
def P2532996306340314809.Spec : Prop :=
  ∀ n, P2532996306340314809.a n = A067099 (n + 3)

end A067099

/-! ## A067099.P11856267981038005374

`floor(A062300(n+2)/2)`
-/

namespace A067099.P11856267981038005374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062300 (n + 2) : ℚ) / 2⌋

end

end A067099.P11856267981038005374

namespace A067099

/-- `floor(A062300(n+2)/2)` -/
def P11856267981038005374.Spec : Prop :=
  ∀ n, P11856267981038005374.a n = A067099 (n + 3)

end A067099

/-! ## A067099.P1660094333398078900

`A004526(A062300(n+2))`
-/

namespace A067099.P1660094333398078900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A062300 (n + 2)).toNat

end

end A067099.P1660094333398078900

namespace A067099

/-- `A004526(A062300(n+2))` -/
def P1660094333398078900.Spec : Prop :=
  ∀ n, P1660094333398078900.a n = A067099 (n + 3)

end A067099

/-! ## A067099.P17086278431538299153

`A002265(2*A062300(n+2))`
-/

namespace A067099.P17086278431538299153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A062300 (n + 2)).toNat

end

end A067099.P17086278431538299153

namespace A067099

/-- `A002265(2*A062300(n+2))` -/
def P17086278431538299153.Spec : Prop :=
  ∀ n, P17086278431538299153.a n = A067099 (n + 3)

end A067099

/-! ## A067099.P4622540393259561487

`A123108(A062300(n+2))%A001935(n)`
-/

namespace A067099.P4622540393259561487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (A062300 (n + 2)).toNat) (A001935 n)

end

end A067099.P4622540393259561487

namespace A067099

/-- `A123108(A062300(n+2))%A001935(n)` -/
def P4622540393259561487.Spec : Prop :=
  ∀ n, P4622540393259561487.a n = A067099 (n + 3)

end A067099

/-! ## A067099.P7779598611613601976

`A123108(A062300(n+2)%A016825(n))`
-/

namespace A067099.P7779598611613601976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A062300 (n + 2)) (A016825 n)).toNat

end

end A067099.P7779598611613601976

namespace A067099

/-- `A123108(A062300(n+2)%A016825(n))` -/
def P7779598611613601976.Spec : Prop :=
  ∀ n, P7779598611613601976.a n = A067099 (n + 3)

end A067099

/-! ## A067099.P6616475468923104320

`A002265(A062300(n+2)+A062300(n+1)+1)`
-/

namespace A067099.P6616475468923104320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A062300 (n + 2) + (A062300 (n + 1) + 1)).toNat

end

end A067099.P6616475468923104320

namespace A067099

/-- `A002265(A062300(n+2)+A062300(n+1)+1)` -/
def P6616475468923104320.Spec : Prop :=
  ∀ n, P6616475468923104320.a n = A067099 (n + 3)

end A067099

