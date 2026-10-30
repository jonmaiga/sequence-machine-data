import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A242100: Numbers of the form m = b^i + b^j, where b > 1 and i > j > 0.

The programs for A242100, there is no canonical definition to state claims against.
-/

/-! ## A242100.P17863107435450379981

`A040000(A006720(n))*A080307(n+1)`
-/

namespace A242100.P17863107435450379981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A006720 n).toNat * A080307 (n + 1)

end

end A242100.P17863107435450379981

/-! ## A242100.P14166957510069338209

`A040000(A010079(n))*A080307(n+1)`
-/

namespace A242100.P14166957510069338209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A010079 n).toNat * A080307 (n + 1)

end

end A242100.P14166957510069338209

/-! ## A242100.P4900054571052012088

`A040000(A370315(n))*A165740(n+1)`
-/

namespace A242100.P4900054571052012088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A370315 n).toNat * A165740 (n + 1)

end

end A242100.P4900054571052012088

/-! ## A242100.P12044610569715103389

`A082204(A237437(n+1))*A237417(n+1)`
-/

namespace A242100.P12044610569715103389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082204 (A237437 (n + 1)).toNat * A237417 (n + 1)

end

end A242100.P12044610569715103389

/-! ## A242100.P207650716475556377

`A020639(A063515(n+2))*A080307(n+1)`
-/

namespace A242100.P207650716475556377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063515 (n + 2)).toNat * A080307 (n + 1)

end

end A242100.P207650716475556377

/-!
# A242101: Number of conjugacy classes of the symmetric group S_n when conjugating only by even permutations.

The programs for A242101, there is no canonical definition to state claims against.
-/

/-! ## A242101.P12618669573365997625

`ceil(cosh(sin(n)))*A046682(n+1)`
-/

namespace A242101.P12618669573365997625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A046682 (n + 1)

end

end A242101.P12618669573365997625

/-! ## A242101.P769366112969700512

`a(n-1)*ratio[A046682(n)]` with `a(0)=1, a(1)=2`
-/

namespace A242101.P769366112969700512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A242101.P769366112969700512

/-! ## A242101.P2231956572148857418

`(A057427(n)+1)*A046682(n+1)`
-/

namespace A242101.P2231956572148857418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A046682 (n + 1)

end

end A242101.P2231956572148857418

/-! ## A242101.P1608986563096614695

`A046682(n+1)*A130130(n+1)`
-/

namespace A242101.P1608986563096614695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (n + 1) * A130130 (n + 1)

end

end A242101.P1608986563096614695

/-! ## A242101.P821549367434304874

`A000032(C(2, n+2))*A046682(n+1)`
-/

namespace A242101.P821549367434304874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A046682 (n + 1)

end

end A242101.P821549367434304874

/-! ## A242101.P4585460337116148098

`A020639(A000010(n+2))*A046682(n+1)`
-/

namespace A242101.P4585460337116148098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A046682 (n + 1)

end

end A242101.P4585460337116148098

/-! ## A242101.P1907323928113999299

`A000041(n+1)+A000702(n+1)-A046682(n+1)`
-/

namespace A242101.P1907323928113999299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A000702 (n + 1) - A046682 (n + 1))

end

end A242101.P1907323928113999299

/-! ## A242101.P7525065255571313517

`A034444(A034444(2*n+1))*A046682(n+1)`
-/

namespace A242101.P7525065255571313517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (2 * n + 1)).toNat * A046682 (n + 1)

end

end A242101.P7525065255571313517

/-!
# A242105: Number of sequences (x(k))_{k=1..n}, of n strictly increasing terms of nonnegative integers {x(1)<x(2)<...<x(n)}, satisfying x(k) <= k^2 for all k.

The programs for A242105, there is no canonical definition to state claims against.
-/

/-! ## A242105.P10884974823267410508

`record[A261930(n+1)-Δ[A261930(n+1)]]`
-/

namespace A242105.P10884974823267410508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261930 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242105.P10884974823267410508

/-! ## A242105.P8581448293844379935

`A261897(∑[n]*A028552(n))`
-/

namespace A242105.P8581448293844379935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261897 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A028552 n).toNat

end

end A242105.P8581448293844379935

/-!
# A242108: a(n) = abs(A242107(n)).

The programs for A242108, there is no canonical definition to state claims against.
-/

/-! ## A242108.P2608056824995303287

`abs(A242107(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242108.P2608056824995303287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242107 n|

end

end A242108.P2608056824995303287

/-! ## A242108.P17218314196881663648

`lcm(A020985(n), A242107(n))`
-/

namespace A242108.P17218314196881663648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A242107 n)

end

end A242108.P17218314196881663648

/-! ## A242108.P2230356652567254649

`lcm(-A242107(n), A054977(n))`
-/

namespace A242108.P2230356652567254649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A242107 n) (A054977 n)

end

end A242108.P2230356652567254649

/-! ## A242108.P7554956387086640229

`gcd(A037912(A013632(n)), A242107(n))`
-/

namespace A242108.P7554956387086640229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037912 (A013632 n).toNat) (A242107 n)

end

end A242108.P7554956387086640229

/-! ## A242108.P2517458653025472578

`gcd(A178622(n), A242107(n))`
-/

namespace A242108.P2517458653025472578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178622 n) (A242107 n)

end

end A242108.P2517458653025472578

/-!
# A242112: a(n) = floor((2*n+6)/(5-(-1)^n)).

The programs for A242112, the canonical program `A242112.P13461073666666781945` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242112 has offset 0).

The definition of A242112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*n+6)/(5-(-1)^n))` (program `A242112.P13461073666666781945`, by `A242112.P13461073666666781945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242112.P13461073666666781945

`floor((2*n+6)/(5-(-1)^n))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242112

/-- `floor((2*n+6)/(5-(-1)^n))` -/
def P13461073666666781945.Spec : Prop :=
  ∀ n, P13461073666666781945.a n = A242112 n

theorem P13461073666666781945.correct : P13461073666666781945.Spec := by
  intro n
  simp only [A242112]

end A242112

/-! ## A242112.P9937789324982727916

`ogf((1+x+x^2+x^3+x^4)/(1-x^2-x^6+x^8))`
-/

namespace A242112.P9937789324982727916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 1] [1, 0, -1, 0, 0, 0, -1, 0, 1] n

end

end A242112.P9937789324982727916

namespace A242112

/-- `ogf((1+x+x^2+x^3+x^4)/(1-x^2-x^6+x^8))` -/
def P9937789324982727916.Spec : Prop :=
  ∀ n, P9937789324982727916.a n = A242112 n

end A242112

/-! ## A242112.P12565858601381694925

`a(n-2)+a(n-6)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=2, a(6)=4, a(7)=3`
-/

namespace A242112.P12565858601381694925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 3, 2, 4, 3] fun n a =>
  a (n - 2) + a (n - 6) - a (n - 8)

end

end A242112.P12565858601381694925

namespace A242112

/-- `a(n-2)+a(n-6)-a(n-8)` -/
def P12565858601381694925.Spec : Prop :=
  ∀ n, P12565858601381694925.a n = A242112 n

end A242112

/-! ## A242112.P6224411392681856521

`(n+3-A093718(n))/A010693(n)`
-/

namespace A242112.P6224411392681856521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A093718 n : ℚ) / (A010693 n : ℚ)

end

end A242112.P6224411392681856521

namespace A242112

/-- `(n+3-A093718(n))/A010693(n)` -/
def P6224411392681856521.Spec : Prop :=
  ∀ n, P6224411392681856521.a n = (A242112 n : ℚ)

end A242112

/-! ## A242112.P8473383099771845457

`floor(n/(2+n%2))+1`
-/

namespace A242112.P8473383099771845457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((2 + n % 2 : ℕ) : ℚ)⌋ + 1

end

end A242112.P8473383099771845457

namespace A242112

/-- `floor(n/(2+n%2))+1` -/
def P8473383099771845457.Spec : Prop :=
  ∀ n, P8473383099771845457.a n = A242112 n

end A242112

/-! ## A242112.P13972803665078639772

`floor(n/(4-gcd(2, n)))+1`
-/

namespace A242112.P13972803665078639772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (4 - (Nat.gcd 2 n : ℤ) : ℚ)⌋ + 1

end

end A242112.P13972803665078639772

namespace A242112

/-- `floor(n/(4-gcd(2, n)))+1` -/
def P13972803665078639772.Spec : Prop :=
  ∀ n, P13972803665078639772.a n = A242112 n

end A242112

/-! ## A242112.P14646513293860879366

`floor(n/(and(1, n)+2))+1`
-/

namespace A242112.P14646513293860879366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.land 1 n + 2 : ℚ)⌋ + 1

end

end A242112.P14646513293860879366

namespace A242112

/-- `floor(n/(and(1, n)+2))+1` -/
def P14646513293860879366.Spec : Prop :=
  ∀ n, P14646513293860879366.a n = A242112 n

end A242112

/-! ## A242112.P5079976034721340622

`ceil((n+1)/(and(1, n)+2))`
-/

namespace A242112.P5079976034721340622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Nat.land 1 n + 2 : ℚ)⌉

end

end A242112.P5079976034721340622

namespace A242112

/-- `ceil((n+1)/(and(1, n)+2))` -/
def P5079976034721340622.Spec : Prop :=
  ∀ n, P5079976034721340622.a n = A242112 n

end A242112

/-! ## A242112.P15331413209962014082

`ceil((lcm(2, n+1)+n)/6)`
-/

namespace A242112.P15331413209962014082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n + 1) + n : ℚ) / 6⌉

end

end A242112.P15331413209962014082

namespace A242112

/-- `ceil((lcm(2, n+1)+n)/6)` -/
def P15331413209962014082.Spec : Prop :=
  ∀ n, P15331413209962014082.a n = A242112 n

end A242112

/-! ## A242112.P9551631541644897099

`round((n+2)/(and(1, n)+2))`
-/

namespace A242112.P9551631541644897099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (Nat.land 1 n + 2 : ℚ))

end

end A242112.P9551631541644897099

namespace A242112

/-- `round((n+2)/(and(1, n)+2))` -/
def P9551631541644897099.Spec : Prop :=
  ∀ n, P9551631541644897099.a n = A242112 n

end A242112

/-! ## A242112.P4992797125053598264

`ceil((n+1)/(n+3-or(1, n)))`
-/

namespace A242112.P4992797125053598264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((n + 3 : ℤ) - (Nat.lor 1 n : ℤ) : ℚ)⌉

end

end A242112.P4992797125053598264

namespace A242112

/-- `ceil((n+1)/(n+3-or(1, n)))` -/
def P4992797125053598264.Spec : Prop :=
  ∀ n, P4992797125053598264.a n = A242112 n

end A242112

/-! ## A242112.P13149995760046573407

`floor((n+3)/(n+3-or(1, n)))`
-/

namespace A242112.P13149995760046573407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / ((n + 3 : ℤ) - (Nat.lor 1 n : ℤ) : ℚ)⌋

end

end A242112.P13149995760046573407

namespace A242112

/-- `floor((n+3)/(n+3-or(1, n)))` -/
def P13149995760046573407.Spec : Prop :=
  ∀ n, P13149995760046573407.a n = A242112 n

end A242112

/-! ## A242112.P2555136198474924237

`round((n+2)/(n+3-or(1, n)))`
-/

namespace A242112.P2555136198474924237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / ((n + 3 : ℤ) - (Nat.lor 1 n : ℤ) : ℚ))

end

end A242112.P2555136198474924237

namespace A242112

/-- `round((n+2)/(n+3-or(1, n)))` -/
def P2555136198474924237.Spec : Prop :=
  ∀ n, P2555136198474924237.a n = A242112 n

end A242112

/-! ## A242112.P11199892483948757554

`ceil((n+1)/(gcd(n+1, n+3)+1))`
-/

namespace A242112.P11199892483948757554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Nat.gcd (n + 1) (n + 3) + 1 : ℚ)⌉

end

end A242112.P11199892483948757554

namespace A242112

/-- `ceil((n+1)/(gcd(n+1, n+3)+1))` -/
def P11199892483948757554.Spec : Prop :=
  ∀ n, P11199892483948757554.a n = A242112 n

end A242112

/-! ## A242112.P13895025341383406881

`ceil((2*n+1)/(xor(1, n+3)-(n-2)))`
-/

namespace A242112.P13895025341383406881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / ((Nat.xor 1 (n + 3) : ℤ) - ((n : ℤ) - 2) : ℚ)⌉

end

end A242112.P13895025341383406881

namespace A242112

/-- `ceil((2*n+1)/(xor(1, n+3)-(n-2)))` -/
def P13895025341383406881.Spec : Prop :=
  ∀ n, P13895025341383406881.a n = A242112 n

end A242112

/-! ## A242112.P9767011476556269464

`n+1-floor(a(n-1)+(n+1)/6)` with `a(0)=1`
-/

namespace A242112.P9767011476556269464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - ⌊(a (n - 1) : ℚ) + (n + 1 : ℚ) / 6⌋

end

end A242112.P9767011476556269464

namespace A242112

/-- `n+1-floor(a(n-1)+(n+1)/6)` -/
def P9767011476556269464.Spec : Prop :=
  ∀ n, P9767011476556269464.a n = A242112 n

end A242112

/-! ## A242112.P16306853202972767008

`floor(n/A010693(n))+1`
-/

namespace A242112.P16306853202972767008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A010693 n : ℚ)⌋ + 1

end

end A242112.P16306853202972767008

namespace A242112

/-- `floor(n/A010693(n))+1` -/
def P16306853202972767008.Spec : Prop :=
  ∀ n, P16306853202972767008.a n = A242112 n

end A242112

/-! ## A242112.P17649965607318863903

`floor(n/A174296(n))+1`
-/

namespace A242112.P17649965607318863903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A174296 n : ℚ)⌋ + 1

end

end A242112.P17649965607318863903

namespace A242112

/-- `floor(n/A174296(n))+1` -/
def P17649965607318863903.Spec : Prop :=
  ∀ n, P17649965607318863903.a n = A242112 n

end A242112

/-! ## A242112.P10742525357934583248

`ceil((n+1)/A020639(3*(n+2)))`
-/

namespace A242112.P10742525357934583248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A020639 (3 * (n + 2)) : ℚ)⌉

end

end A242112.P10742525357934583248

namespace A242112

/-- `ceil((n+1)/A020639(3*(n+2)))` -/
def P10742525357934583248.Spec : Prop :=
  ∀ n, P10742525357934583248.a n = A242112 n

end A242112

/-! ## A242112.P2419422972275081658

`ceil((2*n+1-A026741(n))/3)`
-/

namespace A242112.P2419422972275081658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℤ) - A026741 n : ℚ) / 3⌉

end

end A242112.P2419422972275081658

namespace A242112

/-- `ceil((2*n+1-A026741(n))/3)` -/
def P2419422972275081658.Spec : Prop :=
  ∀ n, P2419422972275081658.a n = A242112 n

end A242112

/-!
# A242114: Triangle read by rows: T(n,k) = number of pairs (x,y) in {1..n}X{1..n} with gcd(x,y) = k.

The programs for A242114, the canonical program `A242114.P13346349605896685380` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242114 has offset 1).

The definition of A242114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242114.P13346349605896685380

`A018805(A010766(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A242114

/-- `A018805(A010766(n+1))` -/
def P13346349605896685380.Spec : Prop :=
  ∀ n, P13346349605896685380.a n = A242114 (n + 1)

theorem P13346349605896685380.correct : P13346349605896685380.Spec := by
  intro n
  simp only [A242114, Nat.add_sub_cancel]

end A242114

/-! ## A242114.P6173605561374168527

`2*A130313(n+1)-1`
-/

namespace A242114.P6173605561374168527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130313 (n + 1) - 1

end

end A242114.P6173605561374168527

namespace A242114

/-- `2*A130313(n+1)-1` -/
def P6173605561374168527.Spec : Prop :=
  ∀ n, P6173605561374168527.a n = A242114 (n + 1)

end A242114

/-! ## A242114.P12453527468249528542

`A004273(A130313(1+n))`
-/

namespace A242114.P12453527468249528542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A130313 (1 + n)).toNat

end

end A242114.P12453527468249528542

namespace A242114

/-- `A004273(A130313(1+n))` -/
def P12453527468249528542.Spec : Prop :=
  ∀ n, P12453527468249528542.a n = A242114 (n + 1)

end A242114

/-! ## A242114.P4450405066994926337

`A122507(A128489(n+1))`
-/

namespace A242114.P4450405066994926337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122507 (A128489 (n + 1)).toNat

end

end A242114.P4450405066994926337

namespace A242114

/-- `A122507(A128489(n+1))` -/
def P4450405066994926337.Spec : Prop :=
  ∀ n, P4450405066994926337.a n = A242114 (n + 1)

end A242114

/-! ## A242114.P2218327873939736288

`A018805(A013942(2*(n+1)))`
-/

namespace A242114.P2218327873939736288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A013942 (2 * (n + 1))).toNat

end

end A242114.P2218327873939736288

namespace A242114

/-- `A018805(A013942(2*(n+1)))` -/
def P2218327873939736288.Spec : Prop :=
  ∀ n, P2218327873939736288.a n = A242114 (n + 1)

end A242114

/-! ## A242114.P15431799033200238483

`A000267(A130313(n+1)²-1)`
-/

namespace A242114.P15431799033200238483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A130313 (n + 1) ^ 2 - 1).toNat

end

end A242114.P15431799033200238483

namespace A242114

/-- `A000267(A130313(n+1)²-1)` -/
def P15431799033200238483.Spec : Prop :=
  ∀ n, P15431799033200238483.a n = A242114 (n + 1)

end A242114

/-!
# A242115: Woodall semiprimes: Semiprimes of the form n*2^n - 1.

The programs for A242115, there is no canonical definition to state claims against.
-/

/-! ## A242115.P12469132697539230552

`A003261(A242273(n+1))`
-/

namespace A242115.P12469132697539230552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (A242273 (n + 1)).toNat

end

end A242115.P12469132697539230552

/-! ## A242115.P8608724706997509305

`A003261(record[A242273(∑[2-n%4]-1)])`
-/

namespace A242115.P8608724706997509305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 4 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242273 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242115.P8608724706997509305

/-! ## A242115.P15455527945940786803

`A036289(A242273(n+1))-A304042(n)`
-/

namespace A242115.P15455527945940786803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (A242273 (n + 1)).toNat - A304042 n

end

end A242115.P15455527945940786803

/-! ## A242115.P11040083422922554138

`A002064(A242273(n+1))-A000034(or(1, n))`
-/

namespace A242115.P11040083422922554138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (A242273 (n + 1)).toNat - A000034 (Nat.lor 1 n)

end

end A242115.P11040083422922554138

/-! ## A242115.P16473863048572428725

`A002064(A242273(n+1))-A001316(A001316(n))`
-/

namespace A242115.P16473863048572428725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (A242273 (n + 1)).toNat - A001316 (A001316 n).toNat

end

end A242115.P16473863048572428725

/-!
# A242116: Cullen semiprimes: Semiprimes of the form k*2^k + 1.

The programs for A242116, there is no canonical definition to state claims against.
-/

/-! ## A242116.P10402210787008246682

`A002064(A242175(n+1))`
-/

namespace A242116.P10402210787008246682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (A242175 (n + 1)).toNat

end

end A242116.P10402210787008246682

/-! ## A242116.P8428484419723918952

`A002064(eq[2, A367008(n)])`
-/

namespace A242116.P8428484419723918952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242116.P8428484419723918952

/-! ## A242116.P16355787095030487266

`A003261(A242175(n+1))+A000034(2*n+1)`
-/

namespace A242116.P16355787095030487266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (A242175 (n + 1)).toNat + A000034 (2 * n + 1)

end

end A242116.P16355787095030487266

/-! ## A242116.P2634472673716781670

`A130196(3*n+2)+A003261(A242175(n+1))`
-/

namespace A242116.P2634472673716781670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (3 * n + 2) + A003261 (A242175 (n + 1)).toNat

end

end A242116.P2634472673716781670

/-! ## A242116.P9859395680614351633

`A003261(A242175(n+1))+A020639(A006552(n+1))`
-/

namespace A242116.P9859395680614351633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (A242175 (n + 1)).toNat + A020639 (A006552 (n + 1)).toNat

end

end A242116.P9859395680614351633

/-!
# A242117: The number of independent sets in a complete binary tree with n levels (i.e., with 2^n-1 vertices) in which every vertex has degree 3.

The programs for A242117, there is no canonical definition to state claims against.
-/

/-! ## A242117.P17595858752854235707

`A144229(n)-1`
-/

namespace A242117.P17595858752854235707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144229 n - 1

end

end A242117.P17595858752854235707

/-! ## A242117.P10019402710418399679

`A076725(n)²-1`
-/

namespace A242117.P10019402710418399679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076725 n ^ 2 - 1

end

end A242117.P10019402710418399679

/-! ## A242117.P989013176426276565

`A224869(A246465(n))+A144229(n)`
-/

namespace A242117.P989013176426276565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224869 (A246465 n).toNat + A144229 n

end

end A242117.P989013176426276565

/-! ## A242117.P4697566968253919323

`A008683(A031933(n))+A076725(n)²`
-/

namespace A242117.P4697566968253919323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031933 n).toNat + A076725 n ^ 2

end

end A242117.P4697566968253919323

/-! ## A242117.P2492306219993816595

`A076721(A076706(n+1))+A076725(n)²`
-/

namespace A242117.P2492306219993816595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076721 (A076706 (n + 1)).toNat + A076725 n ^ 2

end

end A242117.P2492306219993816595

/-!
# A242118: Number of unit squares that intersect the circumference of a circle of radius n centered at (0,0).

The programs for A242118, there is no canonical definition to state claims against.
-/

/-! ## A242118.P13713599548076828774

`4*A393562(n²)`
-/

namespace A242118.P13713599548076828774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A393562 (n ^ 2)

end

end A242118.P13713599548076828774

/-! ## A242118.P588031833513724576

`4*A247367((2*n)²)`
-/

namespace A242118.P588031833513724576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A247367 ((2 * n) ^ 2)

end

end A242118.P588031833513724576

/-! ## A242118.P8798580903145151317

`4*(Δ[n²]-A000925(n²))`
-/

namespace A242118.P8798580903145151317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000925 (n ^ 2))

end

end A242118.P8798580903145151317

/-! ## A242118.P7784269969634750973

`floor(2/acot(4*n))-A046109(n)`
-/

namespace A242118.P7784269969634750973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋ - A046109 n

end

end A242118.P7784269969634750973

/-! ## A242118.P13699212752272435213

`floor(2/acot(4*n))-A004018(n²)`
-/

namespace A242118.P13699212752272435213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋ - A004018 (n ^ 2)

end

end A242118.P13699212752272435213

/-! ## A242118.P14601605600502895372

`4*(2*n-A000925((2*n)²)+1)`
-/

namespace A242118.P14601605600502895372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((2 * n : ℤ) - A000925 ((2 * n) ^ 2) + 1)

end

end A242118.P14601605600502895372

/-! ## A242118.P16800443566588396938

`A022144(n)-A046109(n)`
-/

namespace A242118.P16800443566588396938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A046109 n

end

end A242118.P16800443566588396938

/-! ## A242118.P4892768938129559260

`A281795(n)-A119677(n)`
-/

namespace A242118.P4892768938129559260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281795 n - A119677 n

end

end A242118.P4892768938129559260

/-! ## A242118.P14642795940270463548

`A008586(A247367((2*n)²))`
-/

namespace A242118.P14642795940270463548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A247367 ((2 * n) ^ 2)).toNat

end

end A242118.P14642795940270463548

/-! ## A242118.P3426121329522275443

`A008586(A247367(n²)+n)`
-/

namespace A242118.P3426121329522275443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A247367 (n ^ 2) + (n : ℤ)).toNat

end

end A242118.P3426121329522275443

/-!
# A242119: Primes modulo 18.

The programs for A242119, the canonical program `A242119.P14786692593538733553` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242119 has offset 1).

The definition of A242119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242119.P14786692593538733553

`Δ[A007504(n)]%18`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242119

/-- `Δ[A007504(n)]%18` -/
def P14786692593538733553.Spec : Prop :=
  ∀ n, P14786692593538733553.a n = A242119 (n + 1)

theorem P14786692593538733553.correct : P14786692593538733553.Spec := by
  intro n
  simp only [A242119, Nat.add_sub_cancel]

end A242119

/-! ## A242119.P11608754476048122297

`A000040(1+n)%18`
-/

namespace A242119.P11608754476048122297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (1 + n)) 18

end

end A242119.P11608754476048122297

namespace A242119

/-- `A000040(1+n)%18` -/
def P11608754476048122297.Spec : Prop :=
  ∀ n, P11608754476048122297.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P1932394467284844544

`A137521(n+1)%A040072(n)`
-/

namespace A242119.P1932394467284844544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137521 (n + 1)) (A040072 n)

end

end A242119.P1932394467284844544

namespace A242119

/-- `A137521(n+1)%A040072(n)` -/
def P1932394467284844544.Spec : Prop :=
  ∀ n, P1932394467284844544.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P1354545029819332

`A301378(n+1)%A040072(n)`
-/

namespace A242119.P1354545029819332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301378 (n + 1)) (A040072 n)

end

end A242119.P1354545029819332

namespace A242119

/-- `A301378(n+1)%A040072(n)` -/
def P1354545029819332.Spec : Prop :=
  ∀ n, P1354545029819332.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P8107150828194474956

`(A343785(n+1)²*∑[A054541(n+1)])%18`
-/

namespace A242119.P8107150828194474956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343785 (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)) 18

end

end A242119.P8107150828194474956

namespace A242119

/-- `(A343785(n+1)²*∑[A054541(n+1)])%18` -/
def P8107150828194474956.Spec : Prop :=
  ∀ n, P8107150828194474956.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P2974847825725188987

`((A006093(n+1)+1)*A343785(n+1)²)%18`
-/

namespace A242119.P2974847825725188987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A006093 (n + 1) + 1) * A343785 (n + 1) ^ 2) 18

end

end A242119.P2974847825725188987

namespace A242119

/-- `((A006093(n+1)+1)*A343785(n+1)²)%18` -/
def P2974847825725188987.Spec : Prop :=
  ∀ n, P2974847825725188987.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P2687842625959697019

`(A006093(n+1)+1)%A041650(A135416(3*n+2))`
-/

namespace A242119.P2687842625959697019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (A041650 (A135416 (3 * n + 2)).toNat)

end

end A242119.P2687842625959697019

namespace A242119

/-- `(A006093(n+1)+1)%A041650(A135416(3*n+2))` -/
def P2687842625959697019.Spec : Prop :=
  ∀ n, P2687842625959697019.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P11704349618586131368

`record[A073751(n+1)]%18`
-/

namespace A242119.P11704349618586131368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 18

end

end A242119.P11704349618586131368

namespace A242119

/-- `record[A073751(n+1)]%18` -/
def P11704349618586131368.Spec : Prop :=
  ∀ n, P11704349618586131368.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P11789155438533450291

`record[A008472(n+2)]%18`
-/

namespace A242119.P11789155438533450291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 18

end

end A242119.P11789155438533450291

namespace A242119

/-- `record[A008472(n+2)]%18` -/
def P11789155438533450291.Spec : Prop :=
  ∀ n, P11789155438533450291.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P5028637942669301867

`record[A006530(2*(n+1))]%18`
-/

namespace A242119.P5028637942669301867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 18

end

end A242119.P5028637942669301867

namespace A242119

/-- `record[A006530(2*(n+1))]%18` -/
def P5028637942669301867.Spec : Prop :=
  ∀ n, P5028637942669301867.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P8575536404012161758

`record[A039649(n+1)]%18`
-/

namespace A242119.P8575536404012161758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 18

end

end A242119.P8575536404012161758

namespace A242119

/-- `record[A039649(n+1)]%18` -/
def P8575536404012161758.Spec : Prop :=
  ∀ n, P8575536404012161758.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P18437687093961422514

`record[A093074(n+1)]%18`
-/

namespace A242119.P18437687093961422514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 18

end

end A242119.P18437687093961422514

namespace A242119

/-- `record[A093074(n+1)]%18` -/
def P18437687093961422514.Spec : Prop :=
  ∀ n, P18437687093961422514.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P8510400598277763311

`A000720(A006450(n+1))%18`
-/

namespace A242119.P8510400598277763311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A006450 (n + 1)).toNat) 18

end

end A242119.P8510400598277763311

namespace A242119

/-- `A000720(A006450(n+1))%18` -/
def P8510400598277763311.Spec : Prop :=
  ∀ n, P8510400598277763311.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P12104260005929115648

`A092909(n+1)%A040072(n)`
-/

namespace A242119.P12104260005929115648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092909 (n + 1)) (A040072 n)

end

end A242119.P12104260005929115648

namespace A242119

/-- `A092909(n+1)%A040072(n)` -/
def P12104260005929115648.Spec : Prop :=
  ∀ n, P12104260005929115648.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P18155705464004116021

`A101989(n+1)%A040072(n)`
-/

namespace A242119.P18155705464004116021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101989 (n + 1)) (A040072 n)

end

end A242119.P18155705464004116021

namespace A242119

/-- `A101989(n+1)%A040072(n)` -/
def P18155705464004116021.Spec : Prop :=
  ∀ n, P18155705464004116021.a n = A242119 (n + 1)

end A242119

/-! ## A242119.P17389964689354283327

`A046864(n+1)%A040072(n)`
-/

namespace A242119.P17389964689354283327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046864 (n + 1)) (A040072 n)

end

end A242119.P17389964689354283327

namespace A242119

/-- `A046864(n+1)%A040072(n)` -/
def P17389964689354283327.Spec : Prop :=
  ∀ n, P17389964689354283327.a n = A242119 (n + 1)

end A242119

/-!
# A242120: a(n) = n-th prime modulo 20.

The programs for A242120, the canonical program `A242120.P5605305619577368227` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242120 has offset 1).

The definition of A242120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242120.P5605305619577368227

`Δ[A007504(n)]%20`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242120

/-- `Δ[A007504(n)]%20` -/
def P5605305619577368227.Spec : Prop :=
  ∀ n, P5605305619577368227.a n = A242120 (n + 1)

theorem P5605305619577368227.correct : P5605305619577368227.Spec := by
  intro n
  simp only [A242120, Nat.add_sub_cancel]

end A242120

/-! ## A242120.P5878817730550997216

`A000040(n+1)%20`
-/

namespace A242120.P5878817730550997216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 20

end

end A242120.P5878817730550997216

namespace A242120

/-- `A000040(n+1)%20` -/
def P5878817730550997216.Spec : Prop :=
  ∀ n, P5878817730550997216.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P16818223233492989347

`abs(Δ[A008348(n)])%20`
-/

namespace A242120.P16818223233492989347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 20

end

end A242120.P16818223233492989347

namespace A242120

/-- `abs(Δ[A008348(n)])%20` -/
def P16818223233492989347.Spec : Prop :=
  ∀ n, P16818223233492989347.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P11907331812442130224

`abs(Δ[A022837(n)])%20`
-/

namespace A242120.P11907331812442130224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 20

end

end A242120.P11907331812442130224

namespace A242120

/-- `abs(Δ[A022837(n)])%20` -/
def P11907331812442130224.Spec : Prop :=
  ∀ n, P11907331812442130224.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P10133027844057055292

`sqrt(A001248(n+1))%20`
-/

namespace A242120.P10133027844057055292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 20

end

end A242120.P10133027844057055292

namespace A242120

/-- `sqrt(A001248(n+1))%20` -/
def P10133027844057055292.Spec : Prop :=
  ∀ n, P10133027844057055292.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P7299031946190002190

`∑[A054541(n+1)]%20`
-/

namespace A242120.P7299031946190002190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 20

end

end A242120.P7299031946190002190

namespace A242120

/-- `∑[A054541(n+1)]%20` -/
def P7299031946190002190.Spec : Prop :=
  ∀ n, P7299031946190002190.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P16092585658157249446

`(A001748(n+1)/3)%20`
-/

namespace A242120.P16092585658157249446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) 20

end

end A242120.P16092585658157249446

namespace A242120

/-- `(A001748(n+1)/3)%20` -/
def P16092585658157249446.Spec : Prop :=
  ∀ n, P16092585658157249446.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P14735989305925411008

`(n+1+A014689(n+1))%20`
-/

namespace A242120.P14735989305925411008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) + A014689 (n + 1)) 20

end

end A242120.P14735989305925411008

namespace A242120

/-- `(n+1+A014689(n+1))%20` -/
def P14735989305925411008.Spec : Prop :=
  ∀ n, P14735989305925411008.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P17220622929902384223

`(a(n-1)+A001223(n))%20` with `a(0)=2`
-/

namespace A242120.P17220622929902384223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) + A001223 n) 20

end

end A242120.P17220622929902384223

namespace A242120

/-- `(a(n-1)+A001223(n))%20` -/
def P17220622929902384223.Spec : Prop :=
  ∀ n, P17220622929902384223.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P319755618076816908

`A022976(A074972(1+n))`
-/

namespace A242120.P319755618076816908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022976 (A074972 (1 + n)).toNat

end

end A242120.P319755618076816908

namespace A242120

/-- `A022976(A074972(1+n))` -/
def P319755618076816908.Spec : Prop :=
  ∀ n, P319755618076816908.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P17237043839093773578

`A050997(n+1)%A040090(n)`
-/

namespace A242120.P17237043839093773578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) (A040090 n)

end

end A242120.P17237043839093773578

namespace A242120

/-- `A050997(n+1)%A040090(n)` -/
def P17237043839093773578.Spec : Prop :=
  ∀ n, P17237043839093773578.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P5392800102445464848

`A110923(n+1)%A040090(n)`
-/

namespace A242120.P5392800102445464848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110923 (n + 1)) (A040090 n)

end

end A242120.P5392800102445464848

namespace A242120

/-- `A110923(n+1)%A040090(n)` -/
def P5392800102445464848.Spec : Prop :=
  ∀ n, P5392800102445464848.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P13853547368856276310

`A171019(n+1)%A040090(n)`
-/

namespace A242120.P13853547368856276310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171019 (n + 1)) (A040090 n)

end

end A242120.P13853547368856276310

namespace A242120

/-- `A171019(n+1)%A040090(n)` -/
def P13853547368856276310.Spec : Prop :=
  ∀ n, P13853547368856276310.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P8260480938477348536

`A171028(n+1)%A040090(n)`
-/

namespace A242120.P8260480938477348536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171028 (n + 1)) (A040090 n)

end

end A242120.P8260480938477348536

namespace A242120

/-- `A171028(n+1)%A040090(n)` -/
def P8260480938477348536.Spec : Prop :=
  ∀ n, P8260480938477348536.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P11971879186434516925

`A171032(n+1)%A040090(n)`
-/

namespace A242120.P11971879186434516925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171032 (n + 1)) (A040090 n)

end

end A242120.P11971879186434516925

namespace A242120

/-- `A171032(n+1)%A040090(n)` -/
def P11971879186434516925.Spec : Prop :=
  ∀ n, P11971879186434516925.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P6679937563931119045

`A171041(n+1)%A040090(n)`
-/

namespace A242120.P6679937563931119045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171041 (n + 1)) (A040090 n)

end

end A242120.P6679937563931119045

namespace A242120

/-- `A171041(n+1)%A040090(n)` -/
def P6679937563931119045.Spec : Prop :=
  ∀ n, P6679937563931119045.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P5198197128572293412

`A171045(n+1)%A040090(n)`
-/

namespace A242120.P5198197128572293412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171045 (n + 1)) (A040090 n)

end

end A242120.P5198197128572293412

namespace A242120

/-- `A171045(n+1)%A040090(n)` -/
def P5198197128572293412.Spec : Prop :=
  ∀ n, P5198197128572293412.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P18166430083175176570

`A171047(n+1)%A040090(n)`
-/

namespace A242120.P18166430083175176570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171047 (n + 1)) (A040090 n)

end

end A242120.P18166430083175176570

namespace A242120

/-- `A171047(n+1)%A040090(n)` -/
def P18166430083175176570.Spec : Prop :=
  ∀ n, P18166430083175176570.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P7518674590117253595

`A253911(n+1)%A040090(n)`
-/

namespace A242120.P7518674590117253595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253911 (n + 1)) (A040090 n)

end

end A242120.P7518674590117253595

namespace A242120

/-- `A253911(n+1)%A040090(n)` -/
def P7518674590117253595.Spec : Prop :=
  ∀ n, P7518674590117253595.a n = A242120 (n + 1)

end A242120

/-! ## A242120.P5144135565221605354

`A008578(n+2)%20`
-/

namespace A242120.P5144135565221605354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 20

end

end A242120.P5144135565221605354

namespace A242120

/-- `A008578(n+2)%20` -/
def P5144135565221605354.Spec : Prop :=
  ∀ n, P5144135565221605354.a n = A242120 (n + 1)

end A242120

/-!
# A242121: a(n) = n-th prime modulo 21.

The programs for A242121, the canonical program `A242121.P4021894191771558325` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242121 has offset 1).

The definition of A242121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242121.P4021894191771558325

`A000040(n+1)%21`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242121

/-- `A000040(n+1)%21` -/
def P4021894191771558325.Spec : Prop :=
  ∀ n, P4021894191771558325.a n = A242121 (n + 1)

theorem P4021894191771558325.correct : P4021894191771558325.Spec := by
  intro n
  simp only [A242121, Nat.add_sub_cancel]

end A242121

/-! ## A242121.P8113862330185178580

`Δ[A007504(n)]%21`
-/

namespace A242121.P8113862330185178580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 21

end

end A242121.P8113862330185178580

namespace A242121

/-- `Δ[A007504(n)]%21` -/
def P8113862330185178580.Spec : Prop :=
  ∀ n, P8113862330185178580.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P12842808636696989786

`abs(Δ[A008348(n)])%21`
-/

namespace A242121.P12842808636696989786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 21

end

end A242121.P12842808636696989786

namespace A242121

/-- `abs(Δ[A008348(n)])%21` -/
def P12842808636696989786.Spec : Prop :=
  ∀ n, P12842808636696989786.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P7703037407261420811

`abs(Δ[A022837(n)])%21`
-/

namespace A242121.P7703037407261420811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 21

end

end A242121.P7703037407261420811

namespace A242121

/-- `abs(Δ[A022837(n)])%21` -/
def P7703037407261420811.Spec : Prop :=
  ∀ n, P7703037407261420811.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P10019006761102928951

`∑[A054541(n+1)]%21`
-/

namespace A242121.P10019006761102928951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 21

end

end A242121.P10019006761102928951

namespace A242121

/-- `∑[A054541(n+1)]%21` -/
def P10019006761102928951.Spec : Prop :=
  ∀ n, P10019006761102928951.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P7603742270625562036

`(A006093(n+1)+1)%21`
-/

namespace A242121.P7603742270625562036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 21

end

end A242121.P7603742270625562036

namespace A242121

/-- `(A006093(n+1)+1)%21` -/
def P7603742270625562036.Spec : Prop :=
  ∀ n, P7603742270625562036.a n = A242121 (n + 1)

theorem P7603742270625562036.correct : P7603742270625562036.Spec := by
  intro n
  simp only [A242121, Nat.add_sub_cancel, A242121.P7603742270625562036.a, A242121.P4021894191771558325.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242121

/-! ## A242121.P1363866763271783349

`(A001748(n+1)/3)%21`
-/

namespace A242121.P1363866763271783349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) 21

end

end A242121.P1363866763271783349

namespace A242121

/-- `(A001748(n+1)/3)%21` -/
def P1363866763271783349.Spec : Prop :=
  ∀ n, P1363866763271783349.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P7302610780199231445

`(n+1+A014689(n+1))%21`
-/

namespace A242121.P7302610780199231445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) + A014689 (n + 1)) 21

end

end A242121.P7302610780199231445

namespace A242121

/-- `(n+1+A014689(n+1))%21` -/
def P7302610780199231445.Spec : Prop :=
  ∀ n, P7302610780199231445.a n = A242121 (n + 1)

theorem P7302610780199231445.correct : P7302610780199231445.Spec := by
  intro n
  simp only [A242121, Nat.add_sub_cancel, A242121.P7302610780199231445.a, A242121.P4021894191771558325.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242121

/-! ## A242121.P12580459318508368489

`(a(n-1)+A001223(n))%21` with `a(0)=2`
-/

namespace A242121.P12580459318508368489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) + A001223 n) 21

end

end A242121.P12580459318508368489

namespace A242121

/-- `(a(n-1)+A001223(n))%21` -/
def P12580459318508368489.Spec : Prop :=
  ∀ n, P12580459318508368489.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P86241597017916402

`A181363(2*n+3)%21`
-/

namespace A242121.P86241597017916402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181363 (2 * n + 3)) 21

end

end A242121.P86241597017916402

namespace A242121

/-- `A181363(2*n+3)%21` -/
def P86241597017916402.Spec : Prop :=
  ∀ n, P86241597017916402.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P794745689824065765

`record[A051698(n)]%21`
-/

namespace A242121.P794745689824065765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 21

end

end A242121.P794745689824065765

namespace A242121

/-- `record[A051698(n)]%21` -/
def P794745689824065765.Spec : Prop :=
  ∀ n, P794745689824065765.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P770774125632153166

`A167129(A000040(n+1))`
-/

namespace A242121.P770774125632153166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167129 (A000040 (n + 1)).toNat

end

end A242121.P770774125632153166

namespace A242121

/-- `A167129(A000040(n+1))` -/
def P770774125632153166.Spec : Prop :=
  ∀ n, P770774125632153166.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P14026827814945205303

`A167129(A008578(n+2))`
-/

namespace A242121.P14026827814945205303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167129 (A008578 (n + 2)).toNat

end

end A242121.P14026827814945205303

namespace A242121

/-- `A167129(A008578(n+2))` -/
def P14026827814945205303.Spec : Prop :=
  ∀ n, P14026827814945205303.a n = A242121 (n + 1)

end A242121

/-! ## A242121.P1205800314593554946

`A167129(A182986(n+2))`
-/

namespace A242121.P1205800314593554946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167129 (A182986 (n + 2)).toNat

end

end A242121.P1205800314593554946

namespace A242121

/-- `A167129(A182986(n+2))` -/
def P1205800314593554946.Spec : Prop :=
  ∀ n, P1205800314593554946.a n = A242121 (n + 1)

end A242121

/-!
# A242122: a(n) = n-th prime modulo 22.

The programs for A242122, the canonical program `A242122.P11026472970016331892` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242122 has offset 1).

The definition of A242122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242122.P11026472970016331892

`Δ[A007504(n)]%22`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A242122

/-- `Δ[A007504(n)]%22` -/
def P11026472970016331892.Spec : Prop :=
  ∀ n, P11026472970016331892.a n = A242122 (n + 1)

theorem P11026472970016331892.correct : P11026472970016331892.Spec := by
  intro n
  simp only [A242122, Nat.add_sub_cancel]

end A242122

/-! ## A242122.P18110100853455955237

`A000040(1+n)%22`
-/

namespace A242122.P18110100853455955237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (1 + n)) 22

end

end A242122.P18110100853455955237

namespace A242122

/-- `A000040(1+n)%22` -/
def P18110100853455955237.Spec : Prop :=
  ∀ n, P18110100853455955237.a n = A242122 (n + 1)

end A242122

/-! ## A242122.P4570428681212441634

`sqrt(A001248(n+1))%22`
-/

namespace A242122.P4570428681212441634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 22

end

end A242122.P4570428681212441634

namespace A242122

/-- `sqrt(A001248(n+1))%22` -/
def P4570428681212441634.Spec : Prop :=
  ∀ n, P4570428681212441634.a n = A242122 (n + 1)

end A242122

/-! ## A242122.P14945428646469054461

`∑[A054541(n+1)]%22`
-/

namespace A242122.P14945428646469054461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 22

end

end A242122.P14945428646469054461

namespace A242122

/-- `∑[A054541(n+1)]%22` -/
def P14945428646469054461.Spec : Prop :=
  ∀ n, P14945428646469054461.a n = A242122 (n + 1)

end A242122

/-! ## A242122.P17062022352452944396

`(A001748(n+1)/3)%22`
-/

namespace A242122.P17062022352452944396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) 22

end

end A242122.P17062022352452944396

namespace A242122

/-- `(A001748(n+1)/3)%22` -/
def P17062022352452944396.Spec : Prop :=
  ∀ n, P17062022352452944396.a n = A242122 (n + 1)

end A242122

/-! ## A242122.P656502316739447756

`∪[A060191(n), A060192(n)]%22`
-/

namespace A242122.P656502316739447756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n % 22

end

end A242122.P656502316739447756

namespace A242122

/-- `∪[A060191(n), A060192(n)]%22` -/
def P656502316739447756.Spec : Prop :=
  ∀ n, (P656502316739447756.a n : ℤ) = A242122 (n + 1)

end A242122

/-! ## A242122.P3481965487683038083

`record[A000705(n+1)]%22`
-/

namespace A242122.P3481965487683038083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 22

end

end A242122.P3481965487683038083

namespace A242122

/-- `record[A000705(n+1)]%22` -/
def P3481965487683038083.Spec : Prop :=
  ∀ n, P3481965487683038083.a n = A242122 (n + 1)

end A242122

/-! ## A242122.P2564610558570262677

`record[A006530(2*(n+2))]%22`
-/

namespace A242122.P2564610558570262677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 22

end

end A242122.P2564610558570262677

namespace A242122

/-- `record[A006530(2*(n+2))]%22` -/
def P2564610558570262677.Spec : Prop :=
  ∀ n, P2564610558570262677.a n = A242122 (n + 1)

end A242122

/-! ## A242122.P14902843139515126542

`record[A084127(n+1)]%22`
-/

namespace A242122.P14902843139515126542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 22

end

end A242122.P14902843139515126542

namespace A242122

/-- `record[A084127(n+1)]%22` -/
def P14902843139515126542.Spec : Prop :=
  ∀ n, P14902843139515126542.a n = A242122 (n + 1)

end A242122

/-! ## A242122.P12877750432254957294

`A139169(A168152(n+1)+A008864(n+1)-1)%22`
-/

namespace A242122.P12877750432254957294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139169 (A168152 (n + 1) + (A008864 (n + 1) - 1)).toNat) 22

end

end A242122.P12877750432254957294

namespace A242122

/-- `A139169(A168152(n+1)+A008864(n+1)-1)%22` -/
def P12877750432254957294.Spec : Prop :=
  ∀ n, P12877750432254957294.a n = A242122 (n + 1)

end A242122

/-!
# A242123: a(n) = n-th prime modulo 25.

The programs for A242123, the canonical program `A242123.P4777588080624664964` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242123 has offset 1).

The definition of A242123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242123.P4777588080624664964

`A000040(n+1)%25`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242123

/-- `A000040(n+1)%25` -/
def P4777588080624664964.Spec : Prop :=
  ∀ n, P4777588080624664964.a n = A242123 (n + 1)

theorem P4777588080624664964.correct : P4777588080624664964.Spec := by
  intro n
  simp only [A242123, Nat.add_sub_cancel]

end A242123

/-! ## A242123.P10948602154722804103

`Δ[A007504(n)]%25`
-/

namespace A242123.P10948602154722804103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 25

end

end A242123.P10948602154722804103

namespace A242123

/-- `Δ[A007504(n)]%25` -/
def P10948602154722804103.Spec : Prop :=
  ∀ n, P10948602154722804103.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P4045641976986916102

`abs(Δ[A008348(n)])%25`
-/

namespace A242123.P4045641976986916102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 25

end

end A242123.P4045641976986916102

namespace A242123

/-- `abs(Δ[A008348(n)])%25` -/
def P4045641976986916102.Spec : Prop :=
  ∀ n, P4045641976986916102.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P867873406723061711

`abs(Δ[A022837(n)])%25`
-/

namespace A242123.P867873406723061711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 25

end

end A242123.P867873406723061711

namespace A242123

/-- `abs(Δ[A022837(n)])%25` -/
def P867873406723061711.Spec : Prop :=
  ∀ n, P867873406723061711.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P549531444295191145

`sqrt(A001248(n+1))%25`
-/

namespace A242123.P549531444295191145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 25

end

end A242123.P549531444295191145

namespace A242123

/-- `sqrt(A001248(n+1))%25` -/
def P549531444295191145.Spec : Prop :=
  ∀ n, P549531444295191145.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P7861994701871738618

`∑[A054541(n+1)]%25`
-/

namespace A242123.P7861994701871738618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 25

end

end A242123.P7861994701871738618

namespace A242123

/-- `∑[A054541(n+1)]%25` -/
def P7861994701871738618.Spec : Prop :=
  ∀ n, P7861994701871738618.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P1704222628762206924

`(A006093(n+1)+1)%25`
-/

namespace A242123.P1704222628762206924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 25

end

end A242123.P1704222628762206924

namespace A242123

/-- `(A006093(n+1)+1)%25` -/
def P1704222628762206924.Spec : Prop :=
  ∀ n, P1704222628762206924.a n = A242123 (n + 1)

theorem P1704222628762206924.correct : P1704222628762206924.Spec := by
  intro n
  simp only [A242123, Nat.add_sub_cancel, A242123.P1704222628762206924.a, A242123.P4777588080624664964.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242123

/-! ## A242123.P2945343405429514491

`(A008864(n+1)-1)%25`
-/

namespace A242123.P2945343405429514491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) 25

end

end A242123.P2945343405429514491

namespace A242123

/-- `(A008864(n+1)-1)%25` -/
def P2945343405429514491.Spec : Prop :=
  ∀ n, P2945343405429514491.a n = A242123 (n + 1)

theorem P2945343405429514491.correct : P2945343405429514491.Spec := by
  intro n
  simp only [A242123, Nat.add_sub_cancel, A242123.P2945343405429514491.a, A242123.P4777588080624664964.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242123

/-! ## A242123.P13255494715433803950

`(A014688(n+1)-(n+1))%25`
-/

namespace A242123.P13255494715433803950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1) - (n + 1 : ℤ)) 25

end

end A242123.P13255494715433803950

namespace A242123

/-- `(A014688(n+1)-(n+1))%25` -/
def P13255494715433803950.Spec : Prop :=
  ∀ n, P13255494715433803950.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P11959152276051320647

`(A001043(n)-a(n-1))%25` with `a(0)=2`
-/

namespace A242123.P11959152276051320647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A001043 n - a (n - 1)) 25

end

end A242123.P11959152276051320647

namespace A242123

/-- `(A001043(n)-a(n-1))%25` -/
def P11959152276051320647.Spec : Prop :=
  ∀ n, P11959152276051320647.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P2336512820345881399

`record[A006530(n+2)]%25`
-/

namespace A242123.P2336512820345881399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 25

end

end A242123.P2336512820345881399

namespace A242123

/-- `record[A006530(n+2)]%25` -/
def P2336512820345881399.Spec : Prop :=
  ∀ n, P2336512820345881399.a n = A242123 (n + 1)

end A242123

/-! ## A242123.P17585834067477701741

`record[A051698(n)]%25`
-/

namespace A242123.P17585834067477701741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 25

end

end A242123.P17585834067477701741

namespace A242123

/-- `record[A051698(n)]%25` -/
def P17585834067477701741.Spec : Prop :=
  ∀ n, P17585834067477701741.a n = A242123 (n + 1)

end A242123

/-!
# A242124: a(n) = n-th prime modulo 26.

The programs for A242124, the canonical program `A242124.P12660772852566305349` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242124 has offset 1).

The definition of A242124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242124.P14764696048923988782

`Δ[A007504(n)]%26`
-/

namespace A242124.P14764696048923988782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 26

end

end A242124.P14764696048923988782

namespace A242124

/-- `Δ[A007504(n)]%26` -/
def P14764696048923988782.Spec : Prop :=
  ∀ n, P14764696048923988782.a n = A242124 (n + 1)

end A242124

/-! ## A242124.P12660772852566305349

`A000040(n+1)%26`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242124

/-- `A000040(n+1)%26` -/
def P12660772852566305349.Spec : Prop :=
  ∀ n, P12660772852566305349.a n = A242124 (n + 1)

theorem P12660772852566305349.correct : P12660772852566305349.Spec := by
  intro n
  simp only [A242124, Nat.add_sub_cancel]

end A242124

/-! ## A242124.P17997831953855844004

`sqrt(A001248(n+1))%26`
-/

namespace A242124.P17997831953855844004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 26

end

end A242124.P17997831953855844004

namespace A242124

/-- `sqrt(A001248(n+1))%26` -/
def P17997831953855844004.Spec : Prop :=
  ∀ n, P17997831953855844004.a n = A242124 (n + 1)

end A242124

/-! ## A242124.P14044186482359299812

`row(A034953(n+1))%26`
-/

namespace A242124.P14044186482359299812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A034953 (n + 1)).toNat % 26

end

end A242124.P14044186482359299812

namespace A242124

/-- `row(A034953(n+1))%26` -/
def P14044186482359299812.Spec : Prop :=
  ∀ n, (P14044186482359299812.a n : ℤ) = A242124 (n + 1)

end A242124

/-! ## A242124.P12186882453241190609

`(A006093(n+1)+1)%26`
-/

namespace A242124.P12186882453241190609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 26

end

end A242124.P12186882453241190609

namespace A242124

/-- `(A006093(n+1)+1)%26` -/
def P12186882453241190609.Spec : Prop :=
  ∀ n, P12186882453241190609.a n = A242124 (n + 1)

theorem P12186882453241190609.correct : P12186882453241190609.Spec := by
  intro n
  simp only [A242124, Nat.add_sub_cancel, A242124.P12186882453241190609.a, A242124.P12660772852566305349.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242124

/-! ## A242124.P12277302921113407818

`(A008864(n+1)-1)%26`
-/

namespace A242124.P12277302921113407818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) 26

end

end A242124.P12277302921113407818

namespace A242124

/-- `(A008864(n+1)-1)%26` -/
def P12277302921113407818.Spec : Prop :=
  ∀ n, P12277302921113407818.a n = A242124 (n + 1)

theorem P12277302921113407818.correct : P12277302921113407818.Spec := by
  intro n
  simp only [A242124, Nat.add_sub_cancel, A242124.P12277302921113407818.a, A242124.P12660772852566305349.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242124

/-! ## A242124.P12106340034355864217

`(A014692(n+1)+n)%26`
-/

namespace A242124.P12106340034355864217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 1) + (n : ℤ)) 26

end

end A242124.P12106340034355864217

namespace A242124

/-- `(A014692(n+1)+n)%26` -/
def P12106340034355864217.Spec : Prop :=
  ∀ n, P12106340034355864217.a n = A242124 (n + 1)

theorem P12106340034355864217.correct : P12106340034355864217.Spec := by
  intro n
  simp only [A242124, Nat.add_sub_cancel, A242124.P12106340034355864217.a, A242124.P12660772852566305349.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242124

/-! ## A242124.P11212853433340268047

`(A014688(n+1)-(n+1))%26`
-/

namespace A242124.P11212853433340268047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1) - (n + 1 : ℤ)) 26

end

end A242124.P11212853433340268047

namespace A242124

/-- `(A014688(n+1)-(n+1))%26` -/
def P11212853433340268047.Spec : Prop :=
  ∀ n, P11212853433340268047.a n = A242124 (n + 1)

end A242124

/-! ## A242124.P6535052740346974680

`record[A006530(2*(n+2))]%26`
-/

namespace A242124.P6535052740346974680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 26

end

end A242124.P6535052740346974680

namespace A242124

/-- `record[A006530(2*(n+2))]%26` -/
def P6535052740346974680.Spec : Prop :=
  ∀ n, P6535052740346974680.a n = A242124 (n + 1)

end A242124

/-! ## A242124.P14284952910995908315

`comp[A141468(n+1)]%26`
-/

namespace A242124.P14284952910995908315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 26

end

end A242124.P14284952910995908315

namespace A242124

/-- `comp[A141468(n+1)]%26` -/
def P14284952910995908315.Spec : Prop :=
  ∀ n, (P14284952910995908315.a n : ℤ) = A242124 (n + 1)

end A242124

/-!
# A242125: a(n) = n-th prime modulo 27.

The programs for A242125, the canonical program `A242125.P4403768967938311355` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242125 has offset 1).

The definition of A242125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242125.P17476846194852692477

`Δ[A007504(n)]%27`
-/

namespace A242125.P17476846194852692477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 27

end

end A242125.P17476846194852692477

namespace A242125

/-- `Δ[A007504(n)]%27` -/
def P17476846194852692477.Spec : Prop :=
  ∀ n, P17476846194852692477.a n = A242125 (n + 1)

end A242125

/-! ## A242125.P4403768967938311355

`A000040(n+1)%27`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242125

/-- `A000040(n+1)%27` -/
def P4403768967938311355.Spec : Prop :=
  ∀ n, P4403768967938311355.a n = A242125 (n + 1)

theorem P4403768967938311355.correct : P4403768967938311355.Spec := by
  intro n
  simp only [A242125, Nat.add_sub_cancel]

end A242125

/-! ## A242125.P17593422609498907148

`abs(Δ[A117128(n)])%27`
-/

namespace A242125.P17593422609498907148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 27

end

end A242125.P17593422609498907148

namespace A242125

/-- `abs(Δ[A117128(n)])%27` -/
def P17593422609498907148.Spec : Prop :=
  ∀ n, P17593422609498907148.a n = A242125 (n + 1)

end A242125

/-! ## A242125.P3674155725553665538

`sqrt(A001248(n+1))%27`
-/

namespace A242125.P3674155725553665538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 27

end

end A242125.P3674155725553665538

namespace A242125

/-- `sqrt(A001248(n+1))%27` -/
def P3674155725553665538.Spec : Prop :=
  ∀ n, P3674155725553665538.a n = A242125 (n + 1)

end A242125

/-! ## A242125.P18430347968699938421

`∑[A054541(n+1)]%27`
-/

namespace A242125.P18430347968699938421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 27

end

end A242125.P18430347968699938421

namespace A242125

/-- `∑[A054541(n+1)]%27` -/
def P18430347968699938421.Spec : Prop :=
  ∀ n, P18430347968699938421.a n = A242125 (n + 1)

end A242125

/-! ## A242125.P1394191954173463888

`(A006093(n+1)+1)%27`
-/

namespace A242125.P1394191954173463888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 27

end

end A242125.P1394191954173463888

namespace A242125

/-- `(A006093(n+1)+1)%27` -/
def P1394191954173463888.Spec : Prop :=
  ∀ n, P1394191954173463888.a n = A242125 (n + 1)

theorem P1394191954173463888.correct : P1394191954173463888.Spec := by
  intro n
  simp only [A242125, Nat.add_sub_cancel, A242125.P1394191954173463888.a, A242125.P4403768967938311355.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242125

/-! ## A242125.P4637337379121702011

`(A014692(n+1)+n)%27`
-/

namespace A242125.P4637337379121702011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 1) + (n : ℤ)) 27

end

end A242125.P4637337379121702011

namespace A242125

/-- `(A014692(n+1)+n)%27` -/
def P4637337379121702011.Spec : Prop :=
  ∀ n, P4637337379121702011.a n = A242125 (n + 1)

theorem P4637337379121702011.correct : P4637337379121702011.Spec := by
  intro n
  simp only [A242125, Nat.add_sub_cancel, A242125.P4637337379121702011.a, A242125.P4403768967938311355.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242125

/-! ## A242125.P4163467037462482865

`∑{d}[n+1, A007444(#)]%27`
-/

namespace A242125.P4163467037462482865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A007444 d) 27

end

end A242125.P4163467037462482865

namespace A242125

/-- `∑{d}[n+1, A007444(#)]%27` -/
def P4163467037462482865.Spec : Prop :=
  ∀ n, P4163467037462482865.a n = A242125 (n + 1)

end A242125

/-! ## A242125.P12109057792702263506

`record[A039650(n+1)]%27`
-/

namespace A242125.P12109057792702263506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 27

end

end A242125.P12109057792702263506

namespace A242125

/-- `record[A039650(n+1)]%27` -/
def P12109057792702263506.Spec : Prop :=
  ∀ n, P12109057792702263506.a n = A242125 (n + 1)

end A242125

/-! ## A242125.P9250110759610629249

`record[A067629(n+2)]%27`
-/

namespace A242125.P9250110759610629249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 27

end

end A242125.P9250110759610629249

namespace A242125

/-- `record[A067629(n+2)]%27` -/
def P9250110759610629249.Spec : Prop :=
  ∀ n, P9250110759610629249.a n = A242125 (n + 1)

end A242125

/-!
# A242126: a(n) = n-th prime modulo 28.

The programs for A242126, the canonical program `A242126.P7023242085800595695` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242126 has offset 1).

The definition of A242126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242126.P4375047865703673267

`Δ[A007504(n)]%28`
-/

namespace A242126.P4375047865703673267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 28

end

end A242126.P4375047865703673267

namespace A242126

/-- `Δ[A007504(n)]%28` -/
def P4375047865703673267.Spec : Prop :=
  ∀ n, P4375047865703673267.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P7023242085800595695

`A000040(n+1)%28`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242126

/-- `A000040(n+1)%28` -/
def P7023242085800595695.Spec : Prop :=
  ∀ n, P7023242085800595695.a n = A242126 (n + 1)

theorem P7023242085800595695.correct : P7023242085800595695.Spec := by
  intro n
  simp only [A242126, Nat.add_sub_cancel]

end A242126

/-! ## A242126.P1416927784511040633

`abs(Δ[A008348(n)])%28`
-/

namespace A242126.P1416927784511040633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 28

end

end A242126.P1416927784511040633

namespace A242126

/-- `abs(Δ[A008348(n)])%28` -/
def P1416927784511040633.Spec : Prop :=
  ∀ n, P1416927784511040633.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P3003412810423502997

`abs(Δ[A022837(n)])%28`
-/

namespace A242126.P3003412810423502997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 28

end

end A242126.P3003412810423502997

namespace A242126

/-- `abs(Δ[A022837(n)])%28` -/
def P3003412810423502997.Spec : Prop :=
  ∀ n, P3003412810423502997.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P9865861930082208803

`abs(Δ[A117128(n)])%28`
-/

namespace A242126.P9865861930082208803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 28

end

end A242126.P9865861930082208803

namespace A242126

/-- `abs(Δ[A117128(n)])%28` -/
def P9865861930082208803.Spec : Prop :=
  ∀ n, P9865861930082208803.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P18259297088996828691

`sqrt(A001248(n+1))%28`
-/

namespace A242126.P18259297088996828691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 28

end

end A242126.P18259297088996828691

namespace A242126

/-- `sqrt(A001248(n+1))%28` -/
def P18259297088996828691.Spec : Prop :=
  ∀ n, P18259297088996828691.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P8909323319450842984

`∑[A054541(n+1)]%28`
-/

namespace A242126.P8909323319450842984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 28

end

end A242126.P8909323319450842984

namespace A242126

/-- `∑[A054541(n+1)]%28` -/
def P8909323319450842984.Spec : Prop :=
  ∀ n, P8909323319450842984.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P7610316977143036599

`(A008864(n+1)-1)%28`
-/

namespace A242126.P7610316977143036599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) 28

end

end A242126.P7610316977143036599

namespace A242126

/-- `(A008864(n+1)-1)%28` -/
def P7610316977143036599.Spec : Prop :=
  ∀ n, P7610316977143036599.a n = A242126 (n + 1)

theorem P7610316977143036599.correct : P7610316977143036599.Spec := by
  intro n
  simp only [A242126, Nat.add_sub_cancel, A242126.P7610316977143036599.a, A242126.P7023242085800595695.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242126

/-! ## A242126.P15742444417937441775

`(A040976(n+1)+2)%28`
-/

namespace A242126.P15742444417937441775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) 28

end

end A242126.P15742444417937441775

namespace A242126

/-- `(A040976(n+1)+2)%28` -/
def P15742444417937441775.Spec : Prop :=
  ∀ n, P15742444417937441775.a n = A242126 (n + 1)

theorem P15742444417937441775.correct : P15742444417937441775.Spec := by
  intro n
  simp only [A242126, Nat.add_sub_cancel, A242126.P15742444417937441775.a, A242126.P7023242085800595695.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242126

/-! ## A242126.P5563208598076755626

`(A014688(n+1)-(n+1))%28`
-/

namespace A242126.P5563208598076755626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1) - (n + 1 : ℤ)) 28

end

end A242126.P5563208598076755626

namespace A242126

/-- `(A014688(n+1)-(n+1))%28` -/
def P5563208598076755626.Spec : Prop :=
  ∀ n, P5563208598076755626.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P5360917660459170365

`(a(n-1)+A001223(n))%28` with `a(0)=2`
-/

namespace A242126.P5360917660459170365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) + A001223 n) 28

end

end A242126.P5360917660459170365

namespace A242126

/-- `(a(n-1)+A001223(n))%28` -/
def P5360917660459170365.Spec : Prop :=
  ∀ n, P5360917660459170365.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P9677791226029385751

`A092759(n+1)%A040182(n)`
-/

namespace A242126.P9677791226029385751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) (A040182 n)

end

end A242126.P9677791226029385751

namespace A242126

/-- `A092759(n+1)%A040182(n)` -/
def P9677791226029385751.Spec : Prop :=
  ∀ n, P9677791226029385751.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P3969735679399695858

`∪[A060191(n), A060192(n)]%28`
-/

namespace A242126.P3969735679399695858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n % 28

end

end A242126.P3969735679399695858

namespace A242126

/-- `∪[A060191(n), A060192(n)]%28` -/
def P3969735679399695858.Spec : Prop :=
  ∀ n, (P3969735679399695858.a n : ℤ) = A242126 (n + 1)

end A242126

/-! ## A242126.P13051624481870225154

`record[A051698(n)]%28`
-/

namespace A242126.P13051624481870225154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 28

end

end A242126.P13051624481870225154

namespace A242126

/-- `record[A051698(n)]%28` -/
def P13051624481870225154.Spec : Prop :=
  ∀ n, P13051624481870225154.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P11455620179068458984

`A289441(A100484(n+1))%A040182(n)`
-/

namespace A242126.P11455620179068458984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289441 (A100484 (n + 1)).toNat) (A040182 n)

end

end A242126.P11455620179068458984

namespace A242126

/-- `A289441(A100484(n+1))%A040182(n)` -/
def P11455620179068458984.Spec : Prop :=
  ∀ n, P11455620179068458984.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P4704748559266843485

`(A014692(n+1)+n)%A349826(A082542(2*n+3))`
-/

namespace A242126.P4704748559266843485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 1) + (n : ℤ)) (A349826 (A082542 (2 * n + 3)).toNat)

end

end A242126.P4704748559266843485

namespace A242126

/-- `(A014692(n+1)+n)%A349826(A082542(2*n+3))` -/
def P4704748559266843485.Spec : Prop :=
  ∀ n, P4704748559266843485.a n = A242126 (n + 1)

end A242126

/-! ## A242126.P625202661963785798

`∑{d}[n+1, A007444(#)]%A349826(A082542(2*n+3))`
-/

namespace A242126.P625202661963785798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A007444 d) (A349826 (A082542 (2 * n + 3)).toNat)

end

end A242126.P625202661963785798

namespace A242126

/-- `∑{d}[n+1, A007444(#)]%A349826(A082542(2*n+3))` -/
def P625202661963785798.Spec : Prop :=
  ∀ n, P625202661963785798.a n = A242126 (n + 1)

end A242126

/-!
# A242127: a(n) = n-th prime modulo 29.

The programs for A242127, the canonical program `A242127.P18416423254723093719` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242127 has offset 1).

The definition of A242127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242127.P6707689115882365008

`Δ[A007504(n)]%29`
-/

namespace A242127.P6707689115882365008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 29

end

end A242127.P6707689115882365008

namespace A242127

/-- `Δ[A007504(n)]%29` -/
def P6707689115882365008.Spec : Prop :=
  ∀ n, P6707689115882365008.a n = A242127 (n + 1)

end A242127

/-! ## A242127.P18416423254723093719

`A000040(n+1)%29`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242127

/-- `A000040(n+1)%29` -/
def P18416423254723093719.Spec : Prop :=
  ∀ n, P18416423254723093719.a n = A242127 (n + 1)

theorem P18416423254723093719.correct : P18416423254723093719.Spec := by
  intro n
  simp only [A242127, Nat.add_sub_cancel]

end A242127

/-! ## A242127.P1891812508459939969

`abs(Δ[A022837(n)])%29`
-/

namespace A242127.P1891812508459939969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 29

end

end A242127.P1891812508459939969

namespace A242127

/-- `abs(Δ[A022837(n)])%29` -/
def P1891812508459939969.Spec : Prop :=
  ∀ n, P1891812508459939969.a n = A242127 (n + 1)

end A242127

/-! ## A242127.P15666814761021588611

`A008578(n+2)%29`
-/

namespace A242127.P15666814761021588611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 29

end

end A242127.P15666814761021588611

namespace A242127

/-- `A008578(n+2)%29` -/
def P15666814761021588611.Spec : Prop :=
  ∀ n, P15666814761021588611.a n = A242127 (n + 1)

end A242127

/-! ## A242127.P11881262038708602864

`record[A025476(n+1)]%29`
-/

namespace A242127.P11881262038708602864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 29

end

end A242127.P11881262038708602864

namespace A242127

/-- `record[A025476(n+1)]%29` -/
def P11881262038708602864.Spec : Prop :=
  ∀ n, P11881262038708602864.a n = A242127 (n + 1)

end A242127

/-! ## A242127.P12901650289423884889

`(A014688(n+1)-(n+1))%A050656(A049084(2*(n+1))+1)`
-/

namespace A242127.P12901650289423884889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1) - (n + 1 : ℤ)) (A050656 (A049084 (2 * (n + 1)) + 1).toNat)

end

end A242127.P12901650289423884889

namespace A242127

/-- `(A014688(n+1)-(n+1))%A050656(A049084(2*(n+1))+1)` -/
def P12901650289423884889.Spec : Prop :=
  ∀ n, P12901650289423884889.a n = A242127 (n + 1)

end A242127

/-! ## A242127.P7186093503538341061

`record[A117366(n+1)]%29`
-/

namespace A242127.P7186093503538341061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 29

end

end A242127.P7186093503538341061

namespace A242127

/-- `record[A117366(n+1)]%29` -/
def P7186093503538341061.Spec : Prop :=
  ∀ n, P7186093503538341061.a n = A242127 (n + 1)

end A242127

/-! ## A242127.P9034863546114442359

`record[A036262(n)]%29`
-/

namespace A242127.P9034863546114442359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 29

end

end A242127.P9034863546114442359

namespace A242127

/-- `record[A036262(n)]%29` -/
def P9034863546114442359.Spec : Prop :=
  ∀ n, P9034863546114442359.a n = A242127 (n + 1)

end A242127

/-!
# A242128: Beginning with adding a central 'Star' configuration of a centrally symmetric Penrose rhomb tiling as the first step, number of tiles that can be added to the free edges of the current tiling.

The programs for A242128, there is no canonical definition to state claims against.
-/

/-! ## A242128.P17701500835698899486

`5*A053735(A149946(n))`
-/

namespace A242128.P17701500835698899486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A053735 (A149946 n).toNat

end

end A242128.P17701500835698899486

/-!
# A242134: Number of semiprimes with n digits.

The programs for A242134, there is no canonical definition to state claims against.
-/

/-! ## A242134.P14522591891606857219

`A066265(n+1)-A066265(n)`
-/

namespace A242134.P14522591891606857219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (n + 1) - A066265 n

end

end A242134.P14522591891606857219

/-! ## A242134.P8803540483285996647

`Δ[A066265(n)]`
-/

namespace A242134.P8803540483285996647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242134.P8803540483285996647

/-! ## A242134.P5166091575193463835

`Δ[A036352(C(n, a(n-1))/2+n)]` with `a(0)=0, a(1)=3`
-/

namespace A242134.P5166091575193463835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  A036352 (SequenceMachineLib.roundAway ((Nat.choose n (f1 (n - 1)).toNat : ℚ) / 2 + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242134.P5166091575193463835

/-! ## A242134.P8011609689283064714

`record[A066265(A137735(n))]-A066265(n)`
-/

namespace A242134.P8011609689283064714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A066265 n

end

end A242134.P8011609689283064714

/-! ## A242134.P6099355169441568164

`Δ[A194895(n)+A006880(n)]`
-/

namespace A242134.P6099355169441568164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194895 n + A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242134.P6099355169441568164

/-!
# A242135: a(n) = n^3 - 2*n.

The programs for A242135, the canonical program `A242135.P980314958597288477` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242135 has offset 0).

The definition of A242135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-2*n` (program `A242135.P980314958597288477`, by `A242135.P980314958597288477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242135.P980314958597288477

`n^3-2*n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242135

/-- `n^3-2*n` -/
def P980314958597288477.Spec : Prop :=
  ∀ n, P980314958597288477.a n = A242135 n

theorem P980314958597288477.correct : P980314958597288477.Spec := by
  intro n
  simp only [A242135]

end A242135

/-! ## A242135.P16963908435528372082

`ogf((-x+8x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A242135.P16963908435528372082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 8, -1] [1, -4, 6, -4, 1] n

end

end A242135.P16963908435528372082

namespace A242135

/-- `ogf((-x+8x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P16963908435528372082.Spec : Prop :=
  ∀ n, P16963908435528372082.a n = A242135 n

end A242135

/-! ## A242135.P5102614935295721944

`Δ[(1-C(n, 2))²]`
-/

namespace A242135.P5102614935295721944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose n 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P5102614935295721944

namespace A242135

/-- `Δ[(1-C(n, 2))²]` -/
def P5102614935295721944.Spec : Prop :=
  ∀ n, P5102614935295721944.a n = A242135 n

theorem P5102614935295721944.correct : P5102614935295721944.Spec := by
  intro n
  simp only [A242135, Nat.add_sub_cancel, A242135.P5102614935295721944.f1, A242135.P5102614935295721944.a, A242135.P980314958597288477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242135

/-! ## A242135.P1815890071169205510

`or(2, n²-4)*n`
-/

namespace A242135.P1815890071169205510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n ^ 2 : ℤ) - 4) * (n : ℤ)

end

end A242135.P1815890071169205510

namespace A242135

/-- `or(2, n²-4)*n` -/
def P1815890071169205510.Spec : Prop :=
  ∀ n, P1815890071169205510.a n = A242135 n

end A242135

/-! ## A242135.P7043457451604292438

`Δ[or(2, ∑[1-n]²)]`
-/

namespace A242135.P7043457451604292438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P7043457451604292438

namespace A242135

/-- `Δ[or(2, ∑[1-n]²)]` -/
def P7043457451604292438.Spec : Prop :=
  ∀ n, P7043457451604292438.a n = A242135 n

end A242135

/-! ## A242135.P16112560137431325894

`Δ[xor(2, ∑[1-n]²)]`
-/

namespace A242135.P16112560137431325894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P16112560137431325894

namespace A242135

/-- `Δ[xor(2, ∑[1-n]²)]` -/
def P16112560137431325894.Spec : Prop :=
  ∀ n, P16112560137431325894.a n = A242135 n

end A242135

/-! ## A242135.P11455547537156924404

`round(n/acot(n²-2))`
-/

namespace A242135.P11455547537156924404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((n ^ 2 : ℤ) - 2 : ℝ))

end

end A242135.P11455547537156924404

namespace A242135

/-- `round(n/acot(n²-2))` -/
def P11455547537156924404.Spec : Prop :=
  ∀ n, P11455547537156924404.a n = A242135 n

end A242135

/-! ## A242135.P16304265227187967762

`n/tan(acot(n²-2))`
-/

namespace A242135.P16304265227187967762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((n ^ 2 : ℤ) - 2 : ℝ))

end

end A242135.P16304265227187967762

namespace A242135

/-- `n/tan(acot(n²-2))` -/
def P16304265227187967762.Spec : Prop :=
  ∀ n, P16304265227187967762.a n = (A242135 n : ℝ)

end A242135

/-! ## A242135.P7416732405921748872

`Δ[∑[a(n-1)-1]²]` with `a(0)=1`
-/

namespace A242135.P7416732405921748872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P7416732405921748872

namespace A242135

/-- `Δ[∑[a(n-1)-1]²]` -/
def P7416732405921748872.Spec : Prop :=
  ∀ n, P7416732405921748872.a n = A242135 n

end A242135

/-! ## A242135.P7456329588449435642

`Δ[∑[1-n%(n+1)]²]`
-/

namespace A242135.P7456329588449435642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % (n + 1) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P7456329588449435642

namespace A242135

/-- `Δ[∑[1-n%(n+1)]²]` -/
def P7456329588449435642.Spec : Prop :=
  ∀ n, P7456329588449435642.a n = A242135 n

end A242135

/-! ## A242135.P10305662061655957903

`Δ[∑[gcd(n, n+1)-n]²]`
-/

namespace A242135.P10305662061655957903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P10305662061655957903

namespace A242135

/-- `Δ[∑[gcd(n, n+1)-n]²]` -/
def P10305662061655957903.Spec : Prop :=
  ∀ n, P10305662061655957903.a n = A242135 n

end A242135

/-! ## A242135.P2712063571671702121

`Δ[(∑[n-1]-1)*C(n, 2)]`
-/

namespace A242135.P2712063571671702121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P2712063571671702121

namespace A242135

/-- `Δ[(∑[n-1]-1)*C(n, 2)]` -/
def P2712063571671702121.Spec : Prop :=
  ∀ n, P2712063571671702121.a n = A242135 n

end A242135

/-! ## A242135.P5029506570933843483

`Δ[∑[and(2, n²)+n-1]²]`
-/

namespace A242135.P5029506570933843483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n ^ 2) : ℤ) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P5029506570933843483

namespace A242135

/-- `Δ[∑[and(2, n²)+n-1]²]` -/
def P5029506570933843483.Spec : Prop :=
  ∀ n, P5029506570933843483.a n = A242135 n

end A242135

/-! ## A242135.P5966404607205784925

`Δ[∑[n-1-and(2, n²)]²]`
-/

namespace A242135.P5966404607205784925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (Nat.land 2 (n ^ 2) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P5966404607205784925

namespace A242135

/-- `Δ[∑[n-1-and(2, n²)]²]` -/
def P5966404607205784925.Spec : Prop :=
  ∀ n, P5966404607205784925.a n = A242135 n

end A242135

/-! ## A242135.P14609669240341270728

`Δ[∑[n-gcd(n-1, n²)]²]`
-/

namespace A242135.P14609669240341270728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.gcd ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P14609669240341270728

namespace A242135

/-- `Δ[∑[n-gcd(n-1, n²)]²]` -/
def P14609669240341270728.Spec : Prop :=
  ∀ n, P14609669240341270728.a n = A242135 n

end A242135

/-! ## A242135.P10922050014822624406

`Δ[A080956(n)²]`
-/

namespace A242135.P10922050014822624406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242135.P10922050014822624406

namespace A242135

/-- `Δ[A080956(n)²]` -/
def P10922050014822624406.Spec : Prop :=
  ∀ n, P10922050014822624406.a n = A242135 n

theorem P10922050014822624406.correct : P10922050014822624406.Spec := by
  intro n
  simp only [A242135, Nat.add_sub_cancel, A242135.P10922050014822624406.f1, A242135.P10922050014822624406.a, A242135.P980314958597288477.a, A080956, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242135

/-! ## A242135.P16418040093905000036

`n*(A000290(n)-2)`
-/

namespace A242135.P16418040093905000036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000290 n - 2)

end

end A242135.P16418040093905000036

namespace A242135

/-- `n*(A000290(n)-2)` -/
def P16418040093905000036.Spec : Prop :=
  ∀ n, P16418040093905000036.a n = A242135 n

theorem P16418040093905000036.correct : P16418040093905000036.Spec := by
  intro n
  simp only [A242135, Nat.add_sub_cancel, A242135.P16418040093905000036.a, A242135.P980314958597288477.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242135

/-! ## A242135.P17411410828812541801

`n*(A028875(n)+3)`
-/

namespace A242135.P17411410828812541801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028875 n + 3)

end

end A242135.P17411410828812541801

namespace A242135

/-- `n*(A028875(n)+3)` -/
def P17411410828812541801.Spec : Prop :=
  ∀ n, P17411410828812541801.a n = A242135 n

theorem P17411410828812541801.correct : P17411410828812541801.Spec := by
  intro n
  simp only [A242135, Nat.add_sub_cancel, A242135.P17411410828812541801.a, A242135.P980314958597288477.a, A028875, A028875.P8156869436290036666.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242135

/-! ## A242135.P6185918911574060593

`n*(A253909(n)-2)`
-/

namespace A242135.P6185918911574060593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A253909 n - 2)

end

end A242135.P6185918911574060593

namespace A242135

/-- `n*(A253909(n)-2)` -/
def P6185918911574060593.Spec : Prop :=
  ∀ n, P6185918911574060593.a n = A242135 n

end A242135

/-! ## A242135.P11167562462571234310

`n*(A002522(n)-3)`
-/

namespace A242135.P11167562462571234310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002522 n - 3)

end

end A242135.P11167562462571234310

namespace A242135

/-- `n*(A002522(n)-3)` -/
def P11167562462571234310.Spec : Prop :=
  ∀ n, P11167562462571234310.a n = A242135 n

theorem P11167562462571234310.correct : P11167562462571234310.Spec := by
  intro n
  simp only [A242135, Nat.add_sub_cancel, A242135.P11167562462571234310.a, A242135.P980314958597288477.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242135

/-!
# A242136: Number of strong triangulations of a fixed square with n interior vertices.

The programs for A242136, the canonical program `A242136.P1263783666612363736` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242136 has offset 0).

The definition of A242136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242136.P1263783666612363736

`2*A000260(n+1)-A197271(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242136

/-- `2*A000260(n+1)-A197271(n+1)` -/
def P1263783666612363736.Spec : Prop :=
  ∀ n, P1263783666612363736.a n = A242136 n

theorem P1263783666612363736.correct : P1263783666612363736.Spec := by
  intro n
  simp only [A242136]

end A242136

/-! ## A242136.P2238689262455629212

`A341856(∑[n+2]-1)`
-/

namespace A242136.P2238689262455629212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A242136.P2238689262455629212

namespace A242136

/-- `A341856(∑[n+2]-1)` -/
def P2238689262455629212.Spec : Prop :=
  ∀ n, P2238689262455629212.a n = A242136 n

end A242136

/-! ## A242136.P1261778054249595347

`record[A023531(n+1)*A341856(n)]`
-/

namespace A242136.P1261778054249595347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) * A341856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242136.P1261778054249595347

namespace A242136

/-- `record[A023531(n+1)*A341856(n)]` -/
def P1261778054249595347.Spec : Prop :=
  ∀ n, P1261778054249595347.a n = A242136 n

end A242136

/-! ## A242136.P8073880570223007155

`record[A010054(n+2)*A341856(n)]`
-/

namespace A242136.P8073880570223007155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A341856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242136.P8073880570223007155

namespace A242136

/-- `record[A010054(n+2)*A341856(n)]` -/
def P8073880570223007155.Spec : Prop :=
  ∀ n, P8073880570223007155.a n = A242136 n

end A242136

/-! ## A242136.P1061813009792089386

`A057427(n)*A341856(A034856(n+1))`
-/

namespace A242136.P1061813009792089386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A341856 (A034856 (n + 1)).toNat

end

end A242136.P1061813009792089386

namespace A242136

/-- `A057427(n)*A341856(A034856(n+1))` -/
def P1061813009792089386.Spec : Prop :=
  ∀ n, P1061813009792089386.a n = A242136 n

end A242136

/-! ## A242136.P392123112159561590

`A341856(A034856(n+1))%A026005(n)`
-/

namespace A242136.P392123112159561590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341856 (A034856 (n + 1)).toNat) (A026005 n)

end

end A242136.P392123112159561590

namespace A242136

/-- `A341856(A034856(n+1))%A026005(n)` -/
def P392123112159561590.Spec : Prop :=
  ∀ n, P392123112159561590.a n = A242136 n

end A242136

/-! ## A242136.P3421535329349153033

`A341856(A034856(n+1))+A156659(∑[n])`
-/

namespace A242136.P3421535329349153033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A034856 (n + 1)).toNat + A156659 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242136.P3421535329349153033

namespace A242136

/-- `A341856(A034856(n+1))+A156659(∑[n])` -/
def P3421535329349153033.Spec : Prop :=
  ∀ n, P3421535329349153033.a n = A242136 n

end A242136

/-! ## A242136.P15737019912579213042

`A341856(A034856(n+1))+A000007(n+1)`
-/

namespace A242136.P15737019912579213042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A242136.P15737019912579213042

namespace A242136

/-- `A341856(A034856(n+1))+A000007(n+1)` -/
def P15737019912579213042.Spec : Prop :=
  ∀ n, P15737019912579213042.a n = A242136 n

end A242136

/-! ## A242136.P3107376606108066845

`A341856(A034856(n+1))+A056594(A005408(n))`
-/

namespace A242136.P3107376606108066845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (A034856 (n + 1)).toNat + A056594 (A005408 n).toNat

end

end A242136.P3107376606108066845

namespace A242136

/-- `A341856(A034856(n+1))+A056594(A005408(n))` -/
def P3107376606108066845.Spec : Prop :=
  ∀ n, P3107376606108066845.a n = A242136 n

end A242136

/-! ## A242136.P12494282445359873367

`A000001(A014963(n+2))*A341856(A034856(n+1))`
-/

namespace A242136.P12494282445359873367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A014963 (n + 2)).toNat * A341856 (A034856 (n + 1)).toNat

end

end A242136.P12494282445359873367

namespace A242136

/-- `A000001(A014963(n+2))*A341856(A034856(n+1))` -/
def P12494282445359873367.Spec : Prop :=
  ∀ n, P12494282445359873367.a n = A242136 n

end A242136

/-!
# A242137: Numbers n such that there are no triangular numbers strictly between n^2 and n^2 + n.

The programs for A242137, the canonical program `A242137.P8379527440574402766` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242137 has offset 1).

The definition of A242137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242137.P8379527440574402766

`lt[A076816(n), A054071(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A242137

/-- `lt[A076816(n), A054071(n+1)]` -/
def P8379527440574402766.Spec : Prop :=
  ∀ n, (P8379527440574402766.a n : ℤ) = A242137 (n + 1)

theorem P8379527440574402766.correct : P8379527440574402766.Spec := by
  intro n
  simp only [A242137, Nat.add_sub_cancel]

end A242137

/-! ## A242137.P15304983369343257339

`lt[2*A076816(n)², A028982(n+1)]`
-/

namespace A242137.P15304983369343257339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076816 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P15304983369343257339

namespace A242137

/-- `lt[2*A076816(n)², A028982(n+1)]` -/
def P15304983369343257339.Spec : Prop :=
  ∀ n, (P15304983369343257339.a n : ℤ) = A242137 (n + 1)

end A242137

/-! ## A242137.P15821136294670648716

`lt[A000384(A076816(n)), A028982(n+1)]`
-/

namespace A242137.P15821136294670648716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A076816 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P15821136294670648716

namespace A242137

/-- `lt[A000384(A076816(n)), A028982(n+1)]` -/
def P15821136294670648716.Spec : Prop :=
  ∀ n, (P15821136294670648716.a n : ℤ) = A242137 (n + 1)

end A242137

/-! ## A242137.P2583408653562672651

`record[gcd(n, A064506(A214857(n)))]`
-/

namespace A242137.P2583408653562672651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A064506 (A214857 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242137.P2583408653562672651

namespace A242137

/-- `record[gcd(n, A064506(A214857(n)))]` -/
def P2583408653562672651.Spec : Prop :=
  ∀ n, (P2583408653562672651.a n : ℤ) = A242137 (n + 1)

end A242137

/-! ## A242137.P14534085226917284138

`lt[A175032(A001951(n)), A054071(n+1)]`
-/

namespace A242137.P14534085226917284138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 (A001951 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P14534085226917284138

namespace A242137

/-- `lt[A175032(A001951(n)), A054071(n+1)]` -/
def P14534085226917284138.Spec : Prop :=
  ∀ n, (P14534085226917284138.a n : ℤ) = A242137 (n + 1)

end A242137

/-! ## A242137.P10194150171469943331

`lt[A175032(A001951(n)), A097508(n)+2]`
-/

namespace A242137.P10194150171469943331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 (A001951 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P10194150171469943331

namespace A242137

/-- `lt[A175032(A001951(n)), A097508(n)+2]` -/
def P10194150171469943331.Spec : Prop :=
  ∀ n, (P10194150171469943331.a n : ℤ) = A242137 (n + 1)

end A242137

/-! ## A242137.P16300731281207611831

`lt[A175032(A001954(n)), A054071(n+2)]`
-/

namespace A242137.P16300731281207611831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 (A001954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242137.P16300731281207611831

namespace A242137

/-- `lt[A175032(A001954(n)), A054071(n+2)]` -/
def P16300731281207611831.Spec : Prop :=
  ∀ n, (P16300731281207611831.a n : ℤ) = A242137 (n + 1)

end A242137

/-!
# A242138: Binary representation of periodic binary numbers, ordered by their decimal values.

The programs for A242138, there is no canonical definition to state claims against.
-/

/-! ## A242138.P15563364472530506180

`A007088(A242139(n+1))`
-/

namespace A242138.P15563364472530506180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A242139 (n + 1)).toNat

end

end A242138.P15563364472530506180

/-! ## A242138.P13341338825891359979

`A185544(2*A242139(n+1))`
-/

namespace A242138.P13341338825891359979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A242139 (n + 1)).toNat

end

end A242138.P13341338825891359979

/-! ## A242138.P11892645824921490658

`A185544(A242139(n+1)+A242139(n+1))`
-/

namespace A242138.P11892645824921490658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A242139 (n + 1) + A242139 (n + 1)).toNat

end

end A242138.P11892645824921490658

/-! ## A242138.P9390008206492609428

`A007088(∩[A327593(n+1), A351205(n+1)])`
-/

namespace A242138.P9390008206492609428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351205 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A242138.P9390008206492609428

/-! ## A242138.P15541884023869538643

`A185544(2*∩[A327593(n+1), A351205(n+1)])`
-/

namespace A242138.P15541884023869538643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351205 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A242138.P15541884023869538643

/-!
# A242139: Decimal equivalents of A242138.

The programs for A242139, there is no canonical definition to state claims against.
-/

/-! ## A242139.P5884065952116810604

`lt[A302295(n), A302295(A073138(n))]`
-/

namespace A242139.P5884065952116810604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A073138 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242139.P5884065952116810604

/-! ## A242139.P366296472757280539

`lt[A302295(n), A302295(A331857(n))]`
-/

namespace A242139.P366296472757280539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A331857 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242139.P366296472757280539

/-! ## A242139.P1636000173830334082

`filter[A327593(n+1), A043545(#)]`
-/

namespace A242139.P1636000173830334082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A242139.P1636000173830334082

/-! ## A242139.P6387634927399547055

`filter[A327593(n+1), A252744(#)]`
-/

namespace A242139.P6387634927399547055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A242139.P6387634927399547055

/-! ## A242139.P17008479776308366587

`filter[A327593(n+1), A267442(#)]`
-/

namespace A242139.P17008479776308366587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A242139.P17008479776308366587

/-! ## A242139.P960557682459350154

`∩[A062289(n+1), A327593(n+1)]`
-/

namespace A242139.P960557682459350154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242139.P960557682459350154

/-! ## A242139.P15838709806124313160

`∩[A101082(n+1), A327593(n+1)]`
-/

namespace A242139.P15838709806124313160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242139.P15838709806124313160

/-! ## A242139.P17673878524555152724

`∩[A247160(n+1), A327593(n+1)]`
-/

namespace A242139.P17673878524555152724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242139.P17673878524555152724

/-! ## A242139.P11536485139740930201

`∩[A257739(n+1), A327593(n+1)]`
-/

namespace A242139.P11536485139740930201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242139.P11536485139740930201

/-!
# A242140: Number of length n+5 0..4 arrays with no consecutive six elements summing to more than 3*4.

The programs for A242140, there is no canonical definition to state claims against.
-/

/-! ## A242140.P10632858901453098721

`A242144(A141214(n+1))`
-/

namespace A242140.P10632858901453098721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A141214 (n + 1)).toNat

end

end A242140.P10632858901453098721

/-! ## A242140.P95096306087053007

`A242144(A027379(n+2))`
-/

namespace A242140.P95096306087053007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A027379 (n + 2)).toNat

end

end A242140.P95096306087053007

/-! ## A242140.P9907126202327402641

`A242144(A055998(n+2))`
-/

namespace A242140.P9907126202327402641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A055998 (n + 2)).toNat

end

end A242140.P9907126202327402641

/-! ## A242140.P17558428793500125547

`A242144(A056000(n)+7)`
-/

namespace A242140.P17558428793500125547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A056000 n + 7).toNat

end

end A242140.P17558428793500125547

/-! ## A242140.P5814050720210332975

`A242144(A052905(n+1)+2)`
-/

namespace A242140.P5814050720210332975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A052905 (n + 1) + 2).toNat

end

end A242140.P5814050720210332975

/-!
# A242141: Number of length n+5 0..5 arrays with no consecutive six elements summing to more than 3*5.

The programs for A242141, there is no canonical definition to state claims against.
-/

/-! ## A242141.P2823629364282841216

`A242144(Δ[A264443(n)])`
-/

namespace A242141.P2823629364282841216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (f1 (n + 1) - f1 n).toNat

end

end A242141.P2823629364282841216

/-! ## A242141.P17356600261279872660

`A242144(A046691(n+3))`
-/

namespace A242141.P17356600261279872660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A046691 (n + 3)).toNat

end

end A242141.P17356600261279872660

/-! ## A242141.P15350998108130143188

`A242144(eq[4, A193592(n)])`
-/

namespace A242141.P15350998108130143188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242141.P15350998108130143188

/-! ## A242141.P8723052662801014020

`A242144(Δ[A023545(n+1)])`
-/

namespace A242141.P8723052662801014020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (f1 (n + 1) - f1 n).toNat

end

end A242141.P8723052662801014020

/-! ## A242141.P17910903740922455123

`A242144(A052905(n+2)+1)`
-/

namespace A242141.P17910903740922455123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A052905 (n + 2) + 1).toNat

end

end A242141.P17910903740922455123

/-!
# A242142: Number of length n+5 0..6 arrays with no consecutive six elements summing to more than 3*6.

The programs for A242142, there is no canonical definition to state claims against.
-/

/-! ## A242142.P14108485742975634672

`A242144(A052905(n+3))`
-/

namespace A242142.P14108485742975634672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A052905 (n + 3)).toNat

end

end A242142.P14108485742975634672

/-! ## A242142.P1693880101914995217

`A242144(A056119(n)+16)`
-/

namespace A242142.P1693880101914995217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A056119 n + 16).toNat

end

end A242142.P1693880101914995217

/-! ## A242142.P14064097329180802391

`A242144(eq[3, A219347(n)])`
-/

namespace A242142.P14064097329180802391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242142.P14064097329180802391

/-! ## A242142.P16627844034229264462

`A242144(eq[8, A185782(n+1)])`
-/

namespace A242142.P16627844034229264462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242142.P16627844034229264462

/-! ## A242142.P7476526890430072553

`A242144(Δ[Δ[A006504(n+1)]])`
-/

namespace A242142.P7476526890430072553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (f1 (n + 1) - f1 n).toNat

end

end A242142.P7476526890430072553

/-!
# A242143: Number of length n+5 0..7 arrays with no consecutive six elements summing to more than 3*7.

The programs for A242143, there is no canonical definition to state claims against.
-/

/-! ## A242143.P15203833200294168101

`A242144(A055999(n+4))`
-/

namespace A242143.P15203833200294168101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A055999 (n + 4)).toNat

end

end A242143.P15203833200294168101

/-! ## A242143.P14940584760084587684

`A242144(eq[4, A219347(n)])`
-/

namespace A242143.P14940584760084587684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242143.P14940584760084587684

/-! ## A242143.P6328195698325677381

`A242144(eq[6, A193592(n)])`
-/

namespace A242143.P6328195698325677381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242143.P6328195698325677381

/-! ## A242143.P7074733988036320249

`A242144(eq[10, A185782(n+1)])`
-/

namespace A242143.P7074733988036320249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242143.P7074733988036320249

/-! ## A242143.P11343435770933056572

`A242144(A000217(n+6)+n+1)`
-/

namespace A242143.P11343435770933056572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A242143.P11343435770933056572

/-!
# A242145: Number of length 1+5 0..n arrays with no consecutive six elements summing to more than 3*n.

The programs for A242145, the canonical program `A242145.P5281488734098487497` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242145 has offset 1).

The definition of A242145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242145.P5281488734098487497

`ogf((42+141x+175x^2-13x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242145

/-- `ogf((42+141x+175x^2-13x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5281488734098487497.Spec : Prop :=
  ∀ n, P5281488734098487497.a n = A242145 (n + 1)

theorem P5281488734098487497.correct : P5281488734098487497.Spec := by
  intro n
  simp only [A242145, Nat.add_sub_cancel]

end A242145

/-! ## A242145.P6483495695454973660

`A242144(∑[n]+1)`
-/

namespace A242145.P6483495695454973660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242145.P6483495695454973660

namespace A242145

/-- `A242144(∑[n]+1)` -/
def P6483495695454973660.Spec : Prop :=
  ∀ n, P6483495695454973660.a n = A242145 (n + 1)

end A242145

/-! ## A242145.P2054147549786818058

`or(char[1], A242144(A000124(n)))`
-/

namespace A242145.P2054147549786818058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A242144 (A000124 n).toNat)

end

end A242145.P2054147549786818058

namespace A242145

/-- `or(char[1], A242144(A000124(n)))` -/
def P2054147549786818058.Spec : Prop :=
  ∀ n, P2054147549786818058.a n = A242145 (n + 1)

end A242145

/-! ## A242145.P10215853882971995127

`record[A010054(n)*A242144(n+1)]`
-/

namespace A242145.P10215853882971995127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A242144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242145.P10215853882971995127

namespace A242145

/-- `record[A010054(n)*A242144(n+1)]` -/
def P10215853882971995127.Spec : Prop :=
  ∀ n, P10215853882971995127.a n = A242145 (n + 1)

end A242145

/-! ## A242145.P7284701803163545819

`record[A242144(n+1)/A013613(n)]`
-/

namespace A242145.P7284701803163545819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242144 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242145.P7284701803163545819

namespace A242145

/-- `record[A242144(n+1)/A013613(n)]` -/
def P7284701803163545819.Spec : Prop :=
  ∀ n, P7284701803163545819.a n = (A242145 (n + 1) : ℚ)

end A242145

/-!
# A242146: Number of length 2+5 0..n arrays with no consecutive six elements summing to more than 3*n.

The programs for A242146, there is no canonical definition to state claims against.
-/

/-! ## A242146.P11892040556839538692

`A242144(∑[n+1]+2)`
-/

namespace A242146.P11892040556839538692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A242146.P11892040556839538692

/-! ## A242146.P12702452816447774727

`record[A242144(n+3)/A051339(n)]`
-/

namespace A242146.P12702452816447774727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242144 (n + 3) : ℚ) / (A051339 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242146.P12702452816447774727

/-! ## A242146.P13782567535369338851

`record[root(A242144(n+3), A013610(n+1))]`
-/

namespace A242146.P13782567535369338851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A242144 (n + 3) : ℝ) ^ (1 / (A013610 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242146.P13782567535369338851

/-! ## A242146.P18021821418184489918

`record[gcd(A242144(n+3), A263288(n+1))]`
-/

namespace A242146.P18021821418184489918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242144 (n + 3)) (A263288 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242146.P18021821418184489918

/-!
# A242147: Number of length 3+5 0..n arrays with no consecutive six elements summing to more than 3*n.

The programs for A242147, there is no canonical definition to state claims against.
-/

/-! ## A242147.P13434941301065066432

`A242144(∑[n+2]+4)`
-/

namespace A242147.P13434941301065066432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A242147.P13434941301065066432

/-! ## A242147.P7030429746477048947

`A242144(A167614(n+1))+A185284(n)`
-/

namespace A242147.P7030429746477048947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A167614 (n + 1)).toNat + A185284 n

end

end A242147.P7030429746477048947

/-! ## A242147.P2308372562601268900

`lcm(A040001(n), A242144(A167614(n+1)))`
-/

namespace A242147.P2308372562601268900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A242144 (A167614 (n + 1)).toNat)

end

end A242147.P2308372562601268900

/-! ## A242147.P1627031709986126220

`A242144(A167614(n+1))+A034471(n+1)`
-/

namespace A242147.P1627031709986126220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A167614 (n + 1)).toNat + A034471 (n + 1)

end

end A242147.P1627031709986126220

/-! ## A242147.P2889142199052685077

`A242144(A167614(n+1))%A238029(n+1)`
-/

namespace A242147.P2889142199052685077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242144 (A167614 (n + 1)).toNat) (A238029 (n + 1))

end

end A242147.P2889142199052685077

/-!
# A242148: Number of length 4+5 0..n arrays with no consecutive six elements summing to more than 3*n.

The programs for A242148, there is no canonical definition to state claims against.
-/

/-! ## A242148.P11741378650832510681

`A242144(A141214(n)+7)`
-/

namespace A242148.P11741378650832510681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A141214 n + 7).toNat

end

end A242148.P11741378650832510681

/-! ## A242148.P8609943672284679262

`A242144(A052905(n)+9)`
-/

namespace A242148.P8609943672284679262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A052905 n + 9).toNat

end

end A242148.P8609943672284679262

/-! ## A242148.P18117396844829711966

`A242144(A055999(n)+10)`
-/

namespace A242148.P18117396844829711966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A055999 n + 10).toNat

end

end A242148.P18117396844829711966

/-! ## A242148.P6274326310850940300

`A242144(A167614(n+2)+1)`
-/

namespace A242148.P6274326310850940300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A167614 (n + 2) + 1).toNat

end

end A242148.P6274326310850940300

/-! ## A242148.P13141727239744633901

`A242144(A166136(n+2)-2)`
-/

namespace A242148.P13141727239744633901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A166136 (n + 2) - 2).toNat

end

end A242148.P13141727239744633901

/-!
# A242149: Number of length 5+5 0..n arrays with no consecutive six elements summing to more than 3*n.

The programs for A242149, there is no canonical definition to state claims against.
-/

/-! ## A242149.P7073715127704434339

`A242144(A167499(n+3))`
-/

namespace A242149.P7073715127704434339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A167499 (n + 3)).toNat

end

end A242149.P7073715127704434339

/-! ## A242149.P5387292227938226478

`A242144(A000096(n+3)+6)`
-/

namespace A242149.P5387292227938226478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A000096 (n + 3) + 6).toNat

end

end A242149.P5387292227938226478

/-! ## A242149.P3465708673762987096

`A242144(A034856(n+3)+7)`
-/

namespace A242149.P3465708673762987096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A034856 (n + 3) + 7).toNat

end

end A242149.P3465708673762987096

/-! ## A242149.P1040475520190817918

`A242144(eq[3, A025581(n)]+9)`
-/

namespace A242149.P1040475520190817918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A242149.P1040475520190817918

/-! ## A242149.P17557825992932277992

`A242144(A038722(Δ[A264443(n)]))`
-/

namespace A242149.P17557825992932277992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A242149.P17557825992932277992

/-!
# A242150: Number of length 6+5 0..n arrays with no consecutive six elements summing to more than 3*n.

The programs for A242150, there is no canonical definition to state claims against.
-/

/-! ## A242150.P2494626197817995152

`A242144(A167499(n+4)+1)`
-/

namespace A242150.P2494626197817995152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A167499 (n + 4) + 1).toNat

end

end A242150.P2494626197817995152

/-! ## A242150.P11051733228585053148

`A242144(A000217(n+5)+6)`
-/

namespace A242150.P11051733228585053148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A000217 (n + 5) + 6).toNat

end

end A242150.P11051733228585053148

/-! ## A242150.P8983968683330040570

`A242144(A141214(n+2)+9)`
-/

namespace A242150.P8983968683330040570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A141214 (n + 2) + 9).toNat

end

end A242150.P8983968683330040570

/-! ## A242150.P3724741189428312961

`A242144(A034856(n+4)+8)`
-/

namespace A242150.P3724741189428312961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A034856 (n + 4) + 8).toNat

end

end A242150.P3724741189428312961

/-! ## A242150.P6858870577561003628

`A242144(A002620(n+2)+A002620(n+9))`
-/

namespace A242150.P6858870577561003628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A242150.P6858870577561003628

/-!
# A242151: Number of length 7+5 0..n arrays with no consecutive six elements summing to more than 3*n.

The programs for A242151, there is no canonical definition to state claims against.
-/

/-! ## A242151.P1162677709529507988

`A242144(eq[11, A066657(n)])`
-/

namespace A242151.P1162677709529507988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242151.P1162677709529507988

/-! ## A242151.P5275944963364584587

`A242144(A166136(n+5)+1)`
-/

namespace A242151.P5275944963364584587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A166136 (n + 5) + 1).toNat

end

end A242151.P5275944963364584587

/-! ## A242151.P771948251786055524

`A242144(A000096(n+5)+8)`
-/

namespace A242151.P771948251786055524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A000096 (n + 5) + 8).toNat

end

end A242151.P771948251786055524

/-! ## A242151.P11769802028505747070

`A242144(A000217(n+6)+7)`
-/

namespace A242151.P11769802028505747070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (A000217 (n + 6) + 7).toNat

end

end A242151.P11769802028505747070

/-! ## A242151.P2689901653162024930

`A242144(eq[8, A131818(n+1)])`
-/

namespace A242151.P2689901653162024930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242151.P2689901653162024930

/-!
# A242153: Number T(n,k) of ascent sequences of length n with exactly k flat steps; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A242153, there is no canonical definition to state claims against.
-/

/-! ## A242153.P15973497242256990689

`A071919(n)*A138265(A025581(n))`
-/

namespace A242153.P15973497242256990689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A138265 (A025581 n).toNat

end

end A242153.P15973497242256990689

/-! ## A242153.P11473433162174047378

`A068063(A327366(n))`
-/

namespace A242153.P11473433162174047378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A327366 n).toNat

end

end A242153.P11473433162174047378

/-! ## A242153.P14889736819197823122

`A106486(A327069(n))`
-/

namespace A242153.P14889736819197823122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A327069 n).toNat

end

end A242153.P14889736819197823122

/-! ## A242153.P13110422412216311489

`A106486(A327334(n))`
-/

namespace A242153.P13110422412216311489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A327334 n).toNat

end

end A242153.P13110422412216311489

/-! ## A242153.P6574232462970507774

`Δ[A056811(∑[A223556(n+1)])]`
-/

namespace A242153.P6574232462970507774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242153.P6574232462970507774

/-!
# A242154: Number of ascent sequences of length n with exactly one flat step.

The programs for A242154, there is no canonical definition to state claims against.
-/

/-! ## A242154.P628895576916662341

`A242153(∑[n+2]+2)`
-/

namespace A242154.P628895576916662341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A242154.P628895576916662341

/-! ## A242154.P17461956387707557175

`(n+1)*A138265(n+1)`
-/

namespace A242154.P17461956387707557175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138265 (n + 1)

end

end A242154.P17461956387707557175

/-! ## A242154.P14029286167070908285

`record[A242153(n-col(n)+1)]`
-/

namespace A242154.P14029286167070908285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 ((n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242154.P14029286167070908285

/-! ## A242154.P11779952345096224650

`record[A242153(A000124(n))]`
-/

namespace A242154.P11779952345096224650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242154.P11779952345096224650

/-! ## A242154.P1904523854397602613

`record[A242153(n%A008292(n+1))]`
-/

namespace A242154.P1904523854397602613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (Int.tmod (n : ℤ) (A008292 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242154.P1904523854397602613

/-! ## A242154.P13511315647089664479

`(n+1)*A193344(∑[n+1])`
-/

namespace A242154.P13511315647089664479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242154.P13511315647089664479

/-!
# A242155: Number of ascent sequences of length n with exactly two flat steps.

The programs for A242155, there is no canonical definition to state claims against.
-/

/-! ## A242155.P11251002131318496533

`A242153(∑[n+3]+5)`
-/

namespace A242155.P11251002131318496533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A242155.P11251002131318496533

/-! ## A242155.P10878660904071717967

`∑[n+1]*A138265(n+1)`
-/

namespace A242155.P10878660904071717967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A138265 (n + 1)

end

end A242155.P10878660904071717967

/-! ## A242155.P4502250703455691390

`(n+2)/2*A242154(n+2)`
-/

namespace A242155.P4502250703455691390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A242154 (n + 2) : ℚ)

end

end A242155.P4502250703455691390

/-! ## A242155.P1364249040954395124

`record[A242153(A008795(n)+2)]`
-/

namespace A242155.P1364249040954395124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242155.P1364249040954395124

/-! ## A242155.P16368979346470179082

`record[A242153(A000124(n+1)+1)]`
-/

namespace A242155.P16368979346470179082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000124 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242155.P16368979346470179082

/-! ## A242155.P1693263677921572124

`record[A242153(n%A137251(n+1))]`
-/

namespace A242155.P1693263677921572124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (Int.tmod (n : ℤ) (A137251 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242155.P1693263677921572124

/-! ## A242155.P13513286873604985036

`record[A242153(n+8)/A137251(n+6)]`
-/

namespace A242155.P13513286873604985036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242153 (n + 8) : ℚ) / (A137251 (n + 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242155.P13513286873604985036

/-! ## A242155.P15050727332983670913

`A000217(n+1)*A242153(A000217(n+1))`
-/

namespace A242155.P15050727332983670913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A242153 (A000217 (n + 1)).toNat

end

end A242155.P15050727332983670913

/-!
# A242156: Number of ascent sequences of length n with exactly three flat steps.

The programs for A242156, there is no canonical definition to state claims against.
-/

/-! ## A242156.P16939802216872160436

`(n+3)/3*A242155(n+3)`
-/

namespace A242156.P16939802216872160436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A242155 (n + 3) : ℚ)

end

end A242156.P16939802216872160436

/-! ## A242156.P4386343207435016572

`∑[∑[n+1]]*A138265(n+1)`
-/

namespace A242156.P4386343207435016572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A138265 (n + 1)

end

end A242156.P4386343207435016572

/-! ## A242156.P11095087656780433310

`A242153(A167614(3+n))`
-/

namespace A242156.P11095087656780433310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A167614 (3 + n)).toNat

end

end A242156.P11095087656780433310

/-! ## A242156.P12001623068163996636

`A242153(eq[4, A128227(n)])`
-/

namespace A242156.P12001623068163996636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242156.P12001623068163996636

/-! ## A242156.P10035920662297218890

`A242153(A000217(n+4)+3)`
-/

namespace A242156.P10035920662297218890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000217 (n + 4) + 3).toNat

end

end A242156.P10035920662297218890

/-! ## A242156.P11762339700784173001

`A242153(A055998(n+2)+6)`
-/

namespace A242156.P11762339700784173001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A055998 (n + 2) + 6).toNat

end

end A242156.P11762339700784173001

/-! ## A242156.P224865291721145907

`A242153(eq[2, A048151(n+1)-2])`
-/

namespace A242156.P224865291721145907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242156.P224865291721145907

/-! ## A242156.P8541475433204470448

`A242153(eq[2, A048151(n+1)/2])`
-/

namespace A242156.P8541475433204470448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048151 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A242156.P8541475433204470448

/-! ## A242156.P4569801793422587818

`A242153(A033638(n+3)+A033638(n+6))`
-/

namespace A242156.P4569801793422587818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A033638 (n + 3) + A033638 (n + 6)).toNat

end

end A242156.P4569801793422587818

/-!
# A242157: Number of ascent sequences of length n with exactly four flat steps.

The programs for A242157, there is no canonical definition to state claims against.
-/

/-! ## A242157.P8868014067165847286

`A242153(A166136(n+4)-2)`
-/

namespace A242157.P8868014067165847286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A166136 (n + 4) - 2).toNat

end

end A242157.P8868014067165847286

/-! ## A242157.P2159142844427870659

`A242153(A000124(n+5)+3)`
-/

namespace A242157.P2159142844427870659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000124 (n + 5) + 3).toNat

end

end A242157.P2159142844427870659

/-! ## A242157.P13064763201499831955

`A242153(A046691(n+3)+8)`
-/

namespace A242157.P13064763201499831955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A046691 (n + 3) + 8).toNat

end

end A242157.P13064763201499831955

/-! ## A242157.P6555218582447994051

`A242153(A000096(n+5)-(n+1))`
-/

namespace A242157.P6555218582447994051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000096 (n + 5) - (n + 1 : ℤ)).toNat

end

end A242157.P6555218582447994051

/-! ## A242157.P6939906408020577183

`A242153(A000217(n+6)-(n+2))`
-/

namespace A242157.P6939906408020577183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000217 (n + 6) - (n + 2 : ℤ)).toNat

end

end A242157.P6939906408020577183

/-!
# A242158: Number of ascent sequences of length n with exactly five flat steps.

The programs for A242158, there is no canonical definition to state claims against.
-/

/-! ## A242158.P7162005377542678550

`A242153(A167499(n+5))`
-/

namespace A242158.P7162005377542678550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A167499 (n + 5)).toNat

end

end A242158.P7162005377542678550

/-! ## A242158.P10660399679626591565

`A242153(A167487(n+5)-2)`
-/

namespace A242158.P10660399679626591565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A167487 (n + 5) - 2).toNat

end

end A242158.P10660399679626591565

/-! ## A242158.P17897474575292486281

`A242153(A000096(n+5)+6)`
-/

namespace A242158.P17897474575292486281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000096 (n + 5) + 6).toNat

end

end A242158.P17897474575292486281

/-! ## A242158.P17732421195262797070

`A242153(A000217(n+6)+5)`
-/

namespace A242158.P17732421195262797070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000217 (n + 6) + 5).toNat

end

end A242158.P17732421195262797070

/-! ## A242158.P16285668658739581444

`A242153(A046691(n+5)-(n-2))`
-/

namespace A242158.P16285668658739581444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A046691 (n + 5) - ((n : ℤ) - 2)).toNat

end

end A242158.P16285668658739581444

/-! ## A242158.P3359466684047149175

`A242153(A033638(n+4)+A033638(n+9))`
-/

namespace A242158.P3359466684047149175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A033638 (n + 4) + A033638 (n + 9)).toNat

end

end A242158.P3359466684047149175

/-!
# A242159: Number of ascent sequences of length n with exactly six flat steps.

The programs for A242159, there is no canonical definition to state claims against.
-/

/-! ## A242159.P7907538378551249558

`A242153(A167614(n+6)+3)`
-/

namespace A242159.P7907538378551249558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A167614 (n + 6) + 3).toNat

end

end A242159.P7907538378551249558

/-! ## A242159.P1835281668045875552

`A242153(A000124(n+7)+5)`
-/

namespace A242159.P1835281668045875552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000124 (n + 7) + 5).toNat

end

end A242159.P1835281668045875552

/-! ## A242159.P10630823370412710308

`A242153(A000217(n+7)+6)`
-/

namespace A242159.P10630823370412710308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A000217 (n + 7) + 6).toNat

end

end A242159.P10630823370412710308

/-! ## A242159.P1294428687325976268

`A242153(A055999(n+4)+12)`
-/

namespace A242159.P1294428687325976268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A055999 (n + 4) + 12).toNat

end

end A242159.P1294428687325976268

/-! ## A242159.P4067720829440740144

`A242153(eq[7, A048151(n+1)])`
-/

namespace A242159.P4067720829440740144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242159.P4067720829440740144

/-! ## A242159.P18090742301047663258

`A242153(eq[8, A002260(n+1)]-1)`
-/

namespace A242159.P18090742301047663258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A242159.P18090742301047663258

/-!
# A242160: Number of ascent sequences of length n with exactly seven flat steps.

The programs for A242160, there is no canonical definition to state claims against.
-/

/-! ## A242160.P237787978200733538

`A000580(n+7)*A138265(n+1)`
-/

namespace A242160.P237787978200733538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A138265 (n + 1)

end

end A242160.P237787978200733538

/-! ## A242160.P7366875391005595324

`∑[A000579(n+6)]*A138265(n+1)`
-/

namespace A242160.P7366875391005595324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A138265 (n + 1)

end

end A242160.P7366875391005595324

/-! ## A242160.P2160543470297768660

`A242153(A167487(n+7))`
-/

namespace A242160.P2160543470297768660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (A167487 (n + 7)).toNat

end

end A242160.P2160543470297768660

/-! ## A242160.P12187178409745613260

`A242153(eq[8, A128227(n)])`
-/

namespace A242160.P12187178409745613260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242160.P12187178409745613260

/-! ## A242160.P4424682147405029260

`A242153(eq[8, A048151(n+1)])`
-/

namespace A242160.P4424682147405029260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242160.P4424682147405029260

/-!
# A242161: Number of ascent sequences of length n with exactly eight flat steps.

The programs for A242161, there is no canonical definition to state claims against.
-/

/-! ## A242161.P13987325172500912868

`A000581(n+8)*A138265(n+1)`
-/

namespace A242161.P13987325172500912868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A138265 (n + 1)

end

end A242161.P13987325172500912868

/-! ## A242161.P8175000961778133285

`∑[A000580(n+7)]*A138265(n+1)`
-/

namespace A242161.P8175000961778133285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A138265 (n + 1)

end

end A242161.P8175000961778133285

/-! ## A242161.P1872673142992735640

`A000581(n+8)*A242153(∑[n+1])`
-/

namespace A242161.P1872673142992735640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A242153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242161.P1872673142992735640

/-! ## A242161.P10336136578531557990

`∑[∑[A000579(n+6)]]*A138265(n+1)`
-/

namespace A242161.P10336136578531557990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A138265 (n + 1)

end

end A242161.P10336136578531557990

/-! ## A242161.P5002247476591962355

`A242155(n+3)/A107417(n)*A107420(n)`
-/

namespace A242161.P5002247476591962355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242155 (n + 3) : ℚ) / (A107417 n : ℚ) * (A107420 n : ℚ)

end

end A242161.P5002247476591962355

/-! ## A242161.P14562127553521312177

`A242153(eq[9, A128227(n)])`
-/

namespace A242161.P14562127553521312177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242161.P14562127553521312177

/-!
# A242162: Number of ascent sequences of length n with exactly nine flat steps.

The programs for A242162, there is no canonical definition to state claims against.
-/

/-! ## A242162.P14284362988203599171

`C(n+9, 9)*A138265(n+1)`
-/

namespace A242162.P14284362988203599171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A138265 (n + 1)

end

end A242162.P14284362988203599171

/-! ## A242162.P522441922721781855

`A000582(n+9)*A138265(n+1)`
-/

namespace A242162.P522441922721781855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A138265 (n + 1)

end

end A242162.P522441922721781855

/-! ## A242162.P6659635364296277701

`∑[A000581(n+8)]*A138265(n+1)`
-/

namespace A242162.P6659635364296277701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A138265 (n + 1)

end

end A242162.P6659635364296277701

/-! ## A242162.P9964734743487948343

`A242153(eq[10, A128227(n)])`
-/

namespace A242162.P9964734743487948343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242162.P9964734743487948343

/-! ## A242162.P7663806087848074800

`A242153(eq[10, A048151(n+1)])`
-/

namespace A242162.P7663806087848074800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242162.P7663806087848074800

/-!
# A242163: Number of ascent sequences of length n with exactly ten flat steps.

The programs for A242163, there is no canonical definition to state claims against.
-/

/-! ## A242163.P7093596861108181014

`A001287(n)*A138265(n+1)`
-/

namespace A242163.P7093596861108181014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A138265 (n + 1)

end

end A242163.P7093596861108181014

/-! ## A242163.P6189930835995933298

`A242153(eq[11, A128227(n)])`
-/

namespace A242163.P6189930835995933298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242163.P6189930835995933298

/-! ## A242163.P16306071963450268725

`A242153(eq[11, A002262(n+1)])`
-/

namespace A242163.P16306071963450268725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242163.P16306071963450268725

/-! ## A242163.P11291833643031693118

`A242153(eq[11, A048151(n+1)])`
-/

namespace A242163.P11291833643031693118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242163.P11291833643031693118

/-!
# A242164: Number of ascent sequences of length 2n with exactly n flat steps.

The programs for A242164, there is no canonical definition to state claims against.
-/

/-! ## A242164.P9919748004339005562

`A242153(C(2*n+1, 2)+n)`
-/

namespace A242164.P9919748004339005562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (Nat.choose (2 * n + 1) 2 + n)

end

end A242164.P9919748004339005562

/-! ## A242164.P3646413522744349126

`A088218(n)*A138265(n)`
-/

namespace A242164.P3646413522744349126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A138265 n

end

end A242164.P3646413522744349126

/-! ## A242164.P399175338380408827

`A001405(A004273(n))*A138265(n)`
-/

namespace A242164.P399175338380408827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A004273 n).toNat * A138265 n

end

end A242164.P399175338380408827

/-! ## A242164.P5357905978759350588

`A060543(A000124(n))*A138265(n)`
-/

namespace A242164.P5357905978759350588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060543 (A000124 n).toNat * A138265 n

end

end A242164.P5357905978759350588

/-! ## A242164.P5605912961113362018

`A071919(A046092(n))*A138265(n)`
-/

namespace A242164.P5605912961113362018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A046092 n).toNat * A138265 n

end

end A242164.P5605912961113362018

/-!
# A242165: Smallest k>=0, such that n+/ -k are both Fermi-Dirac primes (A050376).

The programs for A242165, there is no canonical definition to state claims against.
-/

/-! ## A242165.P6726221393108890218

`∑[A130773(n+4)]%A130790(A130761(n+1))`
-/

namespace A242165.P6726221393108890218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A130790 (A130761 (n + 1)).toNat)

end

end A242165.P6726221393108890218

/-! ## A242165.P5615957921819884194

`A064547(A064547(n+2)^A124550(n))`
-/

namespace A242165.P5615957921819884194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (SequenceMachineLib.roundAway ((A064547 (n + 2) : ℚ) ^ (A124550 n : ℤ))).toNat

end

end A242165.P5615957921819884194

/-! ## A242165.P11864513256646490246

`A064547(A064547(n+2)^A372326(n))`
-/

namespace A242165.P11864513256646490246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (SequenceMachineLib.roundAway ((A064547 (n + 2) : ℚ) ^ (A372326 n : ℤ))).toNat

end

end A242165.P11864513256646490246

/-! ## A242165.P666056157107921521

`A001221(gcd(A026794(n+1), A110723(n)))`
-/

namespace A242165.P666056157107921521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A026794 (n + 1)) (A110723 n))

end

end A242165.P666056157107921521

/-! ## A242165.P8392576478176354919

`A366900(A090881(n+2))`
-/

namespace A242165.P8392576478176354919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366900 (A090881 (n + 2)).toNat

end

end A242165.P8392576478176354919

/-!
# A242166: Table T(d,n) of smallest k>1 such that binomial(k*n-1,n-1) == 1 (mod n^d), read by antidiagonals.

The programs for A242166, there is no canonical definition to state claims against.
-/

/-! ## A242166.P14373505608332182309

`A100714(gcd(A100745(n), A100749(n)))`
-/

namespace A242166.P14373505608332182309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100714 (Int.gcd (A100745 n) (A100749 n))

end

end A242166.P14373505608332182309

/-!
# A242169: Least prime divisor of Fr(n) which does not divide any Fr(k) with k < n, or 1 if such a primitive prime divisor of Fr(n) does not exist, where Fr(n) denotes the n-th Franel number given by A000172.

The programs for A242169, there is no canonical definition to state claims against.
-/

/-! ## A242169.P15803633084975632281

`record[A161150(A000172(n))]`
-/

namespace A242169.P15803633084975632281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161150 (A000172 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242169.P15803633084975632281

/-!
# A242170: Least prime divisor of T(n) which does not divide any T(k) with k < n, or 1 if such a primitive prime divisor of T(n) does not exist, where T(n) is the n-th central trinomial coefficient given by A002426.

The programs for A242170, there is no canonical definition to state claims against.
-/

/-! ## A242170.P11652159324733384755

`A088444(A002426(n+1)*A147703(n))`
-/

namespace A242170.P11652159324733384755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088444 (A002426 (n + 1) * A147703 n).toNat

end

end A242170.P11652159324733384755

/-! ## A242170.P12737420979406188025

`A162961(A011769(n))`
-/

namespace A242170.P12737420979406188025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162961 (A011769 n).toNat

end

end A242170.P12737420979406188025

/-! ## A242170.P15800764755872518515

`A286516(record[A115990(n)])`
-/

namespace A242170.P15800764755872518515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286516 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242170.P15800764755872518515

/-!
# A242171: Least prime divisor of B(n) which does not divide any B(k) with k < n, or 1 if such a primitive prime divisor of B(n) does not exist, where B(n) is the n-th Bell number given by A000110.

The programs for A242171, there is no canonical definition to state claims against.
-/

/-! ## A242171.P16736519437509676986

`A279623((n+1)^A007318(n))`
-/

namespace A242171.P16736519437509676986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A242171.P16736519437509676986

/-! ## A242171.P15857228304271307950

`A279623((n+1)^A132731(n))`
-/

namespace A242171.P15857228304271307950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A132731 n : ℤ))).toNat

end

end A242171.P15857228304271307950

/-! ## A242171.P10444721780984165692

`A279623((n+1)^A335975(n))`
-/

namespace A242171.P10444721780984165692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A335975 n : ℤ))).toNat

end

end A242171.P10444721780984165692

/-!
# A242172: a(n) = 2^n*binomial((n + 1 + (n mod 2))/2, 1/2).

The programs for A242172, the canonical program `A242172.P14720321246685490122` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242172 has offset 0).

The definition of A242172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242172.P14720321246685490122

`A100071(n+2)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242172

/-- `A100071(n+2)/2` -/
def P14720321246685490122.Spec : Prop :=
  ∀ n, P14720321246685490122.a n = (A242172 n : ℚ)

end A242172

/-! ## A242172.P6655734164914075375

`(n+2)*C(n+1, ceil(n/2))/2`
-/

namespace A242172.P6655734164914075375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose (n + 1) ⌈(n : ℚ) / 2⌉.toNat : ℚ) / 2

end

end A242172.P6655734164914075375

namespace A242172

/-- `(n+2)*C(n+1, ceil(n/2))/2` -/
def P6655734164914075375.Spec : Prop :=
  ∀ n, P6655734164914075375.a n = (A242172 n : ℚ)

end A242172

/-! ## A242172.P13938898184027706161

`(ratio[or(1, n)+1]+1)*a(n-1)` with `a(0)=1`
-/

namespace A242172.P13938898184027706161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 1) * a (n - 1)

end

end A242172.P13938898184027706161

namespace A242172

/-- `(ratio[or(1, n)+1]+1)*a(n-1)` -/
def P13938898184027706161.Spec : Prop :=
  ∀ n, P13938898184027706161.a n = (A242172 n : ℚ)

end A242172

/-! ## A242172.P13910121099875155156

`∏[4-n*a(n-1)/(n+1)]` with `a(0)=1, a(1)=3`
-/

namespace A242172.P13910121099875155156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 - (n : ℚ) * f1 (n - 1) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A242172.P13910121099875155156

namespace A242172

/-- `∏[4-n*a(n-1)/(n+1)]` -/
def P13910121099875155156.Spec : Prop :=
  ∀ n, P13910121099875155156.a n = (A242172 n : ℚ)

end A242172

/-! ## A242172.P7560031508732720496

`(n+2)*a(n-1)/(floor(n/2)+1)` with `a(0)=1`
-/

namespace A242172.P7560031508732720496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℚ) * (a (n - 1) / (⌊(n : ℚ) / 2⌋ + 1 : ℚ))

end

end A242172.P7560031508732720496

namespace A242172

/-- `(n+2)*a(n-1)/(floor(n/2)+1)` -/
def P7560031508732720496.Spec : Prop :=
  ∀ n, P7560031508732720496.a n = (A242172 n : ℚ)

end A242172

/-! ## A242172.P290343097449240825

`A323988(n+1)-2^n`
-/

namespace A242172.P290343097449240825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 (n + 1) - (2 ^ n : ℤ)

end

end A242172.P290343097449240825

namespace A242172

/-- `A323988(n+1)-2^n` -/
def P290343097449240825.Spec : Prop :=
  ∀ n, P290343097449240825.a n = A242172 n

end A242172

/-! ## A242172.P16855826531838749134

`A189911(n)+A100071(n)`
-/

namespace A242172.P16855826531838749134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 n + A100071 n

end

end A242172.P16855826531838749134

namespace A242172

/-- `A189911(n)+A100071(n)` -/
def P16855826531838749134.Spec : Prop :=
  ∀ n, P16855826531838749134.a n = A242172 n

end A242172

/-! ## A242172.P8430804545520412767

`A099325(n)-A294175(n)`
-/

namespace A242172.P8430804545520412767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A294175 n

end

end A242172.P8430804545520412767

namespace A242172

/-- `A099325(n)-A294175(n)` -/
def P8430804545520412767.Spec : Prop :=
  ∀ n, P8430804545520412767.a n = A242172 n

end A242172

/-! ## A242172.P16226886078096763081

`A093387(n+1)+A027305(n)`
-/

namespace A242172.P16226886078096763081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093387 (n + 1) + A027305 n

end

end A242172.P16226886078096763081

namespace A242172

/-- `A093387(n+1)+A027305(n)` -/
def P16226886078096763081.Spec : Prop :=
  ∀ n, P16226886078096763081.a n = A242172 n

end A242172

/-! ## A242172.P13078180192194133169

`A138364(n)+A100071(n+1)`
-/

namespace A242172.P13078180192194133169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + A100071 (n + 1)

end

end A242172.P13078180192194133169

namespace A242172

/-- `A138364(n)+A100071(n+1)` -/
def P13078180192194133169.Spec : Prop :=
  ∀ n, P13078180192194133169.a n = A242172 n

end A242172

/-! ## A242172.P4184423905833692123

`A107373(n+2)+A000079(n)`
-/

namespace A242172.P4184423905833692123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 2) + A000079 n

end

end A242172.P4184423905833692123

namespace A242172

/-- `A107373(n+2)+A000079(n)` -/
def P4184423905833692123.Spec : Prop :=
  ∀ n, P4184423905833692123.a n = A242172 n

end A242172

/-! ## A242172.P5641276886030264616

`A247374(n+1)-A153893(n)`
-/

namespace A242172.P5641276886030264616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247374 (n + 1) - A153893 n

end

end A242172.P5641276886030264616

namespace A242172

/-- `A247374(n+1)-A153893(n)` -/
def P5641276886030264616.Spec : Prop :=
  ∀ n, P5641276886030264616.a n = A242172 n

end A242172

/-! ## A242172.P15435953297006868153

`A001405(n)*A109613(n+1)`
-/

namespace A242172.P15435953297006868153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A109613 (n + 1)

end

end A242172.P15435953297006868153

namespace A242172

/-- `A001405(n)*A109613(n+1)` -/
def P15435953297006868153.Spec : Prop :=
  ∀ n, P15435953297006868153.a n = A242172 n

end A242172

/-! ## A242172.P16543364814571769093

`A047074(n+1)*A109613(n)`
-/

namespace A242172.P16543364814571769093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047074 (n + 1) * A109613 n

end

end A242172.P16543364814571769093

namespace A242172

/-- `A047074(n+1)*A109613(n)` -/
def P16543364814571769093.Spec : Prop :=
  ∀ n, P16543364814571769093.a n = A242172 n

end A242172

/-! ## A242172.P17754960750361189404

`A128015(n)*A145051(n+1)`
-/

namespace A242172.P17754960750361189404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 n * A145051 (n + 1)

end

end A242172.P17754960750361189404

namespace A242172

/-- `A128015(n)*A145051(n+1)` -/
def P17754960750361189404.Spec : Prop :=
  ∀ n, P17754960750361189404.a n = A242172 n

end A242172

/-! ## A242172.P5325719429499746051

`A001405(n)+2*A100071(n)`
-/

namespace A242172.P5325719429499746051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + 2 * A100071 n

end

end A242172.P5325719429499746051

namespace A242172

/-- `A001405(n)+2*A100071(n)` -/
def P5325719429499746051.Spec : Prop :=
  ∀ n, P5325719429499746051.a n = A242172 n

end A242172

/-! ## A242172.P16785214772932218052

`A048896(n)*A086116(n+2)`
-/

namespace A242172.P16785214772932218052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A086116 (n + 2)

end

end A242172.P16785214772932218052

namespace A242172

/-- `A048896(n)*A086116(n+2)` -/
def P16785214772932218052.Spec : Prop :=
  ∀ n, P16785214772932218052.a n = A242172 n

end A242172

/-! ## A242172.P3505711542621497094

`2*A189911(n)-A001405(n)`
-/

namespace A242172.P3505711542621497094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189911 n - A001405 n

end

end A242172.P3505711542621497094

namespace A242172

/-- `2*A189911(n)-A001405(n)` -/
def P3505711542621497094.Spec : Prop :=
  ∀ n, P3505711542621497094.a n = A242172 n

end A242172

/-! ## A242172.P15711315448024177913

`A001405(n)+n*A063886(n)`
-/

namespace A242172.P15711315448024177913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (n : ℤ) * A063886 n

end

end A242172.P15711315448024177913

namespace A242172

/-- `A001405(n)+n*A063886(n)` -/
def P15711315448024177913.Spec : Prop :=
  ∀ n, P15711315448024177913.a n = A242172 n

end A242172

/-! ## A242172.P9908019384684898835

`A191527(n+1)+A001405(n+1)`
-/

namespace A242172.P9908019384684898835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 (n + 1) + A001405 (n + 1)

end

end A242172.P9908019384684898835

namespace A242172

/-- `A191527(n+1)+A001405(n+1)` -/
def P9908019384684898835.Spec : Prop :=
  ∀ n, P9908019384684898835.a n = A242172 n

end A242172

/-!
# A242174: Least prime divisor of A005260(n) which does not divide any previous term A005260(k) with k < n, or 1 if such a primitive prime divisor of A005260(n) does not exist.

The programs for A242174, there is no canonical definition to state claims against.
-/

/-! ## A242174.P420665286324687432

`p?[A185596(A292879(n+1))]`
-/

namespace A242174.P420665286324687432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185596 (A292879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242174.P420665286324687432

/-! ## A242174.P15199254873912808531

`A000040(A335817(n+1)-A210736(n)+1)`
-/

namespace A242174.P15199254873912808531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A335817 (n + 1) - A210736 n + 1).toNat

end

end A242174.P15199254873912808531

/-!
# A242175: Numbers k such that k*2^k + 1 is a semiprime.

The programs for A242175, there is no canonical definition to state claims against.
-/

/-! ## A242175.P16907279277474111910

`eq[2, A367008(n)]`
-/

namespace A242175.P16907279277474111910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242175.P16907279277474111910

/-! ## A242175.P4748099050319991661

`eq[3, A070321(A367009(n))]`
-/

namespace A242175.P4748099050319991661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A367009 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242175.P4748099050319991661

/-! ## A242175.P11804870894495246872

`eq[floor(ceil(sqrt(n))-sqrt(n/2)), Δ[floor(sqrt(3*n))]]`
-/

namespace A242175.P11804870894495246872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.sqrt (n : ℝ)⌉ : ℝ) - Real.sqrt ((n : ℚ) / 2 : ℝ)⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242175.P11804870894495246872

/-! ## A242175.P11621234318480847323

`record[A046800(∑[C(n, 2)+1])+2]`
-/

namespace A242175.P11621234318480847323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (∑ j ∈ Finset.range (n + 1), f2 j) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242175.P11621234318480847323

/-! ## A242175.P11645459272383241258

`record[A046800(A000125(n))+2]`
-/

namespace A242175.P11645459272383241258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A000125 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242175.P11645459272383241258

/-!
# A242176: Numbers k such that k*6^k + 1 is prime.

The programs for A242176, there is no canonical definition to state claims against.
-/

/-! ## A242176.P2908718552640848677

`A171644(A327293(n+1))-A298035(n)`
-/

namespace A242176.P2908718552640848677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171644 (A327293 (n + 1 + 55)).toNat - A298035 n

end

end A242176.P2908718552640848677

/-!
# A242179: T(0,0) = 1, T(n+1,2*k) = - T(n,k), T(n+1,2*k+1) = T(n,k), k=0..n, triangle read by rows.

The programs for A242179, the canonical program `A242179.P5047862051123336820` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242179 has offset 0).

The definition of A242179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242179.P5047862051123336820

`-a(lcm(2, 1-n)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242179

/-- `-a(lcm(2, 1-n)/2)` -/
def P5047862051123336820.Spec : Prop :=
  ∀ n, P5047862051123336820.a n = A242179 n

theorem P5047862051123336820.correct : P5047862051123336820.Spec := by
  intro n
  simp only [A242179]

end A242179

/-! ## A242179.P2688085002302346893

`-a((n-1)/gcd(2, n+1))` with `a(0)=1`
-/

namespace A242179.P2688085002302346893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A242179.P2688085002302346893

namespace A242179

/-- `-a((n-1)/gcd(2, n+1))` -/
def P2688085002302346893.Spec : Prop :=
  ∀ n, P2688085002302346893.a n = A242179 n

end A242179

/-! ## A242179.P14011885700261912366

`a(ceil(n/2)-1)/(-1)^n` with `a(0)=1`
-/

namespace A242179.P14011885700261912366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat / ((-1) ^ n : ℚ)

end

end A242179.P14011885700261912366

namespace A242179

/-- `a(ceil(n/2)-1)/(-1)^n` -/
def P14011885700261912366.Spec : Prop :=
  ∀ n, P14011885700261912366.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P1601974431471994544

`(-1)^record[3*a(floor(n/2))+n-2*floor(n/2)+1]` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A242179.P1601974431471994544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A242179.P1601974431471994544

namespace A242179

/-- `(-1)^record[3*a(floor(n/2))+n-2*floor(n/2)+1]` -/
def P1601974431471994544.Spec : Prop :=
  ∀ n, P1601974431471994544.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P18118151802670850070

`(-1)^Δ[A059015(n)]`
-/

namespace A242179.P18118151802670850070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A242179.P18118151802670850070

namespace A242179

/-- `(-1)^Δ[A059015(n)]` -/
def P18118151802670850070.Spec : Prop :=
  ∀ n, P18118151802670850070.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P1948370481434378165

`(-1)^A014701(n+1)`
-/

namespace A242179.P1948370481434378165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014701 (n + 1) : ℤ)

end

end A242179.P1948370481434378165

namespace A242179

/-- `(-1)^A014701(n+1)` -/
def P1948370481434378165.Spec : Prop :=
  ∀ n, P1948370481434378165.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P6465737030498679990

`(-1)^A023416(n+1)`
-/

namespace A242179.P6465737030498679990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A023416 (n + 1) : ℤ)

end

end A242179.P6465737030498679990

namespace A242179

/-- `(-1)^A023416(n+1)` -/
def P6465737030498679990.Spec : Prop :=
  ∀ n, P6465737030498679990.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P13131433972240371231

`(-1)^A056791(n+1)`
-/

namespace A242179.P13131433972240371231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A056791 (n + 1) : ℤ)

end

end A242179.P13131433972240371231

namespace A242179

/-- `(-1)^A056791(n+1)` -/
def P13131433972240371231.Spec : Prop :=
  ∀ n, P13131433972240371231.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P8381657246420860982

`(-1)^A080791(n+1)`
-/

namespace A242179.P8381657246420860982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A080791 (n + 1) : ℤ)

end

end A242179.P8381657246420860982

namespace A242179

/-- `(-1)^A080791(n+1)` -/
def P8381657246420860982.Spec : Prop :=
  ∀ n, P8381657246420860982.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P17378351534678178958

`or(1, -A059448(n+1))`
-/

namespace A242179.P17378351534678178958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A059448 (n + 1))

end

end A242179.P17378351534678178958

namespace A242179

/-- `or(1, -A059448(n+1))` -/
def P17378351534678178958.Spec : Prop :=
  ∀ n, P17378351534678178958.a n = A242179 n

end A242179

/-! ## A242179.P14373574156461691729

`round(cos(A122497(n+1)²))`
-/

namespace A242179.P14373574156461691729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (A122497 (n + 1) ^ 2 : ℝ))

end

end A242179.P14373574156461691729

namespace A242179

/-- `round(cos(A122497(n+1)²))` -/
def P14373574156461691729.Spec : Prop :=
  ∀ n, P14373574156461691729.a n = A242179 n

end A242179

/-! ## A242179.P9692946846628079731

`2*A298952(n+1)-1`
-/

namespace A242179.P9692946846628079731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298952 (n + 1) - 1

end

end A242179.P9692946846628079731

namespace A242179

/-- `2*A298952(n+1)-1` -/
def P9692946846628079731.Spec : Prop :=
  ∀ n, P9692946846628079731.a n = A242179 n

end A242179

/-! ## A242179.P10534724528217937987

`1-and(2, A147991(n+1))`
-/

namespace A242179.P10534724528217937987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A147991 (n + 1))

end

end A242179.P10534724528217937987

namespace A242179

/-- `1-and(2, A147991(n+1))` -/
def P10534724528217937987.Spec : Prop :=
  ∀ n, P10534724528217937987.a n = A242179 n

end A242179

/-! ## A242179.P1733985277758116357

`∏{digits}[A169965(n+2), #-1]`
-/

namespace A242179.P1733985277758116357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - 1).prod

end

end A242179.P1733985277758116357

namespace A242179

/-- `∏{digits}[A169965(n+2), #-1]` -/
def P1733985277758116357.Spec : Prop :=
  ∀ n, P1733985277758116357.a n = A242179 n

end A242179

/-! ## A242179.P2420306060644285195

`(-1)^(A056792(n+1)+1)`
-/

namespace A242179.P2420306060644285195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A056792 (n + 1) + 1 : ℤ)

end

end A242179.P2420306060644285195

namespace A242179

/-- `(-1)^(A056792(n+1)+1)` -/
def P2420306060644285195.Spec : Prop :=
  ∀ n, P2420306060644285195.a n = (A242179 n : ℚ)

end A242179

/-! ## A242179.P8620675971980252456

`and(2, A335393(n+1)²+1)-1`
-/

namespace A242179.P8620675971980252456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A335393 (n + 1) ^ 2 + 1) - 1

end

end A242179.P8620675971980252456

namespace A242179

/-- `and(2, A335393(n+1)²+1)-1` -/
def P8620675971980252456.Spec : Prop :=
  ∀ n, P8620675971980252456.a n = A242179 n

end A242179

/-! ## A242179.P10579354921264542576

`∏[A008683(n%2*a(floor(n/2))+2)]` with `a(0)=1`
-/

namespace A242179.P10579354921264542576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008683 (((n % 2 : ℕ) : ℤ) * f1 ⌊(n : ℚ) / 2⌋.toNat + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A242179.P10579354921264542576

namespace A242179

/-- `∏[A008683(n%2*a(floor(n/2))+2)]` -/
def P10579354921264542576.Spec : Prop :=
  ∀ n, P10579354921264542576.a n = A242179 n

end A242179

/-! ## A242179.P13065918951905139667

`A004718(A080100(n+1))`
-/

namespace A242179.P13065918951905139667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A080100 (n + 1)).toNat

end

end A242179.P13065918951905139667

namespace A242179

/-- `A004718(A080100(n+1))` -/
def P13065918951905139667.Spec : Prop :=
  ∀ n, P13065918951905139667.a n = A242179 n

end A242179

/-! ## A242179.P1994511047510492613

`A062157(A056792(n+1))`
-/

namespace A242179.P1994511047510492613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A056792 (n + 1)).toNat

end

end A242179.P1994511047510492613

namespace A242179

/-- `A062157(A056792(n+1))` -/
def P1994511047510492613.Spec : Prop :=
  ∀ n, P1994511047510492613.a n = A242179 n

end A242179

/-! ## A242179.P8067500081120002094

`A106400(A035327(n+1))`
-/

namespace A242179.P8067500081120002094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A035327 (n + 1)).toNat

end

end A242179.P8067500081120002094

namespace A242179

/-- `A106400(A035327(n+1))` -/
def P8067500081120002094.Spec : Prop :=
  ∀ n, P8067500081120002094.a n = A242179 n

end A242179

/-!
# A242181: Numbers with four X's in Roman numerals.

The programs for A242181, the canonical program `A242181.P14085121432131192503` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242181 has offset 1).

The definition of A242181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242181.P14085121432131192503

`50*(n+1)-11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242181

/-- `50*(n+1)-11` -/
def P14085121432131192503.Spec : Prop :=
  ∀ n, P14085121432131192503.a n = A242181 (n + 1)

theorem P14085121432131192503.correct : P14085121432131192503.Spec := by
  intro n
  simp only [A242181, Nat.add_sub_cancel]

end A242181

/-!
# A242182: Numbers with four C's in Roman numerals.

The programs for A242182, the canonical program `A242182.P208573695553909947` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242182 has offset 1).

The definition of A242182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242182.P208573695553909947

`ogf((390+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+101x^10)/(1-x-x^10+x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A242182

/-- `ogf((390+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+101x^10)/(1-x-x^10+x^11))` -/
def P208573695553909947.Spec : Prop :=
  ∀ n, P208573695553909947.a n = A242182 (n + 1)

theorem P208573695553909947.correct : P208573695553909947.Spec := by
  intro n
  simp only [A242182, Nat.add_sub_cancel]

end A242182

/-!
# A242183: Integers c, listed with multiplicity, such that there is a solution to the equation a^2 + b^3 = c^4, with integers a, b > 0.

The programs for A242183, there is no canonical definition to state claims against.
-/

/-! ## A242183.P11952682030843049120

`A300564(A178787(n)%A269499(n+1))`
-/

namespace A242183.P11952682030843049120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300564 (Int.tmod (A178787 n) (A269499 (n + 1))).toNat

end

end A242183.P11952682030843049120

/-! ## A242183.P16009549054102196566

`A300564(A178787(n))%A080200(3*n+1)`
-/

namespace A242183.P16009549054102196566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300564 (A178787 n).toNat) (A080200 (3 * n + 1))

end

end A242183.P16009549054102196566

/-! ## A242183.P18035544097172199577

`A300564(A178787(or(n, A184955(n))))`
-/

namespace A242183.P18035544097172199577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300564 (A178787 (Int.lor (n : ℤ) (A184955 n)).toNat).toNat

end

end A242183.P18035544097172199577

/-! ## A242183.P4360929060269182339

`A300564(A178787(n))%A300565(n+1)`
-/

namespace A242183.P4360929060269182339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300564 (A178787 n).toNat) (A300565 (n + 1))

end

end A242183.P4360929060269182339

/-! ## A242183.P1547333935745802988

`A300564((A184955(n)+1)*A178787(n))`
-/

namespace A242183.P1547333935745802988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300564 ((A184955 n + 1) * A178787 n).toNat

end

end A242183.P1547333935745802988

/-!
# A242186: Positive integers, c, such that there is more than one solution to the equation a^2 + b^3 = c^4, with a, b > 0.

The programs for A242186, there is no canonical definition to state claims against.
-/

/-! ## A242186.P9387026740836063313

`record[gcd(A242183(n+11), A242183(n+12))]`
-/

namespace A242186.P9387026740836063313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242183 (n + 11)) (A242183 (n + 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242186.P9387026740836063313

/-! ## A242186.P3071046211889186985

`lt[1, A242192(A028310(n))]`
-/

namespace A242186.P3071046211889186985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242192 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242186.P3071046211889186985

/-!
# A242188: a(n) = Sum_{i=1..n} (-1)^(i+1) prime(i)^3.

The programs for A242188, the canonical program `A242188.P14005786775646046571` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242188 has offset 0).

The definition of A242188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242188.P14005786775646046571

`∑[record[A005064(n+1)]*A062157(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242188

/-- `∑[record[A005064(n+1)]*A062157(n)]` -/
def P14005786775646046571.Spec : Prop :=
  ∀ n, P14005786775646046571.a n = A242188 n

theorem P14005786775646046571.correct : P14005786775646046571.Spec := by
  intro n
  simp only [A242188]

end A242188

/-! ## A242188.P1917526905358136061

`∑[record[A005064(1+n)]*A165326(n)]`
-/

namespace A242188.P1917526905358136061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242188.P1917526905358136061

namespace A242188

/-- `∑[record[A005064(1+n)]*A165326(n)]` -/
def P1917526905358136061.Spec : Prop :=
  ∀ n, P1917526905358136061.a n = A242188 n

end A242188

/-! ## A242188.P9832003600562409350

`∑[record[A005064(n+1)]*A033999(n+1)]`
-/

namespace A242188.P9832003600562409350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242188.P9832003600562409350

namespace A242188

/-- `∑[record[A005064(n+1)]*A033999(n+1)]` -/
def P9832003600562409350.Spec : Prop :=
  ∀ n, P9832003600562409350.a n = A242188 n

end A242188

/-! ## A242188.P15244544058516436043

`∑[A000578(A008578(n+1))*A062157(n)]`
-/

namespace A242188.P15244544058516436043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A008578 (n + 1)).toNat * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242188.P15244544058516436043

namespace A242188

/-- `∑[A000578(A008578(n+1))*A062157(n)]` -/
def P15244544058516436043.Spec : Prop :=
  ∀ n, P15244544058516436043.a n = A242188 n

end A242188

/-! ## A242188.P6094102590945077694

`∑[A005064(A008578(n+1))*A165326(n)]`
-/

namespace A242188.P6094102590945077694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A008578 (n + 1)).toNat * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242188.P6094102590945077694

namespace A242188

/-- `∑[A005064(A008578(n+1))*A165326(n)]` -/
def P6094102590945077694.Spec : Prop :=
  ∀ n, P6094102590945077694.a n = A242188 n

end A242188

/-!
# A242189: a(n) is the smallest prime number such that every even number from 6 to 2n can be written as the sum of two primes less than or equal to a(n).

The programs for A242189, there is no canonical definition to state claims against.
-/

/-! ## A242189.P12273865436518404569

`A006530(a(n-1)*A234345(n+3))` with `a(0)=3`
-/

namespace A242189.P12273865436518404569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) * A234345 (n + 3)).toNat

end

end A242189.P12273865436518404569

/-! ## A242189.P12048524365750776375

`A006530(lcm(a(n-1), A234345(n+3)))` with `a(0)=3`
-/

namespace A242189.P12048524365750776375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (A234345 (n + 3)))

end

end A242189.P12048524365750776375

/-! ## A242189.P1079861239992911540

`A006530(a(n-1)*A102084(n+3))` with `a(0)=3`
-/

namespace A242189.P1079861239992911540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) * A102084 (n + 3)).toNat

end

end A242189.P1079861239992911540

/-! ## A242189.P14426023458183334568

`A006530(a(n-1)*A099303(2*(n+3)))` with `a(0)=3`
-/

namespace A242189.P14426023458183334568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) * A099303 (2 * (n + 3))).toNat

end

end A242189.P14426023458183334568

/-!
# A242190: Primes congruent to 1 (mod 3) which only have the odd digits {1, 3, 7, 9}.

The programs for A242190, the canonical program `A242190.P12255216913166492648` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242190 has offset 1).

The definition of A242190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4884 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242190.P12255216913166492648

`A091633(eq[3, dr(3*A091633(n+1))]+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242190

/-- `A091633(eq[3, dr(3*A091633(n+1))]+1)` -/
def P12255216913166492648.Spec : Prop :=
  ∀ n, P12255216913166492648.a n = A242190 (n + 1)

theorem P12255216913166492648.correct : P12255216913166492648.Spec := by
  intro n
  simp only [A242190, Nat.add_sub_cancel]

end A242190

/-! ## A242190.P14040534953676932433

`∩[A002476(n+1), A091633(n+1)]`
-/

namespace A242190.P14040534953676932433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P14040534953676932433

namespace A242190

/-- `∩[A002476(n+1), A091633(n+1)]` -/
def P14040534953676932433.Spec : Prop :=
  ∀ n, (P14040534953676932433.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P10727701966697905172

`∩[A045375(n+1), A091633(n+1)]`
-/

namespace A242190.P10727701966697905172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P10727701966697905172

namespace A242190

/-- `∩[A045375(n+1), A091633(n+1)]` -/
def P10727701966697905172.Spec : Prop :=
  ∀ n, (P10727701966697905172.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P1529434194632163001

`∩[A002476(n+1), A136333(n+1)]`
-/

namespace A242190.P1529434194632163001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P1529434194632163001

namespace A242190

/-- `∩[A002476(n+1), A136333(n+1)]` -/
def P1529434194632163001.Spec : Prop :=
  ∀ n, (P1529434194632163001.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P16152929258911802997

`∩[A045375(n+1), A136333(n+1)]`
-/

namespace A242190.P16152929258911802997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P16152929258911802997

namespace A242190

/-- `∩[A045375(n+1), A136333(n+1)]` -/
def P16152929258911802997.Spec : Prop :=
  ∀ n, (P16152929258911802997.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P8024787714132326445

`∩[A091633(n+1), A123365(n+1)]`
-/

namespace A242190.P8024787714132326445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P8024787714132326445

namespace A242190

/-- `∩[A091633(n+1), A123365(n+1)]` -/
def P8024787714132326445.Spec : Prop :=
  ∀ n, (P8024787714132326445.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P7847912494097828878

`∩[A091633(n+1), A133290(n+1)]`
-/

namespace A242190.P7847912494097828878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P7847912494097828878

namespace A242190

/-- `∩[A091633(n+1), A133290(n+1)]` -/
def P7847912494097828878.Spec : Prop :=
  ∀ n, (P7847912494097828878.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P12890803086260805658

`∩[A091633(n+1), A137827(n+1)]`
-/

namespace A242190.P12890803086260805658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P12890803086260805658

namespace A242190

/-- `∩[A091633(n+1), A137827(n+1)]` -/
def P12890803086260805658.Spec : Prop :=
  ∀ n, (P12890803086260805658.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P2897147153784744868

`∩[A133290(n+1), A136333(n+1)]`
-/

namespace A242190.P2897147153784744868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P2897147153784744868

namespace A242190

/-- `∩[A133290(n+1), A136333(n+1)]` -/
def P2897147153784744868.Spec : Prop :=
  ∀ n, (P2897147153784744868.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P10828293435036869788

`∩[A136333(n+1), A137827(n+1)]`
-/

namespace A242190.P10828293435036869788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P10828293435036869788

namespace A242190

/-- `∩[A136333(n+1), A137827(n+1)]` -/
def P10828293435036869788.Spec : Prop :=
  ∀ n, (P10828293435036869788.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P10736093557304492787

`∩[A091633(n+1), A354936(n+1)]`
-/

namespace A242190.P10736093557304492787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P10736093557304492787

namespace A242190

/-- `∩[A091633(n+1), A354936(n+1)]` -/
def P10736093557304492787.Spec : Prop :=
  ∀ n, (P10736093557304492787.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P866744715076244007

`∩[A136333(n+1), A354936(n+1)]`
-/

namespace A242190.P866744715076244007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P866744715076244007

namespace A242190

/-- `∩[A136333(n+1), A354936(n+1)]` -/
def P866744715076244007.Spec : Prop :=
  ∀ n, (P866744715076244007.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P14771864544675501787

`∩[A091633(n+1), A374135(n+1)]`
-/

namespace A242190.P14771864544675501787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P14771864544675501787

namespace A242190

/-- `∩[A091633(n+1), A374135(n+1)]` -/
def P14771864544675501787.Spec : Prop :=
  ∀ n, (P14771864544675501787.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P5627015568010770441

`filter[A091633(n+1), A070563(#)]`
-/

namespace A242190.P5627015568010770441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A242190.P5627015568010770441

namespace A242190

/-- `filter[A091633(n+1), A070563(#)]` -/
def P5627015568010770441.Spec : Prop :=
  ∀ n, P5627015568010770441.a n = A242190 (n + 1)

end A242190

/-! ## A242190.P3301098317439976552

`∩[A004611(n+1), A091633(n+1)]`
-/

namespace A242190.P3301098317439976552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P3301098317439976552

namespace A242190

/-- `∩[A004611(n+1), A091633(n+1)]` -/
def P3301098317439976552.Spec : Prop :=
  ∀ n, (P3301098317439976552.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P17860585726460944272

`∩[A091633(n+1), A107925(n+1)]`
-/

namespace A242190.P17860585726460944272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P17860585726460944272

namespace A242190

/-- `∩[A091633(n+1), A107925(n+1)]` -/
def P17860585726460944272.Spec : Prop :=
  ∀ n, (P17860585726460944272.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P4339976004215468508

`∩[A091633(n+1), A129904(n+1)]`
-/

namespace A242190.P4339976004215468508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242190.P4339976004215468508

namespace A242190

/-- `∩[A091633(n+1), A129904(n+1)]` -/
def P4339976004215468508.Spec : Prop :=
  ∀ n, (P4339976004215468508.a n : ℤ) = A242190 (n + 1)

end A242190

/-! ## A242190.P15435369161157557001

`filter[A091633(n+1), A354982(#)]`
-/

namespace A242190.P15435369161157557001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A242190.P15435369161157557001

namespace A242190

/-- `filter[A091633(n+1), A354982(#)]` -/
def P15435369161157557001.Spec : Prop :=
  ∀ n, P15435369161157557001.a n = A242190 (n + 1)

end A242190

/-! ## A242190.P9349400452087026279

`filter[A091633(n+1), A374053(#)]`
-/

namespace A242190.P9349400452087026279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374053 (f1 j).toNat = 1) n)

end

end A242190.P9349400452087026279

namespace A242190

/-- `filter[A091633(n+1), A374053(#)]` -/
def P9349400452087026279.Spec : Prop :=
  ∀ n, P9349400452087026279.a n = A242190 (n + 1)

end A242190

/-! ## A242190.P17281972295250981524

`filter[A136333(n+1), A354982(#)]`
-/

namespace A242190.P17281972295250981524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A242190.P17281972295250981524

namespace A242190

/-- `filter[A136333(n+1), A354982(#)]` -/
def P17281972295250981524.Spec : Prop :=
  ∀ n, P17281972295250981524.a n = A242190 (n + 1)

end A242190

/-!
# A242191: Expected value of the highest die when n six-sided dice are rolled, multiplied by 6^n.

The programs for A242191, the canonical program `A242191.P6053039216167152241` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242191 has offset 1).

The definition of A242191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242191.P6053039216167152241

`6^(n+2)-A001552(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A242191

/-- `6^(n+2)-A001552(n+1)` -/
def P6053039216167152241.Spec : Prop :=
  ∀ n, P6053039216167152241.a n = A242191 (n + 1)

theorem P6053039216167152241.correct : P6053039216167152241.Spec := by
  intro n
  simp only [A242191, Nat.add_sub_cancel]

end A242191

/-! ## A242191.P13213571903962245106

`A254031(n)+6*a(n-1)` with `a(0)=21`
-/

namespace A242191.P13213571903962245106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A254031 n + 6 * a (n - 1)

end

end A242191.P13213571903962245106

namespace A242191

/-- `A254031(n)+6*a(n-1)` -/
def P13213571903962245106.Spec : Prop :=
  ∀ n, P13213571903962245106.a n = A242191 (n + 1)

theorem P13213571903962245106.correct : P13213571903962245106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A242191, Nat.add_sub_cancel, A242191.P13213571903962245106.a, A242191.P6053039216167152241.a, A001552, A001552.P2305574518595139067.a, A254031, A254031.P9701992009848056109.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A242191, Nat.add_sub_cancel, A242191.P13213571903962245106.a, A242191.P6053039216167152241.a, A001552, A001552.P2305574518595139067.a, A254031, A254031.P9701992009848056109.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242191

/-!
# A242192: Number of ways to write n^4 as sum of a square and a cube, both > 0.

The programs for A242192, there is no canonical definition to state claims against.
-/

/-! ## A242192.P3936376661423218768

`A071006((n+1)²)`
-/

namespace A242192.P3936376661423218768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071006 ((n + 1) ^ 2)

end

end A242192.P3936376661423218768

/-! ## A242192.P8997756940628785265

`A288997(A016777(n)*A022838(n+1))`
-/

namespace A242192.P8997756940628785265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A016777 n * A022838 (n + 1)).toNat

end

end A242192.P8997756940628785265

/-! ## A242192.P9789131240965602788

`A102683((A073576(n)+3)%A013611(n))`
-/

namespace A242192.P9789131240965602788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (Int.tmod (A073576 n + 3) (A013611 n)).toNat

end

end A242192.P9789131240965602788

/-! ## A242192.P15851320611382917468

`A047983(A067538(n+1))%A000002(n+1)`
-/

namespace A242192.P15851320611382917468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047983 (A067538 (n + 1)).toNat) (A000002 (n + 1))

end

end A242192.P15851320611382917468

/-!
# A242193: Least prime p such that B_{2*n} == 0 (mod p) but there is no k < n with B_{2k} == 0 (mod p), or 1 if such a prime p does not exist, where B_m denotes the m-th Bernoulli number.

The programs for A242193, there is no canonical definition to state claims against.
-/

/-! ## A242193.P8820267436569939427

`A332300(A043318(n+1))`
-/

namespace A242193.P8820267436569939427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332300 (A043318 (n + 1)).toNat

end

end A242193.P8820267436569939427

/-! ## A242193.P3154924389313202319

`A332300(A044915(n+1))`
-/

namespace A242193.P3154924389313202319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332300 (A044915 (n + 1)).toNat

end

end A242193.P3154924389313202319

/-! ## A242193.P18108923427650701860

`A332300(A029837(∑[2^n]))`
-/

namespace A242193.P18108923427650701860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332300 (A029837 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A242193.P18108923427650701860

/-! ## A242193.P10440920803522061698

`A332300(∑[or(1, A249699(n))])`
-/

namespace A242193.P10440920803522061698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249699 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242193.P10440920803522061698

/-! ## A242193.P8469937505887850986

`A332300(∑[∏{p}[A249699(n), #]])`
-/

namespace A242193.P8469937505887850986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249699 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332300 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242193.P8469937505887850986

/-!
# A242195: Least prime divisor of the n-th tangent number T_n which does not divide any T_k with k < n, or 1 if such a primitive prime divisor of T_n does not exist.

The programs for A242195, there is no canonical definition to state claims against.
-/

/-! ## A242195.P1611682984258912847

`A000265(A002105(n+1))+char[1]`
-/

namespace A242195.P1611682984258912847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002105 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A242195.P1611682984258912847

/-! ## A242195.P4294527744884410776

`A060819(A002430(n+1))+char[1]`
-/

namespace A242195.P4294527744884410776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A002430 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A242195.P4294527744884410776

/-!
# A242197: Numbers k such that k*14^k + 1 is prime.

The programs for A242197, there is no canonical definition to state claims against.
-/

/-! ## A242197.P4794982568570150871

`A240062(A262626(3*n+2)+A095296(n+3))`
-/

namespace A242197.P4794982568570150871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240062 (A262626 (3 * n + 2) + A095296 (n + 3)).toNat

end

end A242197.P4794982568570150871

/-!
# A242198: Numbers k such that k*15^k + 1 is prime.

The programs for A242198, there is no canonical definition to state claims against.
-/

/-! ## A242198.P15395935654957646849

`A352354(A237667(3*n))+3`
-/

namespace A242198.P15395935654957646849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352354 (A237667 (3 * n)).toNat + 3

end

end A242198.P15395935654957646849

/-!
# A242199: Numbers k such that k*16^k + 1 is prime.

The programs for A242199, there is no canonical definition to state claims against.
-/

/-! ## A242199.P10308316408448659058

`eq[n, A035050(4*n)]`
-/

namespace A242199.P10308316408448659058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242199.P10308316408448659058

