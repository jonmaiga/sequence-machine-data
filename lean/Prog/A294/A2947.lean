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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A294700: Number of permutations of [n] avoiding {1324, 2143, 3421}.

The programs for A294700, the canonical program `A294700.P17306250854032971097` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294700 has offset 0).

The definition of A294700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294700.P17306250854032971097

`1/12*(12+4*(3*2^n-4)*n-5*n²-2*n^3-n^4)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294700

/-- `1/12*(12+4*(3*2^n-4)*n-5*n²-2*n^3-n^4)` -/
def P17306250854032971097.Spec : Prop :=
  ∀ n, P17306250854032971097.a n = (A294700 n : ℚ)

end A294700

/-! ## A294700.P9926437753553163526

`A066524(n)+1-floor((∑[n]+1)²/3)`
-/

namespace A294700.P9926437753553163526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 n + 1 - ⌊(((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℚ) / 3⌋

end

end A294700.P9926437753553163526

namespace A294700

/-- `A066524(n)+1-floor((∑[n]+1)²/3)` -/
def P9926437753553163526.Spec : Prop :=
  ∀ n, P9926437753553163526.a n = A294700 n

end A294700

/-! ## A294700.P10636246173212216065

`A002064(n)+1-A134393(n+1)`
-/

namespace A294700.P10636246173212216065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n + 1 - A134393 (n + 1)

end

end A294700.P10636246173212216065

namespace A294700

/-- `A002064(n)+1-A134393(n+1)` -/
def P10636246173212216065.Spec : Prop :=
  ∀ n, P10636246173212216065.a n = A294700 n

end A294700

/-! ## A294700.P3895495528060808590

`A294701(n)-A216279(A294678(2*n+1))`
-/

namespace A294700.P3895495528060808590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294701 n - A216279 (A294678 (2 * n + 1)).toNat

end

end A294700.P3895495528060808590

namespace A294700

/-- `A294701(n)-A216279(A294678(2*n+1))` -/
def P3895495528060808590.Spec : Prop :=
  ∀ n, P3895495528060808590.a n = A294700 n

end A294700

/-!
# A294701: Number of permutations of [n] avoiding {4231, 2143, 1342}.

The programs for A294701, there is no canonical definition to state claims against.
-/

/-! ## A294701.P12289103589008463076

`or(A276206(A294686(n+1)), A294700(n))`
-/

namespace A294701.P12289103589008463076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276206 (A294686 (n + 1)).toNat) (A294700 n)

end

end A294701.P12289103589008463076

/-!
# A294702: Number of permutations of [n] avoiding {1324, 2143, 3412}.

The programs for A294702, the canonical program `A294702.P14772919776764478698` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294702 has offset 0).

The definition of A294702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294702.P14772919776764478698

`2*A001519(n)+2^n*(n-6)+(n+5)*(n+2)/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A294702

/-- `2*A001519(n)+2^n*(n-6)+(n+5)*(n+2)/2` -/
def P14772919776764478698.Spec : Prop :=
  ∀ n, P14772919776764478698.a n = (A294702 n : ℚ)

end A294702

/-! ## A294702.P8146872876939388701

`A111581(A148889(n))`
-/

namespace A294702.P8146872876939388701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111581 (A148889 n).toNat

end

end A294702.P8146872876939388701

namespace A294702

/-- `A111581(A148889(n))` -/
def P8146872876939388701.Spec : Prop :=
  ∀ n, P8146872876939388701.a n = A294702 n

end A294702

/-! ## A294702.P15317364867096649388

`A116785(A318909(2*n+1)-n)`
-/

namespace A294702.P15317364867096649388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116785 (A318909 (2 * n + 1) - (n : ℤ)).toNat

end

end A294702.P15317364867096649388

namespace A294702

/-- `A116785(A318909(2*n+1)-n)` -/
def P15317364867096649388.Spec : Prop :=
  ∀ n, P15317364867096649388.a n = A294702 n

end A294702

/-!
# A294703: Number of permutations of [n] avoiding {1324, 2341, 4123}.

The programs for A294703, there is no canonical definition to state claims against.
-/

/-! ## A294703.P5089671994384221160

`A325488(3*A006738(n))`
-/

namespace A294703.P5089671994384221160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325488 (3 * A006738 n).toNat

end

end A294703.P5089671994384221160

/-! ## A294703.P3034171745123025924

`A116747(A318909(2*n+1)-n)`
-/

namespace A294703.P3034171745123025924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116747 (A318909 (2 * n + 1) - (n : ℤ)).toNat

end

end A294703.P3034171745123025924

/-! ## A294703.P12635718256923123268

`A003963(A245373(n)-comp[2*(n+1)])`
-/

namespace A294703.P12635718256923123268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A245373 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A294703.P12635718256923123268

/-!
# A294704: Expansion of Product_{k>=1} (1 - k^k*x^k)^(k^k).

The programs for A294704, there is no canonical definition to state claims against.
-/

/-! ## A294704.P7005939343231769608

`A294699(∑[n+2]-1)`
-/

namespace A294704.P7005939343231769608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294699 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294704.P7005939343231769608

/-! ## A294704.P13988988885323317368

`A294699(A034856(n+1))+A011734(n)`
-/

namespace A294704.P13988988885323317368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294699 (A034856 (n + 1)).toNat + A011734 n

end

end A294704.P13988988885323317368

/-! ## A294704.P11231910704200907664

`A294699(A034856(n+1))+A185036(n)`
-/

namespace A294704.P11231910704200907664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294699 (A034856 (n + 1)).toNat + A185036 n

end

end A294704.P11231910704200907664

/-! ## A294704.P817039222172777006

`A152844(n)*A294699(A034856(n+1))`
-/

namespace A294704.P817039222172777006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n * A294699 (A034856 (n + 1)).toNat

end

end A294704.P817039222172777006

/-! ## A294704.P3760112740531272329

`or(A000007(n), A294699(A034856(n+1)))`
-/

namespace A294704.P3760112740531272329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294699 (A034856 (n + 1)).toNat)

end

end A294704.P3760112740531272329

/-!
# A294705: Order of the general symplectic group of 4 X 4 matrices over Z_n.

The programs for A294705, there is no canonical definition to state claims against.
-/

/-! ## A294705.P8416183016141469960

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A364771(n+1)`
-/

namespace A294705.P8416183016141469960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A364771 (n + 1) : ℚ)

end

end A294705.P8416183016141469960

/-! ## A294705.P2319281164530687945

`A000010(n+1)*A364771(n+1)`
-/

namespace A294705.P2319281164530687945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A364771 (n + 1)

end

end A294705.P2319281164530687945

/-! ## A294705.P16491260643100929291

`A305186(n+1)/A115224(n+1)`
-/

namespace A294705.P16491260643100929291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ)

end

end A294705.P16491260643100929291

/-! ## A294705.P18222169302845408655

`A000252(n+1)/A011785(n+1)*A011786(n+1)`
-/

namespace A294705.P18222169302845408655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A011785 (n + 1) : ℚ) * (A011786 (n + 1) : ℚ)

end

end A294705.P18222169302845408655

/-! ## A294705.P819986046312989652

`A000056(n+1)/A011785(n+1)*A305186(n+1)`
-/

namespace A294705.P819986046312989652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A011785 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A294705.P819986046312989652

/-! ## A294705.P17955234866366648996

`A000252(n+1)/A064767(n+1)*A305186(n+1)`
-/

namespace A294705.P17955234866366648996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A064767 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A294705.P17955234866366648996

/-! ## A294705.P2159751688357374132

`A305186(n+1)/A011786(n+1)*A364771(n+1)`
-/

namespace A294705.P2159751688357374132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A011786 (n + 1) : ℚ) * (A364771 (n + 1) : ℚ)

end

end A294705.P2159751688357374132

/-!
# A294706: Number of permutations of [n] avoiding {4321, 3412, 1234}.

The programs for A294706, there is no canonical definition to state claims against.
-/

/-! ## A294706.P16026566358843718876

`A023717(A225090(n!))`
-/

namespace A294706.P16026566358843718876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A225090 (Nat.factorial n)).toNat

end

end A294706.P16026566358843718876

/-! ## A294706.P15346516593233897536

`A294707(n)-A302110(A259170(n))`
-/

namespace A294706.P15346516593233897536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294707 n - A302110 (A259170 n).toNat

end

end A294706.P15346516593233897536

/-! ## A294706.P18231774037065636924

`A294707(n)-A220400(A089457(3*n+4))`
-/

namespace A294706.P18231774037065636924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294707 n - A220400 (A089457 (3 * n + 4)).toNat

end

end A294706.P18231774037065636924

/-!
# A294707: Number of permutations of [n] avoiding {4321, 3142, 1234}.

The programs for A294707, there is no canonical definition to state claims against.
-/

/-! ## A294707.P15151639703333662756

`A002229(A017988(n))`
-/

namespace A294707.P15151639703333662756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002229 (A017988 n).toNat

end

end A294707.P15151639703333662756

/-!
# A294708: Number of permutations of [n] avoiding {4231, 2143, 1234}.

The programs for A294708, there is no canonical definition to state claims against.
-/

/-! ## A294708.P11708515305589875101

`A325761(A114582(n))`
-/

namespace A294708.P11708515305589875101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325761 (A114582 n).toNat

end

end A294708.P11708515305589875101

/-! ## A294708.P17510060388665466567

`A066304(n)+A005836(A135354(n))`
-/

namespace A294708.P17510060388665466567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066304 n + A005836 (A135354 n).toNat

end

end A294708.P17510060388665466567

/-!
# A294709: Number of permutations of [n] avoiding {2143, 3412, 1234}.

The programs for A294709, the canonical program `A294709.P12200315064897075456` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294709 has offset 0).

The definition of A294709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294709.P12200315064897075456

`1/60*(60+16*n-65*n²+70*n^3-25*n^4+4*n^5)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294709

/-- `1/60*(60+16*n-65*n²+70*n^3-25*n^4+4*n^5)` -/
def P12200315064897075456.Spec : Prop :=
  ∀ n, P12200315064897075456.a n = (A294709 n : ℚ)

end A294709

/-! ## A294709.P14852665594432570523

`A134478(floor(Δ[e*n!]/2)-n)`
-/

namespace A294709.P14852665594432570523
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (⌊(f1 (n + 1) - f1 n) / 2⌋ - (n : ℤ)).toNat

end

end A294709.P14852665594432570523

namespace A294709

/-- `A134478(floor(Δ[e*n!]/2)-n)` -/
def P14852665594432570523.Spec : Prop :=
  ∀ n, P14852665594432570523.a n = A294709 n

end A294709

/-! ## A294709.P16345111287855118180

`A193597(A018067(n+1))`
-/

namespace A294709.P16345111287855118180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193597 (A018067 (n + 1)).toNat

end

end A294709.P16345111287855118180

namespace A294709

/-- `A193597(A018067(n+1))` -/
def P16345111287855118180.Spec : Prop :=
  ∀ n, P16345111287855118180.a n = A294709 n

end A294709

/-!
# A294710: Numbers that are the sum of three squares (square 0 allowed) in exactly seven ways.

The programs for A294710, there is no canonical definition to state claims against.
-/

/-! ## A294710.P13585385742977716127

`eq[7, A000164(n)]`
-/

namespace A294710.P13585385742977716127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294710.P13585385742977716127

/-! ## A294710.P10764831029717694250

`A294596(eq[A294600(n), A294624(3*(n+1))])`
-/

namespace A294710.P10764831029717694250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294624 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294596 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A294710.P10764831029717694250

/-!
# A294711: Numbers that are the sum of three squares (square 0 allowed) in exactly eight ways.

The programs for A294711, there is no canonical definition to state claims against.
-/

/-! ## A294711.P11110785149840815137

`eq[8, A000164(n)]`
-/

namespace A294711.P11110785149840815137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294711.P11110785149840815137

/-! ## A294711.P2179896621515481654

`A238784(A000111(n))+A025335(n+2)`
-/

namespace A294711.P2179896621515481654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238784 (A000111 n).toNat + A025335 (n + 2)

end

end A294711.P2179896621515481654

/-!
# A294712: Numbers that are the sum of three squares (square 0 allowed) in exactly nine ways.

The programs for A294712, there is no canonical definition to state claims against.
-/

/-! ## A294712.P5016957338963403809

`eq[9, A000164(n)]`
-/

namespace A294712.P5016957338963403809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294712.P5016957338963403809

/-!
# A294713: Numbers that are the sum of three squares (square 0 allowed) in exactly ten ways.

The programs for A294713, there is no canonical definition to state claims against.
-/

/-! ## A294713.P1511722541411871559

`eq[10, A000164(n)]`
-/

namespace A294713.P1511722541411871559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294713.P1511722541411871559

/-! ## A294713.P15511225140077607894

`A294715(A294720(n+1)+A067592(n))`
-/

namespace A294713.P15511225140077607894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294715 (A294720 (n + 1) + A067592 n).toNat

end

end A294713.P15511225140077607894

/-!
# A294714: Numbers which can be expressed as an ordered sum of 3 squares in 9 or more different ways.

The programs for A294714, there is no canonical definition to state claims against.
-/

/-! ## A294714.P8877287690932225872

`lt[8, A000164(n)]`
-/

namespace A294714.P8877287690932225872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294714.P8877287690932225872

/-! ## A294714.P6709371059856737979

`lt[8, A025427(n)+A000161(n)]`
-/

namespace A294714.P6709371059856737979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294714.P6709371059856737979

/-! ## A294714.P11772671413047998363

`lt[8, A002635(n)-A025428(n)]`
-/

namespace A294714.P11772671413047998363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294714.P11772671413047998363

/-! ## A294714.P13900770930281133651

`lt[8, A110654(A000925(n))+A025427(n)]`
-/

namespace A294714.P13900770930281133651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294714.P13900770930281133651

/-! ## A294714.P9286162468215675076

`lt[8, A010052(n)+A025427(n)+A025426(n)]`
-/

namespace A294714.P9286162468215675076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025427 n + A025426 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294714.P9286162468215675076

/-! ## A294714.P8195600977892876864

`lt[8, A216282(A022144(n))+A025436(n)]`
-/

namespace A294714.P8195600977892876864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n).toNat + A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294714.P8195600977892876864

/-! ## A294714.P10947453020781711833

`∪[A294712(n+1), A294715(n+1)]`
-/

namespace A294714.P10947453020781711833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294714.P10947453020781711833

/-!
# A294715: Numbers which can be expressed as an ordered sum of 3 squares in 10 or more different ways.

The programs for A294715, there is no canonical definition to state claims against.
-/

/-! ## A294715.P3066877453737794314

`lt[9, A000164(n)]`
-/

namespace A294715.P3066877453737794314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294715.P3066877453737794314

/-!
# A294717: Numbers k such that 2^((k-1)/3) == 1 (mod k) and (2*k-1)*(2^((k-1)/6)) == 1 (mod k).

The programs for A294717, there is no canonical definition to state claims against.
-/

/-! ## A294717.P9311135049563589287

`record[gcd(∑[2^n]+2, A016969(n)+2)]`
-/

namespace A294717.P9311135049563589287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℤ) (A016969 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294717.P9311135049563589287

/-! ## A294717.P14193243097227910577

`record[A014963(gcd(2^n+1, 6*n+1))]`
-/

namespace A294717.P14193243097227910577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd (2 ^ n + 1) (6 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294717.P14193243097227910577

/-! ## A294717.P16613146798586056280

`record[gcd(A000051(n), A016921(n))]`
-/

namespace A294717.P16613146798586056280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000051 n) (A016921 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294717.P16613146798586056280

/-! ## A294717.P11952960747324249633

`record[gcd(A016777(n), A052552(n))]`
-/

namespace A294717.P11952960747324249633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016777 n) (A052552 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294717.P11952960747324249633

/-! ## A294717.P17030044160900655270

`record[gcd(A007582(n), A271114(n))]`
-/

namespace A294717.P17030044160900655270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007582 n) (A271114 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294717.P17030044160900655270

/-!
# A294718: Number of permutations of [n] avoiding {4231, 2134, 1243}.

The programs for A294718, there is no canonical definition to state claims against.
-/

/-! ## A294718.P7100904944689797663

`A078899(37*A257561(n))`
-/

namespace A294718.P7100904944689797663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (37 * A257561 n).toNat

end

end A294718.P7100904944689797663

/-! ## A294718.P7855781338871007917

`A078899(lcm(37, A257561(n)))`
-/

namespace A294718.P7855781338871007917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (Int.lcm 37 (A257561 n))

end

end A294718.P7855781338871007917

/-! ## A294718.P6272737092317485396

`A083382(A133494(n)*A329395(n+4))`
-/

namespace A294718.P6272737092317485396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A133494 n * A329395 (n + 4)).toNat

end

end A294718.P6272737092317485396

/-!
# A294719: Number of permutations of [n] avoiding {2341, 2143, 4123}.

The programs for A294719, there is no canonical definition to state claims against.
-/

/-! ## A294719.P3821845415516593876

`A033182(2*n*∑[(n-1)*2^n+2])`
-/

namespace A294719.P3821845415516593876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 ^ n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A294719.P3821845415516593876

/-! ## A294719.P4079775061059029127

`A123541(A151031(n))`
-/

namespace A294719.P4079775061059029127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (A151031 n).toNat

end

end A294719.P4079775061059029127

/-! ## A294719.P18284966503289679267

`A116795(A014488(n)+n)`
-/

namespace A294719.P18284966503289679267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116795 (A014488 n + (n : ℤ)).toNat

end

end A294719.P18284966503289679267

/-!
# A294720: Palindromes in tribonacci sequence with initial values 0,1,0 (A001590).

The programs for A294720, there is no canonical definition to state claims against.
-/

/-! ## A294720.P11683040875709984879

`record[A001590(A072851(n))]`
-/

namespace A294720.P11683040875709984879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A072851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294720.P11683040875709984879

/-! ## A294720.P5184192359784821027

`A001590(A024651(n+3)-1)`
-/

namespace A294720.P5184192359784821027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A024651 (n + 3) - 1).toNat

end

end A294720.P5184192359784821027

/-! ## A294720.P11421826815167789696

`A001590((n+1)*A247642(n)+1)`
-/

namespace A294720.P11421826815167789696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 ((n + 1 : ℤ) * A247642 n + 1).toNat

end

end A294720.P11421826815167789696

/-!
# A294721: Irregular triangle read by rows: T(n,k) = n if k is the largest divisor of n <= sqrt(n), otherwise T(n,k) = 0. The first element of column k is in row k^2, n>=1, k>=1.

The programs for A294721, there is no canonical definition to state claims against.
-/

/-! ## A294721.P4648160484610144204

`∑[A294821(n+1)]*A294821(n+1)`
-/

namespace A294721.P4648160484610144204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A294821 (n + 1)

end

end A294721.P4648160484610144204

/-! ## A294721.P1154093058716626117

`(1-A342955(A161949(n+1)))*A073092(n)`
-/

namespace A294721.P1154093058716626117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A342955 (A161949 (n + 1)).toNat) * A073092 n

end

end A294721.P1154093058716626117

/-! ## A294721.P11091336385541489574

`A073092(n)*A323844(A342955(A161949(n+1)))`
-/

namespace A294721.P11091336385541489574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073092 n * A323844 (A342955 (A161949 (n + 1)).toNat).toNat

end

end A294721.P11091336385541489574

/-! ## A294721.P6520952707472005309

`A132774(eq[A000038(n), A007393(n+1)])`
-/

namespace A294721.P6520952707472005309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132774 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A294721.P6520952707472005309

/-! ## A294721.P6247626485800663003

`A132774(lt[A132801(3*n+2), A132768(n)])`
-/

namespace A294721.P6247626485800663003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132801 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132774 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294721.P6247626485800663003

/-!
# A294723: a(n) is the total number of vertices after n-th stage in the diagram of the symmetries of sigma described in A236104, with a(0) = 1.

The programs for A294723, there is no canonical definition to state claims against.
-/

/-! ## A294723.P12620391820506647603

`A294848(n)+A317109(n)/2`
-/

namespace A294723.P12620391820506647603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294848 n : ℚ) + (A317109 n : ℚ) / 2

end

end A294723.P12620391820506647603

/-! ## A294723.P6346380606471194314

`(A317109(n)+A294847(n))/2`
-/

namespace A294723.P6346380606471194314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317109 n + A294847 n : ℚ) / 2

end

end A294723.P6346380606471194314

/-! ## A294723.P2459515901669220274

`A001281(A317109(n)+A294847(n))`
-/

namespace A294723.P2459515901669220274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A317109 n + A294847 n).toNat

end

end A294723.P2459515901669220274

/-! ## A294723.P2061985221099080211

`A294848(n)+A004526(A317109(n))`
-/

namespace A294723.P2061985221099080211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294848 n + A004526 (A317109 n).toNat

end

end A294723.P2061985221099080211

/-! ## A294723.P8938909122746380167

`A004526(A317109(n)+A294847(n))`
-/

namespace A294723.P8938909122746380167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A317109 n + A294847 n).toNat

end

end A294723.P8938909122746380167

/-!
# A294724: Number of Q graphs with 2*n vertices rooted at an internal edge.

The programs for A294724, there is no canonical definition to state claims against.
-/

/-! ## A294724.P6038181827603257416

`A002264(xor(A088312(n), A322140(n)))`
-/

namespace A294724.P6038181827603257416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.xor (A088312 n) (A322140 n)).toNat

end

end A294724.P6038181827603257416

/-! ## A294724.P12085976008150746585

`A132837(3*(n+1))%A096976(A256956(n+1))`
-/

namespace A294724.P12085976008150746585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132837 (3 * (n + 1))) (A096976 (A256956 (n + 1)).toNat)

end

end A294724.P12085976008150746585

/-! ## A294724.P6810953916507138647

`(A009567(n+1)-A293152(n+1))%A330663(n)`
-/

namespace A294724.P6810953916507138647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009567 (n + 1) - A293152 (n + 1)) (A330663 n)

end

end A294724.P6810953916507138647

/-!
# A294725: Number of permutations of [n] avoiding {4231, 3412, 1234}.

The programs for A294725, there is no canonical definition to state claims against.
-/

/-! ## A294725.P16421597426647207543

`A294726(n)-∑[∑[A000910(n)]]`
-/

namespace A294725.P16421597426647207543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294726 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294725.P16421597426647207543

/-! ## A294725.P2246596187096753816

`A033182(2*n*∑[(n-1)*2^n+2])+char[5]`
-/

namespace A294725.P2246596187096753816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 ^ n : ℤ) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294725.P2246596187096753816

/-! ## A294725.P14424203105903984333

`A123541(A151031(n))+char[5]`
-/

namespace A294725.P14424203105903984333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (A151031 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294725.P14424203105903984333

/-!
# A294726: Number of permutations of [n] avoiding {4231, 3142, 1234}.

The programs for A294726, there is no canonical definition to state claims against.
-/

/-! ## A294726.P10024976430685915991

`A294725(n)+∑[∑[A000910(n)]]`
-/

namespace A294726.P10024976430685915991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294725 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294726.P10024976430685915991

/-! ## A294726.P5173706811594124618

`A000910(n)+A033182(2*n*∑[(n-1)*2^n+2])+char[5]`
-/

namespace A294726.P5173706811594124618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 ^ n : ℤ) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 n + (A033182 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A294726.P5173706811594124618

/-! ## A294726.P18133007431839180978

`A204016(A059231(n))+A000110(n)`
-/

namespace A294726.P18133007431839180978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A059231 n).toNat + A000110 n

end

end A294726.P18133007431839180978

/-!
# A294728: Number of Q graphs with 2*n vertices symmetrical about a distinguished edge.

The programs for A294728, there is no canonical definition to state claims against.
-/

/-! ## A294728.P4348704758984590193

`A171678(A037956(n+1))`
-/

namespace A294728.P4348704758984590193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171678 (A037956 (n + 1)).toNat

end

end A294728.P4348704758984590193

/-! ## A294728.P17027532560832609062

`A002262(xor(A074683(n), A148413(n)))`
-/

namespace A294728.P17027532560832609062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.xor (A074683 n) (A148413 n)).toNat

end

end A294728.P17027532560832609062

/-! ## A294728.P2641643492988932162

`A025581(A000110(n)-A302367(n+1))`
-/

namespace A294728.P2641643492988932162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000110 n - A302367 (n + 1)).toNat

end

end A294728.P2641643492988932162

/-! ## A294728.P16103467686984764364

`A025581(A000110(n)-A302889(n+1))`
-/

namespace A294728.P16103467686984764364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000110 n - A302889 (n + 1)).toNat

end

end A294728.P16103467686984764364

/-! ## A294728.P8064066948979792225

`A025581(A000110(n)-A303084(n+1))`
-/

namespace A294728.P8064066948979792225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000110 n - A303084 (n + 1)).toNat

end

end A294728.P8064066948979792225

/-!
# A294729: Numbers k such that 2^k - 1 is the product of three primes.

The programs for A294729, there is no canonical definition to state claims against.
-/

/-! ## A294729.P5552021401125021295

`eq[3, A046051(n+1)]+1`
-/

namespace A294729.P5552021401125021295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A294729.P5552021401125021295

/-! ## A294729.P10993157504443073029

`eq[3, A046051(A028310(n))]`
-/

namespace A294729.P10993157504443073029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294729.P10993157504443073029

/-! ## A294729.P835210231432920989

`A065475(eq[3, A046051(n+1)])`
-/

namespace A294729.P835210231432920989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294729.P835210231432920989

/-! ## A294729.P14876938436858512900

`eq[3, A046051(A065033(2*n))]`
-/

namespace A294729.P14876938436858512900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294729.P14876938436858512900

/-! ## A294729.P7489276377074746741

`eq[3, A046051(A000007(n)+n)]`
-/

namespace A294729.P7489276377074746741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294729.P7489276377074746741

/-! ## A294729.P1075743411135041226

`A344180(eq[3, A046051(A344180(n))])`
-/

namespace A294729.P1075743411135041226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294729.P1075743411135041226

/-! ## A294729.P12302955182140149537

`eq[3, A046051(A233583(n+1))]`
-/

namespace A294729.P12302955182140149537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294729.P12302955182140149537

/-!
# A294730: Smallest average >= 6 of a twin prime pair that has exactly 2*n divisors, 0 if no such pair exists.

The programs for A294730, there is no canonical definition to state claims against.
-/

/-! ## A294730.P11645751310929126108

`A119690(A350936(n+2))`
-/

namespace A294730.P11645751310929126108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119690 (A350936 (n + 2)).toNat

end

end A294730.P11645751310929126108

/-! ## A294730.P7330287084337696089

`A080372(n+2)%A327714(A326293(n))`
-/

namespace A294730.P7330287084337696089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080372 (n + 2)) (A327714 (A326293 n).toNat)

end

end A294730.P7330287084337696089

/-!
# A294731: Smallest average of a twin prime pair divisible by the n-th prime, i.e. A090530(n), divided by 6*prime(n).

The programs for A294731, there is no canonical definition to state claims against.
-/

/-! ## A294731.P12696696456825163860

`A071407(n+3)/6`
-/

namespace A294731.P12696696456825163860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071407 (n + 3) : ℚ) / 6

end

end A294731.P12696696456825163860

/-! ## A294731.P8403109457949130716

`A090530(n+3)/(6*A000040(n+3))`
-/

namespace A294731.P8403109457949130716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090530 (n + 3) : ℚ) / (6 * A000040 (n + 3) : ℚ)

end

end A294731.P8403109457949130716

/-! ## A294731.P18186629863371459111

`A182481(p?[2*n+5])`
-/

namespace A294731.P18186629863371459111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A294731.P18186629863371459111

/-! ## A294731.P17488130345910497589

`A182481(A004139(n+1))`
-/

namespace A294731.P17488130345910497589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A004139 (n + 1)).toNat

end

end A294731.P17488130345910497589

/-! ## A294731.P7733592509981249675

`A182481(A215848(n+1))`
-/

namespace A294731.P7733592509981249675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A215848 (n + 1)).toNat

end

end A294731.P7733592509981249675

/-! ## A294731.P1087234091571817438

`A182481(A045319(n+2))`
-/

namespace A294731.P1087234091571817438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A045319 (n + 2)).toNat

end

end A294731.P1087234091571817438

/-! ## A294731.P13100978923511723585

`A182481(A045344(n+2))`
-/

namespace A294731.P13100978923511723585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A045344 (n + 2)).toNat

end

end A294731.P13100978923511723585

/-! ## A294731.P5546348965060824507

`A182481(A065091(n+2))`
-/

namespace A294731.P5546348965060824507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A065091 (n + 2)).toNat

end

end A294731.P5546348965060824507

/-! ## A294731.P4282243098771137861

`A182481(A140475(n+2))`
-/

namespace A294731.P4282243098771137861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A140475 (n + 2)).toNat

end

end A294731.P4282243098771137861

/-! ## A294731.P10933394340178527142

`A182481(A000040(n+3))`
-/

namespace A294731.P10933394340178527142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A000040 (n + 3)).toNat

end

end A294731.P10933394340178527142

/-! ## A294731.P2982058503898009178

`A182481(Δ[A007504(n+2)])`
-/

namespace A294731.P2982058503898009178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (f1 (n + 1) - f1 n).toNat

end

end A294731.P2982058503898009178

/-! ## A294731.P2504928678712645168

`A124522(3*A000040(n+3))`
-/

namespace A294731.P2504928678712645168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124522 (3 * A000040 (n + 3)).toNat

end

end A294731.P2504928678712645168

/-!
# A294732: Maximal diameter of the connected cubic graphs on 2*n vertices.

The programs for A294732, the canonical program `A294732.P10884492668465992703` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294732 has offset 2).

The definition of A294732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294732.P10884492668465992703

`a(n-2)+3` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294732

/-- `a(n-2)+3` -/
def P10884492668465992703.Spec : Prop :=
  ∀ n, (P10884492668465992703.a n : ℤ) = A294732 (n + 2)

theorem P10884492668465992703.correct : P10884492668465992703.Spec := by
  intro n
  simp only [A294732, Nat.add_sub_cancel]

end A294732

/-! ## A294732.P11326606607695110982

`A267528(n+1)`
-/

namespace A294732.P11326606607695110982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (n + 1)

end

end A294732.P11326606607695110982

namespace A294732

/-- `A267528(n+1)` -/
def P11326606607695110982.Spec : Prop :=
  ∀ n, P11326606607695110982.a n = A294732 (n + 2)

end A294732

/-! ## A294732.P12407163852749085048

`round(3/(2*acot(n)))`
-/

namespace A294732.P12407163852749085048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (2 * SequenceMachineLib.acot (n : ℝ)))

end

end A294732.P12407163852749085048

namespace A294732

/-- `round(3/(2*acot(n)))` -/
def P12407163852749085048.Spec : Prop :=
  ∀ n, P12407163852749085048.a n = A294732 (n + 2)

end A294732

/-! ## A294732.P15458037944405226418

`round(cosh(log(acot(n))))+n`
-/

namespace A294732.P15458037944405226418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ)))) + (n : ℤ)

end

end A294732.P15458037944405226418

namespace A294732

/-- `round(cosh(log(acot(n))))+n` -/
def P15458037944405226418.Spec : Prop :=
  ∀ n, P15458037944405226418.a n = A294732 (n + 2)

end A294732

/-! ## A294732.P6361760856181550438

`comp[3*(n+1)]+1`
-/

namespace A294732.P6361760856181550438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A294732.P6361760856181550438

namespace A294732

/-- `comp[3*(n+1)]+1` -/
def P6361760856181550438.Spec : Prop :=
  ∀ n, (P6361760856181550438.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P2218052861148465876

`record[lcm(3, n)/3+1]`
-/

namespace A294732.P2218052861148465876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℚ) / 3 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294732.P2218052861148465876

namespace A294732

/-- `record[lcm(3, n)/3+1]` -/
def P2218052861148465876.Spec : Prop :=
  ∀ n, P2218052861148465876.a n = (A294732 (n + 2) : ℚ)

end A294732

/-! ## A294732.P14904371364570377087

`record[n/gcd(3, n)+1]`
-/

namespace A294732.P14904371364570377087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294732.P14904371364570377087

namespace A294732

/-- `record[n/gcd(3, n)+1]` -/
def P14904371364570377087.Spec : Prop :=
  ∀ n, P14904371364570377087.a n = (A294732 (n + 2) : ℚ)

end A294732

/-! ## A294732.P16952273990651079422

`comp[n*(n-3)%3]`
-/

namespace A294732.P16952273990651079422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((n : ℤ) - 3) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A294732.P16952273990651079422

namespace A294732

/-- `comp[n*(n-3)%3]` -/
def P16952273990651079422.Spec : Prop :=
  ∀ n, (P16952273990651079422.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P8064106374651635015

`floor(cosh(log(3*n+1)))`
-/

namespace A294732.P8064106374651635015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (3 * n + 1 : ℝ))⌋

end

end A294732.P8064106374651635015

namespace A294732

/-- `floor(cosh(log(3*n+1)))` -/
def P8064106374651635015.Spec : Prop :=
  ∀ n, P8064106374651635015.a n = A294732 (n + 2)

end A294732

/-! ## A294732.P12360092839849633372

`∑[gcd(4, ∏{p}[1-n, #])]`
-/

namespace A294732.P12360092839849633372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294732.P12360092839849633372

namespace A294732

/-- `∑[gcd(4, ∏{p}[1-n, #])]` -/
def P12360092839849633372.Spec : Prop :=
  ∀ n, (P12360092839849633372.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P527813787740358378

`round(round(3/acot(n))/2)`
-/

namespace A294732.P527813787740358378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ)) : ℚ) / 2)

end

end A294732.P527813787740358378

namespace A294732

/-- `round(round(3/acot(n))/2)` -/
def P527813787740358378.Spec : Prop :=
  ∀ n, P527813787740358378.a n = A294732 (n + 2)

end A294732

/-! ## A294732.P14651941484776049373

`floor(cosh(log(n+1))+n)`
-/

namespace A294732.P14651941484776049373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ)) + (n : ℝ)⌋

end

end A294732.P14651941484776049373

namespace A294732

/-- `floor(cosh(log(n+1))+n)` -/
def P14651941484776049373.Spec : Prop :=
  ∀ n, P14651941484776049373.a n = A294732 (n + 2)

end A294732

/-! ## A294732.P18411768912325600380

`∑[gcd(n+1, ceil(atan(n)))]`
-/

namespace A294732.P18411768912325600380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌈Real.arctan (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294732.P18411768912325600380

namespace A294732

/-- `∑[gcd(n+1, ceil(atan(n)))]` -/
def P18411768912325600380.Spec : Prop :=
  ∀ n, (P18411768912325600380.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P16875848462848898175

`∑[∏{p}[∏{p}[n, 2%#], #]]`
-/

namespace A294732.P16875848462848898175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 2 % p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294732.P16875848462848898175

namespace A294732

/-- `∑[∏{p}[∏{p}[n, 2%#], #]]` -/
def P16875848462848898175.Spec : Prop :=
  ∀ n, (P16875848462848898175.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P8340255808724179761

`lt[tan(dr(n)), acot(n-1)]`
-/

namespace A294732.P8340255808724179761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294732.P8340255808724179761

namespace A294732

/-- `lt[tan(dr(n)), acot(n-1)]` -/
def P8340255808724179761.Spec : Prop :=
  ∀ n, (P8340255808724179761.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P6942373466388903300

`∑[((n-2)%2+1)!]`
-/

namespace A294732.P6942373466388903300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n : ℤ) - 2) 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294732.P6942373466388903300

namespace A294732

/-- `∑[((n-2)%2+1)!]` -/
def P6942373466388903300.Spec : Prop :=
  ∀ n, (P6942373466388903300.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P14948463011775039791

`record[(n+1)^(n²%3)]`
-/

namespace A294732.P14948463011775039791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294732.P14948463011775039791

namespace A294732

/-- `record[(n+1)^(n²%3)]` -/
def P14948463011775039791.Spec : Prop :=
  ∀ n, (P14948463011775039791.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P7397742179260132347

`∑[((n+2)%or(1, n))!]`
-/

namespace A294732.P7397742179260132347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 2) % Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294732.P7397742179260132347

namespace A294732

/-- `∑[((n+2)%or(1, n))!]` -/
def P7397742179260132347.Spec : Prop :=
  ∀ n, (P7397742179260132347.a n : ℤ) = A294732 (n + 2)

end A294732

/-! ## A294732.P16410665667006503645

`∑[3-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A294732.P16410665667006503645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294732.P16410665667006503645

namespace A294732

/-- `∑[3-a(n-1)]` -/
def P16410665667006503645.Spec : Prop :=
  ∀ n, P16410665667006503645.a n = A294732 (n + 2)

end A294732

/-! ## A294732.P10378784442082631365

`record[n-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A294732.P10378784442082631365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  (n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294732.P10378784442082631365

namespace A294732

/-- `record[n-a(n-3)]` -/
def P10378784442082631365.Spec : Prop :=
  ∀ n, P10378784442082631365.a n = A294732 (n + 2)

end A294732

/-!
# A294733: Maximal diameter of connected (2*k)-regular graphs on 2*n+1 nodes written as triangular array T(n,k), 1 <= k <= n.

The programs for A294733, there is no canonical definition to state claims against.
-/

/-! ## A294733.P9609214474034356583

`A004736(n+1)-A237832(A194917(n+1))`
-/

namespace A294733.P9609214474034356583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A237832 (A194917 (n + 1)).toNat

end

end A294733.P9609214474034356583

/-! ## A294733.P7680705243644498916

`A004736(n+1)-A025581(n+1)%A004736(A242093(n))`
-/

namespace A294733.P7680705243644498916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - Int.tmod (A025581 (n + 1)) (A004736 (A242093 n).toNat)

end

end A294733.P7680705243644498916

/-! ## A294733.P902229988795727890

`A275724((n+1)^A080934(n))`
-/

namespace A294733.P902229988795727890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A080934 n : ℤ))).toNat

end

end A294733.P902229988795727890

/-! ## A294733.P376692044120076078

`A275724(A250246(n+1)^A288942(n))`
-/

namespace A294733.P376692044120076078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (SequenceMachineLib.roundAway ((A250246 (n + 1) : ℚ) ^ (A288942 n : ℤ))).toNat

end

end A294733.P376692044120076078

/-! ## A294733.P17809671060512961135

`A165162(A361681(n+1))`
-/

namespace A294733.P17809671060512961135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165162 (A361681 (n + 1)).toNat

end

end A294733.P17809671060512961135

/-!
# A294735: Triangle read by rows: T(n,k) (3 <= k < n) gives number of solutions to certain 1-loop scattering equations refined by MHV degree.

The programs for A294735, there is no canonical definition to state claims against.
-/

/-! ## A294735.P12641635185037425936

`A142706(A038722(n+1))+A142706(n+1)`
-/

namespace A294735.P12641635185037425936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142706 (A038722 (n + 1)).toNat + A142706 (n + 1)

end

end A294735.P12641635185037425936

/-! ## A294735.P6485619362370221308

`A142706(n+1)+A142706(A061579(n)+1)`
-/

namespace A294735.P6485619362370221308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142706 (n + 1) + A142706 (A061579 n + 1).toNat

end

end A294735.P6485619362370221308

/-! ## A294735.P9618559739861136590

`A142706(A093995(n+1)-n)+A142706(n+1)`
-/

namespace A294735.P9618559739861136590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142706 (A093995 (n + 1) - (n : ℤ)).toNat + A142706 (n + 1)

end

end A294735.P9618559739861136590

/-!
# A294736: Numbers that are the sum of 5 nonzero squares in exactly 2 ways.

The programs for A294736, there is no canonical definition to state claims against.
-/

/-! ## A294736.P10229143978931594309

`eq[2, A025429(n)]`
-/

namespace A294736.P10229143978931594309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294736.P10229143978931594309

/-! ## A294736.P15654227072669935550

`eq[2, A243148(A077169(n+1))]`
-/

namespace A294736.P15654227072669935550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294736.P15654227072669935550

/-! ## A294736.P12399960701355474169

`eq[2, A243148(A077169(n))]-1`
-/

namespace A294736.P12399960701355474169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A294736.P12399960701355474169

/-! ## A294736.P7555985959533747355

`lt[A084459(A025429(n)+2), 2]`
-/

namespace A294736.P7555985959533747355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084459 (A025429 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294736.P7555985959533747355

/-! ## A294736.P8059073970215237842

`eq[A002635(n)+2, A000174(n)]`
-/

namespace A294736.P8059073970215237842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294736.P8059073970215237842

/-!
# A294737: Numbers that are the sum of 5 nonzero squares in exactly 3 ways.

The programs for A294737, there is no canonical definition to state claims against.
-/

/-! ## A294737.P13292214275001656821

`eq[3, A025429(n)]`
-/

namespace A294737.P13292214275001656821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294737.P13292214275001656821

/-! ## A294737.P17700704122200060436

`lt[2, A036262(A025429(n)²)]`
-/

namespace A294737.P17700704122200060436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A025429 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294737.P17700704122200060436

/-! ## A294737.P15665577284293264417

`lt[A003987(A025429(n)+1), 1]`
-/

namespace A294737.P15665577284293264417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A025429 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294737.P15665577284293264417

/-! ## A294737.P12488504099157607597

`lt[1, A003989(A025429(n)+2)]`
-/

namespace A294737.P12488504099157607597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A025429 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294737.P12488504099157607597

/-! ## A294737.P2206133972688762689

`lt[A084459(A025429(n)+1), 2]`
-/

namespace A294737.P2206133972688762689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084459 (A025429 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294737.P2206133972688762689

/-!
# A294738: Numbers that are the sum of 5 nonzero squares in exactly 4 ways.

The programs for A294738, there is no canonical definition to state claims against.
-/

/-! ## A294738.P9294996232195501403

`eq[4, A025429(n)]`
-/

namespace A294738.P9294996232195501403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294738.P9294996232195501403

/-! ## A294738.P17988387876228247059

`lt[1, A242830(A025429(n)+1)]`
-/

namespace A294738.P17988387876228247059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (A025429 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294738.P17988387876228247059

/-! ## A294738.P10545856930678411719

`eq[4, A243148(A077169(n+1))]`
-/

namespace A294738.P10545856930678411719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294738.P10545856930678411719

/-! ## A294738.P17485505943702509146

`lt[4, A256470(A025429(n)+2)]`
-/

namespace A294738.P17485505943702509146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256470 (A025429 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294738.P17485505943702509146

/-! ## A294738.P5189454323175431495

`eq[A002635(n)+4, A000174(n)]`
-/

namespace A294738.P5189454323175431495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294738.P5189454323175431495

/-!
# A294739: Numbers that are the sum of 5 nonzero squares in exactly 5 ways.

The programs for A294739, there is no canonical definition to state claims against.
-/

/-! ## A294739.P388483088830599374

`eq[5, A025429(n)]`
-/

namespace A294739.P388483088830599374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294739.P388483088830599374

/-! ## A294739.P9372297654250064779

`eq[5, A243148(A077169(n+1))]`
-/

namespace A294739.P9372297654250064779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294739.P9372297654250064779

/-! ## A294739.P6497221041818947530

`lt[3, A099244(A025429(n)+10)]`
-/

namespace A294739.P6497221041818947530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A025429 n + 10).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294739.P6497221041818947530

/-! ## A294739.P5563152331276816342

`eq[A002635(n)+5, A000174(n)]`
-/

namespace A294739.P5563152331276816342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294739.P5563152331276816342

/-! ## A294739.P11947253357374413920

`lt[A008683(2*(A025429(n)+16)), 0]`
-/

namespace A294739.P11947253357374413920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (A025429 n + 16)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294739.P11947253357374413920

/-!
# A294740: Numbers that are the sum of 5 nonzero squares in exactly 6 ways.

The programs for A294740, there is no canonical definition to state claims against.
-/

/-! ## A294740.P15637907667257606677

`eq[6, A025429(n)]`
-/

namespace A294740.P15637907667257606677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294740.P15637907667257606677

/-! ## A294740.P7007809551331970572

`lt[A169706(A025429(n)+1), 1]`
-/

namespace A294740.P7007809551331970572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169706 (A025429 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294740.P7007809551331970572

/-! ## A294740.P3181806287817433925

`eq[6, A243148(A077169(n+1))]`
-/

namespace A294740.P3181806287817433925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294740.P3181806287817433925

/-! ## A294740.P4322076447719305150

`lt[2, A003989(A025429(n)+7)]`
-/

namespace A294740.P4322076447719305150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A025429 n + 7).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294740.P4322076447719305150

/-! ## A294740.P6635046054690840268

`lt[A095408(A025429(n)+10), 0]`
-/

namespace A294740.P6635046054690840268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (A025429 n + 10).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294740.P6635046054690840268

/-!
# A294741: Numbers that are the sum of 5 nonzero squares in exactly 7 ways.

The programs for A294741, there is no canonical definition to state claims against.
-/

/-! ## A294741.P8347138429995193675

`eq[7, A025429(n)]`
-/

namespace A294741.P8347138429995193675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294741.P8347138429995193675

/-! ## A294741.P10645528060832300583

`eq[A002635(n)+7, A000174(n)]`
-/

namespace A294741.P10645528060832300583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294741.P10645528060832300583

/-! ## A294741.P12375035801533195987

`lt[1, A001222(val(A025429(n)+1, 2)+1)]`
-/

namespace A294741.P12375035801533195987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.valuation (A025429 n + 1).toNat 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294741.P12375035801533195987

/-! ## A294741.P3743637661564762416

`lt[A015626(A025429(n)), A000007(n)]`
-/

namespace A294741.P3743637661564762416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015626 (A025429 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294741.P3743637661564762416

/-! ## A294741.P3666332194856163675

`lt[A055643(n), A082571(A025429(n))]`
-/

namespace A294741.P3666332194856163675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082571 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294741.P3666332194856163675

/-!
# A294742: Numbers that are the sum of 5 nonzero squares in exactly 8 ways.

The programs for A294742, there is no canonical definition to state claims against.
-/

/-! ## A294742.P7402683619380560112

`eq[8, A025429(n)]`
-/

namespace A294742.P7402683619380560112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294742.P7402683619380560112

/-! ## A294742.P3191569511072956718

`lt[A007953(A025429(n)+2), 2]`
-/

namespace A294742.P3191569511072956718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A025429 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294742.P3191569511072956718

/-! ## A294742.P2261087931802361050

`lt[3, A099244(A025429(n)+7)]`
-/

namespace A294742.P2261087931802361050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A025429 n + 7).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294742.P2261087931802361050

/-! ## A294742.P17663815535122301511

`eq[A002635(n)+8, A000174(n)]`
-/

namespace A294742.P17663815535122301511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294742.P17663815535122301511

/-! ## A294742.P6040908038888847704

`eq[2, A123221(A000174(n)-A002635(n))]`
-/

namespace A294742.P6040908038888847704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123221 (A000174 n - A002635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294742.P6040908038888847704

/-!
# A294743: Numbers that are the sum of 5 nonzero squares in exactly 9 ways.

The programs for A294743, there is no canonical definition to state claims against.
-/

/-! ## A294743.P7259977690837617881

`eq[9, A025429(n)]`
-/

namespace A294743.P7259977690837617881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294743.P7259977690837617881

/-! ## A294743.P3360156692368488332

`lt[A063507(A025429(n)+1), 1]`
-/

namespace A294743.P3360156692368488332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A025429 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294743.P3360156692368488332

/-! ## A294743.P2131445389333486638

`lt[A202962(A025429(n)+1), 1]`
-/

namespace A294743.P2131445389333486638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202962 (A025429 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294743.P2131445389333486638

/-! ## A294743.P7257371249649061324

`lt[1, A323169(A025429(n)+1)]`
-/

namespace A294743.P7257371249649061324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A025429 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294743.P7257371249649061324

/-! ## A294743.P8071666316447303341

`eq[9, A243148(A077169(n+1))]`
-/

namespace A294743.P8071666316447303341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294743.P8071666316447303341

/-!
# A294744: Numbers that are the sum of 5 nonzero squares in exactly 10 ways.

The programs for A294744, there is no canonical definition to state claims against.
-/

/-! ## A294744.P4419630591424891916

`eq[10, A025429(n)]`
-/

namespace A294744.P4419630591424891916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294744.P4419630591424891916

/-! ## A294744.P6346743556054832677

`eq[A002635(n)+10, A000174(n)]`
-/

namespace A294744.P6346743556054832677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294744.P6346743556054832677

/-! ## A294744.P3612962127632079427

`eq[5, A273943(A000174(n)-A002635(n))]`
-/

namespace A294744.P3612962127632079427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A000174 n - A002635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294744.P3612962127632079427

/-! ## A294744.P5109012421741944782

`A028310(eq[10, A000174(n)-A002635(n)])`
-/

namespace A294744.P5109012421741944782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - A002635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294744.P5109012421741944782

/-! ## A294744.P8114473877143924010

`eq[42, A000041(A000174(n)-A002635(n))]`
-/

namespace A294744.P8114473877143924010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000174 n - A002635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294744.P8114473877143924010

/-!
# A294746: Number A(n,k) of compositions (ordered partitions) of 1 into exactly k*n+1 powers of 1/(k+1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A294746, there is no canonical definition to state claims against.
-/

/-! ## A294746.P57299390494524187

`A008984(A305962(n))%A184271(n+1)`
-/

namespace A294746.P57299390494524187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008984 (A305962 n).toNat) (A184271 (n + 1))

end

end A294746.P57299390494524187

/-! ## A294746.P5627053866624410867

`A364368(A195738(n+1)+A001222(n+1))`
-/

namespace A294746.P5627053866624410867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364368 (A195738 (n + 1) + A001222 (n + 1)).toNat

end

end A294746.P5627053866624410867

/-!
# A294747: Number of compositions (ordered partitions) of 1 into exactly n^2+1 powers of 1/(n+1).

The programs for A294747, there is no canonical definition to state claims against.
-/

/-! ## A294747.P4388615908856477206

`A294746(∑[4*n])`
-/

namespace A294747.P4388615908856477206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294747.P4388615908856477206

/-! ## A294747.P11906265443115828182

`gcd(A000038(n), A294746(A046092(n)))`
-/

namespace A294747.P11906265443115828182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A294746 (A046092 n).toNat)

end

end A294747.P11906265443115828182

/-! ## A294747.P162882724726522344

`lcm(A294746(n+2), A294746(A046092(n)))`
-/

namespace A294747.P162882724726522344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A294746 (n + 2)) (A294746 (A046092 n).toNat)

end

end A294747.P162882724726522344

/-! ## A294747.P14287849750991474679

`A294746(A046092(n))+A000038(3*n+2)`
-/

namespace A294747.P14287849750991474679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (A046092 n).toNat + A000038 (3 * n + 2)

end

end A294747.P14287849750991474679

/-!
# A294748: Define one of the generalized Syracuse sequences starting with a positive odd integer 2*k+1=x(1), then if x(i) is an odd prime set x(i+1)=2*x(i)+1, if x(i) is odd not prime set x(i+1)=3*x(i)+1, if x(i) is even then set x(i+1)=x(i)/2. This sequence gives the positive odd integers 2*k+1=x(1) for sequences reaching x(i)=1.

The programs for A294748, there is no canonical definition to state claims against.
-/

/-! ## A294748.P5135361564644438366

`lt[(-1)^n, A016389(A002322(n+1))]`
-/

namespace A294748.P5135361564644438366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294748.P5135361564644438366

/-! ## A294748.P2388928976940090380

`lt[A036036(A117683(n+1)), A055396(3*n+2)]`
-/

namespace A294748.P2388928976940090380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A117683 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294748.P2388928976940090380

/-! ## A294748.P2158639165929932881

`lt[A185284(A334206(n+1)), n%2]`
-/

namespace A294748.P2158639165929932881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294748.P2158639165929932881

/-! ## A294748.P15310040259780477213

`eq[A035363(n), A185284(A334206(n+1))]`
-/

namespace A294748.P15310040259780477213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294748.P15310040259780477213

/-! ## A294748.P5487399318393399835

`eq[A035457(n), A185284(A334206(n+1))]`
-/

namespace A294748.P5487399318393399835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294748.P5487399318393399835

/-! ## A294748.P6414838646058834874

`eq[A056594(n), A185284(A334206(n+1))]`
-/

namespace A294748.P6414838646058834874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294748.P6414838646058834874

/-! ## A294748.P8248478713654231597

`eq[A059841(n), A185284(A334206(n+1))]`
-/

namespace A294748.P8248478713654231597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294748.P8248478713654231597

/-! ## A294748.P18255001454832749730

`lt[A185284(A334206(n+1)), A000035(n)]`
-/

namespace A294748.P18255001454832749730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294748.P18255001454832749730

/-! ## A294748.P8172246998959428674

`eq[A000035(n+1), A185284(A334206(n+1))]`
-/

namespace A294748.P8172246998959428674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294748.P8172246998959428674

/-! ## A294748.P4020772036668949446

`eq[A007814(n+2), A185284(A334206(n+1))]`
-/

namespace A294748.P4020772036668949446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A334206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294748.P4020772036668949446

/-!
# A294751: Squarefree products of k primes that are symmetrically distributed around their average. Case k = 4.

The programs for A294751, there is no canonical definition to state claims against.
-/

/-! ## A294751.P14241999135229202135

`∩[A046390(n+1), A199745(n+1)]`
-/

namespace A294751.P14241999135229202135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294751.P14241999135229202135

/-! ## A294751.P16530943370222843142

`∩[A046390(n+1), A200145(n+1)]`
-/

namespace A294751.P16530943370222843142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294751.P16530943370222843142

/-! ## A294751.P3121920001087493020

`∩[A199745(n+1), A378717(n+1)]`
-/

namespace A294751.P3121920001087493020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294751.P3121920001087493020

/-! ## A294751.P3450326664741001132

`record[A000265(A200145(n+1))]`
-/

namespace A294751.P3450326664741001132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A200145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294751.P3450326664741001132

/-! ## A294751.P11844725152076161922

`filter[A200145(n+1), A322980(#)]`
-/

namespace A294751.P11844725152076161922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A294751.P11844725152076161922

/-!
# A294753: Number of permutations of [n] avoiding {4321, 1423, 1234}.

The programs for A294753, there is no canonical definition to state claims against.
-/

/-! ## A294753.P10005582434661714263

`A330675(n)%(A330677(n)+11)`
-/

namespace A294753.P10005582434661714263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330675 n) (A330677 n + 11)

end

end A294753.P10005582434661714263

/-! ## A294753.P13605785009666654605

`A000267(C(A282502(2*n+1), 3))`
-/

namespace A294753.P13605785009666654605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Nat.choose (A282502 (2 * n + 1)).toNat 3)

end

end A294753.P13605785009666654605

/-! ## A294753.P3698563271106990694

`A294763(n)-A147785(A208227(n))`
-/

namespace A294753.P3698563271106990694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294763 n - A147785 (A208227 n).toNat

end

end A294753.P3698563271106990694

/-!
# A294754: Number of permutations of [n] avoiding {4321, 4123, 1234}.

The programs for A294754, there is no canonical definition to state claims against.
-/

/-! ## A294754.P8008693918313438968

`A002635(A133655(∑[abs(2-3^n)-1]))`
-/

namespace A294754.P8008693918313438968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (3 ^ n : ℤ)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A133655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A294754.P8008693918313438968

/-! ## A294754.P6145925910111967485

`A321537(A305199(n))+A294753(n)`
-/

namespace A294754.P6145925910111967485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A305199 n).toNat + A294753 n

end

end A294754.P6145925910111967485

/-! ## A294754.P9883849616417545824

`A308931(3*n)+A299477(A006882(n))`
-/

namespace A294754.P9883849616417545824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308931 (3 * n) + A299477 (A006882 n).toNat

end

end A294754.P9883849616417545824

/-!
# A294756: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1-j^(k*j)*x^j)^j(k*j) in powers of x.

The programs for A294756, there is no canonical definition to state claims against.
-/

/-! ## A294756.P16443853876557710710

`A008619(A166692(n)^A049513(n))`
-/

namespace A294756.P16443853876557710710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A166692 n : ℚ) ^ (A049513 n : ℤ))).toNat

end

end A294756.P16443853876557710710

/-! ## A294756.P196207632383935954

`A008619(A166692(n)^A135226(n))`
-/

namespace A294756.P196207632383935954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A166692 n : ℚ) ^ (A135226 n : ℤ))).toNat

end

end A294756.P196207632383935954

/-! ## A294756.P6969784739324699702

`A008621(A002262(n)^A336534(n))`
-/

namespace A294756.P6969784739324699702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A336534 n : ℤ))).toNat

end

end A294756.P6969784739324699702

/-! ## A294756.P15079933848282769444

`A008621(A059268(n)^A293012(n))`
-/

namespace A294756.P15079933848282769444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A293012 n : ℤ))).toNat

end

end A294756.P15079933848282769444

/-! ## A294756.P14512604631668056839

`A008621(A059268(n)^A339768(n))`
-/

namespace A294756.P14512604631668056839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A339768 n : ℤ))).toNat

end

end A294756.P14512604631668056839

/-!
# A294757: Expansion of Product_{k>=1} 1/(1 - k^k*x^k)^(k^k).

The programs for A294757, there is no canonical definition to state claims against.
-/

/-! ## A294757.P1777860416541795770

`A294756(∑[n+2]-1)`
-/

namespace A294757.P1777860416541795770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294756 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294757.P1777860416541795770

/-! ## A294757.P7364378065802582011

`A294756(A034856(n+1))+A011734(n)`
-/

namespace A294757.P7364378065802582011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294756 (A034856 (n + 1)).toNat + A011734 n

end

end A294757.P7364378065802582011

/-! ## A294757.P5373826079071335122

`A294756(A034856(n+1))+A185036(n)`
-/

namespace A294757.P5373826079071335122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294756 (A034856 (n + 1)).toNat + A185036 n

end

end A294757.P5373826079071335122

/-! ## A294757.P127253242032140619

`A152844(n)*A294756(A034856(n+1))`
-/

namespace A294757.P127253242032140619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n * A294756 (A034856 (n + 1)).toNat

end

end A294757.P127253242032140619

/-! ## A294757.P15524761611033627301

`gcd(A134975(n), A294756(A034856(n+1)))`
-/

namespace A294757.P15524761611033627301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134975 n) (A294756 (A034856 (n + 1)).toNat)

end

end A294757.P15524761611033627301

/-!
# A294758: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1-j^(k*j)*x^j) in powers of x.

The programs for A294758, there is no canonical definition to state claims against.
-/

/-! ## A294758.P1032208918258493469

`A283674(n)+A185036(A295260(n+1))`
-/

namespace A294758.P1032208918258493469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 n + A185036 (A295260 (n + 1)).toNat

end

end A294758.P1032208918258493469

/-!
# A294759: Number of permutations of [n] avoiding {4321, 1243, 1234}.

The programs for A294759, there is no canonical definition to state claims against.
-/

/-! ## A294759.P10822962055363785559

`A266646(A294697(n))`
-/

namespace A294759.P10822962055363785559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A294697 n).toNat

end

end A294759.P10822962055363785559

/-! ## A294759.P14006698216689389566

`A294695(n)-A005204(A306347(n))`
-/

namespace A294759.P14006698216689389566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294695 n - A005204 (A306347 n).toNat

end

end A294759.P14006698216689389566

/-! ## A294759.P16675185343477499521

`A294802(n)-A005204(A306347(n))`
-/

namespace A294759.P16675185343477499521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294802 n - A005204 (A306347 n).toNat

end

end A294759.P16675185343477499521

/-!
# A294762: Number of permutations of [n] avoiding {4231, 1243, 1234}.

The programs for A294762, there is no canonical definition to state claims against.
-/

/-! ## A294762.P17118266591301590678

`A294796(n)+A102679(A157051(n))`
-/

namespace A294762.P17118266591301590678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294796 n + A102679 (A157051 n).toNat

end

end A294762.P17118266591301590678

/-! ## A294762.P9418768179358595970

`A294694(n)-A018843(A311150(n))`
-/

namespace A294762.P9418768179358595970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294694 n - A018843 (A311150 n).toNat

end

end A294762.P9418768179358595970

/-! ## A294762.P14451914019585361966

`A294797(A004879(n+1))`
-/

namespace A294762.P14451914019585361966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294797 (A004879 (n + 1)).toNat

end

end A294762.P14451914019585361966

/-!
# A294763: Number of permutations of [n] avoiding {4231, 1324, 1234}.

The programs for A294763, there is no canonical definition to state claims against.
-/

/-! ## A294763.P7065878183724025207

`A294797(n)+A211159(A051249(n))`
-/

namespace A294763.P7065878183724025207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294797 n + A211159 (A051249 n).toNat

end

end A294763.P7065878183724025207

/-! ## A294763.P13985361032122016175

`A294797(n)+A211159(A263929(n))`
-/

namespace A294763.P13985361032122016175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294797 n + A211159 (A263929 n).toNat

end

end A294763.P13985361032122016175

/-! ## A294763.P15900048555002417051

`A294798(n)-A220400(A279573(n))`
-/

namespace A294763.P15900048555002417051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 n - A220400 (A279573 n).toNat

end

end A294763.P15900048555002417051

/-! ## A294763.P13227828620683829704

`A294798(n)-7*A185284(A104449(n))`
-/

namespace A294763.P13227828620683829704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 n - 7 * A185284 (A104449 n).toNat

end

end A294763.P13227828620683829704

/-!
# A294764: Number of permutations of [n] avoiding {2143, 3142, 1234}.

The programs for A294764, there is no canonical definition to state claims against.
-/

/-! ## A294764.P16712532324051975385

`A066339(A239073(n)+4)`
-/

namespace A294764.P16712532324051975385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A239073 n + 4).toNat

end

end A294764.P16712532324051975385

/-! ## A294764.P11788500160802059105

`A066339(or(4, A239073(n)))`
-/

namespace A294764.P11788500160802059105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (Int.lor 4 (A239073 n)).toNat

end

end A294764.P11788500160802059105

/-! ## A294764.P16314364474180735715

`A008617(A125669(n+6)+11)`
-/

namespace A294764.P16314364474180735715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A125669 (n + 6) + 11).toNat

end

end A294764.P16314364474180735715

/-!
# A294765: Number of permutations of [n] avoiding {4231, 1423, 1234}.

The programs for A294765, there is no canonical definition to state claims against.
-/

/-! ## A294765.P12043812749011428112

`A254524((n+2)²*a(n-1))` with `a(0)=1`
-/

namespace A294765.P12043812749011428112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254524 (((n + 2) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A294765.P12043812749011428112

/-! ## A294765.P8713728788775400731

`A226190(A008630(∑[n]))`
-/

namespace A294765.P8713728788775400731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A008630 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A294765.P8713728788775400731

/-! ## A294765.P16119032783056008414

`A058494(n)+A010060(A075581(n))`
-/

namespace A294765.P16119032783056008414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058494 n + A010060 (A075581 n).toNat

end

end A294765.P16119032783056008414

/-!
# A294766: Number of permutations of [n] avoiding {4312, 1432, 1234}.

The programs for A294766, there is no canonical definition to state claims against.
-/

/-! ## A294766.P11208938562825242030

`A294698(n)+A216279(A294678(2*n+1))`
-/

namespace A294766.P11208938562825242030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294698 n + A216279 (A294678 (2 * n + 1)).toNat

end

end A294766.P11208938562825242030

/-!
# A294767: Number of permutations of [n] avoiding {4213, 1432, 1324}.

The programs for A294767, there is no canonical definition to state claims against.
-/

/-! ## A294767.P9861884323791422194

`A320536(Δ[A152103(n)])`
-/

namespace A294767.P9861884323791422194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (f1 (n + 1) - f1 n).toNat

end

end A294767.P9861884323791422194

/-! ## A294767.P1501020667393076255

`A116780(A318909(2*n+1)-n)`
-/

namespace A294767.P1501020667393076255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116780 (A318909 (2 * n + 1) - (n : ℤ)).toNat

end

end A294767.P1501020667393076255

/-!
# A294768: Number of permutations of [n] avoiding {2341, 3142, 4123}.

The programs for A294768, there is no canonical definition to state claims against.
-/

/-! ## A294768.P17508275642152398264

`A294806(n)-A282947(A294819(n))`
-/

namespace A294768.P17508275642152398264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294806 n - A282947 (A294819 n).toNat

end

end A294768.P17508275642152398264

/-! ## A294768.P5994164789080504038

`A140357(A181545(n))`
-/

namespace A294768.P5994164789080504038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140357 (A181545 n).toNat

end

end A294768.P5994164789080504038

/-! ## A294768.P14417301772345827802

`A081753(A262484(n+1))`
-/

namespace A294768.P14417301772345827802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A262484 (n + 1)).toNat

end

end A294768.P14417301772345827802

/-!
# A294769: Number of permutations of [n] avoiding {2143, 1423, 1234}.

The programs for A294769, there is no canonical definition to state claims against.
-/

/-! ## A294769.P2335507583541627867

`A070868(n²*a(n-1))` with `a(0)=1`
-/

namespace A294769.P2335507583541627867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070868 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A294769.P2335507583541627867

/-! ## A294769.P12855616434337817796

`A070868(n*n*a(n-1))` with `a(0)=1`
-/

namespace A294769.P12855616434337817796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070868 ((n : ℤ) * ((n : ℤ) * a (n - 1))).toNat

end

end A294769.P12855616434337817796

/-! ## A294769.P4747526984778054128

`A210380(A073193(n))`
-/

namespace A294769.P4747526984778054128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A073193 n).toNat

end

end A294769.P4747526984778054128

/-!
# A294770: Number of permutations of [n] avoiding {4231, 4123, 1234}.

The programs for A294770, there is no canonical definition to state claims against.
-/

/-! ## A294770.P186216405206437478

`A320536(A320416(n)+1)`
-/

namespace A294770.P186216405206437478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A320416 n + 1).toNat

end

end A294770.P186216405206437478

/-! ## A294770.P16987929617994115687

`A320536(or(1, A320416(n)))`
-/

namespace A294770.P16987929617994115687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (Int.lor 1 (A320416 n)).toNat

end

end A294770.P16987929617994115687

/-! ## A294770.P7576190664544963114

`A140357(A181545(n))+char[5]`
-/

namespace A294770.P7576190664544963114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140357 (A181545 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294770.P7576190664544963114

/-!
# A294771: Number of permutations of [n] avoiding {4231, 2341, 4123}.

The programs for A294771, there is no canonical definition to state claims against.
-/

/-! ## A294771.P2630235519443369135

`A294806(gcd(49*n, n^3))`
-/

namespace A294771.P2630235519443369135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294806 (Nat.gcd (49 * n) (n ^ 3))

end

end A294771.P2630235519443369135

/-! ## A294771.P4160405739169149763

`A115060(A294806(n))`
-/

namespace A294771.P4160405739169149763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A294806 n).toNat

end

end A294771.P4160405739169149763

/-! ## A294771.P15185335479454119800

`A115060(A294807(n))`
-/

namespace A294771.P15185335479454119800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A294807 n).toNat

end

end A294771.P15185335479454119800

/-!
# A294772: Number of permutations of [n] avoiding {4132, 4123, 1243}.

The programs for A294772, there is no canonical definition to state claims against.
-/

/-! ## A294772.P1655848425640645613

`A294817(n)+A137579(A011782(n))`
-/

namespace A294772.P1655848425640645613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294817 n + A137579 (A011782 n).toNat

end

end A294772.P1655848425640645613

/-! ## A294772.P14186016727582200355

`A294817(n)+A285006(A008969(n+1))`
-/

namespace A294772.P14186016727582200355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294817 n + A285006 (A008969 (n + 1)).toNat

end

end A294772.P14186016727582200355

/-! ## A294772.P3368545921302326511

`A294817(gcd(49*n, n^3))`
-/

namespace A294772.P3368545921302326511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294817 (Nat.gcd (49 * n) (n ^ 3))

end

end A294772.P3368545921302326511

/-!
# A294773: a(n) = Sum_{d|n} d^(d+n+1).

The programs for A294773, the canonical program `A294773.P2701733465128875735` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294773 has offset 1).

The definition of A294773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294773.P2701733465128875735

`∑{d}[n+1, #^(#+n+1+1)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294773

/-- `∑{d}[n+1, #^(#+n+1+1)]` -/
def P2701733465128875735.Spec : Prop :=
  ∀ n, (P2701733465128875735.a n : ℤ) = A294773 (n + 1)

theorem P2701733465128875735.correct : P2701733465128875735.Spec := by
  intro n
  simp only [A294773, Nat.add_sub_cancel]

end A294773

/-! ## A294773.P4109174352796522534

`record[∑{d}[n-1, #^(#+n)]]`
-/

namespace A294773.P4109174352796522534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ (d + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294773.P4109174352796522534

namespace A294773

/-- `record[∑{d}[n-1, #^(#+n)]]` -/
def P4109174352796522534.Spec : Prop :=
  ∀ n, (P4109174352796522534.a n : ℤ) = A294773 (n + 1)

end A294773

/-!
# A294774: a(n) = 2*n^2 + 2*n + 5.

The programs for A294774, the canonical program `A294774.P17686075408868116839` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294774 has offset 0).

The definition of A294774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+2*n+5` (program `A294774.P17686075408868116839`, by `A294774.P17686075408868116839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294774.P17686075408868116839

`2*n²+2*n+5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294774

/-- `2*n²+2*n+5` -/
def P17686075408868116839.Spec : Prop :=
  ∀ n, (P17686075408868116839.a n : ℤ) = A294774 n

theorem P17686075408868116839.correct : P17686075408868116839.Spec := by
  intro n
  simp only [A294774]

end A294774

/-! ## A294774.P6517403125133381963

`∑[a(n-1)+4]` with `a(0)=5, a(1)=4`
-/

namespace A294774.P6517403125133381963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294774.P6517403125133381963

namespace A294774

/-- `∑[a(n-1)+4]` -/
def P6517403125133381963.Spec : Prop :=
  ∀ n, (P6517403125133381963.a n : ℤ) = A294774 n

end A294774

/-! ## A294774.P18258563814267806476

`∑[ogf((5-6x+5x^2)/(1-2x+x^2))]`
-/

namespace A294774.P18258563814267806476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294774.P18258563814267806476

namespace A294774

/-- `∑[ogf((5-6x+5x^2)/(1-2x+x^2))]` -/
def P18258563814267806476.Spec : Prop :=
  ∀ n, P18258563814267806476.a n = A294774 n

end A294774

/-! ## A294774.P6774302358292704114

`ogf((5-6x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A294774.P6774302358292704114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6, 5] [1, -3, 3, -1] n

end

end A294774.P6774302358292704114

namespace A294774

/-- `ogf((5-6x+5x^2)/(1-3x+3x^2-x^3))` -/
def P6774302358292704114.Spec : Prop :=
  ∀ n, P6774302358292704114.a n = A294774 n

end A294774

/-! ## A294774.P6965008546422816473

`or(1, 2*(∑[2*n]+2))`
-/

namespace A294774.P6965008546422816473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A294774.P6965008546422816473

namespace A294774

/-- `or(1, 2*(∑[2*n]+2))` -/
def P6965008546422816473.Spec : Prop :=
  ∀ n, (P6965008546422816473.a n : ℤ) = A294774 n

end A294774

/-! ## A294774.P13852049154499347164

`xor(1, 2*(∑[2*n]+2))`
-/

namespace A294774.P13852049154499347164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A294774.P13852049154499347164

namespace A294774

/-- `xor(1, 2*(∑[2*n]+2))` -/
def P13852049154499347164.Spec : Prop :=
  ∀ n, (P13852049154499347164.a n : ℤ) = A294774 n

end A294774

/-! ## A294774.P11339621273480635405

`abs(a(n-1)+4*n)` with `a(0)=5`
-/

namespace A294774.P11339621273480635405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 4 * n

end

end A294774.P11339621273480635405

namespace A294774

/-- `abs(a(n-1)+4*n)` -/
def P11339621273480635405.Spec : Prop :=
  ∀ n, (P11339621273480635405.a n : ℤ) = A294774 n

theorem P11339621273480635405.correct : P11339621273480635405.Spec := by
  intro n
  induction n with
  | zero => simp [A294774, A294774.P11339621273480635405.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A294774, Nat.add_sub_cancel, A294774.P11339621273480635405.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A294774

/-! ## A294774.P16842328890821709599

`floor(a(n-1)+4*n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A294774.P16842328890821709599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 4 * n

end

end A294774.P16842328890821709599

namespace A294774

/-- `floor(a(n-1)+4*n)` -/
def P16842328890821709599.Spec : Prop :=
  ∀ n, (P16842328890821709599.a n : ℤ) = A294774 n

theorem P16842328890821709599.correct : P16842328890821709599.Spec := by
  intro n
  induction n with
  | zero => simp [A294774, A294774.P16842328890821709599.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A294774, Nat.add_sub_cancel, A294774.P16842328890821709599.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A294774

/-! ## A294774.P16487430084446079781

`ceil(a(n-1)+4*n)` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A294774.P16487430084446079781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 4 * n

end

end A294774.P16487430084446079781

namespace A294774

/-- `ceil(a(n-1)+4*n)` -/
def P16487430084446079781.Spec : Prop :=
  ∀ n, (P16487430084446079781.a n : ℤ) = A294774 n

theorem P16487430084446079781.correct : P16487430084446079781.Spec := by
  intro n
  induction n with
  | zero => simp [A294774, A294774.P16487430084446079781.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A294774, Nat.add_sub_cancel, A294774.P16487430084446079781.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A294774

/-! ## A294774.P973826605076225397

`round(a(n-1)+4*n)` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A294774.P973826605076225397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 4 * n

end

end A294774.P973826605076225397

namespace A294774

/-- `round(a(n-1)+4*n)` -/
def P973826605076225397.Spec : Prop :=
  ∀ n, (P973826605076225397.a n : ℤ) = A294774 n

theorem P973826605076225397.correct : P973826605076225397.Spec := by
  intro n
  induction n with
  | zero => simp [A294774, A294774.P973826605076225397.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A294774, Nat.add_sub_cancel, A294774.P973826605076225397.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A294774

/-! ## A294774.P5353345062269862964

`∑[4*n%a(n-1)]` with `a(0)=5`
-/

namespace A294774.P5353345062269862964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  4 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294774.P5353345062269862964

namespace A294774

/-- `∑[4*n%a(n-1)]` -/
def P5353345062269862964.Spec : Prop :=
  ∀ n, (P5353345062269862964.a n : ℤ) = A294774 n

end A294774

/-! ## A294774.P16428726303616567839

`∑[5*n^floor(atan(n))-n]`
-/

namespace A294774.P16428726303616567839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294774.P16428726303616567839

namespace A294774

/-- `∑[5*n^floor(atan(n))-n]` -/
def P16428726303616567839.Spec : Prop :=
  ∀ n, P16428726303616567839.a n = (A294774 n : ℚ)

end A294774

/-! ## A294774.P13951960138601955730

`4*(a(n-1)/4+n)` with `a(0)=5`
-/

namespace A294774.P13951960138601955730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (a (n - 1) / 4 + (n : ℚ))

end

end A294774.P13951960138601955730

namespace A294774

/-- `4*(a(n-1)/4+n)` -/
def P13951960138601955730.Spec : Prop :=
  ∀ n, P13951960138601955730.a n = (A294774 n : ℚ)

theorem P13951960138601955730.correct : P13951960138601955730.Spec := by
  intro n
  induction n with
  | zero => simp [A294774, A294774.P13951960138601955730.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A294774, Nat.add_sub_cancel, A294774.P13951960138601955730.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A294774

/-! ## A294774.P12200951285706538964

`and((n+1)*2*n+5, -3)`
-/

namespace A294774.P12200951285706538964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) * (2 * n) + 5 : ℤ) (-3)

end

end A294774.P12200951285706538964

namespace A294774

/-- `and((n+1)*2*n+5, -3)` -/
def P12200951285706538964.Spec : Prop :=
  ∀ n, P12200951285706538964.a n = A294774 n

end A294774

/-! ## A294774.P396421409770212242

`xor(3, (n+1+n)²+8)/2`
-/

namespace A294774.P396421409770212242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 ((n + 1 + n) ^ 2 + 8) : ℚ) / 2

end

end A294774.P396421409770212242

namespace A294774

/-- `xor(3, (n+1+n)²+8)/2` -/
def P396421409770212242.Spec : Prop :=
  ∀ n, P396421409770212242.a n = (A294774 n : ℚ)

end A294774

/-! ## A294774.P7208246297643923389

`abs(n-a(n-1)-5*n)` with `a(0)=5`
-/

namespace A294774.P7208246297643923389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |(n : ℤ) - a (n - 1) - (5 * n : ℤ)|

end

end A294774.P7208246297643923389

namespace A294774

/-- `abs(n-a(n-1)-5*n)` -/
def P7208246297643923389.Spec : Prop :=
  ∀ n, P7208246297643923389.a n = A294774 n

end A294774

/-! ## A294774.P3997578876922086032

`floor(5*n-(n-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A294774.P3997578876922086032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (5 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A294774.P3997578876922086032

namespace A294774

/-- `floor(5*n-(n-a(n-1)))` -/
def P3997578876922086032.Spec : Prop :=
  ∀ n, P3997578876922086032.a n = A294774 n

theorem P3997578876922086032.correct : P3997578876922086032.Spec := by
  intro n
  induction n with
  | zero => simp [A294774, A294774.P3997578876922086032.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A294774, Nat.add_sub_cancel, A294774.P3997578876922086032.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A294774

/-! ## A294774.P16564386623021729657

`∑[a(n-1)/(1-1/n)]` with `a(0)=5, a(1)=4`
-/

namespace A294774.P16564386623021729657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  f1 (n - 1) / (1 - 1 / (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294774.P16564386623021729657

namespace A294774

/-- `∑[a(n-1)/(1-1/n)]` -/
def P16564386623021729657.Spec : Prop :=
  ∀ n, P16564386623021729657.a n = (A294774 n : ℚ)

end A294774

/-! ## A294774.P14232981924006999646

`lcm(2, (1-n)²+(n+2)²)/2`
-/

namespace A294774.P14232981924006999646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((1 - (n : ℤ)) ^ 2 + ((n + 2) ^ 2 : ℤ)) : ℚ) / 2

end

end A294774.P14232981924006999646

namespace A294774

/-- `lcm(2, (1-n)²+(n+2)²)/2` -/
def P14232981924006999646.Spec : Prop :=
  ∀ n, P14232981924006999646.a n = (A294774 n : ℚ)

end A294774

/-! ## A294774.P6441532260861228109

`5*(n-(n-a(n-1))/5)` with `a(0)=5`
-/

namespace A294774.P6441532260861228109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  5 * ((n : ℚ) - ((n : ℚ) - a (n - 1)) / 5)

end

end A294774.P6441532260861228109

namespace A294774

/-- `5*(n-(n-a(n-1))/5)` -/
def P6441532260861228109.Spec : Prop :=
  ∀ n, P6441532260861228109.a n = (A294774 n : ℚ)

theorem P6441532260861228109.correct : P6441532260861228109.Spec := by
  intro n
  induction n with
  | zero => simp [A294774, A294774.P6441532260861228109.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A294774, Nat.add_sub_cancel, A294774.P6441532260861228109.a, A294774.P17686075408868116839.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A294774

/-!
# A294775: Number A(n,k) of partitions of 1 into exactly k*n+1 powers of 1/(k+1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A294775, there is no canonical definition to state claims against.
-/

/-! ## A294775.P10486737916504917210

`A058318(A265312(n))`
-/

namespace A294775.P10486737916504917210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A265312 n).toNat

end

end A294775.P10486737916504917210

/-! ## A294775.P5583319102098796513

`A390085(A287214(n))`
-/

namespace A294775.P5583319102098796513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390085 (A287214 n).toNat

end

end A294775.P5583319102098796513

/-! ## A294775.P6139334063374427949

`A390085(A295679(n))`
-/

namespace A294775.P6139334063374427949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390085 (A295679 n).toNat

end

end A294775.P6139334063374427949

/-! ## A294775.P2268424118928213514

`A032548(A101486(n+1))`
-/

namespace A294775.P2268424118928213514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A101486 (n + 1)).toNat

end

end A294775.P2268424118928213514

/-! ## A294775.P17194406781041434147

`A390764(A195644(n+1))`
-/

namespace A294775.P17194406781041434147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 (A195644 (n + 1)).toNat

end

end A294775.P17194406781041434147

/-!
# A294780: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(k*(k-1)/2).

The programs for A294780, there is no canonical definition to state claims against.
-/

/-! ## A294780.P15800805150777210054

`A262689(xor(A000096(n), A233505(n)))`
-/

namespace A294780.P15800805150777210054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor (A000096 n) (A233505 n)).toNat

end

end A294780.P15800805150777210054

/-!
# A294781: Growth of the Lamplighter group: number of elements in the Lamplighter group Z wr Z of length up to n with respect to the standard generating set {a,t}.

The programs for A294781, there is no canonical definition to state claims against.
-/

/-! ## A294781.P1559660659694666199

`∑[A294782(n)]`
-/

namespace A294781.P1559660659694666199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294781.P1559660659694666199

/-! ## A294781.P14002873226573939871

`A294782(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A294781.P14002873226573939871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A294782 n + a (A023443 n).toNat

end

end A294781.P14002873226573939871

/-! ## A294781.P708588351272034437

`A294782(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A294781.P708588351272034437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A294782 n + a (A028310 n - 1).toNat

end

end A294781.P708588351272034437

/-! ## A294781.P4059389998279623761

`A294782(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A294781.P4059389998279623761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A294782 n - (A000007 n - a (n - 1))

end

end A294781.P4059389998279623761

/-! ## A294781.P5997202889247381116

`a(n-1)+A019425(A019425(n))*A294782(n)` with `a(0)=1`
-/

namespace A294781.P5997202889247381116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A019425 (A019425 n).toNat * A294782 n

end

end A294781.P5997202889247381116

/-! ## A294781.P17323531271000250448

`A294782(n)+A008683(A139860(n+1))²*a(n-1)` with `a(0)=1`
-/

namespace A294781.P17323531271000250448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A294782 n + A008683 (A139860 (n + 1)).toNat ^ 2 * a (n - 1)

end

end A294781.P17323531271000250448

/-!
# A294782: Spherical growth of the Lamplighter group: number of elements in the Lamplighter group Z wr Z of length n with respect to the standard generating set {a,t}.

The programs for A294782, there is no canonical definition to state claims against.
-/

/-! ## A294782.P3640846404861973540

`4*A076123(a(n-1))` with `a(0)=1`
-/

namespace A294782.P3640846404861973540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A076123 (a (n - 1)).toNat

end

end A294782.P3640846404861973540

/-! ## A294782.P3673780991390742741

`A267191(A225524(n))`
-/

namespace A294782.P3673780991390742741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267191 (A225524 n).toNat

end

end A294782.P3673780991390742741

/-!
# A294783: Number of trees with n bicolored nodes and f nodes of the first color. Triangle T(n,f) read by rows, 0<=f<=n.

The programs for A294783, there is no canonical definition to state claims against.
-/

/-! ## A294783.P10325383898661794574

`A375120(A036565(n))`
-/

namespace A294783.P10325383898661794574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375120 (A036565 n).toNat

end

end A294783.P10325383898661794574

/-! ## A294783.P13093586530860381683

`A375120(A003595(n+1))`
-/

namespace A294783.P13093586530860381683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375120 (A003595 (n + 1)).toNat

end

end A294783.P13093586530860381683

/-!
# A294784: E.g.f. A(x) satisfies: A'(x) = (1 + A(x)^2)^2/4.

The programs for A294784, there is no canonical definition to state claims against.
-/

/-! ## A294784.P16615709506873956211

`ceil(∑[A350680(n)/2])`
-/

namespace A294784.P16615709506873956211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350680 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A294784.P16615709506873956211

/-! ## A294784.P11152125339555983637

`A259575(A093469(n))`
-/

namespace A294784.P11152125339555983637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259575 (A093469 n).toNat

end

end A294784.P11152125339555983637

/-!
# A294785: E.g.f. A(x) satisfies: A(x) = A(x^2) * exp( Integral A(x^2) dx ).

The programs for A294785, there is no canonical definition to state claims against.
-/

/-! ## A294785.P10495152863919268150

`and(A001586(n), A098422(A242882(n+1)))`
-/

namespace A294785.P10495152863919268150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001586 n) (A098422 (A242882 (n + 1)).toNat)

end

end A294785.P10495152863919268150

/-! ## A294785.P5084298472195013809

`A225090(3^floor((n/2)²))`
-/

namespace A294785.P5084298472195013809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225090 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊((n : ℚ) / 2) ^ 2⌋ : ℤ))).toNat

end

end A294785.P5084298472195013809

/-!
# A294786: Number of ways to choose a set partition of a factorization of n into distinct factors greater than one such that different blocks have different products.

The programs for A294786, there is no canonical definition to state claims against.
-/

/-! ## A294786.P13819145054713698033

`A294787(A071364(n+1))-val(A069739(n+1), 4)`
-/

namespace A294786.P13819145054713698033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (A071364 (n + 1)).toNat - (SequenceMachineLib.valuation (A069739 (n + 1)).toNat 4 : ℤ)

end

end A294786.P13819145054713698033

/-! ## A294786.P8938499232742913050

`A294787(A071364(n+1))-A070109(A163378(n+1))`
-/

namespace A294786.P8938499232742913050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (A071364 (n + 1)).toNat - A070109 (A163378 (n + 1)).toNat

end

end A294786.P8938499232742913050

/-! ## A294786.P15033839893615068272

`2*A294787(n+1)-A294788(n+1)`
-/

namespace A294786.P15033839893615068272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294787 (n + 1) - A294788 (n + 1)

end

end A294786.P15033839893615068272

/-! ## A294786.P16129091184919096359

`A294787(n+1)-val(A069739(n+1), 4)`
-/

namespace A294786.P16129091184919096359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) - (SequenceMachineLib.valuation (A069739 (n + 1)).toNat 4 : ℤ)

end

end A294786.P16129091184919096359

/-! ## A294786.P11080070093743125739

`A294787(n+1)-A088434(A325765(n))`
-/

namespace A294786.P11080070093743125739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) - A088434 (A325765 n).toNat

end

end A294786.P11080070093743125739

/-! ## A294786.P2629671567594162933

`A294787(n+1)-A025442(A035116(n+1))`
-/

namespace A294786.P2629671567594162933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) - A025442 (A035116 (n + 1)).toNat

end

end A294786.P2629671567594162933

/-! ## A294786.P13152107042872239772

`A294787(n+1)-A011739(A057567(n+1))`
-/

namespace A294786.P13152107042872239772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) - A011739 (A057567 (n + 1)).toNat

end

end A294786.P13152107042872239772

/-! ## A294786.P115647614680824475

`A294787(n+1)-A073424(A028959(n+1))`
-/

namespace A294786.P115647614680824475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) - A073424 (A028959 (n + 1)).toNat

end

end A294786.P115647614680824475

/-! ## A294786.P5979132409188165980

`A294787(n+1)-A000579(A163109(n+1))`
-/

namespace A294786.P5979132409188165980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) - A000579 (A163109 (n + 1)).toNat

end

end A294786.P5979132409188165980

/-! ## A294786.P2906992036276191940

`A294787(n+1)-A072670(A122179(n+1))`
-/

namespace A294786.P2906992036276191940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1) - A072670 (A122179 (n + 1)).toNat

end

end A294786.P2906992036276191940

/-!
# A294787: Number of ways to choose a set partition of a factorization of n into distinct factors greater than one.

The programs for A294787, there is no canonical definition to state claims against.
-/

/-! ## A294787.P9326556384110016252

`A072932(A254578(n+1))`
-/

namespace A294787.P9326556384110016252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072932 (A254578 (n + 1)).toNat

end

end A294787.P9326556384110016252

/-! ## A294787.P9392778469348579343

`A138997(A349924(n+1))`
-/

namespace A294787.P9392778469348579343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A349924 (n + 1)).toNat

end

end A294787.P9392778469348579343

/-! ## A294787.P16835578197903609379

`A225215(A349923(n+1))`
-/

namespace A294787.P16835578197903609379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225215 (A349923 (n + 1)).toNat

end

end A294787.P16835578197903609379

/-! ## A294787.P18441015433556530638

`A029923(2*A254578(n+1))`
-/

namespace A294787.P18441015433556530638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029923 (2 * A254578 (n + 1)).toNat

end

end A294787.P18441015433556530638

/-! ## A294787.P1063397461172265080

`A088461(2*A254578(n+1))`
-/

namespace A294787.P1063397461172265080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088461 (2 * A254578 (n + 1)).toNat

end

end A294787.P1063397461172265080

/-! ## A294787.P9733867869257402853

`A254528(2*A254578(n+1))`
-/

namespace A294787.P9733867869257402853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 (2 * A254578 (n + 1)).toNat

end

end A294787.P9733867869257402853

/-! ## A294787.P9695726170804980441

`A194920(3*A254578(n+1))`
-/

namespace A294787.P9695726170804980441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (3 * A254578 (n + 1)).toNat

end

end A294787.P9695726170804980441

/-! ## A294787.P9046663335613767932

`A008616(9*A254578(n+1))`
-/

namespace A294787.P9046663335613767932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (9 * A254578 (n + 1)).toNat

end

end A294787.P9046663335613767932

/-! ## A294787.P15909471261646642529

`A254528(lcm(2, A254578(n+1)))`
-/

namespace A294787.P15909471261646642529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 (Int.lcm 2 (A254578 (n + 1)))

end

end A294787.P15909471261646642529

/-! ## A294787.P17951819006773962803

`A028904(A254578(n+1)+1)-1`
-/

namespace A294787.P17951819006773962803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A254578 (n + 1) + 1).toNat - 1

end

end A294787.P17951819006773962803

/-!
# A294788: Number of twice-factorizations of type (Q,P,Q) and product n.

The programs for A294788, there is no canonical definition to state claims against.
-/

/-! ## A294788.P383192346415067639

`or(char[∏{digits}[n, #]], A294787(n+1))`
-/

namespace A294788.P383192346415067639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P383192346415067639

/-! ## A294788.P8999839646897561953

`or(Δ[A000196(n)], A294787(n+1))`
-/

namespace A294788.P8999839646897561953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A294787 (n + 1))

end

end A294788.P8999839646897561953

/-! ## A294788.P2160968894898815004

`or(char[A000466(n)], A294787(n+1))`
-/

namespace A294788.P2160968894898815004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P2160968894898815004

/-! ## A294788.P4080968431670839866

`or(char[A001790(n)], A294787(n+1))`
-/

namespace A294788.P4080968431670839866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P4080968431670839866

/-! ## A294788.P17634407489984281146

`or(char[A004730(n)], A294787(n+1))`
-/

namespace A294788.P17634407489984281146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P17634407489984281146

/-! ## A294788.P3875345399112099083

`or(char[A005563(n)], A294787(n+1))`
-/

namespace A294788.P3875345399112099083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P3875345399112099083

/-! ## A294788.P523977649997075779

`or(char[A007954(n)], A294787(n+1))`
-/

namespace A294788.P523977649997075779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P523977649997075779

/-! ## A294788.P11039243711610840776

`or(char[A022166(n)], A294787(n+1))`
-/

namespace A294788.P11039243711610840776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P11039243711610840776

/-! ## A294788.P17521238515681666755

`or(char[A051801(n)], A294787(n+1))`
-/

namespace A294788.P17521238515681666755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A294787 (n + 1))

end

end A294788.P17521238515681666755

/-! ## A294788.P16202741413847418338

`2*A294787(n+1)-A294786(n+1)`
-/

namespace A294788.P16202741413847418338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294787 (n + 1) - A294786 (n + 1)

end

end A294788.P16202741413847418338

/-!
# A294789: Triangle read by rows: T(n,k), n>=2, 1 <= k <= n-1, is the number of permutations in S_n in which there are k different values for the values mod n of the differences between adjacent elements when written in row notation.

The programs for A294789, there is no canonical definition to state claims against.
-/

/-! ## A294789.P11970844950924492814

`A047918(∑[A105353(n²+1)%2+1])`
-/

namespace A294789.P11970844950924492814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105353 (n ^ 2 + 1)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294789.P11970844950924492814

/-!
# A294790: Subtract n from partial sums of partial sums of Catalan numbers.

The programs for A294790, the canonical program `A294790.P1762533073326159722` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294790 has offset 0).

The definition of A294790 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014140, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294790.P1762533073326159722

`A014140(n)-n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A294790

/-- `A014140(n)-n` -/
def P1762533073326159722.Spec : Prop :=
  ∀ n, P1762533073326159722.a n = A294790 n

theorem P1762533073326159722.correct : P1762533073326159722.Spec := by
  intro n
  simp only [A294790]

end A294790

/-! ## A294790.P16672489144888273795

`∑[∑[(4-6/(n+1))*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A294790.P16672489144888273795
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294790.P16672489144888273795

namespace A294790

/-- `∑[∑[(4-6/(n+1))*a(n-1)]]` -/
def P16672489144888273795.Spec : Prop :=
  ∀ n, P16672489144888273795.a n = (A294790 n : ℚ)

end A294790

/-! ## A294790.P5086595487021950794

`∑[A014138(n)]+1`
-/

namespace A294790.P5086595487021950794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294790.P5086595487021950794

namespace A294790

/-- `∑[A014138(n)]+1` -/
def P5086595487021950794.Spec : Prop :=
  ∀ n, P5086595487021950794.a n = A294790 n

end A294790

/-! ## A294790.P3771744412579122605

`∑[A014137(n)]-n`
-/

namespace A294790.P3771744412579122605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P3771744412579122605

namespace A294790

/-- `∑[A014137(n)]-n` -/
def P3771744412579122605.Spec : Prop :=
  ∀ n, P3771744412579122605.a n = A294790 n

end A294790

/-! ## A294790.P480663077812189921

`∑[∑[A000108(n)]]-n`
-/

namespace A294790.P480663077812189921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P480663077812189921

namespace A294790

/-- `∑[∑[A000108(n)]]-n` -/
def P480663077812189921.Spec : Prop :=
  ∀ n, P480663077812189921.a n = A294790 n

end A294790

/-! ## A294790.P4664417253221326787

`∑[1-A106271(n)]+1`
-/

namespace A294790.P4664417253221326787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294790.P4664417253221326787

namespace A294790

/-- `∑[1-A106271(n)]+1` -/
def P4664417253221326787.Spec : Prop :=
  ∀ n, P4664417253221326787.a n = A294790 n

end A294790

/-! ## A294790.P16409682190073216483

`∑[A110199(2*n)]-n`
-/

namespace A294790.P16409682190073216483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P16409682190073216483

namespace A294790

/-- `∑[A110199(2*n)]-n` -/
def P16409682190073216483.Spec : Prop :=
  ∀ n, P16409682190073216483.a n = A294790 n

end A294790

/-! ## A294790.P7871749798516538637

`∑[∑[abs(A168491(n))]]-n`
-/

namespace A294790.P7871749798516538637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P7871749798516538637

namespace A294790

/-- `∑[∑[abs(A168491(n))]]-n` -/
def P7871749798516538637.Spec : Prop :=
  ∀ n, P7871749798516538637.a n = A294790 n

end A294790

/-! ## A294790.P5123821306111956762

`∑[abs(A099324(n+1))]+1`
-/

namespace A294790.P5123821306111956762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099324 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294790.P5123821306111956762

namespace A294790

/-- `∑[abs(A099324(n+1))]+1` -/
def P5123821306111956762.Spec : Prop :=
  ∀ n, P5123821306111956762.a n = A294790 n

end A294790

/-! ## A294790.P9970263691322862367

`∑[∑[A120588(n+1)]]-n`
-/

namespace A294790.P9970263691322862367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P9970263691322862367

namespace A294790

/-- `∑[∑[A120588(n+1)]]-n` -/
def P9970263691322862367.Spec : Prop :=
  ∀ n, P9970263691322862367.a n = A294790 n

end A294790

/-! ## A294790.P5689384451147469334

`∑[∑[A028303(2*n)]]-n`
-/

namespace A294790.P5689384451147469334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P5689384451147469334

namespace A294790

/-- `∑[∑[A028303(2*n)]]-n` -/
def P5689384451147469334.Spec : Prop :=
  ∀ n, P5689384451147469334.a n = A294790 n

end A294790

/-! ## A294790.P4779927899472869720

`∑[∑[A028304(2*n)]]-n`
-/

namespace A294790.P4779927899472869720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P4779927899472869720

namespace A294790

/-- `∑[∑[A028304(2*n)]]-n` -/
def P4779927899472869720.Spec : Prop :=
  ∀ n, P4779927899472869720.a n = A294790 n

end A294790

/-! ## A294790.P1478177673913850766

`∑[∑[A126120(2*n)]]-n`
-/

namespace A294790.P1478177673913850766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P1478177673913850766

namespace A294790

/-- `∑[∑[A126120(2*n)]]-n` -/
def P1478177673913850766.Spec : Prop :=
  ∀ n, P1478177673913850766.a n = A294790 n

end A294790

/-! ## A294790.P5291099206293067416

`∑[∑[A126324(2*n)]]-n`
-/

namespace A294790.P5291099206293067416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P5291099206293067416

namespace A294790

/-- `∑[∑[A126324(2*n)]]-n` -/
def P5291099206293067416.Spec : Prop :=
  ∀ n, P5291099206293067416.a n = A294790 n

end A294790

/-! ## A294790.P1962367827312893030

`∑[∑[A208355(2*n)]]-n`
-/

namespace A294790.P1962367827312893030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P1962367827312893030

namespace A294790

/-- `∑[∑[A208355(2*n)]]-n` -/
def P1962367827312893030.Spec : Prop :=
  ∀ n, P1962367827312893030.a n = A294790 n

end A294790

/-! ## A294790.P1167744462326912381

`∑[∑[record[A126120(n+1)]]]+1`
-/

namespace A294790.P1167744462326912381
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294790.P1167744462326912381

namespace A294790

/-- `∑[∑[record[A126120(n+1)]]]+1` -/
def P1167744462326912381.Spec : Prop :=
  ∀ n, P1167744462326912381.a n = A294790 n

end A294790

/-! ## A294790.P3170693496901372534

`∑[∑[A262543(n+1)/2]]+1`
-/

namespace A294790.P3170693496901372534
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262543 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294790.P3170693496901372534

namespace A294790

/-- `∑[∑[A262543(n+1)/2]]+1` -/
def P3170693496901372534.Spec : Prop :=
  ∀ n, P3170693496901372534.a n = (A294790 n : ℚ)

end A294790

/-! ## A294790.P483873783948104930

`a(n-1)+A284968(n)+n` with `a(0)=1`
-/

namespace A294790.P483873783948104930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284968 n + (n : ℤ))

end

end A294790.P483873783948104930

namespace A294790

/-- `a(n-1)+A284968(n)+n` -/
def P483873783948104930.Spec : Prop :=
  ∀ n, P483873783948104930.a n = A294790 n

end A294790

/-! ## A294790.P970480390416175934

`∑[∑[A089408(2*n+1)]]-n`
-/

namespace A294790.P970480390416175934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P970480390416175934

namespace A294790

/-- `∑[∑[A089408(2*n+1)]]-n` -/
def P970480390416175934.Spec : Prop :=
  ∀ n, P970480390416175934.a n = A294790 n

end A294790

/-! ## A294790.P12582720328235430165

`∑[∑[A097331(2*n+1)]]-n`
-/

namespace A294790.P12582720328235430165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294790.P12582720328235430165

namespace A294790

/-- `∑[∑[A097331(2*n+1)]]-n` -/
def P12582720328235430165.Spec : Prop :=
  ∀ n, P12582720328235430165.a n = A294790 n

end A294790

/-!
# A294792: Triangle read by rows, 1 <= k <= n: T(n,k) = non-isomorphic colorings of a toroidal n X k grid using exactly three colors under translational symmetry and swappable colors.

The programs for A294792, there is no canonical definition to state claims against.
-/

/-! ## A294792.P17637732249577896236

`A276516(A281338(n+2))`
-/

namespace A294792.P17637732249577896236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 (A281338 (n + 2)).toNat

end

end A294792.P17637732249577896236

/-! ## A294792.P5742420570615418289

`A024865(4*p?[A053197(n)])`
-/

namespace A294792.P5742420570615418289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024865 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A294792.P5742420570615418289

/-!
# A294793: Triangle read by rows, 1 <= k <= n: T(n,k) = non-isomorphic colorings of a toroidal n X k grid using exactly four colors under translational symmetry and swappable colors.

The programs for A294793, there is no canonical definition to state claims against.
-/

/-! ## A294793.P896977443472251180

`A351978(A164263(n+1))`
-/

namespace A294793.P896977443472251180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 (A164263 (n + 1)).toNat

end

end A294793.P896977443472251180

/-! ## A294793.P18085682944910243928

`A351978(A027423(n+2))`
-/

namespace A294793.P18085682944910243928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 (A027423 (n + 2)).toNat

end

end A294793.P18085682944910243928

/-!
# A294794: Triangle read by rows, 1 <= k <= n: T(n,k) = non-isomorphic colorings of a toroidal n X k grid using exactly five colors under translational symmetry and swappable colors.

The programs for A294794, there is no canonical definition to state claims against.
-/

/-! ## A294794.P3583549871192747511

`A026803(A306438(3*n+2)+A229870(n+1))`
-/

namespace A294794.P3583549871192747511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026803 (A306438 (3 * n + 2) + A229870 (n + 1)).toNat

end

end A294794.P3583549871192747511

/-! ## A294794.P13222268320511732359

`Δ[A025438(∑{e}[n!, #]!)]`
-/

namespace A294794.P13222268320511732359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294794.P13222268320511732359

/-!
# A294796: Number of permutations of [n] avoiding {1234, 1324, 3412}.

The programs for A294796, there is no canonical definition to state claims against.
-/

/-! ## A294796.P185000780016683437

`A294762(n)-A102679(A157051(n))`
-/

namespace A294796.P185000780016683437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294762 n - A102679 (A157051 n).toNat

end

end A294796.P185000780016683437

/-! ## A294796.P12697162419147625730

`A077113(A045829(n+2))`
-/

namespace A294796.P12697162419147625730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (A045829 (n + 2)).toNat

end

end A294796.P12697162419147625730

/-! ## A294796.P8839005152576868109

`A116753(A318909(2*n+1)-n)`
-/

namespace A294796.P8839005152576868109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116753 (A318909 (2 * n + 1) - (n : ℤ)).toNat

end

end A294796.P8839005152576868109

/-!
# A294797: Number of permutations of [n] avoiding {1243, 1324, 3412}.

The programs for A294797, there is no canonical definition to state claims against.
-/

/-! ## A294797.P14023118736880768885

`A294798(n)-A025444(A076875(n))`
-/

namespace A294797.P14023118736880768885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 n - A025444 (A076875 n).toNat

end

end A294797.P14023118736880768885

/-! ## A294797.P10892637536310907913

`A294763(n)-A211159(A051249(n))`
-/

namespace A294797.P10892637536310907913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294763 n - A211159 (A051249 n).toNat

end

end A294797.P10892637536310907913

/-! ## A294797.P9235887556764671135

`A294763(n)-A211159(A263929(n))`
-/

namespace A294797.P9235887556764671135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294763 n - A211159 (A263929 n).toNat

end

end A294797.P9235887556764671135

/-!
# A294798: Number of permutations of [n] avoiding {1243, 1324, 4231}.

The programs for A294798, there is no canonical definition to state claims against.
-/

/-! ## A294798.P4145614003326736439

`A294799(n)-A025466(A214854(n))`
-/

namespace A294798.P4145614003326736439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294799 n - A025466 (A214854 n).toNat

end

end A294798.P4145614003326736439

/-! ## A294798.P2032383575014108017

`A294799(n)-A000122(A003397(n+1))`
-/

namespace A294798.P2032383575014108017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294799 n - A000122 (A003397 (n + 1)).toNat

end

end A294798.P2032383575014108017

/-! ## A294798.P12088071689627764346

`∏{p}[A294799(n)², #]`
-/

namespace A294798.P12088071689627764346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294799 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A294798.P12088071689627764346

/-! ## A294798.P17749926386415910125

`A294799(A002034(n!))`
-/

namespace A294798.P17749926386415910125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294799 (A002034 (Nat.factorial n)).toNat

end

end A294798.P17749926386415910125

/-!
# A294799: Number of permutations of [n] avoiding {3412, 1324, 2341}.

The programs for A294799, there is no canonical definition to state claims against.
-/

/-! ## A294799.P10424589220518014588

`or(A185284(∑[n]), A294798(n))`
-/

namespace A294799.P10424589220518014588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (∑ j ∈ Finset.range (n + 1), f1 j)) (A294798 n)

end

end A294799.P10424589220518014588

/-! ## A294799.P1612282057663682154

`A294798(n)+A025466(A214854(n))`
-/

namespace A294799.P1612282057663682154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 n + A025466 (A214854 n).toNat

end

end A294799.P1612282057663682154

/-! ## A294799.P5090937683795818317

`or(A008626(A294822(n)), A294798(n))`
-/

namespace A294799.P5090937683795818317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008626 (A294822 n).toNat) (A294798 n)

end

end A294799.P5090937683795818317

/-! ## A294799.P3399193381069110718

`or(A040076(A294769(n)), A294798(n))`
-/

namespace A294799.P3399193381069110718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040076 (A294769 n).toNat) (A294798 n)

end

end A294799.P3399193381069110718

/-! ## A294799.P8306285844751337057

`or(A107782(A294815(n)), A294798(n))`
-/

namespace A294799.P8306285844751337057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107782 (A294815 n).toNat) (A294798 n)

end

end A294799.P8306285844751337057

