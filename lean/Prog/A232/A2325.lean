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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A232500: Oscillating orbitals over n sectors (nonpositive values indicating there exist none).

The programs for A232500, the canonical program `A232500.P15749173745370117261` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232500 has offset 0).

The definition of A232500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232500.P15749173745370117261

`A056040(n)*(1-2/(floor(n/2)+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A232500

/-- `A056040(n)*(1-2/(floor(n/2)+1))` -/
def P15749173745370117261.Spec : Prop :=
  ∀ n, P15749173745370117261.a n = (A232500 n : ℚ)

end A232500

/-! ## A232500.P4981658490930070800

`A056040(n)-2*A057977(n)`
-/

namespace A232500.P4981658490930070800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - 2 * A057977 n

end

end A232500.P4981658490930070800

namespace A232500

/-- `A056040(n)-2*A057977(n)` -/
def P4981658490930070800.Spec : Prop :=
  ∀ n, P4981658490930070800.a n = A232500 n

end A232500

/-! ## A232500.P10722369512644785817

`ceil((n-3)/2)*A057977(n)`
-/

namespace A232500.P10722369512644785817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 3 : ℚ) / 2⌉ * A057977 n

end

end A232500.P10722369512644785817

namespace A232500

/-- `ceil((n-3)/2)*A057977(n)` -/
def P10722369512644785817.Spec : Prop :=
  ∀ n, P10722369512644785817.a n = A232500 n

end A232500

/-! ## A232500.P10343918764559123114

`A237884(n)-A057977(n)`
-/

namespace A232500.P10343918764559123114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 n - A057977 n

end

end A232500.P10343918764559123114

namespace A232500

/-- `A237884(n)-A057977(n)` -/
def P10343918764559123114.Spec : Prop :=
  ∀ n, P10343918764559123114.a n = A232500 n

end A232500

/-! ## A232500.P5990668537491929452

`A056040(n)-A241543(n+2)`
-/

namespace A232500.P5990668537491929452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A241543 (n + 2)

end

end A232500.P5990668537491929452

namespace A232500

/-- `A056040(n)-A241543(n+2)` -/
def P5990668537491929452.Spec : Prop :=
  ∀ n, P5990668537491929452.a n = A232500 n

end A232500

/-! ## A232500.P5787672343004347769

`A237884(n)+A237884(n)-A056040(n)`
-/

namespace A232500.P5787672343004347769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237884 n + (A237884 n - A056040 n)

end

end A232500.P5787672343004347769

namespace A232500

/-- `A237884(n)+A237884(n)-A056040(n)` -/
def P5787672343004347769.Spec : Prop :=
  ∀ n, P5787672343004347769.a n = A232500 n

end A232500

/-! ## A232500.P15600163482296307768

`2*A237884(n)-A056040(n)`
-/

namespace A232500.P15600163482296307768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237884 n - A056040 n

end

end A232500.P15600163482296307768

namespace A232500

/-- `2*A237884(n)-A056040(n)` -/
def P15600163482296307768.Spec : Prop :=
  ∀ n, P15600163482296307768.a n = A232500 n

end A232500

/-!
# A232502: Number of ways to write n = k + m (0 < k < m) with 2*prime(m) - prime(k) prime.

The programs for A232502, there is no canonical definition to state claims against.
-/

/-! ## A232502.P15389552687381147861

`A262257(∑[n+1]*A107293(n))`
-/

namespace A232502.P15389552687381147861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A107293 n).toNat

end

end A232502.P15389552687381147861

/-! ## A232502.P5542256561030559857

`A001221(A294649(A160333(n)²))`
-/

namespace A232502.P5542256561030559857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A294649 (A160333 n ^ 2).toNat).toNat

end

end A232502.P5542256561030559857

/-! ## A232502.P15448346303683149111

`A251138(or(A106465(n), A116447(n)))`
-/

namespace A232502.P15448346303683149111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251138 (Int.lor (A106465 n) (A116447 n)).toNat

end

end A232502.P15448346303683149111

/-! ## A232502.P2082932541070855627

`∑{p}[A294649(A160333(n)²), A001222(#)]`
-/

namespace A232502.P2082932541070855627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (A160333 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A232502.P2082932541070855627

/-! ## A232502.P16482441001922379751

`A118164(A066806(n))`
-/

namespace A232502.P16482441001922379751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118164 (A066806 n).toNat

end

end A232502.P16482441001922379751

/-!
# A232503: Largest power of 2 in the Collatz (3x+1) trajectory of n.

The programs for A232503, there is no canonical definition to state claims against.
-/

/-! ## A232503.P9189546259078445090

`2^A135282(n+1)`
-/

namespace A232503.P9189546259078445090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A135282 (n + 1) : ℤ)

end

end A232503.P9189546259078445090

/-! ## A232503.P332121987343367931

`2^(A226123(n+1)-1)`
-/

namespace A232503.P332121987343367931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A226123 (n + 1) - 1 : ℤ)

end

end A232503.P332121987343367931

/-! ## A232503.P8172447715373833255

`A000079(A135282(n+1))`
-/

namespace A232503.P8172447715373833255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A135282 (n + 1)).toNat

end

end A232503.P8172447715373833255

/-! ## A232503.P349501009189873098

`A011782(A226123(1+n))`
-/

namespace A232503.P349501009189873098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A226123 (1 + n)).toNat

end

end A232503.P349501009189873098

/-! ## A232503.P6935406886546254825

`A011782(A135282(n+1)+1)`
-/

namespace A232503.P6935406886546254825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A135282 (n + 1) + 1).toNat

end

end A232503.P6935406886546254825

/-! ## A232503.P2070267848991338013

`A000079(A226123(n+1)-1)`
-/

namespace A232503.P2070267848991338013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A226123 (n + 1) - 1).toNat

end

end A232503.P2070267848991338013

/-! ## A232503.P3565000923535144291

`A000010(2^A226123(n+1))`
-/

namespace A232503.P3565000923535144291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A226123 (n + 1) : ℤ))).toNat

end

end A232503.P3565000923535144291

/-! ## A232503.P13399221038022082824

`A000079(A006577(n+1)-A208981(n+1))`
-/

namespace A232503.P13399221038022082824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A006577 (n + 1) - A208981 (n + 1)).toNat

end

end A232503.P13399221038022082824

/-!
# A232504: Number of ways to write n = k + m (k, m > 0) with p(k) + q(m) prime, where p(.) is the partition function (A000041) and q(.) is the strict partition function (A000009).

The programs for A232504, there is no canonical definition to state claims against.
-/

/-! ## A232504.P2193778067449038186

`A037888(A300118(n+1)^5)`
-/

namespace A232504.P2193778067449038186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A300118 (n + 1) ^ 5).toNat

end

end A232504.P2193778067449038186

/-! ## A232504.P2589147707863478463

`∑{e}[A270613(A328212(n+1)), #]`
-/

namespace A232504.P2589147707863478463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (A328212 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A232504.P2589147707863478463

/-! ## A232504.P6831035796870718146

`A262519(n)-A070080(A004038(n+6))`
-/

namespace A232504.P6831035796870718146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n - A070080 (A004038 (n + 6)).toNat

end

end A232504.P6831035796870718146

/-! ## A232504.P9758159259076326205

`A089643(A056239(n+1)^(A003313(n+2)+1))`
-/

namespace A232504.P9758159259076326205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (SequenceMachineLib.roundAway ((A056239 (n + 1) : ℚ) ^ (A003313 (n + 2) + 1 : ℤ))).toNat

end

end A232504.P9758159259076326205

/-! ## A232504.P8038086298713282983

`A110592(12*n²*A104725(n))-A108625(A300118(n+1))`
-/

namespace A232504.P8038086298713282983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 ((12 * n ^ 2 : ℤ) * A104725 n).toNat - A108625 (A300118 (n + 1)).toNat

end

end A232504.P8038086298713282983

/-!
# A232505: Sum of odd quadratic residues of prime(n).

The programs for A232505, there is no canonical definition to state claims against.
-/

/-! ## A232505.P6423018344929140494

`A232597(A000040(n+1))`
-/

namespace A232505.P6423018344929140494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A000040 (n + 1)).toNat

end

end A232505.P6423018344929140494

/-! ## A232505.P16056100138571007504

`A232597(p?[xor(1, n)])`
-/

namespace A232505.P16056100138571007504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A232505.P16056100138571007504

/-! ## A232505.P8511678416691128058

`A232597(Δ[A007504(n)])`
-/

namespace A232505.P8511678416691128058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (f1 (n + 1) - f1 n).toNat

end

end A232505.P8511678416691128058

/-! ## A232505.P15993308975000542781

`A232597(A006005(n+1))`
-/

namespace A232505.P15993308975000542781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A006005 (n + 1)).toNat

end

end A232505.P15993308975000542781

/-! ## A232505.P10462561870797567940

`A232597(A161847(n+1))`
-/

namespace A232505.P10462561870797567940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A161847 (n + 1)).toNat

end

end A232505.P10462561870797567940

/-! ## A232505.P10718057705499609831

`A232597(A008578(n+2))`
-/

namespace A232505.P10718057705499609831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A008578 (n + 2)).toNat

end

end A232505.P10718057705499609831

/-! ## A232505.P10603563000633905692

`A232597(A075643(n+2))`
-/

namespace A232505.P10603563000633905692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A075643 (n + 2)).toNat

end

end A232505.P10603563000633905692

/-! ## A232505.P1881436938000091694

`A232597(A171525(n+2))`
-/

namespace A232505.P1881436938000091694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A171525 (n + 2)).toNat

end

end A232505.P1881436938000091694

/-! ## A232505.P6792649748083188828

`A232597(A182986(n+2))`
-/

namespace A232505.P6792649748083188828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A182986 (n + 2)).toNat

end

end A232505.P6792649748083188828

/-! ## A232505.P3069037015945658873

`A232597(record[A036262(n)])`
-/

namespace A232505.P3069037015945658873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232505.P3069037015945658873

/-!
# A232506: Expansion of (eta(q) * eta(q^23))^2 in powers of q.

The programs for A232506, there is no canonical definition to state claims against.
-/

/-! ## A232506.P18130464029416200337

`∑{#}[n, A030199(#+1)*A030199(n-#+1)]`
-/

namespace A232506.P18130464029416200337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A030199 (k + 1) * A030199 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A232506.P18130464029416200337

/-! ## A232506.P3309549793408752527

`A002107(n)*A155050(A086329(n))`
-/

namespace A232506.P3309549793408752527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A155050 (A086329 n).toNat

end

end A232506.P3309549793408752527

/-! ## A232506.P2012829709919959203

`A002107(n)*A156989(A185203(n))`
-/

namespace A232506.P2012829709919959203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A156989 (A185203 n).toNat

end

end A232506.P2012829709919959203

/-! ## A232506.P8203318739502989674

`A002107(n)*A374998(A374985(n))`
-/

namespace A232506.P8203318739502989674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A374998 (A374985 n).toNat

end

end A232506.P8203318739502989674

/-! ## A232506.P15639884855980246585

`A002107(n)*A193738(Δ[A102705(n)])`
-/

namespace A232506.P15639884855980246585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A193738 (f1 (n + 1) - f1 n).toNat

end

end A232506.P15639884855980246585

/-!
# A232507: Number of (n+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232507, there is no canonical definition to state claims against.
-/

/-! ## A232507.P10286680315172675278

`A232515(∑[4*n]+1)`
-/

namespace A232507.P10286680315172675278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232507.P10286680315172675278

/-! ## A232507.P4053473205599166669

`lcm(2, A232515(A001844(n)))`
-/

namespace A232507.P4053473205599166669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232515 (A001844 n).toNat)

end

end A232507.P4053473205599166669

/-! ## A232507.P17161357242321368935

`record[gcd(A049581(n), A232515(n+1))]`
-/

namespace A232507.P17161357242321368935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A232515 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232507.P17161357242321368935

/-! ## A232507.P8911405487541779996

`or(A005926(n), A232515(A001844(n)))`
-/

namespace A232507.P8911405487541779996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005926 n) (A232515 (A001844 n).toNat)

end

end A232507.P8911405487541779996

/-! ## A232507.P6007783604057444127

`and(-A040000(n), A232515(A001844(n)))`
-/

namespace A232507.P6007783604057444127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A040000 n) (A232515 (A001844 n).toNat)

end

end A232507.P6007783604057444127

/-!
# A232508: Number of (n+1) X (1+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232508, the canonical program `A232508.P17456856635506846982` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232508 has offset 1).

The definition of A232508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232508.P4943258511450070221

`ogf(-4/(-1+x+x^2+x^3))`
-/

namespace A232508.P4943258511450070221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -1, -1, -1] n

end

end A232508.P4943258511450070221

namespace A232508

/-- `ogf(-4/(-1+x+x^2+x^3))` -/
def P4943258511450070221.Spec : Prop :=
  ∀ n, P4943258511450070221.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P17456856635506846982

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=4, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232508

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P17456856635506846982.Spec : Prop :=
  ∀ n, (P17456856635506846982.a n : ℤ) = A232508 (n + 1)

theorem P17456856635506846982.correct : P17456856635506846982.Spec := by
  intro n
  simp only [A232508, Nat.add_sub_cancel]

end A232508

/-! ## A232508.P17377743760077788460

`4*∑[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A232508.P17377743760077788460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232508.P17377743760077788460

namespace A232508

/-- `4*∑[2*a(n-1)-a(n-4)]` -/
def P17377743760077788460.Spec : Prop :=
  ∀ n, P17377743760077788460.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P7598181824798383061

`4*Δ[2*a(n-1)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A232508.P7598181824798383061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A232508.P7598181824798383061

namespace A232508

/-- `4*Δ[2*a(n-1)-a(n-4)]` -/
def P7598181824798383061.Spec : Prop :=
  ∀ n, P7598181824798383061.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P12532278150084735668

`2*Δ[A288465(n)]`
-/

namespace A232508.P12532278150084735668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A232508.P12532278150084735668

namespace A232508

/-- `2*Δ[A288465(n)]` -/
def P12532278150084735668.Spec : Prop :=
  ∀ n, P12532278150084735668.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P2188495402034278190

`4*Δ[A008937(n)]`
-/

namespace A232508.P2188495402034278190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A232508.P2188495402034278190

namespace A232508

/-- `4*Δ[A008937(n)]` -/
def P2188495402034278190.Spec : Prop :=
  ∀ n, P2188495402034278190.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P8261394211004849313

`2*A354784(n+2)`
-/

namespace A232508.P8261394211004849313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A354784 (n + 2)

end

end A232508.P8261394211004849313

namespace A232508

/-- `2*A354784(n+2)` -/
def P8261394211004849313.Spec : Prop :=
  ∀ n, P8261394211004849313.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P680382933187149755

`4*(A089068(n)+1)`
-/

namespace A232508.P680382933187149755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A089068 n + 1)

end

end A232508.P680382933187149755

namespace A232508

/-- `4*(A089068(n)+1)` -/
def P680382933187149755.Spec : Prop :=
  ∀ n, P680382933187149755.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P9628391498681948785

`4*A000073(n+2)`
-/

namespace A232508.P9628391498681948785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000073 (n + 2)

end

end A232508.P9628391498681948785

namespace A232508

/-- `4*A000073(n+2)` -/
def P9628391498681948785.Spec : Prop :=
  ∀ n, P9628391498681948785.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P16252260866117260130

`2*lcm(2, A135491(n))`
-/

namespace A232508.P16252260866117260130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm 2 (A135491 n)

end

end A232508.P16252260866117260130

namespace A232508

/-- `2*lcm(2, A135491(n))` -/
def P16252260866117260130.Spec : Prop :=
  ∀ n, (P16252260866117260130.a n : ℤ) = A232508 (n + 1)

end A232508

/-! ## A232508.P5984352165882142726

`∑[4*A001590(n+1)]`
-/

namespace A232508.P5984352165882142726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232508.P5984352165882142726

namespace A232508

/-- `∑[4*A001590(n+1)]` -/
def P5984352165882142726.Spec : Prop :=
  ∀ n, P5984352165882142726.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P8335181908121638148

`4*A213816(2*n+1)`
-/

namespace A232508.P8335181908121638148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A213816 (2 * n + 1)

end

end A232508.P8335181908121638148

namespace A232508

/-- `4*A213816(2*n+1)` -/
def P8335181908121638148.Spec : Prop :=
  ∀ n, P8335181908121638148.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P9597931990998537048

`A274761(n)+A047081(n)`
-/

namespace A232508.P9597931990998537048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 n + A047081 n

end

end A232508.P9597931990998537048

namespace A232508

/-- `A274761(n)+A047081(n)` -/
def P9597931990998537048.Spec : Prop :=
  ∀ n, P9597931990998537048.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P14667768464100453827

`A141523(n)+A001644(n+1)`
-/

namespace A232508.P14667768464100453827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 n + A001644 (n + 1)

end

end A232508.P14667768464100453827

namespace A232508

/-- `A141523(n)+A001644(n+1)` -/
def P14667768464100453827.Spec : Prop :=
  ∀ n, P14667768464100453827.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P16685006708148395843

`A214825(n+1)+A000213(n)`
-/

namespace A232508.P16685006708148395843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (n + 1) + A000213 n

end

end A232508.P16685006708148395843

namespace A232508

/-- `A214825(n+1)+A000213(n)` -/
def P16685006708148395843.Spec : Prop :=
  ∀ n, P16685006708148395843.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P2047133991239078789

`A001644(n)+A000213(n+2)`
-/

namespace A232508.P2047133991239078789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n + A000213 (n + 2)

end

end A232508.P2047133991239078789

namespace A232508

/-- `A001644(n)+A000213(n+2)` -/
def P2047133991239078789.Spec : Prop :=
  ∀ n, P2047133991239078789.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P13429211979738941789

`A214826(n+1)-A000073(n)`
-/

namespace A232508.P13429211979738941789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 (n + 1) - A000073 n

end

end A232508.P13429211979738941789

namespace A232508

/-- `A214826(n+1)-A000073(n)` -/
def P13429211979738941789.Spec : Prop :=
  ∀ n, P13429211979738941789.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P319370718108121358

`A214727(n+1)+A100683(n+1)`
-/

namespace A232508.P319370718108121358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1) + A100683 (n + 1)

end

end A232508.P319370718108121358

namespace A232508

/-- `A214727(n+1)+A100683(n+1)` -/
def P319370718108121358.Spec : Prop :=
  ∀ n, P319370718108121358.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P13821688526272014083

`A354080(n+1)-A001590(n+2)`
-/

namespace A232508.P13821688526272014083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 (n + 1) - A001590 (n + 2)

end

end A232508.P13821688526272014083

namespace A232508

/-- `A354080(n+1)-A001590(n+2)` -/
def P13821688526272014083.Spec : Prop :=
  ∀ n, P13821688526272014083.a n = A232508 (n + 1)

end A232508

/-! ## A232508.P2844494594049017630

`2*(A145027(n+1)-A001590(n))`
-/

namespace A232508.P2844494594049017630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145027 (n + 1) - A001590 n)

end

end A232508.P2844494594049017630

namespace A232508

/-- `2*(A145027(n+1)-A001590(n))` -/
def P2844494594049017630.Spec : Prop :=
  ∀ n, P2844494594049017630.a n = A232508 (n + 1)

end A232508

/-!
# A232509: Number of (n+1)X(2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232509, the canonical program `A232509.P3082494900735010571` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232509 has offset 1).

The definition of A232509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232509.P3082494900735010571

`ogf((16-12x-24x^2-4x^3+4x^4+4x^6)/(1-4x-x^2+4x^3+5x^4+2x^5-x^6-2x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232509

/-- `ogf((16-12x-24x^2-4x^3+4x^4+4x^6)/(1-4x-x^2+4x^3+5x^4+2x^5-x^6-2x^7))` -/
def P3082494900735010571.Spec : Prop :=
  ∀ n, P3082494900735010571.a n = A232509 (n + 1)

theorem P3082494900735010571.correct : P3082494900735010571.Spec := by
  intro n
  simp only [A232509, Nat.add_sub_cancel]

end A232509

/-! ## A232509.P9438308744887062344

`A232515(∑[n+2])`
-/

namespace A232509.P9438308744887062344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232509.P9438308744887062344

namespace A232509

/-- `A232515(∑[n+2])` -/
def P9438308744887062344.Spec : Prop :=
  ∀ n, P9438308744887062344.a n = A232509 (n + 1)

end A232509

/-! ## A232509.P10591943806880002570

`record[A232515(A101881(n+1))]`
-/

namespace A232509.P10591943806880002570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A101881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232509.P10591943806880002570

namespace A232509

/-- `record[A232515(A101881(n+1))]` -/
def P10591943806880002570.Spec : Prop :=
  ∀ n, P10591943806880002570.a n = A232509 (n + 1)

end A232509

/-! ## A232509.P8374349746583431339

`record[A232515(Δ[A003453(n+5)])]`
-/

namespace A232509.P8374349746583431339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232509.P8374349746583431339

namespace A232509

/-- `record[A232515(Δ[A003453(n+5)])]` -/
def P8374349746583431339.Spec : Prop :=
  ∀ n, P8374349746583431339.a n = A232509 (n + 1)

end A232509

/-! ## A232509.P6145995615502038852

`record[A232515(A000096(A134478(n)))]`
-/

namespace A232509.P6145995615502038852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232509.P6145995615502038852

namespace A232509

/-- `record[A232515(A000096(A134478(n)))]` -/
def P6145995615502038852.Spec : Prop :=
  ∀ n, P6145995615502038852.a n = A232509 (n + 1)

end A232509

/-!
# A232510: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232510, the canonical program `A232510.P6335876878877361667` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232510 has offset 1).

The definition of A232510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232510.P6787570149425307524

`ogf(-16/(-1+2x+4x^2+x^3))`
-/

namespace A232510.P6787570149425307524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16] [1, -2, -4, -1] n

end

end A232510.P6787570149425307524

namespace A232510

/-- `ogf(-16/(-1+2x+4x^2+x^3))` -/
def P6787570149425307524.Spec : Prop :=
  ∀ n, P6787570149425307524.a n = A232510 (n + 1)

end A232510

/-! ## A232510.P6335876878877361667

`2*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=16, a(1)=32, a(2)=128`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232510

/-- `2*a(n-1)+4*a(n-2)+a(n-3)` -/
def P6335876878877361667.Spec : Prop :=
  ∀ n, (P6335876878877361667.a n : ℤ) = A232510 (n + 1)

theorem P6335876878877361667.correct : P6335876878877361667.Spec := by
  intro n
  simp only [A232510, Nat.add_sub_cancel]

end A232510

/-! ## A232510.P6585739379895457994

`A232515(∑[n+3]+1)`
-/

namespace A232510.P6585739379895457994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232510.P6585739379895457994

namespace A232510

/-- `A232515(∑[n+3]+1)` -/
def P6585739379895457994.Spec : Prop :=
  ∀ n, P6585739379895457994.a n = A232510 (n + 1)

end A232510

/-! ## A232510.P1651313353310821602

`record[A232515(abs(2-∑[n]))]`
-/

namespace A232510.P1651313353310821602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232510.P1651313353310821602

namespace A232510

/-- `record[A232515(abs(2-∑[n]))]` -/
def P1651313353310821602.Spec : Prop :=
  ∀ n, P1651313353310821602.a n = A232510 (n + 1)

end A232510

/-!
# A232511: Number of (n+1)X(4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232511, there is no canonical definition to state claims against.
-/

/-! ## A232511.P4715990621662359875

`A232515(A141214(n+1))`
-/

namespace A232511.P4715990621662359875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A141214 (n + 1)).toNat

end

end A232511.P4715990621662359875

/-! ## A232511.P17264674164726402383

`A232515(A155212(n)+5)`
-/

namespace A232511.P17264674164726402383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A155212 n + 5).toNat

end

end A232511.P17264674164726402383

/-! ## A232511.P11089714490825538162

`A232515(A056000(n)+7)`
-/

namespace A232511.P11089714490825538162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A056000 n + 7).toNat

end

end A232511.P11089714490825538162

/-! ## A232511.P18104517538524622374

`A232515(eq[3, A193592(n)])`
-/

namespace A232511.P18104517538524622374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232511.P18104517538524622374

/-! ## A232511.P517986657799934135

`A232515(A052905(n+1)+2)`
-/

namespace A232511.P517986657799934135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A052905 (n + 1) + 2).toNat

end

end A232511.P517986657799934135

/-!
# A232512: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232512, there is no canonical definition to state claims against.
-/

/-! ## A232512.P11529743663195892749

`A232515(A046691(n+3))`
-/

namespace A232512.P11529743663195892749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A046691 (n + 3)).toNat

end

end A232512.P11529743663195892749

/-! ## A232512.P11623496636363843402

`A232515(eq[4, A193592(n)])`
-/

namespace A232512.P11623496636363843402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232512.P11623496636363843402

/-! ## A232512.P15569226863119103257

`A232515(Δ[A023545(n+1)])`
-/

namespace A232512.P15569226863119103257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (f1 (n + 1) - f1 n).toNat

end

end A232512.P15569226863119103257

/-! ## A232512.P12860437488298565522

`A232515(eq[6, A185782(n+1)])`
-/

namespace A232512.P12860437488298565522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232512.P12860437488298565522

/-! ## A232512.P18308708593449831804

`A232515(eq[8, A057728(n+1)])`
-/

namespace A232512.P18308708593449831804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232512.P18308708593449831804

/-!
# A232513: Number of (n+1)X(6+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232513, there is no canonical definition to state claims against.
-/

/-! ## A232513.P6453342103315740530

`A232515(A052905(n+3))`
-/

namespace A232513.P6453342103315740530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A052905 (n + 3)).toNat

end

end A232513.P6453342103315740530

/-! ## A232513.P11875765667768664945

`A232515(eq[3, A219347(n)])`
-/

namespace A232513.P11875765667768664945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232513.P11875765667768664945

/-! ## A232513.P18346055800809495349

`A232515(eq[5, A193592(n)])`
-/

namespace A232513.P18346055800809495349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232513.P18346055800809495349

/-! ## A232513.P10594716648243201252

`A232515(A055999(n+3)+1)`
-/

namespace A232513.P10594716648243201252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A055999 (n + 3) + 1).toNat

end

end A232513.P10594716648243201252

/-! ## A232513.P17355428183270020984

`A232515(eq[16, A057728(n+1)])`
-/

namespace A232513.P17355428183270020984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232513.P17355428183270020984

/-!
# A232514: Number of (n+1)X(7+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232514, there is no canonical definition to state claims against.
-/

/-! ## A232514.P18224071154535483205

`A232515(A055999(n+4))`
-/

namespace A232514.P18224071154535483205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A055999 (n + 4)).toNat

end

end A232514.P18224071154535483205

/-! ## A232514.P2795179355852432501

`A232515(eq[4, A219347(n)])`
-/

namespace A232514.P2795179355852432501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232514.P2795179355852432501

/-! ## A232514.P840755930691713654

`A232515(eq[6, A193592(n)])`
-/

namespace A232514.P840755930691713654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232514.P840755930691713654

/-! ## A232514.P14008569906626006869

`A232515(eq[10, A185782(n+1)])`
-/

namespace A232514.P14008569906626006869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232514.P14008569906626006869

/-! ## A232514.P9445392415796613853

`A232515(eq[7, A200370(n+1)])`
-/

namespace A232514.P9445392415796613853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232514.P9445392415796613853

/-!
# A232516: Number of (1+1) X (n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232516, the canonical program `A232516.P16504633718119201099` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232516 has offset 1).

The definition of A232516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232516.P16077163818164769941

`ogf((4+16x+4x^2+2x^3+2x^4)/(1-3x^2-x^3-2x^4-2x^5))`
-/

namespace A232516.P16077163818164769941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 16, 4, 2, 2] [1, 0, -3, -1, -2, -2] n

end

end A232516.P16077163818164769941

namespace A232516

/-- `ogf((4+16x+4x^2+2x^3+2x^4)/(1-3x^2-x^3-2x^4-2x^5))` -/
def P16077163818164769941.Spec : Prop :=
  ∀ n, P16077163818164769941.a n = A232516 (n + 1)

end A232516

/-! ## A232516.P16504633718119201099

`3*a(n-2)+a(n-3)+2*a(n-4)+2*a(n-5)` with `a(0)=4, a(1)=16, a(2)=16, a(3)=54, a(4)=74`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232516

/-- `3*a(n-2)+a(n-3)+2*a(n-4)+2*a(n-5)` -/
def P16504633718119201099.Spec : Prop :=
  ∀ n, (P16504633718119201099.a n : ℤ) = A232516 (n + 1)

theorem P16504633718119201099.correct : P16504633718119201099.Spec := by
  intro n
  simp only [A232516, Nat.add_sub_cancel]

end A232516

/-! ## A232516.P1492448393154678033

`A232515(∑[n]+1)`
-/

namespace A232516.P1492448393154678033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232516.P1492448393154678033

namespace A232516

/-- `A232515(∑[n]+1)` -/
def P1492448393154678033.Spec : Prop :=
  ∀ n, P1492448393154678033.a n = A232516 (n + 1)

end A232516

/-! ## A232516.P14016330892899301751

`lcm(2, A232515(A000124(n)))`
-/

namespace A232516.P14016330892899301751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232515 (A000124 n).toNat)

end

end A232516.P14016330892899301751

namespace A232516

/-- `lcm(2, A232515(A000124(n)))` -/
def P14016330892899301751.Spec : Prop :=
  ∀ n, (P14016330892899301751.a n : ℤ) = A232516 (n + 1)

end A232516

/-! ## A232516.P13499485799085556345

`A232515(A000124(n))+A034564(n+1)`
-/

namespace A232516.P13499485799085556345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A000124 n).toNat + A034564 (n + 1)

end

end A232516.P13499485799085556345

namespace A232516

/-- `A232515(A000124(n))+A034564(n+1)` -/
def P13499485799085556345.Spec : Prop :=
  ∀ n, P13499485799085556345.a n = A232516 (n + 1)

end A232516

/-!
# A232517: Number of (2+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232517, the canonical program `A232517.P14329736783045636956` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232517 has offset 1).

The definition of A232517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232517.P14329736783045636956

`ogf((4+52x+8x^2+10x^3-6x^4-10x^5-10x^6)/(1-6x^2-x^3-3x^4-x^5+2x^6+2x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232517

/-- `ogf((4+52x+8x^2+10x^3-6x^4-10x^5-10x^6)/(1-6x^2-x^3-3x^4-x^5+2x^6+2x^7))` -/
def P14329736783045636956.Spec : Prop :=
  ∀ n, P14329736783045636956.a n = A232517 (n + 1)

theorem P14329736783045636956.correct : P14329736783045636956.Spec := by
  intro n
  simp only [A232517, Nat.add_sub_cancel]

end A232517

/-! ## A232517.P8593063447349600037

`A232515(∑[n+1]+2)`
-/

namespace A232517.P8593063447349600037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232517.P8593063447349600037

namespace A232517

/-- `A232515(∑[n+1]+2)` -/
def P8593063447349600037.Spec : Prop :=
  ∀ n, P8593063447349600037.a n = A232517 (n + 1)

end A232517

/-! ## A232517.P6891323667050287211

`A232515(A000217(n+1)+2)%A262490(n+1)`
-/

namespace A232517.P6891323667050287211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232515 (A000217 (n + 1) + 2).toNat) (A262490 (n + 1))

end

end A232517.P6891323667050287211

namespace A232517

/-- `A232515(A000217(n+1)+2)%A262490(n+1)` -/
def P6891323667050287211.Spec : Prop :=
  ∀ n, P6891323667050287211.a n = A232517 (n + 1)

end A232517

/-! ## A232517.P14050100431937348113

`A232515(A000217(n+1)+2)+A000045(C(n, 64))`
-/

namespace A232517.P14050100431937348113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A000217 (n + 1) + 2).toNat + A000045 (Nat.choose n 64)

end

end A232517.P14050100431937348113

namespace A232517

/-- `A232515(A000217(n+1)+2)+A000045(C(n, 64))` -/
def P14050100431937348113.Spec : Prop :=
  ∀ n, P14050100431937348113.a n = A232517 (n + 1)

end A232517

/-!
# A232518: Number of (3+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232518, there is no canonical definition to state claims against.
-/

/-! ## A232518.P7207294913249044735

`A232515(∑[n+2]+4)`
-/

namespace A232518.P7207294913249044735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232518.P7207294913249044735

/-! ## A232518.P5122791314711175286

`lcm(2, A232515(A167614(n+1)))`
-/

namespace A232518.P5122791314711175286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232515 (A167614 (n + 1)).toNat)

end

end A232518.P5122791314711175286

/-! ## A232518.P16804220400516724078

`A232515(A167614(n+1))%A297370(n+1)`
-/

namespace A232518.P16804220400516724078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232515 (A167614 (n + 1)).toNat) (A297370 (n + 1))

end

end A232518.P16804220400516724078

/-! ## A232518.P4911395062414047131

`A027926((n+2)²)*A232515(A167614(n+1))`
-/

namespace A232518.P4911395062414047131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n + 2) ^ 2) * A232515 (A167614 (n + 1)).toNat

end

end A232518.P4911395062414047131

/-!
# A232519: Number of (4+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232519, there is no canonical definition to state claims against.
-/

/-! ## A232519.P15634670304120384330

`A232515(A141214(n)+7)`
-/

namespace A232519.P15634670304120384330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A141214 n + 7).toNat

end

end A232519.P15634670304120384330

/-! ## A232519.P6596116190143231621

`A232515(A052905(n)+9)`
-/

namespace A232519.P6596116190143231621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A052905 n + 9).toNat

end

end A232519.P6596116190143231621

/-! ## A232519.P1048431987421414074

`A232515(A055999(n)+10)`
-/

namespace A232519.P1048431987421414074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A055999 n + 10).toNat

end

end A232519.P1048431987421414074

/-! ## A232519.P16601355288539516630

`A232515(A167614(n+2)+1)`
-/

namespace A232519.P16601355288539516630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A167614 (n + 2) + 1).toNat

end

end A232519.P16601355288539516630

/-! ## A232519.P13869538600825369695

`A232515(A166136(n+2)-2)`
-/

namespace A232519.P13869538600825369695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A166136 (n + 2) - 2).toNat

end

end A232519.P13869538600825369695

/-!
# A232520: Number of (5+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232520, there is no canonical definition to state claims against.
-/

/-! ## A232520.P2437757241738233439

`A232515(A167499(n+3))`
-/

namespace A232520.P2437757241738233439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A167499 (n + 3)).toNat

end

end A232520.P2437757241738233439

/-! ## A232520.P14374302824132012981

`A232515(A155212(n)+13)`
-/

namespace A232520.P14374302824132012981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A155212 n + 13).toNat

end

end A232520.P14374302824132012981

/-! ## A232520.P12124570384935421711

`A232515(A056000(n)+15)`
-/

namespace A232520.P12124570384935421711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A056000 n + 15).toNat

end

end A232520.P12124570384935421711

/-! ## A232520.P8342260167701233120

`A232515(A051936(n+4)+14)`
-/

namespace A232520.P8342260167701233120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A051936 (n + 4) + 14).toNat

end

end A232520.P8342260167701233120

/-! ## A232520.P6119594590711451426

`A232515(eq[6, A131818(n+1)])`
-/

namespace A232520.P6119594590711451426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232520.P6119594590711451426

/-!
# A232521: Number of (6+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232521, there is no canonical definition to state claims against.
-/

/-! ## A232521.P8973354059179932802

`A232515(A166136(n+4))`
-/

namespace A232521.P8973354059179932802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A166136 (n + 4)).toNat

end

end A232521.P8973354059179932802

/-! ## A232521.P5967859784222501067

`A232515(A167499(n+4)+1)`
-/

namespace A232521.P5967859784222501067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A167499 (n + 4) + 1).toNat

end

end A232521.P5967859784222501067

/-! ## A232521.P14364932524432643011

`A232515(A000217(n+5)+6)`
-/

namespace A232521.P14364932524432643011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A000217 (n + 5) + 6).toNat

end

end A232521.P14364932524432643011

/-! ## A232521.P516724956023443847

`A232515(eq[5, A002262(n)]+1)`
-/

namespace A232521.P516724956023443847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A232521.P516724956023443847

/-! ## A232521.P6237456215291797036

`A232515(eq[7, A131818(n+1)])`
-/

namespace A232521.P6237456215291797036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232521.P6237456215291797036

/-!
# A232522: Number of (7+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally, with no adjacent elements equal.

The programs for A232522, there is no canonical definition to state claims against.
-/

/-! ## A232522.P552271665462850897

`A232515(eq[11, A066657(n)])`
-/

namespace A232522.P552271665462850897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232522.P552271665462850897

/-! ## A232522.P11456675604352977447

`A232515(A167614(n+5)+4)`
-/

namespace A232522.P11456675604352977447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A167614 (n + 5) + 4).toNat

end

end A232522.P11456675604352977447

/-! ## A232522.P270863401061732900

`A232515(A000096(n+5)+8)`
-/

namespace A232522.P270863401061732900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A000096 (n + 5) + 8).toNat

end

end A232522.P270863401061732900

/-! ## A232522.P1149726515428079517

`A232515(A161680(n+7)+7)`
-/

namespace A232522.P1149726515428079517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (A161680 (n + 7) + 7).toNat

end

end A232522.P1149726515428079517

/-! ## A232522.P6526821908131581725

`A232515(eq[8, A131818(n+1)])`
-/

namespace A232522.P6526821908131581725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232522.P6526821908131581725

/-!
# A232523: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with every row sum{j*x(i,j), j=1..1+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal, with top left element <= 1.

The programs for A232523, there is no canonical definition to state claims against.
-/

/-! ## A232523.P2693019149700266468

`A232609(n+1)-1`
-/

namespace A232523.P2693019149700266468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232609 (n + 1) - 1

end

end A232523.P2693019149700266468

/-! ## A232523.P7972912526682857307

`2*(A113035(n+2)+1)`
-/

namespace A232523.P7972912526682857307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113035 (n + 2) + 1)

end

end A232523.P7972912526682857307

/-! ## A232523.P11912956478594372735

`xor(1, A232609(A069782(n+1)))`
-/

namespace A232523.P11912956478594372735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A232609 (A069782 (n + 1)).toNat)

end

end A232523.P11912956478594372735

/-! ## A232523.P5060189114139439529

`xor(A232609(n+1), A328580(2*n))`
-/

namespace A232523.P5060189114139439529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A232609 (n + 1)) (A328580 (2 * n))

end

end A232523.P5060189114139439529

/-! ## A232523.P8340209990619864914

`xor(A172985(A000120(n)), A232609(n+1))`
-/

namespace A232523.P8340209990619864914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A172985 (A000120 n).toNat) (A232609 (n + 1))

end

end A232523.P8340209990619864914

/-! ## A232523.P9000028852307163750

`xor(A057427(A262507(n)), A232609(n+1))`
-/

namespace A232523.P9000028852307163750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A262507 n).toNat) (A232609 (n + 1))

end

end A232523.P9000028852307163750

/-! ## A232523.P14328038541442162550

`xor(A072411(A328580(n)), A232609(n+1))`
-/

namespace A232523.P14328038541442162550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072411 (A328580 n).toNat) (A232609 (n + 1))

end

end A232523.P14328038541442162550

/-! ## A232523.P10801404285164939463

`xor(A117905(A307597(n)), A232609(n+1))`
-/

namespace A232523.P10801404285164939463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117905 (A307597 n).toNat) (A232609 (n + 1))

end

end A232523.P10801404285164939463

/-! ## A232523.P11010494538500870089

`xor(A232609(n+1), A236853(A094267(n)²))`
-/

namespace A232523.P11010494538500870089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A232609 (n + 1)) (A236853 (A094267 n ^ 2).toNat)

end

end A232523.P11010494538500870089

/-! ## A232523.P10494010203739550907

`xor(A232609(n+1), A236853(A257212(n)²))`
-/

namespace A232523.P10494010203739550907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A232609 (n + 1)) (A236853 (A257212 n ^ 2).toNat)

end

end A232523.P10494010203739550907

/-!
# A232524: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with every row sum{j*x(i,j), j=1..2+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal, with top left element <= 1.

The programs for A232524, there is no canonical definition to state claims against.
-/

/-! ## A232524.P6574021984325115510

`A232526(∑[n+1]+2)`
-/

namespace A232524.P6574021984325115510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232526 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232524.P6574021984325115510

/-! ## A232524.P15800451061941762986

`record[A232526(record[A195083(n+1)])]`
-/

namespace A232524.P15800451061941762986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195083 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232524.P15800451061941762986

/-! ## A232524.P11036393184940918205

`record[A010054(n)*A232526(n+2)]`
-/

namespace A232524.P11036393184940918205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232524.P11036393184940918205

/-! ## A232524.P11426758666252245177

`record[A232526(n+1)/A187783(n)]`
-/

namespace A232524.P11426758666252245177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232526 (n + 1) : ℚ) / (A187783 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232524.P11426758666252245177

/-! ## A232524.P6408896328038699398

`record[root(A232526(n+1), A145085(n))]`
-/

namespace A232524.P6408896328038699398
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232526 (n + 1) : ℝ) ^ (1 / (A145085 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232524.P6408896328038699398

/-!
# A232525: Number of (n+1)X(3+1) 0..3 arrays x(i,j) with every row sum{j*x(i,j), j=1..3+1} equal, and every column sum{i*x(i,j), i=1..n+1} equal, with top left element <= 1.

The programs for A232525, there is no canonical definition to state claims against.
-/

/-! ## A232525.P10295199186279864105

`A232526(∑[n+2]+4)`
-/

namespace A232525.P10295199186279864105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232526 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232525.P10295199186279864105

/-! ## A232525.P11603238530828658479

`A232526(A167614(n+1))+A025466(n)`
-/

namespace A232525.P11603238530828658479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232526 (A167614 (n + 1)).toNat + A025466 n

end

end A232525.P11603238530828658479

/-! ## A232525.P159820922990350

`A232526(A167614(n+1))+A185284(n)`
-/

namespace A232525.P159820922990350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232526 (A167614 (n + 1)).toNat + A185284 n

end

end A232525.P159820922990350

/-! ## A232525.P14022181881025651746

`A246578(n)+A232526(A167614(n+1))`
-/

namespace A232525.P14022181881025651746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246578 n + A232526 (A167614 (n + 1)).toNat

end

end A232525.P14022181881025651746

/-! ## A232525.P3095864384144661862

`A299905(n)+A232526(A167614(n+1))`
-/

namespace A232525.P3095864384144661862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A232526 (A167614 (n + 1)).toNat

end

end A232525.P3095864384144661862

/-!
# A232527: Numbers n such that there are no positive integers m such that m^3 is of the form x^2 + n*y^2 and m is not of the form x^2 + n*y^2.

The programs for A232527, there is no canonical definition to state claims against.
-/

/-! ## A232527.P2256407074426793559

`lt[A254438(n+1), A046523(A049480(n+1))]`
-/

namespace A232527.P2256407074426793559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A049480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232527.P2256407074426793559

/-! ## A232527.P3117505036799842629

`lt[A227737(n+1), A286605(A049480(n+1))]`
-/

namespace A232527.P3117505036799842629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (A049480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232527.P3117505036799842629

/-! ## A232527.P692529710269289625

`∑[∏{e}[A341660(n+1)-n, #]]`
-/

namespace A232527.P692529710269289625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341660 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232527.P692529710269289625

/-! ## A232527.P6264951223529372480

`lt[A227577(A246655(n+1)), 1]`
-/

namespace A232527.P6264951223529372480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227577 (A246655 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232527.P6264951223529372480

/-! ## A232527.P10946093952968382461

`lt[A217245(A073491(n+1)), n]`
-/

namespace A232527.P10946093952968382461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217245 (A073491 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232527.P10946093952968382461

/-!
# A232528: Numbers n such that for all primes p where p and p-n are quadratic residues (mod 4*n), 4*p can be written as x^2 + n*y^2.

The programs for A232528, there is no canonical definition to state claims against.
-/

/-! ## A232528.P549921706967170328

`∪[A000926(n+1), A003171(n+1)]`
-/

namespace A232528.P549921706967170328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232528.P549921706967170328

/-! ## A232528.P14979341501045150107

`∪[A003171(n+1), A229461(n+1)]`
-/

namespace A232528.P14979341501045150107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232528.P14979341501045150107

/-! ## A232528.P5270242200615984844

`lt[A232529(n+1), 3]+1`
-/

namespace A232528.P5270242200615984844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232529 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A232528.P5270242200615984844

/-! ## A232528.P10744326860482780948

`eq[5, A007918(A232529(n+1)+3)]+1`
-/

namespace A232528.P10744326860482780948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A232529 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232528.P10744326860482780948

/-! ## A232528.P14915348549443963687

`eq[A232529(n+1), A232550(n+1)]+1`
-/

namespace A232528.P14915348549443963687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A232528.P14915348549443963687

/-! ## A232528.P5570725846702853265

`record[gcd(n+1, A308302(A232529(n+1)+2))]`
-/

namespace A232528.P5570725846702853265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A308302 (A232529 (n + 1) + 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232528.P5570725846702853265

/-! ## A232528.P13294730006010744081

`record[A000027(n+1)/A000045(A232529(n+1))]`
-/

namespace A232528.P13294730006010744081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000045 (A232529 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232528.P13294730006010744081

/-! ## A232528.P952809467860236948

`record[A069782(n+1)/A000045(A232529(n+1))]`
-/

namespace A232528.P952809467860236948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069782 (n + 1) : ℚ) / (A000045 (A232529 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232528.P952809467860236948

/-! ## A232528.P2123696736293192701

`record[A028242(2*n)/A110654(A232529(n+1))]`
-/

namespace A232528.P2123696736293192701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A110654 (A232529 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232528.P2123696736293192701

/-! ## A232528.P6189743343340623568

`record[(A005408(n)-n)/A110654(A232529(n+1))]`
-/

namespace A232528.P6189743343340623568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A110654 (A232529 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232528.P6189743343340623568

/-!
# A232529: Least positive integer m such that for all primes p where p and p-n are quadratic residues (mod 4*n), (m^2)*p can be written as x^2+n*y^2.

The programs for A232529, there is no canonical definition to state claims against.
-/

/-! ## A232529.P6633500676425028814

`sqrt(A232530(n+1))`
-/

namespace A232529.P6633500676425028814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A232530 (n + 1) : ℝ)

end

end A232529.P6633500676425028814

/-! ## A232529.P17828671458136078035

`floor(sqrt(A232530(-xor(n, -1))))`
-/

namespace A232529.P17828671458136078035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A232530 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A232529.P17828671458136078035

/-! ## A232529.P14568291277609628632

`A033676(A232530(abs(xor(n, -1))))`
-/

namespace A232529.P14568291277609628632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A232530 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A232529.P14568291277609628632

/-! ## A232529.P17537838452721905448

`A033676(A232530(-xor(n, -1)))`
-/

namespace A232529.P17537838452721905448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A232530 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A232529.P17537838452721905448

/-! ## A232529.P5847266638302911401

`A000194(A232530(n+1)+1)`
-/

namespace A232529.P5847266638302911401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A232530 (n + 1) + 1).toNat

end

end A232529.P5847266638302911401

/-! ## A232529.P1318960840187843308

`A000196(A232530(n+1)+1)`
-/

namespace A232529.P1318960840187843308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A232530 (n + 1) + 1).toNat

end

end A232529.P1318960840187843308

/-! ## A232529.P18146983089725726121

`A027907(A232530(n+1)+1)`
-/

namespace A232529.P18146983089725726121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A232530 (n + 1) + 1).toNat

end

end A232529.P18146983089725726121

/-! ## A232529.P16570409972734800107

`A133388(A232530(n+1)+1)`
-/

namespace A232529.P16570409972734800107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A232530 (n + 1) + 1).toNat

end

end A232529.P16570409972734800107

/-! ## A232529.P14504633580342769989

`A171173(A232530(n+1)+1)`
-/

namespace A232529.P14504633580342769989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A232530 (n + 1) + 1).toNat

end

end A232529.P14504633580342769989

/-! ## A232529.P15435206320879484335

`A137734(A232530(n+1)-1)`
-/

namespace A232529.P15435206320879484335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A232530 (n + 1) - 1).toNat

end

end A232529.P15435206320879484335

/-!
# A232530: Least square m^2 such that for all primes p where p and p-n are quadratic residues (mod 4*n), (m^2)*p can be written as x^2+n*y^2.

The programs for A232530, there is no canonical definition to state claims against.
-/

/-! ## A232530.P1086550890367160561

`A232529(n+1)²`
-/

namespace A232530.P1086550890367160561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232529 (n + 1) ^ 2

end

end A232530.P1086550890367160561

/-! ## A232530.P2434150134527353167

`∏{e}[3*p?[round(8*n/7)], A232529(#*(n+1))]`
-/

namespace A232530.P2434150134527353167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A232529 (Nat.factorization (f1 n).natAbs p * (n + 1))

end

end A232530.P2434150134527353167

/-! ## A232530.P11087828640994681646

`A002620(2*A232529(n+1))`
-/

namespace A232530.P11087828640994681646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A232529 (n + 1)).toNat

end

end A232530.P11087828640994681646

/-! ## A232530.P861081963322390586

`A008794(2*A232529(n+1))`
-/

namespace A232530.P861081963322390586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A232529 (n + 1)).toNat

end

end A232530.P861081963322390586

/-! ## A232530.P12137821953388850116

`A109594(3*A232529(n+1))`
-/

namespace A232530.P12137821953388850116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (3 * A232529 (n + 1)).toNat

end

end A232530.P12137821953388850116

/-! ## A232530.P5263761281946488441

`A262397(6*A232529(n+1))`
-/

namespace A232530.P5263761281946488441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (6 * A232529 (n + 1)).toNat

end

end A232530.P5263761281946488441

/-! ## A232530.P3761176983491398088

`A232529(A000027(n+1))^2`
-/

namespace A232530.P3761176983491398088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232529 (A000027 (n + 1)).toNat ^ 2

end

end A232530.P3761176983491398088

/-! ## A232530.P13642452908303211953

`A017666(A232529(n+1)^2)`
-/

namespace A232530.P13642452908303211953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A232529 (n + 1) ^ 2).toNat

end

end A232530.P13642452908303211953

/-! ## A232530.P9883006509452469526

`A232529(n+1)^A040000(n)!`
-/

namespace A232530.P9883006509452469526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232529 (n + 1) ^ Nat.factorial (A040000 n).toNat

end

end A232530.P9883006509452469526

/-! ## A232530.P1432400861187594907

`A232529(n+1)^(A000038(n)+2)`
-/

namespace A232530.P1432400861187594907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232529 (n + 1) : ℚ) ^ (A000038 n + 2 : ℤ)

end

end A232530.P1432400861187594907

/-!
# A232531: Numbers n such that the equation a^2 + 2*n*b^2 = 2*c^2 + n*d^2 has no solutions in positive integers for a, b, c, d.

The programs for A232531, the canonical program `A232531.P11988305512953630965` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232531 has offset 1).

The definition of A232531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232531.P13887183971076201374

`comp[n-((n+1)²-2*floor((n+1)/sqrt(2))²)+n]+1`
-/

namespace A232531.P13887183971076201374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) ^ 2 : ℤ) - 2 * ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ ^ 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232531.P13887183971076201374

namespace A232531

/-- `comp[n-((n+1)²-2*floor((n+1)/sqrt(2))²)+n]+1` -/
def P13887183971076201374.Spec : Prop :=
  ∀ n, (P13887183971076201374.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P2122039419101940848

`eq[n, n*a(A035185(n))]` with `a(0)=1, a(1)=3`
-/

namespace A232531.P2122039419101940848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  n * f2 (A035185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232531.P2122039419101940848

namespace A232531

/-- `eq[n, n*a(A035185(n))]` -/
def P2122039419101940848.Spec : Prop :=
  ∀ n, (P2122039419101940848.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P521726640626907328

`lt[A035185(A000007(n)+n), 1]`
-/

namespace A232531.P521726640626907328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232531.P521726640626907328

namespace A232531

/-- `lt[A035185(A000007(n)+n), 1]` -/
def P521726640626907328.Spec : Prop :=
  ∀ n, (P521726640626907328.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P11018823569369210230

`lt[A035185(A004277(n)-n), 1]`
-/

namespace A232531.P11018823569369210230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232531.P11018823569369210230

namespace A232531

/-- `lt[A035185(A004277(n)-n), 1]` -/
def P11018823569369210230.Spec : Prop :=
  ∀ n, (P11018823569369210230.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P11988305512953630965

`comp[A004247(n)+A069011(n)+A004247(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A232531

/-- `comp[A004247(n)+A069011(n)+A004247(n)]` -/
def P11988305512953630965.Spec : Prop :=
  ∀ n, (P11988305512953630965.a n : ℤ) = A232531 (n + 1)

theorem P11988305512953630965.correct : P11988305512953630965.Spec := by
  intro n
  simp only [A232531, Nat.add_sub_cancel]

end A232531

/-! ## A232531.P1616892852217645357

`comp[A004247(n)+A132111(n)-A143844(n)]`
-/

namespace A232531.P1616892852217645357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A132111 n - A143844 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232531.P1616892852217645357

namespace A232531

/-- `comp[A004247(n)+A132111(n)-A143844(n)]` -/
def P1616892852217645357.Spec : Prop :=
  ∀ n, (P1616892852217645357.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P3109367305464546340

`comp[A004247(n)+(A094727(n+1)-1)*A003056(n)]`
-/

namespace A232531.P3109367305464546340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A094727 (n + 1) - 1) * A003056 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232531.P3109367305464546340

namespace A232531

/-- `comp[A004247(n)+(A094727(n+1)-1)*A003056(n)]` -/
def P3109367305464546340.Spec : Prop :=
  ∀ n, (P3109367305464546340.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P5356712947010566961

`comp[A004247(n)+(A108872(n+1)-2)*A003056(n)]`
-/

namespace A232531.P5356712947010566961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A108872 (n + 1) - 2) * A003056 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232531.P5356712947010566961

namespace A232531

/-- `comp[A004247(n)+(A108872(n+1)-2)*A003056(n)]` -/
def P5356712947010566961.Spec : Prop :=
  ∀ n, (P5356712947010566961.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P5893954915280905096

`lt[A035185(A004277(n)), 1]`
-/

namespace A232531.P5893954915280905096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A232531.P5893954915280905096

namespace A232531

/-- `lt[A035185(A004277(n)), 1]` -/
def P5893954915280905096.Spec : Prop :=
  ∀ n, (P5893954915280905096.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P15335866822874120745

`eq[0, A035185(A008574(n))]`
-/

namespace A232531.P15335866822874120745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232531.P15335866822874120745

namespace A232531

/-- `eq[0, A035185(A008574(n))]` -/
def P15335866822874120745.Spec : Prop :=
  ∀ n, (P15335866822874120745.a n : ℤ) = A232531 (n + 1)

end A232531

/-! ## A232531.P7914832187531649432

`eq[0, A035185(A022144(n))]`
-/

namespace A232531.P7914832187531649432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232531.P7914832187531649432

namespace A232531

/-- `eq[0, A035185(A022144(n))]` -/
def P7914832187531649432.Spec : Prop :=
  ∀ n, (P7914832187531649432.a n : ℤ) = A232531 (n + 1)

end A232531

/-!
# A232532: Positive numbers not of the form x^2 - 3*y^2; complement of A084916.

The programs for A232532, there is no canonical definition to state claims against.
-/

/-! ## A232532.P15534819066534373887

`comp[n²%(floor(n*root(3, 2))+2*n+1)]`
-/

namespace A232532.P15534819066534373887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋ + (2 * n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232532.P15534819066534373887

/-! ## A232532.P16445372870072605038

`comp[∪[A084916(n+1), n²]]`
-/

namespace A232532.P16445372870072605038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A232532.P16445372870072605038

/-! ## A232532.P9202393411415022247

`comp[A120865(n+1)-1]+1`
-/

namespace A232532.P9202393411415022247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232532.P9202393411415022247

/-! ## A232532.P5670869060817326033

`comp[A180497(n+1)-1]+1`
-/

namespace A232532.P5670869060817326033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180497 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232532.P5670869060817326033

/-! ## A232532.P7360024545578777953

`comp[A141387(n)+2*n]+1`
-/

namespace A232532.P7360024545578777953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232532.P7360024545578777953

/-! ## A232532.P12743109496662178919

`comp[A127561(n)+A091435(n)]`
-/

namespace A232532.P12743109496662178919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127561 n + A091435 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232532.P12743109496662178919

/-! ## A232532.P10591578395858496316

`comp[A281385(n)+A004247(n)]`
-/

namespace A232532.P10591578395858496316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n + A004247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232532.P10591578395858496316

/-! ## A232532.P2631281437151756497

`comp[A120865(n+1)-A000007(n)]`
-/

namespace A232532.P2631281437151756497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (n + 1) - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A232532.P2631281437151756497

/-!
# A232533: a(n) = Sum_{i=1...n} Sum_{j=1..i} lcm(i,j)/i.

The programs for A232533, the canonical program `A232533.P1925257348327096795` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232533 has offset 1).

The definition of A232533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232533.P1925257348327096795

`∑[A057661(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A232533

/-- `∑[A057661(n+1)]` -/
def P1925257348327096795.Spec : Prop :=
  ∀ n, P1925257348327096795.a n = A232533 (n + 1)

theorem P1925257348327096795.correct : P1925257348327096795.Spec := by
  intro n
  simp only [A232533, Nat.add_sub_cancel]

end A232533

/-! ## A232533.P5093954627419799002

`∑[A332049(n+1)+1]`
-/

namespace A232533.P5093954627419799002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332049 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P5093954627419799002

namespace A232533

/-- `∑[A332049(n+1)+1]` -/
def P5093954627419799002.Spec : Prop :=
  ∀ n, P5093954627419799002.a n = A232533 (n + 1)

theorem P5093954627419799002.correct : P5093954627419799002.Spec := by
  intro n
  simp only [A232533, Nat.add_sub_cancel, A232533.P5093954627419799002.f1, A232533.P5093954627419799002.a, A232533.P1925257348327096795.f1, A232533.P1925257348327096795.a, A057661, A057661.P8562176095648835282.a, A332049, A332049.P9341534089412861099.a, A057660, A057660.P308819105178745283.a, A000290, A000290.P12206242496348924484.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A065764, A065764.P16236740945723656355.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A232533

/-! ## A232533.P1397044888356180197

`∑[A365076(n+1)/2]`
-/

namespace A232533.P1397044888356180197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365076 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P1397044888356180197

namespace A232533

/-- `∑[A365076(n+1)/2]` -/
def P1397044888356180197.Spec : Prop :=
  ∀ n, P1397044888356180197.a n = (A232533 (n + 1) : ℚ)

end A232533

/-! ## A232533.P12050546443619575080

`∑[∑{d}[n+1, A023896(#)]]`
-/

namespace A232533.P12050546443619575080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A023896 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P12050546443619575080

namespace A232533

/-- `∑[∑{d}[n+1, A023896(#)]]` -/
def P12050546443619575080.Spec : Prop :=
  ∀ n, P12050546443619575080.a n = A232533 (n + 1)

end A232533

/-! ## A232533.P17850602086274832773

`∑[round(A057660(n+1)/2)]`
-/

namespace A232533.P17850602086274832773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057660 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P17850602086274832773

namespace A232533

/-- `∑[round(A057660(n+1)/2)]` -/
def P17850602086274832773.Spec : Prop :=
  ∀ n, P17850602086274832773.a n = A232533 (n + 1)

end A232533

/-! ## A232533.P15032580615063906044

`∑[A051193(n+1)/(n+1)]`
-/

namespace A232533.P15032580615063906044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051193 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P15032580615063906044

namespace A232533

/-- `∑[A051193(n+1)/(n+1)]` -/
def P15032580615063906044.Spec : Prop :=
  ∀ n, P15032580615063906044.a n = (A232533 (n + 1) : ℚ)

end A232533

/-! ## A232533.P14985194892534947163

`(A174405(n+1)+n+1)/2`
-/

namespace A232533.P14985194892534947163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174405 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A232533.P14985194892534947163

namespace A232533

/-- `(A174405(n+1)+n+1)/2` -/
def P14985194892534947163.Spec : Prop :=
  ∀ n, P14985194892534947163.a n = (A232533 (n + 1) : ℚ)

end A232533

/-! ## A232533.P639352575935810787

`∑[A341316(n+1)/3]`
-/

namespace A232533.P639352575935810787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341316 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P639352575935810787

namespace A232533

/-- `∑[A341316(n+1)/3]` -/
def P639352575935810787.Spec : Prop :=
  ∀ n, P639352575935810787.a n = (A232533 (n + 1) : ℚ)

end A232533

/-! ## A232533.P8690004734352759739

`∑[∑{#}[n, lcm(n+1, #+1)/(n+1)]]`
-/

namespace A232533.P8690004734352759739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), (Nat.lcm (n + 1) (k + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P8690004734352759739

namespace A232533

/-- `∑[∑{#}[n, lcm(n+1, #+1)/(n+1)]]` -/
def P8690004734352759739.Spec : Prop :=
  ∀ n, P8690004734352759739.a n = (A232533 (n + 1) : ℚ)

end A232533

/-! ## A232533.P9651215505349252413

`∑[∑{d}[n+1, ceil(A000010(#²)/2)]]`
-/

namespace A232533.P9651215505349252413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈(A000010 (d ^ 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P9651215505349252413

namespace A232533

/-- `∑[∑{d}[n+1, ceil(A000010(#²)/2)]]` -/
def P9651215505349252413.Spec : Prop :=
  ∀ n, P9651215505349252413.a n = A232533 (n + 1)

end A232533

/-! ## A232533.P4409204444067710590

`∑[A032742(A057660(n+1)+1)]`
-/

namespace A232533.P4409204444067710590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A057660 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P4409204444067710590

namespace A232533

/-- `∑[A032742(A057660(n+1)+1)]` -/
def P4409204444067710590.Spec : Prop :=
  ∀ n, P4409204444067710590.a n = A232533 (n + 1)

end A232533

/-! ## A232533.P15643974138889160917

`∑[∑{d}[n+1, A004525(A000010(#²))]]`
-/

namespace A232533.P15643974138889160917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A004525 (A000010 (d ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P15643974138889160917

namespace A232533

/-- `∑[∑{d}[n+1, A004525(A000010(#²))]]` -/
def P15643974138889160917.Spec : Prop :=
  ∀ n, P15643974138889160917.a n = A232533 (n + 1)

end A232533

/-!
# A232534: Number of subsets of {1,...,n} containing n and having at least one set partition into 3 blocks with equal element sum.

The programs for A232534, there is no canonical definition to state claims against.
-/

/-! ## A232534.P15911599648939421204

`A048273(A305197(n))`
-/

namespace A232534.P15911599648939421204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A305197 n).toNat

end

end A232534.P15911599648939421204

/-! ## A232534.P13089390138835457410

`A178976(ceil(sqrt(A348197(n))))`
-/

namespace A232534.P13089390138835457410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 ⌈Real.sqrt (A348197 n : ℝ)⌉.toNat

end

end A232534.P13089390138835457410

/-! ## A232534.P3486799471692505592

`A161412(∑[∑[A281617(n)]])`
-/

namespace A232534.P3486799471692505592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281617 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232534.P3486799471692505592

/-! ## A232534.P17914863582180339448

`A126683(n)-A212625(A126683(n))`
-/

namespace A232534.P17914863582180339448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126683 n - A212625 (A126683 n).toNat

end

end A232534.P17914863582180339448

/-! ## A232534.P3298768063600611146

`A004489(A240489(n)+A056360(n+1))`
-/

namespace A232534.P3298768063600611146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (A240489 n + A056360 (n + 1)).toNat

end

end A232534.P3298768063600611146

/-!
# A232535: Triangle T(n,k), 0 <= k <= n, read by rows defined by: T(n,k) = (binomial(2*n,2*k) + binomial(2*n+1,2*k))/2.

The programs for A232535, the canonical program `A232535.P4274907107621973648` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232535 has offset 0).

The definition of A232535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232535.P3475432870499488048

`2*T(n-1,k)+2*T(n-1,k-1)+2*T(n-2,k-1)-T(n-2,k)-T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A232535.P3475432870499488048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUp2 a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A232535.P3475432870499488048

namespace A232535

/-- `2*T(n-1,k)+2*T(n-1,k-1)+2*T(n-2,k-1)-T(n-2,k)-T(row(n)-2, col(n)-2)` -/
def P3475432870499488048.Spec : Prop :=
  ∀ n, P3475432870499488048.a n = A232535 n

end A232535

/-! ## A232535.P537947981450045182

`(A086645(C(row(n)+1, 2)+col(n))+A091042(C(row(n)+1, 2)+col(n)))/2`
-/

namespace A232535.P537947981450045182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086645 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) + A091042 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / 2

end

end A232535.P537947981450045182

namespace A232535

/-- `(A086645(C(row(n)+1, 2)+col(n))+A091042(C(row(n)+1, 2)+col(n)))/2` -/
def P537947981450045182.Spec : Prop :=
  ∀ n, P537947981450045182.a n = (A232535 n : ℚ)

end A232535

/-! ## A232535.P4274907107621973648

`(C(2*row(n), 2*col(n))+C(2*row(n)+1, 2*col(n)))/2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232535

/-- `(C(2*row(n), 2*col(n))+C(2*row(n)+1, 2*col(n)))/2` -/
def P4274907107621973648.Spec : Prop :=
  ∀ n, P4274907107621973648.a n = (A232535 n : ℚ)

end A232535

/-! ## A232535.P746089900113411476

`(A091042(n)+A086645(n))/2`
-/

namespace A232535.P746089900113411476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091042 n + A086645 n : ℚ) / 2

end

end A232535.P746089900113411476

namespace A232535

/-- `(A091042(n)+A086645(n))/2` -/
def P746089900113411476.Spec : Prop :=
  ∀ n, P746089900113411476.a n = (A232535 n : ℚ)

end A232535

/-! ## A232535.P7005472789932622701

`A062344(n)/A122366(n)*A091042(n)`
-/

namespace A232535.P7005472789932622701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062344 n : ℚ) / (A122366 n : ℚ) * (A091042 n : ℚ)

end

end A232535.P7005472789932622701

namespace A232535

/-- `A062344(n)/A122366(n)*A091042(n)` -/
def P7005472789932622701.Spec : Prop :=
  ∀ n, P7005472789932622701.a n = (A232535 n : ℚ)

end A232535

/-! ## A232535.P13150084583524894552

`A091044(n+1)+∑[A091042(n)-A091044(n+1)]`
-/

namespace A232535.P13150084583524894552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n - A091044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091044 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232535.P13150084583524894552

namespace A232535

/-- `A091044(n+1)+∑[A091042(n)-A091044(n+1)]` -/
def P13150084583524894552.Spec : Prop :=
  ∀ n, P13150084583524894552.a n = A232535 n

end A232535

/-! ## A232535.P13791037862385086428

`A091044(n+1)-A034852(A185868(n+1))`
-/

namespace A232535.P13791037862385086428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091044 (n + 1) - A034852 (A185868 (n + 1)).toNat

end

end A232535.P13791037862385086428

namespace A232535

/-- `A091044(n+1)-A034852(A185868(n+1))` -/
def P13791037862385086428.Spec : Prop :=
  ∀ n, P13791037862385086428.a n = A232535 n

end A232535

/-! ## A232535.P6225873284551504346

`A029656(A185868(n+1))/2`
-/

namespace A232535.P6225873284551504346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029656 (A185868 (n + 1)).toNat : ℚ) / 2

end

end A232535.P6225873284551504346

namespace A232535

/-- `A029656(A185868(n+1))/2` -/
def P6225873284551504346.Spec : Prop :=
  ∀ n, P6225873284551504346.a n = (A232535 n : ℚ)

end A232535

/-! ## A232535.P6928395652017073394

`A029653(A061579(n)+A016777(n))/2`
-/

namespace A232535.P6928395652017073394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029653 (A061579 n + A016777 n).toNat : ℚ) / 2

end

end A232535.P6928395652017073394

namespace A232535

/-- `A029653(A061579(n)+A016777(n))/2` -/
def P6928395652017073394.Spec : Prop :=
  ∀ n, P6928395652017073394.a n = (A232535 n : ℚ)

end A232535

/-! ## A232535.P15067135800254564324

`A029653(A114327(n)+A016813(n))/2`
-/

namespace A232535.P15067135800254564324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029653 (A114327 n + A016813 n).toNat : ℚ) / 2

end

end A232535.P15067135800254564324

namespace A232535

/-- `A029653(A114327(n)+A016813(n))/2` -/
def P15067135800254564324.Spec : Prop :=
  ∀ n, P15067135800254564324.a n = (A232535 n : ℚ)

end A232535

/-!
# A232536: Values x of successive minima records of k = log(x)/log(d) where d runs through the positive values of x^3-round(sqrt(x^3))^2.

The programs for A232536, there is no canonical definition to state claims against.
-/

/-! ## A232536.P8028985709127988008

`A154804(A254145(n)-n)`
-/

namespace A232536.P8028985709127988008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (A254145 n - (n : ℤ)).toNat

end

end A232536.P8028985709127988008

/-!
# A232537: Primes p of the form penta(n)-3, where penta(n) is the n-th pentagonal number.

The programs for A232537, the canonical program `A232537.P18138115467809277847` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232537 has offset 1).

The definition of A232537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232537.P18138115467809277847

`p?[Δ[n*(∑[n]-3)]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232537

/-- `p?[Δ[n*(∑[n]-3)]]` -/
def P18138115467809277847.Spec : Prop :=
  ∀ n, P18138115467809277847.a n = A232537 (n + 1)

theorem P18138115467809277847.correct : P18138115467809277847.Spec := by
  intro n
  simp only [A232537, Nat.add_sub_cancel]

end A232537

/-! ## A232537.P11509192663812655887

`∑{d}[p?[∑[A016777(n)]-3], #]-1`
-/

namespace A232537.P11509192663812655887
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A232537.P11509192663812655887

namespace A232537

/-- `∑{d}[p?[∑[A016777(n)]-3], #]-1` -/
def P11509192663812655887.Spec : Prop :=
  ∀ n, P11509192663812655887.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P3285591796402038840

`p?[A000326(n)-3]%A017055(n)`
-/

namespace A232537.P3285591796402038840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017055 n)

end

end A232537.P3285591796402038840

namespace A232537

/-- `p?[A000326(n)-3]%A017055(n)` -/
def P3285591796402038840.Spec : Prop :=
  ∀ n, P3285591796402038840.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P13284922120174825579

`A020985(n)²*p?[A000326(n)-3]`
-/

namespace A232537.P13284922120174825579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P13284922120174825579

namespace A232537

/-- `A020985(n)²*p?[A000326(n)-3]` -/
def P13284922120174825579.Spec : Prop :=
  ∀ n, P13284922120174825579.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P16931434677456771819

`A033999(n)²*p?[A000326(n)-3]`
-/

namespace A232537.P16931434677456771819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P16931434677456771819

namespace A232537

/-- `A033999(n)²*p?[A000326(n)-3]` -/
def P16931434677456771819.Spec : Prop :=
  ∀ n, P16931434677456771819.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P17659737334975911782

`p?[A000326(n)-3]*A056753(2*n)`
-/

namespace A232537.P17659737334975911782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A056753 (2 * n)

end

end A232537.P17659737334975911782

namespace A232537

/-- `p?[A000326(n)-3]*A056753(2*n)` -/
def P17659737334975911782.Spec : Prop :=
  ∀ n, P17659737334975911782.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P7425218409635501276

`A007318(C(2, n))*p?[A000326(n)-3]`
-/

namespace A232537.P7425218409635501276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P7425218409635501276

namespace A232537

/-- `A007318(C(2, n))*p?[A000326(n)-3]` -/
def P7425218409635501276.Spec : Prop :=
  ∀ n, P7425218409635501276.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P15627891581274671566

`A000010(C(2, n)!)*p?[A000326(n)-3]`
-/

namespace A232537.P15627891581274671566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P15627891581274671566

namespace A232537

/-- `A000010(C(2, n)!)*p?[A000326(n)-3]` -/
def P15627891581274671566.Spec : Prop :=
  ∀ n, P15627891581274671566.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P2168729726561262248

`p?[A000326(n)-3]+A008683(4*(n+1))`
-/

namespace A232537.P2168729726561262248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A232537.P2168729726561262248

namespace A232537

/-- `p?[A000326(n)-3]+A008683(4*(n+1))` -/
def P2168729726561262248.Spec : Prop :=
  ∀ n, P2168729726561262248.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P403682206224414322

`A000108(C(2, n+2))*p?[A000326(n)-3]`
-/

namespace A232537.P403682206224414322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P403682206224414322

namespace A232537

/-- `A000108(C(2, n+2))*p?[A000326(n)-3]` -/
def P403682206224414322.Spec : Prop :=
  ∀ n, P403682206224414322.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P2366596473180982106

`A243823(A006530(n+1))+p?[A000326(n)-3]`
-/

namespace A232537.P2366596473180982106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A006530 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P2366596473180982106

namespace A232537

/-- `A243823(A006530(n+1))+p?[A000326(n)-3]` -/
def P2366596473180982106.Spec : Prop :=
  ∀ n, P2366596473180982106.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P9360903363171656731

`A001222(A180931(n+1))*p?[A000326(n)-3]`
-/

namespace A232537.P9360903363171656731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A180931 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P9360903363171656731

namespace A232537

/-- `A001222(A180931(n+1))*p?[A000326(n)-3]` -/
def P9360903363171656731.Spec : Prop :=
  ∀ n, P9360903363171656731.a n = A232537 (n + 1)

end A232537

/-! ## A232537.P5605636517010796681

`A001222(A008578(n+2))*p?[A000326(n)-3]`
-/

namespace A232537.P5605636517010796681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232537.P5605636517010796681

namespace A232537

/-- `A001222(A008578(n+2))*p?[A000326(n)-3]` -/
def P5605636517010796681.Spec : Prop :=
  ∀ n, P5605636517010796681.a n = A232537 (n + 1)

end A232537

/-!
# A232538: Numbers n such that (n(n+1)/2) modulo sigma(n) = n.

The programs for A232538, there is no canonical definition to state claims against.
-/

/-! ## A232538.P9495570365914736887

`eq[A028310(n), A232324(A028310(n))]`
-/

namespace A232538.P9495570365914736887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232324 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232538.P9495570365914736887

/-!
# A232539: Triangle read by rows: T(n,k) = number of partitions of n into at most four parts in which the largest part is equal to k, 0 <= k <= n.

The programs for A232539, there is no canonical definition to state claims against.
-/

/-! ## A232539.P444873311242962500

`A157044(n+1)-A030216(A056520(n))`
-/

namespace A232539.P444873311242962500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157044 (n + 1) - A030216 (A056520 n).toNat

end

end A232539.P444873311242962500

/-! ## A232539.P2204377326753783653

`A118458(A168316(n+1)^A025581(n))`
-/

namespace A232539.P2204377326753783653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (SequenceMachineLib.roundAway ((A168316 (n + 1) : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A232539.P2204377326753783653

/-! ## A232539.P17237808397243203204

`A157044((n+1)*A324510(2*n+5))`
-/

namespace A232539.P17237808397243203204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157044 ((n + 1 : ℤ) * A324510 (2 * n + 5)).toNat

end

end A232539.P17237808397243203204

/-! ## A232539.P7695055720415791475

`A371735(A144644(n))`
-/

namespace A232539.P7695055720415791475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371735 (A144644 n).toNat

end

end A232539.P7695055720415791475

/-! ## A232539.P14678810795462397859

`A101979(A068914(n)²²)*A294934(A339635(n+1))`
-/

namespace A232539.P14678810795462397859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101979 ((A068914 n ^ 2) ^ 2).toNat * A294934 (A339635 (n + 1)).toNat

end

end A232539.P14678810795462397859

/-!
# A232540: Numbers n such that (n(n+1)/2) modulo sigma(n) = 1.

The programs for A232540, there is no canonical definition to state claims against.
-/

/-! ## A232540.P1866251510771888328

`A340512(p?[a(n-1)+3])` with `a(0)=5`
-/

namespace A232540.P1866251510771888328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A232540.P1866251510771888328

/-! ## A232540.P17209343605406961149

`A340512(A007528(n+1))`
-/

namespace A232540.P17209343605406961149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (A007528 (n + 1)).toNat

end

end A232540.P17209343605406961149

/-! ## A232540.P12397043097069741177

`A340512(A003627(n+2))`
-/

namespace A232540.P12397043097069741177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (A003627 (n + 2)).toNat

end

end A232540.P12397043097069741177

/-! ## A232540.P5842254761373666833

`A340512(A045410(n+2))`
-/

namespace A232540.P5842254761373666833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (A045410 (n + 2)).toNat

end

end A232540.P5842254761373666833

/-! ## A232540.P11399870092511151555

`∩[A089017(n+1), A112774(n+1)]`
-/

namespace A232540.P11399870092511151555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232540.P11399870092511151555

/-!
# A232541: Multiplicative Smith numbers: Composite numbers n such that the product of nonzero digits of n = product of nonzero digits of prime factors of n.

The programs for A232541, there is no canonical definition to state claims against.
-/

/-! ## A232541.P4901726608664120514

`eq[A098424(n+1), A354713(n+2)]`
-/

namespace A232541.P4901726608664120514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354713 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232541.P4901726608664120514

/-!
# A232542: Primes in A100683.

The programs for A232542, there is no canonical definition to state claims against.
-/

/-! ## A232542.P7206648716866892277

`A100683(A232543(n+1))`
-/

namespace A232542.P7206648716866892277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (A232543 (n + 1)).toNat

end

end A232542.P7206648716866892277

/-! ## A232542.P12959598948954969727

`A100683(lt[or(1, n), A048785(12*n+1)])`
-/

namespace A232542.P12959598948954969727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (12 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A232542.P12959598948954969727

/-! ## A232542.P936011720254600167

`A100683(eq[A279506(n), A368643(n)])`
-/

namespace A232542.P936011720254600167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279506 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A232542.P936011720254600167

/-!
# A232543: Indices of primes in A100683.

The programs for A232543, there is no canonical definition to state claims against.
-/

/-! ## A232543.P8735449052910000190

`lt[or(1, n), A048785(12*n+1)]`
-/

namespace A232543.P8735449052910000190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (12 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A232543.P8735449052910000190

/-! ## A232543.P10077199282813314150

`lt[acot(n)+n, A000005(12*n+1)²]`
-/

namespace A232543.P10077199282813314150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ) + (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A232543.P10077199282813314150

/-! ## A232543.P4660560044245691792

`∑[A373833(A383144(n))]`
-/

namespace A232543.P4660560044245691792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373833 (A383144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232543.P4660560044245691792

/-! ## A232543.P8312203217153374662

`eq[A279506(n), A368643(n)]`
-/

namespace A232543.P8312203217153374662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279506 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232543.P8312203217153374662

/-! ## A232543.P15192154310835212155

`record[A335230(A166291(n))+1]`
-/

namespace A232543.P15192154310835212155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335230 (A166291 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232543.P15192154310835212155

/-!
# A232544: G.f. is the limit of n-th degree polynomial P(n,x) = P(n-1,x) + a(n)*x^n that yields the least sum of squares of coefficients in P(n,x)^n, where a(n) = {-1,+1}, starting with a(0) = a(1) = 1.

The programs for A232544, there is no canonical definition to state claims against.
-/

/-! ## A232544.P13720644534201615673

`A106400(A059150(n))^A348187(A059537(n+1))`
-/

namespace A232544.P13720644534201615673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106400 (A059150 n).toNat : ℚ) ^ (A348187 (A059537 (n + 1)).toNat : ℤ)

end

end A232544.P13720644534201615673

/-! ## A232544.P9853879964017558661

`A106400(3*n*A165255(n+1))`
-/

namespace A232544.P9853879964017558661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 ((3 * n : ℤ) * A165255 (n + 1)).toNat

end

end A232544.P9853879964017558661

/-! ## A232544.P15362407303207487011

`A020985(A054123(2*n)*A155212(n))`
-/

namespace A232544.P15362407303207487011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A054123 (2 * n) * A155212 n).toNat

end

end A232544.P15362407303207487011

/-! ## A232544.P15793120472895563514

`A106400(lcm(A008486(n), A165255(n+1)))`
-/

namespace A232544.P15793120472895563514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Int.lcm (A008486 n) (A165255 (n + 1)))

end

end A232544.P15793120472895563514

/-! ## A232544.P16271838439473386941

`A020985(or(A005894(n), A048995(n+1)))`
-/

namespace A232544.P16271838439473386941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (Int.lor (A005894 n) (A048995 (n + 1))).toNat

end

end A232544.P16271838439473386941

/-!
# A232545: Number of Euler tours of the complete digraph on n vertices.

The programs for A232545, the canonical program `A232545.P9042853396768078664` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232545 has offset 2).

The definition of A232545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232545.P9042853396768078664

`(n+2)^n*n!^(n+2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232545

/-- `(n+2)^n*n!^(n+2)` -/
def P9042853396768078664.Spec : Prop :=
  ∀ n, (P9042853396768078664.a n : ℤ) = A232545 (n + 2)

theorem P9042853396768078664.correct : P9042853396768078664.Spec := by
  intro n
  simp only [A232545, Nat.add_sub_cancel]

end A232545

/-! ## A232545.P17208154668631578839

`A382362(n+2)/(n+1)`
-/

namespace A232545.P17208154668631578839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382362 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A232545.P17208154668631578839

namespace A232545

/-- `A382362(n+2)/(n+1)` -/
def P17208154668631578839.Spec : Prop :=
  ∀ n, P17208154668631578839.a n = (A232545 (n + 2) : ℚ)

end A232545

/-!
# A232546: Expansion of (1 - 12*x)^(3/2) in powers of x.

The programs for A232546, the canonical program `A232546.P1025507564891596667` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232546 has offset 0).

The definition of A232546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232546.P12609959804075230221

`3^n*A002421(n)`
-/

namespace A232546.P12609959804075230221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002421 n

end

end A232546.P12609959804075230221

namespace A232546

/-- `3^n*A002421(n)` -/
def P12609959804075230221.Spec : Prop :=
  ∀ n, P12609959804075230221.a n = A232546 n

end A232546

/-! ## A232546.P1025507564891596667

`6*(2*n-5)*a(n-1)/n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232546

/-- `6*(2*n-5)*a(n-1)/n` -/
def P1025507564891596667.Spec : Prop :=
  ∀ n, P1025507564891596667.a n = (A232546 n : ℚ)

end A232546

/-! ## A232546.P14966411212063323217

`3*(4-10/n)*a(n-1)` with `a(0)=1`
-/

namespace A232546.P14966411212063323217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((4 - 10 / (n : ℚ)) * a (n - 1))

end

end A232546.P14966411212063323217

namespace A232546

/-- `3*(4-10/n)*a(n-1)` -/
def P14966411212063323217.Spec : Prop :=
  ∀ n, P14966411212063323217.a n = (A232546 n : ℚ)

end A232546

/-! ## A232546.P12686682715907533342

`A002421(n)*A112626(A000217(n))`
-/

namespace A232546.P12686682715907533342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002421 n * A112626 (A000217 n).toNat

end

end A232546.P12686682715907533342

namespace A232546

/-- `A002421(n)*A112626(A000217(n))` -/
def P12686682715907533342.Spec : Prop :=
  ∀ n, P12686682715907533342.a n = A232546 n

end A232546

/-! ## A232546.P8425759785635305055

`A002421(n)*A111575(A008574(n))`
-/

namespace A232546.P8425759785635305055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002421 n * A111575 (A008574 n).toNat

end

end A232546.P8425759785635305055

namespace A232546

/-- `A002421(n)*A111575(A008574(n))` -/
def P8425759785635305055.Spec : Prop :=
  ∀ n, P8425759785635305055.a n = A232546 n

end A232546

/-! ## A232546.P14631303938600200370

`A002421(n)*A143453(A000096(n))`
-/

namespace A232546.P14631303938600200370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002421 n * A143453 (A000096 n).toNat

end

end A232546.P14631303938600200370

namespace A232546

/-- `A002421(n)*A143453(A000096(n))` -/
def P14631303938600200370.Spec : Prop :=
  ∀ n, P14631303938600200370.a n = A232546 n

end A232546

/-!
# A232548: Number of ways to write n = p - pi(p) + 2^k + 2^m with 0 < k <= m, where p is an odd prime and pi(p) is the number of primes not exceeding p.

The programs for A232548, there is no canonical definition to state claims against.
-/

/-! ## A232548.P17455762631190043117

`A275849(A057356(n)*A101130(n+1))`
-/

namespace A232548.P17455762631190043117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A057356 n * A101130 (n + 1)).toNat

end

end A232548.P17455762631190043117

/-! ## A232548.P11972637820433357431

`A275806(A132780(n)-A131270(n))`
-/

namespace A232548.P11972637820433357431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A132780 n - A131270 n).toNat

end

end A232548.P11972637820433357431

/-! ## A232548.P2133496051592697997

`∑{p}[A192352(n+1), #%2]`
-/

namespace A232548.P2133496051592697997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p % 2

end

end A232548.P2133496051592697997

/-! ## A232548.P15658019444614722939

`∑{p}[A192352(n+1), A000035(#)]`
-/

namespace A232548.P15658019444614722939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A232548.P15658019444614722939

/-! ## A232548.P10432010660484526199

`∑{p}[A192352(n+1), A087436(#)]`
-/

namespace A232548.P10432010660484526199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087436 p

end

end A232548.P10432010660484526199

/-!
# A232549: E.g.f.: Sum_{n>=0} ( -log(1 - n*x)/n )^n / n!.

The programs for A232549, there is no canonical definition to state claims against.
-/

/-! ## A232549.P15995968925406971995

`A248183((∑[n]+1)*a(n-1))` with `a(0)=1`
-/

namespace A232549.P15995968925406971995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248183 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * a (n - 1)).toNat

end

end A232549.P15995968925406971995

/-! ## A232549.P1200455057960795907

`A139687(A036487(n))`
-/

namespace A232549.P1200455057960795907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139687 (A036487 n).toNat

end

end A232549.P1200455057960795907

/-!
# A232550: Number of distinct primitive quadratic forms of discriminant = -4n that exist such that every prime p for which p is a quadratic residue (mod 4n) or p-n is a quadratic residue (mod 4n) can be represented by one of them.

The programs for A232550, there is no canonical definition to state claims against.
-/

/-! ## A232550.P10272628333581840374

`(A172398(A232530(n+1))+1)%A316850(n+1)`
-/

namespace A232550.P10272628333581840374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172398 (A232530 (n + 1)).toNat + 1) (A316850 (n + 1))

end

end A232550.P10272628333581840374

/-! ## A232550.P8309261186360883277

`A127238(A232529(n+1)%A094377(n))`
-/

namespace A232550.P8309261186360883277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127238 (Int.tmod (A232529 (n + 1)) (A094377 n)).toNat

end

end A232550.P8309261186360883277

/-! ## A232550.P6810331335122477344

`A127238(A232529(n+1))%A284116(n+1)`
-/

namespace A232550.P6810331335122477344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127238 (A232529 (n + 1)).toNat) (A284116 (n + 1))

end

end A232550.P6810331335122477344

/-! ## A232550.P2802357273814922752

`A111626(A232530(n+1))`
-/

namespace A232550.P2802357273814922752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111626 (A232530 (n + 1)).toNat

end

end A232550.P2802357273814922752

/-! ## A232550.P12849730218242803827

`A129706((A232529(n+1)+3)²)`
-/

namespace A232550.P12849730218242803827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129706 ((A232529 (n + 1) + 3) ^ 2).toNat

end

end A232550.P12849730218242803827

/-!
# A232551: Number of distinct primitive quadratic forms of discriminant -4n that exist such that every prime p for which -n is a quadratic residue mod p can be represented by one of them.

The programs for A232551, there is no canonical definition to state claims against.
-/

/-! ## A232551.P1260619410560770809

`A223708(2*(n+1))`
-/

namespace A232551.P1260619410560770809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223708 (2 * (n + 1))

end

end A232551.P1260619410560770809

/-! ## A232551.P16166408877757342044

`A107628(4*(n+1))`
-/

namespace A232551.P16166408877757342044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (4 * (n + 1))

end

end A232551.P16166408877757342044

/-! ## A232551.P13388351750933505372

`dr(A223708(n+2+n))`
-/

namespace A232551.P13388351750933505372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A223708 (n + 2 + n))

end

end A232551.P13388351750933505372

/-! ## A232551.P13804967267285944987

`and(7, A223708(A103517(n)))`
-/

namespace A232551.P13804967267285944987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A223708 (A103517 n).toNat)

end

end A232551.P13804967267285944987

/-! ## A232551.P7762310905429395346

`dr(A107628(A008574(n+1)))`
-/

namespace A232551.P7762310905429395346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A107628 (A008574 (n + 1)).toNat)

end

end A232551.P7762310905429395346

/-! ## A232551.P2807974000485250589

`dr(A107628(A008586(n+1)))`
-/

namespace A232551.P2807974000485250589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A107628 (A008586 (n + 1)).toNat)

end

end A232551.P2807974000485250589

/-! ## A232551.P8202198013112483037

`A001222(2^A223708(n+2+n))`
-/

namespace A232551.P8202198013112483037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A223708 (n + 2 + n) : ℤ))).toNat

end

end A232551.P8202198013112483037

/-! ## A232551.P10196878567234260901

`and(A125169(n), A223708(n+2+n))`
-/

namespace A232551.P10196878567234260901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125169 n) (A223708 (n + 2 + n))

end

end A232551.P10196878567234260901

/-! ## A232551.P2482265406197964989

`A223708(n+2+n)%A000203(n+2)`
-/

namespace A232551.P2482265406197964989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223708 (n + 2 + n)) (A000203 (n + 2))

end

end A232551.P2482265406197964989

/-! ## A232551.P4425527685291188013

`A223708(n+2+n)^A007318(C(2, n))`
-/

namespace A232551.P4425527685291188013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223708 (n + 2 + n) : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A232551.P4425527685291188013

/-! ## A232551.P18087154366105177792

`or(A000007(n), A223708(A317440(n+1)))`
-/

namespace A232551.P18087154366105177792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223708 (A317440 (n + 1)).toNat)

end

end A232551.P18087154366105177792

/-! ## A232551.P7294285057339621271

`A107628(A008574(n+1))^gcd(3, A000040(n+2))`
-/

namespace A232551.P7294285057339621271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A008574 (n + 1)).toNat ^ Int.gcd 3 (A000040 (n + 2))

end

end A232551.P7294285057339621271

/-! ## A232551.P3866320953608970333

`A223708(A317440(n+1))^(n-(A004273(n)-n))`
-/

namespace A232551.P3866320953608970333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223708 (A317440 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - (A004273 n - (n : ℤ)) : ℤ)

end

end A232551.P3866320953608970333

/-! ## A232551.P3074231103976333425

`A223708(A317440(n+1))+A000007(A223708(n+1))`
-/

namespace A232551.P3074231103976333425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223708 (A317440 (n + 1)).toNat + A000007 (A223708 (n + 1)).toNat

end

end A232551.P3074231103976333425

/-! ## A232551.P17370805540369810029

`A346459(A001316(n+1))+A223708(A317440(n+1))`
-/

namespace A232551.P17370805540369810029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346459 (A001316 (n + 1)).toNat + A223708 (A317440 (n + 1)).toNat

end

end A232551.P17370805540369810029

/-!
# A232553: Maximal values of permanent on (0,1) square matrices of order n with row and column sums 3.

The programs for A232553, the canonical program `A232553.P17018627474089567150` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232553 has offset 3).

The definition of A232553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232553.P17018627474089567150

`6*a(n-3)` with `a(0)=6, a(1)=9, a(2)=13, a(3)=36, a(4)=54, a(5)=81`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232553

/-- `6*a(n-3)` -/
def P17018627474089567150.Spec : Prop :=
  ∀ n, (P17018627474089567150.a n : ℤ) = A232553 (n + 3)

theorem P17018627474089567150.correct : P17018627474089567150.Spec := by
  intro n
  simp only [A232553, Nat.add_sub_cancel]

end A232553

/-! ## A232553.P16658274563466713266

`ogf((6+9x+13x^2+3x^5)/(1-6x^3))`
-/

namespace A232553.P16658274563466713266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 9, 13, 0, 0, 3] [1, 0, 0, -6] n

end

end A232553.P16658274563466713266

namespace A232553

/-- `ogf((6+9x+13x^2+3x^5)/(1-6x^3))` -/
def P16658274563466713266.Spec : Prop :=
  ∀ n, P16658274563466713266.a n = A232553 (n + 3)

end A232553

/-! ## A232553.P4785486907695584049

`A133644(∑[n+2]+4)`
-/

namespace A232553.P4785486907695584049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133644 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232553.P4785486907695584049

namespace A232553

/-- `A133644(∑[n+2]+4)` -/
def P4785486907695584049.Spec : Prop :=
  ∀ n, P4785486907695584049.a n = A232553 (n + 3)

end A232553

/-! ## A232553.P1133813563857018469

`A133644(A167614(n+1))-A184955(n)`
-/

namespace A232553.P1133813563857018469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133644 (A167614 (n + 1)).toNat - A184955 n

end

end A232553.P1133813563857018469

namespace A232553

/-- `A133644(A167614(n+1))-A184955(n)` -/
def P1133813563857018469.Spec : Prop :=
  ∀ n, P1133813563857018469.a n = A232553 (n + 3)

end A232553

/-! ## A232553.P9963542976455799899

`A055642(n)*A133644(A167614(n+1))`
-/

namespace A232553.P9963542976455799899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A133644 (A167614 (n + 1)).toNat

end

end A232553.P9963542976455799899

namespace A232553

/-- `A055642(n)*A133644(A167614(n+1))` -/
def P9963542976455799899.Spec : Prop :=
  ∀ n, P9963542976455799899.a n = A232553 (n + 3)

end A232553

/-!
# A232554: Square numbers whose sum of square divisors is also square.

The programs for A232554, there is no canonical definition to state claims against.
-/

/-! ## A232554.P9618497411483302594

`A046655(n+1)²`
-/

namespace A232554.P9618497411483302594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1) ^ 2

end

end A232554.P9618497411483302594

/-! ## A232554.P17799662967766543941

`A046655(A000027(n+1))^2`
-/

namespace A232554.P17799662967766543941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (A000027 (n + 1)).toNat ^ 2

end

end A232554.P17799662967766543941

/-! ## A232554.P2824300525302831944

`A046655(n+1)^dr(A010002(n))`
-/

namespace A232554.P2824300525302831944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1) ^ SequenceMachineLib.digitalRoot (A010002 n)

end

end A232554.P2824300525302831944

/-! ## A232554.P7425344639470956354

`A046655(n+1)^dr(A017185(n))`
-/

namespace A232554.P7425344639470956354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1) ^ SequenceMachineLib.digitalRoot (A017185 n)

end

end A232554.P7425344639470956354

/-! ## A232554.P14205012701509695117

`A046655(A008611(3*n+2))^2`
-/

namespace A232554.P14205012701509695117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (A008611 (3 * n + 2)).toNat ^ 2

end

end A232554.P14205012701509695117

/-! ## A232554.P4839078811509018302

`A046655(n+1)^(A000007(n)+2)`
-/

namespace A232554.P4839078811509018302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A232554.P4839078811509018302

/-! ## A232554.P8319892677152868559

`A046655(n+1)^(A000038(n)+2)`
-/

namespace A232554.P8319892677152868559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000038 n + 2 : ℤ)

end

end A232554.P8319892677152868559

/-! ## A232554.P8672155056635753200

`A046655(n+1)^A040001(2*n)`
-/

namespace A232554.P8672155056635753200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A040001 (2 * n) : ℤ)

end

end A232554.P8672155056635753200

/-! ## A232554.P1799637633217152339

`A046655(n+1)^gcd(2, A008458(n))`
-/

namespace A232554.P1799637633217152339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1) ^ Int.gcd 2 (A008458 n)

end

end A232554.P1799637633217152339

/-! ## A232554.P13079058161161419598

`A046655(n+1)^A000034(2*n+1)`
-/

namespace A232554.P13079058161161419598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A232554.P13079058161161419598

/-! ## A232554.P68307448640156577

`A046655(n+1)^A020639(2*(n+1))`
-/

namespace A232554.P68307448640156577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A232554.P68307448640156577

/-! ## A232554.P1127517544167553868

`A046655(n+1)^A000032(C(2, n+2))`
-/

namespace A232554.P1127517544167553868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A232554.P1127517544167553868

/-! ## A232554.P18120844189831262669

`A046655(n+1)^A000040(gcd(n, n+1))`
-/

namespace A232554.P18120844189831262669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A232554.P18120844189831262669

/-! ## A232554.P15840357475431052730

`A046655(n+1)*A046655(-xor(n, -1))`
-/

namespace A232554.P15840357475431052730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (n + 1) * A046655 (-Int.xor (n : ℤ) (-1)).toNat

end

end A232554.P15840357475431052730

/-! ## A232554.P17603780386502826283

`A046655(n+1)^(A014963(10*(n+1))+1)`
-/

namespace A232554.P17603780386502826283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A014963 (10 * (n + 1)) + 1 : ℤ)

end

end A232554.P17603780386502826283

/-! ## A232554.P17671045285644196316

`A046655(n+1)^A000040(floor(1/(n+1))!)`
-/

namespace A232554.P17671045285644196316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000040 (Nat.factorial ⌊1 / (n + 1 : ℚ)⌋.toNat) : ℤ)

end

end A232554.P17671045285644196316

/-! ## A232554.P1761372819646564109

`A046655(A000027(n+1))*A046655(n+1)`
-/

namespace A232554.P1761372819646564109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046655 (A000027 (n + 1)).toNat * A046655 (n + 1)

end

end A232554.P1761372819646564109

/-! ## A232554.P11896180064619626177

`A046655(n+1)^A000005(A001097(n+1))`
-/

namespace A232554.P11896180064619626177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000005 (A001097 (n + 1)).toNat : ℤ)

end

end A232554.P11896180064619626177

/-! ## A232554.P14805773810993638683

`A046655(n+1)^A001222(A001748(n+1))`
-/

namespace A232554.P14805773810993638683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A232554.P14805773810993638683

/-! ## A232554.P12880348481415091917

`A046655(n+1)^A000005(A048413(n+1))`
-/

namespace A232554.P12880348481415091917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046655 (n + 1) : ℚ) ^ (A000005 (A048413 (n + 1)).toNat : ℤ)

end

end A232554.P12880348481415091917

/-!
# A232555: Nonsquare numbers whose sum of proper square divisors is a square greater than 1.

The programs for A232555, there is no canonical definition to state claims against.
-/

/-! ## A232555.P12910817104212750389

`filter[A232556(n+1), A049240(#)]`
-/

namespace A232555.P12910817104212750389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A232555.P12910817104212750389

/-! ## A232555.P17662916395769461901

`filter[A232556(n+1), A380458(#)]`
-/

namespace A232555.P17662916395769461901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A232555.P17662916395769461901

/-! ## A232555.P11454330473344861818

`A232556(lt[A230031(n), A322390(2*n+5)])`
-/

namespace A232555.P11454330473344861818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232555.P11454330473344861818

/-! ## A232555.P1285628433704922986

`A232556(lt[A194705(3*n+5), A322390(2*n+5)])`
-/

namespace A232555.P1285628433704922986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194705 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232555.P1285628433704922986

/-! ## A232555.P15384326643911852230

`A232556(lt[A107463(2*n+3), A319079(n)])`
-/

namespace A232555.P15384326643911852230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232555.P15384326643911852230

/-!
# A232556: Numbers whose sum of proper square divisors is a square greater than 1.

The programs for A232556, there is no canonical definition to state claims against.
-/

/-! ## A232556.P7690440869957195051

`∪[A232555(n+1), A232557(n+1)]`
-/

namespace A232556.P7690440869957195051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232556.P7690440869957195051

/-!
# A232557: Square numbers whose sum of proper square divisors is also square greater than 1.

The programs for A232557, there is no canonical definition to state claims against.
-/

/-! ## A232557.P1741127985921233161

`∩[(2*n)², A201879(n+3)²]`
-/

namespace A232557.P1741127985921233161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 3) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232557.P1741127985921233161

/-! ## A232557.P14141000688182582124

`∩[A201879(n+1), A004277(n+3)]²`
-/

namespace A232557.P14141000688182582124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A232557.P14141000688182582124

/-! ## A232557.P15168856903563711644

`∩[A232556(n+1), A016742(n)]`
-/

namespace A232557.P15168856903563711644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232557.P15168856903563711644

/-! ## A232557.P9126017151228729824

`∩[A002808(n+1)², A232556(n+1)]`
-/

namespace A232557.P9126017151228729824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232557.P9126017151228729824

/-! ## A232557.P4019056285389341584

`∩[A232556(n+1), A336590(n+1)²]`
-/

namespace A232557.P4019056285389341584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232557.P4019056285389341584

/-!
# A232558: a(1)=5, q=a(n) is the smallest prime > a(n-1) such that q-2*n = p prime.

The programs for A232558, there is no canonical definition to state claims against.
-/

/-! ## A232558.P9945095413349381782

`A137169(n+1)+1+n`
-/

namespace A232558.P9945095413349381782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137169 (n + 1) + 1 + (n : ℤ)

end

end A232558.P9945095413349381782

/-! ## A232558.P4257451981298509532

`∑[A016724(Δ[A137169(n)])]`
-/

namespace A232558.P4257451981298509532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016724 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232558.P4257451981298509532

/-! ## A232558.P8569429342513068686

`p?[A000265(A137169(n)+n)]`
-/

namespace A232558.P8569429342513068686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A137169 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232558.P8569429342513068686

/-! ## A232558.P1119675026771096123

`p?[A026741(A137169(n)+n)]`
-/

namespace A232558.P1119675026771096123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A137169 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232558.P1119675026771096123

/-! ## A232558.P16756492021205773605

`p?[A137169(A028310(n))+n]`
-/

namespace A232558.P16756492021205773605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137169 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232558.P16756492021205773605

/-! ## A232558.P2773124330869476079

`p?[A091685(A137169(n)+n)]`
-/

namespace A232558.P2773124330869476079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 (A137169 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232558.P2773124330869476079

/-! ## A232558.P14264170576449292372

`p?[A093178(A137169(n)+n)]`
-/

namespace A232558.P14264170576449292372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A137169 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232558.P14264170576449292372

/-! ## A232558.P2052462034333808834

`A141310(A137169(n+1)+n)`
-/

namespace A232558.P2052462034333808834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A137169 (n + 1) + (n : ℤ)).toNat

end

end A232558.P2052462034333808834

/-! ## A232558.P8144351919558889833

`∑[A022998(Δ[A137169(n)])+1]`
-/

namespace A232558.P8144351919558889833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232558.P8144351919558889833

/-! ## A232558.P6788398569137541708

`record[A137169(A008612(n))+A008612(n)]`
-/

namespace A232558.P6788398569137541708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137169 (A008612 n).toNat + A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232558.P6788398569137541708

/-!
# A232559: Sequence (or tree) generated by these rules: 1 is in S, and if x is in S, then x + 1 and 2*x are in S, and duplicates are deleted as they occur.

The programs for A232559, there is no canonical definition to state claims against.
-/

/-! ## A232559.P4812464895450507383

`A048679(∑[(n+1)*A010056(n+1)]-n)`
-/

namespace A232559.P4812464895450507383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A232559.P4812464895450507383

/-! ## A232559.P4960298292018543466

`A059893(A385818(n+1))`
-/

namespace A232559.P4960298292018543466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A385818 (n + 1)).toNat

end

end A232559.P4960298292018543466

/-! ## A232559.P13142964616108805070

`A232638(n+2)-1`
-/

namespace A232559.P13142964616108805070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232638 (n + 2) - 1

end

end A232559.P13142964616108805070

/-! ## A232559.P10139062767284864586

`∑[-Δ[-A232638(n+1)]]`
-/

namespace A232559.P10139062767284864586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A232638 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232559.P10139062767284864586

/-! ## A232559.P10441633788995256226

`A023443(A232638(n+2))`
-/

namespace A232559.P10441633788995256226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A232638 (n + 2)).toNat

end

end A232559.P10441633788995256226

/-! ## A232559.P17005646626540474221

`A346690(A008458(gcd(n, n+1)))+A232638(n+2)`
-/

namespace A232559.P17005646626540474221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 (A008458 (Nat.gcd n (n + 1))).toNat + A232638 (n + 2)

end

end A232559.P17005646626540474221

/-! ## A232559.P17380323450139478215

`A048679(A232560(A048679(n+1)))`
-/

namespace A232559.P17380323450139478215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A232560 (A048679 (n + 1)).toNat).toNat

end

end A232559.P17380323450139478215

/-! ## A232559.P11163026103574094831

`A054429(A358654(n+1))`
-/

namespace A232559.P11163026103574094831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A358654 (n + 1)).toNat

end

end A232559.P11163026103574094831

/-! ## A232559.P7500922808058560783

`round(A232640(A000201(n+1))/2)`
-/

namespace A232559.P7500922808058560783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A232640 (A000201 (n + 1)).toNat : ℚ) / 2)

end

end A232559.P7500922808058560783

/-! ## A232559.P15221038336200728740

`A135529(A280873(n+1))`
-/

namespace A232559.P15221038336200728740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A280873 (n + 1)).toNat

end

end A232559.P15221038336200728740

/-!
# A232560: Inverse permutation of the sequence of positive integers at A232559.

The programs for A232560, there is no canonical definition to state claims against.
-/

/-! ## A232560.P1817256299251599283

`A095903(A081241(2*(n+1)))-A095903(A081241(2*n+1))`
-/

namespace A232560.P1817256299251599283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A081241 (2 * (n + 1))).toNat - A095903 (A081241 (2 * n + 1)).toNat

end

end A232560.P1817256299251599283

/-! ## A232560.P14949920180319231707

`A344682(A095903(2*(n+1)))-A344682(A095903(2*n+1))`
-/

namespace A232560.P14949920180319231707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A095903 (2 * (n + 1))).toNat - A344682 (A095903 (2 * n + 1)).toNat

end

end A232560.P14949920180319231707

/-! ## A232560.P13999234666349489758

`A232639(A232638(a(n-1)+1)+1)-1` with `a(0)=1`
-/

namespace A232560.P13999234666349489758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232639 (A232638 (a (n - 1) + 1).toNat + 1).toNat - 1

end

end A232560.P13999234666349489758

/-! ## A232560.P9916031516074212840

`A049084(p?[A008578(A232639(n+1))])`
-/

namespace A232560.P9916031516074212840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A232639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A232560.P9916031516074212840

/-! ## A232560.P3654749968210105189

`A048680(A232559(A048680(n+1)))`
-/

namespace A232560.P3654749968210105189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A232559 (A048680 (n + 1)).toNat).toNat

end

end A232560.P3654749968210105189

/-! ## A232560.P12351865036218947301

`A232641(A135533(A003754(A232639(n+2))))`
-/

namespace A232560.P12351865036218947301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232641 (A135533 (A003754 (A232639 (n + 2)).toNat).toNat).toNat

end

end A232560.P12351865036218947301

/-! ## A232560.P9246811508783621441

`A000071(2*n+1)+A232639(n+2)-A000045(2*n+1)`
-/

namespace A232560.P9246811508783621441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 1) + (A232639 (n + 2) - A000045 (2 * n + 1))

end

end A232560.P9246811508783621441

/-! ## A232560.P2543478795972116173

`A356874(A370762(n))`
-/

namespace A232560.P2543478795972116173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A370762 n).toNat

end

end A232560.P2543478795972116173

/-! ## A232560.P16388853200476490834

`A345253(A059893(n+1))`
-/

namespace A232560.P16388853200476490834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A059893 (n + 1)).toNat

end

end A232560.P16388853200476490834

/-! ## A232560.P3788342175828424617

`A345253(A232559(A345253(n+1)))`
-/

namespace A232560.P3788342175828424617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A232559 (A345253 (n + 1)).toNat).toNat

end

end A232560.P3788342175828424617

/-!
# A232562: Inverse permutation of the sequence of positive integers at A232561.

The programs for A232562, there is no canonical definition to state claims against.
-/

/-! ## A232562.P5586891801917912343

`A257470(n)+A247763(A199523(n+1))`
-/

namespace A232562.P5586891801917912343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257470 n + A247763 (A199523 (n + 1)).toNat

end

end A232562.P5586891801917912343

/-!
# A232563: Sequence (or tree) generated by these rules: 1 is in S, and if x is in S, then x + 1 and 4*x are in S, and duplicates are deleted as they occur.

The programs for A232563, there is no canonical definition to state claims against.
-/

/-! ## A232563.P3378033910033174062

`A333627(∑{d}[A007694(n+1), #])`
-/

namespace A232563.P3378033910033174062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A232563.P3378033910033174062

/-! ## A232563.P14598973884895685564

`A333627(∑{d}[A067946(n+1), #])`
-/

namespace A232563.P14598973884895685564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A232563.P14598973884895685564

/-! ## A232563.P16396815773560165062

`A333627(∑{d}[A145853(n+1), #])`
-/

namespace A232563.P16396815773560165062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A232563.P16396815773560165062

/-! ## A232563.P1593865959525886992

`A334437(eq[A028233(n+1), A291766(n)])`
-/

namespace A232563.P1593865959525886992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A232563.P1593865959525886992

/-! ## A232563.P4241430206149527230

`A333484(lt[A000045(n), A196367(n+1)])`
-/

namespace A232563.P4241430206149527230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232563.P4241430206149527230

/-!
# A232567: Number of non-equivalent binary n X n matrices with two nonadjacent 1's.

The programs for A232567, the canonical program `A232567.P15190241317915861122` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232567 has offset 1).

The definition of A232567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232567.P15190241317915861122

`ogf((x+4x^2+3x^3+3x^4+x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232567

/-- `ogf((x+4x^2+3x^3+3x^4+x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P15190241317915861122.Spec : Prop :=
  ∀ n, P15190241317915861122.a n = A232567 (n + 1)

theorem P15190241317915861122.correct : P15190241317915861122.Spec := by
  intro n
  simp only [A232567, Nat.add_sub_cancel]

end A232567

/-! ## A232567.P17228542913055406436

`∑[∑[floor(3*n/2)]]+floor((n/2)²)²`
-/

namespace A232567.P17228542913055406436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊((n : ℚ) / 2) ^ 2⌋ ^ 2

end

end A232567.P17228542913055406436

namespace A232567

/-- `∑[∑[floor(3*n/2)]]+floor((n/2)²)²` -/
def P17228542913055406436.Spec : Prop :=
  ∀ n, P17228542913055406436.a n = A232567 (n + 1)

end A232567

/-! ## A232567.P196678260503397300

`∑[A008619(n)*A061925(n)-1]`
-/

namespace A232567.P196678260503397300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A061925 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232567.P196678260503397300

namespace A232567

/-- `∑[A008619(n)*A061925(n)-1]` -/
def P196678260503397300.Spec : Prop :=
  ∀ n, P196678260503397300.a n = A232567 (n + 1)

end A232567

/-! ## A232567.P4036951168150752050

`abs(A002620(n+1)-A014409(n+1))`
-/

namespace A232567.P4036951168150752050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002620 (n + 1) - A014409 (n + 1)|

end

end A232567.P4036951168150752050

namespace A232567

/-- `abs(A002620(n+1)-A014409(n+1))` -/
def P4036951168150752050.Spec : Prop :=
  ∀ n, P4036951168150752050.a n = A232567 (n + 1)

end A232567

/-! ## A232567.P18428566529337087206

`(A279111(n+1)+A014409(n+1))/2`
-/

namespace A232567.P18428566529337087206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279111 (n + 1) + A014409 (n + 1) : ℚ) / 2

end

end A232567.P18428566529337087206

namespace A232567

/-- `(A279111(n+1)+A014409(n+1))/2` -/
def P18428566529337087206.Spec : Prop :=
  ∀ n, P18428566529337087206.a n = (A232567 (n + 1) : ℚ)

end A232567

/-!
# A232568: Number of non-equivalent binary n X n matrices with three pairwise nonadjacent 1's.

The programs for A232568, the canonical program `A232568.P5632391432484722972` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232568 has offset 2).

The definition of A232568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232568.P5632391432484722972

`ogf((6x+22x^2+84x^3+77x^4+70x^5-9x^6-12x^7-x^8+4x^9-x^10)/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232568

/-- `ogf((6x+22x^2+84x^3+77x^4+70x^5-9x^6-12x^7-x^8+4x^9-x^10)/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))` -/
def P5632391432484722972.Spec : Prop :=
  ∀ n, P5632391432484722972.a n = A232568 (n + 2)

theorem P5632391432484722972.correct : P5632391432484722972.Spec := by
  intro n
  simp only [A232568, Nat.add_sub_cancel]

end A232568

/-!
# A232571: Number of (n+1) X (n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232571, there is no canonical definition to state claims against.
-/

/-! ## A232571.P5213899640260099861

`A232579((n+1)²+n²)`
-/

namespace A232571.P5213899640260099861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 ((n + 1) ^ 2 + n ^ 2)

end

end A232571.P5213899640260099861

/-!
# A232572: Number of (n+1)X(1+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232572, there is no canonical definition to state claims against.
-/

/-! ## A232572.P1989362491598229803

`A232579(∑[n]+1)`
-/

namespace A232572.P1989362491598229803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232572.P1989362491598229803

/-! ## A232572.P14870272708969245540

`lcm(2, A232579(A000124(n)))`
-/

namespace A232572.P14870272708969245540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232579 (A000124 n).toNat)

end

end A232572.P14870272708969245540

/-! ## A232572.P7583620111656744249

`record[A176270(n)*A232579(n+1)]`
-/

namespace A232572.P7583620111656744249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A232579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232572.P7583620111656744249

/-! ## A232572.P8035321832170036847

`record[gcd(A062707(n), A232579(n+1))]`
-/

namespace A232572.P8035321832170036847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062707 n) (A232579 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232572.P8035321832170036847

/-! ## A232572.P8892016720559839365

`A014963(A038255(n))*A232579(A000124(n))`
-/

namespace A232572.P8892016720559839365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038255 n).toNat * A232579 (A000124 n).toNat

end

end A232572.P8892016720559839365

/-!
# A232573: Number of (n+1)X(2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232573, there is no canonical definition to state claims against.
-/

/-! ## A232573.P11507967683613980764

`A232579(∑[n+1]+2)`
-/

namespace A232573.P11507967683613980764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232573.P11507967683613980764

/-! ## A232573.P17658715081782531617

`record[A232579(abs(A201163(n)))]`
-/

namespace A232573.P17658715081782531617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232573.P17658715081782531617

/-! ## A232573.P11824874796661991097

`lcm(2, A232579(A000096(n+1)))`
-/

namespace A232573.P11824874796661991097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232579 (A000096 (n + 1)).toNat)

end

end A232573.P11824874796661991097

/-! ## A232573.P14010628353579240699

`record[A232579(Δ[A003453(n+5)])]`
-/

namespace A232573.P14010628353579240699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232573.P14010628353579240699

/-! ## A232573.P7775276607173045627

`A232579(A000096(n+1))+A014083(n)`
-/

namespace A232573.P7775276607173045627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A000096 (n + 1)).toNat + A014083 n

end

end A232573.P7775276607173045627

/-!
# A232574: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232574, there is no canonical definition to state claims against.
-/

/-! ## A232574.P18136905887115995521

`A232579(∑[n+2]+4)`
-/

namespace A232574.P18136905887115995521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232574.P18136905887115995521

/-! ## A232574.P702473699960469380

`lcm(2, A232579(A167614(n+1)))`
-/

namespace A232574.P702473699960469380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232579 (A167614 (n + 1)).toNat)

end

end A232574.P702473699960469380

/-! ## A232574.P11322806556952874846

`A232579(A167614(n+1))+A185274(n)`
-/

namespace A232574.P11322806556952874846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A167614 (n + 1)).toNat + A185274 n

end

end A232574.P11322806556952874846

/-! ## A232574.P14847767080531520521

`A232579(A167614(n+1))%A232575(n+1)`
-/

namespace A232574.P14847767080531520521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232579 (A167614 (n + 1)).toNat) (A232575 (n + 1))

end

end A232574.P14847767080531520521

/-! ## A232574.P6821410156542011165

`A232579(A055998(n)+6)%A232576(n+1)`
-/

namespace A232574.P6821410156542011165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232579 (A055998 n + 6).toNat) (A232576 (n + 1))

end

end A232574.P6821410156542011165

/-!
# A232575: Number of (n+1)X(4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232575, there is no canonical definition to state claims against.
-/

/-! ## A232575.P4487767973226992836

`A232579(A141214(n)+7)`
-/

namespace A232575.P4487767973226992836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A141214 n + 7).toNat

end

end A232575.P4487767973226992836

/-! ## A232575.P3441665501802318114

`A232579(A052905(n)+9)`
-/

namespace A232575.P3441665501802318114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A052905 n + 9).toNat

end

end A232575.P3441665501802318114

/-! ## A232575.P14638155922257808539

`A232579(A055999(n)+10)`
-/

namespace A232575.P14638155922257808539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A055999 n + 10).toNat

end

end A232575.P14638155922257808539

/-! ## A232575.P6846363756469967822

`A232579(A167614(n+2)+1)`
-/

namespace A232575.P6846363756469967822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A167614 (n + 2) + 1).toNat

end

end A232575.P6846363756469967822

/-! ## A232575.P3057616869241720064

`A232579(eq[5, A131818(n+1)])`
-/

namespace A232575.P3057616869241720064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232575.P3057616869241720064

/-!
# A232576: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232576, there is no canonical definition to state claims against.
-/

/-! ## A232576.P10374887017591956094

`A232579(A374005(n+1))`
-/

namespace A232576.P10374887017591956094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A374005 (n + 1)).toNat

end

end A232576.P10374887017591956094

/-! ## A232576.P1756805449062659343

`A232579(A055999(n+3)-2*n)`
-/

namespace A232576.P1756805449062659343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A232576.P1756805449062659343

/-! ## A232576.P10236006174222319025

`A232579(A166136(n+1)+A016789(n))`
-/

namespace A232576.P10236006174222319025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A166136 (n + 1) + A016789 n).toNat

end

end A232576.P10236006174222319025

/-!
# A232577: Number of (n+1)X(6+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232577, there is no canonical definition to state claims against.
-/

/-! ## A232577.P2484612401444303128

`A232579(A055999(n+3)+1)`
-/

namespace A232577.P2484612401444303128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A055999 (n + 3) + 1).toNat

end

end A232577.P2484612401444303128

/-!
# A232578: Number of (n+1)X(7+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, vertically or antidiagonally.

The programs for A232578, there is no canonical definition to state claims against.
-/

/-! ## A232578.P6615450318991060156

`A232579(A055999(n+3)+13)`
-/

namespace A232578.P6615450318991060156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (A055999 (n + 3) + 13).toNat

end

end A232578.P6615450318991060156

/-!
# A232580: Number of binary sequences of length n that contain at least one contiguous subsequence 011.

The programs for A232580, the canonical program `A232580.P9618455496264222135` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232580 has offset 0).

The definition of A232580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232580.P14251716652846690732

`2^n-A000045(n+3)+1`
-/

namespace A232580.P14251716652846690732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000045 (n + 3) + 1

end

end A232580.P14251716652846690732

namespace A232580

/-- `2^n-A000045(n+3)+1` -/
def P14251716652846690732.Spec : Prop :=
  ∀ n, P14251716652846690732.a n = A232580 n

end A232580

/-! ## A232580.P3818336822774104033

`ogf((x^3-x^4)/(1-5x+8x^2-3x^3-3x^4+2x^5))`
-/

namespace A232580.P3818336822774104033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, -1] [1, -5, 8, -3, -3, 2] n

end

end A232580.P3818336822774104033

namespace A232580

/-- `ogf((x^3-x^4)/(1-5x+8x^2-3x^3-3x^4+2x^5))` -/
def P3818336822774104033.Spec : Prop :=
  ∀ n, P3818336822774104033.a n = A232580 n

end A232580

/-! ## A232580.P9618455496264222135

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232580

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P9618455496264222135.Spec : Prop :=
  ∀ n, P9618455496264222135.a n = A232580 n

theorem P9618455496264222135.correct : P9618455496264222135.Spec := by
  intro n
  simp only [A232580]

end A232580

/-! ## A232580.P17030930821135824390

`2^n-∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A232580.P17030930821135824390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A232580.P17030930821135824390

namespace A232580

/-- `2^n-∑[a(n-1)+a(n-2)]` -/
def P17030930821135824390.Spec : Prop :=
  ∀ n, P17030930821135824390.a n = A232580 n

end A232580

/-! ## A232580.P12596467145530531195

`∑[A008466(abs(1-n))]`
-/

namespace A232580.P12596467145530531195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232580.P12596467145530531195

namespace A232580

/-- `∑[A008466(abs(1-n))]` -/
def P12596467145530531195.Spec : Prop :=
  ∀ n, P12596467145530531195.a n = A232580 n

end A232580

/-! ## A232580.P9123978410892658772

`2^n-A000071(n+3)`
-/

namespace A232580.P9123978410892658772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000071 (n + 3)

end

end A232580.P9123978410892658772

namespace A232580

/-- `2^n-A000071(n+3)` -/
def P9123978410892658772.Spec : Prop :=
  ∀ n, P9123978410892658772.a n = A232580 n

end A232580

/-! ## A232580.P15556527248214186687

`2^n-∑[A000045(n+1)]`
-/

namespace A232580.P15556527248214186687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232580.P15556527248214186687

namespace A232580

/-- `2^n-∑[A000045(n+1)]` -/
def P15556527248214186687.Spec : Prop :=
  ∀ n, P15556527248214186687.a n = A232580 n

end A232580

/-! ## A232580.P8909429651702502883

`A008466(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A232580.P8909429651702502883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008466 (n - 1) + a (n - 1)

end

end A232580.P8909429651702502883

namespace A232580

/-- `A008466(n-1)+a(n-1)` -/
def P8909429651702502883.Spec : Prop :=
  ∀ n, P8909429651702502883.a n = A232580 n

end A232580

/-! ## A232580.P1467750899602749515

`A000071(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A232580.P1467750899602749515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000071 n + 2 * a (n - 1)

end

end A232580.P1467750899602749515

namespace A232580

/-- `A000071(n)+2*a(n-1)` -/
def P1467750899602749515.Spec : Prop :=
  ∀ n, P1467750899602749515.a n = A232580 n

end A232580

/-! ## A232580.P8616035310290167349

`2*a(n-1)+A000045(n)-1` with `a(0)=0`
-/

namespace A232580.P8616035310290167349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (A000045 n - 1)

end

end A232580.P8616035310290167349

namespace A232580

/-- `2*a(n-1)+A000045(n)-1` -/
def P8616035310290167349.Spec : Prop :=
  ∀ n, P8616035310290167349.a n = A232580 n

end A232580

/-! ## A232580.P13101552592838408086

`A235996(n)+A006478(n)`
-/

namespace A232580.P13101552592838408086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235996 n + A006478 n

end

end A232580.P13101552592838408086

namespace A232580

/-- `A235996(n)+A006478(n)` -/
def P13101552592838408086.Spec : Prop :=
  ∀ n, P13101552592838408086.a n = A232580 n

end A232580

/-! ## A232580.P4225131455824373692

`A000225(n)-A001911(n)`
-/

namespace A232580.P4225131455824373692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A001911 n

end

end A232580.P4225131455824373692

namespace A232580

/-- `A000225(n)-A001911(n)` -/
def P4225131455824373692.Spec : Prop :=
  ∀ n, P4225131455824373692.a n = A232580 n

end A232580

/-! ## A232580.P10424569950174714356

`A000051(n)-A020695(n)`
-/

namespace A232580.P10424569950174714356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A020695 n

end

end A232580.P10424569950174714356

namespace A232580

/-- `A000051(n)-A020695(n)` -/
def P10424569950174714356.Spec : Prop :=
  ∀ n, P10424569950174714356.a n = A232580 n

end A232580

/-! ## A232580.P7718420503054740966

`A062709(n)-A018910(n)`
-/

namespace A232580.P7718420503054740966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n - A018910 n

end

end A232580.P7718420503054740966

namespace A232580

/-- `A062709(n)-A018910(n)` -/
def P7718420503054740966.Spec : Prop :=
  ∀ n, P7718420503054740966.a n = A232580 n

end A232580

/-! ## A232580.P18086423547698355417

`A099036(n)-A001595(n)`
-/

namespace A232580.P18086423547698355417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n - A001595 n

end

end A232580.P18086423547698355417

namespace A232580

/-- `A099036(n)-A001595(n)` -/
def P18086423547698355417.Spec : Prop :=
  ∀ n, P18086423547698355417.a n = A232580 n

end A232580

/-! ## A232580.P8282273313106687729

`A052548(n)-A048577(n)`
-/

namespace A232580.P8282273313106687729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - A048577 n

end

end A232580.P8282273313106687729

namespace A232580

/-- `A052548(n)-A048577(n)` -/
def P8282273313106687729.Spec : Prop :=
  ∀ n, P8282273313106687729.a n = A232580 n

end A232580

/-! ## A232580.P9951537708724807535

`A088859(n)-A022403(n)`
-/

namespace A232580.P9951537708724807535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088859 n - A022403 n

end

end A232580.P9951537708724807535

namespace A232580

/-- `A088859(n)-A022403(n)` -/
def P9951537708724807535.Spec : Prop :=
  ∀ n, P9951537708724807535.a n = A232580 n

end A232580

/-! ## A232580.P12857147279034135139

`A119587(n)-A000045(n)`
-/

namespace A232580.P12857147279034135139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 n - A000045 n

end

end A232580.P12857147279034135139

namespace A232580

/-- `A119587(n)-A000045(n)` -/
def P12857147279034135139.Spec : Prop :=
  ∀ n, P12857147279034135139.a n = A232580 n

end A232580

/-! ## A232580.P14879336766453675848

`A132109(n)-A081662(n)`
-/

namespace A232580.P14879336766453675848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132109 n - A081662 n

end

end A232580.P14879336766453675848

namespace A232580

/-- `A132109(n)-A081662(n)` -/
def P14879336766453675848.Spec : Prop :=
  ∀ n, P14879336766453675848.a n = A232580 n

end A232580

/-! ## A232580.P5576322704952448077

`A084174(n)-A215004(n)`
-/

namespace A232580.P5576322704952448077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084174 n - A215004 n

end

end A232580.P5576322704952448077

namespace A232580

/-- `A084174(n)-A215004(n)` -/
def P5576322704952448077.Spec : Prop :=
  ∀ n, P5576322704952448077.a n = A232580 n

end A232580

/-!
# A232581: Number of (n+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232581, there is no canonical definition to state claims against.
-/

/-! ## A232581.P10686783237229543658

`A232589((n+1)²+n²)`
-/

namespace A232581.P10686783237229543658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 ((n + 1) ^ 2 + n ^ 2)

end

end A232581.P10686783237229543658

/-! ## A232581.P7295613810105107140

`lcm(2, A232589(A001844(n)))`
-/

namespace A232581.P7295613810105107140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232589 (A001844 n).toNat)

end

end A232581.P7295613810105107140

/-! ## A232581.P14650520636746504659

`record[A003982(n)*A232589(n+1)]`
-/

namespace A232581.P14650520636746504659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232581.P14650520636746504659

/-! ## A232581.P6171789681051731753

`A057427(n)*A232589(A001844(n))`
-/

namespace A232581.P6171789681051731753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A232589 (A001844 n).toNat

end

end A232581.P6171789681051731753

/-! ## A232581.P4040520142645014424

`A178334(n)*A232589(A001844(n))`
-/

namespace A232581.P4040520142645014424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A232589 (A001844 n).toNat

end

end A232581.P4040520142645014424

/-!
# A232582: Number of (n+1) X (1+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232582, the canonical program `A232582.P17829458953101438523` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232582 has offset 1).

The definition of A232582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232582.P10643288039668382071

`ogf(2x/(1-2x+x^2-x^3))`
-/

namespace A232582.P10643288039668382071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, 1, -1] n

end

end A232582.P10643288039668382071

namespace A232582

/-- `ogf(2x/(1-2x+x^2-x^3))` -/
def P10643288039668382071.Spec : Prop :=
  ∀ n, P10643288039668382071.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P17829458953101438523

`record[a(n-2)-a(n-3)]` with `a(0)=0, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232582

/-- `record[a(n-2)-a(n-3)]` -/
def P17829458953101438523.Spec : Prop :=
  ∀ n, P17829458953101438523.a n = A232582 (n + 1)

theorem P17829458953101438523.correct : P17829458953101438523.Spec := by
  intro n
  simp only [A232582, Nat.add_sub_cancel]

end A232582

/-! ## A232582.P5632181289413411230

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A232582.P5632181289413411230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 4))

end

end A232582.P5632181289413411230

namespace A232582

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P5632181289413411230.Spec : Prop :=
  ∀ n, (P5632181289413411230.a n : ℤ) = A232582 (n + 1)

end A232582

/-! ## A232582.P4080553173959818888

`2*a(n-1)-(a(n-2)-a(n-3))` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A232582.P4080553173959818888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  2 * a (n - 1) - (a (n - 2) - a (n - 3))

end

end A232582.P4080553173959818888

namespace A232582

/-- `2*a(n-1)-(a(n-2)-a(n-3))` -/
def P4080553173959818888.Spec : Prop :=
  ∀ n, P4080553173959818888.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P16202887449598056433

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A232582.P16202887449598056433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A232582.P16202887449598056433

namespace A232582

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P16202887449598056433.Spec : Prop :=
  ∀ n, P16202887449598056433.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P11669280917857997103

`2*A005314(n)`
-/

namespace A232582.P11669280917857997103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005314 n

end

end A232582.P11669280917857997103

namespace A232582

/-- `2*A005314(n)` -/
def P11669280917857997103.Spec : Prop :=
  ∀ n, P11669280917857997103.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P600124550596327103

`∑[2*A005251(n)]`
-/

namespace A232582.P600124550596327103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232582.P600124550596327103

namespace A232582

/-- `∑[2*A005251(n)]` -/
def P600124550596327103.Spec : Prop :=
  ∀ n, P600124550596327103.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P15203210339969022397

`A291289(2*(n+2))`
-/

namespace A232582.P15203210339969022397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (2 * (n + 2))

end

end A232582.P15203210339969022397

namespace A232582

/-- `A291289(2*(n+2))` -/
def P15203210339969022397.Spec : Prop :=
  ∀ n, P15203210339969022397.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P11332368655089157587

`2*A182097(Δ[n²])`
-/

namespace A232582.P11332368655089157587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232582.P11332368655089157587

namespace A232582

/-- `2*A182097(Δ[n²])` -/
def P11332368655089157587.Spec : Prop :=
  ∀ n, P11332368655089157587.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P903818475544748118

`record[Δ[2*A124745(n)]]`
-/

namespace A232582.P903818475544748118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232582.P903818475544748118

namespace A232582

/-- `record[Δ[2*A124745(n)]]` -/
def P903818475544748118.Spec : Prop :=
  ∀ n, P903818475544748118.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P15084041275382285398

`∑[2*A114775(4*n)]`
-/

namespace A232582.P15084041275382285398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114775 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232582.P15084041275382285398

namespace A232582

/-- `∑[2*A114775(4*n)]` -/
def P15084041275382285398.Spec : Prop :=
  ∀ n, P15084041275382285398.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P2181038682408829347

`∑[A291289(n+1+n)]`
-/

namespace A232582.P2181038682408829347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232582.P2181038682408829347

namespace A232582

/-- `∑[A291289(n+1+n)]` -/
def P2181038682408829347.Spec : Prop :=
  ∀ n, P2181038682408829347.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P13952258980889027357

`2*A000931(2*(n+2))`
-/

namespace A232582.P13952258980889027357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000931 (2 * (n + 2))

end

end A232582.P13952258980889027357

namespace A232582

/-- `2*A000931(2*(n+2))` -/
def P13952258980889027357.Spec : Prop :=
  ∀ n, P13952258980889027357.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P683783309386713143

`2*A078027(2*(n+3))`
-/

namespace A232582.P683783309386713143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078027 (2 * (n + 3))

end

end A232582.P683783309386713143

namespace A232582

/-- `2*A078027(2*(n+3))` -/
def P683783309386713143.Spec : Prop :=
  ∀ n, P683783309386713143.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P63606142448807271

`2*A124745(2*(n+3))`
-/

namespace A232582.P63606142448807271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124745 (2 * (n + 3))

end

end A232582.P63606142448807271

namespace A232582

/-- `2*A124745(2*(n+3))` -/
def P63606142448807271.Spec : Prop :=
  ∀ n, P63606142448807271.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P5026956131929807713

`2*A114775(4*n+5)`
-/

namespace A232582.P5026956131929807713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114775 (4 * n + 5)

end

end A232582.P5026956131929807713

namespace A232582

/-- `2*A114775(4*n+5)` -/
def P5026956131929807713.Spec : Prop :=
  ∀ n, P5026956131929807713.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P1155970558579907320

`2*(A052954(2*n+1)-1)`
-/

namespace A232582.P1155970558579907320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052954 (2 * n + 1) - 1)

end

end A232582.P1155970558579907320

namespace A232582

/-- `2*(A052954(2*n+1)-1)` -/
def P1155970558579907320.Spec : Prop :=
  ∀ n, P1155970558579907320.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P16258814879723025447

`2*A228361(A004274(n+1))`
-/

namespace A232582.P16258814879723025447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228361 (A004274 (n + 1)).toNat

end

end A232582.P16258814879723025447

namespace A232582

/-- `2*A228361(A004274(n+1))` -/
def P16258814879723025447.Spec : Prop :=
  ∀ n, P16258814879723025447.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P2828591876143700060

`2*A228361(A004280(n+1))`
-/

namespace A232582.P2828591876143700060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228361 (A004280 (n + 1)).toNat

end

end A232582.P2828591876143700060

namespace A232582

/-- `2*A228361(A004280(n+1))` -/
def P2828591876143700060.Spec : Prop :=
  ∀ n, P2828591876143700060.a n = A232582 (n + 1)

end A232582

/-! ## A232582.P7488284472838284126

`∑[A049853(n)-Δ[A005251(n)]]`
-/

namespace A232582.P7488284472838284126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232582.P7488284472838284126

namespace A232582

/-- `∑[A049853(n)-Δ[A005251(n)]]` -/
def P7488284472838284126.Spec : Prop :=
  ∀ n, P7488284472838284126.a n = A232582 (n + 1)

end A232582

/-!
# A232583: Number of (n+1)X(2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232583, the canonical program `A232583.P6660089991405207281` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232583 has offset 1).

The definition of A232583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232583.P164705311266022607

`Δ[ogf((2+4x)/(1-4x+x^2+x^3-2x^4))]`
-/

namespace A232583.P164705311266022607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4] [1, -4, 1, 1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232583.P164705311266022607

namespace A232583

/-- `Δ[ogf((2+4x)/(1-4x+x^2+x^3-2x^4))]` -/
def P164705311266022607.Spec : Prop :=
  ∀ n, P164705311266022607.a n = A232583 (n + 1)

end A232583

/-! ## A232583.P17857845939272898576

`ogf((10-6x-2x^2+4x^3)/(1-4x+x^2+x^3-2x^4))`
-/

namespace A232583.P17857845939272898576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -6, -2, 4] [1, -4, 1, 1, -2] n

end

end A232583.P17857845939272898576

namespace A232583

/-- `ogf((10-6x-2x^2+4x^3)/(1-4x+x^2+x^3-2x^4))` -/
def P17857845939272898576.Spec : Prop :=
  ∀ n, P17857845939272898576.a n = A232583 (n + 1)

end A232583

/-! ## A232583.P6660089991405207281

`4*a(n-1)-a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=10, a(1)=34, a(2)=124, a(3)=456`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232583

/-- `4*a(n-1)-a(n-2)-a(n-3)+2*a(n-4)` -/
def P6660089991405207281.Spec : Prop :=
  ∀ n, P6660089991405207281.a n = A232583 (n + 1)

theorem P6660089991405207281.correct : P6660089991405207281.Spec := by
  intro n
  simp only [A232583, Nat.add_sub_cancel]

end A232583

/-! ## A232583.P12398796697888802994

`A232589(∑[n+2])`
-/

namespace A232583.P12398796697888802994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232583.P12398796697888802994

namespace A232583

/-- `A232589(∑[n+2])` -/
def P12398796697888802994.Spec : Prop :=
  ∀ n, P12398796697888802994.a n = A232583 (n + 1)

end A232583

/-! ## A232583.P5673858956882791917

`record[A232589(Δ[A003453(n+5)])]`
-/

namespace A232583.P5673858956882791917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232583.P5673858956882791917

namespace A232583

/-- `record[A232589(Δ[A003453(n+5)])]` -/
def P5673858956882791917.Spec : Prop :=
  ∀ n, P5673858956882791917.a n = A232583 (n + 1)

end A232583

/-!
# A232584: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232584, the canonical program `A232584.P6288407477530529631` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232584 has offset 1).

The definition of A232584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232584.P6454179305624767972

`∑[ogf((2+4x+2x^2)/(1-3x+x^2))]`
-/

namespace A232584.P6454179305624767972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 2] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232584.P6454179305624767972

namespace A232584

/-- `∑[ogf((2+4x+2x^2)/(1-3x+x^2))]` -/
def P6454179305624767972.Spec : Prop :=
  ∀ n, P6454179305624767972.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P15616721020411663206

`ogf((2+4x+2x^2)/(1-4x+4x^2-x^3))`
-/

namespace A232584.P15616721020411663206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 2] [1, -4, 4, -1] n

end

end A232584.P15616721020411663206

namespace A232584

/-- `ogf((2+4x+2x^2)/(1-4x+4x^2-x^3))` -/
def P15616721020411663206.Spec : Prop :=
  ∀ n, P15616721020411663206.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P6288407477530529631

`record[a(n-2)-(a(n-1)+8)]` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232584

/-- `record[a(n-2)-(a(n-1)+8)]` -/
def P6288407477530529631.Spec : Prop :=
  ∀ n, P6288407477530529631.a n = A232584 (n + 1)

theorem P6288407477530529631.correct : P6288407477530529631.Spec := by
  intro n
  simp only [A232584, Nat.add_sub_cancel]

end A232584

/-! ## A232584.P23688422965551964

`record[a(n-2)-8-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A232584.P23688422965551964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) - 8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232584.P23688422965551964

namespace A232584

/-- `record[a(n-2)-8-a(n-1)]` -/
def P23688422965551964.Spec : Prop :=
  ∀ n, P23688422965551964.a n = A232584 (n + 1)

theorem P23688422965551964.correct : P23688422965551964.Spec := by
  intro n
  simp only [A232584, Nat.add_sub_cancel, A232584.P23688422965551964.f1, A232584.P23688422965551964.a, A232584.P6288407477530529631.f1, A232584.P6288407477530529631.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A232584

/-! ## A232584.P3453454471575198235

`A153388(n)-6`
-/

namespace A232584.P3453454471575198235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153388 n - 6

end

end A232584.P3453454471575198235

namespace A232584

/-- `A153388(n)-6` -/
def P3453454471575198235.Spec : Prop :=
  ∀ n, P3453454471575198235.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P6347960930624266044

`∑[2*A054888(n)]`
-/

namespace A232584.P6347960930624266044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232584.P6347960930624266044

namespace A232584

/-- `∑[2*A054888(n)]` -/
def P6347960930624266044.Spec : Prop :=
  ∀ n, P6347960930624266044.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P13798200832131241517

`2*A122678(n+1)`
-/

namespace A232584.P13798200832131241517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122678 (n + 1)

end

end A232584.P13798200832131241517

namespace A232584

/-- `2*A122678(n+1)` -/
def P13798200832131241517.Spec : Prop :=
  ∀ n, P13798200832131241517.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P5666492485787720977

`2*(A106729(n)-4)`
-/

namespace A232584.P5666492485787720977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A106729 n - 4)

end

end A232584.P5666492485787720977

namespace A232584

/-- `2*(A106729(n)-4)` -/
def P5666492485787720977.Spec : Prop :=
  ∀ n, P5666492485787720977.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P15307697348065167121

`5*A069403(n)-3`
-/

namespace A232584.P15307697348065167121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A069403 n - 3

end

end A232584.P15307697348065167121

namespace A232584

/-- `5*A069403(n)-3` -/
def P15307697348065167121.Spec : Prop :=
  ∀ n, P15307697348065167121.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P646501197208659791

`∑[A022093(2*n)]+2`
-/

namespace A232584.P646501197208659791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A232584.P646501197208659791

namespace A232584

/-- `∑[A022093(2*n)]+2` -/
def P646501197208659791.Spec : Prop :=
  ∀ n, P646501197208659791.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P3631612227720194680

`∑[A153382(2*n)]+2`
-/

namespace A232584.P3631612227720194680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A232584.P3631612227720194680

namespace A232584

/-- `∑[A153382(2*n)]+2` -/
def P3631612227720194680.Spec : Prop :=
  ∀ n, P3631612227720194680.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P14738780130191111131

`2*(A289107(2*n)-1)`
-/

namespace A232584.P14738780130191111131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289107 (2 * n) - 1)

end

end A232584.P14738780130191111131

namespace A232584

/-- `2*(A289107(2*n)-1)` -/
def P14738780130191111131.Spec : Prop :=
  ∀ n, P14738780130191111131.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P4356189739962246738

`A153382(2*n+1)-6`
-/

namespace A232584.P4356189739962246738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 (2 * n + 1) - 6

end

end A232584.P4356189739962246738

namespace A232584

/-- `A153382(2*n+1)-6` -/
def P4356189739962246738.Spec : Prop :=
  ∀ n, P4356189739962246738.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P2392914422020022444

`A372242(2*n+1)-7`
-/

namespace A232584.P2392914422020022444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372242 (2 * n + 1) - 7

end

end A232584.P2392914422020022444

namespace A232584

/-- `A372242(2*n+1)-7` -/
def P2392914422020022444.Spec : Prop :=
  ∀ n, P2392914422020022444.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P10233478038391319735

`A022093(2*n+1)-8`
-/

namespace A232584.P10233478038391319735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 (2 * n + 1) - 8

end

end A232584.P10233478038391319735

namespace A232584

/-- `A022093(2*n+1)-8` -/
def P10233478038391319735.Spec : Prop :=
  ∀ n, P10233478038391319735.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P7168235229097229628

`∑[record[2*A203976(n+1)]]`
-/

namespace A232584.P7168235229097229628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232584.P7168235229097229628

namespace A232584

/-- `∑[record[2*A203976(n+1)]]` -/
def P7168235229097229628.Spec : Prop :=
  ∀ n, P7168235229097229628.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P17740446267909508964

`∑[10*A000045(2*n)]+2`
-/

namespace A232584.P17740446267909508964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A232584.P17740446267909508964

namespace A232584

/-- `∑[10*A000045(2*n)]+2` -/
def P17740446267909508964.Spec : Prop :=
  ∀ n, P17740446267909508964.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P4387920306410326198

`10*A000045(2*n+1)-8`
-/

namespace A232584.P4387920306410326198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 (2 * n + 1) - 8

end

end A232584.P4387920306410326198

namespace A232584

/-- `10*A000045(2*n+1)-8` -/
def P4387920306410326198.Spec : Prop :=
  ∀ n, P4387920306410326198.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P4087083957229993393

`2*(5*A000045(Δ[n²])-4)`
-/

namespace A232584.P4087083957229993393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 4)

end

end A232584.P4087083957229993393

namespace A232584

/-- `2*(5*A000045(Δ[n²])-4)` -/
def P4087083957229993393.Spec : Prop :=
  ∀ n, P4087083957229993393.a n = A232584 (n + 1)

end A232584

/-! ## A232584.P2142117643203984684

`2*∑[floor((3-ϕ)*A000032(2*n+1))]`
-/

namespace A232584.P2142117643203984684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 - Real.goldenRatio) * (A000032 (2 * n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232584.P2142117643203984684

namespace A232584

/-- `2*∑[floor((3-ϕ)*A000032(2*n+1))]` -/
def P2142117643203984684.Spec : Prop :=
  ∀ n, P2142117643203984684.a n = A232584 (n + 1)

end A232584

/-!
# A232585: Number of (n+1)X(4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232585, the canonical program `A232585.P5975038595888652838` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232585 has offset 1).

The definition of A232585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232585.P5975038595888652838

`ogf((26+22x+2x^2+6x^3+4x^4)/(1-5x-9x^2-2x^3-x^4-2x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232585

/-- `ogf((26+22x+2x^2+6x^3+4x^4)/(1-5x-9x^2-2x^3-x^4-2x^5))` -/
def P5975038595888652838.Spec : Prop :=
  ∀ n, P5975038595888652838.a n = A232585 (n + 1)

theorem P5975038595888652838.correct : P5975038595888652838.Spec := by
  intro n
  simp only [A232585, Nat.add_sub_cancel]

end A232585

/-! ## A232585.P777342714496331150

`A232589(A141214(n+1))`
-/

namespace A232585.P777342714496331150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A141214 (n + 1)).toNat

end

end A232585.P777342714496331150

namespace A232585

/-- `A232589(A141214(n+1))` -/
def P777342714496331150.Spec : Prop :=
  ∀ n, P777342714496331150.a n = A232585 (n + 1)

end A232585

/-! ## A232585.P12389235067918733338

`A232589(A027379(n+2))`
-/

namespace A232585.P12389235067918733338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A027379 (n + 2)).toNat

end

end A232585.P12389235067918733338

namespace A232585

/-- `A232589(A027379(n+2))` -/
def P12389235067918733338.Spec : Prop :=
  ∀ n, P12389235067918733338.a n = A232585 (n + 1)

end A232585

/-! ## A232585.P6157207365532195079

`A232589(A055998(n+2))`
-/

namespace A232585.P6157207365532195079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A055998 (n + 2)).toNat

end

end A232585.P6157207365532195079

namespace A232585

/-- `A232589(A055998(n+2))` -/
def P6157207365532195079.Spec : Prop :=
  ∀ n, P6157207365532195079.a n = A232585 (n + 1)

end A232585

/-! ## A232585.P5575795537677636944

`A232589(A155212(n)+5)`
-/

namespace A232585.P5575795537677636944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A155212 n + 5).toNat

end

end A232585.P5575795537677636944

namespace A232585

/-- `A232589(A155212(n)+5)` -/
def P5575795537677636944.Spec : Prop :=
  ∀ n, P5575795537677636944.a n = A232585 (n + 1)

end A232585

/-!
# A232586: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232586, there is no canonical definition to state claims against.
-/

/-! ## A232586.P3565266032871859414

`A232589(A046691(n+3))`
-/

namespace A232586.P3565266032871859414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A046691 (n + 3)).toNat

end

end A232586.P3565266032871859414

/-! ## A232586.P15567477365706489224

`A232589(Δ[A023545(n+1)])`
-/

namespace A232586.P15567477365706489224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (f1 (n + 1) - f1 n).toNat

end

end A232586.P15567477365706489224

/-! ## A232586.P11569525843855371016

`A232589(A052905(n+2)+1)`
-/

namespace A232586.P11569525843855371016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A052905 (n + 2) + 1).toNat

end

end A232586.P11569525843855371016

/-! ## A232586.P7931029888617966894

`A232589(A055999(n+2)+2)`
-/

namespace A232586.P7931029888617966894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A055999 (n + 2) + 2).toNat

end

end A232586.P7931029888617966894

/-! ## A232586.P16379362602784917561

`A232589(A141214(n+2)-1)`
-/

namespace A232586.P16379362602784917561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A141214 (n + 2) - 1).toNat

end

end A232586.P16379362602784917561

/-!
# A232587: Number of (n+1)X(6+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232587, there is no canonical definition to state claims against.
-/

/-! ## A232587.P658822157742387529

`A232589(C(n+7, 2)-5)`
-/

namespace A232587.P658822157742387529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (Nat.choose (n + 7) 2 - 5)

end

end A232587.P658822157742387529

/-! ## A232587.P14815265400222396879

`A232589(A052905(n+3))`
-/

namespace A232587.P14815265400222396879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A052905 (n + 3)).toNat

end

end A232587.P14815265400222396879

/-! ## A232587.P8751788402330560050

`A232589(eq[3, A219347(n)])`
-/

namespace A232587.P8751788402330560050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232587.P8751788402330560050

/-! ## A232587.P6941351601173432808

`A232589(eq[7, A049286(n+1)])`
-/

namespace A232587.P6941351601173432808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232587.P6941351601173432808

/-! ## A232587.P12378355662079833719

`A232589(eq[8, A185782(n+1)])`
-/

namespace A232587.P12378355662079833719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232587.P12378355662079833719

/-!
# A232588: Number of (n+1)X(7+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232588, there is no canonical definition to state claims against.
-/

/-! ## A232588.P16946654153128873560

`A232589(C(n+7, 2)+n+1)`
-/

namespace A232588.P16946654153128873560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (Nat.choose (n + 7) 2 + (n + 1))

end

end A232588.P16946654153128873560

/-! ## A232588.P14217896542165202189

`A232589(A055999(n+4))`
-/

namespace A232588.P14217896542165202189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A055999 (n + 4)).toNat

end

end A232588.P14217896542165202189

/-! ## A232588.P4315483343631894969

`A232589(eq[4, A219347(n)])`
-/

namespace A232588.P4315483343631894969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232588.P4315483343631894969

/-! ## A232588.P12043224298165530019

`A232589(eq[6, A193592(n)])`
-/

namespace A232588.P12043224298165530019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232588.P12043224298165530019

/-! ## A232588.P4634294641266822320

`A232589(Δ[A023551(n+2)])`
-/

namespace A232588.P4634294641266822320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (f1 (n + 1) - f1 n).toNat

end

end A232588.P4634294641266822320

/-!
# A232590: Number of (1+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232590, the canonical program `A232590.P5068963047489497062` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232590 has offset 1).

The definition of A232590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232590.P5068963047489497062

`abs(Δ[A078042(n)+(n+1)²])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A232590

/-- `abs(Δ[A078042(n)+(n+1)²])` -/
def P5068963047489497062.Spec : Prop :=
  ∀ n, P5068963047489497062.a n = A232590 (n + 1)

theorem P5068963047489497062.correct : P5068963047489497062.Spec := by
  intro n
  simp only [A232590, Nat.add_sub_cancel]

end A232590

/-! ## A232590.P7708429620431291535

`ogf((10x+12x^2+8x^3+2x^4)/(1+x-2x^2-4x^3-3x^4-x^5))`
-/

namespace A232590.P7708429620431291535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 12, 8, 2] [1, 1, -2, -4, -3, -1] n

end

end A232590.P7708429620431291535

namespace A232590

/-- `ogf((10x+12x^2+8x^3+2x^4)/(1+x-2x^2-4x^3-3x^4-x^5))` -/
def P7708429620431291535.Spec : Prop :=
  ∀ n, P7708429620431291535.a n = A232590 (n + 1)

end A232590

/-! ## A232590.P3166775484004736230

`Δ[abs(A078042(n+2)+n+1)]`
-/

namespace A232590.P3166775484004736230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 (n + 2) + (n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232590.P3166775484004736230

namespace A232590

/-- `Δ[abs(A078042(n+2)+n+1)]` -/
def P3166775484004736230.Spec : Prop :=
  ∀ n, P3166775484004736230.a n = A232590 (n + 1)

end A232590

/-! ## A232590.P3211765054016759665

`Δ[A027053(n+2)+Δ[A001057(n)]]`
-/

namespace A232590.P3211765054016759665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232590.P3211765054016759665

namespace A232590

/-- `Δ[A027053(n+2)+Δ[A001057(n)]]` -/
def P3211765054016759665.Spec : Prop :=
  ∀ n, P3211765054016759665.a n = A232590 (n + 1)

end A232590

/-! ## A232590.P2577362940296354423

`Δ[A027053(n+2)+Δ[A014682(n)]]`
-/

namespace A232590.P2577362940296354423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232590.P2577362940296354423

namespace A232590

/-- `Δ[A027053(n+2)+Δ[A014682(n)]]` -/
def P2577362940296354423.Spec : Prop :=
  ∀ n, P2577362940296354423.a n = A232590 (n + 1)

end A232590

/-! ## A232590.P172086853900285021

`Δ[A027053(n+2)-A157128(A016777(n))]`
-/

namespace A232590.P172086853900285021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2) - A157128 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232590.P172086853900285021

namespace A232590

/-- `Δ[A027053(n+2)-A157128(A016777(n))]` -/
def P172086853900285021.Spec : Prop :=
  ∀ n, P172086853900285021.a n = A232590 (n + 1)

end A232590

/-!
# A232591: Number of (2+1) X (n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232591, there is no canonical definition to state claims against.
-/

/-! ## A232591.P1281551273551947004

`A232589(∑[n+1]+2)`
-/

namespace A232591.P1281551273551947004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232591.P1281551273551947004

/-! ## A232591.P7173954257262031960

`A232589(A167499(n)-3)%A232594(n+1)`
-/

namespace A232591.P7173954257262031960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232589 (A167499 n - 3).toNat) (A232594 (n + 1))

end

end A232591.P7173954257262031960

/-!
# A232592: Number of (3+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232592, there is no canonical definition to state claims against.
-/

/-! ## A232592.P15544729897804390809

`A232589(∑[n+2]+4)`
-/

namespace A232592.P15544729897804390809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232592.P15544729897804390809

/-! ## A232592.P3793426387058257804

`lcm(2, A232589(A167614(n+1)))`
-/

namespace A232592.P3793426387058257804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232589 (A167614 (n + 1)).toNat)

end

end A232592.P3793426387058257804

/-! ## A232592.P11574262697221384775

`A232589(A167614(n+1))+A000007(n+1)`
-/

namespace A232592.P11574262697221384775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A232592.P11574262697221384775

/-! ## A232592.P13880926038993308399

`lcm(A043566(n+2), A232589(A055998(n)+6))`
-/

namespace A232592.P13880926038993308399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043566 (n + 2)) (A232589 (A055998 n + 6).toNat)

end

end A232592.P13880926038993308399

/-! ## A232592.P9883116580694127833

`A232589(A055998(n)+6)+A101637(A005117(n+1))`
-/

namespace A232592.P9883116580694127833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A055998 n + 6).toNat + A101637 (A005117 (n + 1)).toNat

end

end A232592.P9883116580694127833

/-!
# A232593: Number of (4+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232593, there is no canonical definition to state claims against.
-/

/-! ## A232593.P9645482429148571811

`A232589(A141214(n)+7)`
-/

namespace A232593.P9645482429148571811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A141214 n + 7).toNat

end

end A232593.P9645482429148571811

/-! ## A232593.P1187458624463331716

`A232589(A052905(n)+9)`
-/

namespace A232593.P1187458624463331716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A052905 n + 9).toNat

end

end A232593.P1187458624463331716

/-! ## A232593.P16627450024316414713

`A232589(A055999(n)+10)`
-/

namespace A232593.P16627450024316414713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A055999 n + 10).toNat

end

end A232593.P16627450024316414713

/-! ## A232593.P14006796228882848700

`A232589(A167614(n+2)+1)`
-/

namespace A232593.P14006796228882848700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A167614 (n + 2) + 1).toNat

end

end A232593.P14006796228882848700

/-! ## A232593.P7345134602691457827

`A232589(Δ[A023545(n+1)-n²])`
-/

namespace A232593.P7345134602691457827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (f1 (n + 1) - f1 n).toNat

end

end A232593.P7345134602691457827

/-!
# A232594: Number of (5+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232594, there is no canonical definition to state claims against.
-/

/-! ## A232594.P10468774005709167430

`A232589(A167499(n+3))`
-/

namespace A232594.P10468774005709167430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A167499 (n + 3)).toNat

end

end A232594.P10468774005709167430

/-! ## A232594.P16768871283666308095

`A232589(A133263(n+4)+3)`
-/

namespace A232594.P16768871283666308095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A133263 (n + 4) + 3).toNat

end

end A232594.P16768871283666308095

/-! ## A232594.P2471171347051924509

`A232589(A000217(n+4)+5)`
-/

namespace A232594.P2471171347051924509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A000217 (n + 4) + 5).toNat

end

end A232594.P2471171347051924509

/-! ## A232594.P4596885820617299539

`A232589(A000124(n+5)-(n+1))`
-/

namespace A232594.P4596885820617299539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A232594.P4596885820617299539

/-! ## A232594.P5694480485813865196

`A232589(Δ[A023551(n+1)]-2*n)`
-/

namespace A232594.P5694480485813865196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A232594.P5694480485813865196

/-!
# A232595: Number of (6+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232595, there is no canonical definition to state claims against.
-/

/-! ## A232595.P3797778173706980860

`A232589(C(n+7, 2)-n)`
-/

namespace A232595.P3797778173706980860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (Nat.choose (n + 7) 2 - n)

end

end A232595.P3797778173706980860

/-! ## A232595.P9702197397848576728

`A232589(A141214(n+2)+9)`
-/

namespace A232595.P9702197397848576728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A141214 (n + 2) + 9).toNat

end

end A232595.P9702197397848576728

/-! ## A232595.P15383732435036301886

`A232589(A052905(n+2)+11)`
-/

namespace A232595.P15383732435036301886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A052905 (n + 2) + 11).toNat

end

end A232595.P15383732435036301886

/-! ## A232595.P12824064219289349123

`A232589(A055999(n+2)+12)`
-/

namespace A232595.P12824064219289349123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A055999 (n + 2) + 12).toNat

end

end A232595.P12824064219289349123

/-! ## A232595.P17002701863612899441

`A232589(eq[7, A131818(n+1)])`
-/

namespace A232595.P17002701863612899441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232595.P17002701863612899441

/-!
# A232596: Number of (7+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232596, there is no canonical definition to state claims against.
-/

/-! ## A232596.P2951896687602605156

`A232589(C(n+7, 2)+7)`
-/

namespace A232596.P2951896687602605156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (Nat.choose (n + 7) 2 + 7)

end

end A232596.P2951896687602605156

/-! ## A232596.P2040078480983528121

`A232589(A056119(n)+28)`
-/

namespace A232596.P2040078480983528121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A056119 n + 28).toNat

end

end A232596.P2040078480983528121

/-! ## A232596.P5875749075847880055

`A232589(eq[11, A066657(n)])`
-/

namespace A232596.P5875749075847880055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232596.P5875749075847880055

/-! ## A232596.P11921535923592931153

`A232589(A027379(n+4)+10)`
-/

namespace A232596.P11921535923592931153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (A027379 (n + 4) + 10).toNat

end

end A232596.P11921535923592931153

/-! ## A232596.P13788298316542715664

`A232589(eq[8, A131818(n+1)])`
-/

namespace A232596.P13788298316542715664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232596.P13788298316542715664

/-!
# A232598: T(n,k) = Stirling2(n,k) * OrderedBell(k).

The programs for A232598, the canonical program `A232598.P14859222242588835833` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232598 has offset 1).

The definition of A232598 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008277, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A232598.P14859222242588835833

`A008277(C(row(n)+1, 2)+col(n)+1)*A000670(col(n)+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232598

/-- `A008277(C(row(n)+1, 2)+col(n)+1)*A000670(col(n)+1)` -/
def P14859222242588835833.Spec : Prop :=
  ∀ n, P14859222242588835833.a n = A232598 (n + 1)

theorem P14859222242588835833.correct : P14859222242588835833.Spec := by
  intro n
  simp only [A232598, Nat.add_sub_cancel]

end A232598

/-! ## A232598.P4469335170362032910

`A000670(col(n)+1)*A008277(n+1)`
-/

namespace A232598.P4469335170362032910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (SequenceMachineLib.triCol n + 1) * A008277 (n + 1)

end

end A232598.P4469335170362032910

namespace A232598

/-- `A000670(col(n)+1)*A008277(n+1)` -/
def P4469335170362032910.Spec : Prop :=
  ∀ n, P4469335170362032910.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P7039167989702169650

`A000670(A002260(n+1))*A008277(n+1)`
-/

namespace A232598.P7039167989702169650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A002260 (n + 1)).toNat * A008277 (n + 1)

end

end A232598.P7039167989702169650

namespace A232598

/-- `A000670(A002260(n+1))*A008277(n+1)` -/
def P7039167989702169650.Spec : Prop :=
  ∀ n, P7039167989702169650.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P3116396076874963891

`A008277(n+1)*A327868(A158405(n+1))`
-/

namespace A232598.P3116396076874963891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A327868 (A158405 (n + 1)).toNat

end

end A232598.P3116396076874963891

namespace A232598

/-- `A008277(n+1)*A327868(A158405(n+1))` -/
def P3116396076874963891.Spec : Prop :=
  ∀ n, P3116396076874963891.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P7451570479743829135

`A000670(A002260(n+1))*A048993(comp[C(n, 2)])`
-/

namespace A232598.P7451570479743829135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A002260 (n + 1)).toNat * A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A232598.P7451570479743829135

namespace A232598

/-- `A000670(A002260(n+1))*A048993(comp[C(n, 2)])` -/
def P7451570479743829135.Spec : Prop :=
  ∀ n, P7451570479743829135.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P114626392204060079

`A000670(A349520(2*n+1))*A008277(n+1)`
-/

namespace A232598.P114626392204060079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A349520 (2 * n + 1)).toNat * A008277 (n + 1)

end

end A232598.P114626392204060079

namespace A232598

/-- `A000670(A349520(2*n+1))*A008277(n+1)` -/
def P114626392204060079.Spec : Prop :=
  ∀ n, P114626392204060079.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P16780499446424589574

`A000670(A002260(n+1))*A008278(A038722(n+1))`
-/

namespace A232598.P16780499446424589574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A002260 (n + 1)).toNat * A008278 (A038722 (n + 1)).toNat

end

end A232598.P16780499446424589574

namespace A232598

/-- `A000670(A002260(n+1))*A008278(A038722(n+1))` -/
def P16780499446424589574.Spec : Prop :=
  ∀ n, P16780499446424589574.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P16646322945196344237

`A000670(A002260(n+1))*A048993(A014132(n+1))`
-/

namespace A232598.P16646322945196344237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A002260 (n + 1)).toNat * A048993 (A014132 (n + 1)).toNat

end

end A232598.P16646322945196344237

namespace A232598

/-- `A000670(A002260(n+1))*A048993(A014132(n+1))` -/
def P16646322945196344237.Spec : Prop :=
  ∀ n, P16646322945196344237.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P16244091220683283184

`A000670(A002260(n+1))*A285012(A064801(n+1))`
-/

namespace A232598.P16244091220683283184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A002260 (n + 1)).toNat * A285012 (A064801 (n + 1)).toNat

end

end A232598.P16244091220683283184

namespace A232598

/-- `A000670(A002260(n+1))*A285012(A064801(n+1))` -/
def P16244091220683283184.Spec : Prop :=
  ∀ n, P16244091220683283184.a n = A232598 (n + 1)

end A232598

/-! ## A232598.P2855034324688383939

`A075497(n+1)/A130321(n)*A000670(A002260(n+1))`
-/

namespace A232598.P2855034324688383939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A130321 n : ℚ) * (A000670 (A002260 (n + 1)).toNat : ℚ)

end

end A232598.P2855034324688383939

namespace A232598

/-- `A075497(n+1)/A130321(n)*A000670(A002260(n+1))` -/
def P2855034324688383939.Spec : Prop :=
  ∀ n, P2855034324688383939.a n = (A232598 (n + 1) : ℚ)

end A232598

/-! ## A232598.P6512101777059967469

`A075498(n+1)/A140303(n)*A000670(A002260(n+1))`
-/

namespace A232598.P6512101777059967469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075498 (n + 1) : ℚ) / (A140303 n : ℚ) * (A000670 (A002260 (n + 1)).toNat : ℚ)

end

end A232598.P6512101777059967469

namespace A232598

/-- `A075498(n+1)/A140303(n)*A000670(A002260(n+1))` -/
def P6512101777059967469.Spec : Prop :=
  ∀ n, P6512101777059967469.a n = (A232598 (n + 1) : ℚ)

end A232598

/-! ## A232598.P7788479050091700198

`A028246(n+1)/A233543(n)*A000670(A002260(n+1))`
-/

namespace A232598.P7788479050091700198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A233543 n : ℚ) * (A000670 (A002260 (n + 1)).toNat : ℚ)

end

end A232598.P7788479050091700198

namespace A232598

/-- `A028246(n+1)/A233543(n)*A000670(A002260(n+1))` -/
def P7788479050091700198.Spec : Prop :=
  ∀ n, P7788479050091700198.a n = (A232598 (n + 1) : ℚ)

end A232598

/-! ## A232598.P14157567505793957302

`A028246(n+1)/A008279(n)*A007318(n)*A000670(A002260(n+1))`
-/

namespace A232598.P14157567505793957302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A008279 n : ℚ) * (A007318 n : ℚ) * (A000670 (A002260 (n + 1)).toNat : ℚ)

end

end A232598.P14157567505793957302

namespace A232598

/-- `A028246(n+1)/A008279(n)*A007318(n)*A000670(A002260(n+1))` -/
def P14157567505793957302.Spec : Prop :=
  ∀ n, P14157567505793957302.a n = (A232598 (n + 1) : ℚ)

end A232598

/-! ## A232598.P17571624106982124768

`A000670(A002260(n+1))*A136011(A056537(n+1))`
-/

namespace A232598.P17571624106982124768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A002260 (n + 1)).toNat * A136011 (A056537 (n + 1)).toNat

end

end A232598.P17571624106982124768

namespace A232598

/-- `A000670(A002260(n+1))*A136011(A056537(n+1))` -/
def P17571624106982124768.Spec : Prop :=
  ∀ n, P17571624106982124768.a n = A232598 (n + 1)

end A232598

/-!
# A232599: Alternating sum of cubes, i.e., Sum_{k=0..n} k^p*q^k for p=3, q=-1.

The programs for A232599, the canonical program `A232599.P16660214412330454228` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232599 has offset 0).

The definition of A232599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232599.P13059997152045742786

`ogf((-x+4x^2-x^3)/(1+3x+2x^2-2x^3-3x^4-x^5))`
-/

namespace A232599.P13059997152045742786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 4, -1] [1, 3, 2, -2, -3, -1] n

end

end A232599.P13059997152045742786

namespace A232599

/-- `ogf((-x+4x^2-x^3)/(1+3x+2x^2-2x^3-3x^4-x^5))` -/
def P13059997152045742786.Spec : Prop :=
  ∀ n, P13059997152045742786.a n = A232599 n

end A232599

/-! ## A232599.P16660214412330454228

`((-1)^n*(4*n^3+6*n²-1)+1)/8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A232599

/-- `((-1)^n*(4*n^3+6*n²-1)+1)/8` -/
def P16660214412330454228.Spec : Prop :=
  ∀ n, P16660214412330454228.a n = (A232599 n : ℚ)

end A232599

/-! ## A232599.P1488837246527422031

`a(n-1)+n^3*(-1)^n` with `a(0)=0`
-/

namespace A232599.P1488837246527422031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 3 : ℤ) * (-1) ^ n

end

end A232599.P1488837246527422031

namespace A232599

/-- `a(n-1)+n^3*(-1)^n` -/
def P1488837246527422031.Spec : Prop :=
  ∀ n, P1488837246527422031.a n = A232599 n

end A232599

/-! ## A232599.P1296229312848212829

`∑[A038608(n)^3]`
-/

namespace A232599.P1296229312848212829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232599.P1296229312848212829

namespace A232599

/-- `∑[A038608(n)^3]` -/
def P1296229312848212829.Spec : Prop :=
  ∀ n, P1296229312848212829.a n = A232599 n

end A232599

/-! ## A232599.P17730828149478763716

`(-1)^n*A011934(n)`
-/

namespace A232599.P17730828149478763716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011934 n

end

end A232599.P17730828149478763716

namespace A232599

/-- `(-1)^n*A011934(n)` -/
def P17730828149478763716.Spec : Prop :=
  ∀ n, P17730828149478763716.a n = A232599 n

end A232599

/-! ## A232599.P3461572386227162759

`(-1)^n*∑[A032528(n)]`
-/

namespace A232599.P3461572386227162759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232599.P3461572386227162759

namespace A232599

/-- `(-1)^n*∑[A032528(n)]` -/
def P3461572386227162759.Spec : Prop :=
  ∀ n, P3461572386227162759.a n = A232599 n

end A232599

/-! ## A232599.P2843148560512176433

`xor(3, abs(1-2*n)+1)*round(n/2)*A130472(n)`
-/

namespace A232599.P2843148560512176433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (|1 - (2 * n : ℤ)| + 1) * SequenceMachineLib.roundAway ((n : ℚ) / 2) * A130472 n

end

end A232599.P2843148560512176433

namespace A232599

/-- `xor(3, abs(1-2*n)+1)*round(n/2)*A130472(n)` -/
def P2843148560512176433.Spec : Prop :=
  ∀ n, P2843148560512176433.a n = A232599 n

end A232599

/-! ## A232599.P9540296273393372486

`A011934(n)*A033999(n)`
-/

namespace A232599.P9540296273393372486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n * A033999 n

end

end A232599.P9540296273393372486

namespace A232599

/-- `A011934(n)*A033999(n)` -/
def P9540296273393372486.Spec : Prop :=
  ∀ n, P9540296273393372486.a n = A232599 n

end A232599

/-! ## A232599.P16125109812447405410

`A074377(n)*A130472(n)`
-/

namespace A232599.P16125109812447405410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n * A130472 n

end

end A232599.P16125109812447405410

namespace A232599

/-- `A074377(n)*A130472(n)` -/
def P16125109812447405410.Spec : Prop :=
  ∀ n, P16125109812447405410.a n = A232599 n

end A232599

/-! ## A232599.P10287868178626774229

`(A157142(n)+2)*A001057(n)²`
-/

namespace A232599.P10287868178626774229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157142 n + 2) * A001057 n ^ 2

end

end A232599.P10287868178626774229

namespace A232599

/-- `(A157142(n)+2)*A001057(n)²` -/
def P10287868178626774229.Spec : Prop :=
  ∀ n, P10287868178626774229.a n = A232599 n

end A232599

/-! ## A232599.P888199627739959407

`(A174114(n+1)-1)*A130472(n)`
-/

namespace A232599.P888199627739959407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174114 (n + 1) - 1) * A130472 n

end

end A232599.P888199627739959407

namespace A232599

/-- `(A174114(n+1)-1)*A130472(n)` -/
def P888199627739959407.Spec : Prop :=
  ∀ n, P888199627739959407.a n = A232599 n

end A232599

/-! ## A232599.P8169652822166346665

`((2*n+1)*A028242(or(1, n))+n)*A130472(n)`
-/

namespace A232599.P8169652822166346665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A028242 (Nat.lor 1 n) + (n : ℤ)) * A130472 n

end

end A232599.P8169652822166346665

namespace A232599

/-- `((2*n+1)*A028242(or(1, n))+n)*A130472(n)` -/
def P8169652822166346665.Spec : Prop :=
  ∀ n, P8169652822166346665.a n = A232599 n

end A232599

/-! ## A232599.P3917404596160929993

`(A001057(n)-A002378(n))*A001057(n)`
-/

namespace A232599.P3917404596160929993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001057 n - A002378 n) * A001057 n

end

end A232599.P3917404596160929993

namespace A232599

/-- `(A001057(n)-A002378(n))*A001057(n)` -/
def P3917404596160929993.Spec : Prop :=
  ∀ n, P3917404596160929993.a n = A232599 n

end A232599

/-! ## A232599.P17567104862868528496

`(A074377(n)-A002378(n))*A074377(n)`
-/

namespace A232599.P17567104862868528496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074377 n - A002378 n) * A074377 n

end

end A232599.P17567104862868528496

namespace A232599

/-- `(A074377(n)-A002378(n))*A074377(n)` -/
def P17567104862868528496.Spec : Prop :=
  ∀ n, P17567104862868528496.a n = A232599 n

end A232599

/-! ## A232599.P18023023714583765361

`(A001057(n)-∑[A005843(n)])*A001057(n)`
-/

namespace A232599.P18023023714583765361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001057 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A001057 n

end

end A232599.P18023023714583765361

namespace A232599

/-- `(A001057(n)-∑[A005843(n)])*A001057(n)` -/
def P18023023714583765361.Spec : Prop :=
  ∀ n, P18023023714583765361.a n = A232599 n

end A232599

/-! ## A232599.P14790497045534569202

`(A274681(n+1)-A014494(n))*A074377(n)`
-/

namespace A232599.P14790497045534569202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274681 (n + 1) - A014494 n) * A074377 n

end

end A232599.P14790497045534569202

namespace A232599

/-- `(A274681(n+1)-A014494(n))*A074377(n)` -/
def P14790497045534569202.Spec : Prop :=
  ∀ n, P14790497045534569202.a n = A232599 n

end A232599

/-! ## A232599.P3991697098681839657

`(A046092(n)-A274681(n+1))*A074377(n)`
-/

namespace A232599.P3991697098681839657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 n - A274681 (n + 1)) * A074377 n

end

end A232599.P3991697098681839657

namespace A232599

/-- `(A046092(n)-A274681(n+1))*A074377(n)` -/
def P3991697098681839657.Spec : Prop :=
  ∀ n, P3991697098681839657.a n = A232599 n

end A232599

/-! ## A232599.P15525241156368540350

`(A299645(n+1)-A046092(n))*A074377(n)`
-/

namespace A232599.P15525241156368540350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A299645 (n + 1) - A046092 n) * A074377 n

end

end A232599.P15525241156368540350

namespace A232599

/-- `(A299645(n+1)-A046092(n))*A074377(n)` -/
def P15525241156368540350.Spec : Prop :=
  ∀ n, P15525241156368540350.a n = A232599 n

end A232599

/-! ## A232599.P10708570585781532581

`(A001057(n)-A005843(∑[n]))*A001057(n)`
-/

namespace A232599.P10708570585781532581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001057 n - A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) * A001057 n

end

end A232599.P10708570585781532581

namespace A232599

/-- `(A001057(n)-A005843(∑[n]))*A001057(n)` -/
def P10708570585781532581.Spec : Prop :=
  ∀ n, P10708570585781532581.a n = A232599 n

end A232599

/-! ## A232599.P1166622719749976770

`∑[n*A038608(n²)]`
-/

namespace A232599.P1166622719749976770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038608 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232599.P1166622719749976770

namespace A232599

/-- `∑[n*A038608(n²)]` -/
def P1166622719749976770.Spec : Prop :=
  ∀ n, P1166622719749976770.a n = A232599 n

end A232599

