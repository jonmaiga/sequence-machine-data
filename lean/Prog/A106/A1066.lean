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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A106600: Number of positive integers <= 10^n that are divisible by no prime exceeding 7.

The programs for A106600, there is no canonical definition to state claims against.
-/

/-! ## A106600.P8368789595480097054

`∑[A085630(n)]+1`
-/

namespace A106600.P8368789595480097054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A106600.P8368789595480097054

/-! ## A106600.P1135313752009111941

`∑[or(A000007(n), A085630(n))]`
-/

namespace A106600.P1135313752009111941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A085630 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106600.P1135313752009111941

/-! ## A106600.P13260021932335294979

`A085630(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A106600.P13260021932335294979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085630 n + a (A023443 n).toNat

end

end A106600.P13260021932335294979

/-! ## A106600.P16920732023224500455

`A000124(n)-∑[n-A085630(n)]`
-/

namespace A106600.P16920732023224500455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A085630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106600.P16920732023224500455

/-! ## A106600.P5776319631222555837

`A085630(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A106600.P5776319631222555837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085630 (A028310 n).toNat + a (n - 1)

end

end A106600.P5776319631222555837

/-! ## A106600.P12270482605045438640

`a(n-1)+or(A000007(n+1), A085630(n))` with `a(0)=1`
-/

namespace A106600.P12270482605045438640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A000007 (n + 1)) (A085630 n)

end

end A106600.P12270482605045438640

/-! ## A106600.P2944345823470222922

`∑[A085630(n)^A097805(A000124(n))]`
-/

namespace A106600.P2944345823470222922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085630 n : ℚ) ^ (A097805 (A000124 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106600.P2944345823470222922

/-!
# A106601: 3-limiting word of the morphism 1->2, 2->3, 3->31233.

The programs for A106601, there is no canonical definition to state claims against.
-/

/-! ## A106601.P12833087376914442666

`or(A090822(A198584(n+1)), A143841(n))`
-/

namespace A106601.P12833087376914442666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090822 (A198584 (n + 1)).toNat) (A143841 n)

end

end A106601.P12833087376914442666

/-! ## A106601.P4458991758047092268

`A004200(A090370(n+4)^A339779(n))`
-/

namespace A106601.P4458991758047092268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (SequenceMachineLib.roundAway ((A090370 (n + 4) : ℚ) ^ (A339779 n : ℤ))).toNat

end

end A106601.P4458991758047092268

/-! ## A106601.P13011278141526416186

`A230774(A001223(A000043(n+14)))`
-/

namespace A106601.P13011278141526416186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230774 (A001223 (A000043 (n + 14)).toNat).toNat

end

end A106601.P13011278141526416186

/-! ## A106601.P79559062734156764

`or(A001221(A108779(n+2)), A108807(n+1))`
-/

namespace A106601.P79559062734156764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A108779 (n + 2)).toNat) (A108807 (n + 1))

end

end A106601.P79559062734156764

/-! ## A106601.P16397066952700553847

`A005680(A128369(n+1)+A028310(A355726(n)+n))`
-/

namespace A106601.P16397066952700553847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A128369 (n + 1) + A028310 (A355726 n + (n : ℤ)).toNat).toNat

end

end A106601.P16397066952700553847

/-!
# A106602: Number of primitive positive solutions to 8n+2=x^2+y^2.

The programs for A106602, the canonical program `A106602.P17168999429164720550` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106602 has offset 0).

The definition of A106602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106602.P17168999429164720550

`ceil(A031358(n)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106602

/-- `ceil(A031358(n)/2)` -/
def P17168999429164720550.Spec : Prop :=
  ∀ n, P17168999429164720550.a n = A106602 n

theorem P17168999429164720550.correct : P17168999429164720550.Spec := by
  intro n
  simp only [A106602]

end A106602

/-! ## A106602.P12029547749832930157

`A106594(abs(2-n)+2)`
-/

namespace A106602.P12029547749832930157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106594 (|2 - (n : ℤ)| + 2).toNat

end

end A106602.P12029547749832930157

namespace A106602

/-- `A106594(abs(2-n)+2)` -/
def P12029547749832930157.Spec : Prop :=
  ∀ n, P12029547749832930157.a n = A106602 n

end A106602

/-! ## A106602.P2810264085476787937

`A031358(C(3, n)+n)/2`
-/

namespace A106602.P2810264085476787937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 (Nat.choose 3 n + n) : ℚ) / 2

end

end A106602.P2810264085476787937

namespace A106602

/-- `A031358(C(3, n)+n)/2` -/
def P2810264085476787937.Spec : Prop :=
  ∀ n, P2810264085476787937.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P9403797770776424877

`A000161(∏{p}[4*n+1, #])`
-/

namespace A106602.P9403797770776424877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A106602.P9403797770776424877

namespace A106602

/-- `A000161(∏{p}[4*n+1, #])` -/
def P9403797770776424877.Spec : Prop :=
  ∀ n, P9403797770776424877.a n = A106602 n

end A106602

/-! ## A106602.P7460358876273186436

`lcm(2, A000089(4*n+1))/2`
-/

namespace A106602.P7460358876273186436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000089 (4 * n + 1)) : ℚ) / 2

end

end A106602.P7460358876273186436

namespace A106602

/-- `lcm(2, A000089(4*n+1))/2` -/
def P7460358876273186436.Spec : Prop :=
  ∀ n, P7460358876273186436.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P1986267638306251740

`A046081(A031358(n)²+2)`
-/

namespace A106602.P1986267638306251740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A031358 n ^ 2 + 2).toNat

end

end A106602.P1986267638306251740

namespace A106602

/-- `A046081(A031358(n)²+2)` -/
def P1986267638306251740.Spec : Prop :=
  ∀ n, P1986267638306251740.a n = A106602 n

end A106602

/-! ## A106602.P10048797289287067492

`A295819(A008586(n)+1)/2`
-/

namespace A106602.P10048797289287067492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295819 (A008586 n + 1).toNat : ℚ) / 2

end

end A106602.P10048797289287067492

namespace A106602

/-- `A295819(A008586(n)+1)/2` -/
def P10048797289287067492.Spec : Prop :=
  ∀ n, P10048797289287067492.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P7769475240193372464

`A031358(n)/A036453(n+1)`
-/

namespace A106602.P7769475240193372464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A106602.P7769475240193372464

namespace A106602

/-- `A031358(n)/A036453(n+1)` -/
def P7769475240193372464.Spec : Prop :=
  ∀ n, P7769475240193372464.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P4733967845372546796

`A031358(n)/A130335(n+1)`
-/

namespace A106602.P4733967845372546796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 n : ℚ) / (A130335 (n + 1) : ℚ)

end

end A106602.P4733967845372546796

namespace A106602

/-- `A031358(n)/A130335(n+1)` -/
def P4733967845372546796.Spec : Prop :=
  ∀ n, P4733967845372546796.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P6585880957882996008

`A031358(n)/A143098(n+1)`
-/

namespace A106602.P6585880957882996008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 n : ℚ) / (A143098 (n + 1) : ℚ)

end

end A106602.P6585880957882996008

namespace A106602

/-- `A031358(n)/A143098(n+1)` -/
def P6585880957882996008.Spec : Prop :=
  ∀ n, P6585880957882996008.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P8450126241109181875

`A025426(2*A076109(4*n+1))`
-/

namespace A106602.P8450126241109181875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (2 * A076109 (4 * n + 1)).toNat

end

end A106602.P8450126241109181875

namespace A106602

/-- `A025426(2*A076109(4*n+1))` -/
def P8450126241109181875.Spec : Prop :=
  ∀ n, P8450126241109181875.a n = A106602 n

end A106602

/-! ## A106602.P6229532779453112588

`A000089(4*A028310(n)+1)/2`
-/

namespace A106602.P6229532779453112588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (4 * A028310 n + 1).toNat : ℚ) / 2

end

end A106602.P6229532779453112588

namespace A106602

/-- `A000089(4*A028310(n)+1)/2` -/
def P6229532779453112588.Spec : Prop :=
  ∀ n, P6229532779453112588.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P8603039110497010312

`A031358(n)/A055027(A031358(n)+2)`
-/

namespace A106602.P8603039110497010312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 n : ℚ) / (A055027 (A031358 n + 2).toNat : ℚ)

end

end A106602.P8603039110497010312

namespace A106602

/-- `A031358(n)/A055027(A031358(n)+2)` -/
def P8603039110497010312.Spec : Prop :=
  ∀ n, P8603039110497010312.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P5694621850360499016

`A031358(n)/A031358(C(A031358(n), 2))`
-/

namespace A106602.P5694621850360499016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 n : ℚ) / (A031358 (Nat.choose (A031358 n).toNat 2) : ℚ)

end

end A106602.P5694621850360499016

namespace A106602

/-- `A031358(n)/A031358(C(A031358(n), 2))` -/
def P5694621850360499016.Spec : Prop :=
  ∀ n, P5694621850360499016.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P8512570996210872448

`A031358(n)/A216022(n+1)`
-/

namespace A106602.P8512570996210872448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 n : ℚ) / (A216022 (n + 1) : ℚ)

end

end A106602.P8512570996210872448

namespace A106602

/-- `A031358(n)/A216022(n+1)` -/
def P8512570996210872448.Spec : Prop :=
  ∀ n, P8512570996210872448.a n = (A106602 n : ℚ)

end A106602

/-! ## A106602.P943728793206728793

`A031358(n)/A036452(A031358(n²))`
-/

namespace A106602.P943728793206728793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 n : ℚ) / (A036452 (A031358 (n ^ 2)).toNat : ℚ)

end

end A106602.P943728793206728793

namespace A106602

/-- `A031358(n)/A036452(A031358(n²))` -/
def P943728793206728793.Spec : Prop :=
  ∀ n, P943728793206728793.a n = (A106602 n : ℚ)

end A106602

/-!
# A106603: a(n) = - 2*a(n-1) - 8*a(n-3), a(0) = 1, a(1) = 1, a(2) = -2.

The programs for A106603, the canonical program `A106603.P14092806397954875512` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106603 has offset 0).

The definition of A106603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)-8*a(n-3)` (program `A106603.P14092806397954875512`, by `A106603.P14092806397954875512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106603.P14092806397954875512

`-2*a(n-1)-8*a(n-3)` with `a(0)=1, a(1)=1, a(2)=-2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106603

/-- `-2*a(n-1)-8*a(n-3)` -/
def P14092806397954875512.Spec : Prop :=
  ∀ n, P14092806397954875512.a n = A106603 n

theorem P14092806397954875512.correct : P14092806397954875512.Spec := by
  intro n
  simp only [A106603]

end A106603

/-! ## A106603.P12488284900771737312

`ogf((1+3x)/(1+2x+8x^3))`
-/

namespace A106603.P12488284900771737312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 2, 0, 8] n

end

end A106603.P12488284900771737312

namespace A106603

/-- `ogf((1+3x)/(1+2x+8x^3))` -/
def P12488284900771737312.Spec : Prop :=
  ∀ n, P12488284900771737312.a n = A106603 n

end A106603

/-! ## A106603.P10021215031434822253

`ceil(2^(n-1))*A010892(A052923(n))`
-/

namespace A106603.P10021215031434822253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A010892 (A052923 n).toNat

end

end A106603.P10021215031434822253

namespace A106603

/-- `ceil(2^(n-1))*A010892(A052923(n))` -/
def P10021215031434822253.Spec : Prop :=
  ∀ n, P10021215031434822253.a n = A106603 n

end A106603

/-! ## A106603.P12333503794182645268

`A010892(A052923(n))*A011782(n)`
-/

namespace A106603.P12333503794182645268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A052923 n).toNat * A011782 n

end

end A106603.P12333503794182645268

namespace A106603

/-- `A010892(A052923(n))*A011782(n)` -/
def P12333503794182645268.Spec : Prop :=
  ∀ n, P12333503794182645268.a n = A106603 n

end A106603

/-! ## A106603.P2347531436779745130

`A008683(A149735(n))*A011782(n)`
-/

namespace A106603.P2347531436779745130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A149735 n).toNat * A011782 n

end

end A106603.P2347531436779745130

namespace A106603

/-- `A008683(A149735(n))*A011782(n)` -/
def P2347531436779745130.Spec : Prop :=
  ∀ n, P2347531436779745130.a n = A106603 n

end A106603

/-!
# A106605: Vertically symmetrical dates DDMMYYYY excluding years which are divisible by 10, considered as numbers, in increasing order.

The programs for A106605, there is no canonical definition to state claims against.
-/

/-! ## A106605.P10129850851828991881

`record[A107273(n+1)/A107275(n+1)%4]`
-/

namespace A106605.P10129850851828991881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107273 (n + 1) : ℚ) / (Int.tmod (A107275 (n + 1)) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106605.P10129850851828991881

/-! ## A106605.P13610376944136318696

`A107273(∪[A325924(3*(n+1)), A024649(n+1)])`
-/

namespace A106605.P13610376944136318696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325924 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024649 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107273 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A106605.P13610376944136318696

/-! ## A106605.P6173354264149428622

`A107273((n+1)^gcd(7, n))`
-/

namespace A106605.P6173354264149428622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107273 ((n + 1) ^ Nat.gcd 7 n)

end

end A106605.P6173354264149428622

/-!
# A106606: G.f.: 1/Product_{k>0} (1-x^k)^A000669(k+1).

The programs for A106606, there is no canonical definition to state claims against.
-/

/-! ## A106606.P3292697166008997381

`A106240((n+1)²+n²)`
-/

namespace A106606.P3292697166008997381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 ((n + 1) ^ 2 + n ^ 2)

end

end A106606.P3292697166008997381

/-! ## A106606.P8416930065356612992

`A106240(A001844(n))%A240423(n+1)`
-/

namespace A106606.P8416930065356612992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106240 (A001844 n).toNat) (A240423 (n + 1))

end

end A106606.P8416930065356612992

/-! ## A106606.P11009418041759496448

`A014963(12*(n+1))*A106240(A001844(n))`
-/

namespace A106606.P11009418041759496448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A106240 (A001844 n).toNat

end

end A106606.P11009418041759496448

/-! ## A106606.P16962824991212199981

`A007318(C(2, n+1))*A106240(A001844(n))`
-/

namespace A106606.P16962824991212199981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A106240 (A001844 n).toNat

end

end A106606.P16962824991212199981

/-! ## A106606.P13240552198351736675

`A058735(2*n²)`
-/

namespace A106606.P13240552198351736675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058735 (2 * n ^ 2)

end

end A106606.P13240552198351736675

/-!
# A106607: Expansion of (1+t^3)^2/((1-t)*(1-t^2)^2*(1-t^4)).

The programs for A106607, the canonical program `A106607.P8333621649453852895` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106607 has offset 0).

The definition of A106607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106607.P8333621649453852895

`ceil((∑[∑[or(1, n)]]+n)/4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106607

/-- `ceil((∑[∑[or(1, n)]]+n)/4)` -/
def P8333621649453852895.Spec : Prop :=
  ∀ n, P8333621649453852895.a n = A106607 n

theorem P8333621649453852895.correct : P8333621649453852895.Spec := by
  intro n
  simp only [A106607]

end A106607

/-! ## A106607.P7456300108232189

`∑[floor(∑[n/2-a(n-1)])]` with `a(0)=1`
-/

namespace A106607.P7456300108232189
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / 2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P7456300108232189

namespace A106607

/-- `∑[floor(∑[n/2-a(n-1)])]` -/
def P7456300108232189.Spec : Prop :=
  ∀ n, P7456300108232189.a n = A106607 n

end A106607

/-! ## A106607.P17797704601933674218

`∑[∑[a(n-4)+1]]` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=0`
-/

namespace A106607.P17797704601933674218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 0] fun n f2 =>
  f2 (n - 4) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P17797704601933674218

namespace A106607

/-- `∑[∑[a(n-4)+1]]` -/
def P17797704601933674218.Spec : Prop :=
  ∀ n, P17797704601933674218.a n = A106607 n

end A106607

/-! ## A106607.P17951318671347109722

`∑[n-(1-a(n-4))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A106607.P17951318671347109722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P17951318671347109722

namespace A106607

/-- `∑[n-(1-a(n-4))]` -/
def P17951318671347109722.Spec : Prop :=
  ∀ n, P17951318671347109722.a n = A106607 n

end A106607

/-! ## A106607.P6468658284342554730

`∑[round(n²/8)+ceil(xor(1, n)/4)]`
-/

namespace A106607.P6468658284342554730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + ⌈(Nat.xor 1 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P6468658284342554730

namespace A106607

/-- `∑[round(n²/8)+ceil(xor(1, n)/4)]` -/
def P6468658284342554730.Spec : Prop :=
  ∀ n, P6468658284342554730.a n = A106607 n

end A106607

/-! ## A106607.P16592128308124589916

`ceil(A173154(n)/4)`
-/

namespace A106607.P16592128308124589916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173154 n : ℚ) / 4⌉

end

end A106607.P16592128308124589916

namespace A106607

/-- `ceil(A173154(n)/4)` -/
def P16592128308124589916.Spec : Prop :=
  ∀ n, P16592128308124589916.a n = A106607 n

end A106607

/-! ## A106607.P13752264202498726489

`A039823(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106607.P13752264202498726489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A039823 n + a (n - 2)

end

end A106607.P13752264202498726489

namespace A106607

/-- `A039823(n)+a(n-2)` -/
def P13752264202498726489.Spec : Prop :=
  ∀ n, P13752264202498726489.a n = A106607 n

end A106607

/-! ## A106607.P6400449940987123750

`A122046(n+1)+A008619(n)`
-/

namespace A106607.P6400449940987123750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (n + 1) + A008619 n

end

end A106607.P6400449940987123750

namespace A106607

/-- `A122046(n+1)+A008619(n)` -/
def P6400449940987123750.Spec : Prop :=
  ∀ n, P6400449940987123750.a n = A106607 n

end A106607

/-! ## A106607.P14188642408194930432

`A008624(n)+∑[∑[A026922(n+1)]]`
-/

namespace A106607.P14188642408194930432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P14188642408194930432

namespace A106607

/-- `A008624(n)+∑[∑[A026922(n+1)]]` -/
def P14188642408194930432.Spec : Prop :=
  ∀ n, P14188642408194930432.a n = A106607 n

end A106607

/-! ## A106607.P924553278593647346

`∑[A008624(n)+∑[A059169(n+1)]]`
-/

namespace A106607.P924553278593647346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P924553278593647346

namespace A106607

/-- `∑[A008624(n)+∑[A059169(n+1)]]` -/
def P924553278593647346.Spec : Prop :=
  ∀ n, P924553278593647346.a n = A106607 n

end A106607

/-! ## A106607.P15241008810018217855

`floor((∑[A000982(n+1)+1]+2)/4)`
-/

namespace A106607.P15241008810018217855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / 4⌋

end

end A106607.P15241008810018217855

namespace A106607

/-- `floor((∑[A000982(n+1)+1]+2)/4)` -/
def P15241008810018217855.Spec : Prop :=
  ∀ n, P15241008810018217855.a n = A106607 n

end A106607

/-! ## A106607.P2652131492138773713

`A173722(n)+A001971(n+2)`
-/

namespace A106607.P2652131492138773713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 n + A001971 (n + 2)

end

end A106607.P2652131492138773713

namespace A106607

/-- `A173722(n)+A001971(n+2)` -/
def P2652131492138773713.Spec : Prop :=
  ∀ n, P2652131492138773713.a n = A106607 n

end A106607

/-! ## A106607.P17844493804270519755

`A001971(n+2)+∑[A001971(n)]`
-/

namespace A106607.P17844493804270519755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P17844493804270519755

namespace A106607

/-- `A001971(n+2)+∑[A001971(n)]` -/
def P17844493804270519755.Spec : Prop :=
  ∀ n, P17844493804270519755.a n = A106607 n

end A106607

/-! ## A106607.P8845105404865781138

`A175826(n+1)-A110654(A110654(n))`
-/

namespace A106607.P8845105404865781138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 (n + 1) - A110654 (A110654 n).toNat

end

end A106607.P8845105404865781138

namespace A106607

/-- `A175826(n+1)-A110654(A110654(n))` -/
def P8845105404865781138.Spec : Prop :=
  ∀ n, P8845105404865781138.a n = A106607 n

end A106607

/-! ## A106607.P2378058199788318794

`A173722(n)+Δ[A173722(n+1)]`
-/

namespace A106607.P2378058199788318794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 n + (f1 (n + 1) - f1 n)

end

end A106607.P2378058199788318794

namespace A106607

/-- `A173722(n)+Δ[A173722(n+1)]` -/
def P2378058199788318794.Spec : Prop :=
  ∀ n, P2378058199788318794.a n = A106607 n

end A106607

/-! ## A106607.P4335566885623648824

`A173722(n+1)+A059169(n+3)`
-/

namespace A106607.P4335566885623648824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (n + 1) + A059169 (n + 3)

end

end A106607.P4335566885623648824

namespace A106607

/-- `A173722(n+1)+A059169(n+3)` -/
def P4335566885623648824.Spec : Prop :=
  ∀ n, P4335566885623648824.a n = A106607 n

end A106607

/-! ## A106607.P11434252338813690162

`A122046(n+1)+A008621(2*n)`
-/

namespace A106607.P11434252338813690162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (n + 1) + A008621 (2 * n)

end

end A106607.P11434252338813690162

namespace A106607

/-- `A122046(n+1)+A008621(2*n)` -/
def P11434252338813690162.Spec : Prop :=
  ∀ n, P11434252338813690162.a n = A106607 n

end A106607

/-! ## A106607.P8513324730229875176

`A002265(2*n)+A122046(n+1)+1`
-/

namespace A106607.P8513324730229875176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) + (A122046 (n + 1) + 1)

end

end A106607.P8513324730229875176

namespace A106607

/-- `A002265(2*n)+A122046(n+1)+1` -/
def P8513324730229875176.Spec : Prop :=
  ∀ n, P8513324730229875176.a n = A106607 n

end A106607

/-! ## A106607.P15569058562921641336

`∑[A004526(A033638(n)+A028242(n))]`
-/

namespace A106607.P15569058562921641336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A033638 n + A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P15569058562921641336

namespace A106607

/-- `∑[A004526(A033638(n)+A028242(n))]` -/
def P15569058562921641336.Spec : Prop :=
  ∀ n, P15569058562921641336.a n = A106607 n

end A106607

/-! ## A106607.P11300843050382422676

`∑[A008619(A035106(n+2))-A008619(n+1)]`
-/

namespace A106607.P11300843050382422676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035106 (n + 2)).toNat - A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106607.P11300843050382422676

namespace A106607

/-- `∑[A008619(A035106(n+2))-A008619(n+1)]` -/
def P11300843050382422676.Spec : Prop :=
  ∀ n, P11300843050382422676.a n = A106607 n

end A106607

/-!
# A106608: a(n) = numerator of n/(n+7).

The programs for A106608, the canonical program `A106608.P8228958019078258002` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106608 has offset 0).

The definition of A106608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106608.P8228958019078258002

`lcm(n, 7)/7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106608

/-- `lcm(n, 7)/7` -/
def P8228958019078258002.Spec : Prop :=
  ∀ n, P8228958019078258002.a n = (A106608 n : ℚ)

end A106608

/-! ## A106608.P12414479613705156978

`A109048(n)/7`
-/

namespace A106608.P12414479613705156978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109048 n : ℚ) / 7

end

end A106608.P12414479613705156978

namespace A106608

/-- `A109048(n)/7` -/
def P12414479613705156978.Spec : Prop :=
  ∀ n, P12414479613705156978.a n = (A106608 n : ℚ)

end A106608

/-! ## A106608.P11114717274257365460

`n/gcd(7, n)`
-/

namespace A106608.P11114717274257365460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 7 n : ℚ)

end

end A106608.P11114717274257365460

namespace A106608

/-- `n/gcd(7, n)` -/
def P11114717274257365460.Spec : Prop :=
  ∀ n, P11114717274257365460.a n = (A106608 n : ℚ)

end A106608

/-! ## A106608.P6645352565297308501

`gcd(2*n-n, C(n, 7))`
-/

namespace A106608.P6645352565297308501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - (n : ℤ)) (Nat.choose n 7 : ℤ)

end

end A106608.P6645352565297308501

namespace A106608

/-- `gcd(2*n-n, C(n, 7))` -/
def P6645352565297308501.Spec : Prop :=
  ∀ n, (P6645352565297308501.a n : ℤ) = A106608 n

end A106608

/-! ## A106608.P9406876510762628298

`gcd(∑[6*n^6], n²)`
-/

namespace A106608.P9406876510762628298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (n ^ 2)

end

end A106608.P9406876510762628298

namespace A106608

/-- `gcd(∑[6*n^6], n²)` -/
def P9406876510762628298.Spec : Prop :=
  ∀ n, (P9406876510762628298.a n : ℤ) = A106608 n

end A106608

/-! ## A106608.P15014757967819969713

`n/A109010(n)`
-/

namespace A106608.P15014757967819969713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A109010 n : ℚ)

end

end A106608.P15014757967819969713

namespace A106608

/-- `n/A109010(n)` -/
def P15014757967819969713.Spec : Prop :=
  ∀ n, P15014757967819969713.a n = (A106608 n : ℚ)

end A106608

/-! ## A106608.P2178926801460987407

`(A283444(n)+n)/8`
-/

namespace A106608.P2178926801460987407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283444 n + (n : ℤ) : ℚ) / 8

end

end A106608.P2178926801460987407

namespace A106608

/-- `(A283444(n)+n)/8` -/
def P2178926801460987407.Spec : Prop :=
  ∀ n, P2178926801460987407.a n = (A106608 n : ℚ)

end A106608

/-! ## A106608.P1940918837651717272

`A040001(n)*A106615(n)`
-/

namespace A106608.P1940918837651717272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A106615 n

end

end A106608.P1940918837651717272

namespace A106608

/-- `A040001(n)*A106615(n)` -/
def P1940918837651717272.Spec : Prop :=
  ∀ n, P1940918837651717272.a n = A106608 n

end A106608

/-! ## A106608.P5334119845194775454

`A106615(n)*A134451(n)`
-/

namespace A106608.P5334119845194775454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 n * A134451 n

end

end A106608.P5334119845194775454

namespace A106608

/-- `A106615(n)*A134451(n)` -/
def P5334119845194775454.Spec : Prop :=
  ∀ n, P5334119845194775454.a n = A106608 n

end A106608

/-! ## A106608.P6810760733620498268

`A109043(n)/A089129(n)`
-/

namespace A106608.P6810760733620498268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109043 n : ℚ) / (A089129 n : ℚ)

end

end A106608.P6810760733620498268

namespace A106608

/-- `A109043(n)/A089129(n)` -/
def P6810760733620498268.Spec : Prop :=
  ∀ n, P6810760733620498268.a n = (A106608 n : ℚ)

end A106608

/-! ## A106608.P13952282927662722980

`A099193(n)%A004277(n)`
-/

namespace A106608.P13952282927662722980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099193 n) (A004277 n)

end

end A106608.P13952282927662722980

namespace A106608

/-- `A099193(n)%A004277(n)` -/
def P13952282927662722980.Spec : Prop :=
  ∀ n, P13952282927662722980.a n = A106608 n

end A106608

/-! ## A106608.P106926050252701794

`A229735(n)%A004277(n)`
-/

namespace A106608.P106926050252701794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229735 n) (A004277 n)

end

end A106608.P106926050252701794

namespace A106608

/-- `A229735(n)%A004277(n)` -/
def P106926050252701794.Spec : Prop :=
  ∀ n, P106926050252701794.a n = A106608 n

end A106608

/-! ## A106608.P18289760108937100587

`A283444(n)%A004277(n)`
-/

namespace A106608.P18289760108937100587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283444 n) (A004277 n)

end

end A106608.P18289760108937100587

namespace A106608

/-- `A283444(n)%A004277(n)` -/
def P18289760108937100587.Spec : Prop :=
  ∀ n, P18289760108937100587.a n = A106608 n

end A106608

/-! ## A106608.P5363088579477959498

`A106615(A022998(n))`
-/

namespace A106608.P5363088579477959498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (A022998 n).toNat

end

end A106608.P5363088579477959498

namespace A106608

/-- `A106615(A022998(n))` -/
def P5363088579477959498.Spec : Prop :=
  ∀ n, P5363088579477959498.a n = A106608 n

end A106608

/-! ## A106608.P7295412806450181146

`A106615(2*n)`
-/

namespace A106608.P7295412806450181146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (2 * n)

end

end A106608.P7295412806450181146

namespace A106608

/-- `A106615(2*n)` -/
def P7295412806450181146.Spec : Prop :=
  ∀ n, P7295412806450181146.a n = A106608 n

end A106608

/-! ## A106608.P8258502823724837347

`n/A089129(2*n)`
-/

namespace A106608.P8258502823724837347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A089129 (2 * n) : ℚ)

end

end A106608.P8258502823724837347

namespace A106608

/-- `n/A089129(2*n)` -/
def P8258502823724837347.Spec : Prop :=
  ∀ n, P8258502823724837347.a n = (A106608 n : ℚ)

end A106608

/-! ## A106608.P6343214273931246916

`A226580(lcm(7, n))`
-/

namespace A106608.P6343214273931246916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226580 (Nat.lcm 7 n)

end

end A106608.P6343214273931246916

namespace A106608

/-- `A226580(lcm(7, n))` -/
def P6343214273931246916.Spec : Prop :=
  ∀ n, P6343214273931246916.a n = A106608 n

end A106608

/-! ## A106608.P979834914326465985

`A226580(A109048(n))`
-/

namespace A106608.P979834914326465985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226580 (A109048 n).toNat

end

end A106608.P979834914326465985

namespace A106608

/-- `A226580(A109048(n))` -/
def P979834914326465985.Spec : Prop :=
  ∀ n, P979834914326465985.a n = A106608 n

end A106608

/-! ## A106608.P13063101251240269725

`A188134(A026741(A283444(n)+n))`
-/

namespace A106608.P13063101251240269725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A026741 (A283444 n + (n : ℤ)).toNat).toNat

end

end A106608.P13063101251240269725

namespace A106608

/-- `A188134(A026741(A283444(n)+n))` -/
def P13063101251240269725.Spec : Prop :=
  ∀ n, P13063101251240269725.a n = A106608 n

end A106608

/-! ## A106608.P15053017147163953514

`A188134(A064680(A283444(n)+n))`
-/

namespace A106608.P15053017147163953514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A064680 (A283444 n + (n : ℤ)).toNat).toNat

end

end A106608.P15053017147163953514

namespace A106608

/-- `A188134(A064680(A283444(n)+n))` -/
def P15053017147163953514.Spec : Prop :=
  ∀ n, P15053017147163953514.a n = A106608 n

end A106608

/-!
# A106609: Numerator of n/(n+8).

The programs for A106609, the canonical program `A106609.P5988327571392231950` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106609 has offset 0).

The definition of A106609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106609.P5988327571392231950

`lcm(n, 8)/8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106609

/-- `lcm(n, 8)/8` -/
def P5988327571392231950.Spec : Prop :=
  ∀ n, P5988327571392231950.a n = (A106609 n : ℚ)

end A106609

/-! ## A106609.P14590913405138485994

`n/gcd(n, 8)`
-/

namespace A106609.P14590913405138485994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 8 : ℚ)

end

end A106609.P14590913405138485994

namespace A106609

/-- `n/gcd(n, 8)` -/
def P14590913405138485994.Spec : Prop :=
  ∀ n, P14590913405138485994.a n = (A106609 n : ℚ)

end A106609

/-! ## A106609.P5766199497841434347

`A109049(n)/8`
-/

namespace A106609.P5766199497841434347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109049 n : ℚ) / 8

end

end A106609.P5766199497841434347

namespace A106609

/-- `A109049(n)/8` -/
def P5766199497841434347.Spec : Prop :=
  ∀ n, P5766199497841434347.a n = (A106609 n : ℚ)

end A106609

/-! ## A106609.P816029661593645426

`n/A109011(n)`
-/

namespace A106609.P816029661593645426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A109011 n : ℚ)

end

end A106609.P816029661593645426

namespace A106609

/-- `n/A109011(n)` -/
def P816029661593645426.Spec : Prop :=
  ∀ n, P816029661593645426.a n = (A106609 n : ℚ)

end A106609

/-! ## A106609.P9562183900397954952

`gcd(n, A059616(n))`
-/

namespace A106609.P9562183900397954952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A059616 n)

end

end A106609.P9562183900397954952

namespace A106609

/-- `gcd(n, A059616(n))` -/
def P9562183900397954952.Spec : Prop :=
  ∀ n, (P9562183900397954952.a n : ℤ) = A106609 n

end A106609

/-! ## A106609.P7047144842639663014

`A026741(A214392(n))`
-/

namespace A106609.P7047144842639663014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A214392 n).toNat

end

end A106609.P7047144842639663014

namespace A106609

/-- `A026741(A214392(n))` -/
def P7047144842639663014.Spec : Prop :=
  ∀ n, P7047144842639663014.a n = A106609 n

end A106609

/-! ## A106609.P839328782813405261

`A026741(n/A010121(n))`
-/

namespace A106609.P839328782813405261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A010121 n : ℚ))).toNat

end

end A106609.P839328782813405261

namespace A106609

/-- `A026741(n/A010121(n))` -/
def P839328782813405261.Spec : Prop :=
  ∀ n, P839328782813405261.a n = A106609 n

end A106609

/-! ## A106609.P965809320057084042

`A026741(n/A109008(n))`
-/

namespace A106609.P965809320057084042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109008 n : ℚ))).toNat

end

end A106609.P965809320057084042

namespace A106609

/-- `A026741(n/A109008(n))` -/
def P965809320057084042.Spec : Prop :=
  ∀ n, P965809320057084042.a n = A106609 n

end A106609

/-! ## A106609.P14080631144445264309

`gcd(A064322(n), A181318(n))`
-/

namespace A106609.P14080631144445264309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064322 n) (A181318 n)

end

end A106609.P14080631144445264309

namespace A106609

/-- `gcd(A064322(n), A181318(n))` -/
def P14080631144445264309.Spec : Prop :=
  ∀ n, (P14080631144445264309.a n : ℤ) = A106609 n

end A106609

/-! ## A106609.P6239789237909387396

`A051712(n+1)*A109007(n)`
-/

namespace A106609.P6239789237909387396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (n + 1) * A109007 n

end

end A106609.P6239789237909387396

namespace A106609

/-- `A051712(n+1)*A109007(n)` -/
def P6239789237909387396.Spec : Prop :=
  ∀ n, P6239789237909387396.a n = A106609 n

end A106609

/-! ## A106609.P2400162566787054625

`lcm(A051712(n+1), A106617(n))`
-/

namespace A106609.P2400162566787054625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051712 (n + 1)) (A106617 n)

end

end A106609.P2400162566787054625

namespace A106609

/-- `lcm(A051712(n+1), A106617(n))` -/
def P2400162566787054625.Spec : Prop :=
  ∀ n, (P2400162566787054625.a n : ℤ) = A106609 n

end A106609

/-! ## A106609.P4229007555820874570

`A026741(A026741(A026741(n)))`
-/

namespace A106609.P4229007555820874570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A026741 n).toNat).toNat

end

end A106609.P4229007555820874570

namespace A106609

/-- `A026741(A026741(A026741(n)))` -/
def P4229007555820874570.Spec : Prop :=
  ∀ n, P4229007555820874570.a n = A106609 n

end A106609

/-! ## A106609.P14784089893304026078

`A106617(A022998(n))`
-/

namespace A106609.P14784089893304026078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A022998 n).toNat

end

end A106609.P14784089893304026078

namespace A106609

/-- `A106617(A022998(n))` -/
def P14784089893304026078.Spec : Prop :=
  ∀ n, P14784089893304026078.a n = A106609 n

end A106609

/-! ## A106609.P16883147465759652351

`A106617(A043547(n+2)-2)`
-/

namespace A106609.P16883147465759652351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A043547 (n + 2) - 2).toNat

end

end A106609.P16883147465759652351

namespace A106609

/-- `A106617(A043547(n+2)-2)` -/
def P16883147465759652351.Spec : Prop :=
  ∀ n, P16883147465759652351.a n = A106609 n

end A106609

/-! ## A106609.P5205906584025250218

`A106617(n*A000034(n+1))`
-/

namespace A106609.P5205906584025250218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 ((n : ℤ) * A000034 (n + 1)).toNat

end

end A106609.P5205906584025250218

namespace A106609

/-- `A106617(n*A000034(n+1))` -/
def P5205906584025250218.Spec : Prop :=
  ∀ n, P5205906584025250218.a n = A106609 n

end A106609

/-! ## A106609.P8256633164197762969

`A106617(2*n)`
-/

namespace A106609.P8256633164197762969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (2 * n)

end

end A106609.P8256633164197762969

namespace A106609

/-- `A106617(2*n)` -/
def P8256633164197762969.Spec : Prop :=
  ∀ n, P8256633164197762969.a n = A106609 n

end A106609

/-! ## A106609.P6737247323387617590

`A030065(2*A214392(n))`
-/

namespace A106609.P6737247323387617590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * A214392 n).toNat

end

end A106609.P6737247323387617590

namespace A106609

/-- `A030065(2*A214392(n))` -/
def P6737247323387617590.Spec : Prop :=
  ∀ n, P6737247323387617590.a n = A106609 n

end A106609

/-! ## A106609.P14435653844005139582

`A214392(A283971(A214392(2*n)))`
-/

namespace A106609.P14435653844005139582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A283971 (A214392 (2 * n)).toNat).toNat

end

end A106609.P14435653844005139582

namespace A106609

/-- `A214392(A283971(A214392(2*n)))` -/
def P14435653844005139582.Spec : Prop :=
  ∀ n, P14435653844005139582.a n = A106609 n

end A106609

/-! ## A106609.P15251504610429472271

`A231190(2*(n+4))`
-/

namespace A106609.P15251504610429472271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (2 * (n + 4))

end

end A106609.P15251504610429472271

namespace A106609

/-- `A231190(2*(n+4))` -/
def P15251504610429472271.Spec : Prop :=
  ∀ n, P15251504610429472271.a n = A106609 n

end A106609

/-! ## A106609.P16518143480435898369

`A051724(A165351(n))`
-/

namespace A106609.P16518143480435898369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A165351 n).toNat

end

end A106609.P16518143480435898369

namespace A106609

/-- `A051724(A165351(n))` -/
def P16518143480435898369.Spec : Prop :=
  ∀ n, P16518143480435898369.a n = A106609 n

end A106609

/-!
# A106610: Numerator of n/(n+9).

The programs for A106610, the canonical program `A106610.P6281508858601673486` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106610 has offset 0).

The definition of A106610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106610.P6281508858601673486

`lcm(n, 9)/9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106610

/-- `lcm(n, 9)/9` -/
def P6281508858601673486.Spec : Prop :=
  ∀ n, P6281508858601673486.a n = (A106610 n : ℚ)

end A106610

/-! ## A106610.P12647314120318716434

`n/gcd(n, 9)`
-/

namespace A106610.P12647314120318716434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 9 : ℚ)

end

end A106610.P12647314120318716434

namespace A106610

/-- `n/gcd(n, 9)` -/
def P12647314120318716434.Spec : Prop :=
  ∀ n, P12647314120318716434.a n = (A106610 n : ℚ)

end A106610

/-! ## A106610.P11308618592680485881

`A109050(n)/9`
-/

namespace A106610.P11308618592680485881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109050 n : ℚ) / 9

end

end A106610.P11308618592680485881

namespace A106610

/-- `A109050(n)/9` -/
def P11308618592680485881.Spec : Prop :=
  ∀ n, P11308618592680485881.a n = (A106610 n : ℚ)

end A106610

/-! ## A106610.P6113991628906634556

`n/A109012(n)`
-/

namespace A106610.P6113991628906634556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A109012 n : ℚ)

end

end A106610.P6113991628906634556

namespace A106610

/-- `n/A109012(n)` -/
def P6113991628906634556.Spec : Prop :=
  ∀ n, P6113991628906634556.a n = (A106610 n : ℚ)

end A106610

/-! ## A106610.P5166318853925910572

`gcd(n, A145909(n))`
-/

namespace A106610.P5166318853925910572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A145909 n)

end

end A106610.P5166318853925910572

namespace A106610

/-- `gcd(n, A145909(n))` -/
def P5166318853925910572.Spec : Prop :=
  ∀ n, (P5166318853925910572.a n : ℤ) = A106610 n

end A106610

/-! ## A106610.P624224656973686543

`gcd(2*A145911(n), n²)`
-/

namespace A106610.P624224656973686543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A145911 n) (n ^ 2 : ℤ)

end

end A106610.P624224656973686543

namespace A106610

/-- `gcd(2*A145911(n), n²)` -/
def P624224656973686543.Spec : Prop :=
  ∀ n, (P624224656973686543.a n : ℤ) = A106610 n

end A106610

/-! ## A106610.P8857371149397151231

`A268488(n+1)%(n+1)`
-/

namespace A106610.P8857371149397151231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268488 (n + 1)) (n + 1 : ℤ)

end

end A106610.P8857371149397151231

namespace A106610

/-- `A268488(n+1)%(n+1)` -/
def P8857371149397151231.Spec : Prop :=
  ∀ n, P8857371149397151231.a n = A106610 n

end A106610

/-! ## A106610.P6882632771761108688

`A051176(A051176(n))`
-/

namespace A106610.P6882632771761108688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 n).toNat

end

end A106610.P6882632771761108688

namespace A106610

/-- `A051176(A051176(n))` -/
def P6882632771761108688.Spec : Prop :=
  ∀ n, P6882632771761108688.a n = A106610 n

end A106610

/-! ## A106610.P2150178285712448022

`A040001(n)*A106619(n)`
-/

namespace A106610.P2150178285712448022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A106619 n

end

end A106610.P2150178285712448022

namespace A106610

/-- `A040001(n)*A106619(n)` -/
def P2150178285712448022.Spec : Prop :=
  ∀ n, P2150178285712448022.a n = A106610 n

end A106610

/-! ## A106610.P3917021615957476829

`A106619(n)*A134451(n)`
-/

namespace A106610.P3917021615957476829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n * A134451 n

end

end A106610.P3917021615957476829

namespace A106610

/-- `A106619(n)*A134451(n)` -/
def P3917021615957476829.Spec : Prop :=
  ∀ n, P3917021615957476829.a n = A106610 n

end A106610

/-! ## A106610.P14937552176440256853

`gcd(A099196(n), A186101(n))`
-/

namespace A106610.P14937552176440256853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099196 n) (A186101 n)

end

end A106610.P14937552176440256853

namespace A106610

/-- `gcd(A099196(n), A186101(n))` -/
def P14937552176440256853.Spec : Prop :=
  ∀ n, (P14937552176440256853.a n : ℤ) = A106610 n

end A106610

/-! ## A106610.P14833395143640920962

`gcd(A144454(n+1), A258812(n+1))`
-/

namespace A106610.P14833395143640920962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144454 (n + 1)) (A258812 (n + 1))

end

end A106610.P14833395143640920962

namespace A106610

/-- `gcd(A144454(n+1), A258812(n+1))` -/
def P14833395143640920962.Spec : Prop :=
  ∀ n, (P14833395143640920962.a n : ℤ) = A106610 n

end A106610

/-! ## A106610.P3951100462309618303

`A106619(A022998(n))`
-/

namespace A106610.P3951100462309618303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A022998 n).toNat

end

end A106610.P3951100462309618303

namespace A106610

/-- `A106619(A022998(n))` -/
def P3951100462309618303.Spec : Prop :=
  ∀ n, P3951100462309618303.a n = A106610 n

end A106610

/-! ## A106610.P3792041659926641599

`A106619(2*n)`
-/

namespace A106610.P3792041659926641599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (2 * n)

end

end A106610.P3792041659926641599

namespace A106610

/-- `A106619(2*n)` -/
def P3792041659926641599.Spec : Prop :=
  ∀ n, P3792041659926641599.a n = A106610 n

end A106610

/-! ## A106610.P3202867260611885477

`gcd(2*n, A145911(2*n))`
-/

namespace A106610.P3202867260611885477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A145911 (2 * n))

end

end A106610.P3202867260611885477

namespace A106610

/-- `gcd(2*n, A145911(2*n))` -/
def P3202867260611885477.Spec : Prop :=
  ∀ n, (P3202867260611885477.a n : ℤ) = A106610 n

end A106610

/-! ## A106610.P8778081848017790794

`A185727(2*A185727(2*n))`
-/

namespace A106610.P8778081848017790794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 (2 * A185727 (2 * n)).toNat

end

end A106610.P8778081848017790794

namespace A106610

/-- `A185727(2*A185727(2*n))` -/
def P8778081848017790794.Spec : Prop :=
  ∀ n, P8778081848017790794.a n = A106610 n

end A106610

/-! ## A106610.P4757738612860180379

`A350034(2*A350034(2*n))`
-/

namespace A106610.P4757738612860180379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350034 (2 * A350034 (2 * n)).toNat

end

end A106610.P4757738612860180379

namespace A106610

/-- `A350034(2*A350034(2*n))` -/
def P4757738612860180379.Spec : Prop :=
  ∀ n, P4757738612860180379.a n = A106610 n

end A106610

/-! ## A106610.P4843305768209714425

`A109044(A130724(n))/3`
-/

namespace A106610.P4843305768209714425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109044 (A130724 n).toNat : ℚ) / 3

end

end A106610.P4843305768209714425

namespace A106610

/-- `A109044(A130724(n))/3` -/
def P4843305768209714425.Spec : Prop :=
  ∀ n, P4843305768209714425.a n = (A106610 n : ℚ)

end A106610

/-! ## A106610.P5711460378277483579

`A130724(lcm(3, A130724(n)))`
-/

namespace A106610.P5711460378277483579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (Int.lcm 3 (A130724 n))

end

end A106610.P5711460378277483579

namespace A106610

/-- `A130724(lcm(3, A130724(n)))` -/
def P5711460378277483579.Spec : Prop :=
  ∀ n, P5711460378277483579.a n = A106610 n

end A106610

/-! ## A106610.P940498148193484783

`A130724(A109044(A130724(n)))`
-/

namespace A106610.P940498148193484783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A109044 (A130724 n).toNat).toNat

end

end A106610.P940498148193484783

namespace A106610

/-- `A130724(A109044(A130724(n)))` -/
def P940498148193484783.Spec : Prop :=
  ∀ n, P940498148193484783.a n = A106610 n

end A106610

/-!
# A106611: a(n) = numerator of n/(n+10).

The programs for A106611, the canonical program `A106611.P18348698229286282302` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106611 has offset 0).

The definition of A106611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106611.P18348698229286282302

`lcm(n, 10)/10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106611

/-- `lcm(n, 10)/10` -/
def P18348698229286282302.Spec : Prop :=
  ∀ n, P18348698229286282302.a n = (A106611 n : ℚ)

end A106611

/-! ## A106611.P8604095451025924165

`A109051(n)/10`
-/

namespace A106611.P8604095451025924165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109051 n : ℚ) / 10

end

end A106611.P8604095451025924165

namespace A106611

/-- `A109051(n)/10` -/
def P8604095451025924165.Spec : Prop :=
  ∀ n, P8604095451025924165.a n = (A106611 n : ℚ)

end A106611

/-! ## A106611.P955963171711190411

`n/gcd(10, n)`
-/

namespace A106611.P955963171711190411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 10 n : ℚ)

end

end A106611.P955963171711190411

namespace A106611

/-- `n/gcd(10, n)` -/
def P955963171711190411.Spec : Prop :=
  ∀ n, P955963171711190411.a n = (A106611 n : ℚ)

end A106611

/-! ## A106611.P14761331348563929729

`gcd(n², ∑[C(n*(n+3), 2)])`
-/

namespace A106611.P14761331348563929729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n + 3)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106611.P14761331348563929729

namespace A106611

/-- `gcd(n², ∑[C(n*(n+3), 2)])` -/
def P14761331348563929729.Spec : Prop :=
  ∀ n, (P14761331348563929729.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P11910831965646767330

`gcd(2*n-n, C(2*n+1, 5))`
-/

namespace A106611.P11910831965646767330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - (n : ℤ)) (Nat.choose (2 * n + 1) 5 : ℤ)

end

end A106611.P11910831965646767330

namespace A106611

/-- `gcd(2*n-n, C(2*n+1, 5))` -/
def P11910831965646767330.Spec : Prop :=
  ∀ n, (P11910831965646767330.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P14554408636730917190

`n/A109013(n)`
-/

namespace A106611.P14554408636730917190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A109013 n : ℚ)

end

end A106611.P14554408636730917190

namespace A106611

/-- `n/A109013(n)` -/
def P14554408636730917190.Spec : Prop :=
  ∀ n, P14554408636730917190.a n = (A106611 n : ℚ)

end A106611

/-! ## A106611.P13155422846635175783

`gcd(n, A061927(n))`
-/

namespace A106611.P13155422846635175783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A061927 n)

end

end A106611.P13155422846635175783

namespace A106611

/-- `gcd(n, A061927(n))` -/
def P13155422846635175783.Spec : Prop :=
  ∀ n, (P13155422846635175783.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P6990059983909901305

`A026741(n/A109009(n))`
-/

namespace A106611.P6990059983909901305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109009 n : ℚ))).toNat

end

end A106611.P6990059983909901305

namespace A106611

/-- `A026741(n/A109009(n))` -/
def P6990059983909901305.Spec : Prop :=
  ∀ n, P6990059983909901305.a n = A106611 n

end A106611

/-! ## A106611.P14889262931960907934

`A109046(n)/A040021(n)`
-/

namespace A106611.P14889262931960907934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109046 n : ℚ) / (A040021 n : ℚ)

end

end A106611.P14889262931960907934

namespace A106611

/-- `A109046(n)/A040021(n)` -/
def P14889262931960907934.Spec : Prop :=
  ∀ n, P14889262931960907934.a n = (A106611 n : ℚ)

end A106611

/-! ## A106611.P1441101450823776402

`gcd(A000389(n), A026741(n))`
-/

namespace A106611.P1441101450823776402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000389 n) (A026741 n)

end

end A106611.P1441101450823776402

namespace A106611

/-- `gcd(A000389(n), A026741(n))` -/
def P1441101450823776402.Spec : Prop :=
  ∀ n, (P1441101450823776402.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P15273881178381585487

`gcd(A004188(n), A033544(n))`
-/

namespace A106611.P15273881178381585487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004188 n) (A033544 n)

end

end A106611.P15273881178381585487

namespace A106611

/-- `gcd(A004188(n), A033544(n))` -/
def P15273881178381585487.Spec : Prop :=
  ∀ n, (P15273881178381585487.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P2503964545707993346

`gcd(A021003(n), A035599(n))`
-/

namespace A106611.P2503964545707993346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A021003 n) (A035599 n)

end

end A106611.P2503964545707993346

namespace A106611

/-- `gcd(A021003(n), A035599(n))` -/
def P2503964545707993346.Spec : Prop :=
  ∀ n, (P2503964545707993346.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P3361338174676542220

`gcd(A063522(n), A090391(n))`
-/

namespace A106611.P3361338174676542220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063522 n) (A090391 n)

end

end A106611.P3361338174676542220

namespace A106611

/-- `gcd(A063522(n), A090391(n))` -/
def P3361338174676542220.Spec : Prop :=
  ∀ n, (P3361338174676542220.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P14692235370271759673

`gcd(A100855(n), A124161(n))`
-/

namespace A106611.P14692235370271759673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100855 n) (A124161 n)

end

end A106611.P14692235370271759673

namespace A106611

/-- `gcd(A100855(n), A124161(n))` -/
def P14692235370271759673.Spec : Prop :=
  ∀ n, (P14692235370271759673.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P5081216061065334310

`gcd(A051836(n), A176447(n))`
-/

namespace A106611.P5081216061065334310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051836 n) (A176447 n)

end

end A106611.P5081216061065334310

namespace A106611

/-- `gcd(A051836(n), A176447(n))` -/
def P5081216061065334310.Spec : Prop :=
  ∀ n, (P5081216061065334310.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P10859031645723271954

`gcd(A064680(n), A210427(n))`
-/

namespace A106611.P10859031645723271954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064680 n) (A210427 n)

end

end A106611.P10859031645723271954

namespace A106611

/-- `gcd(A064680(n), A210427(n))` -/
def P10859031645723271954.Spec : Prop :=
  ∀ n, (P10859031645723271954.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P4558438528488811386

`gcd(A001106(n), A283442(n))`
-/

namespace A106611.P4558438528488811386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001106 n) (A283442 n)

end

end A106611.P4558438528488811386

namespace A106611

/-- `gcd(A001106(n), A283442(n))` -/
def P4558438528488811386.Spec : Prop :=
  ∀ n, (P4558438528488811386.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P13853059799599090156

`gcd(A000217(n), A346638(n))`
-/

namespace A106611.P13853059799599090156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 n) (A346638 n)

end

end A106611.P13853059799599090156

namespace A106611

/-- `gcd(A000217(n), A346638(n))` -/
def P13853059799599090156.Spec : Prop :=
  ∀ n, (P13853059799599090156.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P9690617794744405747

`gcd(A179096(n), A247112(n))`
-/

namespace A106611.P9690617794744405747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A179096 n) (A247112 n)

end

end A106611.P9690617794744405747

namespace A106611

/-- `gcd(A179096(n), A247112(n))` -/
def P9690617794744405747.Spec : Prop :=
  ∀ n, (P9690617794744405747.a n : ℤ) = A106611 n

end A106611

/-! ## A106611.P10110456154202801942

`gcd(A147611(n), A283971(n))`
-/

namespace A106611.P10110456154202801942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147611 n) (A283971 n)

end

end A106611.P10110456154202801942

namespace A106611

/-- `gcd(A147611(n), A283971(n))` -/
def P10110456154202801942.Spec : Prop :=
  ∀ n, (P10110456154202801942.a n : ℤ) = A106611 n

end A106611

/-!
# A106612: a(n) = numerator(n/(n+11)).

The programs for A106612, the canonical program `A106612.P9860599020236462824` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106612 has offset 0).

The definition of A106612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106612.P9860599020236462824

`lcm(n, 11)/11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106612

/-- `lcm(n, 11)/11` -/
def P9860599020236462824.Spec : Prop :=
  ∀ n, P9860599020236462824.a n = (A106612 n : ℚ)

end A106612

/-! ## A106612.P12277306674389300861

`A109052(n)/11`
-/

namespace A106612.P12277306674389300861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109052 n : ℚ) / 11

end

end A106612.P12277306674389300861

namespace A106612

/-- `A109052(n)/11` -/
def P12277306674389300861.Spec : Prop :=
  ∀ n, P12277306674389300861.a n = (A106612 n : ℚ)

end A106612

/-! ## A106612.P15243919073289351068

`n/gcd(11, n)`
-/

namespace A106612.P15243919073289351068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 11 n : ℚ)

end

end A106612.P15243919073289351068

namespace A106612

/-- `n/gcd(11, n)` -/
def P15243919073289351068.Spec : Prop :=
  ∀ n, P15243919073289351068.a n = (A106612 n : ℚ)

end A106612

/-! ## A106612.P14730664197805773349

`n/A109014(n)`
-/

namespace A106612.P14730664197805773349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A109014 n : ℚ)

end

end A106612.P14730664197805773349

namespace A106612

/-- `n/A109014(n)` -/
def P14730664197805773349.Spec : Prop :=
  ∀ n, P14730664197805773349.a n = (A106612 n : ℚ)

end A106612

/-! ## A106612.P3751103669131729719

`gcd(n, A035605(n))`
-/

namespace A106612.P3751103669131729719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A035605 n)

end

end A106612.P3751103669131729719

namespace A106612

/-- `gcd(n, A035605(n))` -/
def P3751103669131729719.Spec : Prop :=
  ∀ n, (P3751103669131729719.a n : ℤ) = A106612 n

end A106612

/-! ## A106612.P3483084667010447708

`gcd(2*n, A300624(n))`
-/

namespace A106612.P3483084667010447708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A300624 n)

end

end A106612.P3483084667010447708

namespace A106612

/-- `gcd(2*n, A300624(n))` -/
def P3483084667010447708.Spec : Prop :=
  ∀ n, (P3483084667010447708.a n : ℤ) = A106612 n

end A106612

/-! ## A106612.P5896330753213658169

`A300624(n)%A004277(n)`
-/

namespace A106612.P5896330753213658169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300624 n) (A004277 n)

end

end A106612.P5896330753213658169

namespace A106612

/-- `A300624(n)%A004277(n)` -/
def P5896330753213658169.Spec : Prop :=
  ∀ n, P5896330753213658169.a n = A106612 n

end A106612

/-! ## A106612.P8147434784333591629

`gcd(A000290(n), A366488(n))`
-/

namespace A106612.P8147434784333591629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A366488 n)

end

end A106612.P8147434784333591629

namespace A106612

/-- `gcd(A000290(n), A366488(n))` -/
def P8147434784333591629.Spec : Prop :=
  ∀ n, (P8147434784333591629.a n : ℤ) = A106612 n

end A106612

/-! ## A106612.P13999056319825914209

`A271859(A109052(n))`
-/

namespace A106612.P13999056319825914209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271859 (A109052 n).toNat

end

end A106612.P13999056319825914209

namespace A106612

/-- `A271859(A109052(n))` -/
def P13999056319825914209.Spec : Prop :=
  ∀ n, P13999056319825914209.a n = A106612 n

end A106612

/-! ## A106612.P9076532092284087335

`A137564(A056142(n))`
-/

namespace A106612.P9076532092284087335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A056142 n).toNat

end

end A106612.P9076532092284087335

namespace A106612

/-- `A137564(A056142(n))` -/
def P9076532092284087335.Spec : Prop :=
  ∀ n, P9076532092284087335.a n = A106612 n

end A106612

/-! ## A106612.P16105314907888031818

`A337864(A321536(n))`
-/

namespace A106612.P16105314907888031818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (A321536 n).toNat

end

end A106612.P16105314907888031818

namespace A106612

/-- `A337864(A321536(n))` -/
def P16105314907888031818.Spec : Prop :=
  ∀ n, P16105314907888031818.a n = A106612 n

end A106612

/-! ## A106612.P6684740160127825503

`A321537(A321536(n)-A321537(n))`
-/

namespace A106612.P6684740160127825503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A321536 n - A321537 n).toNat

end

end A106612.P6684740160127825503

namespace A106612

/-- `A321537(A321536(n)-A321537(n))` -/
def P6684740160127825503.Spec : Prop :=
  ∀ n, P6684740160127825503.a n = A106612 n

end A106612

/-!
# A106614: a(n) = numerator of n/(n+13).

The programs for A106614, the canonical program `A106614.P6625477413610407105` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106614 has offset 0).

The definition of A106614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106614.P6625477413610407105

`lcm(n, 13)/13`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106614

/-- `lcm(n, 13)/13` -/
def P6625477413610407105.Spec : Prop :=
  ∀ n, P6625477413610407105.a n = (A106614 n : ℚ)

end A106614

/-! ## A106614.P16656910944991246459

`n/gcd(13, n)`
-/

namespace A106614.P16656910944991246459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 13 n : ℚ)

end

end A106614.P16656910944991246459

namespace A106614

/-- `n/gcd(13, n)` -/
def P16656910944991246459.Spec : Prop :=
  ∀ n, P16656910944991246459.a n = (A106614 n : ℚ)

end A106614

/-! ## A106614.P929720327108652427

`n%A051724(A313800(n))`
-/

namespace A106614.P929720327108652427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051724 (A313800 n).toNat)

end

end A106614.P929720327108652427

namespace A106614

/-- `n%A051724(A313800(n))` -/
def P929720327108652427.Spec : Prop :=
  ∀ n, P929720327108652427.a n = A106614 n

end A106614

/-! ## A106614.P12182133733687246217

`A287655(lcm(13, n))`
-/

namespace A106614.P12182133733687246217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287655 (Nat.lcm 13 n)

end

end A106614.P12182133733687246217

namespace A106614

/-- `A287655(lcm(13, n))` -/
def P12182133733687246217.Spec : Prop :=
  ∀ n, P12182133733687246217.a n = A106614 n

end A106614

/-! ## A106614.P2001274514177845218

`n/A124780(A028557(n+4))`
-/

namespace A106614.P2001274514177845218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A124780 (A028557 (n + 4)).toNat : ℚ)

end

end A106614.P2001274514177845218

namespace A106614

/-- `n/A124780(A028557(n+4))` -/
def P2001274514177845218.Spec : Prop :=
  ∀ n, P2001274514177845218.a n = (A106614 n : ℚ)

end A106614

/-!
# A106615: a(n) = numerator of n/(n+14).

The programs for A106615, the canonical program `A106615.P11597126957084129086` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106615 has offset 0).

The definition of A106615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106615.P11597126957084129086

`lcm(n, 14)/14`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106615

/-- `lcm(n, 14)/14` -/
def P11597126957084129086.Spec : Prop :=
  ∀ n, P11597126957084129086.a n = (A106615 n : ℚ)

end A106615

/-! ## A106615.P16919447880908772550

`n/gcd(n, 14)`
-/

namespace A106615.P16919447880908772550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 14 : ℚ)

end

end A106615.P16919447880908772550

namespace A106615

/-- `n/gcd(n, 14)` -/
def P16919447880908772550.Spec : Prop :=
  ∀ n, P16919447880908772550.a n = (A106615 n : ℚ)

end A106615

/-! ## A106615.P7469024716309530712

`gcd(∑[n], A106608(n))`
-/

namespace A106615.P7469024716309530712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A106608 n)

end

end A106615.P7469024716309530712

namespace A106615

/-- `gcd(∑[n], A106608(n))` -/
def P7469024716309530712.Spec : Prop :=
  ∀ n, (P7469024716309530712.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P14361036195402646746

`gcd(n², A208545(n+1))`
-/

namespace A106615.P14361036195402646746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A208545 (n + 1))

end

end A106615.P14361036195402646746

namespace A106615

/-- `gcd(n², A208545(n+1))` -/
def P14361036195402646746.Spec : Prop :=
  ∀ n, (P14361036195402646746.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P5805828050630505478

`A106608(A026741(n))`
-/

namespace A106615.P5805828050630505478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A026741 n).toNat

end

end A106615.P5805828050630505478

namespace A106615

/-- `A106608(A026741(n))` -/
def P5805828050630505478.Spec : Prop :=
  ∀ n, P5805828050630505478.a n = A106615 n

end A106615

/-! ## A106615.P14132978740283708727

`A026741(n/A109010(n))`
-/

namespace A106615.P14132978740283708727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109010 n : ℚ))).toNat

end

end A106615.P14132978740283708727

namespace A106615

/-- `A026741(n/A109010(n))` -/
def P14132978740283708727.Spec : Prop :=
  ∀ n, P14132978740283708727.a n = A106615 n

end A106615

/-! ## A106615.P13738521007585039414

`A106608(n/A040001(n))`
-/

namespace A106615.P13738521007585039414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A106615.P13738521007585039414

namespace A106615

/-- `A106608(n/A040001(n))` -/
def P13738521007585039414.Spec : Prop :=
  ∀ n, P13738521007585039414.a n = A106615 n

end A106615

/-! ## A106615.P6034534237272768472

`A109048(n)/A040043(n)`
-/

namespace A106615.P6034534237272768472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109048 n : ℚ) / (A040043 n : ℚ)

end

end A106615.P6034534237272768472

namespace A106615

/-- `A109048(n)/A040043(n)` -/
def P6034534237272768472.Spec : Prop :=
  ∀ n, P6034534237272768472.a n = (A106615 n : ℚ)

end A106615

/-! ## A106615.P616140094341942489

`A064680(n)/A089129(n)`
-/

namespace A106615.P616140094341942489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064680 n : ℚ) / (A089129 n : ℚ)

end

end A106615.P616140094341942489

namespace A106615

/-- `A064680(n)/A089129(n)` -/
def P616140094341942489.Spec : Prop :=
  ∀ n, P616140094341942489.a n = (A106615 n : ℚ)

end A106615

/-! ## A106615.P17432410521050940625

`gcd(A004188(n), A035601(n))`
-/

namespace A106615.P17432410521050940625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004188 n) (A035601 n)

end

end A106615.P17432410521050940625

namespace A106615

/-- `gcd(A004188(n), A035601(n))` -/
def P17432410521050940625.Spec : Prop :=
  ∀ n, (P17432410521050940625.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P588679561675879626

`gcd(A026741(n), A060532(n))`
-/

namespace A106615.P588679561675879626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 n) (A060532 n)

end

end A106615.P588679561675879626

namespace A106615

/-- `gcd(A026741(n), A060532(n))` -/
def P588679561675879626.Spec : Prop :=
  ∀ n, (P588679561675879626.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P15805359722327278736

`gcd(A047786(n), A099193(n))`
-/

namespace A106615.P15805359722327278736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047786 n) (A099193 n)

end

end A106615.P15805359722327278736

namespace A106615

/-- `gcd(A047786(n), A099193(n))` -/
def P15805359722327278736.Spec : Prop :=
  ∀ n, (P15805359722327278736.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P12120265360946400946

`gcd(A090393(n), A176447(n))`
-/

namespace A106615.P12120265360946400946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090393 n) (A176447 n)

end

end A106615.P12120265360946400946

namespace A106615

/-- `gcd(A090393(n), A176447(n))` -/
def P12120265360946400946.Spec : Prop :=
  ∀ n, (P12120265360946400946.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P8963675262295104299

`gcd(A064680(n), A210429(n))`
-/

namespace A106615.P8963675262295104299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064680 n) (A210429 n)

end

end A106615.P8963675262295104299

namespace A106615

/-- `gcd(A064680(n), A210429(n))` -/
def P8963675262295104299.Spec : Prop :=
  ∀ n, (P8963675262295104299.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P17902955805823491394

`gcd(A006003(n), A283444(n))`
-/

namespace A106615.P17902955805823491394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006003 n) (A283444 n)

end

end A106615.P17902955805823491394

namespace A106615

/-- `gcd(A006003(n), A283444(n))` -/
def P17902955805823491394.Spec : Prop :=
  ∀ n, (P17902955805823491394.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P1874343664662714478

`gcd(A163675(n), A229735(n))`
-/

namespace A106615.P1874343664662714478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163675 n) (A229735 n)

end

end A106615.P1874343664662714478

namespace A106615

/-- `gcd(A163675(n), A229735(n))` -/
def P1874343664662714478.Spec : Prop :=
  ∀ n, (P1874343664662714478.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P6111205889662187886

`A106608(n²/A257088(n))`
-/

namespace A106615.P6111205889662187886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (A257088 n : ℚ))).toNat

end

end A106615.P6111205889662187886

namespace A106615

/-- `A106608(n²/A257088(n))` -/
def P6111205889662187886.Spec : Prop :=
  ∀ n, P6111205889662187886.a n = A106615 n

end A106615

/-! ## A106615.P7120641704407274676

`A109043(n)/(2*A109010(n))`
-/

namespace A106615.P7120641704407274676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109043 n : ℚ) / (2 * A109010 n : ℚ)

end

end A106615.P7120641704407274676

namespace A106615

/-- `A109043(n)/(2*A109010(n))` -/
def P7120641704407274676.Spec : Prop :=
  ∀ n, P7120641704407274676.a n = (A106615 n : ℚ)

end A106615

/-! ## A106615.P15625914043742844765

`gcd(A168029(n), A208537(n+1))`
-/

namespace A106615.P15625914043742844765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168029 n) (A208537 (n + 1))

end

end A106615.P15625914043742844765

namespace A106615

/-- `gcd(A168029(n), A208537(n+1))` -/
def P15625914043742844765.Spec : Prop :=
  ∀ n, (P15625914043742844765.a n : ℤ) = A106615 n

end A106615

/-! ## A106615.P1955101864901210635

`A106608(n*n/A257088(n))`
-/

namespace A106615.P1955101864901210635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (SequenceMachineLib.roundAway ((n : ℚ) * ((n : ℚ) / (A257088 n : ℚ)))).toNat

end

end A106615.P1955101864901210635

namespace A106615

/-- `A106608(n*n/A257088(n))` -/
def P1955101864901210635.Spec : Prop :=
  ∀ n, P1955101864901210635.a n = A106615 n

end A106615

/-!
# A106616: Numerator of n/(n+15).

The programs for A106616, the canonical program `A106616.P17892641893068957606` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106616 has offset 0).

The definition of A106616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106616.P17892641893068957606

`lcm(n, 15)/15`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106616

/-- `lcm(n, 15)/15` -/
def P17892641893068957606.Spec : Prop :=
  ∀ n, P17892641893068957606.a n = (A106616 n : ℚ)

end A106616

/-! ## A106616.P13791778944558979998

`n/gcd(n, 15)`
-/

namespace A106616.P13791778944558979998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 15 : ℚ)

end

end A106616.P13791778944558979998

namespace A106616

/-- `n/gcd(n, 15)` -/
def P13791778944558979998.Spec : Prop :=
  ∀ n, P13791778944558979998.a n = (A106616 n : ℚ)

end A106616

/-! ## A106616.P6153029141818474887

`gcd(∑[2*n²²], n²)`
-/

namespace A106616.P6153029141818474887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (n ^ 2)

end

end A106616.P6153029141818474887

namespace A106616

/-- `gcd(∑[2*n²²], n²)` -/
def P6153029141818474887.Spec : Prop :=
  ∀ n, (P6153029141818474887.a n : ℤ) = A106616 n

end A106616

/-! ## A106616.P3319308769922396871

`A051176(n/A109009(n))`
-/

namespace A106616.P3319308769922396871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((n : ℚ) / (A109009 n : ℚ))).toNat

end

end A106616.P3319308769922396871

namespace A106616

/-- `A051176(n/A109009(n))` -/
def P3319308769922396871.Spec : Prop :=
  ∀ n, P3319308769922396871.a n = A106616 n

end A106616

/-! ## A106616.P11648836893079170705

`2/A089145(n)*A106611(n)`
-/

namespace A106616.P11648836893079170705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A089145 n : ℚ) * (A106611 n : ℚ)

end

end A106616.P11648836893079170705

namespace A106616

/-- `2/A089145(n)*A106611(n)` -/
def P11648836893079170705.Spec : Prop :=
  ∀ n, P11648836893079170705.a n = (A106616 n : ℚ)

end A106616

/-! ## A106616.P12577984468639199091

`A106611(A051176(2*n))`
-/

namespace A106616.P12577984468639199091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A051176 (2 * n)).toNat

end

end A106616.P12577984468639199091

namespace A106616

/-- `A106611(A051176(2*n))` -/
def P12577984468639199091.Spec : Prop :=
  ∀ n, P12577984468639199091.a n = A106616 n

end A106616

/-! ## A106616.P7454831388846288355

`A051176(2*n)/A109013(2*n)`
-/

namespace A106616.P7454831388846288355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051176 (2 * n) : ℚ) / (A109013 (2 * n) : ℚ)

end

end A106616.P7454831388846288355

namespace A106616

/-- `A051176(2*n)/A109013(2*n)` -/
def P7454831388846288355.Spec : Prop :=
  ∀ n, P7454831388846288355.a n = (A106616 n : ℚ)

end A106616

/-! ## A106616.P10057895710683166321

`A106611(A051176(n)+A051176(n))`
-/

namespace A106616.P10057895710683166321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A051176 n + A051176 n).toNat

end

end A106616.P10057895710683166321

namespace A106616

/-- `A106611(A051176(n)+A051176(n))` -/
def P10057895710683166321.Spec : Prop :=
  ∀ n, P10057895710683166321.a n = A106616 n

end A106616

/-! ## A106616.P697342852091200490

`A106611(A109044(n)-A051176(n))`
-/

namespace A106616.P697342852091200490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A109044 n - A051176 n).toNat

end

end A106616.P697342852091200490

namespace A106616

/-- `A106611(A109044(n)-A051176(n))` -/
def P697342852091200490.Spec : Prop :=
  ∀ n, P697342852091200490.a n = A106616 n

end A106616

/-! ## A106616.P1024772894193972839

`A106621(A051176(4*n))`
-/

namespace A106616.P1024772894193972839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A051176 (4 * n)).toNat

end

end A106616.P1024772894193972839

namespace A106616

/-- `A106621(A051176(4*n))` -/
def P1024772894193972839.Spec : Prop :=
  ∀ n, P1024772894193972839.a n = A106616 n

end A106616

/-!
# A106617: Numerator of n/(n+16).

The programs for A106617, the canonical program `A106617.P10226646875426895861` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106617 has offset 0).

The definition of A106617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106617.P10226646875426895861

`lcm(n, 16)/16`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106617

/-- `lcm(n, 16)/16` -/
def P10226646875426895861.Spec : Prop :=
  ∀ n, P10226646875426895861.a n = (A106617 n : ℚ)

end A106617

/-! ## A106617.P2877652288418855657

`n/gcd(n, 16)`
-/

namespace A106617.P2877652288418855657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 16 : ℚ)

end

end A106617.P2877652288418855657

namespace A106617

/-- `n/gcd(n, 16)` -/
def P2877652288418855657.Spec : Prop :=
  ∀ n, P2877652288418855657.a n = (A106617 n : ℚ)

end A106617

/-! ## A106617.P10921100262109125969

`A106609(A026741(n))`
-/

namespace A106617.P10921100262109125969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A026741 n).toNat

end

end A106617.P10921100262109125969

namespace A106617

/-- `A106609(A026741(n))` -/
def P10921100262109125969.Spec : Prop :=
  ∀ n, P10921100262109125969.a n = A106617 n

end A106617

/-! ## A106617.P729371108268964887

`A109043(A106609(n))/2`
-/

namespace A106617.P729371108268964887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109043 (A106609 n).toNat : ℚ) / 2

end

end A106617.P729371108268964887

namespace A106617

/-- `A109043(A106609(n))/2` -/
def P729371108268964887.Spec : Prop :=
  ∀ n, P729371108268964887.a n = (A106617 n : ℚ)

end A106617

/-! ## A106617.P4826169868403341174

`A026741(n/A109011(n))`
-/

namespace A106617.P4826169868403341174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109011 n : ℚ))).toNat

end

end A106617.P4826169868403341174

namespace A106617

/-- `A026741(n/A109011(n))` -/
def P4826169868403341174.Spec : Prop :=
  ∀ n, P4826169868403341174.a n = A106617 n

end A106617

/-! ## A106617.P5875753580666181910

`A106609(n/A040001(n))`
-/

namespace A106617.P5875753580666181910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A106617.P5875753580666181910

namespace A106617

/-- `A106609(n/A040001(n))` -/
def P5875753580666181910.Spec : Prop :=
  ∀ n, P5875753580666181910.a n = A106617 n

end A106617

/-! ## A106617.P13395916797717145374

`sqrt(A181318(sqrt(A181318(n))))`
-/

namespace A106617.P13395916797717145374
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 (SequenceMachineLib.roundAway (Real.sqrt (A181318 n : ℝ))).toNat : ℝ)

end

end A106617.P13395916797717145374

namespace A106617

/-- `sqrt(A181318(sqrt(A181318(n))))` -/
def P13395916797717145374.Spec : Prop :=
  ∀ n, P13395916797717145374.a n = (A106617 n : ℝ)

end A106617

/-! ## A106617.P14640897431482391634

`A106609(n/2*A000034(n))`
-/

namespace A106617.P14640897431482391634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A000034 n : ℚ))).toNat

end

end A106617.P14640897431482391634

namespace A106617

/-- `A106609(n/2*A000034(n))` -/
def P14640897431482391634.Spec : Prop :=
  ∀ n, P14640897431482391634.a n = A106617 n

end A106617

/-! ## A106617.P5488964484509904624

`A026741(A026741(A214392(n)))`
-/

namespace A106617.P5488964484509904624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A214392 n).toNat).toNat

end

end A106617.P5488964484509904624

namespace A106617

/-- `A026741(A026741(A214392(n)))` -/
def P5488964484509904624.Spec : Prop :=
  ∀ n, P5488964484509904624.a n = A106617 n

end A106617

/-! ## A106617.P153555475207557315

`A106609(A174239(A004442(n)))`
-/

namespace A106617.P153555475207557315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A174239 (A004442 n).toNat).toNat

end

end A106617.P153555475207557315

namespace A106617

/-- `A106609(A174239(A004442(n)))` -/
def P153555475207557315.Spec : Prop :=
  ∀ n, P153555475207557315.a n = A106617 n

end A106617

/-! ## A106617.P5268992923500847408

`A051724(A051724(n))*A109012(n)`
-/

namespace A106617.P5268992923500847408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A051724 n).toNat * A109012 n

end

end A106617.P5268992923500847408

namespace A106617

/-- `A051724(A051724(n))*A109012(n)` -/
def P5268992923500847408.Spec : Prop :=
  ∀ n, P5268992923500847408.a n = A106617 n

end A106617

/-! ## A106617.P11919385310844295324

`A026741(A026741(n/A010121(n)))`
-/

namespace A106617.P11919385310844295324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A010121 n : ℚ))).toNat).toNat

end

end A106617.P11919385310844295324

namespace A106617

/-- `A026741(A026741(n/A010121(n)))` -/
def P11919385310844295324.Spec : Prop :=
  ∀ n, P11919385310844295324.a n = A106617 n

end A106617

/-! ## A106617.P15412008844801843214

`A026741(A026741(n/A109008(n)))`
-/

namespace A106617.P15412008844801843214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109008 n : ℚ))).toNat).toNat

end

end A106617.P15412008844801843214

namespace A106617

/-- `A026741(A026741(n/A109008(n)))` -/
def P15412008844801843214.Spec : Prop :=
  ∀ n, P15412008844801843214.a n = A106617 n

end A106617

/-! ## A106617.P18020221561268673347

`A214392(A283971(A214392(A283971(n))))`
-/

namespace A106617.P18020221561268673347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A283971 (A214392 (A283971 n).toNat).toNat).toNat

end

end A106617.P18020221561268673347

namespace A106617

/-- `A214392(A283971(A214392(A283971(n))))` -/
def P18020221561268673347.Spec : Prop :=
  ∀ n, P18020221561268673347.a n = A106617 n

end A106617

/-! ## A106617.P7030524331197069233

`A106609(n/A000034(n+1))`
-/

namespace A106617.P7030524331197069233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

end

end A106617.P7030524331197069233

namespace A106617

/-- `A106609(n/A000034(n+1))` -/
def P7030524331197069233.Spec : Prop :=
  ∀ n, P7030524331197069233.a n = A106617 n

end A106617

/-! ## A106617.P12654467658749942250

`A106609(A029579(n+2)-2)`
-/

namespace A106617.P12654467658749942250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A029579 (n + 2) - 2).toNat

end

end A106617.P12654467658749942250

namespace A106617

/-- `A106609(A029579(n+2)-2)` -/
def P12654467658749942250.Spec : Prop :=
  ∀ n, P12654467658749942250.a n = A106617 n

end A106617

/-! ## A106617.P11562632073677620992

`A231190(n+8)`
-/

namespace A106617.P11562632073677620992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (n + 8)

end

end A106617.P11562632073677620992

namespace A106617

/-- `A231190(n+8)` -/
def P11562632073677620992.Spec : Prop :=
  ∀ n, P11562632073677620992.a n = A106617 n

end A106617

/-! ## A106617.P16604535336048308883

`A106609(A040005(n)*A106609(n))`
-/

namespace A106617.P16604535336048308883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A040005 n * A106609 n).toNat

end

end A106617.P16604535336048308883

namespace A106617

/-- `A106609(A040005(n)*A106609(n))` -/
def P16604535336048308883.Spec : Prop :=
  ∀ n, P16604535336048308883.a n = A106617 n

end A106617

/-! ## A106617.P9240411867240298109

`A106609(A040001(n)²*A106609(n))`
-/

namespace A106617.P9240411867240298109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A040001 n ^ 2 * A106609 n).toNat

end

end A106617.P9240411867240298109

namespace A106617

/-- `A106609(A040001(n)²*A106609(n))` -/
def P9240411867240298109.Spec : Prop :=
  ∀ n, P9240411867240298109.a n = A106617 n

end A106617

/-! ## A106617.P5056460999891455083

`A106609(A064680(n))`
-/

namespace A106617.P5056460999891455083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A064680 n).toNat

end

end A106617.P5056460999891455083

namespace A106617

/-- `A106609(A064680(n))` -/
def P5056460999891455083.Spec : Prop :=
  ∀ n, P5056460999891455083.a n = A106617 n

end A106617

/-!
# A106618: a(n) = numerator of n/(n+17).

The programs for A106618, the canonical program `A106618.P11132979400358016118` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106618 has offset 0).

The definition of A106618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106618.P11132979400358016118

`lcm(n, 17)/17`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106618

/-- `lcm(n, 17)/17` -/
def P11132979400358016118.Spec : Prop :=
  ∀ n, P11132979400358016118.a n = (A106618 n : ℚ)

end A106618

/-! ## A106618.P3924105974684306661

`n/gcd(17, n)`
-/

namespace A106618.P3924105974684306661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 17 n : ℚ)

end

end A106618.P3924105974684306661

namespace A106618

/-- `n/gcd(17, n)` -/
def P3924105974684306661.Spec : Prop :=
  ∀ n, P3924105974684306661.a n = (A106618 n : ℚ)

end A106618

/-! ## A106618.P615063892427592110

`gcd(2*n-n, C(n, 17))`
-/

namespace A106618.P615063892427592110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - (n : ℤ)) (Nat.choose n 17 : ℤ)

end

end A106618.P615063892427592110

namespace A106618

/-- `gcd(2*n-n, C(n, 17))` -/
def P615063892427592110.Spec : Prop :=
  ∀ n, (P615063892427592110.a n : ℤ) = A106618 n

end A106618

/-! ## A106618.P17393874689834965502

`n%A062383(A329905(2*(n+2)))`
-/

namespace A106618.P17393874689834965502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A062383 (A329905 (2 * (n + 2))).toNat)

end

end A106618.P17393874689834965502

namespace A106618

/-- `n%A062383(A329905(2*(n+2)))` -/
def P17393874689834965502.Spec : Prop :=
  ∀ n, P17393874689834965502.a n = A106618 n

end A106618

/-! ## A106618.P8097167316334820798

`n%A366652(A007528(n+1))`
-/

namespace A106618.P8097167316334820798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A366652 (A007528 (n + 1)).toNat)

end

end A106618.P8097167316334820798

namespace A106618

/-- `n%A366652(A007528(n+1))` -/
def P8097167316334820798.Spec : Prop :=
  ∀ n, P8097167316334820798.a n = A106618 n

end A106618

/-!
# A106619: a(n) = numerator of n/(n+18).

The programs for A106619, the canonical program `A106619.P2793271891897277727` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106619 has offset 0).

The definition of A106619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106619.P2793271891897277727

`lcm(n, 18)/18`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106619

/-- `lcm(n, 18)/18` -/
def P2793271891897277727.Spec : Prop :=
  ∀ n, P2793271891897277727.a n = (A106619 n : ℚ)

end A106619

/-! ## A106619.P14195639697715653056

`n/gcd(n, 18)`
-/

namespace A106619.P14195639697715653056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 18 : ℚ)

end

end A106619.P14195639697715653056

namespace A106619

/-- `n/gcd(n, 18)` -/
def P14195639697715653056.Spec : Prop :=
  ∀ n, P14195639697715653056.a n = (A106619 n : ℚ)

end A106619

/-! ## A106619.P8395166774643366344

`gcd(n, A145911(n))`
-/

namespace A106619.P8395166774643366344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A145911 n)

end

end A106619.P8395166774643366344

namespace A106619

/-- `gcd(n, A145911(n))` -/
def P8395166774643366344.Spec : Prop :=
  ∀ n, (P8395166774643366344.a n : ℤ) = A106619 n

end A106619

/-! ## A106619.P9741595383209792645

`gcd(∑[n], A144454(n+1))`
-/

namespace A106619.P9741595383209792645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A144454 (n + 1))

end

end A106619.P9741595383209792645

namespace A106619

/-- `gcd(∑[n], A144454(n+1))` -/
def P9741595383209792645.Spec : Prop :=
  ∀ n, (P9741595383209792645.a n : ℤ) = A106619 n

end A106619

/-! ## A106619.P6631902017196454324

`A106610(A026741(n))`
-/

namespace A106619.P6631902017196454324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A026741 n).toNat

end

end A106619.P6631902017196454324

namespace A106619

/-- `A106610(A026741(n))` -/
def P6631902017196454324.Spec : Prop :=
  ∀ n, P6631902017196454324.a n = A106619 n

end A106619

/-! ## A106619.P10136227124559858816

`A109043(A106610(n))/2`
-/

namespace A106619.P10136227124559858816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109043 (A106610 n).toNat : ℚ) / 2

end

end A106619.P10136227124559858816

namespace A106619

/-- `A109043(A106610(n))/2` -/
def P10136227124559858816.Spec : Prop :=
  ∀ n, P10136227124559858816.a n = (A106619 n : ℚ)

end A106619

/-! ## A106619.P4986492595319758113

`A106610(n-A142150(n))`
-/

namespace A106619.P4986492595319758113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 ((n : ℤ) - A142150 n).toNat

end

end A106619.P4986492595319758113

namespace A106619

/-- `A106610(n-A142150(n))` -/
def P4986492595319758113.Spec : Prop :=
  ∀ n, P4986492595319758113.a n = A106619 n

end A106619

/-! ## A106619.P11339835723203570873

`A026741(n/A109012(n))`
-/

namespace A106619.P11339835723203570873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109012 n : ℚ))).toNat

end

end A106619.P11339835723203570873

namespace A106619

/-- `A026741(n/A109012(n))` -/
def P11339835723203570873.Spec : Prop :=
  ∀ n, P11339835723203570873.a n = A106619 n

end A106619

/-! ## A106619.P7626443024502872658

`A051176(n/A089128(n))`
-/

namespace A106619.P7626443024502872658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((n : ℚ) / (A089128 n : ℚ))).toNat

end

end A106619.P7626443024502872658

namespace A106619

/-- `A051176(n/A089128(n))` -/
def P7626443024502872658.Spec : Prop :=
  ∀ n, P7626443024502872658.a n = A106619 n

end A106619

/-! ## A106619.P12458402995816949501

`A106610(n/A040001(n))`
-/

namespace A106619.P12458402995816949501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A106619.P12458402995816949501

namespace A106619

/-- `A106610(n/A040001(n))` -/
def P12458402995816949501.Spec : Prop :=
  ∀ n, P12458402995816949501.a n = A106619 n

end A106619

/-! ## A106619.P6812880128992310312

`A109050(n)/A040073(n)`
-/

namespace A106619.P6812880128992310312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109050 n : ℚ) / (A040073 n : ℚ)

end

end A106619.P6812880128992310312

namespace A106619

/-- `A109050(n)/A040073(n)` -/
def P6812880128992310312.Spec : Prop :=
  ∀ n, P6812880128992310312.a n = (A106619 n : ℚ)

end A106619

/-! ## A106619.P902768320307217756

`gcd(A000096(n), A106610(n))`
-/

namespace A106619.P902768320307217756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 n) (A106610 n)

end

end A106619.P902768320307217756

namespace A106619

/-- `gcd(A000096(n), A106610(n))` -/
def P902768320307217756.Spec : Prop :=
  ∀ n, (P902768320307217756.a n : ℤ) = A106619 n

end A106619

/-! ## A106619.P11871784485428807328

`gcd(A004006(n), A145909(n))`
-/

namespace A106619.P11871784485428807328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004006 n) (A145909 n)

end

end A106619.P11871784485428807328

namespace A106619

/-- `gcd(A004006(n), A145909(n))` -/
def P11871784485428807328.Spec : Prop :=
  ∀ n, (P11871784485428807328.a n : ℤ) = A106619 n

end A106619

/-! ## A106619.P15634818552258836708

`A051176(gcd(∑[n], A051176(n)))`
-/

namespace A106619.P15634818552258836708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A051176 n))

end

end A106619.P15634818552258836708

namespace A106619

/-- `A051176(gcd(∑[n], A051176(n)))` -/
def P15634818552258836708.Spec : Prop :=
  ∀ n, P15634818552258836708.a n = A106619 n

end A106619

/-! ## A106619.P3564766831899393767

`A109043(n)/(2*A109012(n))`
-/

namespace A106619.P3564766831899393767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109043 n : ℚ) / (2 * A109012 n : ℚ)

end

end A106619.P3564766831899393767

namespace A106619

/-- `A109043(n)/(2*A109012(n))` -/
def P3564766831899393767.Spec : Prop :=
  ∀ n, P3564766831899393767.a n = (A106619 n : ℚ)

end A106619

/-! ## A106619.P1813773292965835355

`gcd(2*A145909(n), A004188(n))`
-/

namespace A106619.P1813773292965835355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A145909 n) (A004188 n)

end

end A106619.P1813773292965835355

namespace A106619

/-- `gcd(2*A145909(n), A004188(n))` -/
def P1813773292965835355.Spec : Prop :=
  ∀ n, (P1813773292965835355.a n : ℤ) = A106619 n

end A106619

/-! ## A106619.P12256530504681679429

`A051176(A026741(A051176(n)))`
-/

namespace A106619.P12256530504681679429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A026741 (A051176 n).toNat).toNat

end

end A106619.P12256530504681679429

namespace A106619

/-- `A051176(A026741(A051176(n)))` -/
def P12256530504681679429.Spec : Prop :=
  ∀ n, P12256530504681679429.a n = A106619 n

end A106619

/-! ## A106619.P2486648996986414464

`A051176(A051176(n/A040001(n)))`
-/

namespace A106619.P2486648996986414464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat).toNat

end

end A106619.P2486648996986414464

namespace A106619

/-- `A051176(A051176(n/A040001(n)))` -/
def P2486648996986414464.Spec : Prop :=
  ∀ n, P2486648996986414464.a n = A106619 n

end A106619

/-! ## A106619.P1104961796552022129

`A051176(A051176(n)/(2-A000035(n)))`
-/

namespace A106619.P1104961796552022129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((A051176 n : ℚ) / (2 - A000035 n : ℚ))).toNat

end

end A106619.P1104961796552022129

namespace A106619

/-- `A051176(A051176(n)/(2-A000035(n)))` -/
def P1104961796552022129.Spec : Prop :=
  ∀ n, P1104961796552022129.a n = A106619 n

end A106619

/-! ## A106619.P8678834116108493964

`A051176(A000034(n)/2*A051176(n))`
-/

namespace A106619.P8678834116108493964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((A000034 n : ℚ) / 2 * (A051176 n : ℚ))).toNat

end

end A106619.P8678834116108493964

namespace A106619

/-- `A051176(A000034(n)/2*A051176(n))` -/
def P8678834116108493964.Spec : Prop :=
  ∀ n, P8678834116108493964.a n = A106619 n

end A106619

/-!
# A106620: a(n) = numerator of n/(n+19).

The programs for A106620, the canonical program `A106620.P5419478722383308397` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106620 has offset 0).

The definition of A106620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106620.P5419478722383308397

`lcm(n, 19)/19`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106620

/-- `lcm(n, 19)/19` -/
def P5419478722383308397.Spec : Prop :=
  ∀ n, P5419478722383308397.a n = (A106620 n : ℚ)

end A106620

/-! ## A106620.P17785187890809648412

`n/gcd(19, n)`
-/

namespace A106620.P17785187890809648412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 19 n : ℚ)

end

end A106620.P17785187890809648412

namespace A106620

/-- `n/gcd(19, n)` -/
def P17785187890809648412.Spec : Prop :=
  ∀ n, P17785187890809648412.a n = (A106620 n : ℚ)

end A106620

/-! ## A106620.P9738628976172964860

`n%A207107(A030066(3*(n+1)))`
-/

namespace A106620.P9738628976172964860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A207107 (A030066 (3 * (n + 1))).toNat)

end

end A106620.P9738628976172964860

namespace A106620

/-- `n%A207107(A030066(3*(n+1)))` -/
def P9738628976172964860.Spec : Prop :=
  ∀ n, P9738628976172964860.a n = A106620 n

end A106620

/-! ## A106620.P3180424680540820560

`n%A325351(A183990(n+1))`
-/

namespace A106620.P3180424680540820560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A325351 (A183990 (n + 1)).toNat)

end

end A106620.P3180424680540820560

namespace A106620

/-- `n%A325351(A183990(n+1))` -/
def P3180424680540820560.Spec : Prop :=
  ∀ n, P3180424680540820560.a n = A106620 n

end A106620

/-! ## A106620.P4417212964583498929

`n-A160145(A132393(n))`
-/

namespace A106620.P4417212964583498929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A160145 (A132393 n).toNat

end

end A106620.P4417212964583498929

namespace A106620

/-- `n-A160145(A132393(n))` -/
def P4417212964583498929.Spec : Prop :=
  ∀ n, P4417212964583498929.a n = A106620 n

end A106620

/-!
# A106621: a(n) = numerator of n/(n+20).

The programs for A106621, the canonical program `A106621.P6395901330594590062` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106621 has offset 0).

The definition of A106621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106621.P6395901330594590062

`lcm(20, n)/20`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106621

/-- `lcm(20, n)/20` -/
def P6395901330594590062.Spec : Prop :=
  ∀ n, P6395901330594590062.a n = (A106621 n : ℚ)

end A106621

/-! ## A106621.P5824695697721741176

`n/gcd(n, 20)`
-/

namespace A106621.P5824695697721741176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 20 : ℚ)

end

end A106621.P5824695697721741176

namespace A106621

/-- `n/gcd(n, 20)` -/
def P5824695697721741176.Spec : Prop :=
  ∀ n, P5824695697721741176.a n = (A106621 n : ℚ)

end A106621

/-! ## A106621.P4462246426999486285

`gcd(∑[C(n, 4)], A026741(n))`
-/

namespace A106621.P4462246426999486285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A026741 n)

end

end A106621.P4462246426999486285

namespace A106621

/-- `gcd(∑[C(n, 4)], A026741(n))` -/
def P4462246426999486285.Spec : Prop :=
  ∀ n, (P4462246426999486285.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P6190602361735226312

`A106611(A026741(n))`
-/

namespace A106621.P6190602361735226312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A026741 n).toNat

end

end A106621.P6190602361735226312

namespace A106621

/-- `A106611(A026741(n))` -/
def P6190602361735226312.Spec : Prop :=
  ∀ n, P6190602361735226312.a n = A106621 n

end A106621

/-! ## A106621.P5901762985086016451

`A109043(A106611(n))/2`
-/

namespace A106621.P5901762985086016451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109043 (A106611 n).toNat : ℚ) / 2

end

end A106621.P5901762985086016451

namespace A106621

/-- `A109043(A106611(n))/2` -/
def P5901762985086016451.Spec : Prop :=
  ∀ n, P5901762985086016451.a n = (A106621 n : ℚ)

end A106621

/-! ## A106621.P10402117328344967405

`A026741(n/A109013(n))`
-/

namespace A106621.P10402117328344967405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109013 n : ℚ))).toNat

end

end A106621.P10402117328344967405

namespace A106621

/-- `A026741(n/A109013(n))` -/
def P10402117328344967405.Spec : Prop :=
  ∀ n, P10402117328344967405.a n = A106621 n

end A106621

/-! ## A106621.P13198243579082426941

`gcd(A026741(n), A051843(n))`
-/

namespace A106621.P13198243579082426941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 n) (A051843 n)

end

end A106621.P13198243579082426941

namespace A106621

/-- `gcd(A026741(n), A051843(n))` -/
def P13198243579082426941.Spec : Prop :=
  ∀ n, (P13198243579082426941.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P10687846520591026652

`gcd(A000332(n), A106611(n))`
-/

namespace A106621.P10687846520591026652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000332 n) (A106611 n)

end

end A106621.P10687846520591026652

namespace A106621

/-- `gcd(A000332(n), A106611(n))` -/
def P10687846520591026652.Spec : Prop :=
  ∀ n, (P10687846520591026652.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P17390081155823216588

`gcd(A037255(n), A124161(n))`
-/

namespace A106621.P17390081155823216588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037255 n) (A124161 n)

end

end A106621.P17390081155823216588

namespace A106621

/-- `gcd(A037255(n), A124161(n))` -/
def P17390081155823216588.Spec : Prop :=
  ∀ n, (P17390081155823216588.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P7637577791353937637

`gcd(A061927(n), A214392(n))`
-/

namespace A106621.P7637577791353937637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061927 n) (A214392 n)

end

end A106621.P7637577791353937637

namespace A106621

/-- `gcd(A061927(n), A214392(n))` -/
def P7637577791353937637.Spec : Prop :=
  ∀ n, (P7637577791353937637.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P17640743660809030146

`gcd(A112851(n), A165342(n))`
-/

namespace A106621.P17640743660809030146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112851 n) (A165342 n)

end

end A106621.P17640743660809030146

namespace A106621

/-- `gcd(A112851(n), A165342(n))` -/
def P17640743660809030146.Spec : Prop :=
  ∀ n, (P17640743660809030146.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P15087280656966240879

`gcd(A178242(n), A283442(n))`
-/

namespace A106621.P15087280656966240879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178242 n) (A283442 n)

end

end A106621.P15087280656966240879

namespace A106621

/-- `gcd(A178242(n), A283442(n))` -/
def P15087280656966240879.Spec : Prop :=
  ∀ n, (P15087280656966240879.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P2065754996152897057

`A106611(n/2*A000034(n))`
-/

namespace A106621.P2065754996152897057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A000034 n : ℚ))).toNat

end

end A106621.P2065754996152897057

namespace A106621

/-- `A106611(n/2*A000034(n))` -/
def P2065754996152897057.Spec : Prop :=
  ∀ n, P2065754996152897057.a n = A106621 n

end A106621

/-! ## A106621.P2849161537252471547

`A106611(n/A107453(n+4))`
-/

namespace A106621.P2849161537252471547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (SequenceMachineLib.roundAway ((n : ℚ) / (A107453 (n + 4) : ℚ))).toNat

end

end A106621.P2849161537252471547

namespace A106621

/-- `A106611(n/A107453(n+4))` -/
def P2849161537252471547.Spec : Prop :=
  ∀ n, P2849161537252471547.a n = A106621 n

end A106621

/-! ## A106621.P12160230472546200464

`gcd(A124161(n+1), A168116(n))`
-/

namespace A106621.P12160230472546200464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124161 (n + 1)) (A168116 n)

end

end A106621.P12160230472546200464

namespace A106621

/-- `gcd(A124161(n+1), A168116(n))` -/
def P12160230472546200464.Spec : Prop :=
  ∀ n, (P12160230472546200464.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P10485584573272656846

`gcd(A022998(n), A279449(n+1))`
-/

namespace A106621.P10485584573272656846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 n) (A279449 (n + 1))

end

end A106621.P10485584573272656846

namespace A106621

/-- `gcd(A022998(n), A279449(n+1))` -/
def P10485584573272656846.Spec : Prop :=
  ∀ n, (P10485584573272656846.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P13142105900523193065

`gcd(A162012(n+1), A176447(n))`
-/

namespace A106621.P13142105900523193065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162012 (n + 1)) (A176447 n)

end

end A106621.P13142105900523193065

namespace A106621

/-- `gcd(A162012(n+1), A176447(n))` -/
def P13142105900523193065.Spec : Prop :=
  ∀ n, (P13142105900523193065.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P4849156308898354942

`gcd(A064038(n+1), A346638(n))`
-/

namespace A106621.P4849156308898354942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064038 (n + 1)) (A346638 n)

end

end A106621.P4849156308898354942

namespace A106621

/-- `gcd(A064038(n+1), A346638(n))` -/
def P4849156308898354942.Spec : Prop :=
  ∀ n, (P4849156308898354942.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P11271990198504877237

`gcd(A283971(n), A289162(n+1))`
-/

namespace A106621.P11271990198504877237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A283971 n) (A289162 (n + 1))

end

end A106621.P11271990198504877237

namespace A106621

/-- `gcd(A283971(n), A289162(n+1))` -/
def P11271990198504877237.Spec : Prop :=
  ∀ n, (P11271990198504877237.a n : ℤ) = A106621 n

end A106621

/-! ## A106621.P437353711375748581

`A026741(A026741(n/A109009(n)))`
-/

namespace A106621.P437353711375748581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109009 n : ℚ))).toNat).toNat

end

end A106621.P437353711375748581

namespace A106621

/-- `A026741(A026741(n/A109009(n)))` -/
def P437353711375748581.Spec : Prop :=
  ∀ n, P437353711375748581.a n = A106621 n

end A106621

/-!
# A106622: Primes of the form r(r(r(n)+1)+1)+1, where A141468(n)=r(n)=n-th nonprime.

The programs for A106622, there is no canonical definition to state claims against.
-/

/-! ## A106622.P7464196527101365515

`p?[A018252(A018252(A018252(n+1)))+1]`
-/

namespace A106622.P7464196527101365515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (A018252 (n + 1)).toNat).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106622.P7464196527101365515

/-! ## A106622.P17832209972861816855

`p?[A056653(A060462(n+1))+A005171(n+1)]`
-/

namespace A106622.P17832209972861816855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A060462 (n + 1)).toNat + A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106622.P17832209972861816855

/-! ## A106622.P16393846002535644036

`p?[A237739(8*A071574(n+1))+1]`
-/

namespace A106622.P16393846002535644036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (8 * A071574 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106622.P16393846002535644036

/-! ## A106622.P904995515848752199

`p?[A018252(A102615(n+1))+1]`
-/

namespace A106622.P904995515848752199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A102615 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106622.P904995515848752199

/-! ## A106622.P14736125733946400099

`p?[A141468(A102615(n+1)+1)+1]`
-/

namespace A106622.P14736125733946400099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A102615 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106622.P14736125733946400099

/-!
# A106624: Expansion of g.f.: (1 - x^2 + x^3)/((1-x^2)*(1-2*x^2)).

The programs for A106624, the canonical program `A106624.P14898792505523328215` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106624 has offset 0).

The definition of A106624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2+x^3)/(1-3x^2+2x^4))` (program `A106624.P14898792505523328215`, by `A106624.P14898792505523328215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106624.P14898792505523328215

`ogf((1-x^2+x^3)/(1-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106624

/-- `ogf((1-x^2+x^3)/(1-3x^2+2x^4))` -/
def P14898792505523328215.Spec : Prop :=
  ∀ n, P14898792505523328215.a n = A106624 n

theorem P14898792505523328215.correct : P14898792505523328215.Spec := by
  intro n
  simp only [A106624]

end A106624

/-! ## A106624.P8227947829664871819

`2^floor(n/2)+((-1)^n-1)/2`
-/

namespace A106624.P8227947829664871819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + ((-1) ^ n - 1 : ℚ) / 2

end

end A106624.P8227947829664871819

namespace A106624

/-- `2^floor(n/2)+((-1)^n-1)/2` -/
def P8227947829664871819.Spec : Prop :=
  ∀ n, P8227947829664871819.a n = (A106624 n : ℚ)

end A106624

/-! ## A106624.P8027735782814580045

`abs(2^floor(n/2)-n%2)`
-/

namespace A106624.P8027735782814580045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - ((n % 2 : ℕ) : ℚ)|

end

end A106624.P8027735782814580045

namespace A106624

/-- `abs(2^floor(n/2)-n%2)` -/
def P8027735782814580045.Spec : Prop :=
  ∀ n, P8027735782814580045.a n = (A106624 n : ℚ)

end A106624

/-! ## A106624.P7761686015555857533

`abs(n%2-A016116(n))`
-/

namespace A106624.P7761686015555857533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n % 2 : ℕ) : ℤ) - A016116 n|

end

end A106624.P7761686015555857533

namespace A106624

/-- `abs(n%2-A016116(n))` -/
def P7761686015555857533.Spec : Prop :=
  ∀ n, P7761686015555857533.a n = A106624 n

end A106624

/-! ## A106624.P9083210375397894673

`abs(2^floor(n/2)-A000035(n))`
-/

namespace A106624.P9083210375397894673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (A000035 n : ℚ)|

end

end A106624.P9083210375397894673

namespace A106624

/-- `abs(2^floor(n/2)-A000035(n))` -/
def P9083210375397894673.Spec : Prop :=
  ∀ n, P9083210375397894673.a n = (A106624 n : ℚ)

end A106624

/-! ## A106624.P11908376840647228833

`abs(A000035(n)-A016116(n))`
-/

namespace A106624.P11908376840647228833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000035 n - A016116 n|

end

end A106624.P11908376840647228833

namespace A106624

/-- `abs(A000035(n)-A016116(n))` -/
def P11908376840647228833.Spec : Prop :=
  ∀ n, P11908376840647228833.a n = A106624 n

end A106624

/-! ## A106624.P8330147406847215805

`abs(A135528(n+1)-A131572(n))`
-/

namespace A106624.P8330147406847215805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135528 (n + 1) - A131572 n|

end

end A106624.P8330147406847215805

namespace A106624

/-- `abs(A135528(n+1)-A131572(n))` -/
def P8330147406847215805.Spec : Prop :=
  ∀ n, P8330147406847215805.a n = A106624 n

end A106624

/-! ## A106624.P15845804518002948189

`floor((A060546(n+1)-and(1, n))/2)`
-/

namespace A106624.P15845804518002948189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060546 (n + 1) - (Nat.land 1 n : ℤ) : ℚ) / 2⌋

end

end A106624.P15845804518002948189

namespace A106624

/-- `floor((A060546(n+1)-and(1, n))/2)` -/
def P15845804518002948189.Spec : Prop :=
  ∀ n, P15845804518002948189.a n = A106624 n

end A106624

/-! ## A106624.P7558416072558167805

`Δ[ceil(∑[(A051032(n+1)-2)/2])]`
-/

namespace A106624.P7558416072558167805
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051032 (n + 1) - 2 : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106624.P7558416072558167805

namespace A106624

/-- `Δ[ceil(∑[(A051032(n+1)-2)/2])]` -/
def P7558416072558167805.Spec : Prop :=
  ∀ n, P7558416072558167805.a n = A106624 n

end A106624

/-! ## A106624.P7524916612230720359

`Δ[A052955(n)-A004526(n)]`
-/

namespace A106624.P7524916612230720359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106624.P7524916612230720359

namespace A106624

/-- `Δ[A052955(n)-A004526(n)]` -/
def P7524916612230720359.Spec : Prop :=
  ∀ n, P7524916612230720359.a n = A106624 n

end A106624

/-! ## A106624.P12785867944158064199

`Δ[A164090(n+1)-A008619(n)]`
-/

namespace A106624.P12785867944158064199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106624.P12785867944158064199

namespace A106624

/-- `Δ[A164090(n+1)-A008619(n)]` -/
def P12785867944158064199.Spec : Prop :=
  ∀ n, P12785867944158064199.a n = A106624 n

end A106624

/-! ## A106624.P17392591559087096318

`floor(sqrt(A277800(n)))`
-/

namespace A106624.P17392591559087096318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A277800 n)

end

end A106624.P17392591559087096318

namespace A106624

/-- `floor(sqrt(A277800(n)))` -/
def P17392591559087096318.Spec : Prop :=
  ∀ n, P17392591559087096318.a n = A106624 n

end A106624

/-! ## A106624.P5041505954458255343

`A286969(n)%A135530(n)`
-/

namespace A106624.P5041505954458255343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286969 n) (A135530 n)

end

end A106624.P5041505954458255343

namespace A106624

/-- `A286969(n)%A135530(n)` -/
def P5041505954458255343.Spec : Prop :=
  ∀ n, P5041505954458255343.a n = A106624 n

end A106624

/-! ## A106624.P8019104066741570895

`A285559(n)%A135530(n)`
-/

namespace A106624.P8019104066741570895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285559 n) (A135530 n)

end

end A106624.P8019104066741570895

namespace A106624

/-- `A285559(n)%A135530(n)` -/
def P8019104066741570895.Spec : Prop :=
  ∀ n, P8019104066741570895.a n = A106624 n

end A106624

/-! ## A106624.P17305904194414749866

`and(A052955(n), A285559(n))`
-/

namespace A106624.P17305904194414749866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052955 n) (A285559 n)

end

end A106624.P17305904194414749866

namespace A106624

/-- `and(A052955(n), A285559(n))` -/
def P17305904194414749866.Spec : Prop :=
  ∀ n, P17305904194414749866.a n = A106624 n

end A106624

/-! ## A106624.P15055955961497477567

`floor(A007179(n+1)/A016116(n+1))`
-/

namespace A106624.P15055955961497477567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007179 (n + 1) : ℚ) / (A016116 (n + 1) : ℚ)⌋

end

end A106624.P15055955961497477567

namespace A106624

/-- `floor(A007179(n+1)/A016116(n+1))` -/
def P15055955961497477567.Spec : Prop :=
  ∀ n, P15055955961497477567.a n = A106624 n

end A106624

/-! ## A106624.P4090258468747966989

`(A233411(n)+A077957(n))/A016116(n+1)`
-/

namespace A106624.P4090258468747966989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233411 n + A077957 n : ℚ) / (A016116 (n + 1) : ℚ)

end

end A106624.P4090258468747966989

namespace A106624

/-- `(A233411(n)+A077957(n))/A016116(n+1)` -/
def P4090258468747966989.Spec : Prop :=
  ∀ n, P4090258468747966989.a n = (A106624 n : ℚ)

end A106624

/-! ## A106624.P3770828065157491269

`(A005418(n+2)-A164073(n+1))/A060546(n)`
-/

namespace A106624.P3770828065157491269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005418 (n + 2) - A164073 (n + 1) : ℚ) / (A060546 n : ℚ)

end

end A106624.P3770828065157491269

namespace A106624

/-- `(A005418(n+2)-A164073(n+1))/A060546(n)` -/
def P3770828065157491269.Spec : Prop :=
  ∀ n, P3770828065157491269.a n = (A106624 n : ℚ)

end A106624

/-! ## A106624.P12453177634531439090

`(A016116(2*n)-A077957(n+1))/A016116(n+1)`
-/

namespace A106624.P12453177634531439090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n) - A077957 (n + 1) : ℚ) / (A016116 (n + 1) : ℚ)

end

end A106624.P12453177634531439090

namespace A106624

/-- `(A016116(2*n)-A077957(n+1))/A016116(n+1)` -/
def P12453177634531439090.Spec : Prop :=
  ∀ n, P12453177634531439090.a n = (A106624 n : ℚ)

end A106624

/-! ## A106624.P13816583950296378388

`A279180(n)%A112032(n)`
-/

namespace A106624.P13816583950296378388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279180 n) (A112032 n)

end

end A106624.P13816583950296378388

namespace A106624

/-- `A279180(n)%A112032(n)` -/
def P13816583950296378388.Spec : Prop :=
  ∀ n, P13816583950296378388.a n = A106624 n

end A106624

/-!
# A106627: Product L(n)*L_4(n), where L(n) are Lucas numbers and L_4(n) are Lucas 4-step numbers.

The programs for A106627, the canonical program `A106627.P18116822297848736011` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106627 has offset 0).

The definition of A106627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106627.P18116822297848736011

`A000032(n)*A073817(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106627

/-- `A000032(n)*A073817(n)` -/
def P18116822297848736011.Spec : Prop :=
  ∀ n, P18116822297848736011.a n = A106627 n

theorem P18116822297848736011.correct : P18116822297848736011.Spec := by
  intro n
  simp only [A106627]

end A106627

/-! ## A106627.P4874757506308268570

`abs(A000032(n)*A074081(n))`
-/

namespace A106627.P4874757506308268570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 n * A074081 n|

end

end A106627.P4874757506308268570

namespace A106627

/-- `abs(A000032(n)*A074081(n))` -/
def P4874757506308268570.Spec : Prop :=
  ∀ n, P4874757506308268570.a n = A106627 n

end A106627

/-! ## A106627.P8238406482660562965

`Δ[A001610(n)]*A073817(n)`
-/

namespace A106627.P8238406482660562965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A073817 n

end

end A106627.P8238406482660562965

namespace A106627

/-- `Δ[A001610(n)]*A073817(n)` -/
def P8238406482660562965.Spec : Prop :=
  ∀ n, P8238406482660562965.a n = A106627 n

end A106627

/-! ## A106627.P7546699509808682488

`(A001612(n)-1)*A073817(n)`
-/

namespace A106627.P7546699509808682488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 1) * A073817 n

end

end A106627.P7546699509808682488

namespace A106627

/-- `(A001612(n)-1)*A073817(n)` -/
def P7546699509808682488.Spec : Prop :=
  ∀ n, P7546699509808682488.a n = A106627 n

end A106627

/-! ## A106627.P10598578793357746042

`Δ[A000204(n+1)]*A073817(n)`
-/

namespace A106627.P10598578793357746042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A073817 n

end

end A106627.P10598578793357746042

namespace A106627

/-- `Δ[A000204(n+1)]*A073817(n)` -/
def P10598578793357746042.Spec : Prop :=
  ∀ n, P10598578793357746042.a n = A106627 n

end A106627

/-! ## A106627.P5391455499303316919

`A073446(n)/A001644(n)*A073817(n)`
-/

namespace A106627.P5391455499303316919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073446 n : ℚ) / (A001644 n : ℚ) * (A073817 n : ℚ)

end

end A106627.P5391455499303316919

namespace A106627

/-- `A073446(n)/A001644(n)*A073817(n)` -/
def P5391455499303316919.Spec : Prop :=
  ∀ n, P5391455499303316919.a n = (A106627 n : ℚ)

end A106627

/-! ## A106627.P1121036579498488289

`lcm(A000032(n)*A074081(n), A020985(n))`
-/

namespace A106627.P1121036579498488289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000032 n * A074081 n) (A020985 n)

end

end A106627.P1121036579498488289

namespace A106627

/-- `lcm(A000032(n)*A074081(n), A020985(n))` -/
def P1121036579498488289.Spec : Prop :=
  ∀ n, (P1121036579498488289.a n : ℤ) = A106627 n

end A106627

/-! ## A106627.P7317525901093855270

`Δ[A000285(n)-A000045(n)]*A073817(n)`
-/

namespace A106627.P7317525901093855270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A073817 n

end

end A106627.P7317525901093855270

namespace A106627

/-- `Δ[A000285(n)-A000045(n)]*A073817(n)` -/
def P7317525901093855270.Spec : Prop :=
  ∀ n, P7317525901093855270.a n = A106627 n

end A106627

/-! ## A106627.P7986482730241795705

`(A212804(n)+A000045(n+1))*A073817(n)`
-/

namespace A106627.P7986482730241795705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A000045 (n + 1)) * A073817 n

end

end A106627.P7986482730241795705

namespace A106627

/-- `(A212804(n)+A000045(n+1))*A073817(n)` -/
def P7986482730241795705.Spec : Prop :=
  ∀ n, P7986482730241795705.a n = A106627 n

end A106627

/-! ## A106627.P9411710312399578931

`(A000204(n+2)-A000204(n+1))*A073817(n)`
-/

namespace A106627.P9411710312399578931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 2) - A000204 (n + 1)) * A073817 n

end

end A106627.P9411710312399578931

namespace A106627

/-- `(A000204(n+2)-A000204(n+1))*A073817(n)` -/
def P9411710312399578931.Spec : Prop :=
  ∀ n, P9411710312399578931.a n = A106627 n

end A106627

/-! ## A106627.P1191374779254554137

`Δ[A000045(n+2)+A000045(n)+1]*A073817(n)`
-/

namespace A106627.P1191374779254554137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (A000045 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A073817 n

end

end A106627.P1191374779254554137

namespace A106627

/-- `Δ[A000045(n+2)+A000045(n)+1]*A073817(n)` -/
def P1191374779254554137.Spec : Prop :=
  ∀ n, P1191374779254554137.a n = A106627 n

end A106627

/-! ## A106627.P6933977122691074806

`A073817(n)*A075117(A000124(n+1))`
-/

namespace A106627.P6933977122691074806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 n * A075117 (A000124 (n + 1)).toNat

end

end A106627.P6933977122691074806

namespace A106627

/-- `A073817(n)*A075117(A000124(n+1))` -/
def P6933977122691074806.Spec : Prop :=
  ∀ n, P6933977122691074806.a n = A106627 n

end A106627

/-! ## A106627.P13038202715075553536

`A073817(n)*A075117(A000217(n+1)+1)`
-/

namespace A106627.P13038202715075553536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 n * A075117 (A000217 (n + 1) + 1).toNat

end

end A106627.P13038202715075553536

namespace A106627

/-- `A073817(n)*A075117(A000217(n+1)+1)` -/
def P13038202715075553536.Spec : Prop :=
  ∀ n, P13038202715075553536.a n = A106627 n

end A106627

/-!
# A106628: Anomalous prime numbers.

The programs for A106628, there is no canonical definition to state claims against.
-/

/-! ## A106628.P7200635610039046543

`A130903(lt[38, A031167(3*n+5)])`
-/

namespace A106628.P7200635610039046543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106628.P7200635610039046543

/-!
# A106629: Number of positive integers <= 10^n that are divisible by no prime exceeding 13.

The programs for A106629, there is no canonical definition to state claims against.
-/

/-! ## A106629.P17752091232684666560

`A080684(10^n)`
-/

namespace A106629.P17752091232684666560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080684 (10 ^ n)

end

end A106629.P17752091232684666560

/-!
# A106631: Belgian-4 numbers.

The programs for A106631, there is no canonical definition to state claims against.
-/

/-! ## A106631.P1052200666565319609

`lt[A003602(A262066(3*(n+1))), A003714(n)]`
-/

namespace A106631.P1052200666565319609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A262066 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106631.P1052200666565319609

/-! ## A106631.P15441013462002473668

`lt[A105081(A262066(3*(n+1))), A022340(n)]`
-/

namespace A106631.P15441013462002473668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A262066 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106631.P15441013462002473668

/-!
# A106632: Expansion of g.f. -(1+27*x^2)/((1+3*x)*(1-2*x+9*x^2)).

The programs for A106632, the canonical program `A106632.P1079905685339783849` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106632 has offset 0).

The definition of A106632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1-27x^2)/(1+x+3x^2+27x^3))` (program `A106632.P1079905685339783849`, by `A106632.P1079905685339783849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106632.P2326918612903638307

`(-1)^(n+1)*A087455(n+1)²`
-/

namespace A106632.P2326918612903638307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A087455 (n + 1) ^ 2

end

end A106632.P2326918612903638307

namespace A106632

/-- `(-1)^(n+1)*A087455(n+1)²` -/
def P2326918612903638307.Spec : Prop :=
  ∀ n, P2326918612903638307.a n = A106632 n

end A106632

/-! ## A106632.P1079905685339783849

`ogf((-1-27x^2)/(1+x+3x^2+27x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106632

/-- `ogf((-1-27x^2)/(1+x+3x^2+27x^3))` -/
def P1079905685339783849.Spec : Prop :=
  ∀ n, P1079905685339783849.a n = A106632 n

theorem P1079905685339783849.correct : P1079905685339783849.Spec := by
  intro n
  simp only [A106632]

end A106632

/-! ## A106632.P6813134045113613207

`3^(n+1)/2*(cos((n+1)*acos(1/3))+(-1)^(n+1))`
-/

namespace A106632.P6813134045113613207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℚ) / 2 : ℝ) * (Real.cos ((n + 1 : ℝ) * Real.arccos ((1 : ℚ) / 3 : ℝ)) + ((-1) ^ (n + 1) : ℝ))

end

end A106632.P6813134045113613207

namespace A106632

/-- `3^(n+1)/2*(cos((n+1)*acos(1/3))+(-1)^(n+1))` -/
def P6813134045113613207.Spec : Prop :=
  ∀ n, P6813134045113613207.a n = (A106632 n : ℝ)

end A106632

/-! ## A106632.P5510475391935864093

`A087455(n+1)²*A033999(n+1)`
-/

namespace A106632.P5510475391935864093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087455 (n + 1) ^ 2 * A033999 (n + 1)

end

end A106632.P5510475391935864093

namespace A106632

/-- `A087455(n+1)²*A033999(n+1)` -/
def P5510475391935864093.Spec : Prop :=
  ∀ n, P5510475391935864093.a n = A106632 n

end A106632

/-! ## A106632.P11000729917436747490

`A087455(n+1)²/A033999(n+3)`
-/

namespace A106632.P11000729917436747490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087455 (n + 1) ^ 2 : ℚ) / (A033999 (n + 3) : ℚ)

end

end A106632.P11000729917436747490

namespace A106632

/-- `A087455(n+1)²/A033999(n+3)` -/
def P11000729917436747490.Spec : Prop :=
  ∀ n, P11000729917436747490.a n = (A106632 n : ℚ)

end A106632

/-! ## A106632.P13912216776676197504

`xor(A087455(A000027(n+1))², A033999(n+3))+1`
-/

namespace A106632.P13912216776676197504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087455 (A000027 (n + 1)).toNat ^ 2) (A033999 (n + 3)) + 1

end

end A106632.P13912216776676197504

namespace A106632

/-- `xor(A087455(A000027(n+1))², A033999(n+3))+1` -/
def P13912216776676197504.Spec : Prop :=
  ∀ n, P13912216776676197504.a n = A106632 n

end A106632

/-!
# A106633: Number of ways to express n as k+l*m, with k, l, m all in the range [0..n].

The programs for A106633, the canonical program `A106633.P11456217349808284816` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106633 has offset 0).

The definition of A106633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106633.P11456217349808284816

`A005408(n)+A006218(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106633

/-- `A005408(n)+A006218(n)` -/
def P11456217349808284816.Spec : Prop :=
  ∀ n, P11456217349808284816.a n = A106633 n

theorem P11456217349808284816.correct : P11456217349808284816.Spec := by
  intro n
  simp only [A106633]

end A106633

/-! ## A106633.P4538922701177057484

`∑[∏{e}[n, #+1]]+2*n`
-/

namespace A106633.P4538922701177057484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A106633.P4538922701177057484

namespace A106633

/-- `∑[∏{e}[n, #+1]]+2*n` -/
def P4538922701177057484.Spec : Prop :=
  ∀ n, (P4538922701177057484.a n : ℤ) = A106633 n

end A106633

/-! ## A106633.P5212707741800743862

`∑[∏{e}[n, #+1]]+n+n`
-/

namespace A106633.P5212707741800743862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n + n

end

end A106633.P5212707741800743862

namespace A106633

/-- `∑[∏{e}[n, #+1]]+n+n` -/
def P5212707741800743862.Spec : Prop :=
  ∀ n, (P5212707741800743862.a n : ℤ) = A106633 n

end A106633

/-! ## A106633.P13592898206296959677

`A006590(n+1)+n`
-/

namespace A106633.P13592898206296959677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) + (n : ℤ)

end

end A106633.P13592898206296959677

namespace A106633

/-- `A006590(n+1)+n` -/
def P13592898206296959677.Spec : Prop :=
  ∀ n, P13592898206296959677.a n = A106633 n

end A106633

/-! ## A106633.P2175176738450078911

`A054519(n)+2*n`
-/

namespace A106633.P2175176738450078911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + (2 * n : ℤ)

end

end A106633.P2175176738450078911

namespace A106633

/-- `A054519(n)+2*n` -/
def P2175176738450078911.Spec : Prop :=
  ∀ n, P2175176738450078911.a n = A106633 n

end A106633

/-! ## A106633.P4488566742276473347

`a(n-1)+A000005(n)+2` with `a(0)=1`
-/

namespace A106633.P4488566742276473347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000005 n + 2)

end

end A106633.P4488566742276473347

namespace A106633

/-- `a(n-1)+A000005(n)+2` -/
def P4488566742276473347.Spec : Prop :=
  ∀ n, P4488566742276473347.a n = A106633 n

end A106633

/-! ## A106633.P6776396695050689883

`2*n+1+∑[A032741(n)]+n`
-/

namespace A106633.P6776396695050689883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A106633.P6776396695050689883

namespace A106633

/-- `2*n+1+∑[A032741(n)]+n` -/
def P6776396695050689883.Spec : Prop :=
  ∀ n, P6776396695050689883.a n = A106633 n

end A106633

/-! ## A106633.P5514001306426337027

`∑[A000005(C(2, n+2)+n)]+2*n`
-/

namespace A106633.P5514001306426337027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A106633.P5514001306426337027

namespace A106633

/-- `∑[A000005(C(2, n+2)+n)]+2*n` -/
def P5514001306426337027.Spec : Prop :=
  ∀ n, P5514001306426337027.a n = A106633 n

end A106633

/-! ## A106633.P12724824360673796841

`A325459(n)+A008574(n)`
-/

namespace A106633.P12724824360673796841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A008574 n

end

end A106633.P12724824360673796841

namespace A106633

/-- `A325459(n)+A008574(n)` -/
def P12724824360673796841.Spec : Prop :=
  ∀ n, P12724824360673796841.a n = A106633 n

end A106633

/-! ## A106633.P4150104476999019187

`A005843(n)+A006218(n)+1`
-/

namespace A106633.P4150104476999019187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A006218 n + 1)

end

end A106633.P4150104476999019187

namespace A106633

/-- `A005843(n)+A006218(n)+1` -/
def P4150104476999019187.Spec : Prop :=
  ∀ n, P4150104476999019187.a n = A106633 n

end A106633

/-! ## A106633.P10195660846019725094

`A286002(n+1)+A077597(n)`
-/

namespace A106633.P10195660846019725094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) + A077597 n

end

end A106633.P10195660846019725094

namespace A106633

/-- `A286002(n+1)+A077597(n)` -/
def P10195660846019725094.Spec : Prop :=
  ∀ n, P10195660846019725094.a n = A106633 n

end A106633

/-! ## A106633.P7674323599068142296

`A067274(n)-2*A091627(n)`
-/

namespace A106633.P7674323599068142296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067274 n - 2 * A091627 n

end

end A106633.P7674323599068142296

namespace A106633

/-- `A067274(n)-2*A091627(n)` -/
def P7674323599068142296.Spec : Prop :=
  ∀ n, P7674323599068142296.a n = A106633 n

end A106633

/-! ## A106633.P11234589898128923851

`A028391(n)+A132106(n)+n`
-/

namespace A106633.P11234589898128923851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + (A132106 n + (n : ℤ))

end

end A106633.P11234589898128923851

namespace A106633

/-- `A028391(n)+A132106(n)+n` -/
def P11234589898128923851.Spec : Prop :=
  ∀ n, P11234589898128923851.a n = A106633 n

end A106633

/-! ## A106633.P5048504611956249790

`A008486(n)+A325459(n)+n`
-/

namespace A106633.P5048504611956249790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A325459 n + (n : ℤ))

end

end A106633.P5048504611956249790

namespace A106633

/-- `A008486(n)+A325459(n)+n` -/
def P5048504611956249790.Spec : Prop :=
  ∀ n, P5048504611956249790.a n = A106633 n

end A106633

/-! ## A106633.P17382832310769189320

`A008585(n)-(n-A054519(n))`
-/

namespace A106633.P17382832310769189320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A054519 n)

end

end A106633.P17382832310769189320

namespace A106633

/-- `A008585(n)-(n-A054519(n))` -/
def P17382832310769189320.Spec : Prop :=
  ∀ n, P17382832310769189320.a n = A106633 n

end A106633

/-! ## A106633.P9810929129660818987

`A161886(n+1)+A049820(n+1)`
-/

namespace A106633.P9810929129660818987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) + A049820 (n + 1)

end

end A106633.P9810929129660818987

namespace A106633

/-- `A161886(n+1)+A049820(n+1)` -/
def P9810929129660818987.Spec : Prop :=
  ∀ n, P9810929129660818987.a n = A106633 n

end A106633

/-! ## A106633.P17155816849454727397

`A006218(n)+A000265(2*n+1)`
-/

namespace A106633.P17155816849454727397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + A000265 (2 * n + 1)

end

end A106633.P17155816849454727397

namespace A106633

/-- `A006218(n)+A000265(2*n+1)` -/
def P17155816849454727397.Spec : Prop :=
  ∀ n, P17155816849454727397.a n = A106633 n

end A106633

/-! ## A106633.P9476564593258568941

`A327326(n)+A005187(2*n+1)`
-/

namespace A106633.P9476564593258568941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 n + A005187 (2 * n + 1)

end

end A106633.P9476564593258568941

namespace A106633

/-- `A327326(n)+A005187(2*n+1)` -/
def P9476564593258568941.Spec : Prop :=
  ∀ n, P9476564593258568941.a n = A106633 n

end A106633

/-! ## A106633.P5503066378154119900

`A000027(n+1)+A006218(n)+n`
-/

namespace A106633.P5503066378154119900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A006218 n + (n : ℤ))

end

end A106633.P5503066378154119900

namespace A106633

/-- `A000027(n+1)+A006218(n)+n` -/
def P5503066378154119900.Spec : Prop :=
  ∀ n, P5503066378154119900.a n = A106633 n

end A106633

/-!
# A106635: a(n) = round(2*Im(z(n))/Pi - 4), where z(n) is the n-th zero of the Riemann zeta function on the critical line (with a positive imaginary part).

The programs for A106635, there is no canonical definition to state claims against.
-/

/-! ## A106635.P8082080410929815383

`A106636(n)-4`
-/

namespace A106635.P8082080410929815383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106636 n - 4

end

end A106635.P8082080410929815383

/-! ## A106635.P3422198754377446996

`A023446(A106636(n))`
-/

namespace A106635.P3422198754377446996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A106636 n).toNat

end

end A106635.P3422198754377446996

/-! ## A106635.P11986340569929182717

`A020705(n)+A106636(n)%(n+8)`
-/

namespace A106635.P11986340569929182717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n + Int.tmod (A106636 n) (n + 8 : ℤ)

end

end A106635.P11986340569929182717

/-! ## A106635.P2064292795706799017

`A276656(A304499(n)+A304495(n+1))`
-/

namespace A106635.P2064292795706799017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276656 (A304499 n + A304495 (n + 1)).toNat

end

end A106635.P2064292795706799017

/-! ## A106635.P15689421555488692496

`A186350(n+1)+A061775(A119311(2*(n+2)))`
-/

namespace A106635.P15689421555488692496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186350 (n + 1) + A061775 (A119311 (2 * (n + 2))).toNat

end

end A106635.P15689421555488692496

/-!
# A106636: a(n) = round(2*Im(z(n))/Pi), where z(n) is the n-th zero of the Riemann zeta function on the critical line (with a positive imaginary part).

The programs for A106636, there is no canonical definition to state claims against.
-/

/-! ## A106636.P15955109302530994792

`A106635(n)+4`
-/

namespace A106636.P15955109302530994792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106635 n + 4

end

end A106636.P15955109302530994792

/-! ## A106636.P14353198967957518800

`A020705(A106635(n))`
-/

namespace A106636.P14353198967957518800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A106635 n).toNat

end

end A106636.P14353198967957518800

/-! ## A106636.P3411689135318341474

`A020715(A106635(n)-2)`
-/

namespace A106636.P3411689135318341474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A106635 n - 2).toNat

end

end A106636.P3411689135318341474

/-! ## A106636.P11956688164127231195

`A020719(A106635(n)-3)`
-/

namespace A106636.P11956688164127231195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A106635 n - 3).toNat

end

end A106636.P11956688164127231195

/-! ## A106636.P16460727993977293727

`A020723(A106635(n)-5)`
-/

namespace A106636.P16460727993977293727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A106635 n - 5).toNat

end

end A106636.P16460727993977293727

/-!
# A106637: Accumulation of permutation sequence on three symbols such that a(n+2) - 2*a(n+1) - a(n) = 0 overall.

The programs for A106637, the canonical program `A106637.P9828308032645277911` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106637 has offset 1).

The definition of A106637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106637.P16686391512821759434

`round(2*(n+1)-sin(dr(n)))`
-/

namespace A106637.P16686391512821759434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (n + 1) : ℝ) - Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ))

end

end A106637.P16686391512821759434

namespace A106637

/-- `round(2*(n+1)-sin(dr(n)))` -/
def P16686391512821759434.Spec : Prop :=
  ∀ n, P16686391512821759434.a n = A106637 (n + 1)

end A106637

/-! ## A106637.P3992524116651932599

`2*n-(round(sin(dr(n)))-2)`
-/

namespace A106637.P3992524116651932599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)) - 2)

end

end A106637.P3992524116651932599

namespace A106637

/-- `2*n-(round(sin(dr(n)))-2)` -/
def P3992524116651932599.Spec : Prop :=
  ∀ n, P3992524116651932599.a n = A106637 (n + 1)

end A106637

/-! ## A106637.P10670674603568303852

`n+2+n-round(sin(dr(n)))`
-/

namespace A106637.P10670674603568303852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 + n : ℤ) - SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ))

end

end A106637.P10670674603568303852

namespace A106637

/-- `n+2+n-round(sin(dr(n)))` -/
def P10670674603568303852.Spec : Prop :=
  ∀ n, P10670674603568303852.a n = A106637 (n + 1)

end A106637

/-! ## A106637.P572874515634517285

`n-(round(sin(dr(n)))-2-n)`
-/

namespace A106637.P572874515634517285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)) - 2 - (n : ℤ))

end

end A106637.P572874515634517285

namespace A106637

/-- `n-(round(sin(dr(n)))-2-n)` -/
def P572874515634517285.Spec : Prop :=
  ∀ n, P572874515634517285.a n = A106637 (n + 1)

end A106637

/-! ## A106637.P3203762622266539487

`2*n-round(sin(n%9))+2`
-/

namespace A106637.P3203762622266539487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway (Real.sin ((n % 9 : ℕ) : ℝ)) + 2

end

end A106637.P3203762622266539487

namespace A106637

/-- `2*n-round(sin(n%9))+2` -/
def P3203762622266539487.Spec : Prop :=
  ∀ n, P3203762622266539487.a n = A106637 (n + 1)

end A106637

/-! ## A106637.P3035228326643532876

`A005843(n)+2-round(sin(dr(n)))`
-/

namespace A106637.P3035228326643532876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)))

end

end A106637.P3035228326643532876

namespace A106637

/-- `A005843(n)+2-round(sin(dr(n)))` -/
def P3035228326643532876.Spec : Prop :=
  ∀ n, P3035228326643532876.a n = A106637 (n + 1)

end A106637

/-! ## A106637.P9828308032645277911

`A004277(n)+gcd(6, A299255(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106637

/-- `A004277(n)+gcd(6, A299255(n))` -/
def P9828308032645277911.Spec : Prop :=
  ∀ n, P9828308032645277911.a n = A106637 (n + 1)

theorem P9828308032645277911.correct : P9828308032645277911.Spec := by
  intro n
  simp only [A106637, Nat.add_sub_cancel]

end A106637

/-!
# A106638: Limiting word of the morphism 1->1221, 2->2332, 3->3113 starting from 1.

The programs for A106638, the canonical program `A106638.P16182271314387707793` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106638 has offset 0).

The definition of A106638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106638.P9821101697111463834

`(n-A160382(n))%3+1`
-/

namespace A106638.P9821101697111463834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A160382 n) 3 + 1

end

end A106638.P9821101697111463834

namespace A106638

/-- `(n-A160382(n))%3+1` -/
def P9821101697111463834.Spec : Prop :=
  ∀ n, P9821101697111463834.a n = A106638 n

end A106638

/-! ## A106638.P2309333664024878160

`(A001743(n+1)+n)%3+1`
-/

namespace A106638.P2309333664024878160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001743 (n + 1) + (n : ℤ)) 3 + 1

end

end A106638.P2309333664024878160

namespace A106638

/-- `(A001743(n+1)+n)%3+1` -/
def P2309333664024878160.Spec : Prop :=
  ∀ n, P2309333664024878160.a n = A106638 n

end A106638

/-! ## A106638.P16182271314387707793

`A005187(xor(n, floor(n/2)))%3+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106638

/-- `A005187(xor(n, floor(n/2)))%3+1` -/
def P16182271314387707793.Spec : Prop :=
  ∀ n, P16182271314387707793.a n = A106638 n

theorem P16182271314387707793.correct : P16182271314387707793.Spec := by
  intro n
  simp only [A106638]

end A106638

/-! ## A106638.P11844929386317185424

`A245555(A309952(n)+1)`
-/

namespace A106638.P11844929386317185424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245555 (A309952 n + 1).toNat

end

end A106638.P11844929386317185424

namespace A106638

/-- `A245555(A309952(n)+1)` -/
def P11844929386317185424.Spec : Prop :=
  ∀ n, P11844929386317185424.a n = A106638 n

end A106638

/-! ## A106638.P15469533684790172606

`A010882(n-A160382(n))`
-/

namespace A106638.P15469533684790172606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 ((n : ℤ) - A160382 n).toNat

end

end A106638.P15469533684790172606

namespace A106638

/-- `A010882(n-A160382(n))` -/
def P15469533684790172606.Spec : Prop :=
  ∀ n, P15469533684790172606.a n = A106638 n

end A106638

/-! ## A106638.P8104423364485459737

`A010882(∑{digits}[A007090(n), #²])`
-/

namespace A106638.P8104423364485459737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A106638.P8104423364485459737

namespace A106638

/-- `A010882(∑{digits}[A007090(n), #²])` -/
def P8104423364485459737.Spec : Prop :=
  ∀ n, P8104423364485459737.a n = A106638 n

end A106638

/-! ## A106638.P13970454307248365760

`A005187(A003188(n))%3+1`
-/

namespace A106638.P13970454307248365760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A003188 n).toNat) 3 + 1

end

end A106638.P13970454307248365760

namespace A106638

/-- `A005187(A003188(n))%3+1` -/
def P13970454307248365760.Spec : Prop :=
  ∀ n, P13970454307248365760.a n = A106638 n

end A106638

/-! ## A106638.P13545706488080081045

`A010882(A000120(A309952(n)))`
-/

namespace A106638.P13545706488080081045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A000120 (A309952 n).toNat).toNat

end

end A106638.P13545706488080081045

namespace A106638

/-- `A010882(A000120(A309952(n)))` -/
def P13545706488080081045.Spec : Prop :=
  ∀ n, P13545706488080081045.a n = A106638 n

end A106638

/-! ## A106638.P1974509655971228438

`A010882(2*A160382(n)+n)`
-/

namespace A106638.P1974509655971228438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * A160382 n + (n : ℤ)).toNat

end

end A106638.P1974509655971228438

namespace A106638

/-- `A010882(2*A160382(n)+n)` -/
def P1974509655971228438.Spec : Prop :=
  ∀ n, P1974509655971228438.a n = A106638 n

end A106638

/-! ## A106638.P1366387363479846823

`A010882(A160382(n)+A160382(n)+n)`
-/

namespace A106638.P1366387363479846823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A160382 n + (A160382 n + (n : ℤ))).toNat

end

end A106638.P1366387363479846823

namespace A106638

/-- `A010882(A160382(n)+A160382(n)+n)` -/
def P1366387363479846823.Spec : Prop :=
  ∀ n, P1366387363479846823.a n = A106638 n

end A106638

/-! ## A106638.P3863432197734795110

`A010882(A046030(n+1))`
-/

namespace A106638.P3863432197734795110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A046030 (n + 1)).toNat

end

end A106638.P3863432197734795110

namespace A106638

/-- `A010882(A046030(n+1))` -/
def P3863432197734795110.Spec : Prop :=
  ∀ n, P3863432197734795110.a n = A106638 n

end A106638

/-! ## A106638.P10746214408239519739

`A010882(A001743(n+1)+n)`
-/

namespace A106638.P10746214408239519739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A001743 (n + 1) + (n : ℤ)).toNat

end

end A106638.P10746214408239519739

namespace A106638

/-- `A010882(A001743(n+1)+n)` -/
def P10746214408239519739.Spec : Prop :=
  ∀ n, P10746214408239519739.a n = A106638 n

end A106638

/-! ## A106638.P1990489967079349927

`A280048(2*A046030(n+1))`
-/

namespace A106638.P1990489967079349927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280048 (2 * A046030 (n + 1)).toNat

end

end A106638.P1990489967079349927

namespace A106638

/-- `A280048(2*A046030(n+1))` -/
def P1990489967079349927.Spec : Prop :=
  ∀ n, P1990489967079349927.a n = A106638 n

end A106638

/-!
# A106639: Distinguished primes.

The programs for A106639, there is no canonical definition to state claims against.
-/

/-! ## A106639.P4826335524700175054

`A000040(record[A303940(A073731(n))])`
-/

namespace A106639.P4826335524700175054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (A073731 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106639.P4826335524700175054

/-! ## A106639.P15110278043966669220

`p?[lt[n, A353082(n+1)]]`
-/

namespace A106639.P15110278043966669220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353082 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106639.P15110278043966669220

/-! ## A106639.P11262608101433753385

`p?[lcm(n, A008683(A136218(n)))]`
-/

namespace A106639.P11262608101433753385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A008683 (A136218 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106639.P11262608101433753385

/-!
# A106640: Row sums of A059346.

The programs for A106640, the canonical program `A106640.P13671692357537978349` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106640 has offset 0).

The definition of A106640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106640.P13671692357537978349

`A000108(n+1)-A005043(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106640

/-- `A000108(n+1)-A005043(n+1)` -/
def P13671692357537978349.Spec : Prop :=
  ∀ n, P13671692357537978349.a n = A106640 n

theorem P13671692357537978349.correct : P13671692357537978349.Spec := by
  intro n
  simp only [A106640]

end A106640

/-! ## A106640.P7559247989695028573

`A000296(n+2)-A247494(n+1)`
-/

namespace A106640.P7559247989695028573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 2) - A247494 (n + 1)

end

end A106640.P7559247989695028573

namespace A106640

/-- `A000296(n+2)-A247494(n+1)` -/
def P7559247989695028573.Spec : Prop :=
  ∀ n, P7559247989695028573.a n = A106640 n

end A106640

/-! ## A106640.P10390448448979006147

`A058987(n+1)+A005043(n)`
-/

namespace A106640.P10390448448979006147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058987 (n + 1) + A005043 n

end

end A106640.P10390448448979006147

namespace A106640

/-- `A058987(n+1)+A005043(n)` -/
def P10390448448979006147.Spec : Prop :=
  ∀ n, P10390448448979006147.a n = A106640 n

end A106640

/-! ## A106640.P9986613934006665131

`A217539(n+1)+A002426(n)`
-/

namespace A106640.P9986613934006665131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217539 (n + 1) + A002426 n

end

end A106640.P9986613934006665131

namespace A106640

/-- `A217539(n+1)+A002426(n)` -/
def P9986613934006665131.Spec : Prop :=
  ∀ n, P9986613934006665131.a n = A106640 n

end A106640

/-! ## A106640.P810997524831300481

`record[A097331(n)]-A005043(n+1)`
-/

namespace A106640.P810997524831300481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005043 (n + 1)

end

end A106640.P810997524831300481

namespace A106640

/-- `record[A097331(n)]-A005043(n+1)` -/
def P810997524831300481.Spec : Prop :=
  ∀ n, P810997524831300481.a n = A106640 n

end A106640

/-! ## A106640.P1291707975367646424

`record[A126120(n)]-A005043(n+1)`
-/

namespace A106640.P1291707975367646424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005043 (n + 1)

end

end A106640.P1291707975367646424

namespace A106640

/-- `record[A126120(n)]-A005043(n+1)` -/
def P1291707975367646424.Spec : Prop :=
  ∀ n, P1291707975367646424.a n = A106640 n

end A106640

/-! ## A106640.P7626351446223131381

`A120588(n+2)-A005043(n+1)`
-/

namespace A106640.P7626351446223131381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) - A005043 (n + 1)

end

end A106640.P7626351446223131381

namespace A106640

/-- `A120588(n+2)-A005043(n+1)` -/
def P7626351446223131381.Spec : Prop :=
  ∀ n, P7626351446223131381.a n = A106640 n

end A106640

/-! ## A106640.P10193075282107509355

`abs(A168491(n+1))-A005043(n+1)`
-/

namespace A106640.P10193075282107509355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1)| - A005043 (n + 1)

end

end A106640.P10193075282107509355

namespace A106640

/-- `abs(A168491(n+1))-A005043(n+1)` -/
def P10193075282107509355.Spec : Prop :=
  ∀ n, P10193075282107509355.a n = A106640 n

end A106640

/-! ## A106640.P5464006032787907975

`abs(A168491(n+1)-A099323(n+2))`
-/

namespace A106640.P5464006032787907975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1) - A099323 (n + 2)|

end

end A106640.P5464006032787907975

namespace A106640

/-- `abs(A168491(n+1)-A099323(n+2))` -/
def P5464006032787907975.Spec : Prop :=
  ∀ n, P5464006032787907975.a n = A106640 n

end A106640

/-! ## A106640.P12939055226156837908

`A126120(2*(n+1))-A005043(n+1)`
-/

namespace A106640.P12939055226156837908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * (n + 1)) - A005043 (n + 1)

end

end A106640.P12939055226156837908

namespace A106640

/-- `A126120(2*(n+1))-A005043(n+1)` -/
def P12939055226156837908.Spec : Prop :=
  ∀ n, P12939055226156837908.a n = A106640 n

end A106640

/-! ## A106640.P8210826674546478974

`A208355(2*(n+1))-A005043(n+1)`
-/

namespace A106640.P8210826674546478974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * (n + 1)) - A005043 (n + 1)

end

end A106640.P8210826674546478974

namespace A106640

/-- `A208355(2*(n+1))-A005043(n+1)` -/
def P8210826674546478974.Spec : Prop :=
  ∀ n, P8210826674546478974.a n = A106640 n

end A106640

/-! ## A106640.P2941232883940177473

`A097331(2*n+3)-A005043(n+1)`
-/

namespace A106640.P2941232883940177473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 3) - A005043 (n + 1)

end

end A106640.P2941232883940177473

namespace A106640

/-- `A097331(2*n+3)-A005043(n+1)` -/
def P2941232883940177473.Spec : Prop :=
  ∀ n, P2941232883940177473.a n = A106640 n

end A106640

/-! ## A106640.P4592748924293533649

`A000108(n+1)+A005717(n+1)-A002426(n+1)`
-/

namespace A106640.P4592748924293533649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A005717 (n + 1) - A002426 (n + 1))

end

end A106640.P4592748924293533649

namespace A106640

/-- `A000108(n+1)+A005717(n+1)-A002426(n+1)` -/
def P4592748924293533649.Spec : Prop :=
  ∀ n, P4592748924293533649.a n = A106640 n

end A106640

/-! ## A106640.P817129054284283097

`A000108(n+1)+A082395(n+1)-A082395(n+2)`
-/

namespace A106640.P817129054284283097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A082395 (n + 1) - A082395 (n + 2))

end

end A106640.P817129054284283097

namespace A106640

/-- `A000108(n+1)+A082395(n+1)-A082395(n+2)` -/
def P817129054284283097.Spec : Prop :=
  ∀ n, P817129054284283097.a n = A106640 n

end A106640

/-! ## A106640.P10287827960078860620

`A014137(n+1)-(A014137(n)+A005043(n+1))`
-/

namespace A106640.P10287827960078860620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1) - (A014137 n + A005043 (n + 1))

end

end A106640.P10287827960078860620

namespace A106640

/-- `A014137(n+1)-(A014137(n)+A005043(n+1))` -/
def P10287827960078860620.Spec : Prop :=
  ∀ n, P10287827960078860620.a n = A106640 n

end A106640

/-! ## A106640.P15803316697434722769

`A057977(2*(n+1))-A005043(n+1)`
-/

namespace A106640.P15803316697434722769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * (n + 1)) - A005043 (n + 1)

end

end A106640.P15803316697434722769

namespace A106640

/-- `A057977(2*(n+1))-A005043(n+1)` -/
def P15803316697434722769.Spec : Prop :=
  ∀ n, P15803316697434722769.a n = A106640 n

end A106640

/-! ## A106640.P7999412881785097819

`A002457(n)/A000217(n+1)-A005043(n+1)`
-/

namespace A106640.P7999412881785097819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 n : ℚ) / (A000217 (n + 1) : ℚ) - (A005043 (n + 1) : ℚ)

end

end A106640.P7999412881785097819

namespace A106640

/-- `A002457(n)/A000217(n+1)-A005043(n+1)` -/
def P7999412881785097819.Spec : Prop :=
  ∀ n, P7999412881785097819.a n = (A106640 n : ℚ)

end A106640

/-! ## A106640.P585173231820124189

`A244530(∑[n+1]+2)`
-/

namespace A106640.P585173231820124189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A106640.P585173231820124189

namespace A106640

/-- `A244530(∑[n+1]+2)` -/
def P585173231820124189.Spec : Prop :=
  ∀ n, P585173231820124189.a n = A106640 n

end A106640

/-!
# A106641: 1-limiting word of the morphism 1->3443, 2->2332, 3->1221, 4->4114 starting from 1.

The programs for A106641, there is no canonical definition to state claims against.
-/

/-! ## A106641.P8626506406606343756

`A134011(A309952(n)^5)`
-/

namespace A106641.P8626506406606343756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134011 (A309952 n ^ 5).toNat

end

end A106641.P8626506406606343756

/-! ## A106641.P4074237769390929675

`A134011(A309952(n)²²*A309952(n))`
-/

namespace A106641.P4074237769390929675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134011 ((A309952 n ^ 2) ^ 2 * A309952 n).toNat

end

end A106641.P4074237769390929675

/-! ## A106641.P1225754862584683857

`A259176(3^A309952(n))`
-/

namespace A106641.P1225754862584683857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A309952 n : ℤ))).toNat

end

end A106641.P1225754862584683857

/-! ## A106641.P13616055755351239512

`A010876(9^A309952(n))`
-/

namespace A106641.P13616055755351239512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A309952 n : ℤ))).toNat

end

end A106641.P13616055755351239512

/-! ## A106641.P12662625894487304280

`(2-char[xor(n, 2*n)])^A001285(A265580(n))`
-/

namespace A106641.P12662625894487304280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A001285 (A265580 n).toNat : ℤ)

end

end A106641.P12662625894487304280

/-!
# A106642: A four-symbol four-at-a-time substitution with an ordering change: q=1.

The programs for A106642, the canonical program `A106642.P1022139350271527584` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106642 has offset 0).

The definition of A106642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106642.P4862069325690669768

`A069891(4*n)%4+1`
-/

namespace A106642.P4862069325690669768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069891 (4 * n)) 4 + 1

end

end A106642.P4862069325690669768

namespace A106642

/-- `A069891(4*n)%4+1` -/
def P4862069325690669768.Spec : Prop :=
  ∀ n, P4862069325690669768.a n = A106642 n

end A106642

/-! ## A106642.P1022139350271527584

`A273149(2*xor(n, 2*n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106642

/-- `A273149(2*xor(n, 2*n))` -/
def P1022139350271527584.Spec : Prop :=
  ∀ n, P1022139350271527584.a n = A106642 n

theorem P1022139350271527584.correct : P1022139350271527584.Spec := by
  intro n
  simp only [A106642]

end A106642

/-! ## A106642.P8750086677379158954

`A273149(A048726(n))`
-/

namespace A106642.P8750086677379158954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 (A048726 n).toNat

end

end A106642.P8750086677379158954

namespace A106642

/-- `A273149(A048726(n))` -/
def P8750086677379158954.Spec : Prop :=
  ∀ n, P8750086677379158954.a n = A106642 n

end A106642

/-! ## A106642.P5841121206722520750

`A106147(A309952(n))`
-/

namespace A106642.P5841121206722520750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106147 (A309952 n).toNat

end

end A106642.P5841121206722520750

namespace A106642

/-- `A106147(A309952(n))` -/
def P5841121206722520750.Spec : Prop :=
  ∀ n, P5841121206722520750.a n = A106642 n

end A106642

/-! ## A106642.P1882670445124848978

`A273149(A048724(2*n))`
-/

namespace A106642.P1882670445124848978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 (A048724 (2 * n)).toNat

end

end A106642.P1882670445124848978

namespace A106642

/-- `A273149(A048724(2*n))` -/
def P1882670445124848978.Spec : Prop :=
  ∀ n, P1882670445124848978.a n = A106642 n

end A106642

/-! ## A106642.P16791526398017612270

`A053839(A003188(4*n))+1`
-/

namespace A106642.P16791526398017612270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (A003188 (4 * n)).toNat + 1

end

end A106642.P16791526398017612270

namespace A106642

/-- `A053839(A003188(4*n))+1` -/
def P16791526398017612270.Spec : Prop :=
  ∀ n, P16791526398017612270.a n = A106642 n

end A106642

/-! ## A106642.P12788985595431760885

`A010873(A069891(4*n))+1`
-/

namespace A106642.P12788985595431760885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A069891 (4 * n)).toNat + 1

end

end A106642.P12788985595431760885

namespace A106642

/-- `A010873(A069891(4*n))+1` -/
def P12788985595431760885.Spec : Prop :=
  ∀ n, P12788985595431760885.a n = A106642 n

end A106642

/-! ## A106642.P3445681196018125285

`A175665(A057128(∑[A183034(n)]))`
-/

namespace A106642.P3445681196018125285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175665 (A057128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A106642.P3445681196018125285

namespace A106642

/-- `A175665(A057128(∑[A183034(n)]))` -/
def P3445681196018125285.Spec : Prop :=
  ∀ n, P3445681196018125285.a n = A106642 n

end A106642

/-! ## A106642.P7342517456728273173

`A001285(n)*A010882(A276190(n))`
-/

namespace A106642.P7342517456728273173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A010882 (A276190 n).toNat

end

end A106642.P7342517456728273173

namespace A106642

/-- `A001285(n)*A010882(A276190(n))` -/
def P7342517456728273173.Spec : Prop :=
  ∀ n, P7342517456728273173.a n = A106642 n

end A106642

/-!
# A106644: 4-limiting word of the morphism 1->3, 2->4, 3->42, 4->1 starting by 1.

The programs for A106644, there is no canonical definition to state claims against.
-/

/-! ## A106644.P6786648324091068649

`A217462(Δ[record[A079315(n)]])`
-/

namespace A106644.P6786648324091068649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217462 (f1 (n + 1) - f1 n).toNat

end

end A106644.P6786648324091068649

/-! ## A106644.P16243570346692049428

`A217462(Δ[record[A151921(n)]])`
-/

namespace A106644.P16243570346692049428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217462 (f1 (n + 1) - f1 n).toNat

end

end A106644.P16243570346692049428

/-! ## A106644.P14154760602953683331

`A083954(A131136(n)^A307720(n+1))`
-/

namespace A106644.P14154760602953683331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 (SequenceMachineLib.roundAway ((A131136 n : ℚ) ^ (A307720 (n + 1) : ℤ))).toNat

end

end A106644.P14154760602953683331

/-!
# A106645: 2-limiting word of the morphism 1->24, 2->34, 3->1, 4->3.

The programs for A106645, there is no canonical definition to state claims against.
-/

/-! ## A106645.P256919153185802836

`∑[A069717(A069739(n+1))+5]%5`
-/

namespace A106645.P256919153185802836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069717 (A069739 (n + 1)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 5

end

end A106645.P256919153185802836

/-! ## A106645.P784369938553669515

`A010874(∑[A001830((n+1)/∏{p}[n+1, #])])`
-/

namespace A106645.P784369938553669515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106645.P784369938553669515

/-! ## A106645.P5334047994252935405

`A010874(∑[A282857((n+1)/∏{p}[n+1, #])])`
-/

namespace A106645.P5334047994252935405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282857 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106645.P5334047994252935405

/-! ## A106645.P1769018292051597217

`A010874(∑[A029748(A037291(n+1))])`
-/

namespace A106645.P1769018292051597217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (A037291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106645.P1769018292051597217

/-! ## A106645.P8844402090671001157

`A010874(∑[A001576(A292589(n+1))])`
-/

namespace A106645.P8844402090671001157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 (A292589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106645.P8844402090671001157

/-!
# A106647: Replace even digits d of n with 1+d/2.

The programs for A106647, there is no canonical definition to state claims against.
-/

/-! ## A106647.P12720978735613410172

`A107128(n)+A103181(A048379(n))`
-/

namespace A106647.P12720978735613410172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n + A103181 (A048379 n).toNat

end

end A106647.P12720978735613410172

/-! ## A106647.P11251698243701013517

`A107128(n)+A103181(A061601(n))`
-/

namespace A106647.P11251698243701013517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n + A103181 (A061601 n).toNat

end

end A106647.P11251698243701013517

/-! ## A106647.P7684225908002187460

`A107128(n)+A106747(A065031(n))`
-/

namespace A106647.P7684225908002187460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n + A106747 (A065031 n).toNat

end

end A106647.P7684225908002187460

/-! ## A106647.P16087196206257064351

`A107128(n)+A103181(A306436(n))`
-/

namespace A106647.P16087196206257064351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n + A103181 (A306436 n).toNat

end

end A106647.P16087196206257064351

/-! ## A106647.P16213213767224756043

`A106747(n)+A351744(n)-A107130(n)`
-/

namespace A106647.P16213213767224756043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n + (A351744 n - A107130 n)

end

end A106647.P16213213767224756043

/-! ## A106647.P13286571455485464691

`A107130(A306436(n))+A064770(A065031(n))`
-/

namespace A106647.P13286571455485464691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A306436 n).toNat + A064770 (A065031 n).toNat

end

end A106647.P13286571455485464691

/-!
# A106648: a(n) = 3*n^2 + 6*n + 8.

The programs for A106648, the canonical program `A106648.P11564833047502599682` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106648 has offset 0).

The definition of A106648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+6*n+8` (program `A106648.P11564833047502599682`, by `A106648.P11564833047502599682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106648.P1843286591182187803

`3*(n+1)²+5`
-/

namespace A106648.P1843286591182187803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2 + 5

end

end A106648.P1843286591182187803

namespace A106648

/-- `3*(n+1)²+5` -/
def P1843286591182187803.Spec : Prop :=
  ∀ n, (P1843286591182187803.a n : ℤ) = A106648 n

theorem P1843286591182187803.correct : P1843286591182187803.Spec := by
  intro n
  simp only [A106648, Nat.add_sub_cancel, A106648.P1843286591182187803.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A106648

/-! ## A106648.P11564833047502599682

`3*n²+6*n+8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106648

/-- `3*n²+6*n+8` -/
def P11564833047502599682.Spec : Prop :=
  ∀ n, (P11564833047502599682.a n : ℤ) = A106648 n

theorem P11564833047502599682.correct : P11564833047502599682.Spec := by
  intro n
  simp only [A106648]

end A106648

/-! ## A106648.P15899652868709606247

`∑[a(n-1)+6]` with `a(0)=8, a(1)=9`
-/

namespace A106648.P15899652868709606247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106648.P15899652868709606247

namespace A106648

/-- `∑[a(n-1)+6]` -/
def P15899652868709606247.Spec : Prop :=
  ∀ n, (P15899652868709606247.a n : ℤ) = A106648 n

end A106648

/-! ## A106648.P7485691001462103073

`∑[ogf((8-7x+5x^2)/(1-2x+x^2))]`
-/

namespace A106648.P7485691001462103073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -7, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106648.P7485691001462103073

namespace A106648

/-- `∑[ogf((8-7x+5x^2)/(1-2x+x^2))]` -/
def P7485691001462103073.Spec : Prop :=
  ∀ n, P7485691001462103073.a n = A106648 n

end A106648

/-! ## A106648.P10006570687361244087

`ogf((8-7x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A106648.P10006570687361244087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -7, 5] [1, -3, 3, -1] n

end

end A106648.P10006570687361244087

namespace A106648

/-- `ogf((8-7x+5x^2)/(1-3x+3x^2-x^3))` -/
def P10006570687361244087.Spec : Prop :=
  ∀ n, P10006570687361244087.a n = A106648 n

end A106648

/-! ## A106648.P8388621963025380606

`record[(n-1)*3*(n-1)+5]`
-/

namespace A106648.P8388621963025380606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (3 * ((n : ℤ) - 1)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106648.P8388621963025380606

namespace A106648

/-- `record[(n-1)*3*(n-1)+5]` -/
def P8388621963025380606.Spec : Prop :=
  ∀ n, P8388621963025380606.a n = A106648 n

end A106648

/-! ## A106648.P13509946666142430511

`floor(6*n+a(n-1)+3)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A106648.P13509946666142430511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  6 * n + (a (n - 1) + 3)

end

end A106648.P13509946666142430511

namespace A106648

/-- `floor(6*n+a(n-1)+3)` -/
def P13509946666142430511.Spec : Prop :=
  ∀ n, (P13509946666142430511.a n : ℤ) = A106648 n

theorem P13509946666142430511.correct : P13509946666142430511.Spec := by
  intro n
  induction n with
  | zero => simp [A106648, A106648.P13509946666142430511.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A106648, Nat.add_sub_cancel, A106648.P13509946666142430511.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A106648

/-! ## A106648.P6489106654587819269

`abs(a(n-1)+3*(2*n+1))` with `a(0)=8`
-/

namespace A106648.P6489106654587819269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 3 * (2 * n + 1)

end

end A106648.P6489106654587819269

namespace A106648

/-- `abs(a(n-1)+3*(2*n+1))` -/
def P6489106654587819269.Spec : Prop :=
  ∀ n, (P6489106654587819269.a n : ℤ) = A106648 n

theorem P6489106654587819269.correct : P6489106654587819269.Spec := by
  intro n
  induction n with
  | zero => simp [A106648, A106648.P6489106654587819269.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A106648, Nat.add_sub_cancel, A106648.P6489106654587819269.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A106648

/-! ## A106648.P16206315050071408356

`ceil(a(n-1)+3*(2*n+1))` with `a(0)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A106648.P16206315050071408356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 3 * (2 * n + 1)

end

end A106648.P16206315050071408356

namespace A106648

/-- `ceil(a(n-1)+3*(2*n+1))` -/
def P16206315050071408356.Spec : Prop :=
  ∀ n, (P16206315050071408356.a n : ℤ) = A106648 n

theorem P16206315050071408356.correct : P16206315050071408356.Spec := by
  intro n
  induction n with
  | zero => simp [A106648, A106648.P16206315050071408356.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A106648, Nat.add_sub_cancel, A106648.P16206315050071408356.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A106648

/-! ## A106648.P15209872316713296553

`round(a(n-1)+3*(2*n+1))` with `a(0)=8`

`round` is left out, it is the identity on integers.
-/

namespace A106648.P15209872316713296553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 3 * (2 * n + 1)

end

end A106648.P15209872316713296553

namespace A106648

/-- `round(a(n-1)+3*(2*n+1))` -/
def P15209872316713296553.Spec : Prop :=
  ∀ n, (P15209872316713296553.a n : ℤ) = A106648 n

theorem P15209872316713296553.correct : P15209872316713296553.Spec := by
  intro n
  induction n with
  | zero => simp [A106648, A106648.P15209872316713296553.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A106648, Nat.add_sub_cancel, A106648.P15209872316713296553.a, A106648.P11564833047502599682.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A106648

/-! ## A106648.P4599214262511747350

`(∑[2*A016945(n)]+10)/2`
-/

namespace A106648.P4599214262511747350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016945 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 10 : ℤ) : ℚ) / 2

end

end A106648.P4599214262511747350

namespace A106648

/-- `(∑[2*A016945(n)]+10)/2` -/
def P4599214262511747350.Spec : Prop :=
  ∀ n, P4599214262511747350.a n = (A106648 n : ℚ)

end A106648

/-! ## A106648.P12908820235495159592

`∑[5*A028310(n)+3+n]`
-/

namespace A106648.P12908820235495159592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A028310 n + 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106648.P12908820235495159592

namespace A106648

/-- `∑[5*A028310(n)+3+n]` -/
def P12908820235495159592.Spec : Prop :=
  ∀ n, P12908820235495159592.a n = A106648 n

end A106648

/-! ## A106648.P5982388189730467111

`4*(3*A005563(n)/4+2)`
-/

namespace A106648.P5982388189730467111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (3 * ((A005563 n : ℚ) / 4) + 2)

end

end A106648.P5982388189730467111

namespace A106648

/-- `4*(3*A005563(n)/4+2)` -/
def P5982388189730467111.Spec : Prop :=
  ∀ n, P5982388189730467111.a n = (A106648 n : ℚ)

end A106648

/-! ## A106648.P11028799015731878905

`(A027602(n)-(n+1))/(n+1)`
-/

namespace A106648.P11028799015731878905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027602 n - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A106648.P11028799015731878905

namespace A106648

/-- `(A027602(n)-(n+1))/(n+1)` -/
def P11028799015731878905.Spec : Prop :=
  ∀ n, P11028799015731878905.a n = (A106648 n : ℚ)

end A106648

/-! ## A106648.P1685409797617758525

`∑[A016885(A028310(n))+n]`
-/

namespace A106648.P1685409797617758525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106648.P1685409797617758525

namespace A106648

/-- `∑[A016885(A028310(n))+n]` -/
def P1685409797617758525.Spec : Prop :=
  ∀ n, P1685409797617758525.a n = A106648 n

end A106648

/-! ## A106648.P10839822365484036437

`A069473(n)%A158447(n+1)`
-/

namespace A106648.P10839822365484036437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069473 n) (A158447 (n + 1))

end

end A106648.P10839822365484036437

namespace A106648

/-- `A069473(n)%A158447(n+1)` -/
def P10839822365484036437.Spec : Prop :=
  ∀ n, P10839822365484036437.a n = A106648 n

end A106648

/-! ## A106648.P842367302195762107

`abs(Δ[A059270(n)]+5)`
-/

namespace A106648.P842367302195762107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 5|

end

end A106648.P842367302195762107

namespace A106648

/-- `abs(Δ[A059270(n)]+5)` -/
def P842367302195762107.Spec : Prop :=
  ∀ n, P842367302195762107.a n = A106648 n

end A106648

/-! ## A106648.P5895659185002880193

`Δ[A173965(n+1)+n]`
-/

namespace A106648.P5895659185002880193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173965 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106648.P5895659185002880193

namespace A106648

/-- `Δ[A173965(n+1)+n]` -/
def P5895659185002880193.Spec : Prop :=
  ∀ n, P5895659185002880193.a n = A106648 n

end A106648

/-! ## A106648.P3487731108019226399

`Δ[A163673(n)-(n+1)²]`
-/

namespace A106648.P3487731108019226399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163673 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106648.P3487731108019226399

namespace A106648

/-- `Δ[A163673(n)-(n+1)²]` -/
def P3487731108019226399.Spec : Prop :=
  ∀ n, P3487731108019226399.a n = A106648 n

end A106648

/-! ## A106648.P2360096083380868169

`Δ[A163675(n)-(n+2)²]`
-/

namespace A106648.P2360096083380868169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163675 n - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106648.P2360096083380868169

namespace A106648

/-- `Δ[A163675(n)-(n+2)²]` -/
def P2360096083380868169.Spec : Prop :=
  ∀ n, P2360096083380868169.a n = A106648 n

end A106648

/-!
# A106649: Replace each digit d (except the leading one) of n with 9-d.

The programs for A106649, there is no canonical definition to state claims against.
-/

/-! ## A106649.P7217166007482486765

`A241158(A017341(n)+1)-A017341(n)-A217657(n)`
-/

namespace A106649.P7217166007482486765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (A017341 n + 1).toNat - A017341 n - A217657 n

end

end A106649.P7217166007482486765

/-! ## A106649.P9090458949552588877

`A087052(n)-A217657(n)`
-/

namespace A106649.P9090458949552588877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 n - A217657 n

end

end A106649.P9090458949552588877

/-! ## A106649.P6875918893296283373

`A334387(n)+dr(A066568(n))`
-/

namespace A106649.P6875918893296283373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n + (SequenceMachineLib.digitalRoot (A066568 n) : ℤ)

end

end A106649.P6875918893296283373

/-! ## A106649.P11940379577952204241

`A334387(n)+A217657(A087052(n))`
-/

namespace A106649.P11940379577952204241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 n + A217657 (A087052 n).toNat

end

end A106649.P11940379577952204241

/-!
# A106650: Limiting word under substitution 1->{2}, 2->{3}, 3->{4}, 4->{1, 2, 3, 4}, using axiom 1.

The programs for A106650, there is no canonical definition to state claims against.
-/

/-! ## A106650.P5466683358702870038

`A106826(A145030(n+1)+A145023(n+1))`
-/

namespace A106650.P5466683358702870038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 (A145030 (n + 1) + A145023 (n + 1)).toNat

end

end A106650.P5466683358702870038

/-!
# A106651: c(n) = number of c-nets on n vertices.

The programs for A106651, there is no canonical definition to state claims against.
-/

/-! ## A106651.P15730535854470405911

`A285165(∑[n]+3)`
-/

namespace A106651.P15730535854470405911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A106651.P15730535854470405911

/-! ## A106651.P6093108874001262751

`or(1, A285165(A152950(n+1)))`
-/

namespace A106651.P6093108874001262751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285165 (A152950 (n + 1)).toNat)

end

end A106651.P6093108874001262751

/-! ## A106651.P15154939525062377795

`A285165(A152950(n+1))^A178334(n)`
-/

namespace A106651.P15154939525062377795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285165 (A152950 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A106651.P15154939525062377795

/-! ## A106651.P10551310764991137529

`A014963(12*n+6)*A285165(A152950(n+1))`
-/

namespace A106651.P10551310764991137529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A285165 (A152950 (n + 1)).toNat

end

end A106651.P10551310764991137529

/-! ## A106651.P9745384144346684380

`A285165(A152950(n+1))+A073610(A178334(n)+2)`
-/

namespace A106651.P9745384144346684380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285165 (A152950 (n + 1)).toNat + A073610 (A178334 n + 2).toNat

end

end A106651.P9745384144346684380

/-! ## A106651.P2204463322719320555

`A001222(A240971(n+1))*A285165(A152950(n+1))`
-/

namespace A106651.P2204463322719320555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A240971 (n + 1)).toNat * A285165 (A152950 (n + 1)).toNat

end

end A106651.P2204463322719320555

/-! ## A106651.P9550951832423176060

`A008683(A005117(n+1))²*A285165(A152950(n+1))`
-/

namespace A106651.P9550951832423176060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A285165 (A152950 (n + 1)).toNat

end

end A106651.P9550951832423176060

/-!
# A106654: 4-limiting word of the morphism 1->2, 2->3, 3->4, 4->123.

The programs for A106654, there is no canonical definition to state claims against.
-/

/-! ## A106654.P12821682217042981065

`A003324(A249813(n+1)+A069324(n+1))`
-/

namespace A106654.P12821682217042981065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A249813 (n + 1) + A069324 (n + 1)).toNat

end

end A106654.P12821682217042981065

/-! ## A106654.P15406758051055885596

`A144437(A294532(n+1))+log2(gcd(2, n))`
-/

namespace A106654.P15406758051055885596
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A144437 (A294532 (n + 1)).toNat : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A106654.P15406758051055885596

/-! ## A106654.P4396360572743401123

`A053735(n+2)+A000122(A002445(n))`
-/

namespace A106654.P4396360572743401123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 2) + A000122 (A002445 n).toNat

end

end A106654.P4396360572743401123

/-! ## A106654.P3937462677506015572

`A053735(n+2)+A000122(A022107(n))`
-/

namespace A106654.P3937462677506015572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 2) + A000122 (A022107 n).toNat

end

end A106654.P3937462677506015572

/-! ## A106654.P11193731152719287712

`A053735(n+2)+A000122(A265077(n))`
-/

namespace A106654.P11193731152719287712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 2) + A000122 (A265077 n).toNat

end

end A106654.P11193731152719287712

/-!
# A106664: Expansion of g.f.: (1-3*x+x^2)/((1-x)*(1+x)*(1-2*x+2*x^2)).

The programs for A106664, the canonical program `A106664.P3827320183996834941` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106664 has offset 0).

The definition of A106664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106664.P3827320183996834941

`1/2*(A010673(n)-A099087(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106664

/-- `1/2*(A010673(n)-A099087(n+2))` -/
def P3827320183996834941.Spec : Prop :=
  ∀ n, P3827320183996834941.a n = (A106664 n : ℚ)

end A106664

/-! ## A106664.P7705407594707081467

`∑[ogf((-1+3x-x^2)/(1-x+2x^3))]`
-/

namespace A106664.P7705407594707081467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, -1] [1, -1, 0, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106664.P7705407594707081467

namespace A106664

/-- `∑[ogf((-1+3x-x^2)/(1-x+2x^3))]` -/
def P7705407594707081467.Spec : Prop :=
  ∀ n, P7705407594707081467.a n = A106664 n

end A106664

/-! ## A106664.P2317347838137452068

`∑[a(n-1)-2*a(n-3)]` with `a(0)=-1, a(1)=2, a(2)=1`
-/

namespace A106664.P2317347838137452068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 1] fun n f1 =>
  f1 (n - 1) - 2 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106664.P2317347838137452068

namespace A106664

/-- `∑[a(n-1)-2*a(n-3)]` -/
def P2317347838137452068.Spec : Prop :=
  ∀ n, P2317347838137452068.a n = A106664 n

end A106664

/-! ## A106664.P5860071602176173683

`a(n-1)+1-2*a(n-3)` with `a(0)=-1, a(1)=1, a(2)=2`
-/

namespace A106664.P5860071602176173683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 2] fun n a =>
  a (n - 1) + (1 - 2 * a (n - 3))

end

end A106664.P5860071602176173683

namespace A106664

/-- `a(n-1)+1-2*a(n-3)` -/
def P5860071602176173683.Spec : Prop :=
  ∀ n, P5860071602176173683.a n = A106664 n

end A106664

/-! ## A106664.P10367882045086382916

`1-(2*a(n-3)-a(n-1))` with `a(0)=-1, a(1)=1, a(2)=2`
-/

namespace A106664.P10367882045086382916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 2] fun n a =>
  1 - (2 * a (n - 3) - a (n - 1))

end

end A106664.P10367882045086382916

namespace A106664

/-- `1-(2*a(n-3)-a(n-1))` -/
def P10367882045086382916.Spec : Prop :=
  ∀ n, P10367882045086382916.a n = A106664 n

end A106664

/-! ## A106664.P8036459389520682954

`∑[a(n-1)-a(n-3)-a(n-3)]` with `a(0)=-1, a(1)=2, a(2)=1`
-/

namespace A106664.P8036459389520682954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 1] fun n f1 =>
  f1 (n - 1) - f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106664.P8036459389520682954

namespace A106664

/-- `∑[a(n-1)-a(n-3)-a(n-3)]` -/
def P8036459389520682954.Spec : Prop :=
  ∀ n, P8036459389520682954.a n = A106664 n

end A106664

/-! ## A106664.P5007144581560430264

`1-(a(n-3)+a(n-3)-a(n-1))` with `a(0)=-1, a(1)=1, a(2)=2`
-/

namespace A106664.P5007144581560430264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 2] fun n a =>
  1 - (a (n - 3) + (a (n - 3) - a (n - 1)))

end

end A106664.P5007144581560430264

namespace A106664

/-- `1-(a(n-3)+a(n-3)-a(n-1))` -/
def P5007144581560430264.Spec : Prop :=
  ∀ n, P5007144581560430264.a n = A106664 n

end A106664

/-! ## A106664.P13099397251852971960

`a(n-1)-(a(n-3)-(1-a(n-3)))` with `a(0)=-1, a(1)=1, a(2)=2`
-/

namespace A106664.P13099397251852971960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - (1 - a (n - 3)))

end

end A106664.P13099397251852971960

namespace A106664

/-- `a(n-1)-(a(n-3)-(1-a(n-3)))` -/
def P13099397251852971960.Spec : Prop :=
  ∀ n, P13099397251852971960.a n = A106664 n

end A106664

/-! ## A106664.P16353099371142762728

`A000035(n)-A146559(n+1)`
-/

namespace A106664.P16353099371142762728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A146559 (n + 1)

end

end A106664.P16353099371142762728

namespace A106664

/-- `A000035(n)-A146559(n+1)` -/
def P16353099371142762728.Spec : Prop :=
  ∀ n, P16353099371142762728.a n = A106664 n

end A106664

/-! ## A106664.P4151013709106389145

`∑[A009545(n)]-A056594(n)²`
-/

namespace A106664.P4151013709106389145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056594 n ^ 2

end

end A106664.P4151013709106389145

namespace A106664

/-- `∑[A009545(n)]-A056594(n)²` -/
def P4151013709106389145.Spec : Prop :=
  ∀ n, P4151013709106389145.a n = A106664 n

end A106664

/-! ## A106664.P935204953568962219

`A000034(n)+∑[A009545(n)]-2`
-/

namespace A106664.P935204953568962219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A106664.P935204953568962219

namespace A106664

/-- `A000034(n)+∑[A009545(n)]-2` -/
def P935204953568962219.Spec : Prop :=
  ∀ n, P935204953568962219.a n = A106664 n

end A106664

/-! ## A106664.P3623343975792715418

`∑[A009545(n)-A056594(2*n)]`
-/

namespace A106664.P3623343975792715418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n - A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106664.P3623343975792715418

namespace A106664

/-- `∑[A009545(n)-A056594(2*n)]` -/
def P3623343975792715418.Spec : Prop :=
  ∀ n, P3623343975792715418.a n = A106664 n

end A106664

/-! ## A106664.P1187360814335169459

`∑[A009545(n)]+n-A109613(n)`
-/

namespace A106664.P1187360814335169459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A109613 n)

end

end A106664.P1187360814335169459

namespace A106664

/-- `∑[A009545(n)]+n-A109613(n)` -/
def P1187360814335169459.Spec : Prop :=
  ∀ n, P1187360814335169459.a n = A106664 n

end A106664

/-! ## A106664.P9778369919676132819

`A166486(2*n)-A146559(n+1)`
-/

namespace A106664.P9778369919676132819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) - A146559 (n + 1)

end

end A106664.P9778369919676132819

namespace A106664

/-- `A166486(2*n)-A146559(n+1)` -/
def P9778369919676132819.Spec : Prop :=
  ∀ n, P9778369919676132819.a n = A106664 n

end A106664

/-! ## A106664.P12888645394500400371

`A010673(n)/2-A146559(n+1)`
-/

namespace A106664.P12888645394500400371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010673 n : ℚ) / 2 - (A146559 (n + 1) : ℚ)

end

end A106664.P12888645394500400371

namespace A106664

/-- `A010673(n)/2-A146559(n+1)` -/
def P12888645394500400371.Spec : Prop :=
  ∀ n, P12888645394500400371.a n = (A106664 n : ℚ)

end A106664

/-! ## A106664.P5130210419195494019

`A056594(n+1)²-A146559(n+1)`
-/

namespace A106664.P5130210419195494019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) ^ 2 - A146559 (n + 1)

end

end A106664.P5130210419195494019

namespace A106664

/-- `A056594(n+1)²-A146559(n+1)` -/
def P5130210419195494019.Spec : Prop :=
  ∀ n, P5130210419195494019.a n = A106664 n

end A106664

/-! ## A106664.P14862652496831915710

`A075553(2*n)²-A146559(n+1)`
-/

namespace A106664.P14862652496831915710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (2 * n) ^ 2 - A146559 (n + 1)

end

end A106664.P14862652496831915710

namespace A106664

/-- `A075553(2*n)²-A146559(n+1)` -/
def P14862652496831915710.Spec : Prop :=
  ∀ n, P14862652496831915710.a n = A106664 n

end A106664

/-! ## A106664.P3327441245533973872

`3-(A146559(n+1)+A010693(n+1))`
-/

namespace A106664.P3327441245533973872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A146559 (n + 1) + A010693 (n + 1))

end

end A106664.P3327441245533973872

namespace A106664

/-- `3-(A146559(n+1)+A010693(n+1))` -/
def P3327441245533973872.Spec : Prop :=
  ∀ n, P3327441245533973872.a n = A106664 n

end A106664

/-! ## A106664.P1325303896018210228

`A056594(A019425(n+2))-A146559(n+1)`
-/

namespace A106664.P1325303896018210228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A019425 (n + 2)).toNat - A146559 (n + 1)

end

end A106664.P1325303896018210228

namespace A106664

/-- `A056594(A019425(n+2))-A146559(n+1)` -/
def P1325303896018210228.Spec : Prop :=
  ∀ n, P1325303896018210228.a n = A106664 n

end A106664

/-! ## A106664.P16502014386893832129

`A056594(n+1)*A158496(n+1)-A146559(n+1)`
-/

namespace A106664.P16502014386893832129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) * A158496 (n + 1) - A146559 (n + 1)

end

end A106664.P16502014386893832129

namespace A106664

/-- `A056594(n+1)*A158496(n+1)-A146559(n+1)` -/
def P16502014386893832129.Spec : Prop :=
  ∀ n, P16502014386893832129.a n = A106664 n

end A106664

/-!
# A106665: Alternate paper-folding (or alternate dragon curve) sequence.

The programs for A106665, the canonical program `A106665.P2238379894768869187` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106665 has offset 0).

The definition of A106665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106665.P2238379894768869187

`Δ[or(2*n+1, -n)]²%3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106665

/-- `Δ[or(2*n+1, -n)]²%3` -/
def P2238379894768869187.Spec : Prop :=
  ∀ n, P2238379894768869187.a n = A106665 n

theorem P2238379894768869187.correct : P2238379894768869187.Spec := by
  intro n
  simp only [A106665]

end A106665

/-! ## A106665.P12420884090216342107

`(Δ[xor(n, floor(n/2))]+1)²%3`
-/

namespace A106665.P12420884090216342107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n + 1) ^ 2) 3

end

end A106665.P12420884090216342107

namespace A106665

/-- `(Δ[xor(n, floor(n/2))]+1)²%3` -/
def P12420884090216342107.Spec : Prop :=
  ∀ n, P12420884090216342107.a n = A106665 n

end A106665

/-! ## A106665.P7110115265651774702

`ceil(sin(Δ[and(n+1, 2*n)]%6))`
-/

namespace A106665.P7110115265651774702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 6 : ℝ)⌉

end

end A106665.P7110115265651774702

namespace A106665

/-- `ceil(sin(Δ[and(n+1, 2*n)]%6))` -/
def P7110115265651774702.Spec : Prop :=
  ∀ n, P7110115265651774702.a n = A106665 n

end A106665

/-! ## A106665.P18345331839131000132

`(1-Δ[and(n+1, 2*n)])²%3`
-/

namespace A106665.P18345331839131000132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) 3

end

end A106665.P18345331839131000132

namespace A106665

/-- `(1-Δ[and(n+1, 2*n)])²%3` -/
def P18345331839131000132.Spec : Prop :=
  ∀ n, P18345331839131000132.a n = A106665 n

end A106665

/-! ## A106665.P12977840123073579765

`(Δ[or(n+1, 2*n)]+1)²%3`
-/

namespace A106665.P12977840123073579765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) 3

end

end A106665.P12977840123073579765

namespace A106665

/-- `(Δ[or(n+1, 2*n)]+1)²%3` -/
def P12977840123073579765.Spec : Prop :=
  ∀ n, P12977840123073579765.a n = A106665 n

end A106665

/-! ## A106665.P13459239669922864889

`((Δ[xor(n, floor(n/2))]+1)^6)%3`
-/

namespace A106665.P13459239669922864889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n + 1) ^ 6) 3

end

end A106665.P13459239669922864889

namespace A106665

/-- `((Δ[xor(n, floor(n/2))]+1)^6)%3` -/
def P13459239669922864889.Spec : Prop :=
  ∀ n, P13459239669922864889.a n = A106665 n

end A106665

/-! ## A106665.P4416739384590604563

`(n%(2-a(floor(n/2))))^(n%4)` with `a(0)=1`
-/

namespace A106665.P4416739384590604563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (n : ℤ) (2 - a ⌊(n : ℚ) / 2⌋.toNat) ^ (n % 4)

end

end A106665.P4416739384590604563

namespace A106665

/-- `(n%(2-a(floor(n/2))))^(n%4)` -/
def P4416739384590604563.Spec : Prop :=
  ∀ n, P4416739384590604563.a n = A106665 n

end A106665

/-! ## A106665.P11436836471624249145

`(2-Δ[floor(xor(n, 2*n)/2)])²%3`
-/

namespace A106665.P11436836471624249145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 - (f1 (n + 1) - f1 n)) ^ 2) 3

end

end A106665.P11436836471624249145

namespace A106665

/-- `(2-Δ[floor(xor(n, 2*n)/2)])²%3` -/
def P11436836471624249145.Spec : Prop :=
  ∀ n, P11436836471624249145.a n = A106665 n

end A106665

/-! ## A106665.P2789894700594023363

`2-gcd(4*(n+1), and(n, n+1))%3`
-/

namespace A106665.P2789894700594023363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.gcd (4 * (n + 1)) (Nat.land n (n + 1)) % 3 : ℕ) : ℤ)

end

end A106665.P2789894700594023363

namespace A106665

/-- `2-gcd(4*(n+1), and(n, n+1))%3` -/
def P2789894700594023363.Spec : Prop :=
  ∀ n, P2789894700594023363.a n = A106665 n

end A106665

/-! ## A106665.P13429439320491108710

`Δ[2*n^3-xor(n, floor(n/2))]%3`
-/

namespace A106665.P13429439320491108710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 : ℤ) - Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A106665.P13429439320491108710

namespace A106665

/-- `Δ[2*n^3-xor(n, floor(n/2))]%3` -/
def P13429439320491108710.Spec : Prop :=
  ∀ n, P13429439320491108710.a n = A106665 n

end A106665

/-! ## A106665.P187277691059770125

`1-a(n-1-gcd(1-n, floor(n/2)))` with `a(0)=1`
-/

namespace A106665.P187277691059770125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ((n : ℤ) - 1 - (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ)).toNat

end

end A106665.P187277691059770125

namespace A106665

/-- `1-a(n-1-gcd(1-n, floor(n/2)))` -/
def P187277691059770125.Spec : Prop :=
  ∀ n, P187277691059770125.a n = A106665 n

end A106665

/-! ## A106665.P4153304823265799621

`ceil(cos(cosh(((n+1)/4^val(n+1, 4))%8)))`
-/

namespace A106665.P4153304823265799621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Real.cosh (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) 8 : ℝ))⌉

end

end A106665.P4153304823265799621

namespace A106665

/-- `ceil(cos(cosh(((n+1)/4^val(n+1, 4))%8)))` -/
def P4153304823265799621.Spec : Prop :=
  ∀ n, P4153304823265799621.a n = A106665 n

end A106665

/-! ## A106665.P11283515282619886133

`(char[and(n, n+1)+n]+val(n+1, 2))%2`
-/

namespace A106665.P11283515282619886133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + SequenceMachineLib.valuation (n + 1) 2) % 2

end

end A106665.P11283515282619886133

namespace A106665

/-- `(char[and(n, n+1)+n]+val(n+1, 2))%2` -/
def P11283515282619886133.Spec : Prop :=
  ∀ n, (P11283515282619886133.a n : ℤ) = A106665 n

end A106665

/-! ## A106665.P10465631069622288669

`and(1, char[and(n, n+1)+n]+val(n+1, 2))`
-/

namespace A106665.P10465631069622288669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f1 j = n then 1 else 0) + SequenceMachineLib.valuation (n + 1) 2)

end

end A106665.P10465631069622288669

namespace A106665

/-- `and(1, char[and(n, n+1)+n]+val(n+1, 2))` -/
def P10465631069622288669.Spec : Prop :=
  ∀ n, (P10465631069622288669.a n : ℤ) = A106665 n

end A106665

/-! ## A106665.P8587044295540905656

`xor(xor(n, n+1)%3, char[or(n, n-1)+n])`
-/

namespace A106665.P8587044295540905656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor n (n + 1) % 3) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A106665.P8587044295540905656

namespace A106665

/-- `xor(xor(n, n+1)%3, char[or(n, n-1)+n])` -/
def P8587044295540905656.Spec : Prop :=
  ∀ n, (P8587044295540905656.a n : ℤ) = A106665 n

end A106665

/-! ## A106665.P11765474275640462287

`(3*or(1, n)+2-Δ[xor(n, floor(n/2))])%3`
-/

namespace A106665.P11765474275640462287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 * Nat.lor 1 n + 2 : ℤ) - (f1 (n + 1) - f1 n)) 3

end

end A106665.P11765474275640462287

namespace A106665

/-- `(3*or(1, n)+2-Δ[xor(n, floor(n/2))])%3` -/
def P11765474275640462287.Spec : Prop :=
  ∀ n, P11765474275640462287.a n = A106665 n

end A106665

/-! ## A106665.P2161832952287665412

`char[eq[(-1)^val(n+1, 2), Δ[xor(n, 2*n)]%2]]`
-/

namespace A106665.P2161832952287665412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f4 (n + 1) : ℤ) - (f4 n : ℤ)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A106665.P2161832952287665412

namespace A106665

/-- `char[eq[(-1)^val(n+1, 2), Δ[xor(n, 2*n)]%2]]` -/
def P2161832952287665412.Spec : Prop :=
  ∀ n, (P2161832952287665412.a n : ℤ) = A106665 n

end A106665

/-! ## A106665.P1524214823450611475

`(val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1)%2`
-/

namespace A106665.P1524214823450611475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)) 2

end

end A106665.P1524214823450611475

namespace A106665

/-- `(val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1)%2` -/
def P1524214823450611475.Spec : Prop :=
  ∀ n, P1524214823450611475.a n = A106665 n

end A106665

/-! ## A106665.P11569296491739776167

`and(1, val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A106665.P11569296491739776167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1))

end

end A106665.P11569296491739776167

namespace A106665

/-- `and(1, val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1)` -/
def P11569296491739776167.Spec : Prop :=
  ∀ n, P11569296491739776167.a n = A106665 n

end A106665

/-! ## A106665.P406127020880522708

`A085060(n)%2`
-/

namespace A106665.P406127020880522708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085060 n) 2

end

end A106665.P406127020880522708

namespace A106665

/-- `A085060(n)%2` -/
def P406127020880522708.Spec : Prop :=
  ∀ n, P406127020880522708.a n = A106665 n

end A106665

/-!
# A106666: Expansion of g.f. (1-4*x^2+2*x^3)/((1-x)*(1-2*x-2*x^2+2*x^3)).

The programs for A106666, the canonical program `A106666.P3373560540624991386` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106666 has offset 0).

The definition of A106666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2+2x^3)/(1-3x+4x^3-2x^4))` (program `A106666.P3373560540624991386`, by `A106666.P3373560540624991386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106666.P3373560540624991386

`ogf((1-4x^2+2x^3)/(1-3x+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106666

/-- `ogf((1-4x^2+2x^3)/(1-3x+4x^3-2x^4))` -/
def P3373560540624991386.Spec : Prop :=
  ∀ n, P3373560540624991386.a n = A106666 n

theorem P3373560540624991386.correct : P3373560540624991386.Spec := by
  intro n
  simp only [A106666]

end A106666

/-! ## A106666.P13688260135589677912

`∑[A052970(n+1)]+1`
-/

namespace A106666.P13688260135589677912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A106666.P13688260135589677912

namespace A106666

/-- `∑[A052970(n+1)]+1` -/
def P13688260135589677912.Spec : Prop :=
  ∀ n, P13688260135589677912.a n = A106666 n

end A106666

/-! ## A106666.P6527941696444890529

`record[A123108(n)+A110158(n)]`
-/

namespace A106666.P6527941696444890529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n + A110158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106666.P6527941696444890529

namespace A106666

/-- `record[A123108(n)+A110158(n)]` -/
def P6527941696444890529.Spec : Prop :=
  ∀ n, P6527941696444890529.a n = A106666 n

end A106666

/-! ## A106666.P11858042069474146251

`∑[A052970(A008612(A008458(n)))]`
-/

namespace A106666.P11858042069474146251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (A008612 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106666.P11858042069474146251

namespace A106666

/-- `∑[A052970(A008612(A008458(n)))]` -/
def P11858042069474146251.Spec : Prop :=
  ∀ n, P11858042069474146251.a n = A106666 n

end A106666

/-! ## A106666.P13893397800651874318

`∑[A052970(A008611(A008486(n)))]`
-/

namespace A106666.P13893397800651874318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (A008611 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106666.P13893397800651874318

namespace A106666

/-- `∑[A052970(A008611(A008486(n)))]` -/
def P13893397800651874318.Spec : Prop :=
  ∀ n, P13893397800651874318.a n = A106666 n

end A106666

/-! ## A106666.P6882201667853379334

`∑[A052970(A008624(A008574(n)))]`
-/

namespace A106666.P6882201667853379334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (A008624 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106666.P6882201667853379334

namespace A106666

/-- `∑[A052970(A008624(A008574(n)))]` -/
def P6882201667853379334.Spec : Prop :=
  ∀ n, P6882201667853379334.a n = A106666 n

end A106666

/-! ## A106666.P14256294742835740546

`∑[A052970(A028242(A004277(n)))]`
-/

namespace A106666.P14256294742835740546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (A028242 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106666.P14256294742835740546

namespace A106666

/-- `∑[A052970(A028242(A004277(n)))]` -/
def P14256294742835740546.Spec : Prop :=
  ∀ n, P14256294742835740546.a n = A106666 n

end A106666

/-! ## A106666.P17441387949787268276

`A077937(n+1)-A077847(n)`
-/

namespace A106666.P17441387949787268276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 (n + 1) - A077847 n

end

end A106666.P17441387949787268276

namespace A106666

/-- `A077937(n+1)-A077847(n)` -/
def P17441387949787268276.Spec : Prop :=
  ∀ n, P17441387949787268276.a n = A106666 n

end A106666

/-! ## A106666.P11122766155909087068

`A077937(n+1)-∑[A077937(n)]`
-/

namespace A106666.P11122766155909087068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106666.P11122766155909087068

namespace A106666

/-- `A077937(n+1)-∑[A077937(n)]` -/
def P11122766155909087068.Spec : Prop :=
  ∀ n, P11122766155909087068.a n = A106666 n

end A106666

/-! ## A106666.P5711916805804089882

`A077937(n+1)+1-A052987(n+1)`
-/

namespace A106666.P5711916805804089882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 (n + 1) + (1 - A052987 (n + 1))

end

end A106666.P5711916805804089882

namespace A106666

/-- `A077937(n+1)+1-A052987(n+1)` -/
def P5711916805804089882.Spec : Prop :=
  ∀ n, P5711916805804089882.a n = A106666 n

end A106666

/-! ## A106666.P14452240083333025930

`Δ[A077847(n)]-A077847(n)`
-/

namespace A106666.P14452240083333025930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077847 n

end

end A106666.P14452240083333025930

namespace A106666

/-- `Δ[A077847(n)]-A077847(n)` -/
def P14452240083333025930.Spec : Prop :=
  ∀ n, P14452240083333025930.a n = A106666 n

end A106666

/-! ## A106666.P17294464898878011624

`abs(A078053(n))+1-A052528(n)`
-/

namespace A106666.P17294464898878011624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078053 n| + (1 - A052528 n)

end

end A106666.P17294464898878011624

namespace A106666

/-- `abs(A078053(n))+1-A052528(n)` -/
def P17294464898878011624.Spec : Prop :=
  ∀ n, P17294464898878011624.a n = A106666 n

end A106666

/-! ## A106666.P13470710964197999449

`A077847(n+1)-2*A077847(n)`
-/

namespace A106666.P13470710964197999449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077847 (n + 1) - 2 * A077847 n

end

end A106666.P13470710964197999449

namespace A106666

/-- `A077847(n+1)-2*A077847(n)` -/
def P13470710964197999449.Spec : Prop :=
  ∀ n, P13470710964197999449.a n = A106666 n

end A106666

/-!
# A106667: a(n) = 1 if prime(n) + 2 is a prime, a(n) = -1 if prime(n) + 2 is a semiprime, otherwise 0.

The programs for A106667, the canonical program `A106667.P4598466350426453199` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106667 has offset 1).

The definition of A106667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106667.P2878567837554736444

`A034389(∑{e}[A052147(n+1), #])`
-/

namespace A106667.P2878567837554736444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034389 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106667.P2878567837554736444

namespace A106667

/-- `A034389(∑{e}[A052147(n+1), #])` -/
def P2878567837554736444.Spec : Prop :=
  ∀ n, P2878567837554736444.a n = A106667 (n + 1)

end A106667

/-! ## A106667.P4598466350426453199

`A154955(∑{e}[A052147(n+1), #])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106667

/-- `A154955(∑{e}[A052147(n+1), #])` -/
def P4598466350426453199.Spec : Prop :=
  ∀ n, P4598466350426453199.a n = A106667 (n + 1)

theorem P4598466350426453199.correct : P4598466350426453199.Spec := by
  intro n
  simp only [A106667, Nat.add_sub_cancel]

end A106667

/-! ## A106667.P10742811519394795841

`A154955(∑{e}[A000040(n+1)+2, #])`
-/

namespace A106667.P10742811519394795841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106667.P10742811519394795841

namespace A106667

/-- `A154955(∑{e}[A000040(n+1)+2, #])` -/
def P10742811519394795841.Spec : Prop :=
  ∀ n, P10742811519394795841.a n = A106667 (n + 1)

end A106667

/-! ## A106667.P2835225250705804564

`A154955(A001222(A000040(n+1)+2))`
-/

namespace A106667.P2835225250705804564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A001222 (A000040 (n + 1) + 2).toNat).toNat

end

end A106667.P2835225250705804564

namespace A106667

/-- `A154955(A001222(A000040(n+1)+2))` -/
def P2835225250705804564.Spec : Prop :=
  ∀ n, P2835225250705804564.a n = A106667 (n + 1)

end A106667

/-! ## A106667.P12471141861567400657

`A065359(A001222(A052147(n+1))!)`
-/

namespace A106667.P12471141861567400657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Nat.factorial (A001222 (A052147 (n + 1)).toNat).toNat)

end

end A106667.P12471141861567400657

namespace A106667

/-- `A065359(A001222(A052147(n+1))!)` -/
def P12471141861567400657.Spec : Prop :=
  ∀ n, P12471141861567400657.a n = A106667 (n + 1)

end A106667

/-! ## A106667.P8495215482653761142

`A121373(A001222(A052147(n+1))!)`
-/

namespace A106667.P8495215482653761142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Nat.factorial (A001222 (A052147 (n + 1)).toNat).toNat)

end

end A106667.P8495215482653761142

namespace A106667

/-- `A121373(A001222(A052147(n+1))!)` -/
def P8495215482653761142.Spec : Prop :=
  ∀ n, P8495215482653761142.a n = A106667 (n + 1)

end A106667

/-! ## A106667.P9869902975327018859

`A008683(A163820(A052147(n+1)))`
-/

namespace A106667.P9869902975327018859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A163820 (A052147 (n + 1)).toNat).toNat

end

end A106667.P9869902975327018859

namespace A106667

/-- `A008683(A163820(A052147(n+1)))` -/
def P9869902975327018859.Spec : Prop :=
  ∀ n, P9869902975327018859.a n = A106667 (n + 1)

end A106667

/-! ## A106667.P6265201038412118851

`A008683(A163820(eq[1, A163820(n+1)]+3))`
-/

namespace A106667.P6265201038412118851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A163820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)).toNat

end

end A106667.P6265201038412118851

namespace A106667

/-- `A008683(A163820(eq[1, A163820(n+1)]+3))` -/
def P6265201038412118851.Spec : Prop :=
  ∀ n, P6265201038412118851.a n = A106667 (n + 1)

end A106667

/-! ## A106667.P13594848993667118212

`A064911(A052147(n+1)²)-A064911(A052147(n+1))`
-/

namespace A106667.P13594848993667118212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A052147 (n + 1) ^ 2).toNat - A064911 (A052147 (n + 1)).toNat

end

end A106667.P13594848993667118212

namespace A106667

/-- `A064911(A052147(n+1)²)-A064911(A052147(n+1))` -/
def P13594848993667118212.Spec : Prop :=
  ∀ n, P13594848993667118212.a n = A106667 (n + 1)

end A106667

/-!
# A106671: a(n) = ( prime(n + 2) * prime(n) - prime(n + 1)^2 ) modulo 3.

The programs for A106671, the canonical program `A106671.P17412400557065683852` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106671 has offset 1).

The definition of A106671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106671.P17412400557065683852

`xor(1, A066116(n+3))%3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106671

/-- `xor(1, A066116(n+3))%3` -/
def P17412400557065683852.Spec : Prop :=
  ∀ n, P17412400557065683852.a n = A106671 (n + 1)

theorem P17412400557065683852.correct : P17412400557065683852.Spec := by
  intro n
  simp only [A106671, Nat.add_sub_cancel]

end A106671

/-! ## A106671.P16159345772212233619

`(3-A056221(n+1)%3)%3`
-/

namespace A106671.P16159345772212233619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - Int.tmod (A056221 (n + 1)) 3) 3

end

end A106671.P16159345772212233619

namespace A106671

/-- `(3-A056221(n+1)%3)%3` -/
def P16159345772212233619.Spec : Prop :=
  ∀ n, P16159345772212233619.a n = A106671 (n + 1)

end A106671

/-! ## A106671.P11631374486183100641

`(n+1)%(A324795(n+1)%3+n)`
-/

namespace A106671.P11631374486183100641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (Int.tmod (A324795 (n + 1)) 3 + (n : ℤ))

end

end A106671.P11631374486183100641

namespace A106671

/-- `(n+1)%(A324795(n+1)%3+n)` -/
def P11631374486183100641.Spec : Prop :=
  ∀ n, P11631374486183100641.a n = A106671 (n + 1)

end A106671

/-! ## A106671.P10451829437824576975

`(A090076(n+1)-A048785(n))%3`
-/

namespace A106671.P10451829437824576975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090076 (n + 1) - A048785 n) 3

end

end A106671.P10451829437824576975

namespace A106671

/-- `(A090076(n+1)-A048785(n))%3` -/
def P10451829437824576975.Spec : Prop :=
  ∀ n, P10451829437824576975.a n = A106671 (n + 1)

end A106671

/-! ## A106671.P17147220958057620157

`A011655(A031131(n+1))+char[n^14]`
-/

namespace A106671.P17147220958057620157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A031131 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A106671.P17147220958057620157

namespace A106671

/-- `A011655(A031131(n+1))+char[n^14]` -/
def P17147220958057620157.Spec : Prop :=
  ∀ n, P17147220958057620157.a n = A106671 (n + 1)

end A106671

/-! ## A106671.P4582863074676997902

`Δ[A006094(n+1)%3]^A300718(n+1)`
-/

namespace A106671.P4582863074676997902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1)) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A300718 (n + 1) : ℤ)

end

end A106671.P4582863074676997902

namespace A106671

/-- `Δ[A006094(n+1)%3]^A300718(n+1)` -/
def P4582863074676997902.Spec : Prop :=
  ∀ n, P4582863074676997902.a n = (A106671 (n + 1) : ℚ)

end A106671

/-! ## A106671.P6012926953939098353

`A010872(A224484(n+1)-A056221(n+1))`
-/

namespace A106671.P6012926953939098353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A224484 (n + 1) - A056221 (n + 1)).toNat

end

end A106671.P6012926953939098353

namespace A106671

/-- `A010872(A224484(n+1)-A056221(n+1))` -/
def P6012926953939098353.Spec : Prop :=
  ∀ n, P6012926953939098353.a n = A106671 (n + 1)

end A106671

/-! ## A106671.P4755546365761372680

`A320514(n+1)%A010875(A324795(n+1))`
-/

namespace A106671.P4755546365761372680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320514 (n + 1)) (A010875 (A324795 (n + 1)).toNat)

end

end A106671.P4755546365761372680

namespace A106671

/-- `A320514(n+1)%A010875(A324795(n+1))` -/
def P4755546365761372680.Spec : Prop :=
  ∀ n, P4755546365761372680.a n = A106671 (n + 1)

end A106671

/-!
# A106676: Marks on 9-mark optimal Golomb ruler.

The programs for A106676, there is no canonical definition to state claims against.
-/

/-! ## A106676.P9212051574549474499

`lt[A026430(A354933(n+1)), A214516(3*(n+1))]`
-/

namespace A106676.P9212051574549474499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A354933 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106676.P9212051574549474499

/-!
# A106683: Triangle read by rows: row n gives marks on lexicographically earliest n-mark optimal Golomb ruler.

The programs for A106683, there is no canonical definition to state claims against.
-/

/-! ## A106683.P15632110856150826189

`A370461(A209760(n+1))`
-/

namespace A106683.P15632110856150826189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (A209760 (n + 1)).toNat

end

end A106683.P15632110856150826189

/-! ## A106683.P17429529775172438095

`val(A309263(A203647(n+1)), 2)`
-/

namespace A106683.P17429529775172438095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A309263 (A203647 (n + 1)).toNat).toNat 2

end

end A106683.P17429529775172438095

/-! ## A106683.P8932315205123699479

`A351831(A259325(n))-A112367(n)`
-/

namespace A106683.P8932315205123699479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A259325 n).toNat - A112367 n

end

end A106683.P8932315205123699479

/-! ## A106683.P15687191264576433955

`A102351(A226441(n+1))+A002262(n)`
-/

namespace A106683.P15687191264576433955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102351 (A226441 (n + 1)).toNat + A002262 n

end

end A106683.P15687191264576433955

/-! ## A106683.P10396761239905752185

`A225643(A208910(n+1)+A002262(n))`
-/

namespace A106683.P10396761239905752185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (A208910 (n + 1) + A002262 n).toNat

end

end A106683.P10396761239905752185

/-!
# A106686: Iterated expansion of the morphism 1->3, 2->1, 3->24, 4->6, 5->3, 6->78, 7->8, 8->6.

The programs for A106686, there is no canonical definition to state claims against.
-/

/-! ## A106686.P9732794922225379133

`A106702(n-A113602(A156883(n)))`
-/

namespace A106686.P9732794922225379133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106702 ((n : ℤ) - A113602 (A156883 n).toNat).toNat

end

end A106686.P9732794922225379133

/-! ## A106686.P12275166130273108791

`A106702(n)-A240125(A061674(n))`
-/

namespace A106686.P12275166130273108791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106702 n - A240125 (A061674 n).toNat

end

end A106686.P12275166130273108791

/-! ## A106686.P13674616588518444750

`xor(A106702(n), A113602(A156883(n)))`
-/

namespace A106686.P13674616588518444750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106702 n) (A113602 (A156883 n).toNat)

end

end A106686.P13674616588518444750

/-! ## A106686.P12712581790300168186

`A106702(n)^A115573(n+1)^n`
-/

namespace A106686.P12712581790300168186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106702 n : ℚ) ^ (A115573 (n + 1) ^ n : ℤ)

end

end A106686.P12712581790300168186

/-! ## A106686.P9628911786721415974

`A106702(n)+A008683(A014360(n))`
-/

namespace A106686.P9628911786721415974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106702 n + A008683 (A014360 n).toNat

end

end A106686.P9628911786721415974

/-!
# A106689: Limiting word of the morphism 1->11321, 2->22312, 3->33213 starting from 1.

The programs for A106689, there is no canonical definition to state claims against.
-/

/-! ## A106689.P12238249832215927181

`A353372(A353395(3*n+1)+A353167(3*(n+1)))`
-/

namespace A106689.P12238249832215927181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353372 (A353395 (3 * n + 1) + A353167 (3 * (n + 1))).toNat

end

end A106689.P12238249832215927181

/-! ## A106689.P12265221123139994307

`A001221(A239474(4*n+2)+A209650(3*n+1))`
-/

namespace A106689.P12265221123139994307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A239474 (4 * n + 2) + A209650 (3 * n + 1)).toNat

end

end A106689.P12265221123139994307

/-! ## A106689.P2901314931716666624

`A372515(gcd(A002457(n), A092311(n+4)))`
-/

namespace A106689.P2901314931716666624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372515 (Int.gcd (A002457 n) (A092311 (n + 4)))

end

end A106689.P2901314931716666624

/-! ## A106689.P1488807556497276125

`gcd(A120992(A331452(2*n+3)), A274879(3*n+2))`
-/

namespace A106689.P1488807556497276125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120992 (A331452 (2 * n + 3)).toNat) (A274879 (3 * n + 2))

end

end A106689.P1488807556497276125

/-!
# A106690: Numbers k such that 11*k - 97 is prime.

The programs for A106690, the canonical program `A106690.P4249036395545775294` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106690 has offset 1).

The definition of A106690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106690.P15399347269766969763

`A111312(n+1)+9`
-/

namespace A106690.P15399347269766969763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 1) + 9

end

end A106690.P15399347269766969763

namespace A106690

/-- `A111312(n+1)+9` -/
def P15399347269766969763.Spec : Prop :=
  ∀ n, P15399347269766969763.a n = A106690 (n + 1)

end A106690

/-! ## A106690.P4249036395545775294

`ceil(p?[a(n-1)+11]/11)+8` with `a(0)=6, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106690

/-- `ceil(p?[a(n-1)+11]/11)+8` -/
def P4249036395545775294.Spec : Prop :=
  ∀ n, P4249036395545775294.a n = A106690 (n + 1)

theorem P4249036395545775294.correct : P4249036395545775294.Spec := by
  intro n
  simp only [A106690, Nat.add_sub_cancel]

end A106690

/-! ## A106690.P2056841486831150342

`round(p?[a(n-1)+11]/11)+9` with `a(0)=10, a(1)=2`
-/

namespace A106690.P2056841486831150342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 2] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11) + 9

end

end A106690.P2056841486831150342

namespace A106690

/-- `round(p?[a(n-1)+11]/11)+9` -/
def P2056841486831150342.Spec : Prop :=
  ∀ n, P2056841486831150342.a n = A106690 (n + 1)

end A106690

/-! ## A106690.P12010403062896333984

`A020723(A111312(n+1))`
-/

namespace A106690.P12010403062896333984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A111312 (n + 1)).toNat

end

end A106690.P12010403062896333984

namespace A106690

/-- `A020723(A111312(n+1))` -/
def P12010403062896333984.Spec : Prop :=
  ∀ n, P12010403062896333984.a n = A106690 (n + 1)

end A106690

/-! ## A106690.P3256744033254679834

`eq[2, A000005(11*n+2)]+9`
-/

namespace A106690.P3256744033254679834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9

end

end A106690.P3256744033254679834

namespace A106690

/-- `eq[2, A000005(11*n+2)]+9` -/
def P3256744033254679834.Spec : Prop :=
  ∀ n, (P3256744033254679834.a n : ℤ) = A106690 (n + 1)

end A106690

/-! ## A106690.P2231553690726140133

`record[(n+9)/A001222(A017425(n)-1)]`
-/

namespace A106690.P2231553690726140133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℚ) / (A001222 (A017425 n - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106690.P2231553690726140133

namespace A106690

/-- `record[(n+9)/A001222(A017425(n)-1)]` -/
def P2231553690726140133.Spec : Prop :=
  ∀ n, P2231553690726140133.a n = (A106690 (n + 1) : ℚ)

end A106690

/-! ## A106690.P11809134508702830074

`A262115(p?[A017413(n)])+9`
-/

namespace A106690.P11809134508702830074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 9

end

end A106690.P11809134508702830074

namespace A106690

/-- `A262115(p?[A017413(n)])+9` -/
def P11809134508702830074.Spec : Prop :=
  ∀ n, P11809134508702830074.a n = A106690 (n + 1)

end A106690

/-! ## A106690.P18113146761890944546

`A262115(A090187(n+1))+9`
-/

namespace A106690.P18113146761890944546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (A090187 (n + 1)).toNat + 9

end

end A106690.P18113146761890944546

namespace A106690

/-- `A262115(A090187(n+1))+9` -/
def P18113146761890944546.Spec : Prop :=
  ∀ n, P18113146761890944546.a n = A106690 (n + 1)

end A106690

/-!
# A106691: Expansion of g.f. (1+x-2*x^2+x^3+x^4)/((1-x)^2*(1+x)^2*(1+2*x)^2).

The programs for A106691, the canonical program `A106691.P2809843007293069778` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106691 has offset 0).

The definition of A106691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2+x^3+x^4)/(1+4x+2x^2-8x^3-7x^4+4x^5+4x^6))` (program `A106691.P2809843007293069778`, by `A106691.P2809843007293069778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106691.P2809843007293069778

`ogf((1+x-2x^2+x^3+x^4)/(1+4x+2x^2-8x^3-7x^4+4x^5+4x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106691

/-- `ogf((1+x-2x^2+x^3+x^4)/(1+4x+2x^2-8x^3-7x^4+4x^5+4x^6))` -/
def P2809843007293069778.Spec : Prop :=
  ∀ n, P2809843007293069778.a n = A106691 n

theorem P2809843007293069778.correct : P2809843007293069778.Spec := by
  intro n
  simp only [A106691]

end A106691

/-!
# A106693: Limiting word of the morphism 1->1132311, 2->2213122, 3->3321233 starting from 1.

The programs for A106693, there is no canonical definition to state claims against.
-/

/-! ## A106693.P18413500841312334737

`A105198(A213709(n)+A210207(3*n+2))`
-/

namespace A106693.P18413500841312334737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105198 (A213709 n + A210207 (3 * n + 2)).toNat

end

end A106693.P18413500841312334737

/-! ## A106693.P15600445915813596529

`A186412(A137843(2*n+1)%A045345(n+2))`
-/

namespace A106693.P15600445915813596529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186412 (Int.tmod (A137843 (2 * n + 1)) (A045345 (n + 2))).toNat

end

end A106693.P15600445915813596529

/-! ## A106693.P3370489432061770131

`A013632(and(A200926(2*(n+2)), A225770(2*n+1)))`
-/

namespace A106693.P3370489432061770131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Int.land (A200926 (2 * (n + 2))) (A225770 (2 * n + 1))).toNat

end

end A106693.P3370489432061770131

/-!
# A106696: Fractal-jump sequence (FJS) based on the prime numbers.

The programs for A106696, there is no canonical definition to state claims against.
-/

/-! ## A106696.P11230545588032000372

`p?[A035363(A194987(n+1))]`
-/

namespace A106696.P11230545588032000372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A194987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106696.P11230545588032000372

/-! ## A106696.P9458110246730551987

`p?[A035363(A195073(n+1))]`
-/

namespace A106696.P9458110246730551987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A195073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106696.P9458110246730551987

/-! ## A106696.P3778215410902310278

`A008284(lt[A145364(n+1), A098158(n)])`
-/

namespace A106696.P3778215410902310278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106696.P3778215410902310278

/-! ## A106696.P62939086489371869

`A008284(lt[A239030(n+3), A384652(n)])`
-/

namespace A106696.P62939086489371869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106696.P62939086489371869

/-!
# A106698: 1-limiting word of the morphism 1->23, 2->121, 3->212.

The programs for A106698, there is no canonical definition to state claims against.
-/

/-! ## A106698.P195070853770706891

`A046951(A133265(n)+A020753(n+1))`
-/

namespace A106698.P195070853770706891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A133265 n + A020753 (n + 1)).toNat

end

end A106698.P195070853770706891

/-! ## A106698.P9981616585020298263

`A195113(gcd(A043317(n+1), A087206(n)))`
-/

namespace A106698.P9981616585020298263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (Int.gcd (A043317 (n + 1)) (A087206 n))

end

end A106698.P9981616585020298263

/-! ## A106698.P17112507170124618807

`A255250(A354878(n+5)%A000005(2*n+1))`
-/

namespace A106698.P17112507170124618807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255250 (Int.tmod (A354878 (n + 5)) (A000005 (2 * n + 1))).toNat

end

end A106698.P17112507170124618807

/-! ## A106698.P12744229565412379633

`A374757(A094824(n+1)-A070804(n+3))`
-/

namespace A106698.P12744229565412379633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 (A094824 (n + 1) - A070804 (n + 3)).toNat

end

end A106698.P12744229565412379633

/-! ## A106698.P14289047385523389512

`A293232(gcd(A054065(n+1), A289218(n+1)))`
-/

namespace A106698.P14289047385523389512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293232 (Int.gcd (A054065 (n + 1)) (A289218 (n + 1)))

end

end A106698.P14289047385523389512

